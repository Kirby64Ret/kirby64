glabel func_800BB4BC # 23
/* 06370C 800BB4BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 063710 800BB4C0 00802825 */  move        $a1, $a0
/* 063714 800BB4C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 063718 800BB4C8 3C04800F */  lui         $a0, %hi(D_800ED4C4)
/* 06371C 800BB4CC 0C02ECF0 */  jal         func_800BB3C0
/* 063720 800BB4D0 8C84D4C4 */   lw         $a0, %lo(D_800ED4C4)($a0)
/* 063724 800BB4D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 063728 800BB4D8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 06372C 800BB4DC 03E00008 */  jr          $ra
/* 063730 800BB4E0 00000000 */   nop
.size func_800BB4BC, . - func_800BB4BC
