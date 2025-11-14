glabel func_801E9BDC_ovl10
/* 1DA94C 801E9BDC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DA950 801E9BE0 AFB10018 */  sw    $s1, 0x18($sp)
/* 1DA954 801E9BE4 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1DA958 801E9BE8 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1DA95C 801E9BEC 8E220000 */  lw    $v0, ($s1)
/* 1DA960 801E9BF0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DA964 801E9BF4 AFB00014 */  sw    $s0, 0x14($sp)
/* 1DA968 801E9BF8 AFA40020 */  sw    $a0, 0x20($sp)
/* 1DA96C 801E9BFC 8C4F0000 */  lw    $t7, ($v0)
/* 1DA970 801E9C00 3C10800F */  lui   $s0, %hi(D_800E9720) # $s0, 0x800f
/* 1DA974 801E9C04 26109720 */  addiu $s0, %lo(D_800E9720) # addiu $s0, $s0, -0x68e0
/* 1DA978 801E9C08 000FC080 */  sll   $t8, $t7, 2
/* 1DA97C 801E9C0C 0218C821 */  addu  $t9, $s0, $t8
/* 1DA980 801E9C10 240E001E */  li    $t6, 30
/* 1DA984 801E9C14 AF2E0000 */  sw    $t6, ($t9)
/* 1DA988 801E9C18 8C480000 */  lw    $t0, ($v0)
/* 1DA98C 801E9C1C 3C01800F */ lui $at, %hi(D_800E98E0)
/* 1DA990 801E9C20 240A0001 */  li    $t2, 1
/* 1DA994 801E9C24 00084880 */  sll   $t1, $t0, 2
/* 1DA998 801E9C28 00290821 */  addu  $at, $at, $t1
/* 1DA99C 801E9C2C AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 1DA9A0 801E9C30 8C4B0000 */  lw    $t3, ($v0)
/* 1DA9A4 801E9C34 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DA9A8 801E9C38 24180003 */  li    $t8, 3
/* 1DA9AC 801E9C3C 000B6080 */  sll   $t4, $t3, 2
/* 1DA9B0 801E9C40 002C0821 */  addu  $at, $at, $t4
/* 1DA9B4 801E9C44 AC2A9C60 */ sw $t2, %lo(D_800E9C60)($at)
/* 1DA9B8 801E9C48 8C4D0000 */  lw    $t5, ($v0)
/* 1DA9BC 801E9C4C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DA9C0 801E9C50 000D7880 */  sll   $t7, $t5, 2
/* 1DA9C4 801E9C54 002F0821 */  addu  $at, $at, $t7
/* 1DA9C8 801E9C58 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DA9CC 801E9C5C 8C4E0000 */  lw    $t6, ($v0)
/* 1DA9D0 801E9C60 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DA9D4 801E9C64 000EC880 */  sll   $t9, $t6, 2
/* 1DA9D8 801E9C68 00390821 */  addu  $at, $at, $t9
/* 1DA9DC 801E9C6C AC38DFD0 */ sw $t8, %lo(D_800DDFD0)($at)
/* 1DA9E0 801E9C70 8C450000 */  lw    $a1, ($v0)
/* 1DA9E4 801E9C74 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DA9E8 801E9C78 00052880 */  sll   $a1, $a1, 2
/* 1DA9EC 801E9C7C 00250821 */  addu  $at, $at, $a1
/* 1DA9F0 801E9C80 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1DA9F4 801E9C84 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1DA9F8 801E9C88 44813000 */  mtc1  $at, $f6
/* 1DA9FC 801E9C8C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DAA00 801E9C90 00250821 */  addu  $at, $at, $a1
/* 1DAA04 801E9C94 46062202 */  mul.s $f8, $f4, $f6
/* 1DAA08 801E9C98 E42864D0 */ swc1 $f8, %lo(D_800E64D0)($at)
/* 1DAA0C 801E9C9C 8C480000 */  lw    $t0, ($v0)
/* 1DAA10 801E9CA0 00084880 */  sll   $t1, $t0, 2
/* 1DAA14 801E9CA4 02091821 */  addu  $v1, $s0, $t1
/* 1DAA18 801E9CA8 8C6B0000 */  lw    $t3, ($v1)
/* 1DAA1C 801E9CAC 256AFFFF */  addiu $t2, $t3, -1
/* 1DAA20 801E9CB0 AC6A0000 */  sw    $t2, ($v1)
/* 1DAA24 801E9CB4 8C450000 */  lw    $a1, ($v0)
/* 1DAA28 801E9CB8 00052880 */  sll   $a1, $a1, 2
/* 1DAA2C 801E9CBC 02056021 */  addu  $t4, $s0, $a1
/* 1DAA30 801E9CC0 8D8D0000 */  lw    $t5, ($t4)
/* 1DAA34 801E9CC4 51A00011 */  beql  $t5, $zero, .L801E9D0C_ovl10
/* 1DAA38 801E9CC8 44805000 */   mtc1  $zero, $f10
.L801E9CCC_ovl10:
/* 1DAA3C 801E9CCC 0C002DAF */  jal   finish_current_thread
/* 1DAA40 801E9CD0 24040001 */   li    $a0, 1
/* 1DAA44 801E9CD4 8E220000 */  lw    $v0, ($s1)
/* 1DAA48 801E9CD8 8C4F0000 */  lw    $t7, ($v0)
/* 1DAA4C 801E9CDC 000F7080 */  sll   $t6, $t7, 2
/* 1DAA50 801E9CE0 020E1821 */  addu  $v1, $s0, $t6
/* 1DAA54 801E9CE4 8C780000 */  lw    $t8, ($v1)
/* 1DAA58 801E9CE8 2719FFFF */  addiu $t9, $t8, -1
/* 1DAA5C 801E9CEC AC790000 */  sw    $t9, ($v1)
/* 1DAA60 801E9CF0 8C450000 */  lw    $a1, ($v0)
/* 1DAA64 801E9CF4 00052880 */  sll   $a1, $a1, 2
/* 1DAA68 801E9CF8 02054021 */  addu  $t0, $s0, $a1
/* 1DAA6C 801E9CFC 8D090000 */  lw    $t1, ($t0)
/* 1DAA70 801E9D00 1520FFF2 */  bnez  $t1, .L801E9CCC_ovl10
/* 1DAA74 801E9D04 00000000 */   nop   
/* 1DAA78 801E9D08 44805000 */  mtc1  $zero, $f10
.L801E9D0C_ovl10:
/* 1DAA7C 801E9D0C 3C03800E */  lui   $v1, %hi(D_800E6690) # $v1, 0x800e
/* 1DAA80 801E9D10 24636690 */  addiu $v1, %lo(D_800E6690) # addiu $v1, $v1, 0x6690
/* 1DAA84 801E9D14 00655821 */  addu  $t3, $v1, $a1
/* 1DAA88 801E9D18 E56A0000 */  swc1  $f10, ($t3)
/* 1DAA8C 801E9D1C 8C450000 */  lw    $a1, ($v0)
/* 1DAA90 801E9D20 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DAA94 801E9D24 24040008 */  li    $a0, 8
/* 1DAA98 801E9D28 00052880 */  sll   $a1, $a1, 2
/* 1DAA9C 801E9D2C 00655021 */  addu  $t2, $v1, $a1
/* 1DAAA0 801E9D30 C5500000 */  lwc1  $f16, ($t2)
/* 1DAAA4 801E9D34 00250821 */  addu  $at, $at, $a1
/* 1DAAA8 801E9D38 E43064D0 */ swc1 $f16, %lo(D_800E64D0)($at)
/* 1DAAAC 801E9D3C 8C4C0000 */  lw    $t4, ($v0)
/* 1DAAB0 801E9D40 3C01801F */  lui   $at, %hi(D_801F4B58_ovl10) # $at, 0x801f
/* 1DAAB4 801E9D44 C4324B58 */  lwc1  $f18, %lo(D_801F4B58_ovl10)($at)
/* 1DAAB8 801E9D48 3C01800E */ lui $at, %hi(D_800E6850)
/* 1DAABC 801E9D4C 000C6880 */  sll   $t5, $t4, 2
/* 1DAAC0 801E9D50 002D0821 */  addu  $at, $at, $t5
/* 1DAAC4 801E9D54 0C002DAF */  jal   finish_current_thread
/* 1DAAC8 801E9D58 E4326850 */ swc1 $f18, %lo(D_800E6850)($at)
/* 1DAACC 801E9D5C 3C040001 */  lui   $a0, (0x00010363 >> 16) # lui $a0, 1
/* 1DAAD0 801E9D60 0C02A7A9 */  jal   func_800A9EA4
/* 1DAAD4 801E9D64 34840363 */   ori   $a0, (0x00010363 & 0xFFFF) # ori $a0, $a0, 0x363
/* 1DAAD8 801E9D68 3C040001 */  lui   $a0, (0x00010362 >> 16) # lui $a0, 1
/* 1DAADC 801E9D6C 0C02A7A9 */  jal   func_800A9EA4
/* 1DAAE0 801E9D70 34840362 */   ori   $a0, (0x00010362 & 0xFFFF) # ori $a0, $a0, 0x362
/* 1DAAE4 801E9D74 8E2E0000 */  lw    $t6, ($s1)
/* 1DAAE8 801E9D78 3C0F801F */  lui   $t7, %hi(D_801E9B7C) # $t7, 0x801f
/* 1DAAEC 801E9D7C 3C01800E */ lui $at, %hi(D_800DF310)
/* 1DAAF0 801E9D80 8DD80000 */  lw    $t8, ($t6)
/* 1DAAF4 801E9D84 25EF9B7C */  addiu $t7, %lo(D_801E9B7C) # addiu $t7, $t7, -0x6484
/* 1DAAF8 801E9D88 0018C880 */  sll   $t9, $t8, 2
/* 1DAAFC 801E9D8C 00390821 */  addu  $at, $at, $t9
/* 1DAB00 801E9D90 0C02BC9F */  jal   func_800AF27C
/* 1DAB04 801E9D94 AC2FF310 */ sw $t7, %lo(D_800DF310)($at)
/* 1DAB08 801E9D98 8E290000 */  lw    $t1, ($s1)
/* 1DAB0C 801E9D9C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DAB10 801E9DA0 24080001 */  li    $t0, 1
/* 1DAB14 801E9DA4 8D2B0000 */  lw    $t3, ($t1)
/* 1DAB18 801E9DA8 000B5080 */  sll   $t2, $t3, 2
/* 1DAB1C 801E9DAC 002A0821 */  addu  $at, $at, $t2
/* 1DAB20 801E9DB0 0C02BE85 */  jal   func_800AFA14
/* 1DAB24 801E9DB4 AC289E20 */ sw $t0, %lo(D_800E9E20)($at)
/* 1DAB28 801E9DB8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DAB2C 801E9DBC 8FB00014 */  lw    $s0, 0x14($sp)
/* 1DAB30 801E9DC0 8FB10018 */  lw    $s1, 0x18($sp)
/* 1DAB34 801E9DC4 03E00008 */  jr    $ra
/* 1DAB38 801E9DC8 27BD0020 */   addiu $sp, $sp, 0x20
.type func_801E9BDC_ovl10, @function
.size func_801E9BDC_ovl10, . - func_801E9BDC_ovl10
