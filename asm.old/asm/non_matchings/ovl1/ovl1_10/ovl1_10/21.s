glabel func_800BB468 # 21
/* 0636B8 800BB468 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0636BC 800BB46C 00A03025 */  move        $a2, $a1
/* 0636C0 800BB470 00802825 */  move        $a1, $a0
/* 0636C4 800BB474 AFA40018 */  sw          $a0, 0x18($sp)
/* 0636C8 800BB478 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0636CC 800BB47C 3C04800F */  lui         $a0, %hi(D_800ED4C4)
/* 0636D0 800BB480 0C02ECD9 */  jal         func_800BB364
/* 0636D4 800BB484 8C84D4C4 */   lw         $a0, %lo(D_800ED4C4)($a0)
/* 0636D8 800BB488 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0636DC 800BB48C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0636E0 800BB490 03E00008 */  jr          $ra
/* 0636E4 800BB494 00000000 */   nop
.size func_800BB468, . - func_800BB468
