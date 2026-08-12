/* Temporary hang instrumentation. KIRBY_PC_PUMPDBG=1 turns it on.
 *
 * Counters incremented on every branch of pc_pump_events() and pc_vi_tick(),
 * dumped once a second from a SIGALRM handler with write(2) so the report
 * arrives even when every thread is wedged. */
#include <ultra64.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <unistd.h>

#include "pc/pc_platform.h"

int pc_dbg_on;

unsigned long pc_dbg_pump_call;
unsigned long pc_dbg_pump_reent;
unsigned long pc_dbg_pump_nosched;
unsigned long pc_dbg_pump_intsoff;
unsigned long pc_dbg_pump_body;
unsigned long pc_dbg_pump_done;
unsigned long pc_dbg_vi_call;
unsigned long pc_dbg_vi_nostart;
unsigned long pc_dbg_vi_loop;
unsigned long pc_dbg_vi_retrace;
unsigned long pc_dbg_yield_call;
unsigned long pc_dbg_dispatch_call;
unsigned long pc_dbg_idle_call;

extern unsigned long pc_dbg_now_lo;
unsigned long pc_dbg_now_lo;
unsigned long pc_dbg_next_lo;

static void put(const char *s) {
    write(2, s, strlen(s));
}

static void putnum(const char *label, unsigned long v) {
    char buf[128];
    int n = snprintf(buf, sizeof(buf), "  %-14s %lu\n", label, v);
    write(2, buf, (size_t)n);
}

extern s32 gtlDrawnFrameCounter;
extern u32 gGameState;

static void dump(int sig) {
    (void)sig;
    put("[pumpdbg]\n");
    putnum("gGameState", (unsigned long)gGameState);
    putnum("gtlDrawnFr", (unsigned long)gtlDrawnFrameCounter);
    putnum("pump.call", pc_dbg_pump_call);
    putnum("pump.reent", pc_dbg_pump_reent);
    putnum("pump.nosched", pc_dbg_pump_nosched);
    putnum("pump.intsoff", pc_dbg_pump_intsoff);
    putnum("pump.body", pc_dbg_pump_body);
    putnum("pump.done", pc_dbg_pump_done);
    putnum("vi.call", pc_dbg_vi_call);
    putnum("vi.nostart", pc_dbg_vi_nostart);
    putnum("vi.loop", pc_dbg_vi_loop);
    putnum("vi.retrace", pc_dbg_vi_retrace);
    putnum("yield.call", pc_dbg_yield_call);
    putnum("dispatch.call", pc_dbg_dispatch_call);
    putnum("idle.call", pc_dbg_idle_call);
    putnum("vi.now_lo", pc_dbg_now_lo);
    putnum("vi.next_lo", pc_dbg_next_lo);
}

void pc_dbg_init(void) {
    struct itimerval it;
    struct sigaction sa;

    if (getenv("KIRBY_PC_PUMPDBG") == NULL) {
        return;
    }
    pc_dbg_on = 1;

    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = dump;
    sa.sa_flags = SA_RESTART;
    sigaction(SIGALRM, &sa, NULL);

    it.it_interval.tv_sec = 1;
    it.it_interval.tv_usec = 0;
    it.it_value.tv_sec = 1;
    it.it_value.tv_usec = 0;
    setitimer(ITIMER_REAL, &it, NULL);
    put("[pumpdbg] armed\n");
}
