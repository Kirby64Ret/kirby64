glabel func_80121F50
/* 0AA9C0 80121F50 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0AA9C4 80121F54 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0AA9C8 80121F58 90CE00DC */  lbu   $t6, 0xdc($a2)
/* 0AA9CC 80121F5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AA9D0 80121F60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AA9D4 80121F64 51C00043 */  beql  $t6, $zero, .L80122074_ovl2
/* 0AA9D8 80121F68 84C900DE */   lh    $t1, 0xde($a2)
/* 0AA9DC 80121F6C 90C400DD */  lbu   $a0, 0xdd($a2)
/* 0AA9E0 80121F70 28810008 */  slti  $at, $a0, 8
/* 0AA9E4 80121F74 10200006 */  beqz  $at, .L80121F90_ovl2
/* 0AA9E8 80121F78 00000000 */   nop   
/* 0AA9EC 80121F7C 0C06EFF9 */  jal   func_801BBFE4_ovl2
/* 0AA9F0 80121F80 00000000 */   nop   
/* 0AA9F4 80121F84 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0AA9F8 80121F88 10000005 */  b     .L80121FA0_ovl2
/* 0AA9FC 80121F8C 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
.L80121F90_ovl2:
/* 0AAA00 80121F90 0C06F09F */  jal   func_801BC27C_ovl2
/* 0AAA04 80121F94 00002825 */   move  $a1, $zero
/* 0AAA08 80121F98 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0AAA0C 80121F9C 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
.L80121FA0_ovl2:
/* 0AAA10 80121FA0 2401FFFF */  li    $at, -1
/* 0AAA14 80121FA4 5041002E */  beql  $v0, $at, .L80122060_ovl2
/* 0AAA18 80121FA8 A0C000DC */   sb    $zero, 0xdc($a2)
/* 0AAA1C 80121FAC 90CF00DC */  lbu   $t7, 0xdc($a2)
/* 0AAA20 80121FB0 24010001 */  li    $at, 1
/* 0AAA24 80121FB4 00021880 */  sll   $v1, $v0, 2
/* 0AAA28 80121FB8 15E10016 */  bne   $t7, $at, .L80122014_ovl2
/* 0AAA2C 80121FBC 240D0005 */   li    $t5, 5
/* 0AAA30 80121FC0 84D800E0 */  lh    $t8, 0xe0($a2)
/* 0AAA34 80121FC4 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0AAA38 80121FC8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0AAA3C 80121FCC 00021880 */  sll   $v1, $v0, 2
/* 0AAA40 80121FD0 3C01800F */ lui $at, %hi(D_800E9C60)
/* 0AAA44 80121FD4 00230821 */  addu  $at, $at, $v1
/* 0AAA48 80121FD8 AC389C60 */ sw $t8, %lo(D_800E9C60)($at)
/* 0AAA4C 80121FDC 8F280000 */  lw    $t0, ($t9)
/* 0AAA50 80121FE0 3C0A800F */ lui $t2, %hi(D_800E85A0)
/* 0AAA54 80121FE4 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 0AAA58 80121FE8 00084880 */  sll   $t1, $t0, 2
/* 0AAA5C 80121FEC 01495021 */  addu  $t2, $t2, $t1
/* 0AAA60 80121FF0 8D4A85A0 */ lw $t2, %lo(D_800E85A0)($t2)
/* 0AAA64 80121FF4 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 0AAA68 80121FF8 00836021 */  addu  $t4, $a0, $v1
/* 0AAA6C 80121FFC 000A5823 */  negu  $t3, $t2
/* 0AAA70 80122000 448B2000 */  mtc1  $t3, $f4
/* 0AAA74 80122004 00000000 */  nop   
/* 0AAA78 80122008 468021A0 */  cvt.s.w $f6, $f4
/* 0AAA7C 8012200C 1000000F */  b     .L8012204C_ovl2
/* 0AAA80 80122010 E5860000 */   swc1  $f6, ($t4)
.L80122014_ovl2:
/* 0AAA84 80122014 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0AAA88 80122018 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0AAA8C 8012201C 3C01800F */ lui $at, %hi(D_800E9C60)
/* 0AAA90 80122020 00230821 */  addu  $at, $at, $v1
/* 0AAA94 80122024 AC2D9C60 */ sw $t5, %lo(D_800E9C60)($at)
/* 0AAA98 80122028 8DCF0000 */  lw    $t7, ($t6)
/* 0AAA9C 8012202C 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 0AAAA0 80122030 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 0AAAA4 80122034 000FC080 */  sll   $t8, $t7, 2
/* 0AAAA8 80122038 0098C821 */  addu  $t9, $a0, $t8
/* 0AAAAC 8012203C C7280000 */  lwc1  $f8, ($t9)
/* 0AAAB0 80122040 00834021 */  addu  $t0, $a0, $v1
/* 0AAAB4 80122044 46004287 */  neg.s $f10, $f8
/* 0AAAB8 80122048 E50A0000 */  swc1  $f10, ($t0)
.L8012204C_ovl2:
/* 0AAABC 8012204C 0C029D9E */  jal   play_sound
/* 0AAAC0 80122050 24040118 */   li    $a0, 280
/* 0AAAC4 80122054 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0AAAC8 80122058 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0AAACC 8012205C A0C000DC */  sb    $zero, 0xdc($a2)
.L80122060_ovl2:
/* 0AAAD0 80122060 0C02F0A6 */  jal   func_800BC298
/* 0AAAD4 80122064 8CC40090 */   lw    $a0, 0x90($a2)
/* 0AAAD8 80122068 10000009 */  b     .L80122090_ovl2
/* 0AAADC 8012206C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AAAE0 80122070 84C900DE */  lh    $t1, 0xde($a2)
.L80122074_ovl2:
/* 0AAAE4 80122074 252AFFFF */  addiu $t2, $t1, -1
/* 0AAAE8 80122078 A4CA00DE */  sh    $t2, 0xde($a2)
/* 0AAAEC 8012207C 84CB00DE */  lh    $t3, 0xde($a2)
/* 0AAAF0 80122080 5D600003 */  bgtzl $t3, .L80122090_ovl2
/* 0AAAF4 80122084 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AAAF8 80122088 A4C000DE */  sh    $zero, 0xde($a2)
/* 0AAAFC 8012208C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80122090_ovl2:
/* 0AAB00 80122090 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AAB04 80122094 03E00008 */  jr    $ra
/* 0AAB08 80122098 00000000 */   nop   
.type func_80121F50, @function
.size func_80121F50, . - func_80121F50
