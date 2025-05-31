glabel func_801A8FFC_ovl7
/* 14F06C 801A8FFC 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 14F070 801A9000 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 14F074 801A9004 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14F078 801A9008 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14F07C 801A900C AFA40018 */  sw    $a0, 0x18($sp)
/* 14F080 801A9010 8CC70000 */  lw    $a3, ($a2)
/* 14F084 801A9014 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 14F088 801A9018 3C098013 */  lui   $t1, %hi(gKirbyState) # $t1, 0x8013
/* 14F08C 801A901C 00073880 */  sll   $a3, $a3, 2
/* 14F090 801A9020 00671821 */  addu  $v1, $v1, $a3
/* 14F094 801A9024 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 14F098 801A9028 2529E7C0 */  addiu $t1, %lo(gKirbyState) # addiu $t1, $t1, -0x1840
/* 14F09C 801A902C 812F000D */  lb    $t7, 0xd($t1)
/* 14F0A0 801A9030 8C6E0088 */  lw    $t6, 0x88($v1)
/* 14F0A4 801A9034 25F80003 */  addiu $t8, $t7, 3
/* 14F0A8 801A9038 8DC2000C */  lw    $v0, 0xc($t6)
/* 14F0AC 801A903C 2F01000B */  sltiu $at, $t8, 0xb
/* 14F0B0 801A9040 0018C080 */  sll   $t8, $t8, 2
/* 14F0B4 801A9044 8C450000 */  lw    $a1, ($v0)
/* 14F0B8 801A9048 1020001A */  beqz  $at, .L801A90B4_ovl7
/* 14F0BC 801A904C 8C480004 */   lw    $t0, 4($v0)
/* 14F0C0 801A9050 3C01801D */ lui $at, %hi(jtbl_801CE090)
/* 14F0C4 801A9054 00380821 */  addu  $at, $at, $t8
/* 14F0C8 801A9058 8C38E090 */ lw $t8, %lo(jtbl_801CE090)($at)
/* 14F0CC 801A905C 03000008 */  jr    $t8
/* 14F0D0 801A9060 00000000 */   nop   
glabel L801A9064_ovl7
/* 14F0D4 801A9064 10000027 */  b     .L801A9104_ovl7
/* 14F0D8 801A9068 24040001 */   li    $a0, 1
glabel L801A906C_ovl7
/* 14F0DC 801A906C 10000025 */  b     .L801A9104_ovl7
/* 14F0E0 801A9070 24040002 */   li    $a0, 2
glabel L801A9074_ovl7
/* 14F0E4 801A9074 C5040010 */  lwc1  $f4, 0x10($t0)
/* 14F0E8 801A9078 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14F0EC 801A907C 00270821 */  addu  $at, $at, $a3
/* 14F0F0 801A9080 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 14F0F4 801A9084 8CD90000 */  lw    $t9, ($a2)
/* 14F0F8 801A9088 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14F0FC 801A908C 3C05801B */  lui   $a1, %hi(D_801A96C4) # $a1, 0x801b
/* 14F100 801A9090 00195080 */  sll   $t2, $t9, 2
/* 14F104 801A9094 008A2021 */  addu  $a0, $a0, $t2
/* 14F108 801A9098 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14F10C 801A909C 0C02C7B2 */  jal   assign_new_process_entry
/* 14F110 801A90A0 24A596C4 */   addiu $a1, %lo(D_801A96C4) # addiu $a1, $a1, -0x693c
/* 14F114 801A90A4 1000006D */  b     .L801A925C_ovl7
/* 14F118 801A90A8 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L801A90AC_ovl7
/* 14F11C 801A90AC 10000015 */  b     .L801A9104_ovl7
/* 14F120 801A90B0 24040003 */   li    $a0, 3
glabel L801A90B4_ovl7
.L801A90B4_ovl7:
/* 14F124 801A90B4 C4A00010 */  lwc1  $f0, 0x10($a1)
/* 14F128 801A90B8 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14F12C 801A90BC 00270821 */  addu  $at, $at, $a3
/* 14F130 801A90C0 E420A6E0 */ swc1 $f0, %lo(D_800EA6E0)($at)
/* 14F134 801A90C4 8CCB0000 */  lw    $t3, ($a2)
/* 14F138 801A90C8 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 14F13C 801A90CC 00002025 */  move  $a0, $zero
/* 14F140 801A90D0 000B6080 */  sll   $t4, $t3, 2
/* 14F144 801A90D4 002C0821 */  addu  $at, $at, $t4
/* 14F148 801A90D8 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 14F14C 801A90DC 8CCD0000 */  lw    $t5, ($a2)
/* 14F150 801A90E0 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 14F154 801A90E4 000D7080 */  sll   $t6, $t5, 2
/* 14F158 801A90E8 002E0821 */  addu  $at, $at, $t6
/* 14F15C 801A90EC E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 14F160 801A90F0 8CCF0000 */  lw    $t7, ($a2)
/* 14F164 801A90F4 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 14F168 801A90F8 000FC080 */  sll   $t8, $t7, 2
/* 14F16C 801A90FC 00380821 */  addu  $at, $at, $t8
/* 14F170 801A9100 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
.L801A9104_ovl7:
/* 14F174 801A9104 853900B4 */  lh    $t9, 0xb4($t1)
/* 14F178 801A9108 2B210002 */  slti  $at, $t9, 2
/* 14F17C 801A910C 54200015 */  bnezl $at, .L801A9164_ovl7
/* 14F180 801A9110 24010001 */   li    $at, 1
/* 14F184 801A9114 8CC30000 */  lw    $v1, ($a2)
/* 14F188 801A9118 3C0A800E */ lui $t2, %hi(D_800E7730)
/* 14F18C 801A911C 24010006 */  li    $at, 6
/* 14F190 801A9120 01435021 */  addu  $t2, $t2, $v1
/* 14F194 801A9124 914A7730 */ lbu $t2, %lo(D_800E7730)($t2)
/* 14F198 801A9128 3C02800E */ lui $v0, %hi(D_800E77A0)
/* 14F19C 801A912C 00035840 */  sll   $t3, $v1, 1
/* 14F1A0 801A9130 1541000A */  bne   $t2, $at, .L801A915C_ovl7
/* 14F1A4 801A9134 004B1021 */   addu  $v0, $v0, $t3
/* 14F1A8 801A9138 944277A0 */ lhu $v0, %lo(D_800E77A0)($v0)
/* 14F1AC 801A913C 28410008 */  slti  $at, $v0, 8
/* 14F1B0 801A9140 14200006 */  bnez  $at, .L801A915C_ovl7
/* 14F1B4 801A9144 2841002C */   slti  $at, $v0, 0x2c
/* 14F1B8 801A9148 10200004 */  beqz  $at, .L801A915C_ovl7
/* 14F1BC 801A914C 3C0C800D */   lui   $t4, %hi(D_800D7090) # $t4, 0x800d
/* 14F1C0 801A9150 8D8C7090 */  lw    $t4, %lo(D_800D7090)($t4)
/* 14F1C4 801A9154 506C0003 */  beql  $v1, $t4, .L801A9164_ovl7
/* 14F1C8 801A9158 24010001 */   li    $at, 1
.L801A915C_ovl7:
/* 14F1CC 801A915C 24040002 */  li    $a0, 2
/* 14F1D0 801A9160 24010001 */  li    $at, 1
.L801A9164_ovl7:
/* 14F1D4 801A9164 54810031 */  bnel  $a0, $at, .L801A922C_ovl7
/* 14F1D8 801A9168 24010002 */   li    $at, 2
/* 14F1DC 801A916C 8CC30000 */  lw    $v1, ($a2)
/* 14F1E0 801A9170 3C0D800E */ lui $t5, %hi(D_800E7730)
/* 14F1E4 801A9174 24010006 */  li    $at, 6
/* 14F1E8 801A9178 01A36821 */  addu  $t5, $t5, $v1
/* 14F1EC 801A917C 91AD7730 */ lbu $t5, %lo(D_800E7730)($t5)
/* 14F1F0 801A9180 3C02800E */ lui $v0, %hi(D_800E77A0)
/* 14F1F4 801A9184 00037040 */  sll   $t6, $v1, 1
/* 14F1F8 801A9188 15A10015 */  bne   $t5, $at, .L801A91E0_ovl7
/* 14F1FC 801A918C 004E1021 */   addu  $v0, $v0, $t6
/* 14F200 801A9190 944277A0 */ lhu $v0, %lo(D_800E77A0)($v0)
/* 14F204 801A9194 28410008 */  slti  $at, $v0, 8
/* 14F208 801A9198 14200011 */  bnez  $at, .L801A91E0_ovl7
/* 14F20C 801A919C 2841002C */   slti  $at, $v0, 0x2c
/* 14F210 801A91A0 50200010 */  beql  $at, $zero, .L801A91E4_ovl7
/* 14F214 801A91A4 852A00B4 */   lh    $t2, 0xb4($t1)
/* 14F218 801A91A8 912F0008 */  lbu   $t7, 8($t1)
/* 14F21C 801A91AC A52000B4 */  sh    $zero, 0xb4($t1)
/* 14F220 801A91B0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14F224 801A91B4 55E0000B */  bnezl $t7, .L801A91E4_ovl7
/* 14F228 801A91B8 852A00B4 */   lh    $t2, 0xb4($t1)
/* 14F22C 801A91BC 8CD80000 */  lw    $t8, ($a2)
/* 14F230 801A91C0 3C05801B */  lui   $a1, %hi(D_801AA914) # $a1, 0x801b
/* 14F234 801A91C4 24A5A914 */  addiu $a1, %lo(D_801AA914) # addiu $a1, $a1, -0x56ec
/* 14F238 801A91C8 0018C880 */  sll   $t9, $t8, 2
/* 14F23C 801A91CC 00992021 */  addu  $a0, $a0, $t9
/* 14F240 801A91D0 0C02C7B2 */  jal   assign_new_process_entry
/* 14F244 801A91D4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14F248 801A91D8 10000020 */  b     .L801A925C_ovl7
/* 14F24C 801A91DC 8FBF0014 */   lw    $ra, 0x14($sp)
.L801A91E0_ovl7:
/* 14F250 801A91E0 852A00B4 */  lh    $t2, 0xb4($t1)
.L801A91E4_ovl7:
/* 14F254 801A91E4 29410002 */  slti  $at, $t2, 2
/* 14F258 801A91E8 5020001C */  beql  $at, $zero, .L801A925C_ovl7
/* 14F25C 801A91EC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14F260 801A91F0 912B0008 */  lbu   $t3, 8($t1)
/* 14F264 801A91F4 A52000B4 */  sh    $zero, 0xb4($t1)
/* 14F268 801A91F8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14F26C 801A91FC 55600017 */  bnezl $t3, .L801A925C_ovl7
/* 14F270 801A9200 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14F274 801A9204 8CCC0000 */  lw    $t4, ($a2)
/* 14F278 801A9208 3C05801B */  lui   $a1, %hi(D_801AA914) # $a1, 0x801b
/* 14F27C 801A920C 24A5A914 */  addiu $a1, %lo(D_801AA914) # addiu $a1, $a1, -0x56ec
/* 14F280 801A9210 000C6880 */  sll   $t5, $t4, 2
/* 14F284 801A9214 008D2021 */  addu  $a0, $a0, $t5
/* 14F288 801A9218 0C02C7B2 */  jal   assign_new_process_entry
/* 14F28C 801A921C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14F290 801A9220 1000000E */  b     .L801A925C_ovl7
/* 14F294 801A9224 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14F298 801A9228 24010002 */  li    $at, 2
.L801A922C_ovl7:
/* 14F29C 801A922C 54810006 */  bnel  $a0, $at, .L801A9248_ovl7
/* 14F2A0 801A9230 24010003 */   li    $at, 3
/* 14F2A4 801A9234 0C067656 */  jal   func_8019D958_ovl7
/* 14F2A8 801A9238 94C40002 */   lhu   $a0, 2($a2)
/* 14F2AC 801A923C 10000007 */  b     .L801A925C_ovl7
/* 14F2B0 801A9240 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14F2B4 801A9244 24010003 */  li    $at, 3
.L801A9248_ovl7:
/* 14F2B8 801A9248 54810004 */  bnel  $a0, $at, .L801A925C_ovl7
/* 14F2BC 801A924C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14F2C0 801A9250 0C067656 */  jal   func_8019D958_ovl7
/* 14F2C4 801A9254 94C40002 */   lhu   $a0, 2($a2)
/* 14F2C8 801A9258 8FBF0014 */  lw    $ra, 0x14($sp)
.L801A925C_ovl7:
/* 14F2CC 801A925C 27BD0018 */  addiu $sp, $sp, 0x18
/* 14F2D0 801A9260 03E00008 */  jr    $ra
/* 14F2D4 801A9264 00000000 */   nop   
.type func_801A8FFC_ovl7, @function
.size func_801A8FFC_ovl7, . - func_801A8FFC_ovl7
