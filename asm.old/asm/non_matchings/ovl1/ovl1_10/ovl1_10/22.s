glabel func_800BB498 # 22
/* 0636E8 800BB498 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0636EC 800BB49C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0636F0 800BB4A0 3C04800F */  lui         $a0, %hi(D_800ED4C4)
/* 0636F4 800BB4A4 0C02ECE5 */  jal         func_800BB394
/* 0636F8 800BB4A8 8C84D4C4 */   lw         $a0, %lo(D_800ED4C4)($a0)
/* 0636FC 800BB4AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 063700 800BB4B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 063704 800BB4B4 03E00008 */  jr          $ra
/* 063708 800BB4B8 00000000 */   nop
.size func_800BB498, . - func_800BB498
