glabel func_80158C40_ovl3
/* 0B9680 80158C40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B9684 80158C44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B9688 80158C48 0C0473D6 */  jal   func_8011CF58
/* 0B968C 80158C4C AFA40018 */   sw    $a0, 0x18($sp)
/* 0B9690 80158C50 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0B9694 80158C54 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0B9698 80158C58 3C01800E */  lui   $at, 0x800e
/* 0B969C 80158C5C 240E004A */  li    $t6, 74
/* 0B96A0 80158C60 8DF80000 */  lw    $t8, ($t7)
/* 0B96A4 80158C64 8FA40018 */  lw    $a0, 0x18($sp)
/* 0B96A8 80158C68 0018C880 */  sll   $t9, $t8, 2
/* 0B96AC 80158C6C 00390821 */  addu  $at, $at, $t9
/* 0B96B0 80158C70 0C055F17 */  jal   func_80157C5C_ovl3
/* 0B96B4 80158C74 AC2EDFD0 */   sw    $t6, -0x2030($at)
/* 0B96B8 80158C78 0C03EF87 */  jal   func_800FBE1C
/* 0B96BC 80158C7C 00000000 */   nop   
/* 0B96C0 80158C80 0C03E905 */  jal   func_800FA414
/* 0B96C4 80158C84 24040003 */   li    $a0, 3
/* 0B96C8 80158C88 0C029D9E */  jal   play_sound
/* 0B96CC 80158C8C 240401EF */   li    $a0, 495
/* 0B96D0 80158C90 0C02BE85 */  jal   func_800AFA14
/* 0B96D4 80158C94 00000000 */   nop   
/* 0B96D8 80158C98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B96DC 80158C9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B96E0 80158CA0 03E00008 */  jr    $ra
/* 0B96E4 80158CA4 00000000 */   nop   
.type func_80158C40_ovl3, @function
.size func_80158C40_ovl3, . - func_80158C40_ovl3
