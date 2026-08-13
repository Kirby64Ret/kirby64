nonmatching func_8017E284_ovl3, 0x2C8

glabel func_8017E284_ovl3
    /* DECC4 8017E284 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DECC8 8017E288 AFB00028 */  sw         $s0, 0x28($sp)
    /* DECCC 8017E28C 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* DECD0 8017E290 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* DECD4 8017E294 AFB30034 */  sw         $s3, 0x34($sp)
    /* DECD8 8017E298 3C138005 */  lui        $s3, %hi(omCurrentObj)
    /* DECDC 8017E29C 44802000 */  mtc1       $zero, $f4
    /* DECE0 8017E2A0 2673A7C4 */  addiu      $s3, $s3, %lo(omCurrentObj)
    /* DECE4 8017E2A4 8E780000 */  lw         $t8, 0x0($s3)
    /* DECE8 8017E2A8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* DECEC 8017E2AC AFB40038 */  sw         $s4, 0x38($sp)
    /* DECF0 8017E2B0 AFB20030 */  sw         $s2, 0x30($sp)
    /* DECF4 8017E2B4 AFB1002C */  sw         $s1, 0x2C($sp)
    /* DECF8 8017E2B8 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* DECFC 8017E2BC F7B40018 */  sdc1       $f20, 0x18($sp)
    /* DED00 8017E2C0 AFA40040 */  sw         $a0, 0x40($sp)
    /* DED04 8017E2C4 AE000030 */  sw         $zero, 0x30($s0)
    /* DED08 8017E2C8 A2000007 */  sb         $zero, 0x7($s0)
    /* DED0C 8017E2CC AE00004C */  sw         $zero, 0x4C($s0)
    /* DED10 8017E2D0 A60000D2 */  sh         $zero, 0xD2($s0)
    /* DED14 8017E2D4 A60000D0 */  sh         $zero, 0xD0($s0)
    /* DED18 8017E2D8 E6040040 */  swc1       $f4, 0x40($s0)
    /* DED1C 8017E2DC 8F190000 */  lw         $t9, 0x0($t8)
    /* DED20 8017E2E0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* DED24 8017E2E4 240F0001 */  addiu      $t7, $zero, 0x1
    /* DED28 8017E2E8 00194080 */  sll        $t0, $t9, 2
    /* DED2C 8017E2EC 00280821 */  addu       $at, $at, $t0
    /* DED30 8017E2F0 0C0473D6 */  jal        func_8011CF58
    /* DED34 8017E2F4 AC2F98E0 */   sw        $t7, %lo(D_800E98E0)($at)
    /* DED38 8017E2F8 8E6A0000 */  lw         $t2, 0x0($s3)
    /* DED3C 8017E2FC 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* DED40 8017E300 2409002B */  addiu      $t1, $zero, 0x2B
    /* DED44 8017E304 8D4B0000 */  lw         $t3, 0x0($t2)
    /* DED48 8017E308 000B6080 */  sll        $t4, $t3, 2
    /* DED4C 8017E30C 002C0821 */  addu       $at, $at, $t4
    /* DED50 8017E310 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
    /* DED54 8017E314 0C04828A */  jal        func_80120A28
    /* DED58 8017E318 AE000044 */   sw        $zero, 0x44($s0)
    /* DED5C 8017E31C 3C0D8019 */  lui        $t5, %hi(D_801905E8_ovl3)
    /* DED60 8017E320 25AD05E8 */  addiu      $t5, $t5, %lo(D_801905E8_ovl3)
    /* DED64 8017E324 3C040002 */  lui        $a0, (0x201B4 >> 16)
    /* DED68 8017E328 3C050002 */  lui        $a1, (0x201B5 >> 16)
    /* DED6C 8017E32C AE0D015C */  sw         $t5, 0x15C($s0)
    /* DED70 8017E330 34A501B5 */  ori        $a1, $a1, (0x201B5 & 0xFFFF)
    /* DED74 8017E334 348401B4 */  ori        $a0, $a0, (0x201B4 & 0xFFFF)
    /* DED78 8017E338 0C048C3A */  jal        func_801230E8
    /* DED7C 8017E33C 24060001 */   addiu     $a2, $zero, 0x1
    /* DED80 8017E340 8E0E0090 */  lw         $t6, 0x90($s0)
    /* DED84 8017E344 3C040002 */  lui        $a0, (0x20012 >> 16)
    /* DED88 8017E348 34840012 */  ori        $a0, $a0, (0x20012 & 0xFFFF)
    /* DED8C 8017E34C 0C048BC2 */  jal        func_80122F08
    /* DED90 8017E350 AE0E00A0 */   sw        $t6, 0xA0($s0)
    /* DED94 8017E354 8E790000 */  lw         $t9, 0x0($s3)
    /* DED98 8017E358 24180005 */  addiu      $t8, $zero, 0x5
    /* DED9C 8017E35C AE180154 */  sw         $t8, 0x154($s0)
    /* DEDA0 8017E360 8F2F0000 */  lw         $t7, 0x0($t9)
    /* DEDA4 8017E364 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* DEDA8 8017E368 24040001 */  addiu      $a0, $zero, 0x1
    /* DEDAC 8017E36C 000F4080 */  sll        $t0, $t7, 2
    /* DEDB0 8017E370 01485021 */  addu       $t2, $t2, $t0
    /* DEDB4 8017E374 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
    /* DEDB8 8017E378 24050001 */  addiu      $a1, $zero, 0x1
    /* DEDBC 8017E37C 2406002A */  addiu      $a2, $zero, 0x2A
    /* DEDC0 8017E380 0C02A040 */  jal        func_800A8100
    /* DEDC4 8017E384 8D470010 */   lw        $a3, 0x10($t2)
    /* DEDC8 8017E388 8E6B0000 */  lw         $t3, 0x0($s3)
    /* DEDCC 8017E38C AE02004C */  sw         $v0, 0x4C($s0)
    /* DEDD0 8017E390 3C14800F */  lui        $s4, %hi(D_800E9720)
    /* DEDD4 8017E394 8D690000 */  lw         $t1, 0x0($t3)
    /* DEDD8 8017E398 26949720 */  addiu      $s4, $s4, %lo(D_800E9720)
    /* DEDDC 8017E39C 3C040002 */  lui        $a0, (0x201B2 >> 16)
    /* DEDE0 8017E3A0 00096080 */  sll        $t4, $t1, 2
    /* DEDE4 8017E3A4 028C6821 */  addu       $t5, $s4, $t4
    /* DEDE8 8017E3A8 ADA00000 */  sw         $zero, 0x0($t5)
    /* DEDEC 8017E3AC 0C02A806 */  jal        func_800AA018
    /* DEDF0 8017E3B0 348401B2 */   ori       $a0, $a0, (0x201B2 & 0xFFFF)
    /* DEDF4 8017E3B4 3C018019 */  lui        $at, %hi(D_801976A0_ovl3)
    /* DEDF8 8017E3B8 C43676A0 */  lwc1       $f22, %lo(D_801976A0_ovl3)($at)
    /* DEDFC 8017E3BC 3C018019 */  lui        $at, %hi(D_801976A4_ovl3)
    /* DEE00 8017E3C0 3C12800D */  lui        $s2, %hi(gKirbyController)
    /* DEE04 8017E3C4 3C11800E */  lui        $s1, %hi(gEntitiesAngleXArray)
    /* DEE08 8017E3C8 26314010 */  addiu      $s1, $s1, %lo(gEntitiesAngleXArray)
    /* DEE0C 8017E3CC 26526FE8 */  addiu      $s2, $s2, %lo(gKirbyController)
    /* DEE10 8017E3D0 C43476A4 */  lwc1       $f20, %lo(D_801976A4_ovl3)($at)
    /* DEE14 8017E3D4 920E0017 */  lbu        $t6, 0x17($s0)
  .L8017E3D8_ovl3:
    /* DEE18 8017E3D8 15C00040 */  bnez       $t6, .L8017E4DC_ovl3
    /* DEE1C 8017E3DC 00000000 */   nop
    /* DEE20 8017E3E0 C6000040 */  lwc1       $f0, 0x40($s0)
    /* DEE24 8017E3E4 4600A032 */  c.eq.s     $f20, $f0
    /* DEE28 8017E3E8 00000000 */  nop
    /* DEE2C 8017E3EC 45030016 */  bc1tl      .L8017E448_ovl3
    /* DEE30 8017E3F0 964C0000 */   lhu       $t4, 0x0($s2)
    /* DEE34 8017E3F4 8E630000 */  lw         $v1, 0x0($s3)
    /* DEE38 8017E3F8 46160200 */  add.s      $f8, $f0, $f22
    /* DEE3C 8017E3FC 8C780000 */  lw         $t8, 0x0($v1)
    /* DEE40 8017E400 46000187 */  neg.s      $f6, $f0
    /* DEE44 8017E404 0018C880 */  sll        $t9, $t8, 2
    /* DEE48 8017E408 02397821 */  addu       $t7, $s1, $t9
    /* DEE4C 8017E40C E5E60000 */  swc1       $f6, 0x0($t7)
    /* DEE50 8017E410 E6080040 */  swc1       $f8, 0x40($s0)
    /* DEE54 8017E414 C60A0040 */  lwc1       $f10, 0x40($s0)
    /* DEE58 8017E418 460AA03E */  c.le.s     $f20, $f10
    /* DEE5C 8017E41C 00000000 */  nop
    /* DEE60 8017E420 45020003 */  bc1fl      .L8017E430_ovl3
    /* DEE64 8017E424 8C680000 */   lw        $t0, 0x0($v1)
    /* DEE68 8017E428 E6140040 */  swc1       $f20, 0x40($s0)
    /* DEE6C 8017E42C 8C680000 */  lw         $t0, 0x0($v1)
  .L8017E430_ovl3:
    /* DEE70 8017E430 00085080 */  sll        $t2, $t0, 2
    /* DEE74 8017E434 028A1021 */  addu       $v0, $s4, $t2
    /* DEE78 8017E438 8C4B0000 */  lw         $t3, 0x0($v0)
    /* DEE7C 8017E43C 25690001 */  addiu      $t1, $t3, 0x1
    /* DEE80 8017E440 AC490000 */  sw         $t1, 0x0($v0)
    /* DEE84 8017E444 964C0000 */  lhu        $t4, 0x0($s2)
  .L8017E448_ovl3:
    /* DEE88 8017E448 318D4000 */  andi       $t5, $t4, 0x4000
    /* DEE8C 8017E44C 11A00005 */  beqz       $t5, .L8017E464_ovl3
    /* DEE90 8017E450 00000000 */   nop
    /* DEE94 8017E454 0C002DAF */  jal        ohSleep
    /* DEE98 8017E458 24040001 */   addiu     $a0, $zero, 0x1
    /* DEE9C 8017E45C 1000FFDE */  b          .L8017E3D8_ovl3
    /* DEEA0 8017E460 920E0017 */   lbu       $t6, 0x17($s0)
  .L8017E464_ovl3:
    /* DEEA4 8017E464 0C058CAE */  jal        func_801632B8_ovl3
    /* DEEA8 8017E468 24040004 */   addiu     $a0, $zero, 0x4
    /* DEEAC 8017E46C 8E6E0000 */  lw         $t6, 0x0($s3)
    /* DEEB0 8017E470 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
    /* DEEB4 8017E474 00021880 */  sll        $v1, $v0, 2
    /* DEEB8 8017E478 8DD80000 */  lw         $t8, 0x0($t6)
    /* DEEBC 8017E47C 3C01800E */  lui        $at, %hi(D_800E1B50 + 0x1C0)
    /* DEEC0 8017E480 00230821 */  addu       $at, $at, $v1
    /* DEEC4 8017E484 0018C880 */  sll        $t9, $t8, 2
    /* DEEC8 8017E488 01F97821 */  addu       $t7, $t7, $t9
    /* DEECC 8017E48C 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
    /* DEED0 8017E490 240400B5 */  addiu      $a0, $zero, 0xB5
    /* DEED4 8017E494 8DE80010 */  lw         $t0, 0x10($t7)
    /* DEED8 8017E498 AC281D10 */  sw         $t0, %lo(D_800E1B50 + 0x1C0)($at)
    /* DEEDC 8017E49C C6100040 */  lwc1       $f16, 0x40($s0)
    /* DEEE0 8017E4A0 3C01800F */  lui        $at, %hi(D_800EC660)
    /* DEEE4 8017E4A4 00230821 */  addu       $at, $at, $v1
    /* DEEE8 8017E4A8 0C029D9E */  jal        play_sound
    /* DEEEC 8017E4AC E430C660 */   swc1      $f16, %lo(D_800EC660)($at)
    /* DEEF0 8017E4B0 0C029D9E */  jal        play_sound
    /* DEEF4 8017E4B4 240400B6 */   addiu     $a0, $zero, 0xB6
    /* DEEF8 8017E4B8 8E6A0000 */  lw         $t2, 0x0($s3)
    /* DEEFC 8017E4BC 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* DEF00 8017E4C0 3C040002 */  lui        $a0, (0x201B3 >> 16)
    /* DEF04 8017E4C4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* DEF08 8017E4C8 348401B3 */  ori        $a0, $a0, (0x201B3 & 0xFFFF)
    /* DEF0C 8017E4CC 000B4880 */  sll        $t1, $t3, 2
    /* DEF10 8017E4D0 00290821 */  addu       $at, $at, $t1
    /* DEF14 8017E4D4 0C02A855 */  jal        func_800AA154
    /* DEF18 8017E4D8 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
  .L8017E4DC_ovl3:
    /* DEF1C 8017E4DC 0C04783A */  jal        func_8011E0E8
    /* DEF20 8017E4E0 00000000 */   nop
    /* DEF24 8017E4E4 3C040002 */  lui        $a0, (0x20007 >> 16)
    /* DEF28 8017E4E8 AE0000A0 */  sw         $zero, 0xA0($s0)
    /* DEF2C 8017E4EC 0C048BC2 */  jal        func_80122F08
    /* DEF30 8017E4F0 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* DEF34 8017E4F4 240C0002 */  addiu      $t4, $zero, 0x2
    /* DEF38 8017E4F8 3C040002 */  lui        $a0, (0x201B6 >> 16)
    /* DEF3C 8017E4FC 3C050002 */  lui        $a1, (0x201B7 >> 16)
    /* DEF40 8017E500 AE0C0154 */  sw         $t4, 0x154($s0)
    /* DEF44 8017E504 34A501B7 */  ori        $a1, $a1, (0x201B7 & 0xFFFF)
    /* DEF48 8017E508 348401B6 */  ori        $a0, $a0, (0x201B6 & 0xFFFF)
    /* DEF4C 8017E50C 0C048C3A */  jal        func_801230E8
    /* DEF50 8017E510 24060001 */   addiu     $a2, $zero, 0x1
    /* DEF54 8017E514 8E0D0030 */  lw         $t5, 0x30($s0)
    /* DEF58 8017E518 25AE0001 */  addiu      $t6, $t5, 0x1
    /* DEF5C 8017E51C 0C02BE85 */  jal        curObjSleepForever
    /* DEF60 8017E520 AE0E0030 */   sw        $t6, 0x30($s0)
    /* DEF64 8017E524 8FBF003C */  lw         $ra, 0x3C($sp)
    /* DEF68 8017E528 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* DEF6C 8017E52C D7B60020 */  ldc1       $f22, 0x20($sp)
    /* DEF70 8017E530 8FB00028 */  lw         $s0, 0x28($sp)
    /* DEF74 8017E534 8FB1002C */  lw         $s1, 0x2C($sp)
    /* DEF78 8017E538 8FB20030 */  lw         $s2, 0x30($sp)
    /* DEF7C 8017E53C 8FB30034 */  lw         $s3, 0x34($sp)
    /* DEF80 8017E540 8FB40038 */  lw         $s4, 0x38($sp)
    /* DEF84 8017E544 03E00008 */  jr         $ra
    /* DEF88 8017E548 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8017E284_ovl3
.size func_8017E284_ovl3, . - func_8017E284_ovl3
