glabel func_8016FD88_ovl3
/* 0D07C8 8016FD88 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0D07CC 8016FD8C 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0D07D0 8016FD90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0D07D4 8016FD94 AC400030 */  sw    $zero, 0x30($v0)
/* 0D07D8 8016FD98 A040000A */  sb    $zero, 0xa($v0)
/* 0D07DC 8016FD9C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D07E0 8016FDA0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D07E4 8016FDA4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D07E8 8016FDA8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0D07EC 8016FDAC AFA40020 */  sw    $a0, 0x20($sp)
/* 0D07F0 8016FDB0 8DF80000 */  lw    $t8, ($t7)
/* 0D07F4 8016FDB4 3C01800F */ lui $at, %hi(D_800E9720)
/* 0D07F8 8016FDB8 240E0005 */  li    $t6, 5
/* 0D07FC 8016FDBC 0018C880 */  sll   $t9, $t8, 2
/* 0D0800 8016FDC0 00390821 */  addu  $at, $at, $t9
/* 0D0804 8016FDC4 0C0473D6 */  jal   func_8011CF58
/* 0D0808 8016FDC8 AC2E9720 */ sw $t6, %lo(D_800E9720)($at)
/* 0D080C 8016FDCC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0D0810 8016FDD0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0D0814 8016FDD4 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0D0818 8016FDD8 24080008 */  li    $t0, 8
/* 0D081C 8016FDDC 8D2A0000 */  lw    $t2, ($t1)
/* 0D0820 8016FDE0 000A5880 */  sll   $t3, $t2, 2
/* 0D0824 8016FDE4 002B0821 */  addu  $at, $at, $t3
/* 0D0828 8016FDE8 0C04828A */  jal   func_80120A28
/* 0D082C 8016FDEC AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 0D0830 8016FDF0 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0D0834 8016FDF4 3C0C8019 */  lui   $t4, %hi(D_80190448) # $t4, 0x8019
/* 0D0838 8016FDF8 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0D083C 8016FDFC 258C0448 */  addiu $t4, %lo(D_80190448) # addiu $t4, $t4, 0x448
/* 0D0840 8016FE00 ACEC015C */  sw    $t4, 0x15c($a3)
/* 0D0844 8016FE04 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D0848 8016FE08 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D084C 8016FE0C 8CE300A0 */  lw    $v1, 0xa0($a3)
/* 0D0850 8016FE10 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0D0854 8016FE14 8C4D0000 */  lw    $t5, ($v0)
/* 0D0858 8016FE18 3C100002 */  lui   $s0, (0x00020105 >> 16) # lui $s0, 2
/* 0D085C 8016FE1C 36100105 */  ori   $s0, (0x00020105 & 0xFFFF) # ori $s0, $s0, 0x105
/* 0D0860 8016FE20 000D7880 */  sll   $t7, $t5, 2
/* 0D0864 8016FE24 002F0821 */  addu  $at, $at, $t7
/* 0D0868 8016FE28 AC2398E0 */ sw $v1, %lo(D_800E98E0)($at)
/* 0D086C 8016FE2C 8C580000 */  lw    $t8, ($v0)
/* 0D0870 8016FE30 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 0D0874 8016FE34 02002025 */  move  $a0, $s0
/* 0D0878 8016FE38 00187080 */  sll   $t6, $t8, 2
/* 0D087C 8016FE3C 002E0821 */  addu  $at, $at, $t6
/* 0D0880 8016FE40 AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 0D0884 8016FE44 24010012 */  li    $at, 18
/* 0D0888 8016FE48 1061002C */  beq   $v1, $at, .L8016FEFC_ovl3
/* 0D088C 8016FE4C 3C050002 */   lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0D0890 8016FE50 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0D0894 8016FE54 0C02A9E3 */  jal   func_800AA78C
/* 0D0898 8016FE58 3C064040 */   lui   $a2, 0x4040
/* 0D089C 8016FE5C 3C050002 */  lui   $a1, (0x00020106 >> 16) # lui $a1, 2
/* 0D08A0 8016FE60 34A50106 */  ori   $a1, (0x00020106 & 0xFFFF) # ori $a1, $a1, 0x106
/* 0D08A4 8016FE64 02002025 */  move  $a0, $s0
/* 0D08A8 8016FE68 0C048C3A */  jal   func_801230E8
/* 0D08AC 8016FE6C 00003025 */   move  $a2, $zero
/* 0D08B0 8016FE70 3C10800D */  lui   $s0, %hi(gKirbyController) # $s0, 0x800d
/* 0D08B4 8016FE74 24190001 */  li    $t9, 1
/* 0D08B8 8016FE78 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D08BC 8016FE7C 26106FE8 */  addiu $s0, %lo(gKirbyController) # addiu $s0, $s0, 0x6fe8
/* 0D08C0 8016FE80 AC396F10 */  sw    $t9, %lo(D_800D6F10)($at)
/* 0D08C4 8016FE84 96090000 */  lhu   $t1, ($s0)
/* 0D08C8 8016FE88 312A0400 */  andi  $t2, $t1, 0x400
/* 0D08CC 8016FE8C 11400007 */  beqz  $t2, .L8016FEAC_ovl3
/* 0D08D0 8016FE90 00000000 */   nop   
.L8016FE94_ovl3:
/* 0D08D4 8016FE94 0C002DAF */  jal   finish_current_thread
/* 0D08D8 8016FE98 24040001 */   li    $a0, 1
/* 0D08DC 8016FE9C 96080000 */  lhu   $t0, ($s0)
/* 0D08E0 8016FEA0 310B0400 */  andi  $t3, $t0, 0x400
/* 0D08E4 8016FEA4 1560FFFB */  bnez  $t3, .L8016FE94_ovl3
/* 0D08E8 8016FEA8 00000000 */   nop   
.L8016FEAC_ovl3:
/* 0D08EC 8016FEAC 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0D08F0 8016FEB0 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0D08F4 8016FEB4 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D08F8 8016FEB8 AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D08FC 8016FEBC 8D8D0000 */  lw    $t5, ($t4)
/* 0D0900 8016FEC0 3C18800F */  lui   $t8, %hi(D_800E9AA0) # $t8, 0x800f
/* 0D0904 8016FEC4 27189AA0 */  addiu $t8, %lo(D_800E9AA0) # addiu $t8, $t8, -0x6560
/* 0D0908 8016FEC8 000D7880 */  sll   $t7, $t5, 2
/* 0D090C 8016FECC 01F81821 */  addu  $v1, $t7, $t8
/* 0D0910 8016FED0 8C6E0000 */  lw    $t6, ($v1)
/* 0D0914 8016FED4 3C040002 */  lui   $a0, (0x00020107 >> 16) # lui $a0, 2
/* 0D0918 8016FED8 3C050002 */  lui   $a1, (0x00020108 >> 16) # lui $a1, 2
/* 0D091C 8016FEDC 25D90001 */  addiu $t9, $t6, 1
/* 0D0920 8016FEE0 AC790000 */  sw    $t9, ($v1)
/* 0D0924 8016FEE4 34A50108 */  ori   $a1, (0x00020108 & 0xFFFF) # ori $a1, $a1, 0x108
/* 0D0928 8016FEE8 34840107 */  ori   $a0, (0x00020107 & 0xFFFF) # ori $a0, $a0, 0x107
/* 0D092C 8016FEEC 0C048C3A */  jal   func_801230E8
/* 0D0930 8016FEF0 24060001 */   li    $a2, 1
/* 0D0934 8016FEF4 10000035 */  b     .L8016FFCC_ovl3
/* 0D0938 8016FEF8 00000000 */   nop   
.L8016FEFC_ovl3:
/* 0D093C 8016FEFC 0C05A4F1 */  jal   func_801693C4_ovl3
/* 0D0940 8016FF00 24040009 */   li    $a0, 9
/* 0D0944 8016FF04 3C040002 */  lui   $a0, (0x00020109 >> 16) # lui $a0, 2
/* 0D0948 8016FF08 3C050002 */  lui   $a1, (0x0002010A >> 16) # lui $a1, 2
/* 0D094C 8016FF0C 34A5010A */  ori   $a1, (0x0002010A & 0xFFFF) # ori $a1, $a1, 0x10a
/* 0D0950 8016FF10 34840109 */  ori   $a0, (0x00020109 & 0xFFFF) # ori $a0, $a0, 0x109
/* 0D0954 8016FF14 0C048C3A */  jal   func_801230E8
/* 0D0958 8016FF18 24060001 */   li    $a2, 1
/* 0D095C 8016FF1C 3C040002 */  lui   $a0, (0x0002010B >> 16) # lui $a0, 2
/* 0D0960 8016FF20 3C050002 */  lui   $a1, (0x0002010C >> 16) # lui $a1, 2
/* 0D0964 8016FF24 34A5010C */  ori   $a1, (0x0002010C & 0xFFFF) # ori $a1, $a1, 0x10c
/* 0D0968 8016FF28 3484010B */  ori   $a0, (0x0002010B & 0xFFFF) # ori $a0, $a0, 0x10b
/* 0D096C 8016FF2C 0C048C3A */  jal   func_801230E8
/* 0D0970 8016FF30 00003025 */   move  $a2, $zero
/* 0D0974 8016FF34 3C10800D */  lui   $s0, %hi(gKirbyController) # $s0, 0x800d
/* 0D0978 8016FF38 24090001 */  li    $t1, 1
/* 0D097C 8016FF3C 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D0980 8016FF40 26106FE8 */  addiu $s0, %lo(gKirbyController) # addiu $s0, $s0, 0x6fe8
/* 0D0984 8016FF44 AC296F10 */  sw    $t1, %lo(D_800D6F10)($at)
/* 0D0988 8016FF48 960A0000 */  lhu   $t2, ($s0)
/* 0D098C 8016FF4C 31480400 */  andi  $t0, $t2, 0x400
/* 0D0990 8016FF50 11000007 */  beqz  $t0, .L8016FF70_ovl3
/* 0D0994 8016FF54 00000000 */   nop   
.L8016FF58_ovl3:
/* 0D0998 8016FF58 0C002DAF */  jal   finish_current_thread
/* 0D099C 8016FF5C 24040001 */   li    $a0, 1
/* 0D09A0 8016FF60 960B0000 */  lhu   $t3, ($s0)
/* 0D09A4 8016FF64 316C0400 */  andi  $t4, $t3, 0x400
/* 0D09A8 8016FF68 1580FFFB */  bnez  $t4, .L8016FF58_ovl3
/* 0D09AC 8016FF6C 00000000 */   nop   
.L8016FF70_ovl3:
/* 0D09B0 8016FF70 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D09B4 8016FF74 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D09B8 8016FF78 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D09BC 8016FF7C AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D09C0 8016FF80 8C4D0000 */  lw    $t5, ($v0)
/* 0D09C4 8016FF84 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0D09C8 8016FF88 3C19800F */  lui   $t9, %hi(D_800E9AA0) # $t9, 0x800f
/* 0D09CC 8016FF8C 000D7880 */  sll   $t7, $t5, 2
/* 0D09D0 8016FF90 002F0821 */  addu  $at, $at, $t7
/* 0D09D4 8016FF94 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 0D09D8 8016FF98 8C580000 */  lw    $t8, ($v0)
/* 0D09DC 8016FF9C 27399AA0 */  addiu $t9, %lo(D_800E9AA0) # addiu $t9, $t9, -0x6560
/* 0D09E0 8016FFA0 3C040002 */  lui   $a0, (0x0002010D >> 16) # lui $a0, 2
/* 0D09E4 8016FFA4 00187080 */  sll   $t6, $t8, 2
/* 0D09E8 8016FFA8 01D91821 */  addu  $v1, $t6, $t9
/* 0D09EC 8016FFAC 8C690000 */  lw    $t1, ($v1)
/* 0D09F0 8016FFB0 3C050002 */  lui   $a1, (0x0002010E >> 16) # lui $a1, 2
/* 0D09F4 8016FFB4 34A5010E */  ori   $a1, (0x0002010E & 0xFFFF) # ori $a1, $a1, 0x10e
/* 0D09F8 8016FFB8 252A0001 */  addiu $t2, $t1, 1
/* 0D09FC 8016FFBC AC6A0000 */  sw    $t2, ($v1)
/* 0D0A00 8016FFC0 3484010D */  ori   $a0, (0x0002010D & 0xFFFF) # ori $a0, $a0, 0x10d
/* 0D0A04 8016FFC4 0C048C3A */  jal   func_801230E8
/* 0D0A08 8016FFC8 24060001 */   li    $a2, 1
.L8016FFCC_ovl3:
/* 0D0A0C 8016FFCC 3C088013 */  lui   $t0, %hi(D_8012E7F0) # $t0, 0x8013
/* 0D0A10 8016FFD0 8D08E7F0 */  lw    $t0, %lo(D_8012E7F0)($t0)
/* 0D0A14 8016FFD4 3C018013 */  lui   $at, %hi(D_8012E7F0) # $at, 0x8013
/* 0D0A18 8016FFD8 250B0001 */  addiu $t3, $t0, 1
/* 0D0A1C 8016FFDC 0C02BE85 */  jal   func_800AFA14
/* 0D0A20 8016FFE0 AC2BE7F0 */   sw    $t3, %lo(D_8012E7F0)($at)
/* 0D0A24 8016FFE4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D0A28 8016FFE8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D0A2C 8016FFEC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0D0A30 8016FFF0 03E00008 */  jr    $ra
/* 0D0A34 8016FFF4 00000000 */   nop   
.type func_8016FD88_ovl3, @function
.size func_8016FD88_ovl3, . - func_8016FD88_ovl3
