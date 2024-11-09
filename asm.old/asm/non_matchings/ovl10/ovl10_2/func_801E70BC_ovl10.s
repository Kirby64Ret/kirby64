glabel func_801E70BC_ovl10
/* 1D7E2C 801E70BC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D7E30 801E70C0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7E34 801E70C4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1D7E38 801E70C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7E3C 801E70CC AFA40038 */  sw    $a0, 0x38($sp)
/* 1D7E40 801E70D0 8C4E0000 */  lw    $t6, ($v0)
/* 1D7E44 801E70D4 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D7E48 801E70D8 24080001 */  li    $t0, 1
/* 1D7E4C 801E70DC 000E7880 */  sll   $t7, $t6, 2
/* 1D7E50 801E70E0 002F0821 */  addu  $at, $at, $t7
/* 1D7E54 801E70E4 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D7E58 801E70E8 8C580000 */  lw    $t8, ($v0)
/* 1D7E5C 801E70EC 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D7E60 801E70F0 3C040001 */  lui   $a0, (0x0001035D >> 16) # lui $a0, 1
/* 1D7E64 801E70F4 0018C880 */  sll   $t9, $t8, 2
/* 1D7E68 801E70F8 00390821 */  addu  $at, $at, $t9
/* 1D7E6C 801E70FC AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1D7E70 801E7100 8C490000 */  lw    $t1, ($v0)
/* 1D7E74 801E7104 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D7E78 801E7108 3484035D */  ori   $a0, (0x0001035D & 0xFFFF) # ori $a0, $a0, 0x35d
/* 1D7E7C 801E710C 00095080 */  sll   $t2, $t1, 2
/* 1D7E80 801E7110 002A0821 */  addu  $at, $at, $t2
/* 1D7E84 801E7114 AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 1D7E88 801E7118 8C4B0000 */  lw    $t3, ($v0)
/* 1D7E8C 801E711C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1D7E90 801E7120 44812000 */  mtc1  $at, $f4
/* 1D7E94 801E7124 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1D7E98 801E7128 000B6080 */  sll   $t4, $t3, 2
/* 1D7E9C 801E712C 002C0821 */  addu  $at, $at, $t4
/* 1D7EA0 801E7130 0C02A7A9 */  jal   func_800A9EA4
/* 1D7EA4 801E7134 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1D7EA8 801E7138 3C040001 */  lui   $a0, (0x0001035C >> 16) # lui $a0, 1
/* 1D7EAC 801E713C 3484035C */  ori   $a0, (0x0001035C & 0xFFFF) # ori $a0, $a0, 0x35c
/* 1D7EB0 801E7140 0C02AA19 */  jal   func_800AA864
/* 1D7EB4 801E7144 24050002 */   li    $a1, 2
/* 1D7EB8 801E7148 3C040001 */  lui   $a0, (0x0001035B >> 16) # lui $a0, 1
/* 1D7EBC 801E714C 0C02A7A9 */  jal   func_800A9EA4
/* 1D7EC0 801E7150 3484035B */   ori   $a0, (0x0001035B & 0xFFFF) # ori $a0, $a0, 0x35b
/* 1D7EC4 801E7154 3C040001 */  lui   $a0, (0x0001035A >> 16) # lui $a0, 1
/* 1D7EC8 801E7158 3484035A */  ori   $a0, (0x0001035A & 0xFFFF) # ori $a0, $a0, 0x35a
/* 1D7ECC 801E715C 0C02AA19 */  jal   func_800AA864
/* 1D7ED0 801E7160 24050001 */   li    $a1, 1
/* 1D7ED4 801E7164 3C040001 */  lui   $a0, (0x0001035D >> 16) # lui $a0, 1
/* 1D7ED8 801E7168 0C02A7A9 */  jal   func_800A9EA4
/* 1D7EDC 801E716C 3484035D */   ori   $a0, (0x0001035D & 0xFFFF) # ori $a0, $a0, 0x35d
/* 1D7EE0 801E7170 3C040001 */  lui   $a0, (0x0001035C >> 16) # lui $a0, 1
/* 1D7EE4 801E7174 0C02A7A9 */  jal   func_800A9EA4
/* 1D7EE8 801E7178 3484035C */   ori   $a0, (0x0001035C & 0xFFFF) # ori $a0, $a0, 0x35c
/* 1D7EEC 801E717C 0C0798F9 */  jal   func_801E63E4_ovl10
/* 1D7EF0 801E7180 27A40030 */   addiu $a0, $sp, 0x30
/* 1D7EF4 801E7184 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D7EF8 801E7188 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7EFC 801E718C C7A60030 */  lwc1  $f6, 0x30($sp)
/* 1D7F00 801E7190 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 1D7F04 801E7194 8C4D0000 */  lw    $t5, ($v0)
/* 1D7F08 801E7198 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 1D7F0C 801E719C 44805000 */  mtc1  $zero, $f10
/* 1D7F10 801E71A0 000D7080 */  sll   $t6, $t5, 2
/* 1D7F14 801E71A4 006E7821 */  addu  $t7, $v1, $t6
/* 1D7F18 801E71A8 E5E60000 */  swc1  $f6, ($t7)
/* 1D7F1C 801E71AC 93A50034 */  lbu   $a1, 0x34($sp)
/* 1D7F20 801E71B0 27A40020 */  addiu $a0, $sp, 0x20
/* 1D7F24 801E71B4 A3A5002F */  sb    $a1, 0x2f($sp)
/* 1D7F28 801E71B8 8C590000 */  lw    $t9, ($v0)
/* 1D7F2C 801E71BC 00194880 */  sll   $t1, $t9, 2
/* 1D7F30 801E71C0 00694021 */  addu  $t0, $v1, $t1
/* 1D7F34 801E71C4 C5080000 */  lwc1  $f8, ($t0)
/* 1D7F38 801E71C8 E7AA0028 */  swc1  $f10, 0x28($sp)
/* 1D7F3C 801E71CC 0C079713 */  jal   func_801E5C4C_ovl10
/* 1D7F40 801E71D0 E7A80020 */   swc1  $f8, 0x20($sp)
/* 1D7F44 801E71D4 0C002DAF */  jal   finish_current_thread
/* 1D7F48 801E71D8 93A4002F */   lbu   $a0, 0x2f($sp)
/* 1D7F4C 801E71DC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D7F50 801E71E0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7F54 801E71E4 44808000 */  mtc1  $zero, $f16
/* 1D7F58 801E71E8 3C04800E */  lui   $a0, %hi(D_800E33D0) # $a0, 0x800e
/* 1D7F5C 801E71EC 8C4A0000 */  lw    $t2, ($v0)
/* 1D7F60 801E71F0 248433D0 */  addiu $a0, %lo(D_800E33D0) # addiu $a0, $a0, 0x33d0
/* 1D7F64 801E71F4 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D7F68 801E71F8 000A5880 */  sll   $t3, $t2, 2
/* 1D7F6C 801E71FC 008B6021 */  addu  $t4, $a0, $t3
/* 1D7F70 801E7200 E5900000 */  swc1  $f16, ($t4)
/* 1D7F74 801E7204 8C430000 */  lw    $v1, ($v0)
/* 1D7F78 801E7208 240E0001 */  li    $t6, 1
/* 1D7F7C 801E720C 00031880 */  sll   $v1, $v1, 2
/* 1D7F80 801E7210 00836821 */  addu  $t5, $a0, $v1
/* 1D7F84 801E7214 C5B20000 */  lwc1  $f18, ($t5)
/* 1D7F88 801E7218 00230821 */  addu  $at, $at, $v1
/* 1D7F8C 801E721C E4323050 */ swc1 $f18, %lo(D_800E3050)($at)
/* 1D7F90 801E7220 8C4F0000 */  lw    $t7, ($v0)
/* 1D7F94 801E7224 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D7F98 801E7228 000FC880 */  sll   $t9, $t7, 2
/* 1D7F9C 801E722C 00390821 */  addu  $at, $at, $t9
/* 1D7FA0 801E7230 0C02BE85 */  jal   func_800AFA14
/* 1D7FA4 801E7234 AC2E9E20 */ sw $t6, %lo(D_800E9E20)($at)
/* 1D7FA8 801E7238 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D7FAC 801E723C 27BD0038 */  addiu $sp, $sp, 0x38
/* 1D7FB0 801E7240 03E00008 */  jr    $ra
/* 1D7FB4 801E7244 00000000 */   nop   
.type func_801E70BC_ovl10, @function
.size func_801E70BC_ovl10, . - func_801E70BC_ovl10
