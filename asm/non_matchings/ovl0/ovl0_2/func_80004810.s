glabel func_80004810
/* 005410 80004810 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 005414 80004814 AFB00028 */  sw    $s0, 0x28($sp)
/* 005418 80004818 00808025 */  move  $s0, $a0
/* 00541C 8000481C AFBF002C */  sw    $ra, 0x2c($sp)
/* 005420 80004820 8E06000C */  lw    $a2, 0xc($s0)
/* 005424 80004824 24080068 */  li    $t0, 104
/* 005428 80004828 3C038005 */  lui   $v1, %hi(sPakDevices) # $v1, 0x8005
/* 00542C 8000482C 00C80019 */  multu $a2, $t0
/* 005430 80004830 246390F0 */  addiu $v1, %lo(sPakDevices) # addiu $v1, $v1, -0x6f10
/* 005434 80004834 3C048005 */  lui   $a0, %hi(sSIMesgQueue) # $a0, 0x8005
/* 005438 80004838 24848DA0 */  addiu $a0, %lo(sSIMesgQueue) # addiu $a0, $a0, -0x7260
/* 00543C 8000483C 00007012 */  mflo  $t6
/* 005440 80004840 006E2821 */  addu  $a1, $v1, $t6
/* 005444 80004844 0C00D74C */  jal   func_80035D30
/* 005448 80004848 00000000 */   nop   
/* 00544C 8000484C 3C038005 */  lui   $v1, %hi(sPakDevices) # $v1, 0x8005
/* 005450 80004850 246390F0 */  addiu $v1, %lo(sPakDevices) # addiu $v1, $v1, -0x6f10
/* 005454 80004854 24080068 */  li    $t0, 104
/* 005458 80004858 14400053 */  bnez  $v0, .L800049A8_ovl0
/* 00545C 8000485C AE02003C */   sw    $v0, 0x3c($s0)
/* 005460 80004860 8E0F0010 */  lw    $t7, 0x10($s0)
/* 005464 80004864 2DE10005 */  sltiu $at, $t7, 5
/* 005468 80004868 1020004F */  beqz  $at, .L800049A8_ovl0
/* 00546C 8000486C 000F7880 */   sll   $t7, $t7, 2
/* 005470 80004870 3C018004 */ lui $at, %hi(jtbl_8003FF30)
/* 005474 80004874 002F0821 */  addu  $at, $at, $t7
/* 005478 80004878 8C2FFF30 */ lw $t7, %lo(jtbl_8003FF30)($at)
/* 00547C 8000487C 01E00008 */  jr    $t7
/* 005480 80004880 00000000 */   nop   
glabel L80004884_ovl0
/* 005484 80004884 8E18000C */  lw    $t8, 0xc($s0)
/* 005488 80004888 8E090020 */  lw    $t1, 0x20($s0)
/* 00548C 8000488C 96050014 */  lhu   $a1, 0x14($s0)
/* 005490 80004890 03080019 */  multu $t8, $t0
/* 005494 80004894 8E060018 */  lw    $a2, 0x18($s0)
/* 005498 80004898 8E07001C */  lw    $a3, 0x1c($s0)
/* 00549C 8000489C AFA90010 */  sw    $t1, 0x10($sp)
/* 0054A0 800048A0 8E0A0028 */  lw    $t2, 0x28($s0)
/* 0054A4 800048A4 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0054A8 800048A8 0000C812 */  mflo  $t9
/* 0054AC 800048AC 00792021 */  addu  $a0, $v1, $t9
/* 0054B0 800048B0 0C00C834 */  jal   osPfsFindFile
/* 0054B4 800048B4 00000000 */   nop   
/* 0054B8 800048B8 1000003B */  b     .L800049A8_ovl0
/* 0054BC 800048BC AE02003C */   sw    $v0, 0x3c($s0)
glabel L800048C0_ovl0
/* 0054C0 800048C0 8E0B000C */  lw    $t3, 0xc($s0)
/* 0054C4 800048C4 8E0D0020 */  lw    $t5, 0x20($s0)
/* 0054C8 800048C8 96050014 */  lhu   $a1, 0x14($s0)
/* 0054CC 800048CC 01680019 */  multu $t3, $t0
/* 0054D0 800048D0 8E060018 */  lw    $a2, 0x18($s0)
/* 0054D4 800048D4 8E07001C */  lw    $a3, 0x1c($s0)
/* 0054D8 800048D8 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0054DC 800048DC 00006012 */  mflo  $t4
/* 0054E0 800048E0 006C2021 */  addu  $a0, $v1, $t4
/* 0054E4 800048E4 0C00D43C */  jal   func_800350F0
/* 0054E8 800048E8 00000000 */   nop   
/* 0054EC 800048EC 1000002E */  b     .L800049A8_ovl0
/* 0054F0 800048F0 AE02003C */   sw    $v0, 0x3c($s0)
glabel L800048F4_ovl0
/* 0054F4 800048F4 8E0E000C */  lw    $t6, 0xc($s0)
/* 0054F8 800048F8 8E180020 */  lw    $t8, 0x20($s0)
/* 0054FC 800048FC 96050014 */  lhu   $a1, 0x14($s0)
/* 005500 80004900 01C80019 */  multu $t6, $t0
/* 005504 80004904 8E060018 */  lw    $a2, 0x18($s0)
/* 005508 80004908 8E07001C */  lw    $a3, 0x1c($s0)
/* 00550C 8000490C AFB80010 */  sw    $t8, 0x10($sp)
/* 005510 80004910 8E190024 */  lw    $t9, 0x24($s0)
/* 005514 80004914 AFB90014 */  sw    $t9, 0x14($sp)
/* 005518 80004918 8E090028 */  lw    $t1, 0x28($s0)
/* 00551C 8000491C 00007812 */  mflo  $t7
/* 005520 80004920 006F2021 */  addu  $a0, $v1, $t7
/* 005524 80004924 0C00C37C */  jal   func_80030DF0
/* 005528 80004928 AFA90018 */   sw    $t1, 0x18($sp)
/* 00552C 8000492C 1000001E */  b     .L800049A8_ovl0
/* 005530 80004930 AE02003C */   sw    $v0, 0x3c($s0)
glabel L80004934_ovl0
/* 005534 80004934 8E0A000C */  lw    $t2, 0xc($s0)
/* 005538 80004938 8E0C0034 */  lw    $t4, 0x34($s0)
/* 00553C 8000493C 8E05002C */  lw    $a1, 0x2c($s0)
/* 005540 80004940 01480019 */  multu $t2, $t0
/* 005544 80004944 8E070030 */  lw    $a3, 0x30($s0)
/* 005548 80004948 AFAC0010 */  sw    $t4, 0x10($sp)
/* 00554C 8000494C 8E0D0038 */  lw    $t5, 0x38($s0)
/* 005550 80004950 00003025 */  move  $a2, $zero
/* 005554 80004954 AFAD0014 */  sw    $t5, 0x14($sp)
/* 005558 80004958 00005812 */  mflo  $t3
/* 00555C 8000495C 006B2021 */  addu  $a0, $v1, $t3
/* 005560 80004960 0C00C1E5 */  jal   func_80030794
/* 005564 80004964 00000000 */   nop   
/* 005568 80004968 1000000F */  b     .L800049A8_ovl0
/* 00556C 8000496C AE02003C */   sw    $v0, 0x3c($s0)
glabel L80004970_ovl0
/* 005570 80004970 8E0E000C */  lw    $t6, 0xc($s0)
/* 005574 80004974 8E180034 */  lw    $t8, 0x34($s0)
/* 005578 80004978 8E05002C */  lw    $a1, 0x2c($s0)
/* 00557C 8000497C 01C80019 */  multu $t6, $t0
/* 005580 80004980 8E070030 */  lw    $a3, 0x30($s0)
/* 005584 80004984 AFB80010 */  sw    $t8, 0x10($sp)
/* 005588 80004988 8E190038 */  lw    $t9, 0x38($s0)
/* 00558C 8000498C 24060001 */  li    $a2, 1
/* 005590 80004990 AFB90014 */  sw    $t9, 0x14($sp)
/* 005594 80004994 00007812 */  mflo  $t7
/* 005598 80004998 006F2021 */  addu  $a0, $v1, $t7
/* 00559C 8000499C 0C00C1E5 */  jal   func_80030794
/* 0055A0 800049A0 00000000 */   nop   
/* 0055A4 800049A4 AE02003C */  sw    $v0, 0x3c($s0)
.L800049A8_ovl0:
/* 0055A8 800049A8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0055AC 800049AC 8FB00028 */  lw    $s0, 0x28($sp)
/* 0055B0 800049B0 27BD0030 */  addiu $sp, $sp, 0x30
/* 0055B4 800049B4 03E00008 */  jr    $ra
/* 0055B8 800049B8 00000000 */   nop   
