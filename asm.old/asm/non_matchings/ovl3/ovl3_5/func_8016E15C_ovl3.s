glabel func_8016E15C_ovl3
/* 0CEB9C 8016E15C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0CEBA0 8016E160 3C0F8019 */  lui   $t7, %hi(D_80196C64) # $t7, 0x8019
/* 0CEBA4 8016E164 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CEBA8 8016E168 AFA40028 */  sw    $a0, 0x28($sp)
/* 0CEBAC 8016E16C 25EF6C64 */  addiu $t7, %lo(D_80196C64) # addiu $t7, $t7, 0x6c64
/* 0CEBB0 8016E170 8DF90000 */  lw    $t9, ($t7)
/* 0CEBB4 8016E174 27AE0020 */  addiu $t6, $sp, 0x20
/* 0CEBB8 8016E178 ADD90000 */  sw    $t9, ($t6)
/* 0CEBBC 8016E17C 99F90006 */  lwr   $t9, 6($t7)
/* 0CEBC0 8016E180 0C054E61 */  jal   func_80153984_ovl3
/* 0CEBC4 8016E184 B9D90006 */   swr   $t9, 6($t6)
/* 0CEBC8 8016E188 0C0547A5 */  jal   ovl3_process_command_string
/* 0CEBCC 8016E18C 27A40020 */   addiu $a0, $sp, 0x20
/* 0CEBD0 8016E190 1040000E */  beqz  $v0, .L8016E1CC_ovl3
/* 0CEBD4 8016E194 3C078013 */   lui   $a3, %hi(gKirbyState)
/* 0CEBD8 8016E198 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEBDC 8016E19C 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CEBE0 8016E1A0 90E80004 */  lbu   $t0, 4($a3)
/* 0CEBE4 8016E1A4 24010001 */  li    $at, 1
/* 0CEBE8 8016E1A8 3C0A8019 */  lui   $t2, %hi(D_80190358) # $t2, 0x8019
/* 0CEBEC 8016E1AC 15010005 */  bne   $t0, $at, .L8016E1C4_ovl3
/* 0CEBF0 8016E1B0 254A0358 */   addiu $t2, %lo(D_80190358) # addiu $t2, $t2, 0x358
/* 0CEBF4 8016E1B4 3C098019 */  lui   $t1, %hi(D_801903E0) # $t1, 0x8019
/* 0CEBF8 8016E1B8 252903E0 */  addiu $t1, %lo(D_801903E0) # addiu $t1, $t1, 0x3e0
/* 0CEBFC 8016E1BC 1000011A */  b     .L8016E628_ovl3
/* 0CEC00 8016E1C0 ACE9015C */   sw    $t1, 0x15c($a3)
.L8016E1C4_ovl3:
/* 0CEC04 8016E1C4 10000118 */  b     .L8016E628_ovl3
/* 0CEC08 8016E1C8 ACEA015C */   sw    $t2, 0x15c($a3)
.L8016E1CC_ovl3:
/* 0CEC0C 8016E1CC 24E7E7C0 */  addiu $a3, $a3, %lo(gKirbyState)
/* 0CEC10 8016E1D0 8CEB00E4 */  lw    $t3, 0xe4($a3)
/* 0CEC14 8016E1D4 5160007D */  beql  $t3, $zero, .L8016E3CC_ovl3
/* 0CEC18 8016E1D8 8CEC0030 */   lw    $t4, 0x30($a3)
/* 0CEC1C 8016E1DC 0C048918 */  jal   func_80122460
/* 0CEC20 8016E1E0 00000000 */   nop   
/* 0CEC24 8016E1E4 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEC28 8016E1E8 10400046 */  beqz  $v0, .L8016E304_ovl3
/* 0CEC2C 8016E1EC 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CEC30 8016E1F0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CEC34 8016E1F4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CEC38 8016E1F8 44801000 */  mtc1  $zero, $f2
/* 0CEC3C 8016E1FC 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0CEC40 8016E200 8C4C0000 */  lw    $t4, ($v0)
/* 0CEC44 8016E204 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0CEC48 8016E208 3C018019 */  lui   $at, %hi(D_80197364) # $at, 0x8019
/* 0CEC4C 8016E20C 000C6880 */  sll   $t5, $t4, 2
/* 0CEC50 8016E210 C4207364 */  lwc1  $f0, %lo(D_80197364)($at)
/* 0CEC54 8016E214 008D7021 */  addu  $t6, $a0, $t5
/* 0CEC58 8016E218 E5C20000 */  swc1  $f2, ($t6)
/* 0CEC5C 8016E21C 8C430000 */  lw    $v1, ($v0)
/* 0CEC60 8016E220 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0CEC64 8016E224 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0CEC68 8016E228 00031880 */  sll   $v1, $v1, 2
/* 0CEC6C 8016E22C 00837821 */  addu  $t7, $a0, $v1
/* 0CEC70 8016E230 C5E40000 */  lwc1  $f4, ($t7)
/* 0CEC74 8016E234 00230821 */  addu  $at, $at, $v1
/* 0CEC78 8016E238 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0CEC7C 8016E23C E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 0CEC80 8016E240 8C580000 */  lw    $t8, ($v0)
/* 0CEC84 8016E244 3C01800E */ lui $at, %hi(D_800E6850)
/* 0CEC88 8016E248 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 0CEC8C 8016E24C 0018C880 */  sll   $t9, $t8, 2
/* 0CEC90 8016E250 00390821 */  addu  $at, $at, $t9
/* 0CEC94 8016E254 E4206850 */ swc1 $f0, %lo(D_800E6850)($at)
/* 0CEC98 8016E258 8C480000 */  lw    $t0, ($v0)
/* 0CEC9C 8016E25C 3C01800E */ lui $at, %hi(D_800E3210)
/* 0CECA0 8016E260 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 0CECA4 8016E264 00084880 */  sll   $t1, $t0, 2
/* 0CECA8 8016E268 00C95021 */  addu  $t2, $a2, $t1
/* 0CECAC 8016E26C E5420000 */  swc1  $f2, ($t2)
/* 0CECB0 8016E270 8C430000 */  lw    $v1, ($v0)
/* 0CECB4 8016E274 3C088019 */  lui   $t0, %hi(D_80190358) # $t0, 0x8019
/* 0CECB8 8016E278 25080358 */  addiu $t0, %lo(D_80190358) # addiu $t0, $t0, 0x358
/* 0CECBC 8016E27C 00031880 */  sll   $v1, $v1, 2
/* 0CECC0 8016E280 00C35821 */  addu  $t3, $a2, $v1
/* 0CECC4 8016E284 C5660000 */  lwc1  $f6, ($t3)
/* 0CECC8 8016E288 00230821 */  addu  $at, $at, $v1
/* 0CECCC 8016E28C 3C198019 */  lui   $t9, %hi(D_801903E0) # $t9, 0x8019
/* 0CECD0 8016E290 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 0CECD4 8016E294 8C4C0000 */  lw    $t4, ($v0)
/* 0CECD8 8016E298 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0CECDC 8016E29C 2404000A */  li    $a0, 10
/* 0CECE0 8016E2A0 000C6880 */  sll   $t5, $t4, 2
/* 0CECE4 8016E2A4 002D0821 */  addu  $at, $at, $t5
/* 0CECE8 8016E2A8 E4203C90 */ swc1 $f0, %lo(D_800E3C90)($at)
/* 0CECEC 8016E2AC 94AE0000 */  lhu   $t6, ($a1)
/* 0CECF0 8016E2B0 90F80004 */  lbu   $t8, 4($a3)
/* 0CECF4 8016E2B4 24010001 */  li    $at, 1
/* 0CECF8 8016E2B8 31CF0007 */  andi  $t7, $t6, 7
/* 0CECFC 8016E2BC 17010004 */  bne   $t8, $at, .L8016E2D0_ovl3
/* 0CED00 8016E2C0 A4AF0000 */   sh    $t7, ($a1)
/* 0CED04 8016E2C4 273903E0 */  addiu $t9, %lo(D_801903E0) # addiu $t9, $t9, 0x3e0
/* 0CED08 8016E2C8 10000002 */  b     .L8016E2D4_ovl3
/* 0CED0C 8016E2CC ACF9015C */   sw    $t9, 0x15c($a3)
.L8016E2D0_ovl3:
/* 0CED10 8016E2D0 ACE8015C */  sw    $t0, 0x15c($a3)
.L8016E2D4_ovl3:
/* 0CED14 8016E2D4 0C048BDB */  jal   set_kirby_action_1
/* 0CED18 8016E2D8 2405000D */   li    $a1, 13
/* 0CED1C 8016E2DC 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CED20 8016E2E0 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CED24 8016E2E4 90E90004 */  lbu   $t1, 4($a3)
/* 0CED28 8016E2E8 24010002 */  li    $at, 2
/* 0CED2C 8016E2EC 240AFFFD */  li    $t2, -3
/* 0CED30 8016E2F0 552100CE */  bnel  $t1, $at, .L8016E62C_ovl3
/* 0CED34 8016E2F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CED38 8016E2F8 A0E00004 */  sb    $zero, 4($a3)
/* 0CED3C 8016E2FC 100000CA */  b     .L8016E628_ovl3
/* 0CED40 8016E300 A0EA000D */   sb    $t2, 0xd($a3)
.L8016E304_ovl3:
/* 0CED44 8016E304 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0CED48 8016E308 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0CED4C 8016E30C 3C0E800F */ lui $t6, %hi(D_800E8AE0)
/* 0CED50 8016E310 8D6C0000 */  lw    $t4, ($t3)
/* 0CED54 8016E314 000C6880 */  sll   $t5, $t4, 2
/* 0CED58 8016E318 01CD7021 */  addu  $t6, $t6, $t5
/* 0CED5C 8016E31C 8DCE8AE0 */ lw $t6, %lo(D_800E8AE0)($t6)
/* 0CED60 8016E320 31CF0006 */  andi  $t7, $t6, 6
/* 0CED64 8016E324 15E00012 */  bnez  $t7, .L8016E370_ovl3
/* 0CED68 8016E328 00000000 */   nop   
/* 0CED6C 8016E32C 94F80068 */  lhu   $t8, 0x68($a3)
/* 0CED70 8016E330 3C048019 */  lui   $a0, %hi(D_8019395C) # $a0, 0x8019
/* 0CED74 8016E334 2484395C */  addiu $a0, %lo(D_8019395C) # addiu $a0, $a0, 0x395c
/* 0CED78 8016E338 1700000D */  bnez  $t8, .L8016E370_ovl3
/* 0CED7C 8016E33C 00000000 */   nop   
/* 0CED80 8016E340 0C055127 */  jal   func_8015449C_ovl3
/* 0CED84 8016E344 00002825 */   move  $a1, $zero
/* 0CED88 8016E348 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CED8C 8016E34C 10400008 */  beqz  $v0, .L8016E370_ovl3
/* 0CED90 8016E350 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CED94 8016E354 80F9000D */  lb    $t9, 0xd($a3)
/* 0CED98 8016E358 24010002 */  li    $at, 2
/* 0CED9C 8016E35C 2408FFFD */  li    $t0, -3
/* 0CEDA0 8016E360 17210003 */  bne   $t9, $at, .L8016E370_ovl3
/* 0CEDA4 8016E364 00000000 */   nop   
/* 0CEDA8 8016E368 A0E00004 */  sb    $zero, 4($a3)
/* 0CEDAC 8016E36C A0E8000D */  sb    $t0, 0xd($a3)
.L8016E370_ovl3:
/* 0CEDB0 8016E370 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0CEDB4 8016E374 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0CEDB8 8016E378 44804000 */  mtc1  $zero, $f8
/* 0CEDBC 8016E37C 3C01800E */ lui $at, %hi(D_800E3210)
/* 0CEDC0 8016E380 8D2A0000 */  lw    $t2, ($t1)
/* 0CEDC4 8016E384 2404000B */  li    $a0, 11
/* 0CEDC8 8016E388 2405000A */  li    $a1, 10
/* 0CEDCC 8016E38C 000A5880 */  sll   $t3, $t2, 2
/* 0CEDD0 8016E390 002B0821 */  addu  $at, $at, $t3
/* 0CEDD4 8016E394 0C02ED1A */  jal   func_800BB468
/* 0CEDD8 8016E398 E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 0CEDDC 8016E39C 0C05E44C */  jal   func_80179130_ovl3
/* 0CEDE0 8016E3A0 00000000 */   nop   
/* 0CEDE4 8016E3A4 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEDE8 8016E3A8 14400066 */  bnez  $v0, .L8016E544_ovl3
/* 0CEDEC 8016E3AC 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CEDF0 8016E3B0 24040006 */  li    $a0, 6
/* 0CEDF4 8016E3B4 0C048BDB */  jal   set_kirby_action_1
/* 0CEDF8 8016E3B8 24050006 */   li    $a1, 6
/* 0CEDFC 8016E3BC 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEE00 8016E3C0 10000060 */  b     .L8016E544_ovl3
/* 0CEE04 8016E3C4 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CEE08 8016E3C8 8CEC0030 */  lw    $t4, 0x30($a3)
.L8016E3CC_ovl3:
/* 0CEE0C 8016E3CC 5180000D */  beql  $t4, $zero, .L8016E404_ovl3
/* 0CEE10 8016E3D0 94ED00D2 */   lhu   $t5, 0xd2($a3)
/* 0CEE14 8016E3D4 0C05E44C */  jal   func_80179130_ovl3
/* 0CEE18 8016E3D8 00000000 */   nop   
/* 0CEE1C 8016E3DC 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEE20 8016E3E0 14400058 */  bnez  $v0, .L8016E544_ovl3
/* 0CEE24 8016E3E4 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CEE28 8016E3E8 24040006 */  li    $a0, 6
/* 0CEE2C 8016E3EC 0C048BDB */  jal   set_kirby_action_1
/* 0CEE30 8016E3F0 24050006 */   li    $a1, 6
/* 0CEE34 8016E3F4 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEE38 8016E3F8 10000052 */  b     .L8016E544_ovl3
/* 0CEE3C 8016E3FC 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CEE40 8016E400 94ED00D2 */  lhu   $t5, 0xd2($a3)
.L8016E404_ovl3:
/* 0CEE44 8016E404 15A00005 */  bnez  $t5, .L8016E41C_ovl3
/* 0CEE48 8016E408 00000000 */   nop   
/* 0CEE4C 8016E40C 0C047AF5 */  jal   func_8011EBD4
/* 0CEE50 8016E410 00000000 */   nop   
/* 0CEE54 8016E414 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEE58 8016E418 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
.L8016E41C_ovl3:
/* 0CEE5C 8016E41C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CEE60 8016E420 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CEE64 8016E424 3C0E800F */ lui $t6, %hi(D_800E83E0)
/* 0CEE68 8016E428 24010002 */  li    $at, 2
/* 0CEE6C 8016E42C 8C430000 */  lw    $v1, ($v0)
/* 0CEE70 8016E430 3C0A800F */ lui $t2, %hi(D_800E8AE0)
/* 0CEE74 8016E434 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0CEE78 8016E438 00031880 */  sll   $v1, $v1, 2
/* 0CEE7C 8016E43C 01C37021 */  addu  $t6, $t6, $v1
/* 0CEE80 8016E440 8DCE83E0 */ lw $t6, %lo(D_800E83E0)($t6)
/* 0CEE84 8016E444 01435021 */  addu  $t2, $t2, $v1
/* 0CEE88 8016E448 31CFFFFF */  andi  $t7, $t6, 0xffff
/* 0CEE8C 8016E44C 15E10021 */  bne   $t7, $at, .L8016E4D4_ovl3
/* 0CEE90 8016E450 00000000 */   nop   
/* 0CEE94 8016E454 44805000 */  mtc1  $zero, $f10
/* 0CEE98 8016E458 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0CEE9C 8016E45C 00C3C021 */  addu  $t8, $a2, $v1
/* 0CEEA0 8016E460 E70A0000 */  swc1  $f10, ($t8)
/* 0CEEA4 8016E464 8C430000 */  lw    $v1, ($v0)
/* 0CEEA8 8016E468 3C01800E */ lui $at, %hi(D_800E3210)
/* 0CEEAC 8016E46C 2404000B */  li    $a0, 11
/* 0CEEB0 8016E470 00031880 */  sll   $v1, $v1, 2
/* 0CEEB4 8016E474 00C3C821 */  addu  $t9, $a2, $v1
/* 0CEEB8 8016E478 C7300000 */  lwc1  $f16, ($t9)
/* 0CEEBC 8016E47C 00230821 */  addu  $at, $at, $v1
/* 0CEEC0 8016E480 2405000A */  li    $a1, 10
/* 0CEEC4 8016E484 E4303210 */ swc1 $f16, %lo(D_800E3210)($at)
/* 0CEEC8 8016E488 8C480000 */  lw    $t0, ($v0)
/* 0CEECC 8016E48C 3C018019 */  lui   $at, %hi(D_80197368) # $at, 0x8019
/* 0CEED0 8016E490 C4327368 */  lwc1  $f18, %lo(D_80197368)($at)
/* 0CEED4 8016E494 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0CEED8 8016E498 00084880 */  sll   $t1, $t0, 2
/* 0CEEDC 8016E49C 00290821 */  addu  $at, $at, $t1
/* 0CEEE0 8016E4A0 0C02ED1A */  jal   func_800BB468
/* 0CEEE4 8016E4A4 E4323C90 */ swc1 $f18, %lo(D_800E3C90)($at)
/* 0CEEE8 8016E4A8 0C05E44C */  jal   func_80179130_ovl3
/* 0CEEEC 8016E4AC 00000000 */   nop   
/* 0CEEF0 8016E4B0 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEEF4 8016E4B4 14400023 */  bnez  $v0, .L8016E544_ovl3
/* 0CEEF8 8016E4B8 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CEEFC 8016E4BC 24040006 */  li    $a0, 6
/* 0CEF00 8016E4C0 0C048BDB */  jal   set_kirby_action_1
/* 0CEF04 8016E4C4 24050006 */   li    $a1, 6
/* 0CEF08 8016E4C8 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEF0C 8016E4CC 1000001D */  b     .L8016E544_ovl3
/* 0CEF10 8016E4D0 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
.L8016E4D4_ovl3:
/* 0CEF14 8016E4D4 8D4A8AE0 */ lw $t2, %lo(D_800E8AE0)($t2)
/* 0CEF18 8016E4D8 314B0006 */  andi  $t3, $t2, 6
/* 0CEF1C 8016E4DC 5560001A */  bnezl $t3, .L8016E548_ovl3
/* 0CEF20 8016E4E0 8CF900FC */   lw    $t9, 0xfc($a3)
/* 0CEF24 8016E4E4 90EC0009 */  lbu   $t4, 9($a3)
/* 0CEF28 8016E4E8 3C01800E */ lui $at, %hi(D_800E3210)
/* 0CEF2C 8016E4EC 00230821 */  addu  $at, $at, $v1
/* 0CEF30 8016E4F0 318D0001 */  andi  $t5, $t4, 1
/* 0CEF34 8016E4F4 55A00014 */  bnezl $t5, .L8016E548_ovl3
/* 0CEF38 8016E4F8 8CF900FC */   lw    $t9, 0xfc($a3)
/* 0CEF3C 8016E4FC C4E400CC */  lwc1  $f4, 0xcc($a3)
/* 0CEF40 8016E500 C4263210 */ lwc1 $f6, %lo(D_800E3210)($at)
/* 0CEF44 8016E504 4606203C */  c.lt.s $f4, $f6
/* 0CEF48 8016E508 00000000 */  nop   
/* 0CEF4C 8016E50C 4502000E */  bc1fl .L8016E548_ovl3
/* 0CEF50 8016E510 8CF900FC */   lw    $t9, 0xfc($a3)
/* 0CEF54 8016E514 90EE0004 */  lbu   $t6, 4($a3)
/* 0CEF58 8016E518 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0CEF5C 8016E51C 3C063F80 */  lui   $a2, 0x3f80
/* 0CEF60 8016E520 55C00009 */  bnezl $t6, .L8016E548_ovl3
/* 0CEF64 8016E524 8CF900FC */   lw    $t9, 0xfc($a3)
/* 0CEF68 8016E528 8DF8003C */  lw    $t8, 0x3c($t7)
/* 0CEF6C 8016E52C 3C048019 */  lui   $a0, %hi(D_80190F2C) # $a0, 0x8019
/* 0CEF70 8016E530 24840F2C */  addiu $a0, %lo(D_80190F2C) # addiu $a0, $a0, 0xf2c
/* 0CEF74 8016E534 0C05A153 */  jal   func_8016854C_ovl3
/* 0CEF78 8016E538 8F050010 */   lw    $a1, 0x10($t8)
/* 0CEF7C 8016E53C 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CEF80 8016E540 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
.L8016E544_ovl3:
/* 0CEF84 8016E544 8CF900FC */  lw    $t9, 0xfc($a3)
.L8016E548_ovl3:
/* 0CEF88 8016E548 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 0CEF8C 8016E54C 17200006 */  bnez  $t9, .L8016E568_ovl3
/* 0CEF90 8016E550 00000000 */   nop   
/* 0CEF94 8016E554 0C047B5A */  jal   func_8011ED68
/* 0CEF98 8016E558 00000000 */   nop   
/* 0CEF9C 8016E55C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CEFA0 8016E560 10000017 */  b     .L8016E5C0_ovl3
/* 0CEFA4 8016E564 8C42A7C4 */   lw    $v0, %lo(D_8004A7C4)($v0)
.L8016E568_ovl3:
/* 0CEFA8 8016E568 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 0CEFAC 8016E56C 44804000 */  mtc1  $zero, $f8
/* 0CEFB0 8016E570 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0CEFB4 8016E574 8C480000 */  lw    $t0, ($v0)
/* 0CEFB8 8016E578 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0CEFBC 8016E57C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0CEFC0 8016E580 00084880 */  sll   $t1, $t0, 2
/* 0CEFC4 8016E584 00895021 */  addu  $t2, $a0, $t1
/* 0CEFC8 8016E588 E5480000 */  swc1  $f8, ($t2)
/* 0CEFCC 8016E58C 8C430000 */  lw    $v1, ($v0)
/* 0CEFD0 8016E590 00031880 */  sll   $v1, $v1, 2
/* 0CEFD4 8016E594 00835821 */  addu  $t3, $a0, $v1
/* 0CEFD8 8016E598 C56A0000 */  lwc1  $f10, ($t3)
/* 0CEFDC 8016E59C 00230821 */  addu  $at, $at, $v1
/* 0CEFE0 8016E5A0 E42A64D0 */ swc1 $f10, %lo(D_800E64D0)($at)
/* 0CEFE4 8016E5A4 8C4C0000 */  lw    $t4, ($v0)
/* 0CEFE8 8016E5A8 3C018019 */  lui   $at, %hi(D_8019736C) # $at, 0x8019
/* 0CEFEC 8016E5AC C430736C */  lwc1  $f16, %lo(D_8019736C)($at)
/* 0CEFF0 8016E5B0 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0CEFF4 8016E5B4 000C6880 */  sll   $t5, $t4, 2
/* 0CEFF8 8016E5B8 002D0821 */  addu  $at, $at, $t5
/* 0CEFFC 8016E5BC E4306850 */  swc1  $f16, 0x6850($at)
.L8016E5C0_ovl3:
/* 0CF000 8016E5C0 8C4E0000 */  lw    $t6, ($v0)
/* 0CF004 8016E5C4 3C18800F */ lui $t8, %hi(D_800E8AE0)
/* 0CF008 8016E5C8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CF00C 8016E5CC 000E7880 */  sll   $t7, $t6, 2
/* 0CF010 8016E5D0 030FC021 */  addu  $t8, $t8, $t7
/* 0CF014 8016E5D4 8F188AE0 */ lw $t8, %lo(D_800E8AE0)($t8)
/* 0CF018 8016E5D8 33190006 */  andi  $t9, $t8, 6
/* 0CF01C 8016E5DC 5320000C */  beql  $t9, $zero, .L8016E610_ovl3
/* 0CF020 8016E5E0 44816000 */   mtc1  $at, $f12
/* 0CF024 8016E5E4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CF028 8016E5E8 44816000 */  mtc1  $at, $f12
/* 0CF02C 8016E5EC 0C02BB30 */  jal   func_800AECC0
/* 0CF030 8016E5F0 00000000 */   nop   
/* 0CF034 8016E5F4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CF038 8016E5F8 44816000 */  mtc1  $at, $f12
/* 0CF03C 8016E5FC 0C02BB48 */  jal   func_800AED20
/* 0CF040 8016E600 00000000 */   nop   
/* 0CF044 8016E604 10000009 */  b     .L8016E62C_ovl3
/* 0CF048 8016E608 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CF04C 8016E60C 44816000 */  mtc1  $at, $f12
.L8016E610_ovl3:
/* 0CF050 8016E610 0C02BB30 */  jal   func_800AECC0
/* 0CF054 8016E614 00000000 */   nop   
/* 0CF058 8016E618 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CF05C 8016E61C 44816000 */  mtc1  $at, $f12
/* 0CF060 8016E620 0C02BB48 */  jal   func_800AED20
/* 0CF064 8016E624 00000000 */   nop   
.L8016E628_ovl3:
/* 0CF068 8016E628 8FBF0014 */  lw    $ra, 0x14($sp)
.L8016E62C_ovl3:
/* 0CF06C 8016E62C 27BD0028 */  addiu $sp, $sp, 0x28
/* 0CF070 8016E630 03E00008 */  jr    $ra
/* 0CF074 8016E634 00000000 */   nop   
.type func_8016E15C_ovl3, @function
.size func_8016E15C_ovl3, . - func_8016E15C_ovl3
