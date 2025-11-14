glabel func_8000F980
/* 010580 8000F980 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 010584 8000F984 AFB60038 */  sw    $s6, 0x38($sp)
/* 010588 8000F988 AFB3002C */  sw    $s3, 0x2c($sp)
/* 01058C 8000F98C AFB10024 */  sw    $s1, 0x24($sp)
/* 010590 8000F990 00A08825 */  move  $s1, $a1
/* 010594 8000F994 00C09825 */  move  $s3, $a2
/* 010598 8000F998 30F600FF */  andi  $s6, $a3, 0xff
/* 01059C 8000F99C AFBF0044 */  sw    $ra, 0x44($sp)
/* 0105A0 8000F9A0 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0105A4 8000F9A4 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0105A8 8000F9A8 AFB50034 */  sw    $s5, 0x34($sp)
/* 0105AC 8000F9AC AFB40030 */  sw    $s4, 0x30($sp)
/* 0105B0 8000F9B0 AFB20028 */  sw    $s2, 0x28($sp)
/* 0105B4 8000F9B4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0105B8 8000F9B8 AFA400A8 */  sw    $a0, 0xa8($sp)
/* 0105BC 8000F9BC AFA700B4 */  sw    $a3, 0xb4($sp)
/* 0105C0 8000F9C0 AFA00054 */  sw    $zero, 0x54($sp)
/* 0105C4 8000F9C4 AFA00058 */  sw    $zero, 0x58($sp)
/* 0105C8 8000F9C8 27A2005C */  addiu $v0, $sp, 0x5c
/* 0105CC 8000F9CC 27A3009C */  addiu $v1, $sp, 0x9c
.L8000F9D0_ovl0:
/* 0105D0 8000F9D0 24420010 */  addiu $v0, $v0, 0x10
/* 0105D4 8000F9D4 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 0105D8 8000F9D8 AC40FFF8 */  sw    $zero, -8($v0)
/* 0105DC 8000F9DC AC40FFFC */  sw    $zero, -4($v0)
/* 0105E0 8000F9E0 1443FFFB */  bne   $v0, $v1, .L8000F9D0_ovl0
/* 0105E4 8000F9E4 AC40FFF0 */   sw    $zero, -0x10($v0)
/* 0105E8 8000F9E8 8E220000 */  lw    $v0, ($s1)
/* 0105EC 8000F9EC 241E0012 */  li    $fp, 18
/* 0105F0 8000F9F0 27B70054 */  addiu $s7, $sp, 0x54
/* 0105F4 8000F9F4 13C2003A */  beq   $fp, $v0, .L8000FAE0_ovl0
/* 0105F8 8000F9F8 93B500BF */   lbu   $s5, 0xbf($sp)
/* 0105FC 8000F9FC 93B400BB */  lbu   $s4, 0xbb($sp)
/* 010600 8000FA00 30430FFF */  andi  $v1, $v0, 0xfff
.L8000FA04_ovl0:
/* 010604 8000FA04 10600008 */  beqz  $v1, .L8000FA28_ovl0
/* 010608 8000FA08 00037080 */   sll   $t6, $v1, 2
/* 01060C 8000FA0C 02EE9021 */  addu  $s2, $s7, $t6
/* 010610 8000FA10 8E44FFFC */  lw    $a0, -4($s2)
/* 010614 8000FA14 0C002757 */  jal   func_80009D5C
/* 010618 8000FA18 8E250004 */   lw    $a1, 4($s1)
/* 01061C 8000FA1C AE420000 */  sw    $v0, ($s2)
/* 010620 8000FA20 10000006 */  b     .L8000FA3C_ovl0
/* 010624 8000FA24 00408025 */   move  $s0, $v0
.L8000FA28_ovl0:
/* 010628 8000FA28 8FA400A8 */  lw    $a0, 0xa8($sp)
/* 01062C 8000FA2C 0C00270E */  jal   func_80009C38
/* 010630 8000FA30 8E250004 */   lw    $a1, 4($s1)
/* 010634 8000FA34 AFA20054 */  sw    $v0, 0x54($sp)
/* 010638 8000FA38 00408025 */  move  $s0, $v0
.L8000FA3C_ovl0:
/* 01063C 8000FA3C 8E220000 */  lw    $v0, ($s1)
/* 010640 8000FA40 02002025 */  move  $a0, $s0
/* 010644 8000FA44 32C500FF */  andi  $a1, $s6, 0xff
/* 010648 8000FA48 3042F000 */  andi  $v0, $v0, 0xf000
/* 01064C 8000FA4C 10400009 */  beqz  $v0, .L8000FA74_ovl0
/* 010650 8000FA50 328600FF */   andi  $a2, $s4, 0xff
/* 010654 8000FA54 02002025 */  move  $a0, $s0
/* 010658 8000FA58 32C500FF */  andi  $a1, $s6, 0xff
/* 01065C 8000FA5C 328600FF */  andi  $a2, $s4, 0xff
/* 010660 8000FA60 32A700FF */  andi  $a3, $s5, 0xff
/* 010664 8000FA64 0C003DD5 */  jal   func_8000F754
/* 010668 8000FA68 AFA20010 */   sw    $v0, 0x10($sp)
/* 01066C 8000FA6C 10000004 */  b     .L8000FA80_ovl0
/* 010670 8000FA70 8E380008 */   lw    $t8, 8($s1)
.L8000FA74_ovl0:
/* 010674 8000FA74 0C003DBB */  jal   func_8000F6EC
/* 010678 8000FA78 32A700FF */   andi  $a3, $s5, 0xff
/* 01067C 8000FA7C 8E380008 */  lw    $t8, 8($s1)
.L8000FA80_ovl0:
/* 010680 8000FA80 AE18001C */  sw    $t8, 0x1c($s0)
/* 010684 8000FA84 8E2F000C */  lw    $t7, 0xc($s1)
/* 010688 8000FA88 AE0F0020 */  sw    $t7, 0x20($s0)
/* 01068C 8000FA8C 8E380010 */  lw    $t8, 0x10($s1)
/* 010690 8000FA90 AE180024 */  sw    $t8, 0x24($s0)
/* 010694 8000FA94 8E280014 */  lw    $t0, 0x14($s1)
/* 010698 8000FA98 AE080030 */  sw    $t0, 0x30($s0)
/* 01069C 8000FA9C 8E390018 */  lw    $t9, 0x18($s1)
/* 0106A0 8000FAA0 AE190034 */  sw    $t9, 0x34($s0)
/* 0106A4 8000FAA4 8E28001C */  lw    $t0, 0x1c($s1)
/* 0106A8 8000FAA8 AE080038 */  sw    $t0, 0x38($s0)
/* 0106AC 8000FAAC 8E2A0020 */  lw    $t2, 0x20($s1)
/* 0106B0 8000FAB0 AE0A0040 */  sw    $t2, 0x40($s0)
/* 0106B4 8000FAB4 8E290024 */  lw    $t1, 0x24($s1)
/* 0106B8 8000FAB8 AE090044 */  sw    $t1, 0x44($s0)
/* 0106BC 8000FABC 8E2A0028 */  lw    $t2, 0x28($s1)
/* 0106C0 8000FAC0 12600003 */  beqz  $s3, .L8000FAD0_ovl0
/* 0106C4 8000FAC4 AE0A0048 */   sw    $t2, 0x48($s0)
/* 0106C8 8000FAC8 AE700000 */  sw    $s0, ($s3)
/* 0106CC 8000FACC 26730004 */  addiu $s3, $s3, 4
.L8000FAD0_ovl0:
/* 0106D0 8000FAD0 8E22002C */  lw    $v0, 0x2c($s1)
/* 0106D4 8000FAD4 2631002C */  addiu $s1, $s1, 0x2c
/* 0106D8 8000FAD8 57C2FFCA */  bnel  $fp, $v0, .L8000FA04_ovl0
/* 0106DC 8000FADC 30430FFF */   andi  $v1, $v0, 0xfff
.L8000FAE0_ovl0:
/* 0106E0 8000FAE0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0106E4 8000FAE4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0106E8 8000FAE8 8FB10024 */  lw    $s1, 0x24($sp)
/* 0106EC 8000FAEC 8FB20028 */  lw    $s2, 0x28($sp)
/* 0106F0 8000FAF0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0106F4 8000FAF4 8FB40030 */  lw    $s4, 0x30($sp)
/* 0106F8 8000FAF8 8FB50034 */  lw    $s5, 0x34($sp)
/* 0106FC 8000FAFC 8FB60038 */  lw    $s6, 0x38($sp)
/* 010700 8000FB00 8FB7003C */  lw    $s7, 0x3c($sp)
/* 010704 8000FB04 8FBE0040 */  lw    $fp, 0x40($sp)
/* 010708 8000FB08 03E00008 */  jr    $ra
/* 01070C 8000FB0C 27BD00A8 */   addiu $sp, $sp, 0xa8
.type func_8000F980, @function
.size func_8000F980, . - func_8000F980
