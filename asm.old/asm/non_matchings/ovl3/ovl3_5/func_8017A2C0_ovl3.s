glabel func_8017A2C0_ovl3
/* 0DAD00 8017A2C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0DAD04 8017A2C4 44866000 */  mtc1  $a2, $f12
/* 0DAD08 8017A2C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0DAD0C 8017A2CC 14A0002C */  bnez  $a1, .L8017A380_ovl3
/* 0DAD10 8017A2D0 AFA40028 */   sw    $a0, 0x28($sp)
/* 0DAD14 8017A2D4 44802000 */  mtc1  $zero, $f4
/* 0DAD18 8017A2D8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0DAD1C 8017A2DC 46046032 */  c.eq.s $f12, $f4
/* 0DAD20 8017A2E0 00000000 */  nop   
/* 0DAD24 8017A2E4 45030027 */  bc1tl .L8017A384_ovl3
/* 0DAD28 8017A2E8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0DAD2C 8017A2EC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0DAD30 8017A2F0 3C19800F */ lui $t9, %hi(D_800E8920)
/* 0DAD34 8017A2F4 8DCF0000 */  lw    $t7, ($t6)
/* 0DAD38 8017A2F8 000FC080 */  sll   $t8, $t7, 2
/* 0DAD3C 8017A2FC 0338C821 */  addu  $t9, $t9, $t8
/* 0DAD40 8017A300 8F398920 */ lw $t9, %lo(D_800E8920)($t9)
/* 0DAD44 8017A304 5320001F */  beql  $t9, $zero, .L8017A384_ovl3
/* 0DAD48 8017A308 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0DAD4C 8017A30C 0C048C5C */  jal   func_80123170
/* 0DAD50 8017A310 00000000 */   nop   
/* 0DAD54 8017A314 AFA20024 */  sw    $v0, 0x24($sp)
/* 0DAD58 8017A318 0C03EE45 */  jal   func_800FB914
/* 0DAD5C 8017A31C 24040001 */   li    $a0, 1
/* 0DAD60 8017A320 0C029D9E */  jal   play_sound
/* 0DAD64 8017A324 24040120 */   li    $a0, 288
/* 0DAD68 8017A328 8FA60024 */  lw    $a2, 0x24($sp)
/* 0DAD6C 8017A32C 2401FFFF */  li    $at, -1
/* 0DAD70 8017A330 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0DAD74 8017A334 50C10013 */  beql  $a2, $at, .L8017A384_ovl3
/* 0DAD78 8017A338 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0DAD7C 8017A33C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0DAD80 8017A340 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0DAD84 8017A344 3C07800E */ lui $a3, %hi(gEntitiesNextPosXArray)
/* 0DAD88 8017A348 8D020000 */  lw    $v0, ($t0)
/* 0DAD8C 8017A34C 24040005 */  li    $a0, 5
/* 0DAD90 8017A350 24050001 */  li    $a1, 1
/* 0DAD94 8017A354 00021080 */  sll   $v0, $v0, 2
/* 0DAD98 8017A358 00220821 */  addu  $at, $at, $v0
/* 0DAD9C 8017A35C C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 0DADA0 8017A360 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0DADA4 8017A364 00220821 */  addu  $at, $at, $v0
/* 0DADA8 8017A368 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 0DADAC 8017A36C 00E23821 */  addu  $a3, $a3, $v0
/* 0DADB0 8017A370 8CE725D0 */ lw $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 0DADB4 8017A374 E7A60010 */  swc1  $f6, 0x10($sp)
/* 0DADB8 8017A378 0C029FDD */  jal   func_800A7F74
/* 0DADBC 8017A37C E7A80014 */   swc1  $f8, 0x14($sp)
.L8017A380_ovl3:
/* 0DADC0 8017A380 8FBF001C */  lw    $ra, 0x1c($sp)
.L8017A384_ovl3:
/* 0DADC4 8017A384 27BD0028 */  addiu $sp, $sp, 0x28
/* 0DADC8 8017A388 03E00008 */  jr    $ra
/* 0DADCC 8017A38C 00000000 */   nop   
.type func_8017A2C0_ovl3, @function
.size func_8017A2C0_ovl3, . - func_8017A2C0_ovl3
