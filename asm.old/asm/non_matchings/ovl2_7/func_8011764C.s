glabel func_8011764C
/* 0A00BC 8011764C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A00C0 80117650 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A00C4 80117654 8C830000 */  lw    $v1, ($a0)
/* 0A00C8 80117658 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0A00CC 8011765C 240E000A */  li    $t6, 10
/* 0A00D0 80117660 00031080 */  sll   $v0, $v1, 2
/* 0A00D4 80117664 00220821 */  addu  $at, $at, $v0
/* 0A00D8 80117668 C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 0A00DC 8011766C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 0A00E0 80117670 00220821 */  addu  $at, $at, $v0
/* 0A00E4 80117674 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 0A00E8 80117678 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0A00EC 8011767C 00220821 */  addu  $at, $at, $v0
/* 0A00F0 80117680 0C0454EE */  jal   func_801153B8
/* 0A00F4 80117684 AC2E98E0 */ sw $t6, %lo(D_800E98E0)($at)
/* 0A00F8 80117688 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A00FC 8011768C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0100 80117690 03E00008 */  jr    $ra
/* 0A0104 80117694 00000000 */   nop   
.type func_8011764C, @function
.size func_8011764C, . - func_8011764C
