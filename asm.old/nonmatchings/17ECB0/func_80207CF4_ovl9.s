glabel func_80207CF4_ovl9
/* 1B5D44 80207CF4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1B5D48 80207CF8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1B5D4C 80207CFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B5D50 80207D00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B5D54 80207D04 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1B5D58 80207D08 3C0E8020 */  lui        $t6, %hi(func_80207DA4_ovl9)
/* 1B5D5C 80207D0C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1B5D60 80207D10 000FC080 */  sll        $t8, $t7, 2
/* 1B5D64 80207D14 00380821 */  addu       $at, $at, $t8
/* 1B5D68 80207D18 25CE7DA4 */  addiu      $t6, $t6, %lo(func_80207DA4_ovl9)
/* 1B5D6C 80207D1C AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* 1B5D70 80207D20 8C430000 */  lw         $v1, 0x0($v0)
/* 1B5D74 80207D24 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* 1B5D78 80207D28 00031880 */  sll        $v1, $v1, 2
/* 1B5D7C 80207D2C 0323C821 */  addu       $t9, $t9, $v1
/* 1B5D80 80207D30 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* 1B5D84 80207D34 33280001 */  andi       $t0, $t9, 0x1
/* 1B5D88 80207D38 11000007 */  beqz       $t0, .L80207D58_ovl9
/* 1B5D8C 80207D3C 00000000 */   nop
/* 1B5D90 80207D40 0C069B04 */  jal        func_801A6C10_ovl7
/* 1B5D94 80207D44 00000000 */   nop
/* 1B5D98 80207D48 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1B5D9C 80207D4C 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1B5DA0 80207D50 8D230000 */  lw         $v1, 0x0($t1)
/* 1B5DA4 80207D54 00031880 */  sll        $v1, $v1, 2
.L80207D58_ovl9:
/* 1B5DA8 80207D58 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B5DAC 80207D5C 00230821 */  addu       $at, $at, $v1
/* 1B5DB0 80207D60 0C068CA0 */  jal        func_801A3280_ovl7
/* 1B5DB4 80207D64 AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
/* 1B5DB8 80207D68 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 1B5DBC 80207D6C 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 1B5DC0 80207D70 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 1B5DC4 80207D74 3C068022 */  lui        $a2, %hi(D_8021C8F8_ovl9)
/* 1B5DC8 80207D78 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1B5DCC 80207D7C 24C6C8F8 */  addiu      $a2, $a2, %lo(D_8021C8F8_ovl9)
/* 1B5DD0 80207D80 24050001 */  addiu      $a1, $zero, 0x1
/* 1B5DD4 80207D84 000B6080 */  sll        $t4, $t3, 2
/* 1B5DD8 80207D88 008C2021 */  addu       $a0, $a0, $t4
/* 1B5DDC 80207D8C 0C02911F */  jal        call_virtual_function
/* 1B5DE0 80207D90 8C84DC50 */   lw        $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1B5DE4 80207D94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B5DE8 80207D98 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B5DEC 80207D9C 03E00008 */  jr         $ra
/* 1B5DF0 80207DA0 00000000 */   nop
