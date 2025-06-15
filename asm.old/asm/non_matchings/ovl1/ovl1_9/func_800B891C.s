glabel func_800B891C
/* 060B6C 800B891C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 060B70 800B8920 3C02800D */  lui   $v0, %hi(D_800D6B88) # $v0, 0x800d
/* 060B74 800B8924 8C426B88 */  lw    $v0, %lo(D_800D6B88)($v0)
/* 060B78 800B8928 AFB5002C */  sw    $s5, 0x2c($sp)
/* 060B7C 800B892C 0080A825 */  move  $s5, $a0
/* 060B80 800B8930 AFBF0034 */  sw    $ra, 0x34($sp)
/* 060B84 800B8934 AFB60030 */  sw    $s6, 0x30($sp)
/* 060B88 800B8938 AFB40028 */  sw    $s4, 0x28($sp)
/* 060B8C 800B893C AFB30024 */  sw    $s3, 0x24($sp)
/* 060B90 800B8940 AFB20020 */  sw    $s2, 0x20($sp)
/* 060B94 800B8944 AFB1001C */  sw    $s1, 0x1c($sp)
/* 060B98 800B8948 04400058 */  bltz  $v0, .L800B8AAC_ovl1
/* 060B9C 800B894C AFB00018 */   sw    $s0, 0x18($sp)
/* 060BA0 800B8950 28410003 */  slti  $at, $v0, 3
/* 060BA4 800B8954 10200055 */  beqz  $at, .L800B8AAC_ovl1
/* 060BA8 800B8958 00041080 */   sll   $v0, $a0, 2
/* 060BAC 800B895C 00441023 */  subu  $v0, $v0, $a0
/* 060BB0 800B8960 00021080 */  sll   $v0, $v0, 2
/* 060BB4 800B8964 00441023 */  subu  $v0, $v0, $a0
/* 060BB8 800B8968 000210C0 */  sll   $v0, $v0, 3
/* 060BBC 800B896C 3C0F800F */  lui   $t7, %hi(gSaveBuffer1) # $t7, 0x800f
/* 060BC0 800B8970 3C08800F */  lui   $t0, %hi(gSaveBuffer2) # $t0, 0x800f
/* 060BC4 800B8974 25EFC9F8 */  addiu $t7, %lo(gSaveBuffer1) # addiu $t7, $t7, -0x3608
/* 060BC8 800B8978 244E0010 */  addiu $t6, $v0, 0x10
/* 060BCC 800B897C 2508CBB0 */  addiu $t0, %lo(gSaveBuffer2) # addiu $t0, $t0, -0x3450
/* 060BD0 800B8980 24590010 */  addiu $t9, $v0, 0x10
/* 060BD4 800B8984 01CF8821 */  addu  $s1, $t6, $t7
/* 060BD8 800B8988 03289821 */  addu  $s3, $t9, $t0
/* 060BDC 800B898C 3C14800D */  lui   $s4, %hi(D_800D5150) # $s4, 0x800d
/* 060BE0 800B8990 AFB10040 */  sw    $s1, 0x40($sp)
/* 060BE4 800B8994 AFB3003C */  sw    $s3, 0x3c($sp)
/* 060BE8 800B8998 26945150 */  addiu $s4, %lo(D_800D5150) # addiu $s4, $s4, 0x5150
/* 060BEC 800B899C 00009025 */  move  $s2, $zero
/* 060BF0 800B89A0 24100008 */  li    $s0, 8
.L800B89A4_ovl1:
/* 060BF4 800B89A4 00001025 */  move  $v0, $zero
/* 060BF8 800B89A8 02201825 */  move  $v1, $s1
/* 060BFC 800B89AC 02602025 */  move  $a0, $s3
.L800B89B0_ovl1:
/* 060C00 800B89B0 8C6A0000 */  lw    $t2, ($v1)
/* 060C04 800B89B4 8C8B0000 */  lw    $t3, ($a0)
/* 060C08 800B89B8 24420004 */  addiu $v0, $v0, 4
/* 060C0C 800B89BC 24630004 */  addiu $v1, $v1, 4
/* 060C10 800B89C0 114B0009 */  beq   $t2, $t3, .L800B89E8_ovl1
/* 060C14 800B89C4 00156040 */   sll   $t4, $s5, 1
/* 060C18 800B89C8 028C6821 */  addu  $t5, $s4, $t4
/* 060C1C 800B89CC 95AE0000 */  lhu   $t6, ($t5)
/* 060C20 800B89D0 02202825 */  move  $a1, $s1
/* 060C24 800B89D4 01D22021 */  addu  $a0, $t6, $s2
/* 060C28 800B89D8 0C001366 */  jal   func_80004D98_ovl1
/* 060C2C 800B89DC 308400FF */   andi  $a0, $a0, 0xff
/* 060C30 800B89E0 10000004 */  b     .L800B89F4_ovl1
/* 060C34 800B89E4 26520001 */   addiu $s2, $s2, 1
.L800B89E8_ovl1:
/* 060C38 800B89E8 1450FFF1 */  bne   $v0, $s0, .L800B89B0_ovl1
/* 060C3C 800B89EC 24840004 */   addiu $a0, $a0, 4
/* 060C40 800B89F0 26520001 */  addiu $s2, $s2, 1
.L800B89F4_ovl1:
/* 060C44 800B89F4 2E41000B */  sltiu $at, $s2, 0xb
/* 060C48 800B89F8 26310008 */  addiu $s1, $s1, 8
/* 060C4C 800B89FC 1420FFE9 */  bnez  $at, .L800B89A4_ovl1
/* 060C50 800B8A00 26730008 */   addiu $s3, $s3, 8
/* 060C54 800B8A04 8FB10040 */  lw    $s1, 0x40($sp)
/* 060C58 800B8A08 8FB3003C */  lw    $s3, 0x3c($sp)
/* 060C5C 800B8A0C 00009025 */  move  $s2, $zero
/* 060C60 800B8A10 2416000B */  li    $s6, 11
/* 060C64 800B8A14 24100008 */  li    $s0, 8
.L800B8A18_ovl1:
/* 060C68 800B8A18 00001025 */  move  $v0, $zero
/* 060C6C 800B8A1C 02201825 */  move  $v1, $s1
/* 060C70 800B8A20 02602025 */  move  $a0, $s3
.L800B8A24_ovl1:
/* 060C74 800B8A24 8C6F0000 */  lw    $t7, ($v1)
/* 060C78 800B8A28 8C980000 */  lw    $t8, ($a0)
/* 060C7C 800B8A2C 24420004 */  addiu $v0, $v0, 4
/* 060C80 800B8A30 24630004 */  addiu $v1, $v1, 4
/* 060C84 800B8A34 11F80009 */  beq   $t7, $t8, .L800B8A5C_ovl1
/* 060C88 800B8A38 0015C840 */   sll   $t9, $s5, 1
/* 060C8C 800B8A3C 02994021 */  addu  $t0, $s4, $t9
/* 060C90 800B8A40 95090006 */  lhu   $t1, 6($t0)
/* 060C94 800B8A44 02202825 */  move  $a1, $s1
/* 060C98 800B8A48 01322021 */  addu  $a0, $t1, $s2
/* 060C9C 800B8A4C 0C001366 */  jal   func_80004D98_ovl1
/* 060CA0 800B8A50 308400FF */   andi  $a0, $a0, 0xff
/* 060CA4 800B8A54 10000004 */  b     .L800B8A68_ovl1
/* 060CA8 800B8A58 26520001 */   addiu $s2, $s2, 1
.L800B8A5C_ovl1:
/* 060CAC 800B8A5C 1450FFF1 */  bne   $v0, $s0, .L800B8A24_ovl1
/* 060CB0 800B8A60 24840004 */   addiu $a0, $a0, 4
/* 060CB4 800B8A64 26520001 */  addiu $s2, $s2, 1
.L800B8A68_ovl1:
/* 060CB8 800B8A68 26310008 */  addiu $s1, $s1, 8
/* 060CBC 800B8A6C 1656FFEA */  bne   $s2, $s6, .L800B8A18_ovl1
/* 060CC0 800B8A70 26730008 */   addiu $s3, $s3, 8
/* 060CC4 800B8A74 8FAB0040 */  lw    $t3, 0x40($sp)
/* 060CC8 800B8A78 8FAA003C */  lw    $t2, 0x3c($sp)
/* 060CCC 800B8A7C 256E0054 */  addiu $t6, $t3, 0x54
.L800B8A80_ovl1:
/* 060CD0 800B8A80 8D6D0000 */  lw    $t5, ($t3)
/* 060CD4 800B8A84 256B000C */  addiu $t3, $t3, 0xc
/* 060CD8 800B8A88 254A000C */  addiu $t2, $t2, 0xc
/* 060CDC 800B8A8C AD4DFFF4 */  sw    $t5, -0xc($t2)
/* 060CE0 800B8A90 8D6CFFF8 */  lw    $t4, -8($t3)
/* 060CE4 800B8A94 AD4CFFF8 */  sw    $t4, -8($t2)
/* 060CE8 800B8A98 8D6DFFFC */  lw    $t5, -4($t3)
/* 060CEC 800B8A9C 156EFFF8 */  bne   $t3, $t6, .L800B8A80_ovl1
/* 060CF0 800B8AA0 AD4DFFFC */   sw    $t5, -4($t2)
/* 060CF4 800B8AA4 8D6D0000 */  lw    $t5, ($t3)
/* 060CF8 800B8AA8 AD4D0000 */  sw    $t5, ($t2)
.L800B8AAC_ovl1:
/* 060CFC 800B8AAC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 060D00 800B8AB0 8FB00018 */  lw    $s0, 0x18($sp)
/* 060D04 800B8AB4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 060D08 800B8AB8 8FB20020 */  lw    $s2, 0x20($sp)
/* 060D0C 800B8ABC 8FB30024 */  lw    $s3, 0x24($sp)
/* 060D10 800B8AC0 8FB40028 */  lw    $s4, 0x28($sp)
/* 060D14 800B8AC4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 060D18 800B8AC8 8FB60030 */  lw    $s6, 0x30($sp)
/* 060D1C 800B8ACC 03E00008 */  jr    $ra
/* 060D20 800B8AD0 27BD0058 */   addiu $sp, $sp, 0x58
.type func_800B891C, @function
.size func_800B891C, . - func_800B891C
