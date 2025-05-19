glabel func_801DC7B8_ovl11
/* 1E7078 801DC7B8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E707C 801DC7BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E7080 801DC7C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1E7084 801DC7C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E7088 801DC7C8 8DC20000 */  lw    $v0, ($t6)
/* 1E708C 801DC7CC 3C03800E */ lui $v1, %hi(D_800DFBD0)
/* 1E7090 801DC7D0 3C04800E */ lui $a0, %hi(D_800DE350)
/* 1E7094 801DC7D4 00021080 */  sll   $v0, $v0, 2
/* 1E7098 801DC7D8 00621821 */  addu  $v1, $v1, $v0
/* 1E709C 801DC7DC 8C63FBD0 */ lw $v1, %lo(D_800DFBD0)($v1)
/* 1E70A0 801DC7E0 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 1E70A4 801DC7E4 00822021 */  addu  $a0, $a0, $v0
/* 1E70A8 801DC7E8 8C6F006C */  lw    $t7, 0x6c($v1)
/* 1E70AC 801DC7EC 00220821 */  addu  $at, $at, $v0
/* 1E70B0 801DC7F0 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1E70B4 801DC7F4 AFAF001C */  sw    $t7, 0x1c($sp)
/* 1E70B8 801DC7F8 8C780074 */  lw    $t8, 0x74($v1)
/* 1E70BC 801DC7FC AC20A1A0 */ sw $zero, %lo(D_800EA1A0)($at)
/* 1E70C0 801DC800 3C054000 */  lui   $a1, 0x4000
/* 1E70C4 801DC804 0C076CAF */  jal   func_801DB2BC_ovl11
/* 1E70C8 801DC808 AFB80018 */   sw    $t8, 0x18($sp)
/* 1E70CC 801DC80C 3C05801E */  lui   $a1, %hi(D_801E0B18) # $a1, 0x801e
/* 1E70D0 801DC810 24A50B18 */  addiu $a1, %lo(D_801E0B18) # addiu $a1, $a1, 0xb18
/* 1E70D4 801DC814 0C076CC7 */  jal   func_801DB31C_ovl11
/* 1E70D8 801DC818 8FA4001C */   lw    $a0, 0x1c($sp)
/* 1E70DC 801DC81C 3C05801E */  lui   $a1, %hi(D_801E0B1C) # $a1, 0x801e
/* 1E70E0 801DC820 24A50B1C */  addiu $a1, %lo(D_801E0B1C) # addiu $a1, $a1, 0xb1c
/* 1E70E4 801DC824 0C076CC7 */  jal   func_801DB31C_ovl11
/* 1E70E8 801DC828 8FA40018 */   lw    $a0, 0x18($sp)
/* 1E70EC 801DC82C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E70F0 801DC830 27BD0028 */  addiu $sp, $sp, 0x28
/* 1E70F4 801DC834 03E00008 */  jr    $ra
/* 1E70F8 801DC838 00000000 */   nop   
.type func_801DC7B8_ovl11, @function
.size func_801DC7B8_ovl11, . - func_801DC7B8_ovl11
