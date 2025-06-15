#ifndef FAULT_H
#define FAULT_H

void fatal_printf(const char *fmt, ...);
void crash_screen_printf(const char *fmt, ...);

void faultInit(void);
void crash_screen_start_thread();
void faultSetUserCallback(OSThread (*arg0)());

#endif // FAULT_H
