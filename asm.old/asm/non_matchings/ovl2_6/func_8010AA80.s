glabel func_8010AA80
/* 0934F0 8010AA80 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0934F4 8010AA84 44800000 */  mtc1  $zero, $f0
/* 0934F8 8010AA88 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0934FC 8010AA8C 44812000 */  mtc1  $at, $f4
/* 093500 8010AA90 AFBF002C */  sw    $ra, 0x2c($sp)
/* 093504 8010AA94 AFB00028 */  sw    $s0, 0x28($sp)
/* 093508 8010AA98 AFA5005C */  sw    $a1, 0x5c($sp)
/* 09350C 8010AA9C E7A00030 */  swc1  $f0, 0x30($sp)
/* 093510 8010AAA0 E7A00038 */  swc1  $f0, 0x38($sp)
/* 093514 8010AAA4 E7A40034 */  swc1  $f4, 0x34($sp)
/* 093518 8010AAA8 C4860004 */  lwc1  $f6, 4($a0)
/* 09351C 8010AAAC 3C018013 */  lui   $at, %hi(D_80128AB4) # $at, 0x8013
/* 093520 8010AAB0 00808025 */  move  $s0, $a0
/* 093524 8010AAB4 E7A60048 */  swc1  $f6, 0x48($sp)
/* 093528 8010AAB8 C48A0018 */  lwc1  $f10, 0x18($a0)
/* 09352C 8010AABC C4880008 */  lwc1  $f8, 8($a0)
/* 093530 8010AAC0 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 093534 8010AAC4 27A5003C */  addiu $a1, $sp, 0x3c
/* 093538 8010AAC8 460A4400 */  add.s $f16, $f8, $f10
/* 09353C 8010AACC C4288AB4 */  lwc1  $f8, %lo(D_80128AB4)($at)
/* 093540 8010AAD0 27A60030 */  addiu $a2, $sp, 0x30
/* 093544 8010AAD4 00003825 */  move  $a3, $zero
/* 093548 8010AAD8 E7B0004C */  swc1  $f16, 0x4c($sp)
/* 09354C 8010AADC C492000C */  lwc1  $f18, 0xc($a0)
/* 093550 8010AAE0 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 093554 8010AAE4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 093558 8010AAE8 E7B20050 */  swc1  $f18, 0x50($sp)
/* 09355C 8010AAEC 46083281 */  sub.s $f10, $f6, $f8
/* 093560 8010AAF0 C7B00050 */  lwc1  $f16, 0x50($sp)
/* 093564 8010AAF4 AFA00018 */  sw    $zero, 0x18($sp)
/* 093568 8010AAF8 AFA00014 */  sw    $zero, 0x14($sp)
/* 09356C 8010AAFC E7AA0040 */  swc1  $f10, 0x40($sp)
/* 093570 8010AB00 AFA00010 */  sw    $zero, 0x10($sp)
/* 093574 8010AB04 27A40048 */  addiu $a0, $sp, 0x48
/* 093578 8010AB08 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 09357C 8010AB0C 0C040FA8 */  jal   func_80103EA0
/* 093580 8010AB10 E7B00044 */   swc1  $f16, 0x44($sp)
/* 093584 8010AB14 10400003 */  beqz  $v0, .L8010AB24_ovl2
/* 093588 8010AB18 3C038013 */   lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 09358C 8010AB1C 1000003A */  b     .L8010AC08_ovl2
/* 093590 8010AB20 24020001 */   li    $v0, 1
.L8010AB24_ovl2:
/* 093594 8010AB24 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 093598 8010AB28 C4640004 */  lwc1  $f4, 4($v1)
/* 09359C 8010AB2C C6120004 */  lwc1  $f18, 4($s0)
/* 0935A0 8010AB30 27A40048 */  addiu $a0, $sp, 0x48
/* 0935A4 8010AB34 27A5003C */  addiu $a1, $sp, 0x3c
/* 0935A8 8010AB38 46049180 */  add.s $f6, $f18, $f4
/* 0935AC 8010AB3C C4640008 */  lwc1  $f4, 8($v1)
/* 0935B0 8010AB40 27A60030 */  addiu $a2, $sp, 0x30
/* 0935B4 8010AB44 00003825 */  move  $a3, $zero
/* 0935B8 8010AB48 E7A60048 */  swc1  $f6, 0x48($sp)
/* 0935BC 8010AB4C C60A0014 */  lwc1  $f10, 0x14($s0)
/* 0935C0 8010AB50 C6080008 */  lwc1  $f8, 8($s0)
/* 0935C4 8010AB54 460A4400 */  add.s $f16, $f8, $f10
/* 0935C8 8010AB58 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 0935CC 8010AB5C E7B0004C */  swc1  $f16, 0x4c($sp)
/* 0935D0 8010AB60 C612000C */  lwc1  $f18, 0xc($s0)
/* 0935D4 8010AB64 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0935D8 8010AB68 AFA00018 */  sw    $zero, 0x18($sp)
/* 0935DC 8010AB6C 46049180 */  add.s $f6, $f18, $f4
/* 0935E0 8010AB70 AFA00014 */  sw    $zero, 0x14($sp)
/* 0935E4 8010AB74 AFA00010 */  sw    $zero, 0x10($sp)
/* 0935E8 8010AB78 E7A8003C */  swc1  $f8, 0x3c($sp)
/* 0935EC 8010AB7C E7A60050 */  swc1  $f6, 0x50($sp)
/* 0935F0 8010AB80 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* 0935F4 8010AB84 0C040FA8 */  jal   func_80103EA0
/* 0935F8 8010AB88 E7AA0044 */   swc1  $f10, 0x44($sp)
/* 0935FC 8010AB8C 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 093600 8010AB90 10400003 */  beqz  $v0, .L8010ABA0_ovl2
/* 093604 8010AB94 2463BD00 */   addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 093608 8010AB98 1000001B */  b     .L8010AC08_ovl2
/* 09360C 8010AB9C 24020001 */   li    $v0, 1
.L8010ABA0_ovl2:
/* 093610 8010ABA0 C6100004 */  lwc1  $f16, 4($s0)
/* 093614 8010ABA4 C472000C */  lwc1  $f18, 0xc($v1)
/* 093618 8010ABA8 C4680010 */  lwc1  $f8, 0x10($v1)
/* 09361C 8010ABAC 27A40048 */  addiu $a0, $sp, 0x48
/* 093620 8010ABB0 46128100 */  add.s $f4, $f16, $f18
/* 093624 8010ABB4 27A5003C */  addiu $a1, $sp, 0x3c
/* 093628 8010ABB8 27A60030 */  addiu $a2, $sp, 0x30
/* 09362C 8010ABBC 00003825 */  move  $a3, $zero
/* 093630 8010ABC0 E7A40048 */  swc1  $f4, 0x48($sp)
/* 093634 8010ABC4 C606000C */  lwc1  $f6, 0xc($s0)
/* 093638 8010ABC8 C7B00048 */  lwc1  $f16, 0x48($sp)
/* 09363C 8010ABCC AFA0001C */  sw    $zero, 0x1c($sp)
/* 093640 8010ABD0 46083280 */  add.s $f10, $f6, $f8
/* 093644 8010ABD4 AFA00018 */  sw    $zero, 0x18($sp)
/* 093648 8010ABD8 AFA00014 */  sw    $zero, 0x14($sp)
/* 09364C 8010ABDC AFA00010 */  sw    $zero, 0x10($sp)
/* 093650 8010ABE0 E7AA0050 */  swc1  $f10, 0x50($sp)
/* 093654 8010ABE4 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 093658 8010ABE8 E7B0003C */  swc1  $f16, 0x3c($sp)
/* 09365C 8010ABEC 0C040FA8 */  jal   func_80103EA0
/* 093660 8010ABF0 E7B20044 */   swc1  $f18, 0x44($sp)
/* 093664 8010ABF4 50400004 */  beql  $v0, $zero, .L8010AC08_ovl2
/* 093668 8010ABF8 00001025 */   move  $v0, $zero
/* 09366C 8010ABFC 10000002 */  b     .L8010AC08_ovl2
/* 093670 8010AC00 24020001 */   li    $v0, 1
/* 093674 8010AC04 00001025 */  move  $v0, $zero
.L8010AC08_ovl2:
/* 093678 8010AC08 8FBF002C */  lw    $ra, 0x2c($sp)
/* 09367C 8010AC0C 8FB00028 */  lw    $s0, 0x28($sp)
/* 093680 8010AC10 27BD0058 */  addiu $sp, $sp, 0x58
/* 093684 8010AC14 03E00008 */  jr    $ra
/* 093688 8010AC18 00000000 */   nop   
.type func_8010AA80, @function
.size func_8010AA80, . - func_8010AA80
