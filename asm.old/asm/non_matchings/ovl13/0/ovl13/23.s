glabel func_801DDE54_ovl13 # 23
/* 1F5DD4 801DDE54 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 1F5DD8 801DDE58 AFB00018 */  sw          $s0, 0x18($sp)
/* 1F5DDC 801DDE5C 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 1F5DE0 801DDE60 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 1F5DE4 801DDE64 8E020000 */  lw          $v0, 0x0($s0)
/* 1F5DE8 801DDE68 AFBF001C */  sw          $ra, 0x1C($sp)
/* 1F5DEC 801DDE6C AFA40020 */  sw          $a0, 0x20($sp)
/* 1F5DF0 801DDE70 8C4F0000 */  lw          $t7, 0x0($v0)
/* 1F5DF4 801DDE74 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F5DF8 801DDE78 240E0004 */  addiu       $t6, $zero, 0x4
/* 1F5DFC 801DDE7C 000FC080 */  sll         $t8, $t7, 2
/* 1F5E00 801DDE80 00380821 */  addu        $at, $at, $t8
/* 1F5E04 801DDE84 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1F5E08 801DDE88 8C480000 */  lw          $t0, 0x0($v0)
/* 1F5E0C 801DDE8C 3C0A800E */  lui         $t2, %hi(D_800E1B50)
/* 1F5E10 801DDE90 3C19801E */  lui         $t9, %hi(D_801D93A8)
/* 1F5E14 801DDE94 00084880 */  sll         $t1, $t0, 2
/* 1F5E18 801DDE98 01495021 */  addu        $t2, $t2, $t1
/* 1F5E1C 801DDE9C 8D4A1B50 */  lw          $t2, %lo(D_800E1B50)($t2)
/* 1F5E20 801DDEA0 273993A8 */  addiu       $t9, $t9, %lo(D_801D93A8)
/* 1F5E24 801DDEA4 3C04801E */  lui         $a0, %hi(D_801DAAF0)
/* 1F5E28 801DDEA8 AD59008C */  sw          $t9, 0x8C($t2)
/* 1F5E2C 801DDEAC 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F5E30 801DDEB0 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F5E34 801DDEB4 2484AAF0 */  addiu       $a0, $a0, %lo(D_801DAAF0)
/* 1F5E38 801DDEB8 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F5E3C 801DDEBC 000C6880 */  sll         $t5, $t4, 2
/* 1F5E40 801DDEC0 002D0821 */  addu        $at, $at, $t5
/* 1F5E44 801DDEC4 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F5E48 801DDEC8 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F5E4C 801DDECC 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F5E50 801DDED0 3C09800E */  lui         $t1, %hi(D_800E1B50)
/* 1F5E54 801DDED4 3C0F801E */  lui         $t7, %hi(D_801DAD8C)
/* 1F5E58 801DDED8 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F5E5C 801DDEDC 25EFAD8C */  addiu       $t7, $t7, %lo(D_801DAD8C)
/* 1F5E60 801DDEE0 00184080 */  sll         $t0, $t8, 2
/* 1F5E64 801DDEE4 01284821 */  addu        $t1, $t1, $t0
/* 1F5E68 801DDEE8 8D291B50 */  lw          $t1, %lo(D_800E1B50)($t1)
/* 1F5E6C 801DDEEC 0C02CCFD */  jal         func_800B33F4
/* 1F5E70 801DDEF0 AD2F0098 */   sw         $t7, 0x98($t1)
/* 1F5E74 801DDEF4 3C040001 */  lui         $a0, (0x10423 >> 16)
/* 1F5E78 801DDEF8 0C02A855 */  jal         func_800AA154
/* 1F5E7C 801DDEFC 34840423 */   ori        $a0, $a0, (0x10423 & 0xFFFF)
/* 1F5E80 801DDF00 3C040001 */  lui         $a0, (0x10427 >> 16)
/* 1F5E84 801DDF04 34840427 */  ori         $a0, $a0, (0x10427 & 0xFFFF)
/* 1F5E88 801DDF08 0C02AA19 */  jal         func_800AA864
/* 1F5E8C 801DDF0C 24050002 */   addiu      $a1, $zero, 0x2
/* 1F5E90 801DDF10 3C040001 */  lui         $a0, (0x10429 >> 16)
/* 1F5E94 801DDF14 0C02A855 */  jal         func_800AA154
/* 1F5E98 801DDF18 34840429 */   ori        $a0, $a0, (0x10429 & 0xFFFF)
/* 1F5E9C 801DDF1C 8E020000 */  lw          $v0, 0x0($s0)
/* 1F5EA0 801DDF20 3C07800F */  lui         $a3, %hi(D_800E9AA0)
/* 1F5EA4 801DDF24 24E79AA0 */  addiu       $a3, $a3, %lo(D_800E9AA0)
/* 1F5EA8 801DDF28 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5EAC 801DDF2C 24010001 */  addiu       $at, $zero, 0x1
/* 1F5EB0 801DDF30 00031880 */  sll         $v1, $v1, 2
/* 1F5EB4 801DDF34 00E33021 */  addu        $a2, $a3, $v1
/* 1F5EB8 801DDF38 8CC50000 */  lw          $a1, 0x0($a2)
/* 1F5EBC 801DDF3C 10A0000A */  beqz        $a1, L801DDF68_ovl13
/* 1F5EC0 801DDF40 00000000 */   nop
/* 1F5EC4 801DDF44 10A10020 */  beq         $a1, $at, L801DDFC8_ovl13
/* 1F5EC8 801DDF48 240F0002 */   addiu      $t7, $zero, 0x2
/* 1F5ECC 801DDF4C 24010002 */  addiu       $at, $zero, 0x2
/* 1F5ED0 801DDF50 10A10024 */  beq         $a1, $at, L801DDFE4_ovl13
/* 1F5ED4 801DDF54 24010003 */   addiu      $at, $zero, 0x3
/* 1F5ED8 801DDF58 50A1003A */  beql        $a1, $at, L801DE044_ovl13
/* 1F5EDC 801DDF5C ACC00000 */   sw         $zero, 0x0($a2)
/* 1F5EE0 801DDF60 1000003E */  b           L801DE05C_ovl13
/* 1F5EE4 801DDF64 00056880 */   sll        $t5, $a1, 2
glabel L801DDF68_ovl13
/* 1F5EE8 801DDF68 0C006291 */  jal         random_soft_s32_range
/* 1F5EEC 801DDF6C 24040002 */   addiu      $a0, $zero, 0x2
/* 1F5EF0 801DDF70 3C07800F */  lui         $a3, %hi(D_800E9AA0)
/* 1F5EF4 801DDF74 14400008 */  bnez        $v0, L801DDF98_ovl13
/* 1F5EF8 801DDF78 24E79AA0 */   addiu      $a3, $a3, %lo(D_800E9AA0)
/* 1F5EFC 801DDF7C 8E020000 */  lw          $v0, 0x0($s0)
/* 1F5F00 801DDF80 24190001 */  addiu       $t9, $zero, 0x1
/* 1F5F04 801DDF84 8C4A0000 */  lw          $t2, 0x0($v0)
/* 1F5F08 801DDF88 000A5880 */  sll         $t3, $t2, 2
/* 1F5F0C 801DDF8C 00EB6021 */  addu        $t4, $a3, $t3
/* 1F5F10 801DDF90 10000007 */  b           L801DDFB0_ovl13
/* 1F5F14 801DDF94 AD990000 */   sw         $t9, 0x0($t4)
glabel L801DDF98_ovl13
/* 1F5F18 801DDF98 8E020000 */  lw          $v0, 0x0($s0)
/* 1F5F1C 801DDF9C 240D0002 */  addiu       $t5, $zero, 0x2
/* 1F5F20 801DDFA0 8C4E0000 */  lw          $t6, 0x0($v0)
/* 1F5F24 801DDFA4 000EC080 */  sll         $t8, $t6, 2
/* 1F5F28 801DDFA8 00F84021 */  addu        $t0, $a3, $t8
/* 1F5F2C 801DDFAC AD0D0000 */  sw          $t5, 0x0($t0)
glabel L801DDFB0_ovl13
/* 1F5F30 801DDFB0 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5F34 801DDFB4 3C05800F */  lui         $a1, %hi(D_800E9AA0)
/* 1F5F38 801DDFB8 00031880 */  sll         $v1, $v1, 2
/* 1F5F3C 801DDFBC 00A32821 */  addu        $a1, $a1, $v1
/* 1F5F40 801DDFC0 10000025 */  b           L801DE058_ovl13
/* 1F5F44 801DDFC4 8CA59AA0 */   lw         $a1, %lo(D_800E9AA0)($a1)
glabel L801DDFC8_ovl13
/* 1F5F48 801DDFC8 ACCF0000 */  sw          $t7, 0x0($a2)
/* 1F5F4C 801DDFCC 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5F50 801DDFD0 3C05800F */  lui         $a1, %hi(D_800E9AA0)
/* 1F5F54 801DDFD4 00031880 */  sll         $v1, $v1, 2
/* 1F5F58 801DDFD8 00A32821 */  addu        $a1, $a1, $v1
/* 1F5F5C 801DDFDC 1000001E */  b           L801DE058_ovl13
/* 1F5F60 801DDFE0 8CA59AA0 */   lw         $a1, %lo(D_800E9AA0)($a1)
glabel L801DDFE4_ovl13
/* 1F5F64 801DDFE4 0C006291 */  jal         random_soft_s32_range
/* 1F5F68 801DDFE8 24040002 */   addiu      $a0, $zero, 0x2
/* 1F5F6C 801DDFEC 3C07800F */  lui         $a3, %hi(D_800E9AA0)
/* 1F5F70 801DDFF0 14400008 */  bnez        $v0, L801DE014_ovl13
/* 1F5F74 801DDFF4 24E79AA0 */   addiu      $a3, $a3, %lo(D_800E9AA0)
/* 1F5F78 801DDFF8 8E020000 */  lw          $v0, 0x0($s0)
/* 1F5F7C 801DDFFC 24090003 */  addiu       $t1, $zero, 0x3
/* 1F5F80 801DE000 8C4A0000 */  lw          $t2, 0x0($v0)
/* 1F5F84 801DE004 000A5880 */  sll         $t3, $t2, 2
/* 1F5F88 801DE008 00EBC821 */  addu        $t9, $a3, $t3
/* 1F5F8C 801DE00C 10000006 */  b           L801DE028_ovl13
/* 1F5F90 801DE010 AF290000 */   sw         $t1, 0x0($t9)
glabel L801DE014_ovl13
/* 1F5F94 801DE014 8E020000 */  lw          $v0, 0x0($s0)
/* 1F5F98 801DE018 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1F5F9C 801DE01C 000C7080 */  sll         $t6, $t4, 2
/* 1F5FA0 801DE020 00EEC021 */  addu        $t8, $a3, $t6
/* 1F5FA4 801DE024 AF000000 */  sw          $zero, 0x0($t8)
glabel L801DE028_ovl13
/* 1F5FA8 801DE028 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5FAC 801DE02C 3C05800F */  lui         $a1, %hi(D_800E9AA0)
/* 1F5FB0 801DE030 00031880 */  sll         $v1, $v1, 2
/* 1F5FB4 801DE034 00A32821 */  addu        $a1, $a1, $v1
/* 1F5FB8 801DE038 10000007 */  b           L801DE058_ovl13
/* 1F5FBC 801DE03C 8CA59AA0 */   lw         $a1, %lo(D_800E9AA0)($a1)
/* 1F5FC0 801DE040 ACC00000 */  sw          $zero, 0x0($a2)
glabel L801DE044_ovl13
/* 1F5FC4 801DE044 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5FC8 801DE048 3C05800F */  lui         $a1, %hi(D_800E9AA0)
/* 1F5FCC 801DE04C 00031880 */  sll         $v1, $v1, 2
/* 1F5FD0 801DE050 00A32821 */  addu        $a1, $a1, $v1
/* 1F5FD4 801DE054 8CA59AA0 */  lw          $a1, %lo(D_800E9AA0)($a1)
glabel L801DE058_ovl13
/* 1F5FD8 801DE058 00056880 */  sll         $t5, $a1, 2
glabel L801DE05C_ovl13
/* 1F5FDC 801DE05C 3C08801E */  lui         $t0, %hi(D_801E5B90_ovl13)
/* 1F5FE0 801DE060 8FBF001C */  lw          $ra, 0x1C($sp)
/* 1F5FE4 801DE064 010D4021 */  addu        $t0, $t0, $t5
/* 1F5FE8 801DE068 8D085B90 */  lw          $t0, %lo(D_801E5B90_ovl13)($t0)
/* 1F5FEC 801DE06C 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F5FF0 801DE070 00230821 */  addu        $at, $at, $v1
/* 1F5FF4 801DE074 8FB00018 */  lw          $s0, 0x18($sp)
/* 1F5FF8 801DE078 27BD0020 */  addiu       $sp, $sp, 0x20
/* 1F5FFC 801DE07C 03E00008 */  jr          $ra
/* 1F6000 801DE080 AC28DC50 */   sw         $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801DDE54_ovl13, @function

.size func_801DDE54_ovl13, . - func_801DDE54_ovl13
