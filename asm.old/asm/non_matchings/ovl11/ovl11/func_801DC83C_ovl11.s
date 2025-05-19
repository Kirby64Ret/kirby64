glabel func_801DC83C_ovl11
/* 1E70FC 801DC83C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E7100 801DC840 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E7104 801DC844 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E7108 801DC848 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E710C 801DC84C 8DCF0000 */  lw    $t7, ($t6)
/* 1E7110 801DC850 3C19800F */  lui   $t9, %hi(D_800E98E0) # $t9, 0x800f
/* 1E7114 801DC854 273998E0 */  addiu $t9, %lo(D_800E98E0) # addiu $t9, $t9, -0x6720
/* 1E7118 801DC858 000FC080 */  sll   $t8, $t7, 2
/* 1E711C 801DC85C 03191021 */  addu  $v0, $t8, $t9
/* 1E7120 801DC860 8C480000 */  lw    $t0, ($v0)
/* 1E7124 801DC864 3C01800D */  lui   $at, %hi(D_800D70D8) # $at, 0x800d
/* 1E7128 801DC868 51000020 */  beql  $t0, $zero, .L801DC8EC_ovl11
/* 1E712C 801DC86C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E7130 801DC870 AC400000 */  sw    $zero, ($v0)
/* 1E7134 801DC874 C42670D8 */  lwc1  $f6, %lo(D_800D70D8)($at)
/* 1E7138 801DC878 44802000 */  mtc1  $zero, $f4
/* 1E713C 801DC87C 00000000 */  nop   
/* 1E7140 801DC880 46062032 */  c.eq.s $f4, $f6
/* 1E7144 801DC884 00000000 */  nop   
/* 1E7148 801DC888 45010005 */  bc1t  .L801DC8A0_ovl11
/* 1E714C 801DC88C 00000000 */   nop   
/* 1E7150 801DC890 0C07716C */  jal   func_801DC5B0_ovl11
/* 1E7154 801DC894 00000000 */   nop   
/* 1E7158 801DC898 10000014 */  b     .L801DC8EC_ovl11
/* 1E715C 801DC89C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DC8A0_ovl11:
/* 1E7160 801DC8A0 0C0771EE */  jal   func_801DC7B8_ovl11
/* 1E7164 801DC8A4 00000000 */   nop   
/* 1E7168 801DC8A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E716C 801DC8AC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E7170 801DC8B0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E7174 801DC8B4 24090008 */  li    $t1, 8
/* 1E7178 801DC8B8 8C4A0000 */  lw    $t2, ($v0)
/* 1E717C 801DC8BC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E7180 801DC8C0 3C05801E */  lui   $a1, %hi(D_801DC258) # $a1, 0x801e
/* 1E7184 801DC8C4 000A5880 */  sll   $t3, $t2, 2
/* 1E7188 801DC8C8 002B0821 */  addu  $at, $at, $t3
/* 1E718C 801DC8CC AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
/* 1E7190 801DC8D0 8C4C0000 */  lw    $t4, ($v0)
/* 1E7194 801DC8D4 24A5C258 */  addiu $a1, %lo(D_801DC258) # addiu $a1, $a1, -0x3da8
/* 1E7198 801DC8D8 000C6880 */  sll   $t5, $t4, 2
/* 1E719C 801DC8DC 008D2021 */  addu  $a0, $a0, $t5
/* 1E71A0 801DC8E0 0C02C7B2 */  jal   assign_new_process_entry
/* 1E71A4 801DC8E4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E71A8 801DC8E8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DC8EC_ovl11:
/* 1E71AC 801DC8EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E71B0 801DC8F0 03E00008 */  jr    $ra
/* 1E71B4 801DC8F4 00000000 */   nop   
.type func_801DC83C_ovl11, @function
.size func_801DC83C_ovl11, . - func_801DC83C_ovl11
