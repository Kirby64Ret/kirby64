glabel func_80117210
/* 09FC80 80117210 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09FC84 80117214 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09FC88 80117218 8C8E004C */  lw    $t6, 0x4c($a0)
/* 09FC8C 8011721C AFAE0024 */  sw    $t6, 0x24($sp)
/* 09FC90 80117220 8C8F0000 */  lw    $t7, ($a0)
/* 09FC94 80117224 0C02D249 */  jal   D_800B4924_ovl2
/* 09FC98 80117228 AFAF0020 */   sw    $t7, 0x20($sp)
/* 09FC9C 8011722C 8FA30020 */  lw    $v1, 0x20($sp)
/* 09FCA0 80117230 3C18800E */  lui   $t8, %hi(gEntitiesNextPosYArray) # $t8, 0x800e
/* 09FCA4 80117234 27182790 */  addiu $t8, %lo(gEntitiesNextPosYArray) # addiu $t8, $t8, 0x2790
/* 09FCA8 80117238 00031880 */  sll   $v1, $v1, 2
/* 09FCAC 8011723C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 09FCB0 80117240 00230821 */  addu  $at, $at, $v1
/* 09FCB4 80117244 00781021 */  addu  $v0, $v1, $t8
/* 09FCB8 80117248 C4440000 */  lwc1  $f4, ($v0)
/* 09FCBC 8011724C C420A6E0 */ lwc1 $f0, %lo(D_800EA6E0)($at)
/* 09FCC0 80117250 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 09FCC4 80117254 00230821 */  addu  $at, $at, $v1
/* 09FCC8 80117258 4604003C */  c.lt.s $f0, $f4
/* 09FCCC 8011725C 2419000A */  li    $t9, 10
/* 09FCD0 80117260 45000013 */  bc1f  .L801172B0_ovl2
/* 09FCD4 80117264 00000000 */   nop   
/* 09FCD8 80117268 E4400000 */  swc1  $f0, ($v0)
/* 09FCDC 8011726C C4262CD0 */ lwc1 $f6, %lo(gEntitiesPosYArray)($at)
/* 09FCE0 80117270 3C01800E */ lui $at, %hi(D_800E3210)
/* 09FCE4 80117274 00230821 */  addu  $at, $at, $v1
/* 09FCE8 80117278 46060201 */  sub.s $f8, $f0, $f6
/* 09FCEC 8011727C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 09FCF0 80117280 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 09FCF4 80117284 3C088011 */  lui   $t0, %hi(D_80117570) # $t0, 0x8011
/* 09FCF8 80117288 E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 09FCFC 8011728C 3C01800F */ lui $at, %hi(D_800E98E0)
/* 09FD00 80117290 00230821 */  addu  $at, $at, $v1
/* 09FD04 80117294 AC3998E0 */ sw $t9, %lo(D_800E98E0)($at)
/* 09FD08 80117298 8D2A0000 */  lw    $t2, ($t1)
/* 09FD0C 8011729C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09FD10 801172A0 25087570 */  addiu $t0, %lo(D_80117570) # addiu $t0, $t0, 0x7570
/* 09FD14 801172A4 000A5880 */  sll   $t3, $t2, 2
/* 09FD18 801172A8 002B0821 */  addu  $at, $at, $t3
/* 09FD1C 801172AC AC28EF90 */ sw $t0, %lo(D_800DEF90)($at)
.L801172B0_ovl2:
/* 09FD20 801172B0 0C047891 */  jal   func_8011E244
/* 09FD24 801172B4 AFA3001C */   sw    $v1, 0x1c($sp)
/* 09FD28 801172B8 8FAC0024 */  lw    $t4, 0x24($sp)
/* 09FD2C 801172BC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 09FD30 801172C0 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 09FD34 801172C4 918D0000 */  lbu   $t5, ($t4)
/* 09FD38 801172C8 3C0E8011 */  lui   $t6, %hi(D_801173F4) # $t6, 0x8011
/* 09FD3C 801172CC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 09FD40 801172D0 544D0012 */  bnel  $v0, $t5, .L8011731C_ovl2
/* 09FD44 801172D4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09FD48 801172D8 44815000 */  mtc1  $at, $f10
/* 09FD4C 801172DC 3C01800E */ lui $at, %hi(D_800E3750)
/* 09FD50 801172E0 00230821 */  addu  $at, $at, $v1
/* 09FD54 801172E4 E42A3750 */ swc1 $f10, %lo(D_800E3750)($at)
/* 09FD58 801172E8 3C018013 */  lui   $at, %hi(D_80128D2C) # $at, 0x8013
/* 09FD5C 801172EC C4308D2C */  lwc1  $f16, %lo(D_80128D2C)($at)
/* 09FD60 801172F0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 09FD64 801172F4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 09FD68 801172F8 00230821 */  addu  $at, $at, $v1
/* 09FD6C 801172FC E4303C90 */ swc1 $f16, %lo(D_800E3C90)($at)
/* 09FD70 80117300 8DF80000 */  lw    $t8, ($t7)
/* 09FD74 80117304 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09FD78 80117308 25CE73F4 */  addiu $t6, %lo(D_801173F4) # addiu $t6, $t6, 0x73f4
/* 09FD7C 8011730C 0018C880 */  sll   $t9, $t8, 2
/* 09FD80 80117310 00390821 */  addu  $at, $at, $t9
/* 09FD84 80117314 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 09FD88 80117318 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011731C_ovl2:
/* 09FD8C 8011731C 27BD0028 */  addiu $sp, $sp, 0x28
/* 09FD90 80117320 03E00008 */  jr    $ra
/* 09FD94 80117324 00000000 */   nop   
.type func_80117210, @function
.size func_80117210, . - func_80117210
