nonmatching func_8018E3B0_ovl3, 0x258

glabel func_8018E3B0_ovl3
    /* EEDF0 8018E3B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* EEDF4 8018E3B4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* EEDF8 8018E3B8 0C054E61 */  jal        func_80153984_ovl3
    /* EEDFC 8018E3BC AFA40018 */   sw        $a0, 0x18($sp)
    /* EEE00 8018E3C0 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* EEE04 8018E3C4 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* EEE08 8018E3C8 8CCE0030 */  lw         $t6, 0x30($a2)
    /* EEE0C 8018E3CC 3C04801A */  lui        $a0, %hi(D_80198848_ovl3)
    /* EEE10 8018E3D0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* EEE14 8018E3D4 51C00089 */  beql       $t6, $zero, .L8018E5FC_ovl3
    /* EEE18 8018E3D8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* EEE1C 8018E3DC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* EEE20 8018E3E0 24848848 */  addiu      $a0, $a0, %lo(D_80198848_ovl3)
    /* EEE24 8018E3E4 C4840000 */  lwc1       $f4, 0x0($a0)
    /* EEE28 8018E3E8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* EEE2C 8018E3EC 3C05800E */  lui        $a1, %hi(D_800E64D0)
    /* EEE30 8018E3F0 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
    /* EEE34 8018E3F4 000FC080 */  sll        $t8, $t7, 2
    /* EEE38 8018E3F8 00B8C821 */  addu       $t9, $a1, $t8
    /* EEE3C 8018E3FC E7240000 */  swc1       $f4, 0x0($t9)
    /* EEE40 8018E400 8C490000 */  lw         $t1, 0x0($v0)
    /* EEE44 8018E404 C4860004 */  lwc1       $f6, 0x4($a0)
    /* EEE48 8018E408 3C01800E */  lui        $at, %hi(D_800E6690)
    /* EEE4C 8018E40C 00095080 */  sll        $t2, $t1, 2
    /* EEE50 8018E410 002A0821 */  addu       $at, $at, $t2
    /* EEE54 8018E414 E4266690 */  swc1       $f6, %lo(D_800E6690)($at)
    /* EEE58 8018E418 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EEE5C 8018E41C C4880008 */  lwc1       $f8, 0x8($a0)
    /* EEE60 8018E420 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EEE64 8018E424 000B6080 */  sll        $t4, $t3, 2
    /* EEE68 8018E428 002C0821 */  addu       $at, $at, $t4
    /* EEE6C 8018E42C E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
    /* EEE70 8018E430 8C430000 */  lw         $v1, 0x0($v0)
    /* EEE74 8018E434 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* EEE78 8018E438 3C04801A */  lui        $a0, %hi(D_80198858_ovl3)
    /* EEE7C 8018E43C 00031880 */  sll        $v1, $v1, 2
    /* EEE80 8018E440 01A36821 */  addu       $t5, $t5, $v1
    /* EEE84 8018E444 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* EEE88 8018E448 3C07800E */  lui        $a3, %hi(D_800E3750)
    /* EEE8C 8018E44C 24E73750 */  addiu      $a3, $a3, %lo(D_800E3750)
    /* EEE90 8018E450 11A00027 */  beqz       $t5, .L8018E4F0_ovl3
    /* EEE94 8018E454 24848858 */   addiu     $a0, $a0, %lo(D_80198858_ovl3)
    /* EEE98 8018E458 3C0E800D */  lui        $t6, %hi(gKirbyController)
    /* EEE9C 8018E45C 95CE6FE8 */  lhu        $t6, %lo(gKirbyController)($t6)
    /* EEEA0 8018E460 24040009 */  addiu      $a0, $zero, 0x9
    /* EEEA4 8018E464 31CF0400 */  andi       $t7, $t6, 0x400
    /* EEEA8 8018E468 51E00006 */  beql       $t7, $zero, .L8018E484_ovl3
    /* EEEAC 8018E46C 90D80007 */   lbu       $t8, 0x7($a2)
    /* EEEB0 8018E470 0C048BDB */  jal        set_kirby_action_1
    /* EEEB4 8018E474 2405000E */   addiu     $a1, $zero, 0xE
    /* EEEB8 8018E478 10000060 */  b          .L8018E5FC_ovl3
    /* EEEBC 8018E47C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* EEEC0 8018E480 90D80007 */  lbu        $t8, 0x7($a2)
  .L8018E484_ovl3:
    /* EEEC4 8018E484 24040002 */  addiu      $a0, $zero, 0x2
    /* EEEC8 8018E488 00A3C821 */  addu       $t9, $a1, $v1
    /* EEECC 8018E48C 53000009 */  beql       $t8, $zero, .L8018E4B4_ovl3
    /* EEED0 8018E490 44808000 */   mtc1      $zero, $f16
    /* EEED4 8018E494 44805000 */  mtc1       $zero, $f10
    /* EEED8 8018E498 ACC00044 */  sw         $zero, 0x44($a2)
    /* EEEDC 8018E49C 24050004 */  addiu      $a1, $zero, 0x4
    /* EEEE0 8018E4A0 0C048BDB */  jal        set_kirby_action_1
    /* EEEE4 8018E4A4 E4CA0038 */   swc1      $f10, 0x38($a2)
    /* EEEE8 8018E4A8 10000054 */  b          .L8018E5FC_ovl3
    /* EEEEC 8018E4AC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* EEEF0 8018E4B0 44808000 */  mtc1       $zero, $f16
  .L8018E4B4_ovl3:
    /* EEEF4 8018E4B4 C7320000 */  lwc1       $f18, 0x0($t9)
    /* EEEF8 8018E4B8 24050003 */  addiu      $a1, $zero, 0x3
    /* EEEFC 8018E4BC 00002025 */  or         $a0, $zero, $zero
    /* EEF00 8018E4C0 46128032 */  c.eq.s     $f16, $f18
    /* EEF04 8018E4C4 00000000 */  nop
    /* EEF08 8018E4C8 45010005 */  bc1t       .L8018E4E0_ovl3
    /* EEF0C 8018E4CC 00000000 */   nop
    /* EEF10 8018E4D0 0C048BDB */  jal        set_kirby_action_1
    /* EEF14 8018E4D4 24040001 */   addiu     $a0, $zero, 0x1
    /* EEF18 8018E4D8 10000048 */  b          .L8018E5FC_ovl3
    /* EEF1C 8018E4DC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8018E4E0_ovl3:
    /* EEF20 8018E4E0 0C048BDB */  jal        set_kirby_action_1
    /* EEF24 8018E4E4 24050001 */   addiu     $a1, $zero, 0x1
    /* EEF28 8018E4E8 10000044 */  b          .L8018E5FC_ovl3
    /* EEF2C 8018E4EC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8018E4F0_ovl3:
    /* EEF30 8018E4F0 C4840000 */  lwc1       $f4, 0x0($a0)
    /* EEF34 8018E4F4 3C05800E */  lui        $a1, %hi(D_800E3210)
    /* EEF38 8018E4F8 24A53210 */  addiu      $a1, $a1, %lo(D_800E3210)
    /* EEF3C 8018E4FC 00A34821 */  addu       $t1, $a1, $v1
    /* EEF40 8018E500 E5240000 */  swc1       $f4, 0x0($t1)
    /* EEF44 8018E504 8C4A0000 */  lw         $t2, 0x0($v0)
    /* EEF48 8018E508 C4860004 */  lwc1       $f6, 0x4($a0)
    /* EEF4C 8018E50C 3C08800E */  lui        $t0, %hi(D_800E3C90)
    /* EEF50 8018E510 000A5880 */  sll        $t3, $t2, 2
    /* EEF54 8018E514 00EB6021 */  addu       $t4, $a3, $t3
    /* EEF58 8018E518 E5860000 */  swc1       $f6, 0x0($t4)
    /* EEF5C 8018E51C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* EEF60 8018E520 C4880008 */  lwc1       $f8, 0x8($a0)
    /* EEF64 8018E524 25083C90 */  addiu      $t0, $t0, %lo(D_800E3C90)
    /* EEF68 8018E528 000D7080 */  sll        $t6, $t5, 2
    /* EEF6C 8018E52C 010E7821 */  addu       $t7, $t0, $t6
    /* EEF70 8018E530 E5E80000 */  swc1       $f8, 0x0($t7)
    /* EEF74 8018E534 90D80006 */  lbu        $t8, 0x6($a2)
    /* EEF78 8018E538 24010005 */  addiu      $at, $zero, 0x5
    /* EEF7C 8018E53C 24040006 */  addiu      $a0, $zero, 0x6
    /* EEF80 8018E540 57010014 */  bnel       $t8, $at, .L8018E594_ovl3
    /* EEF84 8018E544 8C430000 */   lw        $v1, 0x0($v0)
    /* EEF88 8018E548 8C430000 */  lw         $v1, 0x0($v0)
    /* EEF8C 8018E54C 44805000 */  mtc1       $zero, $f10
    /* EEF90 8018E550 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* EEF94 8018E554 00031880 */  sll        $v1, $v1, 2
    /* EEF98 8018E558 00A3C821 */  addu       $t9, $a1, $v1
    /* EEF9C 8018E55C C7300000 */  lwc1       $f16, 0x0($t9)
    /* EEFA0 8018E560 00230821 */  addu       $at, $at, $v1
    /* EEFA4 8018E564 3C098000 */  lui        $t1, (0x80000000 >> 16)
    /* EEFA8 8018E568 4610503C */  c.lt.s     $f10, $f16
    /* EEFAC 8018E56C 00000000 */  nop
    /* EEFB0 8018E570 45020008 */  bc1fl      .L8018E594_ovl3
    /* EEFB4 8018E574 8C430000 */   lw        $v1, 0x0($v0)
    /* EEFB8 8018E578 AC29C2E0 */  sw         $t1, %lo(D_800EC2E0)($at)
    /* EEFBC 8018E57C 24040004 */  addiu      $a0, $zero, 0x4
    /* EEFC0 8018E580 0C048BDB */  jal        set_kirby_action_1
    /* EEFC4 8018E584 24050005 */   addiu     $a1, $zero, 0x5
    /* EEFC8 8018E588 1000001C */  b          .L8018E5FC_ovl3
    /* EEFCC 8018E58C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* EEFD0 8018E590 8C430000 */  lw         $v1, 0x0($v0)
  .L8018E594_ovl3:
    /* EEFD4 8018E594 44809000 */  mtc1       $zero, $f18
    /* EEFD8 8018E598 00031880 */  sll        $v1, $v1, 2
    /* EEFDC 8018E59C 00A35021 */  addu       $t2, $a1, $v1
    /* EEFE0 8018E5A0 C5440000 */  lwc1       $f4, 0x0($t2)
    /* EEFE4 8018E5A4 4604903C */  c.lt.s     $f18, $f4
    /* EEFE8 8018E5A8 00000000 */  nop
    /* EEFEC 8018E5AC 45000010 */  bc1f       .L8018E5F0_ovl3
    /* EEFF0 8018E5B0 00000000 */   nop
    /* EEFF4 8018E5B4 44803000 */  mtc1       $zero, $f6
    /* EEFF8 8018E5B8 00E35821 */  addu       $t3, $a3, $v1
    /* EEFFC 8018E5BC 3C018019 */  lui        $at, %hi(D_80197B6C_ovl3)
    /* EF000 8018E5C0 E5660000 */  swc1       $f6, 0x0($t3)
    /* EF004 8018E5C4 8C430000 */  lw         $v1, 0x0($v0)
    /* EF008 8018E5C8 00031880 */  sll        $v1, $v1, 2
    /* EF00C 8018E5CC 00E36021 */  addu       $t4, $a3, $v1
    /* EF010 8018E5D0 C5880000 */  lwc1       $f8, 0x0($t4)
    /* EF014 8018E5D4 00A36821 */  addu       $t5, $a1, $v1
    /* EF018 8018E5D8 E5A80000 */  swc1       $f8, 0x0($t5)
    /* EF01C 8018E5DC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* EF020 8018E5E0 C42A7B6C */  lwc1       $f10, %lo(D_80197B6C_ovl3)($at)
    /* EF024 8018E5E4 000E7880 */  sll        $t7, $t6, 2
    /* EF028 8018E5E8 010FC021 */  addu       $t8, $t0, $t7
    /* EF02C 8018E5EC E70A0000 */  swc1       $f10, 0x0($t8)
  .L8018E5F0_ovl3:
    /* EF030 8018E5F0 0C048BDB */  jal        set_kirby_action_1
    /* EF034 8018E5F4 24050006 */   addiu     $a1, $zero, 0x6
    /* EF038 8018E5F8 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8018E5FC_ovl3:
    /* EF03C 8018E5FC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* EF040 8018E600 03E00008 */  jr         $ra
    /* EF044 8018E604 00000000 */   nop
endlabel func_8018E3B0_ovl3
.size func_8018E3B0_ovl3, . - func_8018E3B0_ovl3
