glabel omGMoveCommon
/* 00AF50 8000A350 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00AF54 8000A354 AFB10018 */  sw    $s1, 0x18($sp)
/* 00AF58 8000A358 AFA60030 */  sw    $a2, 0x30($sp)
/* 00AF5C 8000A35C 93B10033 */  lbu   $s1, 0x33($sp)
/* 00AF60 8000A360 AFB00014 */  sw    $s0, 0x14($sp)
/* 00AF64 8000A364 00A08025 */  move  $s0, $a1
/* 00AF68 8000A368 2A210020 */  slti  $at, $s1, 0x20
/* 00AF6C 8000A36C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00AF70 8000A370 AFA40028 */  sw    $a0, 0x28($sp)
/* 00AF74 8000A374 14200008 */  bnez  $at, .L8000A398_ovl0
/* 00AF78 8000A378 AFA70034 */   sw    $a3, 0x34($sp)
/* 00AF7C 8000A37C 3C048004 */  lui   $a0, %hi(D_80040414) # $a0, 0x8004
/* 00AF80 8000A380 24840414 */  addiu $a0, %lo(D_80040414) # addiu $a0, $a0, 0x414
/* 00AF84 8000A384 02202825 */  move  $a1, $s1
/* 00AF88 8000A388 0C008C27 */  jal   fatal_printf
/* 00AF8C 8000A38C 8E060000 */   lw    $a2, ($s0)
.L8000A390_ovl0:
/* 00AF90 8000A390 1000FFFF */  b     .L8000A390_ovl0
/* 00AF94 8000A394 00000000 */   nop   
.L8000A398_ovl0:
/* 00AF98 8000A398 56000004 */  bnezl $s0, .L8000A3AC_ovl0
/* 00AF9C 8000A39C 8E0E0018 */   lw    $t6, 0x18($s0)
/* 00AFA0 8000A3A0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 00AFA4 8000A3A4 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 00AFA8 8000A3A8 8E0E0018 */  lw    $t6, 0x18($s0)
.L8000A3AC_ovl0:
/* 00AFAC 8000A3AC AFAE0020 */  sw    $t6, 0x20($sp)
/* 00AFB0 8000A3B0 AE000018 */  sw    $zero, 0x18($s0)
/* 00AFB4 8000A3B4 AE00001C */  sw    $zero, 0x1c($s0)
/* 00AFB8 8000A3B8 8FB10020 */  lw    $s1, 0x20($sp)
/* 00AFBC 8000A3BC 12200007 */  beqz  $s1, .L8000A3DC_ovl0
/* 00AFC0 8000A3C0 00000000 */   nop   
.L8000A3C4_ovl0:
/* 00AFC4 8000A3C4 0C002071 */  jal   unlink_gobj_process
/* 00AFC8 8000A3C8 02202025 */   move  $a0, $s1
/* 00AFCC 8000A3CC 8E310000 */  lw    $s1, ($s1)
/* 00AFD0 8000A3D0 1620FFFC */  bnez  $s1, .L8000A3C4_ovl0
/* 00AFD4 8000A3D4 00000000 */   nop   
/* 00AFD8 8000A3D8 8FB10020 */  lw    $s1, 0x20($sp)
.L8000A3DC_ovl0:
/* 00AFDC 8000A3DC 0C00214A */  jal   func_80008528
/* 00AFE0 8000A3E0 02002025 */   move  $a0, $s0
/* 00AFE4 8000A3E4 93B80033 */  lbu   $t8, 0x33($sp)
/* 00AFE8 8000A3E8 24010001 */  li    $at, 1
/* 00AFEC 8000A3EC A218000C */  sb    $t8, 0xc($s0)
/* 00AFF0 8000A3F0 8FB90034 */  lw    $t9, 0x34($sp)
/* 00AFF4 8000A3F4 AE190010 */  sw    $t9, 0x10($s0)
/* 00AFF8 8000A3F8 8FA80028 */  lw    $t0, 0x28($sp)
/* 00AFFC 8000A3FC 1100000A */  beqz  $t0, .L8000A428_ovl0
/* 00B000 8000A400 00000000 */   nop   
/* 00B004 8000A404 1101000C */  beq   $t0, $at, .L8000A438_ovl0
/* 00B008 8000A408 24010002 */   li    $at, 2
/* 00B00C 8000A40C 1101000E */  beq   $t0, $at, .L8000A448_ovl0
/* 00B010 8000A410 02002025 */   move  $a0, $s0
/* 00B014 8000A414 24010003 */  li    $at, 3
/* 00B018 8000A418 1101000F */  beq   $t0, $at, .L8000A458_ovl0
/* 00B01C 8000A41C 8FA90038 */   lw    $t1, 0x38($sp)
/* 00B020 8000A420 10000011 */  b     .L8000A468_ovl0
/* 00B024 8000A424 8FAA0020 */   lw    $t2, 0x20($sp)
.L8000A428_ovl0:
/* 00B028 8000A428 0C00210D */  jal   func_80008434
/* 00B02C 8000A42C 02002025 */   move  $a0, $s0
/* 00B030 8000A430 1000000D */  b     .L8000A468_ovl0
/* 00B034 8000A434 8FAA0020 */   lw    $t2, 0x20($sp)
.L8000A438_ovl0:
/* 00B038 8000A438 0C002128 */  jal   func_800084A0
/* 00B03C 8000A43C 02002025 */   move  $a0, $s0
/* 00B040 8000A440 10000009 */  b     .L8000A468_ovl0
/* 00B044 8000A444 8FAA0020 */   lw    $t2, 0x20($sp)
.L8000A448_ovl0:
/* 00B048 8000A448 0C0020F3 */  jal   func_800083CC
/* 00B04C 8000A44C 8FA50038 */   lw    $a1, 0x38($sp)
/* 00B050 8000A450 10000005 */  b     .L8000A468_ovl0
/* 00B054 8000A454 8FAA0020 */   lw    $t2, 0x20($sp)
.L8000A458_ovl0:
/* 00B058 8000A458 02002025 */  move  $a0, $s0
/* 00B05C 8000A45C 0C0020F3 */  jal   func_800083CC
/* 00B060 8000A460 8D250008 */   lw    $a1, 8($t1)
/* 00B064 8000A464 8FAA0020 */  lw    $t2, 0x20($sp)
.L8000A468_ovl0:
/* 00B068 8000A468 51400007 */  beql  $t2, $zero, .L8000A488_ovl0
/* 00B06C 8000A46C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8000A470_ovl0:
/* 00B070 8000A470 8E300000 */  lw    $s0, ($s1)
/* 00B074 8000A474 0C002030 */  jal   func_800080C0
/* 00B078 8000A478 02202025 */   move  $a0, $s1
/* 00B07C 8000A47C 1600FFFC */  bnez  $s0, .L8000A470_ovl0
/* 00B080 8000A480 02008825 */   move  $s1, $s0
/* 00B084 8000A484 8FBF001C */  lw    $ra, 0x1c($sp)
.L8000A488_ovl0:
/* 00B088 8000A488 8FB00014 */  lw    $s0, 0x14($sp)
/* 00B08C 8000A48C 8FB10018 */  lw    $s1, 0x18($sp)
/* 00B090 8000A490 03E00008 */  jr    $ra
/* 00B094 8000A494 27BD0028 */   addiu $sp, $sp, 0x28
.size omGMoveCommon, . - omGMoveCommon
