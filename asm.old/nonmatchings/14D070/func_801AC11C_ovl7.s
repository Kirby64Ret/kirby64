glabel func_801AC11C_ovl7
/* 15218C 801AC11C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 152190 801AC120 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 152194 801AC124 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 152198 801AC128 AFBF0024 */  sw         $ra, 0x24($sp)
/* 15219C 801AC12C AFB00020 */  sw         $s0, 0x20($sp)
/* 1521A0 801AC130 AFA40028 */  sw         $a0, 0x28($sp)
/* 1521A4 801AC134 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1521A8 801AC138 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 1521AC 801AC13C 000FC080 */  sll        $t8, $t7, 2
/* 1521B0 801AC140 02188021 */  addu       $s0, $s0, $t8
/* 1521B4 801AC144 0C06B07D */  jal        func_801AC1F4_ovl7
/* 1521B8 801AC148 8E101B50 */   lw        $s0, %lo(D_800E1B50)($s0)
/* 1521BC 801AC14C 92190040 */  lbu        $t9, 0x40($s0)
/* 1521C0 801AC150 24010001 */  addiu      $at, $zero, 0x1
/* 1521C4 801AC154 13210020 */  beq        $t9, $at, .L801AC1D8_ovl7
/* 1521C8 801AC158 00000000 */   nop
/* 1521CC 801AC15C 8E020094 */  lw         $v0, 0x94($s0)
/* 1521D0 801AC160 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 1521D4 801AC164 8C44001C */  lw         $a0, 0x1C($v0)
/* 1521D8 801AC168 50810005 */  beql       $a0, $at, .L801AC180_ovl7
/* 1521DC 801AC16C 44800000 */   mtc1      $zero, $f0
/* 1521E0 801AC170 0C029D9E */  jal        play_sound
/* 1521E4 801AC174 00000000 */   nop
/* 1521E8 801AC178 8E020094 */  lw         $v0, 0x94($s0)
/* 1521EC 801AC17C 44800000 */  mtc1       $zero, $f0
.L801AC180_ovl7:
/* 1521F0 801AC180 8C450018 */  lw         $a1, 0x18($v0)
/* 1521F4 801AC184 00002025 */  or         $a0, $zero, $zero
/* 1521F8 801AC188 44060000 */  mfc1       $a2, $f0
/* 1521FC 801AC18C 44070000 */  mfc1       $a3, $f0
/* 152200 801AC190 0C03F55C */  jal        func_800FD570
/* 152204 801AC194 E7A00010 */   swc1      $f0, 0x10($sp)
/* 152208 801AC198 8E020094 */  lw         $v0, 0x94($s0)
/* 15220C 801AC19C 1040000E */  beqz       $v0, .L801AC1D8_ovl7
/* 152210 801AC1A0 00000000 */   nop
/* 152214 801AC1A4 8C430018 */  lw         $v1, 0x18($v0)
/* 152218 801AC1A8 24010006 */  addiu      $at, $zero, 0x6
/* 15221C 801AC1AC 54610006 */  bnel       $v1, $at, .L801AC1C8_ovl7
/* 152220 801AC1B0 24010007 */   addiu     $at, $zero, 0x7
/* 152224 801AC1B4 0C069075 */  jal        func_801A41D4_ovl7
/* 152228 801AC1B8 8FA40028 */   lw        $a0, 0x28($sp)
/* 15222C 801AC1BC 8E080094 */  lw         $t0, 0x94($s0)
/* 152230 801AC1C0 8D030018 */  lw         $v1, 0x18($t0)
/* 152234 801AC1C4 24010007 */  addiu      $at, $zero, 0x7
.L801AC1C8_ovl7:
/* 152238 801AC1C8 14610003 */  bne        $v1, $at, .L801AC1D8_ovl7
/* 15223C 801AC1CC 00000000 */   nop
/* 152240 801AC1D0 0C0690B6 */  jal        func_801A42D8_ovl7
/* 152244 801AC1D4 8FA40028 */   lw        $a0, 0x28($sp)
.L801AC1D8_ovl7:
/* 152248 801AC1D8 0C06B0B6 */  jal        func_801AC2D8_ovl7
/* 15224C 801AC1DC 8FA40028 */   lw        $a0, 0x28($sp)
/* 152250 801AC1E0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 152254 801AC1E4 8FB00020 */  lw         $s0, 0x20($sp)
/* 152258 801AC1E8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 15225C 801AC1EC 03E00008 */  jr         $ra
/* 152260 801AC1F0 00000000 */   nop
