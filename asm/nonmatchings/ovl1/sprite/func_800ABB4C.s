nonmatching func_800ABB4C, 0xA64

glabel func_800ABB4C
    /* 53D9C 800ABB4C 27BDFF20 */  addiu      $sp, $sp, -0xE0
    /* 53DA0 800ABB50 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 53DA4 800ABB54 AFB40030 */  sw         $s4, 0x30($sp)
    /* 53DA8 800ABB58 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 53DAC 800ABB5C AFB20028 */  sw         $s2, 0x28($sp)
    /* 53DB0 800ABB60 AFB10024 */  sw         $s1, 0x24($sp)
    /* 53DB4 800ABB64 AFB00020 */  sw         $s0, 0x20($sp)
    /* 53DB8 800ABB68 84BF001C */  lh         $ra, 0x1C($a1)
    /* 53DBC 800ABB6C 90AE0017 */  lbu        $t6, 0x17($a1)
    /* 53DC0 800ABB70 84B4001E */  lh         $s4, 0x1E($a1)
    /* 53DC4 800ABB74 3C01800E */  lui        $at, %hi(D_800DD70A)
    /* 53DC8 800ABB78 00808025 */  or         $s0, $a0, $zero
    /* 53DCC 800ABB7C 00A09825 */  or         $s3, $a1, $zero
    /* 53DD0 800ABB80 17E00002 */  bnez       $ra, .L800ABB8C
    /* 53DD4 800ABB84 A02ED70A */   sb        $t6, %lo(D_800DD70A)($at)
    /* 53DD8 800ABB88 241F0001 */  addiu      $ra, $zero, 0x1
  .L800ABB8C:
    /* 53DDC 800ABB8C 16800002 */  bnez       $s4, .L800ABB98
    /* 53DE0 800ABB90 2408FFFC */   addiu     $t0, $zero, -0x4
    /* 53DE4 800ABB94 24140001 */  addiu      $s4, $zero, 0x1
  .L800ABB98:
    /* 53DE8 800ABB98 966C0002 */  lhu        $t4, 0x2($s3)
    /* 53DEC 800ABB9C 966D000A */  lhu        $t5, 0xA($s3)
    /* 53DF0 800ABBA0 96630006 */  lhu        $v1, 0x6($s3)
    /* 53DF4 800ABBA4 000C7A80 */  sll        $t7, $t4, 10
    /* 53DF8 800ABBA8 01FF001A */  div        $zero, $t7, $ra
    /* 53DFC 800ABBAC 000D7280 */  sll        $t6, $t5, 10
    /* 53E00 800ABBB0 0000C012 */  mflo       $t8
    /* 53E04 800ABBB4 9666000E */  lhu        $a2, 0xE($s3)
    /* 53E08 800ABBB8 17E00002 */  bnez       $ra, .L800ABBC4
    /* 53E0C 800ABBBC 00000000 */   nop
    /* 53E10 800ABBC0 0007000D */  break      7
  .L800ABBC4:
    /* 53E14 800ABBC4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 53E18 800ABBC8 17E10004 */  bne        $ra, $at, .L800ABBDC
    /* 53E1C 800ABBCC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 53E20 800ABBD0 15E10002 */  bne        $t7, $at, .L800ABBDC
    /* 53E24 800ABBD4 00000000 */   nop
    /* 53E28 800ABBD8 0006000D */  break      6
  .L800ABBDC:
    /* 53E2C 800ABBDC 01D4001A */  div        $zero, $t6, $s4
    /* 53E30 800ABBE0 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 53E34 800ABBE4 03282024 */  and        $a0, $t9, $t0
    /* 53E38 800ABBE8 00007812 */  mflo       $t7
    /* 53E3C 800ABBEC 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* 53E40 800ABBF0 16800002 */  bnez       $s4, .L800ABBFC
    /* 53E44 800ABBF4 00000000 */   nop
    /* 53E48 800ABBF8 0007000D */  break      7
  .L800ABBFC:
    /* 53E4C 800ABBFC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 53E50 800ABC00 16810004 */  bne        $s4, $at, .L800ABC14
    /* 53E54 800ABC04 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 53E58 800ABC08 15C10002 */  bne        $t6, $at, .L800ABC14
    /* 53E5C 800ABC0C 00000000 */   nop
    /* 53E60 800ABC10 0006000D */  break      6
  .L800ABC14:
    /* 53E64 800ABC14 00034C00 */  sll        $t1, $v1, 16
    /* 53E68 800ABC18 00642023 */  subu       $a0, $v1, $a0
    /* 53E6C 800ABC1C 00062C00 */  sll        $a1, $a2, 16
    /* 53E70 800ABC20 03081024 */  and        $v0, $t8, $t0
    /* 53E74 800ABC24 00094C03 */  sra        $t1, $t1, 16
    /* 53E78 800ABC28 00052C03 */  sra        $a1, $a1, 16
    /* 53E7C 800ABC2C 866B0004 */  lh         $t3, 0x4($s3)
    /* 53E80 800ABC30 04810002 */  bgez       $a0, .L800ABC3C
    /* 53E84 800ABC34 8667000C */   lh        $a3, 0xC($s3)
    /* 53E88 800ABC38 00002025 */  or         $a0, $zero, $zero
  .L800ABC3C:
    /* 53E8C 800ABC3C 00C21023 */  subu       $v0, $a2, $v0
    /* 53E90 800ABC40 04410002 */  bgez       $v0, .L800ABC4C
    /* 53E94 800ABC44 01244823 */   subu      $t1, $t1, $a0
    /* 53E98 800ABC48 00001025 */  or         $v0, $zero, $zero
  .L800ABC4C:
    /* 53E9C 800ABC4C 966A001A */  lhu        $t2, 0x1A($s3)
    /* 53EA0 800ABC50 00A22823 */  subu       $a1, $a1, $v0
    /* 53EA4 800ABC54 00094C00 */  sll        $t1, $t1, 16
    /* 53EA8 800ABC58 00052C00 */  sll        $a1, $a1, 16
    /* 53EAC 800ABC5C 314A0001 */  andi       $t2, $t2, 0x1
    /* 53EB0 800ABC60 00094C03 */  sra        $t1, $t1, 16
    /* 53EB4 800ABC64 00052C03 */  sra        $a1, $a1, 16
    /* 53EB8 800ABC68 11400005 */  beqz       $t2, .L800ABC80
    /* 53EBC 800ABC6C A7BF00CA */   sh        $ra, 0xCA($sp)
    /* 53EC0 800ABC70 01645821 */  addu       $t3, $t3, $a0
    /* 53EC4 800ABC74 000B5C00 */  sll        $t3, $t3, 16
    /* 53EC8 800ABC78 000B5C03 */  sra        $t3, $t3, 16
    /* 53ECC 800ABC7C A7BF00CA */  sh         $ra, 0xCA($sp)
  .L800ABC80:
    /* 53ED0 800ABC80 3C19800D */  lui        $t9, %hi(D_800D4E64)
    /* 53ED4 800ABC84 97394E64 */  lhu        $t9, %lo(D_800D4E64)($t9)
    /* 53ED8 800ABC88 3C0E800D */  lui        $t6, %hi(D_800D4E68)
    /* 53EDC 800ABC8C 95CE4E68 */  lhu        $t6, %lo(D_800D4E68)($t6)
    /* 53EE0 800ABC90 032B1023 */  subu       $v0, $t9, $t3
    /* 53EE4 800ABC94 3C0F800D */  lui        $t7, %hi(D_800D4E6C)
    /* 53EE8 800ABC98 3C19800D */  lui        $t9, %hi(D_800D4E70)
    /* 53EEC 800ABC9C 95EF4E6C */  lhu        $t7, %lo(D_800D4E6C)($t7)
    /* 53EF0 800ABCA0 97394E70 */  lhu        $t9, %lo(D_800D4E70)($t9)
    /* 53EF4 800ABCA4 01C74023 */  subu       $t0, $t6, $a3
    /* 53EF8 800ABCA8 012FC023 */  subu       $t8, $t1, $t7
    /* 53EFC 800ABCAC 00B97023 */  subu       $t6, $a1, $t9
    /* 53F00 800ABCB0 00021400 */  sll        $v0, $v0, 16
    /* 53F04 800ABCB4 030B2021 */  addu       $a0, $t8, $t3
    /* 53F08 800ABCB8 01C71821 */  addu       $v1, $t6, $a3
    /* 53F0C 800ABCBC 00021403 */  sra        $v0, $v0, 16
    /* 53F10 800ABCC0 00084400 */  sll        $t0, $t0, 16
    /* 53F14 800ABCC4 00042400 */  sll        $a0, $a0, 16
    /* 53F18 800ABCC8 00031C00 */  sll        $v1, $v1, 16
    /* 53F1C 800ABCCC 00084403 */  sra        $t0, $t0, 16
    /* 53F20 800ABCD0 00042403 */  sra        $a0, $a0, 16
    /* 53F24 800ABCD4 04410002 */  bgez       $v0, .L800ABCE0
    /* 53F28 800ABCD8 00031C03 */   sra       $v1, $v1, 16
    /* 53F2C 800ABCDC 00001025 */  or         $v0, $zero, $zero
  .L800ABCE0:
    /* 53F30 800ABCE0 05010002 */  bgez       $t0, .L800ABCEC
    /* 53F34 800ABCE4 01227823 */   subu      $t7, $t1, $v0
    /* 53F38 800ABCE8 00004025 */  or         $t0, $zero, $zero
  .L800ABCEC:
    /* 53F3C 800ABCEC 04810002 */  bgez       $a0, .L800ABCF8
    /* 53F40 800ABCF0 00A8C023 */   subu      $t8, $a1, $t0
    /* 53F44 800ABCF4 00002025 */  or         $a0, $zero, $zero
  .L800ABCF8:
    /* 53F48 800ABCF8 04610002 */  bgez       $v1, .L800ABD04
    /* 53F4C 800ABCFC 01E44823 */   subu      $t1, $t7, $a0
    /* 53F50 800ABD00 00001825 */  or         $v1, $zero, $zero
  .L800ABD04:
    /* 53F54 800ABD04 00094C00 */  sll        $t1, $t1, 16
    /* 53F58 800ABD08 03032823 */  subu       $a1, $t8, $v1
    /* 53F5C 800ABD0C 01625821 */  addu       $t3, $t3, $v0
    /* 53F60 800ABD10 00E83821 */  addu       $a3, $a3, $t0
    /* 53F64 800ABD14 00094C03 */  sra        $t1, $t1, 16
    /* 53F68 800ABD18 00052C00 */  sll        $a1, $a1, 16
    /* 53F6C 800ABD1C 000B5C00 */  sll        $t3, $t3, 16
    /* 53F70 800ABD20 00073C00 */  sll        $a3, $a3, 16
    /* 53F74 800ABD24 00052C03 */  sra        $a1, $a1, 16
    /* 53F78 800ABD28 000B5C03 */  sra        $t3, $t3, 16
    /* 53F7C 800ABD2C 19200218 */  blez       $t1, .L800AC590
    /* 53F80 800ABD30 00073C03 */   sra       $a3, $a3, 16
    /* 53F84 800ABD34 A7A9009C */  sh         $t1, 0x9C($sp)
    /* 53F88 800ABD38 18A00215 */  blez       $a1, .L800AC590
    /* 53F8C 800ABD3C A7AB00DE */   sh        $t3, 0xDE($sp)
    /* 53F90 800ABD40 87B9009C */  lh         $t9, 0x9C($sp)
    /* 53F94 800ABD44 87AE00CA */  lh         $t6, 0xCA($sp)
    /* 53F98 800ABD48 3C1F800D */  lui        $ra, %hi(D_800D4E74)
    /* 53F9C 800ABD4C 93FF4E74 */  lbu        $ra, %lo(D_800D4E74)($ra)
    /* 53FA0 800ABD50 032E0019 */  multu      $t9, $t6
    /* 53FA4 800ABD54 00078883 */  sra        $s1, $a3, 2
    /* 53FA8 800ABD58 001F7940 */  sll        $t7, $ra, 5
    /* 53FAC 800ABD5C 00054883 */  sra        $t1, $a1, 2
    /* 53FB0 800ABD60 01803025 */  or         $a2, $t4, $zero
    /* 53FB4 800ABD64 01A01825 */  or         $v1, $t5, $zero
    /* 53FB8 800ABD68 00118C00 */  sll        $s1, $s1, 16
    /* 53FBC 800ABD6C 00094C00 */  sll        $t1, $t1, 16
    /* 53FC0 800ABD70 000634C0 */  sll        $a2, $a2, 19
    /* 53FC4 800ABD74 00031CC0 */  sll        $v1, $v1, 19
    /* 53FC8 800ABD78 00005812 */  mflo       $t3
    /* 53FCC 800ABD7C 000B59C3 */  sra        $t3, $t3, 7
    /* 53FD0 800ABD80 000B5C00 */  sll        $t3, $t3, 16
    /* 53FD4 800ABD84 000B5C03 */  sra        $t3, $t3, 16
    /* 53FD8 800ABD88 016F9021 */  addu       $s2, $t3, $t7
    /* 53FDC 800ABD8C 00129400 */  sll        $s2, $s2, 16
    /* 53FE0 800ABD90 00118C03 */  sra        $s1, $s1, 16
    /* 53FE4 800ABD94 00094C03 */  sra        $t1, $t1, 16
    /* 53FE8 800ABD98 00063403 */  sra        $a2, $a2, 16
    /* 53FEC 800ABD9C 00031C03 */  sra        $v1, $v1, 16
    /* 53FF0 800ABDA0 00129403 */  sra        $s2, $s2, 16
    /* 53FF4 800ABDA4 11400009 */  beqz       $t2, .L800ABDCC
    /* 53FF8 800ABDA8 AFAB0054 */   sw        $t3, 0x54($sp)
    /* 53FFC 800ABDAC 008E0019 */  multu      $a0, $t6
    /* 54000 800ABDB0 96780000 */  lhu        $t8, 0x0($s3)
    /* 54004 800ABDB4 0000C812 */  mflo       $t9
    /* 54008 800ABDB8 001979C3 */  sra        $t7, $t9, 7
    /* 5400C 800ABDBC 030F2821 */  addu       $a1, $t8, $t7
    /* 54010 800ABDC0 00052C00 */  sll        $a1, $a1, 16
    /* 54014 800ABDC4 10000009 */  b          .L800ABDEC
    /* 54018 800ABDC8 00052C03 */   sra       $a1, $a1, 16
  .L800ABDCC:
    /* 5401C 800ABDCC 87B900CA */  lh         $t9, 0xCA($sp)
    /* 54020 800ABDD0 966E0000 */  lhu        $t6, 0x0($s3)
    /* 54024 800ABDD4 00590019 */  multu      $v0, $t9
    /* 54028 800ABDD8 0000C012 */  mflo       $t8
    /* 5402C 800ABDDC 001879C3 */  sra        $t7, $t8, 7
    /* 54030 800ABDE0 01CF2821 */  addu       $a1, $t6, $t7
    /* 54034 800ABDE4 00052C00 */  sll        $a1, $a1, 16
    /* 54038 800ABDE8 00052C03 */  sra        $a1, $a1, 16
  .L800ABDEC:
    /* 5403C 800ABDEC 01140019 */  multu      $t0, $s4
    /* 54040 800ABDF0 96790008 */  lhu        $t9, 0x8($s3)
    /* 54044 800ABDF4 00A6082A */  slt        $at, $a1, $a2
    /* 54048 800ABDF8 3C0D800E */  lui        $t5, %hi(D_800DD6FC)
    /* 5404C 800ABDFC 8E640020 */  lw         $a0, 0x20($s3)
    /* 54050 800ABE00 3C0B800D */  lui        $t3, %hi(D_800D4E78)
    /* 54054 800ABE04 3C08800E */  lui        $t0, %hi(D_800DD70A)
    /* 54058 800ABE08 25ADD6FC */  addiu      $t5, $t5, %lo(D_800DD6FC)
    /* 5405C 800ABE0C 0000C012 */  mflo       $t8
    /* 54060 800ABE10 001871C3 */  sra        $t6, $t8, 7
    /* 54064 800ABE14 032E1021 */  addu       $v0, $t9, $t6
    /* 54068 800ABE18 00021400 */  sll        $v0, $v0, 16
    /* 5406C 800ABE1C 1420000A */  bnez       $at, .L800ABE48
    /* 54070 800ABE20 00021403 */   sra       $v0, $v0, 16
  .L800ABE24:
    /* 54074 800ABE24 00A62823 */  subu       $a1, $a1, $a2
    /* 54078 800ABE28 00052C00 */  sll        $a1, $a1, 16
    /* 5407C 800ABE2C 00052C03 */  sra        $a1, $a1, 16
    /* 54080 800ABE30 24420020 */  addiu      $v0, $v0, 0x20
    /* 54084 800ABE34 00A6082A */  slt        $at, $a1, $a2
    /* 54088 800ABE38 00021400 */  sll        $v0, $v0, 16
    /* 5408C 800ABE3C 00021403 */  sra        $v0, $v0, 16
    /* 54090 800ABE40 1020FFF8 */  beqz       $at, .L800ABE24
    /* 54094 800ABE44 24840020 */   addiu     $a0, $a0, 0x20
  .L800ABE48:
    /* 54098 800ABE48 0043082A */  slt        $at, $v0, $v1
    /* 5409C 800ABE4C 14200007 */  bnez       $at, .L800ABE6C
    /* 540A0 800ABE50 00B27821 */   addu      $t7, $a1, $s2
  .L800ABE54:
    /* 540A4 800ABE54 00431023 */  subu       $v0, $v0, $v1
    /* 540A8 800ABE58 00021400 */  sll        $v0, $v0, 16
    /* 540AC 800ABE5C 00021403 */  sra        $v0, $v0, 16
    /* 540B0 800ABE60 0043082A */  slt        $at, $v0, $v1
    /* 540B4 800ABE64 1020FFFB */  beqz       $at, .L800ABE54
    /* 540B8 800ABE68 00832023 */   subu      $a0, $a0, $v1
  .L800ABE6C:
    /* 540BC 800ABE6C 01E6C02A */  slt        $t8, $t7, $a2
    /* 540C0 800ABE70 3B180001 */  xori       $t8, $t8, 0x1
    /* 540C4 800ABE74 3C01800E */  lui        $at, %hi(D_800DD700)
    /* 540C8 800ABE78 A438D700 */  sh         $t8, %lo(D_800DD700)($at)
    /* 540CC 800ABE7C 3C01800E */  lui        $at, %hi(D_800DD708)
    /* 540D0 800ABE80 0003C943 */  sra        $t9, $v1, 5
    /* 540D4 800ABE84 A439D708 */  sh         $t9, %lo(D_800DD708)($at)
    /* 540D8 800ABE88 92670017 */  lbu        $a3, 0x17($s3)
    /* 540DC 800ABE8C 926E0016 */  lbu        $t6, 0x16($s3)
    /* 540E0 800ABE90 3C18800D */  lui        $t8, %hi(D_800D4E84)
    /* 540E4 800ABE94 00073840 */  sll        $a3, $a3, 1
    /* 540E8 800ABE98 3C19800D */  lui        $t9, %hi(D_800D4E8C)
    /* 540EC 800ABE9C 8108D70A */  lb         $t0, %lo(D_800DD70A)($t0)
    /* 540F0 800ABEA0 0307C021 */  addu       $t8, $t8, $a3
    /* 540F4 800ABEA4 0327C821 */  addu       $t9, $t9, $a3
    /* 540F8 800ABEA8 87184E84 */  lh         $t8, %lo(D_800D4E84)($t8)
    /* 540FC 800ABEAC 87394E8C */  lh         $t9, %lo(D_800D4E8C)($t9)
    /* 54100 800ABEB0 000E7840 */  sll        $t7, $t6, 1
    /* 54104 800ABEB4 016F5821 */  addu       $t3, $t3, $t7
    /* 54108 800ABEB8 24010003 */  addiu      $at, $zero, 0x3
    /* 5410C 800ABEBC 856B4E78 */  lh         $t3, %lo(D_800D4E78)($t3)
    /* 54110 800ABEC0 AFA80060 */  sw         $t0, 0x60($sp)
    /* 54114 800ABEC4 A7B8008C */  sh         $t8, 0x8C($sp)
    /* 54118 800ABEC8 15010004 */  bne        $t0, $at, .L800ABEDC
    /* 5411C 800ABECC A7B9008A */   sh        $t9, 0x8A($sp)
    /* 54120 800ABED0 240B01E0 */  addiu      $t3, $zero, 0x1E0
    /* 54124 800ABED4 1000000C */  b          .L800ABF08
    /* 54128 800ABED8 24032800 */   addiu     $v1, $zero, 0x2800
  .L800ABEDC:
    /* 5412C 800ABEDC 966E0006 */  lhu        $t6, 0x6($s3)
    /* 54130 800ABEE0 87AF00CA */  lh         $t7, 0xCA($sp)
    /* 54134 800ABEE4 01CF0019 */  multu      $t6, $t7
    /* 54138 800ABEE8 001F7140 */  sll        $t6, $ra, 5
    /* 5413C 800ABEEC 0000C012 */  mflo       $t8
    /* 54140 800ABEF0 0018C9C3 */  sra        $t9, $t8, 7
    /* 54144 800ABEF4 032E1821 */  addu       $v1, $t9, $t6
    /* 54148 800ABEF8 00C3082A */  slt        $at, $a2, $v1
    /* 5414C 800ABEFC 50200003 */  beql       $at, $zero, .L800ABF0C
    /* 54150 800ABF00 87AF008C */   lh        $t7, 0x8C($sp)
    /* 54154 800ABF04 00C01825 */  or         $v1, $a2, $zero
  .L800ABF08:
    /* 54158 800ABF08 87AF008C */  lh         $t7, 0x8C($sp)
  .L800ABF0C:
    /* 5415C 800ABF0C 87B9008A */  lh         $t9, 0x8A($sp)
    /* 54160 800ABF10 00444023 */  subu       $t0, $v0, $a0
    /* 54164 800ABF14 01E3C021 */  addu       $t8, $t7, $v1
    /* 54168 800ABF18 0319001A */  div        $zero, $t8, $t9
    /* 5416C 800ABF1C 00007012 */  mflo       $t6
    /* 54170 800ABF20 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 54174 800ABF24 31F2FFFF */  andi       $s2, $t7, 0xFFFF
    /* 54178 800ABF28 0172001A */  div        $zero, $t3, $s2
    /* 5417C 800ABF2C 17200002 */  bnez       $t9, .L800ABF38
    /* 54180 800ABF30 00000000 */   nop
    /* 54184 800ABF34 0007000D */  break      7
  .L800ABF38:
    /* 54188 800ABF38 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5418C 800ABF3C 17210004 */  bne        $t9, $at, .L800ABF50
    /* 54190 800ABF40 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 54194 800ABF44 17010002 */  bne        $t8, $at, .L800ABF50
    /* 54198 800ABF48 00000000 */   nop
    /* 5419C 800ABF4C 0006000D */  break      6
  .L800ABF50:
    /* 541A0 800ABF50 00003812 */  mflo       $a3
    /* 541A4 800ABF54 00073C00 */  sll        $a3, $a3, 16
    /* 541A8 800ABF58 00073C03 */  sra        $a3, $a3, 16
    /* 541AC 800ABF5C 00FF5023 */  subu       $t2, $a3, $ra
    /* 541B0 800ABF60 000A5400 */  sll        $t2, $t2, 16
    /* 541B4 800ABF64 00084140 */  sll        $t0, $t0, 5
    /* 541B8 800ABF68 A5AF0000 */  sh         $t7, 0x0($t5)
    /* 541BC 800ABF6C 16400002 */  bnez       $s2, .L800ABF78
    /* 541C0 800ABF70 00000000 */   nop
    /* 541C4 800ABF74 0007000D */  break      7
  .L800ABF78:
    /* 541C8 800ABF78 2401FFFF */  addiu      $at, $zero, -0x1
    /* 541CC 800ABF7C 16410004 */  bne        $s2, $at, .L800ABF90
    /* 541D0 800ABF80 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 541D4 800ABF84 15610002 */  bne        $t3, $at, .L800ABF90
    /* 541D8 800ABF88 00000000 */   nop
    /* 541DC 800ABF8C 0006000D */  break      6
  .L800ABF90:
    /* 541E0 800ABF90 000A5403 */  sra        $t2, $t2, 16
    /* 541E4 800ABF94 01006025 */  or         $t4, $t0, $zero
    /* 541E8 800ABF98 05010003 */  bgez       $t0, .L800ABFA8
    /* 541EC 800ABF9C AFB2005C */   sw        $s2, 0x5C($sp)
    /* 541F0 800ABFA0 01146023 */  subu       $t4, $t0, $s4
    /* 541F4 800ABFA4 258C0001 */  addiu      $t4, $t4, 0x1
  .L800ABFA8:
    /* 541F8 800ABFA8 0194001A */  div        $zero, $t4, $s4
    /* 541FC 800ABFAC 00003812 */  mflo       $a3
    /* 54200 800ABFB0 00073A80 */  sll        $a3, $a3, 10
    /* 54204 800ABFB4 16800002 */  bnez       $s4, .L800ABFC0
    /* 54208 800ABFB8 00000000 */   nop
    /* 5420C 800ABFBC 0007000D */  break      7
  .L800ABFC0:
    /* 54210 800ABFC0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 54214 800ABFC4 16810004 */  bne        $s4, $at, .L800ABFD8
    /* 54218 800ABFC8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5421C 800ABFCC 15810002 */  bne        $t4, $at, .L800ABFD8
    /* 54220 800ABFD0 00000000 */   nop
    /* 54224 800ABFD4 0006000D */  break      6
  .L800ABFD8:
    /* 54228 800ABFD8 04E2001B */  bltzl      $a3, .L800AC048
    /* 5422C 800ABFDC 000ACD00 */   sll       $t9, $t2, 20
    /* 54230 800ABFE0 000AC500 */  sll        $t8, $t2, 20
    /* 54234 800ABFE4 0314001A */  div        $zero, $t8, $s4
    /* 54238 800ABFE8 00009012 */  mflo       $s2
    /* 5423C 800ABFEC 16800002 */  bnez       $s4, .L800ABFF8
    /* 54240 800ABFF0 00000000 */   nop
    /* 54244 800ABFF4 0007000D */  break      7
  .L800ABFF8:
    /* 54248 800ABFF8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5424C 800ABFFC 16810004 */  bne        $s4, $at, .L800AC010
    /* 54250 800AC000 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 54254 800AC004 17010002 */  bne        $t8, $at, .L800AC010
    /* 54258 800AC008 00000000 */   nop
    /* 5425C 800AC00C 0006000D */  break      6
  .L800AC010:
    /* 54260 800AC010 00F2001A */  div        $zero, $a3, $s2
    /* 54264 800AC014 00004012 */  mflo       $t0
    /* 54268 800AC018 16400002 */  bnez       $s2, .L800AC024
    /* 5426C 800AC01C 00000000 */   nop
    /* 54270 800AC020 0007000D */  break      7
  .L800AC024:
    /* 54274 800AC024 2401FFFF */  addiu      $at, $zero, -0x1
    /* 54278 800AC028 16410004 */  bne        $s2, $at, .L800AC03C
    /* 5427C 800AC02C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 54280 800AC030 14E10002 */  bne        $a3, $at, .L800AC03C
    /* 54284 800AC034 00000000 */   nop
    /* 54288 800AC038 0006000D */  break      6
  .L800AC03C:
    /* 5428C 800AC03C 1000001A */  b          .L800AC0A8
    /* 54290 800AC040 00000000 */   nop
    /* 54294 800AC044 000ACD00 */  sll        $t9, $t2, 20
  .L800AC048:
    /* 54298 800AC048 0334001A */  div        $zero, $t9, $s4
    /* 5429C 800AC04C 00009012 */  mflo       $s2
    /* 542A0 800AC050 00F27023 */  subu       $t6, $a3, $s2
    /* 542A4 800AC054 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 542A8 800AC058 01F2001A */  div        $zero, $t7, $s2
    /* 542AC 800AC05C 16800002 */  bnez       $s4, .L800AC068
    /* 542B0 800AC060 00000000 */   nop
    /* 542B4 800AC064 0007000D */  break      7
  .L800AC068:
    /* 542B8 800AC068 2401FFFF */  addiu      $at, $zero, -0x1
    /* 542BC 800AC06C 16810004 */  bne        $s4, $at, .L800AC080
    /* 542C0 800AC070 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 542C4 800AC074 17210002 */  bne        $t9, $at, .L800AC080
    /* 542C8 800AC078 00000000 */   nop
    /* 542CC 800AC07C 0006000D */  break      6
  .L800AC080:
    /* 542D0 800AC080 00004012 */  mflo       $t0
    /* 542D4 800AC084 16400002 */  bnez       $s2, .L800AC090
    /* 542D8 800AC088 00000000 */   nop
    /* 542DC 800AC08C 0007000D */  break      7
  .L800AC090:
    /* 542E0 800AC090 2401FFFF */  addiu      $at, $zero, -0x1
    /* 542E4 800AC094 16410004 */  bne        $s2, $at, .L800AC0A8
    /* 542E8 800AC098 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 542EC 800AC09C 15E10002 */  bne        $t7, $at, .L800AC0A8
    /* 542F0 800AC0A0 00000000 */   nop
    /* 542F4 800AC0A4 0006000D */  break      6
  .L800AC0A8:
    /* 542F8 800AC0A8 02480019 */  multu      $s2, $t0
    /* 542FC 800AC0AC 2401FC00 */  addiu      $at, $zero, -0x400
    /* 54300 800AC0B0 00006812 */  mflo       $t5
    /* 54304 800AC0B4 01A1C024 */  and        $t8, $t5, $at
    /* 54308 800AC0B8 00F8F823 */  subu       $ra, $a3, $t8
    /* 5430C 800AC0BC 001FCA83 */  sra        $t9, $ra, 10
    /* 54310 800AC0C0 03340019 */  multu      $t9, $s4
    /* 54314 800AC0C4 2401FFE0 */  addiu      $at, $zero, -0x20
    /* 54318 800AC0C8 0081C024 */  and        $t8, $a0, $at
    /* 5431C 800AC0CC 3C07800E */  lui        $a3, %hi(D_800DD704)
    /* 54320 800AC0D0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 54324 800AC0D4 AFAD0048 */  sw         $t5, 0x48($sp)
    /* 54328 800AC0D8 24E7D704 */  addiu      $a3, $a3, %lo(D_800DD704)
    /* 5432C 800AC0DC 00001012 */  mflo       $v0
    /* 54330 800AC0E0 00027283 */  sra        $t6, $v0, 10
    /* 54334 800AC0E4 AFAE0040 */  sw         $t6, 0x40($sp)
    /* 54338 800AC0E8 01480019 */  multu      $t2, $t0
    /* 5433C 800AC0EC 00025943 */  sra        $t3, $v0, 5
    /* 54340 800AC0F0 316B001F */  andi       $t3, $t3, 0x1F
    /* 54344 800AC0F4 3C08800E */  lui        $t0, %hi(D_800DD6FE)
    /* 54348 800AC0F8 316BFFFF */  andi       $t3, $t3, 0xFFFF
    /* 5434C 800AC0FC 2508D6FE */  addiu      $t0, $t0, %lo(D_800DD6FE)
    /* 54350 800AC100 00007812 */  mflo       $t7
    /* 54354 800AC104 07010003 */  bgez       $t8, .L800AC114
    /* 54358 800AC108 0018C943 */   sra       $t9, $t8, 5
    /* 5435C 800AC10C 2701001F */  addiu      $at, $t8, 0x1F
    /* 54360 800AC110 0001C943 */  sra        $t9, $at, 5
  .L800AC114:
    /* 54364 800AC114 8FB80040 */  lw         $t8, 0x40($sp)
    /* 54368 800AC118 01F97021 */  addu       $t6, $t7, $t9
    /* 5436C 800AC11C 01D81821 */  addu       $v1, $t6, $t8
    /* 54370 800AC120 00036400 */  sll        $t4, $v1, 16
    /* 54374 800AC124 000C6403 */  sra        $t4, $t4, 16
    /* 54378 800AC128 05810007 */  bgez       $t4, .L800AC148
    /* 5437C 800AC12C A7A300AC */   sh        $v1, 0xAC($sp)
    /* 54380 800AC130 966F000A */  lhu        $t7, 0xA($s3)
    /* 54384 800AC134 000FC883 */  sra        $t9, $t7, 2
    /* 54388 800AC138 01992021 */  addu       $a0, $t4, $t9
    /* 5438C 800AC13C 00042400 */  sll        $a0, $a0, 16
    /* 54390 800AC140 00042403 */  sra        $a0, $a0, 16
    /* 54394 800AC144 A7A400AC */  sh         $a0, 0xAC($sp)
  .L800AC148:
    /* 54398 800AC148 9662000A */  lhu        $v0, 0xA($s3)
    /* 5439C 800AC14C 87A400AC */  lh         $a0, 0xAC($sp)
    /* 543A0 800AC150 3C0C800E */  lui        $t4, %hi(D_800DD702)
    /* 543A4 800AC154 00021083 */  sra        $v0, $v0, 2
    /* 543A8 800AC158 0082082A */  slt        $at, $a0, $v0
    /* 543AC 800AC15C 54200005 */  bnel       $at, $zero, .L800AC174
    /* 543B0 800AC160 87B8008A */   lh        $t8, 0x8A($sp)
    /* 543B4 800AC164 00822023 */  subu       $a0, $a0, $v0
    /* 543B8 800AC168 00042400 */  sll        $a0, $a0, 16
    /* 543BC 800AC16C 00042403 */  sra        $a0, $a0, 16
    /* 543C0 800AC170 87B8008A */  lh         $t8, 0x8A($sp)
  .L800AC174:
    /* 543C4 800AC174 8E6E0010 */  lw         $t6, 0x10($s3)
    /* 543C8 800AC178 258CD702 */  addiu      $t4, $t4, %lo(D_800DD702)
    /* 543CC 800AC17C 00D8001A */  div        $zero, $a2, $t8
    /* 543D0 800AC180 ACEE0000 */  sw         $t6, 0x0($a3)
    /* 543D4 800AC184 00007812 */  mflo       $t7
    /* 543D8 800AC188 87AE008A */  lh         $t6, 0x8A($sp)
    /* 543DC 800AC18C 000FC8C0 */  sll        $t9, $t7, 3
    /* 543E0 800AC190 17000002 */  bnez       $t8, .L800AC19C
    /* 543E4 800AC194 00000000 */   nop
    /* 543E8 800AC198 0007000D */  break      7
  .L800AC19C:
    /* 543EC 800AC19C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 543F0 800AC1A0 17010004 */  bne        $t8, $at, .L800AC1B4
    /* 543F4 800AC1A4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 543F8 800AC1A8 14C10002 */  bne        $a2, $at, .L800AC1B4
    /* 543FC 800AC1AC 00000000 */   nop
    /* 54400 800AC1B0 0006000D */  break      6
  .L800AC1B4:
    /* 54404 800AC1B4 00AE001A */  div        $zero, $a1, $t6
    /* 54408 800AC1B8 A5190000 */  sh         $t9, 0x0($t0)
    /* 5440C 800AC1BC 0000C012 */  mflo       $t8
    /* 54410 800AC1C0 95020000 */  lhu        $v0, 0x0($t0)
    /* 54414 800AC1C4 15C00002 */  bnez       $t6, .L800AC1D0
    /* 54418 800AC1C8 00000000 */   nop
    /* 5441C 800AC1CC 0007000D */  break      7
  .L800AC1D0:
    /* 54420 800AC1D0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 54424 800AC1D4 15C10004 */  bne        $t6, $at, .L800AC1E8
    /* 54428 800AC1D8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5442C 800AC1DC 14A10002 */  bne        $a1, $at, .L800AC1E8
    /* 54430 800AC1E0 00000000 */   nop
    /* 54434 800AC1E4 0006000D */  break      6
  .L800AC1E8:
    /* 54438 800AC1E8 00440019 */  multu      $v0, $a0
    /* 5443C 800AC1EC 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 54440 800AC1F0 001878C0 */  sll        $t7, $t8, 3
    /* 54444 800AC1F4 A58F0000 */  sh         $t7, 0x0($t4)
    /* 54448 800AC1F8 31EFFFFF */  andi       $t7, $t7, 0xFFFF
    /* 5444C 800AC1FC 0000C812 */  mflo       $t9
    /* 54450 800AC200 032EC021 */  addu       $t8, $t9, $t6
    /* 54454 800AC204 87AE008C */  lh         $t6, 0x8C($sp)
    /* 54458 800AC208 030FC821 */  addu       $t9, $t8, $t7
    /* 5445C 800AC20C AFB900B0 */  sw         $t9, 0xB0($sp)
    /* 54460 800AC210 00AE1824 */  and        $v1, $a1, $t6
    /* 54464 800AC214 A7A300B6 */  sh         $v1, 0xB6($sp)
    /* 54468 800AC218 9678001A */  lhu        $t8, 0x1A($s3)
    /* 5446C 800AC21C 8FAE0054 */  lw         $t6, 0x54($sp)
    /* 54470 800AC220 330F0001 */  andi       $t7, $t8, 0x1
    /* 54474 800AC224 11E00003 */  beqz       $t7, .L800AC234
    /* 54478 800AC228 006EC021 */   addu      $t8, $v1, $t6
    /* 5447C 800AC22C 00187823 */  negu       $t7, $t8
    /* 54480 800AC230 A7AF00B6 */  sh         $t7, 0xB6($sp)
  .L800AC234:
    /* 54484 800AC234 8FB90060 */  lw         $t9, 0x60($sp)
    /* 54488 800AC238 24010003 */  addiu      $at, $zero, 0x3
    /* 5448C 800AC23C 3C03800E */  lui        $v1, %hi(sSetTileCommand)
    /* 54490 800AC240 1721000F */  bne        $t9, $at, .L800AC280
    /* 54494 800AC244 2463D6F8 */   addiu     $v1, $v1, %lo(sSetTileCommand)
    /* 54498 800AC248 3C01FD17 */  lui        $at, (0xFD17FFFF >> 16)
    /* 5449C 800AC24C 3421FFFF */  ori        $at, $at, (0xFD17FFFF & 0xFFFF)
    /* 544A0 800AC250 00027043 */  sra        $t6, $v0, 1
    /* 544A4 800AC254 8FAF005C */  lw         $t7, 0x5C($sp)
    /* 544A8 800AC258 01C1C021 */  addu       $t8, $t6, $at
    /* 544AC 800AC25C 3C01800E */  lui        $at, %hi(sTextureImageCommand)
    /* 544B0 800AC260 AC38D6F4 */  sw         $t8, %lo(sTextureImageCommand)($at)
    /* 544B4 800AC264 3C03800E */  lui        $v1, %hi(sSetTileCommand)
    /* 544B8 800AC268 3C01F518 */  lui        $at, (0xF5180000 >> 16)
    /* 544BC 800AC26C 000FCA40 */  sll        $t9, $t7, 9
    /* 544C0 800AC270 2463D6F8 */  addiu      $v1, $v1, %lo(sSetTileCommand)
    /* 544C4 800AC274 03217021 */  addu       $t6, $t9, $at
    /* 544C8 800AC278 1000000C */  b          .L800AC2AC
    /* 544CC 800AC27C AC6E0000 */   sw        $t6, 0x0($v1)
  .L800AC280:
    /* 544D0 800AC280 3C01FD0F */  lui        $at, (0xFD0FFFFF >> 16)
    /* 544D4 800AC284 3421FFFF */  ori        $at, $at, (0xFD0FFFFF & 0xFFFF)
    /* 544D8 800AC288 0002C043 */  sra        $t8, $v0, 1
    /* 544DC 800AC28C 8FB9005C */  lw         $t9, 0x5C($sp)
    /* 544E0 800AC290 03017821 */  addu       $t7, $t8, $at
    /* 544E4 800AC294 3C01800E */  lui        $at, %hi(sTextureImageCommand)
    /* 544E8 800AC298 AC2FD6F4 */  sw         $t7, %lo(sTextureImageCommand)($at)
    /* 544EC 800AC29C 3C01F510 */  lui        $at, (0xF5100000 >> 16)
    /* 544F0 800AC2A0 00197240 */  sll        $t6, $t9, 9
    /* 544F4 800AC2A4 01C1C021 */  addu       $t8, $t6, $at
    /* 544F8 800AC2A8 AC780000 */  sw         $t8, 0x0($v1)
  .L800AC2AC:
    /* 544FC 800AC2AC 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 54500 800AC2B0 8E190000 */  lw         $t9, 0x0($s0)
    /* 54504 800AC2B4 87A200DE */  lh         $v0, 0xDE($sp)
    /* 54508 800AC2B8 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
    /* 5450C 800AC2BC AF2F0000 */  sw         $t7, 0x0($t9)
    /* 54510 800AC2C0 8E180000 */  lw         $t8, 0x0($s0)
    /* 54514 800AC2C4 3C010007 */  lui        $at, (0x7C1F0 >> 16)
    /* 54518 800AC2C8 3421C1F0 */  ori        $at, $at, (0x7C1F0 & 0xFFFF)
    /* 5451C 800AC2CC AF0E0004 */  sw         $t6, 0x4($t8)
    /* 54520 800AC2D0 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 54524 800AC2D4 00026300 */  sll        $t4, $v0, 12
    /* 54528 800AC2D8 25F90008 */  addiu      $t9, $t7, 0x8
    /* 5452C 800AC2DC AE190000 */  sw         $t9, 0x0($s0)
    /* 54530 800AC2E0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 54534 800AC2E4 AF2E0000 */  sw         $t6, 0x0($t9)
    /* 54538 800AC2E8 926E0017 */  lbu        $t6, 0x17($s3)
    /* 5453C 800AC2EC 926F0016 */  lbu        $t7, 0x16($s3)
    /* 54540 800AC2F0 000EC0C0 */  sll        $t8, $t6, 3
    /* 54544 800AC2F4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 54548 800AC2F8 000FC940 */  sll        $t9, $t7, 5
    /* 5454C 800AC2FC 03387825 */  or         $t7, $t9, $t8
    /* 54550 800AC300 A1CF0001 */  sb         $t7, 0x1($t6)
    /* 54554 800AC304 96790018 */  lhu        $t9, 0x18($s3)
    /* 54558 800AC308 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5455C 800AC30C 0019C500 */  sll        $t8, $t9, 20
    /* 54560 800AC310 03017825 */  or         $t7, $t8, $at
    /* 54564 800AC314 ADCF0004 */  sw         $t7, 0x4($t6)
    /* 54568 800AC318 8E190000 */  lw         $t9, 0x0($s0)
    /* 5456C 800AC31C 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* 54570 800AC320 3C0E800E */  lui        $t6, %hi(D_800DD708)
    /* 54574 800AC324 27380008 */  addiu      $t8, $t9, 0x8
    /* 54578 800AC328 AE180000 */  sw         $t8, 0x0($s0)
    /* 5457C 800AC32C AF0F0000 */  sw         $t7, 0x0($t8)
    /* 54580 800AC330 8E190000 */  lw         $t9, 0x0($s0)
    /* 54584 800AC334 3C01E400 */  lui        $at, (0xE4000000 >> 16)
    /* 54588 800AC338 AF200004 */  sw         $zero, 0x4($t9)
    /* 5458C 800AC33C 8E180000 */  lw         $t8, 0x0($s0)
    /* 54590 800AC340 270F0008 */  addiu      $t7, $t8, 0x8
    /* 54594 800AC344 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 54598 800AC348 85CED708 */  lh         $t6, %lo(D_800DD708)($t6)
    /* 5459C 800AC34C 8FB80040 */  lw         $t8, 0x40($sp)
    /* 545A0 800AC350 8FAF0048 */  lw         $t7, 0x48($sp)
    /* 545A4 800AC354 01C4C823 */  subu       $t9, $t6, $a0
    /* 545A8 800AC358 01583823 */  subu       $a3, $t2, $t8
    /* 545AC 800AC35C 8FB80044 */  lw         $t8, 0x44($sp)
    /* 545B0 800AC360 A7B9006A */  sh         $t9, 0x6A($sp)
    /* 545B4 800AC364 31EE03FF */  andi       $t6, $t7, 0x3FF
    /* 545B8 800AC368 01D2C821 */  addu       $t9, $t6, $s2
    /* 545BC 800AC36C 87AF00CA */  lh         $t7, 0xCA($sp)
    /* 545C0 800AC370 03384023 */  subu       $t0, $t9, $t8
    /* 545C4 800AC374 87B9009C */  lh         $t9, 0x9C($sp)
    /* 545C8 800AC378 000F7400 */  sll        $t6, $t7, 16
    /* 545CC 800AC37C 01D4F825 */  or         $ra, $t6, $s4
    /* 545D0 800AC380 0059C021 */  addu       $t8, $v0, $t9
    /* 545D4 800AC384 00187C00 */  sll        $t7, $t8, 16
    /* 545D8 800AC388 97AD00B6 */  lhu        $t5, 0xB6($sp)
    /* 545DC 800AC38C 000F7403 */  sra        $t6, $t7, 16
    /* 545E0 800AC390 000ECB00 */  sll        $t9, $t6, 12
    /* 545E4 800AC394 00073C00 */  sll        $a3, $a3, 16
    /* 545E8 800AC398 0321C025 */  or         $t8, $t9, $at
    /* 545EC 800AC39C 00073C03 */  sra        $a3, $a3, 16
    /* 545F0 800AC3A0 AFB8004C */  sw         $t8, 0x4C($sp)
    /* 545F4 800AC3A4 000D6C00 */  sll        $t5, $t5, 16
  .L800AC3A8:
    /* 545F8 800AC3A8 00081283 */  sra        $v0, $t0, 10
    /* 545FC 800AC3AC 00027C00 */  sll        $t7, $v0, 16
    /* 54600 800AC3B0 00021C00 */  sll        $v1, $v0, 16
    /* 54604 800AC3B4 000F7403 */  sra        $t6, $t7, 16
    /* 54608 800AC3B8 87A4006A */  lh         $a0, 0x6A($sp)
    /* 5460C 800AC3BC 8FA500B0 */  lw         $a1, 0xB0($sp)
    /* 54610 800AC3C0 1DC0001C */  bgtz       $t6, .L800AC434
    /* 54614 800AC3C4 00031C03 */   sra       $v1, $v1, 16
    /* 54618 800AC3C8 00872023 */  subu       $a0, $a0, $a3
    /* 5461C 800AC3CC 00042400 */  sll        $a0, $a0, 16
    /* 54620 800AC3D0 00042403 */  sra        $a0, $a0, 16
    /* 54624 800AC3D4 3C02800E */  lui        $v0, %hi(D_800DD6FE)
    /* 54628 800AC3D8 18800006 */  blez       $a0, .L800AC3F4
    /* 5462C 800AC3DC 9442D6FE */   lhu       $v0, %lo(D_800DD6FE)($v0)
    /* 54630 800AC3E0 00470019 */  multu      $v0, $a3
    /* 54634 800AC3E4 0000C812 */  mflo       $t9
    /* 54638 800AC3E8 00B92821 */  addu       $a1, $a1, $t9
    /* 5463C 800AC3EC 1000000F */  b          .L800AC42C
    /* 54640 800AC3F0 A7A4006A */   sh        $a0, 0x6A($sp)
  .L800AC3F4:
    /* 54644 800AC3F4 00820019 */  multu      $a0, $v0
    /* 54648 800AC3F8 3C18800E */  lui        $t8, %hi(D_800DD704)
    /* 5464C 800AC3FC 8F18D704 */  lw         $t8, %lo(D_800DD704)($t8)
    /* 54650 800AC400 3C19800E */  lui        $t9, %hi(D_800DD702)
    /* 54654 800AC404 9739D702 */  lhu        $t9, %lo(D_800DD702)($t9)
    /* 54658 800AC408 00007812 */  mflo       $t7
    /* 5465C 800AC40C 030F7023 */  subu       $t6, $t8, $t7
    /* 54660 800AC410 3C18800E */  lui        $t8, %hi(D_800DD708)
    /* 54664 800AC414 8718D708 */  lh         $t8, %lo(D_800DD708)($t8)
    /* 54668 800AC418 01D92821 */  addu       $a1, $t6, $t9
    /* 5466C 800AC41C 00982021 */  addu       $a0, $a0, $t8
    /* 54670 800AC420 00042400 */  sll        $a0, $a0, 16
    /* 54674 800AC424 00042403 */  sra        $a0, $a0, 16
    /* 54678 800AC428 A7A4006A */  sh         $a0, 0x6A($sp)
  .L800AC42C:
    /* 5467C 800AC42C 10000053 */  b          .L800AC57C
    /* 54680 800AC430 AFA500B0 */   sw        $a1, 0xB0($sp)
  .L800AC434:
    /* 54684 800AC434 01234823 */  subu       $t1, $t1, $v1
    /* 54688 800AC438 00094C00 */  sll        $t1, $t1, 16
    /* 5468C 800AC43C 00094C03 */  sra        $t1, $t1, 16
    /* 54690 800AC440 05210010 */  bgez       $t1, .L800AC484
    /* 54694 800AC444 310803FF */   andi      $t0, $t0, 0x3FF
    /* 54698 800AC448 01340019 */  multu      $t1, $s4
    /* 5469C 800AC44C 00691821 */  addu       $v1, $v1, $t1
    /* 546A0 800AC450 00031C00 */  sll        $v1, $v1, 16
    /* 546A4 800AC454 00031C03 */  sra        $v1, $v1, 16
    /* 546A8 800AC458 00007812 */  mflo       $t7
    /* 546AC 800AC45C 000F7283 */  sra        $t6, $t7, 10
    /* 546B0 800AC460 00EE3821 */  addu       $a3, $a3, $t6
    /* 546B4 800AC464 24E70001 */  addiu      $a3, $a3, 0x1
    /* 546B8 800AC468 00073C00 */  sll        $a3, $a3, 16
    /* 546BC 800AC46C 00073C03 */  sra        $a3, $a3, 16
    /* 546C0 800AC470 0147082A */  slt        $at, $t2, $a3
    /* 546C4 800AC474 10200003 */  beqz       $at, .L800AC484
    /* 546C8 800AC478 00000000 */   nop
    /* 546CC 800AC47C 000A3C00 */  sll        $a3, $t2, 16
    /* 546D0 800AC480 00073C03 */  sra        $a3, $a3, 16
  .L800AC484:
    /* 546D4 800AC484 3C19800D */  lui        $t9, %hi(D_800D4E74)
    /* 546D8 800AC488 93394E74 */  lbu        $t9, %lo(D_800D4E74)($t9)
    /* 546DC 800AC48C AFBF0054 */  sw         $ra, 0x54($sp)
    /* 546E0 800AC490 02002025 */  or         $a0, $s0, $zero
    /* 546E4 800AC494 27A500B0 */  addiu      $a1, $sp, 0xB0
    /* 546E8 800AC498 27A6006A */  addiu      $a2, $sp, 0x6A
    /* 546EC 800AC49C A7A30066 */  sh         $v1, 0x66($sp)
    /* 546F0 800AC4A0 AFA800B8 */  sw         $t0, 0xB8($sp)
    /* 546F4 800AC4A4 A7A900D8 */  sh         $t1, 0xD8($sp)
    /* 546F8 800AC4A8 A7AA00C0 */  sh         $t2, 0xC0($sp)
    /* 546FC 800AC4AC A7AB00B4 */  sh         $t3, 0xB4($sp)
    /* 54700 800AC4B0 AFAC0060 */  sw         $t4, 0x60($sp)
    /* 54704 800AC4B4 AFAD005C */  sw         $t5, 0x5C($sp)
    /* 54708 800AC4B8 0C02AE01 */  jal        func_800AB804
    /* 5470C 800AC4BC AFB90010 */   sw        $t9, 0x10($sp)
    /* 54710 800AC4C0 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 54714 800AC4C4 87A30066 */  lh         $v1, 0x66($sp)
    /* 54718 800AC4C8 87A900D8 */  lh         $t1, 0xD8($sp)
    /* 5471C 800AC4CC 97AB00B4 */  lhu        $t3, 0xB4($sp)
    /* 54720 800AC4D0 8FAC0060 */  lw         $t4, 0x60($sp)
    /* 54724 800AC4D4 8FAD005C */  lw         $t5, 0x5C($sp)
    /* 54728 800AC4D8 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 5472C 800AC4DC 8FA800B8 */  lw         $t0, 0xB8($sp)
    /* 54730 800AC4E0 87AA00C0 */  lh         $t2, 0xC0($sp)
    /* 54734 800AC4E4 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* 54738 800AC4E8 ADF80000 */  sw         $t8, 0x0($t7)
    /* 5473C 800AC4EC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 54740 800AC4F0 02232021 */  addu       $a0, $s1, $v1
    /* 54744 800AC4F4 00047C00 */  sll        $t7, $a0, 16
    /* 54748 800AC4F8 25D90008 */  addiu      $t9, $t6, 0x8
    /* 5474C 800AC4FC AE190000 */  sw         $t9, 0x0($s0)
    /* 54750 800AC500 000F7403 */  sra        $t6, $t7, 16
    /* 54754 800AC504 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 54758 800AC508 000EC880 */  sll        $t9, $t6, 2
    /* 5475C 800AC50C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 54760 800AC510 03197825 */  or         $t7, $t8, $t9
    /* 54764 800AC514 0011C080 */  sll        $t8, $s1, 2
    /* 54768 800AC518 ADCF0000 */  sw         $t7, 0x0($t6)
    /* 5476C 800AC51C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 54770 800AC520 0198C825 */  or         $t9, $t4, $t8
    /* 54774 800AC524 00048C00 */  sll        $s1, $a0, 16
    /* 54778 800AC528 ADF90004 */  sw         $t9, 0x4($t7)
    /* 5477C 800AC52C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 54780 800AC530 3C19E100 */  lui        $t9, (0xE1000000 >> 16)
    /* 54784 800AC534 00118C03 */  sra        $s1, $s1, 16
    /* 54788 800AC538 25D80008 */  addiu      $t8, $t6, 0x8
    /* 5478C 800AC53C AE180000 */  sw         $t8, 0x0($s0)
    /* 54790 800AC540 AF190000 */  sw         $t9, 0x0($t8)
    /* 54794 800AC544 8E180000 */  lw         $t8, 0x0($s0)
    /* 54798 800AC548 01AB7025 */  or         $t6, $t5, $t3
    /* 5479C 800AC54C AF0E0004 */  sw         $t6, 0x4($t8)
    /* 547A0 800AC550 8E190000 */  lw         $t9, 0x0($s0)
    /* 547A4 800AC554 3C0EF100 */  lui        $t6, (0xF1000000 >> 16)
    /* 547A8 800AC558 272F0008 */  addiu      $t7, $t9, 0x8
    /* 547AC 800AC55C AE0F0000 */  sw         $t7, 0x0($s0)
    /* 547B0 800AC560 ADEE0000 */  sw         $t6, 0x0($t7)
    /* 547B4 800AC564 8E190000 */  lw         $t9, 0x0($s0)
    /* 547B8 800AC568 AF3F0004 */  sw         $ra, 0x4($t9)
    /* 547BC 800AC56C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 547C0 800AC570 25EE0008 */  addiu      $t6, $t7, 0x8
    /* 547C4 800AC574 19200006 */  blez       $t1, .L800AC590
    /* 547C8 800AC578 AE0E0000 */   sw        $t6, 0x0($s0)
  .L800AC57C:
    /* 547CC 800AC57C 000A3C00 */  sll        $a3, $t2, 16
    /* 547D0 800AC580 01124021 */  addu       $t0, $t0, $s2
    /* 547D4 800AC584 00073C03 */  sra        $a3, $a3, 16
    /* 547D8 800AC588 1000FF87 */  b          .L800AC3A8
    /* 547DC 800AC58C 00005825 */   or        $t3, $zero, $zero
  .L800AC590:
    /* 547E0 800AC590 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 547E4 800AC594 8FB00020 */  lw         $s0, 0x20($sp)
    /* 547E8 800AC598 8FB10024 */  lw         $s1, 0x24($sp)
    /* 547EC 800AC59C 8FB20028 */  lw         $s2, 0x28($sp)
    /* 547F0 800AC5A0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 547F4 800AC5A4 8FB40030 */  lw         $s4, 0x30($sp)
    /* 547F8 800AC5A8 03E00008 */  jr         $ra
    /* 547FC 800AC5AC 27BD00E0 */   addiu     $sp, $sp, 0xE0
endlabel func_800ABB4C
.size func_800ABB4C, . - func_800ABB4C
