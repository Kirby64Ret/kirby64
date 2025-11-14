glabel func_800A73B0
/* 04F600 800A73B0 3C0E8005 */  lui   $t6, %hi(D_8004A404) # $t6, 0x8005
/* 04F604 800A73B4 8DCEA404 */  lw    $t6, %lo(D_8004A404)($t6)
/* 04F608 800A73B8 3C028005 */  lui   $v0, %hi(gDisplayListHeads) # $v0, 0x8005
/* 04F60C 800A73BC 3C01800D */  lui   $at, %hi(D_800D7B6C) # $at, 0x800d
/* 04F610 800A73C0 2442A3D0 */  addiu $v0, %lo(gDisplayListHeads) # addiu $v0, $v0, -0x5c30
/* 04F614 800A73C4 AC2E7B6C */  sw    $t6, %lo(D_800D7B6C)($at)
/* 04F618 800A73C8 8C4F0000 */  lw    $t7, ($v0)
/* 04F61C 800A73CC 3C01800D */  lui   $at, %hi(D_800D7B70) # $at, 0x800d
/* 04F620 800A73D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04F624 800A73D4 AC2F7B70 */  sw    $t7, %lo(D_800D7B70)($at)
/* 04F628 800A73D8 8C580004 */  lw    $t8, 4($v0)
/* 04F62C 800A73DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F630 800A73E0 3C01800D */  lui   $at, %hi(D_800D7B74) # $at, 0x800d
/* 04F634 800A73E4 0C002AB8 */  jal   func_8000AAE0
/* 04F638 800A73E8 AC387B74 */   sw    $t8, %lo(D_800D7B74)($at)
/* 04F63C 800A73EC 0C02B184 */  jal   func_800AC610
/* 04F640 800A73F0 00000000 */   nop   
/* 04F644 800A73F4 3C03800D */  lui   $v1, %hi(D_800D7B6C) # $v1, 0x800d
/* 04F648 800A73F8 3C078005 */  lui   $a3, %hi(gDisplayListHeads) # $a3, 0x8005
/* 04F64C 800A73FC 24E7A3D0 */  addiu $a3, %lo(gDisplayListHeads) # addiu $a3, $a3, -0x5c30
/* 04F650 800A7400 24637B6C */  addiu $v1, %lo(D_800D7B6C) # addiu $v1, $v1, 0x7b6c
/* 04F654 800A7404 3C04800D */  lui   $a0, %hi(D_800D7B70) # $a0, 0x800d
/* 04F658 800A7408 3C05800D */  lui   $a1, %hi(D_800D7B74) # $a1, 0x800d
/* 04F65C 800A740C 3C06800D */  lui   $a2, %hi(D_800D7B78) # $a2, 0x800d
/* 04F660 800A7410 3C198005 */  lui   $t9, %hi(D_8004A404) # $t9, 0x8005
/* 04F664 800A7414 8F39A404 */  lw    $t9, %lo(D_8004A404)($t9)
/* 04F668 800A7418 8C680000 */  lw    $t0, ($v1)
/* 04F66C 800A741C 24C67B78 */  addiu $a2, %lo(D_800D7B78) # addiu $a2, $a2, 0x7b78
/* 04F670 800A7420 24A57B74 */  addiu $a1, %lo(D_800D7B74) # addiu $a1, $a1, 0x7b74
/* 04F674 800A7424 24847B70 */  addiu $a0, %lo(D_800D7B70) # addiu $a0, $a0, 0x7b70
/* 04F678 800A7428 8C8B0000 */  lw    $t3, ($a0)
/* 04F67C 800A742C 8CEA0000 */  lw    $t2, ($a3)
/* 04F680 800A7430 8CAE0000 */  lw    $t6, ($a1)
/* 04F684 800A7434 8CED0004 */  lw    $t5, 4($a3)
/* 04F688 800A7438 8CD80000 */  lw    $t8, ($a2)
/* 04F68C 800A743C 03284823 */  subu  $t1, $t9, $t0
/* 04F690 800A7440 014B6023 */  subu  $t4, $t2, $t3
/* 04F694 800A7444 01AE7823 */  subu  $t7, $t5, $t6
/* 04F698 800A7448 0309082B */  sltu  $at, $t8, $t1
/* 04F69C 800A744C AC690000 */  sw    $t1, ($v1)
/* 04F6A0 800A7450 AC8C0000 */  sw    $t4, ($a0)
/* 04F6A4 800A7454 10200002 */  beqz  $at, .L800A7460_ovl1
/* 04F6A8 800A7458 ACAF0000 */   sw    $t7, ($a1)
/* 04F6AC 800A745C ACC90000 */  sw    $t1, ($a2)
.L800A7460_ovl1:
/* 04F6B0 800A7460 3C03800D */  lui   $v1, %hi(D_800D7B7C) # $v1, 0x800d
/* 04F6B4 800A7464 24637B7C */  addiu $v1, %lo(D_800D7B7C) # addiu $v1, $v1, 0x7b7c
/* 04F6B8 800A7468 8C790000 */  lw    $t9, ($v1)
/* 04F6BC 800A746C 8C820000 */  lw    $v0, ($a0)
/* 04F6C0 800A7470 0322082B */  sltu  $at, $t9, $v0
/* 04F6C4 800A7474 10200002 */  beqz  $at, .L800A7480_ovl1
/* 04F6C8 800A7478 00000000 */   nop   
/* 04F6CC 800A747C AC620000 */  sw    $v0, ($v1)
.L800A7480_ovl1:
/* 04F6D0 800A7480 3C03800D */  lui   $v1, %hi(D_800D7B80) # $v1, 0x800d
/* 04F6D4 800A7484 24637B80 */  addiu $v1, %lo(D_800D7B80) # addiu $v1, $v1, 0x7b80
/* 04F6D8 800A7488 8C680000 */  lw    $t0, ($v1)
/* 04F6DC 800A748C 8CA20000 */  lw    $v0, ($a1)
/* 04F6E0 800A7490 0102082B */  sltu  $at, $t0, $v0
/* 04F6E4 800A7494 50200003 */  beql  $at, $zero, .L800A74A4_ovl1
/* 04F6E8 800A7498 8FBF0014 */   lw    $ra, 0x14($sp)
/* 04F6EC 800A749C AC620000 */  sw    $v0, ($v1)
/* 04F6F0 800A74A0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A74A4_ovl1:
/* 04F6F4 800A74A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 04F6F8 800A74A8 03E00008 */  jr    $ra
/* 04F6FC 800A74AC 00000000 */   nop   
.type func_800A73B0, @function
.size func_800A73B0, . - func_800A73B0
