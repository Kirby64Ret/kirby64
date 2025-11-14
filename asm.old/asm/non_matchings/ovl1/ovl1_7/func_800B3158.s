glabel func_800B3158
/* 05B3A8 800B3158 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 05B3AC 800B315C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 05B3B0 800B3160 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05B3B4 800B3164 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05B3B8 800B3168 8DC20000 */  lw    $v0, ($t6)
/* 05B3BC 800B316C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 05B3C0 800B3170 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 05B3C4 800B3174 00021080 */  sll   $v0, $v0, 2
/* 05B3C8 800B3178 00220821 */  addu  $at, $at, $v0
/* 05B3CC 800B317C C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 05B3D0 800B3180 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 05B3D4 800B3184 00220821 */  addu  $at, $at, $v0
/* 05B3D8 800B3188 00C23021 */  addu  $a2, $a2, $v0
/* 05B3DC 800B318C 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 05B3E0 800B3190 0C02CC8D */  jal   func_800B3234
/* 05B3E4 800B3194 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 05B3E8 800B3198 10400003 */  beqz  $v0, .L800B31A8_ovl1
/* 05B3EC 800B319C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 05B3F0 800B31A0 10000002 */  b     .L800B31AC_ovl1
/* 05B3F4 800B31A4 00001025 */   move  $v0, $zero
.L800B31A8_ovl1:
/* 05B3F8 800B31A8 24020001 */  li    $v0, 1
.L800B31AC_ovl1:
/* 05B3FC 800B31AC 03E00008 */  jr    $ra
/* 05B400 800B31B0 27BD0018 */   addiu $sp, $sp, 0x18
.type func_800B3158, @function
.size func_800B3158, . - func_800B3158
