glabel func_8021F8A4_ovl19
/* 23FFB4 8021F8A4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 23FFB8 8021F8A8 AFB00020 */  sw         $s0, 0x20($sp)
/* 23FFBC 8021F8AC 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 23FFC0 8021F8B0 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 23FFC4 8021F8B4 8E020000 */  lw         $v0, 0x0($s0)
/* 23FFC8 8021F8B8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 23FFCC 8021F8BC AFB60038 */  sw         $s6, 0x38($sp)
/* 23FFD0 8021F8C0 AFB50034 */  sw         $s5, 0x34($sp)
/* 23FFD4 8021F8C4 AFB40030 */  sw         $s4, 0x30($sp)
/* 23FFD8 8021F8C8 AFB3002C */  sw         $s3, 0x2C($sp)
/* 23FFDC 8021F8CC AFB20028 */  sw         $s2, 0x28($sp)
/* 23FFE0 8021F8D0 AFB10024 */  sw         $s1, 0x24($sp)
/* 23FFE4 8021F8D4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 23FFE8 8021F8D8 AFA40050 */  sw         $a0, 0x50($sp)
/* 23FFEC 8021F8DC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 23FFF0 8021F8E0 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 23FFF4 8021F8E4 44810000 */  mtc1       $at, $f0
/* 23FFF8 8021F8E8 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 23FFFC 8021F8EC 000E7880 */  sll        $t7, $t6, 2
/* 240000 8021F8F0 002F0821 */  addu       $at, $at, $t7
/* 240004 8021F8F4 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
/* 240008 8021F8F8 8C580000 */  lw         $t8, 0x0($v0)
/* 24000C 8021F8FC 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 240010 8021F900 3C040002 */  lui        $a0, (0x20071 >> 16)
/* 240014 8021F904 0018C880 */  sll        $t9, $t8, 2
/* 240018 8021F908 00390821 */  addu       $at, $at, $t9
/* 24001C 8021F90C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 240020 8021F910 8C480000 */  lw         $t0, 0x0($v0)
/* 240024 8021F914 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
.L8021F918_ovl18:
/* 240028 8021F918 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 24002C 8021F91C 00084880 */  sll        $t1, $t0, 2
/* 240030 8021F920 00290821 */  addu       $at, $at, $t1
/* 240034 8021F924 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 240038 8021F928 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24003C 8021F92C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 240040 8021F930 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 240044 8021F934 000A5880 */  sll        $t3, $t2, 2
/* 240048 8021F938 002B0821 */  addu       $at, $at, $t3
/* 24004C 8021F93C 34840071 */  ori        $a0, $a0, (0x20071 & 0xFFFF)
/* 240050 8021F940 24060010 */  addiu      $a2, $zero, 0x10
.L8021F944_ovl18:
/* 240054 8021F944 0C02A619 */  jal        func_800A9864
/* 240058 8021F948 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 24005C 8021F94C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 240060 8021F950 3C16800E */  lui        $s6, %hi(gEntitiesNextPosZArray)
/* 240064 8021F954 3C15800E */  lui        $s5, %hi(gEntitiesNextPosYArray)
/* 240068 8021F958 3C14800E */  lui        $s4, %hi(gEntitiesNextPosXArray)
.L8021F95C_ovl18:
/* 24006C 8021F95C 3C13800E */  lui        $s3, %hi(D_800E0D50)
/* 240070 8021F960 3C12800E */  lui        $s2, %hi(D_800DFBD0)
/* 240074 8021F964 4481A000 */  mtc1       $at, $f20
/* 240078 8021F968 2652FBD0 */  addiu      $s2, $s2, %lo(D_800DFBD0)
/* 24007C 8021F96C 26730D50 */  addiu      $s3, $s3, %lo(D_800E0D50)
glabel func_8021F970_ovl18
/* 240080 8021F970 269425D0 */  addiu      $s4, $s4, %lo(gEntitiesNextPosXArray)
/* 240084 8021F974 26B52790 */  addiu      $s5, $s5, %lo(gEntitiesNextPosYArray)
/* 240088 8021F978 26D62950 */  addiu      $s6, $s6, %lo(gEntitiesNextPosZArray)
/* 24008C 8021F97C 27B10044 */  addiu      $s1, $sp, 0x44
/* 240090 8021F980 8E0C0000 */  lw         $t4, 0x0($s0)
.L8021F984_ovl19:
/* 240094 8021F984 02202025 */  or         $a0, $s1, $zero
/* 240098 8021F988 8D8D0000 */  lw         $t5, 0x0($t4)
/* 24009C 8021F98C 000D7080 */  sll        $t6, $t5, 2
/* 2400A0 8021F990 026E7821 */  addu       $t7, $s3, $t6
/* 2400A4 8021F994 8DE60000 */  lw         $a2, 0x0($t7)
/* 2400A8 8021F998 0006C080 */  sll        $t8, $a2, 2
/* 2400AC 8021F99C 0258C821 */  addu       $t9, $s2, $t8
/* 2400B0 8021F9A0 8F280000 */  lw         $t0, 0x0($t9)
/* 2400B4 8021F9A4 0C02C8D0 */  jal        func_800B2340
/* 2400B8 8021F9A8 8D050004 */   lw        $a1, 0x4($t0)
/* 2400BC 8021F9AC 8E020000 */  lw         $v0, 0x0($s0)
/* 2400C0 8021F9B0 C7A40044 */  lwc1       $f4, 0x44($sp)
/* 2400C4 8021F9B4 24040001 */  addiu      $a0, $zero, 0x1
/* 2400C8 8021F9B8 8C490000 */  lw         $t1, 0x0($v0)
/* 2400CC 8021F9BC 00095080 */  sll        $t2, $t1, 2
/* 2400D0 8021F9C0 028A5821 */  addu       $t3, $s4, $t2
/* 2400D4 8021F9C4 E5640000 */  swc1       $f4, 0x0($t3)
/* 2400D8 8021F9C8 C7A60048 */  lwc1       $f6, 0x48($sp)
/* 2400DC 8021F9CC 8C4C0000 */  lw         $t4, 0x0($v0)
/* 2400E0 8021F9D0 46143200 */  add.s      $f8, $f6, $f20
/* 2400E4 8021F9D4 000C6880 */  sll        $t5, $t4, 2
/* 2400E8 8021F9D8 02AD7021 */  addu       $t6, $s5, $t5
/* 2400EC 8021F9DC E5C80000 */  swc1       $f8, 0x0($t6)
/* 2400F0 8021F9E0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 2400F4 8021F9E4 C7AA004C */  lwc1       $f10, 0x4C($sp)
/* 2400F8 8021F9E8 000FC080 */  sll        $t8, $t7, 2
/* 2400FC 8021F9EC 02D8C821 */  addu       $t9, $s6, $t8
/* 240100 8021F9F0 0C002DAF */  jal        finish_current_thread
/* 240104 8021F9F4 E72A0000 */   swc1      $f10, 0x0($t9)
/* 240108 8021F9F8 1000FFE2 */  b          .L8021F984_ovl19
/* 24010C 8021F9FC 8E0C0000 */   lw        $t4, 0x0($s0)
/* 240110 8021FA00 8FBF003C */  lw         $ra, 0x3C($sp)
/* 240114 8021FA04 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 240118 8021FA08 8FB00020 */  lw         $s0, 0x20($sp)
/* 24011C 8021FA0C 8FB10024 */  lw         $s1, 0x24($sp)
/* 240120 8021FA10 8FB20028 */  lw         $s2, 0x28($sp)
/* 240124 8021FA14 8FB3002C */  lw         $s3, 0x2C($sp)
/* 240128 8021FA18 8FB40030 */  lw         $s4, 0x30($sp)
/* 24012C 8021FA1C 8FB50034 */  lw         $s5, 0x34($sp)
/* 240130 8021FA20 8FB60038 */  lw         $s6, 0x38($sp)
/* 240134 8021FA24 03E00008 */  jr         $ra
/* 240138 8021FA28 27BD0050 */   addiu     $sp, $sp, 0x50
