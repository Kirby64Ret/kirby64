glabel func_801DB400_ovl16
/* 205F60 801DB400 27BDFFC0 */  addiu      $sp, $sp, -0x40
.L801DB404_ovl11:
/* 205F64 801DB404 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 205F68 801DB408 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 205F6C 801DB40C AFBF003C */  sw         $ra, 0x3C($sp)
/* 205F70 801DB410 AFBE0038 */  sw         $fp, 0x38($sp)
/* 205F74 801DB414 AFB70034 */  sw         $s7, 0x34($sp)
/* 205F78 801DB418 AFB60030 */  sw         $s6, 0x30($sp)
/* 205F7C 801DB41C AFB5002C */  sw         $s5, 0x2C($sp)
/* 205F80 801DB420 AFB40028 */  sw         $s4, 0x28($sp)
/* 205F84 801DB424 AFB30024 */  sw         $s3, 0x24($sp)
/* 205F88 801DB428 AFB20020 */  sw         $s2, 0x20($sp)
/* 205F8C 801DB42C AFB1001C */  sw         $s1, 0x1C($sp)
/* 205F90 801DB430 AFB00018 */  sw         $s0, 0x18($sp)
/* 205F94 801DB434 AFA40040 */  sw         $a0, 0x40($sp)
/* 205F98 801DB438 24040079 */  addiu      $a0, $zero, 0x79
/* 205F9C 801DB43C 0C02C67D */  jal        func_800B19F4
/* 205FA0 801DB440 8DC50000 */   lw        $a1, 0x0($t6)
/* 205FA4 801DB444 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 205FA8 801DB448 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 205FAC 801DB44C 0C02BEED */  jal        func_800AFBB4
/* 205FB0 801DB450 00002025 */   or        $a0, $zero, $zero
/* 205FB4 801DB454 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 205FB8 801DB458 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 205FBC 801DB45C 3C0F800B */  lui        $t7, %hi(func_800B7790)
glabel func_801DB460_ovl14
/* 205FC0 801DB460 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 205FC4 801DB464 8CD80000 */  lw         $t8, 0x0($a2)
/* 205FC8 801DB468 25EF7790 */  addiu      $t7, $t7, %lo(func_800B7790)
/* 205FCC 801DB46C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 205FD0 801DB470 0018C880 */  sll        $t9, $t8, 2
/* 205FD4 801DB474 00390821 */  addu       $at, $at, $t9
glabel func_801DB478_ovl10
/* 205FD8 801DB478 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 205FDC 801DB47C 8CC80000 */  lw         $t0, 0x0($a2)
.L801DB480_ovl16:
/* 205FE0 801DB480 3C05800B */  lui        $a1, %hi(func_800B1434)
/* 205FE4 801DB484 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
.L801DB488_ovl16:
/* 205FE8 801DB488 00084880 */  sll        $t1, $t0, 2
/* 205FEC 801DB48C 00892021 */  addu       $a0, $a0, $t1
.L801DB490_ovl9:
/* 205FF0 801DB490 0C02C7DA */  jal        func_800B1F68
glabel func_801DB494_ovl12
/* 205FF4 801DB494 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 205FF8 801DB498 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 205FFC 801DB49C 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 206000 801DB4A0 3C01800E */  lui        $at, %hi(D_800DF150)
/* 206004 801DB4A4 8D4B0000 */  lw         $t3, 0x0($t2)
/* 206008 801DB4A8 000B6080 */  sll        $t4, $t3, 2
/* 20600C 801DB4AC 002C0821 */  addu       $at, $at, $t4
.L801DB4B0_ovl16:
/* 206010 801DB4B0 0C02CCFD */  jal        func_800B33F4
/* 206014 801DB4B4 AC20F150 */   sw        $zero, %lo(D_800DF150)($at)
/* 206018 801DB4B8 3C10800D */  lui        $s0, %hi(D_800D7098)
/* 20601C 801DB4BC 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 206020 801DB4C0 AE00003C */  sw         $zero, 0x3C($s0)
/* 206024 801DB4C4 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 206028 801DB4C8 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
.L801DB4CC_ovl14:
/* 20602C 801DB4CC 00001825 */  or         $v1, $zero, $zero
glabel func_801DB4D0_ovl13
/* 206030 801DB4D0 241E0002 */  addiu      $fp, $zero, 0x2
.L801DB4D4_ovl13:
/* 206034 801DB4D4 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801DB4D8_ovl9
/* 206038 801DB4D8 AE00002C */  sw         $zero, 0x2C($s0)
.L801DB4DC_ovl13:
/* 20603C 801DB4DC AE000028 */  sw         $zero, 0x28($s0)
/* 206040 801DB4E0 AE00000C */  sw         $zero, 0xC($s0)
/* 206044 801DB4E4 AE000008 */  sw         $zero, 0x8($s0)
/* 206048 801DB4E8 24170003 */  addiu      $s7, $zero, 0x3
/* 20604C 801DB4EC 24160004 */  addiu      $s6, $zero, 0x4
/* 206050 801DB4F0 24150005 */  addiu      $s5, $zero, 0x5
/* 206054 801DB4F4 24140006 */  addiu      $s4, $zero, 0x6
/* 206058 801DB4F8 24130007 */  addiu      $s3, $zero, 0x7
/* 20605C 801DB4FC 24120008 */  addiu      $s2, $zero, 0x8
/* 206060 801DB500 24110009 */  addiu      $s1, $zero, 0x9
/* 206064 801DB504 AE0E0038 */  sw         $t6, 0x38($s0)
.L801DB508_ovl16:
/* 206068 801DB508 2C61000A */  sltiu      $at, $v1, 0xA
.L801DB50C_ovl15:
/* 20606C 801DB50C 10200086 */  beqz       $at, .L801DB728_ovl15
/* 206070 801DB510 0003C080 */   sll       $t8, $v1, 2
.L801DB514_ovl15:
/* 206074 801DB514 3C01801E */  lui        $at, %hi(.L801E6790_ovl16)
/* 206078 801DB518 00380821 */  addu       $at, $at, $t8
/* 20607C 801DB51C 8C386790 */  lw         $t8, %lo(.L801E6790_ovl16)($at)
.L801DB520_ovl16:
/* 206080 801DB520 03000008 */  jr         $t8
/* 206084 801DB524 00000000 */   nop
glabel func_801DB528_ovl16
/* 206088 801DB528 24040004 */  addiu      $a0, $zero, 0x4
/* 20608C 801DB52C 0C067829 */  jal        func_8019E0A4_ovl7
.L801DB530_ovl10:
/* 206090 801DB530 24050003 */   addiu     $a1, $zero, 0x3
.L801DB534_ovl12:
/* 206094 801DB534 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 206098 801DB538 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 20609C 801DB53C 3C01800F */  lui        $at, %hi(D_800EBBE0)
.L801DB540_ovl10:
/* 2060A0 801DB540 24040004 */  addiu      $a0, $zero, 0x4
glabel func_801DB544_ovl12
/* 2060A4 801DB544 8DF90000 */  lw         $t9, 0x0($t7)
/* 2060A8 801DB548 24050001 */  addiu      $a1, $zero, 0x1
/* 2060AC 801DB54C 00194080 */  sll        $t0, $t9, 2
/* 2060B0 801DB550 00280821 */  addu       $at, $at, $t0
/* 2060B4 801DB554 AC22BBE0 */  sw         $v0, %lo(D_800EBBE0)($at)
glabel func_801DB558_ovl9
/* 2060B8 801DB558 0C067829 */  jal        func_8019E0A4_ovl7
/* 2060BC 801DB55C AE020030 */   sw        $v0, 0x30($s0)
/* 2060C0 801DB560 3C068005 */  lui        $a2, %hi(D_8004A7C4)
.L801DB564_ovl14:
/* 2060C4 801DB564 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
.L801DB568_ovl10:
/* 2060C8 801DB568 3C01800F */  lui        $at, %hi(D_800EC120)
/* 2060CC 801DB56C 3C0C800F */  lui        $t4, %hi(D_800EBBE0)
/* 2060D0 801DB570 8CC90000 */  lw         $t1, 0x0($a2)
.L801DB574_ovl13:
/* 2060D4 801DB574 258CBBE0 */  addiu      $t4, $t4, %lo(D_800EBBE0)
/* 2060D8 801DB578 3C0B800F */  lui        $t3, %hi(D_800EC120)
.L801DB57C_ovl14:
/* 2060DC 801DB57C 00095080 */  sll        $t2, $t1, 2
/* 2060E0 801DB580 002A0821 */  addu       $at, $at, $t2
/* 2060E4 801DB584 AC22C120 */  sw         $v0, %lo(D_800EC120)($at)
/* 2060E8 801DB588 AE020034 */  sw         $v0, 0x34($s0)
/* 2060EC 801DB58C 8CC40000 */  lw         $a0, 0x0($a2)
/* 2060F0 801DB590 00042080 */  sll        $a0, $a0, 2
glabel func_801DB594_ovl11
/* 2060F4 801DB594 008C6821 */  addu       $t5, $a0, $t4
/* 2060F8 801DB598 8DAE0000 */  lw         $t6, 0x0($t5)
/* 2060FC 801DB59C 01645821 */  addu       $t3, $t3, $a0
.L801DB5A0_ovl16:
/* 206100 801DB5A0 8D6BC120 */  lw         $t3, %lo(D_800EC120)($t3)
.L801DB5A4_ovl14:
/* 206104 801DB5A4 000EC080 */  sll        $t8, $t6, 2
.L801DB5A8_ovl13:
/* 206108 801DB5A8 030C7821 */  addu       $t7, $t8, $t4
/* 20610C 801DB5AC ADEB0000 */  sw         $t3, 0x0($t7)
/* 206110 801DB5B0 8E03003C */  lw         $v1, 0x3C($s0)
/* 206114 801DB5B4 5460FFD5 */  bnel       $v1, $zero, .L801DB50C_ovl15
/* 206118 801DB5B8 2C61000A */   sltiu     $at, $v1, 0xA
glabel func_801DB5BC_ovl15
/* 20611C 801DB5BC 0C002DAF */  jal        finish_current_thread
/* 206120 801DB5C0 24040001 */   addiu     $a0, $zero, 0x1
/* 206124 801DB5C4 8E03003C */  lw         $v1, 0x3C($s0)
glabel func_801DB5C8_ovl11
/* 206128 801DB5C8 1060FFFC */  beqz       $v1, func_801DB5BC_ovl15
/* 20612C 801DB5CC 00000000 */   nop
.L801DB5D0_ovl16:
/* 206130 801DB5D0 1000FFCE */  b          .L801DB50C_ovl15
.L801DB5D4_ovl14:
/* 206134 801DB5D4 2C61000A */   sltiu     $at, $v1, 0xA
/* 206138 801DB5D8 24010001 */  addiu      $at, $zero, 0x1
.L801DB5DC_ovl13:
/* 20613C 801DB5DC 5461FFCB */  bnel       $v1, $at, .L801DB50C_ovl15
/* 206140 801DB5E0 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB5E4_ovl15:
/* 206144 801DB5E4 0C002DAF */  jal        finish_current_thread
/* 206148 801DB5E8 24040001 */   addiu     $a0, $zero, 0x1
/* 20614C 801DB5EC 8E03003C */  lw         $v1, 0x3C($s0)
.L801DB5F0_ovl14:
/* 206150 801DB5F0 24010001 */  addiu      $at, $zero, 0x1
/* 206154 801DB5F4 1061FFFB */  beq        $v1, $at, .L801DB5E4_ovl15
/* 206158 801DB5F8 00000000 */   nop
/* 20615C 801DB5FC 1000FFC3 */  b          .L801DB50C_ovl15
/* 206160 801DB600 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB604_ovl12:
/* 206164 801DB604 57C3FFC1 */  bnel       $fp, $v1, .L801DB50C_ovl15
.L801DB608_ovl14:
/* 206168 801DB608 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB60C_ovl15:
/* 20616C 801DB60C 0C002DAF */  jal        finish_current_thread
/* 206170 801DB610 24040001 */   addiu     $a0, $zero, 0x1
/* 206174 801DB614 8E03003C */  lw         $v1, 0x3C($s0)
/* 206178 801DB618 13C3FFFC */  beq        $fp, $v1, .L801DB60C_ovl15
/* 20617C 801DB61C 00000000 */   nop
/* 206180 801DB620 1000FFBA */  b          .L801DB50C_ovl15
/* 206184 801DB624 2C61000A */   sltiu     $at, $v1, 0xA
/* 206188 801DB628 56E3FFB8 */  bnel       $s7, $v1, .L801DB50C_ovl15
glabel func_801DB62C_ovl9
/* 20618C 801DB62C 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB630_ovl15:
/* 206190 801DB630 0C002DAF */  jal        finish_current_thread
/* 206194 801DB634 24040001 */   addiu     $a0, $zero, 0x1
/* 206198 801DB638 8E03003C */  lw         $v1, 0x3C($s0)
/* 20619C 801DB63C 12E3FFFC */  beq        $s7, $v1, .L801DB630_ovl15
/* 2061A0 801DB640 00000000 */   nop
/* 2061A4 801DB644 1000FFB1 */  b          .L801DB50C_ovl15
/* 2061A8 801DB648 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB64C_ovl16:
/* 2061AC 801DB64C 56C3FFAF */  bnel       $s6, $v1, .L801DB50C_ovl15
.L801DB650_ovl16:
/* 2061B0 801DB650 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB654_ovl15:
/* 2061B4 801DB654 0C002DAF */  jal        finish_current_thread
/* 2061B8 801DB658 24040001 */   addiu     $a0, $zero, 0x1
/* 2061BC 801DB65C 8E03003C */  lw         $v1, 0x3C($s0)
/* 2061C0 801DB660 12C3FFFC */  beq        $s6, $v1, .L801DB654_ovl15
/* 2061C4 801DB664 00000000 */   nop
/* 2061C8 801DB668 1000FFA8 */  b          .L801DB50C_ovl15
glabel func_801DB66C_ovl14
/* 2061CC 801DB66C 2C61000A */   sltiu     $at, $v1, 0xA
/* 2061D0 801DB670 56A3FFA6 */  bnel       $s5, $v1, .L801DB50C_ovl15
glabel func_801DB674_ovl9
/* 2061D4 801DB674 2C61000A */   sltiu     $at, $v1, 0xA
glabel func_801DB678_ovl15
/* 2061D8 801DB678 0C002DAF */  jal        finish_current_thread
/* 2061DC 801DB67C 24040001 */   addiu     $a0, $zero, 0x1
/* 2061E0 801DB680 8E03003C */  lw         $v1, 0x3C($s0)
glabel func_801DB684_ovl14
/* 2061E4 801DB684 12A3FFFC */  beq        $s5, $v1, func_801DB678_ovl15
/* 2061E8 801DB688 00000000 */   nop
/* 2061EC 801DB68C 1000FF9F */  b          .L801DB50C_ovl15
/* 2061F0 801DB690 2C61000A */   sltiu     $at, $v1, 0xA
/* 2061F4 801DB694 5683FF9D */  bnel       $s4, $v1, .L801DB50C_ovl15
glabel func_801DB698_ovl16
/* 2061F8 801DB698 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB69C_ovl15:
/* 2061FC 801DB69C 0C002DAF */  jal        finish_current_thread
/* 206200 801DB6A0 24040001 */   addiu     $a0, $zero, 0x1
/* 206204 801DB6A4 8E03003C */  lw         $v1, 0x3C($s0)
/* 206208 801DB6A8 1283FFFC */  beq        $s4, $v1, .L801DB69C_ovl15
/* 20620C 801DB6AC 00000000 */   nop
/* 206210 801DB6B0 1000FF96 */  b          .L801DB50C_ovl15
/* 206214 801DB6B4 2C61000A */   sltiu     $at, $v1, 0xA
/* 206218 801DB6B8 5663FF94 */  bnel       $s3, $v1, .L801DB50C_ovl15
/* 20621C 801DB6BC 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB6C0_ovl15:
/* 206220 801DB6C0 0C002DAF */  jal        finish_current_thread
/* 206224 801DB6C4 24040001 */   addiu     $a0, $zero, 0x1
.L801DB6C8_ovl12:
/* 206228 801DB6C8 8E03003C */  lw         $v1, 0x3C($s0)
.L801DB6CC_ovl10:
/* 20622C 801DB6CC 1263FFFC */  beq        $s3, $v1, .L801DB6C0_ovl15
.L801DB6D0_ovl11:
/* 206230 801DB6D0 00000000 */   nop
/* 206234 801DB6D4 1000FF8D */  b          .L801DB50C_ovl15
glabel func_801DB6D8_ovl12
/* 206238 801DB6D8 2C61000A */   sltiu     $at, $v1, 0xA
glabel func_801DB6DC_ovl9
/* 20623C 801DB6DC 5643FF8B */  bnel       $s2, $v1, .L801DB50C_ovl15
/* 206240 801DB6E0 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB6E4_ovl15:
/* 206244 801DB6E4 0C002DAF */  jal        finish_current_thread
/* 206248 801DB6E8 24040001 */   addiu     $a0, $zero, 0x1
/* 20624C 801DB6EC 8E03003C */  lw         $v1, 0x3C($s0)
/* 206250 801DB6F0 1243FFFC */  beq        $s2, $v1, .L801DB6E4_ovl15
.L801DB6F4_ovl10:
/* 206254 801DB6F4 00000000 */   nop
/* 206258 801DB6F8 1000FF84 */  b          .L801DB50C_ovl15
/* 20625C 801DB6FC 2C61000A */   sltiu     $at, $v1, 0xA
/* 206260 801DB700 5623FF82 */  bnel       $s1, $v1, .L801DB50C_ovl15
.L801DB704_ovl10:
/* 206264 801DB704 2C61000A */   sltiu     $at, $v1, 0xA
.L801DB708_ovl15:
/* 206268 801DB708 0C002DAF */  jal        finish_current_thread
/* 20626C 801DB70C 24040001 */   addiu     $a0, $zero, 0x1
.L801DB710_ovl17:
/* 206270 801DB710 8E03003C */  lw         $v1, 0x3C($s0)
/* 206274 801DB714 1223FFFC */  beq        $s1, $v1, .L801DB708_ovl15
/* 206278 801DB718 00000000 */   nop
/* 20627C 801DB71C 2C61000A */  sltiu      $at, $v1, 0xA
/* 206280 801DB720 5420FF7C */  bnel       $at, $zero, .L801DB514_ovl15
.L801DB724_ovl16:
/* 206284 801DB724 0003C080 */   sll       $t8, $v1, 2
.L801DB728_ovl15:
/* 206288 801DB728 0C02BE85 */  jal        func_800AFA14
glabel func_801DB72C_ovl12
/* 20628C 801DB72C 00000000 */   nop
/* 206290 801DB730 1000FF75 */  b          .L801DB508_ovl16
/* 206294 801DB734 8E03003C */   lw        $v1, 0x3C($s0)
/* 206298 801DB738 00000000 */  nop
.L801DB73C_ovl13:
/* 20629C 801DB73C 00000000 */  nop
.L801DB740_ovl17:
/* 2062A0 801DB740 8FBF003C */  lw         $ra, 0x3C($sp)
.L801DB744_ovl16:
/* 2062A4 801DB744 8FB00018 */  lw         $s0, 0x18($sp)
/* 2062A8 801DB748 8FB1001C */  lw         $s1, 0x1C($sp)
.L801DB74C_ovl11:
/* 2062AC 801DB74C 8FB20020 */  lw         $s2, 0x20($sp)
.L801DB750_ovl11:
/* 2062B0 801DB750 8FB30024 */  lw         $s3, 0x24($sp)
/* 2062B4 801DB754 8FB40028 */  lw         $s4, 0x28($sp)
/* 2062B8 801DB758 8FB5002C */  lw         $s5, 0x2C($sp)
/* 2062BC 801DB75C 8FB60030 */  lw         $s6, 0x30($sp)
/* 2062C0 801DB760 8FB70034 */  lw         $s7, 0x34($sp)
/* 2062C4 801DB764 8FBE0038 */  lw         $fp, 0x38($sp)
.L801DB768_ovl17:
/* 2062C8 801DB768 03E00008 */  jr         $ra
.L801DB76C_ovl17:
/* 2062CC 801DB76C 27BD0040 */   addiu     $sp, $sp, 0x40
