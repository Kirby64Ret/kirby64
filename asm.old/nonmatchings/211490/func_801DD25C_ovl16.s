glabel func_801DD25C_ovl16
/* 21350C 801DD25C 3C068005 */  lui        $a2, %hi(D_8004A7C4)
.L801DD260_ovl12:
/* 213510 801DD260 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
.L801DD264_ovl10:
/* 213514 801DD264 8CCE0000 */  lw         $t6, 0x0($a2)
/* 213518 801DD268 AFA40000 */  sw         $a0, 0x0($sp)
/* 21351C 801DD26C 3C05800E */  lui        $a1, %hi(D_800DFBD0)
glabel func_801DD270_ovl11
/* 213520 801DD270 8DCF0000 */  lw         $t7, 0x0($t6)
/* 213524 801DD274 24A5FBD0 */  addiu      $a1, $a1, %lo(D_800DFBD0)
/* 213528 801DD278 3C01801F */  lui        $at, %hi(func_801EFE1C_ovl16)
glabel func_801DD27C_ovl9
/* 21352C 801DD27C 000FC080 */  sll        $t8, $t7, 2
.L801DD280_ovl12:
/* 213530 801DD280 00B8C821 */  addu       $t9, $a1, $t8
.L801DD284_ovl12:
/* 213534 801DD284 8F280000 */  lw         $t0, 0x0($t9)
.L801DD288_ovl10:
/* 213538 801DD288 C422FE1C */  lwc1       $f2, %lo(func_801EFE1C_ovl16)($at)
/* 21353C 801DD28C 3C01801F */  lui        $at, %hi(func_801EFE1C_ovl16 + 0x4)
glabel func_801DD290_ovl12
/* 213540 801DD290 8D030004 */  lw         $v1, 0x4($t0)
.L801DD294_ovl14:
/* 213544 801DD294 C426FE20 */  lwc1       $f6, %lo(func_801EFE1C_ovl16 + 0x4)($at)
/* 213548 801DD298 3C01801F */  lui        $at, %hi(func_801EFE1C_ovl16 + 0x8)
/* 21354C 801DD29C C4640034 */  lwc1       $f4, 0x34($v1)
.L801DD2A0_ovl10:
/* 213550 801DD2A0 3C07800F */  lui        $a3, %hi(D_800E9AA0)
glabel func_801DD2A4_ovl9
/* 213554 801DD2A4 24E79AA0 */  addiu      $a3, $a3, %lo(D_800E9AA0)
/* 213558 801DD2A8 46062200 */  add.s      $f8, $f4, $f6
/* 21355C 801DD2AC 3C04801F */  lui        $a0, %hi(D_801EF650_ovl16)
glabel func_801DD2B0_ovl17
/* 213560 801DD2B0 E4680034 */  swc1       $f8, 0x34($v1)
/* 213564 801DD2B4 8CC90000 */  lw         $t1, 0x0($a2)
/* 213568 801DD2B8 C430FE24 */  lwc1       $f16, %lo(func_801EFE1C_ovl16 + 0x8)($at)
/* 21356C 801DD2BC 3C01801F */  lui        $at, %hi(func_801EFE1C_ovl16 + 0xC)
/* 213570 801DD2C0 8D2A0000 */  lw         $t2, 0x0($t1)
.L801DD2C4_ovl14:
/* 213574 801DD2C4 000A5880 */  sll        $t3, $t2, 2
/* 213578 801DD2C8 00AB6021 */  addu       $t4, $a1, $t3
glabel func_801DD2CC_ovl10
/* 21357C 801DD2CC 8D8D0000 */  lw         $t5, 0x0($t4)
/* 213580 801DD2D0 8DA30004 */  lw         $v1, 0x4($t5)
/* 213584 801DD2D4 C46A0038 */  lwc1       $f10, 0x38($v1)
/* 213588 801DD2D8 46105480 */  add.s      $f18, $f10, $f16
/* 21358C 801DD2DC E4720038 */  swc1       $f18, 0x38($v1)
/* 213590 801DD2E0 8CCE0000 */  lw         $t6, 0x0($a2)
/* 213594 801DD2E4 8DC20000 */  lw         $v0, 0x0($t6)
.L801DD2E8_ovl12:
/* 213598 801DD2E8 00021080 */  sll        $v0, $v0, 2
/* 21359C 801DD2EC 00A27821 */  addu       $t7, $a1, $v0
/* 2135A0 801DD2F0 8DF80000 */  lw         $t8, 0x0($t7)
.L801DD2F4_ovl14:
/* 2135A4 801DD2F4 8F030004 */  lw         $v1, 0x4($t8)
/* 2135A8 801DD2F8 C4600034 */  lwc1       $f0, 0x34($v1)
.L801DD2FC_ovl12:
/* 2135AC 801DD2FC 4600103C */  c.lt.s     $f2, $f0
/* 2135B0 801DD300 00000000 */  nop
/* 2135B4 801DD304 4500000E */  bc1f       .L801DD340_ovl16
.L801DD308_ovl15:
/* 2135B8 801DD308 00000000 */   nop
.L801DD30C_ovl15:
/* 2135BC 801DD30C 46020101 */  sub.s      $f4, $f0, $f2
.L801DD310_ovl16:
/* 2135C0 801DD310 E4640034 */  swc1       $f4, 0x34($v1)
/* 2135C4 801DD314 8CD90000 */  lw         $t9, 0x0($a2)
glabel func_801DD318_ovl15
/* 2135C8 801DD318 8F220000 */  lw         $v0, 0x0($t9)
.L801DD31C_ovl10:
/* 2135CC 801DD31C 00021080 */  sll        $v0, $v0, 2
/* 2135D0 801DD320 00A24021 */  addu       $t0, $a1, $v0
/* 2135D4 801DD324 8D090000 */  lw         $t1, 0x0($t0)
/* 2135D8 801DD328 8D230004 */  lw         $v1, 0x4($t1)
/* 2135DC 801DD32C C4600034 */  lwc1       $f0, 0x34($v1)
.L801DD330_ovl11:
/* 2135E0 801DD330 4600103C */  c.lt.s     $f2, $f0
/* 2135E4 801DD334 00000000 */  nop
.L801DD338_ovl11:
/* 2135E8 801DD338 4503FFF5 */  bc1tl      .L801DD310_ovl16
glabel func_801DD33C_ovl13
/* 2135EC 801DD33C 46020101 */   sub.s     $f4, $f0, $f2
.L801DD340_ovl16:
/* 2135F0 801DD340 C42CFE28 */  lwc1       $f12, %lo(func_801EFE1C_ovl16 + 0xC)($at)
/* 2135F4 801DD344 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801DD348_ovl11:
/* 2135F8 801DD348 460C003C */  c.lt.s     $f0, $f12
/* 2135FC 801DD34C 00000000 */  nop
/* 213600 801DD350 4502000F */  bc1fl      func_801DD390_ovl16
/* 213604 801DD354 C4600038 */   lwc1      $f0, 0x38($v1)
/* 213608 801DD358 46020180 */  add.s      $f6, $f0, $f2
.L801DD35C_ovl16:
/* 21360C 801DD35C E4660034 */  swc1       $f6, 0x34($v1)
/* 213610 801DD360 8CCA0000 */  lw         $t2, 0x0($a2)
/* 213614 801DD364 8D420000 */  lw         $v0, 0x0($t2)
/* 213618 801DD368 00021080 */  sll        $v0, $v0, 2
.L801DD36C_ovl13:
/* 21361C 801DD36C 00A25821 */  addu       $t3, $a1, $v0
.L801DD370_ovl11:
/* 213620 801DD370 8D6C0000 */  lw         $t4, 0x0($t3)
.L801DD374_ovl14:
/* 213624 801DD374 8D830004 */  lw         $v1, 0x4($t4)
/* 213628 801DD378 C4600034 */  lwc1       $f0, 0x34($v1)
/* 21362C 801DD37C 460C003C */  c.lt.s     $f0, $f12
.L801DD380_ovl10:
/* 213630 801DD380 00000000 */  nop
/* 213634 801DD384 4503FFF5 */  bc1tl      .L801DD35C_ovl16
/* 213638 801DD388 46020180 */   add.s     $f6, $f0, $f2
/* 21363C 801DD38C C4600038 */  lwc1       $f0, 0x38($v1)
glabel func_801DD390_ovl16
/* 213640 801DD390 4600103C */  c.lt.s     $f2, $f0
/* 213644 801DD394 00000000 */  nop
.L801DD398_ovl12:
/* 213648 801DD398 4502000F */  bc1fl      .L801DD3D8_ovl16
/* 21364C 801DD39C 460C003C */   c.lt.s    $f0, $f12
.L801DD3A0_ovl11:
/* 213650 801DD3A0 46020201 */  sub.s      $f8, $f0, $f2
.L801DD3A4_ovl16:
/* 213654 801DD3A4 E4680038 */  swc1       $f8, 0x38($v1)
glabel func_801DD3A8_ovl13
/* 213658 801DD3A8 8CCD0000 */  lw         $t5, 0x0($a2)
/* 21365C 801DD3AC 8DA20000 */  lw         $v0, 0x0($t5)
.L801DD3B0_ovl11:
/* 213660 801DD3B0 00021080 */  sll        $v0, $v0, 2
.L801DD3B4_ovl14:
/* 213664 801DD3B4 00A27021 */  addu       $t6, $a1, $v0
/* 213668 801DD3B8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21366C 801DD3BC 8DE30004 */  lw         $v1, 0x4($t7)
/* 213670 801DD3C0 C4600038 */  lwc1       $f0, 0x38($v1)
/* 213674 801DD3C4 4600103C */  c.lt.s     $f2, $f0
/* 213678 801DD3C8 00000000 */  nop
glabel func_801DD3CC_ovl9
/* 21367C 801DD3CC 4503FFF5 */  bc1tl      .L801DD3A4_ovl16
/* 213680 801DD3D0 46020201 */   sub.s     $f8, $f0, $f2
/* 213684 801DD3D4 460C003C */  c.lt.s     $f0, $f12
.L801DD3D8_ovl16:
/* 213688 801DD3D8 00000000 */  nop
/* 21368C 801DD3DC 4502000F */  bc1fl      .L801DD41C_ovl16
/* 213690 801DD3E0 00E24821 */   addu      $t1, $a3, $v0
/* 213694 801DD3E4 46020280 */  add.s      $f10, $f0, $f2
.L801DD3E8_ovl16:
/* 213698 801DD3E8 E46A0038 */  swc1       $f10, 0x38($v1)
/* 21369C 801DD3EC 8CD80000 */  lw         $t8, 0x0($a2)
/* 2136A0 801DD3F0 8F020000 */  lw         $v0, 0x0($t8)
/* 2136A4 801DD3F4 00021080 */  sll        $v0, $v0, 2
/* 2136A8 801DD3F8 00A2C821 */  addu       $t9, $a1, $v0
/* 2136AC 801DD3FC 8F280000 */  lw         $t0, 0x0($t9)
glabel func_801DD400_ovl12
/* 2136B0 801DD400 8D030004 */  lw         $v1, 0x4($t0)
/* 2136B4 801DD404 C4600038 */  lwc1       $f0, 0x38($v1)
/* 2136B8 801DD408 460C003C */  c.lt.s     $f0, $f12
.L801DD40C_ovl11:
/* 2136BC 801DD40C 00000000 */  nop
/* 2136C0 801DD410 4503FFF5 */  bc1tl      .L801DD3E8_ovl16
/* 2136C4 801DD414 46020280 */   add.s     $f10, $f0, $f2
/* 2136C8 801DD418 00E24821 */  addu       $t1, $a3, $v0
.L801DD41C_ovl16:
/* 2136CC 801DD41C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 2136D0 801DD420 00001825 */  or         $v1, $zero, $zero
/* 2136D4 801DD424 19400015 */  blez       $t2, .L801DD47C_ovl16
/* 2136D8 801DD428 00000000 */   nop
/* 2136DC 801DD42C 44810000 */  mtc1       $at, $f0
/* 2136E0 801DD430 2484F650 */  addiu      $a0, $a0, %lo(D_801EF650_ovl16)
/* 2136E4 801DD434 8C8D0000 */  lw         $t5, 0x0($a0)
glabel func_801DD438_ovl17
/* 2136E8 801DD438 00A25821 */  addu       $t3, $a1, $v0
/* 2136EC 801DD43C 8D6C0000 */  lw         $t4, 0x0($t3)
.L801DD440_ovl11:
/* 2136F0 801DD440 000D7080 */  sll        $t6, $t5, 2
/* 2136F4 801DD444 24630001 */  addiu      $v1, $v1, 0x1
/* 2136F8 801DD448 018E7821 */  addu       $t7, $t4, $t6
/* 2136FC 801DD44C 8DF80000 */  lw         $t8, 0x0($t7)
/* 213700 801DD450 24840004 */  addiu      $a0, $a0, 0x4
.L801DD454_ovl13:
/* 213704 801DD454 8F190080 */  lw         $t9, 0x80($t8)
/* 213708 801DD458 E7200088 */  swc1       $f0, 0x88($t9)
.L801DD45C_ovl12:
/* 21370C 801DD45C 8CC80000 */  lw         $t0, 0x0($a2)
/* 213710 801DD460 8D020000 */  lw         $v0, 0x0($t0)
/* 213714 801DD464 00021080 */  sll        $v0, $v0, 2
/* 213718 801DD468 00E24821 */  addu       $t1, $a3, $v0
glabel func_801DD46C_ovl13
/* 21371C 801DD46C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 213720 801DD470 006A082A */  slt        $at, $v1, $t2
/* 213724 801DD474 5420FFF0 */  bnel       $at, $zero, func_801DD438_ovl17
/* 213728 801DD478 8C8D0000 */   lw        $t5, 0x0($a0)
.L801DD47C_ovl16:
/* 21372C 801DD47C 03E00008 */  jr         $ra
/* 213730 801DD480 00000000 */   nop
