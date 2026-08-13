#ifndef RDP_RESET_H
#define RDP_RESET_H

#include <PR/gbi.h>

void func_80007C00(Vp *vp, f32, f32, f32, f32);
void set_scissor_callback(void (*callback)(Gfx**));
void reset_rdp_settings(Gfx **dlist);
void setup_viewport(Vp *viewport);

#endif // RDP_RESET_H
