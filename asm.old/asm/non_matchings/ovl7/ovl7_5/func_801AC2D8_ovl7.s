glabel func_801AC2D8_ovl7
/* 152348 801AC2D8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15234C 801AC2DC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 152350 801AC2E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 152354 801AC2E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 152358 801AC2E8 AFA40018 */  sw    $a0, 0x18($sp)
/* 15235C 801AC2EC 8C4E0000 */  lw    $t6, ($v0)
/* 152360 801AC2F0 3C01800E */ lui $at, %hi(D_800DF150)
/* 152364 801AC2F4 2404007D */  li    $a0, 125
/* 152368 801AC2F8 000E7880 */  sll   $t7, $t6, 2
/* 15236C 801AC2FC 002F0821 */  addu  $at, $at, $t7
/* 152370 801AC300 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 152374 801AC304 0C02C67D */  jal   func_800B19F4
/* 152378 801AC308 8C450000 */   lw    $a1, ($v0)
/* 15237C 801AC30C 0C066ED6 */  jal   func_8019BB58_ovl7
/* 152380 801AC310 00000000 */   nop   
/* 152384 801AC314 0C002DAF */  jal   finish_current_thread
/* 152388 801AC318 2404000F */   li    $a0, 15
/* 15238C 801AC31C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 152390 801AC320 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 152394 801AC324 0C067656 */  jal   func_8019D958_ovl7
/* 152398 801AC328 97040002 */   lhu   $a0, 2($t8)
/* 15239C 801AC32C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1523A0 801AC330 27BD0018 */  addiu $sp, $sp, 0x18
/* 1523A4 801AC334 03E00008 */  jr    $ra
/* 1523A8 801AC338 00000000 */   nop   
.type func_801AC2D8_ovl7, @function
.size func_801AC2D8_ovl7, . - func_801AC2D8_ovl7
