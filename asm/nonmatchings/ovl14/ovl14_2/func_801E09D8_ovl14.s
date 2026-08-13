nonmatching func_801E09D8_ovl14, 0x204

glabel func_801E09D8_ovl14
    /* 2035C8 801E09D8 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 2035CC 801E09DC 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 2035D0 801E09E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2035D4 801E09E4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2035D8 801E09E8 8CC20000 */  lw         $v0, 0x0($a2)
    /* 2035DC 801E09EC 3C05800E */  lui        $a1, %hi(gEntityFuncListIDArray)
    /* 2035E0 801E09F0 24A5DC50 */  addiu      $a1, $a1, %lo(gEntityFuncListIDArray)
    /* 2035E4 801E09F4 00021080 */  sll        $v0, $v0, 2
    /* 2035E8 801E09F8 00A21821 */  addu       $v1, $a1, $v0
    /* 2035EC 801E09FC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 2035F0 801E0A00 00803825 */  or         $a3, $a0, $zero
    /* 2035F4 801E0A04 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* 2035F8 801E0A08 11C00070 */  beqz       $t6, .L801E0BCC_ovl14
    /* 2035FC 801E0A0C 00822021 */   addu      $a0, $a0, $v0
    /* 203600 801E0A10 8C840D50 */  lw         $a0, %lo(D_800E0D50)($a0)
    /* 203604 801E0A14 24010006 */  addiu      $at, $zero, 0x6
    /* 203608 801E0A18 00042080 */  sll        $a0, $a0, 2
    /* 20360C 801E0A1C 00A47821 */  addu       $t7, $a1, $a0
    /* 203610 801E0A20 8DF80000 */  lw         $t8, 0x0($t7)
    /* 203614 801E0A24 3C05800E */  lui        $a1, %hi(D_800E7CE0)
    /* 203618 801E0A28 24A57CE0 */  addiu      $a1, $a1, %lo(D_800E7CE0)
    /* 20361C 801E0A2C 1701000C */  bne        $t8, $at, .L801E0A60_ovl14
    /* 203620 801E0A30 00A44821 */   addu      $t1, $a1, $a0
    /* 203624 801E0A34 AC600000 */  sw         $zero, 0x0($v1)
    /* 203628 801E0A38 8CD90000 */  lw         $t9, 0x0($a2)
    /* 20362C 801E0A3C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 203630 801E0A40 3C05801E */  lui        $a1, %hi(func_801E0958_ovl14)
    /* 203634 801E0A44 00194080 */  sll        $t0, $t9, 2
    /* 203638 801E0A48 00882021 */  addu       $a0, $a0, $t0
    /* 20363C 801E0A4C 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 203640 801E0A50 0C02C7B2 */  jal        assign_new_process_entry
    /* 203644 801E0A54 24A50958 */   addiu     $a1, $a1, %lo(func_801E0958_ovl14)
    /* 203648 801E0A58 1000005D */  b          .L801E0BD0_ovl14
    /* 20364C 801E0A5C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801E0A60_ovl14:
    /* 203650 801E0A60 8D230000 */  lw         $v1, 0x0($t1)
    /* 203654 801E0A64 00A25021 */  addu       $t2, $a1, $v0
    /* 203658 801E0A68 1060002C */  beqz       $v1, .L801E0B1C_ovl14
    /* 20365C 801E0A6C 00000000 */   nop
    /* 203660 801E0A70 AD430000 */  sw         $v1, 0x0($t2)
    /* 203664 801E0A74 8CC20000 */  lw         $v0, 0x0($a2)
    /* 203668 801E0A78 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 20366C 801E0A7C 00E02025 */  or         $a0, $a3, $zero
    /* 203670 801E0A80 00021080 */  sll        $v0, $v0, 2
    /* 203674 801E0A84 00A25821 */  addu       $t3, $a1, $v0
    /* 203678 801E0A88 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 20367C 801E0A8C 01C27021 */  addu       $t6, $t6, $v0
    /* 203680 801E0A90 05810004 */  bgez       $t4, .L801E0AA4_ovl14
    /* 203684 801E0A94 318D0003 */   andi      $t5, $t4, 0x3
    /* 203688 801E0A98 11A00002 */  beqz       $t5, .L801E0AA4_ovl14
    /* 20368C 801E0A9C 00000000 */   nop
    /* 203690 801E0AA0 25ADFFFC */  addiu      $t5, $t5, -0x4
  .L801E0AA4_ovl14:
    /* 203694 801E0AA4 29A10002 */  slti       $at, $t5, 0x2
    /* 203698 801E0AA8 1420000F */  bnez       $at, .L801E0AE8_ovl14
    /* 20369C 801E0AAC 00000000 */   nop
    /* 2036A0 801E0AB0 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 2036A4 801E0AB4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 2036A8 801E0AB8 44812000 */  mtc1       $at, $f4
    /* 2036AC 801E0ABC 000E7880 */  sll        $t7, $t6, 2
    /* 2036B0 801E0AC0 00AFC021 */  addu       $t8, $a1, $t7
    /* 2036B4 801E0AC4 8F190000 */  lw         $t9, 0x0($t8)
    /* 2036B8 801E0AC8 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
    /* 2036BC 801E0ACC 44993000 */  mtc1       $t9, $f6
    /* 2036C0 801E0AD0 00000000 */  nop
    /* 2036C4 801E0AD4 46803220 */  cvt.s.w    $f8, $f6
    /* 2036C8 801E0AD8 4604403E */  c.le.s     $f8, $f4
    /* 2036CC 801E0ADC 00000000 */  nop
    /* 2036D0 801E0AE0 45000008 */  bc1f       .L801E0B04_ovl14
    /* 2036D4 801E0AE4 00000000 */   nop
  .L801E0AE8_ovl14:
    /* 2036D8 801E0AE8 0C077952 */  jal        func_801DE548_ovl14
    /* 2036DC 801E0AEC 24050000 */   addiu     $a1, $zero, 0x0
    /* 2036E0 801E0AF0 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 2036E4 801E0AF4 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 2036E8 801E0AF8 8D020000 */  lw         $v0, 0x0($t0)
    /* 2036EC 801E0AFC 10000007 */  b          .L801E0B1C_ovl14
    /* 2036F0 801E0B00 00021080 */   sll       $v0, $v0, 2
  .L801E0B04_ovl14:
    /* 2036F4 801E0B04 0C077952 */  jal        func_801DE548_ovl14
    /* 2036F8 801E0B08 00E02025 */   or        $a0, $a3, $zero
    /* 2036FC 801E0B0C 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 203700 801E0B10 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 203704 801E0B14 8D220000 */  lw         $v0, 0x0($t1)
    /* 203708 801E0B18 00021080 */  sll        $v0, $v0, 2
  .L801E0B1C_ovl14:
    /* 20370C 801E0B1C 3C04800E */  lui        $a0, %hi(D_800DDFD0)
    /* 203710 801E0B20 00822021 */  addu       $a0, $a0, $v0
    /* 203714 801E0B24 3C06801E */  lui        $a2, %hi(D_801E2F60_ovl14)
    /* 203718 801E0B28 24C62F60 */  addiu      $a2, $a2, %lo(D_801E2F60_ovl14)
    /* 20371C 801E0B2C 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
    /* 203720 801E0B30 0C02911F */  jal        utilFuncTableJump
    /* 203724 801E0B34 24050003 */   addiu     $a1, $zero, 0x3
    /* 203728 801E0B38 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 20372C 801E0B3C 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 203730 801E0B40 3C0D800F */  lui        $t5, %hi(D_800E98E0)
    /* 203734 801E0B44 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 203738 801E0B48 000B6080 */  sll        $t4, $t3, 2
    /* 20373C 801E0B4C 01AC6821 */  addu       $t5, $t5, $t4
    /* 203740 801E0B50 8DAD98E0 */  lw         $t5, %lo(D_800E98E0)($t5)
    /* 203744 801E0B54 51A0001E */  beql       $t5, $zero, .L801E0BD0_ovl14
    /* 203748 801E0B58 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 20374C 801E0B5C 0C07873A */  jal        func_801E1CE8_ovl14
    /* 203750 801E0B60 00000000 */   nop
    /* 203754 801E0B64 10400019 */  beqz       $v0, .L801E0BCC_ovl14
    /* 203758 801E0B68 3C04800E */   lui       $a0, %hi(D_800E7B20)
    /* 20375C 801E0B6C 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 203760 801E0B70 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 203764 801E0B74 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 203768 801E0B78 24847B20 */  addiu      $a0, $a0, %lo(D_800E7B20)
    /* 20376C 801E0B7C 8CC20000 */  lw         $v0, 0x0($a2)
    /* 203770 801E0B80 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* 203774 801E0B84 44810000 */  mtc1       $at, $f0
    /* 203778 801E0B88 00021080 */  sll        $v0, $v0, 2
    /* 20377C 801E0B8C 01C27021 */  addu       $t6, $t6, $v0
    /* 203780 801E0B90 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 203784 801E0B94 0082C821 */  addu       $t9, $a0, $v0
    /* 203788 801E0B98 C7300000 */  lwc1       $f16, 0x0($t9)
    /* 20378C 801E0B9C 3C18800F */  lui        $t8, %hi(D_800EC660)
    /* 203790 801E0BA0 2718C660 */  addiu      $t8, $t8, %lo(D_800EC660)
    /* 203794 801E0BA4 000E7880 */  sll        $t7, $t6, 2
    /* 203798 801E0BA8 46100481 */  sub.s      $f18, $f0, $f16
    /* 20379C 801E0BAC 01F81821 */  addu       $v1, $t7, $t8
    /* 2037A0 801E0BB0 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 2037A4 801E0BB4 46125180 */  add.s      $f6, $f10, $f18
    /* 2037A8 801E0BB8 E4660000 */  swc1       $f6, 0x0($v1)
    /* 2037AC 801E0BBC 8CC80000 */  lw         $t0, 0x0($a2)
    /* 2037B0 801E0BC0 00084880 */  sll        $t1, $t0, 2
    /* 2037B4 801E0BC4 00895021 */  addu       $t2, $a0, $t1
    /* 2037B8 801E0BC8 E5400000 */  swc1       $f0, 0x0($t2)
  .L801E0BCC_ovl14:
    /* 2037BC 801E0BCC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801E0BD0_ovl14:
    /* 2037C0 801E0BD0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2037C4 801E0BD4 03E00008 */  jr         $ra
    /* 2037C8 801E0BD8 00000000 */   nop
endlabel func_801E09D8_ovl14
.size func_801E09D8_ovl14, . - func_801E09D8_ovl14
