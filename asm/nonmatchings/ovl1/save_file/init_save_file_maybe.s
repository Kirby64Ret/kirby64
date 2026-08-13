nonmatching init_save_file_maybe, 0x1CC

glabel init_save_file_maybe
    /* 60E84 800B8C34 00044080 */  sll        $t0, $a0, 2
    /* 60E88 800B8C38 01044023 */  subu       $t0, $t0, $a0
    /* 60E8C 800B8C3C 00084080 */  sll        $t0, $t0, 2
    /* 60E90 800B8C40 01044023 */  subu       $t0, $t0, $a0
    /* 60E94 800B8C44 3C0E800F */  lui        $t6, %hi(gSaveBuffer1)
    /* 60E98 800B8C48 25CEC9F8 */  addiu      $t6, $t6, %lo(gSaveBuffer1)
    /* 60E9C 800B8C4C 000840C0 */  sll        $t0, $t0, 3
    /* 60EA0 800B8C50 010E3821 */  addu       $a3, $t0, $t6
    /* 60EA4 800B8C54 00045080 */  sll        $t2, $a0, 2
    /* 60EA8 800B8C58 01445023 */  subu       $t2, $t2, $a0
    /* 60EAC 800B8C5C 24060001 */  addiu      $a2, $zero, 0x1
    /* 60EB0 800B8C60 000A5080 */  sll        $t2, $t2, 2
    /* 60EB4 800B8C64 01445023 */  subu       $t2, $t2, $a0
    /* 60EB8 800B8C68 3C0B800F */  lui        $t3, %hi(gSaveBuffer1)
    /* 60EBC 800B8C6C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 60EC0 800B8C70 256BC9F8 */  addiu      $t3, $t3, %lo(gSaveBuffer1)
    /* 60EC4 800B8C74 000A50C0 */  sll        $t2, $t2, 3
    /* 60EC8 800B8C78 240F05DC */  addiu      $t7, $zero, 0x5DC
    /* 60ECC 800B8C7C 2418000A */  addiu      $t8, $zero, 0xA
    /* 60ED0 800B8C80 24190960 */  addiu      $t9, $zero, 0x960
    /* 60ED4 800B8C84 014B2821 */  addu       $a1, $t2, $t3
    /* 60ED8 800B8C88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 60EDC 800B8C8C AFA40038 */  sw         $a0, 0x38($sp)
    /* 60EE0 800B8C90 ACE60010 */  sw         $a2, 0x10($a3)
    /* 60EE4 800B8C94 ACE60014 */  sw         $a2, 0x14($a3)
    /* 60EE8 800B8C98 ACE00018 */  sw         $zero, 0x18($a3)
    /* 60EEC 800B8C9C ACE6001C */  sw         $a2, 0x1C($a3)
    /* 60EF0 800B8CA0 A0E00020 */  sb         $zero, 0x20($a3)
    /* 60EF4 800B8CA4 A0E60021 */  sb         $a2, 0x21($a3)
    /* 60EF8 800B8CA8 A0E00022 */  sb         $zero, 0x22($a3)
    /* 60EFC 800B8CAC A0E00023 */  sb         $zero, 0x23($a3)
    /* 60F00 800B8CB0 A0E00024 */  sb         $zero, 0x24($a3)
    /* 60F04 800B8CB4 A0E00025 */  sb         $zero, 0x25($a3)
    /* 60F08 800B8CB8 A0E00026 */  sb         $zero, 0x26($a3)
    /* 60F0C 800B8CBC A0E00027 */  sb         $zero, 0x27($a3)
    /* 60F10 800B8CC0 A4EF0028 */  sh         $t7, 0x28($a3)
    /* 60F14 800B8CC4 A4F8002A */  sh         $t8, 0x2A($a3)
    /* 60F18 800B8CC8 A4F9002C */  sh         $t9, 0x2C($a3)
    /* 60F1C 800B8CCC 00A01025 */  or         $v0, $a1, $zero
    /* 60F20 800B8CD0 00001825 */  or         $v1, $zero, $zero
  .L800B8CD4:
    /* 60F24 800B8CD4 24630001 */  addiu      $v1, $v1, 0x1
    /* 60F28 800B8CD8 28610006 */  slti       $at, $v1, 0x6
    /* 60F2C 800B8CDC 24420004 */  addiu      $v0, $v0, 0x4
    /* 60F30 800B8CE0 A0400049 */  sb         $zero, 0x49($v0)
    /* 60F34 800B8CE4 A040004A */  sb         $zero, 0x4A($v0)
    /* 60F38 800B8CE8 A040004B */  sb         $zero, 0x4B($v0)
    /* 60F3C 800B8CEC 1420FFF9 */  bnez       $at, .L800B8CD4
    /* 60F40 800B8CF0 A0400048 */   sb        $zero, 0x48($v0)
    /* 60F44 800B8CF4 00001825 */  or         $v1, $zero, $zero
    /* 60F48 800B8CF8 00A01025 */  or         $v0, $a1, $zero
    /* 60F4C 800B8CFC 24040008 */  addiu      $a0, $zero, 0x8
  .L800B8D00:
    /* 60F50 800B8D00 24630004 */  addiu      $v1, $v1, 0x4
    /* 60F54 800B8D04 A0400044 */  sb         $zero, 0x44($v0)
    /* 60F58 800B8D08 A0400045 */  sb         $zero, 0x45($v0)
    /* 60F5C 800B8D0C A0400046 */  sb         $zero, 0x46($v0)
    /* 60F60 800B8D10 A0400047 */  sb         $zero, 0x47($v0)
    /* 60F64 800B8D14 1464FFFA */  bne        $v1, $a0, .L800B8D00
    /* 60F68 800B8D18 24420004 */   addiu     $v0, $v0, 0x4
    /* 60F6C 800B8D1C A0A0002E */  sb         $zero, 0x2E($a1)
    /* 60F70 800B8D20 A0A0002F */  sb         $zero, 0x2F($a1)
    /* 60F74 800B8D24 24030002 */  addiu      $v1, $zero, 0x2
    /* 60F78 800B8D28 24A20002 */  addiu      $v0, $a1, 0x2
    /* 60F7C 800B8D2C 24040016 */  addiu      $a0, $zero, 0x16
  .L800B8D30:
    /* 60F80 800B8D30 24630004 */  addiu      $v1, $v1, 0x4
    /* 60F84 800B8D34 A040002F */  sb         $zero, 0x2F($v0)
    /* 60F88 800B8D38 A0400030 */  sb         $zero, 0x30($v0)
    /* 60F8C 800B8D3C A0400031 */  sb         $zero, 0x31($v0)
    /* 60F90 800B8D40 24420004 */  addiu      $v0, $v0, 0x4
    /* 60F94 800B8D44 1464FFFA */  bne        $v1, $a0, .L800B8D30
    /* 60F98 800B8D48 A040002A */   sb        $zero, 0x2A($v0)
    /* 60F9C 800B8D4C 8FA40038 */  lw         $a0, 0x38($sp)
    /* 60FA0 800B8D50 AFA70020 */  sw         $a3, 0x20($sp)
    /* 60FA4 800B8D54 0C02E4B6 */  jal        saveVerify
    /* 60FA8 800B8D58 AFA80024 */   sw        $t0, 0x24($sp)
    /* 60FAC 800B8D5C 0C02E3F2 */  jal        saveSetFileChecksum
    /* 60FB0 800B8D60 8FA40038 */   lw        $a0, 0x38($sp)
    /* 60FB4 800B8D64 8FAC0038 */  lw         $t4, 0x38($sp)
    /* 60FB8 800B8D68 8FA70020 */  lw         $a3, 0x20($sp)
    /* 60FBC 800B8D6C 3C0E800D */  lui        $t6, %hi(D_800D5150)
    /* 60FC0 800B8D70 25CE5150 */  addiu      $t6, $t6, %lo(D_800D5150)
    /* 60FC4 800B8D74 000C6840 */  sll        $t5, $t4, 1
    /* 60FC8 800B8D78 01AE1021 */  addu       $v0, $t5, $t6
    /* 60FCC 800B8D7C 24E50010 */  addiu      $a1, $a3, 0x10
    /* 60FD0 800B8D80 AFA50018 */  sw         $a1, 0x18($sp)
    /* 60FD4 800B8D84 90440001 */  lbu        $a0, 0x1($v0)
    /* 60FD8 800B8D88 AFA2001C */  sw         $v0, 0x1C($sp)
    /* 60FDC 800B8D8C 0C00134D */  jal        func_80004D34
    /* 60FE0 800B8D90 24060058 */   addiu     $a2, $zero, 0x58
    /* 60FE4 800B8D94 8FA2001C */  lw         $v0, 0x1C($sp)
    /* 60FE8 800B8D98 8FA50018 */  lw         $a1, 0x18($sp)
    /* 60FEC 800B8D9C 24060058 */  addiu      $a2, $zero, 0x58
    /* 60FF0 800B8DA0 0C00134D */  jal        func_80004D34
    /* 60FF4 800B8DA4 90440007 */   lbu       $a0, 0x7($v0)
    /* 60FF8 800B8DA8 8FAF0024 */  lw         $t7, 0x24($sp)
    /* 60FFC 800B8DAC 8FAA0018 */  lw         $t2, 0x18($sp)
    /* 61000 800B8DB0 3C19800F */  lui        $t9, %hi(gSaveBuffer2)
    /* 61004 800B8DB4 2739CBB0 */  addiu      $t9, $t9, %lo(gSaveBuffer2)
    /* 61008 800B8DB8 25F80010 */  addiu      $t8, $t7, 0x10
    /* 6100C 800B8DBC 03194821 */  addu       $t1, $t8, $t9
    /* 61010 800B8DC0 254D0054 */  addiu      $t5, $t2, 0x54
  .L800B8DC4:
    /* 61014 800B8DC4 8D4C0000 */  lw         $t4, 0x0($t2)
    /* 61018 800B8DC8 254A000C */  addiu      $t2, $t2, 0xC
    /* 6101C 800B8DCC 2529000C */  addiu      $t1, $t1, 0xC
    /* 61020 800B8DD0 AD2CFFF4 */  sw         $t4, -0xC($t1)
    /* 61024 800B8DD4 8D4BFFF8 */  lw         $t3, -0x8($t2)
    /* 61028 800B8DD8 AD2BFFF8 */  sw         $t3, -0x8($t1)
    /* 6102C 800B8DDC 8D4CFFFC */  lw         $t4, -0x4($t2)
    /* 61030 800B8DE0 154DFFF8 */  bne        $t2, $t5, .L800B8DC4
    /* 61034 800B8DE4 AD2CFFFC */   sw        $t4, -0x4($t1)
    /* 61038 800B8DE8 8D4C0000 */  lw         $t4, 0x0($t2)
    /* 6103C 800B8DEC AD2C0000 */  sw         $t4, 0x0($t1)
    /* 61040 800B8DF0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 61044 800B8DF4 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 61048 800B8DF8 03E00008 */  jr         $ra
    /* 6104C 800B8DFC 00000000 */   nop
endlabel init_save_file_maybe
.size init_save_file_maybe, . - init_save_file_maybe
