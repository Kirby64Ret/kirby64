nonmatching func_801DB944_ovl12, 0x144

glabel func_801DB944_ovl12
    /* 1EBC84 801DB944 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EBC88 801DB948 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EBC8C 801DB94C 0C006291 */  jal        random_soft_s32_range
    /* 1EBC90 801DB950 24040008 */   addiu     $a0, $zero, 0x8
    /* 1EBC94 801DB954 28410006 */  slti       $at, $v0, 0x6
    /* 1EBC98 801DB958 14200003 */  bnez       $at, .L801DB968_ovl12
    /* 1EBC9C 801DB95C 00000000 */   nop
    /* 1EBCA0 801DB960 10000009 */  b          .L801DB988_ovl12
    /* 1EBCA4 801DB964 24030003 */   addiu     $v1, $zero, 0x3
  .L801DB968_ovl12:
    /* 1EBCA8 801DB968 0C006291 */  jal        random_soft_s32_range
    /* 1EBCAC 801DB96C 24040008 */   addiu     $a0, $zero, 0x8
    /* 1EBCB0 801DB970 28410003 */  slti       $at, $v0, 0x3
    /* 1EBCB4 801DB974 14200003 */  bnez       $at, .L801DB984_ovl12
    /* 1EBCB8 801DB978 24020001 */   addiu     $v0, $zero, 0x1
    /* 1EBCBC 801DB97C 10000001 */  b          .L801DB984_ovl12
    /* 1EBCC0 801DB980 24020002 */   addiu     $v0, $zero, 0x2
  .L801DB984_ovl12:
    /* 1EBCC4 801DB984 00401825 */  or         $v1, $v0, $zero
  .L801DB988_ovl12:
    /* 1EBCC8 801DB988 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1EBCCC 801DB98C 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 1EBCD0 801DB990 3C0E800F */  lui        $t6, %hi(D_800E9560)
    /* 1EBCD4 801DB994 25CE9560 */  addiu      $t6, $t6, %lo(D_800E9560)
    /* 1EBCD8 801DB998 8CC40000 */  lw         $a0, 0x0($a2)
    /* 1EBCDC 801DB99C 3C05800F */  lui        $a1, %hi(D_800E93A0)
    /* 1EBCE0 801DB9A0 00042080 */  sll        $a0, $a0, 2
    /* 1EBCE4 801DB9A4 008E3821 */  addu       $a3, $a0, $t6
    /* 1EBCE8 801DB9A8 00A42821 */  addu       $a1, $a1, $a0
    /* 1EBCEC 801DB9AC 8CA593A0 */  lw         $a1, %lo(D_800E93A0)($a1)
    /* 1EBCF0 801DB9B0 8CE20000 */  lw         $v0, 0x0($a3)
    /* 1EBCF4 801DB9B4 14450008 */  bne        $v0, $a1, .L801DB9D8_ovl12
    /* 1EBCF8 801DB9B8 00000000 */   nop
    /* 1EBCFC 801DB9BC 14620006 */  bne        $v1, $v0, .L801DB9D8_ovl12
    /* 1EBD00 801DB9C0 24620001 */   addiu     $v0, $v1, 0x1
    /* 1EBD04 801DB9C4 28410004 */  slti       $at, $v0, 0x4
    /* 1EBD08 801DB9C8 14200003 */  bnez       $at, .L801DB9D8_ovl12
    /* 1EBD0C 801DB9CC 00401825 */   or        $v1, $v0, $zero
    /* 1EBD10 801DB9D0 10000001 */  b          .L801DB9D8_ovl12
    /* 1EBD14 801DB9D4 24030001 */   addiu     $v1, $zero, 0x1
  .L801DB9D8_ovl12:
    /* 1EBD18 801DB9D8 14650010 */  bne        $v1, $a1, .L801DBA1C_ovl12
    /* 1EBD1C 801DB9DC 24020003 */   addiu     $v0, $zero, 0x3
    /* 1EBD20 801DB9E0 5462000F */  bnel       $v1, $v0, .L801DBA20_ovl12
    /* 1EBD24 801DB9E4 ACE50000 */   sw        $a1, 0x0($a3)
    /* 1EBD28 801DB9E8 0C006291 */  jal        random_soft_s32_range
    /* 1EBD2C 801DB9EC 24040002 */   addiu     $a0, $zero, 0x2
    /* 1EBD30 801DB9F0 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1EBD34 801DB9F4 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 1EBD38 801DB9F8 3C0F800F */  lui        $t7, %hi(D_800E9560)
    /* 1EBD3C 801DB9FC 3C05800F */  lui        $a1, %hi(D_800E93A0)
    /* 1EBD40 801DBA00 8CC40000 */  lw         $a0, 0x0($a2)
    /* 1EBD44 801DBA04 25EF9560 */  addiu      $t7, $t7, %lo(D_800E9560)
    /* 1EBD48 801DBA08 24430001 */  addiu      $v1, $v0, 0x1
    /* 1EBD4C 801DBA0C 00042080 */  sll        $a0, $a0, 2
    /* 1EBD50 801DBA10 00A42821 */  addu       $a1, $a1, $a0
    /* 1EBD54 801DBA14 8CA593A0 */  lw         $a1, %lo(D_800E93A0)($a1)
    /* 1EBD58 801DBA18 008F3821 */  addu       $a3, $a0, $t7
  .L801DBA1C_ovl12:
    /* 1EBD5C 801DBA1C ACE50000 */  sw         $a1, 0x0($a3)
  .L801DBA20_ovl12:
    /* 1EBD60 801DBA20 8CD80000 */  lw         $t8, 0x0($a2)
    /* 1EBD64 801DBA24 3C01800F */  lui        $at, %hi(D_800E93A0)
    /* 1EBD68 801DBA28 24020003 */  addiu      $v0, $zero, 0x3
    /* 1EBD6C 801DBA2C 0018C880 */  sll        $t9, $t8, 2
    /* 1EBD70 801DBA30 00390821 */  addu       $at, $at, $t9
    /* 1EBD74 801DBA34 AC2393A0 */  sw         $v1, %lo(D_800E93A0)($at)
    /* 1EBD78 801DBA38 3C01800D */  lui        $at, %hi(D_800D7098 + 0x14)
    /* 1EBD7C 801DBA3C 1462000E */  bne        $v1, $v0, .L801DBA78_ovl12
    /* 1EBD80 801DBA40 AC2370AC */   sw        $v1, %lo(D_800D7098 + 0x14)($at)
    /* 1EBD84 801DBA44 8CC80000 */  lw         $t0, 0x0($a2)
    /* 1EBD88 801DBA48 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1EBD8C 801DBA4C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1EBD90 801DBA50 00084880 */  sll        $t1, $t0, 2
    /* 1EBD94 801DBA54 00290821 */  addu       $at, $at, $t1
    /* 1EBD98 801DBA58 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 1EBD9C 801DBA5C 8CCA0000 */  lw         $t2, 0x0($a2)
    /* 1EBDA0 801DBA60 3C05801E */  lui        $a1, %hi(func_801DB294_ovl12)
    /* 1EBDA4 801DBA64 24A5B294 */  addiu      $a1, $a1, %lo(func_801DB294_ovl12)
    /* 1EBDA8 801DBA68 000A5880 */  sll        $t3, $t2, 2
    /* 1EBDAC 801DBA6C 008B2021 */  addu       $a0, $a0, $t3
    /* 1EBDB0 801DBA70 0C02C7B2 */  jal        assign_new_process_entry
    /* 1EBDB4 801DBA74 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
  .L801DBA78_ovl12:
    /* 1EBDB8 801DBA78 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EBDBC 801DBA7C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EBDC0 801DBA80 03E00008 */  jr         $ra
    /* 1EBDC4 801DBA84 00000000 */   nop
endlabel func_801DB944_ovl12
.size func_801DB944_ovl12, . - func_801DB944_ovl12
