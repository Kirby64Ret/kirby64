glabel func_801DE8DC_ovl16
/* 214B8C 801DE8DC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 214B90 801DE8E0 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 214B94 801DE8E4 8C460000 */  lw    $a2, ($v0)
/* 214B98 801DE8E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 214B9C 801DE8EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 214BA0 801DE8F0 AFA40018 */  sw    $a0, 0x18($sp)
/* 214BA4 801DE8F4 8CCE0000 */  lw    $t6, ($a2)
/* 214BA8 801DE8F8 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 214BAC 801DE8FC 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 214BB0 801DE900 000E7880 */  sll   $t7, $t6, 2
/* 214BB4 801DE904 002F0821 */  addu  $at, $at, $t7
/* 214BB8 801DE908 AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 214BBC 801DE90C 8CD90000 */  lw    $t9, ($a2)
/* 214BC0 801DE910 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 214BC4 801DE914 3C18801E */  lui   $t8, %hi(D_801D9438) # $t8, 0x801e
/* 214BC8 801DE918 00194880 */  sll   $t1, $t9, 2
/* 214BCC 801DE91C 00695021 */  addu  $t2, $v1, $t1
/* 214BD0 801DE920 8D4B0000 */  lw    $t3, ($t2)
/* 214BD4 801DE924 27189438 */  addiu $t8, %lo(D_801D9438) # addiu $t8, $t8, -0x6bc8
/* 214BD8 801DE928 3C0C801E */  lui   $t4, %hi(D_801DAEF4) # $t4, 0x801e
/* 214BDC 801DE92C AD78008C */  sw    $t8, 0x8c($t3)
/* 214BE0 801DE930 8C4D0000 */  lw    $t5, ($v0)
/* 214BE4 801DE934 258CAEF4 */  addiu $t4, %lo(D_801DAEF4) # addiu $t4, $t4, -0x510c
/* 214BE8 801DE938 24040005 */  li    $a0, 5
/* 214BEC 801DE93C 8DAE0000 */  lw    $t6, ($t5)
/* 214BF0 801DE940 24050002 */  li    $a1, 2
/* 214BF4 801DE944 000E7880 */  sll   $t7, $t6, 2
/* 214BF8 801DE948 006FC821 */  addu  $t9, $v1, $t7
/* 214BFC 801DE94C 8F290000 */  lw    $t1, ($t9)
/* 214C00 801DE950 0C067829 */  jal   func_8019E0A4_ovl16
/* 214C04 801DE954 AD2C0098 */   sw    $t4, 0x98($t1)
/* 214C08 801DE958 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 214C0C 801DE95C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 214C10 801DE960 3C05800F */  lui   $a1, %hi(D_800EBBE0) # $a1, 0x800f
/* 214C14 801DE964 24A5BBE0 */  addiu $a1, %lo(D_800EBBE0) # addiu $a1, $a1, -0x4420
/* 214C18 801DE968 8CCA0000 */  lw    $t2, ($a2)
/* 214C1C 801DE96C 3C07800E */  lui   $a3, %hi(D_800E17D0) # $a3, 0x800e
/* 214C20 801DE970 24E717D0 */  addiu $a3, %lo(D_800E17D0) # addiu $a3, $a3, 0x17d0
/* 214C24 801DE974 000AC080 */  sll   $t8, $t2, 2
/* 214C28 801DE978 00B85821 */  addu  $t3, $a1, $t8
/* 214C2C 801DE97C AD620000 */  sw    $v0, ($t3)
/* 214C30 801DE980 8CC30000 */  lw    $v1, ($a2)
/* 214C34 801DE984 3C08800F */  lui   $t0, %hi(D_800E9020) # $t0, 0x800f
/* 214C38 801DE988 25089020 */  addiu $t0, %lo(D_800E9020) # addiu $t0, $t0, -0x6fe0
/* 214C3C 801DE98C 00031880 */  sll   $v1, $v1, 2
/* 214C40 801DE990 00A37021 */  addu  $t6, $a1, $v1
/* 214C44 801DE994 8DCF0000 */  lw    $t7, ($t6)
/* 214C48 801DE998 00E36821 */  addu  $t5, $a3, $v1
/* 214C4C 801DE99C C5A40000 */  lwc1  $f4, ($t5)
/* 214C50 801DE9A0 000FC880 */  sll   $t9, $t7, 2
/* 214C54 801DE9A4 00F96021 */  addu  $t4, $a3, $t9
/* 214C58 801DE9A8 E5840000 */  swc1  $f4, ($t4)
/* 214C5C 801DE9AC 8CC30000 */  lw    $v1, ($a2)
/* 214C60 801DE9B0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 214C64 801DE9B4 240E0001 */  li    $t6, 1
/* 214C68 801DE9B8 00031880 */  sll   $v1, $v1, 2
/* 214C6C 801DE9BC 00A35021 */  addu  $t2, $a1, $v1
/* 214C70 801DE9C0 8D580000 */  lw    $t8, ($t2)
/* 214C74 801DE9C4 01034821 */  addu  $t1, $t0, $v1
/* 214C78 801DE9C8 C5260000 */  lwc1  $f6, ($t1)
/* 214C7C 801DE9CC 00185880 */  sll   $t3, $t8, 2
/* 214C80 801DE9D0 010B6821 */  addu  $t5, $t0, $t3
/* 214C84 801DE9D4 E5A60000 */  swc1  $f6, ($t5)
/* 214C88 801DE9D8 8CCF0000 */  lw    $t7, ($a2)
/* 214C8C 801DE9DC 24040003 */  li    $a0, 3
/* 214C90 801DE9E0 000FC880 */  sll   $t9, $t7, 2
/* 214C94 801DE9E4 00B96021 */  addu  $t4, $a1, $t9
/* 214C98 801DE9E8 8D890000 */  lw    $t1, ($t4)
/* 214C9C 801DE9EC 00095080 */  sll   $t2, $t1, 2
/* 214CA0 801DE9F0 002A0821 */  addu  $at, $at, $t2
/* 214CA4 801DE9F4 0C006291 */  jal   random_soft_s32_range
/* 214CA8 801DE9F8 AC2E98E0 */ sw $t6, %lo(D_800E98E0)($at)
/* 214CAC 801DE9FC 3C01800D */  lui   $at, %hi(D_800D70B4) # $at, 0x800d
/* 214CB0 801DEA00 AC2270B4 */  sw    $v0, %lo(D_800D70B4)($at)
/* 214CB4 801DEA04 0C006291 */  jal   random_soft_s32_range
/* 214CB8 801DEA08 24040023 */   li    $a0, 35
/* 214CBC 801DEA0C 3C01800D */  lui   $at, %hi(D_800D70B8) # $at, 0x800d
/* 214CC0 801DEA10 AC2270B8 */  sw    $v0, %lo(D_800D70B8)($at)
/* 214CC4 801DEA14 0C006291 */  jal   random_soft_s32_range
/* 214CC8 801DEA18 24040002 */   li    $a0, 2
/* 214CCC 801DEA1C 3C03800D */  lui   $v1, %hi(D_800D7098) # $v1, 0x800d
/* 214CD0 801DEA20 24637098 */  addiu $v1, %lo(D_800D7098) # addiu $v1, $v1, 0x7098
/* 214CD4 801DEA24 AC620024 */  sw    $v0, 0x24($v1)
/* 214CD8 801DEA28 AC600028 */  sw    $zero, 0x28($v1)
/* 214CDC 801DEA2C 0C002DAF */  jal   finish_current_thread
/* 214CE0 801DEA30 2404001E */   li    $a0, 30
/* 214CE4 801DEA34 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 214CE8 801DEA38 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 214CEC 801DEA3C 3C01800E */ lui $at, %hi(D_800E7B20)
/* 214CF0 801DEA40 8F0B0000 */  lw    $t3, ($t8)
/* 214CF4 801DEA44 000B6880 */  sll   $t5, $t3, 2
/* 214CF8 801DEA48 002D0821 */  addu  $at, $at, $t5
/* 214CFC 801DEA4C C4287B20 */ lwc1 $f8, %lo(D_800E7B20)($at)
/* 214D00 801DEA50 4600428D */  trunc.w.s $f10, $f8
/* 214D04 801DEA54 44045000 */  mfc1  $a0, $f10
/* 214D08 801DEA58 0C02F07F */  jal   func_800BC1FC
/* 214D0C 801DEA5C 00000000 */   nop   
/* 214D10 801DEA60 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 214D14 801DEA64 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 214D18 801DEA68 24020001 */  li    $v0, 1
/* 214D1C 801DEA6C 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 214D20 801DEA70 AC227098 */  sw    $v0, %lo(D_800D7098)($at)
/* 214D24 801DEA74 8F2C0000 */  lw    $t4, ($t9)
/* 214D28 801DEA78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 214D2C 801DEA7C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 214D30 801DEA80 000C4880 */  sll   $t1, $t4, 2
/* 214D34 801DEA84 00290821 */  addu  $at, $at, $t1
/* 214D38 801DEA88 AC22DC50 */ sw $v0, %lo(gEntityVtableIndexArray)($at)
/* 214D3C 801DEA8C 03E00008 */  jr    $ra
/* 214D40 801DEA90 27BD0018 */   addiu $sp, $sp, 0x18
.type func_801DE8DC_ovl16, @function
.size func_801DE8DC_ovl16, . - func_801DE8DC_ovl16
