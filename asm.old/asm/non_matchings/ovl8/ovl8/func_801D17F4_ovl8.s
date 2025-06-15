glabel func_801D17F4_ovl8
/* 1752D4 801D17F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1752D8 801D17F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1752DC 801D17FC 0C074592 */  jal   func_801D1648_ovl8
/* 1752E0 801D1800 00000000 */   nop   
/* 1752E4 801D1804 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1752E8 801D1808 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1752EC 801D180C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1752F0 801D1810 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1752F4 801D1814 8DC20000 */  lw    $v0, ($t6)
/* 1752F8 801D1818 00021080 */  sll   $v0, $v0, 2
/* 1752FC 801D181C 00220821 */  addu  $at, $at, $v0
/* 175300 801D1820 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 175304 801D1824 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175308 801D1828 00220821 */  addu  $at, $at, $v0
/* 17530C 801D182C 00C23021 */  addu  $a2, $a2, $v0
/* 175310 801D1830 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 175314 801D1834 0C02CC8D */  jal   func_800B3234
/* 175318 801D1838 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 17531C 801D183C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175320 801D1840 27BD0018 */  addiu $sp, $sp, 0x18
/* 175324 801D1844 03E00008 */  jr    $ra
/* 175328 801D1848 00000000 */   nop   
.type func_801D17F4_ovl8, @function
.size func_801D17F4_ovl8, . - func_801D17F4_ovl8
