nonmatching func_80154CFC_ovl3, 0x38C

glabel func_80154CFC_ovl3
    /* B573C 80154CFC 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* B5740 80154D00 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* B5744 80154D04 8CEE0000 */  lw         $t6, 0x0($a3)
    /* B5748 80154D08 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* B574C 80154D0C AFBF0014 */  sw         $ra, 0x14($sp)
    /* B5750 80154D10 8DC20000 */  lw         $v0, 0x0($t6)
    /* B5754 80154D14 3C05800E */  lui        $a1, %hi(D_800E0490)
    /* B5758 80154D18 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B575C 80154D1C 00021080 */  sll        $v0, $v0, 2
    /* B5760 80154D20 00A22821 */  addu       $a1, $a1, $v0
    /* B5764 80154D24 8CA50490 */  lw         $a1, %lo(D_800E0490)($a1)
    /* B5768 80154D28 00220821 */  addu       $at, $at, $v0
    /* B576C 80154D2C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* B5770 80154D30 8CA30004 */  lw         $v1, 0x4($a1)
    /* B5774 80154D34 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* B5778 80154D38 E4840004 */  swc1       $f4, 0x4($a0)
    /* B577C 80154D3C 8CEF0000 */  lw         $t7, 0x0($a3)
    /* B5780 80154D40 8DF80000 */  lw         $t8, 0x0($t7)
    /* B5784 80154D44 0018C880 */  sll        $t9, $t8, 2
    /* B5788 80154D48 00390821 */  addu       $at, $at, $t9
    /* B578C 80154D4C C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* B5790 80154D50 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B5794 80154D54 E4860008 */  swc1       $f6, 0x8($a0)
    /* B5798 80154D58 8CEB0000 */  lw         $t3, 0x0($a3)
    /* B579C 80154D5C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* B57A0 80154D60 000C6880 */  sll        $t5, $t4, 2
    /* B57A4 80154D64 002D0821 */  addu       $at, $at, $t5
    /* B57A8 80154D68 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* B57AC 80154D6C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* B57B0 80154D70 E488000C */  swc1       $f8, 0xC($a0)
    /* B57B4 80154D74 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* B57B8 80154D78 E48A0010 */  swc1       $f10, 0x10($a0)
    /* B57BC 80154D7C C4720000 */  lwc1       $f18, 0x0($v1)
    /* B57C0 80154D80 C4700004 */  lwc1       $f16, 0x4($v1)
    /* B57C4 80154D84 46128100 */  add.s      $f4, $f16, $f18
    /* B57C8 80154D88 44818000 */  mtc1       $at, $f16
    /* B57CC 80154D8C 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* B57D0 80154D90 E4840014 */  swc1       $f4, 0x14($a0)
    /* B57D4 80154D94 C4680000 */  lwc1       $f8, 0x0($v1)
    /* B57D8 80154D98 C4660008 */  lwc1       $f6, 0x8($v1)
    /* B57DC 80154D9C 46083280 */  add.s      $f10, $f6, $f8
    /* B57E0 80154DA0 E48A0018 */  swc1       $f10, 0x18($a0)
    /* B57E4 80154DA4 8CEE0000 */  lw         $t6, 0x0($a3)
    /* B57E8 80154DA8 8DCF0000 */  lw         $t7, 0x0($t6)
    /* B57EC 80154DAC 000FC080 */  sll        $t8, $t7, 2
    /* B57F0 80154DB0 00380821 */  addu       $at, $at, $t8
    /* B57F4 80154DB4 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* B57F8 80154DB8 46128032 */  c.eq.s     $f16, $f18
    /* B57FC 80154DBC 00000000 */  nop
    /* B5800 80154DC0 45020007 */  bc1fl      .L80154DE0_ovl3
    /* B5804 80154DC4 C4680010 */   lwc1      $f8, 0x10($v1)
    /* B5808 80154DC8 C464000C */  lwc1       $f4, 0xC($v1)
    /* B580C 80154DCC E484001C */  swc1       $f4, 0x1C($a0)
    /* B5810 80154DD0 C4660010 */  lwc1       $f6, 0x10($v1)
    /* B5814 80154DD4 10000005 */  b          .L80154DEC_ovl3
    /* B5818 80154DD8 E4860020 */   swc1      $f6, 0x20($a0)
    /* B581C 80154DDC C4680010 */  lwc1       $f8, 0x10($v1)
  .L80154DE0_ovl3:
    /* B5820 80154DE0 E488001C */  swc1       $f8, 0x1C($a0)
    /* B5824 80154DE4 C46A000C */  lwc1       $f10, 0xC($v1)
    /* B5828 80154DE8 E48A0020 */  swc1       $f10, 0x20($a0)
  .L80154DEC_ovl3:
    /* B582C 80154DEC 8CF90000 */  lw         $t9, 0x0($a3)
    /* B5830 80154DF0 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* B5834 80154DF4 8F2B0000 */  lw         $t3, 0x0($t9)
    /* B5838 80154DF8 000B6080 */  sll        $t4, $t3, 2
    /* B583C 80154DFC 002C0821 */  addu       $at, $at, $t4
    /* B5840 80154E00 C43017D0 */  lwc1       $f16, %lo(D_800E17D0)($at)
    /* B5844 80154E04 3C01800F */  lui        $at, %hi(D_800E8920)
    /* B5848 80154E08 E4900024 */  swc1       $f16, 0x24($a0)
    /* B584C 80154E0C 8CED0000 */  lw         $t5, 0x0($a3)
    /* B5850 80154E10 8DAE0000 */  lw         $t6, 0x0($t5)
    /* B5854 80154E14 AFA40048 */  sw         $a0, 0x48($sp)
    /* B5858 80154E18 AFA3002C */  sw         $v1, 0x2C($sp)
    /* B585C 80154E1C 000E7880 */  sll        $t7, $t6, 2
    /* B5860 80154E20 002F0821 */  addu       $at, $at, $t7
    /* B5864 80154E24 0C04309D */  jal        func_8010C274
    /* B5868 80154E28 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
    /* B586C 80154E2C 3C058013 */  lui        $a1, %hi(D_8012BCA0)
    /* B5870 80154E30 8FA40048 */  lw         $a0, 0x48($sp)
    /* B5874 80154E34 0C04148E */  jal        func_80105238
    /* B5878 80154E38 24A5BCA0 */   addiu     $a1, $a1, %lo(D_8012BCA0)
    /* B587C 80154E3C 3C188013 */  lui        $t8, %hi(D_8012BCA0)
    /* B5880 80154E40 8F18BCA0 */  lw         $t8, %lo(D_8012BCA0)($t8)
    /* B5884 80154E44 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* B5888 80154E48 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* B588C 80154E4C 0018CCC2 */  srl        $t9, $t8, 19
    /* B5890 80154E50 8FA3002C */  lw         $v1, 0x2C($sp)
    /* B5894 80154E54 1320001A */  beqz       $t9, .L80154EC0_ovl3
    /* B5898 80154E58 8FA40048 */   lw        $a0, 0x48($sp)
    /* B589C 80154E5C 8CE60000 */  lw         $a2, 0x0($a3)
    /* B58A0 80154E60 C4920004 */  lwc1       $f18, 0x4($a0)
    /* B58A4 80154E64 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B58A8 80154E68 8CCB0000 */  lw         $t3, 0x0($a2)
    /* B58AC 80154E6C 24190001 */  addiu      $t9, $zero, 0x1
    /* B58B0 80154E70 000B6080 */  sll        $t4, $t3, 2
    /* B58B4 80154E74 002C0821 */  addu       $at, $at, $t4
    /* B58B8 80154E78 E43225D0 */  swc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* B58BC 80154E7C 8CCD0000 */  lw         $t5, 0x0($a2)
    /* B58C0 80154E80 C4840008 */  lwc1       $f4, 0x8($a0)
    /* B58C4 80154E84 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* B58C8 80154E88 000D7080 */  sll        $t6, $t5, 2
    /* B58CC 80154E8C 002E0821 */  addu       $at, $at, $t6
    /* B58D0 80154E90 E4242790 */  swc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* B58D4 80154E94 8CCF0000 */  lw         $t7, 0x0($a2)
    /* B58D8 80154E98 C486000C */  lwc1       $f6, 0xC($a0)
    /* B58DC 80154E9C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B58E0 80154EA0 000FC080 */  sll        $t8, $t7, 2
    /* B58E4 80154EA4 00380821 */  addu       $at, $at, $t8
    /* B58E8 80154EA8 E4262950 */  swc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* B58EC 80154EAC 8CCB0000 */  lw         $t3, 0x0($a2)
    /* B58F0 80154EB0 3C01800F */  lui        $at, %hi(D_800E8920)
    /* B58F4 80154EB4 000B6080 */  sll        $t4, $t3, 2
    /* B58F8 80154EB8 002C0821 */  addu       $at, $at, $t4
    /* B58FC 80154EBC AC398920 */  sw         $t9, %lo(D_800E8920)($at)
  .L80154EC0_ovl3:
    /* B5900 80154EC0 8CE60000 */  lw         $a2, 0x0($a3)
    /* B5904 80154EC4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B5908 80154EC8 27A4003C */  addiu      $a0, $sp, 0x3C
    /* B590C 80154ECC 8CCD0000 */  lw         $t5, 0x0($a2)
    /* B5910 80154ED0 000D7080 */  sll        $t6, $t5, 2
    /* B5914 80154ED4 002E0821 */  addu       $at, $at, $t6
    /* B5918 80154ED8 C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
    /* B591C 80154EDC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* B5920 80154EE0 E7A8003C */  swc1       $f8, 0x3C($sp)
    /* B5924 80154EE4 8CCF0000 */  lw         $t7, 0x0($a2)
    /* B5928 80154EE8 C4700000 */  lwc1       $f16, 0x0($v1)
    /* B592C 80154EEC 000FC080 */  sll        $t8, $t7, 2
    /* B5930 80154EF0 00380821 */  addu       $at, $at, $t8
    /* B5934 80154EF4 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
    /* B5938 80154EF8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B593C 80154EFC 46105480 */  add.s      $f18, $f10, $f16
    /* B5940 80154F00 E7B20040 */  swc1       $f18, 0x40($sp)
    /* B5944 80154F04 8CCB0000 */  lw         $t3, 0x0($a2)
    /* B5948 80154F08 000BC880 */  sll        $t9, $t3, 2
    /* B594C 80154F0C 00390821 */  addu       $at, $at, $t9
    /* B5950 80154F10 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
    /* B5954 80154F14 0C0437E7 */  jal        func_8010DF9C
    /* B5958 80154F18 E7A40044 */   swc1      $f4, 0x44($sp)
    /* B595C 80154F1C 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* B5960 80154F20 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* B5964 80154F24 8CE60000 */  lw         $a2, 0x0($a3)
    /* B5968 80154F28 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* B596C 80154F2C 25088AE0 */  addiu      $t0, $t0, %lo(D_800E8AE0)
    /* B5970 80154F30 8CCC0000 */  lw         $t4, 0x0($a2)
    /* B5974 80154F34 00405025 */  or         $t2, $v0, $zero
    /* B5978 80154F38 000C6880 */  sll        $t5, $t4, 2
    /* B597C 80154F3C 010D1821 */  addu       $v1, $t0, $t5
    /* B5980 80154F40 8C6E0000 */  lw         $t6, 0x0($v1)
    /* B5984 80154F44 000E7842 */  srl        $t7, $t6, 1
    /* B5988 80154F48 1040004B */  beqz       $v0, .L80155078_ovl3
    /* B598C 80154F4C AC6F0000 */   sw        $t7, 0x0($v1)
    /* B5990 80154F50 18400049 */  blez       $v0, .L80155078_ovl3
    /* B5994 80154F54 00002825 */   or        $a1, $zero, $zero
    /* B5998 80154F58 30430003 */  andi       $v1, $v0, 0x3
    /* B599C 80154F5C 10600014 */  beqz       $v1, .L80154FB0_ovl3
    /* B59A0 80154F60 00604825 */   or        $t1, $v1, $zero
    /* B59A4 80154F64 3C0B8013 */  lui        $t3, %hi(D_8012BCA0)
    /* B59A8 80154F68 256BBCA0 */  addiu      $t3, $t3, %lo(D_8012BCA0)
    /* B59AC 80154F6C 0000C080 */  sll        $t8, $zero, 2
    /* B59B0 80154F70 030B2021 */  addu       $a0, $t8, $t3
    /* B59B4 80154F74 24070001 */  addiu      $a3, $zero, 0x1
  .L80154F78_ovl3:
    /* B59B8 80154F78 8C990040 */  lw         $t9, 0x40($a0)
    /* B59BC 80154F7C 24A50001 */  addiu      $a1, $a1, 0x1
    /* B59C0 80154F80 932C0004 */  lbu        $t4, 0x4($t9)
    /* B59C4 80154F84 14EC0007 */  bne        $a3, $t4, .L80154FA4_ovl3
    /* B59C8 80154F88 00000000 */   nop
    /* B59CC 80154F8C 8CCD0000 */  lw         $t5, 0x0($a2)
    /* B59D0 80154F90 000D7080 */  sll        $t6, $t5, 2
    /* B59D4 80154F94 010E1821 */  addu       $v1, $t0, $t6
    /* B59D8 80154F98 8C6F0000 */  lw         $t7, 0x0($v1)
    /* B59DC 80154F9C 35F80004 */  ori        $t8, $t7, 0x4
    /* B59E0 80154FA0 AC780000 */  sw         $t8, 0x0($v1)
  .L80154FA4_ovl3:
    /* B59E4 80154FA4 1525FFF4 */  bne        $t1, $a1, .L80154F78_ovl3
    /* B59E8 80154FA8 24840004 */   addiu     $a0, $a0, 0x4
    /* B59EC 80154FAC 10A20032 */  beq        $a1, $v0, .L80155078_ovl3
  .L80154FB0_ovl3:
    /* B59F0 80154FB0 3C198013 */   lui       $t9, %hi(D_8012BCA0)
    /* B59F4 80154FB4 2739BCA0 */  addiu      $t9, $t9, %lo(D_8012BCA0)
    /* B59F8 80154FB8 00055880 */  sll        $t3, $a1, 2
    /* B59FC 80154FBC 000A6080 */  sll        $t4, $t2, 2
    /* B5A00 80154FC0 01991021 */  addu       $v0, $t4, $t9
    /* B5A04 80154FC4 01792021 */  addu       $a0, $t3, $t9
    /* B5A08 80154FC8 24070001 */  addiu      $a3, $zero, 0x1
    /* B5A0C 80154FCC 8C8D0040 */  lw         $t5, 0x40($a0)
  .L80154FD0_ovl3:
    /* B5A10 80154FD0 91AE0004 */  lbu        $t6, 0x4($t5)
    /* B5A14 80154FD4 54EE0008 */  bnel       $a3, $t6, .L80154FF8_ovl3
    /* B5A18 80154FD8 8C990044 */   lw        $t9, 0x44($a0)
    /* B5A1C 80154FDC 8CCF0000 */  lw         $t7, 0x0($a2)
    /* B5A20 80154FE0 000FC080 */  sll        $t8, $t7, 2
    /* B5A24 80154FE4 01181821 */  addu       $v1, $t0, $t8
    /* B5A28 80154FE8 8C6B0000 */  lw         $t3, 0x0($v1)
    /* B5A2C 80154FEC 356C0004 */  ori        $t4, $t3, 0x4
    /* B5A30 80154FF0 AC6C0000 */  sw         $t4, 0x0($v1)
    /* B5A34 80154FF4 8C990044 */  lw         $t9, 0x44($a0)
  .L80154FF8_ovl3:
    /* B5A38 80154FF8 932D0004 */  lbu        $t5, 0x4($t9)
    /* B5A3C 80154FFC 54ED0008 */  bnel       $a3, $t5, .L80155020_ovl3
    /* B5A40 80155000 8C8C0048 */   lw        $t4, 0x48($a0)
    /* B5A44 80155004 8CCE0000 */  lw         $t6, 0x0($a2)
    /* B5A48 80155008 000E7880 */  sll        $t7, $t6, 2
    /* B5A4C 8015500C 010F1821 */  addu       $v1, $t0, $t7
    /* B5A50 80155010 8C780000 */  lw         $t8, 0x0($v1)
    /* B5A54 80155014 370B0004 */  ori        $t3, $t8, 0x4
    /* B5A58 80155018 AC6B0000 */  sw         $t3, 0x0($v1)
    /* B5A5C 8015501C 8C8C0048 */  lw         $t4, 0x48($a0)
  .L80155020_ovl3:
    /* B5A60 80155020 91990004 */  lbu        $t9, 0x4($t4)
    /* B5A64 80155024 54F90008 */  bnel       $a3, $t9, .L80155048_ovl3
    /* B5A68 80155028 8C8B004C */   lw        $t3, 0x4C($a0)
    /* B5A6C 8015502C 8CCD0000 */  lw         $t5, 0x0($a2)
    /* B5A70 80155030 000D7080 */  sll        $t6, $t5, 2
    /* B5A74 80155034 010E1821 */  addu       $v1, $t0, $t6
    /* B5A78 80155038 8C6F0000 */  lw         $t7, 0x0($v1)
    /* B5A7C 8015503C 35F80004 */  ori        $t8, $t7, 0x4
    /* B5A80 80155040 AC780000 */  sw         $t8, 0x0($v1)
    /* B5A84 80155044 8C8B004C */  lw         $t3, 0x4C($a0)
  .L80155048_ovl3:
    /* B5A88 80155048 24840010 */  addiu      $a0, $a0, 0x10
    /* B5A8C 8015504C 916C0004 */  lbu        $t4, 0x4($t3)
    /* B5A90 80155050 14EC0007 */  bne        $a3, $t4, .L80155070_ovl3
    /* B5A94 80155054 00000000 */   nop
    /* B5A98 80155058 8CD90000 */  lw         $t9, 0x0($a2)
    /* B5A9C 8015505C 00196880 */  sll        $t5, $t9, 2
    /* B5AA0 80155060 010D1821 */  addu       $v1, $t0, $t5
    /* B5AA4 80155064 8C6E0000 */  lw         $t6, 0x0($v1)
    /* B5AA8 80155068 35CF0004 */  ori        $t7, $t6, 0x4
    /* B5AAC 8015506C AC6F0000 */  sw         $t7, 0x0($v1)
  .L80155070_ovl3:
    /* B5AB0 80155070 5482FFD7 */  bnel       $a0, $v0, .L80154FD0_ovl3
    /* B5AB4 80155074 8C8D0040 */   lw        $t5, 0x40($a0)
  .L80155078_ovl3:
    /* B5AB8 80155078 8FBF0014 */  lw         $ra, 0x14($sp)
    /* B5ABC 8015507C 27BD0048 */  addiu      $sp, $sp, 0x48
    /* B5AC0 80155080 03E00008 */  jr         $ra
    /* B5AC4 80155084 00000000 */   nop
endlabel func_80154CFC_ovl3
.size func_80154CFC_ovl3, . - func_80154CFC_ovl3
