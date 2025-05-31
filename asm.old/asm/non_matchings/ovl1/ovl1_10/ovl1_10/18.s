glabel func_800BB3F0 # 18
/* 063640 800BB3F0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 063644 800BB3F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 063648 800BB3F8 240E0003 */  addiu       $t6, $zero, 0x3
/* 06364C 800BB3FC AFAE001C */  sw          $t6, 0x1C($sp)
/* 063650 800BB400 0C02EC0A */  jal         func_800BB028
/* 063654 800BB404 27A4001C */   addiu      $a0, $sp, 0x1C
/* 063658 800BB408 8FBF0014 */  lw          $ra, 0x14($sp)
/* 06365C 800BB40C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 063660 800BB410 03E00008 */  jr          $ra
/* 063664 800BB414 00000000 */   nop
.size func_800BB3F0, . - func_800BB3F0
