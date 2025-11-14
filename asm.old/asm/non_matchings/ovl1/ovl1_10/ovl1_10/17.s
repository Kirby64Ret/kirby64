glabel func_800BB3C0 # 17
/* 063610 800BB3C0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 063614 800BB3C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 063618 800BB3C8 240E0002 */  addiu       $t6, $zero, 0x2
/* 06361C 800BB3CC AFA40028 */  sw          $a0, 0x28($sp)
/* 063620 800BB3D0 AFAE001C */  sw          $t6, 0x1C($sp)
/* 063624 800BB3D4 AFA5002C */  sw          $a1, 0x2C($sp)
/* 063628 800BB3D8 0C02EC0A */  jal         func_800BB028
/* 06362C 800BB3DC 27A4001C */   addiu      $a0, $sp, 0x1C
/* 063630 800BB3E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 063634 800BB3E4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 063638 800BB3E8 03E00008 */  jr          $ra
/* 06363C 800BB3EC 00000000 */   nop
.size func_800BB3C0, . - func_800BB3C0
