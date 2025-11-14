glabel func_801DBA00_ovl14 # 10
/* 1FE5F0 801DBA00 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1FE5F4 801DBA04 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1FE5F8 801DBA08 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 1FE5FC 801DBA0C AFBF001C */  sw          $ra, 0x1C($sp)
/* 1FE600 801DBA10 AFA40028 */  sw          $a0, 0x28($sp)
/* 1FE604 801DBA14 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FE608 801DBA18 3C0140C0 */  lui         $at, (0x40C00000 >> 16)
/* 1FE60C 801DBA1C 44810000 */  mtc1        $at, $f0
/* 1FE610 801DBA20 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FE614 801DBA24 000FC080 */  sll         $t8, $t7, 2
/* 1FE618 801DBA28 00380821 */  addu        $at, $at, $t8
/* 1FE61C 801DBA2C 240E0003 */  addiu       $t6, $zero, 0x3
/* 1FE620 801DBA30 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1FE624 801DBA34 8C790000 */  lw          $t9, 0x0($v1)
/* 1FE628 801DBA38 3C08800F */  lui         $t0, %hi(D_800EBDA0)
/* 1FE62C 801DBA3C 2508BDA0 */  addiu       $t0, $t0, %lo(D_800EBDA0)
/* 1FE630 801DBA40 00194880 */  sll         $t1, $t9, 2
/* 1FE634 801DBA44 01095021 */  addu        $t2, $t0, $t1
/* 1FE638 801DBA48 AD400000 */  sw          $zero, 0x0($t2)
/* 1FE63C 801DBA4C 8C620000 */  lw          $v0, 0x0($v1)
/* 1FE640 801DBA50 3C01800F */  lui         $at, %hi(D_800EBBE0)
/* 1FE644 801DBA54 3C050001 */  lui         $a1, (0x10430 >> 16)
/* 1FE648 801DBA58 00021080 */  sll         $v0, $v0, 2
/* 1FE64C 801DBA5C 01025821 */  addu        $t3, $t0, $v0
/* 1FE650 801DBA60 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FE654 801DBA64 00220821 */  addu        $at, $at, $v0
/* 1FE658 801DBA68 3C070001 */  lui         $a3, (0x1006B >> 16)
/* 1FE65C 801DBA6C AC2CBBE0 */  sw          $t4, %lo(D_800EBBE0)($at)
/* 1FE660 801DBA70 8C8F003C */  lw          $t7, 0x3C($a0)
/* 1FE664 801DBA74 44060000 */  mfc1        $a2, $f0
/* 1FE668 801DBA78 34E7006B */  ori         $a3, $a3, (0x1006B & 0xFFFF)
/* 1FE66C 801DBA7C 8DE40010 */  lw          $a0, 0x10($t7)
/* 1FE670 801DBA80 34A50430 */  ori         $a1, $a1, (0x10430 & 0xFFFF)
/* 1FE674 801DBA84 0C02A982 */  jal         func_800AA608
/* 1FE678 801DBA88 E7A00010 */   swc1       $f0, 0x10($sp)
/* 1FE67C 801DBA8C 3C040001 */  lui         $a0, (0x10430 >> 16)
/* 1FE680 801DBA90 34840430 */  ori         $a0, $a0, (0x10430 & 0xFFFF)
/* 1FE684 801DBA94 0C02A7E6 */  jal         func_800A9F98
/* 1FE688 801DBA98 3C0540C0 */   lui        $a1, (0x40C00000 >> 16)
/* 1FE68C 801DBA9C 0C002DAF */  jal         finish_current_thread
/* 1FE690 801DBAA0 24040022 */   addiu      $a0, $zero, 0x22
/* 1FE694 801DBAA4 0C029D9E */  jal         play_sound
/* 1FE698 801DBAA8 240401AA */   addiu      $a0, $zero, 0x1AA
/* 1FE69C 801DBAAC 0C02BC9F */  jal         func_800AF27C
/* 1FE6A0 801DBAB0 00000000 */   nop
/* 1FE6A4 801DBAB4 3C040001 */  lui         $a0, (0x10432 >> 16)
/* 1FE6A8 801DBAB8 0C02A806 */  jal         func_800AA018
/* 1FE6AC 801DBABC 34840432 */   ori        $a0, $a0, (0x10432 & 0xFFFF)
/* 1FE6B0 801DBAC0 0C006291 */  jal         random_soft_s32_range
/* 1FE6B4 801DBAC4 24040004 */   addiu      $a0, $zero, 0x4
/* 1FE6B8 801DBAC8 24010003 */  addiu       $at, $zero, 0x3
/* 1FE6BC 801DBACC 14410002 */  bne         $v0, $at, .L801DBAD8
/* 1FE6C0 801DBAD0 00402825 */   move       $a1, $v0
/* 1FE6C4 801DBAD4 24050001 */  addiu       $a1, $zero, 0x1
.L801DBAD8:
/* 1FE6C8 801DBAD8 24040002 */  addiu       $a0, $zero, 0x2
/* 1FE6CC 801DBADC 0C006291 */  jal         random_soft_s32_range
/* 1FE6D0 801DBAE0 AFA50024 */   sw         $a1, 0x24($sp)
/* 1FE6D4 801DBAE4 8FA50024 */  lw          $a1, 0x24($sp)
/* 1FE6D8 801DBAE8 AFA20020 */  sw          $v0, 0x20($sp)
/* 1FE6DC 801DBAEC 0C07719D */  jal         func_801DC674_ovl14
/* 1FE6E0 801DBAF0 00002025 */   move       $a0, $zero
/* 1FE6E4 801DBAF4 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1FE6E8 801DBAF8 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1FE6EC 801DBAFC 3C07800F */  lui         $a3, %hi(D_800EBBE0)
/* 1FE6F0 801DBB00 24E7BBE0 */  addiu       $a3, $a3, %lo(D_800EBBE0)
/* 1FE6F4 801DBB04 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FE6F8 801DBB08 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FE6FC 801DBB0C 8FA50024 */  lw          $a1, 0x24($sp)
/* 1FE700 801DBB10 000EC080 */  sll         $t8, $t6, 2
/* 1FE704 801DBB14 00F8C821 */  addu        $t9, $a3, $t8
/* 1FE708 801DBB18 AF220000 */  sw          $v0, 0x0($t9)
/* 1FE70C 801DBB1C 8C690000 */  lw          $t1, 0x0($v1)
/* 1FE710 801DBB20 00095080 */  sll         $t2, $t1, 2
/* 1FE714 801DBB24 00EA5821 */  addu        $t3, $a3, $t2
/* 1FE718 801DBB28 8D660000 */  lw          $a2, 0x0($t3)
/* 1FE71C 801DBB2C 10C1002D */  beq         $a2, $at, .L801DBBE4
/* 1FE720 801DBB30 00066080 */   sll        $t4, $a2, 2
/* 1FE724 801DBB34 3C01800F */  lui         $at, %hi(D_800EC2E0)
/* 1FE728 801DBB38 002C0821 */  addu        $at, $at, $t4
/* 1FE72C 801DBB3C AC20C2E0 */  sw          $zero, %lo(D_800EC2E0)($at)
/* 1FE730 801DBB40 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FE734 801DBB44 8FAD0020 */  lw          $t5, 0x20($sp)
/* 1FE738 801DBB48 3C01800F */  lui         $at, %hi(D_800EC4A0)
/* 1FE73C 801DBB4C 000F7080 */  sll         $t6, $t7, 2
/* 1FE740 801DBB50 00EEC021 */  addu        $t8, $a3, $t6
/* 1FE744 801DBB54 8F190000 */  lw          $t9, 0x0($t8)
/* 1FE748 801DBB58 24A50002 */  addiu       $a1, $a1, 0x2
/* 1FE74C 801DBB5C 00002025 */  move        $a0, $zero
/* 1FE750 801DBB60 00194880 */  sll         $t1, $t9, 2
/* 1FE754 801DBB64 00290821 */  addu        $at, $at, $t1
/* 1FE758 801DBB68 0C07719D */  jal         func_801DC674_ovl14
/* 1FE75C 801DBB6C AC2DC4A0 */   sw         $t5, %lo(D_800EC4A0)($at)
/* 1FE760 801DBB70 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1FE764 801DBB74 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1FE768 801DBB78 3C05800F */  lui         $a1, %hi(D_800EBDA0)
/* 1FE76C 801DBB7C 24A5BDA0 */  addiu       $a1, $a1, %lo(D_800EBDA0)
/* 1FE770 801DBB80 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1FE774 801DBB84 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FE778 801DBB88 24190001 */  addiu       $t9, $zero, 0x1
/* 1FE77C 801DBB8C 000A5880 */  sll         $t3, $t2, 2
/* 1FE780 801DBB90 00AB6021 */  addu        $t4, $a1, $t3
/* 1FE784 801DBB94 AD820000 */  sw          $v0, 0x0($t4)
/* 1FE788 801DBB98 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FE78C 801DBB9C 000F7080 */  sll         $t6, $t7, 2
/* 1FE790 801DBBA0 00AEC021 */  addu        $t8, $a1, $t6
/* 1FE794 801DBBA4 8F040000 */  lw          $a0, 0x0($t8)
/* 1FE798 801DBBA8 1081000E */  beq         $a0, $at, .L801DBBE4
/* 1FE79C 801DBBAC 00046880 */   sll        $t5, $a0, 2
/* 1FE7A0 801DBBB0 3C01800F */  lui         $at, %hi(D_800EC2E0)
/* 1FE7A4 801DBBB4 002D0821 */  addu        $at, $at, $t5
/* 1FE7A8 801DBBB8 AC39C2E0 */  sw          $t9, %lo(D_800EC2E0)($at)
/* 1FE7AC 801DBBBC 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1FE7B0 801DBBC0 8FA90020 */  lw          $t1, 0x20($sp)
/* 1FE7B4 801DBBC4 3C01800F */  lui         $at, %hi(D_800EC4A0)
/* 1FE7B8 801DBBC8 000B6080 */  sll         $t4, $t3, 2
/* 1FE7BC 801DBBCC 00AC7821 */  addu        $t7, $a1, $t4
/* 1FE7C0 801DBBD0 8DEE0000 */  lw          $t6, 0x0($t7)
/* 1FE7C4 801DBBD4 392A0001 */  xori        $t2, $t1, 0x1
/* 1FE7C8 801DBBD8 000EC080 */  sll         $t8, $t6, 2
/* 1FE7CC 801DBBDC 00380821 */  addu        $at, $at, $t8
/* 1FE7D0 801DBBE0 AC2AC4A0 */  sw          $t2, %lo(D_800EC4A0)($at)
.L801DBBE4:
/* 1FE7D4 801DBBE4 0C002DAF */  jal         finish_current_thread
/* 1FE7D8 801DBBE8 24040014 */   addiu      $a0, $zero, 0x14
/* 1FE7DC 801DBBEC 3C040001 */  lui         $a0, (0x10438 >> 16)
/* 1FE7E0 801DBBF0 0C02A7A9 */  jal         func_800A9EA4
/* 1FE7E4 801DBBF4 34840438 */   ori        $a0, $a0, (0x10438 & 0xFFFF)
/* 1FE7E8 801DBBF8 0C002DAF */  jal         finish_current_thread
/* 1FE7EC 801DBBFC 24040032 */   addiu      $a0, $zero, 0x32
/* 1FE7F0 801DBC00 3C0D8005 */  lui         $t5, %hi(D_8004A7C4)
/* 1FE7F4 801DBC04 8DADA7C4 */  lw          $t5, %lo(D_8004A7C4)($t5)
/* 1FE7F8 801DBC08 8FBF001C */  lw          $ra, 0x1C($sp)
/* 1FE7FC 801DBC0C 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FE800 801DBC10 8DA90000 */  lw          $t1, 0x0($t5)
/* 1FE804 801DBC14 24190001 */  addiu       $t9, $zero, 0x1
/* 1FE808 801DBC18 27BD0028 */  addiu       $sp, $sp, 0x28
/* 1FE80C 801DBC1C 00095880 */  sll         $t3, $t1, 2
/* 1FE810 801DBC20 002B0821 */  addu        $at, $at, $t3
/* 1FE814 801DBC24 03E00008 */  jr          $ra
/* 1FE818 801DBC28 AC39DC50 */   sw         $t9, %lo(gEntityVtableIndexArray)($at)
.type func_801DBA00_ovl14, @function
.size func_801DBA00_ovl14, . - func_801DBA00_ovl14
