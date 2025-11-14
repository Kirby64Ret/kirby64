glabel func_801EBF2C_ovl10
/* 1DCC9C 801EBF2C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DCCA0 801EBF30 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DCCA4 801EBF34 AFA40000 */  sw    $a0, ($sp)
/* 1DCCA8 801EBF38 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1DCCAC 801EBF3C 8C430000 */  lw    $v1, ($v0)
/* 1DCCB0 801EBF40 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 1DCCB4 801EBF44 3C0F800E */  lui   $t7, %hi(D_800E3210) # $t7, 0x800e
/* 1DCCB8 801EBF48 00031880 */  sll   $v1, $v1, 2
/* 1DCCBC 801EBF4C 01C37021 */  addu  $t6, $t6, $v1
/* 1DCCC0 801EBF50 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1DCCC4 801EBF54 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 1DCCC8 801EBF58 25EF3210 */  addiu $t7, %lo(D_800E3210) # addiu $t7, $t7, 0x3210
/* 1DCCCC 801EBF5C 11C0000B */  beqz  $t6, .L801EBF8C_ovl10
/* 1DCCD0 801EBF60 00682021 */   addu  $a0, $v1, $t0
/* 1DCCD4 801EBF64 006F2021 */  addu  $a0, $v1, $t7
/* 1DCCD8 801EBF68 C4840000 */  lwc1  $f4, ($a0)
/* 1DCCDC 801EBF6C 3C01800F */ lui $at, %hi(D_800E8920)
/* 1DCCE0 801EBF70 46002187 */  neg.s $f6, $f4
/* 1DCCE4 801EBF74 E4860000 */  swc1  $f6, ($a0)
/* 1DCCE8 801EBF78 8C580000 */  lw    $t8, ($v0)
/* 1DCCEC 801EBF7C 0018C880 */  sll   $t9, $t8, 2
/* 1DCCF0 801EBF80 00390821 */  addu  $at, $at, $t9
/* 1DCCF4 801EBF84 03E00008 */  jr    $ra
/* 1DCCF8 801EBF88 AC208920 */ sw $zero, %lo(D_800E8920)($at)
.type func_801EBF2C_ovl10, @function

.L801EBF8C_ovl10:
/* 1DCCFC 801EBF8C C4880000 */  lwc1  $f8, ($a0)
/* 1DCD00 801EBF90 3C01801F */  lui   $at, %hi(D_801F4B84_ovl10) # $at, 0x801f
/* 1DCD04 801EBF94 C4304B84 */  lwc1  $f16, %lo(D_801F4B84_ovl10)($at)
/* 1DCD08 801EBF98 46004287 */  neg.s $f10, $f8
/* 1DCD0C 801EBF9C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 1DCD10 801EBFA0 46105482 */  mul.s $f18, $f10, $f16
/* 1DCD14 801EBFA4 44812000 */  mtc1  $at, $f4
/* 1DCD18 801EBFA8 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DCD1C 801EBFAC E4920000 */  swc1  $f18, ($a0)
/* 1DCD20 801EBFB0 8C490000 */  lw    $t1, ($v0)
/* 1DCD24 801EBFB4 00095080 */  sll   $t2, $t1, 2
/* 1DCD28 801EBFB8 002A0821 */  addu  $at, $at, $t2
/* 1DCD2C 801EBFBC E4243750 */ swc1 $f4, %lo(D_800E3750)($at)
/* 1DCD30 801EBFC0 8C4B0000 */  lw    $t3, ($v0)
/* 1DCD34 801EBFC4 3C01800F */ lui $at, %hi(D_800E8920)
/* 1DCD38 801EBFC8 000B6080 */  sll   $t4, $t3, 2
/* 1DCD3C 801EBFCC 002C0821 */  addu  $at, $at, $t4
/* 1DCD40 801EBFD0 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1DCD44 801EBFD4 03E00008 */  jr    $ra
/* 1DCD48 801EBFD8 00000000 */   nop   
.type func_801EBF2C_ovl10, @function
.size func_801EBF2C_ovl10, . - func_801EBF2C_ovl10
