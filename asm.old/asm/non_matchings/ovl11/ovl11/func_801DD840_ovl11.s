glabel func_801DD840_ovl11
/* 1E8100 801DD840 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1E8104 801DD844 44866000 */  mtc1  $a2, $f12
/* 1E8108 801DD848 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E810C 801DD84C 14A00028 */  bnez  $a1, .L801DD8F0_ovl11
/* 1E8110 801DD850 AFA40028 */   sw    $a0, 0x28($sp)
/* 1E8114 801DD854 4600610D */  trunc.w.s $f4, $f12
/* 1E8118 801DD858 24010001 */  li    $at, 1
/* 1E811C 801DD85C 27A4001C */  addiu $a0, $sp, 0x1c
/* 1E8120 801DD860 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1E8124 801DD864 440F2000 */  mfc1  $t7, $f4
/* 1E8128 801DD868 00000000 */  nop   
/* 1E812C 801DD86C 15E10020 */  bne   $t7, $at, .L801DD8F0_ovl11
/* 1E8130 801DD870 3C014270 */   li    $at, 0x42700000 # 60.000000
/* 1E8134 801DD874 44810000 */  mtc1  $at, $f0
/* 1E8138 801DD878 44803000 */  mtc1  $zero, $f6
/* 1E813C 801DD87C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1E8140 801DD880 E7A00020 */  swc1  $f0, 0x20($sp)
/* 1E8144 801DD884 E7A00024 */  swc1  $f0, 0x24($sp)
/* 1E8148 801DD888 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 1E814C 801DD88C 8F190000 */  lw    $t9, ($t8)
/* 1E8150 801DD890 3C06800E */ lui $a2, %hi(gEntitiesAngleYArray)
/* 1E8154 801DD894 24050002 */  li    $a1, 2
/* 1E8158 801DD898 00194080 */  sll   $t0, $t9, 2
/* 1E815C 801DD89C 00C83021 */  addu  $a2, $a2, $t0
/* 1E8160 801DD8A0 0C006424 */  jal   lbvector_Rotate
/* 1E8164 801DD8A4 8CC641D0 */ lw $a2, %lo(gEntitiesAngleYArray)($a2)
/* 1E8168 801DD8A8 2404001F */  li    $a0, 31
/* 1E816C 801DD8AC 00002825 */  move  $a1, $zero
/* 1E8170 801DD8B0 0C06B364 */  jal   func_801ACD90_ovl11
/* 1E8174 801DD8B4 27A6001C */   addiu $a2, $sp, 0x1c
/* 1E8178 801DD8B8 1040000B */  beqz  $v0, .L801DD8E8_ovl11
/* 1E817C 801DD8BC 3C098005 */   lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1E8180 801DD8C0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1E8184 801DD8C4 3C03800E */  lui   $v1, %hi(gEntitiesAngleYArray) # $v1, 0x800e
/* 1E8188 801DD8C8 246341D0 */  addiu $v1, %lo(gEntitiesAngleYArray) # addiu $v1, $v1, 0x41d0
/* 1E818C 801DD8CC 8D2A0000 */  lw    $t2, ($t1)
/* 1E8190 801DD8D0 00026880 */  sll   $t5, $v0, 2
/* 1E8194 801DD8D4 006D7021 */  addu  $t6, $v1, $t5
/* 1E8198 801DD8D8 000A5880 */  sll   $t3, $t2, 2
/* 1E819C 801DD8DC 006B6021 */  addu  $t4, $v1, $t3
/* 1E81A0 801DD8E0 C5880000 */  lwc1  $f8, ($t4)
/* 1E81A4 801DD8E4 E5C80000 */  swc1  $f8, ($t6)
.L801DD8E8_ovl11:
/* 1E81A8 801DD8E8 0C029D9E */  jal   play_sound
/* 1E81AC 801DD8EC 24040179 */   li    $a0, 377
.L801DD8F0_ovl11:
/* 1E81B0 801DD8F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E81B4 801DD8F4 27BD0028 */  addiu $sp, $sp, 0x28
/* 1E81B8 801DD8F8 03E00008 */  jr    $ra
/* 1E81BC 801DD8FC 00000000 */   nop   
.type func_801DD840_ovl11, @function
.size func_801DD840_ovl11, . - func_801DD840_ovl11
