glabel func_8001E3D4
/* 01EFD4 8001E3D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01EFD8 8001E3D8 8FAE0028 */  lw    $t6, 0x28($sp)
/* 01EFDC 8001E3DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 01EFE0 8001E3E0 AFA40018 */  sw    $a0, 0x18($sp)
/* 01EFE4 8001E3E4 00EE0019 */  multu $a3, $t6
/* 01EFE8 8001E3E8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01EFEC 8001E3EC 8CD80008 */  lw    $t8, 8($a2)
/* 01EFF0 8001E3F0 8CCF0000 */  lw    $t7, ($a2)
/* 01EFF4 8001E3F4 8CC20004 */  lw    $v0, 4($a2)
/* 01EFF8 8001E3F8 2401FFF0 */  li    $at, -16
/* 01EFFC 8001E3FC 01F8C821 */  addu  $t9, $t7, $t8
/* 01F000 8001E400 3C048004 */  lui   $a0, %hi(D_80040CE0) # $a0, 0x8004
/* 01F004 8001E404 00001812 */  mflo  $v1
/* 01F008 8001E408 2463000F */  addiu $v1, $v1, 0xf
/* 01F00C 8001E40C 00611824 */  and   $v1, $v1, $at
/* 01F010 8001E410 00434021 */  addu  $t0, $v0, $v1
/* 01F014 8001E414 0328082B */  sltu  $at, $t9, $t0
/* 01F018 8001E418 14200004 */  bnez  $at, .L8001E42C_ovl0
/* 01F01C 8001E41C 00434821 */   addu  $t1, $v0, $v1
/* 01F020 8001E420 00402025 */  move  $a0, $v0
/* 01F024 8001E424 10000005 */  b     .L8001E43C_ovl0
/* 01F028 8001E428 ACC90004 */   sw    $t1, 4($a2)
.L8001E42C_ovl0:
/* 01F02C 8001E42C 0C008C27 */  jal   fatal_printf
/* 01F030 8001E430 24840CE0 */   addiu $a0, %lo(D_80040CE0) # addiu $a0, $a0, 0xce0
.L8001E434_ovl0:
/* 01F034 8001E434 1000FFFF */  b     .L8001E434_ovl0
/* 01F038 8001E438 00000000 */   nop   
.L8001E43C_ovl0:
/* 01F03C 8001E43C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01F040 8001E440 27BD0018 */  addiu $sp, $sp, 0x18
/* 01F044 8001E444 00801025 */  move  $v0, $a0
/* 01F048 8001E448 03E00008 */  jr    $ra
/* 01F04C 8001E44C 00000000 */   nop   
.type func_8001E3D4, @function
.size func_8001E3D4, . - func_8001E3D4
