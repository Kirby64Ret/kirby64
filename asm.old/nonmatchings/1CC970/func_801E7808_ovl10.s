glabel func_801E7808_ovl10
/* 1D8578 801E7808 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D857C 801E780C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D8580 801E7810 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D8584 801E7814 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D8588 801E7818 AFA40018 */  sw         $a0, 0x18($sp)
/* 1D858C 801E781C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1D8590 801E7820 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1D8594 801E7824 3C040001 */  lui        $a0, (0x103B0 >> 16)
/* 1D8598 801E7828 000E7880 */  sll        $t7, $t6, 2
/* 1D859C 801E782C 002F0821 */  addu       $at, $at, $t7
/* 1D85A0 801E7830 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 1D85A4 801E7834 8C580000 */  lw         $t8, 0x0($v0)
/* 1D85A8 801E7838 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D85AC 801E783C 348403B0 */  ori        $a0, $a0, (0x103B0 & 0xFFFF)
/* 1D85B0 801E7840 0018C880 */  sll        $t9, $t8, 2
/* 1D85B4 801E7844 00390821 */  addu       $at, $at, $t9
/* 1D85B8 801E7848 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1D85BC 801E784C 8C480000 */  lw         $t0, 0x0($v0)
/* 1D85C0 801E7850 3C01800F */  lui        $at, %hi(D_800EA360)
/* 1D85C4 801E7854 00084880 */  sll        $t1, $t0, 2
/* 1D85C8 801E7858 00290821 */  addu       $at, $at, $t1
/* 1D85CC 801E785C AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
/* 1D85D0 801E7860 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1D85D4 801E7864 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D85D8 801E7868 000A5880 */  sll        $t3, $t2, 2
/* 1D85DC 801E786C 002B0821 */  addu       $at, $at, $t3
/* 1D85E0 801E7870 0C02A7A9 */  jal        func_800A9EA4
/* 1D85E4 801E7874 AC20DFD0 */   sw        $zero, %lo(D_800DDFD0)($at)
/* 1D85E8 801E7878 3C040001 */  lui        $a0, (0x103AF >> 16)
/* 1D85EC 801E787C 348403AF */  ori        $a0, $a0, (0x103AF & 0xFFFF)
/* 1D85F0 801E7880 0C02AA19 */  jal        func_800AA864
/* 1D85F4 801E7884 24050001 */   addiu     $a1, $zero, 0x1
/* 1D85F8 801E7888 44806000 */  mtc1       $zero, $f12
glabel func_801E788C_ovl16
/* 1D85FC 801E788C 0C02BB30 */  jal        func_800AECC0
/* 1D8600 801E7890 00000000 */   nop
/* 1D8604 801E7894 44806000 */  mtc1       $zero, $f12
/* 1D8608 801E7898 0C02BB48 */  jal        func_800AED20
/* 1D860C 801E789C 00000000 */   nop
/* 1D8610 801E78A0 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1D8614 801E78A4 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1D8618 801E78A8 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D861C 801E78AC 240C0001 */  addiu      $t4, $zero, 0x1
/* 1D8620 801E78B0 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1D8624 801E78B4 000E7880 */  sll        $t7, $t6, 2
/* 1D8628 801E78B8 002F0821 */  addu       $at, $at, $t7
/* 1D862C 801E78BC 0C02BE85 */  jal        func_800AFA14
.L801E78C0_ovl9:
/* 1D8630 801E78C0 AC2C9E20 */   sw        $t4, %lo(D_800E9E20)($at)
/* 1D8634 801E78C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D8638 801E78C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D863C 801E78CC 03E00008 */  jr         $ra
/* 1D8640 801E78D0 00000000 */   nop
