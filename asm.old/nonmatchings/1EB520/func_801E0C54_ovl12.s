glabel func_801E0C54_ovl12
/* 1F0F94 801E0C54 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1F0F98 801E0C58 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1F0F9C 801E0C5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
glabel D_801E0C60_ovl11
/* 1F0FA0 801E0C60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F0FA4 801E0C64 AFA40018 */  sw         $a0, 0x18($sp)
/* 1F0FA8 801E0C68 8C430000 */  lw         $v1, 0x0($v0)
/* 1F0FAC 801E0C6C 3C01800F */  lui        $at, %hi(D_800EB320)
/* 1F0FB0 801E0C70 3C0E800F */  lui        $t6, %hi(D_800E9E20)
/* 1F0FB4 801E0C74 00031880 */  sll        $v1, $v1, 2
glabel func_801E0C78_ovl11
/* 1F0FB8 801E0C78 00230821 */  addu       $at, $at, $v1
/* 1F0FBC 801E0C7C C424B320 */  lwc1       $f4, %lo(D_800EB320)($at)
/* 1F0FC0 801E0C80 3C013F40 */  lui        $at, (0x3F400000 >> 16)
/* 1F0FC4 801E0C84 44813000 */  mtc1       $at, $f6
/* 1F0FC8 801E0C88 25CE9E20 */  addiu      $t6, $t6, %lo(D_800E9E20)
/* 1F0FCC 801E0C8C 006E2021 */  addu       $a0, $v1, $t6
/* 1F0FD0 801E0C90 4606203C */  c.lt.s     $f4, $f6
/* 1F0FD4 801E0C94 00000000 */  nop
/* 1F0FD8 801E0C98 45020006 */  bc1fl      .L801E0CB4_ovl12
glabel func_801E0C9C_ovl15
/* 1F0FDC 801E0C9C 8C8F0000 */   lw        $t7, 0x0($a0)
/* 1F0FE0 801E0CA0 0C077B4E */  jal        func_801DED38_ovl12
/* 1F0FE4 801E0CA4 00000000 */   nop
/* 1F0FE8 801E0CA8 10000018 */  b          func_801E0D0C_ovl12
/* 1F0FEC 801E0CAC 00000000 */   nop
.L801E0CB0_ovl15:
/* 1F0FF0 801E0CB0 8C8F0000 */  lw         $t7, 0x0($a0)
.L801E0CB4_ovl12:
/* 1F0FF4 801E0CB4 24010002 */  addiu      $at, $zero, 0x2
/* 1F0FF8 801E0CB8 24180001 */  addiu      $t8, $zero, 0x1
/* 1F0FFC 801E0CBC 15E10012 */  bne        $t7, $at, .L801E0D08_ovl12
/* 1F1000 801E0CC0 240B0001 */   addiu     $t3, $zero, 0x1
glabel func_801E0CC4_ovl9
/* 1F1004 801E0CC4 3C01800D */  lui        $at, %hi(D_800D7098 + 0x14)
glabel func_801E0CC8_ovl16
/* 1F1008 801E0CC8 AC2070AC */  sw         $zero, %lo(D_800D7098 + 0x14)($at)
/* 1F100C 801E0CCC 8C590000 */  lw         $t9, 0x0($v0)
/* 1F1010 801E0CD0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1F1014 801E0CD4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
.L801E0CD8_ovl17:
/* 1F1018 801E0CD8 00194080 */  sll        $t0, $t9, 2
/* 1F101C 801E0CDC 00280821 */  addu       $at, $at, $t0
.L801E0CE0_ovl15:
/* 1F1020 801E0CE0 AC38DC50 */  sw         $t8, %lo(gEntityVtableIndexArray)($at)
/* 1F1024 801E0CE4 8C490000 */  lw         $t1, 0x0($v0)
/* 1F1028 801E0CE8 3C05801E */  lui        $a1, %hi(func_801DFFA8_ovl12)
/* 1F102C 801E0CEC 24A5FFA8 */  addiu      $a1, $a1, %lo(func_801DFFA8_ovl12)
/* 1F1030 801E0CF0 00095080 */  sll        $t2, $t1, 2
/* 1F1034 801E0CF4 008A2021 */  addu       $a0, $a0, $t2
/* 1F1038 801E0CF8 0C02C7B2 */  jal        assign_new_process_entry
/* 1F103C 801E0CFC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
glabel func_801E0D00_ovl17
/* 1F1040 801E0D00 10000002 */  b          func_801E0D0C_ovl12
/* 1F1044 801E0D04 00000000 */   nop
.L801E0D08_ovl12:
/* 1F1048 801E0D08 AC8B0000 */  sw         $t3, 0x0($a0)
glabel func_801E0D0C_ovl12
/* 1F104C 801E0D0C 0C077B67 */  jal        func_801DED9C_ovl12
/* 1F1050 801E0D10 24040002 */   addiu     $a0, $zero, 0x2
.L801E0D14_ovl10:
/* 1F1054 801E0D14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F1058 801E0D18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F105C 801E0D1C 03E00008 */  jr         $ra
/* 1F1060 801E0D20 00000000 */   nop
