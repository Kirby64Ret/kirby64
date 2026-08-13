nonmatching func_801841C0_ovl5, 0x1E0

glabel func_801841C0_ovl5
    /* 12B630 801841C0 3C028019 */  lui        $v0, %hi(D_8018EE48_ovl5)
    /* 12B634 801841C4 8C42EE48 */  lw         $v0, %lo(D_8018EE48_ovl5)($v0)
    /* 12B638 801841C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 12B63C 801841CC AFB00014 */  sw         $s0, 0x14($sp)
    /* 12B640 801841D0 2401029A */  addiu      $at, $zero, 0x29A
    /* 12B644 801841D4 00808025 */  or         $s0, $a0, $zero
    /* 12B648 801841D8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 12B64C 801841DC 1041000C */  beq        $v0, $at, .L80184210_ovl5
    /* 12B650 801841E0 AFB10018 */   sw        $s1, 0x18($sp)
    /* 12B654 801841E4 3C11800F */  lui        $s1, %hi(D_800E98E0)
    /* 12B658 801841E8 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
    /* 12B65C 801841EC 00027080 */  sll        $t6, $v0, 2
    /* 12B660 801841F0 022E7821 */  addu       $t7, $s1, $t6
    /* 12B664 801841F4 8DF80000 */  lw         $t8, 0x0($t7)
    /* 12B668 801841F8 14980005 */  bne        $a0, $t8, .L80184210_ovl5
    /* 12B66C 801841FC 00000000 */   nop
    /* 12B670 80184200 0C029D9E */  jal        play_sound
    /* 12B674 80184204 2404026B */   addiu     $a0, $zero, 0x26B
    /* 12B678 80184208 10000061 */  b          .L80184390_ovl5
    /* 12B67C 8018420C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L80184210_ovl5:
    /* 12B680 80184210 3C11800F */  lui        $s1, %hi(D_800E98E0)
    /* 12B684 80184214 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
    /* 12B688 80184218 0C029D9E */  jal        play_sound
    /* 12B68C 8018421C 240400EE */   addiu     $a0, $zero, 0xEE
    /* 12B690 80184220 0C06103C */  jal        func_801840F0_ovl5
    /* 12B694 80184224 00000000 */   nop
    /* 12B698 80184228 2404000F */  addiu      $a0, $zero, 0xF
    /* 12B69C 8018422C 00002825 */  or         $a1, $zero, $zero
    /* 12B6A0 80184230 0C02BB1C */  jal        request_track_3
    /* 12B6A4 80184234 24060070 */   addiu     $a2, $zero, 0x70
    /* 12B6A8 80184238 00021880 */  sll        $v1, $v0, 2
    /* 12B6AC 8018423C 02234021 */  addu       $t0, $s1, $v1
    /* 12B6B0 80184240 24190003 */  addiu      $t9, $zero, 0x3
    /* 12B6B4 80184244 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 12B6B8 80184248 AD190000 */  sw         $t9, 0x0($t0)
    /* 12B6BC 8018424C 00230821 */  addu       $at, $at, $v1
    /* 12B6C0 80184250 AC309C60 */  sw         $s0, %lo(D_800E9C60)($at)
    /* 12B6C4 80184254 2404000F */  addiu      $a0, $zero, 0xF
    /* 12B6C8 80184258 00002825 */  or         $a1, $zero, $zero
    /* 12B6CC 8018425C 0C02BB02 */  jal        request_track_general
    /* 12B6D0 80184260 24060070 */   addiu     $a2, $zero, 0x70
    /* 12B6D4 80184264 00021880 */  sll        $v1, $v0, 2
    /* 12B6D8 80184268 02235021 */  addu       $t2, $s1, $v1
    /* 12B6DC 8018426C 24090004 */  addiu      $t1, $zero, 0x4
    /* 12B6E0 80184270 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 12B6E4 80184274 AD490000 */  sw         $t1, 0x0($t2)
    /* 12B6E8 80184278 00230821 */  addu       $at, $at, $v1
    /* 12B6EC 8018427C AC309C60 */  sw         $s0, %lo(D_800E9C60)($at)
    /* 12B6F0 80184280 3C01800F */  lui        $at, %hi(D_800EA520)
    /* 12B6F4 80184284 2404029A */  addiu      $a0, $zero, 0x29A
    /* 12B6F8 80184288 00230821 */  addu       $at, $at, $v1
    /* 12B6FC 8018428C AC24A520 */  sw         $a0, %lo(D_800EA520)($at)
    /* 12B700 80184290 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 12B704 80184294 00230821 */  addu       $at, $at, $v1
    /* 12B708 80184298 AC24A360 */  sw         $a0, %lo(D_800EA360)($at)
    /* 12B70C 8018429C 24010002 */  addiu      $at, $zero, 0x2
    /* 12B710 801842A0 1601001D */  bne        $s0, $at, .L80184318_ovl5
    /* 12B714 801842A4 00403825 */   or        $a3, $v0, $zero
    /* 12B718 801842A8 2404000F */  addiu      $a0, $zero, 0xF
    /* 12B71C 801842AC 00002825 */  or         $a1, $zero, $zero
    /* 12B720 801842B0 24060070 */  addiu      $a2, $zero, 0x70
    /* 12B724 801842B4 0C02BB02 */  jal        request_track_general
    /* 12B728 801842B8 AFA2002C */   sw        $v0, 0x2C($sp)
    /* 12B72C 801842BC 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 12B730 801842C0 00026080 */  sll        $t4, $v0, 2
    /* 12B734 801842C4 022C6821 */  addu       $t5, $s1, $t4
    /* 12B738 801842C8 240B000A */  addiu      $t3, $zero, 0xA
    /* 12B73C 801842CC 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 12B740 801842D0 00071880 */  sll        $v1, $a3, 2
    /* 12B744 801842D4 ADAB0000 */  sw         $t3, 0x0($t5)
    /* 12B748 801842D8 00230821 */  addu       $at, $at, $v1
    /* 12B74C 801842DC AC22A360 */  sw         $v0, %lo(D_800EA360)($at)
    /* 12B750 801842E0 AFA30024 */  sw         $v1, 0x24($sp)
    /* 12B754 801842E4 2404000F */  addiu      $a0, $zero, 0xF
    /* 12B758 801842E8 00002825 */  or         $a1, $zero, $zero
    /* 12B75C 801842EC 0C02BB02 */  jal        request_track_general
    /* 12B760 801842F0 24060070 */   addiu     $a2, $zero, 0x70
    /* 12B764 801842F4 8FA30024 */  lw         $v1, 0x24($sp)
    /* 12B768 801842F8 00027880 */  sll        $t7, $v0, 2
    /* 12B76C 801842FC 022FC021 */  addu       $t8, $s1, $t7
    /* 12B770 80184300 240E0009 */  addiu      $t6, $zero, 0x9
    /* 12B774 80184304 3C01800F */  lui        $at, %hi(D_800EA520)
    /* 12B778 80184308 AF0E0000 */  sw         $t6, 0x0($t8)
    /* 12B77C 8018430C 00230821 */  addu       $at, $at, $v1
    /* 12B780 80184310 1000001E */  b          .L8018438C_ovl5
    /* 12B784 80184314 AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
  .L80184318_ovl5:
    /* 12B788 80184318 24010008 */  addiu      $at, $zero, 0x8
    /* 12B78C 8018431C 1601001B */  bne        $s0, $at, .L8018438C_ovl5
    /* 12B790 80184320 2404000F */   addiu     $a0, $zero, 0xF
    /* 12B794 80184324 00002825 */  or         $a1, $zero, $zero
    /* 12B798 80184328 24060070 */  addiu      $a2, $zero, 0x70
    /* 12B79C 8018432C 0C02BB02 */  jal        request_track_general
    /* 12B7A0 80184330 AFA7002C */   sw        $a3, 0x2C($sp)
    /* 12B7A4 80184334 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 12B7A8 80184338 00024080 */  sll        $t0, $v0, 2
    /* 12B7AC 8018433C 02284821 */  addu       $t1, $s1, $t0
    /* 12B7B0 80184340 2419000B */  addiu      $t9, $zero, 0xB
    /* 12B7B4 80184344 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 12B7B8 80184348 00071880 */  sll        $v1, $a3, 2
    /* 12B7BC 8018434C AD390000 */  sw         $t9, 0x0($t1)
    /* 12B7C0 80184350 00230821 */  addu       $at, $at, $v1
    /* 12B7C4 80184354 AC22A360 */  sw         $v0, %lo(D_800EA360)($at)
    /* 12B7C8 80184358 AFA30024 */  sw         $v1, 0x24($sp)
    /* 12B7CC 8018435C 2404000F */  addiu      $a0, $zero, 0xF
    /* 12B7D0 80184360 00002825 */  or         $a1, $zero, $zero
    /* 12B7D4 80184364 0C02BB02 */  jal        request_track_general
    /* 12B7D8 80184368 24060070 */   addiu     $a2, $zero, 0x70
    /* 12B7DC 8018436C 8FA30024 */  lw         $v1, 0x24($sp)
    /* 12B7E0 80184370 00026080 */  sll        $t4, $v0, 2
    /* 12B7E4 80184374 022C5821 */  addu       $t3, $s1, $t4
    /* 12B7E8 80184378 240A000C */  addiu      $t2, $zero, 0xC
    /* 12B7EC 8018437C 3C01800F */  lui        $at, %hi(D_800EA520)
    /* 12B7F0 80184380 AD6A0000 */  sw         $t2, 0x0($t3)
    /* 12B7F4 80184384 00230821 */  addu       $at, $at, $v1
    /* 12B7F8 80184388 AC22A520 */  sw         $v0, %lo(D_800EA520)($at)
  .L8018438C_ovl5:
    /* 12B7FC 8018438C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80184390_ovl5:
    /* 12B800 80184390 8FB00014 */  lw         $s0, 0x14($sp)
    /* 12B804 80184394 8FB10018 */  lw         $s1, 0x18($sp)
    /* 12B808 80184398 03E00008 */  jr         $ra
    /* 12B80C 8018439C 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_801841C0_ovl5
.size func_801841C0_ovl5, . - func_801841C0_ovl5
