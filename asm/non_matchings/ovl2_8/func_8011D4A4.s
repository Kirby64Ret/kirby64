glabel func_8011D4A4
/* 0A5F14 8011D4A4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0A5F18 8011D4A8 254AA7C4 */  addiu $t2, %lo(D_8004A7C4) # addiu $t2, $t2, -0x583c
/* 0A5F1C 8011D4AC 8D4E0000 */  lw    $t6, ($t2)
/* 0A5F20 8011D4B0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A5F24 8011D4B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A5F28 8011D4B8 3C098013 */  lui   $t1, %hi(gKirbyState) # $t1, 0x8013
/* 0A5F2C 8011D4BC 2529E7C0 */  addiu $t1, %lo(gKirbyState) # addiu $t1, $t1, -0x1840
/* 0A5F30 8011D4C0 8DC50000 */  lw    $a1, ($t6)
/* 0A5F34 8011D4C4 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 0A5F38 8011D4C8 0C04455D */  jal   func_80111574
/* 0A5F3C 8011D4CC 8D24015C */   lw    $a0, 0x15c($t1)
/* 0A5F40 8011D4D0 8C4F001C */  lw    $t7, 0x1c($v0)
/* 0A5F44 8011D4D4 3C098013 */  lui   $t1, %hi(gKirbyState) # $t1, 0x8013
/* 0A5F48 8011D4D8 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0A5F4C 8011D4DC 254AA7C4 */  addiu $t2, %lo(D_8004A7C4) # addiu $t2, $t2, -0x583c
/* 0A5F50 8011D4E0 2529E7C0 */  addiu $t1, %lo(gKirbyState) # addiu $t1, $t1, -0x1840
/* 0A5F54 8011D4E4 C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 0A5F58 8011D4E8 00402825 */  move  $a1, $v0
/* 0A5F5C 8011D4EC 00002025 */  move  $a0, $zero
/* 0A5F60 8011D4F0 19E00040 */  blez  $t7, .L8011D5F4_ovl2
/* 0A5F64 8011D4F4 8C430020 */   lw    $v1, 0x20($v0)
/* 0A5F68 8011D4F8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A5F6C 8011D4FC 3C08800E */  lui   $t0, %hi(D_800DFBD0) # $t0, 0x800e
/* 0A5F70 8011D500 44810000 */  mtc1  $at, $f0
/* 0A5F74 8011D504 2508FBD0 */  addiu $t0, %lo(D_800DFBD0) # addiu $t0, $t0, -0x430
/* 0A5F78 8011D508 24070002 */  li    $a3, 2
/* 0A5F7C 8011D50C 24060001 */  li    $a2, 1
/* 0A5F80 8011D510 46006032 */  c.eq.s $f12, $f0
.L8011D514_ovl2:
/* 0A5F84 8011D514 00000000 */  nop   
/* 0A5F88 8011D518 45030022 */  bc1tl .L8011D5A4_ovl2
/* 0A5F8C 8011D51C 8C780008 */   lw    $t8, 8($v1)
/* 0A5F90 8011D520 90620004 */  lbu   $v0, 4($v1)
/* 0A5F94 8011D524 50460006 */  beql  $v0, $a2, .L8011D540_ovl2
/* 0A5F98 8011D528 C4640018 */   lwc1  $f4, 0x18($v1)
/* 0A5F9C 8011D52C 50470008 */  beql  $v0, $a3, .L8011D550_ovl2
/* 0A5FA0 8011D530 C468000C */   lwc1  $f8, 0xc($v1)
/* 0A5FA4 8011D534 1000001B */  b     .L8011D5A4_ovl2
/* 0A5FA8 8011D538 8C780008 */   lw    $t8, 8($v1)
/* 0A5FAC 8011D53C C4640018 */  lwc1  $f4, 0x18($v1)
.L8011D540_ovl2:
/* 0A5FB0 8011D540 460C2182 */  mul.s $f6, $f4, $f12
/* 0A5FB4 8011D544 10000016 */  b     .L8011D5A0_ovl2
/* 0A5FB8 8011D548 E4660018 */   swc1  $f6, 0x18($v1)
/* 0A5FBC 8011D54C C468000C */  lwc1  $f8, 0xc($v1)
.L8011D550_ovl2:
/* 0A5FC0 8011D550 C4700010 */  lwc1  $f16, 0x10($v1)
/* 0A5FC4 8011D554 C4640014 */  lwc1  $f4, 0x14($v1)
/* 0A5FC8 8011D558 460C4282 */  mul.s $f10, $f8, $f12
/* 0A5FCC 8011D55C C4680018 */  lwc1  $f8, 0x18($v1)
/* 0A5FD0 8011D560 460C8482 */  mul.s $f18, $f16, $f12
/* 0A5FD4 8011D564 C470001C */  lwc1  $f16, 0x1c($v1)
/* 0A5FD8 8011D568 460C2182 */  mul.s $f6, $f4, $f12
/* 0A5FDC 8011D56C E46A000C */  swc1  $f10, 0xc($v1)
/* 0A5FE0 8011D570 C4640020 */  lwc1  $f4, 0x20($v1)
/* 0A5FE4 8011D574 460C4282 */  mul.s $f10, $f8, $f12
/* 0A5FE8 8011D578 E4720010 */  swc1  $f18, 0x10($v1)
/* 0A5FEC 8011D57C C4680024 */  lwc1  $f8, 0x24($v1)
/* 0A5FF0 8011D580 460C8482 */  mul.s $f18, $f16, $f12
/* 0A5FF4 8011D584 E4660014 */  swc1  $f6, 0x14($v1)
/* 0A5FF8 8011D588 460C2182 */  mul.s $f6, $f4, $f12
/* 0A5FFC 8011D58C E46A0018 */  swc1  $f10, 0x18($v1)
/* 0A6000 8011D590 460C4282 */  mul.s $f10, $f8, $f12
/* 0A6004 8011D594 E472001C */  swc1  $f18, 0x1c($v1)
/* 0A6008 8011D598 E4660020 */  swc1  $f6, 0x20($v1)
/* 0A600C 8011D59C E46A0024 */  swc1  $f10, 0x24($v1)
.L8011D5A0_ovl2:
/* 0A6010 8011D5A0 8C780008 */  lw    $t8, 8($v1)
.L8011D5A4_ovl2:
/* 0A6014 8011D5A4 5700000E */  bnezl $t8, .L8011D5E0_ovl2
/* 0A6018 8011D5A8 8CAB001C */   lw    $t3, 0x1c($a1)
/* 0A601C 8011D5AC 8D220154 */  lw    $v0, 0x154($t1)
/* 0A6020 8011D5B0 5040000B */  beql  $v0, $zero, .L8011D5E0_ovl2
/* 0A6024 8011D5B4 8CAB001C */   lw    $t3, 0x1c($a1)
/* 0A6028 8011D5B8 8D590000 */  lw    $t9, ($t2)
/* 0A602C 8011D5BC 00027880 */  sll   $t7, $v0, 2
/* 0A6030 8011D5C0 8F2B0000 */  lw    $t3, ($t9)
/* 0A6034 8011D5C4 000B6080 */  sll   $t4, $t3, 2
/* 0A6038 8011D5C8 010C6821 */  addu  $t5, $t0, $t4
/* 0A603C 8011D5CC 8DAE0000 */  lw    $t6, ($t5)
/* 0A6040 8011D5D0 01CFC021 */  addu  $t8, $t6, $t7
/* 0A6044 8011D5D4 8F190000 */  lw    $t9, ($t8)
/* 0A6048 8011D5D8 AC790008 */  sw    $t9, 8($v1)
/* 0A604C 8011D5DC 8CAB001C */  lw    $t3, 0x1c($a1)
.L8011D5E0_ovl2:
/* 0A6050 8011D5E0 24840001 */  addiu $a0, $a0, 1
/* 0A6054 8011D5E4 24630028 */  addiu $v1, $v1, 0x28
/* 0A6058 8011D5E8 008B082A */  slt   $at, $a0, $t3
/* 0A605C 8011D5EC 5420FFC9 */  bnezl $at, .L8011D514_ovl2
/* 0A6060 8011D5F0 46006032 */   c.eq.s $f12, $f0
.L8011D5F4_ovl2:
/* 0A6064 8011D5F4 00A02025 */  move  $a0, $a1
/* 0A6068 8011D5F8 0C044713 */  jal   func_80111C4C
/* 0A606C 8011D5FC AFA50018 */   sw    $a1, 0x18($sp)
/* 0A6070 8011D600 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A6074 8011D604 8FA20018 */  lw    $v0, 0x18($sp)
/* 0A6078 8011D608 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A607C 8011D60C 03E00008 */  jr    $ra
/* 0A6080 8011D610 00000000 */   nop   