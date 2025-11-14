glabel func_8018E164_ovl3
/* 0EEBA4 8018E164 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EEBA8 8018E168 AFB00018 */  sw    $s0, 0x18($sp)
/* 0EEBAC 8018E16C 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0EEBB0 8018E170 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0EEBB4 8018E174 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EEBB8 8018E178 AFA40020 */  sw    $a0, 0x20($sp)
/* 0EEBBC 8018E17C 0C0473D6 */  jal   func_8011CF58
/* 0EEBC0 8018E180 AE000030 */   sw    $zero, 0x30($s0)
/* 0EEBC4 8018E184 8E0E0090 */  lw    $t6, 0x90($s0)
/* 0EEBC8 8018E188 3C018019 */  lui   $at, %hi(D_80197B68) # $at, 0x8019
/* 0EEBCC 8018E18C C4227B68 */  lwc1  $f2, %lo(D_80197B68)($at)
/* 0EEBD0 8018E190 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0EEBD4 8018E194 AE0E00A0 */  sw    $t6, 0xa0($s0)
/* 0EEBD8 8018E198 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0EEBDC 8018E19C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0EEBE0 8018E1A0 240F0041 */  li    $t7, 65
/* 0EEBE4 8018E1A4 8C580000 */  lw    $t8, ($v0)
/* 0EEBE8 8018E1A8 3C06800E */  lui   $a2, %hi(D_800E64D0) # $a2, 0x800e
/* 0EEBEC 8018E1AC 24C664D0 */  addiu $a2, %lo(D_800E64D0) # addiu $a2, $a2, 0x64d0
/* 0EEBF0 8018E1B0 0018C880 */  sll   $t9, $t8, 2
/* 0EEBF4 8018E1B4 00390821 */  addu  $at, $at, $t9
/* 0EEBF8 8018E1B8 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 0EEBFC 8018E1BC 8C480000 */  lw    $t0, ($v0)
/* 0EEC00 8018E1C0 3C04801A */  lui   $a0, %hi(D_80198848) # $a0, 0x801a
/* 0EEC04 8018E1C4 24848848 */  addiu $a0, %lo(D_80198848) # addiu $a0, $a0, -0x77b8
/* 0EEC08 8018E1C8 00084880 */  sll   $t1, $t0, 2
/* 0EEC0C 8018E1CC 00C95021 */  addu  $t2, $a2, $t1
/* 0EEC10 8018E1D0 C5440000 */  lwc1  $f4, ($t2)
/* 0EEC14 8018E1D4 3C05800E */  lui   $a1, %hi(D_800E6690) # $a1, 0x800e
/* 0EEC18 8018E1D8 24A56690 */  addiu $a1, %lo(D_800E6690) # addiu $a1, $a1, 0x6690
/* 0EEC1C 8018E1DC E4840000 */  swc1  $f4, ($a0)
/* 0EEC20 8018E1E0 8C4B0000 */  lw    $t3, ($v0)
/* 0EEC24 8018E1E4 3C07800E */  lui   $a3, %hi(D_800E6850) # $a3, 0x800e
/* 0EEC28 8018E1E8 24E76850 */  addiu $a3, %lo(D_800E6850) # addiu $a3, $a3, 0x6850
/* 0EEC2C 8018E1EC 000B6080 */  sll   $t4, $t3, 2
/* 0EEC30 8018E1F0 00AC6821 */  addu  $t5, $a1, $t4
/* 0EEC34 8018E1F4 C5A60000 */  lwc1  $f6, ($t5)
/* 0EEC38 8018E1F8 44800000 */  mtc1  $zero, $f0
/* 0EEC3C 8018E1FC 3C01800E */ lui $at, %hi(D_800E3210)
/* 0EEC40 8018E200 E4860004 */  swc1  $f6, 4($a0)
/* 0EEC44 8018E204 8C4E0000 */  lw    $t6, ($v0)
/* 0EEC48 8018E208 000EC080 */  sll   $t8, $t6, 2
/* 0EEC4C 8018E20C 00F87821 */  addu  $t7, $a3, $t8
/* 0EEC50 8018E210 C5E80000 */  lwc1  $f8, ($t7)
/* 0EEC54 8018E214 3C18800F */ lui $t8, %hi(D_800E8920)
/* 0EEC58 8018E218 E4880008 */  swc1  $f8, 8($a0)
/* 0EEC5C 8018E21C 8C590000 */  lw    $t9, ($v0)
/* 0EEC60 8018E220 00194080 */  sll   $t0, $t9, 2
/* 0EEC64 8018E224 00A84821 */  addu  $t1, $a1, $t0
/* 0EEC68 8018E228 E5200000 */  swc1  $f0, ($t1)
/* 0EEC6C 8018E22C 8C430000 */  lw    $v1, ($v0)
/* 0EEC70 8018E230 00031880 */  sll   $v1, $v1, 2
/* 0EEC74 8018E234 00A35021 */  addu  $t2, $a1, $v1
/* 0EEC78 8018E238 C54A0000 */  lwc1  $f10, ($t2)
/* 0EEC7C 8018E23C 00C35821 */  addu  $t3, $a2, $v1
/* 0EEC80 8018E240 E56A0000 */  swc1  $f10, ($t3)
/* 0EEC84 8018E244 8C4C0000 */  lw    $t4, ($v0)
/* 0EEC88 8018E248 000C6880 */  sll   $t5, $t4, 2
/* 0EEC8C 8018E24C 00ED7021 */  addu  $t6, $a3, $t5
/* 0EEC90 8018E250 E5C20000 */  swc1  $f2, ($t6)
/* 0EEC94 8018E254 8C430000 */  lw    $v1, ($v0)
/* 0EEC98 8018E258 00031880 */  sll   $v1, $v1, 2
/* 0EEC9C 8018E25C 0303C021 */  addu  $t8, $t8, $v1
/* 0EECA0 8018E260 8F188920 */ lw $t8, %lo(D_800E8920)($t8)
/* 0EECA4 8018E264 00230821 */  addu  $at, $at, $v1
/* 0EECA8 8018E268 17000014 */  bnez  $t8, .L8018E2BC_ovl3
/* 0EECAC 8018E26C 00000000 */   nop   
/* 0EECB0 8018E270 C4303210 */ lwc1 $f16, %lo(D_800E3210)($at)
/* 0EECB4 8018E274 3C04801A */  lui   $a0, %hi(D_80198858) # $a0, 0x801a
/* 0EECB8 8018E278 24848858 */  addiu $a0, %lo(D_80198858) # addiu $a0, $a0, -0x77a8
/* 0EECBC 8018E27C E4900000 */  swc1  $f16, ($a0)
/* 0EECC0 8018E280 8C4F0000 */  lw    $t7, ($v0)
/* 0EECC4 8018E284 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0EECC8 8018E288 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0EECCC 8018E28C 000FC880 */  sll   $t9, $t7, 2
/* 0EECD0 8018E290 00B94021 */  addu  $t0, $a1, $t9
/* 0EECD4 8018E294 C5120000 */  lwc1  $f18, ($t0)
/* 0EECD8 8018E298 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0EECDC 8018E29C E4920004 */  swc1  $f18, 4($a0)
/* 0EECE0 8018E2A0 8C490000 */  lw    $t1, ($v0)
/* 0EECE4 8018E2A4 00095080 */  sll   $t2, $t1, 2
/* 0EECE8 8018E2A8 002A0821 */  addu  $at, $at, $t2
/* 0EECEC 8018E2AC C4243C90 */ lwc1 $f4, %lo(D_800E3C90)($at)
/* 0EECF0 8018E2B0 E4840008 */  swc1  $f4, 8($a0)
/* 0EECF4 8018E2B4 8C430000 */  lw    $v1, ($v0)
/* 0EECF8 8018E2B8 00031880 */  sll   $v1, $v1, 2
.L8018E2BC_ovl3:
/* 0EECFC 8018E2BC 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0EED00 8018E2C0 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0EED04 8018E2C4 00A35821 */  addu  $t3, $a1, $v1
/* 0EED08 8018E2C8 E5600000 */  swc1  $f0, ($t3)
/* 0EED0C 8018E2CC 8C430000 */  lw    $v1, ($v0)
/* 0EED10 8018E2D0 3C01800E */ lui $at, %hi(D_800E3210)
/* 0EED14 8018E2D4 24040014 */  li    $a0, 20
/* 0EED18 8018E2D8 00031880 */  sll   $v1, $v1, 2
/* 0EED1C 8018E2DC 00A36021 */  addu  $t4, $a1, $v1
/* 0EED20 8018E2E0 C5860000 */  lwc1  $f6, ($t4)
/* 0EED24 8018E2E4 00230821 */  addu  $at, $at, $v1
/* 0EED28 8018E2E8 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 0EED2C 8018E2EC 8C4D0000 */  lw    $t5, ($v0)
/* 0EED30 8018E2F0 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0EED34 8018E2F4 000D7080 */  sll   $t6, $t5, 2
/* 0EED38 8018E2F8 002E0821 */  addu  $at, $at, $t6
/* 0EED3C 8018E2FC 0C05A4F1 */  jal   func_801693C4_ovl3
/* 0EED40 8018E300 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 0EED44 8018E304 3C040002 */  lui   $a0, (0x00020041 >> 16) # lui $a0, 2
/* 0EED48 8018E308 3C050002 */  lui   $a1, (0x00020042 >> 16) # lui $a1, 2
/* 0EED4C 8018E30C 34A50042 */  ori   $a1, (0x00020042 & 0xFFFF) # ori $a1, $a1, 0x42
/* 0EED50 8018E310 34840041 */  ori   $a0, (0x00020041 & 0xFFFF) # ori $a0, $a0, 0x41
/* 0EED54 8018E314 0C048C3A */  jal   func_801230E8
/* 0EED58 8018E318 00003025 */   move  $a2, $zero
/* 0EED5C 8018E31C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0EED60 8018E320 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0EED64 8018E324 3C188019 */  lui   $t8, %hi(D_8018E36C) # $t8, 0x8019
/* 0EED68 8018E328 3C01800E */ lui $at, %hi(D_800DF310)
/* 0EED6C 8018E32C 8DF90000 */  lw    $t9, ($t7)
/* 0EED70 8018E330 2718E36C */  addiu $t8, %lo(D_8018E36C) # addiu $t8, $t8, -0x1c94
/* 0EED74 8018E334 00194080 */  sll   $t0, $t9, 2
/* 0EED78 8018E338 00280821 */  addu  $at, $at, $t0
/* 0EED7C 8018E33C 0C02BC9F */  jal   func_800AF27C
/* 0EED80 8018E340 AC38F310 */ sw $t8, %lo(D_800DF310)($at)
/* 0EED84 8018E344 8E090030 */  lw    $t1, 0x30($s0)
/* 0EED88 8018E348 AE0000A0 */  sw    $zero, 0xa0($s0)
/* 0EED8C 8018E34C 252A0001 */  addiu $t2, $t1, 1
/* 0EED90 8018E350 0C02BE85 */  jal   func_800AFA14
/* 0EED94 8018E354 AE0A0030 */   sw    $t2, 0x30($s0)
/* 0EED98 8018E358 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EED9C 8018E35C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0EEDA0 8018E360 27BD0020 */  addiu $sp, $sp, 0x20
/* 0EEDA4 8018E364 03E00008 */  jr    $ra
/* 0EEDA8 8018E368 00000000 */   nop   
.type func_8018E164_ovl3, @function
.size func_8018E164_ovl3, . - func_8018E164_ovl3
