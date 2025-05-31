glabel func_801DD02C_ovl12 # 37
/* 001E2C 801DD02C 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 001E30 801DD030 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 001E34 801DD034 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 001E38 801DD038 AFBF0014 */  sw          $ra, 0x14($sp)
/* 001E3C 801DD03C AFA40018 */  sw          $a0, 0x18($sp)
/* 001E40 801DD040 8C4F0000 */  lw          $t7, 0x0($v0)
/* 001E44 801DD044 3C01800E */  lui         $at, %hi(D_800DDA90)
/* 001E48 801DD048 240E0024 */  addiu       $t6, $zero, 0x24
/* 001E4C 801DD04C 000FC080 */  sll         $t8, $t7, 2
/* 001E50 801DD050 00380821 */  addu        $at, $at, $t8
/* 001E54 801DD054 AC2EDA90 */  sw          $t6, %lo(D_800DDA90)($at)
/* 001E58 801DD058 8C480000 */  lw          $t0, 0x0($v0)
/* 001E5C 801DD05C 3C01800E */  lui         $at, %hi(D_800DF150)
/* 001E60 801DD060 3C19801E */  lui         $t9, %hi(func_801DD110_ovl12)
/* 001E64 801DD064 00084880 */  sll         $t1, $t0, 2
/* 001E68 801DD068 00290821 */  addu        $at, $at, $t1
/* 001E6C 801DD06C 2739D110 */  addiu       $t9, $t9, %lo(func_801DD110_ovl12)
/* 001E70 801DD070 3C040001 */  lui         $a0, (0x10071 >> 16)
/* 001E74 801DD074 AC39F150 */  sw          $t9, %lo(D_800DF150)($at)
/* 001E78 801DD078 0C02A5D8 */  jal         func_800A9760
/* 001E7C 801DD07C 34840071 */   ori        $a0, $a0, (0x10071 & 0xFFFF)
/* 001E80 801DD080 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 001E84 801DD084 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 001E88 801DD088 3C03800E */  lui         $v1, %hi(gEntityVtableIndexArray)
/* 001E8C 801DD08C 2463DC50 */  addiu       $v1, $v1, %lo(gEntityVtableIndexArray)
/* 001E90 801DD090 8C4A0000 */  lw          $t2, 0x0($v0)
/* 001E94 801DD094 3C01800F */  lui         $at, %hi(D_800E9C60)
/* 001E98 801DD098 240E0001 */  addiu       $t6, $zero, 0x1
/* 001E9C 801DD09C 000A5880 */  sll         $t3, $t2, 2
/* 001EA0 801DD0A0 006B6021 */  addu        $t4, $v1, $t3
/* 001EA4 801DD0A4 AD800000 */  sw          $zero, 0x0($t4)
/* 001EA8 801DD0A8 8C4D0000 */  lw          $t5, 0x0($v0)
/* 001EAC 801DD0AC 3C07800D */  lui         $a3, %hi(D_800D7098)
/* 001EB0 801DD0B0 24E77098 */  addiu       $a3, $a3, %lo(D_800D7098)
/* 001EB4 801DD0B4 000D7880 */  sll         $t7, $t5, 2
/* 001EB8 801DD0B8 002F0821 */  addu        $at, $at, $t7
/* 001EBC 801DD0BC AC209C60 */  sw          $zero, %lo(D_800E9C60)($at)
/* 001EC0 801DD0C0 8C580000 */  lw          $t8, 0x0($v0)
/* 001EC4 801DD0C4 3C01800F */  lui         $at, %hi(D_800EA360)
/* 001EC8 801DD0C8 3C06801E */  lui         $a2, %hi(D_801E2B04_ovl12)
/* 001ECC 801DD0CC 00184080 */  sll         $t0, $t8, 2
/* 001ED0 801DD0D0 00280821 */  addu        $at, $at, $t0
/* 001ED4 801DD0D4 AC2EA360 */  sw          $t6, %lo(D_800EA360)($at)
/* 001ED8 801DD0D8 8C590000 */  lw          $t9, 0x0($v0)
/* 001EDC 801DD0DC ACE00008 */  sw          $zero, 0x8($a3)
/* 001EE0 801DD0E0 24C62B04 */  addiu       $a2, $a2, %lo(D_801E2B04_ovl12)
/* 001EE4 801DD0E4 ACF9001C */  sw          $t9, 0x1C($a3)
/* 001EE8 801DD0E8 8C490000 */  lw          $t1, 0x0($v0)
/* 001EEC 801DD0EC 24050007 */  addiu       $a1, $zero, 0x7
/* 001EF0 801DD0F0 00095080 */  sll         $t2, $t1, 2
/* 001EF4 801DD0F4 006A5821 */  addu        $t3, $v1, $t2
/* 001EF8 801DD0F8 0C02911F */  jal         call_virtual_function
/* 001EFC 801DD0FC 8D640000 */   lw         $a0, 0x0($t3)
/* 001F00 801DD100 8FBF0014 */  lw          $ra, 0x14($sp)
/* 001F04 801DD104 27BD0018 */  addiu       $sp, $sp, 0x18
/* 001F08 801DD108 03E00008 */  jr          $ra
/* 001F0C 801DD10C 00000000 */   nop
.type func_801DD02C_ovl12, @function
.size func_801DD02C_ovl12, . - func_801DD02C_ovl12
