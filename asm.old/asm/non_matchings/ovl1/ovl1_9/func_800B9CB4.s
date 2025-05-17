glabel func_800B9CB4
/* 061F04 800B9CB4 24010003 */  li    $at, 3
/* 061F08 800B9CB8 00A1001A */  div   $zero, $a1, $at
/* 061F0C 800B9CBC 3C02800C */  lui   $v0, %hi(D_800BE500) # $v0, 0x800c
/* 061F10 800B9CC0 8C42E500 */  lw    $v0, %lo(D_800BE500)($v0)
/* 061F14 800B9CC4 3C03800C */  lui   $v1, %hi(D_800BE504) # $v1, 0x800c
/* 061F18 800B9CC8 8C63E504 */  lw    $v1, %lo(D_800BE504)($v1)
/* 061F1C 800B9CCC 00046080 */  sll   $t4, $a0, 2
/* 061F20 800B9CD0 01846023 */  subu  $t4, $t4, $a0
/* 061F24 800B9CD4 3C18800D */  lui   $t8, %hi(D_800D6BC8) # $t8, 0x800d
/* 061F28 800B9CD8 000C6080 */  sll   $t4, $t4, 2
/* 061F2C 800B9CDC 00027080 */  sll   $t6, $v0, 2
/* 061F30 800B9CE0 27186BC8 */  addiu $t8, %lo(D_800D6BC8) # addiu $t8, $t8, 0x6bc8
/* 061F34 800B9CE4 01846023 */  subu  $t4, $t4, $a0
/* 061F38 800B9CE8 01C37821 */  addu  $t7, $t6, $v1
/* 061F3C 800B9CEC 01F83021 */  addu  $a2, $t7, $t8
/* 061F40 800B9CF0 000C60C0 */  sll   $t4, $t4, 3
/* 061F44 800B9CF4 00026880 */  sll   $t5, $v0, 2
/* 061F48 800B9CF8 018D7021 */  addu  $t6, $t4, $t5
/* 061F4C 800B9CFC 3C18800F */  lui   $t8, %hi(gSaveBuffer1) # $t8, 0x800f
/* 061F50 800B9D00 0000C810 */  mfhi  $t9
/* 061F54 800B9D04 24090001 */  li    $t1, 1
/* 061F58 800B9D08 2718C9F8 */  addiu $t8, %lo(gSaveBuffer1) # addiu $t8, $t8, -0x3608
/* 061F5C 800B9D0C 01C37821 */  addu  $t7, $t6, $v1
/* 061F60 800B9D10 03293804 */  sllv  $a3, $t1, $t9
/* 061F64 800B9D14 01F84021 */  addu  $t0, $t7, $t8
/* 061F68 800B9D18 90CA0000 */  lbu   $t2, ($a2)
/* 061F6C 800B9D1C 9109004C */  lbu   $t1, 0x4c($t0)
/* 061F70 800B9D20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 061F74 800B9D24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 061F78 800B9D28 01475825 */  or    $t3, $t2, $a3
/* 061F7C 800B9D2C 0127C825 */  or    $t9, $t1, $a3
/* 061F80 800B9D30 A0CB0000 */  sb    $t3, ($a2)
/* 061F84 800B9D34 A119004C */  sb    $t9, 0x4c($t0)
/* 061F88 800B9D38 0C02E4B6 */  jal   verify_save
/* 061F8C 800B9D3C AFA40018 */   sw    $a0, 0x18($sp)
/* 061F90 800B9D40 0C02E3F2 */  jal   calc_file_checksum
/* 061F94 800B9D44 8FA40018 */   lw    $a0, 0x18($sp)
/* 061F98 800B9D48 0C02E247 */  jal   func_800B891C
/* 061F9C 800B9D4C 8FA40018 */   lw    $a0, 0x18($sp)
/* 061FA0 800B9D50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 061FA4 800B9D54 27BD0018 */  addiu $sp, $sp, 0x18
/* 061FA8 800B9D58 03E00008 */  jr    $ra
/* 061FAC 800B9D5C 00000000 */   nop   
.type func_800B9CB4, @function
.size func_800B9CB4, . - func_800B9CB4
