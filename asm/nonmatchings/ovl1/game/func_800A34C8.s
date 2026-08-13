nonmatching func_800A34C8, 0x1F8

glabel func_800A34C8
    /* 4B718 800A34C8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 4B71C 800A34CC 3C03800D */  lui        $v1, %hi(D_800D6B6C)
    /* 4B720 800A34D0 24636B6C */  addiu      $v1, $v1, %lo(D_800D6B6C)
    /* 4B724 800A34D4 AFB20020 */  sw         $s2, 0x20($sp)
    /* 4B728 800A34D8 240E0002 */  addiu      $t6, $zero, 0x2
    /* 4B72C 800A34DC 24120001 */  addiu      $s2, $zero, 0x1
    /* 4B730 800A34E0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 4B734 800A34E4 3C01800D */  lui        $at, %hi(gKirbyLives)
    /* 4B738 800A34E8 AC326E4C */  sw         $s2, %lo(gKirbyLives)($at)
    /* 4B73C 800A34EC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* 4B740 800A34F0 44812000 */  mtc1       $at, $f4
    /* 4B744 800A34F4 3C01800D */  lui        $at, %hi(gKirbyHp)
    /* 4B748 800A34F8 44800000 */  mtc1       $zero, $f0
    /* 4B74C 800A34FC E4246E50 */  swc1       $f4, %lo(gKirbyHp)($at)
    /* 4B750 800A3500 3C01800D */  lui        $at, %hi(D_800D6E54)
    /* 4B754 800A3504 AC206E54 */  sw         $zero, %lo(D_800D6E54)($at)
    /* 4B758 800A3508 3C01800D */  lui        $at, %hi(D_800D6E58)
    /* 4B75C 800A350C E4206E58 */  swc1       $f0, %lo(D_800D6E58)($at)
    /* 4B760 800A3510 3C01800D */  lui        $at, %hi(D_800D6E5C)
    /* 4B764 800A3514 E4206E5C */  swc1       $f0, %lo(D_800D6E5C)($at)
    /* 4B768 800A3518 3C01800D */  lui        $at, %hi(gKirbyStars)
    /* 4B76C 800A351C AC206E60 */  sw         $zero, %lo(gKirbyStars)($at)
    /* 4B770 800A3520 3C01800D */  lui        $at, %hi(D_800D6B7C)
    /* 4B774 800A3524 AC206B7C */  sw         $zero, %lo(D_800D6B7C)($at)
    /* 4B778 800A3528 3C18800C */  lui        $t8, %hi(D_800BE438)
    /* 4B77C 800A352C 8F18E438 */  lw         $t8, %lo(D_800BE438)($t8)
    /* 4B780 800A3530 3C01800D */  lui        $at, %hi(D_800D6B80)
    /* 4B784 800A3534 AFB30024 */  sw         $s3, 0x24($sp)
    /* 4B788 800A3538 AC206B80 */  sw         $zero, %lo(D_800D6B80)($at)
    /* 4B78C 800A353C 2413FFFF */  addiu      $s3, $zero, -0x1
    /* 4B790 800A3540 3C01800D */  lui        $at, %hi(D_800D6B44)
    /* 4B794 800A3544 240FFFFF */  addiu      $t7, $zero, -0x1
    /* 4B798 800A3548 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 4B79C 800A354C AFBE0038 */  sw         $fp, 0x38($sp)
    /* 4B7A0 800A3550 AFB70034 */  sw         $s7, 0x34($sp)
    /* 4B7A4 800A3554 AFB60030 */  sw         $s6, 0x30($sp)
    /* 4B7A8 800A3558 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 4B7AC 800A355C AFB40028 */  sw         $s4, 0x28($sp)
    /* 4B7B0 800A3560 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 4B7B4 800A3564 AFB00018 */  sw         $s0, 0x18($sp)
    /* 4B7B8 800A3568 12780039 */  beq        $s3, $t8, .L800A3650
    /* 4B7BC 800A356C AC2F6B44 */   sw        $t7, %lo(D_800D6B44)($at)
    /* 4B7C0 800A3570 3C10800C */  lui        $s0, %hi(D_800BE438)
    /* 4B7C4 800A3574 3C1E800D */  lui        $fp, %hi(D_800D6F3C)
    /* 4B7C8 800A3578 3C17800C */  lui        $s7, %hi(D_800BE518)
    /* 4B7CC 800A357C 3C16800C */  lui        $s6, %hi(D_800BE534)
    /* 4B7D0 800A3580 3C15800D */  lui        $s5, %hi(D_800D6B9C)
    /* 4B7D4 800A3584 3C14800D */  lui        $s4, %hi(D_800D6B98)
    /* 4B7D8 800A3588 3C11800C */  lui        $s1, %hi(D_800BE4FC)
    /* 4B7DC 800A358C 2631E4FC */  addiu      $s1, $s1, %lo(D_800BE4FC)
    /* 4B7E0 800A3590 26946B98 */  addiu      $s4, $s4, %lo(D_800D6B98)
    /* 4B7E4 800A3594 26B56B9C */  addiu      $s5, $s5, %lo(D_800D6B9C)
    /* 4B7E8 800A3598 26D6E534 */  addiu      $s6, $s6, %lo(D_800BE534)
    /* 4B7EC 800A359C 26F7E518 */  addiu      $s7, $s7, %lo(D_800BE518)
    /* 4B7F0 800A35A0 27DE6F3C */  addiu      $fp, $fp, %lo(D_800D6F3C)
    /* 4B7F4 800A35A4 2610E438 */  addiu      $s0, $s0, %lo(D_800BE438)
  .L800A35A8:
    /* 4B7F8 800A35A8 0C028C3A */  jal        func_800A30E8
    /* 4B7FC 800A35AC 00000000 */   nop
    /* 4B800 800A35B0 0C028B57 */  jal        func_800A2D5C
    /* 4B804 800A35B4 00000000 */   nop
    /* 4B808 800A35B8 8E190000 */  lw         $t9, 0x0($s0)
    /* 4B80C 800A35BC 8E080004 */  lw         $t0, 0x4($s0)
    /* 4B810 800A35C0 AE990000 */  sw         $t9, 0x0($s4)
    /* 4B814 800A35C4 0C028B5A */  jal        func_800A2D68
    /* 4B818 800A35C8 AEA80000 */   sw        $t0, 0x0($s5)
    /* 4B81C 800A35CC 8E090008 */  lw         $t1, 0x8($s0)
    /* 4B820 800A35D0 AE320000 */  sw         $s2, 0x0($s1)
    /* 4B824 800A35D4 AEF20000 */  sw         $s2, 0x0($s7)
    /* 4B828 800A35D8 AFC00000 */  sw         $zero, 0x0($fp)
    /* 4B82C 800A35DC 0C02EEE8 */  jal        func_800BBBA0
    /* 4B830 800A35E0 AEC90000 */   sw        $t1, 0x0($s6)
    /* 4B834 800A35E4 0C028B20 */  jal        func_800A2C80
    /* 4B838 800A35E8 00000000 */   nop
    /* 4B83C 800A35EC 0C028BA6 */  jal        func_800A2E98
    /* 4B840 800A35F0 00000000 */   nop
    /* 4B844 800A35F4 0C03DAB5 */  jal        func_800F6AD4
    /* 4B848 800A35F8 02402025 */   or        $a0, $s2, $zero
    /* 4B84C 800A35FC 0C029D36 */  jal        func_800A74D8
    /* 4B850 800A3600 00000000 */   nop
    /* 4B854 800A3604 3C0B800C */  lui        $t3, %hi(D_800BE4F8)
    /* 4B858 800A3608 8D6BE4F8 */  lw         $t3, %lo(D_800BE4F8)($t3)
    /* 4B85C 800A360C 24010006 */  addiu      $at, $zero, 0x6
    /* 4B860 800A3610 3C0C800D */  lui        $t4, %hi(D_800D6B6C)
    /* 4B864 800A3614 11610003 */  beq        $t3, $at, .L800A3624
    /* 4B868 800A3618 00000000 */   nop
    /* 4B86C 800A361C 8D8C6B6C */  lw         $t4, %lo(D_800D6B6C)($t4)
    /* 4B870 800A3620 164C0005 */  bne        $s2, $t4, .L800A3638
  .L800A3624:
    /* 4B874 800A3624 3C01800D */   lui       $at, %hi(D_800D6B6C)
    /* 4B878 800A3628 3C03800D */  lui        $v1, %hi(D_800D6B6C)
    /* 4B87C 800A362C AC326B6C */  sw         $s2, %lo(D_800D6B6C)($at)
    /* 4B880 800A3630 10000007 */  b          .L800A3650
    /* 4B884 800A3634 24636B6C */   addiu     $v1, $v1, %lo(D_800D6B6C)
  .L800A3638:
    /* 4B888 800A3638 8E0D000C */  lw         $t5, 0xC($s0)
    /* 4B88C 800A363C 2610000C */  addiu      $s0, $s0, 0xC
    /* 4B890 800A3640 166DFFD9 */  bne        $s3, $t5, .L800A35A8
    /* 4B894 800A3644 00000000 */   nop
    /* 4B898 800A3648 3C03800D */  lui        $v1, %hi(D_800D6B6C)
    /* 4B89C 800A364C 24636B6C */  addiu      $v1, $v1, %lo(D_800D6B6C)
  .L800A3650:
    /* 4B8A0 800A3650 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 4B8A4 800A3654 24010002 */  addiu      $at, $zero, 0x2
    /* 4B8A8 800A3658 2418001A */  addiu      $t8, $zero, 0x1A
    /* 4B8AC 800A365C 15C1000A */  bne        $t6, $at, .L800A3688
    /* 4B8B0 800A3660 3C0140C0 */   lui       $at, (0x40C00000 >> 16)
    /* 4B8B4 800A3664 44813000 */  mtc1       $at, $f6
    /* 4B8B8 800A3668 3C01800D */  lui        $at, %hi(gKirbyHp)
    /* 4B8BC 800A366C C4286E50 */  lwc1       $f8, %lo(gKirbyHp)($at)
    /* 4B8C0 800A3670 240F0003 */  addiu      $t7, $zero, 0x3
    /* 4B8C4 800A3674 46083032 */  c.eq.s     $f6, $f8
    /* 4B8C8 800A3678 00000000 */  nop
    /* 4B8CC 800A367C 45020003 */  bc1fl      .L800A368C
    /* 4B8D0 800A3680 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 4B8D4 800A3684 AC6F0000 */  sw         $t7, 0x0($v1)
  .L800A3688:
    /* 4B8D8 800A3688 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800A368C:
    /* 4B8DC 800A368C 3C01800C */  lui        $at, %hi(gGameState)
    /* 4B8E0 800A3690 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4B8E4 800A3694 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 4B8E8 800A3698 8FB20020 */  lw         $s2, 0x20($sp)
    /* 4B8EC 800A369C 8FB30024 */  lw         $s3, 0x24($sp)
    /* 4B8F0 800A36A0 8FB40028 */  lw         $s4, 0x28($sp)
    /* 4B8F4 800A36A4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 4B8F8 800A36A8 8FB60030 */  lw         $s6, 0x30($sp)
    /* 4B8FC 800A36AC 8FB70034 */  lw         $s7, 0x34($sp)
    /* 4B900 800A36B0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 4B904 800A36B4 AC38E4F0 */  sw         $t8, %lo(gGameState)($at)
    /* 4B908 800A36B8 03E00008 */  jr         $ra
    /* 4B90C 800A36BC 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800A34C8
.size func_800A34C8, . - func_800A34C8
