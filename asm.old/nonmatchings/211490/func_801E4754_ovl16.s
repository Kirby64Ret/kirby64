glabel func_801E4754_ovl16
/* 21AA04 801E4754 27BDFFC8 */  addiu      $sp, $sp, -0x38
.L801E4758_ovl10:
/* 21AA08 801E4758 AFB3002C */  sw         $s3, 0x2C($sp)
/* 21AA0C 801E475C 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 21AA10 801E4760 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
glabel func_801E4764_ovl10
/* 21AA14 801E4764 8E630000 */  lw         $v1, 0x0($s3)
/* 21AA18 801E4768 AFBF0034 */  sw         $ra, 0x34($sp)
/* 21AA1C 801E476C AFB40030 */  sw         $s4, 0x30($sp)
/* 21AA20 801E4770 AFB20028 */  sw         $s2, 0x28($sp)
/* 21AA24 801E4774 AFB10024 */  sw         $s1, 0x24($sp)
.L801E4778_ovl9:
/* 21AA28 801E4778 AFB00020 */  sw         $s0, 0x20($sp)
/* 21AA2C 801E477C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 21AA30 801E4780 AFA40038 */  sw         $a0, 0x38($sp)
/* 21AA34 801E4784 8C6F0000 */  lw         $t7, 0x0($v1)
/* 21AA38 801E4788 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 21AA3C 801E478C 240E0011 */  addiu      $t6, $zero, 0x11
/* 21AA40 801E4790 000FC080 */  sll        $t8, $t7, 2
/* 21AA44 801E4794 00380821 */  addu       $at, $at, $t8
/* 21AA48 801E4798 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 21AA4C 801E479C 8C790000 */  lw         $t9, 0x0($v1)
/* 21AA50 801E47A0 44802000 */  mtc1       $zero, $f4
/* 21AA54 801E47A4 3C01800F */  lui        $at, %hi(D_800EA6E0)
.L801E47A8_ovl17:
/* 21AA58 801E47A8 00194080 */  sll        $t0, $t9, 2
/* 21AA5C 801E47AC 00280821 */  addu       $at, $at, $t0
glabel func_801E47B0_ovl13
/* 21AA60 801E47B0 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
.L801E47B4_ovl17:
/* 21AA64 801E47B4 8C690000 */  lw         $t1, 0x0($v1)
/* 21AA68 801E47B8 3C12800F */  lui        $s2, %hi(D_800E98E0)
/* 21AA6C 801E47BC 265298E0 */  addiu      $s2, $s2, %lo(D_800E98E0)
.L801E47C0_ovl17:
/* 21AA70 801E47C0 00095080 */  sll        $t2, $t1, 2
/* 21AA74 801E47C4 024A5821 */  addu       $t3, $s2, $t2
/* 21AA78 801E47C8 AD600000 */  sw         $zero, 0x0($t3)
/* 21AA7C 801E47CC 8C6D0000 */  lw         $t5, 0x0($v1)
/* 21AA80 801E47D0 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 21AA84 801E47D4 240C0001 */  addiu      $t4, $zero, 0x1
.L801E47D8_ovl9:
/* 21AA88 801E47D8 000D7880 */  sll        $t7, $t5, 2
/* 21AA8C 801E47DC 002F0821 */  addu       $at, $at, $t7
/* 21AA90 801E47E0 AC2C9E20 */  sw         $t4, %lo(D_800E9E20)($at)
/* 21AA94 801E47E4 8C6E0000 */  lw         $t6, 0x0($v1)
/* 21AA98 801E47E8 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 21AA9C 801E47EC 3C11800E */  lui        $s1, %hi(gEntitiesNextPosXArray)
/* 21AAA0 801E47F0 000EC080 */  sll        $t8, $t6, 2
.L801E47F4_ovl9:
/* 21AAA4 801E47F4 00380821 */  addu       $at, $at, $t8
glabel func_801E47F8_ovl13
/* 21AAA8 801E47F8 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* 21AAAC 801E47FC 8C790000 */  lw         $t9, 0x0($v1)
/* 21AAB0 801E4800 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 21AAB4 801E4804 44813000 */  mtc1       $at, $f6
/* 21AAB8 801E4808 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 21AABC 801E480C 00194080 */  sll        $t0, $t9, 2
/* 21AAC0 801E4810 00280821 */  addu       $at, $at, $t0
/* 21AAC4 801E4814 3C14800E */  lui        $s4, %hi(D_800E3590)
/* 21AAC8 801E4818 26943590 */  addiu      $s4, $s4, %lo(D_800E3590)
/* 21AACC 801E481C 263125D0 */  addiu      $s1, $s1, %lo(gEntitiesNextPosXArray)
.L801E4820_ovl9:
/* 21AAD0 801E4820 00008025 */  or         $s0, $zero, $zero
/* 21AAD4 801E4824 E4263AD0 */  swc1       $f6, %lo(D_800E3AD0)($at)
/* 21AAD8 801E4828 8E690000 */  lw         $t1, 0x0($s3)
.L801E482C_ovl16:
/* 21AADC 801E482C C6280000 */  lwc1       $f8, 0x0($s1)
/* 21AAE0 801E4830 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 21AAE4 801E4834 8D220000 */  lw         $v0, 0x0($t1)
/* 21AAE8 801E4838 00021080 */  sll        $v0, $v0, 2
/* 21AAEC 801E483C 02225021 */  addu       $t2, $s1, $v0
.L801E4840_ovl9:
/* 21AAF0 801E4840 C54A0000 */  lwc1       $f10, 0x0($t2)
/* 21AAF4 801E4844 460A403C */  c.lt.s     $f8, $f10
/* 21AAF8 801E4848 00000000 */  nop
.L801E484C_ovl10:
/* 21AAFC 801E484C 45020007 */  bc1fl      .L801E486C_ovl16
/* 21AB00 801E4850 44819000 */   mtc1      $at, $f18
/* 21AB04 801E4854 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 21AB08 801E4858 44818000 */  mtc1       $at, $f16
/* 21AB0C 801E485C 02825821 */  addu       $t3, $s4, $v0
/* 21AB10 801E4860 10000004 */  b          .L801E4874_ovl16
/* 21AB14 801E4864 E5700000 */   swc1      $f16, 0x0($t3)
/* 21AB18 801E4868 44819000 */  mtc1       $at, $f18
.L801E486C_ovl16:
/* 21AB1C 801E486C 02826821 */  addu       $t5, $s4, $v0
.L801E4870_ovl17:
/* 21AB20 801E4870 E5B20000 */  swc1       $f18, 0x0($t5)
.L801E4874_ovl16:
/* 21AB24 801E4874 0C002DAF */  jal        finish_current_thread
/* 21AB28 801E4878 24040001 */   addiu     $a0, $zero, 0x1
.L801E487C_ovl17:
/* 21AB2C 801E487C 26100001 */  addiu      $s0, $s0, 0x1
/* 21AB30 801E4880 2A01003C */  slti       $at, $s0, 0x3C
/* 21AB34 801E4884 5420FFE9 */  bnel       $at, $zero, .L801E482C_ovl16
.L801E4888_ovl17:
/* 21AB38 801E4888 8E690000 */   lw        $t1, 0x0($s3)
/* 21AB3C 801E488C 8E630000 */  lw         $v1, 0x0($s3)
/* 21AB40 801E4890 44802000 */  mtc1       $zero, $f4
.L801E4894_ovl15:
/* 21AB44 801E4894 3C01800E */  lui        $at, %hi(D_800E3050)
/* 21AB48 801E4898 8C6C0000 */  lw         $t4, 0x0($v1)
/* 21AB4C 801E489C 240401B3 */  addiu      $a0, $zero, 0x1B3
.L801E48A0_ovl15:
/* 21AB50 801E48A0 000C7880 */  sll        $t7, $t4, 2
.L801E48A4_ovl9:
/* 21AB54 801E48A4 028F7021 */  addu       $t6, $s4, $t7
/* 21AB58 801E48A8 E5C40000 */  swc1       $f4, 0x0($t6)
/* 21AB5C 801E48AC 8C620000 */  lw         $v0, 0x0($v1)
.L801E48B0_ovl9:
/* 21AB60 801E48B0 00021080 */  sll        $v0, $v0, 2
/* 21AB64 801E48B4 0282C021 */  addu       $t8, $s4, $v0
/* 21AB68 801E48B8 C7060000 */  lwc1       $f6, 0x0($t8)
/* 21AB6C 801E48BC 00220821 */  addu       $at, $at, $v0
/* 21AB70 801E48C0 0C029D9E */  jal        play_sound
/* 21AB74 801E48C4 E4263050 */   swc1      $f6, %lo(D_800E3050)($at)
glabel func_801E48C8_ovl10
/* 21AB78 801E48C8 3C040001 */  lui        $a0, (0x104C4 >> 16)
/* 21AB7C 801E48CC 0C02A806 */  jal        func_800AA018
/* 21AB80 801E48D0 348404C4 */   ori       $a0, $a0, (0x104C4 & 0xFFFF)
/* 21AB84 801E48D4 00008025 */  or         $s0, $zero, $zero
.L801E48D8_ovl9:
/* 21AB88 801E48D8 24040034 */  addiu      $a0, $zero, 0x34
.L801E48DC_ovl16:
/* 21AB8C 801E48DC 0C06B30D */  jal        func_801ACC34_ovl7
.L801E48E0_ovl9:
/* 21AB90 801E48E0 00002825 */   or        $a1, $zero, $zero
glabel func_801E48E4_ovl15
/* 21AB94 801E48E4 10400007 */  beqz       $v0, .L801E4904_ovl16
/* 21AB98 801E48E8 00021880 */   sll       $v1, $v0, 2
/* 21AB9C 801E48EC 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 21ABA0 801E48F0 00230821 */  addu       $at, $at, $v1
/* 21ABA4 801E48F4 24190001 */  addiu      $t9, $zero, 0x1
/* 21ABA8 801E48F8 AC398E60 */  sw         $t9, %lo(D_800E8E60)($at)
/* 21ABAC 801E48FC 02434021 */  addu       $t0, $s2, $v1
/* 21ABB0 801E4900 AD100000 */  sw         $s0, 0x0($t0)
.L801E4904_ovl16:
/* 21ABB4 801E4904 26100001 */  addiu      $s0, $s0, 0x1
/* 21ABB8 801E4908 2A010004 */  slti       $at, $s0, 0x4
/* 21ABBC 801E490C 5420FFF3 */  bnel       $at, $zero, .L801E48DC_ovl16
/* 21ABC0 801E4910 24040034 */   addiu     $a0, $zero, 0x34
/* 21ABC4 801E4914 0C02BC9F */  jal        func_800AF27C
/* 21ABC8 801E4918 00000000 */   nop
/* 21ABCC 801E491C 3C12800D */  lui        $s2, %hi(D_800D7098)
/* 21ABD0 801E4920 26527098 */  addiu      $s2, $s2, %lo(D_800D7098)
/* 21ABD4 801E4924 8E490010 */  lw         $t1, 0x10($s2)
/* 21ABD8 801E4928 24040010 */  addiu      $a0, $zero, 0x10
/* 21ABDC 801E492C 252A0001 */  addiu      $t2, $t1, 0x1
/* 21ABE0 801E4930 0C002DAF */  jal        finish_current_thread
/* 21ABE4 801E4934 AE4A0010 */   sw        $t2, 0x10($s2)
.L801E4938_ovl17:
/* 21ABE8 801E4938 00008025 */  or         $s0, $zero, $zero
/* 21ABEC 801E493C 8E6B0000 */  lw         $t3, 0x0($s3)
.L801E4940_ovl16:
/* 21ABF0 801E4940 C6280000 */  lwc1       $f8, 0x0($s1)
.L801E4944_ovl17:
/* 21ABF4 801E4944 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 21ABF8 801E4948 8D620000 */  lw         $v0, 0x0($t3)
/* 21ABFC 801E494C 00021080 */  sll        $v0, $v0, 2
.L801E4950_ovl17:
/* 21AC00 801E4950 02226821 */  addu       $t5, $s1, $v0
.L801E4954_ovl9:
/* 21AC04 801E4954 C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 21AC08 801E4958 460A403C */  c.lt.s     $f8, $f10
.L801E495C_ovl17:
/* 21AC0C 801E495C 00000000 */  nop
/* 21AC10 801E4960 45020007 */  bc1fl      .L801E4980_ovl16
.L801E4964_ovl9:
/* 21AC14 801E4964 44819000 */   mtc1      $at, $f18
/* 21AC18 801E4968 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
.L801E496C_ovl17:
/* 21AC1C 801E496C 44818000 */  mtc1       $at, $f16
/* 21AC20 801E4970 02826021 */  addu       $t4, $s4, $v0
/* 21AC24 801E4974 10000004 */  b          .L801E4988_ovl16
/* 21AC28 801E4978 E5900000 */   swc1      $f16, 0x0($t4)
/* 21AC2C 801E497C 44819000 */  mtc1       $at, $f18
.L801E4980_ovl16:
/* 21AC30 801E4980 02827821 */  addu       $t7, $s4, $v0
/* 21AC34 801E4984 E5F20000 */  swc1       $f18, 0x0($t7)
.L801E4988_ovl16:
/* 21AC38 801E4988 0C002DAF */  jal        finish_current_thread
.L801E498C_ovl10:
/* 21AC3C 801E498C 24040001 */   addiu     $a0, $zero, 0x1
.L801E4990_ovl10:
/* 21AC40 801E4990 26100001 */  addiu      $s0, $s0, 0x1
.L801E4994_ovl17:
/* 21AC44 801E4994 2401001E */  addiu      $at, $zero, 0x1E
/* 21AC48 801E4998 5601FFE9 */  bnel       $s0, $at, .L801E4940_ovl16
glabel func_801E499C_ovl10
/* 21AC4C 801E499C 8E6B0000 */   lw        $t3, 0x0($s3)
/* 21AC50 801E49A0 8E630000 */  lw         $v1, 0x0($s3)
.L801E49A4_ovl17:
/* 21AC54 801E49A4 44802000 */  mtc1       $zero, $f4
.L801E49A8_ovl9:
/* 21AC58 801E49A8 3C01800E */  lui        $at, %hi(D_800E3050)
/* 21AC5C 801E49AC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 21AC60 801E49B0 3C040001 */  lui        $a0, (0x104C2 >> 16)
/* 21AC64 801E49B4 348404C2 */  ori        $a0, $a0, (0x104C2 & 0xFFFF)
glabel func_801E49B8_ovl17
/* 21AC68 801E49B8 000EC080 */  sll        $t8, $t6, 2
.L801E49BC_ovl15:
/* 21AC6C 801E49BC 0298C821 */  addu       $t9, $s4, $t8
/* 21AC70 801E49C0 E7240000 */  swc1       $f4, 0x0($t9)
/* 21AC74 801E49C4 8C620000 */  lw         $v0, 0x0($v1)
/* 21AC78 801E49C8 00021080 */  sll        $v0, $v0, 2
/* 21AC7C 801E49CC 02824021 */  addu       $t0, $s4, $v0
/* 21AC80 801E49D0 C5060000 */  lwc1       $f6, 0x0($t0)
/* 21AC84 801E49D4 00220821 */  addu       $at, $at, $v0
/* 21AC88 801E49D8 E4263050 */  swc1       $f6, %lo(D_800E3050)($at)
/* 21AC8C 801E49DC 8C690000 */  lw         $t1, 0x0($v1)
/* 21AC90 801E49E0 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x64)
/* 21AC94 801E49E4 C428FF88 */  lwc1       $f8, %lo(func_801EFF24_ovl16 + 0x64)($at)
/* 21AC98 801E49E8 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E49EC_ovl9:
/* 21AC9C 801E49EC 00095080 */  sll        $t2, $t1, 2
/* 21ACA0 801E49F0 002A0821 */  addu       $at, $at, $t2
/* 21ACA4 801E49F4 0C02A855 */  jal        func_800AA154
/* 21ACA8 801E49F8 E4283AD0 */   swc1      $f8, %lo(D_800E3AD0)($at)
.L801E49FC_ovl13:
/* 21ACAC 801E49FC 8E4B0010 */  lw         $t3, 0x10($s2)
/* 21ACB0 801E4A00 24040001 */  addiu      $a0, $zero, 0x1
.L801E4A04_ovl9:
/* 21ACB4 801E4A04 256D0001 */  addiu      $t5, $t3, 0x1
/* 21ACB8 801E4A08 0C002DAF */  jal        finish_current_thread
/* 21ACBC 801E4A0C AE4D0010 */   sw        $t5, 0x10($s2)
.L801E4A10_ovl10:
/* 21ACC0 801E4A10 8E630000 */  lw         $v1, 0x0($s3)
/* 21ACC4 801E4A14 3C01420C */  lui        $at, (0x420C0000 >> 16)
/* 21ACC8 801E4A18 44810000 */  mtc1       $at, $f0
glabel func_801E4A1C_ovl9
/* 21ACCC 801E4A1C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 21ACD0 801E4A20 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 21ACD4 801E4A24 44805000 */  mtc1       $zero, $f10
/* 21ACD8 801E4A28 000C7880 */  sll        $t7, $t4, 2
/* 21ACDC 801E4A2C 002F0821 */  addu       $at, $at, $t7
/* 21ACE0 801E4A30 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 21ACE4 801E4A34 8C6E0000 */  lw         $t6, 0x0($v1)
/* 21ACE8 801E4A38 3C01800E */  lui        $at, %hi(D_800E3210)
/* 21ACEC 801E4A3C 3C12800E */  lui        $s2, %hi(D_800E3750)
/* 21ACF0 801E4A40 000EC080 */  sll        $t8, $t6, 2
/* 21ACF4 801E4A44 00380821 */  addu       $at, $at, $t8
.L801E4A48_ovl13:
/* 21ACF8 801E4A48 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 21ACFC 801E4A4C 8C790000 */  lw         $t9, 0x0($v1)
.L801E4A50_ovl10:
/* 21AD00 801E4A50 3C01801F */  lui        $at, %hi(.L801EFF8C_ovl16)
.L801E4A54_ovl13:
/* 21AD04 801E4A54 C430FF8C */  lwc1       $f16, %lo(.L801EFF8C_ovl16)($at)
/* 21AD08 801E4A58 26523750 */  addiu      $s2, $s2, %lo(D_800E3750)
/* 21AD0C 801E4A5C 00194080 */  sll        $t0, $t9, 2
/* 21AD10 801E4A60 02484821 */  addu       $t1, $s2, $t0
.L801E4A64_ovl10:
/* 21AD14 801E4A64 E5300000 */  swc1       $f16, 0x0($t1)
.L801E4A68_ovl10:
/* 21AD18 801E4A68 8C6A0000 */  lw         $t2, 0x0($v1)
/* 21AD1C 801E4A6C 3C014120 */  lui        $at, (0x41200000 >> 16)
.L801E4A70_ovl9:
/* 21AD20 801E4A70 44819000 */  mtc1       $at, $f18
glabel func_801E4A74_ovl10
/* 21AD24 801E4A74 3C05800E */  lui        $a1, %hi(D_800E3C90)
/* 21AD28 801E4A78 24A53C90 */  addiu      $a1, $a1, %lo(D_800E3C90)
/* 21AD2C 801E4A7C 000A5880 */  sll        $t3, $t2, 2
.L801E4A80_ovl9:
/* 21AD30 801E4A80 00AB6821 */  addu       $t5, $a1, $t3
/* 21AD34 801E4A84 E5B20000 */  swc1       $f18, 0x0($t5)
.L801E4A88_ovl13:
/* 21AD38 801E4A88 8C620000 */  lw         $v0, 0x0($v1)
.L801E4A8C_ovl13:
/* 21AD3C 801E4A8C 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
/* 21AD40 801E4A90 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 21AD44 801E4A94 00021080 */  sll        $v0, $v0, 2
/* 21AD48 801E4A98 02026021 */  addu       $t4, $s0, $v0
/* 21AD4C 801E4A9C C5840000 */  lwc1       $f4, 0x0($t4)
/* 21AD50 801E4AA0 4604003C */  c.lt.s     $f0, $f4
/* 21AD54 801E4AA4 00000000 */  nop
/* 21AD58 801E4AA8 45020011 */  bc1fl      .L801E4AF0_ovl16
/* 21AD5C 801E4AAC 44804000 */   mtc1      $zero, $f8
.L801E4AB0_ovl16:
/* 21AD60 801E4AB0 0C002DAF */  jal        finish_current_thread
/* 21AD64 801E4AB4 24040001 */   addiu     $a0, $zero, 0x1
/* 21AD68 801E4AB8 8E630000 */  lw         $v1, 0x0($s3)
/* 21AD6C 801E4ABC 3C01420C */  lui        $at, (0x420C0000 >> 16)
/* 21AD70 801E4AC0 44810000 */  mtc1       $at, $f0
/* 21AD74 801E4AC4 8C620000 */  lw         $v0, 0x0($v1)
.L801E4AC8_ovl13:
/* 21AD78 801E4AC8 00021080 */  sll        $v0, $v0, 2
/* 21AD7C 801E4ACC 02027821 */  addu       $t7, $s0, $v0
/* 21AD80 801E4AD0 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 21AD84 801E4AD4 4606003C */  c.lt.s     $f0, $f6
.L801E4AD8_ovl9:
/* 21AD88 801E4AD8 00000000 */  nop
/* 21AD8C 801E4ADC 4501FFF4 */  bc1t       .L801E4AB0_ovl16
/* 21AD90 801E4AE0 00000000 */   nop
.L801E4AE4_ovl9:
/* 21AD94 801E4AE4 3C05800E */  lui        $a1, %hi(D_800E3C90)
/* 21AD98 801E4AE8 24A53C90 */  addiu      $a1, $a1, %lo(D_800E3C90)
/* 21AD9C 801E4AEC 44804000 */  mtc1       $zero, $f8
.L801E4AF0_ovl16:
/* 21ADA0 801E4AF0 02427021 */  addu       $t6, $s2, $v0
/* 21ADA4 801E4AF4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 21ADA8 801E4AF8 E5C80000 */  swc1       $f8, 0x0($t6)
/* 21ADAC 801E4AFC 8C620000 */  lw         $v0, 0x0($v1)
/* 21ADB0 801E4B00 44809000 */  mtc1       $zero, $f18
/* 21ADB4 801E4B04 24040002 */  addiu      $a0, $zero, 0x2
/* 21ADB8 801E4B08 00021080 */  sll        $v0, $v0, 2
glabel func_801E4B0C_ovl13
/* 21ADBC 801E4B0C 0242C021 */  addu       $t8, $s2, $v0
.L801E4B10_ovl9:
/* 21ADC0 801E4B10 C70C0000 */  lwc1       $f12, 0x0($t8)
/* 21ADC4 801E4B14 0282C821 */  addu       $t9, $s4, $v0
.L801E4B18_ovl9:
/* 21ADC8 801E4B18 E72C0000 */  swc1       $f12, 0x0($t9)
/* 21ADCC 801E4B1C 8C680000 */  lw         $t0, 0x0($v1)
/* 21ADD0 801E4B20 00084880 */  sll        $t1, $t0, 2
/* 21ADD4 801E4B24 00290821 */  addu       $at, $at, $t1
/* 21ADD8 801E4B28 E42C3210 */  swc1       $f12, %lo(D_800E3210)($at)
/* 21ADDC 801E4B2C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 21ADE0 801E4B30 3C01800E */  lui        $at, %hi(D_800E3050)
glabel func_801E4B34_ovl9
/* 21ADE4 801E4B34 000A5880 */  sll        $t3, $t2, 2
/* 21ADE8 801E4B38 002B0821 */  addu       $at, $at, $t3
/* 21ADEC 801E4B3C E42C3050 */  swc1       $f12, %lo(D_800E3050)($at)
/* 21ADF0 801E4B40 8C6D0000 */  lw         $t5, 0x0($v1)
/* 21ADF4 801E4B44 3C01801F */  lui        $at, %hi(D_801EFF90_ovl16)
/* 21ADF8 801E4B48 C42AFF90 */  lwc1       $f10, %lo(D_801EFF90_ovl16)($at)
/* 21ADFC 801E4B4C 000D6080 */  sll        $t4, $t5, 2
/* 21AE00 801E4B50 00AC7821 */  addu       $t7, $a1, $t4
/* 21AE04 801E4B54 E5EA0000 */  swc1       $f10, 0x0($t7)
/* 21AE08 801E4B58 8C620000 */  lw         $v0, 0x0($v1)
/* 21AE0C 801E4B5C 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E4B60_ovl10:
/* 21AE10 801E4B60 00021080 */  sll        $v0, $v0, 2
/* 21AE14 801E4B64 00A27021 */  addu       $t6, $a1, $v0
/* 21AE18 801E4B68 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 21AE1C 801E4B6C 00220821 */  addu       $at, $at, $v0
/* 21AE20 801E4B70 E4303AD0 */  swc1       $f16, %lo(D_800E3AD0)($at)
/* 21AE24 801E4B74 8C780000 */  lw         $t8, 0x0($v1)
/* 21AE28 801E4B78 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 21AE2C 801E4B7C 0018C880 */  sll        $t9, $t8, 2
/* 21AE30 801E4B80 02194021 */  addu       $t0, $s0, $t9
/* 21AE34 801E4B84 E5000000 */  swc1       $f0, 0x0($t0)
/* 21AE38 801E4B88 8C690000 */  lw         $t1, 0x0($v1)
.L801E4B8C_ovl15:
/* 21AE3C 801E4B8C 00095080 */  sll        $t2, $t1, 2
/* 21AE40 801E4B90 002A0821 */  addu       $at, $at, $t2
/* 21AE44 801E4B94 0C03EE45 */  jal        func_800FB914
/* 21AE48 801E4B98 E432A6E0 */   swc1      $f18, %lo(D_800EA6E0)($at)
/* 21AE4C 801E4B9C 3C040001 */  lui        $a0, (0x104C6 >> 16)
.L801E4BA0_ovl10:
/* 21AE50 801E4BA0 0C02A806 */  jal        func_800AA018
/* 21AE54 801E4BA4 348404C6 */   ori       $a0, $a0, (0x104C6 & 0xFFFF)
.L801E4BA8_ovl13:
/* 21AE58 801E4BA8 0C002DAF */  jal        finish_current_thread
/* 21AE5C 801E4BAC 2404001E */   addiu     $a0, $zero, 0x1E
/* 21AE60 801E4BB0 8E6D0000 */  lw         $t5, 0x0($s3)
/* 21AE64 801E4BB4 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 21AE68 801E4BB8 240B0001 */  addiu      $t3, $zero, 0x1
.L801E4BBC_ovl10:
/* 21AE6C 801E4BBC 8DAC0000 */  lw         $t4, 0x0($t5)
/* 21AE70 801E4BC0 240401B4 */  addiu      $a0, $zero, 0x1B4
/* 21AE74 801E4BC4 000C7880 */  sll        $t7, $t4, 2
glabel func_801E4BC8_ovl10
/* 21AE78 801E4BC8 002F0821 */  addu       $at, $at, $t7
/* 21AE7C 801E4BCC 0C029D9E */  jal        play_sound
/* 21AE80 801E4BD0 AC2B9FE0 */   sw        $t3, %lo(D_800E9FE0)($at)
/* 21AE84 801E4BD4 8E630000 */  lw         $v1, 0x0($s3)
/* 21AE88 801E4BD8 44803000 */  mtc1       $zero, $f6
/* 21AE8C 801E4BDC 3C06800F */  lui        $a2, %hi(D_800EA1A0)
/* 21AE90 801E4BE0 8C620000 */  lw         $v0, 0x0($v1)
/* 21AE94 801E4BE4 24C6A1A0 */  addiu      $a2, $a2, %lo(D_800EA1A0)
/* 21AE98 801E4BE8 00021080 */  sll        $v0, $v0, 2
/* 21AE9C 801E4BEC 02227021 */  addu       $t6, $s1, $v0
/* 21AEA0 801E4BF0 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 21AEA4 801E4BF4 00C2C021 */  addu       $t8, $a2, $v0
/* 21AEA8 801E4BF8 4606203C */  c.lt.s     $f4, $f6
/* 21AEAC 801E4BFC 00000000 */  nop
/* 21AEB0 801E4C00 45000003 */  bc1f       .L801E4C10_ovl16
/* 21AEB4 801E4C04 00000000 */   nop
/* 21AEB8 801E4C08 10000007 */  b          .L801E4C28_ovl16
/* 21AEBC 801E4C0C AF000000 */   sw        $zero, 0x0($t8)
.L801E4C10_ovl16:
/* 21AEC0 801E4C10 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 21AEC4 801E4C14 00220821 */  addu       $at, $at, $v0
/* 21AEC8 801E4C18 24190001 */  addiu      $t9, $zero, 0x1
/* 21AECC 801E4C1C 3C06800F */  lui        $a2, %hi(D_800EA1A0)
/* 21AED0 801E4C20 24C6A1A0 */  addiu      $a2, $a2, %lo(D_800EA1A0)
/* 21AED4 801E4C24 AC39A1A0 */  sw         $t9, %lo(D_800EA1A0)($at)
.L801E4C28_ovl16:
/* 21AED8 801E4C28 8C620000 */  lw         $v0, 0x0($v1)
/* 21AEDC 801E4C2C 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x10)
/* 21AEE0 801E4C30 3C07800E */  lui        $a3, %hi(D_800E3050)
/* 21AEE4 801E4C34 00021080 */  sll        $v0, $v0, 2
.L801E4C38_ovl9:
/* 21AEE8 801E4C38 00C24021 */  addu       $t0, $a2, $v0
/* 21AEEC 801E4C3C 8D090000 */  lw         $t1, 0x0($t0)
/* 21AEF0 801E4C40 24E73050 */  addiu      $a3, $a3, %lo(D_800E3050)
.L801E4C44_ovl13:
/* 21AEF4 801E4C44 00E26821 */  addu       $t5, $a3, $v0
.L801E4C48_ovl9:
/* 21AEF8 801E4C48 00095080 */  sll        $t2, $t1, 2
.L801E4C4C_ovl15:
/* 21AEFC 801E4C4C 002A0821 */  addu       $at, $at, $t2
glabel func_801E4C50_ovl13
/* 21AF00 801E4C50 C428F9C0 */  lwc1       $f8, %lo(func_801EF9B0_ovl16 + 0x10)($at)
/* 21AF04 801E4C54 4480A000 */  mtc1       $zero, $f20
/* 21AF08 801E4C58 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 21AF0C 801E4C5C E5A80000 */  swc1       $f8, 0x0($t5)
/* 21AF10 801E4C60 8C620000 */  lw         $v0, 0x0($v1)
/* 21AF14 801E4C64 44815000 */  mtc1       $at, $f10
/* 21AF18 801E4C68 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 21AF1C 801E4C6C 00021080 */  sll        $v0, $v0, 2
/* 21AF20 801E4C70 02226021 */  addu       $t4, $s1, $v0
/* 21AF24 801E4C74 C5800000 */  lwc1       $f0, 0x0($t4)
.L801E4C78_ovl15:
/* 21AF28 801E4C78 4614003C */  c.lt.s     $f0, $f20
glabel func_801E4C7C_ovl10
/* 21AF2C 801E4C7C 00000000 */  nop
/* 21AF30 801E4C80 45020004 */  bc1fl      .L801E4C94_ovl16
.L801E4C84_ovl9:
/* 21AF34 801E4C84 46000086 */   mov.s     $f2, $f0
/* 21AF38 801E4C88 10000002 */  b          .L801E4C94_ovl16
/* 21AF3C 801E4C8C 46000087 */   neg.s     $f2, $f0
.L801E4C90_ovl9:
/* 21AF40 801E4C90 46000086 */  mov.s      $f2, $f0
.L801E4C94_ovl16:
/* 21AF44 801E4C94 460A1400 */  add.s      $f16, $f2, $f10
/* 21AF48 801E4C98 44819000 */  mtc1       $at, $f18
/* 21AF4C 801E4C9C 3C12800F */  lui        $s2, %hi(D_800EA8A0)
/* 21AF50 801E4CA0 2652A8A0 */  addiu      $s2, $s2, %lo(D_800EA8A0)
/* 21AF54 801E4CA4 46128103 */  div.s      $f4, $f16, $f18
.L801E4CA8_ovl17:
/* 21AF58 801E4CA8 02425821 */  addu       $t3, $s2, $v0
/* 21AF5C 801E4CAC 44804000 */  mtc1       $zero, $f8
/* 21AF60 801E4CB0 E5640000 */  swc1       $f4, 0x0($t3)
.L801E4CB4_ovl9:
/* 21AF64 801E4CB4 8C6F0000 */  lw         $t7, 0x0($v1)
.L801E4CB8_ovl17:
/* 21AF68 801E4CB8 000F7080 */  sll        $t6, $t7, 2
/* 21AF6C 801E4CBC 024E2021 */  addu       $a0, $s2, $t6
/* 21AF70 801E4CC0 C4800000 */  lwc1       $f0, 0x0($a0)
glabel func_801E4CC4_ovl13
/* 21AF74 801E4CC4 46000180 */  add.s      $f6, $f0, $f0
.L801E4CC8_ovl15:
/* 21AF78 801E4CC8 E4860000 */  swc1       $f6, 0x0($a0)
/* 21AF7C 801E4CCC 8C620000 */  lw         $v0, 0x0($v1)
/* 21AF80 801E4CD0 00021080 */  sll        $v0, $v0, 2
/* 21AF84 801E4CD4 02422021 */  addu       $a0, $s2, $v0
/* 21AF88 801E4CD8 C4800000 */  lwc1       $f0, 0x0($a0)
.L801E4CDC_ovl9:
/* 21AF8C 801E4CDC 46004032 */  c.eq.s     $f8, $f0
.L801E4CE0_ovl9:
/* 21AF90 801E4CE0 00000000 */  nop
/* 21AF94 801E4CE4 45000007 */  bc1f       .L801E4D04_ovl16
/* 21AF98 801E4CE8 3C01801F */   lui       $at, %hi(D_801EFF94_ovl16)
/* 21AF9C 801E4CEC C42AFF94 */  lwc1       $f10, %lo(D_801EFF94_ovl16)($at)
/* 21AFA0 801E4CF0 E48A0000 */  swc1       $f10, 0x0($a0)
/* 21AFA4 801E4CF4 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801E4CF8_ovl9
/* 21AFA8 801E4CF8 00021080 */  sll        $v0, $v0, 2
/* 21AFAC 801E4CFC 0242C021 */  addu       $t8, $s2, $v0
/* 21AFB0 801E4D00 C7000000 */  lwc1       $f0, 0x0($t8)
.L801E4D04_ovl16:
/* 21AFB4 801E4D04 00C2C821 */  addu       $t9, $a2, $v0
/* 21AFB8 801E4D08 8F280000 */  lw         $t0, 0x0($t9)
/* 21AFBC 801E4D0C 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x18)
/* 21AFC0 801E4D10 02825021 */  addu       $t2, $s4, $v0
/* 21AFC4 801E4D14 00084880 */  sll        $t1, $t0, 2
/* 21AFC8 801E4D18 00290821 */  addu       $at, $at, $t1
.L801E4D1C_ovl15:
/* 21AFCC 801E4D1C C430F9C8 */  lwc1       $f16, %lo(func_801EF9B0_ovl16 + 0x18)($at)
/* 21AFD0 801E4D20 24040001 */  addiu      $a0, $zero, 0x1
.L801E4D24_ovl17:
/* 21AFD4 801E4D24 46008483 */  div.s      $f18, $f16, $f0
/* 21AFD8 801E4D28 E5520000 */  swc1       $f18, 0x0($t2)
.L801E4D2C_ovl10:
/* 21AFDC 801E4D2C 8C620000 */  lw         $v0, 0x0($v1)
/* 21AFE0 801E4D30 00021080 */  sll        $v0, $v0, 2
.L801E4D34_ovl17:
/* 21AFE4 801E4D34 00E22821 */  addu       $a1, $a3, $v0
glabel func_801E4D38_ovl13
/* 21AFE8 801E4D38 02826821 */  addu       $t5, $s4, $v0
.L801E4D3C_ovl10:
/* 21AFEC 801E4D3C C5A60000 */  lwc1       $f6, 0x0($t5)
/* 21AFF0 801E4D40 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 21AFF4 801E4D44 46062201 */  sub.s      $f8, $f4, $f6
/* 21AFF8 801E4D48 0C002DAF */  jal        finish_current_thread
/* 21AFFC 801E4D4C E4A80000 */   swc1      $f8, 0x0($a1)
/* 21B000 801E4D50 8E630000 */  lw         $v1, 0x0($s3)
/* 21B004 801E4D54 24100001 */  addiu      $s0, $zero, 0x1
/* 21B008 801E4D58 8C620000 */  lw         $v0, 0x0($v1)
.L801E4D5C_ovl10:
/* 21B00C 801E4D5C 00021080 */  sll        $v0, $v0, 2
/* 21B010 801E4D60 02426021 */  addu       $t4, $s2, $v0
/* 21B014 801E4D64 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 21B018 801E4D68 4600540D */  trunc.w.s  $f16, $f10
glabel func_801E4D6C_ovl10
/* 21B01C 801E4D6C 440F8000 */  mfc1       $t7, $f16
/* 21B020 801E4D70 00000000 */  nop
/* 21B024 801E4D74 29E10002 */  slti       $at, $t7, 0x2
/* 21B028 801E4D78 14200020 */  bnez       $at, .L801E4DFC_ovl16
/* 21B02C 801E4D7C 02227021 */   addu      $t6, $s1, $v0
.L801E4D80_ovl16:
/* 21B030 801E4D80 C5C00000 */  lwc1       $f0, 0x0($t6)
/* 21B034 801E4D84 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 21B038 801E4D88 44819000 */  mtc1       $at, $f18
/* 21B03C 801E4D8C 4614003C */  c.lt.s     $f0, $f20
/* 21B040 801E4D90 00000000 */  nop
/* 21B044 801E4D94 45020004 */  bc1fl      .L801E4DA8_ovl16
/* 21B048 801E4D98 46000086 */   mov.s     $f2, $f0
.L801E4D9C_ovl15:
/* 21B04C 801E4D9C 10000002 */  b          .L801E4DA8_ovl16
.L801E4DA0_ovl17:
/* 21B050 801E4DA0 46000087 */   neg.s     $f2, $f0
/* 21B054 801E4DA4 46000086 */  mov.s      $f2, $f0
.L801E4DA8_ovl16:
/* 21B058 801E4DA8 4602903E */  c.le.s     $f18, $f2
/* 21B05C 801E4DAC 00000000 */  nop
.L801E4DB0_ovl17:
/* 21B060 801E4DB0 45000003 */  bc1f       .L801E4DC0_ovl16
/* 21B064 801E4DB4 00000000 */   nop
/* 21B068 801E4DB8 10000010 */  b          .L801E4DFC_ovl16
/* 21B06C 801E4DBC 24100001 */   addiu     $s0, $zero, 0x1
.L801E4DC0_ovl16:
/* 21B070 801E4DC0 0C002DAF */  jal        finish_current_thread
/* 21B074 801E4DC4 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801E4DC8_ovl9
/* 21B078 801E4DC8 8E630000 */  lw         $v1, 0x0($s3)
/* 21B07C 801E4DCC 26100001 */  addiu      $s0, $s0, 0x1
.L801E4DD0_ovl15:
/* 21B080 801E4DD0 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801E4DD4_ovl17
/* 21B084 801E4DD4 00021080 */  sll        $v0, $v0, 2
/* 21B088 801E4DD8 0242C021 */  addu       $t8, $s2, $v0
/* 21B08C 801E4DDC C7040000 */  lwc1       $f4, 0x0($t8)
/* 21B090 801E4DE0 4600218D */  trunc.w.s  $f6, $f4
/* 21B094 801E4DE4 44083000 */  mfc1       $t0, $f6
/* 21B098 801E4DE8 00000000 */  nop
/* 21B09C 801E4DEC 0208082A */  slt        $at, $s0, $t0
/* 21B0A0 801E4DF0 5420FFE3 */  bnel       $at, $zero, .L801E4D80_ovl16
/* 21B0A4 801E4DF4 02227021 */   addu      $t6, $s1, $v0
/* 21B0A8 801E4DF8 24100001 */  addiu      $s0, $zero, 0x1
.L801E4DFC_ovl16:
/* 21B0AC 801E4DFC 3C09800F */  lui        $t1, %hi(D_800EA1A0)
/* 21B0B0 801E4E00 01224821 */  addu       $t1, $t1, $v0
/* 21B0B4 801E4E04 8D29A1A0 */  lw         $t1, %lo(D_800EA1A0)($t1)
/* 21B0B8 801E4E08 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x20)
/* 21B0BC 801E4E0C 02226821 */  addu       $t5, $s1, $v0
.L801E4E10_ovl9:
/* 21B0C0 801E4E10 00095080 */  sll        $t2, $t1, 2
.L801E4E14_ovl13:
/* 21B0C4 801E4E14 002A0821 */  addu       $at, $at, $t2
/* 21B0C8 801E4E18 C428F9D0 */  lwc1       $f8, %lo(func_801EF9B0_ovl16 + 0x20)($at)
/* 21B0CC 801E4E1C 44805000 */  mtc1       $zero, $f10
/* 21B0D0 801E4E20 3C01800E */  lui        $at, %hi(D_800E3050)
/* 21B0D4 801E4E24 E5A80000 */  swc1       $f8, 0x0($t5)
/* 21B0D8 801E4E28 8C6C0000 */  lw         $t4, 0x0($v1)
/* 21B0DC 801E4E2C 240401B4 */  addiu      $a0, $zero, 0x1B4
/* 21B0E0 801E4E30 000C5880 */  sll        $t3, $t4, 2
.L801E4E34_ovl9:
/* 21B0E4 801E4E34 028B7821 */  addu       $t7, $s4, $t3
/* 21B0E8 801E4E38 E5EA0000 */  swc1       $f10, 0x0($t7)
/* 21B0EC 801E4E3C 8C620000 */  lw         $v0, 0x0($v1)
/* 21B0F0 801E4E40 00021080 */  sll        $v0, $v0, 2
/* 21B0F4 801E4E44 02827021 */  addu       $t6, $s4, $v0
/* 21B0F8 801E4E48 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 21B0FC 801E4E4C 00220821 */  addu       $at, $at, $v0
.L801E4E50_ovl17:
/* 21B100 801E4E50 E4303050 */  swc1       $f16, %lo(D_800E3050)($at)
/* 21B104 801E4E54 8C780000 */  lw         $t8, 0x0($v1)
glabel func_801E4E58_ovl13
/* 21B108 801E4E58 3C01801F */  lui        $at, %hi(func_801EFF98_ovl16)
/* 21B10C 801E4E5C C432FF98 */  lwc1       $f18, %lo(func_801EFF98_ovl16)($at)
/* 21B110 801E4E60 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 21B114 801E4E64 0018C880 */  sll        $t9, $t8, 2
glabel D_801E4E68_ovl17
/* 21B118 801E4E68 00390821 */  addu       $at, $at, $t9
/* 21B11C 801E4E6C 0C029D9E */  jal        play_sound
/* 21B120 801E4E70 E4323AD0 */   swc1      $f18, %lo(D_800E3AD0)($at)
/* 21B124 801E4E74 8E630000 */  lw         $v1, 0x0($s3)
/* 21B128 801E4E78 3C06800F */  lui        $a2, %hi(D_800EA1A0)
/* 21B12C 801E4E7C 24C6A1A0 */  addiu      $a2, $a2, %lo(D_800EA1A0)
/* 21B130 801E4E80 8C680000 */  lw         $t0, 0x0($v1)
/* 21B134 801E4E84 00084880 */  sll        $t1, $t0, 2
/* 21B138 801E4E88 00C91021 */  addu       $v0, $a2, $t1
.L801E4E8C_ovl13:
/* 21B13C 801E4E8C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 21B140 801E4E90 51400004 */  beql       $t2, $zero, .L801E4EA4_ovl16
/* 21B144 801E4E94 240D0001 */   addiu     $t5, $zero, 0x1
.L801E4E98_ovl9:
/* 21B148 801E4E98 10000003 */  b          .L801E4EA8_ovl16
/* 21B14C 801E4E9C AC400000 */   sw        $zero, 0x0($v0)
/* 21B150 801E4EA0 240D0001 */  addiu      $t5, $zero, 0x1
.L801E4EA4_ovl16:
/* 21B154 801E4EA4 AC4D0000 */  sw         $t5, 0x0($v0)
.L801E4EA8_ovl16:
/* 21B158 801E4EA8 8C620000 */  lw         $v0, 0x0($v1)
/* 21B15C 801E4EAC 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x10)
/* 21B160 801E4EB0 3C07800E */  lui        $a3, %hi(D_800E3050)
/* 21B164 801E4EB4 00021080 */  sll        $v0, $v0, 2
/* 21B168 801E4EB8 00C26021 */  addu       $t4, $a2, $v0
/* 21B16C 801E4EBC 8D8B0000 */  lw         $t3, 0x0($t4)
.L801E4EC0_ovl9:
/* 21B170 801E4EC0 24E73050 */  addiu      $a3, $a3, %lo(D_800E3050)
/* 21B174 801E4EC4 00E27021 */  addu       $t6, $a3, $v0
.L801E4EC8_ovl10:
/* 21B178 801E4EC8 000B7880 */  sll        $t7, $t3, 2
/* 21B17C 801E4ECC 002F0821 */  addu       $at, $at, $t7
.L801E4ED0_ovl9:
/* 21B180 801E4ED0 C424F9C0 */  lwc1       $f4, %lo(func_801EF9B0_ovl16 + 0x10)($at)
/* 21B184 801E4ED4 3C01801F */  lui        $at, %hi(func_801EFF98_ovl16 + 0x4)
glabel func_801E4ED8_ovl13
/* 21B188 801E4ED8 44805000 */  mtc1       $zero, $f10
/* 21B18C 801E4EDC E5C40000 */  swc1       $f4, 0x0($t6)
/* 21B190 801E4EE0 8C780000 */  lw         $t8, 0x0($v1)
/* 21B194 801E4EE4 C426FF9C */  lwc1       $f6, %lo(func_801EFF98_ovl16 + 0x4)($at)
/* 21B198 801E4EE8 0018C880 */  sll        $t9, $t8, 2
/* 21B19C 801E4EEC 02594021 */  addu       $t0, $s2, $t9
/* 21B1A0 801E4EF0 E5060000 */  swc1       $f6, 0x0($t0)
.L801E4EF4_ovl10:
/* 21B1A4 801E4EF4 8C690000 */  lw         $t1, 0x0($v1)
.L801E4EF8_ovl9:
/* 21B1A8 801E4EF8 00095080 */  sll        $t2, $t1, 2
/* 21B1AC 801E4EFC 024A2021 */  addu       $a0, $s2, $t2
.L801E4F00_ovl15:
/* 21B1B0 801E4F00 C4800000 */  lwc1       $f0, 0x0($a0)
/* 21B1B4 801E4F04 46000200 */  add.s      $f8, $f0, $f0
/* 21B1B8 801E4F08 E4880000 */  swc1       $f8, 0x0($a0)
/* 21B1BC 801E4F0C 8C620000 */  lw         $v0, 0x0($v1)
/* 21B1C0 801E4F10 00021080 */  sll        $v0, $v0, 2
/* 21B1C4 801E4F14 02422021 */  addu       $a0, $s2, $v0
glabel func_801E4F18_ovl9
/* 21B1C8 801E4F18 C4800000 */  lwc1       $f0, 0x0($a0)
/* 21B1CC 801E4F1C 46005032 */  c.eq.s     $f10, $f0
/* 21B1D0 801E4F20 00000000 */  nop
/* 21B1D4 801E4F24 45000007 */  bc1f       .L801E4F44_ovl16
/* 21B1D8 801E4F28 3C01801F */   lui       $at, %hi(func_801EFF98_ovl16 + 0x8)
/* 21B1DC 801E4F2C C430FFA0 */  lwc1       $f16, %lo(func_801EFF98_ovl16 + 0x8)($at)
/* 21B1E0 801E4F30 E4900000 */  swc1       $f16, 0x0($a0)
/* 21B1E4 801E4F34 8C620000 */  lw         $v0, 0x0($v1)
.L801E4F38_ovl10:
/* 21B1E8 801E4F38 00021080 */  sll        $v0, $v0, 2
/* 21B1EC 801E4F3C 02426821 */  addu       $t5, $s2, $v0
/* 21B1F0 801E4F40 C5A00000 */  lwc1       $f0, 0x0($t5)
.L801E4F44_ovl16:
/* 21B1F4 801E4F44 00C26021 */  addu       $t4, $a2, $v0
/* 21B1F8 801E4F48 8D8B0000 */  lw         $t3, 0x0($t4)
/* 21B1FC 801E4F4C 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x18)
/* 21B200 801E4F50 02827021 */  addu       $t6, $s4, $v0
/* 21B204 801E4F54 000B7880 */  sll        $t7, $t3, 2
/* 21B208 801E4F58 002F0821 */  addu       $at, $at, $t7
/* 21B20C 801E4F5C C432F9C8 */  lwc1       $f18, %lo(func_801EF9B0_ovl16 + 0x18)($at)
.L801E4F60_ovl15:
/* 21B210 801E4F60 24040001 */  addiu      $a0, $zero, 0x1
.L801E4F64_ovl10:
/* 21B214 801E4F64 46009103 */  div.s      $f4, $f18, $f0
/* 21B218 801E4F68 E5C40000 */  swc1       $f4, 0x0($t6)
/* 21B21C 801E4F6C 8C620000 */  lw         $v0, 0x0($v1)
/* 21B220 801E4F70 00021080 */  sll        $v0, $v0, 2
.L801E4F74_ovl9:
/* 21B224 801E4F74 00E22821 */  addu       $a1, $a3, $v0
.L801E4F78_ovl9:
/* 21B228 801E4F78 0282C021 */  addu       $t8, $s4, $v0
/* 21B22C 801E4F7C C7080000 */  lwc1       $f8, 0x0($t8)
/* 21B230 801E4F80 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 21B234 801E4F84 46083281 */  sub.s      $f10, $f6, $f8
glabel func_801E4F88_ovl9
/* 21B238 801E4F88 0C002DAF */  jal        finish_current_thread
/* 21B23C 801E4F8C E4AA0000 */   swc1      $f10, 0x0($a1)
/* 21B240 801E4F90 8E630000 */  lw         $v1, 0x0($s3)
/* 21B244 801E4F94 8C620000 */  lw         $v0, 0x0($v1)
/* 21B248 801E4F98 00021080 */  sll        $v0, $v0, 2
/* 21B24C 801E4F9C 0242C821 */  addu       $t9, $s2, $v0
/* 21B250 801E4FA0 C7300000 */  lwc1       $f16, 0x0($t9)
/* 21B254 801E4FA4 4600848D */  trunc.w.s  $f18, $f16
/* 21B258 801E4FA8 44099000 */  mfc1       $t1, $f18
/* 21B25C 801E4FAC 00000000 */  nop
/* 21B260 801E4FB0 29210002 */  slti       $at, $t1, 0x2
/* 21B264 801E4FB4 14200020 */  bnez       $at, .L801E5038_ovl16
/* 21B268 801E4FB8 02225021 */   addu      $t2, $s1, $v0
.L801E4FBC_ovl16:
/* 21B26C 801E4FBC C5400000 */  lwc1       $f0, 0x0($t2)
/* 21B270 801E4FC0 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 21B274 801E4FC4 44812000 */  mtc1       $at, $f4
/* 21B278 801E4FC8 4614003C */  c.lt.s     $f0, $f20
/* 21B27C 801E4FCC 00000000 */  nop
/* 21B280 801E4FD0 45020004 */  bc1fl      .L801E4FE4_ovl16
/* 21B284 801E4FD4 46000086 */   mov.s     $f2, $f0
/* 21B288 801E4FD8 10000002 */  b          .L801E4FE4_ovl16
/* 21B28C 801E4FDC 46000087 */   neg.s     $f2, $f0
/* 21B290 801E4FE0 46000086 */  mov.s      $f2, $f0
.L801E4FE4_ovl16:
/* 21B294 801E4FE4 4602203E */  c.le.s     $f4, $f2
/* 21B298 801E4FE8 00000000 */  nop
/* 21B29C 801E4FEC 45000003 */  bc1f       .L801E4FFC_ovl16
/* 21B2A0 801E4FF0 00000000 */   nop
/* 21B2A4 801E4FF4 10000010 */  b          .L801E5038_ovl16
/* 21B2A8 801E4FF8 24100001 */   addiu     $s0, $zero, 0x1
.L801E4FFC_ovl16:
/* 21B2AC 801E4FFC 0C002DAF */  jal        finish_current_thread
/* 21B2B0 801E5000 24040001 */   addiu     $a0, $zero, 0x1
/* 21B2B4 801E5004 8E630000 */  lw         $v1, 0x0($s3)
/* 21B2B8 801E5008 26100001 */  addiu      $s0, $s0, 0x1
/* 21B2BC 801E500C 8C620000 */  lw         $v0, 0x0($v1)
/* 21B2C0 801E5010 00021080 */  sll        $v0, $v0, 2
/* 21B2C4 801E5014 02426821 */  addu       $t5, $s2, $v0
/* 21B2C8 801E5018 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 21B2CC 801E501C 4600320D */  trunc.w.s  $f8, $f6
/* 21B2D0 801E5020 440B4000 */  mfc1       $t3, $f8
/* 21B2D4 801E5024 00000000 */  nop
/* 21B2D8 801E5028 020B082A */  slt        $at, $s0, $t3
/* 21B2DC 801E502C 5420FFE3 */  bnel       $at, $zero, .L801E4FBC_ovl16
/* 21B2E0 801E5030 02225021 */   addu      $t2, $s1, $v0
/* 21B2E4 801E5034 24100001 */  addiu      $s0, $zero, 0x1
.L801E5038_ovl16:
/* 21B2E8 801E5038 3C0F800F */  lui        $t7, %hi(D_800EA1A0)
/* 21B2EC 801E503C 01E27821 */  addu       $t7, $t7, $v0
.L801E5040_ovl15:
/* 21B2F0 801E5040 8DEFA1A0 */  lw         $t7, %lo(D_800EA1A0)($t7)
/* 21B2F4 801E5044 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x20)
/* 21B2F8 801E5048 0222C021 */  addu       $t8, $s1, $v0
/* 21B2FC 801E504C 000F7080 */  sll        $t6, $t7, 2
glabel func_801E5050_ovl13
/* 21B300 801E5050 002E0821 */  addu       $at, $at, $t6
/* 21B304 801E5054 C42AF9D0 */  lwc1       $f10, %lo(func_801EF9B0_ovl16 + 0x20)($at)
/* 21B308 801E5058 44808000 */  mtc1       $zero, $f16
/* 21B30C 801E505C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 21B310 801E5060 E70A0000 */  swc1       $f10, 0x0($t8)
/* 21B314 801E5064 8C790000 */  lw         $t9, 0x0($v1)
/* 21B318 801E5068 240401B4 */  addiu      $a0, $zero, 0x1B4
/* 21B31C 801E506C 00194080 */  sll        $t0, $t9, 2
/* 21B320 801E5070 02884821 */  addu       $t1, $s4, $t0
.L801E5074_ovl15:
/* 21B324 801E5074 E5300000 */  swc1       $f16, 0x0($t1)
/* 21B328 801E5078 8C620000 */  lw         $v0, 0x0($v1)
/* 21B32C 801E507C 00021080 */  sll        $v0, $v0, 2
glabel func_801E5080_ovl15
/* 21B330 801E5080 02825021 */  addu       $t2, $s4, $v0
.L801E5084_ovl9:
/* 21B334 801E5084 C5520000 */  lwc1       $f18, 0x0($t2)
/* 21B338 801E5088 00220821 */  addu       $at, $at, $v0
/* 21B33C 801E508C E4323050 */  swc1       $f18, %lo(D_800E3050)($at)
.L801E5090_ovl9:
/* 21B340 801E5090 8C6D0000 */  lw         $t5, 0x0($v1)
/* 21B344 801E5094 3C01801F */  lui        $at, %hi(.L801EFFA4_ovl16)
glabel func_801E5098_ovl13
/* 21B348 801E5098 C424FFA4 */  lwc1       $f4, %lo(.L801EFFA4_ovl16)($at)
/* 21B34C 801E509C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 21B350 801E50A0 000D6080 */  sll        $t4, $t5, 2
glabel func_801E50A4_ovl10
/* 21B354 801E50A4 002C0821 */  addu       $at, $at, $t4
/* 21B358 801E50A8 0C029D9E */  jal        play_sound
/* 21B35C 801E50AC E4243AD0 */   swc1      $f4, %lo(D_800E3AD0)($at)
/* 21B360 801E50B0 8E630000 */  lw         $v1, 0x0($s3)
/* 21B364 801E50B4 3C0E800F */  lui        $t6, %hi(D_800EA1A0)
/* 21B368 801E50B8 25CEA1A0 */  addiu      $t6, $t6, %lo(D_800EA1A0)
.L801E50BC_ovl9:
/* 21B36C 801E50BC 8C6B0000 */  lw         $t3, 0x0($v1)
/* 21B370 801E50C0 24190001 */  addiu      $t9, $zero, 0x1
/* 21B374 801E50C4 000B7880 */  sll        $t7, $t3, 2
/* 21B378 801E50C8 01EE1021 */  addu       $v0, $t7, $t6
/* 21B37C 801E50CC 8C580000 */  lw         $t8, 0x0($v0)
/* 21B380 801E50D0 53000004 */  beql       $t8, $zero, .L801E50E4_ovl16
/* 21B384 801E50D4 AC590000 */   sw        $t9, 0x0($v0)
/* 21B388 801E50D8 10000002 */  b          .L801E50E4_ovl16
/* 21B38C 801E50DC AC400000 */   sw        $zero, 0x0($v0)
.L801E50E0_ovl9:
/* 21B390 801E50E0 AC590000 */  sw         $t9, 0x0($v0)
.L801E50E4_ovl16:
/* 21B394 801E50E4 8C620000 */  lw         $v0, 0x0($v1)
/* 21B398 801E50E8 3C08800F */  lui        $t0, %hi(D_800EA1A0)
.L801E50EC_ovl9:
/* 21B39C 801E50EC 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x10)
/* 21B3A0 801E50F0 00021080 */  sll        $v0, $v0, 2
/* 21B3A4 801E50F4 01024021 */  addu       $t0, $t0, $v0
/* 21B3A8 801E50F8 8D08A1A0 */  lw         $t0, %lo(D_800EA1A0)($t0)
/* 21B3AC 801E50FC 3C06800E */  lui        $a2, %hi(D_800E3050)
/* 21B3B0 801E5100 24C63050 */  addiu      $a2, $a2, %lo(D_800E3050)
/* 21B3B4 801E5104 00084880 */  sll        $t1, $t0, 2
/* 21B3B8 801E5108 00290821 */  addu       $at, $at, $t1
glabel D_801E510C_ovl17
/* 21B3BC 801E510C C426F9C0 */  lwc1       $f6, %lo(func_801EF9B0_ovl16 + 0x10)($at)
.L801E5110_ovl9:
/* 21B3C0 801E5110 00C25021 */  addu       $t2, $a2, $v0
/* 21B3C4 801E5114 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 21B3C8 801E5118 E5460000 */  swc1       $f6, 0x0($t2)
/* 21B3CC 801E511C 8C620000 */  lw         $v0, 0x0($v1)
.L801E5120_ovl10:
/* 21B3D0 801E5120 44814000 */  mtc1       $at, $f8
/* 21B3D4 801E5124 3C01801F */  lui        $at, %hi(D_801EFFA8_ovl16)
/* 21B3D8 801E5128 00021080 */  sll        $v0, $v0, 2
/* 21B3DC 801E512C 02226821 */  addu       $t5, $s1, $v0
/* 21B3E0 801E5130 C5A00000 */  lwc1       $f0, 0x0($t5)
/* 21B3E4 801E5134 3C18800F */  lui        $t8, %hi(D_800EA1A0)
/* 21B3E8 801E5138 4614003C */  c.lt.s     $f0, $f20
/* 21B3EC 801E513C 00000000 */  nop
.L801E5140_ovl10:
/* 21B3F0 801E5140 45020004 */  bc1fl      .L801E5154_ovl17
/* 21B3F4 801E5144 46000086 */   mov.s     $f2, $f0
/* 21B3F8 801E5148 10000002 */  b          .L801E5154_ovl17
.L801E514C_ovl9:
/* 21B3FC 801E514C 46000087 */   neg.s     $f2, $f0
/* 21B400 801E5150 46000086 */  mov.s      $f2, $f0
.L801E5154_ovl17:
/* 21B404 801E5154 46081283 */  div.s      $f10, $f2, $f8
/* 21B408 801E5158 02426021 */  addu       $t4, $s2, $v0
/* 21B40C 801E515C 44809000 */  mtc1       $zero, $f18
/* 21B410 801E5160 E58A0000 */  swc1       $f10, 0x0($t4)
/* 21B414 801E5164 8C6B0000 */  lw         $t3, 0x0($v1)
.L801E5168_ovl9:
/* 21B418 801E5168 000B7880 */  sll        $t7, $t3, 2
/* 21B41C 801E516C 024F2021 */  addu       $a0, $s2, $t7
/* 21B420 801E5170 C4800000 */  lwc1       $f0, 0x0($a0)
.L801E5174_ovl10:
/* 21B424 801E5174 46000400 */  add.s      $f16, $f0, $f0
/* 21B428 801E5178 E4900000 */  swc1       $f16, 0x0($a0)
/* 21B42C 801E517C 8C620000 */  lw         $v0, 0x0($v1)
/* 21B430 801E5180 00021080 */  sll        $v0, $v0, 2
glabel func_801E5184_ovl10
/* 21B434 801E5184 02422021 */  addu       $a0, $s2, $v0
/* 21B438 801E5188 C4800000 */  lwc1       $f0, 0x0($a0)
/* 21B43C 801E518C 46009032 */  c.eq.s     $f18, $f0
/* 21B440 801E5190 00000000 */  nop
/* 21B444 801E5194 45020008 */  bc1fl      .L801E51B8_ovl16
.L801E5198_ovl9:
/* 21B448 801E5198 0302C021 */   addu      $t8, $t8, $v0
/* 21B44C 801E519C C424FFA8 */  lwc1       $f4, %lo(D_801EFFA8_ovl16)($at)
/* 21B450 801E51A0 E4840000 */  swc1       $f4, 0x0($a0)
.L801E51A4_ovl9:
/* 21B454 801E51A4 8C620000 */  lw         $v0, 0x0($v1)
/* 21B458 801E51A8 00021080 */  sll        $v0, $v0, 2
/* 21B45C 801E51AC 02427021 */  addu       $t6, $s2, $v0
/* 21B460 801E51B0 C5C00000 */  lwc1       $f0, 0x0($t6)
/* 21B464 801E51B4 0302C021 */  addu       $t8, $t8, $v0
.L801E51B8_ovl16:
/* 21B468 801E51B8 8F18A1A0 */  lw         $t8, %lo(D_800EA1A0)($t8)
/* 21B46C 801E51BC 3C01801F */  lui        $at, %hi(func_801EF9B0_ovl16 + 0x18)
/* 21B470 801E51C0 02824021 */  addu       $t0, $s4, $v0
/* 21B474 801E51C4 0018C880 */  sll        $t9, $t8, 2
/* 21B478 801E51C8 00390821 */  addu       $at, $at, $t9
.L801E51CC_ovl15:
/* 21B47C 801E51CC C426F9C8 */  lwc1       $f6, %lo(func_801EF9B0_ovl16 + 0x18)($at)
/* 21B480 801E51D0 24040001 */  addiu      $a0, $zero, 0x1
/* 21B484 801E51D4 46003203 */  div.s      $f8, $f6, $f0
/* 21B488 801E51D8 E5080000 */  swc1       $f8, 0x0($t0)
/* 21B48C 801E51DC 8C620000 */  lw         $v0, 0x0($v1)
/* 21B490 801E51E0 00021080 */  sll        $v0, $v0, 2
/* 21B494 801E51E4 00C22821 */  addu       $a1, $a2, $v0
/* 21B498 801E51E8 02824821 */  addu       $t1, $s4, $v0
glabel func_801E51EC_ovl9
/* 21B49C 801E51EC C5300000 */  lwc1       $f16, 0x0($t1)
/* 21B4A0 801E51F0 C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 21B4A4 801E51F4 46105481 */  sub.s      $f18, $f10, $f16
.L801E51F8_ovl15:
/* 21B4A8 801E51F8 0C002DAF */  jal        finish_current_thread
glabel func_801E51FC_ovl13
/* 21B4AC 801E51FC E4B20000 */   swc1      $f18, 0x0($a1)
/* 21B4B0 801E5200 8E630000 */  lw         $v1, 0x0($s3)
/* 21B4B4 801E5204 8C620000 */  lw         $v0, 0x0($v1)
/* 21B4B8 801E5208 00021080 */  sll        $v0, $v0, 2
/* 21B4BC 801E520C 02425021 */  addu       $t2, $s2, $v0
/* 21B4C0 801E5210 C5440000 */  lwc1       $f4, 0x0($t2)
/* 21B4C4 801E5214 4600218D */  trunc.w.s  $f6, $f4
/* 21B4C8 801E5218 440C3000 */  mfc1       $t4, $f6
/* 21B4CC 801E521C 00000000 */  nop
/* 21B4D0 801E5220 29810002 */  slti       $at, $t4, 0x2
/* 21B4D4 801E5224 14200029 */  bnez       $at, .L801E52CC_ovl16
.L801E5228_ovl16:
/* 21B4D8 801E5228 3C01800E */   lui       $at, %hi(D_800E3050)
/* 21B4DC 801E522C 00220821 */  addu       $at, $at, $v0
/* 21B4E0 801E5230 02225821 */  addu       $t3, $s1, $v0
/* 21B4E4 801E5234 C5600000 */  lwc1       $f0, 0x0($t3)
/* 21B4E8 801E5238 C42A3050 */  lwc1       $f10, %lo(D_800E3050)($at)
/* 21B4EC 801E523C 02827821 */  addu       $t7, $s4, $v0
/* 21B4F0 801E5240 C5E80000 */  lwc1       $f8, 0x0($t7)
.L801E5244_ovl9:
/* 21B4F4 801E5244 460A0400 */  add.s      $f16, $f0, $f10
/* 21B4F8 801E5248 46104080 */  add.s      $f2, $f8, $f16
/* 21B4FC 801E524C 4614103C */  c.lt.s     $f2, $f20
/* 21B500 801E5250 00000000 */  nop
/* 21B504 801E5254 45020004 */  bc1fl      .L801E5268_ovl16
/* 21B508 801E5258 46001306 */   mov.s     $f12, $f2
/* 21B50C 801E525C 10000002 */  b          .L801E5268_ovl16
/* 21B510 801E5260 46001307 */   neg.s     $f12, $f2
/* 21B514 801E5264 46001306 */  mov.s      $f12, $f2
.L801E5268_ovl16:
/* 21B518 801E5268 4614003C */  c.lt.s     $f0, $f20
/* 21B51C 801E526C 00000000 */  nop
/* 21B520 801E5270 45020004 */  bc1fl      .L801E5284_ovl16
/* 21B524 801E5274 46000086 */   mov.s     $f2, $f0
glabel func_801E5278_ovl10
/* 21B528 801E5278 10000002 */  b          .L801E5284_ovl16
/* 21B52C 801E527C 46000087 */   neg.s     $f2, $f0
/* 21B530 801E5280 46000086 */  mov.s      $f2, $f0
.L801E5284_ovl16:
/* 21B534 801E5284 460C103C */  c.lt.s     $f2, $f12
/* 21B538 801E5288 00000000 */  nop
.L801E528C_ovl13:
/* 21B53C 801E528C 45030010 */  bc1tl      .L801E52D0_ovl16
/* 21B540 801E5290 44803000 */   mtc1      $zero, $f6
.L801E5294_ovl9:
/* 21B544 801E5294 0C002DAF */  jal        finish_current_thread
/* 21B548 801E5298 24040001 */   addiu     $a0, $zero, 0x1
/* 21B54C 801E529C 8E630000 */  lw         $v1, 0x0($s3)
/* 21B550 801E52A0 26100001 */  addiu      $s0, $s0, 0x1
glabel func_801E52A4_ovl9
/* 21B554 801E52A4 8C620000 */  lw         $v0, 0x0($v1)
.L801E52A8_ovl13:
/* 21B558 801E52A8 00021080 */  sll        $v0, $v0, 2
/* 21B55C 801E52AC 02427021 */  addu       $t6, $s2, $v0
/* 21B560 801E52B0 C5D20000 */  lwc1       $f18, 0x0($t6)
glabel func_801E52B4_ovl13
/* 21B564 801E52B4 4600910D */  trunc.w.s  $f4, $f18
/* 21B568 801E52B8 44192000 */  mfc1       $t9, $f4
/* 21B56C 801E52BC 00000000 */  nop
/* 21B570 801E52C0 0219082A */  slt        $at, $s0, $t9
/* 21B574 801E52C4 1420FFD8 */  bnez       $at, .L801E5228_ovl16
/* 21B578 801E52C8 00000000 */   nop
.L801E52CC_ovl16:
/* 21B57C 801E52CC 44803000 */  mtc1       $zero, $f6
.L801E52D0_ovl16:
/* 21B580 801E52D0 02224021 */  addu       $t0, $s1, $v0
/* 21B584 801E52D4 44805000 */  mtc1       $zero, $f10
/* 21B588 801E52D8 E5060000 */  swc1       $f6, 0x0($t0)
/* 21B58C 801E52DC 8C690000 */  lw         $t1, 0x0($v1)
/* 21B590 801E52E0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 21B594 801E52E4 44809000 */  mtc1       $zero, $f18
/* 21B598 801E52E8 00095080 */  sll        $t2, $t1, 2
/* 21B59C 801E52EC 028A6821 */  addu       $t5, $s4, $t2
/* 21B5A0 801E52F0 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 21B5A4 801E52F4 8C620000 */  lw         $v0, 0x0($v1)
/* 21B5A8 801E52F8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 21B5AC 801E52FC 24090017 */  addiu      $t1, $zero, 0x17
/* 21B5B0 801E5300 00021080 */  sll        $v0, $v0, 2
/* 21B5B4 801E5304 02826021 */  addu       $t4, $s4, $v0
/* 21B5B8 801E5308 C5880000 */  lwc1       $f8, 0x0($t4)
/* 21B5BC 801E530C 00220821 */  addu       $at, $at, $v0
.L801E5310_ovl10:
/* 21B5C0 801E5310 8FB40030 */  lw         $s4, 0x30($sp)
/* 21B5C4 801E5314 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
.L801E5318_ovl10:
/* 21B5C8 801E5318 8C6B0000 */  lw         $t3, 0x0($v1)
glabel func_801E531C_ovl15
/* 21B5CC 801E531C 3C01801F */  lui        $at, %hi(D_801EFFAC_ovl16)
/* 21B5D0 801E5320 C430FFAC */  lwc1       $f16, %lo(D_801EFFAC_ovl16)($at)
/* 21B5D4 801E5324 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 21B5D8 801E5328 000B7880 */  sll        $t7, $t3, 2
/* 21B5DC 801E532C 002F0821 */  addu       $at, $at, $t7
/* 21B5E0 801E5330 E4303AD0 */  swc1       $f16, %lo(D_800E3AD0)($at)
.L801E5334_ovl10:
/* 21B5E4 801E5334 8C6E0000 */  lw         $t6, 0x0($v1)
/* 21B5E8 801E5338 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 21B5EC 801E533C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 21B5F0 801E5340 000EC080 */  sll        $t8, $t6, 2
/* 21B5F4 801E5344 00380821 */  addu       $at, $at, $t8
/* 21B5F8 801E5348 E432A6E0 */  swc1       $f18, %lo(D_800EA6E0)($at)
/* 21B5FC 801E534C 8C790000 */  lw         $t9, 0x0($v1)
/* 21B600 801E5350 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 21B604 801E5354 8FB20028 */  lw         $s2, 0x28($sp)
.L801E5358_ovl10:
/* 21B608 801E5358 00194080 */  sll        $t0, $t9, 2
/* 21B60C 801E535C 00280821 */  addu       $at, $at, $t0
/* 21B610 801E5360 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
glabel func_801E5364_ovl10
/* 21B614 801E5364 8C6A0000 */  lw         $t2, 0x0($v1)
/* 21B618 801E5368 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 21B61C 801E536C 8FB10024 */  lw         $s1, 0x24($sp)
/* 21B620 801E5370 000A6880 */  sll        $t5, $t2, 2
/* 21B624 801E5374 002D0821 */  addu       $at, $at, $t5
/* 21B628 801E5378 8FB00020 */  lw         $s0, 0x20($sp)
/* 21B62C 801E537C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 21B630 801E5380 AC29DC50 */  sw         $t1, %lo(gEntityVtableIndexArray)($at)
/* 21B634 801E5384 03E00008 */  jr         $ra
/* 21B638 801E5388 27BD0038 */   addiu     $sp, $sp, 0x38
