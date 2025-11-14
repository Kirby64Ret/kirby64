glabel func_800BB364 # 15
/* 0635B4 800BB364 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0635B8 800BB368 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0635BC 800BB36C AFA40024 */  sw          $a0, 0x24($sp)
/* 0635C0 800BB370 AFA00018 */  sw          $zero, 0x18($sp)
/* 0635C4 800BB374 AFA50028 */  sw          $a1, 0x28($sp)
/* 0635C8 800BB378 AFA6002C */  sw          $a2, 0x2C($sp)
/* 0635CC 800BB37C 0C02EC0A */  jal         func_800BB028
/* 0635D0 800BB380 27A40018 */   addiu      $a0, $sp, 0x18
/* 0635D4 800BB384 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0635D8 800BB388 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0635DC 800BB38C 03E00008 */  jr          $ra
/* 0635E0 800BB390 00000000 */   nop
.size func_800BB364, . - func_800BB364
