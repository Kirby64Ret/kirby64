nonmatching func_80165CD8_ovl3, 0x41C

glabel func_80165CD8_ovl3
    /* C6718 80165CD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* C671C 80165CDC AFB00020 */  sw         $s0, 0x20($sp)
    /* C6720 80165CE0 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* C6724 80165CE4 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* C6728 80165CE8 8E070000 */  lw         $a3, 0x0($s0)
    /* C672C 80165CEC AFBF0024 */  sw         $ra, 0x24($sp)
    /* C6730 80165CF0 AFA40028 */  sw         $a0, 0x28($sp)
    /* C6734 80165CF4 8CE80000 */  lw         $t0, 0x0($a3)
    /* C6738 80165CF8 3C0E800F */  lui        $t6, %hi(D_800EC2E0)
    /* C673C 80165CFC 3C18800F */  lui        $t8, %hi(D_800E9720)
    /* C6740 80165D00 00081080 */  sll        $v0, $t0, 2
    /* C6744 80165D04 01C27021 */  addu       $t6, $t6, $v0
    /* C6748 80165D08 8DCEC2E0 */  lw         $t6, %lo(D_800EC2E0)($t6)
    /* C674C 80165D0C 27189720 */  addiu      $t8, $t8, %lo(D_800E9720)
    /* C6750 80165D10 3C0F8013 */  lui        $t7, %hi(D_8012E860)
    /* C6754 80165D14 15C00008 */  bnez       $t6, .L80165D38_ovl3
    /* C6758 80165D18 00581821 */   addu      $v1, $v0, $t8
    /* C675C 80165D1C 8DEFE860 */  lw         $t7, %lo(D_8012E860)($t7)
    /* C6760 80165D20 55E000F0 */  bnel       $t7, $zero, .L801660E4_ovl3
    /* C6764 80165D24 8FBF0024 */   lw        $ra, 0x24($sp)
    /* C6768 80165D28 0C02C640 */  jal        func_800B1900
    /* C676C 80165D2C 3104FFFF */   andi      $a0, $t0, 0xFFFF
    /* C6770 80165D30 100000EC */  b          .L801660E4_ovl3
    /* C6774 80165D34 8FBF0024 */   lw        $ra, 0x24($sp)
  .L80165D38_ovl3:
    /* C6778 80165D38 8C640000 */  lw         $a0, 0x0($v1)
    /* C677C 80165D3C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* C6780 80165D40 3C09800F */  lui        $t1, %hi(D_800EA8A0)
    /* C6784 80165D44 2C850001 */  sltiu      $a1, $a0, 0x1
    /* C6788 80165D48 2499FFFF */  addiu      $t9, $a0, -0x1
    /* C678C 80165D4C 10A00005 */  beqz       $a1, .L80165D64_ovl3
    /* C6790 80165D50 AC790000 */   sw        $t9, 0x0($v1)
    /* C6794 80165D54 0C02C640 */  jal        func_800B1900
    /* C6798 80165D58 94E40002 */   lhu       $a0, 0x2($a3)
    /* C679C 80165D5C 100000A5 */  b          .L80165FF4_ovl3
    /* C67A0 80165D60 8E070000 */   lw        $a3, 0x0($s0)
  .L80165D64_ovl3:
    /* C67A4 80165D64 8CE20000 */  lw         $v0, 0x0($a3)
    /* C67A8 80165D68 44816000 */  mtc1       $at, $f12
    /* C67AC 80165D6C 3C01800F */  lui        $at, %hi(D_800EAA60)
    /* C67B0 80165D70 00021080 */  sll        $v0, $v0, 2
    /* C67B4 80165D74 2529A8A0 */  addiu      $t1, $t1, %lo(D_800EA8A0)
    /* C67B8 80165D78 00491821 */  addu       $v1, $v0, $t1
    /* C67BC 80165D7C 00220821 */  addu       $at, $at, $v0
    /* C67C0 80165D80 C426AA60 */  lwc1       $f6, %lo(D_800EAA60)($at)
    /* C67C4 80165D84 C4640000 */  lwc1       $f4, 0x0($v1)
    /* C67C8 80165D88 3C0C800F */  lui        $t4, %hi(D_800EA6E0)
    /* C67CC 80165D8C 258CA6E0 */  addiu      $t4, $t4, %lo(D_800EA6E0)
    /* C67D0 80165D90 46062000 */  add.s      $f0, $f4, $f6
    /* C67D4 80165D94 3C06800F */  lui        $a2, %hi(D_800EAC20)
    /* C67D8 80165D98 24C6AC20 */  addiu      $a2, $a2, %lo(D_800EAC20)
    /* C67DC 80165D9C 3C01800F */  lui        $at, %hi(D_800EADE0)
    /* C67E0 80165DA0 E4600000 */  swc1       $f0, 0x0($v1)
    /* C67E4 80165DA4 8CEA0000 */  lw         $t2, 0x0($a3)
    /* C67E8 80165DA8 000A5880 */  sll        $t3, $t2, 2
    /* C67EC 80165DAC 016C2021 */  addu       $a0, $t3, $t4
    /* C67F0 80165DB0 C4880000 */  lwc1       $f8, 0x0($a0)
    /* C67F4 80165DB4 46004280 */  add.s      $f10, $f8, $f0
    /* C67F8 80165DB8 E48A0000 */  swc1       $f10, 0x0($a0)
    /* C67FC 80165DBC 8CE80000 */  lw         $t0, 0x0($a3)
    /* C6800 80165DC0 3C048019 */  lui        $a0, %hi(D_801918A4_ovl3)
    /* C6804 80165DC4 248418A4 */  addiu      $a0, $a0, %lo(D_801918A4_ovl3)
    /* C6808 80165DC8 00081080 */  sll        $v0, $t0, 2
    /* C680C 80165DCC 00C22821 */  addu       $a1, $a2, $v0
    /* C6810 80165DD0 C4A20000 */  lwc1       $f2, 0x0($a1)
    /* C6814 80165DD4 00220821 */  addu       $at, $at, $v0
    /* C6818 80165DD8 46026032 */  c.eq.s     $f12, $f2
    /* C681C 80165DDC 00000000 */  nop
    /* C6820 80165DE0 4501000E */  bc1t       .L80165E1C_ovl3
    /* C6824 80165DE4 00000000 */   nop
    /* C6828 80165DE8 C430ADE0 */  lwc1       $f16, %lo(D_800EADE0)($at)
    /* C682C 80165DEC 46101480 */  add.s      $f18, $f2, $f16
    /* C6830 80165DF0 E4B20000 */  swc1       $f18, 0x0($a1)
    /* C6834 80165DF4 8CE80000 */  lw         $t0, 0x0($a3)
    /* C6838 80165DF8 00086880 */  sll        $t5, $t0, 2
    /* C683C 80165DFC 00CD2821 */  addu       $a1, $a2, $t5
    /* C6840 80165E00 C4A40000 */  lwc1       $f4, 0x0($a1)
    /* C6844 80165E04 4604603E */  c.le.s     $f12, $f4
    /* C6848 80165E08 00000000 */  nop
    /* C684C 80165E0C 45000003 */  bc1f       .L80165E1C_ovl3
    /* C6850 80165E10 00000000 */   nop
    /* C6854 80165E14 E4AC0000 */  swc1       $f12, 0x0($a1)
    /* C6858 80165E18 8CE80000 */  lw         $t0, 0x0($a3)
  .L80165E1C_ovl3:
    /* C685C 80165E1C 0C044681 */  jal        func_80111A04
    /* C6860 80165E20 01002825 */   or        $a1, $t0, $zero
    /* C6864 80165E24 8E0E0000 */  lw         $t6, 0x0($s0)
    /* C6868 80165E28 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C686C 80165E2C 8C590020 */  lw         $t9, 0x20($v0)
    /* C6870 80165E30 8DCF0000 */  lw         $t7, 0x0($t6)
    /* C6874 80165E34 00402025 */  or         $a0, $v0, $zero
    /* C6878 80165E38 000FC080 */  sll        $t8, $t7, 2
    /* C687C 80165E3C 00380821 */  addu       $at, $at, $t8
    /* C6880 80165E40 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* C6884 80165E44 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* C6888 80165E48 E726000C */  swc1       $f6, 0xC($t9)
    /* C688C 80165E4C 8E090000 */  lw         $t1, 0x0($s0)
    /* C6890 80165E50 8C4C0020 */  lw         $t4, 0x20($v0)
    /* C6894 80165E54 8D2A0000 */  lw         $t2, 0x0($t1)
    /* C6898 80165E58 000A5880 */  sll        $t3, $t2, 2
    /* C689C 80165E5C 002B0821 */  addu       $at, $at, $t3
    /* C68A0 80165E60 C428A6E0 */  lwc1       $f8, %lo(D_800EA6E0)($at)
    /* C68A4 80165E64 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C68A8 80165E68 E5880010 */  swc1       $f8, 0x10($t4)
    /* C68AC 80165E6C 8E0D0000 */  lw         $t5, 0x0($s0)
    /* C68B0 80165E70 8C580020 */  lw         $t8, 0x20($v0)
    /* C68B4 80165E74 8DAE0000 */  lw         $t6, 0x0($t5)
    /* C68B8 80165E78 000E7880 */  sll        $t7, $t6, 2
    /* C68BC 80165E7C 002F0821 */  addu       $at, $at, $t7
    /* C68C0 80165E80 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* C68C4 80165E84 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* C68C8 80165E88 E70A0014 */  swc1       $f10, 0x14($t8)
    /* C68CC 80165E8C 8E190000 */  lw         $t9, 0x0($s0)
    /* C68D0 80165E90 8C4B0020 */  lw         $t3, 0x20($v0)
    /* C68D4 80165E94 8F290000 */  lw         $t1, 0x0($t9)
    /* C68D8 80165E98 00095080 */  sll        $t2, $t1, 2
    /* C68DC 80165E9C 002A0821 */  addu       $at, $at, $t2
    /* C68E0 80165EA0 C430AC20 */  lwc1       $f16, %lo(D_800EAC20)($at)
    /* C68E4 80165EA4 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* C68E8 80165EA8 44819000 */  mtc1       $at, $f18
    /* C68EC 80165EAC 00000000 */  nop
    /* C68F0 80165EB0 46128102 */  mul.s      $f4, $f16, $f18
    /* C68F4 80165EB4 0C044713 */  jal        func_80111C4C
    /* C68F8 80165EB8 E5640018 */   swc1      $f4, 0x18($t3)
    /* C68FC 80165EBC 8E0C0000 */  lw         $t4, 0x0($s0)
    /* C6900 80165EC0 3C07800F */  lui        $a3, %hi(D_800EAC20)
    /* C6904 80165EC4 3C048019 */  lui        $a0, %hi(D_80194C34_ovl3)
    /* C6908 80165EC8 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C690C 80165ECC 3C05801A */  lui        $a1, %hi(D_80198700_ovl3)
    /* C6910 80165ED0 24A58700 */  addiu      $a1, $a1, %lo(D_80198700_ovl3)
    /* C6914 80165ED4 000D7080 */  sll        $t6, $t5, 2
    /* C6918 80165ED8 00EE3821 */  addu       $a3, $a3, $t6
    /* C691C 80165EDC 8CE7AC20 */  lw         $a3, %lo(D_800EAC20)($a3)
    /* C6920 80165EE0 24844C34 */  addiu      $a0, $a0, %lo(D_80194C34_ovl3)
    /* C6924 80165EE4 0C05481C */  jal        func_80152070_ovl3
    /* C6928 80165EE8 24060010 */   addiu     $a2, $zero, 0x10
    /* C692C 80165EEC 8E070000 */  lw         $a3, 0x0($s0)
    /* C6930 80165EF0 3C06801A */  lui        $a2, %hi(D_80198540_ovl3)
    /* C6934 80165EF4 24C68540 */  addiu      $a2, $a2, %lo(D_80198540_ovl3)
    /* C6938 80165EF8 8CEF0000 */  lw         $t7, 0x0($a3)
    /* C693C 80165EFC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C6940 80165F00 00002825 */  or         $a1, $zero, $zero
    /* C6944 80165F04 000FC140 */  sll        $t8, $t7, 5
    /* C6948 80165F08 00D81821 */  addu       $v1, $a2, $t8
    /* C694C 80165F0C C466F880 */  lwc1       $f6, -0x780($v1)
    /* C6950 80165F10 2463F880 */  addiu      $v1, $v1, -0x780
    /* C6954 80165F14 E466000C */  swc1       $f6, 0xC($v1)
    /* C6958 80165F18 8CF90000 */  lw         $t9, 0x0($a3)
    /* C695C 80165F1C 00194940 */  sll        $t1, $t9, 5
    /* C6960 80165F20 00C91821 */  addu       $v1, $a2, $t1
    /* C6964 80165F24 C468F884 */  lwc1       $f8, -0x77C($v1)
    /* C6968 80165F28 2463F880 */  addiu      $v1, $v1, -0x780
    /* C696C 80165F2C E4680010 */  swc1       $f8, 0x10($v1)
    /* C6970 80165F30 8CEA0000 */  lw         $t2, 0x0($a3)
    /* C6974 80165F34 000A5940 */  sll        $t3, $t2, 5
    /* C6978 80165F38 00CB1821 */  addu       $v1, $a2, $t3
    /* C697C 80165F3C C46AF888 */  lwc1       $f10, -0x778($v1)
    /* C6980 80165F40 2463F880 */  addiu      $v1, $v1, -0x780
    /* C6984 80165F44 E46A0014 */  swc1       $f10, 0x14($v1)
    /* C6988 80165F48 8CE80000 */  lw         $t0, 0x0($a3)
    /* C698C 80165F4C 00086080 */  sll        $t4, $t0, 2
    /* C6990 80165F50 002C0821 */  addu       $at, $at, $t4
    /* C6994 80165F54 C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* C6998 80165F58 00086940 */  sll        $t5, $t0, 5
    /* C699C 80165F5C 00CD7021 */  addu       $t6, $a2, $t5
    /* C69A0 80165F60 E5D0F880 */  swc1       $f16, -0x780($t6)
    /* C69A4 80165F64 8CE80000 */  lw         $t0, 0x0($a3)
    /* C69A8 80165F68 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* C69AC 80165F6C 00087880 */  sll        $t7, $t0, 2
    /* C69B0 80165F70 002F0821 */  addu       $at, $at, $t7
    /* C69B4 80165F74 C432A6E0 */  lwc1       $f18, %lo(D_800EA6E0)($at)
    /* C69B8 80165F78 0008C140 */  sll        $t8, $t0, 5
    /* C69BC 80165F7C 00D8C821 */  addu       $t9, $a2, $t8
    /* C69C0 80165F80 E732F884 */  swc1       $f18, -0x77C($t9)
    /* C69C4 80165F84 8CE80000 */  lw         $t0, 0x0($a3)
    /* C69C8 80165F88 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C69CC 80165F8C 3C0F8019 */  lui        $t7, %hi(D_80194D34_ovl3)
    /* C69D0 80165F90 00084880 */  sll        $t1, $t0, 2
    /* C69D4 80165F94 00290821 */  addu       $at, $at, $t1
    /* C69D8 80165F98 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
    /* C69DC 80165F9C 00085140 */  sll        $t2, $t0, 5
    /* C69E0 80165FA0 00CA5821 */  addu       $t3, $a2, $t2
    /* C69E4 80165FA4 E564F888 */  swc1       $f4, -0x778($t3)
    /* C69E8 80165FA8 8CE80000 */  lw         $t0, 0x0($a3)
    /* C69EC 80165FAC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C69F0 80165FB0 25EF4D34 */  addiu      $t7, $t7, %lo(D_80194D34_ovl3)
    /* C69F4 80165FB4 00086080 */  sll        $t4, $t0, 2
    /* C69F8 80165FB8 002C0821 */  addu       $at, $at, $t4
    /* C69FC 80165FBC C42641D0 */  lwc1       $f6, %lo(gEntitiesAngleYArray)($at)
    /* C6A00 80165FC0 00086940 */  sll        $t5, $t0, 5
    /* C6A04 80165FC4 00CD7021 */  addu       $t6, $a2, $t5
    /* C6A08 80165FC8 E5C6F898 */  swc1       $f6, -0x768($t6)
    /* C6A0C 80165FCC 8CF80000 */  lw         $t8, 0x0($a3)
    /* C6A10 80165FD0 0018C940 */  sll        $t9, $t8, 5
    /* C6A14 80165FD4 00D94821 */  addu       $t1, $a2, $t9
    /* C6A18 80165FD8 AD2FF89C */  sw         $t7, -0x764($t1)
    /* C6A1C 80165FDC 8CEA0000 */  lw         $t2, 0x0($a3)
    /* C6A20 80165FE0 000A5940 */  sll        $t3, $t2, 5
    /* C6A24 80165FE4 00CB2021 */  addu       $a0, $a2, $t3
    /* C6A28 80165FE8 0C046FD3 */  jal        func_8011BF4C
    /* C6A2C 80165FEC 2484F880 */   addiu     $a0, $a0, -0x780
    /* C6A30 80165FF0 8E070000 */  lw         $a3, 0x0($s0)
  .L80165FF4_ovl3:
    /* C6A34 80165FF4 3C0C800F */  lui        $t4, %hi(D_800E9560)
    /* C6A38 80165FF8 3C08800F */  lui        $t0, %hi(D_800EAFA0)
    /* C6A3C 80165FFC 8CE20000 */  lw         $v0, 0x0($a3)
    /* C6A40 80166000 2508AFA0 */  addiu      $t0, $t0, %lo(D_800EAFA0)
    /* C6A44 80166004 3C018019 */  lui        $at, %hi(D_80197184_ovl3)
    /* C6A48 80166008 00021080 */  sll        $v0, $v0, 2
    /* C6A4C 8016600C 01826021 */  addu       $t4, $t4, $v0
    /* C6A50 80166010 8D8C9560 */  lw         $t4, %lo(D_800E9560)($t4)
    /* C6A54 80166014 01021821 */  addu       $v1, $t0, $v0
    /* C6A58 80166018 51800032 */  beql       $t4, $zero, .L801660E4_ovl3
    /* C6A5C 8016601C 8FBF0024 */   lw        $ra, 0x24($sp)
    /* C6A60 80166020 C4680000 */  lwc1       $f8, 0x0($v1)
    /* C6A64 80166024 C42A7184 */  lwc1       $f10, %lo(D_80197184_ovl3)($at)
    /* C6A68 80166028 3C048019 */  lui        $a0, %hi(D_801918E8_ovl3)
    /* C6A6C 8016602C 248418E8 */  addiu      $a0, $a0, %lo(D_801918E8_ovl3)
    /* C6A70 80166030 460A4400 */  add.s      $f16, $f8, $f10
    /* C6A74 80166034 00002825 */  or         $a1, $zero, $zero
    /* C6A78 80166038 E4700000 */  swc1       $f16, 0x0($v1)
    /* C6A7C 8016603C 8CED0000 */  lw         $t5, 0x0($a3)
    /* C6A80 80166040 000D7080 */  sll        $t6, $t5, 2
    /* C6A84 80166044 010EC021 */  addu       $t8, $t0, $t6
    /* C6A88 80166048 0C05A102 */  jal        func_80168408_ovl3
    /* C6A8C 8016604C 8F060000 */   lw        $a2, 0x0($t8)
    /* C6A90 80166050 0C044713 */  jal        func_80111C4C
    /* C6A94 80166054 00402025 */   or        $a0, $v0, $zero
    /* C6A98 80166058 8E190000 */  lw         $t9, 0x0($s0)
    /* C6A9C 8016605C 3C014248 */  lui        $at, (0x42480000 >> 16)
    /* C6AA0 80166060 44819000 */  mtc1       $at, $f18
    /* C6AA4 80166064 8F2F0000 */  lw         $t7, 0x0($t9)
    /* C6AA8 80166068 44802000 */  mtc1       $zero, $f4
    /* C6AAC 8016606C 3C07800F */  lui        $a3, %hi(D_800EAFA0)
    /* C6AB0 80166070 000F4880 */  sll        $t1, $t7, 2
    /* C6AB4 80166074 00E93821 */  addu       $a3, $a3, $t1
    /* C6AB8 80166078 3C048019 */  lui        $a0, %hi(D_80194D40_ovl3)
    /* C6ABC 8016607C 3C05801A */  lui        $a1, %hi(D_80198700_ovl3)
    /* C6AC0 80166080 24A58700 */  addiu      $a1, $a1, %lo(D_80198700_ovl3)
    /* C6AC4 80166084 24844D40 */  addiu      $a0, $a0, %lo(D_80194D40_ovl3)
    /* C6AC8 80166088 8CE7AFA0 */  lw         $a3, %lo(D_800EAFA0)($a3)
    /* C6ACC 8016608C 24060010 */  addiu      $a2, $zero, 0x10
    /* C6AD0 80166090 E7B20010 */  swc1       $f18, 0x10($sp)
    /* C6AD4 80166094 0C054849 */  jal        func_80152124_ovl3
    /* C6AD8 80166098 E7A40014 */   swc1      $f4, 0x14($sp)
    /* C6ADC 8016609C 8E0A0000 */  lw         $t2, 0x0($s0)
    /* C6AE0 801660A0 3C04801A */  lui        $a0, %hi(D_80198800_ovl3)
    /* C6AE4 801660A4 3C058019 */  lui        $a1, %hi(D_80194E40_ovl3)
    /* C6AE8 801660A8 24A54E40 */  addiu      $a1, $a1, %lo(D_80194E40_ovl3)
    /* C6AEC 801660AC 24848800 */  addiu      $a0, $a0, %lo(D_80198800_ovl3)
    /* C6AF0 801660B0 00003025 */  or         $a2, $zero, $zero
    /* C6AF4 801660B4 0C055754 */  jal        func_80155D50_ovl3
    /* C6AF8 801660B8 8D470000 */   lw        $a3, 0x0($t2)
    /* C6AFC 801660BC 8E0B0000 */  lw         $t3, 0x0($s0)
    /* C6B00 801660C0 3C0E800F */  lui        $t6, %hi(D_800E9560)
    /* C6B04 801660C4 25CE9560 */  addiu      $t6, $t6, %lo(D_800E9560)
    /* C6B08 801660C8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* C6B0C 801660CC 000C6880 */  sll        $t5, $t4, 2
    /* C6B10 801660D0 01AE1821 */  addu       $v1, $t5, $t6
    /* C6B14 801660D4 8C780000 */  lw         $t8, 0x0($v1)
    /* C6B18 801660D8 2719FFFF */  addiu      $t9, $t8, -0x1
    /* C6B1C 801660DC AC790000 */  sw         $t9, 0x0($v1)
    /* C6B20 801660E0 8FBF0024 */  lw         $ra, 0x24($sp)
  .L801660E4_ovl3:
    /* C6B24 801660E4 8FB00020 */  lw         $s0, 0x20($sp)
    /* C6B28 801660E8 27BD0028 */  addiu      $sp, $sp, 0x28
    /* C6B2C 801660EC 03E00008 */  jr         $ra
    /* C6B30 801660F0 00000000 */   nop
endlabel func_80165CD8_ovl3
.size func_80165CD8_ovl3, . - func_80165CD8_ovl3
