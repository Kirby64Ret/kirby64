glabel func_80101E14
/* 08A884 80101E14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08A888 80101E18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08A88C 80101E1C AFA5002C */  sw    $a1, 0x2c($sp)
/* 08A890 80101E20 C4A40000 */  lwc1  $f4, ($a1)
/* 08A894 80101E24 46002187 */  neg.s $f6, $f4
/* 08A898 80101E28 E7A60018 */  swc1  $f6, 0x18($sp)
/* 08A89C 80101E2C C4A80004 */  lwc1  $f8, 4($a1)
/* 08A8A0 80101E30 46004287 */  neg.s $f10, $f8
/* 08A8A4 80101E34 E7AA001C */  swc1  $f10, 0x1c($sp)
/* 08A8A8 80101E38 C4B00008 */  lwc1  $f16, 8($a1)
/* 08A8AC 80101E3C 27A50018 */  addiu $a1, $sp, 0x18
/* 08A8B0 80101E40 46008487 */  neg.s $f18, $f16
/* 08A8B4 80101E44 0C040648 */  jal   func_80101920
/* 08A8B8 80101E48 E7B20020 */   swc1  $f18, 0x20($sp)
/* 08A8BC 80101E4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08A8C0 80101E50 27BD0028 */  addiu $sp, $sp, 0x28
/* 08A8C4 80101E54 03E00008 */  jr    $ra
/* 08A8C8 80101E58 00000000 */   nop   
.type func_80101E14, @function
.size func_80101E14, . - func_80101E14
