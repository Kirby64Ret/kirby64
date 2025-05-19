glabel func_801DDD90_ovl13 # 22
/* 1F5D10 801DDD90 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F5D14 801DDD94 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F5D18 801DDD98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F5D1C 801DDD9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F5D20 801DDDA0 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F5D24 801DDDA4 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F5D28 801DDDA8 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F5D2C 801DDDAC 000FC080 */  sll         $t8, $t7, 2
/* 1F5D30 801DDDB0 00380821 */  addu        $at, $at, $t8
/* 1F5D34 801DDDB4 0C06835D */  jal         func_801A0D74_ovl7
/* 1F5D38 801DDDB8 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F5D3C 801DDDBC 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 1F5D40 801DDDC0 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 1F5D44 801DDDC4 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F5D48 801DDDC8 8F280000 */  lw          $t0, 0x0($t9)
/* 1F5D4C 801DDDCC 00084880 */  sll         $t1, $t0, 2
/* 1F5D50 801DDDD0 00491021 */  addu        $v0, $v0, $t1
/* 1F5D54 801DDDD4 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1F5D58 801DDDD8 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F5D5C 801DDDDC 8C450010 */  lw          $a1, 0x10($v0)
/* 1F5D60 801DDDE0 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F5D64 801DDDE4 8C460018 */   lw         $a2, 0x18($v0)
/* 1F5D68 801DDDE8 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F5D6C 801DDDEC 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1F5D70 801DDDF0 3C0A800F */  lui         $t2, %hi(D_800E83E0)
/* 1F5D74 801DDDF4 24010001 */  addiu       $at, $zero, 0x1
/* 1F5D78 801DDDF8 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5D7C 801DDDFC 240B0007 */  addiu       $t3, $zero, 0x7
/* 1F5D80 801DDE00 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F5D84 801DDE04 00031880 */  sll         $v1, $v1, 2
/* 1F5D88 801DDE08 01435021 */  addu        $t2, $t2, $v1
/* 1F5D8C 801DDE0C 8D4A83E0 */  lw          $t2, %lo(D_800E83E0)($t2)
/* 1F5D90 801DDE10 1541000A */  bne         $t2, $at, L801DDE3C_ovl13
/* 1F5D94 801DDE14 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F5D98 801DDE18 00230821 */  addu        $at, $at, $v1
/* 1F5D9C 801DDE1C AC2BDC50 */  sw          $t3, %lo(gEntityVtableIndexArray)($at)
/* 1F5DA0 801DDE20 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1F5DA4 801DDE24 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F5DA8 801DDE28 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F5DAC 801DDE2C 000C6880 */  sll         $t5, $t4, 2
/* 1F5DB0 801DDE30 008D2021 */  addu        $a0, $a0, $t5
/* 1F5DB4 801DDE34 0C02C7B2 */  jal         assign_new_process_entry
/* 1F5DB8 801DDE38 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801DDE3C_ovl13
/* 1F5DBC 801DDE3C 0C078E56 */  jal         func_801E3958_ovl13
/* 1F5DC0 801DDE40 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F5DC4 801DDE44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F5DC8 801DDE48 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F5DCC 801DDE4C 03E00008 */  jr          $ra
/* 1F5DD0 801DDE50 00000000 */   nop
.type func_801DDD90_ovl13, @function

.size func_801DDD90_ovl13, . - func_801DDD90_ovl13
