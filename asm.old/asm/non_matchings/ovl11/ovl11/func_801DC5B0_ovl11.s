glabel func_801DC5B0_ovl11
/* 1E6E70 801DC5B0 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1E6E74 801DC5B4 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1E6E78 801DC5B8 8CEE0000 */  lw    $t6, ($a3)
/* 1E6E7C 801DC5BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1E6E80 801DC5C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E6E84 801DC5C4 8DC30000 */  lw    $v1, ($t6)
/* 1E6E88 801DC5C8 3C06800E */ lui $a2, %hi(D_800DFBD0)
/* 1E6E8C 801DC5CC 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 1E6E90 801DC5D0 00031880 */  sll   $v1, $v1, 2
/* 1E6E94 801DC5D4 00C33021 */  addu  $a2, $a2, $v1
/* 1E6E98 801DC5D8 8CC6FBD0 */ lw $a2, %lo(D_800DFBD0)($a2)
/* 1E6E9C 801DC5DC 00431021 */  addu  $v0, $v0, $v1
/* 1E6EA0 801DC5E0 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 1E6EA4 801DC5E4 8CCF006C */  lw    $t7, 0x6c($a2)
/* 1E6EA8 801DC5E8 3C04800E */ lui $a0, %hi(D_800DE350)
/* 1E6EAC 801DC5EC 00832021 */  addu  $a0, $a0, $v1
/* 1E6EB0 801DC5F0 AFAF001C */  sw    $t7, 0x1c($sp)
/* 1E6EB4 801DC5F4 8CD80074 */  lw    $t8, 0x74($a2)
/* 1E6EB8 801DC5F8 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1E6EBC 801DC5FC 24190002 */  li    $t9, 2
/* 1E6EC0 801DC600 AFB80018 */  sw    $t8, 0x18($sp)
/* 1E6EC4 801DC604 24080015 */  li    $t0, 21
/* 1E6EC8 801DC608 24090001 */  li    $t1, 1
/* 1E6ECC 801DC60C AC590070 */  sw    $t9, 0x70($v0)
/* 1E6ED0 801DC610 AC480068 */  sw    $t0, 0x68($v0)
/* 1E6ED4 801DC614 AC49006C */  sw    $t1, 0x6c($v0)
/* 1E6ED8 801DC618 8CEB0000 */  lw    $t3, ($a3)
/* 1E6EDC 801DC61C 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 1E6EE0 801DC620 240A0001 */  li    $t2, 1
/* 1E6EE4 801DC624 8D6C0000 */  lw    $t4, ($t3)
/* 1E6EE8 801DC628 3C053F80 */  lui   $a1, 0x3f80
/* 1E6EEC 801DC62C 000C6880 */  sll   $t5, $t4, 2
/* 1E6EF0 801DC630 002D0821 */  addu  $at, $at, $t5
/* 1E6EF4 801DC634 0C076CAF */  jal   func_801DB2BC_ovl11
/* 1E6EF8 801DC638 AC2AA1A0 */ sw $t2, %lo(D_800EA1A0)($at)
/* 1E6EFC 801DC63C 3C05801E */  lui   $a1, %hi(D_801E0B14) # $a1, 0x801e
/* 1E6F00 801DC640 24A50B14 */  addiu $a1, %lo(D_801E0B14) # addiu $a1, $a1, 0xb14
/* 1E6F04 801DC644 0C076CC7 */  jal   func_801DB31C_ovl11
/* 1E6F08 801DC648 8FA4001C */   lw    $a0, 0x1c($sp)
/* 1E6F0C 801DC64C 3C05801E */  lui   $a1, %hi(D_801E0B20) # $a1, 0x801e
/* 1E6F10 801DC650 24A50B20 */  addiu $a1, %lo(D_801E0B20) # addiu $a1, $a1, 0xb20
/* 1E6F14 801DC654 0C076CC7 */  jal   func_801DB31C_ovl11
/* 1E6F18 801DC658 8FA40018 */   lw    $a0, 0x18($sp)
/* 1E6F1C 801DC65C 0C029D9E */  jal   play_sound
/* 1E6F20 801DC660 24040175 */   li    $a0, 373
/* 1E6F24 801DC664 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E6F28 801DC668 27BD0028 */  addiu $sp, $sp, 0x28
/* 1E6F2C 801DC66C 03E00008 */  jr    $ra
/* 1E6F30 801DC670 00000000 */   nop   
.type func_801DC5B0_ovl11, @function
.size func_801DC5B0_ovl11, . - func_801DC5B0_ovl11
