nonmatching func_80122CE8, 0x220

glabel func_80122CE8
    /* AB758 80122CE8 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* AB75C 80122CEC 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* AB760 80122CF0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* AB764 80122CF4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* AB768 80122CF8 AFB50038 */  sw         $s5, 0x38($sp)
    /* AB76C 80122CFC AFB40034 */  sw         $s4, 0x34($sp)
    /* AB770 80122D00 AFB30030 */  sw         $s3, 0x30($sp)
    /* AB774 80122D04 AFB2002C */  sw         $s2, 0x2C($sp)
    /* AB778 80122D08 AFB10028 */  sw         $s1, 0x28($sp)
    /* AB77C 80122D0C AFB00024 */  sw         $s0, 0x24($sp)
    /* AB780 80122D10 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* AB784 80122D14 8DC30000 */  lw         $v1, 0x0($t6)
    /* AB788 80122D18 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* AB78C 80122D1C 3C0F800E */  lui        $t7, %hi(D_800E0490)
    /* AB790 80122D20 00031080 */  sll        $v0, $v1, 2
    /* AB794 80122D24 00220821 */  addu       $at, $at, $v0
    /* AB798 80122D28 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* AB79C 80122D2C 01E27821 */  addu       $t7, $t7, $v0
    /* AB7A0 80122D30 8DEF0490 */  lw         $t7, %lo(D_800E0490)($t7)
    /* AB7A4 80122D34 E7A4007C */  swc1       $f4, 0x7C($sp)
    /* AB7A8 80122D38 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* AB7AC 80122D3C 8DF80004 */  lw         $t8, 0x4($t7)
    /* AB7B0 80122D40 00220821 */  addu       $at, $at, $v0
    /* AB7B4 80122D44 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* AB7B8 80122D48 C7060000 */  lwc1       $f6, 0x0($t8)
    /* AB7BC 80122D4C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* AB7C0 80122D50 00220821 */  addu       $at, $at, $v0
    /* AB7C4 80122D54 46083280 */  add.s      $f10, $f6, $f8
    /* AB7C8 80122D58 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* AB7CC 80122D5C 27A4007C */  addiu      $a0, $sp, 0x7C
    /* AB7D0 80122D60 E7AA0080 */  swc1       $f10, 0x80($sp)
    /* AB7D4 80122D64 0C0437E7 */  jal        func_8010DF9C
    /* AB7D8 80122D68 E7B00084 */   swc1      $f16, 0x84($sp)
    /* AB7DC 80122D6C 1040005C */  beqz       $v0, .L80122EE0
    /* AB7E0 80122D70 0040A025 */   or        $s4, $v0, $zero
    /* AB7E4 80122D74 1040005A */  beqz       $v0, .L80122EE0
    /* AB7E8 80122D78 00009825 */   or        $s3, $zero, $zero
    /* AB7EC 80122D7C 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* AB7F0 80122D80 3C128013 */  lui        $s2, %hi(D_8012BCA0)
    /* AB7F4 80122D84 4481A000 */  mtc1       $at, $f20
    /* AB7F8 80122D88 2652BCA0 */  addiu      $s2, $s2, %lo(D_8012BCA0)
    /* AB7FC 80122D8C 27B50064 */  addiu      $s5, $sp, 0x64
    /* AB800 80122D90 24100001 */  addiu      $s0, $zero, 0x1
  .L80122D94:
    /* AB804 80122D94 8E510040 */  lw         $s1, 0x40($s2)
    /* AB808 80122D98 C7B2007C */  lwc1       $f18, 0x7C($sp)
    /* AB80C 80122D9C 92390004 */  lbu        $t9, 0x4($s1)
    /* AB810 80122DA0 5619004D */  bnel       $s0, $t9, .L80122ED8
    /* AB814 80122DA4 26730001 */   addiu     $s3, $s3, 0x1
    /* AB818 80122DA8 C7A40080 */  lwc1       $f4, 0x80($sp)
    /* AB81C 80122DAC C7A80084 */  lwc1       $f8, 0x84($sp)
    /* AB820 80122DB0 E7B20064 */  swc1       $f18, 0x64($sp)
    /* AB824 80122DB4 46142180 */  add.s      $f6, $f4, $f20
    /* AB828 80122DB8 02A02025 */  or         $a0, $s5, $zero
    /* AB82C 80122DBC E7A8006C */  swc1       $f8, 0x6C($sp)
    /* AB830 80122DC0 0C0437E7 */  jal        func_8010DF9C
    /* AB834 80122DC4 E7A60068 */   swc1      $f6, 0x68($sp)
    /* AB838 80122DC8 10400019 */  beqz       $v0, .L80122E30
    /* AB83C 80122DCC 00402025 */   or        $a0, $v0, $zero
    /* AB840 80122DD0 10400040 */  beqz       $v0, .L80122ED4
    /* AB844 80122DD4 00001825 */   or        $v1, $zero, $zero
    /* AB848 80122DD8 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* AB84C 80122DDC 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
  .L80122DE0:
    /* AB850 80122DE0 8C480040 */  lw         $t0, 0x40($v0)
    /* AB854 80122DE4 24630001 */  addiu      $v1, $v1, 0x1
    /* AB858 80122DE8 91090004 */  lbu        $t1, 0x4($t0)
    /* AB85C 80122DEC 1609000C */  bne        $s0, $t1, .L80122E20
    /* AB860 80122DF0 00000000 */   nop
    /* AB864 80122DF4 C7AA0080 */  lwc1       $f10, 0x80($sp)
    /* AB868 80122DF8 C7B00084 */  lwc1       $f16, 0x84($sp)
    /* AB86C 80122DFC 24040005 */  addiu      $a0, $zero, 0x5
    /* AB870 80122E00 24050001 */  addiu      $a1, $zero, 0x1
    /* AB874 80122E04 2406001E */  addiu      $a2, $zero, 0x1E
    /* AB878 80122E08 8FA7007C */  lw         $a3, 0x7C($sp)
    /* AB87C 80122E0C E7AA0010 */  swc1       $f10, 0x10($sp)
    /* AB880 80122E10 0C029FDD */  jal        func_800A7F74
    /* AB884 80122E14 E7B00014 */   swc1      $f16, 0x14($sp)
    /* AB888 80122E18 10000032 */  b          .L80122EE4
    /* AB88C 80122E1C 8FBF003C */   lw        $ra, 0x3C($sp)
  .L80122E20:
    /* AB890 80122E20 1464FFEF */  bne        $v1, $a0, .L80122DE0
    /* AB894 80122E24 24420004 */   addiu     $v0, $v0, 0x4
    /* AB898 80122E28 1000002B */  b          .L80122ED8
    /* AB89C 80122E2C 26730001 */   addiu     $s3, $s3, 0x1
  .L80122E30:
    /* AB8A0 80122E30 27AA005C */  addiu      $t2, $sp, 0x5C
    /* AB8A4 80122E34 27AB0050 */  addiu      $t3, $sp, 0x50
    /* AB8A8 80122E38 AFAB0014 */  sw         $t3, 0x14($sp)
    /* AB8AC 80122E3C AFAA0010 */  sw         $t2, 0x10($sp)
    /* AB8B0 80122E40 02202025 */  or         $a0, $s1, $zero
    /* AB8B4 80122E44 8E45004C */  lw         $a1, 0x4C($s2)
    /* AB8B8 80122E48 27A6007C */  addiu      $a2, $sp, 0x7C
    /* AB8BC 80122E4C 0C043812 */  jal        func_8010E048
    /* AB8C0 80122E50 02A03825 */   or        $a3, $s5, $zero
    /* AB8C4 80122E54 10400015 */  beqz       $v0, .L80122EAC
    /* AB8C8 80122E58 24040005 */   addiu     $a0, $zero, 0x5
    /* AB8CC 80122E5C C7B20054 */  lwc1       $f18, 0x54($sp)
    /* AB8D0 80122E60 C7A40080 */  lwc1       $f4, 0x80($sp)
    /* AB8D4 80122E64 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* AB8D8 80122E68 44813000 */  mtc1       $at, $f6
    /* AB8DC 80122E6C 46049001 */  sub.s      $f0, $f18, $f4
    /* AB8E0 80122E70 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
    /* AB8E4 80122E74 4606003C */  c.lt.s     $f0, $f6
    /* AB8E8 80122E78 00000000 */  nop
    /* AB8EC 80122E7C 45030019 */  bc1tl      .L80122EE4
    /* AB8F0 80122E80 8FBF003C */   lw        $ra, 0x3C($sp)
    /* AB8F4 80122E84 44814000 */  mtc1       $at, $f8
    /* AB8F8 80122E88 00000000 */  nop
    /* AB8FC 80122E8C 4608003C */  c.lt.s     $f0, $f8
    /* AB900 80122E90 00000000 */  nop
    /* AB904 80122E94 45000003 */  bc1f       .L80122EA4
    /* AB908 80122E98 00000000 */   nop
    /* AB90C 80122E9C 10000004 */  b          .L80122EB0
    /* AB910 80122EA0 2406003B */   addiu     $a2, $zero, 0x3B
  .L80122EA4:
    /* AB914 80122EA4 10000002 */  b          .L80122EB0
    /* AB918 80122EA8 2406003A */   addiu     $a2, $zero, 0x3A
  .L80122EAC:
    /* AB91C 80122EAC 2406001E */  addiu      $a2, $zero, 0x1E
  .L80122EB0:
    /* AB920 80122EB0 C7AA0080 */  lwc1       $f10, 0x80($sp)
    /* AB924 80122EB4 C7B00084 */  lwc1       $f16, 0x84($sp)
    /* AB928 80122EB8 24050001 */  addiu      $a1, $zero, 0x1
    /* AB92C 80122EBC 8FA7007C */  lw         $a3, 0x7C($sp)
    /* AB930 80122EC0 E7AA0010 */  swc1       $f10, 0x10($sp)
    /* AB934 80122EC4 0C029FDD */  jal        func_800A7F74
    /* AB938 80122EC8 E7B00014 */   swc1      $f16, 0x14($sp)
    /* AB93C 80122ECC 10000005 */  b          .L80122EE4
    /* AB940 80122ED0 8FBF003C */   lw        $ra, 0x3C($sp)
  .L80122ED4:
    /* AB944 80122ED4 26730001 */  addiu      $s3, $s3, 0x1
  .L80122ED8:
    /* AB948 80122ED8 1674FFAE */  bne        $s3, $s4, .L80122D94
    /* AB94C 80122EDC 26520004 */   addiu     $s2, $s2, 0x4
  .L80122EE0:
    /* AB950 80122EE0 8FBF003C */  lw         $ra, 0x3C($sp)
  .L80122EE4:
    /* AB954 80122EE4 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* AB958 80122EE8 8FB00024 */  lw         $s0, 0x24($sp)
    /* AB95C 80122EEC 8FB10028 */  lw         $s1, 0x28($sp)
    /* AB960 80122EF0 8FB2002C */  lw         $s2, 0x2C($sp)
    /* AB964 80122EF4 8FB30030 */  lw         $s3, 0x30($sp)
    /* AB968 80122EF8 8FB40034 */  lw         $s4, 0x34($sp)
    /* AB96C 80122EFC 8FB50038 */  lw         $s5, 0x38($sp)
    /* AB970 80122F00 03E00008 */  jr         $ra
    /* AB974 80122F04 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_80122CE8
.size func_80122CE8, . - func_80122CE8
