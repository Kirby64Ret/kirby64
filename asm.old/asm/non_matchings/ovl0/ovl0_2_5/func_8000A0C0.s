glabel omGAddCommon
/* 00ACC0 8000A0C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00ACC4 8000A0C4 AFA60028 */  sw    $a2, 0x28($sp)
/* 00ACC8 8000A0C8 30C600FF */  andi  $a2, $a2, 0xff
/* 00ACCC 8000A0CC 28C10020 */  slti  $at, $a2, 0x20
/* 00ACD0 8000A0D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00ACD4 8000A0D4 AFA40020 */  sw    $a0, 0x20($sp)
/* 00ACD8 8000A0D8 AFA50024 */  sw    $a1, 0x24($sp)
/* 00ACDC 8000A0DC AFA7002C */  sw    $a3, 0x2c($sp)
/* 00ACE0 8000A0E0 AFA60018 */  sw    $a2, 0x18($sp)
/* 00ACE4 8000A0E4 14200008 */  bnez  $at, .L8000A108_ovl0
/* 00ACE8 8000A0E8 00C07025 */   move  $t6, $a2
/* 00ACEC 8000A0EC 3C048004 */  lui   $a0, %hi(D_800403DC) # $a0, 0x8004
/* 00ACF0 8000A0F0 248403DC */  addiu $a0, %lo(D_800403DC) # addiu $a0, $a0, 0x3dc
/* 00ACF4 8000A0F4 01C02825 */  move  $a1, $t6
/* 00ACF8 8000A0F8 0C008C27 */  jal   fatal_printf
/* 00ACFC 8000A0FC 8FA60020 */   lw    $a2, 0x20($sp)
.L8000A100_ovl0:
/* 00AD00 8000A100 1000FFFF */  b     .L8000A100_ovl0
/* 00AD04 8000A104 00000000 */   nop   
.L8000A108_ovl0:
/* 00AD08 8000A108 0C0020D7 */  jal   HS64_GObjPop
/* 00AD0C 8000A10C A3A6002B */   sb    $a2, 0x2b($sp)
/* 00AD10 8000A110 93A6002B */  lbu   $a2, 0x2b($sp)
/* 00AD14 8000A114 14400003 */  bnez  $v0, .L8000A124_ovl0
/* 00AD18 8000A118 00401825 */   move  $v1, $v0
/* 00AD1C 8000A11C 10000014 */  b     .L8000A170_ovl0
/* 00AD20 8000A120 00001025 */   move  $v0, $zero
.L8000A124_ovl0:
/* 00AD24 8000A124 8FAF0020 */  lw    $t7, 0x20($sp)
/* 00AD28 8000A128 A066000C */  sb    $a2, 0xc($v1)
/* 00AD2C 8000A12C 44802000 */  mtc1  $zero, $f4
/* 00AD30 8000A130 AC6F0000 */  sw    $t7, ($v1)
/* 00AD34 8000A134 8FB8002C */  lw    $t8, 0x2c($sp)
/* 00AD38 8000A138 24080021 */  li    $t0, 33
/* 00AD3C 8000A13C 00601025 */  move  $v0, $v1
/* 00AD40 8000A140 AC780010 */  sw    $t8, 0x10($v1)
/* 00AD44 8000A144 8FB90024 */  lw    $t9, 0x24($sp)
/* 00AD48 8000A148 AC600018 */  sw    $zero, 0x18($v1)
/* 00AD4C 8000A14C AC60001C */  sw    $zero, 0x1c($v1)
/* 00AD50 8000A150 AC600044 */  sw    $zero, 0x44($v1)
/* 00AD54 8000A154 A060000F */  sb    $zero, 0xf($v1)
/* 00AD58 8000A158 AC60003C */  sw    $zero, 0x3c($v1)
/* 00AD5C 8000A15C A068000D */  sb    $t0, 0xd($v1)
/* 00AD60 8000A160 AC600048 */  sw    $zero, 0x48($v1)
/* 00AD64 8000A164 AC60004C */  sw    $zero, 0x4c($v1)
/* 00AD68 8000A168 E4640040 */  swc1  $f4, 0x40($v1)
/* 00AD6C 8000A16C AC790014 */  sw    $t9, 0x14($v1)
.L8000A170_ovl0:
/* 00AD70 8000A170 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00AD74 8000A174 27BD0020 */  addiu $sp, $sp, 0x20
/* 00AD78 8000A178 03E00008 */  jr    $ra
/* 00AD7C 8000A17C 00000000 */   nop   
.size omGAddCommon, . - omGAddCommon
