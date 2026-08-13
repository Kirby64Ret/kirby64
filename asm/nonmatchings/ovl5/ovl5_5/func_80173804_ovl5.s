nonmatching func_80173804_ovl5, 0x234

glabel func_80173804_ovl5
    /* 11AC74 80173804 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 11AC78 80173808 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 11AC7C 8017380C AFB3002C */  sw         $s3, 0x2C($sp)
    /* 11AC80 80173810 00809825 */  or         $s3, $a0, $zero
    /* 11AC84 80173814 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 11AC88 80173818 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 11AC8C 8017381C AFB60038 */  sw         $s6, 0x38($sp)
    /* 11AC90 80173820 AFB50034 */  sw         $s5, 0x34($sp)
    /* 11AC94 80173824 AFB40030 */  sw         $s4, 0x30($sp)
    /* 11AC98 80173828 AFB20028 */  sw         $s2, 0x28($sp)
    /* 11AC9C 8017382C AFB10024 */  sw         $s1, 0x24($sp)
    /* 11ACA0 80173830 AFB00020 */  sw         $s0, 0x20($sp)
    /* 11ACA4 80173834 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 11ACA8 80173838 0C05CDDE */  jal        func_80173778_ovl5
    /* 11ACAC 8017383C AFA50074 */   sw        $a1, 0x74($sp)
    /* 11ACB0 80173840 00137080 */  sll        $t6, $s3, 2
    /* 11ACB4 80173844 3C0F8019 */  lui        $t7, %hi(D_8018E998_ovl5)
    /* 11ACB8 80173848 01EE7821 */  addu       $t7, $t7, $t6
    /* 11ACBC 8017384C 8DEFE998 */  lw         $t7, %lo(D_8018E998_ovl5)($t7)
    /* 11ACC0 80173850 0040F025 */  or         $fp, $v0, $zero
    /* 11ACC4 80173854 8FB90074 */  lw         $t9, 0x74($sp)
    /* 11ACC8 80173858 004FC023 */  subu       $t8, $v0, $t7
    /* 11ACCC 8017385C 2B01000C */  slti       $at, $t8, 0xC
    /* 11ACD0 80173860 50200069 */  beql       $at, $zero, .L80173A08_ovl5
    /* 11ACD4 80173864 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 11ACD8 80173868 1B200066 */  blez       $t9, .L80173A04_ovl5
    /* 11ACDC 8017386C 0000A025 */   or        $s4, $zero, $zero
    /* 11ACE0 80173870 3C0143E1 */  lui        $at, (0x43E10000 >> 16)
    /* 11ACE4 80173874 3C17800F */  lui        $s7, %hi(D_800E9C60)
    /* 11ACE8 80173878 3C16800F */  lui        $s6, %hi(D_800E9AA0)
    /* 11ACEC 8017387C 3C15800F */  lui        $s5, %hi(D_800E98E0)
    /* 11ACF0 80173880 4481A000 */  mtc1       $at, $f20
    /* 11ACF4 80173884 26B598E0 */  addiu      $s5, $s5, %lo(D_800E98E0)
    /* 11ACF8 80173888 26D69AA0 */  addiu      $s6, $s6, %lo(D_800E9AA0)
    /* 11ACFC 8017388C 26F79C60 */  addiu      $s7, $s7, %lo(D_800E9C60)
    /* 11AD00 80173890 24500001 */  addiu      $s0, $v0, 0x1
    /* 11AD04 80173894 2A010052 */  slti       $at, $s0, 0x52
  .L80173898_ovl5:
    /* 11AD08 80173898 1020005A */  beqz       $at, .L80173A04_ovl5
    /* 11AD0C 8017389C 27A40064 */   addiu     $a0, $sp, 0x64
    /* 11AD10 801738A0 02602825 */  or         $a1, $s3, $zero
    /* 11AD14 801738A4 0C05CAE6 */  jal        func_80172B98_ovl5
    /* 11AD18 801738A8 03C03025 */   or        $a2, $fp, $zero
    /* 11AD1C 801738AC 24040008 */  addiu      $a0, $zero, 0x8
    /* 11AD20 801738B0 00002825 */  or         $a1, $zero, $zero
    /* 11AD24 801738B4 0C02BB02 */  jal        request_track_general
    /* 11AD28 801738B8 24060070 */   addiu     $a2, $zero, 0x70
    /* 11AD2C 801738BC 44944000 */  mtc1       $s4, $f8
    /* 11AD30 801738C0 00021880 */  sll        $v1, $v0, 2
    /* 11AD34 801738C4 02A34821 */  addu       $t1, $s5, $v1
    /* 11AD38 801738C8 468042A0 */  cvt.s.w    $f10, $f8
    /* 11AD3C 801738CC 24080002 */  addiu      $t0, $zero, 0x2
    /* 11AD40 801738D0 AD280000 */  sw         $t0, 0x0($t1)
    /* 11AD44 801738D4 02C35021 */  addu       $t2, $s6, $v1
    /* 11AD48 801738D8 AD530000 */  sw         $s3, 0x0($t2)
    /* 11AD4C 801738DC 02E35821 */  addu       $t3, $s7, $v1
    /* 11AD50 801738E0 AD700000 */  sw         $s0, 0x0($t3)
    /* 11AD54 801738E4 460AA402 */  mul.s      $f16, $f20, $f10
    /* 11AD58 801738E8 C7A4006C */  lwc1       $f4, 0x6C($sp)
    /* 11AD5C 801738EC 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 11AD60 801738F0 00230821 */  addu       $at, $at, $v1
    /* 11AD64 801738F4 00408825 */  or         $s1, $v0, $zero
    /* 11AD68 801738F8 46142180 */  add.s      $f6, $f4, $f20
    /* 11AD6C 801738FC 02602025 */  or         $a0, $s3, $zero
    /* 11AD70 80173900 02002825 */  or         $a1, $s0, $zero
    /* 11AD74 80173904 46103480 */  add.s      $f18, $f6, $f16
    /* 11AD78 80173908 0C05CAC4 */  jal        func_80172B10_ovl5
    /* 11AD7C 8017390C E432A6E0 */   swc1      $f18, %lo(D_800EA6E0)($at)
    /* 11AD80 80173910 2401000D */  addiu      $at, $zero, 0xD
    /* 11AD84 80173914 10410003 */  beq        $v0, $at, .L80173924_ovl5
    /* 11AD88 80173918 00409025 */   or        $s2, $v0, $zero
    /* 11AD8C 8017391C 2401000E */  addiu      $at, $zero, 0xE
    /* 11AD90 80173920 14410010 */  bne        $v0, $at, .L80173964_ovl5
  .L80173924_ovl5:
    /* 11AD94 80173924 24040008 */   addiu     $a0, $zero, 0x8
    /* 11AD98 80173928 00002825 */  or         $a1, $zero, $zero
    /* 11AD9C 8017392C 0C02BB02 */  jal        request_track_general
    /* 11ADA0 80173930 24060070 */   addiu     $a2, $zero, 0x70
    /* 11ADA4 80173934 00021880 */  sll        $v1, $v0, 2
    /* 11ADA8 80173938 02A36821 */  addu       $t5, $s5, $v1
    /* 11ADAC 8017393C 240C000B */  addiu      $t4, $zero, 0xB
    /* 11ADB0 80173940 ADAC0000 */  sw         $t4, 0x0($t5)
    /* 11ADB4 80173944 02C37021 */  addu       $t6, $s6, $v1
    /* 11ADB8 80173948 ADD30000 */  sw         $s3, 0x0($t6)
    /* 11ADBC 8017394C 02E37821 */  addu       $t7, $s7, $v1
    /* 11ADC0 80173950 0011C080 */  sll        $t8, $s1, 2
    /* 11ADC4 80173954 3C01800F */  lui        $at, %hi(D_800EA520)
    /* 11ADC8 80173958 ADF00000 */  sw         $s0, 0x0($t7)
    /* 11ADCC 8017395C 00380821 */  addu       $at, $at, $t8
    /* 11ADD0 80173960 AC22A520 */  sw         $v0, %lo(D_800EA520)($at)
  .L80173964_ovl5:
    /* 11ADD4 80173964 0C05BFE2 */  jal        func_8016FF88_ovl5
    /* 11ADD8 80173968 02402025 */   or        $a0, $s2, $zero
    /* 11ADDC 8017396C 10400011 */  beqz       $v0, .L801739B4_ovl5
    /* 11ADE0 80173970 24040008 */   addiu     $a0, $zero, 0x8
    /* 11ADE4 80173974 3C08800F */  lui        $t0, %hi(D_800EA520)
    /* 11ADE8 80173978 2508A520 */  addiu      $t0, $t0, %lo(D_800EA520)
    /* 11ADEC 8017397C 0011C880 */  sll        $t9, $s1, 2
    /* 11ADF0 80173980 03289021 */  addu       $s2, $t9, $t0
    /* 11ADF4 80173984 00002825 */  or         $a1, $zero, $zero
    /* 11ADF8 80173988 0C02BB02 */  jal        request_track_general
    /* 11ADFC 8017398C 24060070 */   addiu     $a2, $zero, 0x70
    /* 11AE00 80173990 00021880 */  sll        $v1, $v0, 2
    /* 11AE04 80173994 02A35021 */  addu       $t2, $s5, $v1
    /* 11AE08 80173998 2409000C */  addiu      $t1, $zero, 0xC
    /* 11AE0C 8017399C AD490000 */  sw         $t1, 0x0($t2)
    /* 11AE10 801739A0 02C35821 */  addu       $t3, $s6, $v1
    /* 11AE14 801739A4 AD730000 */  sw         $s3, 0x0($t3)
    /* 11AE18 801739A8 02E36021 */  addu       $t4, $s7, $v1
    /* 11AE1C 801739AC AD900000 */  sw         $s0, 0x0($t4)
    /* 11AE20 801739B0 AE420000 */  sw         $v0, 0x0($s2)
  .L801739B4_ovl5:
    /* 11AE24 801739B4 0C05CB14 */  jal        func_80172C50_ovl5
    /* 11AE28 801739B8 02002025 */   or        $a0, $s0, $zero
    /* 11AE2C 801739BC 1040000C */  beqz       $v0, .L801739F0_ovl5
    /* 11AE30 801739C0 24040008 */   addiu     $a0, $zero, 0x8
    /* 11AE34 801739C4 00002825 */  or         $a1, $zero, $zero
    /* 11AE38 801739C8 0C02BB02 */  jal        request_track_general
    /* 11AE3C 801739CC 24060070 */   addiu     $a2, $zero, 0x70
    /* 11AE40 801739D0 00021880 */  sll        $v1, $v0, 2
    /* 11AE44 801739D4 02A37021 */  addu       $t6, $s5, $v1
    /* 11AE48 801739D8 240D0010 */  addiu      $t5, $zero, 0x10
    /* 11AE4C 801739DC ADCD0000 */  sw         $t5, 0x0($t6)
    /* 11AE50 801739E0 02C37821 */  addu       $t7, $s6, $v1
    /* 11AE54 801739E4 ADF30000 */  sw         $s3, 0x0($t7)
    /* 11AE58 801739E8 02E3C021 */  addu       $t8, $s7, $v1
    /* 11AE5C 801739EC AF100000 */  sw         $s0, 0x0($t8)
  .L801739F0_ovl5:
    /* 11AE60 801739F0 8FB90074 */  lw         $t9, 0x74($sp)
    /* 11AE64 801739F4 26940001 */  addiu      $s4, $s4, 0x1
    /* 11AE68 801739F8 26100001 */  addiu      $s0, $s0, 0x1
    /* 11AE6C 801739FC 5699FFA6 */  bnel       $s4, $t9, .L80173898_ovl5
    /* 11AE70 80173A00 2A010052 */   slti      $at, $s0, 0x52
  .L80173A04_ovl5:
    /* 11AE74 80173A04 8FBF0044 */  lw         $ra, 0x44($sp)
  .L80173A08_ovl5:
    /* 11AE78 80173A08 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 11AE7C 80173A0C 8FB00020 */  lw         $s0, 0x20($sp)
    /* 11AE80 80173A10 8FB10024 */  lw         $s1, 0x24($sp)
    /* 11AE84 80173A14 8FB20028 */  lw         $s2, 0x28($sp)
    /* 11AE88 80173A18 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 11AE8C 80173A1C 8FB40030 */  lw         $s4, 0x30($sp)
    /* 11AE90 80173A20 8FB50034 */  lw         $s5, 0x34($sp)
    /* 11AE94 80173A24 8FB60038 */  lw         $s6, 0x38($sp)
    /* 11AE98 80173A28 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 11AE9C 80173A2C 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 11AEA0 80173A30 03E00008 */  jr         $ra
    /* 11AEA4 80173A34 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_80173804_ovl5
.size func_80173804_ovl5, . - func_80173804_ovl5
