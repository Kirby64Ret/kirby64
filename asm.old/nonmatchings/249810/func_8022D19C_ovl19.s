glabel func_8022D19C_ovl19
/* 24D8AC 8022D19C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24D8B0 8022D1A0 AFB10018 */  sw         $s1, 0x18($sp)
/* 24D8B4 8022D1A4 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 24D8B8 8022D1A8 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 24D8BC 8022D1AC 8E230000 */  lw         $v1, 0x0($s1)
/* 24D8C0 8022D1B0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 24D8C4 8022D1B4 AFB00014 */  sw         $s0, 0x14($sp)
/* 24D8C8 8022D1B8 AFA40020 */  sw         $a0, 0x20($sp)
/* 24D8CC 8022D1BC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 24D8D0 8022D1C0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 24D8D4 8022D1C4 2404000F */  addiu      $a0, $zero, 0xF
/* 24D8D8 8022D1C8 000E7880 */  sll        $t7, $t6, 2
/* 24D8DC 8022D1CC 002F0821 */  addu       $at, $at, $t7
/* 24D8E0 8022D1D0 AC24DFD0 */  sw         $a0, %lo(D_800DDFD0)($at)
/* 24D8E4 8022D1D4 8C780000 */  lw         $t8, 0x0($v1)
/* 24D8E8 8022D1D8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 24D8EC 8022D1DC 44812000 */  mtc1       $at, $f4
/* 24D8F0 8022D1E0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 24D8F4 8022D1E4 0018C880 */  sll        $t9, $t8, 2
/* 24D8F8 8022D1E8 00390821 */  addu       $at, $at, $t9
/* 24D8FC 8022D1EC C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 24D900 8022D1F0 3C058013 */  lui        $a1, %hi(gKirbyState)
/* 24D904 8022D1F4 3C0C800E */  lui        $t4, %hi(D_800E3210)
/* 24D908 8022D1F8 46062032 */  c.eq.s     $f4, $f6
/* 24D90C 8022D1FC 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
/* 24D910 8022D200 258C3210 */  addiu      $t4, $t4, %lo(D_800E3210)
/* 24D914 8022D204 45000006 */  bc1f       .L8022D220_ovl19
/* 24D918 8022D208 00000000 */   nop
/* 24D91C 8022D20C 8CA20034 */  lw         $v0, 0x34($a1)
/* 24D920 8022D210 30480001 */  andi       $t0, $v0, 0x1
/* 24D924 8022D214 15000002 */  bnez       $t0, .L8022D220_ovl19
/* 24D928 8022D218 34490001 */   ori       $t1, $v0, 0x1
/* 24D92C 8022D21C ACA90034 */  sw         $t1, 0x34($a1)
.L8022D220_ovl19:
/* 24D930 8022D220 3C058013 */  lui        $a1, %hi(gKirbyState)
/* 24D934 8022D224 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
/* 24D938 8022D228 ACA4002C */  sw         $a0, 0x2C($a1)
/* 24D93C 8022D22C 8C620000 */  lw         $v0, 0x0($v1)
/* 24D940 8022D230 3C10800F */  lui        $s0, %hi(D_800E8920)
/* 24D944 8022D234 26108920 */  addiu      $s0, $s0, %lo(D_800E8920)
/* 24D948 8022D238 00021080 */  sll        $v0, $v0, 2
/* 24D94C 8022D23C 02025021 */  addu       $t2, $s0, $v0
/* 24D950 8022D240 8D4B0000 */  lw         $t3, 0x0($t2)
/* 24D954 8022D244 004C3821 */  addu       $a3, $v0, $t4
/* 24D958 8022D248 55600049 */  bnel       $t3, $zero, .L8022D370_ovl19
/* 24D95C 8022D24C 3C040002 */   lui       $a0, (0x2039A >> 16)
/* 24D960 8022D250 44804000 */  mtc1       $zero, $f8
/* 24D964 8022D254 C4EA0000 */  lwc1       $f10, 0x0($a3)
/* 24D968 8022D258 3C040002 */  lui        $a0, (0x2037C >> 16)
/* 24D96C 8022D25C 3C050002 */  lui        $a1, (0x2037D >> 16)
/* 24D970 8022D260 460A403C */  c.lt.s     $f8, $f10
/* 24D974 8022D264 34A5037D */  ori        $a1, $a1, (0x2037D & 0xFFFF)
/* 24D978 8022D268 3484037C */  ori        $a0, $a0, (0x2037C & 0xFFFF)
/* 24D97C 8022D26C 45020009 */  bc1fl      .L8022D294_ovl19
/* 24D980 8022D270 44809000 */   mtc1      $zero, $f18
/* 24D984 8022D274 44808000 */  mtc1       $zero, $f16
/* 24D988 8022D278 00003025 */  or         $a2, $zero, $zero
/* 24D98C 8022D27C 0C048C3A */  jal        func_801230E8
/* 24D990 8022D280 E4F00000 */   swc1      $f16, 0x0($a3)
/* 24D994 8022D284 8E230000 */  lw         $v1, 0x0($s1)
/* 24D998 8022D288 8C620000 */  lw         $v0, 0x0($v1)
/* 24D99C 8022D28C 00021080 */  sll        $v0, $v0, 2
/* 24D9A0 8022D290 44809000 */  mtc1       $zero, $f18
.L8022D294_ovl19:
/* 24D9A4 8022D294 3C04800E */  lui        $a0, %hi(D_800E6690)
/* 24D9A8 8022D298 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* 24D9AC 8022D29C 00826821 */  addu       $t5, $a0, $v0
/* 24D9B0 8022D2A0 E5B20000 */  swc1       $f18, 0x0($t5)
/* 24D9B4 8022D2A4 8C620000 */  lw         $v0, 0x0($v1)
/* 24D9B8 8022D2A8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24D9BC 8022D2AC 00021080 */  sll        $v0, $v0, 2
/* 24D9C0 8022D2B0 00827021 */  addu       $t6, $a0, $v0
/* 24D9C4 8022D2B4 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 24D9C8 8022D2B8 00220821 */  addu       $at, $at, $v0
/* 24D9CC 8022D2BC E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 24D9D0 8022D2C0 8C6F0000 */  lw         $t7, 0x0($v1)
/* 24D9D4 8022D2C4 3C018023 */  lui        $at, %hi(D_8022FA38_ovl19)
/* 24D9D8 8022D2C8 C426FA38 */  lwc1       $f6, %lo(D_8022FA38_ovl19)($at)
/* 24D9DC 8022D2CC 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24D9E0 8022D2D0 000FC080 */  sll        $t8, $t7, 2
/* 24D9E4 8022D2D4 00380821 */  addu       $at, $at, $t8
/* 24D9E8 8022D2D8 E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
/* 24D9EC 8022D2DC 8C620000 */  lw         $v0, 0x0($v1)
/* 24D9F0 8022D2E0 00021080 */  sll        $v0, $v0, 2
/* 24D9F4 8022D2E4 0202C821 */  addu       $t9, $s0, $v0
/* 24D9F8 8022D2E8 8F280000 */  lw         $t0, 0x0($t9)
/* 24D9FC 8022D2EC 5500000B */  bnel       $t0, $zero, .L8022D31C_ovl19
/* 24DA00 8022D2F0 44804000 */   mtc1      $zero, $f8
.L8022D2F4_ovl19:
/* 24DA04 8022D2F4 0C002DAF */  jal        finish_current_thread
/* 24DA08 8022D2F8 24040001 */   addiu     $a0, $zero, 0x1
/* 24DA0C 8022D2FC 8E230000 */  lw         $v1, 0x0($s1)
/* 24DA10 8022D300 8C620000 */  lw         $v0, 0x0($v1)
/* 24DA14 8022D304 00021080 */  sll        $v0, $v0, 2
/* 24DA18 8022D308 02024821 */  addu       $t1, $s0, $v0
/* 24DA1C 8022D30C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 24DA20 8022D310 1140FFF8 */  beqz       $t2, .L8022D2F4_ovl19
/* 24DA24 8022D314 00000000 */   nop
/* 24DA28 8022D318 44804000 */  mtc1       $zero, $f8
.L8022D31C_ovl19:
/* 24DA2C 8022D31C 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 24DA30 8022D320 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 24DA34 8022D324 00A25821 */  addu       $t3, $a1, $v0
/* 24DA38 8022D328 E5680000 */  swc1       $f8, 0x0($t3)
/* 24DA3C 8022D32C 8C620000 */  lw         $v0, 0x0($v1)
/* 24DA40 8022D330 3C01800E */  lui        $at, %hi(D_800E3210)
/* 24DA44 8022D334 2404004C */  addiu      $a0, $zero, 0x4C
/* 24DA48 8022D338 00021080 */  sll        $v0, $v0, 2
/* 24DA4C 8022D33C 00A26021 */  addu       $t4, $a1, $v0
/* 24DA50 8022D340 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 24DA54 8022D344 00220821 */  addu       $at, $at, $v0
/* 24DA58 8022D348 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 24DA5C 8022D34C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 24DA60 8022D350 3C018023 */  lui        $at, %hi(D_8022FA3C_ovl19)
/* 24DA64 8022D354 C430FA3C */  lwc1       $f16, %lo(D_8022FA3C_ovl19)($at)
/* 24DA68 8022D358 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 24DA6C 8022D35C 000D7080 */  sll        $t6, $t5, 2
/* 24DA70 8022D360 002E0821 */  addu       $at, $at, $t6
/* 24DA74 8022D364 0C029D9E */  jal        play_sound
/* 24DA78 8022D368 E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
/* 24DA7C 8022D36C 3C040002 */  lui        $a0, (0x2039A >> 16)
.L8022D370_ovl19:
/* 24DA80 8022D370 3C050002 */  lui        $a1, (0x2039B >> 16)
/* 24DA84 8022D374 34A5039B */  ori        $a1, $a1, (0x2039B & 0xFFFF)
/* 24DA88 8022D378 3484039A */  ori        $a0, $a0, (0x2039A & 0xFFFF)
/* 24DA8C 8022D37C 0C048C3A */  jal        func_801230E8
/* 24DA90 8022D380 00003025 */   or        $a2, $zero, $zero
/* 24DA94 8022D384 0C02BE85 */  jal        func_800AFA14
/* 24DA98 8022D388 00000000 */   nop
/* 24DA9C 8022D38C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 24DAA0 8022D390 8FB00014 */  lw         $s0, 0x14($sp)
/* 24DAA4 8022D394 8FB10018 */  lw         $s1, 0x18($sp)
/* 24DAA8 8022D398 03E00008 */  jr         $ra
/* 24DAAC 8022D39C 27BD0020 */   addiu     $sp, $sp, 0x20
