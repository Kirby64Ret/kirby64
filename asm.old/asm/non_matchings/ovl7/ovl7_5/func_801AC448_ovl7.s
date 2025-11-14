glabel func_801AC448_ovl7
/* 1524B8 801AC448 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1524BC 801AC44C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1524C0 801AC450 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1524C4 801AC454 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1524C8 801AC458 AFA40028 */  sw    $a0, 0x28($sp)
/* 1524CC 801AC45C 8DCF0000 */  lw    $t7, ($t6)
/* 1524D0 801AC460 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 1524D4 801AC464 000FC080 */  sll   $t8, $t7, 2
/* 1524D8 801AC468 0338C821 */  addu  $t9, $t9, $t8
/* 1524DC 801AC46C 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 1524E0 801AC470 0C06B07D */  jal   func_801AC1F4_ovl7
/* 1524E4 801AC474 AFB90024 */   sw    $t9, 0x24($sp)
/* 1524E8 801AC478 3C02801D */  lui   $v0, %hi(D_801D0AA0) # $v0, 0x801d
/* 1524EC 801AC47C 3C03801D */  lui   $v1, %hi(D_801D0A9C) # $v1, 0x801d
/* 1524F0 801AC480 24630A9C */  addiu $v1, %lo(D_801D0A9C) # addiu $v1, $v1, 0xa9c
/* 1524F4 801AC484 24420AA0 */  addiu $v0, %lo(D_801D0AA0) # addiu $v0, $v0, 0xaa0
/* 1524F8 801AC488 AC400000 */  sw    $zero, ($v0)
/* 1524FC 801AC48C AC600000 */  sw    $zero, ($v1)
/* 152500 801AC490 3C01801D */  lui   $at, %hi(D_801D0A98) # $at, 0x801d
/* 152504 801AC494 44800000 */  mtc1  $zero, $f0
/* 152508 801AC498 AC200A98 */  sw    $zero, %lo(D_801D0A98)($at)
/* 15250C 801AC49C 8FAA0024 */  lw    $t2, 0x24($sp)
/* 152510 801AC4A0 3C01801D */  lui   $at, %hi(D_801D0AA8) # $at, 0x801d
/* 152514 801AC4A4 AC200AA8 */  sw    $zero, %lo(D_801D0AA8)($at)
/* 152518 801AC4A8 3C018013 */  lui   $at, %hi(D_8012E878) # $at, 0x8013
/* 15251C 801AC4AC 44060000 */  mfc1  $a2, $f0
/* 152520 801AC4B0 44070000 */  mfc1  $a3, $f0
/* 152524 801AC4B4 AD400034 */  sw    $zero, 0x34($t2)
/* 152528 801AC4B8 A020E878 */  sb    $zero, %lo(D_8012E878)($at)
/* 15252C 801AC4BC 00002025 */  move  $a0, $zero
/* 152530 801AC4C0 00002825 */  move  $a1, $zero
/* 152534 801AC4C4 0C03F55C */  jal   func_800FD570
/* 152538 801AC4C8 E7A00010 */   swc1  $f0, 0x10($sp)
/* 15253C 801AC4CC 0C029D9E */  jal   play_sound
/* 152540 801AC4D0 24040158 */   li    $a0, 344
/* 152544 801AC4D4 0C06B0B6 */  jal   func_801AC2D8_ovl7
/* 152548 801AC4D8 8FA40028 */   lw    $a0, 0x28($sp)
/* 15254C 801AC4DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 152550 801AC4E0 27BD0028 */  addiu $sp, $sp, 0x28
/* 152554 801AC4E4 03E00008 */  jr    $ra
/* 152558 801AC4E8 00000000 */   nop   
.type func_801AC448_ovl7, @function
.size func_801AC448_ovl7, . - func_801AC448_ovl7
