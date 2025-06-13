glabel func_8022846C_ovl19
/* 248B7C 8022846C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 248B80 80228470 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 248B84 80228474 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 248B88 80228478 AFBF0014 */  sw    $ra, 0x14($sp)
/* 248B8C 8022847C AFA40018 */  sw    $a0, 0x18($sp)
/* 248B90 80228480 8C4E0000 */  lw    $t6, ($v0)
/* 248B94 80228484 3C01800E */ lui $at, %hi(D_800DEF90)
/* 248B98 80228488 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 248B9C 8022848C 000E7880 */  sll   $t7, $t6, 2
/* 248BA0 80228490 002F0821 */  addu  $at, $at, $t7
/* 248BA4 80228494 AC20EF90 */ sw $zero, %lo(D_800DEF90)($at)
/* 248BA8 80228498 8C580000 */  lw    $t8, ($v0)
/* 248BAC 8022849C 3C05800B */  lui   $a1, %hi(D_800B1434) # $a1, 0x800b
/* 248BB0 802284A0 24A51434 */  addiu $a1, %lo(D_800B1434) # addiu $a1, $a1, 0x1434
/* 248BB4 802284A4 0018C880 */  sll   $t9, $t8, 2
/* 248BB8 802284A8 00992021 */  addu  $a0, $a0, $t9
/* 248BBC 802284AC 0C02C7DA */  jal   func_800B1F68
/* 248BC0 802284B0 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 248BC4 802284B4 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 248BC8 802284B8 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 248BCC 802284BC 3C088023 */  lui   $t0, %hi(D_802284EC) # $t0, 0x8023
/* 248BD0 802284C0 3C01800E */ lui $at, %hi(D_800DF150)
/* 248BD4 802284C4 8D2A0000 */  lw    $t2, ($t1)
/* 248BD8 802284C8 250884EC */  addiu $t0, %lo(D_802284EC) # addiu $t0, $t0, -0x7b14
/* 248BDC 802284CC 000A5880 */  sll   $t3, $t2, 2
/* 248BE0 802284D0 002B0821 */  addu  $at, $at, $t3
/* 248BE4 802284D4 0C02BE85 */  jal   func_800AFA14
/* 248BE8 802284D8 AC28F150 */ sw $t0, %lo(D_800DF150)($at)
/* 248BEC 802284DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 248BF0 802284E0 27BD0018 */  addiu $sp, $sp, 0x18
/* 248BF4 802284E4 03E00008 */  jr    $ra
/* 248BF8 802284E8 00000000 */   nop   
.type func_8022846C_ovl19, @function
.size func_8022846C_ovl19, . - func_8022846C_ovl19
