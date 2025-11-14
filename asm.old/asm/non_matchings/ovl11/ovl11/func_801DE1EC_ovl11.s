glabel func_801DE1EC_ovl11
/* 1E8AAC 801DE1EC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E8AB0 801DE1F0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E8AB4 801DE1F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E8AB8 801DE1F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E8ABC 801DE1FC AFA40018 */  sw    $a0, 0x18($sp)
/* 1E8AC0 801DE200 8C430000 */  lw    $v1, ($v0)
/* 1E8AC4 801DE204 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1E8AC8 801DE208 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E8ACC 801DE20C 00031880 */  sll   $v1, $v1, 2
/* 1E8AD0 801DE210 01C37021 */  addu  $t6, $t6, $v1
/* 1E8AD4 801DE214 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1E8AD8 801DE218 00230821 */  addu  $at, $at, $v1
/* 1E8ADC 801DE21C 240F0001 */  li    $t7, 1
/* 1E8AE0 801DE220 11C00009 */  beqz  $t6, .L801DE248_ovl11
/* 1E8AE4 801DE224 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E8AE8 801DE228 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1E8AEC 801DE22C 8C580000 */  lw    $t8, ($v0)
/* 1E8AF0 801DE230 3C05801E */  lui   $a1, %hi(D_801DDEC0) # $a1, 0x801e
/* 1E8AF4 801DE234 24A5DEC0 */  addiu $a1, %lo(D_801DDEC0) # addiu $a1, $a1, -0x2140
/* 1E8AF8 801DE238 0018C880 */  sll   $t9, $t8, 2
/* 1E8AFC 801DE23C 00992021 */  addu  $a0, $a0, $t9
/* 1E8B00 801DE240 0C02C7B2 */  jal   assign_new_process_entry
/* 1E8B04 801DE244 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DE248_ovl11:
/* 1E8B08 801DE248 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E8B0C 801DE24C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E8B10 801DE250 03E00008 */  jr    $ra
/* 1E8B14 801DE254 00000000 */   nop   
.type func_801DE1EC_ovl11, @function
.size func_801DE1EC_ovl11, . - func_801DE1EC_ovl11
