nonmatching func_8016B74C_ovl3, 0x288

glabel func_8016B74C_ovl3
    /* CC18C 8016B74C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* CC190 8016B750 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* CC194 8016B754 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* CC198 8016B758 AFBF001C */  sw         $ra, 0x1C($sp)
    /* CC19C 8016B75C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* CC1A0 8016B760 3C04800E */  lui        $a0, %hi(D_800E5F90)
    /* CC1A4 8016B764 000FC080 */  sll        $t8, $t7, 2
    /* CC1A8 8016B768 00982021 */  addu       $a0, $a0, $t8
    /* CC1AC 8016B76C 0C03E50E */  jal        func_800F9438
    /* CC1B0 8016B770 8C845F90 */   lw        $a0, %lo(D_800E5F90)($a0)
    /* CC1B4 8016B774 14400003 */  bnez       $v0, .L8016B784_ovl3
    /* CC1B8 8016B778 00000000 */   nop
    /* CC1BC 8016B77C 10000091 */  b          .L8016B9C4_ovl3
    /* CC1C0 8016B780 00001025 */   or        $v0, $zero, $zero
  .L8016B784_ovl3:
    /* CC1C4 8016B784 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* CC1C8 8016B788 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* CC1CC 8016B78C 3C05800E */  lui        $a1, %hi(D_800E0490)
    /* CC1D0 8016B790 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* CC1D4 8016B794 8C430000 */  lw         $v1, 0x0($v0)
    /* CC1D8 8016B798 24060001 */  addiu      $a2, $zero, 0x1
    /* CC1DC 8016B79C 24070008 */  addiu      $a3, $zero, 0x8
    /* CC1E0 8016B7A0 00031880 */  sll        $v1, $v1, 2
    /* CC1E4 8016B7A4 00A32821 */  addu       $a1, $a1, $v1
    /* CC1E8 8016B7A8 8CA50490 */  lw         $a1, %lo(D_800E0490)($a1)
    /* CC1EC 8016B7AC 00230821 */  addu       $at, $at, $v1
    /* CC1F0 8016B7B0 C4242B10 */  lwc1       $f4, %lo(gEntitiesPosXArray)($at)
    /* CC1F4 8016B7B4 8CA40004 */  lw         $a0, 0x4($a1)
    /* CC1F8 8016B7B8 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* CC1FC 8016B7BC E7A40040 */  swc1       $f4, 0x40($sp)
    /* CC200 8016B7C0 8C590000 */  lw         $t9, 0x0($v0)
    /* CC204 8016B7C4 C4880000 */  lwc1       $f8, 0x0($a0)
    /* CC208 8016B7C8 27A50034 */  addiu      $a1, $sp, 0x34
    /* CC20C 8016B7CC 00194080 */  sll        $t0, $t9, 2
    /* CC210 8016B7D0 00280821 */  addu       $at, $at, $t0
    /* CC214 8016B7D4 C4262CD0 */  lwc1       $f6, %lo(gEntitiesPosYArray)($at)
    /* CC218 8016B7D8 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* CC21C 8016B7DC 46083280 */  add.s      $f10, $f6, $f8
    /* CC220 8016B7E0 E7AA0044 */  swc1       $f10, 0x44($sp)
    /* CC224 8016B7E4 8C490000 */  lw         $t1, 0x0($v0)
    /* CC228 8016B7E8 00095080 */  sll        $t2, $t1, 2
    /* CC22C 8016B7EC 002A0821 */  addu       $at, $at, $t2
    /* CC230 8016B7F0 C4302E90 */  lwc1       $f16, %lo(gEntitiesPosZArray)($at)
    /* CC234 8016B7F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* CC238 8016B7F8 27A90030 */  addiu      $t1, $sp, 0x30
    /* CC23C 8016B7FC E7B00048 */  swc1       $f16, 0x48($sp)
    /* CC240 8016B800 8C4B0000 */  lw         $t3, 0x0($v0)
    /* CC244 8016B804 000B6080 */  sll        $t4, $t3, 2
    /* CC248 8016B808 002C0821 */  addu       $at, $at, $t4
    /* CC24C 8016B80C C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* CC250 8016B810 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* CC254 8016B814 E7B20034 */  swc1       $f18, 0x34($sp)
    /* CC258 8016B818 8C4D0000 */  lw         $t5, 0x0($v0)
    /* CC25C 8016B81C C4860000 */  lwc1       $f6, 0x0($a0)
    /* CC260 8016B820 27A40040 */  addiu      $a0, $sp, 0x40
    /* CC264 8016B824 000D7080 */  sll        $t6, $t5, 2
    /* CC268 8016B828 002E0821 */  addu       $at, $at, $t6
    /* CC26C 8016B82C C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* CC270 8016B830 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* CC274 8016B834 46062200 */  add.s      $f8, $f4, $f6
    /* CC278 8016B838 44802000 */  mtc1       $zero, $f4
    /* CC27C 8016B83C E7A80038 */  swc1       $f8, 0x38($sp)
    /* CC280 8016B840 8C4F0000 */  lw         $t7, 0x0($v0)
    /* CC284 8016B844 000FC080 */  sll        $t8, $t7, 2
    /* CC288 8016B848 00380821 */  addu       $at, $at, $t8
    /* CC28C 8016B84C C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* CC290 8016B850 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* CC294 8016B854 E7AA003C */  swc1       $f10, 0x3C($sp)
    /* CC298 8016B858 8C430000 */  lw         $v1, 0x0($v0)
    /* CC29C 8016B85C 00031880 */  sll        $v1, $v1, 2
    /* CC2A0 8016B860 00230821 */  addu       $at, $at, $v1
    /* CC2A4 8016B864 C4306BD0 */  lwc1       $f16, %lo(D_800E6BD0)($at)
    /* CC2A8 8016B868 3C01800E */  lui        $at, %hi(D_800E6D90)
    /* CC2AC 8016B86C 00230821 */  addu       $at, $at, $v1
    /* CC2B0 8016B870 C4326D90 */  lwc1       $f18, %lo(D_800E6D90)($at)
    /* CC2B4 8016B874 46128001 */  sub.s      $f0, $f16, $f18
    /* CC2B8 8016B878 46040032 */  c.eq.s     $f0, $f4
    /* CC2BC 8016B87C 00000000 */  nop
    /* CC2C0 8016B880 45010019 */  bc1t       .L8016B8E8_ovl3
    /* CC2C4 8016B884 00000000 */   nop
    /* CC2C8 8016B888 44803000 */  mtc1       $zero, $f6
    /* CC2CC 8016B88C 3C198013 */  lui        $t9, %hi(D_8012BCC0)
    /* CC2D0 8016B890 3C088013 */  lui        $t0, %hi(D_8012BCCC)
    /* CC2D4 8016B894 4600303C */  c.lt.s     $f6, $f0
    /* CC2D8 8016B898 00000000 */  nop
    /* CC2DC 8016B89C 45000004 */  bc1f       .L8016B8B0_ovl3
    /* CC2E0 8016B8A0 00000000 */   nop
    /* CC2E4 8016B8A4 8F39BCC0 */  lw         $t9, %lo(D_8012BCC0)($t9)
    /* CC2E8 8016B8A8 10000003 */  b          .L8016B8B8_ovl3
    /* CC2EC 8016B8AC AFB90030 */   sw        $t9, 0x30($sp)
  .L8016B8B0_ovl3:
    /* CC2F0 8016B8B0 8D08BCCC */  lw         $t0, %lo(D_8012BCCC)($t0)
    /* CC2F4 8016B8B4 AFA80030 */  sw         $t0, 0x30($sp)
  .L8016B8B8_ovl3:
    /* CC2F8 8016B8B8 0C0412AD */  jal        func_80104AB4
    /* CC2FC 8016B8BC AFA90010 */   sw        $t1, 0x10($sp)
    /* CC300 8016B8C0 10400009 */  beqz       $v0, .L8016B8E8_ovl3
    /* CC304 8016B8C4 8FA40030 */   lw        $a0, 0x30($sp)
    /* CC308 8016B8C8 0C043700 */  jal        func_8010DC00
    /* CC30C 8016B8CC 27A5004C */   addiu     $a1, $sp, 0x4C
    /* CC310 8016B8D0 C7A80050 */  lwc1       $f8, 0x50($sp)
    /* CC314 8016B8D4 44805000 */  mtc1       $zero, $f10
    /* CC318 8016B8D8 00000000 */  nop
    /* CC31C 8016B8DC 460A4032 */  c.eq.s     $f8, $f10
    /* CC320 8016B8E0 00000000 */  nop
    /* CC324 8016B8E4 45010036 */  bc1t       .L8016B9C0_ovl3
  .L8016B8E8_ovl3:
    /* CC328 8016B8E8 3C0A8005 */   lui       $t2, %hi(omCurrentObj)
    /* CC32C 8016B8EC 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* CC330 8016B8F0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* CC334 8016B8F4 44802000 */  mtc1       $zero, $f4
    /* CC338 8016B8F8 8D430000 */  lw         $v1, 0x0($t2)
    /* CC33C 8016B8FC 27A40040 */  addiu      $a0, $sp, 0x40
    /* CC340 8016B900 27A50034 */  addiu      $a1, $sp, 0x34
    /* CC344 8016B904 00031880 */  sll        $v1, $v1, 2
    /* CC348 8016B908 00230821 */  addu       $at, $at, $v1
    /* CC34C 8016B90C C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* CC350 8016B910 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* CC354 8016B914 00230821 */  addu       $at, $at, $v1
    /* CC358 8016B918 C4322CD0 */  lwc1       $f18, %lo(gEntitiesPosYArray)($at)
    /* CC35C 8016B91C 24060001 */  addiu      $a2, $zero, 0x1
    /* CC360 8016B920 24070008 */  addiu      $a3, $zero, 0x8
    /* CC364 8016B924 46128001 */  sub.s      $f0, $f16, $f18
    /* CC368 8016B928 27AD0030 */  addiu      $t5, $sp, 0x30
    /* CC36C 8016B92C 46040032 */  c.eq.s     $f0, $f4
    /* CC370 8016B930 00000000 */  nop
    /* CC374 8016B934 45010020 */  bc1t       .L8016B9B8_ovl3
    /* CC378 8016B938 00000000 */   nop
    /* CC37C 8016B93C 44803000 */  mtc1       $zero, $f6
    /* CC380 8016B940 3C0B8013 */  lui        $t3, %hi(D_8012BCB4)
    /* CC384 8016B944 3C0C8013 */  lui        $t4, %hi(D_8012BCA8)
    /* CC388 8016B948 4600303C */  c.lt.s     $f6, $f0
    /* CC38C 8016B94C 00000000 */  nop
    /* CC390 8016B950 45000004 */  bc1f       .L8016B964_ovl3
    /* CC394 8016B954 00000000 */   nop
    /* CC398 8016B958 8D6BBCB4 */  lw         $t3, %lo(D_8012BCB4)($t3)
    /* CC39C 8016B95C 10000003 */  b          .L8016B96C_ovl3
    /* CC3A0 8016B960 AFAB0030 */   sw        $t3, 0x30($sp)
  .L8016B964_ovl3:
    /* CC3A4 8016B964 8D8CBCA8 */  lw         $t4, %lo(D_8012BCA8)($t4)
    /* CC3A8 8016B968 AFAC0030 */  sw         $t4, 0x30($sp)
  .L8016B96C_ovl3:
    /* CC3AC 8016B96C 0C0412AD */  jal        func_80104AB4
    /* CC3B0 8016B970 AFAD0010 */   sw        $t5, 0x10($sp)
    /* CC3B4 8016B974 10400010 */  beqz       $v0, .L8016B9B8_ovl3
    /* CC3B8 8016B978 8FA40030 */   lw        $a0, 0x30($sp)
    /* CC3BC 8016B97C 0C043700 */  jal        func_8010DC00
    /* CC3C0 8016B980 27A5004C */   addiu     $a1, $sp, 0x4C
    /* CC3C4 8016B984 C7A8004C */  lwc1       $f8, 0x4C($sp)
    /* CC3C8 8016B988 44805000 */  mtc1       $zero, $f10
    /* CC3CC 8016B98C C7B00054 */  lwc1       $f16, 0x54($sp)
    /* CC3D0 8016B990 460A4032 */  c.eq.s     $f8, $f10
    /* CC3D4 8016B994 00000000 */  nop
    /* CC3D8 8016B998 45000007 */  bc1f       .L8016B9B8_ovl3
    /* CC3DC 8016B99C 00000000 */   nop
    /* CC3E0 8016B9A0 44809000 */  mtc1       $zero, $f18
    /* CC3E4 8016B9A4 00000000 */  nop
    /* CC3E8 8016B9A8 46128032 */  c.eq.s     $f16, $f18
    /* CC3EC 8016B9AC 00000000 */  nop
    /* CC3F0 8016B9B0 45030004 */  bc1tl      .L8016B9C4_ovl3
    /* CC3F4 8016B9B4 24020001 */   addiu     $v0, $zero, 0x1
  .L8016B9B8_ovl3:
    /* CC3F8 8016B9B8 10000002 */  b          .L8016B9C4_ovl3
    /* CC3FC 8016B9BC 00001025 */   or        $v0, $zero, $zero
  .L8016B9C0_ovl3:
    /* CC400 8016B9C0 24020001 */  addiu      $v0, $zero, 0x1
  .L8016B9C4_ovl3:
    /* CC404 8016B9C4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* CC408 8016B9C8 27BD0060 */  addiu      $sp, $sp, 0x60
    /* CC40C 8016B9CC 03E00008 */  jr         $ra
    /* CC410 8016B9D0 00000000 */   nop
endlabel func_8016B74C_ovl3
.size func_8016B74C_ovl3, . - func_8016B74C_ovl3
