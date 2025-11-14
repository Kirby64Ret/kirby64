.set noat
.set noreorder
.set gp=64
.include "macros.inc"

.section .text, "ax"

// conteepwrite

glabel osEepromWrite
/* 030410 8002F810 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 030414 8002F814 AFBF001C */  sw    $ra, 0x1c($sp)
/* 030418 8002F818 AFB10018 */  sw    $s1, 0x18($sp)
/* 03041C 8002F81C 00808825 */  move  $s1, $a0
/* 030420 8002F820 AFB00014 */  sw    $s0, 0x14($sp)
/* 030424 8002F824 AFA5004C */  sw    $a1, 0x4c($sp)
/* 030428 8002F828 0C00BD18 */  jal   __osSiGetAccess
/* 03042C 8002F82C AFA60050 */   sw    $a2, 0x50($sp)
/* 030430 8002F830 27B0002C */  addiu $s0, $sp, 0x2c
/* 030434 8002F834 02002825 */  move  $a1, $s0
/* 030438 8002F838 0C00BE8D */  jal   __osEepStatus
/* 03043C 8002F83C 02202025 */   move  $a0, $s1
/* 030440 8002F840 14400015 */  bnez  $v0, .L8002F898_ovl0
/* 030444 8002F844 00401825 */   move  $v1, $v0
/* 030448 8002F848 97AE002C */  lhu   $t6, 0x2c($sp)
/* 03044C 8002F84C 34018000 */  li    $at, 32768
/* 030450 8002F850 93B8004F */  lbu   $t8, 0x4f($sp)
/* 030454 8002F854 31CFC000 */  andi  $t7, $t6, 0xc000
/* 030458 8002F858 11E10005 */  beq   $t7, $at, .L8002F870_ovl0
/* 03045C 8002F85C 3401C000 */   li    $at, 49152
/* 030460 8002F860 11E10008 */  beq   $t7, $at, .L8002F884_ovl0
/* 030464 8002F864 93B9004F */   lbu   $t9, 0x4f($sp)
/* 030468 8002F868 1000000B */  b     .L8002F898_ovl0
/* 03046C 8002F86C 24030008 */   li    $v1, 8
.L8002F870_ovl0:
/* 030470 8002F870 2B010040 */  slti  $at, $t8, 0x40
/* 030474 8002F874 14200008 */  bnez  $at, .L8002F898_ovl0
/* 030478 8002F878 00000000 */   nop   
/* 03047C 8002F87C 10000006 */  b     .L8002F898_ovl0
/* 030480 8002F880 2403FFFF */   li    $v1, -1
.L8002F884_ovl0:
/* 030484 8002F884 2B210100 */  slti  $at, $t9, 0x100
/* 030488 8002F888 14200003 */  bnez  $at, .L8002F898_ovl0
/* 03048C 8002F88C 00000000 */   nop   
/* 030490 8002F890 10000001 */  b     .L8002F898_ovl0
/* 030494 8002F894 2403FFFF */   li    $v1, -1
.L8002F898_ovl0:
/* 030498 8002F898 10600005 */  beqz  $v1, .L8002F8B0_ovl0
/* 03049C 8002F89C 93A8002E */   lbu   $t0, 0x2e($sp)
/* 0304A0 8002F8A0 0C00BD29 */  jal   __osSiRelAccess
/* 0304A4 8002F8A4 AFA30044 */   sw    $v1, 0x44($sp)
/* 0304A8 8002F8A8 10000032 */  b     .L8002F974_ovl0
/* 0304AC 8002F8AC 8FA20044 */   lw    $v0, 0x44($sp)
.L8002F8B0_ovl0:
/* 0304B0 8002F8B0 31090080 */  andi  $t1, $t0, 0x80
/* 0304B4 8002F8B4 11200007 */  beqz  $t1, .L8002F8D4_ovl0
/* 0304B8 8002F8B8 02202025 */   move  $a0, $s1
.L8002F8BC_ovl0:
/* 0304BC 8002F8BC 0C00BE8D */  jal   __osEepStatus
/* 0304C0 8002F8C0 02002825 */   move  $a1, $s0
/* 0304C4 8002F8C4 93AA002E */  lbu   $t2, 0x2e($sp)
/* 0304C8 8002F8C8 314B0080 */  andi  $t3, $t2, 0x80
/* 0304CC 8002F8CC 5560FFFB */  bnezl $t3, .L8002F8BC_ovl0
/* 0304D0 8002F8D0 02202025 */   move  $a0, $s1
.L8002F8D4_ovl0:
/* 0304D4 8002F8D4 93A4004F */  lbu   $a0, 0x4f($sp)
/* 0304D8 8002F8D8 0C00BE62 */  jal   func_8002F988
/* 0304DC 8002F8DC 8FA50050 */   lw    $a1, 0x50($sp)
/* 0304E0 8002F8E0 3C05800A */  lui   $a1, %hi(__osEepPifRam) # $a1, 0x800a
/* 0304E4 8002F8E4 24A5B500 */  addiu $a1, %lo(__osEepPifRam) # addiu $a1, $a1, -0x4b00
/* 0304E8 8002F8E8 0C00C138 */  jal   __osSiRawStartDma
/* 0304EC 8002F8EC 24040001 */   li    $a0, 1
/* 0304F0 8002F8F0 02202025 */  move  $a0, $s1
/* 0304F4 8002F8F4 00002825 */  move  $a1, $zero
/* 0304F8 8002F8F8 0C00B540 */  jal   osRecvMesg
/* 0304FC 8002F8FC 24060001 */   li    $a2, 1
/* 030500 8002F900 3C05800A */  lui   $a1, %hi(__osEepPifRam) # $a1, 0x800a
/* 030504 8002F904 24A5B500 */  addiu $a1, %lo(__osEepPifRam) # addiu $a1, $a1, -0x4b00
/* 030508 8002F908 0C00C138 */  jal   __osSiRawStartDma
/* 03050C 8002F90C 00002025 */   move  $a0, $zero
/* 030510 8002F910 240C0005 */  li    $t4, 5
/* 030514 8002F914 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 030518 8002F918 A02C8AF0 */  sb    $t4, %lo(__osContLastCmd)($at)
/* 03051C 8002F91C 02202025 */  move  $a0, $s1
/* 030520 8002F920 00002825 */  move  $a1, $zero
/* 030524 8002F924 0C00B540 */  jal   osRecvMesg
/* 030528 8002F928 24060001 */   li    $a2, 1
/* 03052C 8002F92C 3C07800A */  lui   $a3, %hi(D_8009B504) # $a3, 0x800a
/* 030530 8002F930 24E7B504 */  addiu $a3, %lo(D_8009B504) # addiu $a3, $a3, -0x4afc
/* 030534 8002F934 88E10000 */  lwl   $at, ($a3)
/* 030538 8002F938 98E10003 */  lwr   $at, 3($a3)
/* 03053C 8002F93C 27AD0030 */  addiu $t5, $sp, 0x30
/* 030540 8002F940 ADA10000 */  sw    $at, ($t5)
/* 030544 8002F944 88F80004 */  lwl   $t8, 4($a3)
/* 030548 8002F948 98F80007 */  lwr   $t8, 7($a3)
/* 03054C 8002F94C ADB80004 */  sw    $t8, 4($t5)
/* 030550 8002F950 88E10008 */  lwl   $at, 8($a3)
/* 030554 8002F954 98E1000B */  lwr   $at, 0xb($a3)
/* 030558 8002F958 ADA10008 */  sw    $at, 8($t5)
/* 03055C 8002F95C 93A30031 */  lbu   $v1, 0x31($sp)
/* 030560 8002F960 307900C0 */  andi  $t9, $v1, 0xc0
/* 030564 8002F964 00194103 */  sra   $t0, $t9, 4
/* 030568 8002F968 0C00BD29 */  jal   __osSiRelAccess
/* 03056C 8002F96C AFA80044 */   sw    $t0, 0x44($sp)
/* 030570 8002F970 8FA20044 */  lw    $v0, 0x44($sp)
.L8002F974_ovl0:
/* 030574 8002F974 8FBF001C */  lw    $ra, 0x1c($sp)
/* 030578 8002F978 8FB00014 */  lw    $s0, 0x14($sp)
/* 03057C 8002F97C 8FB10018 */  lw    $s1, 0x18($sp)
/* 030580 8002F980 03E00008 */  jr    $ra
/* 030584 8002F984 27BD0048 */   addiu $sp, $sp, 0x48
.size osEepromWrite, . - osEepromWrite

glabel func_8002F988
/* 030588 8002F988 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03058C 8002F98C 3C07800A */  lui   $a3, %hi(__osEepPifRam) # $a3, 0x800a
/* 030590 8002F990 24E7B500 */  addiu $a3, %lo(__osEepPifRam) # addiu $a3, $a3, -0x4b00
/* 030594 8002F994 240F0001 */  li    $t7, 1
/* 030598 8002F998 2418000A */  li    $t8, 10
/* 03059C 8002F99C 24190001 */  li    $t9, 1
/* 0305A0 8002F9A0 24080005 */  li    $t0, 5
/* 0305A4 8002F9A4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0305A8 8002F9A8 ACEF003C */  sw    $t7, 0x3c($a3)
/* 0305AC 8002F9AC A3B80008 */  sb    $t8, 8($sp)
/* 0305B0 8002F9B0 A3B90009 */  sb    $t9, 9($sp)
/* 0305B4 8002F9B4 A3A8000A */  sb    $t0, 0xa($sp)
/* 0305B8 8002F9B8 A3A4000B */  sb    $a0, 0xb($sp)
/* 0305BC 8002F9BC 27A60008 */  addiu $a2, $sp, 8
/* 0305C0 8002F9C0 27A20010 */  addiu $v0, $sp, 0x10
.L8002F9C4_ovl0:
/* 0305C4 8002F9C4 90A90000 */  lbu   $t1, ($a1)
/* 0305C8 8002F9C8 24C60001 */  addiu $a2, $a2, 1
/* 0305CC 8002F9CC 00C2082B */  sltu  $at, $a2, $v0
/* 0305D0 8002F9D0 24A50001 */  addiu $a1, $a1, 1
/* 0305D4 8002F9D4 1420FFFB */  bnez  $at, .L8002F9C4_ovl0
/* 0305D8 8002F9D8 A0C90003 */   sb    $t1, 3($a2)
/* 0305DC 8002F9DC 3C01800A */  lui   $at, %hi(__osEepPifRam) # $at, 0x800a
/* 0305E0 8002F9E0 3C02800A */  lui   $v0, %hi(D_8009B501) # $v0, 0x800a
/* 0305E4 8002F9E4 2442B501 */  addiu $v0, %lo(D_8009B501) # addiu $v0, $v0, -0x4aff
/* 0305E8 8002F9E8 A020B500 */  sb    $zero, %lo(__osEepPifRam)($at)
/* 0305EC 8002F9EC A0400002 */  sb    $zero, 2($v0)
/* 0305F0 8002F9F0 A0400001 */  sb    $zero, 1($v0)
/* 0305F4 8002F9F4 A0400000 */  sb    $zero, ($v0)
/* 0305F8 8002F9F8 27AA0008 */  addiu $t2, $sp, 8
/* 0305FC 8002F9FC 8D410000 */  lw    $at, ($t2)
/* 030600 8002FA00 240D00FE */  li    $t5, 254
/* 030604 8002FA04 2442000F */  addiu $v0, $v0, 0xf
/* 030608 8002FA08 A841FFF4 */  swl   $at, -0xc($v0)
/* 03060C 8002FA0C B841FFF7 */  swr   $at, -9($v0)
/* 030610 8002FA10 8D4C0004 */  lw    $t4, 4($t2)
/* 030614 8002FA14 A84CFFF8 */  swl   $t4, -8($v0)
/* 030618 8002FA18 B84CFFFB */  swr   $t4, -5($v0)
/* 03061C 8002FA1C 8D410008 */  lw    $at, 8($t2)
/* 030620 8002FA20 A04D0000 */  sb    $t5, ($v0)
/* 030624 8002FA24 27BD0018 */  addiu $sp, $sp, 0x18
/* 030628 8002FA28 A841FFFC */  swl   $at, -4($v0)
/* 03062C 8002FA2C 03E00008 */  jr    $ra
/* 030630 8002FA30 B841FFFF */   swr   $at, -1($v0)
.size func_8002F988, . - func_8002F988

glabel __osEepStatus
/* 030634 8002FA34 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 030638 8002FA38 3C02800A */  lui   $v0, %hi(__osEepPifRam) # $v0, 0x800a
/* 03063C 8002FA3C 3C03800A */  lui   $v1, %hi(D_8009B540) # $v1, 0x800a
/* 030640 8002FA40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 030644 8002FA44 AFA40030 */  sw    $a0, 0x30($sp)
/* 030648 8002FA48 AFA50034 */  sw    $a1, 0x34($sp)
/* 03064C 8002FA4C 2463B540 */  addiu $v1, %lo(D_8009B540) # addiu $v1, $v1, -0x4ac0
/* 030650 8002FA50 2442B500 */  addiu $v0, %lo(__osEepPifRam) # addiu $v0, $v0, -0x4b00
.L8002FA54_ovl0:
/* 030654 8002FA54 24420004 */  addiu $v0, $v0, 4
/* 030658 8002FA58 0043082B */  sltu  $at, $v0, $v1
/* 03065C 8002FA5C 1420FFFD */  bnez  $at, .L8002FA54_ovl0
/* 030660 8002FA60 AC40FFFC */   sw    $zero, -4($v0)
/* 030664 8002FA64 3C05800A */  lui   $a1, %hi(__osEepPifRam) # $a1, 0x800a
/* 030668 8002FA68 24A5B500 */  addiu $a1, %lo(__osEepPifRam) # addiu $a1, $a1, -0x4b00
/* 03066C 8002FA6C 240E0001 */  li    $t6, 1
/* 030670 8002FA70 ACAE003C */  sw    $t6, 0x3c($a1)
/* 030674 8002FA74 00A01025 */  move  $v0, $a1
/* 030678 8002FA78 00001825 */  move  $v1, $zero
.L8002FA7C_ovl0:
/* 03067C 8002FA7C 24630001 */  addiu $v1, $v1, 1
/* 030680 8002FA80 28610004 */  slti  $at, $v1, 4
/* 030684 8002FA84 A0400000 */  sb    $zero, ($v0)
/* 030688 8002FA88 1420FFFC */  bnez  $at, .L8002FA7C_ovl0
/* 03068C 8002FA8C 24420001 */   addiu $v0, $v0, 1
/* 030690 8002FA90 240F00FF */  li    $t7, 255
/* 030694 8002FA94 24180001 */  li    $t8, 1
/* 030698 8002FA98 24190003 */  li    $t9, 3
/* 03069C 8002FA9C 240800FF */  li    $t0, 255
/* 0306A0 8002FAA0 240900FF */  li    $t1, 255
/* 0306A4 8002FAA4 240A00FF */  li    $t2, 255
/* 0306A8 8002FAA8 240B00FF */  li    $t3, 255
/* 0306AC 8002FAAC A3AF001C */  sb    $t7, 0x1c($sp)
/* 0306B0 8002FAB0 A3B8001D */  sb    $t8, 0x1d($sp)
/* 0306B4 8002FAB4 A3B9001E */  sb    $t9, 0x1e($sp)
/* 0306B8 8002FAB8 A3A0001F */  sb    $zero, 0x1f($sp)
/* 0306BC 8002FABC A3A80020 */  sb    $t0, 0x20($sp)
/* 0306C0 8002FAC0 A3A90021 */  sb    $t1, 0x21($sp)
/* 0306C4 8002FAC4 A3AA0022 */  sb    $t2, 0x22($sp)
/* 0306C8 8002FAC8 A3AB0023 */  sb    $t3, 0x23($sp)
/* 0306CC 8002FACC 27AC001C */  addiu $t4, $sp, 0x1c
/* 0306D0 8002FAD0 8D810000 */  lw    $at, ($t4)
/* 0306D4 8002FAD4 241800FE */  li    $t8, 254
/* 0306D8 8002FAD8 24420008 */  addiu $v0, $v0, 8
/* 0306DC 8002FADC A841FFF8 */  swl   $at, -8($v0)
/* 0306E0 8002FAE0 B841FFFB */  swr   $at, -5($v0)
/* 0306E4 8002FAE4 8D8F0004 */  lw    $t7, 4($t4)
/* 0306E8 8002FAE8 A0580000 */  sb    $t8, ($v0)
/* 0306EC 8002FAEC 24040001 */  li    $a0, 1
/* 0306F0 8002FAF0 A84FFFFC */  swl   $t7, -4($v0)
/* 0306F4 8002FAF4 0C00C138 */  jal   __osSiRawStartDma
/* 0306F8 8002FAF8 B84FFFFF */   swr   $t7, -1($v0)
/* 0306FC 8002FAFC 8FA40030 */  lw    $a0, 0x30($sp)
/* 030700 8002FB00 00002825 */  move  $a1, $zero
/* 030704 8002FB04 0C00B540 */  jal   osRecvMesg
/* 030708 8002FB08 24060001 */   li    $a2, 1
/* 03070C 8002FB0C 241900FE */  li    $t9, 254
/* 030710 8002FB10 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 030714 8002FB14 3C05800A */  lui   $a1, %hi(__osEepPifRam) # $a1, 0x800a
/* 030718 8002FB18 A0398AF0 */  sb    $t9, %lo(__osContLastCmd)($at)
/* 03071C 8002FB1C 24A5B500 */  addiu $a1, %lo(__osEepPifRam) # addiu $a1, $a1, -0x4b00
/* 030720 8002FB20 0C00C138 */  jal   __osSiRawStartDma
/* 030724 8002FB24 00002025 */   move  $a0, $zero
/* 030728 8002FB28 8FA40030 */  lw    $a0, 0x30($sp)
/* 03072C 8002FB2C 00002825 */  move  $a1, $zero
/* 030730 8002FB30 24060001 */  li    $a2, 1
/* 030734 8002FB34 0C00B540 */  jal   osRecvMesg
/* 030738 8002FB38 AFA2002C */   sw    $v0, 0x2c($sp)
/* 03073C 8002FB3C 8FA3002C */  lw    $v1, 0x2c($sp)
/* 030740 8002FB40 3C02800A */  lui   $v0, %hi(D_8009B501) # $v0, 0x800a
/* 030744 8002FB44 2442B501 */  addiu $v0, %lo(D_8009B501) # addiu $v0, $v0, -0x4aff
/* 030748 8002FB48 10600003 */  beqz  $v1, .L8002FB58_ovl0
/* 03074C 8002FB4C 3C01800A */   lui   $at, %hi(__osEepPifRam) # $at, 0x800a
/* 030750 8002FB50 1000001E */  b     .L8002FBCC_ovl0
/* 030754 8002FB54 00601025 */   move  $v0, $v1
.L8002FB58_ovl0:
/* 030758 8002FB58 A020B500 */  sb    $zero, %lo(__osEepPifRam)($at)
/* 03075C 8002FB5C 88410003 */  lwl   $at, 3($v0)
/* 030760 8002FB60 98410006 */  lwr   $at, 6($v0)
/* 030764 8002FB64 A0400002 */  sb    $zero, 2($v0)
/* 030768 8002FB68 A0400001 */  sb    $zero, 1($v0)
/* 03076C 8002FB6C A0400000 */  sb    $zero, ($v0)
/* 030770 8002FB70 8FA40034 */  lw    $a0, 0x34($sp)
/* 030774 8002FB74 27A8001C */  addiu $t0, $sp, 0x1c
/* 030778 8002FB78 AD010000 */  sw    $at, ($t0)
/* 03077C 8002FB7C 884A0007 */  lwl   $t2, 7($v0)
/* 030780 8002FB80 984A000A */  lwr   $t2, 0xa($v0)
/* 030784 8002FB84 24420003 */  addiu $v0, $v0, 3
/* 030788 8002FB88 00001025 */  move  $v0, $zero
/* 03078C 8002FB8C AD0A0004 */  sw    $t2, 4($t0)
/* 030790 8002FB90 93AB001E */  lbu   $t3, 0x1e($sp)
/* 030794 8002FB94 316E00C0 */  andi  $t6, $t3, 0xc0
/* 030798 8002FB98 000E6903 */  sra   $t5, $t6, 4
/* 03079C 8002FB9C A08D0003 */  sb    $t5, 3($a0)
/* 0307A0 8002FBA0 93AC0021 */  lbu   $t4, 0x21($sp)
/* 0307A4 8002FBA4 93B80020 */  lbu   $t8, 0x20($sp)
/* 0307A8 8002FBA8 31A300FF */  andi  $v1, $t5, 0xff
/* 0307AC 8002FBAC 000C7A00 */  sll   $t7, $t4, 8
/* 0307B0 8002FBB0 01F8C825 */  or    $t9, $t7, $t8
/* 0307B4 8002FBB4 A4990000 */  sh    $t9, ($a0)
/* 0307B8 8002FBB8 93A90022 */  lbu   $t1, 0x22($sp)
/* 0307BC 8002FBBC 10600003 */  beqz  $v1, .L8002FBCC_ovl0
/* 0307C0 8002FBC0 A0890002 */   sb    $t1, 2($a0)
/* 0307C4 8002FBC4 10000001 */  b     .L8002FBCC_ovl0
/* 0307C8 8002FBC8 00601025 */   move  $v0, $v1
.L8002FBCC_ovl0:
/* 0307CC 8002FBCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0307D0 8002FBD0 27BD0030 */  addiu $sp, $sp, 0x30
/* 0307D4 8002FBD4 03E00008 */  jr    $ra
/* 0307D8 8002FBD8 00000000 */   nop   
.size __osEepStatus, . - __osEepStatus
