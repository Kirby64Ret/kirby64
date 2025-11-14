glabel func_800BD92C
/* 065B7C 800BD92C 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 065B80 800BD930 C4266E5C */  lwc1  $f6, %lo(D_800D6E5C)($at)
/* 065B84 800BD934 44802000 */  mtc1  $zero, $f4
/* 065B88 800BD938 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 065B8C 800BD93C AFBF0024 */  sw    $ra, 0x24($sp)
/* 065B90 800BD940 46062032 */  c.eq.s $f4, $f6
/* 065B94 800BD944 AFB20020 */  sw    $s2, 0x20($sp)
/* 065B98 800BD948 AFB1001C */  sw    $s1, 0x1c($sp)
/* 065B9C 800BD94C AFB00018 */  sw    $s0, 0x18($sp)
/* 065BA0 800BD950 45000004 */  bc1f  .L800BD964_ovl1
/* 065BA4 800BD954 3C04800D */   lui   $a0, %hi(D_800D6EB8) # $a0, 0x800d
/* 065BA8 800BD958 24846EB8 */  addiu $a0, %lo(D_800D6EB8) # addiu $a0, $a0, 0x6eb8
/* 065BAC 800BD95C 1000004C */  b     .L800BDA90_ovl1
/* 065BB0 800BD960 AC800000 */   sw    $zero, ($a0)
.L800BD964_ovl1:
/* 065BB4 800BD964 3C12800D */  lui   $s2, %hi(D_800D6EAC) # $s2, 0x800d
/* 065BB8 800BD968 26526EAC */  addiu $s2, %lo(D_800D6EAC) # addiu $s2, $s2, 0x6eac
/* 065BBC 800BD96C 3C05800D */  lui   $a1, %hi(D_800D6E94) # $a1, 0x800d
/* 065BC0 800BD970 8CA56E94 */  lw    $a1, %lo(D_800D6E94)($a1)
/* 065BC4 800BD974 8E430000 */  lw    $v1, ($s2)
/* 065BC8 800BD978 14650009 */  bne   $v1, $a1, .L800BD9A0_ovl1
/* 065BCC 800BD97C 3C06800D */   lui   $a2, %hi(D_800D6E9C) # $a2, 0x800d
/* 065BD0 800BD980 24C66E9C */  addiu $a2, %lo(D_800D6E9C) # addiu $a2, $a2, 0x6e9c
/* 065BD4 800BD984 8CCE0000 */  lw    $t6, ($a2)
/* 065BD8 800BD988 3C04800D */  lui   $a0, %hi(D_800D6EB8) # $a0, 0x800d
/* 065BDC 800BD98C 24846EB8 */  addiu $a0, %lo(D_800D6EB8) # addiu $a0, $a0, 0x6eb8
/* 065BE0 800BD990 11C00003 */  beqz  $t6, .L800BD9A0_ovl1
/* 065BE4 800BD994 00000000 */   nop   
/* 065BE8 800BD998 1000003D */  b     .L800BDA90_ovl1
/* 065BEC 800BD99C AC800000 */   sw    $zero, ($a0)
.L800BD9A0_ovl1:
/* 065BF0 800BD9A0 3C04800D */  lui   $a0, %hi(D_800D6EB8) # $a0, 0x800d
/* 065BF4 800BD9A4 24846EB8 */  addiu $a0, %lo(D_800D6EB8) # addiu $a0, $a0, 0x6eb8
/* 065BF8 800BD9A8 8C8F0000 */  lw    $t7, ($a0)
/* 065BFC 800BD9AC 3C06800D */  lui   $a2, %hi(D_800D6E9C) # $a2, 0x800d
/* 065C00 800BD9B0 24C66E9C */  addiu $a2, %lo(D_800D6E9C) # addiu $a2, $a2, 0x6e9c
/* 065C04 800BD9B4 25E20001 */  addiu $v0, $t7, 1
/* 065C08 800BD9B8 28410003 */  slti  $at, $v0, 3
/* 065C0C 800BD9BC 14200003 */  bnez  $at, .L800BD9CC_ovl1
/* 065C10 800BD9C0 AC820000 */   sw    $v0, ($a0)
/* 065C14 800BD9C4 24020001 */  li    $v0, 1
/* 065C18 800BD9C8 AC820000 */  sw    $v0, ($a0)
.L800BD9CC_ovl1:
/* 065C1C 800BD9CC 24010001 */  li    $at, 1
/* 065C20 800BD9D0 54410030 */  bnel  $v0, $at, .L800BDA94_ovl1
/* 065C24 800BD9D4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 065C28 800BD9D8 14A0000C */  bnez  $a1, .L800BDA0C_ovl1
/* 065C2C 800BD9DC 00008025 */   move  $s0, $zero
/* 065C30 800BD9E0 2411001E */  li    $s1, 30
/* 065C34 800BD9E4 02002025 */  move  $a0, $s0
.L800BD9E8_ovl1:
/* 065C38 800BD9E8 0C02F482 */  jal   func_800BD208
/* 065C3C 800BD9EC 00002825 */   move  $a1, $zero
/* 065C40 800BD9F0 26100001 */  addiu $s0, $s0, 1
/* 065C44 800BD9F4 5611FFFC */  bnel  $s0, $s1, .L800BD9E8_ovl1
/* 065C48 800BD9F8 02002025 */   move  $a0, $s0
/* 065C4C 800BD9FC 3C01800D */  lui   $at, %hi(D_800D6E94) # $at, 0x800d
/* 065C50 800BDA00 AC206E94 */  sw    $zero, %lo(D_800D6E94)($at)
/* 065C54 800BDA04 10000022 */  b     .L800BDA90_ovl1
/* 065C58 800BDA08 AE400000 */   sw    $zero, ($s2)
.L800BDA0C_ovl1:
/* 065C5C 800BDA0C 8CC80000 */  lw    $t0, ($a2)
/* 065C60 800BDA10 00A3082A */  slt   $at, $a1, $v1
/* 065C64 800BDA14 15000010 */  bnez  $t0, .L800BDA58_ovl1
/* 065C68 800BDA18 00000000 */   nop   
/* 065C6C 800BDA1C 0C029D9E */  jal   play_sound
/* 065C70 800BDA20 240400D3 */   li    $a0, 211
/* 065C74 800BDA24 8E490000 */  lw    $t1, ($s2)
/* 065C78 800BDA28 3C06800D */  lui   $a2, %hi(D_800D6E9C) # $a2, 0x800d
/* 065C7C 800BDA2C 2411001E */  li    $s1, 30
/* 065C80 800BDA30 252A0001 */  addiu $t2, $t1, 1
/* 065C84 800BDA34 24C66E9C */  addiu $a2, %lo(D_800D6E9C) # addiu $a2, $a2, 0x6e9c
/* 065C88 800BDA38 24050001 */  li    $a1, 1
/* 065C8C 800BDA3C AE4A0000 */  sw    $t2, ($s2)
/* 065C90 800BDA40 162A0011 */  bne   $s1, $t2, .L800BDA88_ovl1
/* 065C94 800BDA44 2550FFFF */   addiu $s0, $t2, -1
/* 065C98 800BDA48 8CCB0000 */  lw    $t3, ($a2)
/* 065C9C 800BDA4C 256C0001 */  addiu $t4, $t3, 1
/* 065CA0 800BDA50 1000000D */  b     .L800BDA88_ovl1
/* 065CA4 800BDA54 ACCC0000 */   sw    $t4, ($a2)
.L800BDA58_ovl1:
/* 065CA8 800BDA58 10200004 */  beqz  $at, .L800BDA6C_ovl1
/* 065CAC 800BDA5C 00002825 */   move  $a1, $zero
/* 065CB0 800BDA60 2470FFFF */  addiu $s0, $v1, -1
/* 065CB4 800BDA64 10000008 */  b     .L800BDA88_ovl1
/* 065CB8 800BDA68 AE500000 */   sw    $s0, ($s2)
.L800BDA6C_ovl1:
/* 065CBC 800BDA6C 0C029D9E */  jal   play_sound
/* 065CC0 800BDA70 240400D3 */   li    $a0, 211
/* 065CC4 800BDA74 8E4D0000 */  lw    $t5, ($s2)
/* 065CC8 800BDA78 24050001 */  li    $a1, 1
/* 065CCC 800BDA7C 25AE0001 */  addiu $t6, $t5, 1
/* 065CD0 800BDA80 AE4E0000 */  sw    $t6, ($s2)
/* 065CD4 800BDA84 25D0FFFF */  addiu $s0, $t6, -1
.L800BDA88_ovl1:
/* 065CD8 800BDA88 0C02F482 */  jal   func_800BD208
/* 065CDC 800BDA8C 02002025 */   move  $a0, $s0
.L800BDA90_ovl1:
/* 065CE0 800BDA90 8FBF0024 */  lw    $ra, 0x24($sp)
.L800BDA94_ovl1:
/* 065CE4 800BDA94 8FB00018 */  lw    $s0, 0x18($sp)
/* 065CE8 800BDA98 8FB1001C */  lw    $s1, 0x1c($sp)
/* 065CEC 800BDA9C 8FB20020 */  lw    $s2, 0x20($sp)
/* 065CF0 800BDAA0 03E00008 */  jr    $ra
/* 065CF4 800BDAA4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800BD92C, @function
.size func_800BD92C, . - func_800BD92C
