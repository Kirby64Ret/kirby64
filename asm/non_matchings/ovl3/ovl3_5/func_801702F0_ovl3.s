glabel func_801702F0_ovl3
/* 0D0D30 801702F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0D0D34 801702F4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0D0D38 801702F8 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0D0D3C 801702FC 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0D0D40 80170300 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D0D44 80170304 AFA40020 */  sw    $a0, 0x20($sp)
/* 0D0D48 80170308 AE000030 */  sw    $zero, 0x30($s0)
/* 0D0D4C 8017030C 0C0473D6 */  jal   func_8011CF58_ovl3
/* 0D0D50 80170310 A2000007 */   sb    $zero, 7($s0)
/* 0D0D54 80170314 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D0D58 80170318 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D0D5C 8017031C 3C01800E */  lui   $at, 0x800e
/* 0D0D60 80170320 240E0009 */  li    $t6, 9
/* 0D0D64 80170324 8DF80000 */  lw    $t8, ($t7)
/* 0D0D68 80170328 3C0D8019 */  lui   $t5, %hi(D_80190358) # $t5, 0x8019
/* 0D0D6C 8017032C 240A0003 */  li    $t2, 3
/* 0D0D70 80170330 0018C880 */  sll   $t9, $t8, 2
/* 0D0D74 80170334 00390821 */  addu  $at, $at, $t9
/* 0D0D78 80170338 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 0D0D7C 8017033C 96080068 */  lhu   $t0, 0x68($s0)
/* 0D0D80 80170340 24010003 */  li    $at, 3
/* 0D0D84 80170344 24090001 */  li    $t1, 1
/* 0D0D88 80170348 11010003 */  beq   $t0, $at, .L80170358_ovl3
/* 0D0D8C 8017034C 25AD0358 */   addiu $t5, %lo(D_80190358) # addiu $t5, $t5, 0x358
/* 0D0D90 80170350 10000002 */  b     .L8017035C_ovl3
/* 0D0D94 80170354 A6090068 */   sh    $t1, 0x68($s0)
.L80170358_ovl3:
/* 0D0D98 80170358 A60A0068 */  sh    $t2, 0x68($s0)
.L8017035C_ovl3:
/* 0D0D9C 8017035C 920B0004 */  lbu   $t3, 4($s0)
/* 0D0DA0 80170360 24050001 */  li    $a1, 1
/* 0D0DA4 80170364 3C0C8019 */  lui   $t4, %hi(D_801903E0) # $t4, 0x8019
/* 0D0DA8 80170368 14AB0003 */  bne   $a1, $t3, .L80170378_ovl3
/* 0D0DAC 8017036C 258C03E0 */   addiu $t4, %lo(D_801903E0) # addiu $t4, $t4, 0x3e0
/* 0D0DB0 80170370 10000002 */  b     .L8017037C_ovl3
/* 0D0DB4 80170374 AE0C015C */   sw    $t4, 0x15c($s0)
.L80170378_ovl3:
/* 0D0DB8 80170378 AE0D015C */  sw    $t5, 0x15c($s0)
.L8017037C_ovl3:
/* 0D0DBC 8017037C 8E0F00E4 */  lw    $t7, 0xe4($s0)
/* 0D0DC0 80170380 11E00074 */  beqz  $t7, .L80170554_ovl3
/* 0D0DC4 80170384 00000000 */   nop   
/* 0D0DC8 80170388 0C029D9E */  jal   func_800A7678_ovl3
/* 0D0DCC 8017038C 240400FF */   li    $a0, 255
/* 0D0DD0 80170390 92030004 */  lbu   $v1, 4($s0)
/* 0D0DD4 80170394 24050001 */  li    $a1, 1
/* 0D0DD8 80170398 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D0DDC 8017039C 10A30005 */  beq   $a1, $v1, .L801703B4_ovl3
/* 0D0DE0 801703A0 00000000 */   nop   
/* 0D0DE4 801703A4 92180006 */  lbu   $t8, 6($s0)
/* 0D0DE8 801703A8 24010009 */  li    $at, 9
/* 0D0DEC 801703AC 17010015 */  bne   $t8, $at, .L80170404_ovl3
/* 0D0DF0 801703B0 00000000 */   nop   
.L801703B4_ovl3:
/* 0D0DF4 801703B4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D0DF8 801703B8 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0D0DFC 801703BC 44810000 */  mtc1  $at, $f0
/* 0D0E00 801703C0 8C4E0000 */  lw    $t6, ($v0)
/* 0D0E04 801703C4 3C01800E */  lui   $at, 0x800e
/* 0D0E08 801703C8 44802000 */  mtc1  $zero, $f4
/* 0D0E0C 801703CC 000EC880 */  sll   $t9, $t6, 2
/* 0D0E10 801703D0 00390821 */  addu  $at, $at, $t9
/* 0D0E14 801703D4 E4203210 */  swc1  $f0, 0x3210($at)
/* 0D0E18 801703D8 8C480000 */  lw    $t0, ($v0)
/* 0D0E1C 801703DC 3C01800E */  lui   $at, 0x800e
/* 0D0E20 801703E0 00084880 */  sll   $t1, $t0, 2
/* 0D0E24 801703E4 00290821 */  addu  $at, $at, $t1
/* 0D0E28 801703E8 E4243750 */  swc1  $f4, 0x3750($at)
/* 0D0E2C 801703EC 8C4A0000 */  lw    $t2, ($v0)
/* 0D0E30 801703F0 3C01800E */  lui   $at, 0x800e
/* 0D0E34 801703F4 000A5880 */  sll   $t3, $t2, 2
/* 0D0E38 801703F8 002B0821 */  addu  $at, $at, $t3
/* 0D0E3C 801703FC 10000015 */  b     .L80170454_ovl3
/* 0D0E40 80170400 E4203C90 */   swc1  $f0, 0x3c90($at)
.L80170404_ovl3:
/* 0D0E44 80170404 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D0E48 80170408 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D0E4C 8017040C 3C018019 */  lui   $at, %hi(D_801973A4) # $at, 0x8019
/* 0D0E50 80170410 C42073A4 */  lwc1  $f0, %lo(D_801973A4)($at)
/* 0D0E54 80170414 8C4C0000 */  lw    $t4, ($v0)
/* 0D0E58 80170418 3C01800E */  lui   $at, 0x800e
/* 0D0E5C 8017041C 44803000 */  mtc1  $zero, $f6
/* 0D0E60 80170420 000C6880 */  sll   $t5, $t4, 2
/* 0D0E64 80170424 002D0821 */  addu  $at, $at, $t5
/* 0D0E68 80170428 E4203210 */  swc1  $f0, 0x3210($at)
/* 0D0E6C 8017042C 8C4F0000 */  lw    $t7, ($v0)
/* 0D0E70 80170430 3C01800E */  lui   $at, 0x800e
/* 0D0E74 80170434 000FC080 */  sll   $t8, $t7, 2
/* 0D0E78 80170438 00380821 */  addu  $at, $at, $t8
/* 0D0E7C 8017043C E4263750 */  swc1  $f6, 0x3750($at)
/* 0D0E80 80170440 8C4E0000 */  lw    $t6, ($v0)
/* 0D0E84 80170444 3C01800E */  lui   $at, 0x800e
/* 0D0E88 80170448 000EC880 */  sll   $t9, $t6, 2
/* 0D0E8C 8017044C 00390821 */  addu  $at, $at, $t9
/* 0D0E90 80170450 E4203C90 */  swc1  $f0, 0x3c90($at)
.L80170454_ovl3:
/* 0D0E94 80170454 8C480000 */  lw    $t0, ($v0)
/* 0D0E98 80170458 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0D0E9C 8017045C 44814000 */  mtc1  $at, $f8
/* 0D0EA0 80170460 3C01800E */  lui   $at, 0x800e
/* 0D0EA4 80170464 00084880 */  sll   $t1, $t0, 2
/* 0D0EA8 80170468 00290821 */  addu  $at, $at, $t1
/* 0D0EAC 8017046C C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 0D0EB0 80170470 460A4032 */  c.eq.s $f8, $f10
/* 0D0EB4 80170474 00000000 */  nop   
/* 0D0EB8 80170478 45000012 */  bc1f  .L801704C4_ovl3
/* 0D0EBC 8017047C 00000000 */   nop   
/* 0D0EC0 80170480 14A30009 */  bne   $a1, $v1, .L801704A8_ovl3
/* 0D0EC4 80170484 3C040002 */   lui   $a0, 2
/* 0D0EC8 80170488 3C040002 */  lui   $a0, (0x000200F7 >> 16) # lui $a0, 2
/* 0D0ECC 8017048C 3C050002 */  lui   $a1, (0x00020178 >> 16) # lui $a1, 2
/* 0D0ED0 80170490 34A50178 */  ori   $a1, (0x00020178 & 0xFFFF) # ori $a1, $a1, 0x178
/* 0D0ED4 80170494 34840177 */  ori   $a0, (0x00020177 & 0xFFFF) # ori $a0, $a0, 0x177
/* 0D0ED8 80170498 0C048C3A */  jal   func_801230E8_ovl3
/* 0D0EDC 8017049C 24060001 */   li    $a2, 1
/* 0D0EE0 801704A0 10000017 */  b     .L80170500_ovl3
/* 0D0EE4 801704A4 00000000 */   nop   
.L801704A8_ovl3:
/* 0D0EE8 801704A8 3C050002 */  lui   $a1, (0x000200F8 >> 16) # lui $a1, 2
/* 0D0EEC 801704AC 34A500F8 */  ori   $a1, (0x000200F8 & 0xFFFF) # ori $a1, $a1, 0xf8
/* 0D0EF0 801704B0 348400F7 */  ori   $a0, (0x000200F7 & 0xFFFF) # ori $a0, $a0, 0xf7
/* 0D0EF4 801704B4 0C048C3A */  jal   func_801230E8_ovl3
/* 0D0EF8 801704B8 24060001 */   li    $a2, 1
/* 0D0EFC 801704BC 10000010 */  b     .L80170500_ovl3
/* 0D0F00 801704C0 00000000 */   nop   
.L801704C4_ovl3:
/* 0D0F04 801704C4 14A30009 */  bne   $a1, $v1, .L801704EC_ovl3
/* 0D0F08 801704C8 3C040002 */   lui   $a0, 2
/* 0D0F0C 801704CC 3C040002 */  lui   $a0, (0x000200FB >> 16) # lui $a0, 2
/* 0D0F10 801704D0 3C050002 */  lui   $a1, (0x0002017A >> 16) # lui $a1, 2
/* 0D0F14 801704D4 34A5017A */  ori   $a1, (0x0002017A & 0xFFFF) # ori $a1, $a1, 0x17a
/* 0D0F18 801704D8 34840179 */  ori   $a0, (0x00020179 & 0xFFFF) # ori $a0, $a0, 0x179
/* 0D0F1C 801704DC 0C048C3A */  jal   func_801230E8_ovl3
/* 0D0F20 801704E0 24060001 */   li    $a2, 1
/* 0D0F24 801704E4 10000006 */  b     .L80170500_ovl3
/* 0D0F28 801704E8 00000000 */   nop   
.L801704EC_ovl3:
/* 0D0F2C 801704EC 3C050002 */  lui   $a1, (0x000200FC >> 16) # lui $a1, 2
/* 0D0F30 801704F0 34A500FC */  ori   $a1, (0x000200FC & 0xFFFF) # ori $a1, $a1, 0xfc
/* 0D0F34 801704F4 348400FB */  ori   $a0, (0x000200FB & 0xFFFF) # ori $a0, $a0, 0xfb
/* 0D0F38 801704F8 0C048C3A */  jal   func_801230E8_ovl3
/* 0D0F3C 801704FC 24060001 */   li    $a2, 1
.L80170500_ovl3:
/* 0D0F40 80170500 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D0F44 80170504 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D0F48 80170508 44808000 */  mtc1  $zero, $f16
/* 0D0F4C 8017050C 3C01800E */  lui   $at, 0x800e
/* 0D0F50 80170510 8C4A0000 */  lw    $t2, ($v0)
/* 0D0F54 80170514 44809000 */  mtc1  $zero, $f18
/* 0D0F58 80170518 44802000 */  mtc1  $zero, $f4
/* 0D0F5C 8017051C 000A5880 */  sll   $t3, $t2, 2
/* 0D0F60 80170520 002B0821 */  addu  $at, $at, $t3
/* 0D0F64 80170524 E4303210 */  swc1  $f16, 0x3210($at)
/* 0D0F68 80170528 8C4C0000 */  lw    $t4, ($v0)
/* 0D0F6C 8017052C 3C01800E */  lui   $at, 0x800e
/* 0D0F70 80170530 000C6880 */  sll   $t5, $t4, 2
/* 0D0F74 80170534 002D0821 */  addu  $at, $at, $t5
/* 0D0F78 80170538 E4323750 */  swc1  $f18, 0x3750($at)
/* 0D0F7C 8017053C 8C4F0000 */  lw    $t7, ($v0)
/* 0D0F80 80170540 3C01800E */  lui   $at, 0x800e
/* 0D0F84 80170544 000FC080 */  sll   $t8, $t7, 2
/* 0D0F88 80170548 00380821 */  addu  $at, $at, $t8
/* 0D0F8C 8017054C 10000031 */  b     .L80170614_ovl3
/* 0D0F90 80170550 E4243C90 */   swc1  $f4, 0x3c90($at)
.L80170554_ovl3:
/* 0D0F94 80170554 0C029D9E */  jal   func_800A7678_ovl3
/* 0D0F98 80170558 24040101 */   li    $a0, 257
/* 0D0F9C 8017055C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D0FA0 80170560 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D0FA4 80170564 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0D0FA8 80170568 44810000 */  mtc1  $at, $f0
/* 0D0FAC 8017056C 8C4E0000 */  lw    $t6, ($v0)
/* 0D0FB0 80170570 3C01C0A0 */  li    $at, 0xC0A00000 # -5.000000
/* 0D0FB4 80170574 44813000 */  mtc1  $at, $f6
/* 0D0FB8 80170578 3C01800E */  lui   $at, 0x800e
/* 0D0FBC 8017057C 000EC880 */  sll   $t9, $t6, 2
/* 0D0FC0 80170580 00390821 */  addu  $at, $at, $t9
/* 0D0FC4 80170584 E4263210 */  swc1  $f6, 0x3210($at)
/* 0D0FC8 80170588 8C480000 */  lw    $t0, ($v0)
/* 0D0FCC 8017058C 44804000 */  mtc1  $zero, $f8
/* 0D0FD0 80170590 3C01800E */  lui   $at, 0x800e
/* 0D0FD4 80170594 00084880 */  sll   $t1, $t0, 2
/* 0D0FD8 80170598 00290821 */  addu  $at, $at, $t1
/* 0D0FDC 8017059C E4283750 */  swc1  $f8, 0x3750($at)
/* 0D0FE0 801705A0 8C4A0000 */  lw    $t2, ($v0)
/* 0D0FE4 801705A4 3C01800E */  lui   $at, 0x800e
/* 0D0FE8 801705A8 3C040002 */  lui   $a0, (0x000200FD >> 16) # lui $a0, 2
/* 0D0FEC 801705AC 000A5880 */  sll   $t3, $t2, 2
/* 0D0FF0 801705B0 002B0821 */  addu  $at, $at, $t3
/* 0D0FF4 801705B4 E4203C90 */  swc1  $f0, 0x3c90($at)
/* 0D0FF8 801705B8 8C4C0000 */  lw    $t4, ($v0)
/* 0D0FFC 801705BC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0D1000 801705C0 44815000 */  mtc1  $at, $f10
/* 0D1004 801705C4 3C01800E */  lui   $at, 0x800e
/* 0D1008 801705C8 000C6880 */  sll   $t5, $t4, 2
/* 0D100C 801705CC 002D0821 */  addu  $at, $at, $t5
/* 0D1010 801705D0 C4306A10 */  lwc1  $f16, 0x6a10($at)
/* 0D1014 801705D4 3C050002 */  lui   $a1, (0x000200FE >> 16) # lui $a1, 2
/* 0D1018 801705D8 24060001 */  li    $a2, 1
/* 0D101C 801705DC 46105032 */  c.eq.s $f10, $f16
/* 0D1020 801705E0 34A500FE */  ori   $a1, (0x000200FE & 0xFFFF) # ori $a1, $a1, 0xfe
/* 0D1024 801705E4 348400FD */  ori   $a0, (0x000200FD & 0xFFFF) # ori $a0, $a0, 0xfd
/* 0D1028 801705E8 45000008 */  bc1f  .L8017060C_ovl3
/* 0D102C 801705EC 00000000 */   nop   
/* 0D1030 801705F0 3C040002 */  lui   $a0, (0x000200F9 >> 16) # lui $a0, 2
/* 0D1034 801705F4 3C050002 */  lui   $a1, (0x000200FA >> 16) # lui $a1, 2
/* 0D1038 801705F8 34A500FA */  ori   $a1, (0x000200FA & 0xFFFF) # ori $a1, $a1, 0xfa
/* 0D103C 801705FC 0C048C3A */  jal   func_801230E8_ovl3
/* 0D1040 80170600 348400F9 */   ori   $a0, (0x000200F9 & 0xFFFF) # ori $a0, $a0, 0xf9
/* 0D1044 80170604 10000004 */  b     .L80170618_ovl3
/* 0D1048 80170608 8E0F0030 */   lw    $t7, 0x30($s0)
.L8017060C_ovl3:
/* 0D104C 8017060C 0C048C3A */  jal   func_801230E8_ovl3
/* 0D1050 80170610 24060001 */   li    $a2, 1
.L80170614_ovl3:
/* 0D1054 80170614 8E0F0030 */  lw    $t7, 0x30($s0)
.L80170618_ovl3:
/* 0D1058 80170618 25F80001 */  addiu $t8, $t7, 1
/* 0D105C 8017061C 0C02BE85 */  jal   func_800AFA14_ovl3
/* 0D1060 80170620 AE180030 */   sw    $t8, 0x30($s0)
/* 0D1064 80170624 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D1068 80170628 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D106C 8017062C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0D1070 80170630 03E00008 */  jr    $ra
/* 0D1074 80170634 00000000 */   nop   
