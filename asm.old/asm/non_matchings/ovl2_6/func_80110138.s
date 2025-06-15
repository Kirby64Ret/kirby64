glabel func_80110138
/* 098BA8 80110138 AFA40000 */  sw    $a0, ($sp)
/* 098BAC 8011013C AFA50004 */  sw    $a1, 4($sp)
/* 098BB0 80110140 AFA60008 */  sw    $a2, 8($sp)
/* 098BB4 80110144 03E00008 */  jr    $ra
/* 098BB8 80110148 AFA7000C */   sw    $a3, 0xc($sp)
/* 098BBC 8011014C 00000000 */  nop   
.type func_80110138, @function
.size func_80110138, . - func_80110138
