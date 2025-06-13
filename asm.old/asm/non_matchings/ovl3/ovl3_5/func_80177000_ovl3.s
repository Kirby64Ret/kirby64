glabel func_80177000_ovl3
/* 0D7A40 80177000 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0D7A44 80177004 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0D7A48 80177008 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D7A4C 8017700C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D7A50 80177010 AFA40018 */  sw    $a0, 0x18($sp)
/* 0D7A54 80177014 8DCF0000 */  lw    $t7, ($t6)
/* 0D7A58 80177018 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray4)
/* 0D7A5C 8017701C 3C058017 */  lui   $a1, %hi(D_801770E0) # $a1, 0x8017
/* 0D7A60 80177020 000FC080 */  sll   $t8, $t7, 2
/* 0D7A64 80177024 00982021 */  addu  $a0, $a0, $t8
/* 0D7A68 80177028 8C84EA50 */ lw $a0, %lo(gEntityGObjProcessArray4)($a0)
/* 0D7A6C 8017702C 0C02C7DA */  jal   func_800B1F68
/* 0D7A70 80177030 24A570E0 */   addiu $a1, %lo(D_801770E0) # addiu $a1, $a1, 0x70e0
/* 0D7A74 80177034 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D7A78 80177038 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D7A7C 8017703C 3C01800E */ lui $at, %hi(D_800DE190)
/* 0D7A80 80177040 3C03800E */  lui   $v1, %hi(D_800DDE10) # $v1, 0x800e
/* 0D7A84 80177044 8C590000 */  lw    $t9, ($v0)
/* 0D7A88 80177048 2463DE10 */  addiu $v1, %lo(D_800DDE10) # addiu $v1, $v1, -0x21f0
/* 0D7A8C 8017704C 3C068019 */  lui   $a2, %hi(D_80196CA8) # $a2, 0x8019
/* 0D7A90 80177050 00194080 */  sll   $t0, $t9, 2
/* 0D7A94 80177054 00280821 */  addu  $at, $at, $t0
/* 0D7A98 80177058 AC20E190 */ sw $zero, %lo(D_800DE190)($at)
/* 0D7A9C 8017705C 8C490000 */  lw    $t1, ($v0)
/* 0D7AA0 80177060 24C66CA8 */  addiu $a2, %lo(D_80196CA8) # addiu $a2, $a2, 0x6ca8
/* 0D7AA4 80177064 24050002 */  li    $a1, 2
/* 0D7AA8 80177068 00095080 */  sll   $t2, $t1, 2
/* 0D7AAC 8017706C 006A5821 */  addu  $t3, $v1, $t2
/* 0D7AB0 80177070 AD600000 */  sw    $zero, ($t3)
/* 0D7AB4 80177074 8C4C0000 */  lw    $t4, ($v0)
/* 0D7AB8 80177078 000C6880 */  sll   $t5, $t4, 2
/* 0D7ABC 8017707C 006D7021 */  addu  $t6, $v1, $t5
/* 0D7AC0 80177080 0C02911F */  jal   call_virtual_function
/* 0D7AC4 80177084 8DC40000 */   lw    $a0, ($t6)
/* 0D7AC8 80177088 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D7ACC 8017708C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D7AD0 80177090 03E00008 */  jr    $ra
/* 0D7AD4 80177094 00000000 */   nop   
.type func_80177000_ovl3, @function
.size func_80177000_ovl3, . - func_80177000_ovl3
