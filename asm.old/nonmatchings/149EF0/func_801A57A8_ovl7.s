glabel func_801A57A8_ovl7
/* 14B818 801A57A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 14B81C 801A57AC AFB00020 */  sw         $s0, 0x20($sp)
/* 14B820 801A57B0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 14B824 801A57B4 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 14B828 801A57B8 8E030000 */  lw         $v1, 0x0($s0)
/* 14B82C 801A57BC AFBF002C */  sw         $ra, 0x2C($sp)
/* 14B830 801A57C0 AFB20028 */  sw         $s2, 0x28($sp)
/* 14B834 801A57C4 AFB10024 */  sw         $s1, 0x24($sp)
/* 14B838 801A57C8 AFA40030 */  sw         $a0, 0x30($sp)
/* 14B83C 801A57CC 8C680000 */  lw         $t0, 0x0($v1)
/* 14B840 801A57D0 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 14B844 801A57D4 3C01801D */  lui        $at, %hi(D_801CDFCC_ovl7)
/* 14B848 801A57D8 00084080 */  sll        $t0, $t0, 2
/* 14B84C 801A57DC 00481021 */  addu       $v0, $v0, $t0
/* 14B850 801A57E0 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 14B854 801A57E4 C42EDFCC */  lwc1       $f14, %lo(D_801CDFCC_ovl7)($at)
/* 14B858 801A57E8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 14B85C 801A57EC 8C4E0088 */  lw         $t6, 0x88($v0)
/* 14B860 801A57F0 3C0F801A */  lui        $t7, %hi(func_801A5DE8_ovl7)
/* 14B864 801A57F4 25EF5DE8 */  addiu      $t7, $t7, %lo(func_801A5DE8_ovl7)
/* 14B868 801A57F8 8DC5000C */  lw         $a1, 0xC($t6)
/* 14B86C 801A57FC 00280821 */  addu       $at, $at, $t0
/* 14B870 801A5800 24180024 */  addiu      $t8, $zero, 0x24
/* 14B874 801A5804 8CB10000 */  lw         $s1, 0x0($a1)
/* 14B878 801A5808 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 14B87C 801A580C 8C790000 */  lw         $t9, 0x0($v1)
/* 14B880 801A5810 3C01800E */  lui        $at, %hi(D_800DDA90)
/* 14B884 801A5814 44806000 */  mtc1       $zero, $f12
/* 14B888 801A5818 00195080 */  sll        $t2, $t9, 2
/* 14B88C 801A581C 002A0821 */  addu       $at, $at, $t2
/* 14B890 801A5820 AC38DA90 */  sw         $t8, %lo(D_800DDA90)($at)
/* 14B894 801A5824 AC400048 */  sw         $zero, 0x48($v0)
/* 14B898 801A5828 AC400098 */  sw         $zero, 0x98($v0)
/* 14B89C 801A582C 8E030000 */  lw         $v1, 0x0($s0)
/* 14B8A0 801A5830 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 14B8A4 801A5834 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 14B8A8 801A5838 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14B8AC 801A583C 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 14B8B0 801A5840 3C07800E */  lui        $a3, %hi(D_800E3910)
/* 14B8B4 801A5844 000B6080 */  sll        $t4, $t3, 2
/* 14B8B8 801A5848 002C0821 */  addu       $at, $at, $t4
/* 14B8BC 801A584C AC20C2E0 */  sw         $zero, %lo(D_800EC2E0)($at)
/* 14B8C0 801A5850 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14B8C4 801A5854 3C01800F */  lui        $at, %hi(D_800EC4A0)
/* 14B8C8 801A5858 24E73910 */  addiu      $a3, $a3, %lo(D_800E3910)
/* 14B8CC 801A585C 000D7080 */  sll        $t6, $t5, 2
/* 14B8D0 801A5860 002E0821 */  addu       $at, $at, $t6
/* 14B8D4 801A5864 AC20C4A0 */  sw         $zero, %lo(D_800EC4A0)($at)
/* 14B8D8 801A5868 8C6F0000 */  lw         $t7, 0x0($v1)
/* 14B8DC 801A586C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 14B8E0 801A5870 3C09800E */  lui        $t1, %hi(D_800E3E50)
/* 14B8E4 801A5874 000FC880 */  sll        $t9, $t7, 2
/* 14B8E8 801A5878 00D9C021 */  addu       $t8, $a2, $t9
/* 14B8EC 801A587C E70C0000 */  swc1       $f12, 0x0($t8)
/* 14B8F0 801A5880 8C680000 */  lw         $t0, 0x0($v1)
/* 14B8F4 801A5884 25293E50 */  addiu      $t1, $t1, %lo(D_800E3E50)
/* 14B8F8 801A5888 00084080 */  sll        $t0, $t0, 2
/* 14B8FC 801A588C 00C85021 */  addu       $t2, $a2, $t0
/* 14B900 801A5890 C5440000 */  lwc1       $f4, 0x0($t2)
/* 14B904 801A5894 00280821 */  addu       $at, $at, $t0
/* 14B908 801A5898 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 14B90C 801A589C 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14B910 801A58A0 3C01800E */  lui        $at, %hi(D_800E6850)
/* 14B914 801A58A4 000B6080 */  sll        $t4, $t3, 2
/* 14B918 801A58A8 002C0821 */  addu       $at, $at, $t4
/* 14B91C 801A58AC E42E6850 */  swc1       $f14, %lo(D_800E6850)($at)
/* 14B920 801A58B0 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14B924 801A58B4 3C01800E */  lui        $at, %hi(D_800E3750)
/* 14B928 801A58B8 000D7080 */  sll        $t6, $t5, 2
/* 14B92C 801A58BC 00EE7821 */  addu       $t7, $a3, $t6
/* 14B930 801A58C0 E5EC0000 */  swc1       $f12, 0x0($t7)
/* 14B934 801A58C4 8C680000 */  lw         $t0, 0x0($v1)
/* 14B938 801A58C8 00084080 */  sll        $t0, $t0, 2
/* 14B93C 801A58CC 00E8C821 */  addu       $t9, $a3, $t0
/* 14B940 801A58D0 C7200000 */  lwc1       $f0, 0x0($t9)
/* 14B944 801A58D4 00280821 */  addu       $at, $at, $t0
/* 14B948 801A58D8 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 14B94C 801A58DC 8C780000 */  lw         $t8, 0x0($v1)
/* 14B950 801A58E0 3C01800E */  lui        $at, %hi(D_800E3590)
/* 14B954 801A58E4 00185080 */  sll        $t2, $t8, 2
/* 14B958 801A58E8 002A0821 */  addu       $at, $at, $t2
/* 14B95C 801A58EC E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 14B960 801A58F0 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14B964 801A58F4 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 14B968 801A58F8 000B6080 */  sll        $t4, $t3, 2
/* 14B96C 801A58FC 002C0821 */  addu       $at, $at, $t4
/* 14B970 801A5900 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 14B974 801A5904 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14B978 801A5908 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14B97C 801A590C 000D7080 */  sll        $t6, $t5, 2
/* 14B980 801A5910 002E0821 */  addu       $at, $at, $t6
/* 14B984 801A5914 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 14B988 801A5918 8C6F0000 */  lw         $t7, 0x0($v1)
/* 14B98C 801A591C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 14B990 801A5920 000FC880 */  sll        $t9, $t7, 2
/* 14B994 801A5924 00390821 */  addu       $at, $at, $t9
/* 14B998 801A5928 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 14B99C 801A592C 8C780000 */  lw         $t8, 0x0($v1)
/* 14B9A0 801A5930 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 14B9A4 801A5934 00185080 */  sll        $t2, $t8, 2
/* 14B9A8 801A5938 012A5821 */  addu       $t3, $t1, $t2
/* 14B9AC 801A593C E56E0000 */  swc1       $f14, 0x0($t3)
/* 14B9B0 801A5940 8C680000 */  lw         $t0, 0x0($v1)
/* 14B9B4 801A5944 00084080 */  sll        $t0, $t0, 2
/* 14B9B8 801A5948 01286021 */  addu       $t4, $t1, $t0
/* 14B9BC 801A594C C5820000 */  lwc1       $f2, 0x0($t4)
/* 14B9C0 801A5950 00280821 */  addu       $at, $at, $t0
/* 14B9C4 801A5954 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 14B9C8 801A5958 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14B9CC 801A595C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14B9D0 801A5960 000D7080 */  sll        $t6, $t5, 2
/* 14B9D4 801A5964 002E0821 */  addu       $at, $at, $t6
/* 14B9D8 801A5968 0C069984 */  jal        func_801A6610_ovl7
/* 14B9DC 801A596C E4223AD0 */   swc1      $f2, %lo(D_800E3AD0)($at)
/* 14B9E0 801A5970 0C02BD02 */  jal        func_800AF408
/* 14B9E4 801A5974 00000000 */   nop
/* 14B9E8 801A5978 8E030000 */  lw         $v1, 0x0($s0)
/* 14B9EC 801A597C 3C12800F */  lui        $s2, %hi(D_800E9720)
/* 14B9F0 801A5980 26529720 */  addiu      $s2, $s2, %lo(D_800E9720)
/* 14B9F4 801A5984 8C790000 */  lw         $t9, 0x0($v1)
/* 14B9F8 801A5988 240F00B4 */  addiu      $t7, $zero, 0xB4
/* 14B9FC 801A598C 3C01800F */  lui        $at, %hi(D_800EA520)
/* 14BA00 801A5990 0019C080 */  sll        $t8, $t9, 2
/* 14BA04 801A5994 02585021 */  addu       $t2, $s2, $t8
/* 14BA08 801A5998 AD4F0000 */  sw         $t7, 0x0($t2)
/* 14BA0C 801A599C 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14BA10 801A59A0 24040007 */  addiu      $a0, $zero, 0x7
/* 14BA14 801A59A4 000B6080 */  sll        $t4, $t3, 2
/* 14BA18 801A59A8 002C0821 */  addu       $at, $at, $t4
/* 14BA1C 801A59AC AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* 14BA20 801A59B0 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14BA24 801A59B4 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 14BA28 801A59B8 000D7080 */  sll        $t6, $t5, 2
/* 14BA2C 801A59BC 002E0821 */  addu       $at, $at, $t6
/* 14BA30 801A59C0 0C06B9F8 */  jal        func_801AE7E0_ovl7
/* 14BA34 801A59C4 AC2083E0 */   sw        $zero, %lo(D_800E83E0)($at)
/* 14BA38 801A59C8 8E030000 */  lw         $v1, 0x0($s0)
/* 14BA3C 801A59CC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 14BA40 801A59D0 3C04801C */  lui        $a0, %hi(D_801C5360_ovl7)
/* 14BA44 801A59D4 8C790000 */  lw         $t9, 0x0($v1)
/* 14BA48 801A59D8 24845360 */  addiu      $a0, $a0, %lo(D_801C5360_ovl7)
/* 14BA4C 801A59DC 0019C080 */  sll        $t8, $t9, 2
/* 14BA50 801A59E0 00380821 */  addu       $at, $at, $t8
/* 14BA54 801A59E4 AC229C60 */  sw         $v0, %lo(D_800E9C60)($at)
/* 14BA58 801A59E8 8C6F0000 */  lw         $t7, 0x0($v1)
/* 14BA5C 801A59EC C6260010 */  lwc1       $f6, 0x10($s1)
/* 14BA60 801A59F0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 14BA64 801A59F4 000F5080 */  sll        $t2, $t7, 2
/* 14BA68 801A59F8 002A0821 */  addu       $at, $at, $t2
/* 14BA6C 801A59FC E4264550 */  swc1       $f6, %lo(gEntitiesScaleXArray)($at)
/* 14BA70 801A5A00 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14BA74 801A5A04 C6280010 */  lwc1       $f8, 0x10($s1)
/* 14BA78 801A5A08 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 14BA7C 801A5A0C 000B6080 */  sll        $t4, $t3, 2
/* 14BA80 801A5A10 002C0821 */  addu       $at, $at, $t4
/* 14BA84 801A5A14 E4284710 */  swc1       $f8, %lo(gEntitiesScaleYArray)($at)
/* 14BA88 801A5A18 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14BA8C 801A5A1C C62A0010 */  lwc1       $f10, 0x10($s1)
/* 14BA90 801A5A20 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 14BA94 801A5A24 000D7080 */  sll        $t6, $t5, 2
/* 14BA98 801A5A28 002E0821 */  addu       $at, $at, $t6
/* 14BA9C 801A5A2C 0C066220 */  jal        func_80198880_ovl7
/* 14BAA0 801A5A30 E42A48D0 */   swc1      $f10, %lo(gEntitiesScaleZArray)($at)
/* 14BAA4 801A5A34 8E030000 */  lw         $v1, 0x0($s0)
/* 14BAA8 801A5A38 3C01800F */  lui        $at, %hi(D_800E8920)
/* 14BAAC 801A5A3C 3C11800F */  lui        $s1, %hi(D_800E9E20)
/* 14BAB0 801A5A40 8C790000 */  lw         $t9, 0x0($v1)
/* 14BAB4 801A5A44 26319E20 */  addiu      $s1, $s1, %lo(D_800E9E20)
/* 14BAB8 801A5A48 240400C1 */  addiu      $a0, $zero, 0xC1
/* 14BABC 801A5A4C 0019C080 */  sll        $t8, $t9, 2
/* 14BAC0 801A5A50 00380821 */  addu       $at, $at, $t8
/* 14BAC4 801A5A54 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 14BAC8 801A5A58 8C6F0000 */  lw         $t7, 0x0($v1)
/* 14BACC 801A5A5C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 14BAD0 801A5A60 44818000 */  mtc1       $at, $f16
/* 14BAD4 801A5A64 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14BAD8 801A5A68 000F5080 */  sll        $t2, $t7, 2
/* 14BADC 801A5A6C 002A0821 */  addu       $at, $at, $t2
/* 14BAE0 801A5A70 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* 14BAE4 801A5A74 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14BAE8 801A5A78 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 14BAEC 801A5A7C 44819000 */  mtc1       $at, $f18
/* 14BAF0 801A5A80 3C01800E */  lui        $at, %hi(D_800E3750)
/* 14BAF4 801A5A84 000B6080 */  sll        $t4, $t3, 2
/* 14BAF8 801A5A88 002C0821 */  addu       $at, $at, $t4
/* 14BAFC 801A5A8C E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
/* 14BB00 801A5A90 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14BB04 801A5A94 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 14BB08 801A5A98 000D7080 */  sll        $t6, $t5, 2
/* 14BB0C 801A5A9C 022EC821 */  addu       $t9, $s1, $t6
/* 14BB10 801A5AA0 AF200000 */  sw         $zero, 0x0($t9)
/* 14BB14 801A5AA4 8C780000 */  lw         $t8, 0x0($v1)
/* 14BB18 801A5AA8 00187880 */  sll        $t7, $t8, 2
/* 14BB1C 801A5AAC 002F0821 */  addu       $at, $at, $t7
/* 14BB20 801A5AB0 0C029D9E */  jal        play_sound
/* 14BB24 801A5AB4 AC209FE0 */   sw        $zero, %lo(D_800E9FE0)($at)
/* 14BB28 801A5AB8 8E030000 */  lw         $v1, 0x0($s0)
/* 14BB2C 801A5ABC 3C0A800F */  lui        $t2, %hi(D_800E8E60)
/* 14BB30 801A5AC0 24010001 */  addiu      $at, $zero, 0x1
/* 14BB34 801A5AC4 8C680000 */  lw         $t0, 0x0($v1)
/* 14BB38 801A5AC8 3C02800F */  lui        $v0, %hi(D_800E9C60)
/* 14BB3C 801A5ACC 00084080 */  sll        $t0, $t0, 2
/* 14BB40 801A5AD0 01485021 */  addu       $t2, $t2, $t0
/* 14BB44 801A5AD4 8D4A8E60 */  lw         $t2, %lo(D_800E8E60)($t2)
/* 14BB48 801A5AD8 00481021 */  addu       $v0, $v0, $t0
/* 14BB4C 801A5ADC 15410022 */  bne        $t2, $at, .L801A5B68_ovl7
/* 14BB50 801A5AE0 00000000 */   nop
/* 14BB54 801A5AE4 8C429C60 */  lw         $v0, %lo(D_800E9C60)($v0)
/* 14BB58 801A5AE8 3C0B800F */  lui        $t3, %hi(D_800E9AA0)
/* 14BB5C 801A5AEC 3C0C800E */  lui        $t4, %hi(D_800DE350)
/* 14BB60 801A5AF0 00021080 */  sll        $v0, $v0, 2
/* 14BB64 801A5AF4 01625821 */  addu       $t3, $t3, $v0
/* 14BB68 801A5AF8 8D6B9AA0 */  lw         $t3, %lo(D_800E9AA0)($t3)
/* 14BB6C 801A5AFC 01826021 */  addu       $t4, $t4, $v0
/* 14BB70 801A5B00 1560009E */  bnez       $t3, .L801A5D7C_ovl7
/* 14BB74 801A5B04 00000000 */   nop
/* 14BB78 801A5B08 8D8CE350 */  lw         $t4, %lo(D_800DE350)($t4)
/* 14BB7C 801A5B0C 1180009B */  beqz       $t4, .L801A5D7C_ovl7
/* 14BB80 801A5B10 00000000 */   nop
.L801A5B14_ovl7:
/* 14BB84 801A5B14 0C002DAF */  jal        finish_current_thread
/* 14BB88 801A5B18 24040001 */   addiu     $a0, $zero, 0x1
/* 14BB8C 801A5B1C 8E030000 */  lw         $v1, 0x0($s0)
/* 14BB90 801A5B20 3C02800F */  lui        $v0, %hi(D_800E9C60)
/* 14BB94 801A5B24 3C0D800F */  lui        $t5, %hi(D_800E9AA0)
/* 14BB98 801A5B28 8C680000 */  lw         $t0, 0x0($v1)
/* 14BB9C 801A5B2C 3C0E800E */  lui        $t6, %hi(D_800DE350)
/* 14BBA0 801A5B30 00084080 */  sll        $t0, $t0, 2
/* 14BBA4 801A5B34 00481021 */  addu       $v0, $v0, $t0
/* 14BBA8 801A5B38 8C429C60 */  lw         $v0, %lo(D_800E9C60)($v0)
/* 14BBAC 801A5B3C 00021080 */  sll        $v0, $v0, 2
/* 14BBB0 801A5B40 01A26821 */  addu       $t5, $t5, $v0
/* 14BBB4 801A5B44 8DAD9AA0 */  lw         $t5, %lo(D_800E9AA0)($t5)
/* 14BBB8 801A5B48 01C27021 */  addu       $t6, $t6, $v0
/* 14BBBC 801A5B4C 15A0008B */  bnez       $t5, .L801A5D7C_ovl7
/* 14BBC0 801A5B50 00000000 */   nop
/* 14BBC4 801A5B54 8DCEE350 */  lw         $t6, %lo(D_800DE350)($t6)
/* 14BBC8 801A5B58 15C0FFEE */  bnez       $t6, .L801A5B14_ovl7
/* 14BBCC 801A5B5C 00000000 */   nop
/* 14BBD0 801A5B60 10000086 */  b          .L801A5D7C_ovl7
/* 14BBD4 801A5B64 00000000 */   nop
.L801A5B68_ovl7:
/* 14BBD8 801A5B68 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14BBDC 801A5B6C 00280821 */  addu       $at, $at, $t0
/* 14BBE0 801A5B70 C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
/* 14BBE4 801A5B74 3C01800F */  lui        $at, %hi(D_800EC9E4)
/* 14BBE8 801A5B78 C426C9E4 */  lwc1       $f6, %lo(D_800EC9E4)($at)
/* 14BBEC 801A5B7C 44807000 */  mtc1       $zero, $f14
/* 14BBF0 801A5B80 3C01800E */  lui        $at, %hi(D_800E3750)
/* 14BBF4 801A5B84 46062000 */  add.s      $f0, $f4, $f6
/* 14BBF8 801A5B88 00280821 */  addu       $at, $at, $t0
/* 14BBFC 801A5B8C 0228C821 */  addu       $t9, $s1, $t0
/* 14BC00 801A5B90 460E003C */  c.lt.s     $f0, $f14
/* 14BC04 801A5B94 00000000 */  nop
/* 14BC08 801A5B98 45020004 */  bc1fl      .L801A5BAC_ovl7
/* 14BC0C 801A5B9C 46000306 */   mov.s     $f12, $f0
/* 14BC10 801A5BA0 10000002 */  b          .L801A5BAC_ovl7
/* 14BC14 801A5BA4 46000307 */   neg.s     $f12, $f0
/* 14BC18 801A5BA8 46000306 */  mov.s      $f12, $f0
.L801A5BAC_ovl7:
/* 14BC1C 801A5BAC C4203750 */  lwc1       $f0, %lo(D_800E3750)($at)
/* 14BC20 801A5BB0 460E003C */  c.lt.s     $f0, $f14
/* 14BC24 801A5BB4 00000000 */  nop
/* 14BC28 801A5BB8 45020004 */  bc1fl      .L801A5BCC_ovl7
/* 14BC2C 801A5BBC 46000086 */   mov.s     $f2, $f0
/* 14BC30 801A5BC0 10000002 */  b          .L801A5BCC_ovl7
/* 14BC34 801A5BC4 46000087 */   neg.s     $f2, $f0
/* 14BC38 801A5BC8 46000086 */  mov.s      $f2, $f0
.L801A5BCC_ovl7:
/* 14BC3C 801A5BCC 460C103C */  c.lt.s     $f2, $f12
/* 14BC40 801A5BD0 00000000 */  nop
/* 14BC44 801A5BD4 45000029 */  bc1f       .L801A5C7C_ovl7
/* 14BC48 801A5BD8 00000000 */   nop
/* 14BC4C 801A5BDC 8F380000 */  lw         $t8, 0x0($t9)
/* 14BC50 801A5BE0 17000026 */  bnez       $t8, .L801A5C7C_ovl7
/* 14BC54 801A5BE4 00000000 */   nop
.L801A5BE8_ovl7:
/* 14BC58 801A5BE8 0C002DAF */  jal        finish_current_thread
/* 14BC5C 801A5BEC 24040001 */   addiu     $a0, $zero, 0x1
/* 14BC60 801A5BF0 8E0F0000 */  lw         $t7, 0x0($s0)
/* 14BC64 801A5BF4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14BC68 801A5BF8 44807000 */  mtc1       $zero, $f14
/* 14BC6C 801A5BFC 8DE80000 */  lw         $t0, 0x0($t7)
/* 14BC70 801A5C00 00084080 */  sll        $t0, $t0, 2
/* 14BC74 801A5C04 00280821 */  addu       $at, $at, $t0
/* 14BC78 801A5C08 C4283210 */  lwc1       $f8, %lo(D_800E3210)($at)
/* 14BC7C 801A5C0C 3C01800F */  lui        $at, %hi(D_800EC9E4)
/* 14BC80 801A5C10 C42AC9E4 */  lwc1       $f10, %lo(D_800EC9E4)($at)
/* 14BC84 801A5C14 3C01800E */  lui        $at, %hi(D_800E3750)
/* 14BC88 801A5C18 00280821 */  addu       $at, $at, $t0
/* 14BC8C 801A5C1C 460A4000 */  add.s      $f0, $f8, $f10
/* 14BC90 801A5C20 02285021 */  addu       $t2, $s1, $t0
/* 14BC94 801A5C24 460E003C */  c.lt.s     $f0, $f14
/* 14BC98 801A5C28 00000000 */  nop
/* 14BC9C 801A5C2C 45020004 */  bc1fl      .L801A5C40_ovl7
/* 14BCA0 801A5C30 46000306 */   mov.s     $f12, $f0
/* 14BCA4 801A5C34 10000002 */  b          .L801A5C40_ovl7
/* 14BCA8 801A5C38 46000307 */   neg.s     $f12, $f0
/* 14BCAC 801A5C3C 46000306 */  mov.s      $f12, $f0
.L801A5C40_ovl7:
/* 14BCB0 801A5C40 C4203750 */  lwc1       $f0, %lo(D_800E3750)($at)
/* 14BCB4 801A5C44 460E003C */  c.lt.s     $f0, $f14
/* 14BCB8 801A5C48 00000000 */  nop
/* 14BCBC 801A5C4C 45020004 */  bc1fl      .L801A5C60_ovl7
/* 14BCC0 801A5C50 46000086 */   mov.s     $f2, $f0
/* 14BCC4 801A5C54 10000002 */  b          .L801A5C60_ovl7
/* 14BCC8 801A5C58 46000087 */   neg.s     $f2, $f0
/* 14BCCC 801A5C5C 46000086 */  mov.s      $f2, $f0
.L801A5C60_ovl7:
/* 14BCD0 801A5C60 460C103C */  c.lt.s     $f2, $f12
/* 14BCD4 801A5C64 00000000 */  nop
/* 14BCD8 801A5C68 45000004 */  bc1f       .L801A5C7C_ovl7
/* 14BCDC 801A5C6C 00000000 */   nop
/* 14BCE0 801A5C70 8D4B0000 */  lw         $t3, 0x0($t2)
/* 14BCE4 801A5C74 1160FFDC */  beqz       $t3, .L801A5BE8_ovl7
/* 14BCE8 801A5C78 00000000 */   nop
.L801A5C7C_ovl7:
/* 14BCEC 801A5C7C 0C02CD48 */  jal        func_800B3520
/* 14BCF0 801A5C80 00000000 */   nop
/* 14BCF4 801A5C84 8E030000 */  lw         $v1, 0x0($s0)
/* 14BCF8 801A5C88 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 14BCFC 801A5C8C 240C0001 */  addiu      $t4, $zero, 0x1
/* 14BD00 801A5C90 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14BD04 801A5C94 3C18800F */  lui        $t8, %hi(D_800EC4A0)
/* 14BD08 801A5C98 000D7080 */  sll        $t6, $t5, 2
/* 14BD0C 801A5C9C 002E0821 */  addu       $at, $at, $t6
/* 14BD10 801A5CA0 AC2C9FE0 */  sw         $t4, %lo(D_800E9FE0)($at)
/* 14BD14 801A5CA4 8C680000 */  lw         $t0, 0x0($v1)
/* 14BD18 801A5CA8 00084080 */  sll        $t0, $t0, 2
/* 14BD1C 801A5CAC 0228C821 */  addu       $t9, $s1, $t0
/* 14BD20 801A5CB0 8F220000 */  lw         $v0, 0x0($t9)
/* 14BD24 801A5CB4 0308C021 */  addu       $t8, $t8, $t0
/* 14BD28 801A5CB8 14400030 */  bnez       $v0, .L801A5D7C_ovl7
/* 14BD2C 801A5CBC 00000000 */   nop
/* 14BD30 801A5CC0 8F18C4A0 */  lw         $t8, %lo(D_800EC4A0)($t8)
/* 14BD34 801A5CC4 02487821 */  addu       $t7, $s2, $t0
/* 14BD38 801A5CC8 5700001F */  bnel       $t8, $zero, .L801A5D48_ovl7
/* 14BD3C 801A5CCC 02486821 */   addu      $t5, $s2, $t0
/* 14BD40 801A5CD0 8DEA0000 */  lw         $t2, 0x0($t7)
/* 14BD44 801A5CD4 5140001C */  beql       $t2, $zero, .L801A5D48_ovl7
/* 14BD48 801A5CD8 02486821 */   addu      $t5, $s2, $t0
/* 14BD4C 801A5CDC 5440001A */  bnel       $v0, $zero, .L801A5D48_ovl7
/* 14BD50 801A5CE0 02486821 */   addu      $t5, $s2, $t0
.L801A5CE4_ovl7:
/* 14BD54 801A5CE4 0C002DAF */  jal        finish_current_thread
/* 14BD58 801A5CE8 24040001 */   addiu     $a0, $zero, 0x1
/* 14BD5C 801A5CEC 8E030000 */  lw         $v1, 0x0($s0)
/* 14BD60 801A5CF0 3C19800F */  lui        $t9, %hi(D_800EC4A0)
/* 14BD64 801A5CF4 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14BD68 801A5CF8 000B6880 */  sll        $t5, $t3, 2
/* 14BD6C 801A5CFC 024D1021 */  addu       $v0, $s2, $t5
/* 14BD70 801A5D00 8C4C0000 */  lw         $t4, 0x0($v0)
/* 14BD74 801A5D04 258EFFFF */  addiu      $t6, $t4, -0x1
/* 14BD78 801A5D08 AC4E0000 */  sw         $t6, 0x0($v0)
/* 14BD7C 801A5D0C 8C680000 */  lw         $t0, 0x0($v1)
/* 14BD80 801A5D10 00084080 */  sll        $t0, $t0, 2
/* 14BD84 801A5D14 0328C821 */  addu       $t9, $t9, $t0
/* 14BD88 801A5D18 8F39C4A0 */  lw         $t9, %lo(D_800EC4A0)($t9)
/* 14BD8C 801A5D1C 0248C021 */  addu       $t8, $s2, $t0
/* 14BD90 801A5D20 02285021 */  addu       $t2, $s1, $t0
/* 14BD94 801A5D24 57200008 */  bnel       $t9, $zero, .L801A5D48_ovl7
/* 14BD98 801A5D28 02486821 */   addu      $t5, $s2, $t0
/* 14BD9C 801A5D2C 8F0F0000 */  lw         $t7, 0x0($t8)
/* 14BDA0 801A5D30 51E00005 */  beql       $t7, $zero, .L801A5D48_ovl7
/* 14BDA4 801A5D34 02486821 */   addu      $t5, $s2, $t0
/* 14BDA8 801A5D38 8D4B0000 */  lw         $t3, 0x0($t2)
/* 14BDAC 801A5D3C 1160FFE9 */  beqz       $t3, .L801A5CE4_ovl7
/* 14BDB0 801A5D40 00000000 */   nop
/* 14BDB4 801A5D44 02486821 */  addu       $t5, $s2, $t0
.L801A5D48_ovl7:
/* 14BDB8 801A5D48 8DAC0000 */  lw         $t4, 0x0($t5)
/* 14BDBC 801A5D4C 02287021 */  addu       $t6, $s1, $t0
/* 14BDC0 801A5D50 1180000A */  beqz       $t4, .L801A5D7C_ovl7
/* 14BDC4 801A5D54 00000000 */   nop
/* 14BDC8 801A5D58 8DD90000 */  lw         $t9, 0x0($t6)
/* 14BDCC 801A5D5C 17200007 */  bnez       $t9, .L801A5D7C_ovl7
/* 14BDD0 801A5D60 00000000 */   nop
/* 14BDD4 801A5D64 0C06937F */  jal        func_801A4DFC_ovl7
/* 14BDD8 801A5D68 8FA40030 */   lw        $a0, 0x30($sp)
/* 14BDDC 801A5D6C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 14BDE0 801A5D70 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 14BDE4 801A5D74 8C680000 */  lw         $t0, 0x0($v1)
/* 14BDE8 801A5D78 00084080 */  sll        $t0, $t0, 2
.L801A5D7C_ovl7:
/* 14BDEC 801A5D7C 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 14BDF0 801A5D80 00280821 */  addu       $at, $at, $t0
/* 14BDF4 801A5D84 24180001 */  addiu      $t8, $zero, 0x1
/* 14BDF8 801A5D88 AC38C2E0 */  sw         $t8, %lo(D_800EC2E0)($at)
/* 14BDFC 801A5D8C 8C680000 */  lw         $t0, 0x0($v1)
/* 14BE00 801A5D90 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 14BE04 801A5D94 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 14BE08 801A5D98 00084080 */  sll        $t0, $t0, 2
/* 14BE0C 801A5D9C 00280821 */  addu       $at, $at, $t0
/* 14BE10 801A5DA0 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 14BE14 801A5DA4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 14BE18 801A5DA8 00280821 */  addu       $at, $at, $t0
/* 14BE1C 801A5DAC C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 14BE20 801A5DB0 00E83821 */  addu       $a3, $a3, $t0
/* 14BE24 801A5DB4 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 14BE28 801A5DB8 24040003 */  addiu      $a0, $zero, 0x3
/* 14BE2C 801A5DBC 24050002 */  addiu      $a1, $zero, 0x2
/* 14BE30 801A5DC0 2406006F */  addiu      $a2, $zero, 0x6F
/* 14BE34 801A5DC4 E7B00010 */  swc1       $f16, 0x10($sp)
/* 14BE38 801A5DC8 0C029FDD */  jal        func_800A7F74
/* 14BE3C 801A5DCC E7B20014 */   swc1      $f18, 0x14($sp)
/* 14BE40 801A5DD0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 14BE44 801A5DD4 8FB00020 */  lw         $s0, 0x20($sp)
/* 14BE48 801A5DD8 8FB10024 */  lw         $s1, 0x24($sp)
/* 14BE4C 801A5DDC 8FB20028 */  lw         $s2, 0x28($sp)
/* 14BE50 801A5DE0 03E00008 */  jr         $ra
/* 14BE54 801A5DE4 27BD0030 */   addiu     $sp, $sp, 0x30
