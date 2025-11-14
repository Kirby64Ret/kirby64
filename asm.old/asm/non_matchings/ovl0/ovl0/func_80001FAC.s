glabel func_80001FAC
/* 002BAC 80001FAC 3C038005 */  lui   $v1, %hi(D_80048BA4) # $v1, 0x8005
/* 002BB0 80001FB0 24638BA4 */  addiu $v1, %lo(D_80048BA4) # addiu $v1, $v1, -0x745c
/* 002BB4 80001FB4 8C6E0000 */  lw    $t6, ($v1)
/* 002BB8 80001FB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 002BBC 80001FBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 002BC0 80001FC0 15C00010 */  bnez  $t6, .L80002004_ovl0
/* 002BC4 80001FC4 3C048005 */   lui   $a0, %hi(D_80048B9C) # $a0, 0x8005
/* 002BC8 80001FC8 8C848B9C */  lw    $a0, %lo(D_80048B9C)($a0)
/* 002BCC 80001FCC 5080000E */  beql  $a0, $zero, .L80002008_ovl0
/* 002BD0 80001FD0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 002BD4 80001FD4 0C000393 */  jal   func_80000E4C
/* 002BD8 80001FD8 AC640000 */   sw    $a0, ($v1)
/* 002BDC 80001FDC 3C038005 */  lui   $v1, %hi(D_80048BA4) # $v1, 0x8005
/* 002BE0 80001FE0 24638BA4 */  addiu $v1, %lo(D_80048BA4) # addiu $v1, $v1, -0x745c
/* 002BE4 80001FE4 8C780000 */  lw    $t8, ($v1)
/* 002BE8 80001FE8 240F0002 */  li    $t7, 2
/* 002BEC 80001FEC AF0F0008 */  sw    $t7, 8($t8)
/* 002BF0 80001FF0 8C620000 */  lw    $v0, ($v1)
/* 002BF4 80001FF4 8C470078 */  lw    $a3, 0x78($v0)
/* 002BF8 80001FF8 8C440050 */  lw    $a0, 0x50($v0)
/* 002BFC 80001FFC 0C00E220 */  jal   osDpSetNextBuffer
/* 002C00 80002000 000737C3 */   sra   $a2, $a3, 0x1f
.L80002004_ovl0:
/* 002C04 80002004 8FBF0014 */  lw    $ra, 0x14($sp)
.L80002008_ovl0:
/* 002C08 80002008 27BD0018 */  addiu $sp, $sp, 0x18
/* 002C0C 8000200C 03E00008 */  jr    $ra
/* 002C10 80002010 00000000 */   nop   
.type func_80001FAC, @function
.size func_80001FAC, . - func_80001FAC
