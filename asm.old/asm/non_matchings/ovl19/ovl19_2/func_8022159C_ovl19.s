glabel func_8022159C_ovl19
/* 241CAC 8022159C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 241CB0 802215A0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 241CB4 802215A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 241CB8 802215A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 241CBC 802215AC AFA40018 */  sw    $a0, 0x18($sp)
/* 241CC0 802215B0 8C4E0000 */  lw    $t6, ($v0)
/* 241CC4 802215B4 3C018023 */  lui   $at, %hi(D_8022F77C) # $at, 0x8023
/* 241CC8 802215B8 C420F77C */  lwc1  $f0, %lo(D_8022F77C)($at)
/* 241CCC 802215BC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 241CD0 802215C0 000E7880 */  sll   $t7, $t6, 2
/* 241CD4 802215C4 002F0821 */  addu  $at, $at, $t7
/* 241CD8 802215C8 AC20EF90 */ sw $zero, %lo(D_800DEF90)($at)
/* 241CDC 802215CC 8C590000 */  lw    $t9, ($v0)
/* 241CE0 802215D0 3C01800E */ lui $at, %hi(D_800DF150)
/* 241CE4 802215D4 3C188022 */  lui   $t8, %hi(func_80221654_ovl19) # $t8, 0x8022
/* 241CE8 802215D8 00194080 */  sll   $t0, $t9, 2
/* 241CEC 802215DC 00280821 */  addu  $at, $at, $t0
/* 241CF0 802215E0 27181654 */  addiu $t8, %lo(func_80221654_ovl19) # addiu $t8, $t8, 0x1654
/* 241CF4 802215E4 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 241CF8 802215E8 8C490000 */  lw    $t1, ($v0)
/* 241CFC 802215EC 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 241D00 802215F0 3C040002 */  lui   $a0, (0x00020071 >> 16) # lui $a0, 2
/* 241D04 802215F4 00095080 */  sll   $t2, $t1, 2
/* 241D08 802215F8 002A0821 */  addu  $at, $at, $t2
/* 241D0C 802215FC E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 241D10 80221600 8C4B0000 */  lw    $t3, ($v0)
/* 241D14 80221604 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 241D18 80221608 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 241D1C 8022160C 000B6080 */  sll   $t4, $t3, 2
/* 241D20 80221610 002C0821 */  addu  $at, $at, $t4
/* 241D24 80221614 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 241D28 80221618 8C4D0000 */  lw    $t5, ($v0)
/* 241D2C 8022161C 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 241D30 80221620 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 241D34 80221624 000D7080 */  sll   $t6, $t5, 2
/* 241D38 80221628 002E0821 */  addu  $at, $at, $t6
/* 241D3C 8022162C 34840071 */  ori   $a0, (0x00020071 & 0xFFFF) # ori $a0, $a0, 0x71
/* 241D40 80221630 24060010 */  li    $a2, 16
/* 241D44 80221634 0C02A619 */  jal   func_800A9864
/* 241D48 80221638 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 241D4C 8022163C 0C02BE85 */  jal   func_800AFA14
/* 241D50 80221640 00000000 */   nop   
/* 241D54 80221644 8FBF0014 */  lw    $ra, 0x14($sp)
/* 241D58 80221648 27BD0018 */  addiu $sp, $sp, 0x18
/* 241D5C 8022164C 03E00008 */  jr    $ra
/* 241D60 80221650 00000000 */   nop   
.type func_8022159C_ovl19, @function
.size func_8022159C_ovl19, . - func_8022159C_ovl19
