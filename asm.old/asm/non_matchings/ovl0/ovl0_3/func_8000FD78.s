glabel func_8000FD78
/* 010978 8000FD78 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01097C 8000FD7C AFBF0024 */  sw    $ra, 0x24($sp)
/* 010980 8000FD80 AFB20020 */  sw    $s2, 0x20($sp)
/* 010984 8000FD84 AFB1001C */  sw    $s1, 0x1c($sp)
/* 010988 8000FD88 AFB00018 */  sw    $s0, 0x18($sp)
/* 01098C 8000FD8C 8C91003C */  lw    $s1, 0x3c($a0)
/* 010990 8000FD90 00A08025 */  move  $s0, $a1
/* 010994 8000FD94 52200020 */  beql  $s1, $zero, .L8000FE18_ovl0
/* 010998 8000FD98 8FBF0024 */   lw    $ra, 0x24($sp)
/* 01099C 8000FD9C 8CAE0000 */  lw    $t6, ($a1)
/* 0109A0 8000FDA0 24120012 */  li    $s2, 18
/* 0109A4 8000FDA4 524E001C */  beql  $s2, $t6, .L8000FE18_ovl0
/* 0109A8 8000FDA8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0109AC 8000FDAC 8E180008 */  lw    $t8, 8($s0)
.L8000FDB0_ovl0:
/* 0109B0 8000FDB0 2610002C */  addiu $s0, $s0, 0x2c
/* 0109B4 8000FDB4 02202025 */  move  $a0, $s1
/* 0109B8 8000FDB8 AE38001C */  sw    $t8, 0x1c($s1)
/* 0109BC 8000FDBC 8E0FFFE0 */  lw    $t7, -0x20($s0)
/* 0109C0 8000FDC0 AE2F0020 */  sw    $t7, 0x20($s1)
/* 0109C4 8000FDC4 8E18FFE4 */  lw    $t8, -0x1c($s0)
/* 0109C8 8000FDC8 AE380024 */  sw    $t8, 0x24($s1)
/* 0109CC 8000FDCC 8E08FFE8 */  lw    $t0, -0x18($s0)
/* 0109D0 8000FDD0 AE280030 */  sw    $t0, 0x30($s1)
/* 0109D4 8000FDD4 8E19FFEC */  lw    $t9, -0x14($s0)
/* 0109D8 8000FDD8 AE390034 */  sw    $t9, 0x34($s1)
/* 0109DC 8000FDDC 8E08FFF0 */  lw    $t0, -0x10($s0)
/* 0109E0 8000FDE0 AE280038 */  sw    $t0, 0x38($s1)
/* 0109E4 8000FDE4 8E0AFFF4 */  lw    $t2, -0xc($s0)
/* 0109E8 8000FDE8 AE2A0040 */  sw    $t2, 0x40($s1)
/* 0109EC 8000FDEC 8E09FFF8 */  lw    $t1, -8($s0)
/* 0109F0 8000FDF0 AE290044 */  sw    $t1, 0x44($s1)
/* 0109F4 8000FDF4 8E0AFFFC */  lw    $t2, -4($s0)
/* 0109F8 8000FDF8 0C002FA4 */  jal   func_8000BE90
/* 0109FC 8000FDFC AE2A0048 */   sw    $t2, 0x48($s1)
/* 010A00 8000FE00 10400004 */  beqz  $v0, .L8000FE14_ovl0
/* 010A04 8000FE04 00408825 */   move  $s1, $v0
/* 010A08 8000FE08 8E0B0000 */  lw    $t3, ($s0)
/* 010A0C 8000FE0C 564BFFE8 */  bnel  $s2, $t3, .L8000FDB0_ovl0
/* 010A10 8000FE10 8E180008 */   lw    $t8, 8($s0)
.L8000FE14_ovl0:
/* 010A14 8000FE14 8FBF0024 */  lw    $ra, 0x24($sp)
.L8000FE18_ovl0:
/* 010A18 8000FE18 8FB00018 */  lw    $s0, 0x18($sp)
/* 010A1C 8000FE1C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 010A20 8000FE20 8FB20020 */  lw    $s2, 0x20($sp)
/* 010A24 8000FE24 03E00008 */  jr    $ra
/* 010A28 8000FE28 27BD0028 */   addiu $sp, $sp, 0x28
.type func_8000FD78, @function
.size func_8000FD78, . - func_8000FD78
