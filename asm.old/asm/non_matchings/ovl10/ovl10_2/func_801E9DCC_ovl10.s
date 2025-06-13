glabel func_801E9DCC_ovl10
/* 1DAB3C 801E9DCC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DAB40 801E9DD0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DAB44 801E9DD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DAB48 801E9DD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DAB4C 801E9DDC 8C620000 */  lw    $v0, ($v1)
/* 1DAB50 801E9DE0 3C0E800F */ lui $t6, %hi(D_800E9720)
/* 1DAB54 801E9DE4 3C0F800F */  lui   $t7, %hi(D_800E98E0) # $t7, 0x800f
/* 1DAB58 801E9DE8 00021080 */  sll   $v0, $v0, 2
/* 1DAB5C 801E9DEC 01C27021 */  addu  $t6, $t6, $v0
/* 1DAB60 801E9DF0 8DCE9720 */ lw $t6, %lo(D_800E9720)($t6)
/* 1DAB64 801E9DF4 00803025 */  move  $a2, $a0
/* 1DAB68 801E9DF8 25EF98E0 */  addiu $t7, %lo(D_800E98E0) # addiu $t7, $t7, -0x6720
/* 1DAB6C 801E9DFC 11C0001F */  beqz  $t6, .L801E9E7C_ovl10
/* 1DAB70 801E9E00 004F2021 */   addu  $a0, $v0, $t7
/* 1DAB74 801E9E04 8C850000 */  lw    $a1, ($a0)
/* 1DAB78 801E9E08 14A00019 */  bnez  $a1, .L801E9E70_ovl10
/* 1DAB7C 801E9E0C 24A9FFFF */   addiu $t1, $a1, -1
/* 1DAB80 801E9E10 0C066D09 */  jal   func_8019B424_ovl10
/* 1DAB84 801E9E14 00C02025 */   move  $a0, $a2
/* 1DAB88 801E9E18 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DAB8C 801E9E1C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DAB90 801E9E20 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DAB94 801E9E24 24180005 */  li    $t8, 5
/* 1DAB98 801E9E28 8C620000 */  lw    $v0, ($v1)
/* 1DAB9C 801E9E2C 00021080 */  sll   $v0, $v0, 2
/* 1DABA0 801E9E30 00220821 */  addu  $at, $at, $v0
/* 1DABA4 801E9E34 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1DABA8 801E9E38 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1DABAC 801E9E3C 44813000 */  mtc1  $at, $f6
/* 1DABB0 801E9E40 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DABB4 801E9E44 00220821 */  addu  $at, $at, $v0
/* 1DABB8 801E9E48 46062202 */  mul.s $f8, $f4, $f6
/* 1DABBC 801E9E4C E42864D0 */ swc1 $f8, %lo(D_800E64D0)($at)
/* 1DABC0 801E9E50 8C790000 */  lw    $t9, ($v1)
/* 1DABC4 801E9E54 3C01800F */ lui $at, %hi(D_800E98E0)
/* 1DABC8 801E9E58 00194080 */  sll   $t0, $t9, 2
/* 1DABCC 801E9E5C 00280821 */  addu  $at, $at, $t0
/* 1DABD0 801E9E60 AC3898E0 */ sw $t8, %lo(D_800E98E0)($at)
/* 1DABD4 801E9E64 8C620000 */  lw    $v0, ($v1)
/* 1DABD8 801E9E68 10000004 */  b     .L801E9E7C_ovl10
/* 1DABDC 801E9E6C 00021080 */   sll   $v0, $v0, 2
.L801E9E70_ovl10:
/* 1DABE0 801E9E70 AC890000 */  sw    $t1, ($a0)
/* 1DABE4 801E9E74 8C620000 */  lw    $v0, ($v1)
/* 1DABE8 801E9E78 00021080 */  sll   $v0, $v0, 2
.L801E9E7C_ovl10:
/* 1DABEC 801E9E7C 3C0A800F */ lui $t2, %hi(D_800E9E20)
/* 1DABF0 801E9E80 01425021 */  addu  $t2, $t2, $v0
/* 1DABF4 801E9E84 8D4A9E20 */ lw $t2, %lo(D_800E9E20)($t2)
/* 1DABF8 801E9E88 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DABFC 801E9E8C 00220821 */  addu  $at, $at, $v0
/* 1DAC00 801E9E90 1140000A */  beqz  $t2, .L801E9EBC_ovl10
/* 1DAC04 801E9E94 240B0005 */   li    $t3, 5
/* 1DAC08 801E9E98 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1DAC0C 801E9E9C 8C6C0000 */  lw    $t4, ($v1)
/* 1DAC10 801E9EA0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DAC14 801E9EA4 3C05801F */  lui   $a1, %hi(D_801E91B0) # $a1, 0x801f
/* 1DAC18 801E9EA8 000C6880 */  sll   $t5, $t4, 2
/* 1DAC1C 801E9EAC 008D2021 */  addu  $a0, $a0, $t5
/* 1DAC20 801E9EB0 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1DAC24 801E9EB4 0C02C7B2 */  jal   assign_new_process_entry
/* 1DAC28 801E9EB8 24A591B0 */   addiu $a1, %lo(D_801E91B0) # addiu $a1, $a1, -0x6e50
.L801E9EBC_ovl10:
/* 1DAC2C 801E9EBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DAC30 801E9EC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DAC34 801E9EC4 03E00008 */  jr    $ra
/* 1DAC38 801E9EC8 00000000 */   nop   
.type func_801E9DCC_ovl10, @function
.size func_801E9DCC_ovl10, . - func_801E9DCC_ovl10
