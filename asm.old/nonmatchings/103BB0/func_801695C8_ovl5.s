glabel func_801695C8_ovl5
/* 110A38 801695C8 3C0E8019 */  lui        $t6, %hi(func_8018E3B0_ovl5 + 0x10)
/* 110A3C 801695CC 91CEE3C0 */  lbu        $t6, %lo(func_8018E3B0_ovl5 + 0x10)($t6)
/* 110A40 801695D0 00001825 */  or         $v1, $zero, $zero
/* 110A44 801695D4 3C188019 */  lui        $t8, %hi(func_8018E3B0_ovl5 + 0x11)
/* 110A48 801695D8 11C00006 */  beqz       $t6, .L801695F4_ovl5
/* 110A4C 801695DC 3C088019 */   lui       $t0, %hi(func_8018E3B0_ovl5 + 0x12)
/* 110A50 801695E0 3C0F8019 */  lui        $t7, %hi(func_8018E3B0_ovl5 + 0x18)
/* 110A54 801695E4 91EFE3C8 */  lbu        $t7, %lo(func_8018E3B0_ovl5 + 0x18)($t7)
/* 110A58 801695E8 15E00002 */  bnez       $t7, .L801695F4_ovl5
/* 110A5C 801695EC 00000000 */   nop
/* 110A60 801695F0 24030001 */  addiu      $v1, $zero, 0x1
.L801695F4_ovl5:
/* 110A64 801695F4 9318E3C1 */  lbu        $t8, %lo(func_8018E3B0_ovl5 + 0x11)($t8)
/* 110A68 801695F8 3C0A8019 */  lui        $t2, %hi(func_8018E3B0_ovl5 + 0x13)
/* 110A6C 801695FC 3C198019 */  lui        $t9, %hi(func_8018E3B0_ovl5 + 0x19)
/* 110A70 80169600 13000005 */  beqz       $t8, .L80169618_ovl5
/* 110A74 80169604 3C098019 */   lui       $t1, %hi(func_8018E3B0_ovl5 + 0x1A)
/* 110A78 80169608 9339E3C9 */  lbu        $t9, %lo(func_8018E3B0_ovl5 + 0x19)($t9)
/* 110A7C 8016960C 17200002 */  bnez       $t9, .L80169618_ovl5
/* 110A80 80169610 00000000 */   nop
/* 110A84 80169614 24630001 */  addiu      $v1, $v1, 0x1
.L80169618_ovl5:
/* 110A88 80169618 9108E3C2 */  lbu        $t0, %lo(func_8018E3B0_ovl5 + 0x12)($t0)
/* 110A8C 8016961C 3C0B8019 */  lui        $t3, %hi(func_8018E3B0_ovl5 + 0x1B)
/* 110A90 80169620 11000005 */  beqz       $t0, .L80169638_ovl5
/* 110A94 80169624 00000000 */   nop
/* 110A98 80169628 9129E3CA */  lbu        $t1, %lo(func_8018E3B0_ovl5 + 0x1A)($t1)
/* 110A9C 8016962C 15200002 */  bnez       $t1, .L80169638_ovl5
/* 110AA0 80169630 00000000 */   nop
/* 110AA4 80169634 24630001 */  addiu      $v1, $v1, 0x1
.L80169638_ovl5:
/* 110AA8 80169638 914AE3C3 */  lbu        $t2, %lo(func_8018E3B0_ovl5 + 0x13)($t2)
/* 110AAC 8016963C 11400005 */  beqz       $t2, .L80169654_ovl5
/* 110AB0 80169640 00000000 */   nop
/* 110AB4 80169644 916BE3CB */  lbu        $t3, %lo(func_8018E3B0_ovl5 + 0x1B)($t3)
/* 110AB8 80169648 15600002 */  bnez       $t3, .L80169654_ovl5
/* 110ABC 8016964C 00000000 */   nop
/* 110AC0 80169650 24630001 */  addiu      $v1, $v1, 0x1
.L80169654_ovl5:
/* 110AC4 80169654 03E00008 */  jr         $ra
/* 110AC8 80169658 00601025 */   or        $v0, $v1, $zero
