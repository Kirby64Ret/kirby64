glabel func_801E762C_ovl10
/* 1D839C 801E762C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D83A0 801E7630 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D83A4 801E7634 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1D83A8 801E7638 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D83AC 801E763C AFA40020 */  sw    $a0, 0x20($sp)
/* 1D83B0 801E7640 8DC30000 */  lw    $v1, ($t6)
/* 1D83B4 801E7644 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 1D83B8 801E7648 3C18801E */  lui   $t8, %hi(D_801E7760) # $t8, 0x801e
/* 1D83BC 801E764C 00031880 */  sll   $v1, $v1, 2
/* 1D83C0 801E7650 01E37821 */  addu  $t7, $t7, $v1
/* 1D83C4 801E7654 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 1D83C8 801E7658 3C01800E */ lui $at, %hi(D_800DF150)
/* 1D83CC 801E765C 00230821 */  addu  $at, $at, $v1
/* 1D83D0 801E7660 27187760 */  addiu $t8, %lo(D_801E7760) # addiu $t8, $t8, 0x7760
/* 1D83D4 801E7664 3C04801F */  lui   $a0, %hi(D_801F3564_ovl10) # $a0, 0x801f
/* 1D83D8 801E7668 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1D83DC 801E766C 24843564 */  addiu $a0, %lo(D_801F3564_ovl10) # addiu $a0, $a0, 0x3564
/* 1D83E0 801E7670 0C066220 */  jal   func_80198880_ovl10
/* 1D83E4 801E7674 AFAF001C */   sw    $t7, 0x1c($sp)
/* 1D83E8 801E7678 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D83EC 801E767C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D83F0 801E7680 3C19800E */ lui $t9, %hi(D_800D9E20)
/* 1D83F4 801E7684 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D83F8 801E7688 8C430000 */  lw    $v1, ($v0)
/* 1D83FC 801E768C 3C040001 */  lui   $a0, (0x00010065 >> 16) # lui $a0, 1
/* 1D8400 801E7690 34840065 */  ori   $a0, (0x00010065 & 0xFFFF) # ori $a0, $a0, 0x65
/* 1D8404 801E7694 00031880 */  sll   $v1, $v1, 2
/* 1D8408 801E7698 0323C821 */  addu  $t9, $t9, $v1
/* 1D840C 801E769C 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1D8410 801E76A0 00230821 */  addu  $at, $at, $v1
/* 1D8414 801E76A4 AC39A520 */ sw $t9, %lo(D_800EA520)($at)
/* 1D8418 801E76A8 8C480000 */  lw    $t0, ($v0)
/* 1D841C 801E76AC 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D8420 801E76B0 00084880 */  sll   $t1, $t0, 2
/* 1D8424 801E76B4 00290821 */  addu  $at, $at, $t1
/* 1D8428 801E76B8 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D842C 801E76BC 8C430000 */  lw    $v1, ($v0)
/* 1D8430 801E76C0 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1D8434 801E76C4 00031880 */  sll   $v1, $v1, 2
/* 1D8438 801E76C8 00230821 */  addu  $at, $at, $v1
/* 1D843C 801E76CC C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 1D8440 801E76D0 3C01800F */ lui $at, %hi(D_800EB160)
/* 1D8444 801E76D4 00230821 */  addu  $at, $at, $v1
/* 1D8448 801E76D8 E424B160 */ swc1 $f4, %lo(D_800EB160)($at)
/* 1D844C 801E76DC 8C4A0000 */  lw    $t2, ($v0)
/* 1D8450 801E76E0 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D8454 801E76E4 000A5880 */  sll   $t3, $t2, 2
/* 1D8458 801E76E8 002B0821 */  addu  $at, $at, $t3
/* 1D845C 801E76EC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D8460 801E76F0 8C4C0000 */  lw    $t4, ($v0)
/* 1D8464 801E76F4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D8468 801E76F8 000C6880 */  sll   $t5, $t4, 2
/* 1D846C 801E76FC 002D0821 */  addu  $at, $at, $t5
/* 1D8470 801E7700 0C02A5D8 */  jal   func_800A9760
/* 1D8474 801E7704 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1D8478 801E7708 8FAF001C */  lw    $t7, 0x1c($sp)
/* 1D847C 801E770C 3C0E801D */  lui   $t6, %hi(D_801CB494) # $t6, 0x801d
/* 1D8480 801E7710 25CEB494 */  addiu $t6, %lo(D_801CB494) # addiu $t6, $t6, -0x4b6c
/* 1D8484 801E7714 3C04801E */  lui   $a0, %hi(D_801E75E4) # $a0, 0x801e
/* 1D8488 801E7718 248475E4 */  addiu $a0, %lo(D_801E75E4) # addiu $a0, $a0, 0x75e4
/* 1D848C 801E771C 0C068354 */  jal   func_801A0D50
/* 1D8490 801E7720 ADEE0098 */   sw    $t6, 0x98($t7)
/* 1D8494 801E7724 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1D8498 801E7728 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1D849C 801E772C 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D84A0 801E7730 3C06801F */  lui   $a2, %hi(D_801F4540_ovl10) # $a2, 0x801f
/* 1D84A4 801E7734 8F190000 */  lw    $t9, ($t8)
/* 1D84A8 801E7738 24C64540 */  addiu $a2, %lo(D_801F4540_ovl10) # addiu $a2, $a2, 0x4540
/* 1D84AC 801E773C 24050003 */  li    $a1, 3
/* 1D84B0 801E7740 00194080 */  sll   $t0, $t9, 2
/* 1D84B4 801E7744 00882021 */  addu  $a0, $a0, $t0
/* 1D84B8 801E7748 0C02911F */  jal   call_virtual_function
/* 1D84BC 801E774C 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D84C0 801E7750 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D84C4 801E7754 27BD0020 */  addiu $sp, $sp, 0x20
/* 1D84C8 801E7758 03E00008 */  jr    $ra
/* 1D84CC 801E775C 00000000 */   nop   
.type func_801E762C_ovl10, @function
.size func_801E762C_ovl10, . - func_801E762C_ovl10
