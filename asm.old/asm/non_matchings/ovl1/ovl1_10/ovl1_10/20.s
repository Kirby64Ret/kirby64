glabel func_800BB440 # 20
/* 063690 800BB440 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 063694 800BB444 AFBF0014 */  sw          $ra, 0x14($sp)
/* 063698 800BB448 240E0005 */  addiu       $t6, $zero, 0x5
/* 06369C 800BB44C AFAE001C */  sw          $t6, 0x1C($sp)
/* 0636A0 800BB450 0C02EC0A */  jal         func_800BB028
/* 0636A4 800BB454 27A4001C */   addiu      $a0, $sp, 0x1C
/* 0636A8 800BB458 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0636AC 800BB45C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0636B0 800BB460 03E00008 */  jr          $ra
/* 0636B4 800BB464 00000000 */   nop
.size func_800BB440, . - func_800BB440
