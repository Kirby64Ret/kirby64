glabel func_801DE5CC_ovl10
/* 1CF33C 801DE5CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CF340 801DE5D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CF344 801DE5D4 0C0775D8 */  jal   func_801DD760_ovl10
/* 1CF348 801DE5D8 AFA40018 */   sw    $a0, 0x18($sp)
/* 1CF34C 801DE5DC 0C06835D */  jal   func_801A0D74_ovl10
/* 1CF350 801DE5E0 8FA40018 */   lw    $a0, 0x18($sp)
/* 1CF354 801DE5E4 0C078A32 */  jal   func_801E28C8_ovl10
/* 1CF358 801DE5E8 00002025 */   move  $a0, $zero
/* 1CF35C 801DE5EC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1CF360 801DE5F0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1CF364 801DE5F4 3C0E800F */ lui $t6, %hi(D_800E83E0)
/* 1CF368 801DE5F8 24010001 */  li    $at, 1
/* 1CF36C 801DE5FC 8C430000 */  lw    $v1, ($v0)
/* 1CF370 801DE600 240F0009 */  li    $t7, 9
/* 1CF374 801DE604 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1CF378 801DE608 00031880 */  sll   $v1, $v1, 2
/* 1CF37C 801DE60C 01C37021 */  addu  $t6, $t6, $v1
/* 1CF380 801DE610 8DCE83E0 */ lw $t6, %lo(D_800E83E0)($t6)
/* 1CF384 801DE614 15C1000A */  bne   $t6, $at, .L801DE640_ovl10
/* 1CF388 801DE618 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CF38C 801DE61C 00230821 */  addu  $at, $at, $v1
/* 1CF390 801DE620 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1CF394 801DE624 8C580000 */  lw    $t8, ($v0)
/* 1CF398 801DE628 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1CF39C 801DE62C 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1CF3A0 801DE630 0018C880 */  sll   $t9, $t8, 2
/* 1CF3A4 801DE634 00992021 */  addu  $a0, $a0, $t9
/* 1CF3A8 801DE638 0C02C7B2 */  jal   assign_new_process_entry
/* 1CF3AC 801DE63C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DE640_ovl10:
/* 1CF3B0 801DE640 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CF3B4 801DE644 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CF3B8 801DE648 03E00008 */  jr    $ra
/* 1CF3BC 801DE64C 00000000 */   nop   
.type func_801DE5CC_ovl10, @function
.size func_801DE5CC_ovl10, . - func_801DE5CC_ovl10
