glabel func_80207C24_ovl9
/* 1B5C74 80207C24 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1B5C78 80207C28 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1B5C7C 80207C2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1B5C80 80207C30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B5C84 80207C34 8DC40000 */  lw         $a0, 0x0($t6)
/* 1B5C88 80207C38 3C03800E */  lui        $v1, %hi(D_800DFBD0)
/* 1B5C8C 80207C3C 00047880 */  sll        $t7, $a0, 2
/* 1B5C90 80207C40 006F1821 */  addu       $v1, $v1, $t7
/* 1B5C94 80207C44 8C63FBD0 */  lw         $v1, %lo(D_800DFBD0)($v1)
/* 1B5C98 80207C48 8C78002C */  lw         $t8, 0x2C($v1)
/* 1B5C9C 80207C4C AFB8001C */  sw         $t8, 0x1C($sp)
/* 1B5CA0 80207C50 8C79001C */  lw         $t9, 0x1C($v1)
/* 1B5CA4 80207C54 0C044554 */  jal        func_80111550
/* 1B5CA8 80207C58 AFB90018 */   sw        $t9, 0x18($sp)
/* 1B5CAC 80207C5C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 1B5CB0 80207C60 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 1B5CB4 80207C64 3C04801D */  lui        $a0, %hi(D_801C9178)
/* 1B5CB8 80207C68 24849178 */  addiu      $a0, $a0, %lo(D_801C9178)
/* 1B5CBC 80207C6C 0C044722 */  jal        func_80111C88
/* 1B5CC0 80207C70 8D050000 */   lw        $a1, 0x0($t0)
/* 1B5CC4 80207C74 8FA90018 */  lw         $t1, 0x18($sp)
/* 1B5CC8 80207C78 8C4A0024 */  lw         $t2, 0x24($v0)
/* 1B5CCC 80207C7C 00402025 */  or         $a0, $v0, $zero
/* 1B5CD0 80207C80 AD490008 */  sw         $t1, 0x8($t2)
/* 1B5CD4 80207C84 8C4C0024 */  lw         $t4, 0x24($v0)
/* 1B5CD8 80207C88 8FAB001C */  lw         $t3, 0x1C($sp)
/* 1B5CDC 80207C8C 0C0447B3 */  jal        func_80111ECC
/* 1B5CE0 80207C90 AD8B0030 */   sw        $t3, 0x30($t4)
/* 1B5CE4 80207C94 0C06831C */  jal        func_801A0C70_ovl7
/* 1B5CE8 80207C98 00000000 */   nop
/* 1B5CEC 80207C9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B5CF0 80207CA0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1B5CF4 80207CA4 03E00008 */  jr         $ra
/* 1B5CF8 80207CA8 00000000 */   nop
