nonmatching func_801708A0_ovl3, 0x184

glabel func_801708A0_ovl3
    /* D12E0 801708A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D12E4 801708A4 44866000 */  mtc1       $a2, $f12
    /* D12E8 801708A8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* D12EC 801708AC AFB00018 */  sw         $s0, 0x18($sp)
    /* D12F0 801708B0 14A00057 */  bnez       $a1, .L80170A10_ovl3
    /* D12F4 801708B4 AFA40020 */   sw        $a0, 0x20($sp)
    /* D12F8 801708B8 44800000 */  mtc1       $zero, $f0
    /* D12FC 801708BC 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* D1300 801708C0 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* D1304 801708C4 46006032 */  c.eq.s     $f12, $f0
    /* D1308 801708C8 00000000 */  nop
    /* D130C 801708CC 45030051 */  bc1tl      .L80170A14_ovl3
    /* D1310 801708D0 8FBF001C */   lw        $ra, 0x1C($sp)
    /* D1314 801708D4 C60C0084 */  lwc1       $f12, 0x84($s0)
    /* D1318 801708D8 460C0032 */  c.eq.s     $f0, $f12
    /* D131C 801708DC 00000000 */  nop
    /* D1320 801708E0 45030020 */  bc1tl      .L80170964_ovl3
    /* D1324 801708E4 8E02008C */   lw        $v0, 0x8C($s0)
    /* D1328 801708E8 44802000 */  mtc1       $zero, $f4
    /* D132C 801708EC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* D1330 801708F0 4604603C */  c.lt.s     $f12, $f4
    /* D1334 801708F4 00000000 */  nop
    /* D1338 801708F8 45000014 */  bc1f       .L8017094C_ovl3
    /* D133C 801708FC 00000000 */   nop
    /* D1340 80170900 44811000 */  mtc1       $at, $f2
    /* D1344 80170904 3C01800D */  lui        $at, %hi(gKirbyHp)
    /* D1348 80170908 C4206E50 */  lwc1       $f0, %lo(gKirbyHp)($at)
    /* D134C 8017090C 460C0180 */  add.s      $f6, $f0, $f12
    /* D1350 80170910 4606103E */  c.le.s     $f2, $f6
    /* D1354 80170914 00000000 */  nop
    /* D1358 80170918 45020006 */  bc1fl      .L80170934_ovl3
    /* D135C 8017091C 46020301 */   sub.s     $f12, $f0, $f2
    /* D1360 80170920 0C02EFF8 */  jal        change_kirby_hp
    /* D1364 80170924 00000000 */   nop
    /* D1368 80170928 10000004 */  b          .L8017093C_ovl3
    /* D136C 8017092C 00000000 */   nop
    /* D1370 80170930 46020301 */  sub.s      $f12, $f0, $f2
  .L80170934_ovl3:
    /* D1374 80170934 0C02EFF8 */  jal        change_kirby_hp
    /* D1378 80170938 46006307 */   neg.s     $f12, $f12
  .L8017093C_ovl3:
    /* D137C 8017093C 0C029D9E */  jal        play_sound
    /* D1380 80170940 240400DA */   addiu     $a0, $zero, 0xDA
    /* D1384 80170944 10000004 */  b          .L80170958_ovl3
    /* D1388 80170948 44804000 */   mtc1      $zero, $f8
  .L8017094C_ovl3:
    /* D138C 8017094C 0C02EFF8 */  jal        change_kirby_hp
    /* D1390 80170950 00000000 */   nop
    /* D1394 80170954 44804000 */  mtc1       $zero, $f8
  .L80170958_ovl3:
    /* D1398 80170958 00000000 */  nop
    /* D139C 8017095C E6080084 */  swc1       $f8, 0x84($s0)
    /* D13A0 80170960 8E02008C */  lw         $v0, 0x8C($s0)
  .L80170964_ovl3:
    /* D13A4 80170964 304EFFFF */  andi       $t6, $v0, 0xFFFF
    /* D13A8 80170968 11C0000F */  beqz       $t6, .L801709A8_ovl3
    /* D13AC 8017096C 304F0001 */   andi      $t7, $v0, 0x1
    /* D13B0 80170970 11E00007 */  beqz       $t7, .L80170990_ovl3
    /* D13B4 80170974 30580002 */   andi      $t8, $v0, 0x2
    /* D13B8 80170978 0C029D9E */  jal        play_sound
    /* D13BC 8017097C 240400CA */   addiu     $a0, $zero, 0xCA
    /* D13C0 80170980 0C0487C5 */  jal        func_80121F14
    /* D13C4 80170984 00000000 */   nop
    /* D13C8 80170988 10000015 */  b          .L801709E0_ovl3
    /* D13CC 8017098C 00000000 */   nop
  .L80170990_ovl3:
    /* D13D0 80170990 13000013 */  beqz       $t8, .L801709E0_ovl3
    /* D13D4 80170994 00000000 */   nop
    /* D13D8 80170998 0C029D9E */  jal        play_sound
    /* D13DC 8017099C 240400CB */   addiu     $a0, $zero, 0xCB
    /* D13E0 801709A0 1000000F */  b          .L801709E0_ovl3
    /* D13E4 801709A4 00000000 */   nop
  .L801709A8_ovl3:
    /* D13E8 801709A8 96190088 */  lhu        $t9, 0x88($s0)
    /* D13EC 801709AC 53200008 */  beql       $t9, $zero, .L801709D0_ovl3
    /* D13F0 801709B0 92080008 */   lbu       $t0, 0x8($s0)
    /* D13F4 801709B4 0C029D9E */  jal        play_sound
    /* D13F8 801709B8 24040001 */   addiu     $a0, $zero, 0x1
    /* D13FC 801709BC 0C02F096 */  jal        change_kirby_lives
    /* D1400 801709C0 96040088 */   lhu       $a0, 0x88($s0)
    /* D1404 801709C4 10000006 */  b          .L801709E0_ovl3
    /* D1408 801709C8 A6000088 */   sh        $zero, 0x88($s0)
    /* D140C 801709CC 92080008 */  lbu        $t0, 0x8($s0)
  .L801709D0_ovl3:
    /* D1410 801709D0 11000003 */  beqz       $t0, .L801709E0_ovl3
    /* D1414 801709D4 00000000 */   nop
    /* D1418 801709D8 0C029D9E */  jal        play_sound
    /* D141C 801709DC 240400CA */   addiu     $a0, $zero, 0xCA
  .L801709E0_ovl3:
    /* D1420 801709E0 0C047864 */  jal        func_8011E190
    /* D1424 801709E4 00000000 */   nop
    /* D1428 801709E8 0C029D9E */  jal        play_sound
    /* D142C 801709EC 240400E8 */   addiu     $a0, $zero, 0xE8
    /* D1430 801709F0 24090007 */  addiu      $t1, $zero, 0x7
    /* D1434 801709F4 A2000004 */  sb         $zero, 0x4($s0)
    /* D1438 801709F8 A2000008 */  sb         $zero, 0x8($s0)
    /* D143C 801709FC A60000B4 */  sh         $zero, 0xB4($s0)
    /* D1440 80170A00 A209000D */  sb         $t1, 0xD($s0)
    /* D1444 80170A04 2404000B */  addiu      $a0, $zero, 0xB
    /* D1448 80170A08 0C02ED1A */  jal        func_800BB468
    /* D144C 80170A0C 2405000A */   addiu     $a1, $zero, 0xA
  .L80170A10_ovl3:
    /* D1450 80170A10 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80170A14_ovl3:
    /* D1454 80170A14 8FB00018 */  lw         $s0, 0x18($sp)
    /* D1458 80170A18 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D145C 80170A1C 03E00008 */  jr         $ra
    /* D1460 80170A20 00000000 */   nop
endlabel func_801708A0_ovl3
.size func_801708A0_ovl3, . - func_801708A0_ovl3
