glabel func_80122A80
/* 0AB4F0 80122A80 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0AB4F4 80122A84 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0AB4F8 80122A88 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AB4FC 80122A8C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0AB500 80122A90 8DC20000 */  lw    $v0, ($t6)
/* 0AB504 80122A94 3C03800F */ lui $v1, %hi(D_800E8AE0)
/* 0AB508 80122A98 24010001 */  li    $at, 1
/* 0AB50C 80122A9C 00021080 */  sll   $v0, $v0, 2
/* 0AB510 80122AA0 00621821 */  addu  $v1, $v1, $v0
/* 0AB514 80122AA4 8C638AE0 */ lw $v1, %lo(D_800E8AE0)($v1)
/* 0AB518 80122AA8 10600005 */  beqz  $v1, .L80122AC0_ovl2
/* 0AB51C 80122AAC 306F0007 */   andi  $t7, $v1, 7
/* 0AB520 80122AB0 55E10020 */  bnel  $t7, $at, .L80122B34_ovl2
/* 0AB524 80122AB4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AB528 80122AB8 1000000F */  b     .L80122AF8_ovl2
/* 0AB52C 80122ABC 24060006 */   li    $a2, 6
.L80122AC0_ovl2:
/* 0AB530 80122AC0 0C029D9E */  jal   play_sound
/* 0AB534 80122AC4 24040045 */   li    $a0, 69
/* 0AB538 80122AC8 3C188013 */  lui   $t8, %hi(D_8012E8CA) # $t8, 0x8013
/* 0AB53C 80122ACC 9718E8CA */  lhu   $t8, %lo(D_8012E8CA)($t8)
/* 0AB540 80122AD0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0AB544 80122AD4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0AB548 80122AD8 0018C8C0 */  sll   $t9, $t8, 3
/* 0AB54C 80122ADC 0338C823 */  subu  $t9, $t9, $t8
/* 0AB550 80122AE0 8D020000 */  lw    $v0, ($t0)
/* 0AB554 80122AE4 0019C880 */  sll   $t9, $t9, 2
/* 0AB558 80122AE8 3C068013 */ lui $a2, %hi(D_80128448)
/* 0AB55C 80122AEC 00D93021 */  addu  $a2, $a2, $t9
/* 0AB560 80122AF0 94C68448 */ lhu $a2, %lo(D_80128448)($a2)
/* 0AB564 80122AF4 00021080 */  sll   $v0, $v0, 2
.L80122AF8_ovl2:
/* 0AB568 80122AF8 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0AB56C 80122AFC 00220821 */  addu  $at, $at, $v0
/* 0AB570 80122B00 C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 0AB574 80122B04 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0AB578 80122B08 00220821 */  addu  $at, $at, $v0
/* 0AB57C 80122B0C C4262950 */ lwc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 0AB580 80122B10 3C07800E */ lui $a3, %hi(gEntitiesNextPosXArray)
/* 0AB584 80122B14 00E23821 */  addu  $a3, $a3, $v0
/* 0AB588 80122B18 8CE725D0 */ lw $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 0AB58C 80122B1C 24040005 */  li    $a0, 5
/* 0AB590 80122B20 24050001 */  li    $a1, 1
/* 0AB594 80122B24 E7A40010 */  swc1  $f4, 0x10($sp)
/* 0AB598 80122B28 0C029FDD */  jal   func_800A7F74
/* 0AB59C 80122B2C E7A60014 */   swc1  $f6, 0x14($sp)
/* 0AB5A0 80122B30 8FBF001C */  lw    $ra, 0x1c($sp)
.L80122B34_ovl2:
/* 0AB5A4 80122B34 27BD0020 */  addiu $sp, $sp, 0x20
/* 0AB5A8 80122B38 03E00008 */  jr    $ra
/* 0AB5AC 80122B3C 00000000 */   nop   
.type func_80122A80, @function
.size func_80122A80, . - func_80122A80
