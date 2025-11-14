glabel func_801DDE54_ovl16
/* 214104 801DDE54 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 214108 801DDE58 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21410C 801DDE5C AFA40000 */  sw    $a0, ($sp)
/* 214110 801DDE60 3C0E800E */ lui $t6, %hi(D_800E0D50)
/* 214114 801DDE64 8C430000 */  lw    $v1, ($v0)
/* 214118 801DDE68 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 21411C 801DDE6C 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 214120 801DDE70 00031880 */  sll   $v1, $v1, 2
/* 214124 801DDE74 01C37021 */  addu  $t6, $t6, $v1
/* 214128 801DDE78 8DCE0D50 */ lw $t6, %lo(D_800E0D50)($t6)
/* 21412C 801DDE7C 0083C821 */  addu  $t9, $a0, $v1
/* 214130 801DDE80 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 214134 801DDE84 000E7880 */  sll   $t7, $t6, 2
/* 214138 801DDE88 008FC021 */  addu  $t8, $a0, $t7
/* 21413C 801DDE8C C7040000 */  lwc1  $f4, ($t8)
/* 214140 801DDE90 44813000 */  mtc1  $at, $f6
/* 214144 801DDE94 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 214148 801DDE98 E7240000 */  swc1  $f4, ($t9)
/* 21414C 801DDE9C 8C480000 */  lw    $t0, ($v0)
/* 214150 801DDEA0 00084880 */  sll   $t1, $t0, 2
/* 214154 801DDEA4 00290821 */  addu  $at, $at, $t1
/* 214158 801DDEA8 03E00008 */  jr    $ra
/* 21415C 801DDEAC E4262950 */ swc1 $f6, %lo(gEntitiesNextPosZArray)($at)
.type func_801DDE54_ovl16, @function
.size func_801DDE54_ovl16, . - func_801DDE54_ovl16
