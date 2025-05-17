glabel func_801E83BC_ovl10
/* 1D912C 801E83BC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9130 801E83C0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9134 801E83C4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1D9138 801E83C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D913C 801E83CC AFA40038 */  sw    $a0, 0x38($sp)
/* 1D9140 801E83D0 8C4E0000 */  lw    $t6, ($v0)
/* 1D9144 801E83D4 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D9148 801E83D8 24080001 */  li    $t0, 1
/* 1D914C 801E83DC 000E7880 */  sll   $t7, $t6, 2
/* 1D9150 801E83E0 002F0821 */  addu  $at, $at, $t7
/* 1D9154 801E83E4 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D9158 801E83E8 8C580000 */  lw    $t8, ($v0)
/* 1D915C 801E83EC 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D9160 801E83F0 3C040001 */  lui   $a0, (0x000103A5 >> 16) # lui $a0, 1
/* 1D9164 801E83F4 0018C880 */  sll   $t9, $t8, 2
/* 1D9168 801E83F8 00390821 */  addu  $at, $at, $t9
/* 1D916C 801E83FC AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1D9170 801E8400 8C490000 */  lw    $t1, ($v0)
/* 1D9174 801E8404 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D9178 801E8408 348403A5 */  ori   $a0, (0x000103A5 & 0xFFFF) # ori $a0, $a0, 0x3a5
/* 1D917C 801E840C 00095080 */  sll   $t2, $t1, 2
/* 1D9180 801E8410 002A0821 */  addu  $at, $at, $t2
/* 1D9184 801E8414 AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 1D9188 801E8418 8C4B0000 */  lw    $t3, ($v0)
/* 1D918C 801E841C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1D9190 801E8420 44812000 */  mtc1  $at, $f4
/* 1D9194 801E8424 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1D9198 801E8428 000B6080 */  sll   $t4, $t3, 2
/* 1D919C 801E842C 002C0821 */  addu  $at, $at, $t4
/* 1D91A0 801E8430 0C02A7A9 */  jal   func_800A9EA4
/* 1D91A4 801E8434 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1D91A8 801E8438 3C040001 */  lui   $a0, (0x000103A4 >> 16) # lui $a0, 1
/* 1D91AC 801E843C 348403A4 */  ori   $a0, (0x000103A4 & 0xFFFF) # ori $a0, $a0, 0x3a4
/* 1D91B0 801E8440 0C02AA19 */  jal   func_800AA864
/* 1D91B4 801E8444 24050002 */   li    $a1, 2
/* 1D91B8 801E8448 3C040001 */  lui   $a0, (0x000103A3 >> 16) # lui $a0, 1
/* 1D91BC 801E844C 0C02A7A9 */  jal   func_800A9EA4
/* 1D91C0 801E8450 348403A3 */   ori   $a0, (0x000103A3 & 0xFFFF) # ori $a0, $a0, 0x3a3
/* 1D91C4 801E8454 3C040001 */  lui   $a0, (0x000103A2 >> 16) # lui $a0, 1
/* 1D91C8 801E8458 348403A2 */  ori   $a0, (0x000103A2 & 0xFFFF) # ori $a0, $a0, 0x3a2
/* 1D91CC 801E845C 0C02AA19 */  jal   func_800AA864
/* 1D91D0 801E8460 24050001 */   li    $a1, 1
/* 1D91D4 801E8464 3C040001 */  lui   $a0, (0x000103A5 >> 16) # lui $a0, 1
/* 1D91D8 801E8468 0C02A7A9 */  jal   func_800A9EA4
/* 1D91DC 801E846C 348403A5 */   ori   $a0, (0x000103A5 & 0xFFFF) # ori $a0, $a0, 0x3a5
/* 1D91E0 801E8470 3C040001 */  lui   $a0, (0x000103A4 >> 16) # lui $a0, 1
/* 1D91E4 801E8474 0C02A7A9 */  jal   func_800A9EA4
/* 1D91E8 801E8478 348403A4 */   ori   $a0, (0x000103A4 & 0xFFFF) # ori $a0, $a0, 0x3a4
/* 1D91EC 801E847C 0C0798F9 */  jal   func_801E63E4_ovl10
/* 1D91F0 801E8480 27A40030 */   addiu $a0, $sp, 0x30
/* 1D91F4 801E8484 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D91F8 801E8488 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D91FC 801E848C C7A60030 */  lwc1  $f6, 0x30($sp)
/* 1D9200 801E8490 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 1D9204 801E8494 8C4D0000 */  lw    $t5, ($v0)
/* 1D9208 801E8498 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 1D920C 801E849C 44805000 */  mtc1  $zero, $f10
/* 1D9210 801E84A0 000D7080 */  sll   $t6, $t5, 2
/* 1D9214 801E84A4 006E7821 */  addu  $t7, $v1, $t6
/* 1D9218 801E84A8 E5E60000 */  swc1  $f6, ($t7)
/* 1D921C 801E84AC 93A50034 */  lbu   $a1, 0x34($sp)
/* 1D9220 801E84B0 27A40020 */  addiu $a0, $sp, 0x20
/* 1D9224 801E84B4 A3A5002F */  sb    $a1, 0x2f($sp)
/* 1D9228 801E84B8 8C590000 */  lw    $t9, ($v0)
/* 1D922C 801E84BC 00194880 */  sll   $t1, $t9, 2
/* 1D9230 801E84C0 00694021 */  addu  $t0, $v1, $t1
/* 1D9234 801E84C4 C5080000 */  lwc1  $f8, ($t0)
/* 1D9238 801E84C8 E7AA0028 */  swc1  $f10, 0x28($sp)
/* 1D923C 801E84CC 0C079713 */  jal   func_801E5C4C_ovl10
/* 1D9240 801E84D0 E7A80020 */   swc1  $f8, 0x20($sp)
/* 1D9244 801E84D4 0C002DAF */  jal   finish_current_thread
/* 1D9248 801E84D8 93A4002F */   lbu   $a0, 0x2f($sp)
/* 1D924C 801E84DC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9250 801E84E0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9254 801E84E4 44808000 */  mtc1  $zero, $f16
/* 1D9258 801E84E8 3C04800E */  lui   $a0, %hi(D_800E33D0) # $a0, 0x800e
/* 1D925C 801E84EC 8C4A0000 */  lw    $t2, ($v0)
/* 1D9260 801E84F0 248433D0 */  addiu $a0, %lo(D_800E33D0) # addiu $a0, $a0, 0x33d0
/* 1D9264 801E84F4 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D9268 801E84F8 000A5880 */  sll   $t3, $t2, 2
/* 1D926C 801E84FC 008B6021 */  addu  $t4, $a0, $t3
/* 1D9270 801E8500 E5900000 */  swc1  $f16, ($t4)
/* 1D9274 801E8504 8C430000 */  lw    $v1, ($v0)
/* 1D9278 801E8508 240E0001 */  li    $t6, 1
/* 1D927C 801E850C 00031880 */  sll   $v1, $v1, 2
/* 1D9280 801E8510 00836821 */  addu  $t5, $a0, $v1
/* 1D9284 801E8514 C5B20000 */  lwc1  $f18, ($t5)
/* 1D9288 801E8518 00230821 */  addu  $at, $at, $v1
/* 1D928C 801E851C E4323050 */ swc1 $f18, %lo(D_800E3050)($at)
/* 1D9290 801E8520 8C4F0000 */  lw    $t7, ($v0)
/* 1D9294 801E8524 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D9298 801E8528 000FC880 */  sll   $t9, $t7, 2
/* 1D929C 801E852C 00390821 */  addu  $at, $at, $t9
/* 1D92A0 801E8530 0C02BE85 */  jal   func_800AFA14
/* 1D92A4 801E8534 AC2E9E20 */ sw $t6, %lo(D_800E9E20)($at)
/* 1D92A8 801E8538 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D92AC 801E853C 27BD0038 */  addiu $sp, $sp, 0x38
/* 1D92B0 801E8540 03E00008 */  jr    $ra
/* 1D92B4 801E8544 00000000 */   nop   
.type func_801E83BC_ovl10, @function
.size func_801E83BC_ovl10, . - func_801E83BC_ovl10
