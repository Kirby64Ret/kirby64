glabel func_801EE558_ovl16
/* 224808 801EE558 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 22480C 801EE55C 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 224810 801EE560 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 224814 801EE564 AFBF0024 */  sw         $ra, 0x24($sp)
/* 224818 801EE568 AFB00020 */  sw         $s0, 0x20($sp)
.L801EE56C_ovl9:
/* 22481C 801EE56C AFA40048 */  sw         $a0, 0x48($sp)
/* 224820 801EE570 8CA30000 */  lw         $v1, 0x0($a1)
/* 224824 801EE574 3C06800E */  lui        $a2, %hi(D_800E0D50)
/* 224828 801EE578 24C60D50 */  addiu      $a2, $a2, %lo(D_800E0D50)
/* 22482C 801EE57C 00031880 */  sll        $v1, $v1, 2
/* 224830 801EE580 00C37821 */  addu       $t7, $a2, $v1
/* 224834 801EE584 8DF80000 */  lw         $t8, 0x0($t7)
/* 224838 801EE588 3C02800E */  lui        $v0, %hi(D_800E17D0)
/* 22483C 801EE58C 244217D0 */  addiu      $v0, $v0, %lo(D_800E17D0)
/* 224840 801EE590 3C0E800E */  lui        $t6, %hi(D_800E1B50)
/* 224844 801EE594 0018C880 */  sll        $t9, $t8, 2
/* 224848 801EE598 01C37021 */  addu       $t6, $t6, $v1
/* 22484C 801EE59C 00594821 */  addu       $t1, $v0, $t9
/* 224850 801EE5A0 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
.L801EE5A4_ovl9:
/* 224854 801EE5A4 C5240000 */  lwc1       $f4, 0x0($t1)
glabel func_801EE5A8_ovl10
/* 224858 801EE5A8 3C10800F */  lui        $s0, %hi(D_800E9C60)
/* 22485C 801EE5AC 02038021 */  addu       $s0, $s0, $v1
glabel func_801EE5B0_ovl10
/* 224860 801EE5B0 8E109C60 */  lw         $s0, %lo(D_800E9C60)($s0)
/* 224864 801EE5B4 00435021 */  addu       $t2, $v0, $v1
/* 224868 801EE5B8 AFAE0044 */  sw         $t6, 0x44($sp)
.L801EE5BC_ovl9:
/* 22486C 801EE5BC E5440000 */  swc1       $f4, 0x0($t2)
/* 224870 801EE5C0 8CA30000 */  lw         $v1, 0x0($a1)
/* 224874 801EE5C4 3C07800F */  lui        $a3, %hi(D_800E9020)
/* 224878 801EE5C8 24E79020 */  addiu      $a3, $a3, %lo(D_800E9020)
/* 22487C 801EE5CC 00031880 */  sll        $v1, $v1, 2
/* 224880 801EE5D0 00C35821 */  addu       $t3, $a2, $v1
/* 224884 801EE5D4 8D6C0000 */  lw         $t4, 0x0($t3)
/* 224888 801EE5D8 00E37821 */  addu       $t7, $a3, $v1
/* 22488C 801EE5DC 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 224890 801EE5E0 000C6880 */  sll        $t5, $t4, 2
/* 224894 801EE5E4 00ED7021 */  addu       $t6, $a3, $t5
/* 224898 801EE5E8 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 22489C 801EE5EC 24080001 */  addiu      $t0, $zero, 0x1
/* 2248A0 801EE5F0 3C0D800B */  lui        $t5, %hi(func_800B7560)
/* 2248A4 801EE5F4 E5E60000 */  swc1       $f6, 0x0($t7)
/* 2248A8 801EE5F8 8CB80000 */  lw         $t8, 0x0($a1)
/* 2248AC 801EE5FC 25AD7560 */  addiu      $t5, $t5, %lo(func_800B7560)
/* 2248B0 801EE600 0018C880 */  sll        $t9, $t8, 2
/* 2248B4 801EE604 00390821 */  addu       $at, $at, $t9
/* 2248B8 801EE608 AC289AA0 */  sw         $t0, %lo(D_800E9AA0)($at)
/* 2248BC 801EE60C 8CA90000 */  lw         $t1, 0x0($a1)
/* 2248C0 801EE610 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 2248C4 801EE614 3C18801F */  lui        $t8, %hi(func_801EE970_ovl16)
/* 2248C8 801EE618 00095080 */  sll        $t2, $t1, 2
/* 2248CC 801EE61C 002A0821 */  addu       $at, $at, $t2
/* 2248D0 801EE620 AC289E20 */  sw         $t0, %lo(D_800E9E20)($at)
.L801EE624_ovl9:
/* 2248D4 801EE624 8CAB0000 */  lw         $t3, 0x0($a1)
/* 2248D8 801EE628 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 2248DC 801EE62C 2718E970 */  addiu      $t8, $t8, %lo(func_801EE970_ovl16)
/* 2248E0 801EE630 000B6080 */  sll        $t4, $t3, 2
/* 2248E4 801EE634 002C0821 */  addu       $at, $at, $t4
/* 2248E8 801EE638 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* 2248EC 801EE63C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 2248F0 801EE640 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 2248F4 801EE644 000E7880 */  sll        $t7, $t6, 2
.L801EE648_ovl9:
/* 2248F8 801EE648 002F0821 */  addu       $at, $at, $t7
/* 2248FC 801EE64C AC2DEF90 */  sw         $t5, %lo(D_800DEF90)($at)
/* 224900 801EE650 8CB90000 */  lw         $t9, 0x0($a1)
/* 224904 801EE654 3C01800E */  lui        $at, %hi(D_800DF150)
/* 224908 801EE658 00194880 */  sll        $t1, $t9, 2
/* 22490C 801EE65C 00290821 */  addu       $at, $at, $t1
/* 224910 801EE660 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* 224914 801EE664 8CAA0000 */  lw         $t2, 0x0($a1)
/* 224918 801EE668 3C01800F */  lui        $at, %hi(D_800E8920)
/* 22491C 801EE66C 000A5880 */  sll        $t3, $t2, 2
/* 224920 801EE670 002B0821 */  addu       $at, $at, $t3
/* 224924 801EE674 0C02CCFD */  jal        func_800B33F4
/* 224928 801EE678 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 22492C 801EE67C 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 224930 801EE680 0C02BB30 */  jal        func_800AECC0
.L801EE684_ovl10:
/* 224934 801EE684 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 224938 801EE688 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 22493C 801EE68C 0C02BB48 */  jal        func_800AED20
/* 224940 801EE690 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 224944 801EE694 8FAC0044 */  lw         $t4, 0x44($sp)
.L801EE698_ovl10:
/* 224948 801EE698 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 22494C 801EE69C 44814000 */  mtc1       $at, $f8
/* 224950 801EE6A0 8D8E0080 */  lw         $t6, 0x80($t4)
/* 224954 801EE6A4 00101080 */  sll        $v0, $s0, 2
/* 224958 801EE6A8 3C04801F */  lui        $a0, %hi(func_801EFDAC_ovl9 + 0x14)
/* 22495C 801EE6AC 00822021 */  addu       $a0, $a0, $v0
/* 224960 801EE6B0 E5C80010 */  swc1       $f8, 0x10($t6)
/* 224964 801EE6B4 AFA2002C */  sw         $v0, 0x2C($sp)
/* 224968 801EE6B8 8C84FDC0 */  lw         $a0, %lo(func_801EFDAC_ovl9 + 0x14)($a0)
/* 22496C 801EE6BC 24050023 */  addiu      $a1, $zero, 0x23
/* 224970 801EE6C0 0C02A619 */  jal        func_800A9864
/* 224974 801EE6C4 24060010 */   addiu     $a2, $zero, 0x10
/* 224978 801EE6C8 8FB0002C */  lw         $s0, 0x2C($sp)
/* 22497C 801EE6CC 3C04801F */  lui        $a0, %hi(func_801EFDAC_ovl9 + 0x1C)
/* 224980 801EE6D0 00902021 */  addu       $a0, $a0, $s0
/* 224984 801EE6D4 0C02A855 */  jal        func_800AA154
/* 224988 801EE6D8 8C84FDC8 */   lw        $a0, %lo(func_801EFDAC_ovl9 + 0x1C)($a0)
/* 22498C 801EE6DC 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 224990 801EE6E0 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 224994 801EE6E4 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 224998 801EE6E8 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 22499C 801EE6EC 8CA30000 */  lw         $v1, 0x0($a1)
/* 2249A0 801EE6F0 3C01801F */  lui        $at, %hi(D_801F0108_ovl16)
/* 2249A4 801EE6F4 C4220108 */  lwc1       $f2, %lo(D_801F0108_ovl16)($at)
/* 2249A8 801EE6F8 00031880 */  sll        $v1, $v1, 2
/* 2249AC 801EE6FC 00831021 */  addu       $v0, $a0, $v1
/* 2249B0 801EE700 C4400000 */  lwc1       $f0, 0x0($v0)
/* 2249B4 801EE704 3C01801F */  lui        $at, %hi(D_801F010C_ovl16)
/* 2249B8 801EE708 4600103C */  c.lt.s     $f2, $f0
/* 2249BC 801EE70C 00000000 */  nop
/* 2249C0 801EE710 4500000B */  bc1f       .L801EE740_ovl16
/* 2249C4 801EE714 00000000 */   nop
/* 2249C8 801EE718 46020281 */  sub.s      $f10, $f0, $f2
.L801EE71C_ovl16:
/* 2249CC 801EE71C E44A0000 */  swc1       $f10, 0x0($v0)
/* 2249D0 801EE720 8CA30000 */  lw         $v1, 0x0($a1)
/* 2249D4 801EE724 00031880 */  sll        $v1, $v1, 2
glabel func_801EE728_ovl9
/* 2249D8 801EE728 00831021 */  addu       $v0, $a0, $v1
/* 2249DC 801EE72C C4400000 */  lwc1       $f0, 0x0($v0)
/* 2249E0 801EE730 4600103C */  c.lt.s     $f2, $f0
/* 2249E4 801EE734 00000000 */  nop
/* 2249E8 801EE738 4503FFF8 */  bc1tl      .L801EE71C_ovl16
/* 2249EC 801EE73C 46020281 */   sub.s     $f10, $f0, $f2
.L801EE740_ovl16:
/* 2249F0 801EE740 C42C010C */  lwc1       $f12, %lo(D_801F010C_ovl16)($at)
/* 2249F4 801EE744 3C01800F */  lui        $at, %hi(D_800E9AA0)
.L801EE748_ovl10:
/* 2249F8 801EE748 460C003C */  c.lt.s     $f0, $f12
/* 2249FC 801EE74C 00000000 */  nop
/* 224A00 801EE750 4502000C */  bc1fl      .L801EE784_ovl16
/* 224A04 801EE754 00230821 */   addu      $at, $at, $v1
/* 224A08 801EE758 46020400 */  add.s      $f16, $f0, $f2
.L801EE75C_ovl16:
/* 224A0C 801EE75C E4500000 */  swc1       $f16, 0x0($v0)
/* 224A10 801EE760 8CA30000 */  lw         $v1, 0x0($a1)
/* 224A14 801EE764 00031880 */  sll        $v1, $v1, 2
/* 224A18 801EE768 00831021 */  addu       $v0, $a0, $v1
/* 224A1C 801EE76C C4400000 */  lwc1       $f0, 0x0($v0)
/* 224A20 801EE770 460C003C */  c.lt.s     $f0, $f12
/* 224A24 801EE774 00000000 */  nop
/* 224A28 801EE778 4503FFF8 */  bc1tl      .L801EE75C_ovl16
/* 224A2C 801EE77C 46020400 */   add.s     $f16, $f0, $f2
/* 224A30 801EE780 00230821 */  addu       $at, $at, $v1
.L801EE784_ovl16:
/* 224A34 801EE784 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
.L801EE788_ovl10:
/* 224A38 801EE788 8CAD0000 */  lw         $t5, 0x0($a1)
/* 224A3C 801EE78C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 224A40 801EE790 000D7880 */  sll        $t7, $t5, 2
/* 224A44 801EE794 002F0821 */  addu       $at, $at, $t7
/* 224A48 801EE798 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 224A4C 801EE79C 8CB90000 */  lw         $t9, 0x0($a1)
/* 224A50 801EE7A0 0019C080 */  sll        $t8, $t9, 2
/* 224A54 801EE7A4 00984821 */  addu       $t1, $a0, $t8
/* 224A58 801EE7A8 0C00B5B8 */  jal        sinf
/* 224A5C 801EE7AC C52C0000 */   lwc1      $f12, 0x0($t1)
/* 224A60 801EE7B0 3C01C080 */  lui        $at, (0xC0800000 >> 16)
/* 224A64 801EE7B4 44819000 */  mtc1       $at, $f18
/* 224A68 801EE7B8 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 224A6C 801EE7BC 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 224A70 801EE7C0 46120102 */  mul.s      $f4, $f0, $f18
/* 224A74 801EE7C4 3C01800E */  lui        $at, %hi(D_800E3050)
/* 224A78 801EE7C8 8CAA0000 */  lw         $t2, 0x0($a1)
/* 224A7C 801EE7CC 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 224A80 801EE7D0 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 224A84 801EE7D4 000A5880 */  sll        $t3, $t2, 2
/* 224A88 801EE7D8 002B0821 */  addu       $at, $at, $t3
/* 224A8C 801EE7DC E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 224A90 801EE7E0 8CAC0000 */  lw         $t4, 0x0($a1)
/* 224A94 801EE7E4 000C7080 */  sll        $t6, $t4, 2
/* 224A98 801EE7E8 008E6821 */  addu       $t5, $a0, $t6
/* 224A9C 801EE7EC 0C00D604 */  jal        cosf
/* 224AA0 801EE7F0 C5AC0000 */   lwc1      $f12, 0x0($t5)
/* 224AA4 801EE7F4 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 224AA8 801EE7F8 44813000 */  mtc1       $at, $f6
/* 224AAC 801EE7FC 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 224AB0 801EE800 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 224AB4 801EE804 46060202 */  mul.s      $f8, $f0, $f6
/* 224AB8 801EE808 3C01800E */  lui        $at, %hi(D_800E3210)
/* 224ABC 801EE80C 8DF90000 */  lw         $t9, 0x0($t7)
/* 224AC0 801EE810 3C04801F */  lui        $a0, %hi(func_801EFDAC_ovl9 + 0x24)
/* 224AC4 801EE814 00902021 */  addu       $a0, $a0, $s0
/* 224AC8 801EE818 0019C080 */  sll        $t8, $t9, 2
/* 224ACC 801EE81C 00380821 */  addu       $at, $at, $t8
.L801EE820_ovl10:
/* 224AD0 801EE820 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 224AD4 801EE824 0C02A855 */  jal        func_800AA154
/* 224AD8 801EE828 8C84FDD0 */   lw        $a0, %lo(func_801EFDAC_ovl9 + 0x24)($a0)
/* 224ADC 801EE82C 3C09801F */  lui        $t1, %hi(func_801EFDAC_ovl9 + 0x2C)
/* 224AE0 801EE830 2529FDD8 */  addiu      $t1, $t1, %lo(func_801EFDAC_ovl9 + 0x2C)
/* 224AE4 801EE834 02091021 */  addu       $v0, $s0, $t1
/* 224AE8 801EE838 8C440000 */  lw         $a0, 0x0($v0)
/* 224AEC 801EE83C 0C02A806 */  jal        func_800AA018
/* 224AF0 801EE840 AFA20034 */   sw        $v0, 0x34($sp)
.L801EE844_ovl10:
/* 224AF4 801EE844 3C10800D */  lui        $s0, %hi(D_800D7098)
/* 224AF8 801EE848 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 224AFC 801EE84C 8E0A0010 */  lw         $t2, 0x10($s0)
/* 224B00 801EE850 29410004 */  slti       $at, $t2, 0x4
/* 224B04 801EE854 10200007 */  beqz       $at, .L801EE874_ovl16
/* 224B08 801EE858 00000000 */   nop
.L801EE85C_ovl16:
/* 224B0C 801EE85C 0C002DAF */  jal        finish_current_thread
/* 224B10 801EE860 24040001 */   addiu     $a0, $zero, 0x1
/* 224B14 801EE864 8E0B0010 */  lw         $t3, 0x10($s0)
/* 224B18 801EE868 29610004 */  slti       $at, $t3, 0x4
/* 224B1C 801EE86C 1420FFFB */  bnez       $at, .L801EE85C_ovl16
/* 224B20 801EE870 00000000 */   nop
.L801EE874_ovl16:
/* 224B24 801EE874 0C02CCFD */  jal        func_800B33F4
.L801EE878_ovl9:
/* 224B28 801EE878 00000000 */   nop
/* 224B2C 801EE87C 8FAC0034 */  lw         $t4, 0x34($sp)
.L801EE880_ovl9:
/* 224B30 801EE880 3C0E801F */  lui        $t6, %hi(func_801EFDAC_ovl9 + 0x2C)
/* 224B34 801EE884 25CEFDD8 */  addiu      $t6, $t6, %lo(func_801EFDAC_ovl9 + 0x2C)
/* 224B38 801EE888 118E000A */  beq        $t4, $t6, .L801EE8B4_ovl16
/* 224B3C 801EE88C 3C10800E */   lui       $s0, %hi(gEntitiesNextPosXArray)
/* 224B40 801EE890 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 224B44 801EE894 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 224B48 801EE898 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 224B4C 801EE89C 240D0002 */  addiu      $t5, $zero, 0x2
/* 224B50 801EE8A0 8DF90000 */  lw         $t9, 0x0($t7)
/* 224B54 801EE8A4 0019C080 */  sll        $t8, $t9, 2
/* 224B58 801EE8A8 00380821 */  addu       $at, $at, $t8
/* 224B5C 801EE8AC 1000002B */  b          .L801EE95C_ovl16
/* 224B60 801EE8B0 AC2DDC50 */   sw        $t5, %lo(gEntityVtableIndexArray)($at)
.L801EE8B4_ovl16:
/* 224B64 801EE8B4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 224B68 801EE8B8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 224B6C 801EE8BC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 224B70 801EE8C0 261025D0 */  addiu      $s0, $s0, %lo(gEntitiesNextPosXArray)
/* 224B74 801EE8C4 8D230000 */  lw         $v1, 0x0($t1)
/* 224B78 801EE8C8 24040006 */  addiu      $a0, $zero, 0x6
/* 224B7C 801EE8CC 24050002 */  addiu      $a1, $zero, 0x2
/* 224B80 801EE8D0 00031880 */  sll        $v1, $v1, 2
/* 224B84 801EE8D4 00230821 */  addu       $at, $at, $v1
/* 224B88 801EE8D8 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 224B8C 801EE8DC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 224B90 801EE8E0 00230821 */  addu       $at, $at, $v1
/* 224B94 801EE8E4 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* 224B98 801EE8E8 02035021 */  addu       $t2, $s0, $v1
/* 224B9C 801EE8EC 8D470000 */  lw         $a3, 0x0($t2)
/* 224BA0 801EE8F0 24060015 */  addiu      $a2, $zero, 0x15
/* 224BA4 801EE8F4 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 224BA8 801EE8F8 0C029FDD */  jal        func_800A7F74
/* 224BAC 801EE8FC E7B00014 */   swc1      $f16, 0x14($sp)
/* 224BB0 801EE900 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 224BB4 801EE904 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 224BB8 801EE908 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 224BBC 801EE90C 24040006 */  addiu      $a0, $zero, 0x6
/* 224BC0 801EE910 8D630000 */  lw         $v1, 0x0($t3)
/* 224BC4 801EE914 24050002 */  addiu      $a1, $zero, 0x2
/* 224BC8 801EE918 24060016 */  addiu      $a2, $zero, 0x16
/* 224BCC 801EE91C 00031880 */  sll        $v1, $v1, 2
/* 224BD0 801EE920 00230821 */  addu       $at, $at, $v1
/* 224BD4 801EE924 C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 224BD8 801EE928 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 224BDC 801EE92C 00230821 */  addu       $at, $at, $v1
/* 224BE0 801EE930 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
/* 224BE4 801EE934 02036021 */  addu       $t4, $s0, $v1
/* 224BE8 801EE938 8D870000 */  lw         $a3, 0x0($t4)
/* 224BEC 801EE93C E7B20010 */  swc1       $f18, 0x10($sp)
/* 224BF0 801EE940 0C029FDD */  jal        func_800A7F74
/* 224BF4 801EE944 E7A40014 */   swc1      $f4, 0x14($sp)
/* 224BF8 801EE948 8FAF0044 */  lw         $t7, 0x44($sp)
/* 224BFC 801EE94C 240E0001 */  addiu      $t6, $zero, 0x1
/* 224C00 801EE950 A1EE0040 */  sb         $t6, 0x40($t7)
/* 224C04 801EE954 0C068FA0 */  jal        func_801A3E80_ovl7
/* 224C08 801EE958 8FA40048 */   lw        $a0, 0x48($sp)
.L801EE95C_ovl16:
/* 224C0C 801EE95C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 224C10 801EE960 8FB00020 */  lw         $s0, 0x20($sp)
/* 224C14 801EE964 27BD0048 */  addiu      $sp, $sp, 0x48
/* 224C18 801EE968 03E00008 */  jr         $ra
/* 224C1C 801EE96C 00000000 */   nop
