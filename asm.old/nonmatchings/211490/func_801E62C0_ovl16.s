glabel func_801E62C0_ovl16
/* 21C570 801E62C0 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 21C574 801E62C4 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
.L801E62C8_ovl9:
/* 21C578 801E62C8 8CE50000 */  lw         $a1, 0x0($a3)
/* 21C57C 801E62CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21C580 801E62D0 AFBF0014 */  sw         $ra, 0x14($sp)
.L801E62D4_ovl9:
/* 21C584 801E62D4 AFA40018 */  sw         $a0, 0x18($sp)
/* 21C588 801E62D8 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C58C 801E62DC 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x4)
/* 21C590 801E62E0 C4220018 */  lwc1       $f2, %lo(func_801F0014_ovl16 + 0x4)($at)
/* 21C594 801E62E4 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 21C598 801E62E8 00031880 */  sll        $v1, $v1, 2
/* 21C59C 801E62EC 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 21C5A0 801E62F0 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 21C5A4 801E62F4 00230821 */  addu       $at, $at, $v1
/* 21C5A8 801E62F8 00831021 */  addu       $v0, $a0, $v1
/* 21C5AC 801E62FC C4440000 */  lwc1       $f4, 0x0($v0)
/* 21C5B0 801E6300 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
.L801E6304_ovl15:
/* 21C5B4 801E6304 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x8)
/* 21C5B8 801E6308 46062200 */  add.s      $f8, $f4, $f6
/* 21C5BC 801E630C E4480000 */  swc1       $f8, 0x0($v0)
/* 21C5C0 801E6310 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C5C4 801E6314 00031880 */  sll        $v1, $v1, 2
/* 21C5C8 801E6318 00831021 */  addu       $v0, $a0, $v1
/* 21C5CC 801E631C C4400000 */  lwc1       $f0, 0x0($v0)
/* 21C5D0 801E6320 4600103C */  c.lt.s     $f2, $f0
/* 21C5D4 801E6324 00000000 */  nop
/* 21C5D8 801E6328 4500000B */  bc1f       .L801E6358_ovl16
.L801E632C_ovl9:
/* 21C5DC 801E632C 00000000 */   nop
/* 21C5E0 801E6330 46020281 */  sub.s      $f10, $f0, $f2
.L801E6334_ovl16:
/* 21C5E4 801E6334 E44A0000 */  swc1       $f10, 0x0($v0)
/* 21C5E8 801E6338 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C5EC 801E633C 00031880 */  sll        $v1, $v1, 2
/* 21C5F0 801E6340 00831021 */  addu       $v0, $a0, $v1
.L801E6344_ovl10:
/* 21C5F4 801E6344 C4400000 */  lwc1       $f0, 0x0($v0)
/* 21C5F8 801E6348 4600103C */  c.lt.s     $f2, $f0
/* 21C5FC 801E634C 00000000 */  nop
/* 21C600 801E6350 4503FFF8 */  bc1tl      .L801E6334_ovl16
/* 21C604 801E6354 46020281 */   sub.s     $f10, $f0, $f2
.L801E6358_ovl16:
/* 21C608 801E6358 C430001C */  lwc1       $f16, %lo(func_801F0014_ovl16 + 0x8)($at)
.L801E635C_ovl10:
/* 21C60C 801E635C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 21C610 801E6360 4610003C */  c.lt.s     $f0, $f16
/* 21C614 801E6364 00000000 */  nop
/* 21C618 801E6368 4502000C */  bc1fl      .L801E639C_ovl16
/* 21C61C 801E636C 00230821 */   addu      $at, $at, $v1
/* 21C620 801E6370 46020480 */  add.s      $f18, $f0, $f2
glabel func_801E6374_ovl16
/* 21C624 801E6374 E4520000 */  swc1       $f18, 0x0($v0)
/* 21C628 801E6378 8CA30000 */  lw         $v1, 0x0($a1)
.L801E637C_ovl9:
/* 21C62C 801E637C 00031880 */  sll        $v1, $v1, 2
/* 21C630 801E6380 00831021 */  addu       $v0, $a0, $v1
/* 21C634 801E6384 C4400000 */  lwc1       $f0, 0x0($v0)
.L801E6388_ovl10:
/* 21C638 801E6388 4610003C */  c.lt.s     $f0, $f16
/* 21C63C 801E638C 00000000 */  nop
/* 21C640 801E6390 4503FFF8 */  bc1tl      func_801E6374_ovl16
glabel func_801E6394_ovl9
/* 21C644 801E6394 46020480 */   add.s     $f18, $f0, $f2
/* 21C648 801E6398 00230821 */  addu       $at, $at, $v1
.L801E639C_ovl16:
/* 21C64C 801E639C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 21C650 801E63A0 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 21C654 801E63A4 00230821 */  addu       $at, $at, $v1
/* 21C658 801E63A8 E4242B10 */  swc1       $f4, %lo(gEntitiesPosXArray)($at)
/* 21C65C 801E63AC 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C660 801E63B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 21C664 801E63B4 00031880 */  sll        $v1, $v1, 2
/* 21C668 801E63B8 00230821 */  addu       $at, $at, $v1
/* 21C66C 801E63BC C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 21C670 801E63C0 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 21C674 801E63C4 00230821 */  addu       $at, $at, $v1
/* 21C678 801E63C8 E4262CD0 */  swc1       $f6, %lo(gEntitiesPosYArray)($at)
/* 21C67C 801E63CC 8CAE0000 */  lw         $t6, 0x0($a1)
.L801E63D0_ovl15:
/* 21C680 801E63D0 000E7880 */  sll        $t7, $t6, 2
/* 21C684 801E63D4 008FC021 */  addu       $t8, $a0, $t7
/* 21C688 801E63D8 0C00B5B8 */  jal        sinf
.L801E63DC_ovl10:
/* 21C68C 801E63DC C70C0000 */   lwc1      $f12, 0x0($t8)
/* 21C690 801E63E0 3C078005 */  lui        $a3, %hi(D_8004A7C4)
glabel func_801E63E4_ovl10
/* 21C694 801E63E4 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 21C698 801E63E8 8CE50000 */  lw         $a1, 0x0($a3)
.L801E63EC_ovl15:
/* 21C69C 801E63EC 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 21C6A0 801E63F0 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 21C6A4 801E63F4 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C6A8 801E63F8 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
glabel func_801E63FC_ovl10
/* 21C6AC 801E63FC 00031880 */  sll        $v1, $v1, 2
/* 21C6B0 801E6400 00230821 */  addu       $at, $at, $v1
/* 21C6B4 801E6404 C428AC20 */  lwc1       $f8, %lo(D_800EAC20)($at)
/* 21C6B8 801E6408 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 21C6BC 801E640C 44815000 */  mtc1       $at, $f10
/* 21C6C0 801E6410 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
.L801E6414_ovl9:
/* 21C6C4 801E6414 00230821 */  addu       $at, $at, $v1
.L801E6418_ovl15:
/* 21C6C8 801E6418 460A0482 */  mul.s      $f18, $f0, $f10
/* 21C6CC 801E641C 00000000 */  nop
/* 21C6D0 801E6420 46124102 */  mul.s      $f4, $f8, $f18
/* 21C6D4 801E6424 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
.L801E6428_ovl9:
/* 21C6D8 801E6428 8CB90000 */  lw         $t9, 0x0($a1)
/* 21C6DC 801E642C 00194880 */  sll        $t1, $t9, 2
/* 21C6E0 801E6430 00895021 */  addu       $t2, $a0, $t1
glabel func_801E6434_ovl9
/* 21C6E4 801E6434 0C00D604 */  jal        cosf
/* 21C6E8 801E6438 C54C0000 */   lwc1      $f12, 0x0($t2)
.L801E643C_ovl15:
/* 21C6EC 801E643C 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 21C6F0 801E6440 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
glabel func_801E6444_ovl10
/* 21C6F4 801E6444 8CE50000 */  lw         $a1, 0x0($a3)
/* 21C6F8 801E6448 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x14)
/* 21C6FC 801E644C C4220028 */  lwc1       $f2, %lo(func_801F0014_ovl16 + 0x14)($at)
glabel D_801E6450_ovl15
/* 21C700 801E6450 3C01C382 */  lui        $at, (0xC3820000 >> 16)
/* 21C704 801E6454 44817000 */  mtc1       $at, $f14
/* 21C708 801E6458 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C70C 801E645C 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x18)
/* 21C710 801E6460 C430002C */  lwc1       $f16, %lo(func_801F0014_ovl16 + 0x18)($at)
/* 21C714 801E6464 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 21C718 801E6468 00031880 */  sll        $v1, $v1, 2
/* 21C71C 801E646C 00230821 */  addu       $at, $at, $v1
/* 21C720 801E6470 C426ADE0 */  lwc1       $f6, %lo(D_800EADE0)($at)
/* 21C724 801E6474 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 21C728 801E6478 44815000 */  mtc1       $at, $f10
/* 21C72C 801E647C 3C014320 */  lui        $at, (0x43200000 >> 16)
/* 21C730 801E6480 44812000 */  mtc1       $at, $f4
/* 21C734 801E6484 460A0202 */  mul.s      $f8, $f0, $f10
/* 21C738 801E6488 3C04800E */  lui        $a0, %hi(gEntitiesNextPosYArray)
/* 21C73C 801E648C 24842790 */  addiu      $a0, $a0, %lo(gEntitiesNextPosYArray)
/* 21C740 801E6490 00835821 */  addu       $t3, $a0, $v1
/* 21C744 801E6494 3C01800F */  lui        $at, %hi(D_800E8920)
/* 21C748 801E6498 3C06800E */  lui        $a2, %hi(gEntitiesNextPosXArray)
/* 21C74C 801E649C 24C625D0 */  addiu      $a2, $a2, %lo(gEntitiesNextPosXArray)
/* 21C750 801E64A0 46083482 */  mul.s      $f18, $f6, $f8
/* 21C754 801E64A4 46049280 */  add.s      $f10, $f18, $f4
/* 21C758 801E64A8 E56A0000 */  swc1       $f10, 0x0($t3)
/* 21C75C 801E64AC 8CAC0000 */  lw         $t4, 0x0($a1)
/* 21C760 801E64B0 000C6880 */  sll        $t5, $t4, 2
/* 21C764 801E64B4 002D0821 */  addu       $at, $at, $t5
/* 21C768 801E64B8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 21C76C 801E64BC 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C770 801E64C0 3C014382 */  lui        $at, (0x43820000 >> 16)
/* 21C774 801E64C4 00031880 */  sll        $v1, $v1, 2
/* 21C778 801E64C8 00C31021 */  addu       $v0, $a2, $v1
/* 21C77C 801E64CC C44C0000 */  lwc1       $f12, 0x0($v0)
/* 21C780 801E64D0 460E603C */  c.lt.s     $f12, $f14
/* 21C784 801E64D4 00000000 */  nop
/* 21C788 801E64D8 45020007 */  bc1fl      .L801E64F8_ovl16
/* 21C78C 801E64DC 44817000 */   mtc1      $at, $f14
/* 21C790 801E64E0 E44E0000 */  swc1       $f14, 0x0($v0)
/* 21C794 801E64E4 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C798 801E64E8 00031880 */  sll        $v1, $v1, 2
/* 21C79C 801E64EC 00C31021 */  addu       $v0, $a2, $v1
/* 21C7A0 801E64F0 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 21C7A4 801E64F4 44817000 */  mtc1       $at, $f14
.L801E64F8_ovl16:
/* 21C7A8 801E64F8 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 21C7AC 801E64FC 460C703C */  c.lt.s     $f14, $f12
/* 21C7B0 801E6500 44816000 */  mtc1       $at, $f12
/* 21C7B4 801E6504 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 21C7B8 801E6508 45020005 */  bc1fl      .L801E6520_ovl16
/* 21C7BC 801E650C 00831021 */   addu      $v0, $a0, $v1
/* 21C7C0 801E6510 E44E0000 */  swc1       $f14, 0x0($v0)
/* 21C7C4 801E6514 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C7C8 801E6518 00031880 */  sll        $v1, $v1, 2
/* 21C7CC 801E651C 00831021 */  addu       $v0, $a0, $v1
.L801E6520_ovl16:
/* 21C7D0 801E6520 C4400000 */  lwc1       $f0, 0x0($v0)
/* 21C7D4 801E6524 460C003C */  c.lt.s     $f0, $f12
/* 21C7D8 801E6528 00000000 */  nop
/* 21C7DC 801E652C 45020007 */  bc1fl      .L801E654C_ovl16
/* 21C7E0 801E6530 4600703C */   c.lt.s    $f14, $f0
/* 21C7E4 801E6534 E44C0000 */  swc1       $f12, 0x0($v0)
.L801E6538_ovl9:
/* 21C7E8 801E6538 8CA30000 */  lw         $v1, 0x0($a1)
.L801E653C_ovl9:
/* 21C7EC 801E653C 00031880 */  sll        $v1, $v1, 2
/* 21C7F0 801E6540 00831021 */  addu       $v0, $a0, $v1
glabel D_801E6544_ovl15
/* 21C7F4 801E6544 C4400000 */  lwc1       $f0, 0x0($v0)
/* 21C7F8 801E6548 4600703C */  c.lt.s     $f14, $f0
.L801E654C_ovl16:
/* 21C7FC 801E654C 44806000 */  mtc1       $zero, $f12
/* 21C800 801E6550 45020005 */  bc1fl      .L801E6568_ovl16
glabel D_801E6554_ovl15
/* 21C804 801E6554 00230821 */   addu      $at, $at, $v1
/* 21C808 801E6558 E44E0000 */  swc1       $f14, 0x0($v0)
/* 21C80C 801E655C 8CA30000 */  lw         $v1, 0x0($a1)
/* 21C810 801E6560 00031880 */  sll        $v1, $v1, 2
glabel func_801E6564_ovl10
/* 21C814 801E6564 00230821 */  addu       $at, $at, $v1
.L801E6568_ovl16:
/* 21C818 801E6568 C420AA60 */  lwc1       $f0, %lo(D_800EAA60)($at)
/* 21C81C 801E656C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 21C820 801E6570 00230821 */  addu       $at, $at, $v1
/* 21C824 801E6574 46006032 */  c.eq.s     $f12, $f0
/* 21C828 801E6578 00C37021 */  addu       $t6, $a2, $v1
/* 21C82C 801E657C 00837821 */  addu       $t7, $a0, $v1
/* 21C830 801E6580 4500001A */  bc1f       .L801E65EC_ovl16
/* 21C834 801E6584 00000000 */   nop
/* 21C838 801E6588 C4282B10 */  lwc1       $f8, %lo(gEntitiesPosXArray)($at)
.L801E658C_ovl9:
/* 21C83C 801E658C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 21C840 801E6590 00230821 */  addu       $at, $at, $v1
/* 21C844 801E6594 C4322CD0 */  lwc1       $f18, %lo(gEntitiesPosYArray)($at)
/* 21C848 801E6598 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 21C84C 801E659C C5E40000 */  lwc1       $f4, 0x0($t7)
/* 21C850 801E65A0 46083301 */  sub.s      $f12, $f6, $f8
glabel func_801E65A4_ovl9
/* 21C854 801E65A4 0C0061C3 */  jal        atan2f
/* 21C858 801E65A8 46049381 */   sub.s     $f14, $f18, $f4
/* 21C85C 801E65AC 3C078005 */  lui        $a3, %hi(D_8004A7C4)
.L801E65B0_ovl10:
/* 21C860 801E65B0 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
glabel D_801E65B4_ovl15
/* 21C864 801E65B4 8CF80000 */  lw         $t8, 0x0($a3)
/* 21C868 801E65B8 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 21C86C 801E65BC 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 21C870 801E65C0 8F190000 */  lw         $t9, 0x0($t8)
/* 21C874 801E65C4 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x1C)
/* 21C878 801E65C8 C4220030 */  lwc1       $f2, %lo(func_801F0014_ovl16 + 0x1C)($at)
/* 21C87C 801E65CC 00194880 */  sll        $t1, $t9, 2
/* 21C880 801E65D0 00C95021 */  addu       $t2, $a2, $t1
/* 21C884 801E65D4 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21C888 801E65D8 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x20)
/* 21C88C 801E65DC C4300034 */  lwc1       $f16, %lo(func_801F0014_ovl16 + 0x20)($at)
.L801E65E0_ovl10:
/* 21C890 801E65E0 8D6C0004 */  lw         $t4, 0x4($t3)
/* 21C894 801E65E4 10000026 */  b          .L801E6680_ovl16
.L801E65E8_ovl9:
/* 21C898 801E65E8 E5800038 */   swc1      $f0, 0x38($t4)
.L801E65EC_ovl16:
/* 21C89C 801E65EC 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x24)
/* 21C8A0 801E65F0 C42A0038 */  lwc1       $f10, %lo(func_801F0014_ovl16 + 0x24)($at)
/* 21C8A4 801E65F4 46005032 */  c.eq.s     $f10, $f0
.L801E65F8_ovl9:
/* 21C8A8 801E65F8 00000000 */  nop
glabel D_801E65FC_ovl15
/* 21C8AC 801E65FC 45000018 */  bc1f       .L801E6660_ovl16
/* 21C8B0 801E6600 3C01800F */   lui       $at, %hi(D_800EA8A0)
/* 21C8B4 801E6604 00230821 */  addu       $at, $at, $v1
.L801E6608_ovl10:
/* 21C8B8 801E6608 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* 21C8BC 801E660C 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 21C8C0 801E6610 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
glabel func_801E6614_ovl15
/* 21C8C4 801E6614 4606603C */  c.lt.s     $f12, $f6
/* 21C8C8 801E6618 00C3C021 */  addu       $t8, $a2, $v1
/* 21C8CC 801E661C 4502000B */  bc1fl      .L801E664C_ovl16
/* 21C8D0 801E6620 8F190000 */   lw        $t9, 0x0($t8)
/* 21C8D4 801E6624 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 21C8D8 801E6628 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 21C8DC 801E662C 00C36821 */  addu       $t5, $a2, $v1
/* 21C8E0 801E6630 8DAE0000 */  lw         $t6, 0x0($t5)
/* 21C8E4 801E6634 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x28)
.L801E6638_ovl9:
/* 21C8E8 801E6638 C428003C */  lwc1       $f8, %lo(func_801F0014_ovl16 + 0x28)($at)
.L801E663C_ovl9:
/* 21C8EC 801E663C 8DCF0004 */  lw         $t7, 0x4($t6)
/* 21C8F0 801E6640 1000000F */  b          .L801E6680_ovl16
glabel D_801E6644_ovl15
/* 21C8F4 801E6644 E5E80038 */   swc1      $f8, 0x38($t7)
glabel func_801E6648_ovl9
/* 21C8F8 801E6648 8F190000 */  lw         $t9, 0x0($t8)
.L801E664C_ovl16:
/* 21C8FC 801E664C 3C01801F */  lui        $at, %hi(func_801F0014_ovl16 + 0x2C)
/* 21C900 801E6650 C4320040 */  lwc1       $f18, %lo(func_801F0014_ovl16 + 0x2C)($at)
/* 21C904 801E6654 8F290004 */  lw         $t1, 0x4($t9)
/* 21C908 801E6658 10000009 */  b          .L801E6680_ovl16
/* 21C90C 801E665C E5320038 */   swc1      $f18, 0x38($t1)
.L801E6660_ovl16:
/* 21C910 801E6660 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 21C914 801E6664 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 21C918 801E6668 00C35021 */  addu       $t2, $a2, $v1
/* 21C91C 801E666C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21C920 801E6670 8D620004 */  lw         $v0, 0x4($t3)
/* 21C924 801E6674 C4440038 */  lwc1       $f4, 0x38($v0)
/* 21C928 801E6678 46002280 */  add.s      $f10, $f4, $f0
/* 21C92C 801E667C E44A0038 */  swc1       $f10, 0x38($v0)
.L801E6680_ovl16:
/* 21C930 801E6680 8CE50000 */  lw         $a1, 0x0($a3)
/* 21C934 801E6684 3C08800D */  lui        $t0, %hi(D_800D7098)
/* 21C938 801E6688 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
/* 21C93C 801E668C 8CA40000 */  lw         $a0, 0x0($a1)
/* 21C940 801E6690 00041880 */  sll        $v1, $a0, 2
/* 21C944 801E6694 00C36021 */  addu       $t4, $a2, $v1
/* 21C948 801E6698 8D8D0000 */  lw         $t5, 0x0($t4)
/* 21C94C 801E669C 8DA20004 */  lw         $v0, 0x4($t5)
/* 21C950 801E66A0 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21C954 801E66A4 4600103C */  c.lt.s     $f2, $f0
/* 21C958 801E66A8 00000000 */  nop
/* 21C95C 801E66AC 4502000F */  bc1fl      .L801E66EC_ovl16
/* 21C960 801E66B0 4610003C */   c.lt.s    $f0, $f16
/* 21C964 801E66B4 46020181 */  sub.s      $f6, $f0, $f2
.L801E66B8_ovl16:
/* 21C968 801E66B8 E4460038 */  swc1       $f6, 0x38($v0)
/* 21C96C 801E66BC 8CE50000 */  lw         $a1, 0x0($a3)
/* 21C970 801E66C0 8CA40000 */  lw         $a0, 0x0($a1)
/* 21C974 801E66C4 00041880 */  sll        $v1, $a0, 2
/* 21C978 801E66C8 00C37021 */  addu       $t6, $a2, $v1
/* 21C97C 801E66CC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21C980 801E66D0 8DE20004 */  lw         $v0, 0x4($t7)
/* 21C984 801E66D4 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21C988 801E66D8 4600103C */  c.lt.s     $f2, $f0
/* 21C98C 801E66DC 00000000 */  nop
glabel func_801E66E0_ovl10
/* 21C990 801E66E0 4503FFF5 */  bc1tl      .L801E66B8_ovl16
/* 21C994 801E66E4 46020181 */   sub.s     $f6, $f0, $f2
/* 21C998 801E66E8 4610003C */  c.lt.s     $f0, $f16
.L801E66EC_ovl16:
/* 21C99C 801E66EC 00000000 */  nop
/* 21C9A0 801E66F0 4502000F */  bc1fl      .L801E6730_ovl16
/* 21C9A4 801E66F4 8D090038 */   lw        $t1, 0x38($t0)
/* 21C9A8 801E66F8 46020200 */  add.s      $f8, $f0, $f2
.L801E66FC_ovl16:
/* 21C9AC 801E66FC E4480038 */  swc1       $f8, 0x38($v0)
/* 21C9B0 801E6700 8CE50000 */  lw         $a1, 0x0($a3)
/* 21C9B4 801E6704 8CA40000 */  lw         $a0, 0x0($a1)
/* 21C9B8 801E6708 00041880 */  sll        $v1, $a0, 2
/* 21C9BC 801E670C 00C3C021 */  addu       $t8, $a2, $v1
/* 21C9C0 801E6710 8F190000 */  lw         $t9, 0x0($t8)
/* 21C9C4 801E6714 8F220004 */  lw         $v0, 0x4($t9)
/* 21C9C8 801E6718 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21C9CC 801E671C 4610003C */  c.lt.s     $f0, $f16
/* 21C9D0 801E6720 00000000 */  nop
/* 21C9D4 801E6724 4503FFF5 */  bc1tl      .L801E66FC_ovl16
/* 21C9D8 801E6728 46020200 */   add.s     $f8, $f0, $f2
/* 21C9DC 801E672C 8D090038 */  lw         $t1, 0x38($t0)
.L801E6730_ovl16:
/* 21C9E0 801E6730 11200008 */  beqz       $t1, .L801E6754_ovl16
/* 21C9E4 801E6734 3C06800F */   lui       $a2, %hi(D_800E9AA0)
/* 21C9E8 801E6738 24C69AA0 */  addiu      $a2, $a2, %lo(D_800E9AA0)
/* 21C9EC 801E673C 00C31021 */  addu       $v0, $a2, $v1
/* 21C9F0 801E6740 8C4A0000 */  lw         $t2, 0x0($v0)
.L801E6744_ovl15:
/* 21C9F4 801E6744 254B0001 */  addiu      $t3, $t2, 0x1
/* 21C9F8 801E6748 AC4B0000 */  sw         $t3, 0x0($v0)
/* 21C9FC 801E674C 8CA40000 */  lw         $a0, 0x0($a1)
/* 21CA00 801E6750 00041880 */  sll        $v1, $a0, 2
.L801E6754_ovl16:
/* 21CA04 801E6754 3C02800F */  lui        $v0, %hi(D_800EC120)
/* 21CA08 801E6758 00431021 */  addu       $v0, $v0, $v1
/* 21CA0C 801E675C 8C42C120 */  lw         $v0, %lo(D_800EC120)($v0)
/* 21CA10 801E6760 3C0C800E */  lui        $t4, %hi(D_800DD710)
glabel D_801E6764_ovl15
/* 21CA14 801E6764 3C06800F */  lui        $a2, %hi(D_800E9AA0)
/* 21CA18 801E6768 00021080 */  sll        $v0, $v0, 2
/* 21CA1C 801E676C 01826021 */  addu       $t4, $t4, $v0
/* 21CA20 801E6770 8D8CD710 */  lw         $t4, %lo(D_800DD710)($t4)
glabel D_801E6774_ovl15
/* 21CA24 801E6774 2401FFFF */  addiu      $at, $zero, -0x1
/* 21CA28 801E6778 24C69AA0 */  addiu      $a2, $a2, %lo(D_800E9AA0)
/* 21CA2C 801E677C 11810004 */  beq        $t4, $at, .L801E6790_ovl16
/* 21CA30 801E6780 3C0D800E */   lui       $t5, %hi(D_800E0D50)
/* 21CA34 801E6784 01A26821 */  addu       $t5, $t5, $v0
/* 21CA38 801E6788 8DAD0D50 */  lw         $t5, %lo(D_800E0D50)($t5)
/* 21CA3C 801E678C 108D0032 */  beq        $a0, $t5, .L801E6858_ovl16
.L801E6790_ovl16:
/* 21CA40 801E6790 00C37021 */   addu      $t6, $a2, $v1
/* 21CA44 801E6794 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21CA48 801E6798 24040035 */  addiu      $a0, $zero, 0x35
glabel func_801E679C_ovl10
/* 21CA4C 801E679C 29E1001F */  slti       $at, $t7, 0x1F
glabel func_801E67A0_ovl9
/* 21CA50 801E67A0 1420002D */  bnez       $at, .L801E6858_ovl16
/* 21CA54 801E67A4 00000000 */   nop
/* 21CA58 801E67A8 0C06B30D */  jal        func_801ACC34_ovl7
/* 21CA5C 801E67AC 00002825 */   or        $a1, $zero, $zero
/* 21CA60 801E67B0 3C06800F */  lui        $a2, %hi(D_800E9AA0)
/* 21CA64 801E67B4 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 21CA68 801E67B8 3C08800D */  lui        $t0, %hi(D_800D7098)
/* 21CA6C 801E67BC 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
/* 21CA70 801E67C0 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 21CA74 801E67C4 1040001A */  beqz       $v0, .L801E6830_ovl16
jtbl_801E67C8_ovl15:
/* 21CA78 801E67C8 24C69AA0 */   addiu     $a2, $a2, %lo(D_800E9AA0)
/* 21CA7C 801E67CC 00022080 */  sll        $a0, $v0, 2
/* 21CA80 801E67D0 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 21CA84 801E67D4 00240821 */  addu       $at, $at, $a0
/* 21CA88 801E67D8 24180001 */  addiu      $t8, $zero, 0x1
/* 21CA8C 801E67DC AC388E60 */  sw         $t8, %lo(D_800E8E60)($at)
/* 21CA90 801E67E0 8CE50000 */  lw         $a1, 0x0($a3)
/* 21CA94 801E67E4 3C01800E */  lui        $at, %hi(D_800E0D50)
.L801E67E8_ovl9:
/* 21CA98 801E67E8 00240821 */  addu       $at, $at, $a0
/* 21CA9C 801E67EC 8CB90000 */  lw         $t9, 0x0($a1)
glabel D_801E67F0_ovl15
/* 21CAA0 801E67F0 00C45821 */  addu       $t3, $a2, $a0
glabel D_801E67F4_ovl15
/* 21CAA4 801E67F4 AC390D50 */  sw         $t9, %lo(D_800E0D50)($at)
.L801E67F8_ovl15:
/* 21CAA8 801E67F8 8CA90000 */  lw         $t1, 0x0($a1)
jtbl_801E67FC_ovl15:
/* 21CAAC 801E67FC 3C01800F */  lui        $at, %hi(D_800EC120)
/* 21CAB0 801E6800 00095080 */  sll        $t2, $t1, 2
/* 21CAB4 801E6804 002A0821 */  addu       $at, $at, $t2
/* 21CAB8 801E6808 AC22C120 */  sw         $v0, %lo(D_800EC120)($at)
/* 21CABC 801E680C AD600000 */  sw         $zero, 0x0($t3)
/* 21CAC0 801E6810 8CAC0000 */  lw         $t4, 0x0($a1)
/* 21CAC4 801E6814 000C6880 */  sll        $t5, $t4, 2
/* 21CAC8 801E6818 00CD7021 */  addu       $t6, $a2, $t5
/* 21CACC 801E681C ADC00000 */  sw         $zero, 0x0($t6)
.L801E6820_ovl9:
/* 21CAD0 801E6820 AD000038 */  sw         $zero, 0x38($t0)
glabel D_801E6824_ovl15
/* 21CAD4 801E6824 8CA30000 */  lw         $v1, 0x0($a1)
glabel D_801E6828_ovl15
/* 21CAD8 801E6828 1000000B */  b          .L801E6858_ovl16
glabel D_801E682C_ovl15
/* 21CADC 801E682C 00031880 */   sll       $v1, $v1, 2
.L801E6830_ovl16:
/* 21CAE0 801E6830 8CE50000 */  lw         $a1, 0x0($a3)
.L801E6834_ovl15:
/* 21CAE4 801E6834 240F001F */  addiu      $t7, $zero, 0x1F
glabel D_801E6838_ovl15
/* 21CAE8 801E6838 240A0001 */  addiu      $t2, $zero, 0x1
glabel D_801E683C_ovl15
/* 21CAEC 801E683C 8CB80000 */  lw         $t8, 0x0($a1)
glabel func_801E6840_ovl15
/* 21CAF0 801E6840 0018C880 */  sll        $t9, $t8, 2
/* 21CAF4 801E6844 00D94821 */  addu       $t1, $a2, $t9
/* 21CAF8 801E6848 AD2F0000 */  sw         $t7, 0x0($t1)
/* 21CAFC 801E684C AD0A0038 */  sw         $t2, 0x38($t0)
jtbl_801E6850_ovl15:
/* 21CB00 801E6850 8CA30000 */  lw         $v1, 0x0($a1)
/* 21CB04 801E6854 00031880 */  sll        $v1, $v1, 2
.L801E6858_ovl16:
/* 21CB08 801E6858 3C02801F */  lui        $v0, %hi(D_801F0120_ovl16)
/* 21CB0C 801E685C 24420120 */  addiu      $v0, $v0, %lo(D_801F0120_ovl16)
/* 21CB10 801E6860 8C4B0014 */  lw         $t3, 0x14($v0)
/* 21CB14 801E6864 1D600007 */  bgtz       $t3, .L801E6884_ovl16
glabel D_801E6868_ovl15
/* 21CB18 801E6868 3C0D800E */   lui       $t5, %hi(D_800E1B50)
glabel D_801E686C_ovl15
/* 21CB1C 801E686C 01A36821 */  addu       $t5, $t5, $v1
glabel D_801E6870_ovl15
/* 21CB20 801E6870 8DAD1B50 */  lw         $t5, %lo(D_800E1B50)($t5)
glabel D_801E6874_ovl15
/* 21CB24 801E6874 3C0C801E */  lui        $t4, %hi(D_801D9A20)
glabel D_801E6878_ovl15
/* 21CB28 801E6878 258C9A20 */  addiu      $t4, $t4, %lo(D_801D9A20)
glabel D_801E687C_ovl15
/* 21CB2C 801E687C 10000007 */  b          .L801E689C_ovl16
glabel D_801E6880_ovl15
/* 21CB30 801E6880 ADAC008C */   sw        $t4, 0x8C($t5)
.L801E6884_ovl16:
/* 21CB34 801E6884 3C18800E */  lui        $t8, %hi(D_800E1B50)
glabel D_801E6888_ovl15
/* 21CB38 801E6888 0303C021 */  addu       $t8, $t8, $v1
glabel D_801E688C_ovl15
/* 21CB3C 801E688C 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
glabel D_801E6890_ovl15
/* 21CB40 801E6890 3C0E801E */  lui        $t6, %hi(func_801D9900_ovl9 + 0xD8)
glabel D_801E6894_ovl15
/* 21CB44 801E6894 25CE99D8 */  addiu      $t6, $t6, %lo(func_801D9900_ovl9 + 0xD8)
glabel D_801E6898_ovl15
/* 21CB48 801E6898 AF0E008C */  sw         $t6, 0x8C($t8)
.L801E689C_ovl16:
/* 21CB4C 801E689C 8D190018 */  lw         $t9, 0x18($t0)
glabel D_801E68A0_ovl15
/* 21CB50 801E68A0 57200004 */  bnel       $t9, $zero, .L801E68B4_ovl16
glabel D_801E68A4_ovl15
/* 21CB54 801E68A4 00002025 */   or        $a0, $zero, $zero
glabel D_801E68A8_ovl15
/* 21CB58 801E68A8 8C4F0014 */  lw         $t7, 0x14($v0)
glabel D_801E68AC_ovl15
/* 21CB5C 801E68AC 1DE00006 */  bgtz       $t7, .L801E68C8_ovl16
glabel D_801E68B0_ovl15
/* 21CB60 801E68B0 00002025 */   or        $a0, $zero, $zero
.L801E68B4_ovl16:
/* 21CB64 801E68B4 00002825 */  or         $a1, $zero, $zero
glabel D_801E68B8_ovl15
/* 21CB68 801E68B8 0C0770C5 */  jal        func_801DC314_ovl16
glabel D_801E68BC_ovl15
/* 21CB6C 801E68BC 00003025 */   or        $a2, $zero, $zero
glabel D_801E68C0_ovl15
/* 21CB70 801E68C0 10000004 */  b          .L801E68D4_ovl16
jtbl_801E68C4_ovl15:
/* 21CB74 801E68C4 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E68C8_ovl16:
/* 21CB78 801E68C8 0C076DA6 */  jal        func_801DB698_ovl16
/* 21CB7C 801E68CC 00002025 */   or        $a0, $zero, $zero
/* 21CB80 801E68D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E68D4_ovl16:
/* 21CB84 801E68D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 21CB88 801E68D8 03E00008 */  jr         $ra
/* 21CB8C 801E68DC 00000000 */   nop
