glabel func_8021EB6C_ovl19
/* 23F27C 8021EB6C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 23F280 8021EB70 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 23F284 8021EB74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23F288 8021EB78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23F28C 8021EB7C AFA40018 */  sw         $a0, 0x18($sp)
/* 23F290 8021EB80 8C4F0000 */  lw         $t7, 0x0($v0)
/* 23F294 8021EB84 3C018023 */  lui        $at, %hi(D_8022F70C_ovl19)
/* 23F298 8021EB88 C420F70C */  lwc1       $f0, %lo(D_8022F70C_ovl19)($at)
/* 23F29C 8021EB8C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 23F2A0 8021EB90 3C0E800B */  lui        $t6, %hi(func_800B5094)
/* 23F2A4 8021EB94 000FC080 */  sll        $t8, $t7, 2
/* 23F2A8 8021EB98 00380821 */  addu       $at, $at, $t8
/* 23F2AC 8021EB9C 25CE5094 */  addiu      $t6, $t6, %lo(func_800B5094)
/* 23F2B0 8021EBA0 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 23F2B4 8021EBA4 8C480000 */  lw         $t0, 0x0($v0)
/* 23F2B8 8021EBA8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 23F2BC 8021EBAC 3C198022 */  lui        $t9, %hi(func_8021EC64_ovl19)
/* 23F2C0 8021EBB0 00084880 */  sll        $t1, $t0, 2
/* 23F2C4 8021EBB4 00290821 */  addu       $at, $at, $t1
/* 23F2C8 8021EBB8 2739EC64 */  addiu      $t9, $t9, %lo(func_8021EC64_ovl19)
/* 23F2CC 8021EBBC AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* 23F2D0 8021EBC0 8C4A0000 */  lw         $t2, 0x0($v0)
/* 23F2D4 8021EBC4 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 23F2D8 8021EBC8 3C040002 */  lui        $a0, (0x20062 >> 16)
.L8021EBCC_ovl18:
/* 23F2DC 8021EBCC 000A5880 */  sll        $t3, $t2, 2
/* 23F2E0 8021EBD0 002B0821 */  addu       $at, $at, $t3
/* 23F2E4 8021EBD4 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 23F2E8 8021EBD8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 23F2EC 8021EBDC 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 23F2F0 8021EBE0 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 23F2F4 8021EBE4 000C6880 */  sll        $t5, $t4, 2
/* 23F2F8 8021EBE8 002D0821 */  addu       $at, $at, $t5
/* 23F2FC 8021EBEC E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 23F300 8021EBF0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 23F304 8021EBF4 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 23F308 8021EBF8 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 23F30C 8021EBFC 000F7080 */  sll        $t6, $t7, 2
/* 23F310 8021EC00 002E0821 */  addu       $at, $at, $t6
/* 23F314 8021EC04 34840062 */  ori        $a0, $a0, (0x20062 & 0xFFFF)
/* 23F318 8021EC08 24060010 */  addiu      $a2, $zero, 0x10
/* 23F31C 8021EC0C 0C02A619 */  jal        func_800A9864
/* 23F320 8021EC10 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 23F324 8021EC14 3C040002 */  lui        $a0, (0x20324 >> 16)
/* 23F328 8021EC18 0C02A855 */  jal        func_800AA154
/* 23F32C 8021EC1C 34840324 */   ori       $a0, $a0, (0x20324 & 0xFFFF)
/* 23F330 8021EC20 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 23F334 8021EC24 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 23F338 8021EC28 3C19800F */  lui        $t9, %hi(D_800EBBE0)
/* 23F33C 8021EC2C 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 23F340 8021EC30 8C580000 */  lw         $t8, 0x0($v0)
/* 23F344 8021EC34 00184080 */  sll        $t0, $t8, 2
/* 23F348 8021EC38 0328C821 */  addu       $t9, $t9, $t0
.L8021EC3C_ovl18:
/* 23F34C 8021EC3C 8F39BBE0 */  lw         $t9, %lo(D_800EBBE0)($t9)
/* 23F350 8021EC40 00194880 */  sll        $t1, $t9, 2
/* 23F354 8021EC44 00290821 */  addu       $at, $at, $t1
/* 23F358 8021EC48 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* 23F35C 8021EC4C 0C02C640 */  jal        func_800B1900
/* 23F360 8021EC50 94440002 */   lhu       $a0, 0x2($v0)
/* 23F364 8021EC54 8FBF0014 */  lw         $ra, 0x14($sp)
.L8021EC58_ovl18:
/* 23F368 8021EC58 27BD0018 */  addiu      $sp, $sp, 0x18
/* 23F36C 8021EC5C 03E00008 */  jr         $ra
/* 23F370 8021EC60 00000000 */   nop
