glabel func_801151BC
/* 09DC2C 801151BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09DC30 801151C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09DC34 801151C4 AFA40020 */  sw    $a0, 0x20($sp)
/* 09DC38 801151C8 8C8F004C */  lw    $t7, 0x4c($a0)
/* 09DC3C 801151CC 0C047891 */  jal   func_8011E244
/* 09DC40 801151D0 AFAF001C */   sw    $t7, 0x1c($sp)
/* 09DC44 801151D4 8FB8001C */  lw    $t8, 0x1c($sp)
/* 09DC48 801151D8 8FA80020 */  lw    $t0, 0x20($sp)
/* 09DC4C 801151DC 3C0B800E */ lui $t3, %hi(D_800E77A0)
/* 09DC50 801151E0 93190000 */  lbu   $t9, ($t8)
/* 09DC54 801151E4 5459001F */  bnel  $v0, $t9, .L80115264_ovl2
/* 09DC58 801151E8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09DC5C 801151EC 8D090000 */  lw    $t1, ($t0)
/* 09DC60 801151F0 3C0D8012 */  lui   $t5, %hi(D_80124E14) # $t5, 0x8012
/* 09DC64 801151F4 25AD4E14 */  addiu $t5, %lo(D_80124E14) # addiu $t5, $t5, 0x4e14
/* 09DC68 801151F8 00095040 */  sll   $t2, $t1, 1
/* 09DC6C 801151FC 016A5821 */  addu  $t3, $t3, $t2
/* 09DC70 80115200 956B77A0 */ lhu $t3, %lo(D_800E77A0)($t3)
/* 09DC74 80115204 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 09DC78 80115208 C42C6B10 */  lwc1  $f12, %lo(D_800D6B10)($at)
/* 09DC7C 8011520C 000B60C0 */  sll   $t4, $t3, 3
/* 09DC80 80115210 018B6023 */  subu  $t4, $t4, $t3
/* 09DC84 80115214 000C6080 */  sll   $t4, $t4, 2
/* 09DC88 80115218 018D7021 */  addu  $t6, $t4, $t5
/* 09DC8C 8011521C 0C02BB30 */  jal   func_800AECC0
/* 09DC90 80115220 AFAE0018 */   sw    $t6, 0x18($sp)
/* 09DC94 80115224 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 09DC98 80115228 0C02BB48 */  jal   func_800AED20
/* 09DC9C 8011522C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 09DCA0 80115230 8FAF0018 */  lw    $t7, 0x18($sp)
/* 09DCA4 80115234 0C02A806 */  jal   func_800AA018
/* 09DCA8 80115238 8DE40008 */   lw    $a0, 8($t7)
/* 09DCAC 8011523C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 09DCB0 80115240 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 09DCB4 80115244 8FB80018 */  lw    $t8, 0x18($sp)
/* 09DCB8 80115248 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09DCBC 8011524C 8D090000 */  lw    $t1, ($t0)
/* 09DCC0 80115250 8F190014 */  lw    $t9, 0x14($t8)
/* 09DCC4 80115254 00095080 */  sll   $t2, $t1, 2
/* 09DCC8 80115258 002A0821 */  addu  $at, $at, $t2
/* 09DCCC 8011525C AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 09DCD0 80115260 8FBF0014 */  lw    $ra, 0x14($sp)
.L80115264_ovl2:
/* 09DCD4 80115264 27BD0020 */  addiu $sp, $sp, 0x20
/* 09DCD8 80115268 03E00008 */  jr    $ra
/* 09DCDC 8011526C 00000000 */   nop   
.type func_801151BC, @function
.size func_801151BC, . - func_801151BC
