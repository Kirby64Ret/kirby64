nonmatching func_801A56C8_ovl7, 0xE0

glabel func_801A56C8_ovl7
    /* 14B738 801A56C8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 14B73C 801A56CC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 14B740 801A56D0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 14B744 801A56D4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 14B748 801A56D8 8C430000 */  lw         $v1, 0x0($v0)
    /* 14B74C 801A56DC 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 14B750 801A56E0 3C18800E */  lui        $t8, %hi(D_800DE350)
    /* 14B754 801A56E4 00031880 */  sll        $v1, $v1, 2
    /* 14B758 801A56E8 01C37021 */  addu       $t6, $t6, $v1
    /* 14B75C 801A56EC 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 14B760 801A56F0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 14B764 801A56F4 00230821 */  addu       $at, $at, $v1
    /* 14B768 801A56F8 000E7880 */  sll        $t7, $t6, 2
    /* 14B76C 801A56FC 030FC021 */  addu       $t8, $t8, $t7
    /* 14B770 801A5700 8F18E350 */  lw         $t8, %lo(D_800DE350)($t8)
    /* 14B774 801A5704 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 14B778 801A5708 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 14B77C 801A570C 8F19003C */  lw         $t9, 0x3C($t8)
    /* 14B780 801A5710 27A40020 */  addiu      $a0, $sp, 0x20
    /* 14B784 801A5714 8F250010 */  lw         $a1, 0x10($t9)
    /* 14B788 801A5718 E7A40020 */  swc1       $f4, 0x20($sp)
    /* 14B78C 801A571C 8C480000 */  lw         $t0, 0x0($v0)
    /* 14B790 801A5720 00084880 */  sll        $t1, $t0, 2
    /* 14B794 801A5724 00290821 */  addu       $at, $at, $t1
    /* 14B798 801A5728 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 14B79C 801A572C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 14B7A0 801A5730 E7A60024 */  swc1       $f6, 0x24($sp)
    /* 14B7A4 801A5734 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 14B7A8 801A5738 000A5880 */  sll        $t3, $t2, 2
    /* 14B7AC 801A573C 002B0821 */  addu       $at, $at, $t3
    /* 14B7B0 801A5740 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 14B7B4 801A5744 0C0292CD */  jal        func_800A4B34
    /* 14B7B8 801A5748 E7A80028 */   swc1      $f8, 0x28($sp)
    /* 14B7BC 801A574C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 14B7C0 801A5750 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 14B7C4 801A5754 C7AA0020 */  lwc1       $f10, 0x20($sp)
    /* 14B7C8 801A5758 3C01800E */  lui        $at, %hi(D_800E2090)
    /* 14B7CC 801A575C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 14B7D0 801A5760 C7B00024 */  lwc1       $f16, 0x24($sp)
    /* 14B7D4 801A5764 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 14B7D8 801A5768 000C6880 */  sll        $t5, $t4, 2
    /* 14B7DC 801A576C 002D0821 */  addu       $at, $at, $t5
    /* 14B7E0 801A5770 E42A2090 */  swc1       $f10, %lo(D_800E2090)($at)
    /* 14B7E4 801A5774 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 14B7E8 801A5778 3C01800E */  lui        $at, %hi(D_800E2250)
    /* 14B7EC 801A577C C7B20028 */  lwc1       $f18, 0x28($sp)
    /* 14B7F0 801A5780 000E7880 */  sll        $t7, $t6, 2
    /* 14B7F4 801A5784 002F0821 */  addu       $at, $at, $t7
    /* 14B7F8 801A5788 E4302250 */  swc1       $f16, %lo(D_800E2250)($at)
    /* 14B7FC 801A578C 8C580000 */  lw         $t8, 0x0($v0)
    /* 14B800 801A5790 3C01800E */  lui        $at, %hi(D_800E2410)
    /* 14B804 801A5794 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 14B808 801A5798 0018C880 */  sll        $t9, $t8, 2
    /* 14B80C 801A579C 00390821 */  addu       $at, $at, $t9
    /* 14B810 801A57A0 03E00008 */  jr         $ra
    /* 14B814 801A57A4 E4322410 */   swc1      $f18, %lo(D_800E2410)($at)
endlabel func_801A56C8_ovl7
.size func_801A56C8_ovl7, . - func_801A56C8_ovl7
