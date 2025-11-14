glabel func_800AFBEC
/* 057E3C 800AFBEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 057E40 800AFBF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 057E44 800AFBF4 0C029D6C */  jal   play_music
/* 057E48 800AFBF8 AFA60020 */   sw    $a2, 0x20($sp)
/* 057E4C 800AFBFC 8FA40020 */  lw    $a0, 0x20($sp)
/* 057E50 800AFC00 50800004 */  beql  $a0, $zero, .L800AFC14_ovl1
/* 057E54 800AFC04 8FBF0014 */   lw    $ra, 0x14($sp)
/* 057E58 800AFC08 0C002DAF */  jal   finish_current_thread
/* 057E5C 800AFC0C 00000000 */   nop   
/* 057E60 800AFC10 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AFC14_ovl1:
/* 057E64 800AFC14 27BD0018 */  addiu $sp, $sp, 0x18
/* 057E68 800AFC18 03E00008 */  jr    $ra
/* 057E6C 800AFC1C 00000000 */   nop   
.type func_800AFBEC, @function
.size func_800AFBEC, . - func_800AFBEC
