glabel func_801226FC_ovl2
/* 0AB16C 801226FC 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0AB170 80122700 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0AB174 80122704 910E0015 */  lbu   $t6, 0x15($t0)
/* 0AB178 80122708 27BDFF68 */  addiu $sp, $sp, -0x98
/* 0AB17C 8012270C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AB180 80122710 55C000AB */  bnezl $t6, .L801229C0_ovl2
/* 0AB184 80122714 00001025 */   move  $v0, $zero
/* 0AB188 80122718 910F0004 */  lbu   $t7, 4($t0)
/* 0AB18C 8012271C 55E000A8 */  bnezl $t7, .L801229C0_ovl2
/* 0AB190 80122720 00001025 */   move  $v0, $zero
/* 0AB194 80122724 8D180034 */  lw    $t8, 0x34($t0)
/* 0AB198 80122728 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 0AB19C 8012272C 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 0AB1A0 80122730 33190005 */  andi  $t9, $t8, 5
/* 0AB1A4 80122734 172000A1 */  bnez  $t9, .L801229BC_ovl2
/* 0AB1A8 80122738 00001825 */   move  $v1, $zero
/* 0AB1AC 8012273C 27A9003C */  addiu $t1, $sp, 0x3c
/* 0AB1B0 80122740 00A06025 */  move  $t4, $a1
/* 0AB1B4 80122744 24AD0054 */  addiu $t5, $a1, 0x54
.L80122748_ovl2:
/* 0AB1B8 80122748 8D8B0000 */  lw    $t3, ($t4)
/* 0AB1BC 8012274C 258C000C */  addiu $t4, $t4, 0xc
/* 0AB1C0 80122750 2529000C */  addiu $t1, $t1, 0xc
/* 0AB1C4 80122754 AD2BFFF4 */  sw    $t3, -0xc($t1)
/* 0AB1C8 80122758 8D8AFFF8 */  lw    $t2, -8($t4)
/* 0AB1CC 8012275C AD2AFFF8 */  sw    $t2, -8($t1)
/* 0AB1D0 80122760 8D8BFFFC */  lw    $t3, -4($t4)
/* 0AB1D4 80122764 158DFFF8 */  bne   $t4, $t5, .L80122748_ovl2
/* 0AB1D8 80122768 AD2BFFFC */   sw    $t3, -4($t1)
/* 0AB1DC 8012276C 8D8B0000 */  lw    $t3, ($t4)
/* 0AB1E0 80122770 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0AB1E4 80122774 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0AB1E8 80122778 AD2B0000 */  sw    $t3, ($t1)
/* 0AB1EC 8012277C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0AB1F0 80122780 8DCF0000 */  lw    $t7, ($t6)
/* 0AB1F4 80122784 000FC080 */  sll   $t8, $t7, 2
/* 0AB1F8 80122788 00380821 */  addu  $at, $at, $t8
/* 0AB1FC 8012278C C4206A10 */  lwc1  $f0, 0x6a10($at)
/* 0AB200 80122790 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0AB204 80122794 44812000 */  mtc1  $at, $f4
/* 0AB208 80122798 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0AB20C 8012279C 46002032 */  c.eq.s $f4, $f0
/* 0AB210 801227A0 00000000 */  nop   
/* 0AB214 801227A4 45020005 */  bc1fl .L801227BC_ovl2
/* 0AB218 801227A8 44813000 */   mtc1  $at, $f6
/* 0AB21C 801227AC 8D1900EC */  lw    $t9, 0xec($t0)
/* 0AB220 801227B0 17200009 */  bnez  $t9, .L801227D8_ovl2
/* 0AB224 801227B4 00000000 */   nop   
/* 0AB228 801227B8 44813000 */  mtc1  $at, $f6
.L801227BC_ovl2:
/* 0AB22C 801227BC 00000000 */  nop   
/* 0AB230 801227C0 46003032 */  c.eq.s $f6, $f0
/* 0AB234 801227C4 00000000 */  nop   
/* 0AB238 801227C8 45020016 */  bc1fl .L80122824_ovl2
/* 0AB23C 801227CC 27AA003C */   addiu $t2, $sp, 0x3c
/* 0AB240 801227D0 8D0D00F0 */  lw    $t5, 0xf0($t0)
/* 0AB244 801227D4 11A00012 */  beqz  $t5, .L80122820_ovl2
.L801227D8_ovl2:
/* 0AB248 801227D8 3C048013 */   lui   $a0, %hi(D_8012E968) # $a0, 0x8013
/* 0AB24C 801227DC 2484E968 */  addiu $a0, %lo(D_8012E968) # addiu $a0, $a0, -0x1698
/* 0AB250 801227E0 0C0432AF */  jal   func_8010CABC_ovl2
/* 0AB254 801227E4 AFA30094 */   sw    $v1, 0x94($sp)
/* 0AB258 801227E8 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 0AB25C 801227EC 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 0AB260 801227F0 1040000B */  beqz  $v0, .L80122820_ovl2
/* 0AB264 801227F4 8FA30094 */   lw    $v1, 0x94($sp)
/* 0AB268 801227F8 8CA20000 */  lw    $v0, ($a1)
/* 0AB26C 801227FC 24010007 */  li    $at, 7
/* 0AB270 80122800 000214C2 */  srl   $v0, $v0, 0x13
/* 0AB274 80122804 304C0007 */  andi  $t4, $v0, 7
/* 0AB278 80122808 11810004 */  beq   $t4, $at, .L8012281C_ovl2
/* 0AB27C 8012280C 30490038 */   andi  $t1, $v0, 0x38
/* 0AB280 80122810 24010038 */  li    $at, 56
/* 0AB284 80122814 55210003 */  bnel  $t1, $at, .L80122824_ovl2
/* 0AB288 80122818 27AA003C */   addiu $t2, $sp, 0x3c
.L8012281C_ovl2:
/* 0AB28C 8012281C 24030001 */  li    $v1, 1
.L80122820_ovl2:
/* 0AB290 80122820 27AA003C */  addiu $t2, $sp, 0x3c
.L80122824_ovl2:
/* 0AB294 80122824 25580054 */  addiu $t8, $t2, 0x54
/* 0AB298 80122828 00A07825 */  move  $t7, $a1
.L8012282C_ovl2:
/* 0AB29C 8012282C 8D4E0000 */  lw    $t6, ($t2)
/* 0AB2A0 80122830 254A000C */  addiu $t2, $t2, 0xc
/* 0AB2A4 80122834 25EF000C */  addiu $t7, $t7, 0xc
/* 0AB2A8 80122838 ADEEFFF4 */  sw    $t6, -0xc($t7)
/* 0AB2AC 8012283C 8D4BFFF8 */  lw    $t3, -8($t2)
/* 0AB2B0 80122840 ADEBFFF8 */  sw    $t3, -8($t7)
/* 0AB2B4 80122844 8D4EFFFC */  lw    $t6, -4($t2)
/* 0AB2B8 80122848 1558FFF8 */  bne   $t2, $t8, .L8012282C_ovl2
/* 0AB2BC 8012284C ADEEFFFC */   sw    $t6, -4($t7)
/* 0AB2C0 80122850 8D4E0000 */  lw    $t6, ($t2)
/* 0AB2C4 80122854 3C198013 */  lui   $t9, %hi(D_80129114) # $t9, 0x8013
/* 0AB2C8 80122858 10600058 */  beqz  $v1, .L801229BC_ovl2
/* 0AB2CC 8012285C ADEE0000 */   sw    $t6, ($t7)
/* 0AB2D0 80122860 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0AB2D4 80122864 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0AB2D8 80122868 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0AB2DC 8012286C 44814000 */  mtc1  $at, $f8
/* 0AB2E0 80122870 8C620000 */  lw    $v0, ($v1)
/* 0AB2E4 80122874 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0AB2E8 80122878 3C0C800E */  lui   $t4, 0x800e
/* 0AB2EC 8012287C 00021080 */  sll   $v0, $v0, 2
/* 0AB2F0 80122880 00220821 */  addu  $at, $at, $v0
/* 0AB2F4 80122884 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 0AB2F8 80122888 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 0AB2FC 8012288C 460A4032 */  c.eq.s $f8, $f10
/* 0AB300 80122890 00000000 */  nop   
/* 0AB304 80122894 45020006 */  bc1fl .L801228B0_ovl2
/* 0AB308 80122898 44810000 */   mtc1  $at, $f0
/* 0AB30C 8012289C 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 0AB310 801228A0 44810000 */  mtc1  $at, $f0
/* 0AB314 801228A4 10000003 */  b     .L801228B4_ovl2
/* 0AB318 801228A8 00000000 */   nop   
/* 0AB31C 801228AC 44810000 */  mtc1  $at, $f0
.L801228B0_ovl2:
/* 0AB320 801228B0 00000000 */  nop   
.L801228B4_ovl2:
/* 0AB324 801228B4 8F399114 */  lw    $t9, %lo(D_80129114)($t9)
/* 0AB328 801228B8 01826021 */  addu  $t4, $t4, $v0
/* 0AB32C 801228BC 8D8C5F90 */  lw    $t4, 0x5f90($t4)
/* 0AB330 801228C0 8F2D0004 */  lw    $t5, 4($t9)
/* 0AB334 801228C4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0AB338 801228C8 000C4900 */  sll   $t1, $t4, 4
/* 0AB33C 801228CC 01A9C021 */  addu  $t8, $t5, $t1
/* 0AB340 801228D0 8F070004 */  lw    $a3, 4($t8)
/* 0AB344 801228D4 44818000 */  mtc1  $at, $f16
/* 0AB348 801228D8 3C0A800E */  lui   $t2, %hi(D_800E6BD0) # $t2, 0x800e
/* 0AB34C 801228DC C4F2000C */  lwc1  $f18, 0xc($a3)
/* 0AB350 801228E0 254A6BD0 */  addiu $t2, %lo(D_800E6BD0) # addiu $t2, $t2, 0x6bd0
/* 0AB354 801228E4 004A2821 */  addu  $a1, $v0, $t2
/* 0AB358 801228E8 46128103 */  div.s $f4, $f16, $f18
/* 0AB35C 801228EC C4A80000 */  lwc1  $f8, ($a1)
/* 0AB360 801228F0 46002182 */  mul.s $f6, $f4, $f0
/* 0AB364 801228F4 46064280 */  add.s $f10, $f8, $f6
/* 0AB368 801228F8 E4AA0000 */  swc1  $f10, ($a1)
/* 0AB36C 801228FC 0C03E15C */  jal   func_800F8570_ovl2
/* 0AB370 80122900 8C640000 */   lw    $a0, ($v1)
/* 0AB374 80122904 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0AB378 80122908 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0AB37C 8012290C 3C0B8013 */  lui   $t3, %hi(D_80129114) # $t3, 0x8013
/* 0AB380 80122910 8D6B9114 */  lw    $t3, %lo(D_80129114)($t3)
/* 0AB384 80122914 8DE20000 */  lw    $v0, ($t7)
/* 0AB388 80122918 3C19800E */  lui   $t9, 0x800e
/* 0AB38C 8012291C 8D6E0004 */  lw    $t6, 4($t3)
/* 0AB390 80122920 00021080 */  sll   $v0, $v0, 2
/* 0AB394 80122924 0322C821 */  addu  $t9, $t9, $v0
/* 0AB398 80122928 8F395F90 */  lw    $t9, 0x5f90($t9)
/* 0AB39C 8012292C 3C06800E */  lui   $a2, 0x800e
/* 0AB3A0 80122930 00C23021 */  addu  $a2, $a2, $v0
/* 0AB3A4 80122934 00196100 */  sll   $t4, $t9, 4
/* 0AB3A8 80122938 01CC6821 */  addu  $t5, $t6, $t4
/* 0AB3AC 8012293C 8DA50004 */  lw    $a1, 4($t5)
/* 0AB3B0 80122940 8CC66BD0 */  lw    $a2, 0x6bd0($a2)
/* 0AB3B4 80122944 0C0078C0 */  jal   func_8001E300_ovl2
/* 0AB3B8 80122948 27A4002C */   addiu $a0, $sp, 0x2c
/* 0AB3BC 8012294C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0AB3C0 80122950 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0AB3C4 80122954 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 0AB3C8 80122958 3C01800E */  lui   $at, 0x800e
/* 0AB3CC 8012295C 8C690000 */  lw    $t1, ($v1)
/* 0AB3D0 80122960 C7B20034 */  lwc1  $f18, 0x34($sp)
/* 0AB3D4 80122964 44802000 */  mtc1  $zero, $f4
/* 0AB3D8 80122968 0009C080 */  sll   $t8, $t1, 2
/* 0AB3DC 8012296C 00380821 */  addu  $at, $at, $t8
/* 0AB3E0 80122970 E43025D0 */  swc1  $f16, 0x25d0($at)
/* 0AB3E4 80122974 8C6A0000 */  lw    $t2, ($v1)
/* 0AB3E8 80122978 3C01800E */  lui   $at, 0x800e
/* 0AB3EC 8012297C 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0AB3F0 80122980 000A7880 */  sll   $t7, $t2, 2
/* 0AB3F4 80122984 002F0821 */  addu  $at, $at, $t7
/* 0AB3F8 80122988 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0AB3FC 8012298C E4322950 */  swc1  $f18, 0x2950($at)
/* 0AB400 80122990 E5040168 */  swc1  $f4, 0x168($t0)
/* 0AB404 80122994 C5080168 */  lwc1  $f8, 0x168($t0)
/* 0AB408 80122998 AD000030 */  sw    $zero, 0x30($t0)
/* 0AB40C 8012299C 2404000E */  li    $a0, 14
/* 0AB410 801229A0 2405000B */  li    $a1, 11
/* 0AB414 801229A4 0C048BDB */  jal   func_80122F6C_ovl2
/* 0AB418 801229A8 E5080164 */   swc1  $f8, 0x164($t0)
/* 0AB41C 801229AC 0C048A74 */  jal   func_801229D0_ovl2
/* 0AB420 801229B0 00000000 */   nop   
/* 0AB424 801229B4 10000002 */  b     .L801229C0_ovl2
/* 0AB428 801229B8 24020001 */   li    $v0, 1
.L801229BC_ovl2:
/* 0AB42C 801229BC 00001025 */  move  $v0, $zero
.L801229C0_ovl2:
/* 0AB430 801229C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AB434 801229C4 27BD0098 */  addiu $sp, $sp, 0x98
/* 0AB438 801229C8 03E00008 */  jr    $ra
/* 0AB43C 801229CC 00000000 */   nop   
