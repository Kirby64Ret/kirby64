glabel func_801161D4
/* 09EC44 801161D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EC48 801161D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EC4C 801161DC 8C8E0000 */  lw    $t6, ($a0)
/* 09EC50 801161E0 44802000 */  mtc1  $zero, $f4
/* 09EC54 801161E4 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 09EC58 801161E8 000E7880 */  sll   $t7, $t6, 2
/* 09EC5C 801161EC 002F0821 */  addu  $at, $at, $t7
/* 09EC60 801161F0 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 09EC64 801161F4 8C82004C */  lw    $v0, 0x4c($a0)
/* 09EC68 801161F8 90580002 */  lbu   $t8, 2($v0)
/* 09EC6C 801161FC 37190002 */  ori   $t9, $t8, 2
/* 09EC70 80116200 0C04541C */  jal   func_80115070
/* 09EC74 80116204 A0590002 */   sb    $t9, 2($v0)
/* 09EC78 80116208 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EC7C 8011620C 27BD0018 */  addiu $sp, $sp, 0x18
/* 09EC80 80116210 03E00008 */  jr    $ra
/* 09EC84 80116214 00000000 */   nop   
.type func_801161D4, @function
.size func_801161D4, . - func_801161D4
