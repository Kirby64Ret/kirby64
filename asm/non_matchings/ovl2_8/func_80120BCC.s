glabel func_80120BCC
/* 0A963C 80120BCC 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0A9640 80120BD0 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0A9644 80120BD4 8C820090 */  lw    $v0, 0x90($a0)
/* 0A9648 80120BD8 00001825 */  move  $v1, $zero
/* 0A964C 80120BDC 10400039 */  beqz  $v0, .L80120CC4_ovl2
/* 0A9650 80120BE0 00000000 */   nop   
/* 0A9654 80120BE4 8C8E00A0 */  lw    $t6, 0xa0($a0)
/* 0A9658 80120BE8 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 0A965C 80120BEC 24180001 */  li    $t8, 1
/* 0A9660 80120BF0 15C00034 */  bnez  $t6, .L80120CC4_ovl2
/* 0A9664 80120BF4 00000000 */   nop   
/* 0A9668 80120BF8 444FF800 */  cfc1  $t7, $31
/* 0A966C 80120BFC 44D8F800 */  ctc1  $t8, $31
/* 0A9670 80120C00 C4246E50 */  lwc1  $f4, %lo(gKirbyHp)($at)
/* 0A9674 80120C04 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0A9678 80120C08 240C0001 */  li    $t4, 1
/* 0A967C 80120C0C 460021A4 */  cvt.w.s $f6, $f4
/* 0A9680 80120C10 4458F800 */  cfc1  $t8, $31
/* 0A9684 80120C14 00000000 */  nop   
/* 0A9688 80120C18 33180078 */  andi  $t8, $t8, 0x78
/* 0A968C 80120C1C 53000013 */  beql  $t8, $zero, .L80120C6C_ovl2
/* 0A9690 80120C20 44183000 */   mfc1  $t8, $f6
/* 0A9694 80120C24 44813000 */  mtc1  $at, $f6
/* 0A9698 80120C28 24180001 */  li    $t8, 1
/* 0A969C 80120C2C 46062181 */  sub.s $f6, $f4, $f6
/* 0A96A0 80120C30 44D8F800 */  ctc1  $t8, $31
/* 0A96A4 80120C34 00000000 */  nop   
/* 0A96A8 80120C38 460031A4 */  cvt.w.s $f6, $f6
/* 0A96AC 80120C3C 4458F800 */  cfc1  $t8, $31
/* 0A96B0 80120C40 00000000 */  nop   
/* 0A96B4 80120C44 33180078 */  andi  $t8, $t8, 0x78
/* 0A96B8 80120C48 17000005 */  bnez  $t8, .L80120C60_ovl2
/* 0A96BC 80120C4C 00000000 */   nop   
/* 0A96C0 80120C50 44183000 */  mfc1  $t8, $f6
/* 0A96C4 80120C54 3C018000 */  lui   $at, 0x8000
/* 0A96C8 80120C58 10000007 */  b     .L80120C78_ovl2
/* 0A96CC 80120C5C 0301C025 */   or    $t8, $t8, $at
.L80120C60_ovl2:
/* 0A96D0 80120C60 10000005 */  b     .L80120C78_ovl2
/* 0A96D4 80120C64 2418FFFF */   li    $t8, -1
/* 0A96D8 80120C68 44183000 */  mfc1  $t8, $f6
.L80120C6C_ovl2:
/* 0A96DC 80120C6C 00000000 */  nop   
/* 0A96E0 80120C70 0700FFFB */  bltz  $t8, .L80120C60_ovl2
/* 0A96E4 80120C74 00000000 */   nop   
.L80120C78_ovl2:
/* 0A96E8 80120C78 849900DE */  lh    $t9, 0xde($a0)
/* 0A96EC 80120C7C 44CFF800 */  ctc1  $t7, $31
/* 0A96F0 80120C80 A49800E0 */  sh    $t8, 0xe0($a0)
/* 0A96F4 80120C84 5720000B */  bnezl $t9, .L80120CB4_ovl2
/* 0A96F8 80120C88 A08200DD */   sb    $v0, 0xdd($a0)
/* 0A96FC 80120C8C 848800E0 */  lh    $t0, 0xe0($a0)
/* 0A9700 80120C90 3C0A8013 */ lui $t2, %hi(D_80128348)
/* 0A9704 80120C94 00601025 */  move  $v0, $v1
/* 0A9708 80120C98 00084880 */  sll   $t1, $t0, 2
/* 0A970C 80120C9C 01495021 */  addu  $t2, $t2, $t1
/* 0A9710 80120CA0 8D4A8348 */ lw $t2, %lo(D_80128348)($t2)
/* 0A9714 80120CA4 254B002D */  addiu $t3, $t2, 0x2d
/* 0A9718 80120CA8 03E00008 */  jr    $ra
/* 0A971C 80120CAC A48B00DE */   sh    $t3, 0xde($a0)

/* 0A9720 80120CB0 A08200DD */  sb    $v0, 0xdd($a0)
.L80120CB4_ovl2:
/* 0A9724 80120CB4 A48000DE */  sh    $zero, 0xde($a0)
/* 0A9728 80120CB8 A08C00DC */  sb    $t4, 0xdc($a0)
/* 0A972C 80120CBC AC800090 */  sw    $zero, 0x90($a0)
/* 0A9730 80120CC0 24030001 */  li    $v1, 1
.L80120CC4_ovl2:
/* 0A9734 80120CC4 03E00008 */  jr    $ra
/* 0A9738 80120CC8 00601025 */   move  $v0, $v1