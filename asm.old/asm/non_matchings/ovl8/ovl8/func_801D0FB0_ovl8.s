glabel func_801D0FB0_ovl8
/* 174A90 801D0FB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174A94 801D0FB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 174A98 801D0FB8 0C02D70A */  jal   func_800B5C28
/* 174A9C 801D0FBC AFA40018 */   sw    $a0, 0x18($sp)
/* 174AA0 801D0FC0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174AA4 801D0FC4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174AA8 801D0FC8 3C01800E */ lui $at, %hi(D_800E2090)
/* 174AAC 801D0FCC 3C0E800E */  lui   $t6, %hi(gEntitiesNextPosXArray) # $t6, 0x800e
/* 174AB0 801D0FD0 8C620000 */  lw    $v0, ($v1)
/* 174AB4 801D0FD4 25CE25D0 */  addiu $t6, %lo(gEntitiesNextPosXArray) # addiu $t6, $t6, 0x25d0
/* 174AB8 801D0FD8 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 174ABC 801D0FDC 00021080 */  sll   $v0, $v0, 2
/* 174AC0 801D0FE0 00220821 */  addu  $at, $at, $v0
/* 174AC4 801D0FE4 C4242090 */ lwc1 $f4, %lo(D_800E2090)($at)
/* 174AC8 801D0FE8 3C01800E */ lui $at, %hi(D_800E3050)
/* 174ACC 801D0FEC 00220821 */  addu  $at, $at, $v0
/* 174AD0 801D0FF0 C4263050 */ lwc1 $f6, %lo(D_800E3050)($at)
/* 174AD4 801D0FF4 004E2821 */  addu  $a1, $v0, $t6
/* 174AD8 801D0FF8 C4AA0000 */  lwc1  $f10, ($a1)
/* 174ADC 801D0FFC 46062200 */  add.s $f8, $f4, $f6
/* 174AE0 801D1000 3C01800E */ lui $at, %hi(D_800E2250)
/* 174AE4 801D1004 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 174AE8 801D1008 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 174AEC 801D100C 46085400 */  add.s $f16, $f10, $f8
/* 174AF0 801D1010 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 174AF4 801D1014 8FA40018 */  lw    $a0, 0x18($sp)
/* 174AF8 801D1018 E4B00000 */  swc1  $f16, ($a1)
/* 174AFC 801D101C 8C620000 */  lw    $v0, ($v1)
/* 174B00 801D1020 00021080 */  sll   $v0, $v0, 2
/* 174B04 801D1024 00220821 */  addu  $at, $at, $v0
/* 174B08 801D1028 C4322250 */ lwc1 $f18, %lo(D_800E2250)($at)
/* 174B0C 801D102C 3C01800E */ lui $at, %hi(D_800E3210)
/* 174B10 801D1030 00220821 */  addu  $at, $at, $v0
/* 174B14 801D1034 C4243210 */ lwc1 $f4, %lo(D_800E3210)($at)
/* 174B18 801D1038 004F3021 */  addu  $a2, $v0, $t7
/* 174B1C 801D103C C4CA0000 */  lwc1  $f10, ($a2)
/* 174B20 801D1040 46049180 */  add.s $f6, $f18, $f4
/* 174B24 801D1044 3C01800E */ lui $at, %hi(D_800E2410)
/* 174B28 801D1048 46065200 */  add.s $f8, $f10, $f6
/* 174B2C 801D104C E4C80000 */  swc1  $f8, ($a2)
/* 174B30 801D1050 8C620000 */  lw    $v0, ($v1)
/* 174B34 801D1054 00021080 */  sll   $v0, $v0, 2
/* 174B38 801D1058 00220821 */  addu  $at, $at, $v0
/* 174B3C 801D105C C4302410 */ lwc1 $f16, %lo(D_800E2410)($at)
/* 174B40 801D1060 3C01800E */ lui $at, %hi(D_800E33D0)
/* 174B44 801D1064 00220821 */  addu  $at, $at, $v0
/* 174B48 801D1068 C43233D0 */ lwc1 $f18, %lo(D_800E33D0)($at)
/* 174B4C 801D106C 00583821 */  addu  $a3, $v0, $t8
/* 174B50 801D1070 C4EA0000 */  lwc1  $f10, ($a3)
/* 174B54 801D1074 46128100 */  add.s $f4, $f16, $f18
/* 174B58 801D1078 46045180 */  add.s $f6, $f10, $f4
/* 174B5C 801D107C 0C02D7EF */  jal   func_800B5FBC
/* 174B60 801D1080 E4E60000 */   swc1  $f6, ($a3)
/* 174B64 801D1084 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174B68 801D1088 27BD0018 */  addiu $sp, $sp, 0x18
/* 174B6C 801D108C 03E00008 */  jr    $ra
/* 174B70 801D1090 00000000 */   nop   
.type func_801D0FB0_ovl8, @function
.size func_801D0FB0_ovl8, . - func_801D0FB0_ovl8
