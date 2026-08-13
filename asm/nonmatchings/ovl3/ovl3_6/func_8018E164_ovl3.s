nonmatching func_8018E164_ovl3, 0x208

glabel func_8018E164_ovl3
    /* EEBA4 8018E164 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* EEBA8 8018E168 AFB00018 */  sw         $s0, 0x18($sp)
    /* EEBAC 8018E16C 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* EEBB0 8018E170 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* EEBB4 8018E174 AFBF001C */  sw         $ra, 0x1C($sp)
    /* EEBB8 8018E178 AFA40020 */  sw         $a0, 0x20($sp)
    /* EEBBC 8018E17C 0C0473D6 */  jal        func_8011CF58
    /* EEBC0 8018E180 AE000030 */   sw        $zero, 0x30($s0)
    /* EEBC4 8018E184 8E0E0090 */  lw         $t6, 0x90($s0)
    /* EEBC8 8018E188 3C018019 */  lui        $at, %hi(D_80197B68_ovl3)
    /* EEBCC 8018E18C C4227B68 */  lwc1       $f2, %lo(D_80197B68_ovl3)($at)
    /* EEBD0 8018E190 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* EEBD4 8018E194 AE0E00A0 */  sw         $t6, 0xA0($s0)
    /* EEBD8 8018E198 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* EEBDC 8018E19C 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* EEBE0 8018E1A0 240F0041 */  addiu      $t7, $zero, 0x41
    /* EEBE4 8018E1A4 8C580000 */  lw         $t8, 0x0($v0)
    /* EEBE8 8018E1A8 3C06800E */  lui        $a2, %hi(D_800E64D0)
    /* EEBEC 8018E1AC 24C664D0 */  addiu      $a2, $a2, %lo(D_800E64D0)
    /* EEBF0 8018E1B0 0018C880 */  sll        $t9, $t8, 2
    /* EEBF4 8018E1B4 00390821 */  addu       $at, $at, $t9
    /* EEBF8 8018E1B8 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
    /* EEBFC 8018E1BC 8C480000 */  lw         $t0, 0x0($v0)
    /* EEC00 8018E1C0 3C04801A */  lui        $a0, %hi(D_80198848_ovl3)
    /* EEC04 8018E1C4 24848848 */  addiu      $a0, $a0, %lo(D_80198848_ovl3)
    /* EEC08 8018E1C8 00084880 */  sll        $t1, $t0, 2
    /* EEC0C 8018E1CC 00C95021 */  addu       $t2, $a2, $t1
    /* EEC10 8018E1D0 C5440000 */  lwc1       $f4, 0x0($t2)
    /* EEC14 8018E1D4 3C05800E */  lui        $a1, %hi(D_800E6690)
    /* EEC18 8018E1D8 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
    /* EEC1C 8018E1DC E4840000 */  swc1       $f4, 0x0($a0)
    /* EEC20 8018E1E0 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EEC24 8018E1E4 3C07800E */  lui        $a3, %hi(D_800E6850)
    /* EEC28 8018E1E8 24E76850 */  addiu      $a3, $a3, %lo(D_800E6850)
    /* EEC2C 8018E1EC 000B6080 */  sll        $t4, $t3, 2
    /* EEC30 8018E1F0 00AC6821 */  addu       $t5, $a1, $t4
    /* EEC34 8018E1F4 C5A60000 */  lwc1       $f6, 0x0($t5)
    /* EEC38 8018E1F8 44800000 */  mtc1       $zero, $f0
    /* EEC3C 8018E1FC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* EEC40 8018E200 E4860004 */  swc1       $f6, 0x4($a0)
    /* EEC44 8018E204 8C4E0000 */  lw         $t6, 0x0($v0)
    /* EEC48 8018E208 000EC080 */  sll        $t8, $t6, 2
    /* EEC4C 8018E20C 00F87821 */  addu       $t7, $a3, $t8
    /* EEC50 8018E210 C5E80000 */  lwc1       $f8, 0x0($t7)
    /* EEC54 8018E214 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* EEC58 8018E218 E4880008 */  swc1       $f8, 0x8($a0)
    /* EEC5C 8018E21C 8C590000 */  lw         $t9, 0x0($v0)
    /* EEC60 8018E220 00194080 */  sll        $t0, $t9, 2
    /* EEC64 8018E224 00A84821 */  addu       $t1, $a1, $t0
    /* EEC68 8018E228 E5200000 */  swc1       $f0, 0x0($t1)
    /* EEC6C 8018E22C 8C430000 */  lw         $v1, 0x0($v0)
    /* EEC70 8018E230 00031880 */  sll        $v1, $v1, 2
    /* EEC74 8018E234 00A35021 */  addu       $t2, $a1, $v1
    /* EEC78 8018E238 C54A0000 */  lwc1       $f10, 0x0($t2)
    /* EEC7C 8018E23C 00C35821 */  addu       $t3, $a2, $v1
    /* EEC80 8018E240 E56A0000 */  swc1       $f10, 0x0($t3)
    /* EEC84 8018E244 8C4C0000 */  lw         $t4, 0x0($v0)
    /* EEC88 8018E248 000C6880 */  sll        $t5, $t4, 2
    /* EEC8C 8018E24C 00ED7021 */  addu       $t6, $a3, $t5
    /* EEC90 8018E250 E5C20000 */  swc1       $f2, 0x0($t6)
    /* EEC94 8018E254 8C430000 */  lw         $v1, 0x0($v0)
    /* EEC98 8018E258 00031880 */  sll        $v1, $v1, 2
    /* EEC9C 8018E25C 0303C021 */  addu       $t8, $t8, $v1
    /* EECA0 8018E260 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* EECA4 8018E264 00230821 */  addu       $at, $at, $v1
    /* EECA8 8018E268 17000014 */  bnez       $t8, .L8018E2BC_ovl3
    /* EECAC 8018E26C 00000000 */   nop
    /* EECB0 8018E270 C4303210 */  lwc1       $f16, %lo(D_800E3210)($at)
    /* EECB4 8018E274 3C04801A */  lui        $a0, %hi(D_80198858_ovl3)
    /* EECB8 8018E278 24848858 */  addiu      $a0, $a0, %lo(D_80198858_ovl3)
    /* EECBC 8018E27C E4900000 */  swc1       $f16, 0x0($a0)
    /* EECC0 8018E280 8C4F0000 */  lw         $t7, 0x0($v0)
    /* EECC4 8018E284 3C05800E */  lui        $a1, %hi(D_800E3750)
    /* EECC8 8018E288 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
    /* EECCC 8018E28C 000FC880 */  sll        $t9, $t7, 2
    /* EECD0 8018E290 00B94021 */  addu       $t0, $a1, $t9
    /* EECD4 8018E294 C5120000 */  lwc1       $f18, 0x0($t0)
    /* EECD8 8018E298 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* EECDC 8018E29C E4920004 */  swc1       $f18, 0x4($a0)
    /* EECE0 8018E2A0 8C490000 */  lw         $t1, 0x0($v0)
    /* EECE4 8018E2A4 00095080 */  sll        $t2, $t1, 2
    /* EECE8 8018E2A8 002A0821 */  addu       $at, $at, $t2
    /* EECEC 8018E2AC C4243C90 */  lwc1       $f4, %lo(D_800E3C90)($at)
    /* EECF0 8018E2B0 E4840008 */  swc1       $f4, 0x8($a0)
    /* EECF4 8018E2B4 8C430000 */  lw         $v1, 0x0($v0)
    /* EECF8 8018E2B8 00031880 */  sll        $v1, $v1, 2
  .L8018E2BC_ovl3:
    /* EECFC 8018E2BC 3C05800E */  lui        $a1, %hi(D_800E3750)
    /* EED00 8018E2C0 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
    /* EED04 8018E2C4 00A35821 */  addu       $t3, $a1, $v1
    /* EED08 8018E2C8 E5600000 */  swc1       $f0, 0x0($t3)
    /* EED0C 8018E2CC 8C430000 */  lw         $v1, 0x0($v0)
    /* EED10 8018E2D0 3C01800E */  lui        $at, %hi(D_800E3210)
    /* EED14 8018E2D4 24040014 */  addiu      $a0, $zero, 0x14
    /* EED18 8018E2D8 00031880 */  sll        $v1, $v1, 2
    /* EED1C 8018E2DC 00A36021 */  addu       $t4, $a1, $v1
    /* EED20 8018E2E0 C5860000 */  lwc1       $f6, 0x0($t4)
    /* EED24 8018E2E4 00230821 */  addu       $at, $at, $v1
    /* EED28 8018E2E8 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
    /* EED2C 8018E2EC 8C4D0000 */  lw         $t5, 0x0($v0)
    /* EED30 8018E2F0 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* EED34 8018E2F4 000D7080 */  sll        $t6, $t5, 2
    /* EED38 8018E2F8 002E0821 */  addu       $at, $at, $t6
    /* EED3C 8018E2FC 0C05A4F1 */  jal        func_801693C4_ovl3
    /* EED40 8018E300 E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
    /* EED44 8018E304 3C040002 */  lui        $a0, (0x20041 >> 16)
    /* EED48 8018E308 3C050002 */  lui        $a1, (0x20042 >> 16)
    /* EED4C 8018E30C 34A50042 */  ori        $a1, $a1, (0x20042 & 0xFFFF)
    /* EED50 8018E310 34840041 */  ori        $a0, $a0, (0x20041 & 0xFFFF)
    /* EED54 8018E314 0C048C3A */  jal        func_801230E8
    /* EED58 8018E318 00003025 */   or        $a2, $zero, $zero
    /* EED5C 8018E31C 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* EED60 8018E320 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* EED64 8018E324 3C188019 */  lui        $t8, %hi(func_8018E36C_ovl3)
    /* EED68 8018E328 3C01800E */  lui        $at, %hi(D_800DF310)
    /* EED6C 8018E32C 8DF90000 */  lw         $t9, 0x0($t7)
    /* EED70 8018E330 2718E36C */  addiu      $t8, $t8, %lo(func_8018E36C_ovl3)
    /* EED74 8018E334 00194080 */  sll        $t0, $t9, 2
    /* EED78 8018E338 00280821 */  addu       $at, $at, $t0
    /* EED7C 8018E33C 0C02BC9F */  jal        func_800AF27C
    /* EED80 8018E340 AC38F310 */   sw        $t8, %lo(D_800DF310)($at)
    /* EED84 8018E344 8E090030 */  lw         $t1, 0x30($s0)
    /* EED88 8018E348 AE0000A0 */  sw         $zero, 0xA0($s0)
    /* EED8C 8018E34C 252A0001 */  addiu      $t2, $t1, 0x1
    /* EED90 8018E350 0C02BE85 */  jal        curObjSleepForever
    /* EED94 8018E354 AE0A0030 */   sw        $t2, 0x30($s0)
    /* EED98 8018E358 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EED9C 8018E35C 8FB00018 */  lw         $s0, 0x18($sp)
    /* EEDA0 8018E360 27BD0020 */  addiu      $sp, $sp, 0x20
    /* EEDA4 8018E364 03E00008 */  jr         $ra
    /* EEDA8 8018E368 00000000 */   nop
endlabel func_8018E164_ovl3
.size func_8018E164_ovl3, . - func_8018E164_ovl3
