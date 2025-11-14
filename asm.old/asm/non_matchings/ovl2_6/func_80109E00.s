glabel func_80109E00
/* 092870 80109E00 3C028013 */  lui   $v0, %hi(D_8012D940) # $v0, 0x8013
/* 092874 80109E04 2442D940 */  addiu $v0, %lo(D_8012D940) # addiu $v0, $v0, -0x26c0
/* 092878 80109E08 8C4E0000 */  lw    $t6, ($v0)
/* 09287C 80109E0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 092880 80109E10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 092884 80109E14 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 092888 80109E18 AC400000 */  sw    $zero, ($v0)
/* 09288C 80109E1C 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 092890 80109E20 24060008 */  li    $a2, 8
/* 092894 80109E24 0C0426FC */  jal   func_80109BF0
/* 092898 80109E28 AFAE001C */   sw    $t6, 0x1c($sp)
/* 09289C 80109E2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0928A0 80109E30 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0928A4 80109E34 3C018013 */  lui   $at, 0x8013
/* 0928A8 80109E38 27BD0020 */  addiu $sp, $sp, 0x20
/* 0928AC 80109E3C 03E00008 */  jr    $ra
/* 0928B0 80109E40 AC2FD940 */   sw    $t7, -0x26c0($at)
.type func_80109E00, @function
.size func_80109E00, . - func_80109E00
