glabel func_801DF294_ovl13 # 26
/* 1F7214 801DF294 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F7218 801DF298 2508A7C4 */  addiu       $t0, $t0, %lo(D_8004A7C4)
/* 1F721C 801DF29C 8D070000 */  lw          $a3, 0x0($t0)
/* 1F7220 801DF2A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F7224 801DF2A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F7228 801DF2A8 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F722C 801DF2AC 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F7230 801DF2B0 3C0E800F */  lui         $t6, %hi(D_800EA8A0)
/* 1F7234 801DF2B4 25CEA8A0 */  addiu       $t6, $t6, %lo(D_800EA8A0)
/* 1F7238 801DF2B8 00063080 */  sll         $a2, $a2, 2
/* 1F723C 801DF2BC 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F7240 801DF2C0 00260821 */  addu        $at, $at, $a2
/* 1F7244 801DF2C4 00CE2821 */  addu        $a1, $a2, $t6
/* 1F7248 801DF2C8 C4A40000 */  lwc1        $f4, 0x0($a1)
/* 1F724C 801DF2CC C426AA60 */  lwc1        $f6, %lo(D_800EAA60)($at)
/* 1F7250 801DF2D0 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1F7254 801DF2D4 2529FBD0 */  addiu       $t1, $t1, %lo(D_800DFBD0)
/* 1F7258 801DF2D8 46062000 */  add.s       $f0, $f4, $f6
/* 1F725C 801DF2DC 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F7260 801DF2E0 E4A00000 */  swc1        $f0, 0x0($a1)
/* 1F7264 801DF2E4 8CEF0000 */  lw          $t7, 0x0($a3)
/* 1F7268 801DF2E8 000FC080 */  sll         $t8, $t7, 2
/* 1F726C 801DF2EC 0138C821 */  addu        $t9, $t1, $t8
/* 1F7270 801DF2F0 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1F7274 801DF2F4 8D420004 */  lw          $v0, 0x4($t2)
/* 1F7278 801DF2F8 C448001C */  lwc1        $f8, 0x1C($v0)
/* 1F727C 801DF2FC 46004280 */  add.s       $f10, $f8, $f0
/* 1F7280 801DF300 E44A001C */  swc1        $f10, 0x1C($v0)
/* 1F7284 801DF304 8D0B0000 */  lw          $t3, 0x0($t0)
/* 1F7288 801DF308 8D660000 */  lw          $a2, 0x0($t3)
/* 1F728C 801DF30C 00063080 */  sll         $a2, $a2, 2
/* 1F7290 801DF310 01266021 */  addu        $t4, $t1, $a2
/* 1F7294 801DF314 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F7298 801DF318 00260821 */  addu        $at, $at, $a2
/* 1F729C 801DF31C C432AC20 */  lwc1        $f18, %lo(D_800EAC20)($at)
/* 1F72A0 801DF320 8DA20004 */  lw          $v0, 0x4($t5)
/* 1F72A4 801DF324 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F72A8 801DF328 C4500034 */  lwc1        $f16, 0x34($v0)
/* 1F72AC 801DF32C 46128100 */  add.s       $f4, $f16, $f18
/* 1F72B0 801DF330 E4440034 */  swc1        $f4, 0x34($v0)
/* 1F72B4 801DF334 8D0E0000 */  lw          $t6, 0x0($t0)
/* 1F72B8 801DF338 8DC60000 */  lw          $a2, 0x0($t6)
/* 1F72BC 801DF33C 00063080 */  sll         $a2, $a2, 2
/* 1F72C0 801DF340 01267821 */  addu        $t7, $t1, $a2
/* 1F72C4 801DF344 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F72C8 801DF348 00260821 */  addu        $at, $at, $a2
/* 1F72CC 801DF34C C428ADE0 */  lwc1        $f8, %lo(D_800EADE0)($at)
/* 1F72D0 801DF350 8F030008 */  lw          $v1, 0x8($t8)
/* 1F72D4 801DF354 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F72D8 801DF358 C4660030 */  lwc1        $f6, 0x30($v1)
/* 1F72DC 801DF35C 46083280 */  add.s       $f10, $f6, $f8
/* 1F72E0 801DF360 E46A0030 */  swc1        $f10, 0x30($v1)
/* 1F72E4 801DF364 8D190000 */  lw          $t9, 0x0($t0)
/* 1F72E8 801DF368 8F260000 */  lw          $a2, 0x0($t9)
/* 1F72EC 801DF36C 00063080 */  sll         $a2, $a2, 2
/* 1F72F0 801DF370 01265021 */  addu        $t2, $t1, $a2
/* 1F72F4 801DF374 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F72F8 801DF378 00260821 */  addu        $at, $at, $a2
/* 1F72FC 801DF37C C432AFA0 */  lwc1        $f18, %lo(D_800EAFA0)($at)
/* 1F7300 801DF380 8D630008 */  lw          $v1, 0x8($t3)
/* 1F7304 801DF384 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F7308 801DF388 C4700038 */  lwc1        $f16, 0x38($v1)
/* 1F730C 801DF38C 46128100 */  add.s       $f4, $f16, $f18
/* 1F7310 801DF390 E4640038 */  swc1        $f4, 0x38($v1)
/* 1F7314 801DF394 8D0C0000 */  lw          $t4, 0x0($t0)
/* 1F7318 801DF398 8FA40018 */  lw          $a0, 0x18($sp)
/* 1F731C 801DF39C 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F7320 801DF3A0 000D7080 */  sll         $t6, $t5, 2
/* 1F7324 801DF3A4 002E0821 */  addu        $at, $at, $t6
/* 1F7328 801DF3A8 0C06835D */  jal         func_801A0D74_ovl7
/* 1F732C 801DF3AC AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F7330 801DF3B0 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F7334 801DF3B4 2508A7C4 */  addiu       $t0, $t0, %lo(D_8004A7C4)
/* 1F7338 801DF3B8 8D070000 */  lw          $a3, 0x0($t0)
/* 1F733C 801DF3BC 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1F7340 801DF3C0 2529FBD0 */  addiu       $t1, $t1, %lo(D_800DFBD0)
/* 1F7344 801DF3C4 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F7348 801DF3C8 44803000 */  mtc1        $zero, $f6
/* 1F734C 801DF3CC 3C0142A0 */  lui         $at, (0x42A00000 >> 16)
/* 1F7350 801DF3D0 00063080 */  sll         $a2, $a2, 2
/* 1F7354 801DF3D4 01267821 */  addu        $t7, $t1, $a2
/* 1F7358 801DF3D8 8DE20000 */  lw          $v0, 0x0($t7)
/* 1F735C 801DF3DC 44814000 */  mtc1        $at, $f8
/* 1F7360 801DF3E0 8C580004 */  lw          $t8, 0x4($v0)
/* 1F7364 801DF3E4 C702001C */  lwc1        $f2, 0x1C($t8)
/* 1F7368 801DF3E8 4606103C */  c.lt.s      $f2, $f6
/* 1F736C 801DF3EC 00000000 */  nop
/* 1F7370 801DF3F0 45020004 */  bc1fl       L801DF404_ovl13
/* 1F7374 801DF3F4 46001006 */   mov.s      $f0, $f2
/* 1F7378 801DF3F8 10000002 */  b           L801DF404_ovl13
/* 1F737C 801DF3FC 46001007 */   neg.s      $f0, $f2
/* 1F7380 801DF400 46001006 */  mov.s       $f0, $f2
glabel L801DF404_ovl13
/* 1F7384 801DF404 4608003C */  c.lt.s      $f0, $f8
/* 1F7388 801DF408 00000000 */  nop
/* 1F738C 801DF40C 4500000C */  bc1f        L801DF440_ovl13
/* 1F7390 801DF410 00000000 */   nop
/* 1F7394 801DF414 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F7398 801DF418 8C450010 */  lw          $a1, 0x10($v0)
/* 1F739C 801DF41C 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F73A0 801DF420 8C460018 */   lw         $a2, 0x18($v0)
/* 1F73A4 801DF424 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F73A8 801DF428 2508A7C4 */  addiu       $t0, $t0, %lo(D_8004A7C4)
/* 1F73AC 801DF42C 8D070000 */  lw          $a3, 0x0($t0)
/* 1F73B0 801DF430 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1F73B4 801DF434 2529FBD0 */  addiu       $t1, $t1, %lo(D_800DFBD0)
/* 1F73B8 801DF438 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F73BC 801DF43C 00063080 */  sll         $a2, $a2, 2
glabel L801DF440_ovl13
/* 1F73C0 801DF440 3C19800F */  lui         $t9, %hi(D_800E83E0)
/* 1F73C4 801DF444 0326C821 */  addu        $t9, $t9, $a2
/* 1F73C8 801DF448 8F3983E0 */  lw          $t9, %lo(D_800E83E0)($t9)
/* 1F73CC 801DF44C 24010001 */  addiu       $at, $zero, 0x1
/* 1F73D0 801DF450 3C02800E */  lui         $v0, %hi(D_800DFF50)
/* 1F73D4 801DF454 17210046 */  bne         $t9, $at, L801DF570_ovl13
/* 1F73D8 801DF458 00461021 */   addu       $v0, $v0, $a2
/* 1F73DC 801DF45C 8C42FF50 */  lw          $v0, %lo(D_800DFF50)($v0)
/* 1F73E0 801DF460 3C010001 */  lui         $at, (0x10425 >> 16)
/* 1F73E4 801DF464 34210425 */  ori         $at, $at, (0x10425 & 0xFFFF)
/* 1F73E8 801DF468 10410004 */  beq         $v0, $at, L801DF47C_ovl13
/* 1F73EC 801DF46C 3C04800E */   lui        $a0, %hi(gEntityGObjProcessArray)
/* 1F73F0 801DF470 3C010001 */  lui         $at, (0x10424 >> 16)
/* 1F73F4 801DF474 34210424 */  ori         $at, $at, (0x10424 & 0xFFFF)
/* 1F73F8 801DF478 14410032 */  bne         $v0, $at, L801DF544_ovl13
glabel L801DF47C_ovl13
/* 1F73FC 801DF47C 01265021 */   addu       $t2, $t1, $a2
/* 1F7400 801DF480 8D420000 */  lw          $v0, 0x0($t2)
/* 1F7404 801DF484 44802000 */  mtc1        $zero, $f4
/* 1F7408 801DF488 8C4B000C */  lw          $t3, 0xC($v0)
/* 1F740C 801DF48C 8C4C0008 */  lw          $t4, 0x8($v0)
/* 1F7410 801DF490 C56A0030 */  lwc1        $f10, 0x30($t3)
/* 1F7414 801DF494 E58A0030 */  swc1        $f10, 0x30($t4)
/* 1F7418 801DF498 8D0D0000 */  lw          $t5, 0x0($t0)
/* 1F741C 801DF49C 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F7420 801DF4A0 000E7880 */  sll         $t7, $t6, 2
/* 1F7424 801DF4A4 012FC021 */  addu        $t8, $t1, $t7
/* 1F7428 801DF4A8 8F020000 */  lw          $v0, 0x0($t8)
/* 1F742C 801DF4AC 8C59000C */  lw          $t9, 0xC($v0)
/* 1F7430 801DF4B0 8C4A0004 */  lw          $t2, 0x4($v0)
/* 1F7434 801DF4B4 C7300034 */  lwc1        $f16, 0x34($t9)
/* 1F7438 801DF4B8 E5500034 */  swc1        $f16, 0x34($t2)
/* 1F743C 801DF4BC 8D0B0000 */  lw          $t3, 0x0($t0)
/* 1F7440 801DF4C0 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F7444 801DF4C4 000C6880 */  sll         $t5, $t4, 2
/* 1F7448 801DF4C8 012D7021 */  addu        $t6, $t1, $t5
/* 1F744C 801DF4CC 8DC20000 */  lw          $v0, 0x0($t6)
/* 1F7450 801DF4D0 8C4F000C */  lw          $t7, 0xC($v0)
/* 1F7454 801DF4D4 8C580008 */  lw          $t8, 0x8($v0)
/* 1F7458 801DF4D8 C5F20038 */  lwc1        $f18, 0x38($t7)
/* 1F745C 801DF4DC E7120038 */  swc1        $f18, 0x38($t8)
/* 1F7460 801DF4E0 8D190000 */  lw          $t9, 0x0($t0)
/* 1F7464 801DF4E4 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1F7468 801DF4E8 000A5880 */  sll         $t3, $t2, 2
/* 1F746C 801DF4EC 012B6021 */  addu        $t4, $t1, $t3
/* 1F7470 801DF4F0 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F7474 801DF4F4 8DAE000C */  lw          $t6, 0xC($t5)
/* 1F7478 801DF4F8 E5C40038 */  swc1        $f4, 0x38($t6)
/* 1F747C 801DF4FC 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1F7480 801DF500 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F7484 801DF504 0018C880 */  sll         $t9, $t8, 2
/* 1F7488 801DF508 01395021 */  addu        $t2, $t1, $t9
/* 1F748C 801DF50C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F7490 801DF510 8D63000C */  lw          $v1, 0xC($t3)
/* 1F7494 801DF514 C4600038 */  lwc1        $f0, 0x38($v1)
/* 1F7498 801DF518 E4600034 */  swc1        $f0, 0x34($v1)
/* 1F749C 801DF51C 8D0C0000 */  lw          $t4, 0x0($t0)
/* 1F74A0 801DF520 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F74A4 801DF524 000D7080 */  sll         $t6, $t5, 2
/* 1F74A8 801DF528 012E7821 */  addu        $t7, $t1, $t6
/* 1F74AC 801DF52C 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F74B0 801DF530 8F19000C */  lw          $t9, 0xC($t8)
/* 1F74B4 801DF534 E7200030 */  swc1        $f0, 0x30($t9)
/* 1F74B8 801DF538 8D070000 */  lw          $a3, 0x0($t0)
/* 1F74BC 801DF53C 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F74C0 801DF540 00063080 */  sll         $a2, $a2, 2
glabel L801DF544_ovl13
/* 1F74C4 801DF544 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F74C8 801DF548 00260821 */  addu        $at, $at, $a2
/* 1F74CC 801DF54C 240A0007 */  addiu       $t2, $zero, 0x7
/* 1F74D0 801DF550 AC2ADC50 */  sw          $t2, %lo(gEntityVtableIndexArray)($at)
/* 1F74D4 801DF554 8CEB0000 */  lw          $t3, 0x0($a3)
/* 1F74D8 801DF558 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F74DC 801DF55C 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F74E0 801DF560 000B6080 */  sll         $t4, $t3, 2
/* 1F74E4 801DF564 008C2021 */  addu        $a0, $a0, $t4
/* 1F74E8 801DF568 0C02C7B2 */  jal         assign_new_process_entry
/* 1F74EC 801DF56C 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801DF570_ovl13
/* 1F74F0 801DF570 0C078E56 */  jal         func_801E3958_ovl13
/* 1F74F4 801DF574 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F74F8 801DF578 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F74FC 801DF57C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F7500 801DF580 03E00008 */  jr          $ra
/* 1F7504 801DF584 00000000 */   nop
.type func_801DF294_ovl13, @function

.size func_801DF294_ovl13, . - func_801DF294_ovl13
