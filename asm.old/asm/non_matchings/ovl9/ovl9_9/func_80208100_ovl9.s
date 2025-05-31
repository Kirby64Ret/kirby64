glabel func_80208100_ovl9
/* 1B6150 80208100 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1B6154 80208104 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 1B6158 80208108 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1B615C 8020810C 44816000 */  mtc1  $at, $f12
/* 1B6160 80208110 0C0669FA */  jal   func_8019A7E8_ovl9
/* 1B6164 80208114 AFA40018 */   sw    $a0, 0x18($sp)
/* 1B6168 80208118 10400010 */  beqz  $v0, .L8020815C_ovl9
/* 1B616C 8020811C 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 1B6170 80208120 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 1B6174 80208124 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1B6178 80208128 240E0001 */  li    $t6, 1
/* 1B617C 8020812C 8C4F0000 */  lw    $t7, ($v0)
/* 1B6180 80208130 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1B6184 80208134 3C058020 */ lui $a1, %hi(D_80207F0C)
/* 1B6188 80208138 000FC080 */  sll   $t8, $t7, 2
/* 1B618C 8020813C 00380821 */  addu  $at, $at, $t8
/* 1B6190 80208140 AC2EDC50 */ sw $t6, %lo(gEntityVtableIndexArray)($at)
/* 1B6194 80208144 8C590000 */  lw    $t9, ($v0)
/* 1B6198 80208148 24A57F0C */ addiu $a1, %lo(D_80207F0C)
/* 1B619C 8020814C 00194080 */  sll   $t0, $t9, 2
/* 1B61A0 80208150 00882021 */  addu  $a0, $a0, $t0
/* 1B61A4 80208154 0C02C7B2 */  jal   assign_new_process_entry
/* 1B61A8 80208158 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L8020815C_ovl9:
/* 1B61AC 8020815C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1B61B0 80208160 27BD0018 */  addiu $sp, $sp, 0x18
/* 1B61B4 80208164 03E00008 */  jr    $ra
/* 1B61B8 80208168 00000000 */   nop   
.type func_80208100_ovl9, @function
.size func_80208100_ovl9, . - func_80208100_ovl9
