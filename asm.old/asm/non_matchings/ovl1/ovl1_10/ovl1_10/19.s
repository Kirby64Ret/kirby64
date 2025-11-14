glabel func_800BB418 # 19
/* 063668 800BB418 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 06366C 800BB41C AFBF0014 */  sw          $ra, 0x14($sp)
/* 063670 800BB420 240E0004 */  addiu       $t6, $zero, 0x4
/* 063674 800BB424 AFAE001C */  sw          $t6, 0x1C($sp)
/* 063678 800BB428 0C02EC0A */  jal         func_800BB028
/* 06367C 800BB42C 27A4001C */   addiu      $a0, $sp, 0x1C
/* 063680 800BB430 8FBF0014 */  lw          $ra, 0x14($sp)
/* 063684 800BB434 27BD0028 */  addiu       $sp, $sp, 0x28
/* 063688 800BB438 03E00008 */  jr          $ra
/* 06368C 800BB43C 00000000 */   nop
.size func_800BB418, . - func_800BB418
