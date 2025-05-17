glabel func_80020888
/* 021488 80020888 3C018004 */ lui $at, %hi(D_8003F338)
/* 02148C 8002088C 03E00008 */  jr    $ra
/* 021490 80020890 AC20F338 */ sw $zero, %lo(D_8003F338)($at)
.type func_80020888, @function
.size func_80020888, . - func_80020888
