glabel func_8016E15C_ovl3
/* CEB9C 8016E15C 27BDFFD8 */  addiu      $sp, $sp, -0x28
.L8016E160_ovl5:
/* CEBA0 8016E160 3C0F8019 */  lui        $t7, %hi(D_80196C64_ovl3)
/* CEBA4 8016E164 AFBF0014 */  sw         $ra, 0x14($sp)
/* CEBA8 8016E168 AFA40028 */  sw         $a0, 0x28($sp)
.L8016E16C_ovl5:
/* CEBAC 8016E16C 25EF6C64 */  addiu      $t7, $t7, %lo(D_80196C64_ovl3)
/* CEBB0 8016E170 8DF90000 */  lw         $t9, 0x0($t7)
/* CEBB4 8016E174 27AE0020 */  addiu      $t6, $sp, 0x20
/* CEBB8 8016E178 ADD90000 */  sw         $t9, 0x0($t6)
/* CEBBC 8016E17C 99F90006 */  lwr        $t9, 0x6($t7)
/* CEBC0 8016E180 0C054E61 */  jal        func_80153984_ovl3
/* CEBC4 8016E184 B9D90006 */   swr       $t9, 0x6($t6)
/* CEBC8 8016E188 0C0547A5 */  jal        ovl3_process_command_string
/* CEBCC 8016E18C 27A40020 */   addiu     $a0, $sp, 0x20
/* CEBD0 8016E190 1040000E */  beqz       $v0, .L8016E1CC_ovl3
/* CEBD4 8016E194 3C078013 */   lui       $a3, %hi(gKirbyState)
/* CEBD8 8016E198 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEBDC 8016E19C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CEBE0 8016E1A0 90E80004 */  lbu        $t0, 0x4($a3)
/* CEBE4 8016E1A4 24010001 */  addiu      $at, $zero, 0x1
/* CEBE8 8016E1A8 3C0A8019 */  lui        $t2, %hi(D_80190358_ovl3)
/* CEBEC 8016E1AC 15010005 */  bne        $t0, $at, .L8016E1C4_ovl3
/* CEBF0 8016E1B0 254A0358 */   addiu     $t2, $t2, %lo(D_80190358_ovl3)
/* CEBF4 8016E1B4 3C098019 */  lui        $t1, %hi(D_801903E0_ovl3)
/* CEBF8 8016E1B8 252903E0 */  addiu      $t1, $t1, %lo(D_801903E0_ovl3)
/* CEBFC 8016E1BC 1000011A */  b          .L8016E628_ovl3
/* CEC00 8016E1C0 ACE9015C */   sw        $t1, 0x15C($a3)
.L8016E1C4_ovl3:
/* CEC04 8016E1C4 10000118 */  b          .L8016E628_ovl3
/* CEC08 8016E1C8 ACEA015C */   sw        $t2, 0x15C($a3)
.L8016E1CC_ovl3:
/* CEC0C 8016E1CC 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CEC10 8016E1D0 8CEB00E4 */  lw         $t3, 0xE4($a3)
/* CEC14 8016E1D4 5160007D */  beql       $t3, $zero, .L8016E3CC_ovl3
/* CEC18 8016E1D8 8CEC0030 */   lw        $t4, 0x30($a3)
.L8016E1DC_ovl5:
/* CEC1C 8016E1DC 0C048918 */  jal        func_80122460
/* CEC20 8016E1E0 00000000 */   nop
/* CEC24 8016E1E4 3C078013 */  lui        $a3, %hi(gKirbyState)
.L8016E1E8_ovl5:
/* CEC28 8016E1E8 10400046 */  beqz       $v0, .L8016E304_ovl5
/* CEC2C 8016E1EC 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CEC30 8016E1F0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L8016E1F4_ovl5:
/* CEC34 8016E1F4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* CEC38 8016E1F8 44801000 */  mtc1       $zero, $f2
/* CEC3C 8016E1FC 3C04800E */  lui        $a0, %hi(D_800E6690)
/* CEC40 8016E200 8C4C0000 */  lw         $t4, 0x0($v0)
/* CEC44 8016E204 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* CEC48 8016E208 3C018019 */  lui        $at, %hi(D_80197364_ovl3)
/* CEC4C 8016E20C 000C6880 */  sll        $t5, $t4, 2
/* CEC50 8016E210 C4207364 */  lwc1       $f0, %lo(D_80197364_ovl3)($at)
/* CEC54 8016E214 008D7021 */  addu       $t6, $a0, $t5
/* CEC58 8016E218 E5C20000 */  swc1       $f2, 0x0($t6)
/* CEC5C 8016E21C 8C430000 */  lw         $v1, 0x0($v0)
/* CEC60 8016E220 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CEC64 8016E224 3C06800E */  lui        $a2, %hi(D_800E3750)
/* CEC68 8016E228 00031880 */  sll        $v1, $v1, 2
/* CEC6C 8016E22C 00837821 */  addu       $t7, $a0, $v1
/* CEC70 8016E230 C5E40000 */  lwc1       $f4, 0x0($t7)
/* CEC74 8016E234 00230821 */  addu       $at, $at, $v1
/* CEC78 8016E238 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* CEC7C 8016E23C E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* CEC80 8016E240 8C580000 */  lw         $t8, 0x0($v0)
/* CEC84 8016E244 3C01800E */  lui        $at, %hi(D_800E6850)
/* CEC88 8016E248 3C058013 */  lui        $a1, %hi(D_8012BCA0)
/* CEC8C 8016E24C 0018C880 */  sll        $t9, $t8, 2
/* CEC90 8016E250 00390821 */  addu       $at, $at, $t9
/* CEC94 8016E254 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
/* CEC98 8016E258 8C480000 */  lw         $t0, 0x0($v0)
/* CEC9C 8016E25C 3C01800E */  lui        $at, %hi(D_800E3210)
/* CECA0 8016E260 24A5BCA0 */  addiu      $a1, $a1, %lo(D_8012BCA0)
.L8016E264_ovl5:
/* CECA4 8016E264 00084880 */  sll        $t1, $t0, 2
/* CECA8 8016E268 00C95021 */  addu       $t2, $a2, $t1
/* CECAC 8016E26C E5420000 */  swc1       $f2, 0x0($t2)
.L8016E270_ovl5:
/* CECB0 8016E270 8C430000 */  lw         $v1, 0x0($v0)
/* CECB4 8016E274 3C088019 */  lui        $t0, %hi(D_80190358_ovl3)
/* CECB8 8016E278 25080358 */  addiu      $t0, $t0, %lo(D_80190358_ovl3)
.L8016E27C_ovl5:
/* CECBC 8016E27C 00031880 */  sll        $v1, $v1, 2
/* CECC0 8016E280 00C35821 */  addu       $t3, $a2, $v1
/* CECC4 8016E284 C5660000 */  lwc1       $f6, 0x0($t3)
/* CECC8 8016E288 00230821 */  addu       $at, $at, $v1
/* CECCC 8016E28C 3C198019 */  lui        $t9, %hi(D_801903E0_ovl3)
/* CECD0 8016E290 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* CECD4 8016E294 8C4C0000 */  lw         $t4, 0x0($v0)
/* CECD8 8016E298 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CECDC 8016E29C 2404000A */  addiu      $a0, $zero, 0xA
/* CECE0 8016E2A0 000C6880 */  sll        $t5, $t4, 2
/* CECE4 8016E2A4 002D0821 */  addu       $at, $at, $t5
/* CECE8 8016E2A8 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
/* CECEC 8016E2AC 94AE0000 */  lhu        $t6, 0x0($a1)
/* CECF0 8016E2B0 90F80004 */  lbu        $t8, 0x4($a3)
/* CECF4 8016E2B4 24010001 */  addiu      $at, $zero, 0x1
/* CECF8 8016E2B8 31CF0007 */  andi       $t7, $t6, 0x7
/* CECFC 8016E2BC 17010004 */  bne        $t8, $at, .L8016E2D0_ovl3
/* CED00 8016E2C0 A4AF0000 */   sh        $t7, 0x0($a1)
/* CED04 8016E2C4 273903E0 */  addiu      $t9, $t9, %lo(D_801903E0_ovl3)
/* CED08 8016E2C8 10000002 */  b          .L8016E2D4_ovl3
/* CED0C 8016E2CC ACF9015C */   sw        $t9, 0x15C($a3)
.L8016E2D0_ovl3:
/* CED10 8016E2D0 ACE8015C */  sw         $t0, 0x15C($a3)
.L8016E2D4_ovl3:
/* CED14 8016E2D4 0C048BDB */  jal        set_kirby_action_1
/* CED18 8016E2D8 2405000D */   addiu     $a1, $zero, 0xD
/* CED1C 8016E2DC 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CED20 8016E2E0 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CED24 8016E2E4 90E90004 */  lbu        $t1, 0x4($a3)
/* CED28 8016E2E8 24010002 */  addiu      $at, $zero, 0x2
.L8016E2EC_ovl5:
/* CED2C 8016E2EC 240AFFFD */  addiu      $t2, $zero, -0x3
/* CED30 8016E2F0 552100CE */  bnel       $t1, $at, .L8016E62C_ovl3
/* CED34 8016E2F4 8FBF0014 */   lw        $ra, 0x14($sp)
.L8016E2F8_ovl5:
/* CED38 8016E2F8 A0E00004 */  sb         $zero, 0x4($a3)
/* CED3C 8016E2FC 100000CA */  b          .L8016E628_ovl3
/* CED40 8016E300 A0EA000D */   sb        $t2, 0xD($a3)
.L8016E304_ovl5:
/* CED44 8016E304 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* CED48 8016E308 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* CED4C 8016E30C 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* CED50 8016E310 8D6C0000 */  lw         $t4, 0x0($t3)
/* CED54 8016E314 000C6880 */  sll        $t5, $t4, 2
/* CED58 8016E318 01CD7021 */  addu       $t6, $t6, $t5
/* CED5C 8016E31C 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* CED60 8016E320 31CF0006 */  andi       $t7, $t6, 0x6
/* CED64 8016E324 15E00012 */  bnez       $t7, .L8016E370_ovl3
/* CED68 8016E328 00000000 */   nop
/* CED6C 8016E32C 94F80068 */  lhu        $t8, 0x68($a3)
/* CED70 8016E330 3C048019 */  lui        $a0, %hi(D_8019395C_ovl3)
/* CED74 8016E334 2484395C */  addiu      $a0, $a0, %lo(D_8019395C_ovl3)
/* CED78 8016E338 1700000D */  bnez       $t8, .L8016E370_ovl3
/* CED7C 8016E33C 00000000 */   nop
/* CED80 8016E340 0C055127 */  jal        func_8015449C_ovl3
/* CED84 8016E344 00002825 */   or        $a1, $zero, $zero
/* CED88 8016E348 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CED8C 8016E34C 10400008 */  beqz       $v0, .L8016E370_ovl3
/* CED90 8016E350 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CED94 8016E354 80F9000D */  lb         $t9, 0xD($a3)
/* CED98 8016E358 24010002 */  addiu      $at, $zero, 0x2
/* CED9C 8016E35C 2408FFFD */  addiu      $t0, $zero, -0x3
/* CEDA0 8016E360 17210003 */  bne        $t9, $at, .L8016E370_ovl3
/* CEDA4 8016E364 00000000 */   nop
/* CEDA8 8016E368 A0E00004 */  sb         $zero, 0x4($a3)
/* CEDAC 8016E36C A0E8000D */  sb         $t0, 0xD($a3)
.L8016E370_ovl3:
/* CEDB0 8016E370 3C098005 */  lui        $t1, %hi(D_8004A7C4)
.L8016E374_ovl5:
/* CEDB4 8016E374 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* CEDB8 8016E378 44804000 */  mtc1       $zero, $f8
/* CEDBC 8016E37C 3C01800E */  lui        $at, %hi(D_800E3210)
.L8016E380_ovl5:
/* CEDC0 8016E380 8D2A0000 */  lw         $t2, 0x0($t1)
/* CEDC4 8016E384 2404000B */  addiu      $a0, $zero, 0xB
/* CEDC8 8016E388 2405000A */  addiu      $a1, $zero, 0xA
.L8016E38C_ovl5:
/* CEDCC 8016E38C 000A5880 */  sll        $t3, $t2, 2
/* CEDD0 8016E390 002B0821 */  addu       $at, $at, $t3
/* CEDD4 8016E394 0C02ED1A */  jal        func_800BB468
/* CEDD8 8016E398 E4283210 */   swc1      $f8, %lo(D_800E3210)($at)
/* CEDDC 8016E39C 0C05E44C */  jal        func_80179130_ovl3
/* CEDE0 8016E3A0 00000000 */   nop
/* CEDE4 8016E3A4 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEDE8 8016E3A8 14400066 */  bnez       $v0, .L8016E544_ovl3
/* CEDEC 8016E3AC 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CEDF0 8016E3B0 24040006 */  addiu      $a0, $zero, 0x6
/* CEDF4 8016E3B4 0C048BDB */  jal        set_kirby_action_1
/* CEDF8 8016E3B8 24050006 */   addiu     $a1, $zero, 0x6
/* CEDFC 8016E3BC 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEE00 8016E3C0 10000060 */  b          .L8016E544_ovl3
/* CEE04 8016E3C4 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CEE08 8016E3C8 8CEC0030 */  lw         $t4, %lo(D_80130030)($a3)
.L8016E3CC_ovl3:
/* CEE0C 8016E3CC 5180000D */  beql       $t4, $zero, .L8016E404_ovl3
/* CEE10 8016E3D0 94ED00D2 */   lhu       $t5, 0xD2($a3)
/* CEE14 8016E3D4 0C05E44C */  jal        func_80179130_ovl3
/* CEE18 8016E3D8 00000000 */   nop
/* CEE1C 8016E3DC 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEE20 8016E3E0 14400058 */  bnez       $v0, .L8016E544_ovl3
/* CEE24 8016E3E4 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CEE28 8016E3E8 24040006 */  addiu      $a0, $zero, 0x6
/* CEE2C 8016E3EC 0C048BDB */  jal        set_kirby_action_1
/* CEE30 8016E3F0 24050006 */   addiu     $a1, $zero, 0x6
/* CEE34 8016E3F4 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEE38 8016E3F8 10000052 */  b          .L8016E544_ovl3
.L8016E3FC_ovl5:
/* CEE3C 8016E3FC 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CEE40 8016E400 94ED00D2 */  lhu        $t5, %lo(D_801300D2)($a3)
.L8016E404_ovl3:
/* CEE44 8016E404 15A00005 */  bnez       $t5, .L8016E41C_ovl3
.L8016E408_ovl5:
/* CEE48 8016E408 00000000 */   nop
/* CEE4C 8016E40C 0C047AF5 */  jal        func_8011EBD4
/* CEE50 8016E410 00000000 */   nop
.L8016E414_ovl5:
/* CEE54 8016E414 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEE58 8016E418 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L8016E41C_ovl3:
/* CEE5C 8016E41C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L8016E420_ovl5:
/* CEE60 8016E420 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* CEE64 8016E424 3C0E800F */  lui        $t6, %hi(D_800E83E0)
/* CEE68 8016E428 24010002 */  addiu      $at, $zero, 0x2
/* CEE6C 8016E42C 8C430000 */  lw         $v1, 0x0($v0)
/* CEE70 8016E430 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
/* CEE74 8016E434 3C06800E */  lui        $a2, %hi(D_800E3750)
/* CEE78 8016E438 00031880 */  sll        $v1, $v1, 2
/* CEE7C 8016E43C 01C37021 */  addu       $t6, $t6, $v1
/* CEE80 8016E440 8DCE83E0 */  lw         $t6, %lo(D_800E83E0)($t6)
/* CEE84 8016E444 01435021 */  addu       $t2, $t2, $v1
/* CEE88 8016E448 31CFFFFF */  andi       $t7, $t6, 0xFFFF
/* CEE8C 8016E44C 15E10021 */  bne        $t7, $at, .L8016E4D4_ovl3
/* CEE90 8016E450 00000000 */   nop
/* CEE94 8016E454 44805000 */  mtc1       $zero, $f10
.L8016E458_ovl5:
/* CEE98 8016E458 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* CEE9C 8016E45C 00C3C021 */  addu       $t8, $a2, $v1
/* CEEA0 8016E460 E70A0000 */  swc1       $f10, 0x0($t8)
/* CEEA4 8016E464 8C430000 */  lw         $v1, 0x0($v0)
/* CEEA8 8016E468 3C01800E */  lui        $at, %hi(D_800E3210)
/* CEEAC 8016E46C 2404000B */  addiu      $a0, $zero, 0xB
/* CEEB0 8016E470 00031880 */  sll        $v1, $v1, 2
/* CEEB4 8016E474 00C3C821 */  addu       $t9, $a2, $v1
/* CEEB8 8016E478 C7300000 */  lwc1       $f16, 0x0($t9)
/* CEEBC 8016E47C 00230821 */  addu       $at, $at, $v1
/* CEEC0 8016E480 2405000A */  addiu      $a1, $zero, 0xA
/* CEEC4 8016E484 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* CEEC8 8016E488 8C480000 */  lw         $t0, 0x0($v0)
/* CEECC 8016E48C 3C018019 */  lui        $at, %hi(D_80197368_ovl3)
/* CEED0 8016E490 C4327368 */  lwc1       $f18, %lo(D_80197368_ovl3)($at)
/* CEED4 8016E494 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CEED8 8016E498 00084880 */  sll        $t1, $t0, 2
/* CEEDC 8016E49C 00290821 */  addu       $at, $at, $t1
/* CEEE0 8016E4A0 0C02ED1A */  jal        func_800BB468
/* CEEE4 8016E4A4 E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
/* CEEE8 8016E4A8 0C05E44C */  jal        func_80179130_ovl3
/* CEEEC 8016E4AC 00000000 */   nop
/* CEEF0 8016E4B0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEEF4 8016E4B4 14400023 */  bnez       $v0, .L8016E544_ovl3
/* CEEF8 8016E4B8 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CEEFC 8016E4BC 24040006 */  addiu      $a0, $zero, 0x6
/* CEF00 8016E4C0 0C048BDB */  jal        set_kirby_action_1
/* CEF04 8016E4C4 24050006 */   addiu     $a1, $zero, 0x6
/* CEF08 8016E4C8 3C078013 */  lui        $a3, %hi(gKirbyState)
.L8016E4CC_ovl5:
/* CEF0C 8016E4CC 1000001D */  b          .L8016E544_ovl3
/* CEF10 8016E4D0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L8016E4D4_ovl3:
/* CEF14 8016E4D4 8D4A8AE0 */  lw         $t2, %lo(D_800E8AE0)($t2)
.L8016E4D8_ovl5:
/* CEF18 8016E4D8 314B0006 */  andi       $t3, $t2, 0x6
/* CEF1C 8016E4DC 5560001A */  bnel       $t3, $zero, .L8016E548_ovl3
/* CEF20 8016E4E0 8CF900FC */   lw        $t9, 0xFC($a3)
.L8016E4E4_ovl5:
/* CEF24 8016E4E4 90EC0009 */  lbu        $t4, 0x9($a3)
/* CEF28 8016E4E8 3C01800E */  lui        $at, %hi(D_800E3210)
/* CEF2C 8016E4EC 00230821 */  addu       $at, $at, $v1
/* CEF30 8016E4F0 318D0001 */  andi       $t5, $t4, 0x1
/* CEF34 8016E4F4 55A00014 */  bnel       $t5, $zero, .L8016E548_ovl3
/* CEF38 8016E4F8 8CF900FC */   lw        $t9, 0xFC($a3)
/* CEF3C 8016E4FC C4E400CC */  lwc1       $f4, 0xCC($a3)
/* CEF40 8016E500 C4263210 */  lwc1       $f6, %lo(D_800E3210)($at)
/* CEF44 8016E504 4606203C */  c.lt.s     $f4, $f6
/* CEF48 8016E508 00000000 */  nop
/* CEF4C 8016E50C 4502000E */  bc1fl      .L8016E548_ovl3
/* CEF50 8016E510 8CF900FC */   lw        $t9, 0xFC($a3)
/* CEF54 8016E514 90EE0004 */  lbu        $t6, 0x4($a3)
/* CEF58 8016E518 8FAF0028 */  lw         $t7, 0x28($sp)
/* CEF5C 8016E51C 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* CEF60 8016E520 55C00009 */  bnel       $t6, $zero, .L8016E548_ovl3
/* CEF64 8016E524 8CF900FC */   lw        $t9, 0xFC($a3)
/* CEF68 8016E528 8DF8003C */  lw         $t8, 0x3C($t7)
/* CEF6C 8016E52C 3C048019 */  lui        $a0, %hi(D_80190F2C_ovl3)
/* CEF70 8016E530 24840F2C */  addiu      $a0, $a0, %lo(D_80190F2C_ovl3)
/* CEF74 8016E534 0C05A153 */  jal        func_8016854C_ovl3
/* CEF78 8016E538 8F050010 */   lw        $a1, 0x10($t8)
/* CEF7C 8016E53C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CEF80 8016E540 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L8016E544_ovl3:
/* CEF84 8016E544 8CF900FC */  lw         $t9, 0xFC($a3)
.L8016E548_ovl3:
/* CEF88 8016E548 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* CEF8C 8016E54C 17200006 */  bnez       $t9, .L8016E568_ovl3
/* CEF90 8016E550 00000000 */   nop
.L8016E554_ovl5:
/* CEF94 8016E554 0C047B5A */  jal        func_8011ED68
/* CEF98 8016E558 00000000 */   nop
/* CEF9C 8016E55C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L8016E560_ovl5:
/* CEFA0 8016E560 10000017 */  b          .L8016E5C0_ovl3
/* CEFA4 8016E564 8C42A7C4 */   lw        $v0, %lo(D_8004A7C4)($v0)
.L8016E568_ovl3:
/* CEFA8 8016E568 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L8016E56C_ovl5:
/* CEFAC 8016E56C 44804000 */  mtc1       $zero, $f8
/* CEFB0 8016E570 3C04800E */  lui        $a0, %hi(D_800E6690)
/* CEFB4 8016E574 8C480000 */  lw         $t0, 0x0($v0)
/* CEFB8 8016E578 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* CEFBC 8016E57C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CEFC0 8016E580 00084880 */  sll        $t1, $t0, 2
/* CEFC4 8016E584 00895021 */  addu       $t2, $a0, $t1
/* CEFC8 8016E588 E5480000 */  swc1       $f8, 0x0($t2)
/* CEFCC 8016E58C 8C430000 */  lw         $v1, 0x0($v0)
/* CEFD0 8016E590 00031880 */  sll        $v1, $v1, 2
/* CEFD4 8016E594 00835821 */  addu       $t3, $a0, $v1
/* CEFD8 8016E598 C56A0000 */  lwc1       $f10, 0x0($t3)
/* CEFDC 8016E59C 00230821 */  addu       $at, $at, $v1
/* CEFE0 8016E5A0 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* CEFE4 8016E5A4 8C4C0000 */  lw         $t4, 0x0($v0)
/* CEFE8 8016E5A8 3C018019 */  lui        $at, %hi(D_8019736C_ovl3)
/* CEFEC 8016E5AC C430736C */  lwc1       $f16, %lo(D_8019736C_ovl3)($at)
/* CEFF0 8016E5B0 3C01800E */  lui        $at, %hi(D_800E6850)
/* CEFF4 8016E5B4 000C6880 */  sll        $t5, $t4, 2
/* CEFF8 8016E5B8 002D0821 */  addu       $at, $at, $t5
/* CEFFC 8016E5BC E4306850 */  swc1       $f16, %lo(D_800E6850)($at)
.L8016E5C0_ovl3:
/* CF000 8016E5C0 8C4E0000 */  lw         $t6, 0x0($v0)
/* CF004 8016E5C4 3C18800F */  lui        $t8, %hi(D_800E8AE0)
/* CF008 8016E5C8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CF00C 8016E5CC 000E7880 */  sll        $t7, $t6, 2
/* CF010 8016E5D0 030FC021 */  addu       $t8, $t8, $t7
/* CF014 8016E5D4 8F188AE0 */  lw         $t8, %lo(D_800E8AE0)($t8)
/* CF018 8016E5D8 33190006 */  andi       $t9, $t8, 0x6
.L8016E5DC_ovl5:
/* CF01C 8016E5DC 5320000C */  beql       $t9, $zero, .L8016E610_ovl3
/* CF020 8016E5E0 44816000 */   mtc1      $at, $f12
/* CF024 8016E5E4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L8016E5E8_ovl5:
/* CF028 8016E5E8 44816000 */  mtc1       $at, $f12
/* CF02C 8016E5EC 0C02BB30 */  jal        func_800AECC0
/* CF030 8016E5F0 00000000 */   nop
.L8016E5F4_ovl5:
/* CF034 8016E5F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CF038 8016E5F8 44816000 */  mtc1       $at, $f12
/* CF03C 8016E5FC 0C02BB48 */  jal        func_800AED20
.L8016E600_ovl5:
/* CF040 8016E600 00000000 */   nop
/* CF044 8016E604 10000009 */  b          .L8016E62C_ovl3
/* CF048 8016E608 8FBF0014 */   lw        $ra, 0x14($sp)
/* CF04C 8016E60C 44816000 */  mtc1       $at, $f12
.L8016E610_ovl3:
/* CF050 8016E610 0C02BB30 */  jal        func_800AECC0
/* CF054 8016E614 00000000 */   nop
/* CF058 8016E618 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CF05C 8016E61C 44816000 */  mtc1       $at, $f12
/* CF060 8016E620 0C02BB48 */  jal        func_800AED20
/* CF064 8016E624 00000000 */   nop
.L8016E628_ovl3:
/* CF068 8016E628 8FBF0014 */  lw         $ra, 0x14($sp)
.L8016E62C_ovl3:
/* CF06C 8016E62C 27BD0028 */  addiu      $sp, $sp, 0x28
/* CF070 8016E630 03E00008 */  jr         $ra
/* CF074 8016E634 00000000 */   nop
