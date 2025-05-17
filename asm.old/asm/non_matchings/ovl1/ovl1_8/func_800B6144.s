glabel func_800B6144
/* 05E394 800B6144 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 05E398 800B6148 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 05E39C 800B614C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 05E3A0 800B6150 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05E3A4 800B6154 AFA40048 */  sw    $a0, 0x48($sp)
/* 05E3A8 800B6158 8C470000 */  lw    $a3, ($v0)
/* 05E3AC 800B615C 3C0E800F */ lui $t6, %hi(D_800E8920)
/* 05E3B0 800B6160 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 05E3B4 800B6164 00073880 */  sll   $a3, $a3, 2
/* 05E3B8 800B6168 01C77021 */  addu  $t6, $t6, $a3
/* 05E3BC 800B616C 8DCE8920 */ lw $t6, %lo(D_800E8920)($t6)
/* 05E3C0 800B6170 00671821 */  addu  $v1, $v1, $a3
/* 05E3C4 800B6174 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 05E3C8 800B6178 11C00048 */  beqz  $t6, .L800B629C_ovl1
/* 05E3CC 800B617C 8C640084 */   lw    $a0, 0x84($v1)
/* 05E3D0 800B6180 50800047 */  beql  $a0, $zero, .L800B62A0_ovl1
/* 05E3D4 800B6184 8FBF0014 */   lw    $ra, 0x14($sp)
/* 05E3D8 800B6188 908F0050 */  lbu   $t7, 0x50($a0)
/* 05E3DC 800B618C 24010014 */  li    $at, 20
/* 05E3E0 800B6190 11E10042 */  beq   $t7, $at, .L800B629C_ovl1
/* 05E3E4 800B6194 AFAF003C */   sw    $t7, 0x3c($sp)
/* 05E3E8 800B6198 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 05E3EC 800B619C 00270821 */  addu  $at, $at, $a3
/* 05E3F0 800B61A0 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 05E3F4 800B61A4 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 05E3F8 800B61A8 01E02025 */  move  $a0, $t7
/* 05E3FC 800B61AC E7A40030 */  swc1  $f4, 0x30($sp)
/* 05E400 800B61B0 8C590000 */  lw    $t9, ($v0)
/* 05E404 800B61B4 27A50030 */  addiu $a1, $sp, 0x30
/* 05E408 800B61B8 27A60024 */  addiu $a2, $sp, 0x24
/* 05E40C 800B61BC 00194080 */  sll   $t0, $t9, 2
/* 05E410 800B61C0 00280821 */  addu  $at, $at, $t0
/* 05E414 800B61C4 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 05E418 800B61C8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 05E41C 800B61CC E7A60034 */  swc1  $f6, 0x34($sp)
/* 05E420 800B61D0 8C490000 */  lw    $t1, ($v0)
/* 05E424 800B61D4 00095080 */  sll   $t2, $t1, 2
/* 05E428 800B61D8 002A0821 */  addu  $at, $at, $t2
/* 05E42C 800B61DC C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 05E430 800B61E0 0C044A90 */  jal   func_80112A40
/* 05E434 800B61E4 E7A80038 */   swc1  $f8, 0x38($sp)
/* 05E438 800B61E8 44800000 */  mtc1  $zero, $f0
/* 05E43C 800B61EC C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 05E440 800B61F0 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 05E444 800B61F4 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 05E448 800B61F8 46005032 */  c.eq.s $f10, $f0
/* 05E44C 800B61FC 8FA50024 */  lw    $a1, 0x24($sp)
/* 05E450 800B6200 45000005 */  bc1f  .L800B6218_ovl1
/* 05E454 800B6204 00000000 */   nop   
/* 05E458 800B6208 46008032 */  c.eq.s $f16, $f0
/* 05E45C 800B620C 00000000 */  nop   
/* 05E460 800B6210 45010005 */  bc1t  .L800B6228_ovl1
/* 05E464 800B6214 00000000 */   nop   
.L800B6218_ovl1:
/* 05E468 800B6218 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 05E46C 800B621C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 05E470 800B6220 0C03E1CA */  jal   func_800F8728
/* 05E474 800B6224 8D640000 */   lw    $a0, ($t3)
.L800B6228_ovl1:
/* 05E478 800B6228 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 05E47C 800B622C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 05E480 800B6230 3C0E800E */  lui   $t6, %hi(gEntitiesNextPosXArray) # $t6, 0x800e
/* 05E484 800B6234 25CE25D0 */  addiu $t6, %lo(gEntitiesNextPosXArray) # addiu $t6, $t6, 0x25d0
/* 05E488 800B6238 8C4C0000 */  lw    $t4, ($v0)
/* 05E48C 800B623C C7A40024 */  lwc1  $f4, 0x24($sp)
/* 05E490 800B6240 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 05E494 800B6244 000C6880 */  sll   $t5, $t4, 2
/* 05E498 800B6248 01AE1821 */  addu  $v1, $t5, $t6
/* 05E49C 800B624C C4720000 */  lwc1  $f18, ($v1)
/* 05E4A0 800B6250 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 05E4A4 800B6254 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 05E4A8 800B6258 46049180 */  add.s $f6, $f18, $f4
/* 05E4AC 800B625C 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 05E4B0 800B6260 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 05E4B4 800B6264 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 05E4B8 800B6268 E4660000 */  swc1  $f6, ($v1)
/* 05E4BC 800B626C 8C4F0000 */  lw    $t7, ($v0)
/* 05E4C0 800B6270 000FC880 */  sll   $t9, $t7, 2
/* 05E4C4 800B6274 03282021 */  addu  $a0, $t9, $t0
/* 05E4C8 800B6278 C4880000 */  lwc1  $f8, ($a0)
/* 05E4CC 800B627C 460A4400 */  add.s $f16, $f8, $f10
/* 05E4D0 800B6280 E4900000 */  swc1  $f16, ($a0)
/* 05E4D4 800B6284 8C490000 */  lw    $t1, ($v0)
/* 05E4D8 800B6288 00095080 */  sll   $t2, $t1, 2
/* 05E4DC 800B628C 01582821 */  addu  $a1, $t2, $t8
/* 05E4E0 800B6290 C4B20000 */  lwc1  $f18, ($a1)
/* 05E4E4 800B6294 46049180 */  add.s $f6, $f18, $f4
/* 05E4E8 800B6298 E4A60000 */  swc1  $f6, ($a1)
.L800B629C_ovl1:
/* 05E4EC 800B629C 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B62A0_ovl1:
/* 05E4F0 800B62A0 27BD0048 */  addiu $sp, $sp, 0x48
/* 05E4F4 800B62A4 03E00008 */  jr    $ra
/* 05E4F8 800B62A8 00000000 */   nop   
.type func_800B6144, @function
.size func_800B6144, . - func_800B6144
