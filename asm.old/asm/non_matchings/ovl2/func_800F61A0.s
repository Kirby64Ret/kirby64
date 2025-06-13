glabel func_800F61A0
/* 07EC10 800F61A0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 07EC14 800F61A4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 07EC18 800F61A8 AFB70030 */  sw    $s7, 0x30($sp)
/* 07EC1C 800F61AC AFB6002C */  sw    $s6, 0x2c($sp)
/* 07EC20 800F61B0 AFB50028 */  sw    $s5, 0x28($sp)
/* 07EC24 800F61B4 AFB40024 */  sw    $s4, 0x24($sp)
/* 07EC28 800F61B8 AFB30020 */  sw    $s3, 0x20($sp)
/* 07EC2C 800F61BC AFB2001C */  sw    $s2, 0x1c($sp)
/* 07EC30 800F61C0 AFB10018 */  sw    $s1, 0x18($sp)
/* 07EC34 800F61C4 0C044538 */  jal   func_801114E0
/* 07EC38 800F61C8 AFB00014 */   sw    $s0, 0x14($sp)
/* 07EC3C 800F61CC 3C0E800C */  lui   $t6, %hi(D_800BE544) # $t6, 0x800c
/* 07EC40 800F61D0 8DCEE544 */  lw    $t6, %lo(D_800BE544)($t6)
/* 07EC44 800F61D4 5DC00027 */  bgtzl $t6, .L800F6274_ovl2
/* 07EC48 800F61D8 8FBF0034 */   lw    $ra, 0x34($sp)
/* 07EC4C 800F61DC 0C02949A */  jal   copy_controller_inputs_to_kirby_controller
/* 07EC50 800F61E0 00000000 */   nop   
/* 07EC54 800F61E4 3C0F800D */  lui   $t7, %hi(D_800D7B68) # $t7, 0x800d
/* 07EC58 800F61E8 8DEF7B68 */  lw    $t7, %lo(D_800D7B68)($t7)
/* 07EC5C 800F61EC 11E00003 */  beqz  $t7, .L800F61FC_ovl2
/* 07EC60 800F61F0 00000000 */   nop   
/* 07EC64 800F61F4 0C03DD5E */  jal   func_800F7578
/* 07EC68 800F61F8 00000000 */   nop   
.L800F61FC_ovl2:
/* 07EC6C 800F61FC 3C13800E */  lui   $s3, %hi(D_800DD710) # $s3, 0x800e
/* 07EC70 800F6200 3C17800E */  lui   $s7, %hi(D_800DD84C) # $s7, 0x800e
/* 07EC74 800F6204 3C16800E */  lui   $s6, %hi(D_800DE350) # $s6, 0x800e
/* 07EC78 800F6208 3C15800E */  lui   $s5, %hi(D_800DDA90) # $s5, 0x800e
/* 07EC7C 800F620C 26B5DA90 */  addiu $s5, %lo(D_800DDA90) # addiu $s5, $s5, -0x2570
/* 07EC80 800F6210 26D6E350 */  addiu $s6, %lo(D_800DE350) # addiu $s6, $s6, -0x1cb0
/* 07EC84 800F6214 26F7D84C */  addiu $s7, %lo(D_800DD84C) # addiu $s7, $s7, -0x27b4
/* 07EC88 800F6218 2673D710 */  addiu $s3, %lo(D_800DD710) # addiu $s3, $s3, -0x28f0
/* 07EC8C 800F621C 00009025 */  move  $s2, $zero
/* 07EC90 800F6220 2414FFFF */  li    $s4, -1
.L800F6224_ovl2:
/* 07EC94 800F6224 8E780000 */  lw    $t8, ($s3)
/* 07EC98 800F6228 02B28021 */  addu  $s0, $s5, $s2
/* 07EC9C 800F622C 5298000E */  beql  $s4, $t8, .L800F6268_ovl2
/* 07ECA0 800F6230 26730004 */   addiu $s3, $s3, 4
/* 07ECA4 800F6234 8E020000 */  lw    $v0, ($s0)
/* 07ECA8 800F6238 02D28821 */  addu  $s1, $s6, $s2
/* 07ECAC 800F623C 30590038 */  andi  $t9, $v0, 0x38
/* 07ECB0 800F6240 13200008 */  beqz  $t9, .L800F6264_ovl2
/* 07ECB4 800F6244 00402825 */   move  $a1, $v0
/* 07ECB8 800F6248 8E240000 */  lw    $a0, ($s1)
/* 07ECBC 800F624C 30A50007 */  andi  $a1, $a1, 7
/* 07ECC0 800F6250 0C002926 */  jal   func_8000A498_ovl2
/* 07ECC4 800F6254 8C860010 */   lw    $a2, 0x10($a0)
/* 07ECC8 800F6258 8E280000 */  lw    $t0, ($s1)
/* 07ECCC 800F625C 9109000C */  lbu   $t1, 0xc($t0)
/* 07ECD0 800F6260 AE090000 */  sw    $t1, ($s0)
.L800F6264_ovl2:
/* 07ECD4 800F6264 26730004 */  addiu $s3, $s3, 4
.L800F6268_ovl2:
/* 07ECD8 800F6268 1677FFEE */  bne   $s3, $s7, .L800F6224_ovl2
/* 07ECDC 800F626C 26520004 */   addiu $s2, $s2, 4
/* 07ECE0 800F6270 8FBF0034 */  lw    $ra, 0x34($sp)
.L800F6274_ovl2:
/* 07ECE4 800F6274 8FB00014 */  lw    $s0, 0x14($sp)
/* 07ECE8 800F6278 8FB10018 */  lw    $s1, 0x18($sp)
/* 07ECEC 800F627C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 07ECF0 800F6280 8FB30020 */  lw    $s3, 0x20($sp)
/* 07ECF4 800F6284 8FB40024 */  lw    $s4, 0x24($sp)
/* 07ECF8 800F6288 8FB50028 */  lw    $s5, 0x28($sp)
/* 07ECFC 800F628C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 07ED00 800F6290 8FB70030 */  lw    $s7, 0x30($sp)
/* 07ED04 800F6294 03E00008 */  jr    $ra
/* 07ED08 800F6298 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800F61A0, @function
.size func_800F61A0, . - func_800F61A0
