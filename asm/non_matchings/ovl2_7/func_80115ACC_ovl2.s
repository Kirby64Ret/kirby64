glabel func_80115ACC_ovl2
/* 09E53C 80115ACC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09E540 80115AD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09E544 80115AD4 0C02D249 */  jal   D_800B4924_ovl2
/* 09E548 80115AD8 AFA40018 */   sw    $a0, 0x18($sp)
/* 09E54C 80115ADC 8FAE0018 */  lw    $t6, 0x18($sp)
/* 09E550 80115AE0 3C19800E */  lui   $t9, 0x800e
/* 09E554 80115AE4 3C040002 */  lui   $a0, (0x000202E9 >> 16) # lui $a0, 2
/* 09E558 80115AE8 8DCF0000 */  lw    $t7, ($t6)
/* 09E55C 80115AEC 000FC080 */  sll   $t8, $t7, 2
/* 09E560 80115AF0 0338C821 */  addu  $t9, $t9, $t8
/* 09E564 80115AF4 8F39D8D0 */  lw    $t9, -0x2730($t9)
/* 09E568 80115AF8 00194040 */  sll   $t0, $t9, 1
/* 09E56C 80115AFC 05010013 */  bgez  $t0, .L80115B4C_ovl2
/* 09E570 80115B00 00000000 */   nop   
/* 09E574 80115B04 0C02A806 */  jal   func_800AA018_ovl2
/* 09E578 80115B08 348402E9 */   ori   $a0, (0x000202E9 & 0xFFFF) # ori $a0, $a0, 0x2e9
/* 09E57C 80115B0C 3C040002 */  lui   $a0, (0x000202EA >> 16) # lui $a0, 2
/* 09E580 80115B10 0C02A806 */  jal   func_800AA018_ovl2
/* 09E584 80115B14 348402EA */   ori   $a0, (0x000202EA & 0xFFFF) # ori $a0, $a0, 0x2ea
/* 09E588 80115B18 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 09E58C 80115B1C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 09E590 80115B20 3C09800B */  lui   $t1, %hi(D_800B4924) # $t1, 0x800b
/* 09E594 80115B24 3C01800E */  lui   $at, 0x800e
/* 09E598 80115B28 8D4B0000 */  lw    $t3, ($t2)
/* 09E59C 80115B2C 25294924 */  addiu $t1, %lo(D_800B4924) # addiu $t1, $t1, 0x4924
/* 09E5A0 80115B30 00002025 */  move  $a0, $zero
/* 09E5A4 80115B34 000B6080 */  sll   $t4, $t3, 2
/* 09E5A8 80115B38 002C0821 */  addu  $at, $at, $t4
/* 09E5AC 80115B3C 0C0484A1 */  jal   func_80121284_ovl2
/* 09E5B0 80115B40 AC29EF90 */   sw    $t1, -0x1070($at)
/* 09E5B4 80115B44 10000004 */  b     .L80115B58_ovl2
/* 09E5B8 80115B48 8FBF0014 */   lw    $ra, 0x14($sp)
.L80115B4C_ovl2:
/* 09E5BC 80115B4C 0C0484A1 */  jal   func_80121284_ovl2
/* 09E5C0 80115B50 24040001 */   li    $a0, 1
/* 09E5C4 80115B54 8FBF0014 */  lw    $ra, 0x14($sp)
.L80115B58_ovl2:
/* 09E5C8 80115B58 27BD0018 */  addiu $sp, $sp, 0x18
/* 09E5CC 80115B5C 03E00008 */  jr    $ra
/* 09E5D0 80115B60 00000000 */   nop   
