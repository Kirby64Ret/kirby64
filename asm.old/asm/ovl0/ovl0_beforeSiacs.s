.set noat
.set noreorder
.set gp=64
.include "macros.inc"

.section .text, "ax"

/* motor:? */
glabel func_8002F040
/* 02FC40 8002F040 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 02FC44 8002F044 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02FC48 8002F048 AFB00018 */  sw    $s0, 0x18($sp)
/* 02FC4C 8002F04C 8C8E0008 */  lw    $t6, 8($a0)
/* 02FC50 8002F050 8C990000 */  lw    $t9, ($a0)
/* 02FC54 8002F054 3C18800A */  lui   $t8, %hi(D_80098990) # $t8, 0x800a
/* 02FC58 8002F058 27188990 */  addiu $t8, %lo(D_80098990) # addiu $t8, $t8, -0x7670
/* 02FC5C 8002F05C 000E7980 */  sll   $t7, $t6, 6
/* 02FC60 8002F060 33290008 */  andi  $t1, $t9, 8
/* 02FC64 8002F064 00808025 */  move  $s0, $a0
/* 02FC68 8002F068 00A03825 */  move  $a3, $a1
/* 02FC6C 8002F06C 15200003 */  bnez  $t1, .L8002F07C_ovl0
/* 02FC70 8002F070 01F84021 */   addu  $t0, $t7, $t8
/* 02FC74 8002F074 10000047 */  b     .L8002F194_ovl0
/* 02FC78 8002F078 24020005 */   li    $v0, 5
.L8002F07C_ovl0:
/* 02FC7C 8002F07C AFA70034 */  sw    $a3, 0x34($sp)
/* 02FC80 8002F080 0C00BD18 */  jal   __osSiGetAccess
/* 02FC84 8002F084 AFA80024 */   sw    $t0, 0x24($sp)
/* 02FC88 8002F088 8E0B0008 */  lw    $t3, 8($s0)
/* 02FC8C 8002F08C 3C06800A */  lui   $a2, %hi(D_80098990) # $a2, 0x800a
/* 02FC90 8002F090 24C68990 */  addiu $a2, %lo(D_80098990) # addiu $a2, $a2, -0x7670
/* 02FC94 8002F094 000B6180 */  sll   $t4, $t3, 6
/* 02FC98 8002F098 00CC6821 */  addu  $t5, $a2, $t4
/* 02FC9C 8002F09C 240A0001 */  li    $t2, 1
/* 02FCA0 8002F0A0 ADAA003C */  sw    $t2, 0x3c($t5)
/* 02FCA4 8002F0A4 8FA80024 */  lw    $t0, 0x24($sp)
/* 02FCA8 8002F0A8 8E0E0008 */  lw    $t6, 8($s0)
/* 02FCAC 8002F0AC 8FA70034 */  lw    $a3, 0x34($sp)
/* 02FCB0 8002F0B0 00001825 */  move  $v1, $zero
/* 02FCB4 8002F0B4 010E4021 */  addu  $t0, $t0, $t6
/* 02FCB8 8002F0B8 01001025 */  move  $v0, $t0
/* 02FCBC 8002F0BC 24040020 */  li    $a0, 32
.L8002F0C0_ovl0:
/* 02FCC0 8002F0C0 24630004 */  addiu $v1, $v1, 4
/* 02FCC4 8002F0C4 A0470007 */  sb    $a3, 7($v0)
/* 02FCC8 8002F0C8 A0470008 */  sb    $a3, 8($v0)
/* 02FCCC 8002F0CC A0470009 */  sb    $a3, 9($v0)
/* 02FCD0 8002F0D0 24420004 */  addiu $v0, $v0, 4
/* 02FCD4 8002F0D4 1464FFFA */  bne   $v1, $a0, .L8002F0C0_ovl0
/* 02FCD8 8002F0D8 A0470002 */   sb    $a3, 2($v0)
/* 02FCDC 8002F0DC 240F00FE */  li    $t7, 254
/* 02FCE0 8002F0E0 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 02FCE4 8002F0E4 A02F8AF0 */  sb    $t7, %lo(__osContLastCmd)($at)
/* 02FCE8 8002F0E8 8E180008 */  lw    $t8, 8($s0)
/* 02FCEC 8002F0EC AFA80024 */  sw    $t0, 0x24($sp)
/* 02FCF0 8002F0F0 AFA70034 */  sw    $a3, 0x34($sp)
/* 02FCF4 8002F0F4 0018C980 */  sll   $t9, $t8, 6
/* 02FCF8 8002F0F8 00D92821 */  addu  $a1, $a2, $t9
/* 02FCFC 8002F0FC 0C00C138 */  jal   __osSiRawStartDma
/* 02FD00 8002F100 24040001 */   li    $a0, 1
/* 02FD04 8002F104 8E040004 */  lw    $a0, 4($s0)
/* 02FD08 8002F108 00002825 */  move  $a1, $zero
/* 02FD0C 8002F10C 0C00B540 */  jal   osRecvMesg
/* 02FD10 8002F110 24060001 */   li    $a2, 1
/* 02FD14 8002F114 8E090008 */  lw    $t1, 8($s0)
/* 02FD18 8002F118 3C0C800A */  lui   $t4, %hi(D_80098990) # $t4, 0x800a
/* 02FD1C 8002F11C 258C8990 */  addiu $t4, %lo(D_80098990) # addiu $t4, $t4, -0x7670
/* 02FD20 8002F120 00095980 */  sll   $t3, $t1, 6
/* 02FD24 8002F124 016C2821 */  addu  $a1, $t3, $t4
/* 02FD28 8002F128 0C00C138 */  jal   __osSiRawStartDma
/* 02FD2C 8002F12C 00002025 */   move  $a0, $zero
/* 02FD30 8002F130 8E040004 */  lw    $a0, 4($s0)
/* 02FD34 8002F134 00002825 */  move  $a1, $zero
/* 02FD38 8002F138 0C00B540 */  jal   osRecvMesg
/* 02FD3C 8002F13C 24060001 */   li    $a2, 1
/* 02FD40 8002F140 8FA80024 */  lw    $t0, 0x24($sp)
/* 02FD44 8002F144 8FA70034 */  lw    $a3, 0x34($sp)
/* 02FD48 8002F148 91100002 */  lbu   $s0, 2($t0)
/* 02FD4C 8002F14C 320A00C0 */  andi  $t2, $s0, 0xc0
/* 02FD50 8002F150 1540000D */  bnez  $t2, .L8002F188_ovl0
/* 02FD54 8002F154 01408025 */   move  $s0, $t2
/* 02FD58 8002F158 54E00007 */  bnezl $a3, .L8002F178_ovl0
/* 02FD5C 8002F15C 910E0026 */   lbu   $t6, 0x26($t0)
/* 02FD60 8002F160 910D0026 */  lbu   $t5, 0x26($t0)
/* 02FD64 8002F164 11A00008 */  beqz  $t5, .L8002F188_ovl0
/* 02FD68 8002F168 00000000 */   nop   
/* 02FD6C 8002F16C 10000006 */  b     .L8002F188_ovl0
/* 02FD70 8002F170 24100004 */   li    $s0, 4
/* 02FD74 8002F174 910E0026 */  lbu   $t6, 0x26($t0)
.L8002F178_ovl0:
/* 02FD78 8002F178 240100EB */  li    $at, 235
/* 02FD7C 8002F17C 11C10002 */  beq   $t6, $at, .L8002F188_ovl0
/* 02FD80 8002F180 00000000 */   nop   
/* 02FD84 8002F184 24100004 */  li    $s0, 4
.L8002F188_ovl0:
/* 02FD88 8002F188 0C00BD29 */  jal   __osSiRelAccess
/* 02FD8C 8002F18C 00000000 */   nop   
/* 02FD90 8002F190 02001025 */  move  $v0, $s0
.L8002F194_ovl0:
/* 02FD94 8002F194 8FBF001C */  lw    $ra, 0x1c($sp)
/* 02FD98 8002F198 8FB00018 */  lw    $s0, 0x18($sp)
/* 02FD9C 8002F19C 27BD0030 */  addiu $sp, $sp, 0x30
/* 02FDA0 8002F1A0 03E00008 */  jr    $ra
/* 02FDA4 8002F1A4 00000000 */   nop   
.type func_8002F040, @function
.size func_8002F040, . - func_8002F040

/* motor:? */
glabel func_8002F1A8
/* 02FDA8 8002F1A8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 02FDAC 8002F1AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 02FDB0 8002F1B0 00803025 */  move  $a2, $a0
/* 02FDB4 8002F1B4 240E00FF */  li    $t6, 255
/* 02FDB8 8002F1B8 240F0023 */  li    $t7, 35
/* 02FDBC 8002F1BC 24180001 */  li    $t8, 1
/* 02FDC0 8002F1C0 24190003 */  li    $t9, 3
/* 02FDC4 8002F1C4 240800C0 */  li    $t0, 192
/* 02FDC8 8002F1C8 A3AE0024 */  sb    $t6, 0x24($sp)
/* 02FDCC 8002F1CC A3AF0025 */  sb    $t7, 0x25($sp)
/* 02FDD0 8002F1D0 A3B80026 */  sb    $t8, 0x26($sp)
/* 02FDD4 8002F1D4 A3B90027 */  sb    $t9, 0x27($sp)
/* 02FDD8 8002F1D8 A3A80028 */  sb    $t0, 0x28($sp)
/* 02FDDC 8002F1DC AFA60050 */  sw    $a2, 0x50($sp)
/* 02FDE0 8002F1E0 24040600 */  li    $a0, 1536
/* 02FDE4 8002F1E4 0C00DD54 */  jal   func_80037550
/* 02FDE8 8002F1E8 AFA5004C */   sw    $a1, 0x4c($sp)
/* 02FDEC 8002F1EC 8FA60050 */  lw    $a2, 0x50($sp)
/* 02FDF0 8002F1F0 3449C000 */  ori   $t1, $v0, 0xc000
/* 02FDF4 8002F1F4 A3A90029 */  sb    $t1, 0x29($sp)
/* 02FDF8 8002F1F8 10C00012 */  beqz  $a2, .L8002F244_ovl0
/* 02FDFC 8002F1FC 8FA3004C */   lw    $v1, 0x4c($sp)
/* 02FE00 8002F200 18C00010 */  blez  $a2, .L8002F244_ovl0
/* 02FE04 8002F204 00001025 */   move  $v0, $zero
/* 02FE08 8002F208 30C50003 */  andi  $a1, $a2, 3
/* 02FE0C 8002F20C 10A00006 */  beqz  $a1, .L8002F228_ovl0
/* 02FE10 8002F210 00A02025 */   move  $a0, $a1
.L8002F214_ovl0:
/* 02FE14 8002F214 24420001 */  addiu $v0, $v0, 1
/* 02FE18 8002F218 A0600000 */  sb    $zero, ($v1)
/* 02FE1C 8002F21C 1482FFFD */  bne   $a0, $v0, .L8002F214_ovl0
/* 02FE20 8002F220 24630001 */   addiu $v1, $v1, 1
/* 02FE24 8002F224 10460007 */  beq   $v0, $a2, .L8002F244_ovl0
.L8002F228_ovl0:
/* 02FE28 8002F228 24420004 */   addiu $v0, $v0, 4
/* 02FE2C 8002F22C A0600001 */  sb    $zero, 1($v1)
/* 02FE30 8002F230 A0600002 */  sb    $zero, 2($v1)
/* 02FE34 8002F234 A0600003 */  sb    $zero, 3($v1)
/* 02FE38 8002F238 24630004 */  addiu $v1, $v1, 4
/* 02FE3C 8002F23C 1446FFFA */  bne   $v0, $a2, .L8002F228_ovl0
/* 02FE40 8002F240 A060FFFC */   sb    $zero, -4($v1)
.L8002F244_ovl0:
/* 02FE44 8002F244 27AA0024 */  addiu $t2, $sp, 0x24
/* 02FE48 8002F248 254C0024 */  addiu $t4, $t2, 0x24
/* 02FE4C 8002F24C 00606825 */  move  $t5, $v1
.L8002F250_ovl0:
/* 02FE50 8002F250 8D410000 */  lw    $at, ($t2)
/* 02FE54 8002F254 254A000C */  addiu $t2, $t2, 0xc
/* 02FE58 8002F258 25AD000C */  addiu $t5, $t5, 0xc
/* 02FE5C 8002F25C A9A1FFF4 */  swl   $at, -0xc($t5)
/* 02FE60 8002F260 B9A1FFF7 */  swr   $at, -9($t5)
/* 02FE64 8002F264 8D41FFF8 */  lw    $at, -8($t2)
/* 02FE68 8002F268 A9A1FFF8 */  swl   $at, -8($t5)
/* 02FE6C 8002F26C B9A1FFFB */  swr   $at, -5($t5)
/* 02FE70 8002F270 8D41FFFC */  lw    $at, -4($t2)
/* 02FE74 8002F274 A9A1FFFC */  swl   $at, -4($t5)
/* 02FE78 8002F278 154CFFF5 */  bne   $t2, $t4, .L8002F250_ovl0
/* 02FE7C 8002F27C B9A1FFFF */   swr   $at, -1($t5)
/* 02FE80 8002F280 91410000 */  lbu   $at, ($t2)
/* 02FE84 8002F284 240E00FE */  li    $t6, 254
/* 02FE88 8002F288 24630027 */  addiu $v1, $v1, 0x27
/* 02FE8C 8002F28C A1A10000 */  sb    $at, ($t5)
/* 02FE90 8002F290 914C0001 */  lbu   $t4, 1($t2)
/* 02FE94 8002F294 A1AC0001 */  sb    $t4, 1($t5)
/* 02FE98 8002F298 91410002 */  lbu   $at, 2($t2)
/* 02FE9C 8002F29C A1A10002 */  sb    $at, 2($t5)
/* 02FEA0 8002F2A0 A06E0000 */  sb    $t6, ($v1)
/* 02FEA4 8002F2A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02FEA8 8002F2A8 27BD0050 */  addiu $sp, $sp, 0x50
/* 02FEAC 8002F2AC 03E00008 */  jr    $ra
/* 02FEB0 8002F2B0 00000000 */   nop   
.type func_8002F1A8, @function
.size func_8002F1A8, . - func_8002F1A8

/* motor:? */
glabel func_8002F2B4
/* 02FEB4 8002F2B4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 02FEB8 8002F2B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02FEBC 8002F2BC AFB00018 */  sw    $s0, 0x18($sp)
/* 02FEC0 8002F2C0 AFA40048 */  sw    $a0, 0x48($sp)
/* 02FEC4 8002F2C4 AFA60050 */  sw    $a2, 0x50($sp)
/* 02FEC8 8002F2C8 ACA40004 */  sw    $a0, 4($a1)
/* 02FECC 8002F2CC 8FAF0050 */  lw    $t7, 0x50($sp)
/* 02FED0 8002F2D0 241800FF */  li    $t8, 255
/* 02FED4 8002F2D4 00A08025 */  move  $s0, $a1
/* 02FED8 8002F2D8 A0B80065 */  sb    $t8, 0x65($a1)
/* 02FEDC 8002F2DC ACA00000 */  sw    $zero, ($a1)
/* 02FEE0 8002F2E0 00A02025 */  move  $a0, $a1
/* 02FEE4 8002F2E4 ACAF0008 */  sw    $t7, 8($a1)
/* 02FEE8 8002F2E8 0C00D728 */  jal   __osPfsSelectBank
/* 02FEEC 8002F2EC 240500FE */   li    $a1, 254
/* 02FEF0 8002F2F0 24010002 */  li    $at, 2
/* 02FEF4 8002F2F4 14410005 */  bne   $v0, $at, .L8002F30C_ovl0
/* 02FEF8 8002F2F8 00401825 */   move  $v1, $v0
/* 02FEFC 8002F2FC 02002025 */  move  $a0, $s0
/* 02FF00 8002F300 0C00D728 */  jal   __osPfsSelectBank
/* 02FF04 8002F304 24050080 */   li    $a1, 128
/* 02FF08 8002F308 00401825 */  move  $v1, $v0
.L8002F30C_ovl0:
/* 02FF0C 8002F30C 10400003 */  beqz  $v0, .L8002F31C_ovl0
/* 02FF10 8002F310 8FA40048 */   lw    $a0, 0x48($sp)
/* 02FF14 8002F314 10000039 */  b     .L8002F3FC_ovl0
/* 02FF18 8002F318 00601025 */   move  $v0, $v1
.L8002F31C_ovl0:
/* 02FF1C 8002F31C 8FA50050 */  lw    $a1, 0x50($sp)
/* 02FF20 8002F320 24060400 */  li    $a2, 1024
/* 02FF24 8002F324 0C00DCC8 */  jal   __osContRamRead
/* 02FF28 8002F328 27A70024 */   addiu $a3, $sp, 0x24
/* 02FF2C 8002F32C 24010002 */  li    $at, 2
/* 02FF30 8002F330 14410002 */  bne   $v0, $at, .L8002F33C_ovl0
/* 02FF34 8002F334 00401825 */   move  $v1, $v0
/* 02FF38 8002F338 24030004 */  li    $v1, 4
.L8002F33C_ovl0:
/* 02FF3C 8002F33C 10600003 */  beqz  $v1, .L8002F34C_ovl0
/* 02FF40 8002F340 93B90043 */   lbu   $t9, 0x43($sp)
/* 02FF44 8002F344 1000002D */  b     .L8002F3FC_ovl0
/* 02FF48 8002F348 00601025 */   move  $v0, $v1
.L8002F34C_ovl0:
/* 02FF4C 8002F34C 240100FE */  li    $at, 254
/* 02FF50 8002F350 17210003 */  bne   $t9, $at, .L8002F360_ovl0
/* 02FF54 8002F354 02002025 */   move  $a0, $s0
/* 02FF58 8002F358 10000028 */  b     .L8002F3FC_ovl0
/* 02FF5C 8002F35C 2402000B */   li    $v0, 11
.L8002F360_ovl0:
/* 02FF60 8002F360 0C00D728 */  jal   __osPfsSelectBank
/* 02FF64 8002F364 24050080 */   li    $a1, 128
/* 02FF68 8002F368 24010002 */  li    $at, 2
/* 02FF6C 8002F36C 14410002 */  bne   $v0, $at, .L8002F378_ovl0
/* 02FF70 8002F370 00401825 */   move  $v1, $v0
/* 02FF74 8002F374 24030004 */  li    $v1, 4
.L8002F378_ovl0:
/* 02FF78 8002F378 10600003 */  beqz  $v1, .L8002F388_ovl0
/* 02FF7C 8002F37C 8FA40048 */   lw    $a0, 0x48($sp)
/* 02FF80 8002F380 1000001E */  b     .L8002F3FC_ovl0
/* 02FF84 8002F384 00601025 */   move  $v0, $v1
.L8002F388_ovl0:
/* 02FF88 8002F388 8FA50050 */  lw    $a1, 0x50($sp)
/* 02FF8C 8002F38C 24060400 */  li    $a2, 1024
/* 02FF90 8002F390 0C00DCC8 */  jal   __osContRamRead
/* 02FF94 8002F394 27A70024 */   addiu $a3, $sp, 0x24
/* 02FF98 8002F398 24010002 */  li    $at, 2
/* 02FF9C 8002F39C 14410002 */  bne   $v0, $at, .L8002F3A8_ovl0
/* 02FFA0 8002F3A0 00401825 */   move  $v1, $v0
/* 02FFA4 8002F3A4 24030004 */  li    $v1, 4
.L8002F3A8_ovl0:
/* 02FFA8 8002F3A8 10600003 */  beqz  $v1, .L8002F3B8_ovl0
/* 02FFAC 8002F3AC 93A80043 */   lbu   $t0, 0x43($sp)
/* 02FFB0 8002F3B0 10000012 */  b     .L8002F3FC_ovl0
/* 02FFB4 8002F3B4 00601025 */   move  $v0, $v1
.L8002F3B8_ovl0:
/* 02FFB8 8002F3B8 24010080 */  li    $at, 128
/* 02FFBC 8002F3BC 51010004 */  beql  $t0, $at, .L8002F3D0_ovl0
/* 02FFC0 8002F3C0 8E090000 */   lw    $t1, ($s0)
/* 02FFC4 8002F3C4 1000000D */  b     .L8002F3FC_ovl0
/* 02FFC8 8002F3C8 2402000B */   li    $v0, 11
/* 02FFCC 8002F3CC 8E090000 */  lw    $t1, ($s0)
.L8002F3D0_ovl0:
/* 02FFD0 8002F3D0 8FA40050 */  lw    $a0, 0x50($sp)
/* 02FFD4 8002F3D4 3C0D800A */  lui   $t5, %hi(D_80098990) # $t5, 0x800a
/* 02FFD8 8002F3D8 312A0008 */  andi  $t2, $t1, 8
/* 02FFDC 8002F3DC 15400004 */  bnez  $t2, .L8002F3F0_ovl0
/* 02FFE0 8002F3E0 00046180 */   sll   $t4, $a0, 6
/* 02FFE4 8002F3E4 25AD8990 */  addiu $t5, %lo(D_80098990) # addiu $t5, $t5, -0x7670
/* 02FFE8 8002F3E8 0C00BC6A */  jal   func_8002F1A8
/* 02FFEC 8002F3EC 018D2821 */   addu  $a1, $t4, $t5
.L8002F3F0_ovl0:
/* 02FFF0 8002F3F0 240E0008 */  li    $t6, 8
/* 02FFF4 8002F3F4 AE0E0000 */  sw    $t6, ($s0)
/* 02FFF8 8002F3F8 00001025 */  move  $v0, $zero
.L8002F3FC_ovl0:
/* 02FFFC 8002F3FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 030000 8002F400 8FB00018 */  lw    $s0, 0x18($sp)
/* 030004 8002F404 27BD0048 */  addiu $sp, $sp, 0x48
/* 030008 8002F408 03E00008 */  jr    $ra
/* 03000C 8002F40C 00000000 */   nop   
.type func_8002F2B4, @function
.size func_8002F2B4, . - func_8002F2B4
