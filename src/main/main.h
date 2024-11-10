#ifndef MAIN_H
#define MAIN_H

#include <types.h>

#define ENTRY_STACK_LEN 0x200

#define IDLE_THREAD_STACK_LEN 0x100
#define MAIN_THREAD_STACK_LEN 0x4000

#define ENTRY_STACK_LEN_U64 (ENTRY_STACK_LEN / sizeof(u64))
#define IDLE_THREAD_STACK_LEN_U64 (IDLE_THREAD_STACK_LEN / sizeof(u64))
#define MAIN_THREAD_STACK_LEN_U64 (MAIN_THREAD_STACK_LEN / sizeof(u64))

#define NUM_PI_MESSAGES 50

#define STACK_TOP_MAGIC 0x00000000FEDCBA98

extern OSMesgQueue gThreadInitializedMQ;

#endif
