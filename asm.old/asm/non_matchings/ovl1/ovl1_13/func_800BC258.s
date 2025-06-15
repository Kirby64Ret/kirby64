glabel func_800BC258
/* 0644A8 800BC258 3C03800D */  lui   $v1, %hi(gKirbyLives) # $v1, 0x800d
/* 0644AC 800BC25C 24636E4C */  addiu $v1, %lo(gKirbyLives) # addiu $v1, $v1, 0x6e4c
/* 0644B0 800BC260 8C6E0000 */  lw    $t6, ($v1)
/* 0644B4 800BC264 01C41021 */  addu  $v0, $t6, $a0
/* 0644B8 800BC268 04410003 */  bgez  $v0, .L800BC278_ovl1
/* 0644BC 800BC26C AC620000 */   sw    $v0, ($v1)
/* 0644C0 800BC270 AC600000 */  sw    $zero, ($v1)
/* 0644C4 800BC274 00001025 */  move  $v0, $zero
.L800BC278_ovl1:
/* 0644C8 800BC278 28410065 */  slti  $at, $v0, 0x65
/* 0644CC 800BC27C 14200003 */  bnez  $at, .L800BC28C_ovl1
/* 0644D0 800BC280 00000000 */   nop   
/* 0644D4 800BC284 24020064 */  li    $v0, 100
/* 0644D8 800BC288 AC620000 */  sw    $v0, ($v1)
.L800BC28C_ovl1:
/* 0644DC 800BC28C 3C01800D */ lui $at, %hi(D_800D6E88)
/* 0644E0 800BC290 03E00008 */  jr    $ra
/* 0644E4 800BC294 AC226E88 */ sw $v0, %lo(D_800D6E88)($at)
.type func_800BC258, @function
.size func_800BC258, . - func_800BC258
