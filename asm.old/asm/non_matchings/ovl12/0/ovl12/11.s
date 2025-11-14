glabel func_801DB944_ovl12 # 11
/* 000744 801DB944 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000748 801DB948 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00074C 801DB94C 0C006291 */  jal         random_soft_s32_range
/* 000750 801DB950 24040008 */   addiu      $a0, $zero, 0x8
/* 000754 801DB954 28410006 */  slti        $at, $v0, 0x6
/* 000758 801DB958 14200003 */  bnez        $at, .L801DB968
/* 00075C 801DB95C 00000000 */   nop
/* 000760 801DB960 10000009 */  b           .L801DB988
/* 000764 801DB964 24030003 */   addiu      $v1, $zero, 0x3
.L801DB968:
/* 000768 801DB968 0C006291 */  jal         random_soft_s32_range
/* 00076C 801DB96C 24040008 */   addiu      $a0, $zero, 0x8
/* 000770 801DB970 28410003 */  slti        $at, $v0, 0x3
/* 000774 801DB974 14200003 */  bnez        $at, .L801DB984
/* 000778 801DB978 24020001 */   addiu      $v0, $zero, 0x1
/* 00077C 801DB97C 10000001 */  b           .L801DB984
/* 000780 801DB980 24020002 */   addiu      $v0, $zero, 0x2
.L801DB984:
/* 000784 801DB984 00401825 */  move        $v1, $v0
.L801DB988:
/* 000788 801DB988 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 00078C 801DB98C 8CC6A7C4 */  lw          $a2, %lo(D_8004A7C4)($a2)
/* 000790 801DB990 3C0E800F */  lui         $t6, %hi(D_800E9560)
/* 000794 801DB994 25CE9560 */  addiu       $t6, $t6, %lo(D_800E9560)
/* 000798 801DB998 8CC40000 */  lw          $a0, 0x0($a2)
/* 00079C 801DB99C 3C05800F */  lui         $a1, %hi(D_800E93A0)
/* 0007A0 801DB9A0 00042080 */  sll         $a0, $a0, 2
/* 0007A4 801DB9A4 008E3821 */  addu        $a3, $a0, $t6
/* 0007A8 801DB9A8 00A42821 */  addu        $a1, $a1, $a0
/* 0007AC 801DB9AC 8CA593A0 */  lw          $a1, %lo(D_800E93A0)($a1)
/* 0007B0 801DB9B0 8CE20000 */  lw          $v0, 0x0($a3)
/* 0007B4 801DB9B4 14450008 */  bne         $v0, $a1, .L801DB9D8
/* 0007B8 801DB9B8 00000000 */   nop
/* 0007BC 801DB9BC 14620006 */  bne         $v1, $v0, .L801DB9D8
/* 0007C0 801DB9C0 24620001 */   addiu      $v0, $v1, 0x1
/* 0007C4 801DB9C4 28410004 */  slti        $at, $v0, 0x4
/* 0007C8 801DB9C8 14200003 */  bnez        $at, .L801DB9D8
/* 0007CC 801DB9CC 00401825 */   move       $v1, $v0
/* 0007D0 801DB9D0 10000001 */  b           .L801DB9D8
/* 0007D4 801DB9D4 24030001 */   addiu      $v1, $zero, 0x1
.L801DB9D8:
/* 0007D8 801DB9D8 14650010 */  bne         $v1, $a1, .L801DBA1C
/* 0007DC 801DB9DC 24020003 */   addiu      $v0, $zero, 0x3
/* 0007E0 801DB9E0 5462000F */  bnel        $v1, $v0, .L801DBA20
/* 0007E4 801DB9E4 ACE50000 */   sw         $a1, 0x0($a3)
/* 0007E8 801DB9E8 0C006291 */  jal         random_soft_s32_range
/* 0007EC 801DB9EC 24040002 */   addiu      $a0, $zero, 0x2
/* 0007F0 801DB9F0 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 0007F4 801DB9F4 8CC6A7C4 */  lw          $a2, %lo(D_8004A7C4)($a2)
/* 0007F8 801DB9F8 3C0F800F */  lui         $t7, %hi(D_800E9560)
/* 0007FC 801DB9FC 3C05800F */  lui         $a1, %hi(D_800E93A0)
/* 000800 801DBA00 8CC40000 */  lw          $a0, 0x0($a2)
/* 000804 801DBA04 25EF9560 */  addiu       $t7, $t7, %lo(D_800E9560)
/* 000808 801DBA08 24430001 */  addiu       $v1, $v0, 0x1
/* 00080C 801DBA0C 00042080 */  sll         $a0, $a0, 2
/* 000810 801DBA10 00A42821 */  addu        $a1, $a1, $a0
/* 000814 801DBA14 8CA593A0 */  lw          $a1, %lo(D_800E93A0)($a1)
/* 000818 801DBA18 008F3821 */  addu        $a3, $a0, $t7
.L801DBA1C:
/* 00081C 801DBA1C ACE50000 */  sw          $a1, 0x0($a3)
.L801DBA20:
/* 000820 801DBA20 8CD80000 */  lw          $t8, 0x0($a2)
/* 000824 801DBA24 3C01800F */  lui         $at, %hi(D_800E93A0)
/* 000828 801DBA28 24020003 */  addiu       $v0, $zero, 0x3
/* 00082C 801DBA2C 0018C880 */  sll         $t9, $t8, 2
/* 000830 801DBA30 00390821 */  addu        $at, $at, $t9
/* 000834 801DBA34 AC2393A0 */  sw          $v1, %lo(D_800E93A0)($at)
/* 000838 801DBA38 3C01800D */  lui         $at, %hi(D_800D70AC)
/* 00083C 801DBA3C 1462000E */  bne         $v1, $v0, .L801DBA78
/* 000840 801DBA40 AC2370AC */   sw         $v1, %lo(D_800D70AC)($at)
/* 000844 801DBA44 8CC80000 */  lw          $t0, 0x0($a2)
/* 000848 801DBA48 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 00084C 801DBA4C 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 000850 801DBA50 00084880 */  sll         $t1, $t0, 2
/* 000854 801DBA54 00290821 */  addu        $at, $at, $t1
/* 000858 801DBA58 AC22DC50 */  sw          $v0, %lo(gEntityVtableIndexArray)($at)
/* 00085C 801DBA5C 8CCA0000 */  lw          $t2, 0x0($a2)
/* 000860 801DBA60 3C05801E */  lui         $a1, %hi(func_801DB294_ovl12)
/* 000864 801DBA64 24A5B294 */  addiu       $a1, $a1, %lo(func_801DB294_ovl12)
/* 000868 801DBA68 000A5880 */  sll         $t3, $t2, 2
/* 00086C 801DBA6C 008B2021 */  addu        $a0, $a0, $t3
/* 000870 801DBA70 0C02C7B2 */  jal         assign_new_process_entry
/* 000874 801DBA74 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DBA78:
/* 000878 801DBA78 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00087C 801DBA7C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000880 801DBA80 03E00008 */  jr          $ra
/* 000884 801DBA84 00000000 */   nop
.type func_801DB944_ovl12, @function
.size func_801DB944_ovl12, . - func_801DB944_ovl12
