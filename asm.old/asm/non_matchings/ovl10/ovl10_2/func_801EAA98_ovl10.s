glabel func_801EAA98_ovl10
/* 1DB808 801EAA98 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DB80C 801EAA9C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DB810 801EAAA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DB814 801EAAA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DB818 801EAAA8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DB81C 801EAAAC 8C430000 */  lw    $v1, ($v0)
/* 1DB820 801EAAB0 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1DB824 801EAAB4 3C06800F */  lui   $a2, %hi(D_800EA520) # $a2, 0x800f
/* 1DB828 801EAAB8 00031880 */  sll   $v1, $v1, 2
/* 1DB82C 801EAABC 01C37021 */  addu  $t6, $t6, $v1
/* 1DB830 801EAAC0 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1DB834 801EAAC4 24C6A520 */  addiu $a2, %lo(D_800EA520) # addiu $a2, $a2, -0x5ae0
/* 1DB838 801EAAC8 00C37821 */  addu  $t7, $a2, $v1
/* 1DB83C 801EAACC 51C0002F */  beql  $t6, $zero, .L801EAB8C_ovl10
/* 1DB840 801EAAD0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DB844 801EAAD4 8DE50000 */  lw    $a1, ($t7)
/* 1DB848 801EAAD8 3C03800F */  lui   $v1, %hi(D_800EA6E0) # $v1, 0x800f
/* 1DB84C 801EAADC 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1DB850 801EAAE0 00052880 */  sll   $a1, $a1, 2
/* 1DB854 801EAAE4 00C5C021 */  addu  $t8, $a2, $a1
/* 1DB858 801EAAE8 8F190000 */  lw    $t9, ($t8)
/* 1DB85C 801EAAEC 53200027 */  beql  $t9, $zero, .L801EAB8C_ovl10
/* 1DB860 801EAAF0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DB864 801EAAF4 44812000 */  mtc1  $at, $f4
/* 1DB868 801EAAF8 2463A6E0 */  addiu $v1, %lo(D_800EA6E0) # addiu $v1, $v1, -0x5920
/* 1DB86C 801EAAFC 00654021 */  addu  $t0, $v1, $a1
/* 1DB870 801EAB00 E5040000 */  swc1  $f4, ($t0)
/* 1DB874 801EAB04 8C490000 */  lw    $t1, ($v0)
/* 1DB878 801EAB08 00095080 */  sll   $t2, $t1, 2
/* 1DB87C 801EAB0C 00CA5821 */  addu  $t3, $a2, $t2
/* 1DB880 801EAB10 8D6C0000 */  lw    $t4, ($t3)
/* 1DB884 801EAB14 000C6880 */  sll   $t5, $t4, 2
/* 1DB888 801EAB18 006D7021 */  addu  $t6, $v1, $t5
/* 1DB88C 801EAB1C C5C60000 */  lwc1  $f6, ($t6)
/* 1DB890 801EAB20 4600320D */  trunc.w.s $f8, $f6
/* 1DB894 801EAB24 44044000 */  mfc1  $a0, $f8
/* 1DB898 801EAB28 0C02F07F */  jal   func_800BC1FC
/* 1DB89C 801EAB2C 00000000 */   nop   
/* 1DB8A0 801EAB30 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1DB8A4 801EAB34 0C02BB30 */  jal   func_800AECC0
/* 1DB8A8 801EAB38 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1DB8AC 801EAB3C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1DB8B0 801EAB40 0C02BB48 */  jal   func_800AED20
/* 1DB8B4 801EAB44 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1DB8B8 801EAB48 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DB8BC 801EAB4C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DB8C0 801EAB50 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DB8C4 801EAB54 24180001 */  li    $t8, 1
/* 1DB8C8 801EAB58 8C590000 */  lw    $t9, ($v0)
/* 1DB8CC 801EAB5C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DB8D0 801EAB60 3C05801F */  lui   $a1, %hi(D_801EA784) # $a1, 0x801f
/* 1DB8D4 801EAB64 00194080 */  sll   $t0, $t9, 2
/* 1DB8D8 801EAB68 00280821 */  addu  $at, $at, $t0
/* 1DB8DC 801EAB6C AC38DC50 */ sw $t8, %lo(gEntityVtableIndexArray)($at)
/* 1DB8E0 801EAB70 8C490000 */  lw    $t1, ($v0)
/* 1DB8E4 801EAB74 24A5A784 */  addiu $a1, %lo(D_801EA784) # addiu $a1, $a1, -0x587c
/* 1DB8E8 801EAB78 00095080 */  sll   $t2, $t1, 2
/* 1DB8EC 801EAB7C 008A2021 */  addu  $a0, $a0, $t2
/* 1DB8F0 801EAB80 0C02C7B2 */  jal   assign_new_process_entry
/* 1DB8F4 801EAB84 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1DB8F8 801EAB88 8FBF0014 */  lw    $ra, 0x14($sp)
.L801EAB8C_ovl10:
/* 1DB8FC 801EAB8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DB900 801EAB90 03E00008 */  jr    $ra
/* 1DB904 801EAB94 00000000 */   nop   
.type func_801EAA98_ovl10, @function
.size func_801EAA98_ovl10, . - func_801EAA98_ovl10
