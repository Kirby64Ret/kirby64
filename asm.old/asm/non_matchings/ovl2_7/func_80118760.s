glabel func_80118760
/* 0A11D0 80118760 8C830000 */  lw    $v1, ($a0)
/* 0A11D4 80118764 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0A11D8 80118768 8C82003C */  lw    $v0, 0x3c($a0)
/* 0A11DC 8011876C 00032880 */  sll   $a1, $v1, 2
/* 0A11E0 80118770 00250821 */  addu  $at, $at, $a1
/* 0A11E4 80118774 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 0A11E8 80118778 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0A11EC 8011877C 00250821 */  addu  $at, $at, $a1
/* 0A11F0 80118780 E444001C */  swc1  $f4, 0x1c($v0)
/* 0A11F4 80118784 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 0A11F8 80118788 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0A11FC 8011878C 00250821 */  addu  $at, $at, $a1
/* 0A1200 80118790 E4460020 */  swc1  $f6, 0x20($v0)
/* 0A1204 80118794 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 0A1208 80118798 2442001C */  addiu $v0, $v0, 0x1c
/* 0A120C 8011879C 03E00008 */  jr    $ra
/* 0A1210 801187A0 E4480008 */   swc1  $f8, 8($v0)
.type func_80118760, @function
.size func_80118760, . - func_80118760
