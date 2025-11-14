glabel func_801E03CC_ovl10
/* 1D113C 801E03CC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D1140 801E03D0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D1144 801E03D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D1148 801E03D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D114C 801E03DC 8DCF0000 */  lw    $t7, ($t6)
/* 1D1150 801E03E0 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D1154 801E03E4 000FC080 */  sll   $t8, $t7, 2
/* 1D1158 801E03E8 00380821 */  addu  $at, $at, $t8
/* 1D115C 801E03EC 0C06835D */  jal   func_801A0D74_ovl10
/* 1D1160 801E03F0 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D1164 801E03F4 0C078A32 */  jal   func_801E28C8_ovl10
/* 1D1168 801E03F8 00002025 */   move  $a0, $zero
/* 1D116C 801E03FC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D1170 801E0400 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D1174 801E0404 3C19800F */ lui $t9, %hi(D_800E83E0)
/* 1D1178 801E0408 24010001 */  li    $at, 1
/* 1D117C 801E040C 8C430000 */  lw    $v1, ($v0)
/* 1D1180 801E0410 24080012 */  li    $t0, 18
/* 1D1184 801E0414 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D1188 801E0418 00031880 */  sll   $v1, $v1, 2
/* 1D118C 801E041C 0323C821 */  addu  $t9, $t9, $v1
/* 1D1190 801E0420 8F3983E0 */ lw $t9, %lo(D_800E83E0)($t9)
/* 1D1194 801E0424 1721000A */  bne   $t9, $at, .L801E0450_ovl10
/* 1D1198 801E0428 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D119C 801E042C 00230821 */  addu  $at, $at, $v1
/* 1D11A0 801E0430 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 1D11A4 801E0434 8C490000 */  lw    $t1, ($v0)
/* 1D11A8 801E0438 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1D11AC 801E043C 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1D11B0 801E0440 00095080 */  sll   $t2, $t1, 2
/* 1D11B4 801E0444 008A2021 */  addu  $a0, $a0, $t2
/* 1D11B8 801E0448 0C02C7B2 */  jal   assign_new_process_entry
/* 1D11BC 801E044C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E0450_ovl10:
/* 1D11C0 801E0450 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D11C4 801E0454 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D11C8 801E0458 03E00008 */  jr    $ra
/* 1D11CC 801E045C 00000000 */   nop   
.type func_801E03CC_ovl10, @function
.size func_801E03CC_ovl10, . - func_801E03CC_ovl10
