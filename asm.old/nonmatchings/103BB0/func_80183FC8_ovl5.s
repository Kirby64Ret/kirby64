glabel func_80183FC8_ovl5
/* 12B438 80183FC8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12B43C 80183FCC AFB60030 */  sw         $s6, 0x30($sp)
/* 12B440 80183FD0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 12B444 80183FD4 AFB40028 */  sw         $s4, 0x28($sp)
/* 12B448 80183FD8 AFB20020 */  sw         $s2, 0x20($sp)
/* 12B44C 80183FDC AFB30024 */  sw         $s3, 0x24($sp)
/* 12B450 80183FE0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 12B454 80183FE4 AFB00018 */  sw         $s0, 0x18($sp)
/* 12B458 80183FE8 3C12800F */  lui        $s2, %hi(D_800E98E0)
/* 12B45C 80183FEC 3C14800F */  lui        $s4, %hi(D_800E9AA0)
/* 12B460 80183FF0 3C15800F */  lui        $s5, %hi(D_800E9C60)
glabel func_80183FF4_ovl3
/* 12B464 80183FF4 3C168019 */  lui        $s6, %hi(D_8018EE18_ovl5)
/* 12B468 80183FF8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 12B46C 80183FFC 26D6EE18 */  addiu      $s6, $s6, %lo(D_8018EE18_ovl5)
/* 12B470 80184000 26B59C60 */  addiu      $s5, $s5, %lo(D_800E9C60)
/* 12B474 80184004 26949AA0 */  addiu      $s4, $s4, %lo(D_800E9AA0)
/* 12B478 80184008 265298E0 */  addiu      $s2, $s2, %lo(D_800E98E0)
/* 12B47C 8018400C 00008025 */  or         $s0, $zero, $zero
/* 12B480 80184010 24110009 */  addiu      $s1, $zero, 0x9
/* 12B484 80184014 24130002 */  addiu      $s3, $zero, 0x2
.L80184018_ovl5:
/* 12B488 80184018 2404000F */  addiu      $a0, $zero, 0xF
/* 12B48C 8018401C 00002825 */  or         $a1, $zero, $zero
/* 12B490 80184020 0C02BB1C */  jal        func_800AEC70
/* 12B494 80184024 24060070 */   addiu     $a2, $zero, 0x70
/* 12B498 80184028 00021880 */  sll        $v1, $v0, 2
/* 12B49C 8018402C 02437021 */  addu       $t6, $s2, $v1
/* 12B4A0 80184030 ADD30000 */  sw         $s3, 0x0($t6)
/* 12B4A4 80184034 02837821 */  addu       $t7, $s4, $v1
/* 12B4A8 80184038 ADF00000 */  sw         $s0, 0x0($t7)
/* 12B4AC 8018403C 92D80000 */  lbu        $t8, 0x0($s6)
/* 12B4B0 80184040 02A34821 */  addu       $t1, $s5, $v1
/* 12B4B4 80184044 03110019 */  multu      $t8, $s1
/* 12B4B8 80184048 0000C812 */  mflo       $t9
/* 12B4BC 8018404C 03304021 */  addu       $t0, $t9, $s0
/* 12B4C0 80184050 26100001 */  addiu      $s0, $s0, 0x1
/* 12B4C4 80184054 1611FFF0 */  bne        $s0, $s1, .L80184018_ovl5
/* 12B4C8 80184058 AD280000 */   sw        $t0, 0x0($t1)
/* 12B4CC 8018405C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 12B4D0 80184060 8FB00018 */  lw         $s0, 0x18($sp)
/* 12B4D4 80184064 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12B4D8 80184068 8FB20020 */  lw         $s2, 0x20($sp)
/* 12B4DC 8018406C 8FB30024 */  lw         $s3, 0x24($sp)
/* 12B4E0 80184070 8FB40028 */  lw         $s4, 0x28($sp)
/* 12B4E4 80184074 8FB5002C */  lw         $s5, 0x2C($sp)
/* 12B4E8 80184078 8FB60030 */  lw         $s6, 0x30($sp)
.L8018407C_ovl3:
/* 12B4EC 8018407C 03E00008 */  jr         $ra
/* 12B4F0 80184080 27BD0038 */   addiu     $sp, $sp, 0x38
