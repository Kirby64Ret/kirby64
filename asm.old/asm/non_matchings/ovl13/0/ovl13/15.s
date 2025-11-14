glabel func_801DD46C_ovl13 # 15
/* 1F53EC 801DD46C 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1F53F0 801DD470 2463A7C4 */  addiu       $v1, $v1, %lo(D_8004A7C4)
/* 1F53F4 801DD474 8C620000 */  lw          $v0, 0x0($v1)
/* 1F53F8 801DD478 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F53FC 801DD47C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F5400 801DD480 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F5404 801DD484 8C4F0000 */  lw          $t7, 0x0($v0)
/* 1F5408 801DD488 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F540C 801DD48C 240E0001 */  addiu       $t6, $zero, 0x1
/* 1F5410 801DD490 000FC080 */  sll         $t8, $t7, 2
/* 1F5414 801DD494 00380821 */  addu        $at, $at, $t8
/* 1F5418 801DD498 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1F541C 801DD49C 8C480000 */  lw          $t0, 0x0($v0)
/* 1F5420 801DD4A0 3C0A800E */  lui         $t2, %hi(D_800E1B50)
/* 1F5424 801DD4A4 3C19801E */  lui         $t9, %hi(D_801D93A8)
/* 1F5428 801DD4A8 00084880 */  sll         $t1, $t0, 2
/* 1F542C 801DD4AC 01495021 */  addu        $t2, $t2, $t1
/* 1F5430 801DD4B0 8D4A1B50 */  lw          $t2, %lo(D_800E1B50)($t2)
/* 1F5434 801DD4B4 273993A8 */  addiu       $t9, $t9, %lo(D_801D93A8)
/* 1F5438 801DD4B8 3C04801E */  lui         $a0, %hi(D_801DAADC)
/* 1F543C 801DD4BC AD59008C */  sw          $t9, 0x8C($t2)
/* 1F5440 801DD4C0 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F5444 801DD4C4 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F5448 801DD4C8 2484AADC */  addiu       $a0, $a0, %lo(D_801DAADC)
/* 1F544C 801DD4CC 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F5450 801DD4D0 000C6880 */  sll         $t5, $t4, 2
/* 1F5454 801DD4D4 002D0821 */  addu        $at, $at, $t5
/* 1F5458 801DD4D8 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F545C 801DD4DC AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F5460 801DD4E0 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F5464 801DD4E4 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F5468 801DD4E8 3C09800E */  lui         $t1, %hi(D_800E1B50)
/* 1F546C 801DD4EC 3C0F801E */  lui         $t7, %hi(D_801DAE1C)
/* 1F5470 801DD4F0 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F5474 801DD4F4 25EFAE1C */  addiu       $t7, $t7, %lo(D_801DAE1C)
/* 1F5478 801DD4F8 00184080 */  sll         $t0, $t8, 2
/* 1F547C 801DD4FC 01284821 */  addu        $t1, $t1, $t0
/* 1F5480 801DD500 8D291B50 */  lw          $t1, %lo(D_800E1B50)($t1)
/* 1F5484 801DD504 0C02CCFD */  jal         func_800B33F4
/* 1F5488 801DD508 AD2F0098 */   sw         $t7, 0x98($t1)
/* 1F548C 801DD50C 3C040001 */  lui         $a0, (0x10427 >> 16)
/* 1F5490 801DD510 0C02A855 */  jal         func_800AA154
/* 1F5494 801DD514 34840427 */   ori        $a0, $a0, (0x10427 & 0xFFFF)
/* 1F5498 801DD518 3C040001 */  lui         $a0, (0x10429 >> 16)
/* 1F549C 801DD51C 0C02A855 */  jal         func_800AA154
/* 1F54A0 801DD520 34840429 */   ori        $a0, $a0, (0x10429 & 0xFFFF)
/* 1F54A4 801DD524 3C0A8005 */  lui         $t2, %hi(D_8004A7C4)
/* 1F54A8 801DD528 8D4AA7C4 */  lw          $t2, %lo(D_8004A7C4)($t2)
/* 1F54AC 801DD52C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F54B0 801DD530 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F54B4 801DD534 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F54B8 801DD538 24190002 */  addiu       $t9, $zero, 0x2
/* 1F54BC 801DD53C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F54C0 801DD540 000B6080 */  sll         $t4, $t3, 2
/* 1F54C4 801DD544 002C0821 */  addu        $at, $at, $t4
/* 1F54C8 801DD548 03E00008 */  jr          $ra
/* 1F54CC 801DD54C AC39DC50 */   sw         $t9, %lo(gEntityVtableIndexArray)($at)
.type func_801DD46C_ovl13, @function

.size func_801DD46C_ovl13, . - func_801DD46C_ovl13
