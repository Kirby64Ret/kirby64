glabel func_80175754_ovl3
/* 0D6194 80175754 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D6198 80175758 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D619C 8017575C 0C054E61 */  jal   func_80153984_ovl3
/* 0D61A0 80175760 AFA40018 */   sw    $a0, 0x18($sp)
/* 0D61A4 80175764 0C0485EE */  jal   func_801217B8_ovl3
/* 0D61A8 80175768 00000000 */   nop   
/* 0D61AC 8017576C 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D61B0 80175770 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D61B4 80175774 8CCE00FC */  lw    $t6, 0xfc($a2)
/* 0D61B8 80175778 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D61BC 8017577C 51C00018 */  beql  $t6, $zero, .L801757E0_ovl3
/* 0D61C0 80175780 8CCB0030 */   lw    $t3, 0x30($a2)
/* 0D61C4 80175784 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D61C8 80175788 44802000 */  mtc1  $zero, $f4
/* 0D61CC 8017578C 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0D61D0 80175790 8C4F0000 */  lw    $t7, ($v0)
/* 0D61D4 80175794 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0D61D8 80175798 3C01800E */  lui   $at, 0x800e
/* 0D61DC 8017579C 000FC080 */  sll   $t8, $t7, 2
/* 0D61E0 801757A0 0098C821 */  addu  $t9, $a0, $t8
/* 0D61E4 801757A4 E7240000 */  swc1  $f4, ($t9)
/* 0D61E8 801757A8 8C430000 */  lw    $v1, ($v0)
/* 0D61EC 801757AC 00031880 */  sll   $v1, $v1, 2
/* 0D61F0 801757B0 00834021 */  addu  $t0, $a0, $v1
/* 0D61F4 801757B4 C5060000 */  lwc1  $f6, ($t0)
/* 0D61F8 801757B8 00230821 */  addu  $at, $at, $v1
/* 0D61FC 801757BC E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0D6200 801757C0 8C490000 */  lw    $t1, ($v0)
/* 0D6204 801757C4 3C018019 */  lui   $at, %hi(D_8019747C) # $at, 0x8019
/* 0D6208 801757C8 C428747C */  lwc1  $f8, %lo(D_8019747C)($at)
/* 0D620C 801757CC 3C01800E */  lui   $at, 0x800e
/* 0D6210 801757D0 00095080 */  sll   $t2, $t1, 2
/* 0D6214 801757D4 002A0821 */  addu  $at, $at, $t2
/* 0D6218 801757D8 E4286850 */  swc1  $f8, 0x6850($at)
/* 0D621C 801757DC 8CCB0030 */  lw    $t3, 0x30($a2)
.L801757E0_ovl3:
/* 0D6220 801757E0 11600068 */  beqz  $t3, .L80175984_ovl3
/* 0D6224 801757E4 00000000 */   nop   
/* 0D6228 801757E8 90CC0008 */  lbu   $t4, 8($a2)
/* 0D622C 801757EC 2404000B */  li    $a0, 11
/* 0D6230 801757F0 11800005 */  beqz  $t4, .L80175808_ovl3
/* 0D6234 801757F4 00000000 */   nop   
/* 0D6238 801757F8 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D623C 801757FC 24050010 */   li    $a1, 16
/* 0D6240 80175800 10000047 */  b     .L80175920_ovl3
/* 0D6244 80175804 00000000 */   nop   
.L80175808_ovl3:
/* 0D6248 80175808 0C05E44C */  jal   func_80179130_ovl3
/* 0D624C 8017580C 00000000 */   nop   
/* 0D6250 80175810 14400043 */  bnez  $v0, .L80175920_ovl3
/* 0D6254 80175814 3C0D8005 */   lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0D6258 80175818 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0D625C 8017581C 3C18800F */  lui   $t8, 0x800f
/* 0D6260 80175820 24040006 */  li    $a0, 6
/* 0D6264 80175824 8DAE0000 */  lw    $t6, ($t5)
/* 0D6268 80175828 3C028013 */  lui   $v0, %hi(D_8012E7C4) # $v0, 0x8013
/* 0D626C 8017582C 000E7880 */  sll   $t7, $t6, 2
/* 0D6270 80175830 030FC021 */  addu  $t8, $t8, $t7
/* 0D6274 80175834 8F188920 */  lw    $t8, -0x76e0($t8)
/* 0D6278 80175838 17000005 */  bnez  $t8, .L80175850_ovl3
/* 0D627C 8017583C 00000000 */   nop   
/* 0D6280 80175840 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D6284 80175844 24050006 */   li    $a1, 6
/* 0D6288 80175848 10000035 */  b     .L80175920_ovl3
/* 0D628C 8017584C 00000000 */   nop   
.L80175850_ovl3:
/* 0D6290 80175850 9042E7C4 */  lbu   $v0, %lo(D_8012E7C4)($v0)
/* 0D6294 80175854 24010001 */  li    $at, 1
/* 0D6298 80175858 3C19800D */  lui   $t9, %hi(D_800D6FE8) # $t9, 0x800d
/* 0D629C 8017585C 10400008 */  beqz  $v0, .L80175880_ovl3
/* 0D62A0 80175860 00000000 */   nop   
/* 0D62A4 80175864 10410014 */  beq   $v0, $at, .L801758B8_ovl3
/* 0D62A8 80175868 3C09800D */   lui   $t1, %hi(D_800D6FE8) # $t1, 0x800d
/* 0D62AC 8017586C 24010002 */  li    $at, 2
/* 0D62B0 80175870 1041001F */  beq   $v0, $at, .L801758F0_ovl3
/* 0D62B4 80175874 3C0B800D */   lui   $t3, %hi(D_800D6FE8) # $t3, 0x800d
/* 0D62B8 80175878 10000029 */  b     .L80175920_ovl3
/* 0D62BC 8017587C 00000000 */   nop   
.L80175880_ovl3:
/* 0D62C0 80175880 97396FE8 */  lhu   $t9, %lo(D_800D6FE8)($t9)
/* 0D62C4 80175884 2405000E */  li    $a1, 14
/* 0D62C8 80175888 00002025 */  move  $a0, $zero
/* 0D62CC 8017588C 33280400 */  andi  $t0, $t9, 0x400
/* 0D62D0 80175890 11000005 */  beqz  $t0, .L801758A8_ovl3
/* 0D62D4 80175894 00000000 */   nop   
/* 0D62D8 80175898 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D62DC 8017589C 24040009 */   li    $a0, 9
/* 0D62E0 801758A0 1000001F */  b     .L80175920_ovl3
/* 0D62E4 801758A4 00000000 */   nop   
.L801758A8_ovl3:
/* 0D62E8 801758A8 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D62EC 801758AC 24050001 */   li    $a1, 1
/* 0D62F0 801758B0 1000001B */  b     .L80175920_ovl3
/* 0D62F4 801758B4 00000000 */   nop   
.L801758B8_ovl3:
/* 0D62F8 801758B8 95296FE8 */  lhu   $t1, %lo(D_800D6FE8)($t1)
/* 0D62FC 801758BC 24050010 */  li    $a1, 16
/* 0D6300 801758C0 00002025 */  move  $a0, $zero
/* 0D6304 801758C4 312A0400 */  andi  $t2, $t1, 0x400
/* 0D6308 801758C8 11400005 */  beqz  $t2, .L801758E0_ovl3
/* 0D630C 801758CC 00000000 */   nop   
/* 0D6310 801758D0 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D6314 801758D4 2404000B */   li    $a0, 11
/* 0D6318 801758D8 10000011 */  b     .L80175920_ovl3
/* 0D631C 801758DC 00000000 */   nop   
.L801758E0_ovl3:
/* 0D6320 801758E0 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D6324 801758E4 24050001 */   li    $a1, 1
/* 0D6328 801758E8 1000000D */  b     .L80175920_ovl3
/* 0D632C 801758EC 00000000 */   nop   
.L801758F0_ovl3:
/* 0D6330 801758F0 956B6FE8 */  lhu   $t3, %lo(D_800D6FE8)($t3)
/* 0D6334 801758F4 24050012 */  li    $a1, 18
/* 0D6338 801758F8 00002025 */  move  $a0, $zero
/* 0D633C 801758FC 316C0400 */  andi  $t4, $t3, 0x400
/* 0D6340 80175900 11800005 */  beqz  $t4, .L80175918_ovl3
/* 0D6344 80175904 00000000 */   nop   
/* 0D6348 80175908 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D634C 8017590C 24040012 */   li    $a0, 18
/* 0D6350 80175910 10000003 */  b     .L80175920_ovl3
/* 0D6354 80175914 00000000 */   nop   
.L80175918_ovl3:
/* 0D6358 80175918 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D635C 8017591C 24050001 */   li    $a1, 1
.L80175920_ovl3:
/* 0D6360 80175920 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D6364 80175924 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D6368 80175928 AC600024 */  sw    $zero, 0x24($v1)
/* 0D636C 8017592C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D6370 80175930 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D6374 80175934 3C04800E */  lui   $a0, %hi(D_800E7CE0) # $a0, 0x800e
/* 0D6378 80175938 24847CE0 */  addiu $a0, %lo(D_800E7CE0) # addiu $a0, $a0, 0x7ce0
/* 0D637C 8017593C 8C4E0000 */  lw    $t6, ($v0)
/* 0D6380 80175940 240D002D */  li    $t5, 45
/* 0D6384 80175944 000E7880 */  sll   $t7, $t6, 2
/* 0D6388 80175948 008FC021 */  addu  $t8, $a0, $t7
/* 0D638C 8017594C AF0D0000 */  sw    $t5, ($t8)
/* 0D6390 80175950 90790004 */  lbu   $t9, 4($v1)
/* 0D6394 80175954 1320000B */  beqz  $t9, .L80175984_ovl3
/* 0D6398 80175958 00000000 */   nop   
/* 0D639C 8017595C 846800D4 */  lh    $t0, 0xd4($v1)
/* 0D63A0 80175960 29010002 */  slti  $at, $t0, 2
/* 0D63A4 80175964 14200007 */  bnez  $at, .L80175984_ovl3
/* 0D63A8 80175968 00000000 */   nop   
/* 0D63AC 8017596C 8C490000 */  lw    $t1, ($v0)
/* 0D63B0 80175970 00095080 */  sll   $t2, $t1, 2
/* 0D63B4 80175974 008A1821 */  addu  $v1, $a0, $t2
/* 0D63B8 80175978 8C6B0000 */  lw    $t3, ($v1)
/* 0D63BC 8017597C 256C001A */  addiu $t4, $t3, 0x1a
/* 0D63C0 80175980 AC6C0000 */  sw    $t4, ($v1)
.L80175984_ovl3:
/* 0D63C4 80175984 0C047B5A */  jal   func_8011ED68_ovl3
/* 0D63C8 80175988 00000000 */   nop   
/* 0D63CC 8017598C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D63D0 80175990 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D63D4 80175994 03E00008 */  jr    $ra
/* 0D63D8 80175998 00000000 */   nop   
