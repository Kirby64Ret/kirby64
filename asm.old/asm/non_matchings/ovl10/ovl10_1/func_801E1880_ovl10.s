glabel func_801E1880_ovl10
/* 1D25F0 801E1880 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1D25F4 801E1884 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1D25F8 801E1888 AFA40000 */  sw    $a0, ($sp)
/* 1D25FC 801E188C 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D2600 801E1890 8DF80000 */  lw    $t8, ($t7)
/* 1D2604 801E1894 240E03E8 */  li    $t6, 1000
/* 1D2608 801E1898 0018C880 */  sll   $t9, $t8, 2
/* 1D260C 801E189C 00390821 */  addu  $at, $at, $t9
/* 1D2610 801E18A0 03E00008 */  jr    $ra
/* 1D2614 801E18A4 AC2EA520 */ sw $t6, %lo(D_800EA520)($at)
.type func_801E1880_ovl10, @function
.size func_801E1880_ovl10, . - func_801E1880_ovl10
