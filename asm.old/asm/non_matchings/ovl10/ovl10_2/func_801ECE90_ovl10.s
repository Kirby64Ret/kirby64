glabel func_801ECE90_ovl10
/* 1DDC00 801ECE90 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DDC04 801ECE94 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DDC08 801ECE98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DDC0C 801ECE9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DDC10 801ECEA0 8DCF0000 */  lw    $t7, ($t6)
/* 1DDC14 801ECEA4 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 1DDC18 801ECEA8 000FC080 */  sll   $t8, $t7, 2
/* 1DDC1C 801ECEAC 0338C821 */  addu  $t9, $t9, $t8
/* 1DDC20 801ECEB0 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 1DDC24 801ECEB4 0C066D09 */  jal   func_8019B424_ovl10
/* 1DDC28 801ECEB8 AFB9001C */   sw    $t9, 0x1c($sp)
/* 1DDC2C 801ECEBC 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 1DDC30 801ECEC0 44816000 */  mtc1  $at, $f12
/* 1DDC34 801ECEC4 0C067534 */  jal   func_8019D4D0_ovl10
/* 1DDC38 801ECEC8 24050008 */   li    $a1, 8
/* 1DDC3C 801ECECC 8FA8001C */  lw    $t0, 0x1c($sp)
/* 1DDC40 801ECED0 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 1DDC44 801ECED4 9109003C */  lbu   $t1, 0x3c($t0)
/* 1DDC48 801ECED8 55200018 */  bnezl $t1, .L801ECF3C_ovl10
/* 1DDC4C 801ECEDC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DDC50 801ECEE0 44806000 */  mtc1  $zero, $f12
/* 1DDC54 801ECEE4 44817000 */  mtc1  $at, $f14
/* 1DDC58 801ECEE8 0C066A6B */  jal   func_8019A9AC_ovl10
/* 1DDC5C 801ECEEC 00000000 */   nop   
/* 1DDC60 801ECEF0 24010002 */  li    $at, 2
/* 1DDC64 801ECEF4 14410010 */  bne   $v0, $at, .L801ECF38_ovl10
/* 1DDC68 801ECEF8 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DDC6C 801ECEFC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DDC70 801ECF00 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DDC74 801ECF04 240A0004 */  li    $t2, 4
/* 1DDC78 801ECF08 8C4B0000 */  lw    $t3, ($v0)
/* 1DDC7C 801ECF0C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DDC80 801ECF10 3C05801F */  lui   $a1, %hi(D_801EC3C8) # $a1, 0x801f
/* 1DDC84 801ECF14 000B6080 */  sll   $t4, $t3, 2
/* 1DDC88 801ECF18 002C0821 */  addu  $at, $at, $t4
/* 1DDC8C 801ECF1C AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
/* 1DDC90 801ECF20 8C4D0000 */  lw    $t5, ($v0)
/* 1DDC94 801ECF24 24A5C3C8 */  addiu $a1, %lo(D_801EC3C8) # addiu $a1, $a1, -0x3c38
/* 1DDC98 801ECF28 000D7080 */  sll   $t6, $t5, 2
/* 1DDC9C 801ECF2C 008E2021 */  addu  $a0, $a0, $t6
/* 1DDCA0 801ECF30 0C02C7B2 */  jal   assign_new_process_entry
/* 1DDCA4 801ECF34 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801ECF38_ovl10:
/* 1DDCA8 801ECF38 8FBF0014 */  lw    $ra, 0x14($sp)
.L801ECF3C_ovl10:
/* 1DDCAC 801ECF3C 27BD0020 */  addiu $sp, $sp, 0x20
/* 1DDCB0 801ECF40 03E00008 */  jr    $ra
/* 1DDCB4 801ECF44 00000000 */   nop   
.type func_801ECE90_ovl10, @function
.size func_801ECE90_ovl10, . - func_801ECE90_ovl10
