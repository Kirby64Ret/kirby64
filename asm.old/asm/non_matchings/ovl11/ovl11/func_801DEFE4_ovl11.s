glabel func_801DEFE4_ovl11
/* 1E98A4 801DEFE4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E98A8 801DEFE8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E98AC 801DEFEC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1E98B0 801DEFF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E98B4 801DEFF4 AFA40020 */  sw    $a0, 0x20($sp)
/* 1E98B8 801DEFF8 8C430000 */  lw    $v1, ($v0)
/* 1E98BC 801DEFFC 3C0E800E */ lui $t6, %hi(D_800E1B50)
/* 1E98C0 801DF000 3C0F801D */  lui   $t7, %hi(D_801D1094) # $t7, 0x801d
/* 1E98C4 801DF004 00031880 */  sll   $v1, $v1, 2
/* 1E98C8 801DF008 01C37021 */  addu  $t6, $t6, $v1
/* 1E98CC 801DF00C 8DCE1B50 */ lw $t6, %lo(D_800E1B50)($t6)
/* 1E98D0 801DF010 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1E98D4 801DF014 00230821 */  addu  $at, $at, $v1
/* 1E98D8 801DF018 25EF1094 */  addiu $t7, %lo(D_801D1094) # addiu $t7, $t7, 0x1094
/* 1E98DC 801DF01C AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 1E98E0 801DF020 AFAE001C */  sw    $t6, 0x1c($sp)
/* 1E98E4 801DF024 8C590000 */  lw    $t9, ($v0)
/* 1E98E8 801DF028 3C01800E */ lui $at, %hi(D_800DF150)
/* 1E98EC 801DF02C 3C18801E */  lui   $t8, %hi(D_801DF0B4) # $t8, 0x801e
/* 1E98F0 801DF030 00194080 */  sll   $t0, $t9, 2
/* 1E98F4 801DF034 00280821 */  addu  $at, $at, $t0
/* 1E98F8 801DF038 2718F0B4 */  addiu $t8, %lo(D_801DF0B4) # addiu $t8, $t8, -0xf4c
/* 1E98FC 801DF03C 3C04801D */  lui   $a0, %hi(D_801D7A2C) # $a0, 0x801d
/* 1E9900 801DF040 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1E9904 801DF044 0C066220 */  jal   func_80198880_ovl11
/* 1E9908 801DF048 24847A2C */   addiu $a0, %lo(D_801D7A2C) # addiu $a0, $a0, 0x7a2c
/* 1E990C 801DF04C 8FA9001C */  lw    $t1, 0x1c($sp)
/* 1E9910 801DF050 0C03FC31 */  jal   func_800FF0C4
/* 1E9914 801DF054 8D240080 */   lw    $a0, 0x80($t1)
/* 1E9918 801DF058 3C040001 */  lui   $a0, (0x0001009D >> 16) # lui $a0, 1
/* 1E991C 801DF05C 0C02A5D8 */  jal   func_800A9760
/* 1E9920 801DF060 3484009D */   ori   $a0, (0x0001009D & 0xFFFF) # ori $a0, $a0, 0x9d
/* 1E9924 801DF064 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E9928 801DF068 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E992C 801DF06C 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 1E9930 801DF070 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 1E9934 801DF074 8C4A0000 */  lw    $t2, ($v0)
/* 1E9938 801DF078 3C06801E */  lui   $a2, %hi(D_801E0BC4) # $a2, 0x801e
/* 1E993C 801DF07C 24C60BC4 */  addiu $a2, %lo(D_801E0BC4) # addiu $a2, $a2, 0xbc4
/* 1E9940 801DF080 000A5880 */  sll   $t3, $t2, 2
/* 1E9944 801DF084 006B6021 */  addu  $t4, $v1, $t3
/* 1E9948 801DF088 AD800000 */  sw    $zero, ($t4)
/* 1E994C 801DF08C 8C4D0000 */  lw    $t5, ($v0)
/* 1E9950 801DF090 24050003 */  li    $a1, 3
/* 1E9954 801DF094 000D7080 */  sll   $t6, $t5, 2
/* 1E9958 801DF098 006E7821 */  addu  $t7, $v1, $t6
/* 1E995C 801DF09C 0C02911F */  jal   call_virtual_function
/* 1E9960 801DF0A0 8DE40000 */   lw    $a0, ($t7)
/* 1E9964 801DF0A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E9968 801DF0A8 27BD0020 */  addiu $sp, $sp, 0x20
/* 1E996C 801DF0AC 03E00008 */  jr    $ra
/* 1E9970 801DF0B0 00000000 */   nop   
.type func_801DEFE4_ovl11, @function
.size func_801DEFE4_ovl11, . - func_801DEFE4_ovl11
