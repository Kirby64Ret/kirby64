glabel func_801AC840_ovl7
/* 1528B0 801AC840 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1528B4 801AC844 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1528B8 801AC848 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1528BC 801AC84C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1528C0 801AC850 8DC20000 */  lw    $v0, ($t6)
/* 1528C4 801AC854 3C03800F */ lui $v1, %hi(D_800E83E0)
/* 1528C8 801AC858 24010012 */  li    $at, 18
/* 1528CC 801AC85C 00021080 */  sll   $v0, $v0, 2
/* 1528D0 801AC860 00621821 */  addu  $v1, $v1, $v0
/* 1528D4 801AC864 8C6383E0 */ lw $v1, %lo(D_800E83E0)($v1)
/* 1528D8 801AC868 10600012 */  beqz  $v1, .L801AC8B4_ovl7
/* 1528DC 801AC86C 00000000 */   nop   
/* 1528E0 801AC870 14610009 */  bne   $v1, $at, .L801AC898_ovl7
/* 1528E4 801AC874 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1528E8 801AC878 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1528EC 801AC87C 00822021 */  addu  $a0, $a0, $v0
/* 1528F0 801AC880 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 1528F4 801AC884 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 1528F8 801AC888 0C02C7B2 */  jal   assign_new_process_entry
/* 1528FC 801AC88C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 152900 801AC890 1000001A */  b     .L801AC8FC_ovl7
/* 152904 801AC894 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AC898_ovl7:
/* 152908 801AC898 00822021 */  addu  $a0, $a0, $v0
/* 15290C 801AC89C 3C05801B */  lui   $a1, %hi(func_801AC11C) # $a1, 0x801b
/* 152910 801AC8A0 24A5C11C */  addiu $a1, %lo(func_801AC11C) # addiu $a1, $a1, -0x3ee4
/* 152914 801AC8A4 0C02C7B2 */  jal   assign_new_process_entry
/* 152918 801AC8A8 8C84E510 */   lw    $a0, %lo(gEntityGObjProcessArray)($a0)
/* 15291C 801AC8AC 10000013 */  b     .L801AC8FC_ovl7
/* 152920 801AC8B0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AC8B4_ovl7:
/* 152924 801AC8B4 0C06835D */  jal   func_801A0D74_ovl7
/* 152928 801AC8B8 00000000 */   nop   
/* 15292C 801AC8BC 10400006 */  beqz  $v0, .L801AC8D8_ovl7
/* 152930 801AC8C0 3C04801D */   lui   $a0, %hi(D_801CB044) # $a0, 0x801d
/* 152934 801AC8C4 0C068E4E */  jal   func_801A3938_ovl7
/* 152938 801AC8C8 2484B044 */   addiu $a0, %lo(D_801CB044) # addiu $a0, $a0, -0x4fbc
/* 15293C 801AC8CC 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 152940 801AC8D0 0C068DB3 */  jal   func_801A36CC_ovl7
/* 152944 801AC8D4 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801AC8D8_ovl7:
/* 152948 801AC8D8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 15294C 801AC8DC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 152950 801AC8E0 3C04801D */  lui   $a0, %hi(D_801CA738) # $a0, 0x801d
/* 152954 801AC8E4 2484A738 */  addiu $a0, %lo(D_801CA738) # addiu $a0, $a0, -0x58c8
/* 152958 801AC8E8 0C0445EF */  jal   func_801117BC
/* 15295C 801AC8EC 8DE50000 */   lw    $a1, ($t7)
/* 152960 801AC8F0 0C044713 */  jal   func_80111C4C
/* 152964 801AC8F4 00402025 */   move  $a0, $v0
/* 152968 801AC8F8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801AC8FC_ovl7:
/* 15296C 801AC8FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 152970 801AC900 03E00008 */  jr    $ra
/* 152974 801AC904 00000000 */   nop   
.type func_801AC840_ovl7, @function
.size func_801AC840_ovl7, . - func_801AC840_ovl7
