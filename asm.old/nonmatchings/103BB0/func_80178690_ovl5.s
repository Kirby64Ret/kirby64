glabel func_80178690_ovl5
/* 11FB00 80178690 27BDFFC8 */  addiu      $sp, $sp, -0x38
.L80178694_ovl3:
/* 11FB04 80178694 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 11FB08 80178698 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 11FB0C 8017869C AFB00020 */  sw         $s0, 0x20($sp)
/* 11FB10 801786A0 00808025 */  or         $s0, $a0, $zero
/* 11FB14 801786A4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 11FB18 801786A8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 11FB1C 801786AC AFA5003C */  sw         $a1, 0x3C($sp)
/* 11FB20 801786B0 AFA60040 */  sw         $a2, 0x40($sp)
/* 11FB24 801786B4 AFA70044 */  sw         $a3, 0x44($sp)
.L801786B8_ovl3:
/* 11FB28 801786B8 00051080 */  sll        $v0, $a1, 2
/* 11FB2C 801786BC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 11FB30 801786C0 3C018019 */  lui        $at, %hi(D_8018ECE8_ovl5)
/* 11FB34 801786C4 3C048019 */  lui        $a0, %hi(D_801887A0_ovl5)
/* 11FB38 801786C8 00061880 */  sll        $v1, $a2, 2
/* 11FB3C 801786CC 00220821 */  addu       $at, $at, $v0
/* 11FB40 801786D0 00832021 */  addu       $a0, $a0, $v1
/* 11FB44 801786D4 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 11FB48 801786D8 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 11FB4C 801786DC 8C8487A0 */  lw         $a0, %lo(D_801887A0_ovl5)($a0)
/* 11FB50 801786E0 AFA3002C */  sw         $v1, 0x2C($sp)
/* 11FB54 801786E4 24060010 */  addiu      $a2, $zero, 0x10
/* 11FB58 801786E8 AFA20030 */  sw         $v0, 0x30($sp)
/* 11FB5C 801786EC 0C02A619 */  jal        func_800A9864
/* 11FB60 801786F0 AC2FECE8 */   sw        $t7, %lo(D_8018ECE8_ovl5)($at)
/* 11FB64 801786F4 8FB80044 */  lw         $t8, 0x44($sp)
/* 11FB68 801786F8 8FA3002C */  lw         $v1, 0x2C($sp)
/* 11FB6C 801786FC 3C048019 */  lui        $a0, %hi(D_801887B0_ovl5)
/* 11FB70 80178700 44982000 */  mtc1       $t8, $f4
/* 11FB74 80178704 00832021 */  addu       $a0, $a0, $v1
/* 11FB78 80178708 8C8487B0 */  lw         $a0, %lo(D_801887B0_ovl5)($a0)
/* 11FB7C 8017870C 46802120 */  cvt.s.w    $f4, $f4
/* 11FB80 80178710 44052000 */  mfc1       $a1, $f4
/* 11FB84 80178714 0C02A7E6 */  jal        func_800A9F98
.L80178718_ovl3:
/* 11FB88 80178718 00000000 */   nop
.L8017871C_ovl3:
/* 11FB8C 8017871C 8FB90044 */  lw         $t9, 0x44($sp)
/* 11FB90 80178720 17200003 */  bnez       $t9, .L80178730_ovl5
/* 11FB94 80178724 00000000 */   nop
glabel func_80178728_ovl3
/* 11FB98 80178728 0C0038C9 */  jal        func_8000E324
/* 11FB9C 8017872C 02002025 */   or        $a0, $s0, $zero
.L80178730_ovl5:
/* 11FBA0 80178730 0C00302B */  jal        func_8000C0AC
/* 11FBA4 80178734 02002025 */   or        $a0, $s0, $zero
/* 11FBA8 80178738 8FA70040 */  lw         $a3, 0x40($sp)
/* 11FBAC 8017873C 24010001 */  addiu      $at, $zero, 0x1
/* 11FBB0 80178740 3C188019 */  lui        $t8, %hi(D_801887C0_ovl5)
/* 11FBB4 80178744 14E10014 */  bne        $a3, $at, .L80178798_ovl5
/* 11FBB8 80178748 271887C0 */   addiu     $t8, $t8, %lo(D_801887C0_ovl5)
/* 11FBBC 8017874C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 11FBC0 80178750 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 11FBC4 80178754 3C018019 */  lui        $at, %hi(D_8018DCE0_ovl5)
/* 11FBC8 80178758 C420DCE0 */  lwc1       $f0, %lo(D_8018DCE0_ovl5)($at)
/* 11FBCC 8017875C 8C480000 */  lw         $t0, 0x0($v0)
/* 11FBD0 80178760 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 11FBD4 80178764 00084880 */  sll        $t1, $t0, 2
/* 11FBD8 80178768 00290821 */  addu       $at, $at, $t1
/* 11FBDC 8017876C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 11FBE0 80178770 8C4A0000 */  lw         $t2, 0x0($v0)
/* 11FBE4 80178774 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 11FBE8 80178778 000A5880 */  sll        $t3, $t2, 2
/* 11FBEC 8017877C 002B0821 */  addu       $at, $at, $t3
/* 11FBF0 80178780 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 11FBF4 80178784 8C4C0000 */  lw         $t4, 0x0($v0)
/* 11FBF8 80178788 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 11FBFC 8017878C 000C6880 */  sll        $t5, $t4, 2
/* 11FC00 80178790 002D0821 */  addu       $at, $at, $t5
/* 11FC04 80178794 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
.L80178798_ovl5:
/* 11FC08 80178798 8FAE003C */  lw         $t6, 0x3C($sp)
/* 11FC0C 8017879C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 11FC10 801787A0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 11FC14 801787A4 000E7880 */  sll        $t7, $t6, 2
/* 11FC18 801787A8 01EE7823 */  subu       $t7, $t7, $t6
/* 11FC1C 801787AC 8C590000 */  lw         $t9, 0x0($v0)
/* 11FC20 801787B0 000F7880 */  sll        $t7, $t7, 2
/* 11FC24 801787B4 01F81821 */  addu       $v1, $t7, $t8
/* 11FC28 801787B8 C4660000 */  lwc1       $f6, 0x0($v1)
/* 11FC2C 801787BC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 11FC30 801787C0 00194080 */  sll        $t0, $t9, 2
/* 11FC34 801787C4 00280821 */  addu       $at, $at, $t0
/* 11FC38 801787C8 E42625D0 */  swc1       $f6, %lo(gEntitiesNextPosXArray)($at)
/* 11FC3C 801787CC 8C490000 */  lw         $t1, 0x0($v0)
/* 11FC40 801787D0 C4680004 */  lwc1       $f8, 0x4($v1)
/* 11FC44 801787D4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 11FC48 801787D8 00095080 */  sll        $t2, $t1, 2
/* 11FC4C 801787DC 002A0821 */  addu       $at, $at, $t2
/* 11FC50 801787E0 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 11FC54 801787E4 8C4B0000 */  lw         $t3, 0x0($v0)
/* 11FC58 801787E8 C46A0008 */  lwc1       $f10, 0x8($v1)
/* 11FC5C 801787EC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 11FC60 801787F0 3C0D8019 */  lui        $t5, %hi(D_801887F0_ovl5)
/* 11FC64 801787F4 000B6080 */  sll        $t4, $t3, 2
/* 11FC68 801787F8 002C0821 */  addu       $at, $at, $t4
/* 11FC6C 801787FC 25AD87F0 */  addiu      $t5, $t5, %lo(D_801887F0_ovl5)
/* 11FC70 80178800 000730C0 */  sll        $a2, $a3, 3
/* 11FC74 80178804 00CD2821 */  addu       $a1, $a2, $t5
/* 11FC78 80178808 E42A2950 */  swc1       $f10, %lo(gEntitiesNextPosZArray)($at)
.L8017880C_ovl3:
/* 11FC7C 8017880C 8CA40000 */  lw         $a0, 0x0($a1)
/* 11FC80 80178810 AFA50028 */  sw         $a1, 0x28($sp)
/* 11FC84 80178814 0C02A806 */  jal        func_800AA018
/* 11FC88 80178818 AFA6002C */   sw        $a2, 0x2C($sp)
.L8017881C_ovl3:
/* 11FC8C 8017881C 8FA50028 */  lw         $a1, 0x28($sp)
/* 11FC90 80178820 8CA40004 */  lw         $a0, 0x4($a1)
/* 11FC94 80178824 50800004 */  beql       $a0, $zero, .L80178838_ovl5
/* 11FC98 80178828 8FAE0030 */   lw        $t6, 0x30($sp)
/* 11FC9C 8017882C 0C02A806 */  jal        func_800AA018
/* 11FCA0 80178830 00000000 */   nop
/* 11FCA4 80178834 8FAE0030 */  lw         $t6, 0x30($sp)
.L80178838_ovl5:
/* 11FCA8 80178838 3C18800D */  lui        $t8, %hi(D_800D7158 + 0x2C)
glabel func_8017883C_ovl3
/* 11FCAC 8017883C 3C014284 */  lui        $at, (0x42840000 >> 16)
/* 11FCB0 80178840 000E7880 */  sll        $t7, $t6, 2
/* 11FCB4 80178844 030FC021 */  addu       $t8, $t8, $t7
/* 11FCB8 80178848 8F187184 */  lw         $t8, %lo(D_800D7158 + 0x2C)($t8)
/* 11FCBC 8017884C 1700001B */  bnez       $t8, .L801788BC_ovl5
/* 11FCC0 80178850 00000000 */   nop
/* 11FCC4 80178854 4481A000 */  mtc1       $at, $f20
/* 11FCC8 80178858 C6100040 */  lwc1       $f16, 0x40($s0)
/* 11FCCC 8017885C 4614803C */  c.lt.s     $f16, $f20
/* 11FCD0 80178860 00000000 */  nop
/* 11FCD4 80178864 45020009 */  bc1fl      .L8017888C_ovl5
/* 11FCD8 80178868 24040010 */   addiu     $a0, $zero, 0x10
.L8017886C_ovl5:
/* 11FCDC 8017886C 0C002DAF */  jal        finish_current_thread
/* 11FCE0 80178870 24040001 */   addiu     $a0, $zero, 0x1
/* 11FCE4 80178874 C6120040 */  lwc1       $f18, 0x40($s0)
/* 11FCE8 80178878 4614903C */  c.lt.s     $f18, $f20
/* 11FCEC 8017887C 00000000 */  nop
/* 11FCF0 80178880 4501FFFA */  bc1t       .L8017886C_ovl5
/* 11FCF4 80178884 00000000 */   nop
/* 11FCF8 80178888 24040010 */  addiu      $a0, $zero, 0x10
.L8017888C_ovl5:
/* 11FCFC 8017888C 00002825 */  or         $a1, $zero, $zero
/* 11FD00 80178890 0C02BB02 */  jal        request_track_general
/* 11FD04 80178894 24060070 */   addiu     $a2, $zero, 0x70
/* 11FD08 80178898 00021880 */  sll        $v1, $v0, 2
/* 11FD0C 8017889C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 11FD10 801788A0 00230821 */  addu       $at, $at, $v1
/* 11FD14 801788A4 24190007 */  addiu      $t9, $zero, 0x7
/* 11FD18 801788A8 8FA8003C */  lw         $t0, 0x3C($sp)
/* 11FD1C 801788AC AC3998E0 */  sw         $t9, %lo(D_800E98E0)($at)
/* 11FD20 801788B0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 11FD24 801788B4 00230821 */  addu       $at, $at, $v1
/* 11FD28 801788B8 AC289AA0 */  sw         $t0, %lo(D_800E9AA0)($at)
.L801788BC_ovl5:
/* 11FD2C 801788BC 0C02BC9F */  jal        func_800AF27C
/* 11FD30 801788C0 00000000 */   nop
/* 11FD34 801788C4 8FA9002C */  lw         $t1, 0x2C($sp)
/* 11FD38 801788C8 3C0A8019 */  lui        $t2, %hi(D_80188810_ovl5)
/* 11FD3C 801788CC 254A8810 */  addiu      $t2, $t2, %lo(D_80188810_ovl5)
/* 11FD40 801788D0 012A8021 */  addu       $s0, $t1, $t2
/* 11FD44 801788D4 0C02A806 */  jal        func_800AA018
/* 11FD48 801788D8 8E040000 */   lw        $a0, 0x0($s0)
/* 11FD4C 801788DC 8E040004 */  lw         $a0, 0x4($s0)
/* 11FD50 801788E0 10800003 */  beqz       $a0, .L801788F0_ovl5
.L801788E4_ovl3:
/* 11FD54 801788E4 00000000 */   nop
.L801788E8_ovl3:
/* 11FD58 801788E8 0C02A806 */  jal        func_800AA018
/* 11FD5C 801788EC 00000000 */   nop
.L801788F0_ovl5:
/* 11FD60 801788F0 0C02BE85 */  jal        func_800AFA14
/* 11FD64 801788F4 00000000 */   nop
/* 11FD68 801788F8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11FD6C 801788FC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 11FD70 80178900 8FB00020 */  lw         $s0, 0x20($sp)
/* 11FD74 80178904 03E00008 */  jr         $ra
/* 11FD78 80178908 27BD0038 */   addiu     $sp, $sp, 0x38
