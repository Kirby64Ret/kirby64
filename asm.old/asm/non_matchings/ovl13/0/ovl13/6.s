glabel func_801DC8CC_ovl13 # 6
/* 1F484C 801DC8CC 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 1F4850 801DC8D0 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 1F4854 801DC8D4 3C01801E */  lui         $at, %hi(D_801E5CD4_ovl13)
/* 1F4858 801DC8D8 AFBE0048 */  sw          $fp, 0x48($sp)
/* 1F485C 801DC8DC AFB70044 */  sw          $s7, 0x44($sp)
/* 1F4860 801DC8E0 AFB5003C */  sw          $s5, 0x3C($sp)
/* 1F4864 801DC8E4 AFB40038 */  sw          $s4, 0x38($sp)
/* 1F4868 801DC8E8 AFB20030 */  sw          $s2, 0x30($sp)
/* 1F486C 801DC8EC C4365CD4 */  lwc1        $f22, %lo(D_801E5CD4_ovl13)($at)
/* 1F4870 801DC8F0 AFB60040 */  sw          $s6, 0x40($sp)
/* 1F4874 801DC8F4 AFB30034 */  sw          $s3, 0x34($sp)
/* 1F4878 801DC8F8 AFB1002C */  sw          $s1, 0x2C($sp)
/* 1F487C 801DC8FC AFB00028 */  sw          $s0, 0x28($sp)
/* 1F4880 801DC900 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 1F4884 801DC904 3C01801E */  lui         $at, %hi(D_801E5CD8_ovl13)
/* 1F4888 801DC908 3C12800E */  lui         $s2, %hi(D_800DD788)
/* 1F488C 801DC90C 3C14800E */  lui         $s4, %hi(D_800E7730)
/* 1F4890 801DC910 3C15800E */  lui         $s5, %hi(D_800E7B20)
/* 1F4894 801DC914 3C17800F */  lui         $s7, %hi(D_800E83E0)
/* 1F4898 801DC918 3C1E8005 */  lui         $fp, %hi(D_8004A7C4)
/* 1F489C 801DC91C AFBF004C */  sw          $ra, 0x4C($sp)
/* 1F48A0 801DC920 AFA40050 */  sw          $a0, 0x50($sp)
/* 1F48A4 801DC924 2403FFFF */  addiu       $v1, $zero, -0x1
/* 1F48A8 801DC928 27DEA7C4 */  addiu       $fp, $fp, %lo(D_8004A7C4)
/* 1F48AC 801DC92C 26F783E0 */  addiu       $s7, $s7, %lo(D_800E83E0)
/* 1F48B0 801DC930 26B57B20 */  addiu       $s5, $s5, %lo(D_800E7B20)
/* 1F48B4 801DC934 26947730 */  addiu       $s4, $s4, %lo(D_800E7730)
/* 1F48B8 801DC938 2652D788 */  addiu       $s2, $s2, %lo(D_800DD788)
/* 1F48BC 801DC93C C4345CD8 */  lwc1        $f20, %lo(D_801E5CD8_ovl13)($at)
/* 1F48C0 801DC940 2410001E */  addiu       $s0, $zero, 0x1E
/* 1F48C4 801DC944 24110078 */  addiu       $s1, $zero, 0x78
/* 1F48C8 801DC948 2413FFFF */  addiu       $s3, $zero, -0x1
/* 1F48CC 801DC94C 24160001 */  addiu       $s6, $zero, 0x1
glabel L801DC950_ovl13
/* 1F48D0 801DC950 8E4E0000 */  lw          $t6, 0x0($s2)
/* 1F48D4 801DC954 02907821 */  addu        $t7, $s4, $s0
/* 1F48D8 801DC958 526E0026 */  beql        $s3, $t6, L801DC9F4_ovl13
/* 1F48DC 801DC95C 26100001 */   addiu      $s0, $s0, 0x1
/* 1F48E0 801DC960 91F80000 */  lbu         $t8, 0x0($t7)
/* 1F48E4 801DC964 02B1C821 */  addu        $t9, $s5, $s1
/* 1F48E8 801DC968 57000022 */  bnel        $t8, $zero, L801DC9F4_ovl13
/* 1F48EC 801DC96C 26100001 */   addiu      $s0, $s0, 0x1
/* 1F48F0 801DC970 C7200000 */  lwc1        $f0, 0x0($t9)
/* 1F48F4 801DC974 4600A03C */  c.lt.s      $f20, $f0
/* 1F48F8 801DC978 00000000 */  nop
/* 1F48FC 801DC97C 4502001D */  bc1fl       L801DC9F4_ovl13
/* 1F4900 801DC980 26100001 */   addiu      $s0, $s0, 0x1
/* 1F4904 801DC984 4616003C */  c.lt.s      $f0, $f22
/* 1F4908 801DC988 02F14021 */  addu        $t0, $s7, $s1
/* 1F490C 801DC98C 45020019 */  bc1fl       L801DC9F4_ovl13
/* 1F4910 801DC990 26100001 */   addiu      $s0, $s0, 0x1
/* 1F4914 801DC994 8D090000 */  lw          $t1, 0x0($t0)
/* 1F4918 801DC998 3C0E800E */  lui         $t6, %hi(D_800DF150)
/* 1F491C 801DC99C 3C0C800E */  lui         $t4, %hi(D_800E0D50)
/* 1F4920 801DC9A0 12C9000B */  beq         $s6, $t1, L801DC9D0_ovl13
/* 1F4924 801DC9A4 01D17021 */   addu       $t6, $t6, $s1
/* 1F4928 801DC9A8 8FCA0000 */  lw          $t2, 0x0($fp)
/* 1F492C 801DC9AC 01916021 */  addu        $t4, $t4, $s1
/* 1F4930 801DC9B0 8D8C0D50 */  lw          $t4, %lo(D_800E0D50)($t4)
/* 1F4934 801DC9B4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F4938 801DC9B8 556C000E */  bnel        $t3, $t4, L801DC9F4_ovl13
/* 1F493C 801DC9BC 26100001 */   addiu      $s0, $s0, 0x1
/* 1F4940 801DC9C0 0C077290 */  jal         func_801DCA40_ovl13
/* 1F4944 801DC9C4 02002025 */   move       $a0, $s0
/* 1F4948 801DC9C8 10000009 */  b           L801DC9F0_ovl13
/* 1F494C 801DC9CC 00401825 */   move       $v1, $v0
glabel L801DC9D0_ovl13
/* 1F4950 801DC9D0 8DCEF150 */  lw          $t6, %lo(D_800DF150)($t6)
/* 1F4954 801DC9D4 3C0D801A */  lui         $t5, %hi(D_801A4C0C)
/* 1F4958 801DC9D8 25AD4C0C */  addiu       $t5, $t5, %lo(D_801A4C0C)
/* 1F495C 801DC9DC 55AE0005 */  bnel        $t5, $t6, L801DC9F4_ovl13
/* 1F4960 801DC9E0 26100001 */   addiu      $s0, $s0, 0x1
/* 1F4964 801DC9E4 0C077290 */  jal         func_801DCA40_ovl13
/* 1F4968 801DC9E8 02002025 */   move       $a0, $s0
/* 1F496C 801DC9EC 00401825 */  move        $v1, $v0
glabel L801DC9F0_ovl13
/* 1F4970 801DC9F0 26100001 */  addiu       $s0, $s0, 0x1
glabel L801DC9F4_ovl13
/* 1F4974 801DC9F4 2401003C */  addiu       $at, $zero, 0x3C
/* 1F4978 801DC9F8 26310004 */  addiu       $s1, $s1, 0x4
/* 1F497C 801DC9FC 1601FFD4 */  bne         $s0, $at, L801DC950_ovl13
/* 1F4980 801DCA00 26520004 */   addiu      $s2, $s2, 0x4
/* 1F4984 801DCA04 8FBF004C */  lw          $ra, 0x4C($sp)
/* 1F4988 801DCA08 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 1F498C 801DCA0C D7B60020 */  ldc1        $f22, 0x20($sp)
/* 1F4990 801DCA10 8FB00028 */  lw          $s0, 0x28($sp)
/* 1F4994 801DCA14 8FB1002C */  lw          $s1, 0x2C($sp)
/* 1F4998 801DCA18 8FB20030 */  lw          $s2, 0x30($sp)
/* 1F499C 801DCA1C 8FB30034 */  lw          $s3, 0x34($sp)
/* 1F49A0 801DCA20 8FB40038 */  lw          $s4, 0x38($sp)
/* 1F49A4 801DCA24 8FB5003C */  lw          $s5, 0x3C($sp)
/* 1F49A8 801DCA28 8FB60040 */  lw          $s6, 0x40($sp)
/* 1F49AC 801DCA2C 8FB70044 */  lw          $s7, 0x44($sp)
/* 1F49B0 801DCA30 8FBE0048 */  lw          $fp, 0x48($sp)
/* 1F49B4 801DCA34 27BD0050 */  addiu       $sp, $sp, 0x50
/* 1F49B8 801DCA38 03E00008 */  jr          $ra
/* 1F49BC 801DCA3C 00601025 */   move       $v0, $v1
.type func_801DC8CC_ovl13, @function

.size func_801DC8CC_ovl13, . - func_801DC8CC_ovl13
.section .late_rodata
glabel D_801E5CD4_ovl13
/* 1FDC54 801E5CD4 */ .word 0x461C3C00

glabel D_801E5CD8_ovl13
/* 1FDC58 801E5CD8 */ .word 0x3E4CCCCD

