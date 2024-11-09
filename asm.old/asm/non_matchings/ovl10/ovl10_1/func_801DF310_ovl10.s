glabel func_801DF310_ovl10
/* 1D0080 801DF310 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D0084 801DF314 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D0088 801DF318 0C0775D8 */  jal   func_801DD760_ovl10
/* 1D008C 801DF31C AFA40018 */   sw    $a0, 0x18($sp)
/* 1D0090 801DF320 0C06835D */  jal   func_801A0D74_ovl10
/* 1D0094 801DF324 8FA40018 */   lw    $a0, 0x18($sp)
/* 1D0098 801DF328 0C078A32 */  jal   func_801E28C8_ovl10
/* 1D009C 801DF32C 00002025 */   move  $a0, $zero
/* 1D00A0 801DF330 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D00A4 801DF334 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D00A8 801DF338 3C0E800F */ lui $t6, %hi(D_800E83E0)
/* 1D00AC 801DF33C 24010001 */  li    $at, 1
/* 1D00B0 801DF340 8C430000 */  lw    $v1, ($v0)
/* 1D00B4 801DF344 240F0009 */  li    $t7, 9
/* 1D00B8 801DF348 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D00BC 801DF34C 00031880 */  sll   $v1, $v1, 2
/* 1D00C0 801DF350 01C37021 */  addu  $t6, $t6, $v1
/* 1D00C4 801DF354 8DCE83E0 */ lw $t6, %lo(D_800E83E0)($t6)
/* 1D00C8 801DF358 15C1000A */  bne   $t6, $at, .L801DF384_ovl10
/* 1D00CC 801DF35C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D00D0 801DF360 00230821 */  addu  $at, $at, $v1
/* 1D00D4 801DF364 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1D00D8 801DF368 8C580000 */  lw    $t8, ($v0)
/* 1D00DC 801DF36C 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1D00E0 801DF370 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1D00E4 801DF374 0018C880 */  sll   $t9, $t8, 2
/* 1D00E8 801DF378 00992021 */  addu  $a0, $a0, $t9
/* 1D00EC 801DF37C 0C02C7B2 */  jal   assign_new_process_entry
/* 1D00F0 801DF380 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DF384_ovl10:
/* 1D00F4 801DF384 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D00F8 801DF388 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D00FC 801DF38C 03E00008 */  jr    $ra
/* 1D0100 801DF390 00000000 */   nop   
.type func_801DF310_ovl10, @function
.size func_801DF310_ovl10, . - func_801DF310_ovl10
