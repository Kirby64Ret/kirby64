glabel func_80020C70
/* 021870 80020C70 AFA40000 */  sw    $a0, ($sp)
/* 021874 80020C74 AFA50004 */  sw    $a1, 4($sp)
/* 021878 80020C78 AFA60008 */  sw    $a2, 8($sp)
/* 02187C 80020C7C AFA7000C */  sw    $a3, 0xc($sp)
/* 021880 80020C80 03E00008 */  jr    $ra
/* 021884 80020C84 2402FFFF */   li    $v0, -1
.type func_80020C70, @function
.size func_80020C70, . - func_80020C70
