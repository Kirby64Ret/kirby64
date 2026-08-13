/* The libultraship backend: window, renderer, input and audio.
 *
 * =====================================================================
 * HOW LUS'S MAIN LOOP AND THE GAME'S SCHEDULER WERE RECONCILED
 *
 * This is the design question the integration turns on, so it is answered
 * here rather than in a doc that will drift away from the code.
 * =====================================================================
 *
 * The premise everyone starts from is that these two things fight:
 *
 *   * libultraship expects to own the main loop. Every existing LUS port has
 *     a `while (WindowIsRunning()) { StartFrame(); GameFrame(); EndFrame(); }`
 *     somewhere, and the SSB64/BattleShip method is explicitly to *collapse*
 *     the N64 threads into that loop with graphics, audio and input called at
 *     fixed points.
 *   * src/pc/os_thread.c also owns it: cboot() starts the idle thread and
 *     never returns, and from then on the ucontext scheduler decides what
 *     runs.
 *
 * THEY DO NOT ACTUALLY FIGHT, and the reason is the single most useful
 * property of the platform layer that was already here: **the cooperative
 * scheduler runs every game thread on ONE host thread.** os_thread.c chose
 * ucontext over pthreads because the game has no locks anywhere and relies on
 * osSetIntMask as an assertion that nothing else is executing. That decision
 * was made for correctness of the game's own data, but it is also exactly
 * what makes LUS embeddable here:
 *
 *     - an OpenGL context is bound to a thread, and there is only one thread;
 *     - SDL requires event pumping on the thread that created the window, and
 *       there is only one thread;
 *     - Fast3D's Interpreter has process-global state (g_exec_stack), and
 *       there is only one thread.
 *
 * So no ownership question arises. LUS calls happen wherever the game reaches
 * them, and "wherever" is always the same OS thread. Had the platform layer
 * used pthreads -- one host thread per OSThread, as a naive port would -- the
 * scheduler thread would be submitting display lists from a thread with no GL
 * context while the idle thread pumped SDL from another, and the honest fix
 * would have been the SSB collapse. The collapse is the price of real
 * threads; this port does not pay it because it does not have them.
 *
 * WHAT REPLACES THE MAIN LOOP. A LUS main loop is three things happening in a
 * fixed order once per frame. The game already emits all three, as events, at
 * points that mean the same thing:
 *
 *     LUS main loop            this port
 *     -----------------------  -------------------------------------------
 *     HandleEvents()           pcb_pump(), called from pc_pump_events(),
 *                              which every blocking libultra call goes
 *                              through. Rate-limited below; see sPumpBudget.
 *     game logic               the game threads, dispatched by priority
 *     Draw + Present           pcb_gfx_run(), called from osSpTaskStartGo()
 *                              when the game hands the RSP a graphics task
 *     "no frame this tick"     pcb_frame_end() at VI retrace, which runs the
 *                              GUI alone if no display list arrived
 *
 * The frame boundary is therefore *the game's own*, not a wall-clock timer:
 * a frame exists exactly when the game submits a display list for it. That is
 * strictly better than a timer, because sched.c's framebuffer recycling is
 * driven by the same event and the two can never disagree.
 *
 * THE ONE PLACE THIS IS STILL WRONG, stated plainly: Fast3D's Interpreter::Run
 * clears the framebuffer on entry, so it is one-call-per-frame by
 * construction. If Kirby 64 ever submits two graphics tasks for a single
 * displayed frame -- and its scheduler can, it has a yield/resume path for
 * exactly that -- the second one erases the first and both get presented.
 * This is detected and warned about once (sMultiTaskFrame) rather than
 * silently producing a flickering game. The fix when it happens is to
 * concatenate the lists across a frame and Run once at osViSwapBuffer, which
 * needs the game to be far enough along to observe the real pattern.
 *
 * =====================================================================
 * WHY THIS FILE DOES NOT #include "pc/pc_backend.h"
 * =====================================================================
 *
 * pc_backend.h includes <PR/ultratypes.h>, and libultraship ships its own
 * libultra headers: both define u8..f64, size_t, uintptr_t, OSMesgQueue,
 * OSContPad and Gfx, with different definitions. Including both in one
 * translation unit is not a warning, it is a wall of redefinition errors.
 *
 * So the C surface is re-declared here from <cstdint>, which is exact --
 * ultratypes' u16 IS uint16_t, its s8 IS int8_t -- and a compile-time check
 * on the PCPad layout is kept below so the two cannot drift apart silently.
 */
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <filesystem>
#include <memory>
#include <unordered_map>
#include <thread>
#include <algorithm>
#include <vector>

#include "libultraship/libultraship.h"
#include "libultraship/bridge.h"
#include "fast/Fast3dWindow.h"
#include "fast/debug/GfxDebugger.h"
#include "ship/core/Context.h"
#include "ship/window/Window.h"
#include "ship/window/FileDrop.h"
#include "libultraship/controller/controldeck/ControlDeck.h"
#include "ship/audio/Audio.h"
#include "ship/config/ConsoleVariable.h"
#include "ship/config/Config.h"
#include "ship/log/Logger.h"
#include "ship/thread/ThreadPool.h"
#include "ship/resource/ResourceManager.h"
#include "ship/resource/archive/ArchiveManager.h"
#include "ship/debug/Console.h"
#include "ship/debug/CrashHandler.h"
#include "ship/events/Events.h"

/* --------------------------------------------------------- the C surface */

/* Mirror of PCPad in src/pc/pc_backend.h. Kept in step by the static_assert
 * below plus the field-by-field copy in pcb_input_poll. */
typedef struct {
    uint16_t button;
    int8_t stick_x;
    int8_t stick_y;
    uint8_t present;
} PCPad;

static_assert(sizeof(PCPad) == 6, "PCPad layout drifted from pc_backend.h");

extern "C" {
void pcb_video_init(int width, int height);
void pcb_video_present(const void* fb, int width, int height, int fmt);
void pcb_video_shutdown(void);
int pcb_has_renderer(void);
void pcb_frame_begin(void);
void pcb_frame_end(void);
void pcb_gfx_set_ucode(int s2dex);
void pcb_gfx_run(const void* displayList);
int pcb_alive(void);
void pcb_pump(void);
void pcb_input_poll(PCPad* pads, int n);
void pcb_input_rumble(int port, int on);
void pcb_audio_init(int freq);
void pcb_audio_set_freq(int freq);
void pcb_audio_queue(const void* samples, uint32_t bytes);
uint32_t pcb_audio_queued(void);

/* From src/pc/os_time.c -- the platform layer's own trace switch, so LUS
 * diagnostics obey the same PC_TRACE= variable as everything else. */
void pc_trace(unsigned bit, const char* fmt, ...);
}

#define PC_TR_VI 0x02
#define PC_TR_GFX 0x08
#define PC_TR_AI 0x20

/* ------------------------------------------------------------------ state */

static std::shared_ptr<Ship::Context> sContext;
static std::shared_ptr<Fast::Fast3dWindow> sWindow;
static std::shared_ptr<LUS::ControlDeck> sControlDeck;
static bool sInitTried;
static bool sInitOk;

/* THE PAD BUFFER BELONGS TO THE CALLER, NOT TO THE CONTROL DECK.
 *
 * LUS::ControlDeck::GetPads() returns mPads, and mPads is only ever assigned
 * inside WriteToOSContPad(pad) -- it is a cached copy of whatever pointer the
 * game last handed in, not storage the deck owns. Asking for the pads before
 * ever writing to them therefore returns nullptr forever, which is exactly
 * the loop this backend was stuck in: GetPads() -> nullptr -> skip the write
 * -> GetPads() still nullptr. Every port reported "no controller", the game's
 * boot check in func_800A3058 found contChannelMap all -1, and it entered
 * scene 4 -- the "no controllers connected" error screen -- instead of the
 * title sequence.
 *
 * The buffer lives here. WriteToPad() fills it; GetPads() is not used at all. */
static OSContPad sLusPads[MAXCONTROLLERS];

/* ControlDeck::Init() takes a pointer to the game's connected-port bitmask and
 * ORs in bit 0 unconditionally (a keyboard is always a valid port 1 device).
 * The port keeps its own byte because src/pc/os_cont.c derives OSContStatus
 * from PCPad.present rather than from a bitmask. */
static uint8_t sControllerBits;

static int sFramesDrawn;
static int sTasksThisFrame;
static bool sMultiTaskFrame;

/* pc_pump_events() is called at the top of every blocking libultra entry
 * point, which in this game is thousands of times a second. SDL_PollEvent is
 * cheap but not free, and more importantly LUS's HandleEvents can resize the
 * renderer. Once per millisecond is far finer than any input device and
 * removes the call from the hot path. */
static uint64_t sLastPumpNs;

static uint64_t now_ns(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
}

/* --------------------------------------------------------------- start-up */

/* Where resources come from. TWO paths, and the split is not arbitrary.
 *
 * LUS will not start without at least one archive: ArchiveManager marks itself
 * initialised only if it found one, and a Context with an uninitialised
 * ResourceManager is refused. It is not only the game's assets that live
 * there either -- FAST3D ITSELF LOADS ITS SHADERS AS RESOURCES. gfx_opengl
 * asks the ResourceManager for "shaders/opengl/default.shader.glsl" and calls
 * abort() if it is missing, with the message "missing f3d.o2r?". A port that
 * mounts nothing does not merely lack textures; it cannot draw at all.
 *
 *   port/assets   a plain directory, mounted as a FolderArchive. It holds
 *                 libultraship's own shader, copied out of the LUS tree by
 *                 tools/pc/stage_assets.sh, and anything else the port wants
 *                 to serve loose during development.
 *   port/o2r      where a Torch-built kirby64.o2r goes.
 *
 * They are SEPARATE DIRECTORIES because of a rule in
 * ArchiveManager::GetArchiveListInPaths: if a directory contains any .o2r,
 * .otr, .zip or .mpq, only those files are mounted and the directory itself is
 * NOT mounted as a folder. Dropping kirby64.o2r into port/assets would
 * therefore silently unmount the shaders and turn a working renderer into an
 * abort. Keeping archives in their own directory makes that impossible.
 *
 * KIRBY_ASSETS overrides the first, KIRBY_O2R the second. */
static std::vector<std::string> archive_paths(void) {
    const char* assetsEnv = getenv("KIRBY_ASSETS");
    const char* o2rEnv = getenv("KIRBY_O2R");
    std::vector<std::string> paths;
    std::error_code ec;

    paths.push_back(assetsEnv ? assetsEnv : "port/assets");
    paths.push_back(o2rEnv ? o2rEnv : "port/o2r");

    for (const auto& p : paths) {
        std::filesystem::create_directories(p, ec);
    }
    return paths;
}

static bool lus_init(void) {
    if (sInitTried) {
        return sInitOk;
    }
    sInitTried = true;

    /* WHY THIS ASSEMBLES THE CONTEXT BY HAND instead of calling
     * Context::CreateDefaultInstance, which is the documented one-liner.
     *
     * CreateDefaultInstance constructs the Config itself but takes the Window
     * and the ControlDeck as finished objects -- and both of those need the
     * Config at CONSTRUCTION time, not at Init time:
     *
     *   Ship::Window caches its Config in the constructor and
     *   Window::GetConfig() throws "Window requires Config dependency" if it
     *   is null. It never looks the Config up from the hierarchy.
     *
     *   Ship::ControlDeck's constructor builds a GlobalSDLDeviceSettings,
     *   which immediately calls ConsoleVariable::GetInteger. A deck built
     *   with the documented default arguments dereferences null and crashes
     *   before the Context exists.
     *
     * So the factory's own contract cannot be satisfied: it wants to create
     * the Config after receiving objects that needed it beforehand. Passing a
     * second, privately-built Config to those two works, but then two Config
     * objects are open on one file with last-write-wins, which is a bug that
     * would surface much later as settings silently not persisting.
     *
     * The assembly below is CreateDefaultInstance's own component list and
     * init order, with one Config threaded through it. It is more code and it
     * is the honest version. The order is load-bearing and is annotated. */
    try {
        auto name = std::string("Kirby 64: The Crystal Shards");
        auto shortName = std::string("kirby64");

        sContext = Ship::Context::CreateInstance(name, shortName);
        /* Components validate their dependencies with RequireDependency,
         * which rejects an un-Init'ed one -- and the Gui checks the Context
         * itself. CreateInstance only constructs it. */
        sContext->Init();

        /* Logging first: everything after this can report failure. */
        auto logger = std::make_shared<Ship::Logger>(
            name, Ship::Context::GetPathRelativeToAppDirectory("logs/" + name + ".log"));
        sContext->GetChildren().Add(logger);
        logger->Init();

        /* The Window is constructed before the Config that it needs -- so the
         * Config is constructed first and the Window is handed it. The Config
         * also wants the Window (it re-reads window geometry on save); that
         * link is set below, after the Window exists. */
        auto config = std::make_shared<Ship::Config>(
            Ship::Context::GetPathRelativeToAppDirectory("kirby64.cfg"));
        sContext->GetChildren().Add(config);

        auto cvars = std::make_shared<Ship::ConsoleVariable>(config);
        sContext->GetChildren().Add(cvars);

        auto threadPool = std::make_shared<Ship::ThreadPool>(
            std::max(1u, std::thread::hardware_concurrency() > 2
                             ? std::thread::hardware_concurrency() - 2
                             : 1u));
        sContext->GetChildren().Add(threadPool);

        auto resourceManager = std::make_shared<Ship::ResourceManager>(threadPool);
        sContext->GetChildren().Add(resourceManager);

        /* THE CRASH HANDLER IS OPT-IN, and that is a considered choice.
         *
         * Ship::CrashHandler installs sigaction handlers for SIGINT and
         * SIGTERM whose body is `exit(1)`. exit() from a signal handler runs
         * atexit handlers and static destructors -- tearing down the GL
         * context, joining the thread pool, freeing the resource cache -- none
         * of which is async-signal-safe. Measured behaviour in this port:
         * Ctrl-C and `timeout` do not stop the process at all (it wedges in
         * teardown), and when it does get far enough it reports
         * "free(): corrupted unsorted chunks".
         *
         * A development binary that cannot be interrupted is worse than one
         * without a crash log, so it is off unless asked for. */
        if (getenv("KIRBY_PC_CRASHHANDLER") != nullptr) {
            sContext->GetChildren().Add(std::make_shared<Ship::CrashHandler>());
        }

        auto console = std::make_shared<Ship::Console>();
        sContext->GetChildren().Add(console);

        /* THE WINDOW COMES FIRST, AND THE CYCLE IS BROKEN ON ITS SIDE.
         *
         * Fast3dWindow wants a ControlDeck and ControlDeck wants a Window, so
         * one of the two has to be constructed without its partner. Only the
         * Window can be: Fast3dWindow::GetControlDeck() falls back to
         * `context->GetChildren().GetFirst<Ship::ControlDeck>()` when the
         * injected pointer is null, whereas ControlDeck::GetWindow() just
         * throws "ControlDeck requires Window dependency". So the Window is
         * built with a null deck and finds it through the context later, and
         * the deck gets the real Window handed to it. */
        sWindow = std::make_shared<Fast::Fast3dWindow>(config, cvars, nullptr);
        sContext->GetChildren().Add(sWindow);

        /* Ship::ControlDeck is abstract (WriteToPad is pure virtual).
         * LUS::ControlDeck is the concrete N64 one, and it is what turns
         * host gamepads into OSContPad. */
        sControlDeck = std::make_shared<LUS::ControlDeck>(sWindow, cvars);
        sContext->GetChildren().Add(sControlDeck);

        auto audio = std::make_shared<Ship::Audio>(Ship::AudioSettings{}, config);
        sContext->GetChildren().Add(audio);

        sContext->GetChildren().Add(std::make_shared<Ship::Events>());

        auto fileDrop = std::make_shared<Ship::FileDrop>(sWindow);
        sContext->GetChildren().Add(fileDrop);

        /* EVERY component is in the hierarchy before any Init runs. That is
         * CreateDefaultInstance's rule and it exists so a component's Init can
         * look up siblings without an ordering dependency. */
        nlohmann::json rmArgs;
        rmArgs["archivePaths"] = archive_paths();
        rmArgs["validHashes"] = std::vector<uint32_t>{};
        resourceManager->Init(rmArgs);

        /* KIRBY_PC_WINDOWED=1 forces a window. Worth having because LUS
         * persists Window.Fullscreen.Enabled and a headless or remote session
         * that once wrote `true` then hangs on every later start: SDL waits
         * for a fullscreen mode switch that a virtual display never
         * completes, IsFrameReady stays false, and DrawAndRunGraphicsCommands
         * silently draws nothing. That failure looks exactly like a broken
         * renderer and is not one. */
        if (getenv("KIRBY_PC_WINDOWED") != nullptr) {
            config->SetBool("Window.Fullscreen.Enabled", false);
        }

        /* A PERSISTED WINDOW SIZE CAN BE CORRUPT, AND THE COST IS NOT COSMETIC.
         *
         * LUS saves the window geometry on exit and restores it on start. Ask
         * a virtual display for fullscreen and SDL can answer with garbage;
         * this port wrote Window 35856x33278 into kirby64.cfg that way, and
         * every later start restored it. That is 1.2 gigapixels of
         * framebuffer: the software rasteriser crawled (one display list
         * interpreted in thirty seconds, against 250 through the null
         * backend), and X_ShmPutImage then failed with BadValue because the
         * image exceeded what the shared-memory extension will carry. It
         * reads exactly like a broken renderer and the renderer is fine.
         *
         * A size outside these bounds is not a user preference, it is
         * corruption -- no display is narrower than the N64's own 320x240 or
         * wider than 8K -- so it is discarded rather than honoured. Fullscreen
         * goes with it: whatever produced the bad geometry is the thing that
         * would produce it again. */
        {
            const int w = config->GetInt("Window.Width", 640);
            const int h = config->GetInt("Window.Height", 480);
            if (w < 320 || w > 7680 || h < 240 || h > 4320) {
                fprintf(stderr,
                        "[lus] discarding corrupt saved window size %dx%d, "
                        "using 640x480\n",
                        w, h);
                config->SetInt("Window.Width", 640);
                config->SetInt("Window.Height", 480);
                config->SetBool("Window.Fullscreen.Enabled", false);
            }
        }

        console->Init();
        sWindow->Init();
        fileDrop->Init();
        audio->Init();

        /* Init() must come after sWindow->Init(): ControlDeck::GetWindow()
         * throws unless the Window reports IsInitialized(), and Init() calls
         * it while constructing the WheelHandler. Skipping Init() is not a
         * quiet degradation either -- WriteToOSContPad() calls
         * GetWheelHandler(), which throws std::runtime_error when the handler
         * was never built, so an uninitialised deck cannot be polled at all.
         *
         * Init() is also what loads saved mappings from Config and installs
         * the default keyboard/mouse/gamepad bindings for port 1 when the
         * config has none, which is what makes a fresh checkout playable
         * without the user opening the binding UI first. */
        sControlDeck->Init(&sControllerBits);

        /* The C bridge functions (AudioPlayerPlayFrame, GfxSetNativeDimensions,
         * WindowIsRunning...) resolve through these cached pointers. The
         * factory does this via a private helper; done explicitly here. */
        ResourceSetResourceManager(resourceManager);
        CVarSetConsoleVariable(cvars);
        WindowSetWindowComponent(sWindow);
        ControllerSetControlDeck(sControlDeck);
        EventSystemSetEvents(sContext->GetChildren().GetFirst<Ship::Events>());
        AudioSetAudioComponent(audio);
        CrashHandlerSetComponent(sContext->GetChildren().GetFirst<Ship::CrashHandler>());

        GfxSetFast3dWindow(sWindow);
    } catch (const std::exception& e) {
        fprintf(stderr, "[lus] context creation threw: %s\n", e.what());
        sContext = nullptr;
    }

    if (sContext == nullptr) {
        fprintf(stderr,
                "[lus] libultraship failed to start. The window, the renderer "
                "and audio are unavailable;\n"
                "      the platform layer keeps running headless.\n");
        sWindow = nullptr;
        return false;
    }

    /* Kirby 64 is F3DEX2, the same microcode as SSB64. Fast3D defaults to it,
     * but stating it costs nothing and documents the assumption. */
    sWindow->SetRendererUCode(ucode_f3dex2);

    /* TWO PACERS IS ONE TOO MANY, and this is which one wins.
     *
     * GfxWindowBackendSDL::SwapBuffersBegin calls SyncFramerateWithTime,
     * which nanosleeps until 1/mTargetFps has elapsed since the last frame.
     * That happens inside Interpreter::EndFrame, which this port calls from
     * pcb_gfx_run, which is called from osSpTaskStartGo -- so LUS's frame
     * limiter sleeps INSIDE the game's RSP execution, with the game's
     * scheduler stopped behind it. Meanwhile src/pc/os_vi.c is already pacing
     * the whole system from the same monotonic clock the game reads through
     * osGetCount, at exactly the rate the game expects.
     *
     * Two independent limiters on one frame do not average out, they beat
     * against each other: whichever is momentarily slower stalls the other,
     * and the visible result is a game running below its own frame rate for
     * no reason the profile can explain. (It was observed directly -- a
     * SIGTERM landed with the main thread parked in SyncFramerateWithTime,
     * inside osSpTaskStartGo, several frames deep.)
     *
     * The game's VI wins, because sched.c's framebuffer recycling and its
     * whole task state machine are driven by the retrace and cannot be paced
     * by anything else. Setting a target far above the real rate makes
     * SyncFramerateWithTime's deadline always already past, so it never
     * sleeps. KIRBY_PC_TARGET_FPS overrides it for experiments. */
    {
        const char* fpsEnv = getenv("KIRBY_PC_TARGET_FPS");
        sWindow->SetTargetFps(fpsEnv ? atoi(fpsEnv) : 1000);
    }

    /* The N64 renders 320x240 and everything in the display list is in those
     * units -- scissors, texture rectangles, the viewport. Fast3D scales from
     * this to the window. */
    GfxSetNativeDimensions(320, 240);

    sInitOk = true;
    return true;
}

/* --------------------------------------------------------------- video */

void pcb_video_init(int width, int height) {
    (void)width;
    (void)height;
    if (!lus_init()) {
        return;
    }
    pc_trace(PC_TR_VI, "[lus] window %ux%u backend=%s\n", sWindow->GetWidth(),
             sWindow->GetHeight(), sWindow->GetWindowBackendName().c_str());
}

/* Never called with this backend -- os_vi.c asks pcb_has_renderer() first --
 * and it must not become a second presentation path if it ever is. */
void pcb_video_present(const void* fb, int width, int height, int fmt) {
    (void)fb;
    (void)width;
    (void)height;
    (void)fmt;
}

void pcb_video_shutdown(void) {
    if (sWindow != nullptr) {
        sWindow->Close();
    }
    sWindow = nullptr;
    sContext = nullptr;
}

int pcb_has_renderer(void) {
    return 1;
}

int pcb_alive(void) {
    if (!sInitOk) {
        return 1; /* headless fallback: nothing can ask us to quit */
    }
    return sWindow->IsRunning() ? 1 : 0;
}

void pcb_pump(void) {
    uint64_t t;

    if (!sInitOk) {
        return;
    }
    t = now_ns();
    if (t - sLastPumpNs < 1000000ull) {
        return;
    }
    sLastPumpNs = t;
    sWindow->HandleEvents();
}

/* --------------------------------------------------- the display-list path */

void pcb_frame_begin(void) {
    sTasksThisFrame = 0;
}

extern "C" void pcb_gfx_set_native_ucodes(const void* f3dex2, const void* s2dex) {
    Fast::gfx_native_ucode_f3dex2 = (uintptr_t)f3dex2;
    Fast::gfx_native_ucode_s2dex = (uintptr_t)s2dex;
}

void pcb_gfx_set_ucode(int s2dex) {
    if (!sInitOk) {
        return;
    }
    /* gfx_set_target_ucode writes ucode_handler_index directly, which is the
     * same variable G_LOAD_UCODE inside a display list writes. Setting it per
     * task is what makes each task start from its own microcode the way the
     * RSP does, instead of inheriting whatever the previous task's last
     * gtlLoadUcode left behind. */
    /* DIAGNOSTIC 2026-08-13: Fast3D reported "Unhandled OP code: 0xE3, for
     * loaded ucode: 5" (ucode_s2dex) on the first frame, i.e. it was
     * interpreting an F3DEX2 display list with the S2DEX table. Log what each
     * task actually asks for so the selection can be judged from evidence. */
    static int sUcodeLogged = 0;
    if (sUcodeLogged < 8) {
        fprintf(stderr, "[lus] task ucode -> %s\n", s2dex ? "s2dex" : "f3dex2");
        sUcodeLogged++;
    }
    /* This game ships real N64 display lists, so G_LOAD_UCODE inside them
     * carries a ucode pointer rather than an OTR enum. Tell Fast3D to trust
     * the per-task ucode we set here and ignore those in-list loads. */
    {
        Fast::gfx_native_ucode_mode = true;
        /* Pointers are supplied by os_sp.c, which already declares these
         * symbols with the game's own types. */
    }
    sWindow->SetRendererUCode(s2dex ? ucode_s2dex : ucode_f3dex2);
}

void pcb_gfx_run(const void* displayList) {
    if (!sInitOk || displayList == nullptr) {
        return;
    }

    if (++sTasksThisFrame > 1 && !sMultiTaskFrame) {
        sMultiTaskFrame = true;
        fprintf(stderr,
                "[lus] WARNING: %d graphics tasks in one frame. Fast3D's "
                "Interpreter::Run clears\n"
                "      the framebuffer on entry, so all but the last are "
                "erased. See the note at the\n"
                "      top of src/pc/pc_backend_lus.cpp.\n",
                sTasksThisFrame);
    }

    /* One call, one complete frame: StartDraw, Interpreter::StartFrame, Run,
     * EndDraw, Interpreter::EndFrame (which swaps buffers). Returns false when
     * LUS decided to drop the frame for pacing, which is not an error. */
    static const std::unordered_map<Mtx*, MtxF> kNoMtxReplacements;
    if (sWindow->DrawAndRunGraphicsCommands((Gfx*)displayList, kNoMtxReplacements)) {
        sFramesDrawn++;
        pc_trace(PC_TR_GFX, "[lus] frame %d drawn from dl %p\n", sFramesDrawn,
                 displayList);
    }
}

void pcb_frame_end(void) {
    if (!sInitOk) {
        return;
    }
    /* A retrace with no display list behind it. The game is alive but has not
     * produced a frame -- which is where this port sits today, because
     * auThreadMain is undecompiled and thread5_game never gets past waiting
     * for the audio thread to report in. Running the GUI alone keeps the
     * window drawn and responsive instead of looking hung, and it is also
     * what LUS does for its own pause/loading states. */
    if (sTasksThisFrame == 0) {
        sWindow->RunGuiOnly();
    }
    sTasksThisFrame = 0;
}

/* --------------------------------------------------------------- input */

void pcb_input_poll(PCPad* pads, int n) {
    int i;

    for (i = 0; i < n; i++) {
        pads[i].button = 0;
        pads[i].stick_x = 0;
        pads[i].stick_y = 0;
        pads[i].present = 0;
    }
    if (!sInitOk) {
        pads[0].present = (n > 0);
        return;
    }

    if (sControlDeck == nullptr) {
        return;
    }
    /* ControlDeck already produces N64 pad state -- turning modern gamepads
     * into CONT_* bits and an 80-unit stick is the entire reason it exists --
     * so this is a field copy and src/pc/os_cont.c never learns where the bits
     * came from.
     *
     * WriteToPad refreshes sLusPads from the mapped devices; it is the call a
     * LUS main loop makes once per frame. Here the game asks whenever
     * osContStartReadData runs, which is the same cadence. It pumps SDL events
     * itself, so no extra poll is needed around it. */
    sControlDeck->WriteToPad(sLusPads);

    for (i = 0; i < n && i < MAXCONTROLLERS; i++) {
        pads[i].button = sLusPads[i].button;
        pads[i].stick_x = sLusPads[i].stick_x;
        pads[i].stick_y = sLusPads[i].stick_y;
        /* LUS has no "is a controller physically plugged in" concept that
         * matches the SI bus: a keyboard is always a valid port 1 device, and
         * ControlDeck::Init() says so by setting bit 0 of sControllerBits.
         * Reporting port 1 present keeps src/main/contpad.c on its normal
         * path rather than its no-controller path. */
        pads[i].present = (sControllerBits & (1u << i)) ? 1 : 0;
    }
}

void pcb_input_rumble(int port, int on) {
    (void)port;
    (void)on;
    /* Deliberately unimplemented rather than faked. LUS drives rumble through
     * per-device rumble mappings on the ControlDeck, and wiring it before the
     * game's own osMotorInit path is exercised would be untestable code. */
}

/* --------------------------------------------------------------- audio */

void pcb_audio_init(int freq) {
    (void)freq;
    /* LUS's Audio component is created and initialised by
     * Context::CreateDefaultInstance, at the sample rate in AudioSettings.
     * Nothing to do here.
     *
     * NOTE the frequency mismatch that is NOT resolved yet: the N64 AI runs at
     * whatever osAiSetFrequency was asked for (Kirby 64 uses 32000 Hz) and
     * LUS's AudioSettings defaults to 44100. Handing 32 kHz samples to a
     * 44.1 kHz sink plays everything ~38% fast. This is left alone because
     * auThreadMain -- the only caller of osAiSetNextBuffer -- is still
     * undecompiled, so there is no way to observe the real rate yet, and
     * guessing it here would be a bug waiting to be believed. */
}

void pcb_audio_set_freq(int freq) {
    (void)freq;
}

void pcb_audio_queue(const void* samples, uint32_t bytes) {
    if (!sInitOk) {
        return;
    }
    /* osAiSetNextBuffer in src/pc/os_ai.c has already byte-swapped the samples
     * into host order and paced on the queued-byte count, which is exactly the
     * contract AudioPlayerPlayFrame wants. */
    AudioPlayerPlayFrame((const uint8_t*)samples, (size_t)bytes);
}

uint32_t pcb_audio_queued(void) {
    if (!sInitOk) {
        return 0;
    }
    int32_t buffered = AudioPlayerBuffered();
    return buffered > 0 ? (uint32_t)buffered : 0u;
}
