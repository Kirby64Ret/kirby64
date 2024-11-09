glabel draw_kirby_lives
/* 0658B0 800BD660 3C03800D */  lui   $v1, %hi(D_800D6EA0) # $v1, 0x800d
/* 0658B4 800BD664 24636EA0 */  addiu $v1, %lo(D_800D6EA0) # addiu $v1, $v1, 0x6ea0
/* 0658B8 800BD668 3C02800D */  lui   $v0, %hi(D_800D6E88) # $v0, 0x800d
/* 0658BC 800BD66C 8C426E88 */  lw    $v0, %lo(D_800D6E88)($v0)
/* 0658C0 800BD670 8C6E0000 */  lw    $t6, ($v1)
/* 0658C4 800BD674 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0658C8 800BD678 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0658CC 800BD67C 104E0014 */  beq   $v0, $t6, .L800BD6D0_ovl1
/* 0658D0 800BD680 2446FFFF */   addiu $a2, $v0, -1
/* 0658D4 800BD684 28C10064 */  slti  $at, $a2, 0x64
/* 0658D8 800BD688 14200002 */  bnez  $at, .L800BD694_ovl1
/* 0658DC 800BD68C AC620000 */   sw    $v0, ($v1)
/* 0658E0 800BD690 24060063 */  li    $a2, 99
.L800BD694_ovl1:
/* 0658E4 800BD694 04C10002 */  bgez  $a2, .L800BD6A0_ovl1
/* 0658E8 800BD698 2401000A */   li    $at, 10
/* 0658EC 800BD69C 00003025 */  move  $a2, $zero
.L800BD6A0_ovl1:
/* 0658F0 800BD6A0 00C1001A */  div   $zero, $a2, $at
/* 0658F4 800BD6A4 00002812 */  mflo  $a1
/* 0658F8 800BD6A8 24040022 */  li    $a0, 34
/* 0658FC 800BD6AC 0C02F3F6 */  jal   draw_lives_digit
/* 065900 800BD6B0 AFA60018 */   sw    $a2, 0x18($sp)
/* 065904 800BD6B4 8FA60018 */  lw    $a2, 0x18($sp)
/* 065908 800BD6B8 2401000A */  li    $at, 10
/* 06590C 800BD6BC 24040034 */  li    $a0, 52
/* 065910 800BD6C0 00C1001A */  div   $zero, $a2, $at
/* 065914 800BD6C4 00002810 */  mfhi  $a1
/* 065918 800BD6C8 0C02F3F6 */  jal   draw_lives_digit
/* 06591C 800BD6CC 00000000 */   nop   
.L800BD6D0_ovl1:
/* 065920 800BD6D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 065924 800BD6D4 27BD0020 */  addiu $sp, $sp, 0x20
/* 065928 800BD6D8 03E00008 */  jr    $ra
/* 06592C 800BD6DC 00000000 */   nop   
.size draw_kirby_lives, . - draw_kirby_lives
