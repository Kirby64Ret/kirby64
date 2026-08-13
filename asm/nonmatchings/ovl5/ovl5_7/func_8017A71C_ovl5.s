nonmatching func_8017A71C_ovl5, 0x464

glabel func_8017A71C_ovl5
    /* 121B8C 8017A71C 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 121B90 8017A720 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 121B94 8017A724 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 121B98 8017A728 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 121B9C 8017A72C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 121BA0 8017A730 3C07800F */  lui        $a3, %hi(D_800E9C60)
    /* 121BA4 8017A734 24E79C60 */  addiu      $a3, $a3, %lo(D_800E9C60)
    /* 121BA8 8017A738 00031880 */  sll        $v1, $v1, 2
    /* 121BAC 8017A73C 00E37021 */  addu       $t6, $a3, $v1
    /* 121BB0 8017A740 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 121BB4 8017A744 00803025 */  or         $a2, $a0, $zero
    /* 121BB8 8017A748 55E0010A */  bnel       $t7, $zero, .L8017AB74_ovl5
    /* 121BBC 8017A74C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 121BC0 8017A750 1480006E */  bnez       $a0, .L8017A90C_ovl5
    /* 121BC4 8017A754 3C08800F */   lui       $t0, %hi(D_800E9E20)
    /* 121BC8 8017A758 25089E20 */  addiu      $t0, $t0, %lo(D_800E9E20)
    /* 121BCC 8017A75C 01032021 */  addu       $a0, $t0, $v1
    /* 121BD0 8017A760 8C820000 */  lw         $v0, 0x0($a0)
    /* 121BD4 8017A764 10400020 */  beqz       $v0, .L8017A7E8_ovl5
    /* 121BD8 8017A768 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 121BDC 8017A76C AC980000 */  sw         $t8, 0x0($a0)
    /* 121BE0 8017A770 8CB90000 */  lw         $t9, 0x0($a1)
    /* 121BE4 8017A774 00194880 */  sll        $t1, $t9, 2
    /* 121BE8 8017A778 01095021 */  addu       $t2, $t0, $t1
    /* 121BEC 8017A77C 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 121BF0 8017A780 556000FC */  bnel       $t3, $zero, .L8017AB74_ovl5
    /* 121BF4 8017A784 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 121BF8 8017A788 0C05E99C */  jal        func_8017A670_ovl5
    /* 121BFC 8017A78C 00000000 */   nop
    /* 121C00 8017A790 0C05E7C8 */  jal        func_80179F20_ovl5
    /* 121C04 8017A794 00000000 */   nop
    /* 121C08 8017A798 10400007 */  beqz       $v0, .L8017A7B8_ovl5
    /* 121C0C 8017A79C 24060002 */   addiu     $a2, $zero, 0x2
    /* 121C10 8017A7A0 240C0003 */  addiu      $t4, $zero, 0x3
    /* 121C14 8017A7A4 3C018019 */  lui        $at, %hi(D_8018ED04_ovl5)
    /* 121C18 8017A7A8 0C05F20D */  jal        func_8017C834_ovl5
    /* 121C1C 8017A7AC AC2CED04 */   sw        $t4, %lo(D_8018ED04_ovl5)($at)
    /* 121C20 8017A7B0 10000004 */  b          .L8017A7C4_ovl5
    /* 121C24 8017A7B4 00000000 */   nop
  .L8017A7B8_ovl5:
    /* 121C28 8017A7B8 3C018019 */  lui        $at, %hi(D_8018ED04_ovl5)
    /* 121C2C 8017A7BC 0C05F1F6 */  jal        func_8017C7D8_ovl5
    /* 121C30 8017A7C0 AC26ED04 */   sw        $a2, %lo(D_8018ED04_ovl5)($at)
  .L8017A7C4_ovl5:
    /* 121C34 8017A7C4 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 121C38 8017A7C8 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 121C3C 8017A7CC 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 121C40 8017A7D0 240D0004 */  addiu      $t5, $zero, 0x4
    /* 121C44 8017A7D4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 121C48 8017A7D8 000FC080 */  sll        $t8, $t7, 2
    /* 121C4C 8017A7DC 00380821 */  addu       $at, $at, $t8
    /* 121C50 8017A7E0 100000E3 */  b          .L8017AB70_ovl5
    /* 121C54 8017A7E4 AC2D98E0 */   sw        $t5, %lo(D_800E98E0)($at)
  .L8017A7E8_ovl5:
    /* 121C58 8017A7E8 54400024 */  bnel       $v0, $zero, .L8017A87C_ovl5
    /* 121C5C 8017A7EC 0006C080 */   sll       $t8, $a2, 2
    /* 121C60 8017A7F0 0C05E962 */  jal        func_8017A588_ovl5
    /* 121C64 8017A7F4 AFA60018 */   sw        $a2, 0x18($sp)
    /* 121C68 8017A7F8 3C07800F */  lui        $a3, %hi(D_800E9C60)
    /* 121C6C 8017A7FC 24E79C60 */  addiu      $a3, $a3, %lo(D_800E9C60)
    /* 121C70 8017A800 1040001D */  beqz       $v0, .L8017A878_ovl5
    /* 121C74 8017A804 8FA60018 */   lw        $a2, 0x18($sp)
    /* 121C78 8017A808 0C05E7C8 */  jal        func_80179F20_ovl5
    /* 121C7C 8017A80C 00000000 */   nop
    /* 121C80 8017A810 1040000E */  beqz       $v0, .L8017A84C_ovl5
    /* 121C84 8017A814 00000000 */   nop
    /* 121C88 8017A818 0C05E873 */  jal        func_8017A1CC_ovl5
    /* 121C8C 8017A81C 00000000 */   nop
    /* 121C90 8017A820 0C05E81C */  jal        func_8017A070_ovl5
    /* 121C94 8017A824 00000000 */   nop
    /* 121C98 8017A828 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 121C9C 8017A82C 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 121CA0 8017A830 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 121CA4 8017A834 2419001E */  addiu      $t9, $zero, 0x1E
    /* 121CA8 8017A838 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 121CAC 8017A83C 000A5880 */  sll        $t3, $t2, 2
    /* 121CB0 8017A840 002B0821 */  addu       $at, $at, $t3
    /* 121CB4 8017A844 100000CA */  b          .L8017AB70_ovl5
    /* 121CB8 8017A848 AC399E20 */   sw        $t9, %lo(D_800E9E20)($at)
  .L8017A84C_ovl5:
    /* 121CBC 8017A84C 0C05E81C */  jal        func_8017A070_ovl5
    /* 121CC0 8017A850 00000000 */   nop
    /* 121CC4 8017A854 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 121CC8 8017A858 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 121CCC 8017A85C 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 121CD0 8017A860 240C000A */  addiu      $t4, $zero, 0xA
    /* 121CD4 8017A864 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 121CD8 8017A868 000F6880 */  sll        $t5, $t7, 2
    /* 121CDC 8017A86C 002D0821 */  addu       $at, $at, $t5
    /* 121CE0 8017A870 100000BF */  b          .L8017AB70_ovl5
    /* 121CE4 8017A874 AC2C9E20 */   sw        $t4, %lo(D_800E9E20)($at)
  .L8017A878_ovl5:
    /* 121CE8 8017A878 0006C080 */  sll        $t8, $a2, 2
  .L8017A87C_ovl5:
    /* 121CEC 8017A87C 0306C021 */  addu       $t8, $t8, $a2
    /* 121CF0 8017A880 0018C040 */  sll        $t8, $t8, 1
    /* 121CF4 8017A884 3C098005 */  lui        $t1, %hi(gPlayerControllers + 0x2)
    /* 121CF8 8017A888 01384821 */  addu       $t1, $t1, $t8
    /* 121CFC 8017A88C 95298F22 */  lhu        $t1, %lo(gPlayerControllers + 0x2)($t1)
    /* 121D00 8017A890 3C028019 */  lui        $v0, %hi(D_8018ED94_ovl5)
    /* 121D04 8017A894 2442ED94 */  addiu      $v0, $v0, %lo(D_8018ED94_ovl5)
    /* 121D08 8017A898 312A4000 */  andi       $t2, $t1, 0x4000
    /* 121D0C 8017A89C 1140001B */  beqz       $t2, .L8017A90C_ovl5
    /* 121D10 8017A8A0 3C038019 */   lui       $v1, %hi(D_8018EDA0_ovl5)
    /* 121D14 8017A8A4 2463EDA0 */  addiu      $v1, $v1, %lo(D_8018EDA0_ovl5)
    /* 121D18 8017A8A8 8C590000 */  lw         $t9, 0x0($v0)
  .L8017A8AC_ovl5:
    /* 121D1C 8017A8AC 24420004 */  addiu      $v0, $v0, 0x4
    /* 121D20 8017A8B0 00195880 */  sll        $t3, $t9, 2
    /* 121D24 8017A8B4 00EB7021 */  addu       $t6, $a3, $t3
    /* 121D28 8017A8B8 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 121D2C 8017A8BC 55E000AD */  bnel       $t7, $zero, .L8017AB74_ovl5
    /* 121D30 8017A8C0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 121D34 8017A8C4 5443FFF9 */  bnel       $v0, $v1, .L8017A8AC_ovl5
    /* 121D38 8017A8C8 8C590000 */   lw        $t9, 0x0($v0)
    /* 121D3C 8017A8CC 0C029D9E */  jal        play_sound
    /* 121D40 8017A8D0 2404002B */   addiu     $a0, $zero, 0x2B
    /* 121D44 8017A8D4 0C05E99C */  jal        func_8017A670_ovl5
    /* 121D48 8017A8D8 00000000 */   nop
    /* 121D4C 8017A8DC 3C018019 */  lui        $at, %hi(D_8018ED04_ovl5)
    /* 121D50 8017A8E0 0C05F187 */  jal        func_8017C61C_ovl5
    /* 121D54 8017A8E4 AC20ED04 */   sw        $zero, %lo(D_8018ED04_ovl5)($at)
    /* 121D58 8017A8E8 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 121D5C 8017A8EC 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 121D60 8017A8F0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 121D64 8017A8F4 240C0004 */  addiu      $t4, $zero, 0x4
    /* 121D68 8017A8F8 8DB80000 */  lw         $t8, 0x0($t5)
    /* 121D6C 8017A8FC 00184880 */  sll        $t1, $t8, 2
    /* 121D70 8017A900 00290821 */  addu       $at, $at, $t1
    /* 121D74 8017A904 1000009A */  b          .L8017AB70_ovl5
    /* 121D78 8017A908 AC2C98E0 */   sw        $t4, %lo(D_800E98E0)($at)
  .L8017A90C_ovl5:
    /* 121D7C 8017A90C 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 121D80 8017A910 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 121D84 8017A914 3C0E800F */  lui        $t6, %hi(D_800EA1A0)
    /* 121D88 8017A918 00067880 */  sll        $t7, $a2, 2
    /* 121D8C 8017A91C 8D590000 */  lw         $t9, 0x0($t2)
    /* 121D90 8017A920 01E67821 */  addu       $t7, $t7, $a2
    /* 121D94 8017A924 3C0D8005 */  lui        $t5, %hi(gPlayerControllers)
    /* 121D98 8017A928 00195880 */  sll        $t3, $t9, 2
    /* 121D9C 8017A92C 01CB7021 */  addu       $t6, $t6, $t3
    /* 121DA0 8017A930 8DCEA1A0 */  lw         $t6, %lo(D_800EA1A0)($t6)
    /* 121DA4 8017A934 25AD8F20 */  addiu      $t5, $t5, %lo(gPlayerControllers)
    /* 121DA8 8017A938 000F7840 */  sll        $t7, $t7, 1
    /* 121DAC 8017A93C 15C0008C */  bnez       $t6, .L8017AB70_ovl5
    /* 121DB0 8017A940 01ED1021 */   addu      $v0, $t7, $t5
    /* 121DB4 8017A944 94580002 */  lhu        $t8, 0x2($v0)
    /* 121DB8 8017A948 3C098019 */  lui        $t1, %hi(D_8018ED38_ovl5)
    /* 121DBC 8017A94C 01264821 */  addu       $t1, $t1, $a2
    /* 121DC0 8017A950 330C9000 */  andi       $t4, $t8, 0x9000
    /* 121DC4 8017A954 1180000F */  beqz       $t4, .L8017A994_ovl5
    /* 121DC8 8017A958 3C0E8019 */   lui       $t6, %hi(D_8018ED38_ovl5)
    /* 121DCC 8017A95C 9129ED38 */  lbu        $t1, %lo(D_8018ED38_ovl5)($t1)
    /* 121DD0 8017A960 5520000D */  bnel       $t1, $zero, .L8017A998_ovl5
    /* 121DD4 8017A964 01C67021 */   addu      $t6, $t6, $a2
    /* 121DD8 8017A968 0C029D9E */  jal        play_sound
    /* 121DDC 8017A96C 240400EE */   addiu     $a0, $zero, 0xEE
    /* 121DE0 8017A970 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 121DE4 8017A974 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 121DE8 8017A978 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 121DEC 8017A97C 24020001 */  addiu      $v0, $zero, 0x1
    /* 121DF0 8017A980 8D590000 */  lw         $t9, 0x0($t2)
    /* 121DF4 8017A984 00195880 */  sll        $t3, $t9, 2
    /* 121DF8 8017A988 002B0821 */  addu       $at, $at, $t3
    /* 121DFC 8017A98C 10000078 */  b          .L8017AB70_ovl5
    /* 121E00 8017A990 AC22A1A0 */   sw        $v0, %lo(D_800EA1A0)($at)
  .L8017A994_ovl5:
    /* 121E04 8017A994 01C67021 */  addu       $t6, $t6, $a2
  .L8017A998_ovl5:
    /* 121E08 8017A998 91CEED38 */  lbu        $t6, %lo(D_8018ED38_ovl5)($t6)
    /* 121E0C 8017A99C 55C00075 */  bnel       $t6, $zero, .L8017AB74_ovl5
    /* 121E10 8017A9A0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 121E14 8017A9A4 94430000 */  lhu        $v1, 0x0($v0)
    /* 121E18 8017A9A8 24040114 */  addiu      $a0, $zero, 0x114
    /* 121E1C 8017A9AC 306F0100 */  andi       $t7, $v1, 0x100
    /* 121E20 8017A9B0 11E00037 */  beqz       $t7, .L8017AA90_ovl5
    /* 121E24 8017A9B4 306A0200 */   andi      $t2, $v1, 0x200
    /* 121E28 8017A9B8 0C029D9E */  jal        play_sound
    /* 121E2C 8017A9BC AFA60018 */   sw        $a2, 0x18($sp)
    /* 121E30 8017A9C0 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 121E34 8017A9C4 8FA60018 */  lw         $a2, 0x18($sp)
    /* 121E38 8017A9C8 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 121E3C 8017A9CC 3C188019 */  lui        $t8, %hi(D_8018ED18_ovl5)
    /* 121E40 8017A9D0 2718ED18 */  addiu      $t8, $t8, %lo(D_8018ED18_ovl5)
    /* 121E44 8017A9D4 8CAC0000 */  lw         $t4, 0x0($a1)
    /* 121E48 8017A9D8 00066880 */  sll        $t5, $a2, 2
    /* 121E4C 8017A9DC 01B82021 */  addu       $a0, $t5, $t8
    /* 121E50 8017A9E0 8C830000 */  lw         $v1, 0x0($a0)
    /* 121E54 8017A9E4 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* 121E58 8017A9E8 000C4880 */  sll        $t1, $t4, 2
    /* 121E5C 8017A9EC 3C07800F */  lui        $a3, %hi(D_800E9C60)
    /* 121E60 8017A9F0 00290821 */  addu       $at, $at, $t1
    /* 121E64 8017A9F4 24E79C60 */  addiu      $a3, $a3, %lo(D_800E9C60)
    /* 121E68 8017A9F8 1060000B */  beqz       $v1, .L8017AA28_ovl5
    /* 121E6C 8017A9FC AC239FE0 */   sw        $v1, %lo(D_800E9FE0)($at)
    /* 121E70 8017AA00 24020001 */  addiu      $v0, $zero, 0x1
    /* 121E74 8017AA04 1062000B */  beq        $v1, $v0, .L8017AA34_ovl5
    /* 121E78 8017AA08 240A0003 */   addiu     $t2, $zero, 0x3
    /* 121E7C 8017AA0C 24060002 */  addiu      $a2, $zero, 0x2
    /* 121E80 8017AA10 1066000A */  beq        $v1, $a2, .L8017AA3C_ovl5
    /* 121E84 8017AA14 24010003 */   addiu     $at, $zero, 0x3
    /* 121E88 8017AA18 5061000B */  beql       $v1, $at, .L8017AA48_ovl5
    /* 121E8C 8017AA1C AC860000 */   sw        $a2, 0x0($a0)
    /* 121E90 8017AA20 1000000A */  b          .L8017AA4C_ovl5
    /* 121E94 8017AA24 8CAB0000 */   lw        $t3, 0x0($a1)
  .L8017AA28_ovl5:
    /* 121E98 8017AA28 24020001 */  addiu      $v0, $zero, 0x1
    /* 121E9C 8017AA2C 10000006 */  b          .L8017AA48_ovl5
    /* 121EA0 8017AA30 AC820000 */   sw        $v0, 0x0($a0)
  .L8017AA34_ovl5:
    /* 121EA4 8017AA34 10000004 */  b          .L8017AA48_ovl5
    /* 121EA8 8017AA38 AC8A0000 */   sw        $t2, 0x0($a0)
  .L8017AA3C_ovl5:
    /* 121EAC 8017AA3C 10000002 */  b          .L8017AA48_ovl5
    /* 121EB0 8017AA40 AC800000 */   sw        $zero, 0x0($a0)
    /* 121EB4 8017AA44 AC860000 */  sw         $a2, 0x0($a0)
  .L8017AA48_ovl5:
    /* 121EB8 8017AA48 8CAB0000 */  lw         $t3, 0x0($a1)
  .L8017AA4C_ovl5:
    /* 121EBC 8017AA4C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 121EC0 8017AA50 24190004 */  addiu      $t9, $zero, 0x4
    /* 121EC4 8017AA54 000B7080 */  sll        $t6, $t3, 2
    /* 121EC8 8017AA58 002E0821 */  addu       $at, $at, $t6
    /* 121ECC 8017AA5C AC3998E0 */  sw         $t9, %lo(D_800E98E0)($at)
    /* 121ED0 8017AA60 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 121ED4 8017AA64 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* 121ED8 8017AA68 44812000 */  mtc1       $at, $f4
    /* 121EDC 8017AA6C 000F6880 */  sll        $t5, $t7, 2
    /* 121EE0 8017AA70 00EDC021 */  addu       $t8, $a3, $t5
    /* 121EE4 8017AA74 AF020000 */  sw         $v0, 0x0($t8)
    /* 121EE8 8017AA78 8CAC0000 */  lw         $t4, 0x0($a1)
    /* 121EEC 8017AA7C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 121EF0 8017AA80 000C4880 */  sll        $t1, $t4, 2
    /* 121EF4 8017AA84 00290821 */  addu       $at, $at, $t1
    /* 121EF8 8017AA88 10000039 */  b          .L8017AB70_ovl5
    /* 121EFC 8017AA8C E424A6E0 */   swc1      $f4, %lo(D_800EA6E0)($at)
  .L8017AA90_ovl5:
    /* 121F00 8017AA90 11400037 */  beqz       $t2, .L8017AB70_ovl5
    /* 121F04 8017AA94 24040114 */   addiu     $a0, $zero, 0x114
    /* 121F08 8017AA98 0C029D9E */  jal        play_sound
    /* 121F0C 8017AA9C AFA60018 */   sw        $a2, 0x18($sp)
    /* 121F10 8017AAA0 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 121F14 8017AAA4 8FA60018 */  lw         $a2, 0x18($sp)
    /* 121F18 8017AAA8 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 121F1C 8017AAAC 3C198019 */  lui        $t9, %hi(D_8018ED18_ovl5)
    /* 121F20 8017AAB0 2739ED18 */  addiu      $t9, $t9, %lo(D_8018ED18_ovl5)
    /* 121F24 8017AAB4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 121F28 8017AAB8 00065880 */  sll        $t3, $a2, 2
    /* 121F2C 8017AABC 01792021 */  addu       $a0, $t3, $t9
    /* 121F30 8017AAC0 8C830000 */  lw         $v1, 0x0($a0)
    /* 121F34 8017AAC4 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* 121F38 8017AAC8 000E7880 */  sll        $t7, $t6, 2
    /* 121F3C 8017AACC 3C07800F */  lui        $a3, %hi(D_800E9C60)
    /* 121F40 8017AAD0 002F0821 */  addu       $at, $at, $t7
    /* 121F44 8017AAD4 24E79C60 */  addiu      $a3, $a3, %lo(D_800E9C60)
    /* 121F48 8017AAD8 1060000C */  beqz       $v1, .L8017AB0C_ovl5
    /* 121F4C 8017AADC AC239FE0 */   sw        $v1, %lo(D_800E9FE0)($at)
    /* 121F50 8017AAE0 24020001 */  addiu      $v0, $zero, 0x1
    /* 121F54 8017AAE4 1062000C */  beq        $v1, $v0, .L8017AB18_ovl5
    /* 121F58 8017AAE8 24060002 */   addiu     $a2, $zero, 0x2
    /* 121F5C 8017AAEC 24060002 */  addiu      $a2, $zero, 0x2
    /* 121F60 8017AAF0 1066000B */  beq        $v1, $a2, .L8017AB20_ovl5
    /* 121F64 8017AAF4 240D0003 */   addiu     $t5, $zero, 0x3
    /* 121F68 8017AAF8 24010003 */  addiu      $at, $zero, 0x3
    /* 121F6C 8017AAFC 5061000B */  beql       $v1, $at, .L8017AB2C_ovl5
    /* 121F70 8017AB00 AC820000 */   sw        $v0, 0x0($a0)
    /* 121F74 8017AB04 1000000A */  b          .L8017AB30_ovl5
    /* 121F78 8017AB08 8CAC0000 */   lw        $t4, 0x0($a1)
  .L8017AB0C_ovl5:
    /* 121F7C 8017AB0C 24060002 */  addiu      $a2, $zero, 0x2
    /* 121F80 8017AB10 10000006 */  b          .L8017AB2C_ovl5
    /* 121F84 8017AB14 AC860000 */   sw        $a2, 0x0($a0)
  .L8017AB18_ovl5:
    /* 121F88 8017AB18 10000004 */  b          .L8017AB2C_ovl5
    /* 121F8C 8017AB1C AC800000 */   sw        $zero, 0x0($a0)
  .L8017AB20_ovl5:
    /* 121F90 8017AB20 10000002 */  b          .L8017AB2C_ovl5
    /* 121F94 8017AB24 AC8D0000 */   sw        $t5, 0x0($a0)
    /* 121F98 8017AB28 AC820000 */  sw         $v0, 0x0($a0)
  .L8017AB2C_ovl5:
    /* 121F9C 8017AB2C 8CAC0000 */  lw         $t4, 0x0($a1)
  .L8017AB30_ovl5:
    /* 121FA0 8017AB30 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 121FA4 8017AB34 24180004 */  addiu      $t8, $zero, 0x4
    /* 121FA8 8017AB38 000C4880 */  sll        $t1, $t4, 2
    /* 121FAC 8017AB3C 00290821 */  addu       $at, $at, $t1
    /* 121FB0 8017AB40 AC3898E0 */  sw         $t8, %lo(D_800E98E0)($at)
    /* 121FB4 8017AB44 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 121FB8 8017AB48 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* 121FBC 8017AB4C 44813000 */  mtc1       $at, $f6
    /* 121FC0 8017AB50 000A5880 */  sll        $t3, $t2, 2
    /* 121FC4 8017AB54 00EBC821 */  addu       $t9, $a3, $t3
    /* 121FC8 8017AB58 AF260000 */  sw         $a2, 0x0($t9)
    /* 121FCC 8017AB5C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 121FD0 8017AB60 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 121FD4 8017AB64 000E7880 */  sll        $t7, $t6, 2
    /* 121FD8 8017AB68 002F0821 */  addu       $at, $at, $t7
    /* 121FDC 8017AB6C E426A6E0 */  swc1       $f6, %lo(D_800EA6E0)($at)
  .L8017AB70_ovl5:
    /* 121FE0 8017AB70 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8017AB74_ovl5:
    /* 121FE4 8017AB74 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 121FE8 8017AB78 03E00008 */  jr         $ra
    /* 121FEC 8017AB7C 00000000 */   nop
endlabel func_8017A71C_ovl5
.size func_8017A71C_ovl5, . - func_8017A71C_ovl5
