nonmatching func_801ED444_ovl16, 0x1F0

glabel func_801ED444_ovl16
    /* 2236F4 801ED444 3C0E800D */  lui        $t6, %hi(D_800D7098 + 0x34)
    /* 2236F8 801ED448 8DCE70CC */  lw         $t6, %lo(D_800D7098 + 0x34)($t6)
    /* 2236FC 801ED44C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 223700 801ED450 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 223704 801ED454 AFA40030 */  sw         $a0, 0x30($sp)
    /* 223708 801ED458 0C066ED6 */  jal        func_8019BB58_ovl7
    /* 22370C 801ED45C AFAE002C */   sw        $t6, 0x2C($sp)
    /* 223710 801ED460 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 223714 801ED464 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 223718 801ED468 24040079 */  addiu      $a0, $zero, 0x79
    /* 22371C 801ED46C 0C02C67D */  jal        func_800B19F4
    /* 223720 801ED470 8DE50000 */   lw        $a1, 0x0($t7)
    /* 223724 801ED474 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 223728 801ED478 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 22372C 801ED47C 0C02BEED */  jal        func_800AFBB4
    /* 223730 801ED480 00002025 */   or        $a0, $zero, $zero
    /* 223734 801ED484 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 223738 801ED488 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 22373C 801ED48C 3C18800B */  lui        $t8, %hi(func_800B4924)
    /* 223740 801ED490 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 223744 801ED494 8C590000 */  lw         $t9, 0x0($v0)
    /* 223748 801ED498 27184924 */  addiu      $t8, $t8, %lo(func_800B4924)
    /* 22374C 801ED49C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 223750 801ED4A0 00194080 */  sll        $t0, $t9, 2
    /* 223754 801ED4A4 00280821 */  addu       $at, $at, $t0
    /* 223758 801ED4A8 AC38EF90 */  sw         $t8, %lo(D_800DEF90)($at)
    /* 22375C 801ED4AC 8C490000 */  lw         $t1, 0x0($v0)
    /* 223760 801ED4B0 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 223764 801ED4B4 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 223768 801ED4B8 00095080 */  sll        $t2, $t1, 2
    /* 22376C 801ED4BC 008A2021 */  addu       $a0, $a0, $t2
    /* 223770 801ED4C0 0C02C7DA */  jal        setProcessMain
    /* 223774 801ED4C4 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 223778 801ED4C8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 22377C 801ED4CC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 223780 801ED4D0 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 223784 801ED4D4 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
    /* 223788 801ED4D8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 22378C 801ED4DC 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 223790 801ED4E0 25EF9AA0 */  addiu      $t7, $t7, %lo(D_800E9AA0)
    /* 223794 801ED4E4 00066880 */  sll        $t5, $a2, 2
    /* 223798 801ED4E8 000B6080 */  sll        $t4, $t3, 2
    /* 22379C 801ED4EC 002C0821 */  addu       $at, $at, $t4
    /* 2237A0 801ED4F0 01AFC821 */  addu       $t9, $t5, $t7
    /* 2237A4 801ED4F4 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
    /* 2237A8 801ED4F8 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 2237AC 801ED4FC AFAD0020 */  sw         $t5, 0x20($sp)
    /* 2237B0 801ED500 8F240000 */  lw         $a0, 0x0($t9)
    /* 2237B4 801ED504 24010001 */  addiu      $at, $zero, 0x1
    /* 2237B8 801ED508 3C08800F */  lui        $t0, %hi(D_800E9C60)
    /* 2237BC 801ED50C 14810010 */  bne        $a0, $at, .L801ED550_ovl16
    /* 2237C0 801ED510 010D4021 */   addu      $t0, $t0, $t5
    /* 2237C4 801ED514 8C580000 */  lw         $t8, 0x0($v0)
    /* 2237C8 801ED518 8D089C60 */  lw         $t0, %lo(D_800E9C60)($t0)
    /* 2237CC 801ED51C 24050000 */  addiu      $a1, $zero, 0x0
    /* 2237D0 801ED520 5708000C */  bnel       $t8, $t0, .L801ED554_ovl16
    /* 2237D4 801ED524 24010001 */   addiu     $at, $zero, 0x1
    /* 2237D8 801ED528 3C040001 */  lui        $a0, (0x104B0 >> 16)
    /* 2237DC 801ED52C 0C02A80E */  jal        func_800AA038
    /* 2237E0 801ED530 348404B0 */   ori       $a0, $a0, (0x104B0 & 0xFFFF)
    /* 2237E4 801ED534 0C002DAF */  jal        ohSleep
    /* 2237E8 801ED538 24040005 */   addiu     $a0, $zero, 0x5
    /* 2237EC 801ED53C 8FA9001C */  lw         $t1, 0x1C($sp)
    /* 2237F0 801ED540 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 2237F4 801ED544 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 2237F8 801ED548 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 2237FC 801ED54C 8D240000 */  lw         $a0, 0x0($t1)
  .L801ED550_ovl16:
    /* 223800 801ED550 24010001 */  addiu      $at, $zero, 0x1
  .L801ED554_ovl16:
    /* 223804 801ED554 14810013 */  bne        $a0, $at, .L801ED5A4_ovl16
    /* 223808 801ED558 8C430000 */   lw        $v1, 0x0($v0)
    /* 22380C 801ED55C 8FAA0020 */  lw         $t2, 0x20($sp)
    /* 223810 801ED560 3C0B800F */  lui        $t3, %hi(D_800E9C60)
    /* 223814 801ED564 24050000 */  addiu      $a1, $zero, 0x0
    /* 223818 801ED568 016A5821 */  addu       $t3, $t3, $t2
    /* 22381C 801ED56C 8D6B9C60 */  lw         $t3, %lo(D_800E9C60)($t3)
    /* 223820 801ED570 546B000D */  bnel       $v1, $t3, .L801ED5A8_ovl16
    /* 223824 801ED574 24010001 */   addiu     $at, $zero, 0x1
    /* 223828 801ED578 3C040001 */  lui        $a0, (0x104B2 >> 16)
    /* 22382C 801ED57C 0C02A80E */  jal        func_800AA038
    /* 223830 801ED580 348404B2 */   ori       $a0, $a0, (0x104B2 & 0xFFFF)
    /* 223834 801ED584 0C002DAF */  jal        ohSleep
    /* 223838 801ED588 24040014 */   addiu     $a0, $zero, 0x14
    /* 22383C 801ED58C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 223840 801ED590 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 223844 801ED594 8FAC001C */  lw         $t4, 0x1C($sp)
    /* 223848 801ED598 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 22384C 801ED59C 8C430000 */  lw         $v1, 0x0($v0)
    /* 223850 801ED5A0 8D840000 */  lw         $a0, 0x0($t4)
  .L801ED5A4_ovl16:
    /* 223854 801ED5A4 24010001 */  addiu      $at, $zero, 0x1
  .L801ED5A8_ovl16:
    /* 223858 801ED5A8 14810011 */  bne        $a0, $at, .L801ED5F0_ovl16
    /* 22385C 801ED5AC 8FAD0020 */   lw        $t5, 0x20($sp)
    /* 223860 801ED5B0 3C0F800F */  lui        $t7, %hi(D_800E9C60)
    /* 223864 801ED5B4 01ED7821 */  addu       $t7, $t7, $t5
    /* 223868 801ED5B8 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
    /* 22386C 801ED5BC 24050000 */  addiu      $a1, $zero, 0x0
    /* 223870 801ED5C0 546F000C */  bnel       $v1, $t7, .L801ED5F4_ovl16
    /* 223874 801ED5C4 24010001 */   addiu     $at, $zero, 0x1
    /* 223878 801ED5C8 3C040001 */  lui        $a0, (0x104B4 >> 16)
    /* 22387C 801ED5CC 0C02A80E */  jal        func_800AA038
    /* 223880 801ED5D0 348404B4 */   ori       $a0, $a0, (0x104B4 & 0xFFFF)
    /* 223884 801ED5D4 0C002DAF */  jal        ohSleep
    /* 223888 801ED5D8 24040005 */   addiu     $a0, $zero, 0x5
    /* 22388C 801ED5DC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 223890 801ED5E0 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 223894 801ED5E4 8FB9001C */  lw         $t9, 0x1C($sp)
    /* 223898 801ED5E8 8C430000 */  lw         $v1, 0x0($v0)
    /* 22389C 801ED5EC 8F240000 */  lw         $a0, 0x0($t9)
  .L801ED5F0_ovl16:
    /* 2238A0 801ED5F0 24010001 */  addiu      $at, $zero, 0x1
  .L801ED5F4_ovl16:
    /* 2238A4 801ED5F4 14810009 */  bne        $a0, $at, .L801ED61C_ovl16
    /* 2238A8 801ED5F8 8FAE0020 */   lw        $t6, 0x20($sp)
    /* 2238AC 801ED5FC 3C18800F */  lui        $t8, %hi(D_800E9C60)
    /* 2238B0 801ED600 030EC021 */  addu       $t8, $t8, $t6
    /* 2238B4 801ED604 8F189C60 */  lw         $t8, %lo(D_800E9C60)($t8)
    /* 2238B8 801ED608 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 2238BC 801ED60C 14780003 */  bne        $v1, $t8, .L801ED61C_ovl16
    /* 2238C0 801ED610 00000000 */   nop
    /* 2238C4 801ED614 AD000000 */  sw         $zero, 0x0($t0)
    /* 2238C8 801ED618 8C430000 */  lw         $v1, 0x0($v0)
  .L801ED61C_ovl16:
    /* 2238CC 801ED61C 0C067656 */  jal        func_8019D958_ovl7
    /* 2238D0 801ED620 3064FFFF */   andi      $a0, $v1, 0xFFFF
    /* 2238D4 801ED624 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2238D8 801ED628 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2238DC 801ED62C 03E00008 */  jr         $ra
    /* 2238E0 801ED630 00000000 */   nop
endlabel func_801ED444_ovl16
.size func_801ED444_ovl16, . - func_801ED444_ovl16
