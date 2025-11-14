glabel func_801DCDA8_ovl13 # 10
/* 1F4D28 801DCDA8 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F4D2C 801DCDAC 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F4D30 801DCDB0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F4D34 801DCDB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F4D38 801DCDB8 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F4D3C 801DCDBC 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F4D40 801DCDC0 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray5)
/* 1F4D44 801DCDC4 3C05800B */  lui         $a1, %hi(D_800B17B8)
/* 1F4D48 801DCDC8 000FC080 */  sll         $t8, $t7, 2
/* 1F4D4C 801DCDCC 00982021 */  addu        $a0, $a0, $t8
/* 1F4D50 801DCDD0 8C84EC10 */  lw          $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1F4D54 801DCDD4 0C02C7DA */  jal         func_800B1F68
/* 1F4D58 801DCDD8 24A517B8 */   addiu      $a1, $a1, %lo(D_800B17B8)
/* 1F4D5C 801DCDDC 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F4D60 801DCDE0 8D08A7C4 */  lw          $t0, %lo(D_8004A7C4)($t0)
/* 1F4D64 801DCDE4 3C01800F */  lui         $at, %hi(D_800EA520)
/* 1F4D68 801DCDE8 24190001 */  addiu       $t9, $zero, 0x1
/* 1F4D6C 801DCDEC 8D090000 */  lw          $t1, 0x0($t0)
/* 1F4D70 801DCDF0 3C040001 */  lui         $a0, (0x10069 >> 16)
/* 1F4D74 801DCDF4 34840069 */  ori         $a0, $a0, (0x10069 & 0xFFFF)
/* 1F4D78 801DCDF8 00095080 */  sll         $t2, $t1, 2
/* 1F4D7C 801DCDFC 002A0821 */  addu        $at, $at, $t2
/* 1F4D80 801DCE00 AC39A520 */  sw          $t9, %lo(D_800EA520)($at)
/* 1F4D84 801DCE04 24050023 */  addiu       $a1, $zero, 0x23
/* 1F4D88 801DCE08 0C02A619 */  jal         func_800A9864
/* 1F4D8C 801DCE0C 24060010 */   addiu      $a2, $zero, 0x10
/* 1F4D90 801DCE10 3C0C8005 */  lui         $t4, %hi(D_8004A7C4)
/* 1F4D94 801DCE14 8D8CA7C4 */  lw          $t4, %lo(D_8004A7C4)($t4)
/* 1F4D98 801DCE18 3C0B800B */  lui         $t3, %hi(D_800B72AC)
/* 1F4D9C 801DCE1C 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1F4DA0 801DCE20 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F4DA4 801DCE24 256B72AC */  addiu       $t3, $t3, %lo(D_800B72AC)
/* 1F4DA8 801DCE28 24040003 */  addiu       $a0, $zero, 0x3
/* 1F4DAC 801DCE2C 000D7080 */  sll         $t6, $t5, 2
/* 1F4DB0 801DCE30 002E0821 */  addu        $at, $at, $t6
/* 1F4DB4 801DCE34 0C006291 */  jal         random_soft_s32_range
/* 1F4DB8 801DCE38 AC2BEF90 */   sw         $t3, %lo(D_800DEF90)($at)
/* 1F4DBC 801DCE3C 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1F4DC0 801DCE40 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1F4DC4 801DCE44 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 1F4DC8 801DCE48 2419FFFF */  addiu       $t9, $zero, -0x1
/* 1F4DCC 801DCE4C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F4DD0 801DCE50 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F4DD4 801DCE54 240A0008 */  addiu       $t2, $zero, 0x8
/* 1F4DD8 801DCE58 000FC080 */  sll         $t8, $t7, 2
/* 1F4DDC 801DCE5C 00380821 */  addu        $at, $at, $t8
/* 1F4DE0 801DCE60 AC229AA0 */  sw          $v0, %lo(D_800E9AA0)($at)
/* 1F4DE4 801DCE64 8C680000 */  lw          $t0, 0x0($v1)
/* 1F4DE8 801DCE68 3C01800F */  lui         $at, %hi(D_800E9C60)
/* 1F4DEC 801DCE6C 00084880 */  sll         $t1, $t0, 2
/* 1F4DF0 801DCE70 00290821 */  addu        $at, $at, $t1
/* 1F4DF4 801DCE74 AC209C60 */  sw          $zero, %lo(D_800E9C60)($at)
/* 1F4DF8 801DCE78 3C01800D */  lui         $at, %hi(D_800D7154)
/* 1F4DFC 801DCE7C AC397154 */  sw          $t9, %lo(D_800D7154)($at)
/* 1F4E00 801DCE80 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1F4E04 801DCE84 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F4E08 801DCE88 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F4E0C 801DCE8C 000C6880 */  sll         $t5, $t4, 2
/* 1F4E10 801DCE90 002D0821 */  addu        $at, $at, $t5
/* 1F4E14 801DCE94 03E00008 */  jr          $ra
/* 1F4E18 801DCE98 AC2ADC50 */   sw         $t2, %lo(gEntityVtableIndexArray)($at)
.type func_801DCDA8_ovl13, @function

.size func_801DCDA8_ovl13, . - func_801DCDA8_ovl13
