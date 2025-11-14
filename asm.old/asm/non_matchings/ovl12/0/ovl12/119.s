glabel func_801E10C4_ovl12 # 119
/* 005EC4 801E10C4 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 005EC8 801E10C8 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 005ECC 801E10CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 005ED0 801E10D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 005ED4 801E10D4 AFA40018 */  sw          $a0, 0x18($sp)
/* 005ED8 801E10D8 8C4F0000 */  lw          $t7, 0x0($v0)
/* 005EDC 801E10DC 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 005EE0 801E10E0 240E0008 */  addiu       $t6, $zero, 0x8
/* 005EE4 801E10E4 000FC080 */  sll         $t8, $t7, 2
/* 005EE8 801E10E8 00380821 */  addu        $at, $at, $t8
/* 005EEC 801E10EC AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 005EF0 801E10F0 8C590000 */  lw          $t9, 0x0($v0)
/* 005EF4 801E10F4 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 005EF8 801E10F8 24030001 */  addiu       $v1, $zero, 0x1
/* 005EFC 801E10FC 00194080 */  sll         $t0, $t9, 2
/* 005F00 801E1100 00280821 */  addu        $at, $at, $t0
/* 005F04 801E1104 AC239AA0 */  sw          $v1, %lo(D_800E9AA0)($at)
/* 005F08 801E1108 3C01800D */  lui         $at, %hi(D_800D70C4)
/* 005F0C 801E110C 0C02BE85 */  jal         func_800AFA14
/* 005F10 801E1110 AC2370C4 */   sw         $v1, %lo(D_800D70C4)($at)
/* 005F14 801E1114 8FBF0014 */  lw          $ra, 0x14($sp)
/* 005F18 801E1118 27BD0018 */  addiu       $sp, $sp, 0x18
/* 005F1C 801E111C 03E00008 */  jr          $ra
/* 005F20 801E1120 00000000 */   nop
.type func_801E10C4_ovl12, @function
.size func_801E10C4_ovl12, . - func_801E10C4_ovl12
