glabel func_800A58E4
/* 04DB34 800A58E4 3C038005 */  lui   $v1, %hi(gDisplayListHeads) # $v1, 0x8005
/* 04DB38 800A58E8 2463A3D0 */  addiu $v1, %lo(gDisplayListHeads) # addiu $v1, $v1, -0x5c30
/* 04DB3C 800A58EC 8C660004 */  lw    $a2, 4($v1)
/* 04DB40 800A58F0 AFA40000 */  sw    $a0, ($sp)
/* 04DB44 800A58F4 3C04E700 */  lui   $a0, 0xe700
/* 04DB48 800A58F8 24C20008 */  addiu $v0, $a2, 8
/* 04DB4C 800A58FC 3C05E200 */  lui   $a1, (0xE200001C >> 16) # lui $a1, 0xe200
/* 04DB50 800A5900 3C0E0050 */  lui   $t6, (0x00504340 >> 16) # lui $t6, 0x50
/* 04DB54 800A5904 ACC40000 */  sw    $a0, ($a2)
/* 04DB58 800A5908 ACC00004 */  sw    $zero, 4($a2)
/* 04DB5C 800A590C 34A5001C */  ori   $a1, (0xE200001C & 0xFFFF) # ori $a1, $a1, 0x1c
/* 04DB60 800A5910 35CE4340 */  ori   $t6, (0x00504340 & 0xFFFF) # ori $t6, $t6, 0x4340
/* 04DB64 800A5914 AC4E0004 */  sw    $t6, 4($v0)
/* 04DB68 800A5918 AC450000 */  sw    $a1, ($v0)
/* 04DB6C 800A591C 24480008 */  addiu $t0, $v0, 8
/* 04DB70 800A5920 3C0FFA00 */  lui   $t7, 0xfa00
/* 04DB74 800A5924 AD0F0000 */  sw    $t7, ($t0)
/* 04DB78 800A5928 3C0C800D */  lui   $t4, %hi(D_800D6B29) # $t4, 0x800d
/* 04DB7C 800A592C 918C6B29 */  lbu   $t4, %lo(D_800D6B29)($t4)
/* 04DB80 800A5930 3C18800D */  lui   $t8, %hi(D_800D6B28) # $t8, 0x800d
/* 04DB84 800A5934 93196B28 */  lbu   $t9, %lo(D_800D6B28)($t8)
/* 04DB88 800A5938 318D00FF */  andi  $t5, $t4, 0xff
/* 04DB8C 800A593C 000D7400 */  sll   $t6, $t5, 0x10
/* 04DB90 800A5940 3C18800D */  lui   $t8, %hi(D_800D6B2A) # $t8, 0x800d
/* 04DB94 800A5944 00195E00 */  sll   $t3, $t9, 0x18
/* 04DB98 800A5948 93186B2A */  lbu   $t8, %lo(D_800D6B2A)($t8)
/* 04DB9C 800A594C 016E7825 */  or    $t7, $t3, $t6
/* 04DBA0 800A5950 3C0B800D */  lui   $t3, %hi(D_800D6B2F) # $t3, 0x800d
/* 04DBA4 800A5954 916B6B2F */  lbu   $t3, %lo(D_800D6B2F)($t3)
/* 04DBA8 800A5958 331900FF */  andi  $t9, $t8, 0xff
/* 04DBAC 800A595C 00196200 */  sll   $t4, $t9, 8
/* 04DBB0 800A5960 01EC6825 */  or    $t5, $t7, $t4
/* 04DBB4 800A5964 316E00FF */  andi  $t6, $t3, 0xff
/* 04DBB8 800A5968 01AEC025 */  or    $t8, $t5, $t6
/* 04DBBC 800A596C AD180004 */  sw    $t8, 4($t0)
/* 04DBC0 800A5970 25090008 */  addiu $t1, $t0, 8
/* 04DBC4 800A5974 3C0FFFFD */  lui   $t7, (0xFFFDF6FB >> 16) # lui $t7, 0xfffd
/* 04DBC8 800A5978 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* 04DBCC 800A597C 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 04DBD0 800A5980 35EFF6FB */  ori   $t7, (0xFFFDF6FB & 0xFFFF) # ori $t7, $t7, 0xf6fb
/* 04DBD4 800A5984 AD2F0004 */  sw    $t7, 4($t1)
/* 04DBD8 800A5988 AD390000 */  sw    $t9, ($t1)
/* 04DBDC 800A598C 3C0C800D */  lui   $t4, %hi(D_800D6B3C) # $t4, 0x800d
/* 04DBE0 800A5990 8D8C6B3C */  lw    $t4, %lo(D_800D6B3C)($t4)
/* 04DBE4 800A5994 3C18800D */  lui   $t8, %hi(D_800D6B40) # $t8, 0x800d
/* 04DBE8 800A5998 8F186B40 */  lw    $t8, %lo(D_800D6B40)($t8)
/* 04DBEC 800A599C 318B03FF */  andi  $t3, $t4, 0x3ff
/* 04DBF0 800A59A0 000B6B80 */  sll   $t5, $t3, 0xe
/* 04DBF4 800A59A4 3C01F600 */  lui   $at, 0xf600
/* 04DBF8 800A59A8 331903FF */  andi  $t9, $t8, 0x3ff
/* 04DBFC 800A59AC 00197880 */  sll   $t7, $t9, 2
/* 04DC00 800A59B0 01A17025 */  or    $t6, $t5, $at
/* 04DC04 800A59B4 252A0008 */  addiu $t2, $t1, 8
/* 04DC08 800A59B8 01CF6025 */  or    $t4, $t6, $t7
/* 04DC0C 800A59BC AD4C0000 */  sw    $t4, ($t2)
/* 04DC10 800A59C0 3C19800D */  lui   $t9, %hi(D_800D6B38) # $t9, 0x800d
/* 04DC14 800A59C4 3C0B800D */  lui   $t3, %hi(D_800D6B34) # $t3, 0x800d
/* 04DC18 800A59C8 8D6B6B34 */  lw    $t3, %lo(D_800D6B34)($t3)
/* 04DC1C 800A59CC 8F396B38 */  lw    $t9, %lo(D_800D6B38)($t9)
/* 04DC20 800A59D0 25460008 */  addiu $a2, $t2, 8
/* 04DC24 800A59D4 316D03FF */  andi  $t5, $t3, 0x3ff
/* 04DC28 800A59D8 332E03FF */  andi  $t6, $t9, 0x3ff
/* 04DC2C 800A59DC 000E7880 */  sll   $t7, $t6, 2
/* 04DC30 800A59E0 000DC380 */  sll   $t8, $t5, 0xe
/* 04DC34 800A59E4 030F6025 */  or    $t4, $t8, $t7
/* 04DC38 800A59E8 AD4C0004 */  sw    $t4, 4($t2)
/* 04DC3C 800A59EC 24C70008 */  addiu $a3, $a2, 8
/* 04DC40 800A59F0 ACC00004 */  sw    $zero, 4($a2)
/* 04DC44 800A59F4 ACC40000 */  sw    $a0, ($a2)
/* 04DC48 800A59F8 3C0B0050 */  lui   $t3, (0x005049D8 >> 16) # lui $t3, 0x50
/* 04DC4C 800A59FC 356B49D8 */  ori   $t3, (0x005049D8 & 0xFFFF) # ori $t3, $t3, 0x49d8
/* 04DC50 800A5A00 ACEB0004 */  sw    $t3, 4($a3)
/* 04DC54 800A5A04 ACE50000 */  sw    $a1, ($a3)
/* 04DC58 800A5A08 24E20008 */  addiu $v0, $a3, 8
/* 04DC5C 800A5A0C 03E00008 */  jr    $ra
/* 04DC60 800A5A10 AC620004 */   sw    $v0, 4($v1)
.type func_800A58E4, @function
.size func_800A58E4, . - func_800A58E4
