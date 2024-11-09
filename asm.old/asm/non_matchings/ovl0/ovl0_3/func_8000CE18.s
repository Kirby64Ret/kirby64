glabel func_8000CE18
/* 00DA18 8000CE18 460E7082 */  mul.s $f2, $f14, $f14
/* 00DA1C 8000CE1C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 00DA20 8000CE20 44814000 */  mtc1  $at, $f8
/* 00DA24 8000CE24 460C6482 */  mul.s $f18, $f12, $f12
/* 00DA28 8000CE28 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00DA2C 8000CE2C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00DA30 8000CE30 AFA60040 */  sw    $a2, 0x40($sp)
/* 00DA34 8000CE34 460E1182 */  mul.s $f6, $f2, $f14
/* 00DA38 8000CE38 AFA70044 */  sw    $a3, 0x44($sp)
/* 00DA3C 8000CE3C 46123402 */  mul.s $f16, $f6, $f18
/* 00DA40 8000CE40 46108100 */  add.s $f4, $f16, $f16
/* 00DA44 8000CE44 460C2282 */  mul.s $f10, $f4, $f12
/* 00DA48 8000CE48 00000000 */  nop   
/* 00DA4C 8000CE4C 46024182 */  mul.s $f6, $f8, $f2
/* 00DA50 8000CE50 E7AA000C */  swc1  $f10, 0xc($sp)
/* 00DA54 8000CE54 46123102 */  mul.s $f4, $f6, $f18
/* 00DA58 8000CE58 00000000 */  nop   
/* 00DA5C 8000CE5C 460C1202 */  mul.s $f8, $f2, $f12
/* 00DA60 8000CE60 E7A40014 */  swc1  $f4, 0x14($sp)
/* 00DA64 8000CE64 E7A80018 */  swc1  $f8, 0x18($sp)
/* 00DA68 8000CE68 C7A60018 */  lwc1  $f6, 0x18($sp)
/* 00DA6C 8000CE6C 46068201 */  sub.s $f8, $f16, $f6
/* 00DA70 8000CE70 E7A60000 */  swc1  $f6, ($sp)
/* 00DA74 8000CE74 44813000 */  mtc1  $at, $f6
/* 00DA78 8000CE78 E7A80010 */  swc1  $f8, 0x10($sp)
/* 00DA7C 8000CE7C 46045201 */  sub.s $f8, $f10, $f4
/* 00DA80 8000CE80 46064200 */  add.s $f8, $f8, $f6
/* 00DA84 8000CE84 C7A60040 */  lwc1  $f6, 0x40($sp)
/* 00DA88 8000CE88 46064202 */  mul.s $f8, $f8, $f6
/* 00DA8C 8000CE8C 460A2181 */  sub.s $f6, $f4, $f10
/* 00DA90 8000CE90 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 00DA94 8000CE94 46062282 */  mul.s $f10, $f4, $f6
/* 00DA98 8000CE98 C7A60010 */  lwc1  $f6, 0x10($sp)
/* 00DA9C 8000CE9C 460A4100 */  add.s $f4, $f8, $f10
/* 00DAA0 8000CEA0 C7A80000 */  lwc1  $f8, ($sp)
/* 00DAA4 8000CEA4 46083281 */  sub.s $f10, $f6, $f8
/* 00DAA8 8000CEA8 460E5200 */  add.s $f8, $f10, $f14
/* 00DAAC 8000CEAC C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 00DAB0 8000CEB0 46085282 */  mul.s $f10, $f10, $f8
/* 00DAB4 8000CEB4 460A2200 */  add.s $f8, $f4, $f10
/* 00DAB8 8000CEB8 C7A4004C */  lwc1  $f4, 0x4c($sp)
/* 00DABC 8000CEBC 27BD0038 */  addiu $sp, $sp, 0x38
/* 00DAC0 8000CEC0 46062282 */  mul.s $f10, $f4, $f6
/* 00DAC4 8000CEC4 03E00008 */  jr    $ra
/* 00DAC8 8000CEC8 460A4000 */   add.s $f0, $f8, $f10
.type func_8000CE18, @function
.size func_8000CE18, . - func_8000CE18
