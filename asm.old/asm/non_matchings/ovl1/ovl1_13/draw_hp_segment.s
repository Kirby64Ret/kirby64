glabel draw_hp_segment
/* 065338 800BD0E8 3C0E800D */  lui   $t6, %hi(gHudDisplayMode) # $t6, 0x800d
/* 06533C 800BD0EC 8DCF6BB0 */  lw    $t7, %lo(gHudDisplayMode)($t6)
/* 065340 800BD0F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 065344 800BD0F4 AFA40018 */  sw    $a0, 0x18($sp)
/* 065348 800BD0F8 0005C880 */  sll   $t9, $a1, 2
/* 06534C 800BD0FC 000FC0C0 */  sll   $t8, $t7, 3
/* 065350 800BD100 03194021 */  addu  $t0, $t8, $t9
/* 065354 800BD104 3C04800D */ lui $a0, %hi(D_800D53DC)
/* 065358 800BD108 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06535C 800BD10C 00882021 */  addu  $a0, $a0, $t0
/* 065360 800BD110 0C02A2EB */  jal   func_800A8BAC
/* 065364 800BD114 8C8453DC */ lw $a0, %lo(D_800D53DC)($a0)
/* 065368 800BD118 8FA90018 */  lw    $t1, 0x18($sp)
/* 06536C 800BD11C 3C0D800F */  lui   $t5, %hi(D_800ED510) # $t5, 0x800f
/* 065370 800BD120 24430010 */  addiu $v1, $v0, 0x10
/* 065374 800BD124 00095080 */  sll   $t2, $t1, 2
/* 065378 800BD128 01495021 */  addu  $t2, $t2, $t1
/* 06537C 800BD12C 000A5080 */  sll   $t2, $t2, 2
/* 065380 800BD130 000A5840 */  sll   $t3, $t2, 1
/* 065384 800BD134 256C0AB4 */  addiu $t4, $t3, 0xab4
/* 065388 800BD138 25ADD510 */  addiu $t5, %lo(D_800ED510) # addiu $t5, $t5, -0x2af0
/* 06538C 800BD13C 018D2021 */  addu  $a0, $t4, $t5
/* 065390 800BD140 2402001A */  li    $v0, 26
/* 065394 800BD144 00002825 */  move  $a1, $zero
.L800BD148_ovl1:
/* 065398 800BD148 8C6E0000 */  lw    $t6, ($v1)
/* 06539C 800BD14C 24A50002 */  addiu $a1, $a1, 2
/* 0653A0 800BD150 24630050 */  addiu $v1, $v1, 0x50
/* 0653A4 800BD154 AC8E0000 */  sw    $t6, ($a0)
/* 0653A8 800BD158 8C6FFFB4 */  lw    $t7, -0x4c($v1)
/* 0653AC 800BD15C 24840500 */  addiu $a0, $a0, 0x500
/* 0653B0 800BD160 AC8FFB04 */  sw    $t7, -0x4fc($a0)
/* 0653B4 800BD164 8C78FFB8 */  lw    $t8, -0x48($v1)
/* 0653B8 800BD168 AC98FB08 */  sw    $t8, -0x4f8($a0)
/* 0653BC 800BD16C 8C79FFBC */  lw    $t9, -0x44($v1)
/* 0653C0 800BD170 AC99FB0C */  sw    $t9, -0x4f4($a0)
/* 0653C4 800BD174 8C68FFC0 */  lw    $t0, -0x40($v1)
/* 0653C8 800BD178 AC88FB10 */  sw    $t0, -0x4f0($a0)
/* 0653CC 800BD17C 8C69FFC4 */  lw    $t1, -0x3c($v1)
/* 0653D0 800BD180 AC89FB14 */  sw    $t1, -0x4ec($a0)
/* 0653D4 800BD184 8C6AFFC8 */  lw    $t2, -0x38($v1)
/* 0653D8 800BD188 AC8AFB18 */  sw    $t2, -0x4e8($a0)
/* 0653DC 800BD18C 8C6BFFCC */  lw    $t3, -0x34($v1)
/* 0653E0 800BD190 AC8BFB1C */  sw    $t3, -0x4e4($a0)
/* 0653E4 800BD194 8C6CFFD0 */  lw    $t4, -0x30($v1)
/* 0653E8 800BD198 AC8CFB20 */  sw    $t4, -0x4e0($a0)
/* 0653EC 800BD19C 8C6DFFD4 */  lw    $t5, -0x2c($v1)
/* 0653F0 800BD1A0 AC8DFB24 */  sw    $t5, -0x4dc($a0)
/* 0653F4 800BD1A4 8C6EFFD8 */  lw    $t6, -0x28($v1)
/* 0653F8 800BD1A8 AC8EFD80 */  sw    $t6, -0x280($a0)
/* 0653FC 800BD1AC 8C6FFFDC */  lw    $t7, -0x24($v1)
/* 065400 800BD1B0 AC8FFD84 */  sw    $t7, -0x27c($a0)
/* 065404 800BD1B4 8C78FFE0 */  lw    $t8, -0x20($v1)
/* 065408 800BD1B8 AC98FD88 */  sw    $t8, -0x278($a0)
/* 06540C 800BD1BC 8C79FFE4 */  lw    $t9, -0x1c($v1)
/* 065410 800BD1C0 AC99FD8C */  sw    $t9, -0x274($a0)
/* 065414 800BD1C4 8C68FFE8 */  lw    $t0, -0x18($v1)
/* 065418 800BD1C8 AC88FD90 */  sw    $t0, -0x270($a0)
/* 06541C 800BD1CC 8C69FFEC */  lw    $t1, -0x14($v1)
/* 065420 800BD1D0 AC89FD94 */  sw    $t1, -0x26c($a0)
/* 065424 800BD1D4 8C6AFFF0 */  lw    $t2, -0x10($v1)
/* 065428 800BD1D8 AC8AFD98 */  sw    $t2, -0x268($a0)
/* 06542C 800BD1DC 8C6BFFF4 */  lw    $t3, -0xc($v1)
/* 065430 800BD1E0 AC8BFD9C */  sw    $t3, -0x264($a0)
/* 065434 800BD1E4 8C6CFFF8 */  lw    $t4, -8($v1)
/* 065438 800BD1E8 AC8CFDA0 */  sw    $t4, -0x260($a0)
/* 06543C 800BD1EC 8C6DFFFC */  lw    $t5, -4($v1)
/* 065440 800BD1F0 14A2FFD5 */  bne   $a1, $v0, .L800BD148_ovl1
/* 065444 800BD1F4 AC8DFDA4 */   sw    $t5, -0x25c($a0)
/* 065448 800BD1F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06544C 800BD1FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 065450 800BD200 03E00008 */  jr    $ra
/* 065454 800BD204 00000000 */   nop   
.size draw_hp_segment, . - draw_hp_segment
