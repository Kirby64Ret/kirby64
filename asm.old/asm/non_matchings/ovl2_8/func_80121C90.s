glabel func_80121C90
/* 0AA700 80121C90 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0AA704 80121C94 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0AA708 80121C98 8C6E0034 */  lw    $t6, 0x34($v1)
/* 0AA70C 80121C9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AA710 80121CA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AA714 80121CA4 31CF0001 */  andi  $t7, $t6, 1
/* 0AA718 80121CA8 55E00014 */  bnezl $t7, .L80121CFC_ovl2
/* 0AA71C 80121CAC 8C62002C */   lw    $v0, 0x2c($v1)
/* 0AA720 80121CB0 0C048465 */  jal   func_80121194
/* 0AA724 80121CB4 00000000 */   nop   
/* 0AA728 80121CB8 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0AA72C 80121CBC 10400007 */  beqz  $v0, .L80121CDC_ovl2
/* 0AA730 80121CC0 2463E7C0 */   addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0AA734 80121CC4 8C790034 */  lw    $t9, 0x34($v1)
/* 0AA738 80121CC8 2418000E */  li    $t8, 14
/* 0AA73C 80121CCC AC78002C */  sw    $t8, 0x2c($v1)
/* 0AA740 80121CD0 37280001 */  ori   $t0, $t9, 1
/* 0AA744 80121CD4 10000014 */  b     .L80121D28_ovl2
/* 0AA748 80121CD8 AC680034 */   sw    $t0, 0x34($v1)
.L80121CDC_ovl2:
/* 0AA74C 80121CDC 3C09800D */  lui   $t1, %hi(gKirbyController) # $t1, 0x800d
/* 0AA750 80121CE0 95296FE8 */  lhu   $t1, %lo(gKirbyController)($t1)
/* 0AA754 80121CE4 312A0300 */  andi  $t2, $t1, 0x300
/* 0AA758 80121CE8 51400010 */  beql  $t2, $zero, .L80121D2C_ovl2
/* 0AA75C 80121CEC 00001025 */   move  $v0, $zero
/* 0AA760 80121CF0 1000000E */  b     .L80121D2C_ovl2
/* 0AA764 80121CF4 24020001 */   li    $v0, 1
/* 0AA768 80121CF8 8C62002C */  lw    $v0, 0x2c($v1)
.L80121CFC_ovl2:
/* 0AA76C 80121CFC 10400003 */  beqz  $v0, .L80121D0C_ovl2
/* 0AA770 80121D00 244BFFFF */   addiu $t3, $v0, -1
/* 0AA774 80121D04 10000008 */  b     .L80121D28_ovl2
/* 0AA778 80121D08 AC6B002C */   sw    $t3, 0x2c($v1)
.L80121D0C_ovl2:
/* 0AA77C 80121D0C 3C0C800D */  lui   $t4, %hi(gKirbyController) # $t4, 0x800d
/* 0AA780 80121D10 958C6FE8 */  lhu   $t4, %lo(gKirbyController)($t4)
/* 0AA784 80121D14 318D0300 */  andi  $t5, $t4, 0x300
/* 0AA788 80121D18 51A00004 */  beql  $t5, $zero, .L80121D2C_ovl2
/* 0AA78C 80121D1C 00001025 */   move  $v0, $zero
/* 0AA790 80121D20 10000002 */  b     .L80121D2C_ovl2
/* 0AA794 80121D24 24020001 */   li    $v0, 1
.L80121D28_ovl2:
/* 0AA798 80121D28 00001025 */  move  $v0, $zero
.L80121D2C_ovl2:
/* 0AA79C 80121D2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AA7A0 80121D30 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AA7A4 80121D34 03E00008 */  jr    $ra
/* 0AA7A8 80121D38 00000000 */   nop   
.type func_80121C90, @function
.size func_80121C90, . - func_80121C90
