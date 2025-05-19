glabel func_801DF318_ovl11
/* 1E9BD8 801DF318 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E9BDC 801DF31C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E9BE0 801DF320 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E9BE4 801DF324 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9BE8 801DF328 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E9BEC 801DF32C 8C430000 */  lw    $v1, ($v0)
/* 1E9BF0 801DF330 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1E9BF4 801DF334 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E9BF8 801DF338 00031880 */  sll   $v1, $v1, 2
/* 1E9BFC 801DF33C 01C37021 */  addu  $t6, $t6, $v1
/* 1E9C00 801DF340 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1E9C04 801DF344 00230821 */  addu  $at, $at, $v1
/* 1E9C08 801DF348 240F0001 */  li    $t7, 1
/* 1E9C0C 801DF34C 11C00009 */  beqz  $t6, .L801DF374_ovl11
/* 1E9C10 801DF350 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E9C14 801DF354 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1E9C18 801DF358 8C580000 */  lw    $t8, ($v0)
/* 1E9C1C 801DF35C 3C05801E */  lui   $a1, %hi(D_801DEF9C) # $a1, 0x801e
/* 1E9C20 801DF360 24A5EF9C */  addiu $a1, %lo(D_801DEF9C) # addiu $a1, $a1, -0x1064
/* 1E9C24 801DF364 0018C880 */  sll   $t9, $t8, 2
/* 1E9C28 801DF368 00992021 */  addu  $a0, $a0, $t9
/* 1E9C2C 801DF36C 0C02C7B2 */  jal   assign_new_process_entry
/* 1E9C30 801DF370 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DF374_ovl11:
/* 1E9C34 801DF374 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E9C38 801DF378 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9C3C 801DF37C 03E00008 */  jr    $ra
/* 1E9C40 801DF380 00000000 */   nop   
.type func_801DF318_ovl11, @function
.size func_801DF318_ovl11, . - func_801DF318_ovl11
