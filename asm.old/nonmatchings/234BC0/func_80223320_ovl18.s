glabel func_80223320_ovl18
/* 235CC0 80223320 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 235CC4 80223324 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 235CC8 80223328 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 235CCC 8022332C AFBF0014 */  sw         $ra, 0x14($sp)
/* 235CD0 80223330 AFA40018 */  sw         $a0, 0x18($sp)
/* 235CD4 80223334 8C4F0000 */  lw         $t7, 0x0($v0)
/* 235CD8 80223338 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 235CDC 8022333C 240E0001 */  addiu      $t6, $zero, 0x1
/* 235CE0 80223340 000FC080 */  sll        $t8, $t7, 2
/* 235CE4 80223344 00380821 */  addu       $at, $at, $t8
/* 235CE8 80223348 AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
/* 235CEC 8022334C 8C590000 */  lw         $t9, 0x0($v0)
/* 235CF0 80223350 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 235CF4 80223354 24090004 */  addiu      $t1, $zero, 0x4
/* 235CF8 80223358 00194080 */  sll        $t0, $t9, 2
/* 235CFC 8022335C 00280821 */  addu       $at, $at, $t0
/* 235D00 80223360 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 235D04 80223364 8C4A0000 */  lw         $t2, 0x0($v0)
/* 235D08 80223368 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 235D0C 8022336C 3C040001 */  lui        $a0, (0x100DB >> 16)
/* 235D10 80223370 000A5880 */  sll        $t3, $t2, 2
/* 235D14 80223374 002B0821 */  addu       $at, $at, $t3
/* 235D18 80223378 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
/* 235D1C 8022337C 0C02A7A9 */  jal        func_800A9EA4
/* 235D20 80223380 348400DB */   ori       $a0, $a0, (0x100DB & 0xFFFF)
/* 235D24 80223384 3C040001 */  lui        $a0, (0x100DA >> 16)
/* 235D28 80223388 348400DA */  ori        $a0, $a0, (0x100DA & 0xFFFF)
/* 235D2C 8022338C 0C02AA19 */  jal        func_800AA864
/* 235D30 80223390 24050003 */   addiu     $a1, $zero, 0x3
/* 235D34 80223394 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 235D38 80223398 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 235D3C 8022339C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 235D40 802233A0 240C0001 */  addiu      $t4, $zero, 0x1
/* 235D44 802233A4 8DAF0000 */  lw         $t7, 0x0($t5)
/* 235D48 802233A8 000F7080 */  sll        $t6, $t7, 2
/* 235D4C 802233AC 002E0821 */  addu       $at, $at, $t6
/* 235D50 802233B0 0C02BE85 */  jal        func_800AFA14
/* 235D54 802233B4 AC2C9E20 */   sw        $t4, %lo(D_800E9E20)($at)
/* 235D58 802233B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 235D5C 802233BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 235D60 802233C0 03E00008 */  jr         $ra
/* 235D64 802233C4 00000000 */   nop
