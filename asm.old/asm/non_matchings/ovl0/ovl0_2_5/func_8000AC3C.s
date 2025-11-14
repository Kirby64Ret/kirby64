glabel omGDispatchProc
/* 00B83C 8000AC3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00B840 8000AC40 24060002 */  li    $a2, 2
/* 00B844 8000AC44 3C018004 */  lui   $at, %hi(D_8003DE54) # $at, 0x8004
/* 00B848 8000AC48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00B84C 8000AC4C AC26DE54 */  sw    $a2, %lo(D_8003DE54)($at)
/* 00B850 8000AC50 8C8E0018 */  lw    $t6, 0x18($a0)
/* 00B854 8000AC54 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 00B858 8000AC58 00803825 */  move  $a3, $a0
/* 00B85C 8000AC5C AC2EA7C4 */  sw    $t6, %lo(D_8004A7C4)($at)
/* 00B860 8000AC60 3C018005 */  lui   $at, %hi(D_8004A7D0) # $at, 0x8005
/* 00B864 8000AC64 AC24A7D0 */  sw    $a0, %lo(D_8004A7D0)($at)
/* 00B868 8000AC68 90820014 */  lbu   $v0, 0x14($a0)
/* 00B86C 8000AC6C 24010001 */  li    $at, 1
/* 00B870 8000AC70 50400006 */  beql  $v0, $zero, .L8000AC8C_ovl0
/* 00B874 8000AC74 8CE4001C */   lw    $a0, 0x1c($a3)
/* 00B878 8000AC78 50410010 */  beql  $v0, $at, .L8000ACBC_ovl0
/* 00B87C 8000AC7C 8CE40018 */   lw    $a0, 0x18($a3)
/* 00B880 8000AC80 54460015 */  bnel  $v0, $a2, .L8000ACD8_ovl0
/* 00B884 8000AC84 8CE30008 */   lw    $v1, 8($a3)
/* 00B888 8000AC88 8CE4001C */  lw    $a0, 0x1c($a3)
.L8000AC8C_ovl0:
/* 00B88C 8000AC8C AFA70020 */  sw    $a3, 0x20($sp)
/* 00B890 8000AC90 0C00E334 */  jal   osStartThread
/* 00B894 8000AC94 24840008 */   addiu $a0, $a0, 8
/* 00B898 8000AC98 3C048005 */  lui   $a0, %hi(HS64_GObjProcMesgQ) # $a0, 0x8005
/* 00B89C 8000AC9C 2484A7E0 */  addiu $a0, %lo(HS64_GObjProcMesgQ) # addiu $a0, $a0, -0x5820
/* 00B8A0 8000ACA0 00002825 */  move  $a1, $zero
/* 00B8A4 8000ACA4 0C00B540 */  jal   osRecvMesg
/* 00B8A8 8000ACA8 24060001 */   li    $a2, 1
/* 00B8AC 8000ACAC 8FA70020 */  lw    $a3, 0x20($sp)
/* 00B8B0 8000ACB0 10000008 */  b     .L8000ACD4_ovl0
/* 00B8B4 8000ACB4 24060002 */   li    $a2, 2
/* 00B8B8 8000ACB8 8CE40018 */  lw    $a0, 0x18($a3)
.L8000ACBC_ovl0:
/* 00B8BC 8000ACBC AFA70020 */  sw    $a3, 0x20($sp)
/* 00B8C0 8000ACC0 8CF9001C */  lw    $t9, 0x1c($a3)
/* 00B8C4 8000ACC4 0320F809 */  jalr  $t9
/* 00B8C8 8000ACC8 00000000 */  nop   
/* 00B8CC 8000ACCC 8FA70020 */  lw    $a3, 0x20($sp)
/* 00B8D0 8000ACD0 24060002 */  li    $a2, 2
.L8000ACD4_ovl0:
/* 00B8D4 8000ACD4 8CE30008 */  lw    $v1, 8($a3)
.L8000ACD8_ovl0:
/* 00B8D8 8000ACD8 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 00B8DC 8000ACDC AC20A7C4 */  sw    $zero, %lo(D_8004A7C4)($at)
/* 00B8E0 8000ACE0 3C018005 */  lui   $at, %hi(D_8004A7D0) # $at, 0x8005
/* 00B8E4 8000ACE4 AC20A7D0 */  sw    $zero, %lo(D_8004A7D0)($at)
/* 00B8E8 8000ACE8 3C058005 */  lui   $a1, %hi(D_8004A7D4) # $a1, 0x8005
/* 00B8EC 8000ACEC 3C018004 */  lui   $at, %hi(D_8003DE54) # $at, 0x8004
/* 00B8F0 8000ACF0 24A5A7D4 */  addiu $a1, %lo(D_8004A7D4) # addiu $a1, $a1, -0x582c
/* 00B8F4 8000ACF4 AC20DE54 */  sw    $zero, %lo(D_8003DE54)($at)
/* 00B8F8 8000ACF8 8CA20000 */  lw    $v0, ($a1)
/* 00B8FC 8000ACFC 24010001 */  li    $at, 1
/* 00B900 8000AD00 5040001D */  beql  $v0, $zero, .L8000AD78_ovl0
/* 00B904 8000AD04 8FBF0014 */   lw    $ra, 0x14($sp)
/* 00B908 8000AD08 10410016 */  beq   $v0, $at, .L8000AD64_ovl0
/* 00B90C 8000AD0C 00E02025 */   move  $a0, $a3
/* 00B910 8000AD10 10460003 */  beq   $v0, $a2, .L8000AD20_ovl0
/* 00B914 8000AD14 00000000 */   nop   
/* 00B918 8000AD18 10000016 */  b     .L8000AD74_ovl0
/* 00B91C 8000AD1C ACA00000 */   sw    $zero, ($a1)
.L8000AD20_ovl0:
/* 00B920 8000AD20 1060000B */  beqz  $v1, .L8000AD50_ovl0
/* 00B924 8000AD24 ACA00000 */   sw    $zero, ($a1)
/* 00B928 8000AD28 8CE20018 */  lw    $v0, 0x18($a3)
/* 00B92C 8000AD2C 8C6F0018 */  lw    $t7, 0x18($v1)
/* 00B930 8000AD30 544F0008 */  bnel  $v0, $t7, .L8000AD54_ovl0
/* 00B934 8000AD34 8CE40018 */   lw    $a0, 0x18($a3)
/* 00B938 8000AD38 8C630008 */  lw    $v1, 8($v1)
.L8000AD3C_ovl0:
/* 00B93C 8000AD3C 50600005 */  beql  $v1, $zero, .L8000AD54_ovl0
/* 00B940 8000AD40 8CE40018 */   lw    $a0, 0x18($a3)
/* 00B944 8000AD44 8C780018 */  lw    $t8, 0x18($v1)
/* 00B948 8000AD48 5058FFFC */  beql  $v0, $t8, .L8000AD3C_ovl0
/* 00B94C 8000AD4C 8C630008 */   lw    $v1, 8($v1)
.L8000AD50_ovl0:
/* 00B950 8000AD50 8CE40018 */  lw    $a0, 0x18($a3)
.L8000AD54_ovl0:
/* 00B954 8000AD54 0C0028A7 */  jal   func_8000A29C
/* 00B958 8000AD58 AFA3001C */   sw    $v1, 0x1c($sp)
/* 00B95C 8000AD5C 10000005 */  b     .L8000AD74_ovl0
/* 00B960 8000AD60 8FA3001C */   lw    $v1, 0x1c($sp)
.L8000AD64_ovl0:
/* 00B964 8000AD64 ACA00000 */  sw    $zero, ($a1)
/* 00B968 8000AD68 0C00236A */  jal   func_80008DA8
/* 00B96C 8000AD6C AFA3001C */   sw    $v1, 0x1c($sp)
/* 00B970 8000AD70 8FA3001C */  lw    $v1, 0x1c($sp)
.L8000AD74_ovl0:
/* 00B974 8000AD74 8FBF0014 */  lw    $ra, 0x14($sp)
.L8000AD78_ovl0:
/* 00B978 8000AD78 27BD0020 */  addiu $sp, $sp, 0x20
/* 00B97C 8000AD7C 00601025 */  move  $v0, $v1
/* 00B980 8000AD80 03E00008 */  jr    $ra
/* 00B984 8000AD84 00000000 */   nop   
.size omGDispatchProc, . - omGDispatchProc
