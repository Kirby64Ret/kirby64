glabel func_80020C88
/* 021888 80020C88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02188C 80020C8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 021890 80020C90 0C008E64 */  jal   func_80023990
/* 021894 80020C94 00000000 */   nop   
/* 021898 80020C98 3C038009 */  lui   $v1, %hi(D_800964D3) # $v1, 0x8009
/* 02189C 80020C9C 906364D3 */  lbu   $v1, %lo(D_800964D3)($v1)
/* 0218A0 80020CA0 00001025 */  move  $v0, $zero
/* 0218A4 80020CA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0218A8 80020CA8 18600004 */  blez  $v1, .L80020CBC_ovl0
/* 0218AC 80020CAC 24420001 */   addiu $v0, $v0, 1
.L80020CB0_ovl0:
/* 0218B0 80020CB0 0043082A */  slt   $at, $v0, $v1
/* 0218B4 80020CB4 5420FFFE */  bnezl $at, .L80020CB0_ovl0
/* 0218B8 80020CB8 24420001 */   addiu $v0, $v0, 1
.L80020CBC_ovl0:
/* 0218BC 80020CBC 03E00008 */  jr    $ra
/* 0218C0 80020CC0 27BD0018 */   addiu $sp, $sp, 0x18
.type func_80020C88, @function
.size func_80020C88, . - func_80020C88
