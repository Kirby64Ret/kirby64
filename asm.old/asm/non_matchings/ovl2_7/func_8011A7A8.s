glabel func_8011A7A8
/* 0A3218 8011A7A8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A321C 8011A7AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3220 8011A7B0 AFA40028 */  sw    $a0, 0x28($sp)
/* 0A3224 8011A7B4 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0A3228 8011A7B8 0C0478DA */  jal   func_8011E368
/* 0A322C 8011A7BC AFAF0024 */   sw    $t7, 0x24($sp)
/* 0A3230 8011A7C0 50400027 */  beql  $v0, $zero, .L8011A860_ovl2
/* 0A3234 8011A7C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A3238 8011A7C8 0C047891 */  jal   func_8011E244
/* 0A323C 8011A7CC 00000000 */   nop   
/* 0A3240 8011A7D0 8FB80024 */  lw    $t8, 0x24($sp)
/* 0A3244 8011A7D4 8FA80028 */  lw    $t0, 0x28($sp)
/* 0A3248 8011A7D8 93190000 */  lbu   $t9, ($t8)
/* 0A324C 8011A7DC 54590020 */  bnel  $v0, $t9, .L8011A860_ovl2
/* 0A3250 8011A7E0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A3254 8011A7E4 8D090000 */  lw    $t1, ($t0)
/* 0A3258 8011A7E8 3C02800E */ lui $v0, %hi(D_800E77A0)
/* 0A325C 8011A7EC 3C0C8012 */  lui   $t4, %hi(D_80124E14) # $t4, 0x8012
/* 0A3260 8011A7F0 00095040 */  sll   $t2, $t1, 1
/* 0A3264 8011A7F4 004A1021 */  addu  $v0, $v0, $t2
/* 0A3268 8011A7F8 944277A0 */ lhu $v0, %lo(D_800E77A0)($v0)
/* 0A326C 8011A7FC 258C4E14 */  addiu $t4, %lo(D_80124E14) # addiu $t4, $t4, 0x4e14
/* 0A3270 8011A800 000258C0 */  sll   $t3, $v0, 3
/* 0A3274 8011A804 01625823 */  subu  $t3, $t3, $v0
/* 0A3278 8011A808 000B5880 */  sll   $t3, $t3, 2
/* 0A327C 8011A80C 016C1821 */  addu  $v1, $t3, $t4
/* 0A3280 8011A810 8C640008 */  lw    $a0, 8($v1)
/* 0A3284 8011A814 AFA30018 */  sw    $v1, 0x18($sp)
/* 0A3288 8011A818 0C02A806 */  jal   func_800AA018
/* 0A328C 8011A81C AFA20020 */   sw    $v0, 0x20($sp)
/* 0A3290 8011A820 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0A3294 8011A824 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0A3298 8011A828 8FA30018 */  lw    $v1, 0x18($sp)
/* 0A329C 8011A82C 8FA20020 */  lw    $v0, 0x20($sp)
/* 0A32A0 8011A830 8DCF0000 */  lw    $t7, ($t6)
/* 0A32A4 8011A834 8C6D0014 */  lw    $t5, 0x14($v1)
/* 0A32A8 8011A838 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A32AC 8011A83C 000FC080 */  sll   $t8, $t7, 2
/* 0A32B0 8011A840 00380821 */  addu  $at, $at, $t8
/* 0A32B4 8011A844 AC2DEF90 */ sw $t5, %lo(D_800DEF90)($at)
/* 0A32B8 8011A848 3C01800D */  lui   $at, %hi(D_800D6F24) # $at, 0x800d
/* 0A32BC 8011A84C 2459FF33 */  addiu $t9, $v0, -0xcd
/* 0A32C0 8011A850 AC396F24 */  sw    $t9, %lo(D_800D6F24)($at)
/* 0A32C4 8011A854 0C029D9E */  jal   play_sound
/* 0A32C8 8011A858 240401FD */   li    $a0, 509
/* 0A32CC 8011A85C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011A860_ovl2:
/* 0A32D0 8011A860 27BD0028 */  addiu $sp, $sp, 0x28
/* 0A32D4 8011A864 03E00008 */  jr    $ra
/* 0A32D8 8011A868 00000000 */   nop   
.type func_8011A7A8, @function
.size func_8011A7A8, . - func_8011A7A8
