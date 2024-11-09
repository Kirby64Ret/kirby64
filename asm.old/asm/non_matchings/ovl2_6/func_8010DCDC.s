glabel func_8010DCDC
/* 09674C 8010DCDC 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 096750 8010DCE0 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 096754 8010DCE4 904E0000 */  lbu   $t6, ($v0)
/* 096758 8010DCE8 3C188013 */  lui   $t8, %hi(D_8012BD50) # $t8, 0x8013
/* 09675C 8010DCEC AC400040 */  sw    $zero, 0x40($v0)
/* 096760 8010DCF0 31CFFF7F */  andi  $t7, $t6, 0xff7f
/* 096764 8010DCF4 A04F0000 */  sb    $t7, ($v0)
/* 096768 8010DCF8 2718BD50 */  addiu $t8, %lo(D_8012BD50) # addiu $t8, $t8, -0x42b0
/* 09676C 8010DCFC 3C018013 */  lui   $at, %hi(D_8012BD4C) # $at, 0x8013
/* 096770 8010DD00 AC38BD4C */  sw    $t8, %lo(D_8012BD4C)($at)
/* 096774 8010DD04 3C198013 */  lui   $t9, %hi(D_8012BDAC) # $t9, 0x8013
/* 096778 8010DD08 2739BDAC */  addiu $t9, %lo(D_8012BDAC) # addiu $t9, $t9, -0x4254
/* 09677C 8010DD0C 3C018013 */  lui   $at, %hi(D_8012BD50) # $at, 0x8013
/* 096780 8010DD10 AC39BD50 */  sw    $t9, %lo(D_8012BD50)($at)
/* 096784 8010DD14 3C088013 */  lui   $t0, %hi(D_8012BE08) # $t0, 0x8013
/* 096788 8010DD18 2508BE08 */  addiu $t0, %lo(D_8012BE08) # addiu $t0, $t0, -0x41f8
/* 09678C 8010DD1C 3C018013 */  lui   $at, %hi(D_8012BDAC) # $at, 0x8013
/* 096790 8010DD20 AC28BDAC */  sw    $t0, %lo(D_8012BDAC)($at)
/* 096794 8010DD24 3C098013 */  lui   $t1, 0x8013
/* 096798 8010DD28 2523BE64 */  addiu $v1, $t1, -0x419c
/* 09679C 8010DD2C 3C018013 */  lui   $at, %hi(D_8012BE08) # $at, 0x8013
/* 0967A0 8010DD30 3C028013 */  lui   $v0, %hi(D_8012C9E4) # $v0, 0x8013
/* 0967A4 8010DD34 3C048013 */  lui   $a0, %hi(D_8012BEC0) # $a0, 0x8013
/* 0967A8 8010DD38 3C058013 */  lui   $a1, %hi(D_8012BF1C) # $a1, 0x8013
/* 0967AC 8010DD3C 3C068013 */  lui   $a2, %hi(D_8012BF78) # $a2, 0x8013
/* 0967B0 8010DD40 3C078013 */  lui   $a3, %hi(D_8012BFD4) # $a3, 0x8013
/* 0967B4 8010DD44 24E7BFD4 */  addiu $a3, %lo(D_8012BFD4) # addiu $a3, $a3, -0x402c
/* 0967B8 8010DD48 24C6BF78 */  addiu $a2, %lo(D_8012BF78) # addiu $a2, $a2, -0x4088
/* 0967BC 8010DD4C 24A5BF1C */  addiu $a1, %lo(D_8012BF1C) # addiu $a1, $a1, -0x40e4
/* 0967C0 8010DD50 2484BEC0 */  addiu $a0, %lo(D_8012BEC0) # addiu $a0, $a0, -0x4140
/* 0967C4 8010DD54 2442C9E4 */  addiu $v0, %lo(D_8012C9E4) # addiu $v0, $v0, -0x361c
/* 0967C8 8010DD58 AC23BE08 */  sw    $v1, %lo(D_8012BE08)($at)
.L8010DD5C_ovl2:
/* 0967CC 8010DD5C AC670114 */  sw    $a3, 0x114($v1)
/* 0967D0 8010DD60 24E70170 */  addiu $a3, $a3, 0x170
/* 0967D4 8010DD64 AC65005C */  sw    $a1, 0x5c($v1)
/* 0967D8 8010DD68 AC6600B8 */  sw    $a2, 0xb8($v1)
/* 0967DC 8010DD6C AC640000 */  sw    $a0, ($v1)
/* 0967E0 8010DD70 24840170 */  addiu $a0, $a0, 0x170
/* 0967E4 8010DD74 24C60170 */  addiu $a2, $a2, 0x170
/* 0967E8 8010DD78 24A50170 */  addiu $a1, $a1, 0x170
/* 0967EC 8010DD7C 14E2FFF7 */  bne   $a3, $v0, .L8010DD5C_ovl2
/* 0967F0 8010DD80 24630170 */   addiu $v1, $v1, 0x170
/* 0967F4 8010DD84 03E00008 */  jr    $ra
/* 0967F8 8010DD88 AC600000 */   sw    $zero, ($v1)
.type func_8010DCDC, @function
.size func_8010DCDC, . - func_8010DCDC
