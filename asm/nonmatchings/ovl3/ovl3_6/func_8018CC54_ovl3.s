nonmatching func_8018CC54_ovl3, 0x80C

glabel func_8018CC54_ovl3
    /* ED694 8018CC54 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* ED698 8018CC58 AFB20020 */  sw         $s2, 0x20($sp)
    /* ED69C 8018CC5C 3C128013 */  lui        $s2, %hi(gKirbyState)
    /* ED6A0 8018CC60 2652E7C0 */  addiu      $s2, $s2, %lo(gKirbyState)
    /* ED6A4 8018CC64 8E4E00A0 */  lw         $t6, 0xA0($s2)
    /* ED6A8 8018CC68 AFBF0024 */  sw         $ra, 0x24($sp)
    /* ED6AC 8018CC6C AFB1001C */  sw         $s1, 0x1C($sp)
    /* ED6B0 8018CC70 AFB00018 */  sw         $s0, 0x18($sp)
    /* ED6B4 8018CC74 15C00093 */  bnez       $t6, .L8018CEC4_ovl3
    /* ED6B8 8018CC78 AFA40028 */   sw        $a0, 0x28($sp)
    /* ED6BC 8018CC7C AE400030 */  sw         $zero, 0x30($s2)
    /* ED6C0 8018CC80 A2400007 */  sb         $zero, 0x7($s2)
    /* ED6C4 8018CC84 A64000D2 */  sh         $zero, 0xD2($s2)
    /* ED6C8 8018CC88 0C0473D6 */  jal        func_8011CF58
    /* ED6CC 8018CC8C A64000D0 */   sh        $zero, 0xD0($s2)
    /* ED6D0 8018CC90 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* ED6D4 8018CC94 8E580090 */  lw         $t8, 0x90($s2)
    /* ED6D8 8018CC98 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* ED6DC 8018CC9C 8E280000 */  lw         $t0, 0x0($s1)
    /* ED6E0 8018CCA0 AE5800A0 */  sw         $t8, 0xA0($s2)
    /* ED6E4 8018CCA4 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* ED6E8 8018CCA8 8D090000 */  lw         $t1, 0x0($t0)
    /* ED6EC 8018CCAC 2419003F */  addiu      $t9, $zero, 0x3F
    /* ED6F0 8018CCB0 3C0B8019 */  lui        $t3, %hi(D_80190358_ovl3)
    /* ED6F4 8018CCB4 00095080 */  sll        $t2, $t1, 2
    /* ED6F8 8018CCB8 002A0821 */  addu       $at, $at, $t2
    /* ED6FC 8018CCBC AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
    /* ED700 8018CCC0 256B0358 */  addiu      $t3, $t3, %lo(D_80190358_ovl3)
    /* ED704 8018CCC4 3C040002 */  lui        $a0, (0x2002A >> 16)
    /* ED708 8018CCC8 AE4B015C */  sw         $t3, 0x15C($s2)
    /* ED70C 8018CCCC 0C048BC2 */  jal        func_80122F08
    /* ED710 8018CCD0 3484002A */   ori       $a0, $a0, (0x2002A & 0xFFFF)
    /* ED714 8018CCD4 8E230000 */  lw         $v1, 0x0($s1)
    /* ED718 8018CCD8 240C0009 */  addiu      $t4, $zero, 0x9
    /* ED71C 8018CCDC AE4C0154 */  sw         $t4, 0x154($s2)
    /* ED720 8018CCE0 AE40003C */  sw         $zero, 0x3C($s2)
    /* ED724 8018CCE4 AE400044 */  sw         $zero, 0x44($s2)
    /* ED728 8018CCE8 8C6E0000 */  lw         $t6, 0x0($v1)
    /* ED72C 8018CCEC 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* ED730 8018CCF0 24180016 */  addiu      $t8, $zero, 0x16
    /* ED734 8018CCF4 000E7880 */  sll        $t7, $t6, 2
    /* ED738 8018CCF8 002F0821 */  addu       $at, $at, $t7
    /* ED73C 8018CCFC AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* ED740 8018CD00 8C680000 */  lw         $t0, 0x0($v1)
    /* ED744 8018CD04 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* ED748 8018CD08 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* ED74C 8018CD0C 00084880 */  sll        $t1, $t0, 2
    /* ED750 8018CD10 00290821 */  addu       $at, $at, $t1
    /* ED754 8018CD14 AC389AA0 */  sw         $t8, %lo(D_800E9AA0)($at)
    /* ED758 8018CD18 8C620000 */  lw         $v0, 0x0($v1)
    /* ED75C 8018CD1C 3C06800F */  lui        $a2, %hi(D_800E9AA0)
    /* ED760 8018CD20 24040002 */  addiu      $a0, $zero, 0x2
    /* ED764 8018CD24 00021080 */  sll        $v0, $v0, 2
    /* ED768 8018CD28 0322C821 */  addu       $t9, $t9, $v0
    /* ED76C 8018CD2C 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* ED770 8018CD30 00C23021 */  addu       $a2, $a2, $v0
    /* ED774 8018CD34 24050001 */  addiu      $a1, $zero, 0x1
    /* ED778 8018CD38 17200003 */  bnez       $t9, .L8018CD48_ovl3
    /* ED77C 8018CD3C 3C0A800E */   lui       $t2, %hi(D_800DFBD0)
    /* ED780 8018CD40 10000008 */  b          .L8018CD64_ovl3
    /* ED784 8018CD44 AE40004C */   sw        $zero, 0x4C($s2)
  .L8018CD48_ovl3:
    /* ED788 8018CD48 01425021 */  addu       $t2, $t2, $v0
    /* ED78C 8018CD4C 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
    /* ED790 8018CD50 8CC69AA0 */  lw         $a2, %lo(D_800E9AA0)($a2)
    /* ED794 8018CD54 0C02A040 */  jal        func_800A8100
    /* ED798 8018CD58 8D470018 */   lw        $a3, 0x18($t2)
    /* ED79C 8018CD5C AE42004C */  sw         $v0, 0x4C($s2)
    /* ED7A0 8018CD60 8E230000 */  lw         $v1, 0x0($s1)
  .L8018CD64_ovl3:
    /* ED7A4 8018CD64 8E4B0034 */  lw         $t3, 0x34($s2)
    /* ED7A8 8018CD68 3C05800F */  lui        $a1, %hi(D_800E8AE0)
    /* ED7AC 8018CD6C 24A58AE0 */  addiu      $a1, $a1, %lo(D_800E8AE0)
    /* ED7B0 8018CD70 356C8000 */  ori        $t4, $t3, 0x8000
    /* ED7B4 8018CD74 AE4C0034 */  sw         $t4, 0x34($s2)
    /* ED7B8 8018CD78 8C620000 */  lw         $v0, 0x0($v1)
    /* ED7BC 8018CD7C 24040007 */  addiu      $a0, $zero, 0x7
    /* ED7C0 8018CD80 00021080 */  sll        $v0, $v0, 2
    /* ED7C4 8018CD84 00A26821 */  addu       $t5, $a1, $v0
    /* ED7C8 8018CD88 8DAE0000 */  lw         $t6, 0x0($t5)
    /* ED7CC 8018CD8C 31CF0006 */  andi       $t7, $t6, 0x6
    /* ED7D0 8018CD90 15E00003 */  bnez       $t7, .L8018CDA0_ovl3
    /* ED7D4 8018CD94 00000000 */   nop
    /* ED7D8 8018CD98 10000001 */  b          .L8018CDA0_ovl3
    /* ED7DC 8018CD9C 24040005 */   addiu     $a0, $zero, 0x5
  .L8018CDA0_ovl3:
    /* ED7E0 8018CDA0 44843000 */  mtc1       $a0, $f6
    /* ED7E4 8018CDA4 3C018019 */  lui        $at, %hi(D_80197B04_ovl3)
    /* ED7E8 8018CDA8 C4247B04 */  lwc1       $f4, %lo(D_80197B04_ovl3)($at)
    /* ED7EC 8018CDAC 46803220 */  cvt.s.w    $f8, $f6
    /* ED7F0 8018CDB0 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* ED7F4 8018CDB4 00220821 */  addu       $at, $at, $v0
    /* ED7F8 8018CDB8 46082283 */  div.s      $f10, $f4, $f8
    /* ED7FC 8018CDBC E42AA6E0 */  swc1       $f10, %lo(D_800EA6E0)($at)
    /* ED800 8018CDC0 8C680000 */  lw         $t0, 0x0($v1)
    /* ED804 8018CDC4 3C018019 */  lui        $at, %hi(D_80197B08_ovl3)
    /* ED808 8018CDC8 0008C080 */  sll        $t8, $t0, 2
    /* ED80C 8018CDCC 00B84821 */  addu       $t1, $a1, $t8
    /* ED810 8018CDD0 8D390000 */  lw         $t9, 0x0($t1)
    /* ED814 8018CDD4 332A0006 */  andi       $t2, $t9, 0x6
    /* ED818 8018CDD8 15400006 */  bnez       $t2, .L8018CDF4_ovl3
    /* ED81C 8018CDDC 00000000 */   nop
    /* ED820 8018CDE0 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* ED824 8018CDE4 44818000 */  mtc1       $at, $f16
    /* ED828 8018CDE8 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
    /* ED82C 8018CDEC 10000004 */  b          .L8018CE00_ovl3
    /* ED830 8018CDF0 E4307238 */   swc1      $f16, %lo(D_800D71E8 + 0x50)($at)
  .L8018CDF4_ovl3:
    /* ED834 8018CDF4 C4327B08 */  lwc1       $f18, %lo(D_80197B08_ovl3)($at)
    /* ED838 8018CDF8 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
    /* ED83C 8018CDFC E4327238 */  swc1       $f18, %lo(D_800D71E8 + 0x50)($at)
  .L8018CE00_ovl3:
    /* ED840 8018CE00 8C620000 */  lw         $v0, 0x0($v1)
    /* ED844 8018CE04 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
    /* ED848 8018CE08 C4207238 */  lwc1       $f0, %lo(D_800D71E8 + 0x50)($at)
    /* ED84C 8018CE0C 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* ED850 8018CE10 00021080 */  sll        $v0, $v0, 2
    /* ED854 8018CE14 00220821 */  addu       $at, $at, $v0
    /* ED858 8018CE18 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
    /* ED85C 8018CE1C 3C10800E */  lui        $s0, %hi(D_800E64D0)
    /* ED860 8018CE20 261064D0 */  addiu      $s0, $s0, %lo(D_800E64D0)
    /* ED864 8018CE24 46003102 */  mul.s      $f4, $f6, $f0
    /* ED868 8018CE28 44805000 */  mtc1       $zero, $f10
    /* ED86C 8018CE2C 02025821 */  addu       $t3, $s0, $v0
    /* ED870 8018CE30 44804000 */  mtc1       $zero, $f8
    /* ED874 8018CE34 3C01800E */  lui        $at, %hi(D_800E6690)
    /* ED878 8018CE38 460A003C */  c.lt.s     $f0, $f10
    /* ED87C 8018CE3C E5640000 */  swc1       $f4, 0x0($t3)
    /* ED880 8018CE40 8C6C0000 */  lw         $t4, 0x0($v1)
    /* ED884 8018CE44 000C6880 */  sll        $t5, $t4, 2
    /* ED888 8018CE48 002D0821 */  addu       $at, $at, $t5
    /* ED88C 8018CE4C 45000008 */  bc1f       .L8018CE70_ovl3
    /* ED890 8018CE50 E4286690 */   swc1      $f8, %lo(D_800E6690)($at)
    /* ED894 8018CE54 8C6E0000 */  lw         $t6, 0x0($v1)
    /* ED898 8018CE58 3C01800E */  lui        $at, %hi(D_800E6850)
    /* ED89C 8018CE5C 46000407 */  neg.s      $f16, $f0
    /* ED8A0 8018CE60 000E7880 */  sll        $t7, $t6, 2
    /* ED8A4 8018CE64 002F0821 */  addu       $at, $at, $t7
    /* ED8A8 8018CE68 10000006 */  b          .L8018CE84_ovl3
    /* ED8AC 8018CE6C E4306850 */   swc1      $f16, %lo(D_800E6850)($at)
  .L8018CE70_ovl3:
    /* ED8B0 8018CE70 8C680000 */  lw         $t0, 0x0($v1)
    /* ED8B4 8018CE74 3C01800E */  lui        $at, %hi(D_800E6850)
    /* ED8B8 8018CE78 0008C080 */  sll        $t8, $t0, 2
    /* ED8BC 8018CE7C 00380821 */  addu       $at, $at, $t8
    /* ED8C0 8018CE80 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L8018CE84_ovl3:
    /* ED8C4 8018CE84 0C047701 */  jal        func_8011DC04
    /* ED8C8 8018CE88 2404003C */   addiu     $a0, $zero, 0x3C
    /* ED8CC 8018CE8C 3C040002 */  lui        $a0, (0x20261 >> 16)
    /* ED8D0 8018CE90 3C050002 */  lui        $a1, (0x20262 >> 16)
    /* ED8D4 8018CE94 34A50262 */  ori        $a1, $a1, (0x20262 & 0xFFFF)
    /* ED8D8 8018CE98 34840261 */  ori        $a0, $a0, (0x20261 & 0xFFFF)
    /* ED8DC 8018CE9C 0C048C3A */  jal        func_801230E8
    /* ED8E0 8018CEA0 24060001 */   addiu     $a2, $zero, 0x1
    /* ED8E4 8018CEA4 0C04843F */  jal        func_801210FC
    /* ED8E8 8018CEA8 00000000 */   nop
    /* ED8EC 8018CEAC 10400004 */  beqz       $v0, .L8018CEC0_ovl3
    /* ED8F0 8018CEB0 24190001 */   addiu     $t9, $zero, 0x1
    /* ED8F4 8018CEB4 24090002 */  addiu      $t1, $zero, 0x2
    /* ED8F8 8018CEB8 10000002 */  b          .L8018CEC4_ovl3
    /* ED8FC 8018CEBC AE490044 */   sw        $t1, 0x44($s2)
  .L8018CEC0_ovl3:
    /* ED900 8018CEC0 AE590044 */  sw         $t9, 0x44($s2)
  .L8018CEC4_ovl3:
    /* ED904 8018CEC4 8E4A0044 */  lw         $t2, 0x44($s2)
    /* ED908 8018CEC8 3C10800E */  lui        $s0, %hi(D_800E64D0)
    /* ED90C 8018CECC 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* ED910 8018CED0 254BFFFF */  addiu      $t3, $t2, -0x1
    /* ED914 8018CED4 2D610006 */  sltiu      $at, $t3, 0x6
    /* ED918 8018CED8 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* ED91C 8018CEDC 10200158 */  beqz       $at, .L8018D440_ovl3
    /* ED920 8018CEE0 261064D0 */   addiu     $s0, $s0, %lo(D_800E64D0)
    /* ED924 8018CEE4 000B5880 */  sll        $t3, $t3, 2
    /* ED928 8018CEE8 3C018019 */  lui        $at, %hi(jtbl_80197B0C_ovl3)
    /* ED92C 8018CEEC 002B0821 */  addu       $at, $at, $t3
    /* ED930 8018CEF0 8C2B7B0C */  lw         $t3, %lo(jtbl_80197B0C_ovl3)($at)
    /* ED934 8018CEF4 01600008 */  jr         $t3
    /* ED938 8018CEF8 00000000 */   nop
  jlabel .L8018CEFC_ovl3
    /* ED93C 8018CEFC 8E2C0000 */  lw         $t4, 0x0($s1)
    /* ED940 8018CF00 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* ED944 8018CF04 24010001 */  addiu      $at, $zero, 0x1
    /* ED948 8018CF08 8D8D0000 */  lw         $t5, 0x0($t4)
    /* ED94C 8018CF0C 000D7080 */  sll        $t6, $t5, 2
    /* ED950 8018CF10 01EE7821 */  addu       $t7, $t7, $t6
    /* ED954 8018CF14 8DEF98E0 */  lw         $t7, %lo(D_800E98E0)($t7)
    /* ED958 8018CF18 15E10008 */  bne        $t7, $at, .L8018CF3C_ovl3
    /* ED95C 8018CF1C 3C040002 */   lui       $a0, (0x20267 >> 16)
    /* ED960 8018CF20 3C050002 */  lui        $a1, (0x20268 >> 16)
    /* ED964 8018CF24 34A50268 */  ori        $a1, $a1, (0x20268 & 0xFFFF)
    /* ED968 8018CF28 34840267 */  ori        $a0, $a0, (0x20267 & 0xFFFF)
    /* ED96C 8018CF2C 0C048C3A */  jal        func_801230E8
    /* ED970 8018CF30 00003025 */   or        $a2, $zero, $zero
    /* ED974 8018CF34 10000142 */  b          .L8018D440_ovl3
    /* ED978 8018CF38 00000000 */   nop
  .L8018CF3C_ovl3:
    /* ED97C 8018CF3C 3C040002 */  lui        $a0, (0x20263 >> 16)
    /* ED980 8018CF40 3C050002 */  lui        $a1, (0x20264 >> 16)
    /* ED984 8018CF44 34A50264 */  ori        $a1, $a1, (0x20264 & 0xFFFF)
    /* ED988 8018CF48 34840263 */  ori        $a0, $a0, (0x20263 & 0xFFFF)
    /* ED98C 8018CF4C 0C048C3A */  jal        func_801230E8
    /* ED990 8018CF50 00003025 */   or        $a2, $zero, $zero
    /* ED994 8018CF54 1000013A */  b          .L8018D440_ovl3
    /* ED998 8018CF58 00000000 */   nop
  jlabel .L8018CF5C_ovl3
    /* ED99C 8018CF5C 8E230000 */  lw         $v1, 0x0($s1)
    /* ED9A0 8018CF60 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* ED9A4 8018CF64 3C018019 */  lui        $at, %hi(D_80197B24_ovl3)
    /* ED9A8 8018CF68 8C680000 */  lw         $t0, 0x0($v1)
    /* ED9AC 8018CF6C 0008C080 */  sll        $t8, $t0, 2
    /* ED9B0 8018CF70 01384821 */  addu       $t1, $t1, $t8
    /* ED9B4 8018CF74 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
    /* ED9B8 8018CF78 31390006 */  andi       $t9, $t1, 0x6
    /* ED9BC 8018CF7C 17200006 */  bnez       $t9, .L8018CF98_ovl3
    /* ED9C0 8018CF80 00000000 */   nop
    /* ED9C4 8018CF84 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* ED9C8 8018CF88 44819000 */  mtc1       $at, $f18
    /* ED9CC 8018CF8C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
    /* ED9D0 8018CF90 10000004 */  b          .L8018CFA4_ovl3
    /* ED9D4 8018CF94 E4327238 */   swc1      $f18, %lo(D_800D71E8 + 0x50)($at)
  .L8018CF98_ovl3:
    /* ED9D8 8018CF98 C4267B24 */  lwc1       $f6, %lo(D_80197B24_ovl3)($at)
    /* ED9DC 8018CF9C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
    /* ED9E0 8018CFA0 E4267238 */  swc1       $f6, %lo(D_800D71E8 + 0x50)($at)
  .L8018CFA4_ovl3:
    /* ED9E4 8018CFA4 8C620000 */  lw         $v0, 0x0($v1)
    /* ED9E8 8018CFA8 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
    /* ED9EC 8018CFAC C4207238 */  lwc1       $f0, %lo(D_800D71E8 + 0x50)($at)
    /* ED9F0 8018CFB0 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* ED9F4 8018CFB4 00021080 */  sll        $v0, $v0, 2
    /* ED9F8 8018CFB8 00220821 */  addu       $at, $at, $v0
    /* ED9FC 8018CFBC C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
    /* EDA00 8018CFC0 44808000 */  mtc1       $zero, $f16
    /* EDA04 8018CFC4 02025021 */  addu       $t2, $s0, $v0
    /* EDA08 8018CFC8 46002202 */  mul.s      $f8, $f4, $f0
    /* EDA0C 8018CFCC 4610003C */  c.lt.s     $f0, $f16
    /* EDA10 8018CFD0 44805000 */  mtc1       $zero, $f10
    /* EDA14 8018CFD4 3C01800E */  lui        $at, %hi(D_800E6690)
    /* EDA18 8018CFD8 E5480000 */  swc1       $f8, 0x0($t2)
    /* EDA1C 8018CFDC 8C6B0000 */  lw         $t3, 0x0($v1)
    /* EDA20 8018CFE0 000B6080 */  sll        $t4, $t3, 2
    /* EDA24 8018CFE4 002C0821 */  addu       $at, $at, $t4
    /* EDA28 8018CFE8 45000008 */  bc1f       .L8018D00C_ovl3
    /* EDA2C 8018CFEC E42A6690 */   swc1      $f10, %lo(D_800E6690)($at)
    /* EDA30 8018CFF0 8C6D0000 */  lw         $t5, 0x0($v1)
    /* EDA34 8018CFF4 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EDA38 8018CFF8 46000487 */  neg.s      $f18, $f0
    /* EDA3C 8018CFFC 000D7080 */  sll        $t6, $t5, 2
    /* EDA40 8018D000 002E0821 */  addu       $at, $at, $t6
    /* EDA44 8018D004 10000006 */  b          .L8018D020_ovl3
    /* EDA48 8018D008 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
  .L8018D00C_ovl3:
    /* EDA4C 8018D00C 8C6F0000 */  lw         $t7, 0x0($v1)
    /* EDA50 8018D010 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EDA54 8018D014 000F4080 */  sll        $t0, $t7, 2
    /* EDA58 8018D018 00280821 */  addu       $at, $at, $t0
    /* EDA5C 8018D01C E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L8018D020_ovl3:
    /* EDA60 8018D020 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* EDA64 8018D024 44816000 */  mtc1       $at, $f12
    /* EDA68 8018D028 0C02BB30 */  jal        func_800AECC0
    /* EDA6C 8018D02C 00000000 */   nop
    /* EDA70 8018D030 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* EDA74 8018D034 44816000 */  mtc1       $at, $f12
    /* EDA78 8018D038 0C02BB48 */  jal        func_800AED20
    /* EDA7C 8018D03C 00000000 */   nop
    /* EDA80 8018D040 3C120002 */  lui        $s2, (0x20269 >> 16)
    /* EDA84 8018D044 36520269 */  ori        $s2, $s2, (0x20269 & 0xFFFF)
    /* EDA88 8018D048 8E230000 */  lw         $v1, 0x0($s1)
  .L8018D04C_ovl3:
    /* EDA8C 8018D04C 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* EDA90 8018D050 273998E0 */  addiu      $t9, $t9, %lo(D_800E98E0)
    /* EDA94 8018D054 8C780000 */  lw         $t8, 0x0($v1)
    /* EDA98 8018D058 24010001 */  addiu      $at, $zero, 0x1
    /* EDA9C 8018D05C 3C040002 */  lui        $a0, (0x20265 >> 16)
    /* EDAA0 8018D060 00184880 */  sll        $t1, $t8, 2
    /* EDAA4 8018D064 01391021 */  addu       $v0, $t1, $t9
    /* EDAA8 8018D068 8C4A0000 */  lw         $t2, 0x0($v0)
    /* EDAAC 8018D06C 3C0B800D */  lui        $t3, %hi(gKirbyController)
    /* EDAB0 8018D070 34840265 */  ori        $a0, $a0, (0x20265 & 0xFFFF)
    /* EDAB4 8018D074 15410003 */  bne        $t2, $at, .L8018D084_ovl3
    /* EDAB8 8018D078 3C050002 */   lui       $a1, (0x20266 >> 16)
    /* EDABC 8018D07C 1000001A */  b          .L8018D0E8_ovl3
    /* EDAC0 8018D080 AC400000 */   sw        $zero, 0x0($v0)
  .L8018D084_ovl3:
    /* EDAC4 8018D084 AC400000 */  sw         $zero, 0x0($v0)
    /* EDAC8 8018D088 956B6FE8 */  lhu        $t3, %lo(gKirbyController)($t3)
    /* EDACC 8018D08C 34A50266 */  ori        $a1, $a1, (0x20266 & 0xFFFF)
    /* EDAD0 8018D090 00003025 */  or         $a2, $zero, $zero
    /* EDAD4 8018D094 316C0300 */  andi       $t4, $t3, 0x300
    /* EDAD8 8018D098 1180000C */  beqz       $t4, .L8018D0CC_ovl3
    /* EDADC 8018D09C 3C108019 */   lui       $s0, %hi(func_8018D460_ovl3)
    /* EDAE0 8018D0A0 0C048C3A */  jal        func_801230E8
    /* EDAE4 8018D0A4 2610D460 */   addiu     $s0, $s0, %lo(func_8018D460_ovl3)
    /* EDAE8 8018D0A8 8E2D0000 */  lw         $t5, 0x0($s1)
    /* EDAEC 8018D0AC 3C01800E */  lui        $at, %hi(D_800DF310)
    /* EDAF0 8018D0B0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* EDAF4 8018D0B4 000E7880 */  sll        $t7, $t6, 2
    /* EDAF8 8018D0B8 002F0821 */  addu       $at, $at, $t7
    /* EDAFC 8018D0BC 0C02BC9F */  jal        func_800AF27C
    /* EDB00 8018D0C0 AC30F310 */   sw        $s0, %lo(D_800DF310)($at)
    /* EDB04 8018D0C4 10000008 */  b          .L8018D0E8_ovl3
    /* EDB08 8018D0C8 00000000 */   nop
  .L8018D0CC_ovl3:
    /* EDB0C 8018D0CC 8C780000 */  lw         $t8, 0x0($v1)
    /* EDB10 8018D0D0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* EDB14 8018D0D4 24080002 */  addiu      $t0, $zero, 0x2
    /* EDB18 8018D0D8 00184880 */  sll        $t1, $t8, 2
    /* EDB1C 8018D0DC 00290821 */  addu       $at, $at, $t1
    /* EDB20 8018D0E0 100000D7 */  b          .L8018D440_ovl3
    /* EDB24 8018D0E4 AC2898E0 */   sw        $t0, %lo(D_800E98E0)($at)
  .L8018D0E8_ovl3:
    /* EDB28 8018D0E8 3C19800D */  lui        $t9, %hi(gKirbyController)
    /* EDB2C 8018D0EC 97396FE8 */  lhu        $t9, %lo(gKirbyController)($t9)
    /* EDB30 8018D0F0 3C050002 */  lui        $a1, (0x2026A >> 16)
    /* EDB34 8018D0F4 34A5026A */  ori        $a1, $a1, (0x2026A & 0xFFFF)
    /* EDB38 8018D0F8 332A0300 */  andi       $t2, $t9, 0x300
    /* EDB3C 8018D0FC 1140000E */  beqz       $t2, .L8018D138_ovl3
    /* EDB40 8018D100 02402025 */   or        $a0, $s2, $zero
    /* EDB44 8018D104 3C108019 */  lui        $s0, %hi(func_8018D460_ovl3)
    /* EDB48 8018D108 2610D460 */  addiu      $s0, $s0, %lo(func_8018D460_ovl3)
    /* EDB4C 8018D10C 0C048C3A */  jal        func_801230E8
    /* EDB50 8018D110 00003025 */   or        $a2, $zero, $zero
    /* EDB54 8018D114 8E2B0000 */  lw         $t3, 0x0($s1)
    /* EDB58 8018D118 3C01800E */  lui        $at, %hi(D_800DF310)
    /* EDB5C 8018D11C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* EDB60 8018D120 000C6880 */  sll        $t5, $t4, 2
    /* EDB64 8018D124 002D0821 */  addu       $at, $at, $t5
    /* EDB68 8018D128 0C02BC9F */  jal        func_800AF27C
    /* EDB6C 8018D12C AC30F310 */   sw        $s0, %lo(D_800DF310)($at)
    /* EDB70 8018D130 1000FFC6 */  b          .L8018D04C_ovl3
    /* EDB74 8018D134 8E230000 */   lw        $v1, 0x0($s1)
  .L8018D138_ovl3:
    /* EDB78 8018D138 8E2F0000 */  lw         $t7, 0x0($s1)
    /* EDB7C 8018D13C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* EDB80 8018D140 240E0001 */  addiu      $t6, $zero, 0x1
    /* EDB84 8018D144 8DF80000 */  lw         $t8, 0x0($t7)
    /* EDB88 8018D148 00184080 */  sll        $t0, $t8, 2
    /* EDB8C 8018D14C 00280821 */  addu       $at, $at, $t0
    /* EDB90 8018D150 100000BB */  b          .L8018D440_ovl3
    /* EDB94 8018D154 AC2E98E0 */   sw        $t6, %lo(D_800E98E0)($at)
  jlabel .L8018D158_ovl3
    /* EDB98 8018D158 0C047717 */  jal        func_8011DC5C
    /* EDB9C 8018D15C 00000000 */   nop
    /* EDBA0 8018D160 8E290000 */  lw         $t1, 0x0($s1)
    /* EDBA4 8018D164 3C01800F */  lui        $at, %hi(D_800E8920)
    /* EDBA8 8018D168 2404003E */  addiu      $a0, $zero, 0x3E
    /* EDBAC 8018D16C 8D390000 */  lw         $t9, 0x0($t1)
    /* EDBB0 8018D170 00195080 */  sll        $t2, $t9, 2
    /* EDBB4 8018D174 002A0821 */  addu       $at, $at, $t2
    /* EDBB8 8018D178 0C047701 */  jal        func_8011DC04
    /* EDBBC 8018D17C AC208920 */   sw        $zero, %lo(D_800E8920)($at)
    /* EDBC0 8018D180 8E230000 */  lw         $v1, 0x0($s1)
    /* EDBC4 8018D184 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
    /* EDBC8 8018D188 24010006 */  addiu      $at, $zero, 0x6
    /* EDBCC 8018D18C 8C6B0000 */  lw         $t3, 0x0($v1)
    /* EDBD0 8018D190 00002025 */  or         $a0, $zero, $zero
    /* EDBD4 8018D194 000B6080 */  sll        $t4, $t3, 2
    /* EDBD8 8018D198 01AC6821 */  addu       $t5, $t5, $t4
    /* EDBDC 8018D19C 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
    /* EDBE0 8018D1A0 31AF0006 */  andi       $t7, $t5, 0x6
    /* EDBE4 8018D1A4 15E10003 */  bne        $t7, $at, .L8018D1B4_ovl3
    /* EDBE8 8018D1A8 00000000 */   nop
    /* EDBEC 8018D1AC 10000001 */  b          .L8018D1B4_ovl3
    /* EDBF0 8018D1B0 24040001 */   addiu     $a0, $zero, 0x1
  .L8018D1B4_ovl3:
    /* EDBF4 8018D1B4 10800019 */  beqz       $a0, .L8018D21C_ovl3
    /* EDBF8 8018D1B8 3C014188 */   lui       $at, (0x41880000 >> 16)
    /* EDBFC 8018D1BC 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* EDC00 8018D1C0 44810000 */  mtc1       $at, $f0
    /* EDC04 8018D1C4 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* EDC08 8018D1C8 44813000 */  mtc1       $at, $f6
    /* EDC0C 8018D1CC 3C10800E */  lui        $s0, %hi(D_800E3210)
    /* EDC10 8018D1D0 26103210 */  addiu      $s0, $s0, %lo(D_800E3210)
    /* EDC14 8018D1D4 E64600CC */  swc1       $f6, 0xCC($s2)
    /* EDC18 8018D1D8 8C780000 */  lw         $t8, 0x0($v1)
    /* EDC1C 8018D1DC 3C018019 */  lui        $at, %hi(D_80197B28_ovl3)
    /* EDC20 8018D1E0 00187080 */  sll        $t6, $t8, 2
    /* EDC24 8018D1E4 020E4021 */  addu       $t0, $s0, $t6
    /* EDC28 8018D1E8 E5000000 */  swc1       $f0, 0x0($t0)
    /* EDC2C 8018D1EC 8C690000 */  lw         $t1, 0x0($v1)
    /* EDC30 8018D1F0 C4247B28 */  lwc1       $f4, %lo(D_80197B28_ovl3)($at)
    /* EDC34 8018D1F4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* EDC38 8018D1F8 0009C880 */  sll        $t9, $t1, 2
    /* EDC3C 8018D1FC 00390821 */  addu       $at, $at, $t9
    /* EDC40 8018D200 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
    /* EDC44 8018D204 8C6A0000 */  lw         $t2, 0x0($v1)
    /* EDC48 8018D208 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* EDC4C 8018D20C 000A5880 */  sll        $t3, $t2, 2
    /* EDC50 8018D210 002B0821 */  addu       $at, $at, $t3
    /* EDC54 8018D214 10000017 */  b          .L8018D274_ovl3
    /* EDC58 8018D218 E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
  .L8018D21C_ovl3:
    /* EDC5C 8018D21C 44810000 */  mtc1       $at, $f0
    /* EDC60 8018D220 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* EDC64 8018D224 44814000 */  mtc1       $at, $f8
    /* EDC68 8018D228 3C10800E */  lui        $s0, %hi(D_800E3210)
    /* EDC6C 8018D22C 26103210 */  addiu      $s0, $s0, %lo(D_800E3210)
    /* EDC70 8018D230 E64800CC */  swc1       $f8, 0xCC($s2)
    /* EDC74 8018D234 8C6C0000 */  lw         $t4, 0x0($v1)
    /* EDC78 8018D238 3C018019 */  lui        $at, %hi(D_80197B2C_ovl3)
    /* EDC7C 8018D23C 000C6880 */  sll        $t5, $t4, 2
    /* EDC80 8018D240 020D7821 */  addu       $t7, $s0, $t5
    /* EDC84 8018D244 E5E00000 */  swc1       $f0, 0x0($t7)
    /* EDC88 8018D248 8C780000 */  lw         $t8, 0x0($v1)
    /* EDC8C 8018D24C C42A7B2C */  lwc1       $f10, %lo(D_80197B2C_ovl3)($at)
    /* EDC90 8018D250 3C01800E */  lui        $at, %hi(D_800E3750)
    /* EDC94 8018D254 00187080 */  sll        $t6, $t8, 2
    /* EDC98 8018D258 002E0821 */  addu       $at, $at, $t6
    /* EDC9C 8018D25C E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
    /* EDCA0 8018D260 8C680000 */  lw         $t0, 0x0($v1)
    /* EDCA4 8018D264 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* EDCA8 8018D268 00084880 */  sll        $t1, $t0, 2
    /* EDCAC 8018D26C 00290821 */  addu       $at, $at, $t1
    /* EDCB0 8018D270 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
  .L8018D274_ovl3:
    /* EDCB4 8018D274 0C05A4F1 */  jal        func_801693C4_ovl3
    /* EDCB8 8018D278 24040013 */   addiu     $a0, $zero, 0x13
    /* EDCBC 8018D27C 3C040002 */  lui        $a0, (0x2026B >> 16)
    /* EDCC0 8018D280 3C050002 */  lui        $a1, (0x2026C >> 16)
    /* EDCC4 8018D284 34A5026C */  ori        $a1, $a1, (0x2026C & 0xFFFF)
    /* EDCC8 8018D288 3484026B */  ori        $a0, $a0, (0x2026B & 0xFFFF)
    /* EDCCC 8018D28C 0C048C3A */  jal        func_801230E8
    /* EDCD0 8018D290 24060001 */   addiu     $a2, $zero, 0x1
    /* EDCD4 8018D294 3C040002 */  lui        $a0, (0x2026D >> 16)
    /* EDCD8 8018D298 3C050002 */  lui        $a1, (0x2026E >> 16)
    /* EDCDC 8018D29C 34A5026E */  ori        $a1, $a1, (0x2026E & 0xFFFF)
    /* EDCE0 8018D2A0 3484026D */  ori        $a0, $a0, (0x2026D & 0xFFFF)
    /* EDCE4 8018D2A4 0C048C3A */  jal        func_801230E8
    /* EDCE8 8018D2A8 00003025 */   or        $a2, $zero, $zero
    /* EDCEC 8018D2AC 8E390000 */  lw         $t9, 0x0($s1)
    /* EDCF0 8018D2B0 C65000CC */  lwc1       $f16, 0xCC($s2)
    /* EDCF4 8018D2B4 8F2A0000 */  lw         $t2, 0x0($t9)
    /* EDCF8 8018D2B8 000A5880 */  sll        $t3, $t2, 2
    /* EDCFC 8018D2BC 020B6021 */  addu       $t4, $s0, $t3
    /* EDD00 8018D2C0 C5920000 */  lwc1       $f18, 0x0($t4)
    /* EDD04 8018D2C4 4612803C */  c.lt.s     $f16, $f18
    /* EDD08 8018D2C8 00000000 */  nop
    /* EDD0C 8018D2CC 4502000E */  bc1fl      .L8018D308_ovl3
    /* EDD10 8018D2D0 964800D2 */   lhu       $t0, 0xD2($s2)
  .L8018D2D4_ovl3:
    /* EDD14 8018D2D4 0C002DAF */  jal        ohSleep
    /* EDD18 8018D2D8 24040001 */   addiu     $a0, $zero, 0x1
    /* EDD1C 8018D2DC 8E2D0000 */  lw         $t5, 0x0($s1)
    /* EDD20 8018D2E0 C64600CC */  lwc1       $f6, 0xCC($s2)
    /* EDD24 8018D2E4 8DAF0000 */  lw         $t7, 0x0($t5)
    /* EDD28 8018D2E8 000FC080 */  sll        $t8, $t7, 2
    /* EDD2C 8018D2EC 02187021 */  addu       $t6, $s0, $t8
    /* EDD30 8018D2F0 C5C40000 */  lwc1       $f4, 0x0($t6)
    /* EDD34 8018D2F4 4604303C */  c.lt.s     $f6, $f4
    /* EDD38 8018D2F8 00000000 */  nop
    /* EDD3C 8018D2FC 4501FFF5 */  bc1t       .L8018D2D4_ovl3
    /* EDD40 8018D300 00000000 */   nop
    /* EDD44 8018D304 964800D2 */  lhu        $t0, 0xD2($s2)
  .L8018D308_ovl3:
    /* EDD48 8018D308 24190005 */  addiu      $t9, $zero, 0x5
    /* EDD4C 8018D30C AE59003C */  sw         $t9, 0x3C($s2)
    /* EDD50 8018D310 25090001 */  addiu      $t1, $t0, 0x1
    /* EDD54 8018D314 A64900D2 */  sh         $t1, 0xD2($s2)
    /* EDD58 8018D318 10000049 */  b          .L8018D440_ovl3
    /* EDD5C 8018D31C AE590044 */   sw        $t9, 0x44($s2)
  jlabel .L8018D320_ovl3
    /* EDD60 8018D320 0C047717 */  jal        func_8011DC5C
    /* EDD64 8018D324 00000000 */   nop
    /* EDD68 8018D328 0C047701 */  jal        func_8011DC04
    /* EDD6C 8018D32C 2404003D */   addiu     $a0, $zero, 0x3D
    /* EDD70 8018D330 8E230000 */  lw         $v1, 0x0($s1)
    /* EDD74 8018D334 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* EDD78 8018D338 240B0017 */  addiu      $t3, $zero, 0x17
    /* EDD7C 8018D33C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* EDD80 8018D340 44809000 */  mtc1       $zero, $f18
    /* EDD84 8018D344 3C040002 */  lui        $a0, (0x20259 >> 16)
    /* EDD88 8018D348 000C6880 */  sll        $t5, $t4, 2
    /* EDD8C 8018D34C 002D0821 */  addu       $at, $at, $t5
    /* EDD90 8018D350 AC2B9AA0 */  sw         $t3, %lo(D_800E9AA0)($at)
    /* EDD94 8018D354 8C620000 */  lw         $v0, 0x0($v1)
    /* EDD98 8018D358 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* EDD9C 8018D35C 3C050002 */  lui        $a1, (0x2025A >> 16)
    /* EDDA0 8018D360 00021080 */  sll        $v0, $v0, 2
    /* EDDA4 8018D364 00220821 */  addu       $at, $at, $v0
    /* EDDA8 8018D368 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
    /* EDDAC 8018D36C 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
    /* EDDB0 8018D370 44815000 */  mtc1       $at, $f10
    /* EDDB4 8018D374 3C01800E */  lui        $at, %hi(D_800E6690)
    /* EDDB8 8018D378 00220821 */  addu       $at, $at, $v0
    /* EDDBC 8018D37C 460A4402 */  mul.s      $f16, $f8, $f10
    /* EDDC0 8018D380 34A5025A */  ori        $a1, $a1, (0x2025A & 0xFFFF)
    /* EDDC4 8018D384 34840259 */  ori        $a0, $a0, (0x20259 & 0xFFFF)
    /* EDDC8 8018D388 00003025 */  or         $a2, $zero, $zero
    /* EDDCC 8018D38C E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
    /* EDDD0 8018D390 8C6F0000 */  lw         $t7, 0x0($v1)
    /* EDDD4 8018D394 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EDDD8 8018D398 000FC080 */  sll        $t8, $t7, 2
    /* EDDDC 8018D39C 00380821 */  addu       $at, $at, $t8
    /* EDDE0 8018D3A0 0C048C3A */  jal        func_801230E8
    /* EDDE4 8018D3A4 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
    /* EDDE8 8018D3A8 8E2E0000 */  lw         $t6, 0x0($s1)
  .L8018D3AC_ovl3:
    /* EDDEC 8018D3AC 44803000 */  mtc1       $zero, $f6
    /* EDDF0 8018D3B0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EDDF4 8018D3B4 8DC80000 */  lw         $t0, 0x0($t6)
    /* EDDF8 8018D3B8 44812000 */  mtc1       $at, $f4
    /* EDDFC 8018D3BC 00084880 */  sll        $t1, $t0, 2
    /* EDE00 8018D3C0 0209C821 */  addu       $t9, $s0, $t1
    /* EDE04 8018D3C4 C7200000 */  lwc1       $f0, 0x0($t9)
    /* EDE08 8018D3C8 4606003C */  c.lt.s     $f0, $f6
    /* EDE0C 8018D3CC 00000000 */  nop
    /* EDE10 8018D3D0 45020004 */  bc1fl      .L8018D3E4_ovl3
    /* EDE14 8018D3D4 46000086 */   mov.s     $f2, $f0
    /* EDE18 8018D3D8 10000002 */  b          .L8018D3E4_ovl3
    /* EDE1C 8018D3DC 46000087 */   neg.s     $f2, $f0
    /* EDE20 8018D3E0 46000086 */  mov.s      $f2, $f0
  .L8018D3E4_ovl3:
    /* EDE24 8018D3E4 4604103C */  c.lt.s     $f2, $f4
    /* EDE28 8018D3E8 00000000 */  nop
    /* EDE2C 8018D3EC 45010005 */  bc1t       .L8018D404_ovl3
    /* EDE30 8018D3F0 00000000 */   nop
    /* EDE34 8018D3F4 0C002DAF */  jal        ohSleep
    /* EDE38 8018D3F8 24040001 */   addiu     $a0, $zero, 0x1
    /* EDE3C 8018D3FC 1000FFEB */  b          .L8018D3AC_ovl3
    /* EDE40 8018D400 8E2E0000 */   lw        $t6, 0x0($s1)
  .L8018D404_ovl3:
    /* EDE44 8018D404 0C047717 */  jal        func_8011DC5C
    /* EDE48 8018D408 00000000 */   nop
    /* EDE4C 8018D40C 3C040002 */  lui        $a0, (0x2025B >> 16)
    /* EDE50 8018D410 3C050002 */  lui        $a1, (0x2025C >> 16)
    /* EDE54 8018D414 34A5025C */  ori        $a1, $a1, (0x2025C & 0xFFFF)
    /* EDE58 8018D418 3484025B */  ori        $a0, $a0, (0x2025B & 0xFFFF)
    /* EDE5C 8018D41C 0C048C3A */  jal        func_801230E8
    /* EDE60 8018D420 24060001 */   addiu     $a2, $zero, 0x1
    /* EDE64 8018D424 8E4A0044 */  lw         $t2, 0x44($s2)
    /* EDE68 8018D428 24010003 */  addiu      $at, $zero, 0x3
    /* EDE6C 8018D42C 15410004 */  bne        $t2, $at, .L8018D440_ovl3
    /* EDE70 8018D430 00000000 */   nop
    /* EDE74 8018D434 8E4C0030 */  lw         $t4, 0x30($s2)
    /* EDE78 8018D438 258B0001 */  addiu      $t3, $t4, 0x1
    /* EDE7C 8018D43C AE4B0030 */  sw         $t3, 0x30($s2)
  jlabel .L8018D440_ovl3
    /* EDE80 8018D440 0C02BE85 */  jal        curObjSleepForever
    /* EDE84 8018D444 00000000 */   nop
    /* EDE88 8018D448 8FBF0024 */  lw         $ra, 0x24($sp)
    /* EDE8C 8018D44C 8FB00018 */  lw         $s0, 0x18($sp)
    /* EDE90 8018D450 8FB1001C */  lw         $s1, 0x1C($sp)
    /* EDE94 8018D454 8FB20020 */  lw         $s2, 0x20($sp)
    /* EDE98 8018D458 03E00008 */  jr         $ra
    /* EDE9C 8018D45C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8018CC54_ovl3
.size func_8018CC54_ovl3, . - func_8018CC54_ovl3
