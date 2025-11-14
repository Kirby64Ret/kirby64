glabel func_801215DC
/* 0AA04C 801215DC 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0AA050 801215E0 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0AA054 801215E4 8C4E0034 */  lw    $t6, 0x34($v0)
/* 0AA058 801215E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AA05C 801215EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AA060 801215F0 31CF0001 */  andi  $t7, $t6, 1
/* 0AA064 801215F4 51E00004 */  beql  $t7, $zero, .L80121608_ovl2
/* 0AA068 801215F8 90580017 */   lbu   $t8, 0x17($v0)
/* 0AA06C 801215FC 10000012 */  b     .L80121648_ovl2
/* 0AA070 80121600 24020001 */   li    $v0, 1
/* 0AA074 80121604 90580017 */  lbu   $t8, 0x17($v0)
.L80121608_ovl2:
/* 0AA078 80121608 3C19800D */  lui   $t9, %hi(gKirbyController) # $t9, 0x800d
/* 0AA07C 8012160C 00001025 */  move  $v0, $zero
/* 0AA080 80121610 1700000D */  bnez  $t8, .L80121648_ovl2
/* 0AA084 80121614 00000000 */   nop   
/* 0AA088 80121618 97396FE8 */  lhu   $t9, %lo(gKirbyController)($t9)
/* 0AA08C 8012161C 33280300 */  andi  $t0, $t9, 0x300
/* 0AA090 80121620 11000009 */  beqz  $t0, .L80121648_ovl2
/* 0AA094 80121624 00000000 */   nop   
/* 0AA098 80121628 0C048465 */  jal   func_80121194
/* 0AA09C 8012162C 00000000 */   nop   
/* 0AA0A0 80121630 10400003 */  beqz  $v0, .L80121640_ovl2
/* 0AA0A4 80121634 00000000 */   nop   
/* 0AA0A8 80121638 10000003 */  b     .L80121648_ovl2
/* 0AA0AC 8012163C 24020002 */   li    $v0, 2
.L80121640_ovl2:
/* 0AA0B0 80121640 10000001 */  b     .L80121648_ovl2
/* 0AA0B4 80121644 24020001 */   li    $v0, 1
.L80121648_ovl2:
/* 0AA0B8 80121648 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AA0BC 8012164C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AA0C0 80121650 03E00008 */  jr    $ra
/* 0AA0C4 80121654 00000000 */   nop   
.type func_801215DC, @function
.size func_801215DC, . - func_801215DC
