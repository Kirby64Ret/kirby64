glabel func_8017F8B8_ovl3
/* 0E02F8 8017F8B8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0E02FC 8017F8BC 44866000 */  mtc1  $a2, $f12
/* 0E0300 8017F8C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0E0304 8017F8C4 14A0002C */  bnez  $a1, .L8017F978_ovl3
/* 0E0308 8017F8C8 AFA40028 */   sw    $a0, 0x28($sp)
/* 0E030C 8017F8CC 44802000 */  mtc1  $zero, $f4
/* 0E0310 8017F8D0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0E0314 8017F8D4 46046032 */  c.eq.s $f12, $f4
/* 0E0318 8017F8D8 00000000 */  nop   
/* 0E031C 8017F8DC 45030027 */  bc1tl .L8017F97C_ovl3
/* 0E0320 8017F8E0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0E0324 8017F8E4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0E0328 8017F8E8 3C19800F */ lui $t9, %hi(D_800E8920)
/* 0E032C 8017F8EC 8DCF0000 */  lw    $t7, ($t6)
/* 0E0330 8017F8F0 000FC080 */  sll   $t8, $t7, 2
/* 0E0334 8017F8F4 0338C821 */  addu  $t9, $t9, $t8
/* 0E0338 8017F8F8 8F398920 */ lw $t9, %lo(D_800E8920)($t9)
/* 0E033C 8017F8FC 5320001F */  beql  $t9, $zero, .L8017F97C_ovl3
/* 0E0340 8017F900 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0E0344 8017F904 0C048C5C */  jal   func_80123170
/* 0E0348 8017F908 00000000 */   nop   
/* 0E034C 8017F90C AFA20024 */  sw    $v0, 0x24($sp)
/* 0E0350 8017F910 0C03EE45 */  jal   func_800FB914
/* 0E0354 8017F914 24040002 */   li    $a0, 2
/* 0E0358 8017F918 0C029D9E */  jal   play_sound
/* 0E035C 8017F91C 24040120 */   li    $a0, 288
/* 0E0360 8017F920 8FA60024 */  lw    $a2, 0x24($sp)
/* 0E0364 8017F924 2401FFFF */  li    $at, -1
/* 0E0368 8017F928 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0E036C 8017F92C 50C10013 */  beql  $a2, $at, .L8017F97C_ovl3
/* 0E0370 8017F930 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0E0374 8017F934 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0E0378 8017F938 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0E037C 8017F93C 3C07800E */ lui $a3, %hi(gEntitiesNextPosXArray)
/* 0E0380 8017F940 8D020000 */  lw    $v0, ($t0)
/* 0E0384 8017F944 24040005 */  li    $a0, 5
/* 0E0388 8017F948 24050001 */  li    $a1, 1
/* 0E038C 8017F94C 00021080 */  sll   $v0, $v0, 2
/* 0E0390 8017F950 00220821 */  addu  $at, $at, $v0
/* 0E0394 8017F954 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 0E0398 8017F958 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0E039C 8017F95C 00220821 */  addu  $at, $at, $v0
/* 0E03A0 8017F960 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 0E03A4 8017F964 00E23821 */  addu  $a3, $a3, $v0
/* 0E03A8 8017F968 8CE725D0 */ lw $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 0E03AC 8017F96C E7A60010 */  swc1  $f6, 0x10($sp)
/* 0E03B0 8017F970 0C029FDD */  jal   func_800A7F74
/* 0E03B4 8017F974 E7A80014 */   swc1  $f8, 0x14($sp)
.L8017F978_ovl3:
/* 0E03B8 8017F978 8FBF001C */  lw    $ra, 0x1c($sp)
.L8017F97C_ovl3:
/* 0E03BC 8017F97C 27BD0028 */  addiu $sp, $sp, 0x28
/* 0E03C0 8017F980 03E00008 */  jr    $ra
/* 0E03C4 8017F984 00000000 */   nop   
.type func_8017F8B8_ovl3, @function
.size func_8017F8B8_ovl3, . - func_8017F8B8_ovl3
