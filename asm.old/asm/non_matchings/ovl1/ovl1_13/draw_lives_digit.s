glabel draw_lives_digit
/* 065228 800BCFD8 3C0E800D */  lui   $t6, %hi(gHudDisplayMode) # $t6, 0x800d
/* 06522C 800BCFDC 8DCE6BB0 */  lw    $t6, %lo(gHudDisplayMode)($t6)
/* 065230 800BCFE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 065234 800BCFE4 AFA40018 */  sw    $a0, 0x18($sp)
/* 065238 800BCFE8 000E7880 */  sll   $t7, $t6, 2
/* 06523C 800BCFEC 01EE7821 */  addu  $t7, $t7, $t6
/* 065240 800BCFF0 000F7840 */  sll   $t7, $t7, 1
/* 065244 800BCFF4 000FC080 */  sll   $t8, $t7, 2
/* 065248 800BCFF8 0005C880 */  sll   $t9, $a1, 2
/* 06524C 800BCFFC 03194021 */  addu  $t0, $t8, $t9
/* 065250 800BD000 3C04800D */ lui $a0, %hi(D_800D5460)
/* 065254 800BD004 AFBF0014 */  sw    $ra, 0x14($sp)
/* 065258 800BD008 00882021 */  addu  $a0, $a0, $t0
/* 06525C 800BD00C 0C02A2EB */  jal   func_800A8BAC
/* 065260 800BD010 8C845460 */ lw $a0, %lo(D_800D5460)($a0)
/* 065264 800BD014 8FA90018 */  lw    $t1, 0x18($sp)
/* 065268 800BD018 3C0C800F */  lui   $t4, %hi(D_800ED510) # $t4, 0x800f
/* 06526C 800BD01C 24430010 */  addiu $v1, $v0, 0x10
/* 065270 800BD020 00095040 */  sll   $t2, $t1, 1
/* 065274 800BD024 254B1400 */  addiu $t3, $t2, 0x1400
/* 065278 800BD028 258CD510 */  addiu $t4, %lo(D_800ED510) # addiu $t4, $t4, -0x2af0
/* 06527C 800BD02C 016C2021 */  addu  $a0, $t3, $t4
/* 065280 800BD030 2402001E */  li    $v0, 30
/* 065284 800BD034 00002825 */  move  $a1, $zero
.L800BD038_ovl1:
/* 065288 800BD038 8C6D0000 */  lw    $t5, ($v1)
/* 06528C 800BD03C 24A50002 */  addiu $a1, $a1, 2
/* 065290 800BD040 24840500 */  addiu $a0, $a0, 0x500
/* 065294 800BD044 AC8DFB00 */  sw    $t5, -0x500($a0)
/* 065298 800BD048 8C6E0004 */  lw    $t6, 4($v1)
/* 06529C 800BD04C 24630050 */  addiu $v1, $v1, 0x50
/* 0652A0 800BD050 AC8EFB04 */  sw    $t6, -0x4fc($a0)
/* 0652A4 800BD054 8C6FFFB8 */  lw    $t7, -0x48($v1)
/* 0652A8 800BD058 AC8FFB08 */  sw    $t7, -0x4f8($a0)
/* 0652AC 800BD05C 8C78FFBC */  lw    $t8, -0x44($v1)
/* 0652B0 800BD060 AC98FB0C */  sw    $t8, -0x4f4($a0)
/* 0652B4 800BD064 8C79FFC0 */  lw    $t9, -0x40($v1)
/* 0652B8 800BD068 AC99FB10 */  sw    $t9, -0x4f0($a0)
/* 0652BC 800BD06C 8C68FFC4 */  lw    $t0, -0x3c($v1)
/* 0652C0 800BD070 AC88FB14 */  sw    $t0, -0x4ec($a0)
/* 0652C4 800BD074 8C69FFC8 */  lw    $t1, -0x38($v1)
/* 0652C8 800BD078 AC89FB18 */  sw    $t1, -0x4e8($a0)
/* 0652CC 800BD07C 8C6AFFCC */  lw    $t2, -0x34($v1)
/* 0652D0 800BD080 AC8AFB1C */  sw    $t2, -0x4e4($a0)
/* 0652D4 800BD084 8C6BFFD0 */  lw    $t3, -0x30($v1)
/* 0652D8 800BD088 AC8BFB20 */  sw    $t3, -0x4e0($a0)
/* 0652DC 800BD08C 8C6CFFD8 */  lw    $t4, -0x28($v1)
/* 0652E0 800BD090 AC8CFD80 */  sw    $t4, -0x280($a0)
/* 0652E4 800BD094 8C6DFFDC */  lw    $t5, -0x24($v1)
/* 0652E8 800BD098 AC8DFD84 */  sw    $t5, -0x27c($a0)
/* 0652EC 800BD09C 8C6EFFE0 */  lw    $t6, -0x20($v1)
/* 0652F0 800BD0A0 AC8EFD88 */  sw    $t6, -0x278($a0)
/* 0652F4 800BD0A4 8C6FFFE4 */  lw    $t7, -0x1c($v1)
/* 0652F8 800BD0A8 AC8FFD8C */  sw    $t7, -0x274($a0)
/* 0652FC 800BD0AC 8C78FFE8 */  lw    $t8, -0x18($v1)
/* 065300 800BD0B0 AC98FD90 */  sw    $t8, -0x270($a0)
/* 065304 800BD0B4 8C79FFEC */  lw    $t9, -0x14($v1)
/* 065308 800BD0B8 AC99FD94 */  sw    $t9, -0x26c($a0)
/* 06530C 800BD0BC 8C68FFF0 */  lw    $t0, -0x10($v1)
/* 065310 800BD0C0 AC88FD98 */  sw    $t0, -0x268($a0)
/* 065314 800BD0C4 8C69FFF4 */  lw    $t1, -0xc($v1)
/* 065318 800BD0C8 AC89FD9C */  sw    $t1, -0x264($a0)
/* 06531C 800BD0CC 8C6AFFF8 */  lw    $t2, -8($v1)
/* 065320 800BD0D0 14A2FFD9 */  bne   $a1, $v0, .L800BD038_ovl1
/* 065324 800BD0D4 AC8AFDA0 */   sw    $t2, -0x260($a0)
/* 065328 800BD0D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06532C 800BD0DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 065330 800BD0E0 03E00008 */  jr    $ra
/* 065334 800BD0E4 00000000 */   nop   
.size draw_lives_digit, . - draw_lives_digit
