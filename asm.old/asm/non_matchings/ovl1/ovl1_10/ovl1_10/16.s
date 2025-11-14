glabel func_800BB394 # 16
/* 0635E4 800BB394 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0635E8 800BB398 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0635EC 800BB39C 240E0001 */  addiu       $t6, $zero, 0x1
/* 0635F0 800BB3A0 AFA40024 */  sw          $a0, 0x24($sp)
/* 0635F4 800BB3A4 AFAE0018 */  sw          $t6, 0x18($sp)
/* 0635F8 800BB3A8 0C02EC0A */  jal         func_800BB028
/* 0635FC 800BB3AC 27A40018 */   addiu      $a0, $sp, 0x18
/* 063600 800BB3B0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 063604 800BB3B4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 063608 800BB3B8 03E00008 */  jr          $ra
/* 06360C 800BB3BC 00000000 */   nop
.size func_800BB394, . - func_800BB394
