glabel func_801EB018_ovl10
/* 1DBD88 801EB018 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DBD8C 801EB01C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DBD90 801EB020 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DBD94 801EB024 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DBD98 801EB028 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DBD9C 801EB02C 8C430000 */  lw    $v1, ($v0)
/* 1DBDA0 801EB030 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DBDA4 801EB034 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 1DBDA8 801EB038 00031880 */  sll   $v1, $v1, 2
/* 1DBDAC 801EB03C 00230821 */  addu  $at, $at, $v1
/* 1DBDB0 801EB040 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DBDB4 801EB044 8C4F0000 */  lw    $t7, ($v0)
/* 1DBDB8 801EB048 00A32821 */  addu  $a1, $a1, $v1
/* 1DBDBC 801EB04C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DBDC0 801EB050 000FC080 */  sll   $t8, $t7, 2
/* 1DBDC4 801EB054 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 1DBDC8 801EB058 00380821 */  addu  $at, $at, $t8
/* 1DBDCC 801EB05C 240E0002 */  li    $t6, 2
/* 1DBDD0 801EB060 3C19801D */  lui   $t9, %hi(D_801CB494) # $t9, 0x801d
/* 1DBDD4 801EB064 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1DBDD8 801EB068 2739B494 */  addiu $t9, %lo(D_801CB494) # addiu $t9, $t9, -0x4b6c
/* 1DBDDC 801EB06C 3C040001 */  lui   $a0, (0x00010396 >> 16) # lui $a0, 1
/* 1DBDE0 801EB070 34840396 */  ori   $a0, (0x00010396 & 0xFFFF) # ori $a0, $a0, 0x396
/* 1DBDE4 801EB074 0C02A7A9 */  jal   func_800A9EA4
/* 1DBDE8 801EB078 ACB90098 */   sw    $t9, 0x98($a1)
/* 1DBDEC 801EB07C 3C040001 */  lui   $a0, (0x00010395 >> 16) # lui $a0, 1
/* 1DBDF0 801EB080 34840395 */  ori   $a0, (0x00010395 & 0xFFFF) # ori $a0, $a0, 0x395
/* 1DBDF4 801EB084 0C02AA19 */  jal   func_800AA864
/* 1DBDF8 801EB088 24050002 */   li    $a1, 2
/* 1DBDFC 801EB08C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1DBE00 801EB090 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1DBE04 801EB094 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DBE08 801EB098 24080001 */  li    $t0, 1
/* 1DBE0C 801EB09C 8D2A0000 */  lw    $t2, ($t1)
/* 1DBE10 801EB0A0 000A5880 */  sll   $t3, $t2, 2
/* 1DBE14 801EB0A4 002B0821 */  addu  $at, $at, $t3
/* 1DBE18 801EB0A8 0C02BE85 */  jal   func_800AFA14
/* 1DBE1C 801EB0AC AC289E20 */ sw $t0, %lo(D_800E9E20)($at)
/* 1DBE20 801EB0B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DBE24 801EB0B4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DBE28 801EB0B8 03E00008 */  jr    $ra
/* 1DBE2C 801EB0BC 00000000 */   nop   
.type func_801EB018_ovl10, @function
.size func_801EB018_ovl10, . - func_801EB018_ovl10
