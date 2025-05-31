glabel func_8001E7A4
/* 01F3A4 8001E7A4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01F3A8 8001E7A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01F3AC 8001E7AC AFB00018 */  sw    $s0, 0x18($sp)
/* 01F3B0 8001E7B0 AFA00024 */  sw    $zero, 0x24($sp)
/* 01F3B4 8001E7B4 8CC30004 */  lw    $v1, 4($a2)
/* 01F3B8 8001E7B8 00808025 */  move  $s0, $a0
/* 01F3BC 8001E7BC 00C03825 */  move  $a3, $a2
/* 01F3C0 8001E7C0 00037100 */  sll   $t6, $v1, 4
/* 01F3C4 8001E7C4 00CE1021 */  addu  $v0, $a2, $t6
/* 01F3C8 8001E7C8 8C490008 */  lw    $t1, 8($v0)
/* 01F3CC 8001E7CC 8C4F000C */  lw    $t7, 0xc($v0)
/* 01F3D0 8001E7D0 24420008 */  addiu $v0, $v0, 8
/* 01F3D4 8001E7D4 0089082B */  sltu  $at, $a0, $t1
/* 01F3D8 8001E7D8 1420000A */  bnez  $at, .L8001E804_ovl0
/* 01F3DC 8001E7DC 012F5021 */   addu  $t2, $t1, $t7
/* 01F3E0 8001E7E0 0085C021 */  addu  $t8, $a0, $a1
/* 01F3E4 8001E7E4 0158082B */  sltu  $at, $t2, $t8
/* 01F3E8 8001E7E8 54200007 */  bnezl $at, .L8001E808_ovl0
/* 01F3EC 8001E7EC 8CEF0000 */   lw    $t7, ($a3)
/* 01F3F0 8001E7F0 8C59000C */  lw    $t9, 0xc($v0)
/* 01F3F4 8001E7F4 03246021 */  addu  $t4, $t9, $a0
/* 01F3F8 8001E7F8 01896823 */  subu  $t5, $t4, $t1
/* 01F3FC 8001E7FC 1000002C */  b     .L8001E8B0_ovl0
/* 01F400 8001E800 AFAD002C */   sw    $t5, 0x2c($sp)
.L8001E804_ovl0:
/* 01F404 8001E804 8CEF0000 */  lw    $t7, ($a3)
.L8001E808_ovl0:
/* 01F408 8001E808 246E0001 */  addiu $t6, $v1, 1
/* 01F40C 8001E80C ACEE0004 */  sw    $t6, 4($a3)
/* 01F410 8001E810 01CF082B */  sltu  $at, $t6, $t7
/* 01F414 8001E814 14200003 */  bnez  $at, .L8001E824_ovl0
/* 01F418 8001E818 01C01825 */   move  $v1, $t6
/* 01F41C 8001E81C ACE00004 */  sw    $zero, 4($a3)
/* 01F420 8001E820 00001825 */  move  $v1, $zero
.L8001E824_ovl0:
/* 01F424 8001E824 0003C100 */  sll   $t8, $v1, 4
/* 01F428 8001E828 00F81021 */  addu  $v0, $a3, $t8
/* 01F42C 8001E82C 8C4B0014 */  lw    $t3, 0x14($v0)
/* 01F430 8001E830 32080001 */  andi  $t0, $s0, 1
/* 01F434 8001E834 AFA80024 */  sw    $t0, 0x24($sp)
/* 01F438 8001E838 8C590010 */  lw    $t9, 0x10($v0)
/* 01F43C 8001E83C 3C0A8004 */  lui   $t2, %hi(D_8003F334) # $t2, 0x8004
/* 01F440 8001E840 02088023 */  subu  $s0, $s0, $t0
/* 01F444 8001E844 254AF334 */  addiu $t2, %lo(D_8003F334) # addiu $t2, $t2, -0xccc
/* 01F448 8001E848 AC500008 */  sw    $s0, 8($v0)
/* 01F44C 8001E84C AC59000C */  sw    $t9, 0xc($v0)
/* 01F450 8001E850 8D490000 */  lw    $t1, ($t2)
/* 01F454 8001E854 3C0D8009 */  lui   $t5, %hi(D_80095F20) # $t5, 0x8009
/* 01F458 8001E858 25AD5F20 */  addiu $t5, %lo(D_80095F20) # addiu $t5, $t5, 0x5f20
/* 01F45C 8001E85C 00096080 */  sll   $t4, $t1, 2
/* 01F460 8001E860 01896023 */  subu  $t4, $t4, $t1
/* 01F464 8001E864 000C60C0 */  sll   $t4, $t4, 3
/* 01F468 8001E868 018D2821 */  addu  $a1, $t4, $t5
/* 01F46C 8001E86C 3C0F8009 */  lui   $t7, %hi(D_80095E18) # $t7, 0x8009
/* 01F470 8001E870 240E0001 */  li    $t6, 1
/* 01F474 8001E874 25EF5E18 */  addiu $t7, %lo(D_80095E18) # addiu $t7, $t7, 0x5e18
/* 01F478 8001E878 A0AE0002 */  sb    $t6, 2($a1)
/* 01F47C 8001E87C ACAF0004 */  sw    $t7, 4($a1)
/* 01F480 8001E880 ACB0000C */  sw    $s0, 0xc($a1)
/* 01F484 8001E884 ACAB0008 */  sw    $t3, 8($a1)
/* 01F488 8001E888 8C580010 */  lw    $t8, 0x10($v0)
/* 01F48C 8001E88C 3C048005 */  lui   $a0, %hi(gRomHandle) # $a0, 0x8005
/* 01F490 8001E890 25390001 */  addiu $t9, $t1, 1
/* 01F494 8001E894 ACB80010 */  sw    $t8, 0x10($a1)
/* 01F498 8001E898 8C848CF0 */  lw    $a0, %lo(gRomHandle)($a0)
/* 01F49C 8001E89C 24420008 */  addiu $v0, $v0, 8
/* 01F4A0 8001E8A0 AD590000 */  sw    $t9, ($t2)
/* 01F4A4 8001E8A4 00003025 */  move  $a2, $zero
/* 01F4A8 8001E8A8 0C00CE30 */  jal   osEPiStartDma
/* 01F4AC 8001E8AC AFAB002C */   sw    $t3, 0x2c($sp)
.L8001E8B0_ovl0:
/* 01F4B0 8001E8B0 0C00BFE8 */  jal   osVirtualToPhysical
/* 01F4B4 8001E8B4 8FA4002C */   lw    $a0, 0x2c($sp)
/* 01F4B8 8001E8B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01F4BC 8001E8BC 8FAC0024 */  lw    $t4, 0x24($sp)
/* 01F4C0 8001E8C0 8FB00018 */  lw    $s0, 0x18($sp)
/* 01F4C4 8001E8C4 27BD0030 */  addiu $sp, $sp, 0x30
/* 01F4C8 8001E8C8 03E00008 */  jr    $ra
/* 01F4CC 8001E8CC 004C1021 */   addu  $v0, $v0, $t4
.type func_8001E7A4, @function
.size func_8001E7A4, . - func_8001E7A4
