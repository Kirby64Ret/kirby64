glabel func_800FC804
/* 085274 800FC804 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 085278 800FC808 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08527C 800FC80C 0C03EE6D */  jal   func_800FB9B4
/* 085280 800FC810 AFA40018 */   sw    $a0, 0x18($sp)
/* 085284 800FC814 3C0E800D */  lui   $t6, %hi(D_800D7088) # $t6, 0x800d
/* 085288 800FC818 8DCE7088 */  lw    $t6, %lo(D_800D7088)($t6)
/* 08528C 800FC81C 8FA40018 */  lw    $a0, 0x18($sp)
/* 085290 800FC820 31CF00FF */  andi  $t7, $t6, 0xff
/* 085294 800FC824 2DE1000E */  sltiu $at, $t7, 0xe
/* 085298 800FC828 1020005D */  beqz  $at, .L800FC9A0_ovl2
/* 08529C 800FC82C 000F7880 */   sll   $t7, $t7, 2
/* 0852A0 800FC830 3C018013 */  lui   $at, %hi(jtbl_80128858)
/* 0852A4 800FC834 002F0821 */  addu  $at, $at, $t7
/* 0852A8 800FC838 8C2F8858 */  lw    $t7, %lo(jtbl_80128858)($at)
/* 0852AC 800FC83C 01E00008 */  jr    $t7
/* 0852B0 800FC840 00000000 */   nop   
.L800FC844_ovl2:
/* 0852B4 800FC844 0C03EEA6 */  jal   func_800FBA98
/* 0852B8 800FC848 00000000 */   nop   
/* 0852BC 800FC84C 10000057 */  b     .L800FC9AC_ovl2
/* 0852C0 800FC850 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FC854_ovl2:
/* 0852C4 800FC854 0C03F0F6 */  jal   func_800FC3D8
/* 0852C8 800FC858 00000000 */   nop   
/* 0852CC 800FC85C 10000053 */  b     .L800FC9AC_ovl2
/* 0852D0 800FC860 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FC864_ovl2:
/* 0852D4 800FC864 0C03F140 */  jal   func_800FC500
/* 0852D8 800FC868 00000000 */   nop   
/* 0852DC 800FC86C 1000004F */  b     .L800FC9AC_ovl2
/* 0852E0 800FC870 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FC874_ovl2:
/* 0852E4 800FC874 0C03EF7A */  jal   func_800FBDE8
/* 0852E8 800FC878 00000000 */   nop   
/* 0852EC 800FC87C 1000004B */  b     .L800FC9AC_ovl2
/* 0852F0 800FC880 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FC884_ovl2:
/* 0852F4 800FC884 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0852F8 800FC888 4459F800 */  cfc1  $t9, $31
/* 0852FC 800FC88C 24080001 */  li    $t0, 1
/* 085300 800FC890 44C8F800 */  ctc1  $t0, $31
/* 085304 800FC894 C4246B10 */  lwc1  $f4, %lo(D_800D6B10)($at)
/* 085308 800FC898 3C02800D */  lui   $v0, %hi(D_800D708C) # $v0, 0x800d
/* 08530C 800FC89C 2442708C */  addiu $v0, %lo(D_800D708C) # addiu $v0, $v0, 0x708c
/* 085310 800FC8A0 460021A4 */  cvt.w.s $f6, $f4
/* 085314 800FC8A4 3C0D800D */  lui   $t5, %hi(D_800D7B20) # $t5, 0x800d
/* 085318 800FC8A8 8C580000 */  lw    $t8, ($v0)
/* 08531C 800FC8AC 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 085320 800FC8B0 4448F800 */  cfc1  $t0, $31
/* 085324 800FC8B4 3C0B800D */  lui   $t3, %hi(D_800D799C) # $t3, 0x800d
/* 085328 800FC8B8 25AD7B20 */  addiu $t5, %lo(D_800D7B20) # addiu $t5, $t5, 0x7b20
/* 08532C 800FC8BC 31080078 */  andi  $t0, $t0, 0x78
/* 085330 800FC8C0 11000012 */  beqz  $t0, .L800FC90C_ovl2
/* 085334 800FC8C4 3C0C800D */   lui   $t4, %hi(D_800D7B38) # $t4, 0x800d
/* 085338 800FC8C8 44813000 */  mtc1  $at, $f6
/* 08533C 800FC8CC 24080001 */  li    $t0, 1
/* 085340 800FC8D0 46062181 */  sub.s $f6, $f4, $f6
/* 085344 800FC8D4 44C8F800 */  ctc1  $t0, $31
/* 085348 800FC8D8 00000000 */  nop   
/* 08534C 800FC8DC 460031A4 */  cvt.w.s $f6, $f6
/* 085350 800FC8E0 4448F800 */  cfc1  $t0, $31
/* 085354 800FC8E4 00000000 */  nop   
/* 085358 800FC8E8 31080078 */  andi  $t0, $t0, 0x78
/* 08535C 800FC8EC 15000005 */  bnez  $t0, .L800FC904_ovl2
/* 085360 800FC8F0 00000000 */   nop   
/* 085364 800FC8F4 44083000 */  mfc1  $t0, $f6
/* 085368 800FC8F8 3C018000 */  lui   $at, 0x8000
/* 08536C 800FC8FC 10000007 */  b     .L800FC91C_ovl2
/* 085370 800FC900 01014025 */   or    $t0, $t0, $at
.L800FC904_ovl2:
/* 085374 800FC904 10000005 */  b     .L800FC91C_ovl2
/* 085378 800FC908 2408FFFF */   li    $t0, -1
.L800FC90C_ovl2:
/* 08537C 800FC90C 44083000 */  mfc1  $t0, $f6
/* 085380 800FC910 00000000 */  nop   
/* 085384 800FC914 0500FFFB */  bltz  $t0, .L800FC904_ovl2
/* 085388 800FC918 00000000 */   nop   
.L800FC91C_ovl2:
/* 08538C 800FC91C 44D9F800 */  ctc1  $t9, $31
/* 085390 800FC920 03084823 */  subu  $t1, $t8, $t0
/* 085394 800FC924 05200008 */  bltz  $t1, .L800FC948_ovl2
/* 085398 800FC928 AC490000 */   sw    $t1, ($v0)
/* 08539C 800FC92C 8D6B799C */  lw    $t3, %lo(D_800D799C)($t3)
/* 0853A0 800FC930 3C01800E */  lui   $at, %hi(D_800E3210) # $at, 0x800e
/* 0853A4 800FC934 C42A3210 */  lwc1  $f10, %lo(D_800E3210)($at)
/* 0853A8 800FC938 8D62003C */  lw    $v0, 0x3c($t3)
/* 0853AC 800FC93C C448004C */  lwc1  $f8, 0x4c($v0)
/* 0853B0 800FC940 460A4400 */  add.s $f16, $f8, $f10
/* 0853B4 800FC944 E450004C */  swc1  $f16, 0x4c($v0)
.L800FC948_ovl2:
/* 0853B8 800FC948 8DAF0000 */  lw    $t7, ($t5)
/* 0853BC 800FC94C 8DAE0004 */  lw    $t6, 4($t5)
/* 0853C0 800FC950 258C7B38 */  addiu $t4, %lo(D_800D7B38) # addiu $t4, $t4, 0x7b38
/* 0853C4 800FC954 AD8F0000 */  sw    $t7, ($t4)
/* 0853C8 800FC958 AD8E0004 */  sw    $t6, 4($t4)
/* 0853CC 800FC95C 8DAE000C */  lw    $t6, 0xc($t5)
/* 0853D0 800FC960 8DAF0008 */  lw    $t7, 8($t5)
/* 0853D4 800FC964 AD8E000C */  sw    $t6, 0xc($t4)
/* 0853D8 800FC968 AD8F0008 */  sw    $t7, 8($t4)
/* 0853DC 800FC96C 8DAF0010 */  lw    $t7, 0x10($t5)
/* 0853E0 800FC970 8DAE0014 */  lw    $t6, 0x14($t5)
/* 0853E4 800FC974 AD8F0010 */  sw    $t7, 0x10($t4)
/* 0853E8 800FC978 1000000B */  b     .L800FC9A8_ovl2
/* 0853EC 800FC97C AD8E0014 */   sw    $t6, 0x14($t4)
.L800FC980_ovl2:
/* 0853F0 800FC980 0C03F18B */  jal   func_800FC62C
/* 0853F4 800FC984 00000000 */   nop   
/* 0853F8 800FC988 10000008 */  b     .L800FC9AC_ovl2
/* 0853FC 800FC98C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FC990_ovl2:
/* 085400 800FC990 0C03EE9E */  jal   func_800FBA78
/* 085404 800FC994 00000000 */   nop   
/* 085408 800FC998 10000004 */  b     .L800FC9AC_ovl2
/* 08540C 800FC99C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FC9A0_ovl2:
/* 085410 800FC9A0 0C004262 */  jal   func_80010988_ovl2
/* 085414 800FC9A4 00000000 */   nop   
.L800FC9A8_ovl2:
/* 085418 800FC9A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800FC9AC_ovl2:
/* 08541C 800FC9AC 24190001 */  li    $t9, 1
/* 085420 800FC9B0 3C01800D */  lui   $at, %hi(D_800D7B68) # $at, 0x800d
/* 085424 800FC9B4 AC397B68 */  sw    $t9, %lo(D_800D7B68)($at)
/* 085428 800FC9B8 03E00008 */  jr    $ra
/* 08542C 800FC9BC 27BD0018 */   addiu $sp, $sp, 0x18
.type func_800FC804, @function
.size func_800FC804, . - func_800FC804