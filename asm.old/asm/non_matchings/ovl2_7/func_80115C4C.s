glabel func_80115C4C
/* 09E6BC 80115C4C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09E6C0 80115C50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09E6C4 80115C54 8C8E0000 */  lw    $t6, ($a0)
/* 09E6C8 80115C58 AFAE001C */  sw    $t6, 0x1c($sp)
/* 09E6CC 80115C5C 8C8F004C */  lw    $t7, 0x4c($a0)
/* 09E6D0 80115C60 AFA40020 */  sw    $a0, 0x20($sp)
/* 09E6D4 80115C64 0C047891 */  jal   func_8011E244
/* 09E6D8 80115C68 AFAF0018 */   sw    $t7, 0x18($sp)
/* 09E6DC 80115C6C 8FB80018 */  lw    $t8, 0x18($sp)
/* 09E6E0 80115C70 3C040006 */  lui   $a0, (0x00060003 >> 16) # lui $a0, 6
/* 09E6E4 80115C74 93190000 */  lbu   $t9, ($t8)
/* 09E6E8 80115C78 5459002C */  bnel  $v0, $t9, .L80115D2C_ovl2
/* 09E6EC 80115C7C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09E6F0 80115C80 0C02A806 */  jal   func_800AA018
/* 09E6F4 80115C84 34840003 */   ori   $a0, (0x00060003 & 0xFFFF) # ori $a0, $a0, 3
/* 09E6F8 80115C88 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 09E6FC 80115C8C 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 09E700 80115C90 8C490000 */  lw    $t1, ($v0)
/* 09E704 80115C94 8FAC0018 */  lw    $t4, 0x18($sp)
/* 09E708 80115C98 3C088011 */  lui   $t0, %hi(D_80115B64) # $t0, 0x8011
/* 09E70C 80115C9C 8D2A0000 */  lw    $t2, ($t1)
/* 09E710 80115CA0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09E714 80115CA4 25085B64 */  addiu $t0, %lo(D_80115B64) # addiu $t0, $t0, 0x5b64
/* 09E718 80115CA8 000A5880 */  sll   $t3, $t2, 2
/* 09E71C 80115CAC 002B0821 */  addu  $at, $at, $t3
/* 09E720 80115CB0 AC28EF90 */ sw $t0, %lo(D_800DEF90)($at)
/* 09E724 80115CB4 918D0003 */  lbu   $t5, 3($t4)
/* 09E728 80115CB8 3C0F800E */ lui $t7, %hi(D_800DE350)
/* 09E72C 80115CBC 3C040006 */  lui   $a0, (0x00060004 >> 16) # lui $a0, 6
/* 09E730 80115CC0 000D7080 */  sll   $t6, $t5, 2
/* 09E734 80115CC4 01EE7821 */  addu  $t7, $t7, $t6
/* 09E738 80115CC8 8DEFE350 */ lw $t7, %lo(D_800DE350)($t7)
/* 09E73C 80115CCC 34840004 */  ori   $a0, (0x00060004 & 0xFFFF) # ori $a0, $a0, 4
/* 09E740 80115CD0 0C02A806 */  jal   func_800AA018
/* 09E744 80115CD4 AC4F0000 */   sw    $t7, ($v0)
/* 09E748 80115CD8 8FB8001C */  lw    $t8, 0x1c($sp)
/* 09E74C 80115CDC 3C09800F */ lui $t1, %hi(D_800E98E0)
/* 09E750 80115CE0 3C08800E */ lui $t0, %hi(D_800DE350)
/* 09E754 80115CE4 0018C880 */  sll   $t9, $t8, 2
/* 09E758 80115CE8 01394821 */  addu  $t1, $t1, $t9
/* 09E75C 80115CEC 8D2998E0 */ lw $t1, %lo(D_800E98E0)($t1)
/* 09E760 80115CF0 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 09E764 80115CF4 3C040002 */  lui   $a0, (0x000202EB >> 16) # lui $a0, 2
/* 09E768 80115CF8 00095080 */  sll   $t2, $t1, 2
/* 09E76C 80115CFC 010A4021 */  addu  $t0, $t0, $t2
/* 09E770 80115D00 8D08E350 */ lw $t0, %lo(D_800DE350)($t0)
/* 09E774 80115D04 348402EB */  ori   $a0, (0x000202EB & 0xFFFF) # ori $a0, $a0, 0x2eb
/* 09E778 80115D08 0C02A806 */  jal   func_800AA018
/* 09E77C 80115D0C AC28A7C4 */   sw    $t0, %lo(D_8004A7C4)($at)
/* 09E780 80115D10 3C040002 */  lui   $a0, (0x000202EC >> 16) # lui $a0, 2
/* 09E784 80115D14 0C02A806 */  jal   func_800AA018
/* 09E788 80115D18 348402EC */   ori   $a0, (0x000202EC & 0xFFFF) # ori $a0, $a0, 0x2ec
/* 09E78C 80115D1C 8FAB0020 */  lw    $t3, 0x20($sp)
/* 09E790 80115D20 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 09E794 80115D24 AC2BA7C4 */  sw    $t3, %lo(D_8004A7C4)($at)
/* 09E798 80115D28 8FBF0014 */  lw    $ra, 0x14($sp)
.L80115D2C_ovl2:
/* 09E79C 80115D2C 27BD0020 */  addiu $sp, $sp, 0x20
/* 09E7A0 80115D30 03E00008 */  jr    $ra
/* 09E7A4 80115D34 00000000 */   nop   
.type func_80115C4C, @function
.size func_80115C4C, . - func_80115C4C
