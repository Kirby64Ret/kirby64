.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel _allocatePVoice
/* 02B6E0 8002AAE0 3C028004 */  lui   $v0, %hi(n_syn) # $v0, 0x8004
/* 02B6E4 8002AAE4 8C42FB14 */  lw    $v0, %lo(n_syn)($v0)
/* 02B6E8 8002AAE8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02B6EC 8002AAEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 02B6F0 8002AAF0 AFA5002C */  sw    $a1, 0x2c($sp)
/* 02B6F4 8002AAF4 8C460020 */  lw    $a2, 0x20($v0)
/* 02B6F8 8002AAF8 00052C00 */  sll   $a1, $a1, 0x10
/* 02B6FC 8002AAFC 00052C03 */  sra   $a1, $a1, 0x10
/* 02B700 8002AB00 00803825 */  move  $a3, $a0
/* 02B704 8002AB04 10C0000D */  beqz  $a2, .L8002AB3C_ovl0
/* 02B708 8002AB08 00001825 */   move  $v1, $zero
/* 02B70C 8002AB0C AC860000 */  sw    $a2, ($a0)
/* 02B710 8002AB10 AFA60024 */  sw    $a2, 0x24($sp)
/* 02B714 8002AB14 AFA0001C */  sw    $zero, 0x1c($sp)
/* 02B718 8002AB18 0C0097DD */  jal   alUnlink
/* 02B71C 8002AB1C 00C02025 */   move  $a0, $a2
/* 02B720 8002AB20 3C058004 */  lui   $a1, %hi(n_syn) # $a1, 0x8004
/* 02B724 8002AB24 8CA5FB14 */  lw    $a1, %lo(n_syn)($a1)
/* 02B728 8002AB28 8FA40024 */  lw    $a0, 0x24($sp)
/* 02B72C 8002AB2C 0C0097D4 */  jal   alLink
/* 02B730 8002AB30 24A50018 */   addiu $a1, $a1, 0x18
/* 02B734 8002AB34 10000021 */  b     .L8002ABBC_ovl0
/* 02B738 8002AB38 8FA3001C */   lw    $v1, 0x1c($sp)
.L8002AB3C_ovl0:
/* 02B73C 8002AB3C 8C460010 */  lw    $a2, 0x10($v0)
/* 02B740 8002AB40 10C0000C */  beqz  $a2, .L8002AB74_ovl0
/* 02B744 8002AB44 00C02025 */   move  $a0, $a2
/* 02B748 8002AB48 ACE60000 */  sw    $a2, ($a3)
/* 02B74C 8002AB4C AFA60024 */  sw    $a2, 0x24($sp)
/* 02B750 8002AB50 0C0097DD */  jal   alUnlink
/* 02B754 8002AB54 AFA3001C */   sw    $v1, 0x1c($sp)
/* 02B758 8002AB58 3C058004 */  lui   $a1, %hi(n_syn) # $a1, 0x8004
/* 02B75C 8002AB5C 8CA5FB14 */  lw    $a1, %lo(n_syn)($a1)
/* 02B760 8002AB60 8FA40024 */  lw    $a0, 0x24($sp)
/* 02B764 8002AB64 0C0097D4 */  jal   alLink
/* 02B768 8002AB68 24A50018 */   addiu $a1, $a1, 0x18
/* 02B76C 8002AB6C 10000013 */  b     .L8002ABBC_ovl0
/* 02B770 8002AB70 8FA3001C */   lw    $v1, 0x1c($sp)
.L8002AB74_ovl0:
/* 02B774 8002AB74 8C460018 */  lw    $a2, 0x18($v0)
/* 02B778 8002AB78 50C00011 */  beql  $a2, $zero, .L8002ABC0_ovl0
/* 02B77C 8002AB7C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B780 8002AB80 8CCE0008 */  lw    $t6, 8($a2)
.L8002AB84_ovl0:
/* 02B784 8002AB84 85CF0016 */  lh    $t7, 0x16($t6)
/* 02B788 8002AB88 00AF082A */  slt   $at, $a1, $t7
/* 02B78C 8002AB8C 54200009 */  bnezl $at, .L8002ABB4_ovl0
/* 02B790 8002AB90 8CC60000 */   lw    $a2, ($a2)
/* 02B794 8002AB94 8CD80088 */  lw    $t8, 0x88($a2)
/* 02B798 8002AB98 57000006 */  bnezl $t8, .L8002ABB4_ovl0
/* 02B79C 8002AB9C 8CC60000 */   lw    $a2, ($a2)
/* 02B7A0 8002ABA0 ACE60000 */  sw    $a2, ($a3)
/* 02B7A4 8002ABA4 8CD90008 */  lw    $t9, 8($a2)
/* 02B7A8 8002ABA8 24030001 */  li    $v1, 1
/* 02B7AC 8002ABAC 87250016 */  lh    $a1, 0x16($t9)
/* 02B7B0 8002ABB0 8CC60000 */  lw    $a2, ($a2)
.L8002ABB4_ovl0:
/* 02B7B4 8002ABB4 54C0FFF3 */  bnezl $a2, .L8002AB84_ovl0
/* 02B7B8 8002ABB8 8CCE0008 */   lw    $t6, 8($a2)
.L8002ABBC_ovl0:
/* 02B7BC 8002ABBC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002ABC0_ovl0:
/* 02B7C0 8002ABC0 27BD0028 */  addiu $sp, $sp, 0x28
/* 02B7C4 8002ABC4 00601025 */  move  $v0, $v1
/* 02B7C8 8002ABC8 03E00008 */  jr    $ra
/* 02B7CC 8002ABCC 00000000 */   nop   
.type _allocatePVoice, @function
.size _allocatePVoice, . - _allocatePVoice

glabel n_alSynAllocVoice
/* 02B7D0 8002ABD0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 02B7D4 8002ABD4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02B7D8 8002ABD8 AFB00018 */  sw    $s0, 0x18($sp)
/* 02B7DC 8002ABDC AFA0002C */  sw    $zero, 0x2c($sp)
/* 02B7E0 8002ABE0 84AE0000 */  lh    $t6, ($a1)
/* 02B7E4 8002ABE4 00808025 */  move  $s0, $a0
/* 02B7E8 8002ABE8 A48E0016 */  sh    $t6, 0x16($a0)
/* 02B7EC 8002ABEC 90AF0004 */  lbu   $t7, 4($a1)
/* 02B7F0 8002ABF0 AC80000C */  sw    $zero, 0xc($a0)
/* 02B7F4 8002ABF4 A48F001A */  sh    $t7, 0x1a($a0)
/* 02B7F8 8002ABF8 84B80002 */  lh    $t8, 2($a1)
/* 02B7FC 8002ABFC A4800014 */  sh    $zero, 0x14($a0)
/* 02B800 8002AC00 AC800008 */  sw    $zero, 8($a0)
/* 02B804 8002AC04 A4980018 */  sh    $t8, 0x18($a0)
/* 02B808 8002AC08 84A50000 */  lh    $a1, ($a1)
/* 02B80C 8002AC0C 0C00AAB8 */  jal   _allocatePVoice
/* 02B810 8002AC10 27A4002C */   addiu $a0, $sp, 0x2c
/* 02B814 8002AC14 8FB9002C */  lw    $t9, 0x2c($sp)
/* 02B818 8002AC18 53200036 */  beql  $t9, $zero, .L8002ACF4_ovl0
/* 02B81C 8002AC1C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 02B820 8002AC20 1040002E */  beqz  $v0, .L8002ACDC_ovl0
/* 02B824 8002AC24 8FAF002C */   lw    $t7, 0x2c($sp)
/* 02B828 8002AC28 24080200 */  li    $t0, 512
/* 02B82C 8002AC2C AF280088 */  sw    $t0, 0x88($t9)
/* 02B830 8002AC30 8FA9002C */  lw    $t1, 0x2c($sp)
/* 02B834 8002AC34 8D2A0008 */  lw    $t2, 8($t1)
/* 02B838 8002AC38 AD400008 */  sw    $zero, 8($t2)
/* 02B83C 8002AC3C 8FAB002C */  lw    $t3, 0x2c($sp)
/* 02B840 8002AC40 AD700008 */  sw    $s0, 8($t3)
/* 02B844 8002AC44 8FAC002C */  lw    $t4, 0x2c($sp)
/* 02B848 8002AC48 0C00A642 */  jal   __n_allocParam
/* 02B84C 8002AC4C AE0C0008 */   sw    $t4, 8($s0)
/* 02B850 8002AC50 1040000F */  beqz  $v0, .L8002AC90_ovl0
/* 02B854 8002AC54 00403025 */   move  $a2, $v0
/* 02B858 8002AC58 3C0D8004 */  lui   $t5, %hi(n_syn) # $t5, 0x8004
/* 02B85C 8002AC5C 8DADFB14 */  lw    $t5, %lo(n_syn)($t5)
/* 02B860 8002AC60 240F000B */  li    $t7, 11
/* 02B864 8002AC64 24050003 */  li    $a1, 3
/* 02B868 8002AC68 8DAE0028 */  lw    $t6, 0x28($t5)
/* 02B86C 8002AC6C A44F0008 */  sh    $t7, 8($v0)
/* 02B870 8002AC70 AC40000C */  sw    $zero, 0xc($v0)
/* 02B874 8002AC74 AC4E0004 */  sw    $t6, 4($v0)
/* 02B878 8002AC78 8FB8002C */  lw    $t8, 0x2c($sp)
/* 02B87C 8002AC7C 8F080088 */  lw    $t0, 0x88($t8)
/* 02B880 8002AC80 2519FFC0 */  addiu $t9, $t0, -0x40
/* 02B884 8002AC84 AC590010 */  sw    $t9, 0x10($v0)
/* 02B888 8002AC88 0C009D48 */  jal   n_alEnvmixerParam
/* 02B88C 8002AC8C 8E040008 */   lw    $a0, 8($s0)
.L8002AC90_ovl0:
/* 02B890 8002AC90 0C00A642 */  jal   __n_allocParam
/* 02B894 8002AC94 00000000 */   nop   
/* 02B898 8002AC98 10400015 */  beqz  $v0, .L8002ACF0_ovl0
/* 02B89C 8002AC9C 00403025 */   move  $a2, $v0
/* 02B8A0 8002ACA0 3C098004 */  lui   $t1, %hi(n_syn) # $t1, 0x8004
/* 02B8A4 8002ACA4 8D29FB14 */  lw    $t1, %lo(n_syn)($t1)
/* 02B8A8 8002ACA8 8FAB002C */  lw    $t3, 0x2c($sp)
/* 02B8AC 8002ACAC 240E000F */  li    $t6, 15
/* 02B8B0 8002ACB0 8D2A0028 */  lw    $t2, 0x28($t1)
/* 02B8B4 8002ACB4 8D6C0088 */  lw    $t4, 0x88($t3)
/* 02B8B8 8002ACB8 A44E0008 */  sh    $t6, 8($v0)
/* 02B8BC 8002ACBC AC400000 */  sw    $zero, ($v0)
/* 02B8C0 8002ACC0 014C6821 */  addu  $t5, $t2, $t4
/* 02B8C4 8002ACC4 AC4D0004 */  sw    $t5, 4($v0)
/* 02B8C8 8002ACC8 8E040008 */  lw    $a0, 8($s0)
/* 02B8CC 8002ACCC 0C009D48 */  jal   n_alEnvmixerParam
/* 02B8D0 8002ACD0 24050003 */   li    $a1, 3
/* 02B8D4 8002ACD4 10000007 */  b     .L8002ACF4_ovl0
/* 02B8D8 8002ACD8 8FBF001C */   lw    $ra, 0x1c($sp)
.L8002ACDC_ovl0:
/* 02B8DC 8002ACDC ADE00088 */  sw    $zero, 0x88($t7)
/* 02B8E0 8002ACE0 8FB8002C */  lw    $t8, 0x2c($sp)
/* 02B8E4 8002ACE4 AF100008 */  sw    $s0, 8($t8)
/* 02B8E8 8002ACE8 8FA8002C */  lw    $t0, 0x2c($sp)
/* 02B8EC 8002ACEC AE080008 */  sw    $t0, 8($s0)
.L8002ACF0_ovl0:
/* 02B8F0 8002ACF0 8FBF001C */  lw    $ra, 0x1c($sp)
.L8002ACF4_ovl0:
/* 02B8F4 8002ACF4 8FA2002C */  lw    $v0, 0x2c($sp)
/* 02B8F8 8002ACF8 8FB00018 */  lw    $s0, 0x18($sp)
/* 02B8FC 8002ACFC 27BD0030 */  addiu $sp, $sp, 0x30
/* 02B900 8002AD00 03E00008 */  jr    $ra
/* 02B904 8002AD04 0002102B */   sltu  $v0, $zero, $v0
/* 02B908 8002AD08 00000000 */  nop   
/* 02B90C 8002AD0C 00000000 */  nop   
.type n_alSynAllocVoice, @function
.size n_alSynAllocVoice, . - n_alSynAllocVoice