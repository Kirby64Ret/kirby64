glabel func_801DE524_ovl16
/* 2147D4 801DE524 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2147D8 801DE528 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2147DC 801DE52C AFA40000 */  sw    $a0, ($sp)
/* 2147E0 801DE530 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 2147E4 801DE534 8DC20000 */  lw    $v0, ($t6)
/* 2147E8 801DE538 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 2147EC 801DE53C 00021080 */  sll   $v0, $v0, 2
/* 2147F0 801DE540 01E27821 */  addu  $t7, $t7, $v0
/* 2147F4 801DE544 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 2147F8 801DE548 00220821 */  addu  $at, $at, $v0
/* 2147FC 801DE54C C424A6E0 */ lwc1 $f4, %lo(D_800EA6E0)($at)
/* 214800 801DE550 8DF80004 */  lw    $t8, 4($t7)
/* 214804 801DE554 03E00008 */  jr    $ra
/* 214808 801DE558 E7040038 */   swc1  $f4, 0x38($t8)
.type func_801DE524_ovl16, @function
.size func_801DE524_ovl16, . - func_801DE524_ovl16
