glabel func_80222E3C_ovl19
/* 24354C 80222E3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 243550 80222E40 AFBF0024 */  sw         $ra, 0x24($sp)
/* 243554 80222E44 AFB30020 */  sw         $s3, 0x20($sp)
/* 243558 80222E48 AFB2001C */  sw         $s2, 0x1C($sp)
/* 24355C 80222E4C AFB10018 */  sw         $s1, 0x18($sp)
/* 243560 80222E50 AFB00014 */  sw         $s0, 0x14($sp)
/* 243564 80222E54 0C087861 */  jal        func_8021E184_ovl19
/* 243568 80222E58 AFA40028 */   sw        $a0, 0x28($sp)
/* 24356C 80222E5C 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 243570 80222E60 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
.L80222E64_ovl18:
/* 243574 80222E64 8E710000 */  lw         $s1, 0x0($s3)
/* 243578 80222E68 3C018023 */  lui        $at, %hi(D_8022F7CC_ovl19)
/* 24357C 80222E6C C420F7CC */  lwc1       $f0, %lo(D_8022F7CC_ovl19)($at)
/* 243580 80222E70 8E2F0000 */  lw         $t7, 0x0($s1)
glabel func_80222E74_ovl18
/* 243584 80222E74 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 243588 80222E78 3C0E8022 */  lui        $t6, %hi(func_8021EA20_ovl19)
/* 24358C 80222E7C 000FC080 */  sll        $t8, $t7, 2
/* 243590 80222E80 00380821 */  addu       $at, $at, $t8
/* 243594 80222E84 25CEEA20 */  addiu      $t6, $t6, %lo(func_8021EA20_ovl19)
/* 243598 80222E88 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 24359C 80222E8C 8E390000 */  lw         $t9, 0x0($s1)
/* 2435A0 80222E90 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 2435A4 80222E94 3C040002 */  lui        $a0, (0x2006D >> 16)
/* 2435A8 80222E98 00194080 */  sll        $t0, $t9, 2
/* 2435AC 80222E9C 00280821 */  addu       $at, $at, $t0
/* 2435B0 80222EA0 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 2435B4 80222EA4 8E290000 */  lw         $t1, 0x0($s1)
/* 2435B8 80222EA8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 2435BC 80222EAC 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 2435C0 80222EB0 00095080 */  sll        $t2, $t1, 2
/* 2435C4 80222EB4 002A0821 */  addu       $at, $at, $t2
/* 2435C8 80222EB8 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 2435CC 80222EBC 8E2B0000 */  lw         $t3, 0x0($s1)
/* 2435D0 80222EC0 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 2435D4 80222EC4 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 2435D8 80222EC8 000B6080 */  sll        $t4, $t3, 2
/* 2435DC 80222ECC 002C0821 */  addu       $at, $at, $t4
/* 2435E0 80222ED0 3484006D */  ori        $a0, $a0, (0x2006D & 0xFFFF)
/* 2435E4 80222ED4 24060010 */  addiu      $a2, $zero, 0x10
/* 2435E8 80222ED8 0C02A619 */  jal        func_800A9864
/* 2435EC 80222EDC E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 2435F0 80222EE0 8E710000 */  lw         $s1, 0x0($s3)
/* 2435F4 80222EE4 3C10800E */  lui        $s0, %hi(D_800E0D50)
/* 2435F8 80222EE8 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
/* 2435FC 80222EEC 8E220000 */  lw         $v0, 0x0($s1)
/* 243600 80222EF0 3C03800E */  lui        $v1, %hi(gEntitiesNextPosXArray)
/* 243604 80222EF4 246325D0 */  addiu      $v1, $v1, %lo(gEntitiesNextPosXArray)
glabel func_80222EF8_ovl18
/* 243608 80222EF8 00021080 */  sll        $v0, $v0, 2
/* 24360C 80222EFC 02026821 */  addu       $t5, $s0, $v0
glabel func_80222F00_ovl18
/* 243610 80222F00 8DAF0000 */  lw         $t7, 0x0($t5)
/* 243614 80222F04 3C014320 */  lui        $at, (0x43200000 >> 16)
/* 243618 80222F08 44810000 */  mtc1       $at, $f0
/* 24361C 80222F0C 000F7080 */  sll        $t6, $t7, 2
/* 243620 80222F10 006EC021 */  addu       $t8, $v1, $t6
/* 243624 80222F14 C7040000 */  lwc1       $f4, 0x0($t8)
/* 243628 80222F18 0062C821 */  addu       $t9, $v1, $v0
/* 24362C 80222F1C 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
/* 243630 80222F20 46002180 */  add.s      $f6, $f4, $f0
/* 243634 80222F24 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
/* 243638 80222F28 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
/* 24363C 80222F2C 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
/* 243640 80222F30 E7260000 */  swc1       $f6, 0x0($t9)
/* 243644 80222F34 8E220000 */  lw         $v0, 0x0($s1)
/* 243648 80222F38 3C040002 */  lui        $a0, (0x203C2 >> 16)
/* 24364C 80222F3C 348403C2 */  ori        $a0, $a0, (0x203C2 & 0xFFFF)
/* 243650 80222F40 00021080 */  sll        $v0, $v0, 2
/* 243654 80222F44 02024021 */  addu       $t0, $s0, $v0
/* 243658 80222F48 8D090000 */  lw         $t1, 0x0($t0)
/* 24365C 80222F4C 00A26021 */  addu       $t4, $a1, $v0
/* 243660 80222F50 00095080 */  sll        $t2, $t1, 2
/* 243664 80222F54 00AA5821 */  addu       $t3, $a1, $t2
/* 243668 80222F58 C5680000 */  lwc1       $f8, 0x0($t3)
/* 24366C 80222F5C E5880000 */  swc1       $f8, 0x0($t4)
/* 243670 80222F60 8E220000 */  lw         $v0, 0x0($s1)
/* 243674 80222F64 00021080 */  sll        $v0, $v0, 2
/* 243678 80222F68 02026821 */  addu       $t5, $s0, $v0
/* 24367C 80222F6C 8DAF0000 */  lw         $t7, 0x0($t5)
/* 243680 80222F70 00C2C821 */  addu       $t9, $a2, $v0
/* 243684 80222F74 000F7080 */  sll        $t6, $t7, 2
/* 243688 80222F78 00CEC021 */  addu       $t8, $a2, $t6
/* 24368C 80222F7C C70A0000 */  lwc1       $f10, 0x0($t8)
/* 243690 80222F80 46005401 */  sub.s      $f16, $f10, $f0
/* 243694 80222F84 0C02A806 */  jal        func_800AA018
/* 243698 80222F88 E7300000 */   swc1      $f16, 0x0($t9)
/* 24369C 80222F8C 8E680000 */  lw         $t0, 0x0($s3)
/* 2436A0 80222F90 3C12800F */  lui        $s2, %hi(D_800E7CE0 + 0x380)
/* 2436A4 80222F94 26528060 */  addiu      $s2, $s2, %lo(D_800E7CE0 + 0x380)
/* 2436A8 80222F98 8D090000 */  lw         $t1, 0x0($t0)
/* 2436AC 80222F9C 24110002 */  addiu      $s1, $zero, 0x2
/* 2436B0 80222FA0 00095080 */  sll        $t2, $t1, 2
/* 2436B4 80222FA4 020A5821 */  addu       $t3, $s0, $t2
/* 2436B8 80222FA8 8D6C0000 */  lw         $t4, 0x0($t3)
/* 2436BC 80222FAC 000C6880 */  sll        $t5, $t4, 2
/* 2436C0 80222FB0 024D7821 */  addu       $t7, $s2, $t5
/* 2436C4 80222FB4 8DEE0000 */  lw         $t6, 0x0($t7)
/* 2436C8 80222FB8 522E000E */  beql       $s1, $t6, .L80222FF4_ovl19
/* 2436CC 80222FBC 3C040002 */   lui       $a0, (0x203C3 >> 16)
.L80222FC0_ovl19:
/* 2436D0 80222FC0 0C002DAF */  jal        finish_current_thread
/* 2436D4 80222FC4 24040001 */   addiu     $a0, $zero, 0x1
/* 2436D8 80222FC8 8E780000 */  lw         $t8, 0x0($s3)
/* 2436DC 80222FCC 8F190000 */  lw         $t9, 0x0($t8)
/* 2436E0 80222FD0 00194080 */  sll        $t0, $t9, 2
/* 2436E4 80222FD4 02084821 */  addu       $t1, $s0, $t0
/* 2436E8 80222FD8 8D2A0000 */  lw         $t2, 0x0($t1)
/* 2436EC 80222FDC 000A5880 */  sll        $t3, $t2, 2
/* 2436F0 80222FE0 024B6021 */  addu       $t4, $s2, $t3
/* 2436F4 80222FE4 8D8D0000 */  lw         $t5, 0x0($t4)
/* 2436F8 80222FE8 162DFFF5 */  bne        $s1, $t5, .L80222FC0_ovl19
/* 2436FC 80222FEC 00000000 */   nop
/* 243700 80222FF0 3C040002 */  lui        $a0, (0x203C3 >> 16)
.L80222FF4_ovl19:
/* 243704 80222FF4 0C02A806 */  jal        func_800AA018
/* 243708 80222FF8 348403C3 */   ori       $a0, $a0, (0x203C3 & 0xFFFF)
/* 24370C 80222FFC 0C02BE85 */  jal        func_800AFA14
/* 243710 80223000 00000000 */   nop
/* 243714 80223004 8FBF0024 */  lw         $ra, 0x24($sp)
/* 243718 80223008 8FB00014 */  lw         $s0, 0x14($sp)
/* 24371C 8022300C 8FB10018 */  lw         $s1, 0x18($sp)
/* 243720 80223010 8FB2001C */  lw         $s2, 0x1C($sp)
/* 243724 80223014 8FB30020 */  lw         $s3, 0x20($sp)
/* 243728 80223018 03E00008 */  jr         $ra
/* 24372C 8022301C 27BD0028 */   addiu     $sp, $sp, 0x28
