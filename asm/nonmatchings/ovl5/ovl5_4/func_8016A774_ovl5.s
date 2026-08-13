nonmatching func_8016A774_ovl5, 0xFE0

glabel func_8016A774_ovl5
    /* 111BE4 8016A774 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 111BE8 8016A778 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 111BEC 8016A77C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 111BF0 8016A780 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 111BF4 8016A784 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 111BF8 8016A788 AFB70034 */  sw         $s7, 0x34($sp)
    /* 111BFC 8016A78C AFB60030 */  sw         $s6, 0x30($sp)
    /* 111C00 8016A790 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 111C04 8016A794 AFB40028 */  sw         $s4, 0x28($sp)
    /* 111C08 8016A798 AFB30024 */  sw         $s3, 0x24($sp)
    /* 111C0C 8016A79C AFB20020 */  sw         $s2, 0x20($sp)
    /* 111C10 8016A7A0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 111C14 8016A7A4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 111C18 8016A7A8 AFA40088 */  sw         $a0, 0x88($sp)
    /* 111C1C 8016A7AC AFA5008C */  sw         $a1, 0x8C($sp)
    /* 111C20 8016A7B0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 111C24 8016A7B4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 111C28 8016A7B8 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 111C2C 8016A7BC 000FC080 */  sll        $t8, $t7, 2
    /* 111C30 8016A7C0 00982021 */  addu       $a0, $a0, $t8
    /* 111C34 8016A7C4 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 111C38 8016A7C8 0C02C7DA */  jal        setProcessMain
    /* 111C3C 8016A7CC 24A51434 */   addiu     $a1, $a1, %lo(procMainStub)
    /* 111C40 8016A7D0 8FB9008C */  lw         $t9, 0x8C($sp)
    /* 111C44 8016A7D4 24010001 */  addiu      $at, $zero, 0x1
    /* 111C48 8016A7D8 17200006 */  bnez       $t9, .L8016A7F4_ovl5
    /* 111C4C 8016A7DC 3C118019 */   lui       $s1, %hi(D_8018E264_ovl5)
    /* 111C50 8016A7E0 2631E264 */  addiu      $s1, $s1, %lo(D_8018E264_ovl5)
    /* 111C54 8016A7E4 8E280000 */  lw         $t0, 0x0($s1)
    /* 111C58 8016A7E8 3C108019 */  lui        $s0, %hi(D_8018E43C_ovl5)
    /* 111C5C 8016A7EC 2610E43C */  addiu      $s0, $s0, %lo(D_8018E43C_ovl5)
    /* 111C60 8016A7F0 AE080000 */  sw         $t0, 0x0($s0)
  .L8016A7F4_ovl5:
    /* 111C64 8016A7F4 8FA9008C */  lw         $t1, 0x8C($sp)
    /* 111C68 8016A7F8 3C108019 */  lui        $s0, %hi(D_8018E43C_ovl5)
    /* 111C6C 8016A7FC 3C118019 */  lui        $s1, %hi(D_8018E264_ovl5)
    /* 111C70 8016A800 2631E264 */  addiu      $s1, $s1, %lo(D_8018E264_ovl5)
    /* 111C74 8016A804 1521001D */  bne        $t1, $at, .L8016A87C_ovl5
    /* 111C78 8016A808 2610E43C */   addiu     $s0, $s0, %lo(D_8018E43C_ovl5)
    /* 111C7C 8016A80C 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 111C80 8016A810 8E2A0000 */  lw         $t2, 0x0($s1)
    /* 111C84 8016A814 3C014307 */  lui        $at, (0x43070000 >> 16)
    /* 111C88 8016A818 448B4000 */  mtc1       $t3, $f8
    /* 111C8C 8016A81C 448A2000 */  mtc1       $t2, $f4
    /* 111C90 8016A820 44818000 */  mtc1       $at, $f16
    /* 111C94 8016A824 468042A0 */  cvt.s.w    $f10, $f8
    /* 111C98 8016A828 468021A0 */  cvt.s.w    $f6, $f4
    /* 111C9C 8016A82C 46105480 */  add.s      $f18, $f10, $f16
    /* 111CA0 8016A830 4612303C */  c.lt.s     $f6, $f18
    /* 111CA4 8016A834 00000000 */  nop
    /* 111CA8 8016A838 45000010 */  bc1f       .L8016A87C_ovl5
    /* 111CAC 8016A83C 00000000 */   nop
  .L8016A840_ovl5:
    /* 111CB0 8016A840 0C002DAF */  jal        ohSleep
    /* 111CB4 8016A844 24040001 */   addiu     $a0, $zero, 0x1
    /* 111CB8 8016A848 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 111CBC 8016A84C 8E2C0000 */  lw         $t4, 0x0($s1)
    /* 111CC0 8016A850 3C014307 */  lui        $at, (0x43070000 >> 16)
    /* 111CC4 8016A854 448D5000 */  mtc1       $t5, $f10
    /* 111CC8 8016A858 448C2000 */  mtc1       $t4, $f4
    /* 111CCC 8016A85C 44813000 */  mtc1       $at, $f6
    /* 111CD0 8016A860 46805420 */  cvt.s.w    $f16, $f10
    /* 111CD4 8016A864 46802220 */  cvt.s.w    $f8, $f4
    /* 111CD8 8016A868 46068480 */  add.s      $f18, $f16, $f6
    /* 111CDC 8016A86C 4612403C */  c.lt.s     $f8, $f18
    /* 111CE0 8016A870 00000000 */  nop
    /* 111CE4 8016A874 4501FFF2 */  bc1t       .L8016A840_ovl5
    /* 111CE8 8016A878 00000000 */   nop
  .L8016A87C_ovl5:
    /* 111CEC 8016A87C 3C0E8019 */  lui        $t6, %hi(D_8018E260_ovl5)
    /* 111CF0 8016A880 8DCEE260 */  lw         $t6, %lo(D_8018E260_ovl5)($t6)
    /* 111CF4 8016A884 11C00004 */  beqz       $t6, .L8016A898_ovl5
    /* 111CF8 8016A888 3C0F8005 */   lui       $t7, %hi(omCurrentObj)
    /* 111CFC 8016A88C 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 111D00 8016A890 0C02C640 */  jal        func_800B1900
    /* 111D04 8016A894 95E40002 */   lhu       $a0, 0x2($t7)
  .L8016A898_ovl5:
    /* 111D08 8016A898 8FB8008C */  lw         $t8, 0x8C($sp)
    /* 111D0C 8016A89C 57000004 */  bnel       $t8, $zero, .L8016A8B0_ovl5
    /* 111D10 8016A8A0 24040009 */   addiu     $a0, $zero, 0x9
    /* 111D14 8016A8A4 10000002 */  b          .L8016A8B0_ovl5
    /* 111D18 8016A8A8 00002025 */   or        $a0, $zero, $zero
    /* 111D1C 8016A8AC 24040009 */  addiu      $a0, $zero, 0x9
  .L8016A8B0_ovl5:
    /* 111D20 8016A8B0 0C059631 */  jal        func_801658C4_ovl5
    /* 111D24 8016A8B4 00808825 */   or        $s1, $a0, $zero
    /* 111D28 8016A8B8 3C128019 */  lui        $s2, %hi(D_8018E2A0_ovl5)
    /* 111D2C 8016A8BC 2652E2A0 */  addiu      $s2, $s2, %lo(D_8018E2A0_ovl5)
    /* 111D30 8016A8C0 0011C880 */  sll        $t9, $s1, 2
    /* 111D34 8016A8C4 02598021 */  addu       $s0, $s2, $t9
    /* 111D38 8016A8C8 27B60068 */  addiu      $s6, $sp, 0x68
    /* 111D3C 8016A8CC 02C02025 */  or         $a0, $s6, $zero
    /* 111D40 8016A8D0 8E060000 */  lw         $a2, 0x0($s0)
    /* 111D44 8016A8D4 0C02C8D0 */  jal        func_800B2340
    /* 111D48 8016A8D8 00402825 */   or        $a1, $v0, $zero
    /* 111D4C 8016A8DC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 111D50 8016A8E0 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 111D54 8016A8E4 C7A40068 */  lwc1       $f4, 0x68($sp)
    /* 111D58 8016A8E8 3C17800E */  lui        $s7, %hi(gEntitiesNextPosXArray)
    /* 111D5C 8016A8EC 8C480000 */  lw         $t0, 0x0($v0)
    /* 111D60 8016A8F0 26F725D0 */  addiu      $s7, $s7, %lo(gEntitiesNextPosXArray)
    /* 111D64 8016A8F4 44805000 */  mtc1       $zero, $f10
    /* 111D68 8016A8F8 00084880 */  sll        $t1, $t0, 2
    /* 111D6C 8016A8FC 02E95021 */  addu       $t2, $s7, $t1
    /* 111D70 8016A900 E5440000 */  swc1       $f4, 0x0($t2)
    /* 111D74 8016A904 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 111D78 8016A908 3C1E800E */  lui        $fp, %hi(gEntitiesNextPosYArray)
    /* 111D7C 8016A90C 27DE2790 */  addiu      $fp, $fp, %lo(gEntitiesNextPosYArray)
    /* 111D80 8016A910 000B6080 */  sll        $t4, $t3, 2
    /* 111D84 8016A914 03CC6821 */  addu       $t5, $fp, $t4
    /* 111D88 8016A918 E5AA0000 */  swc1       $f10, 0x0($t5)
    /* 111D8C 8016A91C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 111D90 8016A920 C7B00070 */  lwc1       $f16, 0x70($sp)
    /* 111D94 8016A924 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 111D98 8016A928 000E7880 */  sll        $t7, $t6, 2
    /* 111D9C 8016A92C 002F0821 */  addu       $at, $at, $t7
    /* 111DA0 8016A930 E4302950 */  swc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* 111DA4 8016A934 8C580000 */  lw         $t8, 0x0($v0)
    /* 111DA8 8016A938 3C01430C */  lui        $at, (0x430C0000 >> 16)
    /* 111DAC 8016A93C 44813000 */  mtc1       $at, $f6
    /* 111DB0 8016A940 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 111DB4 8016A944 0018C880 */  sll        $t9, $t8, 2
    /* 111DB8 8016A948 00390821 */  addu       $at, $at, $t9
    /* 111DBC 8016A94C E4263050 */  swc1       $f6, %lo(D_800E3050)($at)
    /* 111DC0 8016A950 8E030000 */  lw         $v1, 0x0($s0)
    /* 111DC4 8016A954 3C14800F */  lui        $s4, %hi(D_800E98E0)
    /* 111DC8 8016A958 269498E0 */  addiu      $s4, $s4, %lo(D_800E98E0)
    /* 111DCC 8016A95C 00031880 */  sll        $v1, $v1, 2
    /* 111DD0 8016A960 02833021 */  addu       $a2, $s4, $v1
    /* 111DD4 8016A964 8CC80000 */  lw         $t0, 0x0($a2)
    /* 111DD8 8016A968 24150002 */  addiu      $s5, $zero, 0x2
    /* 111DDC 8016A96C 16A80009 */  bne        $s5, $t0, .L8016A994_ovl5
    /* 111DE0 8016A970 3C13800E */   lui       $s3, %hi(gEntityGObjProcessArray)
    /* 111DE4 8016A974 2673E510 */  addiu      $s3, $s3, %lo(gEntityGObjProcessArray)
    /* 111DE8 8016A978 02634821 */  addu       $t1, $s3, $v1
    /* 111DEC 8016A97C 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 111DF0 8016A980 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 111DF4 8016A984 0C02C7B2 */  jal        assign_new_process_entry
    /* 111DF8 8016A988 8D240000 */   lw        $a0, 0x0($t1)
    /* 111DFC 8016A98C 1000000D */  b          .L8016A9C4_ovl5
    /* 111E00 8016A990 02208025 */   or        $s0, $s1, $zero
  .L8016A994_ovl5:
    /* 111E04 8016A994 3C13800E */  lui        $s3, %hi(gEntityGObjProcessArray)
    /* 111E08 8016A998 2673E510 */  addiu      $s3, $s3, %lo(gEntityGObjProcessArray)
    /* 111E0C 8016A99C 240A0001 */  addiu      $t2, $zero, 0x1
    /* 111E10 8016A9A0 02635821 */  addu       $t3, $s3, $v1
    /* 111E14 8016A9A4 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 111E18 8016A9A8 ACCA0000 */  sw         $t2, 0x0($a2)
    /* 111E1C 8016A9AC 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 111E20 8016A9B0 0C02C7B2 */  jal        assign_new_process_entry
    /* 111E24 8016A9B4 8D640000 */   lw        $a0, 0x0($t3)
    /* 111E28 8016A9B8 0C029D9E */  jal        play_sound
    /* 111E2C 8016A9BC 2404010A */   addiu     $a0, $zero, 0x10A
    /* 111E30 8016A9C0 02208025 */  or         $s0, $s1, $zero
  .L8016A9C4_ovl5:
    /* 111E34 8016A9C4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 111E38 8016A9C8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 111E3C 8016A9CC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 111E40 8016A9D0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 111E44 8016A9D4 000C6880 */  sll        $t5, $t4, 2
    /* 111E48 8016A9D8 02ED7021 */  addu       $t6, $s7, $t5
    /* 111E4C 8016A9DC C5C80000 */  lwc1       $f8, 0x0($t6)
    /* 111E50 8016A9E0 E7A80068 */  swc1       $f8, 0x68($sp)
    /* 111E54 8016A9E4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 111E58 8016A9E8 000FC080 */  sll        $t8, $t7, 2
    /* 111E5C 8016A9EC 03D8C821 */  addu       $t9, $fp, $t8
    /* 111E60 8016A9F0 C7320000 */  lwc1       $f18, 0x0($t9)
    /* 111E64 8016A9F4 E7B2006C */  swc1       $f18, 0x6C($sp)
    /* 111E68 8016A9F8 8C480000 */  lw         $t0, 0x0($v0)
    /* 111E6C 8016A9FC 00084880 */  sll        $t1, $t0, 2
    /* 111E70 8016AA00 00290821 */  addu       $at, $at, $t1
    /* 111E74 8016AA04 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
    /* 111E78 8016AA08 E7A40070 */  swc1       $f4, 0x70($sp)
    /* 111E7C 8016AA0C 8ECB0000 */  lw         $t3, 0x0($s6)
    /* 111E80 8016AA10 AFAB0000 */  sw         $t3, 0x0($sp)
    /* 111E84 8016AA14 8EC50004 */  lw         $a1, 0x4($s6)
    /* 111E88 8016AA18 8FA40000 */  lw         $a0, 0x0($sp)
    /* 111E8C 8016AA1C AFA50004 */  sw         $a1, 0x4($sp)
    /* 111E90 8016AA20 8EC60008 */  lw         $a2, 0x8($s6)
    /* 111E94 8016AA24 0C059815 */  jal        func_80166054_ovl5
    /* 111E98 8016AA28 AFA60008 */   sw        $a2, 0x8($sp)
    /* 111E9C 8016AA2C 2401029A */  addiu      $at, $zero, 0x29A
    /* 111EA0 8016AA30 10410027 */  beq        $v0, $at, .L8016AAD0_ovl5
    /* 111EA4 8016AA34 00408825 */   or        $s1, $v0, $zero
    /* 111EA8 8016AA38 10500021 */  beq        $v0, $s0, .L8016AAC0_ovl5
    /* 111EAC 8016AA3C 00026080 */   sll       $t4, $v0, 2
    /* 111EB0 8016AA40 024C6821 */  addu       $t5, $s2, $t4
    /* 111EB4 8016AA44 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 111EB8 8016AA48 00024080 */  sll        $t0, $v0, 2
    /* 111EBC 8016AA4C 00116880 */  sll        $t5, $s1, 2
    /* 111EC0 8016AA50 000E7880 */  sll        $t7, $t6, 2
    /* 111EC4 8016AA54 028FC021 */  addu       $t8, $s4, $t7
    /* 111EC8 8016AA58 8F190000 */  lw         $t9, 0x0($t8)
    /* 111ECC 8016AA5C 02484821 */  addu       $t1, $s2, $t0
    /* 111ED0 8016AA60 240F0001 */  addiu      $t7, $zero, 0x1
    /* 111ED4 8016AA64 16B9000A */  bne        $s5, $t9, .L8016AA90_ovl5
    /* 111ED8 8016AA68 024D7021 */   addu      $t6, $s2, $t5
    /* 111EDC 8016AA6C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 111EE0 8016AA70 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 111EE4 8016AA74 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 111EE8 8016AA78 000A5880 */  sll        $t3, $t2, 2
    /* 111EEC 8016AA7C 026B6021 */  addu       $t4, $s3, $t3
    /* 111EF0 8016AA80 0C02C7B2 */  jal        assign_new_process_entry
    /* 111EF4 8016AA84 8D840000 */   lw        $a0, 0x0($t4)
    /* 111EF8 8016AA88 1000000D */  b          .L8016AAC0_ovl5
    /* 111EFC 8016AA8C 02208025 */   or        $s0, $s1, $zero
  .L8016AA90_ovl5:
    /* 111F00 8016AA90 8DC30000 */  lw         $v1, 0x0($t6)
    /* 111F04 8016AA94 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 111F08 8016AA98 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 111F0C 8016AA9C 00031880 */  sll        $v1, $v1, 2
    /* 111F10 8016AAA0 0283C021 */  addu       $t8, $s4, $v1
    /* 111F14 8016AAA4 AF0F0000 */  sw         $t7, 0x0($t8)
    /* 111F18 8016AAA8 0263C821 */  addu       $t9, $s3, $v1
    /* 111F1C 8016AAAC 0C02C7B2 */  jal        assign_new_process_entry
    /* 111F20 8016AAB0 8F240000 */   lw        $a0, 0x0($t9)
    /* 111F24 8016AAB4 0C029D9E */  jal        play_sound
    /* 111F28 8016AAB8 2404010A */   addiu     $a0, $zero, 0x10A
    /* 111F2C 8016AABC 02208025 */  or         $s0, $s1, $zero
  .L8016AAC0_ovl5:
    /* 111F30 8016AAC0 0C002DAF */  jal        ohSleep
    /* 111F34 8016AAC4 24040001 */   addiu     $a0, $zero, 0x1
    /* 111F38 8016AAC8 1000FFBE */  b          .L8016A9C4_ovl5
    /* 111F3C 8016AACC 00000000 */   nop
  .L8016AAD0_ovl5:
    /* 111F40 8016AAD0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 111F44 8016AAD4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 111F48 8016AAD8 44805000 */  mtc1       $zero, $f10
    /* 111F4C 8016AADC 3C05800E */  lui        $a1, %hi(D_800E3910)
    /* 111F50 8016AAE0 8C480000 */  lw         $t0, 0x0($v0)
    /* 111F54 8016AAE4 24A53910 */  addiu      $a1, $a1, %lo(D_800E3910)
    /* 111F58 8016AAE8 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 111F5C 8016AAEC 00084880 */  sll        $t1, $t0, 2
    /* 111F60 8016AAF0 00A95021 */  addu       $t2, $a1, $t1
    /* 111F64 8016AAF4 E54A0000 */  swc1       $f10, 0x0($t2)
    /* 111F68 8016AAF8 8C430000 */  lw         $v1, 0x0($v0)
    /* 111F6C 8016AAFC 3C06800E */  lui        $a2, %hi(D_800E3E50)
    /* 111F70 8016AB00 24C63E50 */  addiu      $a2, $a2, %lo(D_800E3E50)
    /* 111F74 8016AB04 00031880 */  sll        $v1, $v1, 2
    /* 111F78 8016AB08 00A35821 */  addu       $t3, $a1, $v1
    /* 111F7C 8016AB0C C5600000 */  lwc1       $f0, 0x0($t3)
    /* 111F80 8016AB10 00230821 */  addu       $at, $at, $v1
    /* 111F84 8016AB14 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
    /* 111F88 8016AB18 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 111F8C 8016AB1C 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 111F90 8016AB20 000C6880 */  sll        $t5, $t4, 2
    /* 111F94 8016AB24 002D0821 */  addu       $at, $at, $t5
    /* 111F98 8016AB28 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
    /* 111F9C 8016AB2C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 111FA0 8016AB30 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 111FA4 8016AB34 000E7880 */  sll        $t7, $t6, 2
    /* 111FA8 8016AB38 002F0821 */  addu       $at, $at, $t7
    /* 111FAC 8016AB3C E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* 111FB0 8016AB40 8C580000 */  lw         $t8, 0x0($v0)
    /* 111FB4 8016AB44 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 111FB8 8016AB48 0018C880 */  sll        $t9, $t8, 2
    /* 111FBC 8016AB4C 00390821 */  addu       $at, $at, $t9
    /* 111FC0 8016AB50 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* 111FC4 8016AB54 8C480000 */  lw         $t0, 0x0($v0)
    /* 111FC8 8016AB58 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 111FCC 8016AB5C 00084880 */  sll        $t1, $t0, 2
    /* 111FD0 8016AB60 00290821 */  addu       $at, $at, $t1
    /* 111FD4 8016AB64 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* 111FD8 8016AB68 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 111FDC 8016AB6C 3C018019 */  lui        $at, %hi(D_8018D744_ovl5)
    /* 111FE0 8016AB70 C430D744 */  lwc1       $f16, %lo(D_8018D744_ovl5)($at)
    /* 111FE4 8016AB74 000A5880 */  sll        $t3, $t2, 2
    /* 111FE8 8016AB78 00CB6021 */  addu       $t4, $a2, $t3
    /* 111FEC 8016AB7C E5900000 */  swc1       $f16, 0x0($t4)
    /* 111FF0 8016AB80 8C430000 */  lw         $v1, 0x0($v0)
    /* 111FF4 8016AB84 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 111FF8 8016AB88 8FB8008C */  lw         $t8, 0x8C($sp)
    /* 111FFC 8016AB8C 00031880 */  sll        $v1, $v1, 2
    /* 112000 8016AB90 00C36821 */  addu       $t5, $a2, $v1
    /* 112004 8016AB94 C5A20000 */  lwc1       $f2, 0x0($t5)
    /* 112008 8016AB98 00230821 */  addu       $at, $at, $v1
    /* 11200C 8016AB9C E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
    /* 112010 8016ABA0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 112014 8016ABA4 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* 112018 8016ABA8 000E7880 */  sll        $t7, $t6, 2
    /* 11201C 8016ABAC 002F0821 */  addu       $at, $at, $t7
    /* 112020 8016ABB0 17000003 */  bnez       $t8, .L8016ABC0_ovl5
    /* 112024 8016ABB4 E4223AD0 */   swc1      $f2, %lo(D_800E3AD0)($at)
    /* 112028 8016ABB8 10000002 */  b          .L8016ABC4_ovl5
    /* 11202C 8016ABBC 2404000F */   addiu     $a0, $zero, 0xF
  .L8016ABC0_ovl5:
    /* 112030 8016ABC0 24040016 */  addiu      $a0, $zero, 0x16
  .L8016ABC4_ovl5:
    /* 112034 8016ABC4 0C059631 */  jal        func_801658C4_ovl5
    /* 112038 8016ABC8 00808825 */   or        $s1, $a0, $zero
    /* 11203C 8016ABCC 0011C880 */  sll        $t9, $s1, 2
    /* 112040 8016ABD0 02598021 */  addu       $s0, $s2, $t9
    /* 112044 8016ABD4 8E060000 */  lw         $a2, 0x0($s0)
    /* 112048 8016ABD8 02C02025 */  or         $a0, $s6, $zero
    /* 11204C 8016ABDC 0C02C8D0 */  jal        func_800B2340
    /* 112050 8016ABE0 00402825 */   or        $a1, $v0, $zero
    /* 112054 8016ABE4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 112058 8016ABE8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11205C 8016ABEC C7A60068 */  lwc1       $f6, 0x68($sp)
    /* 112060 8016ABF0 44804000 */  mtc1       $zero, $f8
    /* 112064 8016ABF4 8C480000 */  lw         $t0, 0x0($v0)
    /* 112068 8016ABF8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 11206C 8016ABFC 00084880 */  sll        $t1, $t0, 2
    /* 112070 8016AC00 02E95021 */  addu       $t2, $s7, $t1
    /* 112074 8016AC04 E5460000 */  swc1       $f6, 0x0($t2)
    /* 112078 8016AC08 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 11207C 8016AC0C 000B6080 */  sll        $t4, $t3, 2
    /* 112080 8016AC10 03CC6821 */  addu       $t5, $fp, $t4
    /* 112084 8016AC14 E5A80000 */  swc1       $f8, 0x0($t5)
    /* 112088 8016AC18 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11208C 8016AC1C C7B20070 */  lwc1       $f18, 0x70($sp)
    /* 112090 8016AC20 000E7880 */  sll        $t7, $t6, 2
    /* 112094 8016AC24 002F0821 */  addu       $at, $at, $t7
    /* 112098 8016AC28 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* 11209C 8016AC2C 8C580000 */  lw         $t8, 0x0($v0)
    /* 1120A0 8016AC30 3C01430C */  lui        $at, (0x430C0000 >> 16)
    /* 1120A4 8016AC34 44812000 */  mtc1       $at, $f4
    /* 1120A8 8016AC38 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 1120AC 8016AC3C 0018C880 */  sll        $t9, $t8, 2
    /* 1120B0 8016AC40 00390821 */  addu       $at, $at, $t9
    /* 1120B4 8016AC44 E42433D0 */  swc1       $f4, %lo(D_800E33D0)($at)
    /* 1120B8 8016AC48 8E030000 */  lw         $v1, 0x0($s0)
    /* 1120BC 8016AC4C 00031880 */  sll        $v1, $v1, 2
    /* 1120C0 8016AC50 02833021 */  addu       $a2, $s4, $v1
    /* 1120C4 8016AC54 8CC80000 */  lw         $t0, 0x0($a2)
    /* 1120C8 8016AC58 16A80007 */  bne        $s5, $t0, .L8016AC78_ovl5
    /* 1120CC 8016AC5C 02634821 */   addu      $t1, $s3, $v1
    /* 1120D0 8016AC60 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 1120D4 8016AC64 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 1120D8 8016AC68 0C02C7B2 */  jal        assign_new_process_entry
    /* 1120DC 8016AC6C 8D240000 */   lw        $a0, 0x0($t1)
    /* 1120E0 8016AC70 1000000B */  b          .L8016ACA0_ovl5
    /* 1120E4 8016AC74 02208025 */   or        $s0, $s1, $zero
  .L8016AC78_ovl5:
    /* 1120E8 8016AC78 240A0001 */  addiu      $t2, $zero, 0x1
    /* 1120EC 8016AC7C 02635821 */  addu       $t3, $s3, $v1
    /* 1120F0 8016AC80 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 1120F4 8016AC84 ACCA0000 */  sw         $t2, 0x0($a2)
    /* 1120F8 8016AC88 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 1120FC 8016AC8C 0C02C7B2 */  jal        assign_new_process_entry
    /* 112100 8016AC90 8D640000 */   lw        $a0, 0x0($t3)
    /* 112104 8016AC94 0C029D9E */  jal        play_sound
    /* 112108 8016AC98 2404010A */   addiu     $a0, $zero, 0x10A
    /* 11210C 8016AC9C 02208025 */  or         $s0, $s1, $zero
  .L8016ACA0_ovl5:
    /* 112110 8016ACA0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 112114 8016ACA4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 112118 8016ACA8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 11211C 8016ACAC 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 112120 8016ACB0 000C6880 */  sll        $t5, $t4, 2
    /* 112124 8016ACB4 02ED7021 */  addu       $t6, $s7, $t5
    /* 112128 8016ACB8 C5CA0000 */  lwc1       $f10, 0x0($t6)
    /* 11212C 8016ACBC E7AA0068 */  swc1       $f10, 0x68($sp)
    /* 112130 8016ACC0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 112134 8016ACC4 000FC080 */  sll        $t8, $t7, 2
    /* 112138 8016ACC8 03D8C821 */  addu       $t9, $fp, $t8
    /* 11213C 8016ACCC C7300000 */  lwc1       $f16, 0x0($t9)
    /* 112140 8016ACD0 E7B0006C */  swc1       $f16, 0x6C($sp)
    /* 112144 8016ACD4 8C480000 */  lw         $t0, 0x0($v0)
    /* 112148 8016ACD8 00084880 */  sll        $t1, $t0, 2
    /* 11214C 8016ACDC 00290821 */  addu       $at, $at, $t1
    /* 112150 8016ACE0 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* 112154 8016ACE4 E7A60070 */  swc1       $f6, 0x70($sp)
    /* 112158 8016ACE8 8ECB0000 */  lw         $t3, 0x0($s6)
    /* 11215C 8016ACEC AFAB0000 */  sw         $t3, 0x0($sp)
    /* 112160 8016ACF0 8EC50004 */  lw         $a1, 0x4($s6)
    /* 112164 8016ACF4 8FA40000 */  lw         $a0, 0x0($sp)
    /* 112168 8016ACF8 AFA50004 */  sw         $a1, 0x4($sp)
    /* 11216C 8016ACFC 8EC60008 */  lw         $a2, 0x8($s6)
    /* 112170 8016AD00 0C059815 */  jal        func_80166054_ovl5
    /* 112174 8016AD04 AFA60008 */   sw        $a2, 0x8($sp)
    /* 112178 8016AD08 2401029A */  addiu      $at, $zero, 0x29A
    /* 11217C 8016AD0C 10410027 */  beq        $v0, $at, .L8016ADAC_ovl5
    /* 112180 8016AD10 00408825 */   or        $s1, $v0, $zero
    /* 112184 8016AD14 10500021 */  beq        $v0, $s0, .L8016AD9C_ovl5
    /* 112188 8016AD18 00026080 */   sll       $t4, $v0, 2
    /* 11218C 8016AD1C 024C6821 */  addu       $t5, $s2, $t4
    /* 112190 8016AD20 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 112194 8016AD24 00024080 */  sll        $t0, $v0, 2
    /* 112198 8016AD28 00116880 */  sll        $t5, $s1, 2
    /* 11219C 8016AD2C 000E7880 */  sll        $t7, $t6, 2
    /* 1121A0 8016AD30 028FC021 */  addu       $t8, $s4, $t7
    /* 1121A4 8016AD34 8F190000 */  lw         $t9, 0x0($t8)
    /* 1121A8 8016AD38 02484821 */  addu       $t1, $s2, $t0
    /* 1121AC 8016AD3C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1121B0 8016AD40 16B9000A */  bne        $s5, $t9, .L8016AD6C_ovl5
    /* 1121B4 8016AD44 024D7021 */   addu      $t6, $s2, $t5
    /* 1121B8 8016AD48 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 1121BC 8016AD4C 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 1121C0 8016AD50 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 1121C4 8016AD54 000A5880 */  sll        $t3, $t2, 2
    /* 1121C8 8016AD58 026B6021 */  addu       $t4, $s3, $t3
    /* 1121CC 8016AD5C 0C02C7B2 */  jal        assign_new_process_entry
    /* 1121D0 8016AD60 8D840000 */   lw        $a0, 0x0($t4)
    /* 1121D4 8016AD64 1000000D */  b          .L8016AD9C_ovl5
    /* 1121D8 8016AD68 02208025 */   or        $s0, $s1, $zero
  .L8016AD6C_ovl5:
    /* 1121DC 8016AD6C 8DC30000 */  lw         $v1, 0x0($t6)
    /* 1121E0 8016AD70 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 1121E4 8016AD74 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 1121E8 8016AD78 00031880 */  sll        $v1, $v1, 2
    /* 1121EC 8016AD7C 0283C021 */  addu       $t8, $s4, $v1
    /* 1121F0 8016AD80 AF0F0000 */  sw         $t7, 0x0($t8)
    /* 1121F4 8016AD84 0263C821 */  addu       $t9, $s3, $v1
    /* 1121F8 8016AD88 0C02C7B2 */  jal        assign_new_process_entry
    /* 1121FC 8016AD8C 8F240000 */   lw        $a0, 0x0($t9)
    /* 112200 8016AD90 0C029D9E */  jal        play_sound
    /* 112204 8016AD94 2404010A */   addiu     $a0, $zero, 0x10A
    /* 112208 8016AD98 02208025 */  or         $s0, $s1, $zero
  .L8016AD9C_ovl5:
    /* 11220C 8016AD9C 0C002DAF */  jal        ohSleep
    /* 112210 8016ADA0 24040001 */   addiu     $a0, $zero, 0x1
    /* 112214 8016ADA4 1000FFBE */  b          .L8016ACA0_ovl5
    /* 112218 8016ADA8 00000000 */   nop
  .L8016ADAC_ovl5:
    /* 11221C 8016ADAC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 112220 8016ADB0 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 112224 8016ADB4 44804000 */  mtc1       $zero, $f8
    /* 112228 8016ADB8 3C05800E */  lui        $a1, %hi(D_800E3910)
    /* 11222C 8016ADBC 8C480000 */  lw         $t0, 0x0($v0)
    /* 112230 8016ADC0 24A53910 */  addiu      $a1, $a1, %lo(D_800E3910)
    /* 112234 8016ADC4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 112238 8016ADC8 00084880 */  sll        $t1, $t0, 2
    /* 11223C 8016ADCC 00A95021 */  addu       $t2, $a1, $t1
    /* 112240 8016ADD0 E5480000 */  swc1       $f8, 0x0($t2)
    /* 112244 8016ADD4 8C430000 */  lw         $v1, 0x0($v0)
    /* 112248 8016ADD8 3C06800E */  lui        $a2, %hi(D_800E3E50)
    /* 11224C 8016ADDC 24C63E50 */  addiu      $a2, $a2, %lo(D_800E3E50)
    /* 112250 8016ADE0 00031880 */  sll        $v1, $v1, 2
    /* 112254 8016ADE4 00A35821 */  addu       $t3, $a1, $v1
    /* 112258 8016ADE8 C5600000 */  lwc1       $f0, 0x0($t3)
    /* 11225C 8016ADEC 00230821 */  addu       $at, $at, $v1
    /* 112260 8016ADF0 24040035 */  addiu      $a0, $zero, 0x35
    /* 112264 8016ADF4 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
    /* 112268 8016ADF8 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 11226C 8016ADFC 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 112270 8016AE00 000C6880 */  sll        $t5, $t4, 2
    /* 112274 8016AE04 002D0821 */  addu       $at, $at, $t5
    /* 112278 8016AE08 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
    /* 11227C 8016AE0C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 112280 8016AE10 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 112284 8016AE14 000E7880 */  sll        $t7, $t6, 2
    /* 112288 8016AE18 002F0821 */  addu       $at, $at, $t7
    /* 11228C 8016AE1C E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* 112290 8016AE20 8C580000 */  lw         $t8, 0x0($v0)
    /* 112294 8016AE24 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 112298 8016AE28 0018C880 */  sll        $t9, $t8, 2
    /* 11229C 8016AE2C 00390821 */  addu       $at, $at, $t9
    /* 1122A0 8016AE30 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* 1122A4 8016AE34 8C480000 */  lw         $t0, 0x0($v0)
    /* 1122A8 8016AE38 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 1122AC 8016AE3C 00084880 */  sll        $t1, $t0, 2
    /* 1122B0 8016AE40 00290821 */  addu       $at, $at, $t1
    /* 1122B4 8016AE44 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* 1122B8 8016AE48 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 1122BC 8016AE4C 3C018019 */  lui        $at, %hi(D_8018D748_ovl5)
    /* 1122C0 8016AE50 C432D748 */  lwc1       $f18, %lo(D_8018D748_ovl5)($at)
    /* 1122C4 8016AE54 000A5880 */  sll        $t3, $t2, 2
    /* 1122C8 8016AE58 00CB6021 */  addu       $t4, $a2, $t3
    /* 1122CC 8016AE5C E5920000 */  swc1       $f18, 0x0($t4)
    /* 1122D0 8016AE60 8C430000 */  lw         $v1, 0x0($v0)
    /* 1122D4 8016AE64 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 1122D8 8016AE68 8FB8008C */  lw         $t8, 0x8C($sp)
    /* 1122DC 8016AE6C 00031880 */  sll        $v1, $v1, 2
    /* 1122E0 8016AE70 00C36821 */  addu       $t5, $a2, $v1
    /* 1122E4 8016AE74 C5A20000 */  lwc1       $f2, 0x0($t5)
    /* 1122E8 8016AE78 00230821 */  addu       $at, $at, $v1
    /* 1122EC 8016AE7C E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
    /* 1122F0 8016AE80 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 1122F4 8016AE84 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* 1122F8 8016AE88 000E7880 */  sll        $t7, $t6, 2
    /* 1122FC 8016AE8C 002F0821 */  addu       $at, $at, $t7
    /* 112300 8016AE90 17000003 */  bnez       $t8, .L8016AEA0_ovl5
    /* 112304 8016AE94 E4223AD0 */   swc1      $f2, %lo(D_800E3AD0)($at)
    /* 112308 8016AE98 10000001 */  b          .L8016AEA0_ovl5
    /* 11230C 8016AE9C 2404003E */   addiu     $a0, $zero, 0x3E
  .L8016AEA0_ovl5:
    /* 112310 8016AEA0 0C059631 */  jal        func_801658C4_ovl5
    /* 112314 8016AEA4 00808825 */   or        $s1, $a0, $zero
    /* 112318 8016AEA8 0011C880 */  sll        $t9, $s1, 2
    /* 11231C 8016AEAC 02598021 */  addu       $s0, $s2, $t9
    /* 112320 8016AEB0 8E060000 */  lw         $a2, 0x0($s0)
    /* 112324 8016AEB4 02C02025 */  or         $a0, $s6, $zero
    /* 112328 8016AEB8 0C02C8D0 */  jal        func_800B2340
    /* 11232C 8016AEBC 00402825 */   or        $a1, $v0, $zero
    /* 112330 8016AEC0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 112334 8016AEC4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 112338 8016AEC8 C7A40068 */  lwc1       $f4, 0x68($sp)
    /* 11233C 8016AECC 44805000 */  mtc1       $zero, $f10
    /* 112340 8016AED0 8C480000 */  lw         $t0, 0x0($v0)
    /* 112344 8016AED4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 112348 8016AED8 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 11234C 8016AEDC 00084880 */  sll        $t1, $t0, 2
    /* 112350 8016AEE0 02E95021 */  addu       $t2, $s7, $t1
    /* 112354 8016AEE4 E5440000 */  swc1       $f4, 0x0($t2)
    /* 112358 8016AEE8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 11235C 8016AEEC 240A0001 */  addiu      $t2, $zero, 0x1
    /* 112360 8016AEF0 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 112364 8016AEF4 000B6080 */  sll        $t4, $t3, 2
    /* 112368 8016AEF8 03CC6821 */  addu       $t5, $fp, $t4
    /* 11236C 8016AEFC E5AA0000 */  swc1       $f10, 0x0($t5)
    /* 112370 8016AF00 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 112374 8016AF04 C7B00070 */  lwc1       $f16, 0x70($sp)
    /* 112378 8016AF08 000E7880 */  sll        $t7, $t6, 2
    /* 11237C 8016AF0C 002F0821 */  addu       $at, $at, $t7
    /* 112380 8016AF10 E4302950 */  swc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* 112384 8016AF14 8C580000 */  lw         $t8, 0x0($v0)
    /* 112388 8016AF18 3C01C30C */  lui        $at, (0xC30C0000 >> 16)
    /* 11238C 8016AF1C 44813000 */  mtc1       $at, $f6
    /* 112390 8016AF20 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 112394 8016AF24 0018C880 */  sll        $t9, $t8, 2
    /* 112398 8016AF28 00390821 */  addu       $at, $at, $t9
    /* 11239C 8016AF2C E4263050 */  swc1       $f6, %lo(D_800E3050)($at)
    /* 1123A0 8016AF30 8E030000 */  lw         $v1, 0x0($s0)
    /* 1123A4 8016AF34 00031880 */  sll        $v1, $v1, 2
    /* 1123A8 8016AF38 02833021 */  addu       $a2, $s4, $v1
    /* 1123AC 8016AF3C 8CC80000 */  lw         $t0, 0x0($a2)
    /* 1123B0 8016AF40 02634821 */  addu       $t1, $s3, $v1
    /* 1123B4 8016AF44 02635821 */  addu       $t3, $s3, $v1
    /* 1123B8 8016AF48 56A80008 */  bnel       $s5, $t0, .L8016AF6C_ovl5
    /* 1123BC 8016AF4C ACCA0000 */   sw        $t2, 0x0($a2)
    /* 1123C0 8016AF50 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 1123C4 8016AF54 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 1123C8 8016AF58 0C02C7B2 */  jal        assign_new_process_entry
    /* 1123CC 8016AF5C 8D240000 */   lw        $a0, 0x0($t1)
    /* 1123D0 8016AF60 10000007 */  b          .L8016AF80_ovl5
    /* 1123D4 8016AF64 02208025 */   or        $s0, $s1, $zero
    /* 1123D8 8016AF68 ACCA0000 */  sw         $t2, 0x0($a2)
  .L8016AF6C_ovl5:
    /* 1123DC 8016AF6C 0C02C7B2 */  jal        assign_new_process_entry
    /* 1123E0 8016AF70 8D640000 */   lw        $a0, 0x0($t3)
    /* 1123E4 8016AF74 0C029D9E */  jal        play_sound
    /* 1123E8 8016AF78 2404010A */   addiu     $a0, $zero, 0x10A
    /* 1123EC 8016AF7C 02208025 */  or         $s0, $s1, $zero
  .L8016AF80_ovl5:
    /* 1123F0 8016AF80 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1123F4 8016AF84 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1123F8 8016AF88 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1123FC 8016AF8C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 112400 8016AF90 000C6880 */  sll        $t5, $t4, 2
    /* 112404 8016AF94 02ED7021 */  addu       $t6, $s7, $t5
    /* 112408 8016AF98 C5C80000 */  lwc1       $f8, 0x0($t6)
    /* 11240C 8016AF9C E7A80068 */  swc1       $f8, 0x68($sp)
    /* 112410 8016AFA0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 112414 8016AFA4 000FC080 */  sll        $t8, $t7, 2
    /* 112418 8016AFA8 03D8C821 */  addu       $t9, $fp, $t8
    /* 11241C 8016AFAC C7320000 */  lwc1       $f18, 0x0($t9)
    /* 112420 8016AFB0 E7B2006C */  swc1       $f18, 0x6C($sp)
    /* 112424 8016AFB4 8C480000 */  lw         $t0, 0x0($v0)
    /* 112428 8016AFB8 00084880 */  sll        $t1, $t0, 2
    /* 11242C 8016AFBC 00290821 */  addu       $at, $at, $t1
    /* 112430 8016AFC0 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
    /* 112434 8016AFC4 E7A40070 */  swc1       $f4, 0x70($sp)
    /* 112438 8016AFC8 8ECB0000 */  lw         $t3, 0x0($s6)
    /* 11243C 8016AFCC AFAB0000 */  sw         $t3, 0x0($sp)
    /* 112440 8016AFD0 8EC50004 */  lw         $a1, 0x4($s6)
    /* 112444 8016AFD4 8FA40000 */  lw         $a0, 0x0($sp)
    /* 112448 8016AFD8 AFA50004 */  sw         $a1, 0x4($sp)
    /* 11244C 8016AFDC 8EC60008 */  lw         $a2, 0x8($s6)
    /* 112450 8016AFE0 0C059815 */  jal        func_80166054_ovl5
    /* 112454 8016AFE4 AFA60008 */   sw        $a2, 0x8($sp)
    /* 112458 8016AFE8 2401029A */  addiu      $at, $zero, 0x29A
    /* 11245C 8016AFEC 10410027 */  beq        $v0, $at, .L8016B08C_ovl5
    /* 112460 8016AFF0 00408825 */   or        $s1, $v0, $zero
    /* 112464 8016AFF4 10500021 */  beq        $v0, $s0, .L8016B07C_ovl5
    /* 112468 8016AFF8 00026080 */   sll       $t4, $v0, 2
    /* 11246C 8016AFFC 024C6821 */  addu       $t5, $s2, $t4
    /* 112470 8016B000 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 112474 8016B004 00024080 */  sll        $t0, $v0, 2
    /* 112478 8016B008 00116880 */  sll        $t5, $s1, 2
    /* 11247C 8016B00C 000E7880 */  sll        $t7, $t6, 2
    /* 112480 8016B010 028FC021 */  addu       $t8, $s4, $t7
    /* 112484 8016B014 8F190000 */  lw         $t9, 0x0($t8)
    /* 112488 8016B018 02484821 */  addu       $t1, $s2, $t0
    /* 11248C 8016B01C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 112490 8016B020 16B9000A */  bne        $s5, $t9, .L8016B04C_ovl5
    /* 112494 8016B024 024D7021 */   addu      $t6, $s2, $t5
    /* 112498 8016B028 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 11249C 8016B02C 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 1124A0 8016B030 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 1124A4 8016B034 000A5880 */  sll        $t3, $t2, 2
    /* 1124A8 8016B038 026B6021 */  addu       $t4, $s3, $t3
    /* 1124AC 8016B03C 0C02C7B2 */  jal        assign_new_process_entry
    /* 1124B0 8016B040 8D840000 */   lw        $a0, 0x0($t4)
    /* 1124B4 8016B044 1000000D */  b          .L8016B07C_ovl5
    /* 1124B8 8016B048 02208025 */   or        $s0, $s1, $zero
  .L8016B04C_ovl5:
    /* 1124BC 8016B04C 8DC30000 */  lw         $v1, 0x0($t6)
    /* 1124C0 8016B050 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 1124C4 8016B054 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 1124C8 8016B058 00031880 */  sll        $v1, $v1, 2
    /* 1124CC 8016B05C 0283C021 */  addu       $t8, $s4, $v1
    /* 1124D0 8016B060 AF0F0000 */  sw         $t7, 0x0($t8)
    /* 1124D4 8016B064 0263C821 */  addu       $t9, $s3, $v1
    /* 1124D8 8016B068 0C02C7B2 */  jal        assign_new_process_entry
    /* 1124DC 8016B06C 8F240000 */   lw        $a0, 0x0($t9)
    /* 1124E0 8016B070 0C029D9E */  jal        play_sound
    /* 1124E4 8016B074 2404010A */   addiu     $a0, $zero, 0x10A
    /* 1124E8 8016B078 02208025 */  or         $s0, $s1, $zero
  .L8016B07C_ovl5:
    /* 1124EC 8016B07C 0C002DAF */  jal        ohSleep
    /* 1124F0 8016B080 24040001 */   addiu     $a0, $zero, 0x1
    /* 1124F4 8016B084 1000FFBE */  b          .L8016AF80_ovl5
    /* 1124F8 8016B088 00000000 */   nop
  .L8016B08C_ovl5:
    /* 1124FC 8016B08C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 112500 8016B090 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 112504 8016B094 44805000 */  mtc1       $zero, $f10
    /* 112508 8016B098 3C05800E */  lui        $a1, %hi(D_800E3910)
    /* 11250C 8016B09C 8C480000 */  lw         $t0, 0x0($v0)
    /* 112510 8016B0A0 24A53910 */  addiu      $a1, $a1, %lo(D_800E3910)
    /* 112514 8016B0A4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 112518 8016B0A8 00084880 */  sll        $t1, $t0, 2
    /* 11251C 8016B0AC 00A95021 */  addu       $t2, $a1, $t1
    /* 112520 8016B0B0 E54A0000 */  swc1       $f10, 0x0($t2)
    /* 112524 8016B0B4 8C430000 */  lw         $v1, 0x0($v0)
    /* 112528 8016B0B8 3C06800E */  lui        $a2, %hi(D_800E3E50)
    /* 11252C 8016B0BC 24C63E50 */  addiu      $a2, $a2, %lo(D_800E3E50)
    /* 112530 8016B0C0 00031880 */  sll        $v1, $v1, 2
    /* 112534 8016B0C4 00A35821 */  addu       $t3, $a1, $v1
    /* 112538 8016B0C8 C5600000 */  lwc1       $f0, 0x0($t3)
    /* 11253C 8016B0CC 00230821 */  addu       $at, $at, $v1
    /* 112540 8016B0D0 24040029 */  addiu      $a0, $zero, 0x29
    /* 112544 8016B0D4 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
    /* 112548 8016B0D8 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 11254C 8016B0DC 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 112550 8016B0E0 000C6880 */  sll        $t5, $t4, 2
    /* 112554 8016B0E4 002D0821 */  addu       $at, $at, $t5
    /* 112558 8016B0E8 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
    /* 11255C 8016B0EC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 112560 8016B0F0 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 112564 8016B0F4 000E7880 */  sll        $t7, $t6, 2
    /* 112568 8016B0F8 002F0821 */  addu       $at, $at, $t7
    /* 11256C 8016B0FC E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* 112570 8016B100 8C580000 */  lw         $t8, 0x0($v0)
    /* 112574 8016B104 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 112578 8016B108 0018C880 */  sll        $t9, $t8, 2
    /* 11257C 8016B10C 00390821 */  addu       $at, $at, $t9
    /* 112580 8016B110 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* 112584 8016B114 8C480000 */  lw         $t0, 0x0($v0)
    /* 112588 8016B118 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 11258C 8016B11C 00084880 */  sll        $t1, $t0, 2
    /* 112590 8016B120 00290821 */  addu       $at, $at, $t1
    /* 112594 8016B124 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* 112598 8016B128 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11259C 8016B12C 3C018019 */  lui        $at, %hi(D_8018D74C_ovl5)
    /* 1125A0 8016B130 C430D74C */  lwc1       $f16, %lo(D_8018D74C_ovl5)($at)
    /* 1125A4 8016B134 000A5880 */  sll        $t3, $t2, 2
    /* 1125A8 8016B138 00CB6021 */  addu       $t4, $a2, $t3
    /* 1125AC 8016B13C E5900000 */  swc1       $f16, 0x0($t4)
    /* 1125B0 8016B140 8C430000 */  lw         $v1, 0x0($v0)
    /* 1125B4 8016B144 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 1125B8 8016B148 8FB8008C */  lw         $t8, 0x8C($sp)
    /* 1125BC 8016B14C 00031880 */  sll        $v1, $v1, 2
    /* 1125C0 8016B150 00C36821 */  addu       $t5, $a2, $v1
    /* 1125C4 8016B154 C5A20000 */  lwc1       $f2, 0x0($t5)
    /* 1125C8 8016B158 00230821 */  addu       $at, $at, $v1
    /* 1125CC 8016B15C E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
    /* 1125D0 8016B160 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 1125D4 8016B164 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* 1125D8 8016B168 000E7880 */  sll        $t7, $t6, 2
    /* 1125DC 8016B16C 002F0821 */  addu       $at, $at, $t7
    /* 1125E0 8016B170 17000003 */  bnez       $t8, .L8016B180_ovl5
    /* 1125E4 8016B174 E4223AD0 */   swc1      $f2, %lo(D_800E3AD0)($at)
    /* 1125E8 8016B178 10000001 */  b          .L8016B180_ovl5
    /* 1125EC 8016B17C 24040030 */   addiu     $a0, $zero, 0x30
  .L8016B180_ovl5:
    /* 1125F0 8016B180 0C059631 */  jal        func_801658C4_ovl5
    /* 1125F4 8016B184 00808825 */   or        $s1, $a0, $zero
    /* 1125F8 8016B188 0011C880 */  sll        $t9, $s1, 2
    /* 1125FC 8016B18C 02598021 */  addu       $s0, $s2, $t9
    /* 112600 8016B190 8E060000 */  lw         $a2, 0x0($s0)
    /* 112604 8016B194 02C02025 */  or         $a0, $s6, $zero
    /* 112608 8016B198 0C02C8D0 */  jal        func_800B2340
    /* 11260C 8016B19C 00402825 */   or        $a1, $v0, $zero
    /* 112610 8016B1A0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 112614 8016B1A4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 112618 8016B1A8 C7A60068 */  lwc1       $f6, 0x68($sp)
    /* 11261C 8016B1AC 44804000 */  mtc1       $zero, $f8
    /* 112620 8016B1B0 8C480000 */  lw         $t0, 0x0($v0)
    /* 112624 8016B1B4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 112628 8016B1B8 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 11262C 8016B1BC 00084880 */  sll        $t1, $t0, 2
    /* 112630 8016B1C0 02E95021 */  addu       $t2, $s7, $t1
    /* 112634 8016B1C4 E5460000 */  swc1       $f6, 0x0($t2)
    /* 112638 8016B1C8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 11263C 8016B1CC 240A0001 */  addiu      $t2, $zero, 0x1
    /* 112640 8016B1D0 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 112644 8016B1D4 000B6080 */  sll        $t4, $t3, 2
    /* 112648 8016B1D8 03CC6821 */  addu       $t5, $fp, $t4
    /* 11264C 8016B1DC E5A80000 */  swc1       $f8, 0x0($t5)
    /* 112650 8016B1E0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 112654 8016B1E4 C7B20070 */  lwc1       $f18, 0x70($sp)
    /* 112658 8016B1E8 000E7880 */  sll        $t7, $t6, 2
    /* 11265C 8016B1EC 002F0821 */  addu       $at, $at, $t7
    /* 112660 8016B1F0 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* 112664 8016B1F4 8C580000 */  lw         $t8, 0x0($v0)
    /* 112668 8016B1F8 3C01C30C */  lui        $at, (0xC30C0000 >> 16)
    /* 11266C 8016B1FC 44812000 */  mtc1       $at, $f4
    /* 112670 8016B200 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 112674 8016B204 0018C880 */  sll        $t9, $t8, 2
    /* 112678 8016B208 00390821 */  addu       $at, $at, $t9
    /* 11267C 8016B20C E42433D0 */  swc1       $f4, %lo(D_800E33D0)($at)
    /* 112680 8016B210 8E030000 */  lw         $v1, 0x0($s0)
    /* 112684 8016B214 00031880 */  sll        $v1, $v1, 2
    /* 112688 8016B218 02833021 */  addu       $a2, $s4, $v1
    /* 11268C 8016B21C 8CC80000 */  lw         $t0, 0x0($a2)
    /* 112690 8016B220 02634821 */  addu       $t1, $s3, $v1
    /* 112694 8016B224 02635821 */  addu       $t3, $s3, $v1
    /* 112698 8016B228 56A80008 */  bnel       $s5, $t0, .L8016B24C_ovl5
    /* 11269C 8016B22C ACCA0000 */   sw        $t2, 0x0($a2)
    /* 1126A0 8016B230 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 1126A4 8016B234 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 1126A8 8016B238 0C02C7B2 */  jal        assign_new_process_entry
    /* 1126AC 8016B23C 8D240000 */   lw        $a0, 0x0($t1)
    /* 1126B0 8016B240 10000007 */  b          .L8016B260_ovl5
    /* 1126B4 8016B244 02208025 */   or        $s0, $s1, $zero
    /* 1126B8 8016B248 ACCA0000 */  sw         $t2, 0x0($a2)
  .L8016B24C_ovl5:
    /* 1126BC 8016B24C 0C02C7B2 */  jal        assign_new_process_entry
    /* 1126C0 8016B250 8D640000 */   lw        $a0, 0x0($t3)
    /* 1126C4 8016B254 0C029D9E */  jal        play_sound
    /* 1126C8 8016B258 2404010A */   addiu     $a0, $zero, 0x10A
    /* 1126CC 8016B25C 02208025 */  or         $s0, $s1, $zero
  .L8016B260_ovl5:
    /* 1126D0 8016B260 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1126D4 8016B264 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1126D8 8016B268 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1126DC 8016B26C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 1126E0 8016B270 000C6880 */  sll        $t5, $t4, 2
    /* 1126E4 8016B274 02ED7021 */  addu       $t6, $s7, $t5
    /* 1126E8 8016B278 C5CA0000 */  lwc1       $f10, 0x0($t6)
    /* 1126EC 8016B27C E7AA0068 */  swc1       $f10, 0x68($sp)
    /* 1126F0 8016B280 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 1126F4 8016B284 000FC080 */  sll        $t8, $t7, 2
    /* 1126F8 8016B288 03D8C821 */  addu       $t9, $fp, $t8
    /* 1126FC 8016B28C C7300000 */  lwc1       $f16, 0x0($t9)
    /* 112700 8016B290 E7B0006C */  swc1       $f16, 0x6C($sp)
    /* 112704 8016B294 8C480000 */  lw         $t0, 0x0($v0)
    /* 112708 8016B298 00084880 */  sll        $t1, $t0, 2
    /* 11270C 8016B29C 00290821 */  addu       $at, $at, $t1
    /* 112710 8016B2A0 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* 112714 8016B2A4 E7A60070 */  swc1       $f6, 0x70($sp)
    /* 112718 8016B2A8 8ECB0000 */  lw         $t3, 0x0($s6)
    /* 11271C 8016B2AC AFAB0000 */  sw         $t3, 0x0($sp)
    /* 112720 8016B2B0 8EC50004 */  lw         $a1, 0x4($s6)
    /* 112724 8016B2B4 8FA40000 */  lw         $a0, 0x0($sp)
    /* 112728 8016B2B8 AFA50004 */  sw         $a1, 0x4($sp)
    /* 11272C 8016B2BC 8EC60008 */  lw         $a2, 0x8($s6)
    /* 112730 8016B2C0 0C059815 */  jal        func_80166054_ovl5
    /* 112734 8016B2C4 AFA60008 */   sw        $a2, 0x8($sp)
    /* 112738 8016B2C8 2401029A */  addiu      $at, $zero, 0x29A
    /* 11273C 8016B2CC 10410027 */  beq        $v0, $at, .L8016B36C_ovl5
    /* 112740 8016B2D0 00408825 */   or        $s1, $v0, $zero
    /* 112744 8016B2D4 10500021 */  beq        $v0, $s0, .L8016B35C_ovl5
    /* 112748 8016B2D8 00026080 */   sll       $t4, $v0, 2
    /* 11274C 8016B2DC 024C6821 */  addu       $t5, $s2, $t4
    /* 112750 8016B2E0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 112754 8016B2E4 00024080 */  sll        $t0, $v0, 2
    /* 112758 8016B2E8 00116880 */  sll        $t5, $s1, 2
    /* 11275C 8016B2EC 000E7880 */  sll        $t7, $t6, 2
    /* 112760 8016B2F0 028FC021 */  addu       $t8, $s4, $t7
    /* 112764 8016B2F4 8F190000 */  lw         $t9, 0x0($t8)
    /* 112768 8016B2F8 02484821 */  addu       $t1, $s2, $t0
    /* 11276C 8016B2FC 240F0001 */  addiu      $t7, $zero, 0x1
    /* 112770 8016B300 16B9000A */  bne        $s5, $t9, .L8016B32C_ovl5
    /* 112774 8016B304 024D7021 */   addu      $t6, $s2, $t5
    /* 112778 8016B308 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 11277C 8016B30C 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 112780 8016B310 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 112784 8016B314 000A5880 */  sll        $t3, $t2, 2
    /* 112788 8016B318 026B6021 */  addu       $t4, $s3, $t3
    /* 11278C 8016B31C 0C02C7B2 */  jal        assign_new_process_entry
    /* 112790 8016B320 8D840000 */   lw        $a0, 0x0($t4)
    /* 112794 8016B324 1000000D */  b          .L8016B35C_ovl5
    /* 112798 8016B328 02208025 */   or        $s0, $s1, $zero
  .L8016B32C_ovl5:
    /* 11279C 8016B32C 8DC30000 */  lw         $v1, 0x0($t6)
    /* 1127A0 8016B330 3C058016 */  lui        $a1, %hi(func_8016689C_ovl5)
    /* 1127A4 8016B334 24A5689C */  addiu      $a1, $a1, %lo(func_8016689C_ovl5)
    /* 1127A8 8016B338 00031880 */  sll        $v1, $v1, 2
    /* 1127AC 8016B33C 0283C021 */  addu       $t8, $s4, $v1
    /* 1127B0 8016B340 AF0F0000 */  sw         $t7, 0x0($t8)
    /* 1127B4 8016B344 0263C821 */  addu       $t9, $s3, $v1
    /* 1127B8 8016B348 0C02C7B2 */  jal        assign_new_process_entry
    /* 1127BC 8016B34C 8F240000 */   lw        $a0, 0x0($t9)
    /* 1127C0 8016B350 0C029D9E */  jal        play_sound
    /* 1127C4 8016B354 2404010A */   addiu     $a0, $zero, 0x10A
    /* 1127C8 8016B358 02208025 */  or         $s0, $s1, $zero
  .L8016B35C_ovl5:
    /* 1127CC 8016B35C 0C002DAF */  jal        ohSleep
    /* 1127D0 8016B360 24040001 */   addiu     $a0, $zero, 0x1
    /* 1127D4 8016B364 1000FFBE */  b          .L8016B260_ovl5
    /* 1127D8 8016B368 00000000 */   nop
  .L8016B36C_ovl5:
    /* 1127DC 8016B36C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1127E0 8016B370 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1127E4 8016B374 44804000 */  mtc1       $zero, $f8
    /* 1127E8 8016B378 3C01800E */  lui        $at, %hi(D_800E3910)
    /* 1127EC 8016B37C 8C480000 */  lw         $t0, 0x0($v0)
    /* 1127F0 8016B380 2404000B */  addiu      $a0, $zero, 0xB
    /* 1127F4 8016B384 00084880 */  sll        $t1, $t0, 2
    /* 1127F8 8016B388 00290821 */  addu       $at, $at, $t1
    /* 1127FC 8016B38C E4283910 */  swc1       $f8, %lo(D_800E3910)($at)
    /* 112800 8016B390 8C430000 */  lw         $v1, 0x0($v0)
    /* 112804 8016B394 3C01800E */  lui        $at, %hi(D_800E3910)
    /* 112808 8016B398 00031880 */  sll        $v1, $v1, 2
    /* 11280C 8016B39C 00230821 */  addu       $at, $at, $v1
    /* 112810 8016B3A0 C4203910 */  lwc1       $f0, %lo(D_800E3910)($at)
    /* 112814 8016B3A4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 112818 8016B3A8 00230821 */  addu       $at, $at, $v1
    /* 11281C 8016B3AC E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
    /* 112820 8016B3B0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 112824 8016B3B4 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 112828 8016B3B8 000A5880 */  sll        $t3, $t2, 2
    /* 11282C 8016B3BC 002B0821 */  addu       $at, $at, $t3
    /* 112830 8016B3C0 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
    /* 112834 8016B3C4 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 112838 8016B3C8 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 11283C 8016B3CC 000C6880 */  sll        $t5, $t4, 2
    /* 112840 8016B3D0 002D0821 */  addu       $at, $at, $t5
    /* 112844 8016B3D4 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* 112848 8016B3D8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11284C 8016B3DC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 112850 8016B3E0 000E7880 */  sll        $t7, $t6, 2
    /* 112854 8016B3E4 002F0821 */  addu       $at, $at, $t7
    /* 112858 8016B3E8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* 11285C 8016B3EC 8C580000 */  lw         $t8, 0x0($v0)
    /* 112860 8016B3F0 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 112864 8016B3F4 0018C880 */  sll        $t9, $t8, 2
    /* 112868 8016B3F8 00390821 */  addu       $at, $at, $t9
    /* 11286C 8016B3FC E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* 112870 8016B400 8C480000 */  lw         $t0, 0x0($v0)
    /* 112874 8016B404 3C018019 */  lui        $at, %hi(D_8018D750_ovl5)
    /* 112878 8016B408 C432D750 */  lwc1       $f18, %lo(D_8018D750_ovl5)($at)
    /* 11287C 8016B40C 3C01800E */  lui        $at, %hi(D_800E3E50)
    /* 112880 8016B410 00084880 */  sll        $t1, $t0, 2
    /* 112884 8016B414 00290821 */  addu       $at, $at, $t1
    /* 112888 8016B418 E4323E50 */  swc1       $f18, %lo(D_800E3E50)($at)
    /* 11288C 8016B41C 8C430000 */  lw         $v1, 0x0($v0)
    /* 112890 8016B420 3C01800E */  lui        $at, %hi(D_800E3E50)
    /* 112894 8016B424 00031880 */  sll        $v1, $v1, 2
    /* 112898 8016B428 00230821 */  addu       $at, $at, $v1
    /* 11289C 8016B42C C4223E50 */  lwc1       $f2, %lo(D_800E3E50)($at)
    /* 1128A0 8016B430 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 1128A4 8016B434 00230821 */  addu       $at, $at, $v1
    /* 1128A8 8016B438 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
    /* 1128AC 8016B43C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 1128B0 8016B440 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* 1128B4 8016B444 000A5880 */  sll        $t3, $t2, 2
    /* 1128B8 8016B448 002B0821 */  addu       $at, $at, $t3
    /* 1128BC 8016B44C 0C002DAF */  jal        ohSleep
    /* 1128C0 8016B450 E4223AD0 */   swc1      $f2, %lo(D_800E3AD0)($at)
    /* 1128C4 8016B454 0C029D9E */  jal        play_sound
    /* 1128C8 8016B458 24040108 */   addiu     $a0, $zero, 0x108
    /* 1128CC 8016B45C 3C028019 */  lui        $v0, %hi(D_8018E3C8_ovl5)
    /* 1128D0 8016B460 3C118019 */  lui        $s1, %hi(D_8018E288_ovl5)
    /* 1128D4 8016B464 2631E288 */  addiu      $s1, $s1, %lo(D_8018E288_ovl5)
    /* 1128D8 8016B468 2442E3C8 */  addiu      $v0, $v0, %lo(D_8018E3C8_ovl5)
    /* 1128DC 8016B46C 00008025 */  or         $s0, $zero, $zero
  .L8016B470_ovl5:
    /* 1128E0 8016B470 904C0000 */  lbu        $t4, 0x0($v0)
    /* 1128E4 8016B474 00106880 */  sll        $t5, $s0, 2
    /* 1128E8 8016B478 022D7021 */  addu       $t6, $s1, $t5
    /* 1128EC 8016B47C 5580000A */  bnel       $t4, $zero, .L8016B4A8_ovl5
    /* 1128F0 8016B480 26100001 */   addiu     $s0, $s0, 0x1
    /* 1128F4 8016B484 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 1128F8 8016B488 02002025 */  or         $a0, $s0, $zero
    /* 1128FC 8016B48C 24050006 */  addiu      $a1, $zero, 0x6
    /* 112900 8016B490 11E00004 */  beqz       $t7, .L8016B4A4_ovl5
    /* 112904 8016B494 24060010 */   addiu     $a2, $zero, 0x10
    /* 112908 8016B498 0C02ED39 */  jal        func_800BB4E4
    /* 11290C 8016B49C AFA2004C */   sw        $v0, 0x4C($sp)
    /* 112910 8016B4A0 8FA2004C */  lw         $v0, 0x4C($sp)
  .L8016B4A4_ovl5:
    /* 112914 8016B4A4 26100001 */  addiu      $s0, $s0, 0x1
  .L8016B4A8_ovl5:
    /* 112918 8016B4A8 24010004 */  addiu      $at, $zero, 0x4
    /* 11291C 8016B4AC 1601FFF0 */  bne        $s0, $at, .L8016B470_ovl5
    /* 112920 8016B4B0 24420001 */   addiu     $v0, $v0, 0x1
    /* 112924 8016B4B4 8FB8008C */  lw         $t8, 0x8C($sp)
    /* 112928 8016B4B8 8FB9008C */  lw         $t9, 0x8C($sp)
    /* 11292C 8016B4BC 57000004 */  bnel       $t8, $zero, .L8016B4D0_ovl5
    /* 112930 8016B4C0 24020009 */   addiu     $v0, $zero, 0x9
    /* 112934 8016B4C4 10000002 */  b          .L8016B4D0_ovl5
    /* 112938 8016B4C8 00001025 */   or        $v0, $zero, $zero
    /* 11293C 8016B4CC 24020009 */  addiu      $v0, $zero, 0x9
  .L8016B4D0_ovl5:
    /* 112940 8016B4D0 57200004 */  bnel       $t9, $zero, .L8016B4E4_ovl5
    /* 112944 8016B4D4 2411000E */   addiu     $s1, $zero, 0xE
    /* 112948 8016B4D8 10000002 */  b          .L8016B4E4_ovl5
    /* 11294C 8016B4DC 24110007 */   addiu     $s1, $zero, 0x7
    /* 112950 8016B4E0 2411000E */  addiu      $s1, $zero, 0xE
  .L8016B4E4_ovl5:
    /* 112954 8016B4E4 0222082A */  slt        $at, $s1, $v0
    /* 112958 8016B4E8 14200017 */  bnez       $at, .L8016B548_ovl5
    /* 11295C 8016B4EC 3C098019 */   lui       $t1, %hi(D_8018E2A0_ovl5)
    /* 112960 8016B4F0 2529E2A0 */  addiu      $t1, $t1, %lo(D_8018E2A0_ovl5)
    /* 112964 8016B4F4 3C058016 */  lui        $a1, %hi(func_801668E0_ovl5)
    /* 112968 8016B4F8 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 11296C 8016B4FC 00024080 */  sll        $t0, $v0, 2
    /* 112970 8016B500 00115080 */  sll        $t2, $s1, 2
    /* 112974 8016B504 01491821 */  addu       $v1, $t2, $t1
    /* 112978 8016B508 01098021 */  addu       $s0, $t0, $t1
    /* 11297C 8016B50C AFA5004C */  sw         $a1, 0x4C($sp)
    /* 112980 8016B510 8E020000 */  lw         $v0, 0x0($s0)
  .L8016B514_ovl5:
    /* 112984 8016B514 8FA5004C */  lw         $a1, 0x4C($sp)
    /* 112988 8016B518 00021080 */  sll        $v0, $v0, 2
    /* 11298C 8016B51C 02825821 */  addu       $t3, $s4, $v0
    /* 112990 8016B520 AD750000 */  sw         $s5, 0x0($t3)
    /* 112994 8016B524 02626021 */  addu       $t4, $s3, $v0
    /* 112998 8016B528 8D840000 */  lw         $a0, 0x0($t4)
    /* 11299C 8016B52C 0C02C7B2 */  jal        assign_new_process_entry
    /* 1129A0 8016B530 AFA30044 */   sw        $v1, 0x44($sp)
    /* 1129A4 8016B534 8FA30044 */  lw         $v1, 0x44($sp)
    /* 1129A8 8016B538 26100004 */  addiu      $s0, $s0, 0x4
    /* 1129AC 8016B53C 0070082B */  sltu       $at, $v1, $s0
    /* 1129B0 8016B540 5020FFF4 */  beql       $at, $zero, .L8016B514_ovl5
    /* 1129B4 8016B544 8E020000 */   lw        $v0, 0x0($s0)
  .L8016B548_ovl5:
    /* 1129B8 8016B548 8FAD008C */  lw         $t5, 0x8C($sp)
    /* 1129BC 8016B54C 8FAE008C */  lw         $t6, 0x8C($sp)
    /* 1129C0 8016B550 55A00004 */  bnel       $t5, $zero, .L8016B564_ovl5
    /* 1129C4 8016B554 24020016 */   addiu     $v0, $zero, 0x16
    /* 1129C8 8016B558 10000002 */  b          .L8016B564_ovl5
    /* 1129CC 8016B55C 2402000F */   addiu     $v0, $zero, 0xF
    /* 1129D0 8016B560 24020016 */  addiu      $v0, $zero, 0x16
  .L8016B564_ovl5:
    /* 1129D4 8016B564 15C00003 */  bnez       $t6, .L8016B574_ovl5
    /* 1129D8 8016B568 24110036 */   addiu     $s1, $zero, 0x36
    /* 1129DC 8016B56C 10000001 */  b          .L8016B574_ovl5
    /* 1129E0 8016B570 2411003F */   addiu     $s1, $zero, 0x3F
  .L8016B574_ovl5:
    /* 1129E4 8016B574 0222082A */  slt        $at, $s1, $v0
    /* 1129E8 8016B578 14200017 */  bnez       $at, .L8016B5D8_ovl5
    /* 1129EC 8016B57C 3C058016 */   lui       $a1, %hi(func_801668E0_ovl5)
    /* 1129F0 8016B580 3C188019 */  lui        $t8, %hi(D_8018E2A0_ovl5)
    /* 1129F4 8016B584 2718E2A0 */  addiu      $t8, $t8, %lo(D_8018E2A0_ovl5)
    /* 1129F8 8016B588 24A568E0 */  addiu      $a1, $a1, %lo(func_801668E0_ovl5)
    /* 1129FC 8016B58C 00027880 */  sll        $t7, $v0, 2
    /* 112A00 8016B590 0011C880 */  sll        $t9, $s1, 2
    /* 112A04 8016B594 03381821 */  addu       $v1, $t9, $t8
    /* 112A08 8016B598 01F88021 */  addu       $s0, $t7, $t8
    /* 112A0C 8016B59C AFA5004C */  sw         $a1, 0x4C($sp)
    /* 112A10 8016B5A0 8E020000 */  lw         $v0, 0x0($s0)
  .L8016B5A4_ovl5:
    /* 112A14 8016B5A4 8FA5004C */  lw         $a1, 0x4C($sp)
    /* 112A18 8016B5A8 00021080 */  sll        $v0, $v0, 2
    /* 112A1C 8016B5AC 02824021 */  addu       $t0, $s4, $v0
    /* 112A20 8016B5B0 AD150000 */  sw         $s5, 0x0($t0)
    /* 112A24 8016B5B4 02625021 */  addu       $t2, $s3, $v0
    /* 112A28 8016B5B8 8D440000 */  lw         $a0, 0x0($t2)
    /* 112A2C 8016B5BC 0C02C7B2 */  jal        assign_new_process_entry
    /* 112A30 8016B5C0 AFA30044 */   sw        $v1, 0x44($sp)
    /* 112A34 8016B5C4 8FA30044 */  lw         $v1, 0x44($sp)
    /* 112A38 8016B5C8 26100020 */  addiu      $s0, $s0, 0x20
    /* 112A3C 8016B5CC 0070082B */  sltu       $at, $v1, $s0
    /* 112A40 8016B5D0 5020FFF4 */  beql       $at, $zero, .L8016B5A4_ovl5
    /* 112A44 8016B5D4 8E020000 */   lw        $v0, 0x0($s0)
  .L8016B5D8_ovl5:
    /* 112A48 8016B5D8 8FA9008C */  lw         $t1, 0x8C($sp)
    /* 112A4C 8016B5DC 24020035 */  addiu      $v0, $zero, 0x35
    /* 112A50 8016B5E0 8FAB008C */  lw         $t3, 0x8C($sp)
    /* 112A54 8016B5E4 15200003 */  bnez       $t1, .L8016B5F4_ovl5
    /* 112A58 8016B5E8 24110031 */   addiu     $s1, $zero, 0x31
    /* 112A5C 8016B5EC 10000001 */  b          .L8016B5F4_ovl5
    /* 112A60 8016B5F0 2402003E */   addiu     $v0, $zero, 0x3E
  .L8016B5F4_ovl5:
    /* 112A64 8016B5F4 15600003 */  bnez       $t3, .L8016B604_ovl5
    /* 112A68 8016B5F8 3C058016 */   lui       $a1, %hi(func_801668E0_ovl5)
    /* 112A6C 8016B5FC 10000001 */  b          .L8016B604_ovl5
    /* 112A70 8016B600 24110038 */   addiu     $s1, $zero, 0x38
  .L8016B604_ovl5:
    /* 112A74 8016B604 0051082A */  slt        $at, $v0, $s1
    /* 112A78 8016B608 14200016 */  bnez       $at, .L8016B664_ovl5
    /* 112A7C 8016B60C 24A568E0 */   addiu     $a1, $a1, %lo(func_801668E0_ovl5)
    /* 112A80 8016B610 3C0D8019 */  lui        $t5, %hi(D_8018E2A0_ovl5)
    /* 112A84 8016B614 25ADE2A0 */  addiu      $t5, $t5, %lo(D_8018E2A0_ovl5)
    /* 112A88 8016B618 00026080 */  sll        $t4, $v0, 2
    /* 112A8C 8016B61C 00117080 */  sll        $t6, $s1, 2
    /* 112A90 8016B620 01CD1821 */  addu       $v1, $t6, $t5
    /* 112A94 8016B624 018D8021 */  addu       $s0, $t4, $t5
    /* 112A98 8016B628 AFA5004C */  sw         $a1, 0x4C($sp)
    /* 112A9C 8016B62C 8E020000 */  lw         $v0, 0x0($s0)
  .L8016B630_ovl5:
    /* 112AA0 8016B630 8FA5004C */  lw         $a1, 0x4C($sp)
    /* 112AA4 8016B634 00021080 */  sll        $v0, $v0, 2
    /* 112AA8 8016B638 02827821 */  addu       $t7, $s4, $v0
    /* 112AAC 8016B63C ADF50000 */  sw         $s5, 0x0($t7)
    /* 112AB0 8016B640 0262C821 */  addu       $t9, $s3, $v0
    /* 112AB4 8016B644 8F240000 */  lw         $a0, 0x0($t9)
    /* 112AB8 8016B648 0C02C7B2 */  jal        assign_new_process_entry
    /* 112ABC 8016B64C AFA30044 */   sw        $v1, 0x44($sp)
    /* 112AC0 8016B650 8FA30044 */  lw         $v1, 0x44($sp)
    /* 112AC4 8016B654 2610FFFC */  addiu      $s0, $s0, -0x4
    /* 112AC8 8016B658 0203082B */  sltu       $at, $s0, $v1
    /* 112ACC 8016B65C 5020FFF4 */  beql       $at, $zero, .L8016B630_ovl5
    /* 112AD0 8016B660 8E020000 */   lw        $v0, 0x0($s0)
  .L8016B664_ovl5:
    /* 112AD4 8016B664 8FB8008C */  lw         $t8, 0x8C($sp)
    /* 112AD8 8016B668 24020029 */  addiu      $v0, $zero, 0x29
    /* 112ADC 8016B66C 8FA8008C */  lw         $t0, 0x8C($sp)
    /* 112AE0 8016B670 17000003 */  bnez       $t8, .L8016B680_ovl5
    /* 112AE4 8016B674 24110011 */   addiu     $s1, $zero, 0x11
    /* 112AE8 8016B678 10000001 */  b          .L8016B680_ovl5
    /* 112AEC 8016B67C 24020030 */   addiu     $v0, $zero, 0x30
  .L8016B680_ovl5:
    /* 112AF0 8016B680 15000003 */  bnez       $t0, .L8016B690_ovl5
    /* 112AF4 8016B684 3C0A8016 */   lui       $t2, %hi(func_801668E0_ovl5)
    /* 112AF8 8016B688 10000001 */  b          .L8016B690_ovl5
    /* 112AFC 8016B68C 24110008 */   addiu     $s1, $zero, 0x8
  .L8016B690_ovl5:
    /* 112B00 8016B690 0051082A */  slt        $at, $v0, $s1
    /* 112B04 8016B694 14200016 */  bnez       $at, .L8016B6F0_ovl5
    /* 112B08 8016B698 254A68E0 */   addiu     $t2, $t2, %lo(func_801668E0_ovl5)
    /* 112B0C 8016B69C 3C0B8019 */  lui        $t3, %hi(D_8018E2A0_ovl5)
    /* 112B10 8016B6A0 256BE2A0 */  addiu      $t3, $t3, %lo(D_8018E2A0_ovl5)
    /* 112B14 8016B6A4 00024880 */  sll        $t1, $v0, 2
    /* 112B18 8016B6A8 00116080 */  sll        $t4, $s1, 2
    /* 112B1C 8016B6AC 018B1821 */  addu       $v1, $t4, $t3
    /* 112B20 8016B6B0 012B8021 */  addu       $s0, $t1, $t3
    /* 112B24 8016B6B4 AFAA004C */  sw         $t2, 0x4C($sp)
    /* 112B28 8016B6B8 8E020000 */  lw         $v0, 0x0($s0)
  .L8016B6BC_ovl5:
    /* 112B2C 8016B6BC 00021080 */  sll        $v0, $v0, 2
    /* 112B30 8016B6C0 02827021 */  addu       $t6, $s4, $v0
    /* 112B34 8016B6C4 ADD50000 */  sw         $s5, 0x0($t6)
    /* 112B38 8016B6C8 02626821 */  addu       $t5, $s3, $v0
    /* 112B3C 8016B6CC 8DA40000 */  lw         $a0, 0x0($t5)
    /* 112B40 8016B6D0 AFA30044 */  sw         $v1, 0x44($sp)
    /* 112B44 8016B6D4 0C02C7B2 */  jal        assign_new_process_entry
    /* 112B48 8016B6D8 8FA5004C */   lw        $a1, 0x4C($sp)
    /* 112B4C 8016B6DC 8FA30044 */  lw         $v1, 0x44($sp)
    /* 112B50 8016B6E0 2610FFE0 */  addiu      $s0, $s0, -0x20
    /* 112B54 8016B6E4 0203082B */  sltu       $at, $s0, $v1
    /* 112B58 8016B6E8 5020FFF4 */  beql       $at, $zero, .L8016B6BC_ovl5
    /* 112B5C 8016B6EC 8E020000 */   lw        $v0, 0x0($s0)
  .L8016B6F0_ovl5:
    /* 112B60 8016B6F0 8FAF008C */  lw         $t7, 0x8C($sp)
    /* 112B64 8016B6F4 24180002 */  addiu      $t8, $zero, 0x2
    /* 112B68 8016B6F8 3C018019 */  lui        $at, %hi(D_8018E425_ovl5)
    /* 112B6C 8016B6FC 15E00005 */  bnez       $t7, .L8016B714_ovl5
    /* 112B70 8016B700 3C088005 */   lui       $t0, %hi(omCurrentObj)
    /* 112B74 8016B704 24190002 */  addiu      $t9, $zero, 0x2
    /* 112B78 8016B708 3C018019 */  lui        $at, %hi(D_8018E424_ovl5)
    /* 112B7C 8016B70C 10000002 */  b          .L8016B718_ovl5
    /* 112B80 8016B710 A039E424 */   sb        $t9, %lo(D_8018E424_ovl5)($at)
  .L8016B714_ovl5:
    /* 112B84 8016B714 A038E425 */  sb         $t8, %lo(D_8018E425_ovl5)($at)
  .L8016B718_ovl5:
    /* 112B88 8016B718 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 112B8C 8016B71C 0C02C640 */  jal        func_800B1900
    /* 112B90 8016B720 95040002 */   lhu       $a0, 0x2($t0)
    /* 112B94 8016B724 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 112B98 8016B728 8FB00018 */  lw         $s0, 0x18($sp)
    /* 112B9C 8016B72C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 112BA0 8016B730 8FB20020 */  lw         $s2, 0x20($sp)
    /* 112BA4 8016B734 8FB30024 */  lw         $s3, 0x24($sp)
    /* 112BA8 8016B738 8FB40028 */  lw         $s4, 0x28($sp)
    /* 112BAC 8016B73C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 112BB0 8016B740 8FB60030 */  lw         $s6, 0x30($sp)
    /* 112BB4 8016B744 8FB70034 */  lw         $s7, 0x34($sp)
    /* 112BB8 8016B748 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 112BBC 8016B74C 03E00008 */  jr         $ra
    /* 112BC0 8016B750 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_8016A774_ovl5
.size func_8016A774_ovl5, . - func_8016A774_ovl5
