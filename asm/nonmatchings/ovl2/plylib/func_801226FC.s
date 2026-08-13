nonmatching func_801226FC, 0x2D4

glabel func_801226FC
    /* AB16C 801226FC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* AB170 80122700 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* AB174 80122704 910E0015 */  lbu        $t6, 0x15($t0)
    /* AB178 80122708 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* AB17C 8012270C AFBF0014 */  sw         $ra, 0x14($sp)
    /* AB180 80122710 55C000AB */  bnel       $t6, $zero, .L801229C0
    /* AB184 80122714 00001025 */   or        $v0, $zero, $zero
    /* AB188 80122718 910F0004 */  lbu        $t7, 0x4($t0)
    /* AB18C 8012271C 55E000A8 */  bnel       $t7, $zero, .L801229C0
    /* AB190 80122720 00001025 */   or        $v0, $zero, $zero
    /* AB194 80122724 8D180034 */  lw         $t8, 0x34($t0)
    /* AB198 80122728 3C058013 */  lui        $a1, %hi(D_8012BCA0)
    /* AB19C 8012272C 24A5BCA0 */  addiu      $a1, $a1, %lo(D_8012BCA0)
    /* AB1A0 80122730 33190005 */  andi       $t9, $t8, 0x5
    /* AB1A4 80122734 172000A1 */  bnez       $t9, .L801229BC
    /* AB1A8 80122738 00001825 */   or        $v1, $zero, $zero
    /* AB1AC 8012273C 27A9003C */  addiu      $t1, $sp, 0x3C
    /* AB1B0 80122740 00A06025 */  or         $t4, $a1, $zero
    /* AB1B4 80122744 24AD0054 */  addiu      $t5, $a1, 0x54
  .L80122748:
    /* AB1B8 80122748 8D8B0000 */  lw         $t3, 0x0($t4)
    /* AB1BC 8012274C 258C000C */  addiu      $t4, $t4, 0xC
    /* AB1C0 80122750 2529000C */  addiu      $t1, $t1, 0xC
    /* AB1C4 80122754 AD2BFFF4 */  sw         $t3, -0xC($t1)
    /* AB1C8 80122758 8D8AFFF8 */  lw         $t2, -0x8($t4)
    /* AB1CC 8012275C AD2AFFF8 */  sw         $t2, -0x8($t1)
    /* AB1D0 80122760 8D8BFFFC */  lw         $t3, -0x4($t4)
    /* AB1D4 80122764 158DFFF8 */  bne        $t4, $t5, .L80122748
    /* AB1D8 80122768 AD2BFFFC */   sw        $t3, -0x4($t1)
    /* AB1DC 8012276C 8D8B0000 */  lw         $t3, 0x0($t4)
    /* AB1E0 80122770 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* AB1E4 80122774 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* AB1E8 80122778 AD2B0000 */  sw         $t3, 0x0($t1)
    /* AB1EC 8012277C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* AB1F0 80122780 8DCF0000 */  lw         $t7, 0x0($t6)
    /* AB1F4 80122784 000FC080 */  sll        $t8, $t7, 2
    /* AB1F8 80122788 00380821 */  addu       $at, $at, $t8
    /* AB1FC 8012278C C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
    /* AB200 80122790 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AB204 80122794 44812000 */  mtc1       $at, $f4
    /* AB208 80122798 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* AB20C 8012279C 46002032 */  c.eq.s     $f4, $f0
    /* AB210 801227A0 00000000 */  nop
    /* AB214 801227A4 45020005 */  bc1fl      .L801227BC
    /* AB218 801227A8 44813000 */   mtc1      $at, $f6
    /* AB21C 801227AC 8D1900EC */  lw         $t9, 0xEC($t0)
    /* AB220 801227B0 17200009 */  bnez       $t9, .L801227D8
    /* AB224 801227B4 00000000 */   nop
    /* AB228 801227B8 44813000 */  mtc1       $at, $f6
  .L801227BC:
    /* AB22C 801227BC 00000000 */  nop
    /* AB230 801227C0 46003032 */  c.eq.s     $f6, $f0
    /* AB234 801227C4 00000000 */  nop
    /* AB238 801227C8 45020016 */  bc1fl      .L80122824
    /* AB23C 801227CC 27AA003C */   addiu     $t2, $sp, 0x3C
    /* AB240 801227D0 8D0D00F0 */  lw         $t5, 0xF0($t0)
    /* AB244 801227D4 11A00012 */  beqz       $t5, .L80122820
  .L801227D8:
    /* AB248 801227D8 3C048013 */   lui       $a0, %hi(gPositionState)
    /* AB24C 801227DC 2484E968 */  addiu      $a0, $a0, %lo(gPositionState)
    /* AB250 801227E0 0C0432AF */  jal        func_8010CABC
    /* AB254 801227E4 AFA30094 */   sw        $v1, 0x94($sp)
    /* AB258 801227E8 3C058013 */  lui        $a1, %hi(D_8012BCA0)
    /* AB25C 801227EC 24A5BCA0 */  addiu      $a1, $a1, %lo(D_8012BCA0)
    /* AB260 801227F0 1040000B */  beqz       $v0, .L80122820
    /* AB264 801227F4 8FA30094 */   lw        $v1, 0x94($sp)
    /* AB268 801227F8 8CA20000 */  lw         $v0, 0x0($a1)
    /* AB26C 801227FC 24010007 */  addiu      $at, $zero, 0x7
    /* AB270 80122800 000214C2 */  srl        $v0, $v0, 19
    /* AB274 80122804 304C0007 */  andi       $t4, $v0, 0x7
    /* AB278 80122808 11810004 */  beq        $t4, $at, .L8012281C
    /* AB27C 8012280C 30490038 */   andi      $t1, $v0, 0x38
    /* AB280 80122810 24010038 */  addiu      $at, $zero, 0x38
    /* AB284 80122814 55210003 */  bnel       $t1, $at, .L80122824
    /* AB288 80122818 27AA003C */   addiu     $t2, $sp, 0x3C
  .L8012281C:
    /* AB28C 8012281C 24030001 */  addiu      $v1, $zero, 0x1
  .L80122820:
    /* AB290 80122820 27AA003C */  addiu      $t2, $sp, 0x3C
  .L80122824:
    /* AB294 80122824 25580054 */  addiu      $t8, $t2, 0x54
    /* AB298 80122828 00A07825 */  or         $t7, $a1, $zero
  .L8012282C:
    /* AB29C 8012282C 8D4E0000 */  lw         $t6, 0x0($t2)
    /* AB2A0 80122830 254A000C */  addiu      $t2, $t2, 0xC
    /* AB2A4 80122834 25EF000C */  addiu      $t7, $t7, 0xC
    /* AB2A8 80122838 ADEEFFF4 */  sw         $t6, -0xC($t7)
    /* AB2AC 8012283C 8D4BFFF8 */  lw         $t3, -0x8($t2)
    /* AB2B0 80122840 ADEBFFF8 */  sw         $t3, -0x8($t7)
    /* AB2B4 80122844 8D4EFFFC */  lw         $t6, -0x4($t2)
    /* AB2B8 80122848 1558FFF8 */  bne        $t2, $t8, .L8012282C
    /* AB2BC 8012284C ADEEFFFC */   sw        $t6, -0x4($t7)
    /* AB2C0 80122850 8D4E0000 */  lw         $t6, 0x0($t2)
    /* AB2C4 80122854 3C198013 */  lui        $t9, %hi(D_80129114)
    /* AB2C8 80122858 10600058 */  beqz       $v1, .L801229BC
    /* AB2CC 8012285C ADEE0000 */   sw        $t6, 0x0($t7)
    /* AB2D0 80122860 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* AB2D4 80122864 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* AB2D8 80122868 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AB2DC 8012286C 44814000 */  mtc1       $at, $f8
    /* AB2E0 80122870 8C620000 */  lw         $v0, 0x0($v1)
    /* AB2E4 80122874 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* AB2E8 80122878 3C0C800E */  lui        $t4, %hi(D_800E5F90)
    /* AB2EC 8012287C 00021080 */  sll        $v0, $v0, 2
    /* AB2F0 80122880 00220821 */  addu       $at, $at, $v0
    /* AB2F4 80122884 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
    /* AB2F8 80122888 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* AB2FC 8012288C 460A4032 */  c.eq.s     $f8, $f10
    /* AB300 80122890 00000000 */  nop
    /* AB304 80122894 45020006 */  bc1fl      .L801228B0
    /* AB308 80122898 44810000 */   mtc1      $at, $f0
    /* AB30C 8012289C 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
    /* AB310 801228A0 44810000 */  mtc1       $at, $f0
    /* AB314 801228A4 10000003 */  b          .L801228B4
    /* AB318 801228A8 00000000 */   nop
    /* AB31C 801228AC 44810000 */  mtc1       $at, $f0
  .L801228B0:
    /* AB320 801228B0 00000000 */  nop
  .L801228B4:
    /* AB324 801228B4 8F399114 */  lw         $t9, %lo(D_80129114)($t9)
    /* AB328 801228B8 01826021 */  addu       $t4, $t4, $v0
    /* AB32C 801228BC 8D8C5F90 */  lw         $t4, %lo(D_800E5F90)($t4)
    /* AB330 801228C0 8F2D0004 */  lw         $t5, 0x4($t9)
    /* AB334 801228C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AB338 801228C8 000C4900 */  sll        $t1, $t4, 4
    /* AB33C 801228CC 01A9C021 */  addu       $t8, $t5, $t1
    /* AB340 801228D0 8F070004 */  lw         $a3, 0x4($t8)
    /* AB344 801228D4 44818000 */  mtc1       $at, $f16
    /* AB348 801228D8 3C0A800E */  lui        $t2, %hi(D_800E6BD0)
    /* AB34C 801228DC C4F2000C */  lwc1       $f18, 0xC($a3)
    /* AB350 801228E0 254A6BD0 */  addiu      $t2, $t2, %lo(D_800E6BD0)
    /* AB354 801228E4 004A2821 */  addu       $a1, $v0, $t2
    /* AB358 801228E8 46128103 */  div.s      $f4, $f16, $f18
    /* AB35C 801228EC C4A80000 */  lwc1       $f8, 0x0($a1)
    /* AB360 801228F0 46002182 */  mul.s      $f6, $f4, $f0
    /* AB364 801228F4 46064280 */  add.s      $f10, $f8, $f6
    /* AB368 801228F8 E4AA0000 */  swc1       $f10, 0x0($a1)
    /* AB36C 801228FC 0C03E15C */  jal        func_800F8570
    /* AB370 80122900 8C640000 */   lw        $a0, 0x0($v1)
    /* AB374 80122904 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* AB378 80122908 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* AB37C 8012290C 3C0B8013 */  lui        $t3, %hi(D_80129114)
    /* AB380 80122910 8D6B9114 */  lw         $t3, %lo(D_80129114)($t3)
    /* AB384 80122914 8DE20000 */  lw         $v0, 0x0($t7)
    /* AB388 80122918 3C19800E */  lui        $t9, %hi(D_800E5F90)
    /* AB38C 8012291C 8D6E0004 */  lw         $t6, 0x4($t3)
    /* AB390 80122920 00021080 */  sll        $v0, $v0, 2
    /* AB394 80122924 0322C821 */  addu       $t9, $t9, $v0
    /* AB398 80122928 8F395F90 */  lw         $t9, %lo(D_800E5F90)($t9)
    /* AB39C 8012292C 3C06800E */  lui        $a2, %hi(D_800E6BD0)
    /* AB3A0 80122930 00C23021 */  addu       $a2, $a2, $v0
    /* AB3A4 80122934 00196100 */  sll        $t4, $t9, 4
    /* AB3A8 80122938 01CC6821 */  addu       $t5, $t6, $t4
    /* AB3AC 8012293C 8DA50004 */  lw         $a1, 0x4($t5)
    /* AB3B0 80122940 8CC66BD0 */  lw         $a2, %lo(D_800E6BD0)($a2)
    /* AB3B4 80122944 0C0078C0 */  jal        mtxGetInterpolatedPosition
    /* AB3B8 80122948 27A4002C */   addiu     $a0, $sp, 0x2C
    /* AB3BC 8012294C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* AB3C0 80122950 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* AB3C4 80122954 C7B0002C */  lwc1       $f16, 0x2C($sp)
    /* AB3C8 80122958 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* AB3CC 8012295C 8C690000 */  lw         $t1, 0x0($v1)
    /* AB3D0 80122960 C7B20034 */  lwc1       $f18, 0x34($sp)
    /* AB3D4 80122964 44802000 */  mtc1       $zero, $f4
    /* AB3D8 80122968 0009C080 */  sll        $t8, $t1, 2
    /* AB3DC 8012296C 00380821 */  addu       $at, $at, $t8
    /* AB3E0 80122970 E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* AB3E4 80122974 8C6A0000 */  lw         $t2, 0x0($v1)
    /* AB3E8 80122978 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* AB3EC 8012297C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* AB3F0 80122980 000A7880 */  sll        $t7, $t2, 2
    /* AB3F4 80122984 002F0821 */  addu       $at, $at, $t7
    /* AB3F8 80122988 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* AB3FC 8012298C E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* AB400 80122990 E5040168 */  swc1       $f4, 0x168($t0)
    /* AB404 80122994 C5080168 */  lwc1       $f8, 0x168($t0)
    /* AB408 80122998 AD000030 */  sw         $zero, 0x30($t0)
    /* AB40C 8012299C 2404000E */  addiu      $a0, $zero, 0xE
    /* AB410 801229A0 2405000B */  addiu      $a1, $zero, 0xB
    /* AB414 801229A4 0C048BDB */  jal        set_kirby_action_1
    /* AB418 801229A8 E5080164 */   swc1      $f8, 0x164($t0)
    /* AB41C 801229AC 0C048A74 */  jal        func_801229D0
    /* AB420 801229B0 00000000 */   nop
    /* AB424 801229B4 10000002 */  b          .L801229C0
    /* AB428 801229B8 24020001 */   addiu     $v0, $zero, 0x1
  .L801229BC:
    /* AB42C 801229BC 00001025 */  or         $v0, $zero, $zero
  .L801229C0:
    /* AB430 801229C0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AB434 801229C4 27BD0098 */  addiu      $sp, $sp, 0x98
    /* AB438 801229C8 03E00008 */  jr         $ra
    /* AB43C 801229CC 00000000 */   nop
endlabel func_801226FC
.size func_801226FC, . - func_801226FC
