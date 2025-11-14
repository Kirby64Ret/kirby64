glabel func_801DE7E8_ovl12 # 77
/* 0035E8 801DE7E8 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 0035EC 801DE7EC 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 0035F0 801DE7F0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0035F4 801DE7F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0035F8 801DE7F8 AFA40018 */  sw          $a0, 0x18($sp)
/* 0035FC 801DE7FC 8C620000 */  lw          $v0, 0x0($v1)
/* 003600 801DE800 3C04800D */  lui         $a0, %hi(D_800D7098)
/* 003604 801DE804 3C09800E */  lui         $t1, %hi(gEntityVtableIndexArray)
/* 003608 801DE808 3C0E800F */  lui         $t6, %hi(D_800E9560)
/* 00360C 801DE80C 00021080 */  sll         $v0, $v0, 2
/* 003610 801DE810 2529DC50 */  addiu       $t1, $t1, %lo(gEntityVtableIndexArray)
/* 003614 801DE814 24847098 */  addiu       $a0, $a0, %lo(D_800D7098)
/* 003618 801DE818 25CE9560 */  addiu       $t6, $t6, %lo(D_800E9560)
/* 00361C 801DE81C 8C990008 */  lw          $t9, 0x8($a0)
/* 003620 801DE820 004E3821 */  addu        $a3, $v0, $t6
/* 003624 801DE824 01227821 */  addu        $t7, $t1, $v0
/* 003628 801DE828 8DF80000 */  lw          $t8, 0x0($t7)
/* 00362C 801DE82C 8CE80000 */  lw          $t0, 0x0($a3)
/* 003630 801DE830 24010001 */  addiu       $at, $zero, 0x1
/* 003634 801DE834 13210003 */  beq         $t9, $at, .L801DE844
/* 003638 801DE838 01183021 */   addu       $a2, $t0, $t8
/* 00363C 801DE83C 8C820010 */  lw          $v0, 0x10($a0)
/* 003640 801DE840 14400011 */  bnez        $v0, .L801DE888
.L801DE844:
/* 003644 801DE844 250A0001 */   addiu      $t2, $t0, 0x1
/* 003648 801DE848 ACEA0000 */  sw          $t2, 0x0($a3)
/* 00364C 801DE84C 8C6B0000 */  lw          $t3, 0x0($v1)
/* 003650 801DE850 24C6FFFE */  addiu       $a2, $a2, -0x2
/* 003654 801DE854 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 003658 801DE858 000B6080 */  sll         $t4, $t3, 2
/* 00365C 801DE85C 012C6821 */  addu        $t5, $t1, $t4
/* 003660 801DE860 ADA60000 */  sw          $a2, 0x0($t5)
/* 003664 801DE864 8C6E0000 */  lw          $t6, 0x0($v1)
/* 003668 801DE868 3C05801E */  lui         $a1, %hi(func_801DE3D4_ovl12)
/* 00366C 801DE86C 24A5E3D4 */  addiu       $a1, $a1, %lo(func_801DE3D4_ovl12)
/* 003670 801DE870 000E7880 */  sll         $t7, $t6, 2
/* 003674 801DE874 008F2021 */  addu        $a0, $a0, $t7
/* 003678 801DE878 0C02C7B2 */  jal         assign_new_process_entry
/* 00367C 801DE87C 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* 003680 801DE880 10000006 */  b           .L801DE89C
/* 003684 801DE884 8FBF0014 */   lw         $ra, 0x14($sp)
.L801DE888:
/* 003688 801DE888 54400004 */  bnel        $v0, $zero, .L801DE89C
/* 00368C 801DE88C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 003690 801DE890 0C07737F */  jal         func_801DCDFC_ovl12
/* 003694 801DE894 00000000 */   nop
/* 003698 801DE898 8FBF0014 */  lw          $ra, 0x14($sp)
.L801DE89C:
/* 00369C 801DE89C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0036A0 801DE8A0 03E00008 */  jr          $ra
/* 0036A4 801DE8A4 00000000 */   nop
.type func_801DE7E8_ovl12, @function
.size func_801DE7E8_ovl12, . - func_801DE7E8_ovl12
