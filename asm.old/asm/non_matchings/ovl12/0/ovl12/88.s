glabel func_801DF0D8_ovl12 # 88
/* 003ED8 801DF0D8 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 003EDC 801DF0DC 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 003EE0 801DF0E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 003EE4 801DF0E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 003EE8 801DF0E8 8DC20000 */  lw          $v0, 0x0($t6)
/* 003EEC 801DF0EC 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 003EF0 801DF0F0 44802000 */  mtc1        $zero, $f4
/* 003EF4 801DF0F4 00021080 */  sll         $v0, $v0, 2
/* 003EF8 801DF0F8 00220821 */  addu        $at, $at, $v0
/* 003EFC 801DF0FC C4267B20 */  lwc1        $f6, %lo(D_800E7B20)($at)
/* 003F00 801DF100 3C03800F */  lui         $v1, %hi(D_800E93A0)
/* 003F04 801DF104 00621821 */  addu        $v1, $v1, $v0
/* 003F08 801DF108 4606203C */  c.lt.s      $f4, $f6
/* 003F0C 801DF10C 00000000 */  nop
/* 003F10 801DF110 4502001B */  bc1fl       .L801DF180
/* 003F14 801DF114 8FBF0014 */   lw         $ra, 0x14($sp)
/* 003F18 801DF118 8C6393A0 */  lw          $v1, %lo(D_800E93A0)($v1)
/* 003F1C 801DF11C 2404FFFF */  addiu       $a0, $zero, -0x1
/* 003F20 801DF120 3C0F800D */  lui         $t7, %hi(D_800D70B0)
/* 003F24 801DF124 10830003 */  beq         $a0, $v1, .L801DF134
/* 003F28 801DF128 28610011 */   slti       $at, $v1, 0x11
/* 003F2C 801DF12C 54200014 */  bnel        $at, $zero, .L801DF180
/* 003F30 801DF130 8FBF0014 */   lw         $ra, 0x14($sp)
.L801DF134:
/* 003F34 801DF134 8DEF70B0 */  lw          $t7, %lo(D_800D70B0)($t7)
/* 003F38 801DF138 00002825 */  move        $a1, $zero
/* 003F3C 801DF13C 508F0010 */  beql        $a0, $t7, .L801DF180
/* 003F40 801DF140 8FBF0014 */   lw         $ra, 0x14($sp)
/* 003F44 801DF144 0C06B352 */  jal         func_801ACD48_ovl7
/* 003F48 801DF148 2404002A */   addiu      $a0, $zero, 0x2A
/* 003F4C 801DF14C 1040000B */  beqz        $v0, .L801DF17C
/* 003F50 801DF150 3C188005 */   lui        $t8, %hi(D_8004A7C4)
/* 003F54 801DF154 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 003F58 801DF158 3C09800F */  lui         $t1, %hi(D_800EA360)
/* 003F5C 801DF15C 00025080 */  sll         $t2, $v0, 2
/* 003F60 801DF160 8F190000 */  lw          $t9, 0x0($t8)
/* 003F64 801DF164 3C01800F */  lui         $at, %hi(D_800E98E0)
/* 003F68 801DF168 002A0821 */  addu        $at, $at, $t2
/* 003F6C 801DF16C 00194080 */  sll         $t0, $t9, 2
/* 003F70 801DF170 01284821 */  addu        $t1, $t1, $t0
/* 003F74 801DF174 8D29A360 */  lw          $t1, %lo(D_800EA360)($t1)
/* 003F78 801DF178 AC2998E0 */  sw          $t1, %lo(D_800E98E0)($at)
.L801DF17C:
/* 003F7C 801DF17C 8FBF0014 */  lw          $ra, 0x14($sp)
.L801DF180:
/* 003F80 801DF180 27BD0018 */  addiu       $sp, $sp, 0x18
/* 003F84 801DF184 03E00008 */  jr          $ra
/* 003F88 801DF188 00000000 */   nop
.type func_801DF0D8_ovl12, @function
.size func_801DF0D8_ovl12, . - func_801DF0D8_ovl12
