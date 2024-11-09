glabel func_8017E1EC_ovl3
/* 0DEC2C 8017E1EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0DEC30 8017E1F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0DEC34 8017E1F4 0C054E61 */  jal   func_80153984_ovl3
/* 0DEC38 8017E1F8 AFA40018 */   sw    $a0, 0x18($sp)
/* 0DEC3C 8017E1FC 0C0473D6 */  jal   func_8011CF58
/* 0DEC40 8017E200 00000000 */   nop   
/* 0DEC44 8017E204 0C0485EE */  jal   func_801217B8
/* 0DEC48 8017E208 00000000 */   nop   
/* 0DEC4C 8017E20C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0DEC50 8017E210 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0DEC54 8017E214 8C6E0030 */  lw    $t6, 0x30($v1)
/* 0DEC58 8017E218 51C00008 */  beql  $t6, $zero, .L8017E23C_ovl3
/* 0DEC5C 8017E21C 8C6F00A0 */   lw    $t7, 0xa0($v1)
/* 0DEC60 8017E220 0C047717 */  jal   func_8011DC5C
/* 0DEC64 8017E224 00000000 */   nop   
/* 0DEC68 8017E228 0C04759F */  jal   func_8011D67C
/* 0DEC6C 8017E22C 00000000 */   nop   
/* 0DEC70 8017E230 10000011 */  b     .L8017E278_ovl3
/* 0DEC74 8017E234 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0DEC78 8017E238 8C6F00A0 */  lw    $t7, 0xa0($v1)
.L8017E23C_ovl3:
/* 0DEC7C 8017E23C 3C048019 */  lui   $a0, %hi(D_8019338C) # $a0, 0x8019
/* 0DEC80 8017E240 2484338C */  addiu $a0, %lo(D_8019338C) # addiu $a0, $a0, 0x338c
/* 0DEC84 8017E244 51E0000C */  beql  $t7, $zero, .L8017E278_ovl3
/* 0DEC88 8017E248 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0DEC8C 8017E24C 0C055127 */  jal   func_8015449C_ovl3
/* 0DEC90 8017E250 00002825 */   move  $a1, $zero
/* 0DEC94 8017E254 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0DEC98 8017E258 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0DEC9C 8017E25C 3C048019 */  lui   $a0, %hi(D_8019154C) # $a0, 0x8019
/* 0DECA0 8017E260 2484154C */  addiu $a0, %lo(D_8019154C) # addiu $a0, $a0, 0x154c
/* 0DECA4 8017E264 0C044681 */  jal   func_80111A04
/* 0DECA8 8017E268 8F050000 */   lw    $a1, ($t8)
/* 0DECAC 8017E26C 0C044713 */  jal   func_80111C4C
/* 0DECB0 8017E270 00402025 */   move  $a0, $v0
/* 0DECB4 8017E274 8FBF0014 */  lw    $ra, 0x14($sp)
.L8017E278_ovl3:
/* 0DECB8 8017E278 27BD0018 */  addiu $sp, $sp, 0x18
/* 0DECBC 8017E27C 03E00008 */  jr    $ra
/* 0DECC0 8017E280 00000000 */   nop   
.type func_8017E1EC_ovl3, @function
.size func_8017E1EC_ovl3, . - func_8017E1EC_ovl3
