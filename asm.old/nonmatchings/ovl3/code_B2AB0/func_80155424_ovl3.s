glabel func_80155424_ovl3
/* B5E64 80155424 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* B5E68 80155428 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* B5E6C 8015542C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B5E70 80155430 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5E74 80155434 8DC30000 */  lw         $v1, 0x0($t6)
/* B5E78 80155438 3C0F800E */  lui        $t7, %hi(D_800E0490)
/* B5E7C 8015543C 3C01800F */  lui        $at, %hi(D_800E8920)
/* B5E80 80155440 00031880 */  sll        $v1, $v1, 2
/* B5E84 80155444 01E37821 */  addu       $t7, $t7, $v1
/* B5E88 80155448 8DEF0490 */  lw         $t7, %lo(D_800E0490)($t7)
/* B5E8C 8015544C 00230821 */  addu       $at, $at, $v1
/* B5E90 80155450 00001025 */  or         $v0, $zero, $zero
/* B5E94 80155454 15E00003 */  bnez       $t7, .L80155464_ovl3
/* B5E98 80155458 00000000 */   nop
/* B5E9C 8015545C 1000000A */  b          .L80155488_ovl3
/* B5EA0 80155460 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
.L80155464_ovl3:
/* B5EA4 80155464 0C05533F */  jal        func_80154CFC_ovl3
/* B5EA8 80155468 00000000 */   nop
/* B5EAC 8015546C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* B5EB0 80155470 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* B5EB4 80155474 3C02800F */  lui        $v0, %hi(D_800E8920)
/* B5EB8 80155478 8F190000 */  lw         $t9, 0x0($t8)
/* B5EBC 8015547C 00194080 */  sll        $t0, $t9, 2
/* B5EC0 80155480 00481021 */  addu       $v0, $v0, $t0
/* B5EC4 80155484 8C428920 */  lw         $v0, %lo(D_800E8920)($v0)
.L80155488_ovl3:
/* B5EC8 80155488 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5ECC 8015548C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B5ED0 80155490 03E00008 */  jr         $ra
/* B5ED4 80155494 00000000 */   nop
