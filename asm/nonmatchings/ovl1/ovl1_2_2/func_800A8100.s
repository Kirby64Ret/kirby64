nonmatching func_800A8100, 0x134

glabel func_800A8100
    /* 50350 800A8100 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 50354 800A8104 3C0E800D */  lui        $t6, %hi(D_800D6FB8)
    /* 50358 800A8108 8DCE6FB8 */  lw         $t6, %lo(D_800D6FB8)($t6)
    /* 5035C 800A810C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 50360 800A8110 AFA40038 */  sw         $a0, 0x38($sp)
    /* 50364 800A8114 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 50368 800A8118 8DCF0044 */  lw         $t7, 0x44($t6)
    /* 5036C 800A811C 3C190001 */  lui        $t9, (0x10000 >> 16)
    /* 50370 800A8120 00B94804 */  sllv       $t1, $t9, $a1
    /* 50374 800A8124 01E95024 */  and        $t2, $t7, $t1
    /* 50378 800A8128 1540003E */  bnez       $t2, .L800A8224
    /* 5037C 800A812C 00001025 */   or        $v0, $zero, $zero
    /* 50380 800A8130 000558C0 */  sll        $t3, $a1, 3
    /* 50384 800A8134 01642025 */  or         $a0, $t3, $a0
    /* 50388 800A8138 00C02825 */  or         $a1, $a2, $zero
    /* 5038C 800A813C 0C02867B */  jal        func_800A19EC
    /* 50390 800A8140 AFA70044 */   sw        $a3, 0x44($sp)
    /* 50394 800A8144 8FA70044 */  lw         $a3, 0x44($sp)
    /* 50398 800A8148 10400034 */  beqz       $v0, .L800A821C
    /* 5039C 800A814C 00404025 */   or        $t0, $v0, $zero
    /* 503A0 800A8150 14E00004 */  bnez       $a3, .L800A8164
    /* 503A4 800A8154 3C0D8005 */   lui       $t5, %hi(omCurrentObj)
    /* 503A8 800A8158 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 503AC 800A815C 10000003 */  b          .L800A816C
    /* 503B0 800A8160 8DA60000 */   lw        $a2, 0x0($t5)
  .L800A8164:
    /* 503B4 800A8164 8CEE0004 */  lw         $t6, 0x4($a3)
    /* 503B8 800A8168 8DC60000 */  lw         $a2, 0x0($t6)
  .L800A816C:
    /* 503BC 800A816C 8C44004C */  lw         $a0, 0x4C($v0)
    /* 503C0 800A8170 10800023 */  beqz       $a0, .L800A8200
    /* 503C4 800A8174 00000000 */   nop
    /* 503C8 800A8178 14E00012 */  bnez       $a3, .L800A81C4
    /* 503CC 800A817C 00E02825 */   or        $a1, $a3, $zero
    /* 503D0 800A8180 00061880 */  sll        $v1, $a2, 2
    /* 503D4 800A8184 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 503D8 800A8188 00230821 */  addu       $at, $at, $v1
    /* 503DC 800A818C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 503E0 800A8190 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 503E4 800A8194 00230821 */  addu       $at, $at, $v1
    /* 503E8 800A8198 E4840004 */  swc1       $f4, 0x4($a0)
    /* 503EC 800A819C 8C59004C */  lw         $t9, 0x4C($v0)
    /* 503F0 800A81A0 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 503F4 800A81A4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 503F8 800A81A8 00230821 */  addu       $at, $at, $v1
    /* 503FC 800A81AC E7260008 */  swc1       $f6, 0x8($t9)
    /* 50400 800A81B0 8C4F004C */  lw         $t7, 0x4C($v0)
    /* 50404 800A81B4 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 50408 800A81B8 01001025 */  or         $v0, $t0, $zero
    /* 5040C 800A81BC 10000019 */  b          .L800A8224
    /* 50410 800A81C0 E5E8000C */   swc1      $f8, 0xC($t7)
  .L800A81C4:
    /* 50414 800A81C4 27A40024 */  addiu      $a0, $sp, 0x24
    /* 50418 800A81C8 0C02C8D0 */  jal        func_800B2340
    /* 5041C 800A81CC AFA80030 */   sw        $t0, 0x30($sp)
    /* 50420 800A81D0 8FA80030 */  lw         $t0, 0x30($sp)
    /* 50424 800A81D4 C7AA0024 */  lwc1       $f10, 0x24($sp)
    /* 50428 800A81D8 8D09004C */  lw         $t1, 0x4C($t0)
    /* 5042C 800A81DC E52A0004 */  swc1       $f10, 0x4($t1)
    /* 50430 800A81E0 C7B00028 */  lwc1       $f16, 0x28($sp)
    /* 50434 800A81E4 8D0A004C */  lw         $t2, 0x4C($t0)
    /* 50438 800A81E8 E5500008 */  swc1       $f16, 0x8($t2)
    /* 5043C 800A81EC C7B2002C */  lwc1       $f18, 0x2C($sp)
    /* 50440 800A81F0 8D18004C */  lw         $t8, 0x4C($t0)
    /* 50444 800A81F4 E712000C */  swc1       $f18, 0xC($t8)
    /* 50448 800A81F8 1000000A */  b          .L800A8224
    /* 5044C 800A81FC 01001025 */   or        $v0, $t0, $zero
  .L800A8200:
    /* 50450 800A8200 14E00003 */  bnez       $a3, .L800A8210
    /* 50454 800A8204 3C0B8005 */   lui       $t3, %hi(omCurrentObj)
    /* 50458 800A8208 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 5045C 800A820C 8D67003C */  lw         $a3, 0x3C($t3)
  .L800A8210:
    /* 50460 800A8210 AC470048 */  sw         $a3, 0x48($v0)
    /* 50464 800A8214 10000003 */  b          .L800A8224
    /* 50468 800A8218 01001025 */   or        $v0, $t0, $zero
  .L800A821C:
    /* 5046C 800A821C 10000001 */  b          .L800A8224
    /* 50470 800A8220 00001025 */   or        $v0, $zero, $zero
  .L800A8224:
    /* 50474 800A8224 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 50478 800A8228 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 5047C 800A822C 03E00008 */  jr         $ra
    /* 50480 800A8230 00000000 */   nop
endlabel func_800A8100
.size func_800A8100, . - func_800A8100
