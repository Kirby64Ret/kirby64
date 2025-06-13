glabel func_801DBC34_ovl14 # 12
/* 1FE824 801DBC34 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 1FE828 801DBC38 AFB20024 */  sw          $s2, 0x24($sp)
/* 1FE82C 801DBC3C 3C128005 */  lui         $s2, %hi(D_8004A7C4)
/* 1FE830 801DBC40 2652A7C4 */  addiu       $s2, $s2, %lo(D_8004A7C4)
/* 1FE834 801DBC44 8E480000 */  lw          $t0, 0x0($s2)
/* 1FE838 801DBC48 AFBF002C */  sw          $ra, 0x2C($sp)
/* 1FE83C 801DBC4C AFB30028 */  sw          $s3, 0x28($sp)
/* 1FE840 801DBC50 AFB10020 */  sw          $s1, 0x20($sp)
/* 1FE844 801DBC54 AFB0001C */  sw          $s0, 0x1C($sp)
/* 1FE848 801DBC58 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1FE84C 801DBC5C 3C0140C0 */  lui         $at, (0x40C00000 >> 16)
/* 1FE850 801DBC60 44810000 */  mtc1        $at, $f0
/* 1FE854 801DBC64 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FE858 801DBC68 000FC080 */  sll         $t8, $t7, 2
/* 1FE85C 801DBC6C 00380821 */  addu        $at, $at, $t8
/* 1FE860 801DBC70 240E0004 */  addiu       $t6, $zero, 0x4
/* 1FE864 801DBC74 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1FE868 801DBC78 8D190000 */  lw          $t9, 0x0($t0)
/* 1FE86C 801DBC7C 3C09800F */  lui         $t1, %hi(D_800EBF60)
/* 1FE870 801DBC80 2529BF60 */  addiu       $t1, $t1, %lo(D_800EBF60)
/* 1FE874 801DBC84 00195080 */  sll         $t2, $t9, 2
/* 1FE878 801DBC88 012A5821 */  addu        $t3, $t1, $t2
/* 1FE87C 801DBC8C AD600000 */  sw          $zero, 0x0($t3)
/* 1FE880 801DBC90 8D030000 */  lw          $v1, 0x0($t0)
/* 1FE884 801DBC94 3C13800F */  lui         $s3, %hi(D_800EBDA0)
/* 1FE888 801DBC98 2673BDA0 */  addiu       $s3, $s3, %lo(D_800EBDA0)
/* 1FE88C 801DBC9C 00031880 */  sll         $v1, $v1, 2
/* 1FE890 801DBCA0 01236021 */  addu        $t4, $t1, $v1
/* 1FE894 801DBCA4 8D820000 */  lw          $v0, 0x0($t4)
/* 1FE898 801DBCA8 02636821 */  addu        $t5, $s3, $v1
/* 1FE89C 801DBCAC 3C11800F */  lui         $s1, %hi(D_800EBBE0)
/* 1FE8A0 801DBCB0 ADA20000 */  sw          $v0, 0x0($t5)
/* 1FE8A4 801DBCB4 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1FE8A8 801DBCB8 2631BBE0 */  addiu       $s1, $s1, %lo(D_800EBBE0)
/* 1FE8AC 801DBCBC 3C050001 */  lui         $a1, (0x10430 >> 16)
/* 1FE8B0 801DBCC0 000F7080 */  sll         $t6, $t7, 2
/* 1FE8B4 801DBCC4 022EC021 */  addu        $t8, $s1, $t6
/* 1FE8B8 801DBCC8 AF020000 */  sw          $v0, 0x0($t8)
/* 1FE8BC 801DBCCC 8C99003C */  lw          $t9, 0x3C($a0)
/* 1FE8C0 801DBCD0 3C070001 */  lui         $a3, (0x1006B >> 16)
/* 1FE8C4 801DBCD4 44060000 */  mfc1        $a2, $f0
/* 1FE8C8 801DBCD8 8F240010 */  lw          $a0, 0x10($t9)
/* 1FE8CC 801DBCDC 34E7006B */  ori         $a3, $a3, (0x1006B & 0xFFFF)
/* 1FE8D0 801DBCE0 34A50430 */  ori         $a1, $a1, (0x10430 & 0xFFFF)
/* 1FE8D4 801DBCE4 0C02A982 */  jal         func_800AA608
/* 1FE8D8 801DBCE8 E7A00010 */   swc1       $f0, 0x10($sp)
/* 1FE8DC 801DBCEC 3C040001 */  lui         $a0, (0x10430 >> 16)
/* 1FE8E0 801DBCF0 34840430 */  ori         $a0, $a0, (0x10430 & 0xFFFF)
/* 1FE8E4 801DBCF4 0C02A7E6 */  jal         func_800A9F98
/* 1FE8E8 801DBCF8 3C0540C0 */   lui        $a1, (0x40C00000 >> 16)
/* 1FE8EC 801DBCFC 0C002DAF */  jal         finish_current_thread
/* 1FE8F0 801DBD00 24040022 */   addiu      $a0, $zero, 0x22
/* 1FE8F4 801DBD04 0C029D9E */  jal         play_sound
/* 1FE8F8 801DBD08 240401AA */   addiu      $a0, $zero, 0x1AA
/* 1FE8FC 801DBD0C 0C02BC9F */  jal         func_800AF27C
/* 1FE900 801DBD10 00000000 */   nop
/* 1FE904 801DBD14 3C040001 */  lui         $a0, (0x10432 >> 16)
/* 1FE908 801DBD18 0C02A806 */  jal         func_800AA018
/* 1FE90C 801DBD1C 34840432 */   ori        $a0, $a0, (0x10432 & 0xFFFF)
/* 1FE910 801DBD20 0C006291 */  jal         random_soft_s32_range
/* 1FE914 801DBD24 24040004 */   addiu      $a0, $zero, 0x4
/* 1FE918 801DBD28 24040001 */  addiu       $a0, $zero, 0x1
/* 1FE91C 801DBD2C 0C07719D */  jal         func_801DC674_ovl14
/* 1FE920 801DBD30 00402825 */   move       $a1, $v0
/* 1FE924 801DBD34 8E480000 */  lw          $t0, 0x0($s2)
/* 1FE928 801DBD38 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FE92C 801DBD3C 3C10800F */  lui         $s0, %hi(D_800EC2E0)
/* 1FE930 801DBD40 8D0A0000 */  lw          $t2, 0x0($t0)
/* 1FE934 801DBD44 2610C2E0 */  addiu       $s0, $s0, %lo(D_800EC2E0)
/* 1FE938 801DBD48 000A5880 */  sll         $t3, $t2, 2
/* 1FE93C 801DBD4C 022B6021 */  addu        $t4, $s1, $t3
/* 1FE940 801DBD50 AD820000 */  sw          $v0, 0x0($t4)
/* 1FE944 801DBD54 8D0D0000 */  lw          $t5, 0x0($t0)
/* 1FE948 801DBD58 000D7880 */  sll         $t7, $t5, 2
/* 1FE94C 801DBD5C 022F7021 */  addu        $t6, $s1, $t7
/* 1FE950 801DBD60 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FE954 801DBD64 1301003A */  beq         $t8, $at, .L801DBE50
/* 1FE958 801DBD68 00000000 */   nop
.L801DBD6C:
/* 1FE95C 801DBD6C 0C006291 */  jal         random_soft_s32_range
/* 1FE960 801DBD70 24040004 */   addiu      $a0, $zero, 0x4
/* 1FE964 801DBD74 8E590000 */  lw          $t9, 0x0($s2)
/* 1FE968 801DBD78 00402825 */  move        $a1, $v0
/* 1FE96C 801DBD7C 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1FE970 801DBD80 000A5880 */  sll         $t3, $t2, 2
/* 1FE974 801DBD84 022B6021 */  addu        $t4, $s1, $t3
/* 1FE978 801DBD88 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FE97C 801DBD8C 000D7880 */  sll         $t7, $t5, 2
/* 1FE980 801DBD90 020F7021 */  addu        $t6, $s0, $t7
/* 1FE984 801DBD94 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FE988 801DBD98 1058FFF4 */  beq         $v0, $t8, .L801DBD6C
/* 1FE98C 801DBD9C 00000000 */   nop
/* 1FE990 801DBDA0 0C07719D */  jal         func_801DC674_ovl14
/* 1FE994 801DBDA4 24040001 */   addiu      $a0, $zero, 0x1
/* 1FE998 801DBDA8 8E480000 */  lw          $t0, 0x0($s2)
/* 1FE99C 801DBDAC 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FE9A0 801DBDB0 8D190000 */  lw          $t9, 0x0($t0)
/* 1FE9A4 801DBDB4 00195080 */  sll         $t2, $t9, 2
/* 1FE9A8 801DBDB8 026A5821 */  addu        $t3, $s3, $t2
/* 1FE9AC 801DBDBC AD620000 */  sw          $v0, 0x0($t3)
/* 1FE9B0 801DBDC0 8D0C0000 */  lw          $t4, 0x0($t0)
/* 1FE9B4 801DBDC4 000C6880 */  sll         $t5, $t4, 2
/* 1FE9B8 801DBDC8 026D7821 */  addu        $t7, $s3, $t5
/* 1FE9BC 801DBDCC 8DEE0000 */  lw          $t6, 0x0($t7)
/* 1FE9C0 801DBDD0 11C1001F */  beq         $t6, $at, .L801DBE50
/* 1FE9C4 801DBDD4 00000000 */   nop
.L801DBDD8:
/* 1FE9C8 801DBDD8 0C006291 */  jal         random_soft_s32_range
/* 1FE9CC 801DBDDC 24040004 */   addiu      $a0, $zero, 0x4
/* 1FE9D0 801DBDE0 8E580000 */  lw          $t8, 0x0($s2)
/* 1FE9D4 801DBDE4 00402825 */  move        $a1, $v0
/* 1FE9D8 801DBDE8 8F030000 */  lw          $v1, 0x0($t8)
/* 1FE9DC 801DBDEC 00031880 */  sll         $v1, $v1, 2
/* 1FE9E0 801DBDF0 0223C821 */  addu        $t9, $s1, $v1
/* 1FE9E4 801DBDF4 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1FE9E8 801DBDF8 000A5880 */  sll         $t3, $t2, 2
/* 1FE9EC 801DBDFC 020B6021 */  addu        $t4, $s0, $t3
/* 1FE9F0 801DBE00 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FE9F4 801DBE04 104DFFF4 */  beq         $v0, $t5, .L801DBDD8
/* 1FE9F8 801DBE08 00000000 */   nop
/* 1FE9FC 801DBE0C 02637821 */  addu        $t7, $s3, $v1
/* 1FEA00 801DBE10 8DEE0000 */  lw          $t6, 0x0($t7)
/* 1FEA04 801DBE14 000EC080 */  sll         $t8, $t6, 2
/* 1FEA08 801DBE18 0218C821 */  addu        $t9, $s0, $t8
/* 1FEA0C 801DBE1C 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1FEA10 801DBE20 104AFFED */  beq         $v0, $t2, .L801DBDD8
/* 1FEA14 801DBE24 00000000 */   nop
/* 1FEA18 801DBE28 0C07719D */  jal         func_801DC674_ovl14
/* 1FEA1C 801DBE2C 24040001 */   addiu      $a0, $zero, 0x1
/* 1FEA20 801DBE30 8E4B0000 */  lw          $t3, 0x0($s2)
/* 1FEA24 801DBE34 3C01800F */  lui         $at, %hi(D_800EBF60)
/* 1FEA28 801DBE38 2404018A */  addiu       $a0, $zero, 0x18A
/* 1FEA2C 801DBE3C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FEA30 801DBE40 000C6880 */  sll         $t5, $t4, 2
/* 1FEA34 801DBE44 002D0821 */  addu        $at, $at, $t5
/* 1FEA38 801DBE48 0C029D9E */  jal         play_sound
/* 1FEA3C 801DBE4C AC22BF60 */   sw         $v0, %lo(D_800EBF60)($at)
.L801DBE50:
/* 1FEA40 801DBE50 0C002DAF */  jal         finish_current_thread
/* 1FEA44 801DBE54 24040014 */   addiu      $a0, $zero, 0x14
/* 1FEA48 801DBE58 3C040001 */  lui         $a0, (0x10438 >> 16)
/* 1FEA4C 801DBE5C 0C02A7A9 */  jal         func_800A9EA4
/* 1FEA50 801DBE60 34840438 */   ori        $a0, $a0, (0x10438 & 0xFFFF)
/* 1FEA54 801DBE64 0C002DAF */  jal         finish_current_thread
/* 1FEA58 801DBE68 2404003C */   addiu      $a0, $zero, 0x3C
/* 1FEA5C 801DBE6C 8E4E0000 */  lw          $t6, 0x0($s2)
/* 1FEA60 801DBE70 8FBF002C */  lw          $ra, 0x2C($sp)
/* 1FEA64 801DBE74 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FEA68 801DBE78 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FEA6C 801DBE7C 240F0001 */  addiu       $t7, $zero, 0x1
/* 1FEA70 801DBE80 8FB20024 */  lw          $s2, 0x24($sp)
/* 1FEA74 801DBE84 0018C880 */  sll         $t9, $t8, 2
/* 1FEA78 801DBE88 00390821 */  addu        $at, $at, $t9
/* 1FEA7C 801DBE8C 8FB0001C */  lw          $s0, 0x1C($sp)
/* 1FEA80 801DBE90 8FB10020 */  lw          $s1, 0x20($sp)
/* 1FEA84 801DBE94 8FB30028 */  lw          $s3, 0x28($sp)
/* 1FEA88 801DBE98 AC2FDC50 */  sw          $t7, %lo(gEntityVtableIndexArray)($at)
/* 1FEA8C 801DBE9C 03E00008 */  jr          $ra
/* 1FEA90 801DBEA0 27BD0030 */   addiu      $sp, $sp, 0x30
.type func_801DBC34_ovl14, @function
.size func_801DBC34_ovl14, . - func_801DBC34_ovl14
