#include "common.h"
#include "object_manager.h"
#include "fault.h"

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B3E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B4D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B57C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B63C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B65C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B6B4.s")

void ohSleep(s32 frames) {
    if (omCurrentProc->payload.thread->objStack->stack[7] != STACK_TOP_MAGIC) {
        fatal_printf("gobjthread stack over  gobjid = %d\n", omCurrentProc->gobj->objId);
    }

    while (frames != 0) {
        osSendMesg(&HS64_GObjProcMesgQ, (OSMesg)1, OS_MESG_NOBLOCK);
        osStopThread(NULL);
        frames--;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B78C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B7C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B7F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B8C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B9FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BA2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BA5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BA8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BAEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BBE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BC34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BCA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BD3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BDF0.s")
