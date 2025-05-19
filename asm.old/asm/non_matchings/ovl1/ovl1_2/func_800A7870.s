glabel func_800A7870
/* 04FAC0 800A7870 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04FAC4 800A7874 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04FAC8 800A7878 8C860000 */  lw    $a2, ($a0)
/* 04FACC 800A787C 00803825 */  move  $a3, $a0
/* 04FAD0 800A7880 50C0000E */  beql  $a2, $zero, .L800A78BC_ovl1
/* 04FAD4 800A7884 ACE00000 */   sw    $zero, ($a3)
/* 04FAD8 800A7888 94A20000 */  lhu   $v0, ($a1)
/* 04FADC 800A788C 5040000B */  beql  $v0, $zero, .L800A78BC_ovl1
/* 04FAE0 800A7890 ACE00000 */   sw    $zero, ($a3)
/* 04FAE4 800A7894 94CE0026 */  lhu   $t6, 0x26($a2)
/* 04FAE8 800A7898 00C02025 */  move  $a0, $a2
/* 04FAEC 800A789C 55C20007 */  bnel  $t6, $v0, .L800A78BC_ovl1
/* 04FAF0 800A78A0 ACE00000 */   sw    $zero, ($a3)
/* 04FAF4 800A78A4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 04FAF8 800A78A8 0C008E8A */  jal   func_80023A28_ovl1
/* 04FAFC 800A78AC AFA70018 */   sw    $a3, 0x18($sp)
/* 04FB00 800A78B0 8FA5001C */  lw    $a1, 0x1c($sp)
/* 04FB04 800A78B4 8FA70018 */  lw    $a3, 0x18($sp)
/* 04FB08 800A78B8 ACE00000 */  sw    $zero, ($a3)
.L800A78BC_ovl1:
/* 04FB0C 800A78BC A4A00000 */  sh    $zero, ($a1)
/* 04FB10 800A78C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04FB14 800A78C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 04FB18 800A78C8 03E00008 */  jr    $ra
/* 04FB1C 800A78CC 00000000 */   nop   
.type func_800A7870, @function
.size func_800A7870, . - func_800A7870
