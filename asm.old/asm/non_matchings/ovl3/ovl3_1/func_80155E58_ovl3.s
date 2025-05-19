glabel func_80155E58_ovl3
/* 0B6898 80155E58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B689C 80155E5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B68A0 80155E60 0C046EAF */  jal   func_8011BABC
/* 0B68A4 80155E64 00000000 */   nop   
/* 0B68A8 80155E68 240E0002 */  li    $t6, 2
/* 0B68AC 80155E6C A04E0054 */  sb    $t6, 0x54($v0)
/* 0B68B0 80155E70 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0B68B4 80155E74 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0B68B8 80155E78 3C06800E */  lui   $a2, 0x800e
/* 0B68BC 80155E7C 3C09800E */  lui   $t1, 0x800e
/* 0B68C0 80155E80 8DF80000 */  lw    $t8, ($t7)
/* 0B68C4 80155E84 00402025 */  move  $a0, $v0
/* 0B68C8 80155E88 0018C880 */  sll   $t9, $t8, 2
/* 0B68CC 80155E8C 00D93021 */  addu  $a2, $a2, $t9
/* 0B68D0 80155E90 8CC60D50 */  lw    $a2, 0xd50($a2)
/* 0B68D4 80155E94 00064080 */  sll   $t0, $a2, 2
/* 0B68D8 80155E98 01284821 */  addu  $t1, $t1, $t0
/* 0B68DC 80155E9C 8D29E350 */  lw    $t1, -0x1cb0($t1)
/* 0B68E0 80155EA0 0C06EF94 */  jal   func_801BBE50_ovl3
/* 0B68E4 80155EA4 8D25003C */   lw    $a1, 0x3c($t1)
/* 0B68E8 80155EA8 00021880 */  sll   $v1, $v0, 2
/* 0B68EC 80155EAC 3C01800F */  lui   $at, 0x800f
/* 0B68F0 80155EB0 00230821 */  addu  $at, $at, $v1
/* 0B68F4 80155EB4 240A0003 */  li    $t2, 3
/* 0B68F8 80155EB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B68FC 80155EBC AC2A83E0 */  sw    $t2, -0x7c20($at)
/* 0B6900 80155EC0 3C01800F */  lui   $at, 0x800f
/* 0B6904 80155EC4 00230821 */  addu  $at, $at, $v1
/* 0B6908 80155EC8 AC208220 */  sw    $zero, -0x7de0($at)
/* 0B690C 80155ECC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B6910 80155ED0 03E00008 */  jr    $ra
/* 0B6914 80155ED4 00001025 */   move  $v0, $zero
.type func_80155E58_ovl3, @function
.size func_80155E58_ovl3, . - func_80155E58_ovl3
