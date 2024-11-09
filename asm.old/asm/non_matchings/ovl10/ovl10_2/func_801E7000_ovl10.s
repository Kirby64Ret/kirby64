glabel func_801E7000_ovl10
/* 1D7D70 801E7000 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D7D74 801E7004 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D7D78 801E7008 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D7D7C 801E700C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7D80 801E7010 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D7D84 801E7014 8DC20000 */  lw    $v0, ($t6)
/* 1D7D88 801E7018 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D7D8C 801E701C 3C03800F */  lui   $v1, %hi(D_800EA520) # $v1, 0x800f
/* 1D7D90 801E7020 00021080 */  sll   $v0, $v0, 2
/* 1D7D94 801E7024 01E27821 */  addu  $t7, $t7, $v0
/* 1D7D98 801E7028 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D7D9C 801E702C 2463A520 */  addiu $v1, %lo(D_800EA520) # addiu $v1, $v1, -0x5ae0
/* 1D7DA0 801E7030 0062C021 */  addu  $t8, $v1, $v0
/* 1D7DA4 801E7034 51E0001E */  beql  $t7, $zero, .L801E70B0_ovl10
/* 1D7DA8 801E7038 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D7DAC 801E703C 8F190000 */  lw    $t9, ($t8)
/* 1D7DB0 801E7040 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D7DB4 801E7044 00194080 */  sll   $t0, $t9, 2
/* 1D7DB8 801E7048 00684821 */  addu  $t1, $v1, $t0
/* 1D7DBC 801E704C 8D2A0000 */  lw    $t2, ($t1)
/* 1D7DC0 801E7050 51400017 */  beql  $t2, $zero, .L801E70B0_ovl10
/* 1D7DC4 801E7054 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D7DC8 801E7058 0C02BB30 */  jal   func_800AECC0
/* 1D7DCC 801E705C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D7DD0 801E7060 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D7DD4 801E7064 0C02BB48 */  jal   func_800AED20
/* 1D7DD8 801E7068 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D7DDC 801E706C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D7DE0 801E7070 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7DE4 801E7074 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D7DE8 801E7078 240B0001 */  li    $t3, 1
/* 1D7DEC 801E707C 8C4C0000 */  lw    $t4, ($v0)
/* 1D7DF0 801E7080 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D7DF4 801E7084 3C05801E */  lui   $a1, %hi(D_801E6D08) # $a1, 0x801e
/* 1D7DF8 801E7088 000C6880 */  sll   $t5, $t4, 2
/* 1D7DFC 801E708C 002D0821 */  addu  $at, $at, $t5
/* 1D7E00 801E7090 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1D7E04 801E7094 8C4E0000 */  lw    $t6, ($v0)
/* 1D7E08 801E7098 24A56D08 */  addiu $a1, %lo(D_801E6D08) # addiu $a1, $a1, 0x6d08
/* 1D7E0C 801E709C 000E7880 */  sll   $t7, $t6, 2
/* 1D7E10 801E70A0 008F2021 */  addu  $a0, $a0, $t7
/* 1D7E14 801E70A4 0C02C7B2 */  jal   assign_new_process_entry
/* 1D7E18 801E70A8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D7E1C 801E70AC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E70B0_ovl10:
/* 1D7E20 801E70B0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D7E24 801E70B4 03E00008 */  jr    $ra
/* 1D7E28 801E70B8 00000000 */   nop   
.type func_801E7000_ovl10, @function
.size func_801E7000_ovl10, . - func_801E7000_ovl10
