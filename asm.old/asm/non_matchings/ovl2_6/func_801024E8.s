glabel func_801024E8
/* 08AF58 801024E8 3C0E8013 */  lui   $t6, %hi(gCollisionState) # $t6, 0x8013
/* 08AF5C 801024EC 8DCEBCF8 */  lw    $t6, %lo(gCollisionState)($t6)
/* 08AF60 801024F0 8DC2002C */  lw    $v0, 0x2c($t6)
/* 08AF64 801024F4 10400019 */  beqz  $v0, .L8010255C_ovl2
/* 08AF68 801024F8 00000000 */   nop   
/* 08AF6C 801024FC C4460000 */  lwc1  $f6, ($v0)
/* 08AF70 80102500 C4880000 */  lwc1  $f8, ($a0)
/* 08AF74 80102504 C4500004 */  lwc1  $f16, 4($v0)
/* 08AF78 80102508 C4920004 */  lwc1  $f18, 4($a0)
/* 08AF7C 8010250C 46083282 */  mul.s $f10, $f6, $f8
/* 08AF80 80102510 44802000 */  mtc1  $zero, $f4
/* 08AF84 80102514 46128182 */  mul.s $f6, $f16, $f18
/* 08AF88 80102518 C4920008 */  lwc1  $f18, 8($a0)
/* 08AF8C 8010251C C4500008 */  lwc1  $f16, 8($v0)
/* 08AF90 80102520 46065200 */  add.s $f8, $f10, $f6
/* 08AF94 80102524 46128282 */  mul.s $f10, $f16, $f18
/* 08AF98 80102528 460A4180 */  add.s $f6, $f8, $f10
/* 08AF9C 8010252C 4606203C */  c.lt.s $f4, $f6
/* 08AFA0 80102530 00000000 */  nop   
/* 08AFA4 80102534 45000005 */  bc1f  .L8010254C_ovl2
/* 08AFA8 80102538 00000000 */   nop   
/* 08AFAC 8010253C 54A0000A */  bnezl $a1, .L80102568_ovl2
/* 08AFB0 80102540 00001025 */   move  $v0, $zero
/* 08AFB4 80102544 03E00008 */  jr    $ra
/* 08AFB8 80102548 24020001 */   li    $v0, 1
.type func_801024E8, @function

.L8010254C_ovl2:
/* 08AFBC 8010254C 50A00006 */  beql  $a1, $zero, .L80102568_ovl2
/* 08AFC0 80102550 00001025 */   move  $v0, $zero
/* 08AFC4 80102554 03E00008 */  jr    $ra
/* 08AFC8 80102558 24020001 */   li    $v0, 1
.type func_801024E8, @function

.L8010255C_ovl2:
/* 08AFCC 8010255C 03E00008 */  jr    $ra
/* 08AFD0 80102560 24020001 */   li    $v0, 1
.type func_801024E8, @function

/* 08AFD4 80102564 00001025 */  move  $v0, $zero
.L80102568_ovl2:
/* 08AFD8 80102568 03E00008 */  jr    $ra
/* 08AFDC 8010256C 00000000 */   nop   
.type func_801024E8, @function
.size func_801024E8, . - func_801024E8
