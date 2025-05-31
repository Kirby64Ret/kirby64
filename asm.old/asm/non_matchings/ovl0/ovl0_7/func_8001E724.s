glabel func_8001E724
/* 01F324 8001E724 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01F328 8001E728 AFA40030 */  sw    $a0, 0x30($sp)
/* 01F32C 8001E72C AFBF0014 */  sw    $ra, 0x14($sp)
/* 01F330 8001E730 AFA50034 */  sw    $a1, 0x34($sp)
/* 01F334 8001E734 00A02025 */  move  $a0, $a1
/* 01F338 8001E738 AFA60038 */  sw    $a2, 0x38($sp)
/* 01F33C 8001E73C 0C00CEE4 */  jal   osInvalDCache
/* 01F340 8001E740 00C02825 */   move  $a1, $a2
/* 01F344 8001E744 8FAF0034 */  lw    $t7, 0x34($sp)
/* 01F348 8001E748 8FB80030 */  lw    $t8, 0x30($sp)
/* 01F34C 8001E74C 8FB90038 */  lw    $t9, 0x38($sp)
/* 01F350 8001E750 3C0E8009 */  lui   $t6, %hi(D_80095E30) # $t6, 0x8009
/* 01F354 8001E754 25CE5E30 */  addiu $t6, %lo(D_80095E30) # addiu $t6, $t6, 0x5e30
/* 01F358 8001E758 3C048005 */  lui   $a0, %hi(gRomHandle) # $a0, 0x8005
/* 01F35C 8001E75C A3A0001A */  sb    $zero, 0x1a($sp)
/* 01F360 8001E760 AFAE001C */  sw    $t6, 0x1c($sp)
/* 01F364 8001E764 8C848CF0 */  lw    $a0, %lo(gRomHandle)($a0)
/* 01F368 8001E768 27A50018 */  addiu $a1, $sp, 0x18
/* 01F36C 8001E76C 00003025 */  move  $a2, $zero
/* 01F370 8001E770 AFAF0020 */  sw    $t7, 0x20($sp)
/* 01F374 8001E774 AFB80024 */  sw    $t8, 0x24($sp)
/* 01F378 8001E778 0C00CE30 */  jal   osEPiStartDma
/* 01F37C 8001E77C AFB90028 */   sw    $t9, 0x28($sp)
/* 01F380 8001E780 3C048009 */  lui   $a0, %hi(D_80095E30) # $a0, 0x8009
/* 01F384 8001E784 24845E30 */  addiu $a0, %lo(D_80095E30) # addiu $a0, $a0, 0x5e30
/* 01F388 8001E788 00002825 */  move  $a1, $zero
/* 01F38C 8001E78C 0C00B540 */  jal   osRecvMesg
/* 01F390 8001E790 24060001 */   li    $a2, 1
/* 01F394 8001E794 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01F398 8001E798 27BD0030 */  addiu $sp, $sp, 0x30
/* 01F39C 8001E79C 03E00008 */  jr    $ra
/* 01F3A0 8001E7A0 00000000 */   nop   
.type func_8001E724, @function
.size func_8001E724, . - func_8001E724
