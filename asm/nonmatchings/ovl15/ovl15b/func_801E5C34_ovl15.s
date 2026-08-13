nonmatching func_801E5C34_ovl15, 0x120

glabel func_801E5C34_ovl15
    /* 210794 801E5C34 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 210798 801E5C38 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 21079C 801E5C3C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2107A0 801E5C40 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2107A4 801E5C44 AFA40038 */  sw         $a0, 0x38($sp)
    /* 2107A8 801E5C48 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 2107AC 801E5C4C 3C04800F */  lui        $a0, %hi(D_800E9560)
    /* 2107B0 801E5C50 24849560 */  addiu      $a0, $a0, %lo(D_800E9560)
    /* 2107B4 801E5C54 000E7880 */  sll        $t7, $t6, 2
    /* 2107B8 801E5C58 008F1821 */  addu       $v1, $a0, $t7
    /* 2107BC 801E5C5C 8C780000 */  lw         $t8, 0x0($v1)
    /* 2107C0 801E5C60 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* 2107C4 801E5C64 27190001 */  addiu      $t9, $t8, 0x1
    /* 2107C8 801E5C68 AC790000 */  sw         $t9, 0x0($v1)
    /* 2107CC 801E5C6C 8C460000 */  lw         $a2, 0x0($v0)
    /* 2107D0 801E5C70 00063080 */  sll        $a2, $a2, 2
    /* 2107D4 801E5C74 00864021 */  addu       $t0, $a0, $a2
    /* 2107D8 801E5C78 8D090000 */  lw         $t1, 0x0($t0)
    /* 2107DC 801E5C7C 01665821 */  addu       $t3, $t3, $a2
    /* 2107E0 801E5C80 05210004 */  bgez       $t1, .L801E5C94_ovl15
    /* 2107E4 801E5C84 312A0001 */   andi      $t2, $t1, 0x1
    /* 2107E8 801E5C88 11400002 */  beqz       $t2, .L801E5C94_ovl15
    /* 2107EC 801E5C8C 00000000 */   nop
    /* 2107F0 801E5C90 254AFFFE */  addiu      $t2, $t2, -0x2
  .L801E5C94_ovl15:
    /* 2107F4 801E5C94 11400012 */  beqz       $t2, .L801E5CE0_ovl15
    /* 2107F8 801E5C98 00000000 */   nop
    /* 2107FC 801E5C9C 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* 210800 801E5CA0 27A4002C */  addiu      $a0, $sp, 0x2C
    /* 210804 801E5CA4 0C0291E5 */  jal        utilGetTransformSRT
    /* 210808 801E5CA8 8D650014 */   lw        $a1, 0x14($t3)
    /* 21080C 801E5CAC C7A40030 */  lwc1       $f4, 0x30($sp)
    /* 210810 801E5CB0 C7A60034 */  lwc1       $f6, 0x34($sp)
    /* 210814 801E5CB4 24040006 */  addiu      $a0, $zero, 0x6
    /* 210818 801E5CB8 24050002 */  addiu      $a1, $zero, 0x2
    /* 21081C 801E5CBC 2406000B */  addiu      $a2, $zero, 0xB
    /* 210820 801E5CC0 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 210824 801E5CC4 E7A40010 */  swc1       $f4, 0x10($sp)
    /* 210828 801E5CC8 0C029FDD */  jal        func_800A7F74
    /* 21082C 801E5CCC E7A60014 */   swc1      $f6, 0x14($sp)
    /* 210830 801E5CD0 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 210834 801E5CD4 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 210838 801E5CD8 8D860000 */  lw         $a2, 0x0($t4)
    /* 21083C 801E5CDC 00063080 */  sll        $a2, $a2, 2
  .L801E5CE0_ovl15:
    /* 210840 801E5CE0 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
    /* 210844 801E5CE4 01A66821 */  addu       $t5, $t5, $a2
    /* 210848 801E5CE8 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
    /* 21084C 801E5CEC 0C0680F9 */  jal        func_801A03E4_ovl7
    /* 210850 801E5CF0 8DA40008 */   lw        $a0, 0x8($t5)
    /* 210854 801E5CF4 3C0E800D */  lui        $t6, %hi(D_800D7118 + 0x3C)
    /* 210858 801E5CF8 8DCE7154 */  lw         $t6, %lo(D_800D7118 + 0x3C)($t6)
    /* 21085C 801E5CFC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 210860 801E5D00 55C00011 */  bnel       $t6, $zero, .L801E5D48_ovl15
    /* 210864 801E5D04 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 210868 801E5D08 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 21086C 801E5D0C 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 210870 801E5D10 240FFFFF */  addiu      $t7, $zero, -0x1
    /* 210874 801E5D14 8C580000 */  lw         $t8, 0x0($v0)
    /* 210878 801E5D18 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 21087C 801E5D1C 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
    /* 210880 801E5D20 0018C880 */  sll        $t9, $t8, 2
    /* 210884 801E5D24 00390821 */  addu       $at, $at, $t9
    /* 210888 801E5D28 AC2FDC50 */  sw         $t7, %lo(gEntityFuncListIDArray)($at)
    /* 21088C 801E5D2C 8C480000 */  lw         $t0, 0x0($v0)
    /* 210890 801E5D30 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
    /* 210894 801E5D34 00084880 */  sll        $t1, $t0, 2
    /* 210898 801E5D38 00892021 */  addu       $a0, $a0, $t1
    /* 21089C 801E5D3C 0C02C7B2 */  jal        assign_new_process_entry
    /* 2108A0 801E5D40 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 2108A4 801E5D44 8FBF001C */  lw         $ra, 0x1C($sp)
  .L801E5D48_ovl15:
    /* 2108A8 801E5D48 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 2108AC 801E5D4C 03E00008 */  jr         $ra
    /* 2108B0 801E5D50 00000000 */   nop
endlabel func_801E5C34_ovl15
.size func_801E5C34_ovl15, . - func_801E5C34_ovl15
