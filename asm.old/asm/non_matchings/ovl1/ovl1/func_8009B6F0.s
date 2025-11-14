glabel func_8009B6F0
/* 043940 8009B6F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 043944 8009B6F4 AFA40018 */  sw    $a0, 0x18($sp)
/* 043948 8009B6F8 8FAE0018 */  lw    $t6, 0x18($sp)
/* 04394C 8009B6FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 043950 8009B700 AFA5001C */  sw    $a1, 0x1c($sp)
/* 043954 8009B704 00A03025 */  move  $a2, $a1
/* 043958 8009B708 30C400FF */  andi  $a0, $a2, 0xff
/* 04395C 8009B70C 0C026D7A */  jal   func_8009B5E8
/* 043960 8009B710 95C50004 */   lhu   $a1, 4($t6)
/* 043964 8009B714 8FAF0018 */  lw    $t7, 0x18($sp)
/* 043968 8009B718 ADE20060 */  sw    $v0, 0x60($t7)
/* 04396C 8009B71C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 043970 8009B720 27BD0018 */  addiu $sp, $sp, 0x18
/* 043974 8009B724 03E00008 */  jr    $ra
/* 043978 8009B728 00000000 */   nop   
.type func_8009B6F0, @function
.size func_8009B6F0, . - func_8009B6F0
