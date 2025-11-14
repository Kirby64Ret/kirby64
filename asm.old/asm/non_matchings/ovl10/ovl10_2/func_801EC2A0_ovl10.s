glabel func_801EC2A0_ovl10
/* 1DD010 801EC2A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DD014 801EC2A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DD018 801EC2A8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DD01C 801EC2AC 0C02E77E */  jal   func_800B9DF8
/* 1DD020 801EC2B0 24040002 */   li    $a0, 2
/* 1DD024 801EC2B4 1040000F */  beqz  $v0, .L801EC2F4_ovl10
/* 1DD028 801EC2B8 3C0E800D */   lui   $t6, %hi(D_800D6B70) # $t6, 0x800d
/* 1DD02C 801EC2BC 8DCE6B70 */  lw    $t6, %lo(D_800D6B70)($t6)
/* 1DD030 801EC2C0 15C0000C */  bnez  $t6, .L801EC2F4_ovl10
/* 1DD034 801EC2C4 00000000 */   nop   
/* 1DD038 801EC2C8 0C066ED6 */  jal   func_8019BB58_ovl10
/* 1DD03C 801EC2CC 00000000 */   nop   
/* 1DD040 801EC2D0 3C02800D */  lui   $v0, %hi(D_800D6E40) # $v0, 0x800d
/* 1DD044 801EC2D4 24426E40 */  addiu $v0, %lo(D_800D6E40) # addiu $v0, $v0, 0x6e40
/* 1DD048 801EC2D8 8C4F0000 */  lw    $t7, ($v0)
/* 1DD04C 801EC2DC 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1DD050 801EC2E0 25F80001 */  addiu $t8, $t7, 1
/* 1DD054 801EC2E4 AC580000 */  sw    $t8, ($v0)
/* 1DD058 801EC2E8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1DD05C 801EC2EC 0C067656 */  jal   func_8019D958_ovl10
/* 1DD060 801EC2F0 97240002 */   lhu   $a0, 2($t9)
.L801EC2F4_ovl10:
/* 1DD064 801EC2F4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DD068 801EC2F8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DD06C 801EC2FC 3C01800F */ lui $at, %hi(D_800E98E0)
/* 1DD070 801EC300 3C04800E */ lui $a0, %hi(D_800E7880)
/* 1DD074 801EC304 8C480000 */  lw    $t0, ($v0)
/* 1DD078 801EC308 3C06801F */  lui   $a2, %hi(D_801F45E0_ovl10) # $a2, 0x801f
/* 1DD07C 801EC30C 24C645E0 */  addiu $a2, %lo(D_801F45E0_ovl10) # addiu $a2, $a2, 0x45e0
/* 1DD080 801EC310 00084880 */  sll   $t1, $t0, 2
/* 1DD084 801EC314 00290821 */  addu  $at, $at, $t1
/* 1DD088 801EC318 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 1DD08C 801EC31C 8C4A0000 */  lw    $t2, ($v0)
/* 1DD090 801EC320 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 1DD094 801EC324 24050001 */  li    $a1, 1
/* 1DD098 801EC328 000A5880 */  sll   $t3, $t2, 2
/* 1DD09C 801EC32C 002B0821 */  addu  $at, $at, $t3
/* 1DD0A0 801EC330 AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 1DD0A4 801EC334 8C4C0000 */  lw    $t4, ($v0)
/* 1DD0A8 801EC338 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DD0AC 801EC33C 000C6880 */  sll   $t5, $t4, 2
/* 1DD0B0 801EC340 002D0821 */  addu  $at, $at, $t5
/* 1DD0B4 801EC344 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1DD0B8 801EC348 8C4E0000 */  lw    $t6, ($v0)
/* 1DD0BC 801EC34C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DD0C0 801EC350 000E7880 */  sll   $t7, $t6, 2
/* 1DD0C4 801EC354 002F0821 */  addu  $at, $at, $t7
/* 1DD0C8 801EC358 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DD0CC 801EC35C 8C580000 */  lw    $t8, ($v0)
/* 1DD0D0 801EC360 00982021 */  addu  $a0, $a0, $t8
/* 1DD0D4 801EC364 0C02911F */  jal   call_virtual_function
/* 1DD0D8 801EC368 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 1DD0DC 801EC36C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DD0E0 801EC370 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DD0E4 801EC374 03E00008 */  jr    $ra
/* 1DD0E8 801EC378 00000000 */   nop   
.type func_801EC2A0_ovl10, @function
.size func_801EC2A0_ovl10, . - func_801EC2A0_ovl10
