glabel func_80170584_ovl5
/* 1179F4 80170584 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1179F8 80170588 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1179FC 8017058C AFA40018 */  sw         $a0, 0x18($sp)
/* 117A00 80170590 0C05CAC4 */  jal        func_80172B10_ovl5
/* 117A04 80170594 AFA5001C */   sw        $a1, 0x1C($sp)
/* 117A08 80170598 8FAE0018 */  lw         $t6, 0x18($sp)
/* 117A0C 8017059C 8FB8001C */  lw         $t8, 0x1C($sp)
/* 117A10 801705A0 3C038019 */  lui        $v1, %hi(func_8018E3B0_ovl5 + 0xC8)
/* 117A14 801705A4 000E7880 */  sll        $t7, $t6, 2
/* 117A18 801705A8 01EE7821 */  addu       $t7, $t7, $t6
/* 117A1C 801705AC 000F78C0 */  sll        $t7, $t7, 3
/* 117A20 801705B0 01EE7821 */  addu       $t7, $t7, $t6
/* 117A24 801705B4 000F78C0 */  sll        $t7, $t7, 3
/* 117A28 801705B8 0018C880 */  sll        $t9, $t8, 2
/* 117A2C 801705BC 01F94021 */  addu       $t0, $t7, $t9
/* 117A30 801705C0 2449FFFC */  addiu      $t1, $v0, -0x4
/* 117A34 801705C4 00681821 */  addu       $v1, $v1, $t0
/* 117A38 801705C8 2D210015 */  sltiu      $at, $t1, 0x15
/* 117A3C 801705CC 1020002A */  beqz       $at, .L80170678_ovl5
/* 117A40 801705D0 8C63E478 */   lw        $v1, %lo(func_8018E3B0_ovl5 + 0xC8)($v1)
/* 117A44 801705D4 00094880 */  sll        $t1, $t1, 2
/* 117A48 801705D8 3C018019 */  lui        $at, %hi(jtbl_8018D868_ovl5)
/* 117A4C 801705DC 00290821 */  addu       $at, $at, $t1
/* 117A50 801705E0 8C29D868 */  lw         $t1, %lo(jtbl_8018D868_ovl5)($at)
/* 117A54 801705E4 01200008 */  jr         $t1
/* 117A58 801705E8 00000000 */   nop
/* 117A5C 801705EC 00035080 */  sll        $t2, $v1, 2
/* 117A60 801705F0 3C0B800E */  lui        $t3, %hi(D_800DE350)
/* 117A64 801705F4 016A5821 */  addu       $t3, $t3, $t2
/* 117A68 801705F8 8D6BE350 */  lw         $t3, %lo(D_800DE350)($t3)
/* 117A6C 801705FC 44802000 */  mtc1       $zero, $f4
/* 117A70 80170600 3C0142B0 */  lui        $at, (0x42B00000 >> 16)
/* 117A74 80170604 C5600040 */  lwc1       $f0, 0x40($t3)
/* 117A78 80170608 4600203E */  c.le.s     $f4, $f0
.L8017060C_ovl3:
/* 117A7C 8017060C 00000000 */  nop
/* 117A80 80170610 45020007 */  bc1fl      .L80170630_ovl5
.L80170614_ovl3:
/* 117A84 80170614 3C01431A */   lui       $at, (0x431A0000 >> 16)
.L80170618_ovl3:
/* 117A88 80170618 44813000 */  mtc1       $at, $f6
/* 117A8C 8017061C 00000000 */  nop
/* 117A90 80170620 4606003E */  c.le.s     $f0, $f6
/* 117A94 80170624 00000000 */  nop
/* 117A98 80170628 4501000D */  bc1t       .L80170660_ovl5
/* 117A9C 8017062C 3C01431A */   lui       $at, (0x431A0000 >> 16)
.L80170630_ovl5:
/* 117AA0 80170630 44814000 */  mtc1       $at, $f8
/* 117AA4 80170634 3C01432C */  lui        $at, (0x432C0000 >> 16)
glabel func_80170638_ovl3
/* 117AA8 80170638 4600403E */  c.le.s     $f8, $f0
/* 117AAC 8017063C 00000000 */  nop
/* 117AB0 80170640 45000009 */  bc1f       .L80170668_ovl5
/* 117AB4 80170644 00000000 */   nop
/* 117AB8 80170648 44815000 */  mtc1       $at, $f10
/* 117ABC 8017064C 00000000 */  nop
/* 117AC0 80170650 460A003E */  c.le.s     $f0, $f10
/* 117AC4 80170654 00000000 */  nop
/* 117AC8 80170658 45000003 */  bc1f       .L80170668_ovl5
/* 117ACC 8017065C 00000000 */   nop
.L80170660_ovl5:
/* 117AD0 80170660 10000006 */  b          .L8017067C_ovl5
/* 117AD4 80170664 24020001 */   addiu     $v0, $zero, 0x1
.L80170668_ovl5:
/* 117AD8 80170668 10000004 */  b          .L8017067C_ovl5
/* 117ADC 8017066C 00001025 */   or        $v0, $zero, $zero
/* 117AE0 80170670 10000002 */  b          .L8017067C_ovl5
.L80170674_ovl3:
/* 117AE4 80170674 00001025 */   or        $v0, $zero, $zero
.L80170678_ovl5:
/* 117AE8 80170678 24020001 */  addiu      $v0, $zero, 0x1
.L8017067C_ovl5:
/* 117AEC 8017067C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117AF0 80170680 27BD0018 */  addiu      $sp, $sp, 0x18
/* 117AF4 80170684 03E00008 */  jr         $ra
/* 117AF8 80170688 00000000 */   nop
