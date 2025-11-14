glabel init_save_file_maybe
/* 060E84 800B8C34 00044080 */  sll   $t0, $a0, 2
/* 060E88 800B8C38 01044023 */  subu  $t0, $t0, $a0
/* 060E8C 800B8C3C 00084080 */  sll   $t0, $t0, 2
/* 060E90 800B8C40 01044023 */  subu  $t0, $t0, $a0
/* 060E94 800B8C44 3C0E800F */  lui   $t6, %hi(gSaveBuffer1) # $t6, 0x800f
/* 060E98 800B8C48 25CEC9F8 */  addiu $t6, %lo(gSaveBuffer1) # addiu $t6, $t6, -0x3608
/* 060E9C 800B8C4C 000840C0 */  sll   $t0, $t0, 3
/* 060EA0 800B8C50 010E3821 */  addu  $a3, $t0, $t6
/* 060EA4 800B8C54 00045080 */  sll   $t2, $a0, 2
/* 060EA8 800B8C58 01445023 */  subu  $t2, $t2, $a0
/* 060EAC 800B8C5C 24060001 */  li    $a2, 1
/* 060EB0 800B8C60 000A5080 */  sll   $t2, $t2, 2
/* 060EB4 800B8C64 01445023 */  subu  $t2, $t2, $a0
/* 060EB8 800B8C68 3C0B800F */  lui   $t3, %hi(gSaveBuffer1) # $t3, 0x800f
/* 060EBC 800B8C6C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 060EC0 800B8C70 256BC9F8 */  addiu $t3, %lo(gSaveBuffer1) # addiu $t3, $t3, -0x3608
/* 060EC4 800B8C74 000A50C0 */  sll   $t2, $t2, 3
/* 060EC8 800B8C78 240F05DC */  li    $t7, 1500
/* 060ECC 800B8C7C 2418000A */  li    $t8, 10
/* 060ED0 800B8C80 24190960 */  li    $t9, 2400
/* 060ED4 800B8C84 014B2821 */  addu  $a1, $t2, $t3
/* 060ED8 800B8C88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 060EDC 800B8C8C AFA40038 */  sw    $a0, 0x38($sp)
/* 060EE0 800B8C90 ACE60010 */  sw    $a2, 0x10($a3)
/* 060EE4 800B8C94 ACE60014 */  sw    $a2, 0x14($a3)
/* 060EE8 800B8C98 ACE00018 */  sw    $zero, 0x18($a3)
/* 060EEC 800B8C9C ACE6001C */  sw    $a2, 0x1c($a3)
/* 060EF0 800B8CA0 A0E00020 */  sb    $zero, 0x20($a3)
/* 060EF4 800B8CA4 A0E60021 */  sb    $a2, 0x21($a3)
/* 060EF8 800B8CA8 A0E00022 */  sb    $zero, 0x22($a3)
/* 060EFC 800B8CAC A0E00023 */  sb    $zero, 0x23($a3)
/* 060F00 800B8CB0 A0E00024 */  sb    $zero, 0x24($a3)
/* 060F04 800B8CB4 A0E00025 */  sb    $zero, 0x25($a3)
/* 060F08 800B8CB8 A0E00026 */  sb    $zero, 0x26($a3)
/* 060F0C 800B8CBC A0E00027 */  sb    $zero, 0x27($a3)
/* 060F10 800B8CC0 A4EF0028 */  sh    $t7, 0x28($a3)
/* 060F14 800B8CC4 A4F8002A */  sh    $t8, 0x2a($a3)
/* 060F18 800B8CC8 A4F9002C */  sh    $t9, 0x2c($a3)
/* 060F1C 800B8CCC 00A01025 */  move  $v0, $a1
/* 060F20 800B8CD0 00001825 */  move  $v1, $zero
.L800B8CD4_ovl1:
/* 060F24 800B8CD4 24630001 */  addiu $v1, $v1, 1
/* 060F28 800B8CD8 28610006 */  slti  $at, $v1, 6
/* 060F2C 800B8CDC 24420004 */  addiu $v0, $v0, 4
/* 060F30 800B8CE0 A0400049 */  sb    $zero, 0x49($v0)
/* 060F34 800B8CE4 A040004A */  sb    $zero, 0x4a($v0)
/* 060F38 800B8CE8 A040004B */  sb    $zero, 0x4b($v0)
/* 060F3C 800B8CEC 1420FFF9 */  bnez  $at, .L800B8CD4_ovl1
/* 060F40 800B8CF0 A0400048 */   sb    $zero, 0x48($v0)
/* 060F44 800B8CF4 00001825 */  move  $v1, $zero
/* 060F48 800B8CF8 00A01025 */  move  $v0, $a1
/* 060F4C 800B8CFC 24040008 */  li    $a0, 8
.L800B8D00_ovl1:
/* 060F50 800B8D00 24630004 */  addiu $v1, $v1, 4
/* 060F54 800B8D04 A0400044 */  sb    $zero, 0x44($v0)
/* 060F58 800B8D08 A0400045 */  sb    $zero, 0x45($v0)
/* 060F5C 800B8D0C A0400046 */  sb    $zero, 0x46($v0)
/* 060F60 800B8D10 A0400047 */  sb    $zero, 0x47($v0)
/* 060F64 800B8D14 1464FFFA */  bne   $v1, $a0, .L800B8D00_ovl1
/* 060F68 800B8D18 24420004 */   addiu $v0, $v0, 4
/* 060F6C 800B8D1C A0A0002E */  sb    $zero, 0x2e($a1)
/* 060F70 800B8D20 A0A0002F */  sb    $zero, 0x2f($a1)
/* 060F74 800B8D24 24030002 */  li    $v1, 2
/* 060F78 800B8D28 24A20002 */  addiu $v0, $a1, 2
/* 060F7C 800B8D2C 24040016 */  li    $a0, 22
.L800B8D30_ovl1:
/* 060F80 800B8D30 24630004 */  addiu $v1, $v1, 4
/* 060F84 800B8D34 A040002F */  sb    $zero, 0x2f($v0)
/* 060F88 800B8D38 A0400030 */  sb    $zero, 0x30($v0)
/* 060F8C 800B8D3C A0400031 */  sb    $zero, 0x31($v0)
/* 060F90 800B8D40 24420004 */  addiu $v0, $v0, 4
/* 060F94 800B8D44 1464FFFA */  bne   $v1, $a0, .L800B8D30_ovl1
/* 060F98 800B8D48 A040002A */   sb    $zero, 0x2a($v0)
/* 060F9C 800B8D4C 8FA40038 */  lw    $a0, 0x38($sp)
/* 060FA0 800B8D50 AFA70020 */  sw    $a3, 0x20($sp)
/* 060FA4 800B8D54 0C02E4B6 */  jal   verify_save
/* 060FA8 800B8D58 AFA80024 */   sw    $t0, 0x24($sp)
/* 060FAC 800B8D5C 0C02E3F2 */  jal   calc_file_checksum
/* 060FB0 800B8D60 8FA40038 */   lw    $a0, 0x38($sp)
/* 060FB4 800B8D64 8FAC0038 */  lw    $t4, 0x38($sp)
/* 060FB8 800B8D68 8FA70020 */  lw    $a3, 0x20($sp)
/* 060FBC 800B8D6C 3C0E800D */  lui   $t6, %hi(D_800D5150) # $t6, 0x800d
/* 060FC0 800B8D70 25CE5150 */  addiu $t6, %lo(D_800D5150) # addiu $t6, $t6, 0x5150
/* 060FC4 800B8D74 000C6840 */  sll   $t5, $t4, 1
/* 060FC8 800B8D78 01AE1021 */  addu  $v0, $t5, $t6
/* 060FCC 800B8D7C 24E50010 */  addiu $a1, $a3, 0x10
/* 060FD0 800B8D80 AFA50018 */  sw    $a1, 0x18($sp)
/* 060FD4 800B8D84 90440001 */  lbu   $a0, 1($v0)
/* 060FD8 800B8D88 AFA2001C */  sw    $v0, 0x1c($sp)
/* 060FDC 800B8D8C 0C00134D */  jal   func_80004D34_ovl1
/* 060FE0 800B8D90 24060058 */   li    $a2, 88
/* 060FE4 800B8D94 8FA2001C */  lw    $v0, 0x1c($sp)
/* 060FE8 800B8D98 8FA50018 */  lw    $a1, 0x18($sp)
/* 060FEC 800B8D9C 24060058 */  li    $a2, 88
/* 060FF0 800B8DA0 0C00134D */  jal   func_80004D34_ovl1
/* 060FF4 800B8DA4 90440007 */   lbu   $a0, 7($v0)
/* 060FF8 800B8DA8 8FAF0024 */  lw    $t7, 0x24($sp)
/* 060FFC 800B8DAC 8FAA0018 */  lw    $t2, 0x18($sp)
/* 061000 800B8DB0 3C19800F */  lui   $t9, %hi(gSaveBuffer2) # $t9, 0x800f
/* 061004 800B8DB4 2739CBB0 */  addiu $t9, %lo(gSaveBuffer2) # addiu $t9, $t9, -0x3450
/* 061008 800B8DB8 25F80010 */  addiu $t8, $t7, 0x10
/* 06100C 800B8DBC 03194821 */  addu  $t1, $t8, $t9
/* 061010 800B8DC0 254D0054 */  addiu $t5, $t2, 0x54
.L800B8DC4_ovl1:
/* 061014 800B8DC4 8D4C0000 */  lw    $t4, ($t2)
/* 061018 800B8DC8 254A000C */  addiu $t2, $t2, 0xc
/* 06101C 800B8DCC 2529000C */  addiu $t1, $t1, 0xc
/* 061020 800B8DD0 AD2CFFF4 */  sw    $t4, -0xc($t1)
/* 061024 800B8DD4 8D4BFFF8 */  lw    $t3, -8($t2)
/* 061028 800B8DD8 AD2BFFF8 */  sw    $t3, -8($t1)
/* 06102C 800B8DDC 8D4CFFFC */  lw    $t4, -4($t2)
/* 061030 800B8DE0 154DFFF8 */  bne   $t2, $t5, .L800B8DC4_ovl1
/* 061034 800B8DE4 AD2CFFFC */   sw    $t4, -4($t1)
/* 061038 800B8DE8 8D4C0000 */  lw    $t4, ($t2)
/* 06103C 800B8DEC AD2C0000 */  sw    $t4, ($t1)
/* 061040 800B8DF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 061044 800B8DF4 27BD0038 */  addiu $sp, $sp, 0x38
/* 061048 800B8DF8 03E00008 */  jr    $ra
/* 06104C 800B8DFC 00000000 */   nop   
.size init_save_file_maybe, . - init_save_file_maybe
