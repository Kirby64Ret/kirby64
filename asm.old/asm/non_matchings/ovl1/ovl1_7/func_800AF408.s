glabel func_800AF408
/* 057658 800AF408 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 05765C 800AF40C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 057660 800AF410 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 057664 800AF414 AFBF001C */  sw    $ra, 0x1c($sp)
/* 057668 800AF418 AFB10018 */  sw    $s1, 0x18($sp)
/* 05766C 800AF41C AFB00014 */  sw    $s0, 0x14($sp)
/* 057670 800AF420 8C71003C */  lw    $s1, 0x3c($v1)
/* 057674 800AF424 52200012 */  beql  $s1, $zero, .L800AF470_ovl1
/* 057678 800AF428 8C6E0000 */   lw    $t6, ($v1)
.L800AF42C_ovl1:
/* 05767C 800AF42C 0C002613 */  jal   func_8000984C_ovl1
/* 057680 800AF430 02202025 */   move  $a0, $s1
/* 057684 800AF434 8E300080 */  lw    $s0, 0x80($s1)
/* 057688 800AF438 12000006 */  beqz  $s0, .L800AF454_ovl1
/* 05768C 800AF43C 00000000 */   nop   
.L800AF440_ovl1:
/* 057690 800AF440 0C002646 */  jal   func_80009918_ovl1
/* 057694 800AF444 02002025 */   move  $a0, $s0
/* 057698 800AF448 8E100000 */  lw    $s0, ($s0)
/* 05769C 800AF44C 1600FFFC */  bnez  $s0, .L800AF440_ovl1
/* 0576A0 800AF450 00000000 */   nop   
.L800AF454_ovl1:
/* 0576A4 800AF454 0C002FA4 */  jal   func_8000BE90
/* 0576A8 800AF458 02202025 */   move  $a0, $s1
/* 0576AC 800AF45C 1440FFF3 */  bnez  $v0, .L800AF42C_ovl1
/* 0576B0 800AF460 00408825 */   move  $s1, $v0
/* 0576B4 800AF464 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0576B8 800AF468 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0576BC 800AF46C 8C6E0000 */  lw    $t6, ($v1)
.L800AF470_ovl1:
/* 0576C0 800AF470 3C01800E */ lui $at, %hi(D_800DF310)
/* 0576C4 800AF474 3C08800E */  lui   $t0, %hi(D_800DD8D0) # $t0, 0x800e
/* 0576C8 800AF478 000E7880 */  sll   $t7, $t6, 2
/* 0576CC 800AF47C 002F0821 */  addu  $at, $at, $t7
/* 0576D0 800AF480 AC20F310 */ sw $zero, %lo(D_800DF310)($at)
/* 0576D4 800AF484 8C780000 */  lw    $t8, ($v1)
/* 0576D8 800AF488 2508D8D0 */  addiu $t0, %lo(D_800DD8D0) # addiu $t0, $t0, -0x2730
/* 0576DC 800AF48C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0576E0 800AF490 0018C880 */  sll   $t9, $t8, 2
/* 0576E4 800AF494 03281021 */  addu  $v0, $t9, $t0
/* 0576E8 800AF498 8C490000 */  lw    $t1, ($v0)
/* 0576EC 800AF49C 3C013FFF */  lui   $at, (0x3FFFFFFF >> 16) # lui $at, 0x3fff
/* 0576F0 800AF4A0 3421FFFF */  ori   $at, (0x3FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0576F4 800AF4A4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0576F8 800AF4A8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0576FC 800AF4AC 01215024 */  and   $t2, $t1, $at
/* 057700 800AF4B0 AC4A0000 */  sw    $t2, ($v0)
/* 057704 800AF4B4 03E00008 */  jr    $ra
/* 057708 800AF4B8 27BD0020 */   addiu $sp, $sp, 0x20
.type func_800AF408, @function
.size func_800AF408, . - func_800AF408
