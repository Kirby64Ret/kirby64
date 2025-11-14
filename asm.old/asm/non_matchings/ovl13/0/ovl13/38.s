glabel func_801E1F1C_ovl13 # 38
/* 1F9E9C 801E1F1C 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F9EA0 801E1F20 2508A7C4 */  addiu       $t0, $t0, %lo(D_8004A7C4)
/* 1F9EA4 801E1F24 8D020000 */  lw          $v0, 0x0($t0)
/* 1F9EA8 801E1F28 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F9EAC 801E1F2C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F9EB0 801E1F30 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F9EB4 801E1F34 8C430000 */  lw          $v1, 0x0($v0)
/* 1F9EB8 801E1F38 3C07800F */  lui         $a3, %hi(D_800E9AA0)
/* 1F9EBC 801E1F3C 24E79AA0 */  addiu       $a3, $a3, %lo(D_800E9AA0)
/* 1F9EC0 801E1F40 00031880 */  sll         $v1, $v1, 2
/* 1F9EC4 801E1F44 00E32821 */  addu        $a1, $a3, $v1
/* 1F9EC8 801E1F48 8CA60000 */  lw          $a2, 0x0($a1)
/* 1F9ECC 801E1F4C 24010001 */  addiu       $at, $zero, 0x1
/* 1F9ED0 801E1F50 240E0001 */  addiu       $t6, $zero, 0x1
/* 1F9ED4 801E1F54 50C00008 */  beql        $a2, $zero, L801E1F78_ovl13
/* 1F9ED8 801E1F58 ACAE0000 */   sw         $t6, 0x0($a1)
/* 1F9EDC 801E1F5C 10C1000C */  beq         $a2, $at, L801E1F90_ovl13
/* 1F9EE0 801E1F60 24010002 */   addiu      $at, $zero, 0x2
/* 1F9EE4 801E1F64 50C10024 */  beql        $a2, $at, L801E1FF8_ovl13
/* 1F9EE8 801E1F68 ACA00000 */   sw         $zero, 0x0($a1)
/* 1F9EEC 801E1F6C 10000028 */  b           L801E2010_ovl13
/* 1F9EF0 801E1F70 00066880 */   sll        $t5, $a2, 2
/* 1F9EF4 801E1F74 ACAE0000 */  sw          $t6, 0x0($a1)
glabel L801E1F78_ovl13
/* 1F9EF8 801E1F78 8C430000 */  lw          $v1, 0x0($v0)
/* 1F9EFC 801E1F7C 3C06800F */  lui         $a2, %hi(D_800E9AA0)
/* 1F9F00 801E1F80 00031880 */  sll         $v1, $v1, 2
/* 1F9F04 801E1F84 00C33021 */  addu        $a2, $a2, $v1
/* 1F9F08 801E1F88 10000020 */  b           L801E200C_ovl13
/* 1F9F0C 801E1F8C 8CC69AA0 */   lw         $a2, %lo(D_800E9AA0)($a2)
glabel L801E1F90_ovl13
/* 1F9F10 801E1F90 0C006291 */  jal         random_soft_s32_range
/* 1F9F14 801E1F94 24040002 */   addiu      $a0, $zero, 0x2
/* 1F9F18 801E1F98 3C07800F */  lui         $a3, %hi(D_800E9AA0)
/* 1F9F1C 801E1F9C 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F9F20 801E1FA0 2508A7C4 */  addiu       $t0, $t0, %lo(D_8004A7C4)
/* 1F9F24 801E1FA4 14400007 */  bnez        $v0, L801E1FC4_ovl13
/* 1F9F28 801E1FA8 24E79AA0 */   addiu      $a3, $a3, %lo(D_800E9AA0)
/* 1F9F2C 801E1FAC 8D020000 */  lw          $v0, 0x0($t0)
/* 1F9F30 801E1FB0 8C4F0000 */  lw          $t7, 0x0($v0)
/* 1F9F34 801E1FB4 000FC080 */  sll         $t8, $t7, 2
/* 1F9F38 801E1FB8 00F8C821 */  addu        $t9, $a3, $t8
/* 1F9F3C 801E1FBC 10000007 */  b           L801E1FDC_ovl13
/* 1F9F40 801E1FC0 AF200000 */   sw         $zero, 0x0($t9)
glabel L801E1FC4_ovl13
/* 1F9F44 801E1FC4 8D020000 */  lw          $v0, 0x0($t0)
/* 1F9F48 801E1FC8 24090002 */  addiu       $t1, $zero, 0x2
/* 1F9F4C 801E1FCC 8C4A0000 */  lw          $t2, 0x0($v0)
/* 1F9F50 801E1FD0 000A5880 */  sll         $t3, $t2, 2
/* 1F9F54 801E1FD4 00EB6021 */  addu        $t4, $a3, $t3
/* 1F9F58 801E1FD8 AD890000 */  sw          $t1, 0x0($t4)
glabel L801E1FDC_ovl13
/* 1F9F5C 801E1FDC 8C430000 */  lw          $v1, 0x0($v0)
/* 1F9F60 801E1FE0 3C06800F */  lui         $a2, %hi(D_800E9AA0)
/* 1F9F64 801E1FE4 00031880 */  sll         $v1, $v1, 2
/* 1F9F68 801E1FE8 00C33021 */  addu        $a2, $a2, $v1
/* 1F9F6C 801E1FEC 10000007 */  b           L801E200C_ovl13
/* 1F9F70 801E1FF0 8CC69AA0 */   lw         $a2, %lo(D_800E9AA0)($a2)
/* 1F9F74 801E1FF4 ACA00000 */  sw          $zero, 0x0($a1)
glabel L801E1FF8_ovl13
/* 1F9F78 801E1FF8 8C430000 */  lw          $v1, 0x0($v0)
/* 1F9F7C 801E1FFC 3C06800F */  lui         $a2, %hi(D_800E9AA0)
/* 1F9F80 801E2000 00031880 */  sll         $v1, $v1, 2
/* 1F9F84 801E2004 00C33021 */  addu        $a2, $a2, $v1
/* 1F9F88 801E2008 8CC69AA0 */  lw          $a2, %lo(D_800E9AA0)($a2)
glabel L801E200C_ovl13
/* 1F9F8C 801E200C 00066880 */  sll         $t5, $a2, 2
glabel L801E2010_ovl13
/* 1F9F90 801E2010 3C0E801E */  lui         $t6, %hi(D_801E5BF0_ovl13)
/* 1F9F94 801E2014 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F9F98 801E2018 01CD7021 */  addu        $t6, $t6, $t5
/* 1F9F9C 801E201C 8DCE5BF0 */  lw          $t6, %lo(D_801E5BF0_ovl13)($t6)
/* 1F9FA0 801E2020 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F9FA4 801E2024 00230821 */  addu        $at, $at, $v1
/* 1F9FA8 801E2028 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F9FAC 801E202C 03E00008 */  jr          $ra
/* 1F9FB0 801E2030 AC2EDC50 */   sw         $t6, %lo(gEntityVtableIndexArray)($at)
.type func_801E1F1C_ovl13, @function

.size func_801E1F1C_ovl13, . - func_801E1F1C_ovl13
