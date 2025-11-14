glabel func_80158528_ovl3
/* 0B8F68 80158528 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0B8F6C 8015852C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0B8F70 80158530 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B8F74 80158534 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B8F78 80158538 8DF80000 */  lw    $t8, ($t7)
/* 0B8F7C 8015853C 3C01800E */  lui   $at, 0x800e
/* 0B8F80 80158540 240E0047 */  li    $t6, 71
/* 0B8F84 80158544 0018C880 */  sll   $t9, $t8, 2
/* 0B8F88 80158548 00390821 */  addu  $at, $at, $t9
/* 0B8F8C 8015854C 0C056104 */  jal   func_80158410_ovl3
/* 0B8F90 80158550 AC2EDFD0 */   sw    $t6, -0x2030($at)
/* 0B8F94 80158554 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B8F98 80158558 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B8F9C 8015855C 03E00008 */  jr    $ra
/* 0B8FA0 80158560 00000000 */   nop   
.type func_80158528_ovl3, @function
.size func_80158528_ovl3, . - func_80158528_ovl3
