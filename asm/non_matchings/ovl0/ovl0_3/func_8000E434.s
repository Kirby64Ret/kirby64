glabel func_8000E434
/* 00F034 8000E434 44856000 */  mtc1  $a1, $f12
/* 00F038 8000E438 C4840078 */  lwc1  $f4, 0x78($a0)
/* 00F03C 8000E43C 8C82006C */  lw    $v0, 0x6c($a0)
/* 00F040 8000E440 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00F044 8000E444 460C2180 */  add.s $f6, $f4, $f12
/* 00F048 8000E448 10400008 */  beqz  $v0, .L8000E46C_ovl0
/* 00F04C 8000E44C E4860074 */   swc1  $f6, 0x74($a0)
/* 00F050 8000E450 44814000 */  mtc1  $at, $f8
/* 00F054 8000E454 00000000 */  nop   
/* 00F058 8000E458 460C4003 */  div.s $f0, $f8, $f12
/* 00F05C 8000E45C E4400008 */  swc1  $f0, 8($v0)
.L8000E460_ovl0:
/* 00F060 8000E460 8C420000 */  lw    $v0, ($v0)
/* 00F064 8000E464 5440FFFE */  bnezl $v0, .L8000E460_ovl0
/* 00F068 8000E468 E4400008 */   swc1  $f0, 8($v0)
.L8000E46C_ovl0:
/* 00F06C 8000E46C 03E00008 */  jr    $ra
/* 00F070 8000E470 00000000 */   nop   
.type func_8000E434, @function
.size func_8000E434, . - func_8000E434
