glabel func_801DEAE8_ovl11
/* 1E93A8 801DEAE8 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E93AC 801DEAEC 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1E93B0 801DEAF0 8CCE0000 */  lw    $t6, ($a2)
/* 1E93B4 801DEAF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E93B8 801DEAF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E93BC 801DEAFC AFA40018 */  sw    $a0, 0x18($sp)
/* 1E93C0 801DEB00 8DC20000 */  lw    $v0, ($t6)
/* 1E93C4 801DEB04 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1E93C8 801DEB08 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 1E93CC 801DEB0C 00021080 */  sll   $v0, $v0, 2
/* 1E93D0 801DEB10 01E27821 */  addu  $t7, $t7, $v0
/* 1E93D4 801DEB14 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1E93D8 801DEB18 00621821 */  addu  $v1, $v1, $v0
/* 1E93DC 801DEB1C 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 1E93E0 801DEB20 11E00011 */  beqz  $t7, .L801DEB68_ovl11
/* 1E93E4 801DEB24 24180001 */   li    $t8, 1
/* 1E93E8 801DEB28 A078003C */  sb    $t8, 0x3c($v1)
/* 1E93EC 801DEB2C 8CC20000 */  lw    $v0, ($a2)
/* 1E93F0 801DEB30 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E93F4 801DEB34 24190001 */  li    $t9, 1
/* 1E93F8 801DEB38 8C480000 */  lw    $t0, ($v0)
/* 1E93FC 801DEB3C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E9400 801DEB40 3C05801E */  lui   $a1, %hi(D_801DDEC0) # $a1, 0x801e
/* 1E9404 801DEB44 00084880 */  sll   $t1, $t0, 2
/* 1E9408 801DEB48 00290821 */  addu  $at, $at, $t1
/* 1E940C 801DEB4C AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
/* 1E9410 801DEB50 8C4A0000 */  lw    $t2, ($v0)
/* 1E9414 801DEB54 24A5DEC0 */  addiu $a1, %lo(D_801DDEC0) # addiu $a1, $a1, -0x2140
/* 1E9418 801DEB58 000A5880 */  sll   $t3, $t2, 2
/* 1E941C 801DEB5C 008B2021 */  addu  $a0, $a0, $t3
/* 1E9420 801DEB60 0C02C7B2 */  jal   assign_new_process_entry
/* 1E9424 801DEB64 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DEB68_ovl11:
/* 1E9428 801DEB68 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E942C 801DEB6C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9430 801DEB70 03E00008 */  jr    $ra
/* 1E9434 801DEB74 00000000 */   nop   
.type func_801DEAE8_ovl11, @function
.size func_801DEAE8_ovl11, . - func_801DEAE8_ovl11
