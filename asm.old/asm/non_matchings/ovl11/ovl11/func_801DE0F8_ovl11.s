glabel func_801DE0F8_ovl11
/* 1E89B8 801DE0F8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E89BC 801DE0FC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E89C0 801DE100 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E89C4 801DE104 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E89C8 801DE108 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E89CC 801DE10C 8C4F0000 */  lw    $t7, ($v0)
/* 1E89D0 801DE110 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1E89D4 801DE114 240E0001 */  li    $t6, 1
/* 1E89D8 801DE118 000FC080 */  sll   $t8, $t7, 2
/* 1E89DC 801DE11C 00380821 */  addu  $at, $at, $t8
/* 1E89E0 801DE120 AC2E9C60 */ sw $t6, %lo(D_800E9C60)($at)
/* 1E89E4 801DE124 8C590000 */  lw    $t9, ($v0)
/* 1E89E8 801DE128 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E89EC 801DE12C 3C05800F */  lui   $a1, %hi(D_800E9560) # $a1, 0x800f
/* 1E89F0 801DE130 00194080 */  sll   $t0, $t9, 2
/* 1E89F4 801DE134 00280821 */  addu  $at, $at, $t0
/* 1E89F8 801DE138 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1E89FC 801DE13C 8C4A0000 */  lw    $t2, ($v0)
/* 1E8A00 801DE140 24A59560 */  addiu $a1, %lo(D_800E9560) # addiu $a1, $a1, -0x6aa0
/* 1E8A04 801DE144 2409FFFF */  li    $t1, -1
/* 1E8A08 801DE148 000A5880 */  sll   $t3, $t2, 2
/* 1E8A0C 801DE14C 00AB6021 */  addu  $t4, $a1, $t3
/* 1E8A10 801DE150 AD890000 */  sw    $t1, ($t4)
/* 1E8A14 801DE154 8C430000 */  lw    $v1, ($v0)
/* 1E8A18 801DE158 3C01800F */ lui $at, %hi(D_800E93A0)
/* 1E8A1C 801DE15C 240E001E */  li    $t6, 30
/* 1E8A20 801DE160 00031880 */  sll   $v1, $v1, 2
/* 1E8A24 801DE164 00A36821 */  addu  $t5, $a1, $v1
/* 1E8A28 801DE168 8DAF0000 */  lw    $t7, ($t5)
/* 1E8A2C 801DE16C 00230821 */  addu  $at, $at, $v1
/* 1E8A30 801DE170 3C040001 */  lui   $a0, (0x0001040F >> 16) # lui $a0, 1
/* 1E8A34 801DE174 AC2F93A0 */ sw $t7, %lo(D_800E93A0)($at)
/* 1E8A38 801DE178 8C580000 */  lw    $t8, ($v0)
/* 1E8A3C 801DE17C 3C01800F */ lui $at, %hi(D_800E9720)
/* 1E8A40 801DE180 3484040F */  ori   $a0, (0x0001040F & 0xFFFF) # ori $a0, $a0, 0x40f
/* 1E8A44 801DE184 0018C880 */  sll   $t9, $t8, 2
/* 1E8A48 801DE188 00390821 */  addu  $at, $at, $t9
/* 1E8A4C 801DE18C AC2E9720 */ sw $t6, %lo(D_800E9720)($at)
/* 1E8A50 801DE190 8C480000 */  lw    $t0, ($v0)
/* 1E8A54 801DE194 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1E8A58 801DE198 00085080 */  sll   $t2, $t0, 2
/* 1E8A5C 801DE19C 002A0821 */  addu  $at, $at, $t2
/* 1E8A60 801DE1A0 0C02A806 */  jal   func_800AA018
/* 1E8A64 801DE1A4 AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 1E8A68 801DE1A8 3C040001 */  lui   $a0, (0x0001040E >> 16) # lui $a0, 1
/* 1E8A6C 801DE1AC 3484040E */  ori   $a0, (0x0001040E & 0xFFFF) # ori $a0, $a0, 0x40e
/* 1E8A70 801DE1B0 0C02AA19 */  jal   func_800AA864
/* 1E8A74 801DE1B4 24050002 */   li    $a1, 2
/* 1E8A78 801DE1B8 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1E8A7C 801DE1BC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1E8A80 801DE1C0 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E8A84 801DE1C4 240B0001 */  li    $t3, 1
/* 1E8A88 801DE1C8 8D2C0000 */  lw    $t4, ($t1)
/* 1E8A8C 801DE1CC 000C6880 */  sll   $t5, $t4, 2
/* 1E8A90 801DE1D0 002D0821 */  addu  $at, $at, $t5
/* 1E8A94 801DE1D4 0C02BE85 */  jal   func_800AFA14
/* 1E8A98 801DE1D8 AC2B9E20 */ sw $t3, %lo(D_800E9E20)($at)
/* 1E8A9C 801DE1DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E8AA0 801DE1E0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E8AA4 801DE1E4 03E00008 */  jr    $ra
/* 1E8AA8 801DE1E8 00000000 */   nop   
.type func_801DE0F8_ovl11, @function
.size func_801DE0F8_ovl11, . - func_801DE0F8_ovl11
