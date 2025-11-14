glabel func_801DC598_ovl10
/* 1CD308 801DC598 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1CD30C 801DC59C AFB10018 */  sw    $s1, 0x18($sp)
/* 1CD310 801DC5A0 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1CD314 801DC5A4 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1CD318 801DC5A8 8E2E0000 */  lw    $t6, ($s1)
/* 1CD31C 801DC5AC AFBF001C */  sw    $ra, 0x1c($sp)
/* 1CD320 801DC5B0 AFB00014 */  sw    $s0, 0x14($sp)
/* 1CD324 801DC5B4 AFA40040 */  sw    $a0, 0x40($sp)
/* 1CD328 801DC5B8 8DCF0000 */  lw    $t7, ($t6)
/* 1CD32C 801DC5BC 3C19800E */ lui $t9, %hi(D_800D98E0)
/* 1CD330 801DC5C0 000FC080 */  sll   $t8, $t7, 2
/* 1CD334 801DC5C4 0338C821 */  addu  $t9, $t9, $t8
/* 1CD338 801DC5C8 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1CD33C 801DC5CC 0C068CA0 */  jal   func_801A3280_ovl10
/* 1CD340 801DC5D0 AFB9003C */   sw    $t9, 0x3c($sp)
/* 1CD344 801DC5D4 8E2C0000 */  lw    $t4, ($s1)
/* 1CD348 801DC5D8 3C0F800F */ lui $t7, %hi(D_800E98E0)
/* 1CD34C 801DC5DC 3C04801F */ lui $a0, %hi(D_801F42D8_ovl10)
/* 1CD350 801DC5E0 8D8D0000 */  lw    $t5, ($t4)
/* 1CD354 801DC5E4 24050023 */  li    $a1, 35
/* 1CD358 801DC5E8 24060010 */  li    $a2, 16
/* 1CD35C 801DC5EC 000D7080 */  sll   $t6, $t5, 2
/* 1CD360 801DC5F0 01EE7821 */  addu  $t7, $t7, $t6
/* 1CD364 801DC5F4 8DEF98E0 */ lw $t7, %lo(D_800E98E0)($t7)
/* 1CD368 801DC5F8 31F80001 */  andi  $t8, $t7, 1
/* 1CD36C 801DC5FC 0018C880 */  sll   $t9, $t8, 2
/* 1CD370 801DC600 00992021 */  addu  $a0, $a0, $t9
/* 1CD374 801DC604 0C02A619 */  jal   func_800A9864
/* 1CD378 801DC608 8C8442D8 */ lw $a0, %lo(D_801F42D8_ovl10)($a0)
/* 1CD37C 801DC60C 8E2C0000 */  lw    $t4, ($s1)
/* 1CD380 801DC610 24040030 */  li    $a0, 48
/* 1CD384 801DC614 0C02C67D */  jal   func_800B19F4
/* 1CD388 801DC618 8D850000 */   lw    $a1, ($t4)
/* 1CD38C 801DC61C 8E2E0000 */  lw    $t6, ($s1)
/* 1CD390 801DC620 8FB0003C */  lw    $s0, 0x3c($sp)
/* 1CD394 801DC624 3C19800F */  lui   $t9, %hi(D_800EA360) # $t9, 0x800f
/* 1CD398 801DC628 8DCF0000 */  lw    $t7, ($t6)
/* 1CD39C 801DC62C 3C0D800B */  lui   $t5, %hi(D_800B68AC) # $t5, 0x800b
/* 1CD3A0 801DC630 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1CD3A4 801DC634 2739A360 */  addiu $t9, %lo(D_800EA360) # addiu $t9, $t9, -0x5ca0
/* 1CD3A8 801DC638 00108080 */  sll   $s0, $s0, 2
/* 1CD3AC 801DC63C 000FC080 */  sll   $t8, $t7, 2
/* 1CD3B0 801DC640 00380821 */  addu  $at, $at, $t8
/* 1CD3B4 801DC644 25AD68AC */  addiu $t5, %lo(D_800B68AC) # addiu $t5, $t5, 0x68ac
/* 1CD3B8 801DC648 02196021 */  addu  $t4, $s0, $t9
/* 1CD3BC 801DC64C AC2DEF90 */ sw $t5, %lo(D_800DEF90)($at)
/* 1CD3C0 801DC650 AFAC0028 */  sw    $t4, 0x28($sp)
/* 1CD3C4 801DC654 8D820000 */  lw    $v0, ($t4)
/* 1CD3C8 801DC658 10400003 */  beqz  $v0, .L801DC668_ovl10
/* 1CD3CC 801DC65C 00000000 */   nop   
/* 1CD3D0 801DC660 0C0288B5 */  jal   func_800A22D4
/* 1CD3D4 801DC664 00402025 */   move  $a0, $v0
.L801DC668_ovl10:
/* 1CD3D8 801DC668 3C0F800E */  lui   $t7, %hi(gEntityVtableIndexArray) # $t7, 0x800e
/* 1CD3DC 801DC66C 25EFDC50 */  addiu $t7, %lo(gEntityVtableIndexArray) # addiu $t7, $t7, -0x23b0
/* 1CD3E0 801DC670 020F6821 */  addu  $t5, $s0, $t7
/* 1CD3E4 801DC674 AFAD0024 */  sw    $t5, 0x24($sp)
/* 1CD3E8 801DC678 8DB90000 */  lw    $t9, ($t5)
/* 1CD3EC 801DC67C 24010005 */  li    $at, 5
/* 1CD3F0 801DC680 1721000A */  bne   $t9, $at, .L801DC6AC_ovl10
/* 1CD3F4 801DC684 3C02800F */ lui $v0, %hi(D_800EA520)
/* 1CD3F8 801DC688 00501021 */  addu  $v0, $v0, $s0
/* 1CD3FC 801DC68C 8C42A520 */ lw $v0, %lo(D_800EA520)($v0)
/* 1CD400 801DC690 28410064 */  slti  $at, $v0, 0x64
/* 1CD404 801DC694 14200005 */  bnez  $at, .L801DC6AC_ovl10
/* 1CD408 801DC698 28410078 */   slti  $at, $v0, 0x78
/* 1CD40C 801DC69C 10200003 */  beqz  $at, .L801DC6AC_ovl10
/* 1CD410 801DC6A0 00000000 */   nop   
/* 1CD414 801DC6A4 0C029D9E */  jal   play_sound
/* 1CD418 801DC6A8 240401DF */   li    $a0, 479
.L801DC6AC_ovl10:
/* 1CD41C 801DC6AC 0C029D9E */  jal   play_sound
/* 1CD420 801DC6B0 24040028 */   li    $a0, 40
/* 1CD424 801DC6B4 8E220000 */  lw    $v0, ($s1)
/* 1CD428 801DC6B8 3C06800E */  lui   $a2, %hi(D_800E5F90) # $a2, 0x800e
/* 1CD42C 801DC6BC 24C65F90 */  addiu $a2, %lo(D_800E5F90) # addiu $a2, $a2, 0x5f90
/* 1CD430 801DC6C0 8C4E0000 */  lw    $t6, ($v0)
/* 1CD434 801DC6C4 00D06021 */  addu  $t4, $a2, $s0
/* 1CD438 801DC6C8 8D830000 */  lw    $v1, ($t4)
/* 1CD43C 801DC6CC 3C01800E */ lui $at, %hi(D_800E6150)
/* 1CD440 801DC6D0 000E7880 */  sll   $t7, $t6, 2
/* 1CD444 801DC6D4 002F0821 */  addu  $at, $at, $t7
/* 1CD448 801DC6D8 AC236150 */ sw $v1, %lo(D_800E6150)($at)
/* 1CD44C 801DC6DC 8C4D0000 */  lw    $t5, ($v0)
/* 1CD450 801DC6E0 3C07800E */  lui   $a3, %hi(D_800E6BD0) # $a3, 0x800e
/* 1CD454 801DC6E4 24E76BD0 */  addiu $a3, %lo(D_800E6BD0) # addiu $a3, $a3, 0x6bd0
/* 1CD458 801DC6E8 000DC080 */  sll   $t8, $t5, 2
/* 1CD45C 801DC6EC 00D8C821 */  addu  $t9, $a2, $t8
/* 1CD460 801DC6F0 AF230000 */  sw    $v1, ($t9)
/* 1CD464 801DC6F4 8C4E0000 */  lw    $t6, ($v0)
/* 1CD468 801DC6F8 00F06021 */  addu  $t4, $a3, $s0
/* 1CD46C 801DC6FC C5800000 */  lwc1  $f0, ($t4)
/* 1CD470 801DC700 3C01800E */ lui $at, %hi(D_800E6D90)
/* 1CD474 801DC704 000E7880 */  sll   $t7, $t6, 2
/* 1CD478 801DC708 002F0821 */  addu  $at, $at, $t7
/* 1CD47C 801DC70C E4206D90 */ swc1 $f0, %lo(D_800E6D90)($at)
/* 1CD480 801DC710 8C4D0000 */  lw    $t5, ($v0)
/* 1CD484 801DC714 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 1CD488 801DC718 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 1CD48C 801DC71C 000DC080 */  sll   $t8, $t5, 2
/* 1CD490 801DC720 00F8C821 */  addu  $t9, $a3, $t8
/* 1CD494 801DC724 E7200000 */  swc1  $f0, ($t9)
/* 1CD498 801DC728 8C4E0000 */  lw    $t6, ($v0)
/* 1CD49C 801DC72C 01106021 */  addu  $t4, $t0, $s0
/* 1CD4A0 801DC730 C5800000 */  lwc1  $f0, ($t4)
/* 1CD4A4 801DC734 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 1CD4A8 801DC738 000E7880 */  sll   $t7, $t6, 2
/* 1CD4AC 801DC73C 002F0821 */  addu  $at, $at, $t7
/* 1CD4B0 801DC740 E4202B10 */ swc1 $f0, %lo(gEntitiesPosXArray)($at)
/* 1CD4B4 801DC744 8C4D0000 */  lw    $t5, ($v0)
/* 1CD4B8 801DC748 3C09800E */  lui   $t1, %hi(gEntitiesNextPosZArray) # $t1, 0x800e
/* 1CD4BC 801DC74C 25292950 */  addiu $t1, %lo(gEntitiesNextPosZArray) # addiu $t1, $t1, 0x2950
/* 1CD4C0 801DC750 000DC080 */  sll   $t8, $t5, 2
/* 1CD4C4 801DC754 0118C821 */  addu  $t9, $t0, $t8
/* 1CD4C8 801DC758 E7200000 */  swc1  $f0, ($t9)
/* 1CD4CC 801DC75C 8C4E0000 */  lw    $t6, ($v0)
/* 1CD4D0 801DC760 01306021 */  addu  $t4, $t1, $s0
/* 1CD4D4 801DC764 C5800000 */  lwc1  $f0, ($t4)
/* 1CD4D8 801DC768 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 1CD4DC 801DC76C 000E7880 */  sll   $t7, $t6, 2
/* 1CD4E0 801DC770 002F0821 */  addu  $at, $at, $t7
/* 1CD4E4 801DC774 E4202E90 */ swc1 $f0, %lo(gEntitiesPosZArray)($at)
/* 1CD4E8 801DC778 8C4D0000 */  lw    $t5, ($v0)
/* 1CD4EC 801DC77C 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosYArray) # $t2, 0x800e
/* 1CD4F0 801DC780 254A2790 */  addiu $t2, %lo(gEntitiesNextPosYArray) # addiu $t2, $t2, 0x2790
/* 1CD4F4 801DC784 000DC080 */  sll   $t8, $t5, 2
/* 1CD4F8 801DC788 0138C821 */  addu  $t9, $t1, $t8
/* 1CD4FC 801DC78C E7200000 */  swc1  $f0, ($t9)
/* 1CD500 801DC790 8C4E0000 */  lw    $t6, ($v0)
/* 1CD504 801DC794 01506021 */  addu  $t4, $t2, $s0
/* 1CD508 801DC798 C5800000 */  lwc1  $f0, ($t4)
/* 1CD50C 801DC79C 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 1CD510 801DC7A0 000E7880 */  sll   $t7, $t6, 2
/* 1CD514 801DC7A4 002F0821 */  addu  $at, $at, $t7
/* 1CD518 801DC7A8 E4202CD0 */ swc1 $f0, %lo(gEntitiesPosYArray)($at)
/* 1CD51C 801DC7AC 8C4D0000 */  lw    $t5, ($v0)
/* 1CD520 801DC7B0 3C0C800E */  lui   $t4, %hi(D_800DD8D0) # $t4, 0x800e
/* 1CD524 801DC7B4 258CD8D0 */  addiu $t4, %lo(D_800DD8D0) # addiu $t4, $t4, -0x2730
/* 1CD528 801DC7B8 000DC080 */  sll   $t8, $t5, 2
/* 1CD52C 801DC7BC 0158C821 */  addu  $t9, $t2, $t8
/* 1CD530 801DC7C0 E7200000 */  swc1  $f0, ($t9)
/* 1CD534 801DC7C4 8C4F0000 */  lw    $t7, ($v0)
/* 1CD538 801DC7C8 020C5821 */  addu  $t3, $s0, $t4
/* 1CD53C 801DC7CC 8D6E0000 */  lw    $t6, ($t3)
/* 1CD540 801DC7D0 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1CD544 801DC7D4 000F6880 */  sll   $t5, $t7, 2
/* 1CD548 801DC7D8 002D0821 */  addu  $at, $at, $t5
/* 1CD54C 801DC7DC AFAB0020 */  sw    $t3, 0x20($sp)
/* 1CD550 801DC7E0 8FA5003C */  lw    $a1, 0x3c($sp)
/* 1CD554 801DC7E4 2404007F */  li    $a0, 127
/* 1CD558 801DC7E8 0C02C67D */  jal   func_800B19F4
/* 1CD55C 801DC7EC AC2E9C60 */ sw $t6, %lo(D_800E9C60)($at)
/* 1CD560 801DC7F0 8E220000 */  lw    $v0, ($s1)
/* 1CD564 801DC7F4 8FAF0024 */  lw    $t7, 0x24($sp)
/* 1CD568 801DC7F8 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1CD56C 801DC7FC 8C590000 */  lw    $t9, ($v0)
/* 1CD570 801DC800 24180001 */  li    $t8, 1
/* 1CD574 801DC804 3C03800E */  lui   $v1, %hi(D_800E6A10) # $v1, 0x800e
/* 1CD578 801DC808 00196080 */  sll   $t4, $t9, 2
/* 1CD57C 801DC80C 002C0821 */  addu  $at, $at, $t4
/* 1CD580 801DC810 AC38DFD0 */ sw $t8, %lo(D_800DDFD0)($at)
/* 1CD584 801DC814 8DEE0000 */  lw    $t6, ($t7)
/* 1CD588 801DC818 3C04800F */  lui   $a0, %hi(D_800E9020) # $a0, 0x800f
/* 1CD58C 801DC81C 24849020 */  addiu $a0, %lo(D_800E9020) # addiu $a0, $a0, -0x6fe0
/* 1CD590 801DC820 29C1000A */  slti  $at, $t6, 0xa
/* 1CD594 801DC824 1020000A */  beqz  $at, .L801DC850_ovl10
/* 1CD598 801DC828 24636A10 */   addiu $v1, %lo(D_800E6A10) # addiu $v1, $v1, 0x6a10
/* 1CD59C 801DC82C 8C590000 */  lw    $t9, ($v0)
/* 1CD5A0 801DC830 3C0C800E */ lui $t4, %hi(D_800E1B50)
/* 1CD5A4 801DC834 3C0D801F */  lui   $t5, %hi(D_801F39F4_ovl10) # $t5, 0x801f
/* 1CD5A8 801DC838 0019C080 */  sll   $t8, $t9, 2
/* 1CD5AC 801DC83C 01986021 */  addu  $t4, $t4, $t8
/* 1CD5B0 801DC840 8D8C1B50 */ lw $t4, %lo(D_800E1B50)($t4)
/* 1CD5B4 801DC844 25AD39F4 */  addiu $t5, %lo(D_801F39F4_ovl10) # addiu $t5, $t5, 0x39f4
/* 1CD5B8 801DC848 10000009 */  b     .L801DC870_ovl10
/* 1CD5BC 801DC84C AD8D008C */   sw    $t5, 0x8c($t4)
.L801DC850_ovl10:
/* 1CD5C0 801DC850 8C4E0000 */  lw    $t6, ($v0)
/* 1CD5C4 801DC854 3C18800E */ lui $t8, %hi(D_800E1B50)
/* 1CD5C8 801DC858 3C0F801F */  lui   $t7, %hi(D_801F3A84_ovl10) # $t7, 0x801f
/* 1CD5CC 801DC85C 000EC880 */  sll   $t9, $t6, 2
/* 1CD5D0 801DC860 0319C021 */  addu  $t8, $t8, $t9
/* 1CD5D4 801DC864 8F181B50 */ lw $t8, %lo(D_800E1B50)($t8)
/* 1CD5D8 801DC868 25EF3A84 */  addiu $t7, %lo(D_801F3A84_ovl10) # addiu $t7, $t7, 0x3a84
/* 1CD5DC 801DC86C AF0F008C */  sw    $t7, 0x8c($t8)
.L801DC870_ovl10:
/* 1CD5E0 801DC870 8E220000 */  lw    $v0, ($s1)
/* 1CD5E4 801DC874 00706821 */  addu  $t5, $v1, $s0
/* 1CD5E8 801DC878 C5A40000 */  lwc1  $f4, ($t5)
/* 1CD5EC 801DC87C 8C4C0000 */  lw    $t4, ($v0)
/* 1CD5F0 801DC880 00907821 */  addu  $t7, $a0, $s0
/* 1CD5F4 801DC884 3C05800E */  lui   $a1, %hi(D_800E17D0) # $a1, 0x800e
/* 1CD5F8 801DC888 000C7080 */  sll   $t6, $t4, 2
/* 1CD5FC 801DC88C 006EC821 */  addu  $t9, $v1, $t6
/* 1CD600 801DC890 E7240000 */  swc1  $f4, ($t9)
/* 1CD604 801DC894 8C580000 */  lw    $t8, ($v0)
/* 1CD608 801DC898 C5E60000 */  lwc1  $f6, ($t7)
/* 1CD60C 801DC89C 24A517D0 */  addiu $a1, %lo(D_800E17D0) # addiu $a1, $a1, 0x17d0
/* 1CD610 801DC8A0 00186880 */  sll   $t5, $t8, 2
/* 1CD614 801DC8A4 008D6021 */  addu  $t4, $a0, $t5
/* 1CD618 801DC8A8 E5860000 */  swc1  $f6, ($t4)
/* 1CD61C 801DC8AC 8C590000 */  lw    $t9, ($v0)
/* 1CD620 801DC8B0 00B07021 */  addu  $t6, $a1, $s0
/* 1CD624 801DC8B4 C5C80000 */  lwc1  $f8, ($t6)
/* 1CD628 801DC8B8 00197880 */  sll   $t7, $t9, 2
/* 1CD62C 801DC8BC 00AFC021 */  addu  $t8, $a1, $t7
/* 1CD630 801DC8C0 0C02CCFD */  jal   func_800B33F4
/* 1CD634 801DC8C4 E7080000 */   swc1  $f8, ($t8)
/* 1CD638 801DC8C8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1CD63C 801DC8CC 0C02BB30 */  jal   func_800AECC0
/* 1CD640 801DC8D0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1CD644 801DC8D4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1CD648 801DC8D8 0C02BB48 */  jal   func_800AED20
/* 1CD64C 801DC8DC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1CD650 801DC8E0 8E2D0000 */  lw    $t5, ($s1)
/* 1CD654 801DC8E4 3C19800F */ lui $t9, %hi(D_800E98E0)
/* 1CD658 801DC8E8 3C04801F */ lui $a0, %hi(D_801F42E8_ovl10)
/* 1CD65C 801DC8EC 8DAC0000 */  lw    $t4, ($t5)
/* 1CD660 801DC8F0 000C7080 */  sll   $t6, $t4, 2
/* 1CD664 801DC8F4 032EC821 */  addu  $t9, $t9, $t6
/* 1CD668 801DC8F8 8F3998E0 */ lw $t9, %lo(D_800D98E0)($t9)
/* 1CD66C 801DC8FC 332F0001 */  andi  $t7, $t9, 1
/* 1CD670 801DC900 000FC080 */  sll   $t8, $t7, 2
/* 1CD674 801DC904 00982021 */  addu  $a0, $a0, $t8
/* 1CD678 801DC908 0C02A806 */  jal   func_800AA018
/* 1CD67C 801DC90C 8C8442E8 */ lw $a0, %lo(D_801F42E8_ovl10)($a0)
/* 1CD680 801DC910 8E2D0000 */  lw    $t5, ($s1)
/* 1CD684 801DC914 3C19800F */ lui $t9, %hi(D_800E98E0)
/* 1CD688 801DC918 3C04801F */ lui $a0, %hi(D_801F42E0_ovl10)
/* 1CD68C 801DC91C 8DAC0000 */  lw    $t4, ($t5)
/* 1CD690 801DC920 000C7080 */  sll   $t6, $t4, 2
/* 1CD694 801DC924 032EC821 */  addu  $t9, $t9, $t6
/* 1CD698 801DC928 8F3998E0 */ lw $t9, %lo(D_800E98E0)($t9)
/* 1CD69C 801DC92C 332F0001 */  andi  $t7, $t9, 1
/* 1CD6A0 801DC930 000FC080 */  sll   $t8, $t7, 2
/* 1CD6A4 801DC934 00982021 */  addu  $a0, $a0, $t8
/* 1CD6A8 801DC938 0C02A855 */  jal   func_800AA154
/* 1CD6AC 801DC93C 8C8442E0 */ lw $a0, %lo(D_801F42E0_ovl10)($a0)
/* 1CD6B0 801DC940 8FAD0028 */  lw    $t5, 0x28($sp)
/* 1CD6B4 801DC944 8FAE0024 */  lw    $t6, 0x24($sp)
/* 1CD6B8 801DC948 8DAC0000 */  lw    $t4, ($t5)
/* 1CD6BC 801DC94C 5180000B */  beql  $t4, $zero, .L801DC97C_ovl10
/* 1CD6C0 801DC950 8FB80024 */   lw    $t8, 0x24($sp)
/* 1CD6C4 801DC954 8DD90000 */  lw    $t9, ($t6)
/* 1CD6C8 801DC958 24010005 */  li    $at, 5
/* 1CD6CC 801DC95C 24040006 */  li    $a0, 6
/* 1CD6D0 801DC960 17210005 */  bne   $t9, $at, .L801DC978_ovl10
/* 1CD6D4 801DC964 24050002 */   li    $a1, 2
/* 1CD6D8 801DC968 0C02A08D */  jal   func_800A8234
/* 1CD6DC 801DC96C 24060002 */   li    $a2, 2
/* 1CD6E0 801DC970 8FAF0028 */  lw    $t7, 0x28($sp)
/* 1CD6E4 801DC974 ADE20000 */  sw    $v0, ($t7)
.L801DC978_ovl10:
/* 1CD6E8 801DC978 8FB80024 */  lw    $t8, 0x24($sp)
.L801DC97C_ovl10:
/* 1CD6EC 801DC97C 24010005 */  li    $at, 5
/* 1CD6F0 801DC980 3C02800F */ lui $v0, %hi(D_800EA520)
/* 1CD6F4 801DC984 8F0D0000 */  lw    $t5, ($t8)
/* 1CD6F8 801DC988 00501021 */  addu  $v0, $v0, $s0
/* 1CD6FC 801DC98C 55A1000A */  bnel  $t5, $at, .L801DC9B8_ovl10
/* 1CD700 801DC990 8E2C0000 */   lw    $t4, ($s1)
/* 1CD704 801DC994 8C42A520 */ lw $v0, %lo(D_800EA520)($v0)
/* 1CD708 801DC998 28410064 */  slti  $at, $v0, 0x64
/* 1CD70C 801DC99C 14200005 */  bnez  $at, .L801DC9B4_ovl10
/* 1CD710 801DC9A0 28410078 */   slti  $at, $v0, 0x78
/* 1CD714 801DC9A4 50200004 */  beql  $at, $zero, .L801DC9B8_ovl10
/* 1CD718 801DC9A8 8E2C0000 */   lw    $t4, ($s1)
/* 1CD71C 801DC9AC 0C029D9E */  jal   play_sound
/* 1CD720 801DC9B0 240401DD */   li    $a0, 477
.L801DC9B4_ovl10:
/* 1CD724 801DC9B4 8E2C0000 */  lw    $t4, ($s1)
.L801DC9B8_ovl10:
/* 1CD728 801DC9B8 8FA20020 */  lw    $v0, 0x20($sp)
/* 1CD72C 801DC9BC 3C0F800F */ lui $t7, %hi(D_800E9C60)
/* 1CD730 801DC9C0 8D8E0000 */  lw    $t6, ($t4)
/* 1CD734 801DC9C4 8C4D0000 */  lw    $t5, ($v0)
/* 1CD738 801DC9C8 3C01C000 */  lui   $at, 0xc000
/* 1CD73C 801DC9CC 000EC880 */  sll   $t9, $t6, 2
/* 1CD740 801DC9D0 01F97821 */  addu  $t7, $t7, $t9
/* 1CD744 801DC9D4 8DEF9C60 */ lw $t7, %lo(D_800E9C60)($t7)
/* 1CD748 801DC9D8 24040030 */  li    $a0, 48
/* 1CD74C 801DC9DC 8FA5003C */  lw    $a1, 0x3c($sp)
/* 1CD750 801DC9E0 01E1C024 */  and   $t8, $t7, $at
/* 1CD754 801DC9E4 030D6025 */  or    $t4, $t8, $t5
/* 1CD758 801DC9E8 0C02C67D */  jal   func_800B19F4
/* 1CD75C 801DC9EC AC4C0000 */   sw    $t4, ($v0)
/* 1CD760 801DC9F0 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 1CD764 801DC9F4 00300821 */  addu  $at, $at, $s0
/* 1CD768 801DC9F8 240E0008 */  li    $t6, 8
/* 1CD76C 801DC9FC AC2E7CE0 */ sw $t6, %lo(D_800E7CE0)($at)
/* 1CD770 801DCA00 8E390000 */  lw    $t9, ($s1)
/* 1CD774 801DCA04 0C067656 */  jal   func_8019D958_ovl10
/* 1CD778 801DCA08 97240002 */   lhu   $a0, 2($t9)
/* 1CD77C 801DCA0C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1CD780 801DCA10 8FB00014 */  lw    $s0, 0x14($sp)
/* 1CD784 801DCA14 8FB10018 */  lw    $s1, 0x18($sp)
/* 1CD788 801DCA18 03E00008 */  jr    $ra
/* 1CD78C 801DCA1C 27BD0040 */   addiu $sp, $sp, 0x40
.type func_801DC598_ovl10, @function
.size func_801DC598_ovl10, . - func_801DC598_ovl10
