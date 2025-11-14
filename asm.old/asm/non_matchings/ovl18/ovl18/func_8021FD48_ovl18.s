glabel func_8021FD48_ovl18
/* 2326E8 8021FD48 3C03800D */  lui   $v1, %hi(D_800D7098) # $v1, 0x800d
/* 2326EC 8021FD4C 24637098 */  addiu $v1, %lo(D_800D7098) # addiu $v1, $v1, 0x7098
/* 2326F0 8021FD50 8C6E0004 */  lw    $t6, 4($v1)
/* 2326F4 8021FD54 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 2326F8 8021FD58 3C08800E */ lui $t0, %hi(D_800E77A0)
/* 2326FC 8021FD5C 25CF0001 */  addiu $t7, $t6, 1
/* 232700 8021FD60 AC6F0004 */  sw    $t7, 4($v1)
/* 232704 8021FD64 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 232708 8021FD68 24010056 */  li    $at, 86
/* 23270C 8021FD6C 8F020000 */  lw    $v0, ($t8)
/* 232710 8021FD70 0002C840 */  sll   $t9, $v0, 1
/* 232714 8021FD74 01194021 */  addu  $t0, $t0, $t9
/* 232718 8021FD78 950877A0 */ lhu $t0, %lo(D_800E77A0)($t0)
/* 23271C 8021FD7C 5501000F */  bnel  $t0, $at, .L8021FDBC_ovl18
/* 232720 8021FD80 8C6B0004 */   lw    $t3, 4($v1)
/* 232724 8021FD84 448F2000 */  mtc1  $t7, $f4
/* 232728 8021FD88 3C018023 */  lui   $at, %hi(D_8022BB84) # $at, 0x8023
/* 23272C 8021FD8C C428BB84 */  lwc1  $f8, %lo(D_8022BB84)($at)
/* 232730 8021FD90 468021A0 */  cvt.s.w $f6, $f4
/* 232734 8021FD94 3C01800D */  lui   $at, %hi(D_800D70E4) # $at, 0x800d
/* 232738 8021FD98 C43070E4 */  lwc1  $f16, %lo(D_800D70E4)($at)
/* 23273C 8021FD9C 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 232740 8021FDA0 00025080 */  sll   $t2, $v0, 2
/* 232744 8021FDA4 002A0821 */  addu  $at, $at, $t2
/* 232748 8021FDA8 46083282 */  mul.s $f10, $f6, $f8
/* 23274C 8021FDAC 460A8481 */  sub.s $f18, $f16, $f10
/* 232750 8021FDB0 03E00008 */  jr    $ra
/* 232754 8021FDB4 E4324010 */ swc1 $f18, %lo(gEntitiesAngleXArray)($at)
.type func_8021FD48_ovl18, @function

/* 232758 8021FDB8 8C6B0004 */  lw    $t3, 4($v1)
.L8021FDBC_ovl18:
/* 23275C 8021FDBC 3C018023 */  lui   $at, %hi(D_8022BB88) # $at, 0x8023
/* 232760 8021FDC0 C428BB88 */  lwc1  $f8, %lo(D_8022BB88)($at)
/* 232764 8021FDC4 448B2000 */  mtc1  $t3, $f4
/* 232768 8021FDC8 3C01800D */  lui   $at, %hi(D_800D70E8) # $at, 0x800d
/* 23276C 8021FDCC C42A70E8 */  lwc1  $f10, %lo(D_800D70E8)($at)
/* 232770 8021FDD0 468021A0 */  cvt.s.w $f6, $f4
/* 232774 8021FDD4 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 232778 8021FDD8 00026080 */  sll   $t4, $v0, 2
/* 23277C 8021FDDC 002C0821 */  addu  $at, $at, $t4
/* 232780 8021FDE0 46083402 */  mul.s $f16, $f6, $f8
/* 232784 8021FDE4 460A8480 */  add.s $f18, $f16, $f10
/* 232788 8021FDE8 E43241D0 */ swc1 $f18, %lo(gEntitiesAngleYArray)($at)
/* 23278C 8021FDEC 03E00008 */  jr    $ra
/* 232790 8021FDF0 00000000 */   nop   
.type func_8021FD48_ovl18, @function
.size func_8021FD48_ovl18, . - func_8021FD48_ovl18
