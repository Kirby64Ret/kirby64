glabel func_80000A44
/* 001644 80000A44 3C078005 */  lui   $a3, %hi(D_80048C5C) # $a3, 0x8005
/* 001648 80000A48 24E78C5C */  addiu $a3, %lo(D_80048C5C) # addiu $a3, $a3, -0x73a4
/* 00164C 80000A4C 8CEE0000 */  lw    $t6, ($a3)
/* 001650 80000A50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 001654 80000A54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001658 80000A58 11C00003 */  beqz  $t6, .L80000A68_ovl0
/* 00165C 80000A5C AFA40028 */   sw    $a0, 0x28($sp)
/* 001660 80000A60 1000003C */  b     .L80000B54_ovl0
/* 001664 80000A64 24020001 */   li    $v0, 1
.L80000A68_ovl0:
/* 001668 80000A68 3C0F8005 */  lui   $t7, %hi(D_80048C60) # $t7, 0x8005
/* 00166C 80000A6C 8DEF8C60 */  lw    $t7, %lo(D_80048C60)($t7)
/* 001670 80000A70 11E00003 */  beqz  $t7, .L80000A80_ovl0
/* 001674 80000A74 00000000 */   nop   
/* 001678 80000A78 10000036 */  b     .L80000B54_ovl0
/* 00167C 80000A7C 00001025 */   move  $v0, $zero
.L80000A80_ovl0:
/* 001680 80000A80 0C00C104 */  jal   osViGetNextFramebuffer
/* 001684 80000A84 00000000 */   nop   
/* 001688 80000A88 0C00E46C */  jal   osViGetCurrentFramebuffer
/* 00168C 80000A8C AFA2001C */   sw    $v0, 0x1c($sp)
/* 001690 80000A90 8FB80028 */  lw    $t8, 0x28($sp)
/* 001694 80000A94 3C078005 */  lui   $a3, %hi(D_80048C5C) # $a3, 0x8005
/* 001698 80000A98 2401FFFF */  li    $at, -1
/* 00169C 80000A9C 8F030070 */  lw    $v1, 0x70($t8)
/* 0016A0 80000AA0 24E78C5C */  addiu $a3, %lo(D_80048C5C) # addiu $a3, $a3, -0x73a4
/* 0016A4 80000AA4 8FA6001C */  lw    $a2, 0x1c($sp)
/* 0016A8 80000AA8 10610013 */  beq   $v1, $at, .L80000AF8_ovl0
/* 0016AC 80000AAC 0003C880 */   sll   $t9, $v1, 2
/* 0016B0 80000AB0 3C048005 */ lui $a0, %hi(D_80048C50)
/* 0016B4 80000AB4 00992021 */  addu  $a0, $a0, $t9
/* 0016B8 80000AB8 8C848C50 */ lw $a0, %lo(D_80048C50)($a0)
/* 0016BC 80000ABC 1080000E */  beqz  $a0, .L80000AF8_ovl0
/* 0016C0 80000AC0 00000000 */   nop   
/* 0016C4 80000AC4 1044000C */  beq   $v0, $a0, .L80000AF8_ovl0
/* 0016C8 80000AC8 00000000 */   nop   
/* 0016CC 80000ACC 10C4000A */  beq   $a2, $a0, .L80000AF8_ovl0
/* 0016D0 80000AD0 3C018005 */   lui   $at, %hi(D_80048C60) # $at, 0x8005
/* 0016D4 80000AD4 ACE40000 */  sw    $a0, ($a3)
/* 0016D8 80000AD8 AC248C60 */  sw    $a0, %lo(D_80048C60)($at)
/* 0016DC 80000ADC 3C018005 */  lui   $at, %hi(D_80048C88) # $at, 0x8005
/* 0016E0 80000AE0 0C00C534 */  jal   osGetCount
/* 0016E4 80000AE4 AC208C88 */   sw    $zero, %lo(D_80048C88)($at)
/* 0016E8 80000AE8 3C018005 */  lui   $at, %hi(D_80048C6C) # $at, 0x8005
/* 0016EC 80000AEC AC228C6C */  sw    $v0, %lo(D_80048C6C)($at)
/* 0016F0 80000AF0 10000018 */  b     .L80000B54_ovl0
/* 0016F4 80000AF4 24020001 */   li    $v0, 1
.L80000AF8_ovl0:
/* 0016F8 80000AF8 3C038005 */  lui   $v1, %hi(D_80048C50) # $v1, 0x8005
/* 0016FC 80000AFC 3C058005 */  lui   $a1, %hi(D_80048C5C) # $a1, 0x8005
/* 001700 80000B00 24A58C5C */  addiu $a1, %lo(D_80048C5C) # addiu $a1, $a1, -0x73a4
/* 001704 80000B04 24638C50 */  addiu $v1, %lo(D_80048C50) # addiu $v1, $v1, -0x73b0
/* 001708 80000B08 8C640000 */  lw    $a0, ($v1)
.L80000B0C_ovl0:
/* 00170C 80000B0C 24630004 */  addiu $v1, $v1, 4
/* 001710 80000B10 1080000D */  beqz  $a0, .L80000B48_ovl0
/* 001714 80000B14 00000000 */   nop   
/* 001718 80000B18 1044000B */  beq   $v0, $a0, .L80000B48_ovl0
/* 00171C 80000B1C 00000000 */   nop   
/* 001720 80000B20 10C40009 */  beq   $a2, $a0, .L80000B48_ovl0
/* 001724 80000B24 00000000 */   nop   
/* 001728 80000B28 ACE40000 */  sw    $a0, ($a3)
/* 00172C 80000B2C 3C018005 */  lui   $at, %hi(D_80048C88) # $at, 0x8005
/* 001730 80000B30 0C00C534 */  jal   osGetCount
/* 001734 80000B34 AC208C88 */   sw    $zero, %lo(D_80048C88)($at)
/* 001738 80000B38 3C018005 */  lui   $at, %hi(D_80048C6C) # $at, 0x8005
/* 00173C 80000B3C AC228C6C */  sw    $v0, %lo(D_80048C6C)($at)
/* 001740 80000B40 10000004 */  b     .L80000B54_ovl0
/* 001744 80000B44 24020001 */   li    $v0, 1
.L80000B48_ovl0:
/* 001748 80000B48 5465FFF0 */  bnel  $v1, $a1, .L80000B0C_ovl0
/* 00174C 80000B4C 8C640000 */   lw    $a0, ($v1)
/* 001750 80000B50 00001025 */  move  $v0, $zero
.L80000B54_ovl0:
/* 001754 80000B54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001758 80000B58 27BD0028 */  addiu $sp, $sp, 0x28
/* 00175C 80000B5C 03E00008 */  jr    $ra
/* 001760 80000B60 00000000 */   nop   
.type func_80000A44, @function
.size func_80000A44, . - func_80000A44
