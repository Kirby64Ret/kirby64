glabel func_800A71A0
/* 04F3F0 800A71A0 248EFFF6 */  addiu $t6, $a0, -0xa
/* 04F3F4 800A71A4 000E7842 */  srl   $t7, $t6, 1
/* 04F3F8 800A71A8 000FC080 */  sll   $t8, $t7, 2
/* 04F3FC 800A71AC 3C05800D */ lui $a1, %hi(D_800D79B0)
/* 04F400 800A71B0 00B82821 */  addu  $a1, $a1, $t8
/* 04F404 800A71B4 8CA579B0 */ lw $a1, %lo(D_800D79B0)($a1)
/* 04F408 800A71B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04F40C 800A71BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F410 800A71C0 50A00004 */  beql  $a1, $zero, .L800A71D4_ovl1
/* 04F414 800A71C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 04F418 800A71C8 0C004262 */  jal   func_80010988_ovl1
/* 04F41C 800A71CC 00A02025 */   move  $a0, $a1
/* 04F420 800A71D0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A71D4_ovl1:
/* 04F424 800A71D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 04F428 800A71D8 03E00008 */  jr    $ra
/* 04F42C 800A71DC 00000000 */   nop   
.type func_800A71A0, @function
.size func_800A71A0, . - func_800A71A0
