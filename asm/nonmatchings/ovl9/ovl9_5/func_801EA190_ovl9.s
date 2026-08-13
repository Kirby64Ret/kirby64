nonmatching func_801EA190_ovl9, 0x168

glabel func_801EA190_ovl9
    /* 1981E0 801EA190 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1981E4 801EA194 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1981E8 801EA198 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1981EC 801EA19C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1981F0 801EA1A0 8DC20000 */  lw         $v0, 0x0($t6)
    /* 1981F4 801EA1A4 3C0F800F */  lui        $t7, %hi(D_800E8E60)
    /* 1981F8 801EA1A8 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* 1981FC 801EA1AC 00021080 */  sll        $v0, $v0, 2
    /* 198200 801EA1B0 01E27821 */  addu       $t7, $t7, $v0
    /* 198204 801EA1B4 8DEF8E60 */  lw         $t7, %lo(D_800E8E60)($t7)
    /* 198208 801EA1B8 0302C021 */  addu       $t8, $t8, $v0
    /* 19820C 801EA1BC 3C01800F */  lui        $at, %hi(D_800EAA60)
    /* 198210 801EA1C0 15E00047 */  bnez       $t7, .L801EA2E0_ovl9
    /* 198214 801EA1C4 00000000 */   nop
    /* 198218 801EA1C8 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* 19821C 801EA1CC 00220821 */  addu       $at, $at, $v0
    /* 198220 801EA1D0 C424AA60 */  lwc1       $f4, %lo(D_800EAA60)($at)
    /* 198224 801EA1D4 8F190004 */  lw         $t9, 0x4($t8)
    /* 198228 801EA1D8 E7240030 */  swc1       $f4, 0x30($t9)
    /* 19822C 801EA1DC 0C07A8BE */  jal        func_801EA2F8_ovl9
    /* 198230 801EA1E0 AFA40018 */   sw        $a0, 0x18($sp)
    /* 198234 801EA1E4 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 198238 801EA1E8 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 19823C 801EA1EC 3C0B800F */  lui        $t3, %hi(D_800E9AA0)
    /* 198240 801EA1F0 8FA40018 */  lw         $a0, 0x18($sp)
    /* 198244 801EA1F4 8D090000 */  lw         $t1, 0x0($t0)
    /* 198248 801EA1F8 00095080 */  sll        $t2, $t1, 2
    /* 19824C 801EA1FC 016A5821 */  addu       $t3, $t3, $t2
    /* 198250 801EA200 8D6B9AA0 */  lw         $t3, %lo(D_800E9AA0)($t3)
    /* 198254 801EA204 11600032 */  beqz       $t3, .L801EA2D0_ovl9
    /* 198258 801EA208 00000000 */   nop
    /* 19825C 801EA20C 0C06835D */  jal        func_801A0D74_ovl7
    /* 198260 801EA210 00000000 */   nop
    /* 198264 801EA214 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 198268 801EA218 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 19826C 801EA21C 3C0C800F */  lui        $t4, %hi(D_800E98E0)
    /* 198270 801EA220 3C01800E */  lui        $at, %hi(D_800E5F90)
    /* 198274 801EA224 8C620000 */  lw         $v0, 0x0($v1)
    /* 198278 801EA228 00021080 */  sll        $v0, $v0, 2
    /* 19827C 801EA22C 01826021 */  addu       $t4, $t4, $v0
    /* 198280 801EA230 8D8C98E0 */  lw         $t4, %lo(D_800E98E0)($t4)
    /* 198284 801EA234 00220821 */  addu       $at, $at, $v0
    /* 198288 801EA238 AC2C5F90 */  sw         $t4, %lo(D_800E5F90)($at)
    /* 19828C 801EA23C 8C620000 */  lw         $v0, 0x0($v1)
    /* 198290 801EA240 3C01800F */  lui        $at, %hi(D_800EADE0)
    /* 198294 801EA244 00021080 */  sll        $v0, $v0, 2
    /* 198298 801EA248 00220821 */  addu       $at, $at, $v0
    /* 19829C 801EA24C C426ADE0 */  lwc1       $f6, %lo(D_800EADE0)($at)
    /* 1982A0 801EA250 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* 1982A4 801EA254 00220821 */  addu       $at, $at, $v0
    /* 1982A8 801EA258 E4266BD0 */  swc1       $f6, %lo(D_800E6BD0)($at)
    /* 1982AC 801EA25C 8C620000 */  lw         $v0, 0x0($v1)
    /* 1982B0 801EA260 3C01800F */  lui        $at, %hi(D_800EAFA0)
    /* 1982B4 801EA264 00021080 */  sll        $v0, $v0, 2
    /* 1982B8 801EA268 00220821 */  addu       $at, $at, $v0
    /* 1982BC 801EA26C C428AFA0 */  lwc1       $f8, %lo(D_800EAFA0)($at)
    /* 1982C0 801EA270 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1982C4 801EA274 00220821 */  addu       $at, $at, $v0
    /* 1982C8 801EA278 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
    /* 1982CC 801EA27C 8C620000 */  lw         $v0, 0x0($v1)
    /* 1982D0 801EA280 3C01800F */  lui        $at, %hi(D_800EB160)
    /* 1982D4 801EA284 00021080 */  sll        $v0, $v0, 2
    /* 1982D8 801EA288 00220821 */  addu       $at, $at, $v0
    /* 1982DC 801EA28C C42AB160 */  lwc1       $f10, %lo(D_800EB160)($at)
    /* 1982E0 801EA290 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 1982E4 801EA294 00220821 */  addu       $at, $at, $v0
    /* 1982E8 801EA298 E42A2790 */  swc1       $f10, %lo(gEntitiesNextPosYArray)($at)
    /* 1982EC 801EA29C 8C620000 */  lw         $v0, 0x0($v1)
    /* 1982F0 801EA2A0 3C01800F */  lui        $at, %hi(D_800EB320)
    /* 1982F4 801EA2A4 00021080 */  sll        $v0, $v0, 2
    /* 1982F8 801EA2A8 00220821 */  addu       $at, $at, $v0
    /* 1982FC 801EA2AC C430B320 */  lwc1       $f16, %lo(D_800EB320)($at)
    /* 198300 801EA2B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 198304 801EA2B4 00220821 */  addu       $at, $at, $v0
    /* 198308 801EA2B8 E4302950 */  swc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* 19830C 801EA2BC 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 198310 801EA2C0 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 198314 801EA2C4 000D7080 */  sll        $t6, $t5, 2
    /* 198318 801EA2C8 002E0821 */  addu       $at, $at, $t6
    /* 19831C 801EA2CC AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
  .L801EA2D0_ovl9:
    /* 198320 801EA2D0 0C067CFC */  jal        func_8019F3F0_ovl7
    /* 198324 801EA2D4 00000000 */   nop
    /* 198328 801EA2D8 10000004 */  b          .L801EA2EC_ovl9
    /* 19832C 801EA2DC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801EA2E0_ovl9:
    /* 198330 801EA2E0 0C07A98A */  jal        func_801EA628_ovl9
    /* 198334 801EA2E4 00000000 */   nop
    /* 198338 801EA2E8 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801EA2EC_ovl9:
    /* 19833C 801EA2EC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 198340 801EA2F0 03E00008 */  jr         $ra
    /* 198344 801EA2F4 00000000 */   nop
endlabel func_801EA190_ovl9
.size func_801EA190_ovl9, . - func_801EA190_ovl9
