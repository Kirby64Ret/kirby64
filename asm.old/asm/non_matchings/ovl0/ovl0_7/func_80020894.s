glabel func_80020894
/* 021494 80020894 3C018004 */ lui $at, %hi(D_8003F338)
/* 021498 80020898 03E00008 */  jr    $ra
/* 02149C 8002089C AC24F338 */ sw $a0, %lo(D_8003F338)($at)
.type func_80020894, @function
.size func_80020894, . - func_80020894
