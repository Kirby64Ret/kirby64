glabel func_801DF768_ovl17
/* 22A958 801DF768 27BDFED8 */  addiu      $sp, $sp, -0x128
.L801DF76C_ovl15:
/* 22A95C 801DF76C AFBF0014 */  sw         $ra, 0x14($sp)
/* 22A960 801DF770 E7AC0128 */  swc1       $f12, 0x128($sp)
/* 22A964 801DF774 0C00C304 */  jal        guMtxIdentF
glabel func_801DF778_ovl11
/* 22A968 801DF778 27A400D0 */   addiu     $a0, $sp, 0xD0
/* 22A96C 801DF77C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 22A970 801DF780 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 22A974 801DF784 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* 22A978 801DF788 3C06800F */  lui        $a2, %hi(D_800EA8A0)
.L801DF78C_ovl13:
/* 22A97C 801DF78C 8DC30000 */  lw         $v1, 0x0($t6)
glabel func_801DF790_ovl15
/* 22A980 801DF790 3C07800F */  lui        $a3, %hi(D_800EAA60)
.L801DF794_ovl16:
/* 22A984 801DF794 27A40090 */  addiu      $a0, $sp, 0x90
glabel func_801DF798_ovl11
/* 22A988 801DF798 00031880 */  sll        $v1, $v1, 2
.L801DF79C_ovl13:
/* 22A98C 801DF79C 00A32821 */  addu       $a1, $a1, $v1
.L801DF7A0_ovl10:
/* 22A990 801DF7A0 00C33021 */  addu       $a2, $a2, $v1
.L801DF7A4_ovl16:
/* 22A994 801DF7A4 00E33821 */  addu       $a3, $a3, $v1
/* 22A998 801DF7A8 8CE7AA60 */  lw         $a3, %lo(D_800EAA60)($a3)
/* 22A99C 801DF7AC 8CC6A8A0 */  lw         $a2, %lo(D_800EA8A0)($a2)
/* 22A9A0 801DF7B0 0C006EEB */  jal        HS64_MkRotationMtxF
/* 22A9A4 801DF7B4 8CA5A6E0 */   lw        $a1, %lo(D_800EA6E0)($a1)
/* 22A9A8 801DF7B8 27A400D0 */  addiu      $a0, $sp, 0xD0
/* 22A9AC 801DF7BC 00803025 */  or         $a2, $a0, $zero
/* 22A9B0 801DF7C0 0C00D034 */  jal        guMtxCatF
/* 22A9B4 801DF7C4 27A50090 */   addiu     $a1, $sp, 0x90
/* 22A9B8 801DF7C8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 22A9BC 801DF7CC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 22A9C0 801DF7D0 3C19800F */  lui        $t9, %hi(D_800EAC20)
/* 22A9C4 801DF7D4 2739AC20 */  addiu      $t9, $t9, %lo(D_800EAC20)
.L801DF7D8_ovl16:
/* 22A9C8 801DF7D8 8C4F0000 */  lw         $t7, 0x0($v0)
.L801DF7DC_ovl14:
/* 22A9CC 801DF7DC 3C013F00 */  lui        $at, (0x3F000000 >> 16)
.L801DF7E0_ovl10:
/* 22A9D0 801DF7E0 44810000 */  mtc1       $at, $f0
.L801DF7E4_ovl10:
/* 22A9D4 801DF7E4 000FC080 */  sll        $t8, $t7, 2
/* 22A9D8 801DF7E8 03191821 */  addu       $v1, $t8, $t9
/* 22A9DC 801DF7EC C4640000 */  lwc1       $f4, 0x0($v1)
.L801DF7F0_ovl11:
/* 22A9E0 801DF7F0 3C09800F */  lui        $t1, %hi(D_800EADE0)
/* 22A9E4 801DF7F4 2529ADE0 */  addiu      $t1, $t1, %lo(D_800EADE0)
/* 22A9E8 801DF7F8 46002182 */  mul.s      $f6, $f4, $f0
/* 22A9EC 801DF7FC 3C0E800F */  lui        $t6, %hi(D_800EAFA0)
/* 22A9F0 801DF800 25CEAFA0 */  addiu      $t6, $t6, %lo(D_800EAFA0)
/* 22A9F4 801DF804 44801000 */  mtc1       $zero, $f2
.L801DF808_ovl13:
/* 22A9F8 801DF808 27A40044 */  addiu      $a0, $sp, 0x44
.L801DF80C_ovl12:
/* 22A9FC 801DF80C 27A50038 */  addiu      $a1, $sp, 0x38
.L801DF810_ovl16:
/* 22AA00 801DF810 E4660000 */  swc1       $f6, 0x0($v1)
/* 22AA04 801DF814 8C4A0000 */  lw         $t2, 0x0($v0)
.L801DF818_ovl14:
/* 22AA08 801DF818 000A5880 */  sll        $t3, $t2, 2
.L801DF81C_ovl9:
/* 22AA0C 801DF81C 012B3821 */  addu       $a3, $t1, $t3
/* 22AA10 801DF820 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 22AA14 801DF824 46004282 */  mul.s      $f10, $f8, $f0
.L801DF828_ovl10:
/* 22AA18 801DF828 C7A800F0 */  lwc1       $f8, 0xF0($sp)
/* 22AA1C 801DF82C E4EA0000 */  swc1       $f10, 0x0($a3)
/* 22AA20 801DF830 8C4C0000 */  lw         $t4, 0x0($v0)
/* 22AA24 801DF834 C7AA00F4 */  lwc1       $f10, 0xF4($sp)
glabel func_801DF838_ovl9
/* 22AA28 801DF838 E7A80044 */  swc1       $f8, 0x44($sp)
/* 22AA2C 801DF83C 000C6880 */  sll        $t5, $t4, 2
/* 22AA30 801DF840 01AE4021 */  addu       $t0, $t5, $t6
.L801DF844_ovl16:
/* 22AA34 801DF844 C5040000 */  lwc1       $f4, 0x0($t0)
.L801DF848_ovl12:
/* 22AA38 801DF848 E7AA0048 */  swc1       $f10, 0x48($sp)
/* 22AA3C 801DF84C C7A800D4 */  lwc1       $f8, 0xD4($sp)
/* 22AA40 801DF850 46002182 */  mul.s      $f6, $f4, $f0
.L801DF854_ovl16:
/* 22AA44 801DF854 C7A400F8 */  lwc1       $f4, 0xF8($sp)
/* 22AA48 801DF858 C7AA00D8 */  lwc1       $f10, 0xD8($sp)
/* 22AA4C 801DF85C E7A20020 */  swc1       $f2, 0x20($sp)
/* 22AA50 801DF860 E7A20024 */  swc1       $f2, 0x24($sp)
/* 22AA54 801DF864 E7A20028 */  swc1       $f2, 0x28($sp)
/* 22AA58 801DF868 E7A8003C */  swc1       $f8, 0x3C($sp)
/* 22AA5C 801DF86C E5060000 */  swc1       $f6, 0x0($t0)
/* 22AA60 801DF870 C7A600D0 */  lwc1       $f6, 0xD0($sp)
/* 22AA64 801DF874 E7A4004C */  swc1       $f4, 0x4C($sp)
/* 22AA68 801DF878 E7AA0040 */  swc1       $f10, 0x40($sp)
/* 22AA6C 801DF87C E7A60038 */  swc1       $f6, 0x38($sp)
/* 22AA70 801DF880 8C4F0000 */  lw         $t7, 0x0($v0)
.L801DF884_ovl13:
/* 22AA74 801DF884 C7A40128 */  lwc1       $f4, 0x128($sp)
.L801DF888_ovl16:
/* 22AA78 801DF888 000FC080 */  sll        $t8, $t7, 2
.L801DF88C_ovl11:
/* 22AA7C 801DF88C 0138C821 */  addu       $t9, $t1, $t8
.L801DF890_ovl14:
/* 22AA80 801DF890 E7240000 */  swc1       $f4, 0x0($t9)
.L801DF894_ovl13:
/* 22AA84 801DF894 8C4A0000 */  lw         $t2, 0x0($v0)
/* 22AA88 801DF898 000A5880 */  sll        $t3, $t2, 2
glabel func_801DF89C_ovl11
/* 22AA8C 801DF89C 012B6021 */  addu       $t4, $t1, $t3
/* 22AA90 801DF8A0 0C00647E */  jal        func_800191F8
.L801DF8A4_ovl15:
/* 22AA94 801DF8A4 8D860000 */   lw        $a2, 0x0($t4)
.L801DF8A8_ovl12:
/* 22AA98 801DF8A8 C7A00044 */  lwc1       $f0, 0x44($sp)
/* 22AA9C 801DF8AC C7A20048 */  lwc1       $f2, 0x48($sp)
.L801DF8B0_ovl10:
/* 22AAA0 801DF8B0 C7AE004C */  lwc1       $f14, 0x4C($sp)
/* 22AAA4 801DF8B4 C7A600E0 */  lwc1       $f6, 0xE0($sp)
glabel func_801DF8B8_ovl9
/* 22AAA8 801DF8B8 C7A800E4 */  lwc1       $f8, 0xE4($sp)
/* 22AAAC 801DF8BC C7AA00E8 */  lwc1       $f10, 0xE8($sp)
.L801DF8C0_ovl15:
/* 22AAB0 801DF8C0 27A40044 */  addiu      $a0, $sp, 0x44
.L801DF8C4_ovl16:
/* 22AAB4 801DF8C4 27A5002C */  addiu      $a1, $sp, 0x2C
/* 22AAB8 801DF8C8 27A60020 */  addiu      $a2, $sp, 0x20
.L801DF8CC_ovl14:
/* 22AABC 801DF8CC E7A0002C */  swc1       $f0, 0x2C($sp)
/* 22AAC0 801DF8D0 E7A000F0 */  swc1       $f0, 0xF0($sp)
/* 22AAC4 801DF8D4 E7A20030 */  swc1       $f2, 0x30($sp)
/* 22AAC8 801DF8D8 E7A200F4 */  swc1       $f2, 0xF4($sp)
.L801DF8DC_ovl12:
/* 22AACC 801DF8DC E7AE0034 */  swc1       $f14, 0x34($sp)
/* 22AAD0 801DF8E0 E7AE00F8 */  swc1       $f14, 0xF8($sp)
/* 22AAD4 801DF8E4 E7A60044 */  swc1       $f6, 0x44($sp)
/* 22AAD8 801DF8E8 E7A80048 */  swc1       $f8, 0x48($sp)
.L801DF8EC_ovl14:
/* 22AADC 801DF8EC 0C0065D0 */  jal        vec3_normalized_cross_product
/* 22AAE0 801DF8F0 E7AA004C */   swc1      $f10, 0x4C($sp)
.L801DF8F4_ovl13:
/* 22AAE4 801DF8F4 C7AC0020 */  lwc1       $f12, 0x20($sp)
.L801DF8F8_ovl16:
/* 22AAE8 801DF8F8 C7B00024 */  lwc1       $f16, 0x24($sp)
glabel func_801DF8FC_ovl14
/* 22AAEC 801DF8FC C7B20028 */  lwc1       $f18, 0x28($sp)
glabel func_801DF900_ovl13
/* 22AAF0 801DF900 C7A000F0 */  lwc1       $f0, 0xF0($sp)
/* 22AAF4 801DF904 C7A200F4 */  lwc1       $f2, 0xF4($sp)
.L801DF908_ovl16:
/* 22AAF8 801DF908 C7AE00F8 */  lwc1       $f14, 0xF8($sp)
/* 22AAFC 801DF90C 27A40044 */  addiu      $a0, $sp, 0x44
glabel func_801DF910_ovl12
/* 22AB00 801DF910 27A5002C */  addiu      $a1, $sp, 0x2C
/* 22AB04 801DF914 27A60020 */  addiu      $a2, $sp, 0x20
/* 22AB08 801DF918 E7AC002C */  swc1       $f12, 0x2C($sp)
.L801DF91C_ovl13:
/* 22AB0C 801DF91C E7AC00D0 */  swc1       $f12, 0xD0($sp)
/* 22AB10 801DF920 E7B00030 */  swc1       $f16, 0x30($sp)
/* 22AB14 801DF924 E7B000D4 */  swc1       $f16, 0xD4($sp)
/* 22AB18 801DF928 E7B20034 */  swc1       $f18, 0x34($sp)
/* 22AB1C 801DF92C E7B200D8 */  swc1       $f18, 0xD8($sp)
.L801DF930_ovl13:
/* 22AB20 801DF930 E7A00044 */  swc1       $f0, 0x44($sp)
.L801DF934_ovl15:
/* 22AB24 801DF934 E7A20048 */  swc1       $f2, 0x48($sp)
/* 22AB28 801DF938 0C0065D0 */  jal        vec3_normalized_cross_product
.L801DF93C_ovl16:
/* 22AB2C 801DF93C E7AE004C */   swc1      $f14, 0x4C($sp)
.L801DF940_ovl15:
/* 22AB30 801DF940 C7B200D8 */  lwc1       $f18, 0xD8($sp)
/* 22AB34 801DF944 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 22AB38 801DF948 C7A60024 */  lwc1       $f6, 0x24($sp)
/* 22AB3C 801DF94C C7A80028 */  lwc1       $f8, 0x28($sp)
.L801DF950_ovl14:
/* 22AB40 801DF950 46009307 */  neg.s      $f12, $f18
/* 22AB44 801DF954 E7A400E0 */  swc1       $f4, 0xE0($sp)
/* 22AB48 801DF958 E7A600E4 */  swc1       $f6, 0xE4($sp)
/* 22AB4C 801DF95C 0C006203 */  jal        asinf
/* 22AB50 801DF960 E7A800E8 */   swc1      $f8, 0xE8($sp)
/* 22AB54 801DF964 3C01801E */  lui        $at, %hi(D_801E564C_ovl17)
/* 22AB58 801DF968 C422564C */  lwc1       $f2, %lo(D_801E564C_ovl17)($at)
.L801DF96C_ovl14:
/* 22AB5C 801DF96C E7A00114 */  swc1       $f0, 0x114($sp)
/* 22AB60 801DF970 3C01801E */  lui        $at, %hi(.L801E5650_ovl17)
.L801DF974_ovl16:
/* 22AB64 801DF974 46020032 */  c.eq.s     $f0, $f2
/* 22AB68 801DF978 00000000 */  nop
/* 22AB6C 801DF97C 45030008 */  bc1tl      .L801DF9A0_ovl17
.L801DF980_ovl12:
/* 22AB70 801DF980 46020032 */   c.eq.s    $f0, $f2
/* 22AB74 801DF984 C42A5650 */  lwc1       $f10, %lo(.L801E5650_ovl17)($at)
/* 22AB78 801DF988 C7AE00F8 */  lwc1       $f14, 0xF8($sp)
/* 22AB7C 801DF98C 460A0032 */  c.eq.s     $f0, $f10
/* 22AB80 801DF990 00000000 */  nop
.L801DF994_ovl14:
/* 22AB84 801DF994 45000011 */  bc1f       func_801DF9DC_ovl17
/* 22AB88 801DF998 00000000 */   nop
.L801DF99C_ovl12:
/* 22AB8C 801DF99C 46020032 */  c.eq.s     $f0, $f2
.L801DF9A0_ovl17:
/* 22AB90 801DF9A0 C7AC00E0 */  lwc1       $f12, 0xE0($sp)
/* 22AB94 801DF9A4 C7AE00E4 */  lwc1       $f14, 0xE4($sp)
.L801DF9A8_ovl16:
/* 22AB98 801DF9A8 45000006 */  bc1f       .L801DF9C4_ovl17
.L801DF9AC_ovl15:
/* 22AB9C 801DF9AC 00000000 */   nop
/* 22ABA0 801DF9B0 C7AC00E0 */  lwc1       $f12, 0xE0($sp)
/* 22ABA4 801DF9B4 0C0061C3 */  jal        atan2f
.L801DF9B8_ovl16:
/* 22ABA8 801DF9B8 C7AE00E4 */   lwc1      $f14, 0xE4($sp)
.L801DF9BC_ovl14:
/* 22ABAC 801DF9BC 10000004 */  b          .L801DF9D0_ovl17
/* 22ABB0 801DF9C0 E7A00110 */   swc1      $f0, 0x110($sp)
.L801DF9C4_ovl17:
/* 22ABB4 801DF9C4 0C0061C3 */  jal        atan2f
glabel func_801DF9C8_ovl15
/* 22ABB8 801DF9C8 46006307 */   neg.s     $f12, $f12
.L801DF9CC_ovl14:
/* 22ABBC 801DF9CC E7A00110 */  swc1       $f0, 0x110($sp)
.L801DF9D0_ovl17:
/* 22ABC0 801DF9D0 44802000 */  mtc1       $zero, $f4
.L801DF9D4_ovl12:
/* 22ABC4 801DF9D4 10000008 */  b          .L801DF9F8_ovl17
/* 22ABC8 801DF9D8 E7A40118 */   swc1      $f4, 0x118($sp)
glabel func_801DF9DC_ovl17
/* 22ABCC 801DF9DC 0C0061C3 */  jal        atan2f
.L801DF9E0_ovl10:
/* 22ABD0 801DF9E0 C7AC00E8 */   lwc1      $f12, 0xE8($sp)
/* 22ABD4 801DF9E4 E7A00110 */  swc1       $f0, 0x110($sp)
.L801DF9E8_ovl10:
/* 22ABD8 801DF9E8 C7AC00D4 */  lwc1       $f12, 0xD4($sp)
glabel func_801DF9EC_ovl16
/* 22ABDC 801DF9EC 0C0061C3 */  jal        atan2f
/* 22ABE0 801DF9F0 C7AE00D0 */   lwc1      $f14, 0xD0($sp)
/* 22ABE4 801DF9F4 E7A00118 */  swc1       $f0, 0x118($sp)
.L801DF9F8_ovl17:
/* 22ABE8 801DF9F8 0C029166 */  jal        func_800A4598
/* 22ABEC 801DF9FC 27A40110 */   addiu     $a0, $sp, 0x110
/* 22ABF0 801DFA00 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 22ABF4 801DFA04 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 22ABF8 801DFA08 C7A60110 */  lwc1       $f6, 0x110($sp)
/* 22ABFC 801DFA0C 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 22AC00 801DFA10 8C4D0000 */  lw         $t5, 0x0($v0)
/* 22AC04 801DFA14 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 22AC08 801DFA18 3C05800F */  lui        $a1, %hi(D_800EA8A0)
/* 22AC0C 801DFA1C 000D7080 */  sll        $t6, $t5, 2
/* 22AC10 801DFA20 008E7821 */  addu       $t7, $a0, $t6
.L801DFA24_ovl16:
/* 22AC14 801DFA24 E5E60000 */  swc1       $f6, 0x0($t7)
/* 22AC18 801DFA28 8C580000 */  lw         $t8, 0x0($v0)
/* 22AC1C 801DFA2C C7A80114 */  lwc1       $f8, 0x114($sp)
/* 22AC20 801DFA30 24A5A8A0 */  addiu      $a1, $a1, %lo(D_800EA8A0)
/* 22AC24 801DFA34 0018C880 */  sll        $t9, $t8, 2
glabel func_801DFA38_ovl11
/* 22AC28 801DFA38 00B95021 */  addu       $t2, $a1, $t9
/* 22AC2C 801DFA3C E5480000 */  swc1       $f8, 0x0($t2)
/* 22AC30 801DFA40 8C4B0000 */  lw         $t3, 0x0($v0)
.L801DFA44_ovl9:
/* 22AC34 801DFA44 C7AA0118 */  lwc1       $f10, 0x118($sp)
.L801DFA48_ovl10:
/* 22AC38 801DFA48 3C06800F */  lui        $a2, %hi(D_800EAA60)
/* 22AC3C 801DFA4C 24C6AA60 */  addiu      $a2, $a2, %lo(D_800EAA60)
/* 22AC40 801DFA50 000B6080 */  sll        $t4, $t3, 2
/* 22AC44 801DFA54 00CC6821 */  addu       $t5, $a2, $t4
.L801DFA58_ovl16:
/* 22AC48 801DFA58 E5AA0000 */  swc1       $f10, 0x0($t5)
glabel func_801DFA5C_ovl14
/* 22AC4C 801DFA5C 8C430000 */  lw         $v1, 0x0($v0)
glabel func_801DFA60_ovl15
/* 22AC50 801DFA60 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 22AC54 801DFA64 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DFA68_ovl16:
/* 22AC58 801DFA68 00031880 */  sll        $v1, $v1, 2
/* 22AC5C 801DFA6C 00837021 */  addu       $t6, $a0, $v1
.L801DFA70_ovl9:
/* 22AC60 801DFA70 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 22AC64 801DFA74 00230821 */  addu       $at, $at, $v1
/* 22AC68 801DFA78 E4244010 */  swc1       $f4, %lo(gEntitiesAngleXArray)($at)
glabel func_801DFA7C_ovl12
/* 22AC6C 801DFA7C 8C430000 */  lw         $v1, 0x0($v0)
/* 22AC70 801DFA80 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 22AC74 801DFA84 00031880 */  sll        $v1, $v1, 2
.L801DFA88_ovl11:
/* 22AC78 801DFA88 00A37821 */  addu       $t7, $a1, $v1
/* 22AC7C 801DFA8C C5E60000 */  lwc1       $f6, 0x0($t7)
.L801DFA90_ovl11:
/* 22AC80 801DFA90 00230821 */  addu       $at, $at, $v1
/* 22AC84 801DFA94 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
.L801DFA98_ovl16:
/* 22AC88 801DFA98 8C430000 */  lw         $v1, 0x0($v0)
glabel func_801DFA9C_ovl11
/* 22AC8C 801DFA9C 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
glabel func_801DFAA0_ovl16
/* 22AC90 801DFAA0 00031880 */  sll        $v1, $v1, 2
/* 22AC94 801DFAA4 00C3C021 */  addu       $t8, $a2, $v1
.L801DFAA8_ovl14:
/* 22AC98 801DFAA8 C7080000 */  lwc1       $f8, 0x0($t8)
/* 22AC9C 801DFAAC 00230821 */  addu       $at, $at, $v1
/* 22ACA0 801DFAB0 27BD0128 */  addiu      $sp, $sp, 0x128
.L801DFAB4_ovl9:
/* 22ACA4 801DFAB4 03E00008 */  jr         $ra
/* 22ACA8 801DFAB8 E4284390 */   swc1      $f8, %lo(gEntitiesAngleZArray)($at)
