glabel func_801712F8_ovl3
/* 0D1D38 801712F8 3C0E8013 */  lui   $t6, %hi(D_8012E7F0) # $t6, 0x8013
/* 0D1D3C 801712FC 8DCEE7F0 */  lw    $t6, %lo(D_8012E7F0)($t6)
/* 0D1D40 80171300 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D1D44 80171304 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D1D48 80171308 15C0005C */  bnez  $t6, .L8017147C_ovl3
/* 0D1D4C 8017130C AFA40018 */   sw    $a0, 0x18($sp)
/* 0D1D50 80171310 240F00F0 */  li    $t7, 240
/* 0D1D54 80171314 3C018013 */  lui   $at, %hi(D_8012E7DC) # $at, 0x8013
/* 0D1D58 80171318 AC2FE7DC */  sw    $t7, %lo(D_8012E7DC)($at)
/* 0D1D5C 8017131C 3C01801A */  lui   $at, %hi(D_80198838) # $at, 0x801a
/* 0D1D60 80171320 24180003 */  li    $t8, 3
/* 0D1D64 80171324 0C0473D6 */  jal   func_8011CF58
/* 0D1D68 80171328 A4388838 */   sh    $t8, %lo(D_80198838)($at)
/* 0D1D6C 8017132C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D1D70 80171330 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D1D74 80171334 3C018019 */  lui   $at, %hi(D_801973C4) # $at, 0x8019
/* 0D1D78 80171338 C42273C4 */  lwc1  $f2, %lo(D_801973C4)($at)
/* 0D1D7C 8017133C 8C4A0000 */  lw    $t2, ($v0)
/* 0D1D80 80171340 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0D1D84 80171344 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D1D88 80171348 000A5880 */  sll   $t3, $t2, 2
/* 0D1D8C 8017134C 002B0821 */  addu  $at, $at, $t3
/* 0D1D90 80171350 2419000C */  li    $t9, 12
/* 0D1D94 80171354 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D1D98 80171358 AC39DFD0 */ sw $t9, %lo(D_800DDFD0)($at)
/* 0D1D9C 8017135C ACC0004C */  sw    $zero, 0x4c($a2)
/* 0D1DA0 80171360 8C4D0000 */  lw    $t5, ($v0)
/* 0D1DA4 80171364 3C04800F */  lui   $a0, %hi(D_800E9AA0) # $a0, 0x800f
/* 0D1DA8 80171368 24849AA0 */  addiu $a0, %lo(D_800E9AA0) # addiu $a0, $a0, -0x6560
/* 0D1DAC 8017136C 000D7080 */  sll   $t6, $t5, 2
/* 0D1DB0 80171370 008E7821 */  addu  $t7, $a0, $t6
/* 0D1DB4 80171374 240C0001 */  li    $t4, 1
/* 0D1DB8 80171378 ADEC0000 */  sw    $t4, ($t7)
/* 0D1DBC 8017137C 8C430000 */  lw    $v1, ($v0)
/* 0D1DC0 80171380 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0D1DC4 80171384 44800000 */  mtc1  $zero, $f0
/* 0D1DC8 80171388 00031880 */  sll   $v1, $v1, 2
/* 0D1DCC 8017138C 0083C021 */  addu  $t8, $a0, $v1
/* 0D1DD0 80171390 8F0A0000 */  lw    $t2, ($t8)
/* 0D1DD4 80171394 00230821 */  addu  $at, $at, $v1
/* 0D1DD8 80171398 3C05800E */  lui   $a1, %hi(D_800E6690) # $a1, 0x800e
/* 0D1DDC 8017139C AC2A98E0 */ sw $t2, %lo(D_800E98E0)($at)
/* 0D1DE0 801713A0 8C590000 */  lw    $t9, ($v0)
/* 0D1DE4 801713A4 24A56690 */  addiu $a1, %lo(D_800E6690) # addiu $a1, $a1, 0x6690
/* 0D1DE8 801713A8 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0D1DEC 801713AC 00195880 */  sll   $t3, $t9, 2
/* 0D1DF0 801713B0 00AB6821 */  addu  $t5, $a1, $t3
/* 0D1DF4 801713B4 E5A00000 */  swc1  $f0, ($t5)
/* 0D1DF8 801713B8 8C430000 */  lw    $v1, ($v0)
/* 0D1DFC 801713BC 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 0D1E00 801713C0 24E73750 */  addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 0D1E04 801713C4 00031880 */  sll   $v1, $v1, 2
/* 0D1E08 801713C8 00A37021 */  addu  $t6, $a1, $v1
/* 0D1E0C 801713CC C5C40000 */  lwc1  $f4, ($t6)
/* 0D1E10 801713D0 00230821 */  addu  $at, $at, $v1
/* 0D1E14 801713D4 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 0D1E18 801713D8 E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 0D1E1C 801713DC 8C4C0000 */  lw    $t4, ($v0)
/* 0D1E20 801713E0 3C01800E */ lui $at, %hi(D_800E6850)
/* 0D1E24 801713E4 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 0D1E28 801713E8 000C7880 */  sll   $t7, $t4, 2
/* 0D1E2C 801713EC 002F0821 */  addu  $at, $at, $t7
/* 0D1E30 801713F0 E4226850 */ swc1 $f2, %lo(D_800E6850)($at)
/* 0D1E34 801713F4 8C580000 */  lw    $t8, ($v0)
/* 0D1E38 801713F8 3C09800E */  lui   $t1, %hi(D_800E3C90) # $t1, 0x800e
/* 0D1E3C 801713FC 25293C90 */  addiu $t1, %lo(D_800E3C90) # addiu $t1, $t1, 0x3c90
/* 0D1E40 80171400 00185080 */  sll   $t2, $t8, 2
/* 0D1E44 80171404 00EAC821 */  addu  $t9, $a3, $t2
/* 0D1E48 80171408 E7200000 */  swc1  $f0, ($t9)
/* 0D1E4C 8017140C 8C430000 */  lw    $v1, ($v0)
/* 0D1E50 80171410 2401001E */  li    $at, 30
/* 0D1E54 80171414 00031880 */  sll   $v1, $v1, 2
/* 0D1E58 80171418 00E35821 */  addu  $t3, $a3, $v1
/* 0D1E5C 8017141C C5660000 */  lwc1  $f6, ($t3)
/* 0D1E60 80171420 01036821 */  addu  $t5, $t0, $v1
/* 0D1E64 80171424 E5A60000 */  swc1  $f6, ($t5)
/* 0D1E68 80171428 8C4E0000 */  lw    $t6, ($v0)
/* 0D1E6C 8017142C 000E6080 */  sll   $t4, $t6, 2
/* 0D1E70 80171430 012C7821 */  addu  $t7, $t1, $t4
/* 0D1E74 80171434 E5E20000 */  swc1  $f2, ($t7)
/* 0D1E78 80171438 90D80006 */  lbu   $t8, 6($a2)
/* 0D1E7C 8017143C 53010008 */  beql  $t8, $at, .L80171460_ovl3
/* 0D1E80 80171440 8C4A0000 */   lw    $t2, ($v0)
/* 0D1E84 80171444 0C029D9E */  jal   play_sound
/* 0D1E88 80171448 24040103 */   li    $a0, 259
/* 0D1E8C 8017144C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D1E90 80171450 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D1E94 80171454 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D1E98 80171458 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D1E9C 8017145C 8C4A0000 */  lw    $t2, ($v0)
.L80171460_ovl3:
/* 0D1EA0 80171460 3C01800F */ lui $at, %hi(D_800E9720)
/* 0D1EA4 80171464 000AC880 */  sll   $t9, $t2, 2
/* 0D1EA8 80171468 00390821 */  addu  $at, $at, $t9
/* 0D1EAC 8017146C AC209720 */ sw $zero, %lo(D_800E9720)($at)
/* 0D1EB0 80171470 8CCB0030 */  lw    $t3, 0x30($a2)
/* 0D1EB4 80171474 256D0001 */  addiu $t5, $t3, 1
/* 0D1EB8 80171478 ACCD0030 */  sw    $t5, 0x30($a2)
.L8017147C_ovl3:
/* 0D1EBC 8017147C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D1EC0 80171480 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D1EC4 80171484 3C0E800F */ lui $t6, %hi(D_800E98E0)
/* 0D1EC8 80171488 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 0D1ECC 8017148C 8C430000 */  lw    $v1, ($v0)
/* 0D1ED0 80171490 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 0D1ED4 80171494 3C09800E */  lui   $t1, %hi(D_800E3C90) # $t1, 0x800e
/* 0D1ED8 80171498 00031880 */  sll   $v1, $v1, 2
/* 0D1EDC 8017149C 01C37021 */  addu  $t6, $t6, $v1
/* 0D1EE0 801714A0 8DCE98E0 */ lw $t6, %lo(D_800E98E0)($t6)
/* 0D1EE4 801714A4 25293C90 */  addiu $t1, %lo(D_800E3C90) # addiu $t1, $t1, 0x3c90
/* 0D1EE8 801714A8 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 0D1EEC 801714AC 25CCFFFF */  addiu $t4, $t6, -1
/* 0D1EF0 801714B0 2D810005 */  sltiu $at, $t4, 5
/* 0D1EF4 801714B4 102000C8 */  beqz  $at, .L801717D8_ovl3
/* 0D1EF8 801714B8 24E73750 */   addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 0D1EFC 801714BC 000C6080 */  sll   $t4, $t4, 2
/* 0D1F00 801714C0 3C018019 */ lui $at, %hi(D_801973C8)
/* 0D1F04 801714C4 002C0821 */  addu  $at, $at, $t4
/* 0D1F08 801714C8 8C2C73C8 */ lw $t4, %lo(D_801973C8)($at)
/* 0D1F0C 801714CC 01800008 */  jr    $t4
/* 0D1F10 801714D0 00000000 */   nop   
/* 0D1F14 801714D4 44800000 */  mtc1  $zero, $f0
/* 0D1F18 801714D8 01037821 */  addu  $t7, $t0, $v1
/* 0D1F1C 801714DC 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0D1F20 801714E0 E5E00000 */  swc1  $f0, ($t7)
/* 0D1F24 801714E4 8C580000 */  lw    $t8, ($v0)
/* 0D1F28 801714E8 44811000 */  mtc1  $at, $f2
/* 0D1F2C 801714EC 3C040002 */  lui   $a0, (0x000200B1 >> 16) # lui $a0, 2
/* 0D1F30 801714F0 00185080 */  sll   $t2, $t8, 2
/* 0D1F34 801714F4 012AC821 */  addu  $t9, $t1, $t2
/* 0D1F38 801714F8 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0D1F3C 801714FC 44061000 */  mfc1  $a2, $f2
/* 0D1F40 80171500 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0D1F44 80171504 348400B1 */  ori   $a0, (0x000200B1 & 0xFFFF) # ori $a0, $a0, 0xb1
/* 0D1F48 80171508 0C02A9E3 */  jal   func_800AA78C
/* 0D1F4C 8017150C E7200000 */   swc1  $f0, ($t9)
/* 0D1F50 80171510 3C040002 */  lui   $a0, (0x000200B1 >> 16) # lui $a0, 2
/* 0D1F54 80171514 3C050002 */  lui   $a1, (0x000200B2 >> 16) # lui $a1, 2
/* 0D1F58 80171518 34A500B2 */  ori   $a1, (0x000200B2 & 0xFFFF) # ori $a1, $a1, 0xb2
/* 0D1F5C 8017151C 348400B1 */  ori   $a0, (0x000200B1 & 0xFFFF) # ori $a0, $a0, 0xb1
/* 0D1F60 80171520 0C048C3A */  jal   func_801230E8
/* 0D1F64 80171524 00003025 */   move  $a2, $zero
/* 0D1F68 80171528 100000AB */  b     .L801717D8_ovl3
/* 0D1F6C 8017152C 00000000 */   nop   
/* 0D1F70 80171530 3C01800F */ lui $at, %hi(D_800E8920)
/* 0D1F74 80171534 00230821 */  addu  $at, $at, $v1
/* 0D1F78 80171538 3C040002 */  lui   $a0, (0x000200AD >> 16) # lui $a0, 2
/* 0D1F7C 8017153C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 0D1F80 80171540 0C02AA4D */  jal   func_800AA934
/* 0D1F84 80171544 348400AD */   ori   $a0, (0x000200AD & 0xFFFF) # ori $a0, $a0, 0xad
/* 0D1F88 80171548 10400006 */  beqz  $v0, .L80171564_ovl3
/* 0D1F8C 8017154C 3C040002 */   lui   $a0, (0x000200B1 >> 16) # lui $a0, 2
/* 0D1F90 80171550 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0D1F94 80171554 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0D1F98 80171558 348400B1 */  ori   $a0, (0x000200B1 & 0xFFFF) # ori $a0, $a0, 0xb1
/* 0D1F9C 8017155C 0C02A9E3 */  jal   func_800AA78C
/* 0D1FA0 80171560 3C064040 */   lui   $a2, 0x4040
.L80171564_ovl3:
/* 0D1FA4 80171564 3C040002 */  lui   $a0, (0x000200AB >> 16) # lui $a0, 2
/* 0D1FA8 80171568 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0D1FAC 8017156C 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0D1FB0 80171570 348400AB */  ori   $a0, (0x000200AB & 0xFFFF) # ori $a0, $a0, 0xab
/* 0D1FB4 80171574 0C02A9E3 */  jal   func_800AA78C
/* 0D1FB8 80171578 3C064040 */   lui   $a2, 0x4040
/* 0D1FBC 8017157C 3C040002 */  lui   $a0, (0x000200AB >> 16) # lui $a0, 2
/* 0D1FC0 80171580 3C050002 */  lui   $a1, (0x000200AC >> 16) # lui $a1, 2
/* 0D1FC4 80171584 34A500AC */  ori   $a1, (0x000200AC & 0xFFFF) # ori $a1, $a1, 0xac
/* 0D1FC8 80171588 348400AB */  ori   $a0, (0x000200AB & 0xFFFF) # ori $a0, $a0, 0xab
/* 0D1FCC 8017158C 0C048C3A */  jal   func_801230E8
/* 0D1FD0 80171590 00003025 */   move  $a2, $zero
/* 0D1FD4 80171594 10000090 */  b     .L801717D8_ovl3
/* 0D1FD8 80171598 00000000 */   nop   
/* 0D1FDC 8017159C 3C040002 */  lui   $a0, (0x000200AB >> 16) # lui $a0, 2
/* 0D1FE0 801715A0 0C02AA4D */  jal   func_800AA934
/* 0D1FE4 801715A4 348400AB */   ori   $a0, (0x000200AB & 0xFFFF) # ori $a0, $a0, 0xab
/* 0D1FE8 801715A8 10400006 */  beqz  $v0, .L801715C4_ovl3
/* 0D1FEC 801715AC 3C040002 */   lui   $a0, (0x000200B1 >> 16) # lui $a0, 2
/* 0D1FF0 801715B0 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0D1FF4 801715B4 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0D1FF8 801715B8 348400B1 */  ori   $a0, (0x000200B1 & 0xFFFF) # ori $a0, $a0, 0xb1
/* 0D1FFC 801715BC 0C02A9E3 */  jal   func_800AA78C
/* 0D2000 801715C0 3C064040 */   lui   $a2, 0x4040
.L801715C4_ovl3:
/* 0D2004 801715C4 3C040002 */  lui   $a0, (0x000200AD >> 16) # lui $a0, 2
/* 0D2008 801715C8 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0D200C 801715CC 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0D2010 801715D0 348400AD */  ori   $a0, (0x000200AD & 0xFFFF) # ori $a0, $a0, 0xad
/* 0D2014 801715D4 0C02A9E3 */  jal   func_800AA78C
/* 0D2018 801715D8 3C064040 */   lui   $a2, 0x4040
/* 0D201C 801715DC 3C040002 */  lui   $a0, (0x000200AD >> 16) # lui $a0, 2
/* 0D2020 801715E0 3C050002 */  lui   $a1, (0x000200AE >> 16) # lui $a1, 2
/* 0D2024 801715E4 34A500AE */  ori   $a1, (0x000200AE & 0xFFFF) # ori $a1, $a1, 0xae
/* 0D2028 801715E8 348400AD */  ori   $a0, (0x000200AD & 0xFFFF) # ori $a0, $a0, 0xad
/* 0D202C 801715EC 0C048C3A */  jal   func_801230E8
/* 0D2030 801715F0 00003025 */   move  $a2, $zero
/* 0D2034 801715F4 10000078 */  b     .L801717D8_ovl3
/* 0D2038 801715F8 00000000 */   nop   
/* 0D203C 801715FC 3C040002 */  lui   $a0, (0x000200AF >> 16) # lui $a0, 2
/* 0D2040 80171600 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0D2044 80171604 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0D2048 80171608 348400AF */  ori   $a0, (0x000200AF & 0xFFFF) # ori $a0, $a0, 0xaf
/* 0D204C 8017160C 0C02A9E3 */  jal   func_800AA78C
/* 0D2050 80171610 3C064040 */   lui   $a2, 0x4040
/* 0D2054 80171614 3C040002 */  lui   $a0, (0x000200AF >> 16) # lui $a0, 2
/* 0D2058 80171618 3C050002 */  lui   $a1, (0x000200B0 >> 16) # lui $a1, 2
/* 0D205C 8017161C 34A500B0 */  ori   $a1, (0x000200B0 & 0xFFFF) # ori $a1, $a1, 0xb0
/* 0D2060 80171620 348400AF */  ori   $a0, (0x000200AF & 0xFFFF) # ori $a0, $a0, 0xaf
/* 0D2064 80171624 0C048C3A */  jal   func_801230E8
/* 0D2068 80171628 00003025 */   move  $a2, $zero
/* 0D206C 8017162C 0C047701 */  jal   func_8011DC04
/* 0D2070 80171630 24040100 */   li    $a0, 256
/* 0D2074 80171634 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0D2078 80171638 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0D207C 8017163C 3C0C800E */ lui $t4, %hi(D_800DFBD0)
/* 0D2080 80171640 24040005 */  li    $a0, 5
/* 0D2084 80171644 8D6D0000 */  lw    $t5, ($t3)
/* 0D2088 80171648 24050001 */  li    $a1, 1
/* 0D208C 8017164C 2406002B */  li    $a2, 43
/* 0D2090 80171650 000D7080 */  sll   $t6, $t5, 2
/* 0D2094 80171654 018E6021 */  addu  $t4, $t4, $t6
/* 0D2098 80171658 8D8CFBD0 */ lw $t4, %lo(D_800DFBD0)($t4)
/* 0D209C 8017165C 0C02A040 */  jal   func_800A8100
/* 0D20A0 80171660 8D870008 */   lw    $a3, 8($t4)
/* 0D20A4 80171664 3C018013 */  lui   $at, %hi(D_8012E80C) # $at, 0x8013
/* 0D20A8 80171668 1000005B */  b     .L801717D8_ovl3
/* 0D20AC 8017166C AC22E80C */   sw    $v0, %lo(D_8012E80C)($at)
/* 0D20B0 80171670 3C01800F */ lui $at, %hi(D_800E8920)
/* 0D20B4 80171674 00230821 */  addu  $at, $at, $v1
/* 0D20B8 80171678 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 0D20BC 8017167C 8C430000 */  lw    $v1, ($v0)
/* 0D20C0 80171680 3C0F800F */ lui $t7, %hi(D_800E8AE0)
/* 0D20C4 80171684 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 0D20C8 80171688 00031880 */  sll   $v1, $v1, 2
/* 0D20CC 8017168C 01E37821 */  addu  $t7, $t7, $v1
/* 0D20D0 80171690 8DEF8AE0 */ lw $t7, %lo(D_800E8AE0)($t7)
/* 0D20D4 80171694 31F80006 */  andi  $t8, $t7, 6
/* 0D20D8 80171698 53000021 */  beql  $t8, $zero, .L80171720_ovl3
/* 0D20DC 8017169C 44810000 */   mtc1  $at, $f0
/* 0D20E0 801716A0 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 0D20E4 801716A4 44810000 */  mtc1  $at, $f0
/* 0D20E8 801716A8 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0D20EC 801716AC 44811000 */  mtc1  $at, $f2
/* 0D20F0 801716B0 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0D20F4 801716B4 00230821 */  addu  $at, $at, $v1
/* 0D20F8 801716B8 C4286A10 */ lwc1 $f8, %lo(D_800E6A10)($at)
/* 0D20FC 801716BC 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0D2100 801716C0 00230821 */  addu  $at, $at, $v1
/* 0D2104 801716C4 46004282 */  mul.s $f10, $f8, $f0
/* 0D2108 801716C8 E42A64D0 */ swc1 $f10, %lo(D_800E64D0)($at)
/* 0D210C 801716CC 8C4A0000 */  lw    $t2, ($v0)
/* 0D2110 801716D0 3C01800E */ lui $at, %hi(D_800E6850)
/* 0D2114 801716D4 000AC880 */  sll   $t9, $t2, 2
/* 0D2118 801716D8 00390821 */  addu  $at, $at, $t9
/* 0D211C 801716DC E4206850 */ swc1 $f0, %lo(D_800E6850)($at)
/* 0D2120 801716E0 8C4B0000 */  lw    $t3, ($v0)
/* 0D2124 801716E4 3C018019 */  li    $at, 0x80190000 # -0.000000
/* 0D2128 801716E8 000B6880 */  sll   $t5, $t3, 2
/* 0D212C 801716EC 010D7021 */  addu  $t6, $t0, $t5
/* 0D2130 801716F0 E5C20000 */  swc1  $f2, ($t6)
/* 0D2134 801716F4 8C4C0000 */  lw    $t4, ($v0)
/* 0D2138 801716F8 C43073DC */  lwc1  $f16, %lo(D_801973DC)($at)
/* 0D213C 801716FC 000C7880 */  sll   $t7, $t4, 2
/* 0D2140 80171700 00EFC021 */  addu  $t8, $a3, $t7
/* 0D2144 80171704 E7100000 */  swc1  $f16, ($t8)
/* 0D2148 80171708 8C4A0000 */  lw    $t2, ($v0)
/* 0D214C 8017170C 000AC880 */  sll   $t9, $t2, 2
/* 0D2150 80171710 01395821 */  addu  $t3, $t1, $t9
/* 0D2154 80171714 10000020 */  b     .L80171798_ovl3
/* 0D2158 80171718 E5620000 */   swc1  $f2, ($t3)
/* 0D215C 8017171C 44810000 */  mtc1  $at, $f0
.L80171720_ovl3:
/* 0D2160 80171720 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0D2164 80171724 00230821 */  addu  $at, $at, $v1
/* 0D2168 80171728 C4326A10 */ lwc1 $f18, %lo(D_800E6A10)($at)
/* 0D216C 8017172C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0D2170 80171730 00230821 */  addu  $at, $at, $v1
/* 0D2174 80171734 46009102 */  mul.s $f4, $f18, $f0
/* 0D2178 80171738 E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 0D217C 8017173C 8C4D0000 */  lw    $t5, ($v0)
/* 0D2180 80171740 3C01800E */ lui $at, %hi(D_800E6850)
/* 0D2184 80171744 000D7080 */  sll   $t6, $t5, 2
/* 0D2188 80171748 002E0821 */  addu  $at, $at, $t6
/* 0D218C 8017174C E4206850 */ swc1 $f0, %lo(D_800E6850)($at)
/* 0D2190 80171750 8C4C0000 */  lw    $t4, ($v0)
/* 0D2194 80171754 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 0D2198 80171758 44813000 */  mtc1  $at, $f6
/* 0D219C 8017175C 000C7880 */  sll   $t7, $t4, 2
/* 0D21A0 80171760 010FC021 */  addu  $t8, $t0, $t7
/* 0D21A4 80171764 E7060000 */  swc1  $f6, ($t8)
/* 0D21A8 80171768 8C4A0000 */  lw    $t2, ($v0)
/* 0D21AC 8017176C 3C018019 */  lui   $at, %hi(D_801973E0) # $at, 0x8019
/* 0D21B0 80171770 C42873E0 */  lwc1  $f8, %lo(D_801973E0)($at)
/* 0D21B4 80171774 000AC880 */  sll   $t9, $t2, 2
/* 0D21B8 80171778 00F95821 */  addu  $t3, $a3, $t9
/* 0D21BC 8017177C E5680000 */  swc1  $f8, ($t3)
/* 0D21C0 80171780 8C4D0000 */  lw    $t5, ($v0)
/* 0D21C4 80171784 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 0D21C8 80171788 44815000 */  mtc1  $at, $f10
/* 0D21CC 8017178C 000D7080 */  sll   $t6, $t5, 2
/* 0D21D0 80171790 012E6021 */  addu  $t4, $t1, $t6
/* 0D21D4 80171794 E58A0000 */  swc1  $f10, ($t4)
.L80171798_ovl3:
/* 0D21D8 80171798 0C029D9E */  jal   play_sound
/* 0D21DC 8017179C 240400EA */   li    $a0, 234
/* 0D21E0 801717A0 3C040002 */  lui   $a0, (0x000200B3 >> 16) # lui $a0, 2
/* 0D21E4 801717A4 3C050002 */  lui   $a1, (0x000200B4 >> 16) # lui $a1, 2
/* 0D21E8 801717A8 34A500B4 */  ori   $a1, (0x000200B4 & 0xFFFF) # ori $a1, $a1, 0xb4
/* 0D21EC 801717AC 348400B3 */  ori   $a0, (0x000200B3 & 0xFFFF) # ori $a0, $a0, 0xb3
/* 0D21F0 801717B0 0C048C3A */  jal   func_801230E8
/* 0D21F4 801717B4 24060001 */   li    $a2, 1
/* 0D21F8 801717B8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0D21FC 801717BC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0D2200 801717C0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0D2204 801717C4 240F0006 */  li    $t7, 6
/* 0D2208 801717C8 8F0A0000 */  lw    $t2, ($t8)
/* 0D220C 801717CC 000AC880 */  sll   $t9, $t2, 2
/* 0D2210 801717D0 00390821 */  addu  $at, $at, $t9
/* 0D2214 801717D4 AC2F98E0 */ sw $t7, %lo(D_800E98E0)($at)
.L801717D8_ovl3:
/* 0D2218 801717D8 0C02BE85 */  jal   func_800AFA14
/* 0D221C 801717DC 00000000 */   nop   
/* 0D2220 801717E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D2224 801717E4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D2228 801717E8 03E00008 */  jr    $ra
/* 0D222C 801717EC 00000000 */   nop   
.type func_801712F8_ovl3, @function
.size func_801712F8_ovl3, . - func_801712F8_ovl3
