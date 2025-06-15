glabel func_8018DDCC_ovl3
/* 0EE80C 8018DDCC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE810 8018DDD0 AFB10018 */  sw    $s1, 0x18($sp)
/* 0EE814 8018DDD4 44802000 */  mtc1  $zero, $f4
/* 0EE818 8018DDD8 3C118013 */  lui   $s1, %hi(gKirbyState) # $s1, 0x8013
/* 0EE81C 8018DDDC 2631E7C0 */  addiu $s1, %lo(gKirbyState) # addiu $s1, $s1, -0x1840
/* 0EE820 8018DDE0 E624007C */  swc1  $f4, 0x7c($s1)
/* 0EE824 8018DDE4 C626007C */  lwc1  $f6, 0x7c($s1)
/* 0EE828 8018DDE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EE82C 8018DDEC AFB00014 */  sw    $s0, 0x14($sp)
/* 0EE830 8018DDF0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0EE834 8018DDF4 AE200044 */  sw    $zero, 0x44($s1)
/* 0EE838 8018DDF8 AE200030 */  sw    $zero, 0x30($s1)
/* 0EE83C 8018DDFC A2200007 */  sb    $zero, 7($s1)
/* 0EE840 8018DE00 0C0473D6 */  jal   func_8011CF58
/* 0EE844 8018DE04 E6260080 */   swc1  $f6, 0x80($s1)
/* 0EE848 8018DE08 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0EE84C 8018DE0C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0EE850 8018DE10 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0EE854 8018DE14 240F0040 */  li    $t7, 64
/* 0EE858 8018DE18 8F190000 */  lw    $t9, ($t8)
/* 0EE85C 8018DE1C 00194080 */  sll   $t0, $t9, 2
/* 0EE860 8018DE20 00280821 */  addu  $at, $at, $t0
/* 0EE864 8018DE24 0C04828A */  jal   func_80120A28
/* 0EE868 8018DE28 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 0EE86C 8018DE2C 8E290090 */  lw    $t1, 0x90($s1)
/* 0EE870 8018DE30 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0EE874 8018DE34 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0EE878 8018DE38 AE2900A0 */  sw    $t1, 0xa0($s1)
/* 0EE87C 8018DE3C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0EE880 8018DE40 3C040002 */  lui   $a0, (0x0002002B >> 16) # lui $a0, 2
/* 0EE884 8018DE44 3484002B */  ori   $a0, (0x0002002B & 0xFFFF) # ori $a0, $a0, 0x2b
/* 0EE888 8018DE48 8D4B0000 */  lw    $t3, ($t2)
/* 0EE88C 8018DE4C 000B6080 */  sll   $t4, $t3, 2
/* 0EE890 8018DE50 002C0821 */  addu  $at, $at, $t4
/* 0EE894 8018DE54 C4286A10 */ lwc1 $f8, %lo(D_800E6A10)($at)
/* 0EE898 8018DE58 46004287 */  neg.s $f10, $f8
/* 0EE89C 8018DE5C 0C048BC2 */  jal   func_80122F08
/* 0EE8A0 8018DE60 E62A0078 */   swc1  $f10, 0x78($s1)
/* 0EE8A4 8018DE64 240D0002 */  li    $t5, 2
/* 0EE8A8 8018DE68 AE2D0154 */  sw    $t5, 0x154($s1)
/* 0EE8AC 8018DE6C 0C029D9E */  jal   play_sound
/* 0EE8B0 8018DE70 24040042 */   li    $a0, 66
/* 0EE8B4 8018DE74 3C040002 */  lui   $a0, (0x00020274 >> 16) # lui $a0, 2
/* 0EE8B8 8018DE78 3C050002 */  lui   $a1, (0x00020275 >> 16) # lui $a1, 2
/* 0EE8BC 8018DE7C 34A50275 */  ori   $a1, (0x00020275 & 0xFFFF) # ori $a1, $a1, 0x275
/* 0EE8C0 8018DE80 34840274 */  ori   $a0, (0x00020274 & 0xFFFF) # ori $a0, $a0, 0x274
/* 0EE8C4 8018DE84 0C048C3A */  jal   func_801230E8
/* 0EE8C8 8018DE88 24060001 */   li    $a2, 1
/* 0EE8CC 8018DE8C 3C040002 */  lui   $a0, (0x00020276 >> 16) # lui $a0, 2
/* 0EE8D0 8018DE90 3C050002 */  lui   $a1, (0x00020277 >> 16) # lui $a1, 2
/* 0EE8D4 8018DE94 34A50277 */  ori   $a1, (0x00020277 & 0xFFFF) # ori $a1, $a1, 0x277
/* 0EE8D8 8018DE98 34840276 */  ori   $a0, (0x00020276 & 0xFFFF) # ori $a0, $a0, 0x276
/* 0EE8DC 8018DE9C 0C048C3A */  jal   func_801230E8
/* 0EE8E0 8018DEA0 00003025 */   move  $a2, $zero
/* 0EE8E4 8018DEA4 3C10800D */  lui   $s0, %hi(gKirbyController) # $s0, 0x800d
/* 0EE8E8 8018DEA8 26106FE8 */  addiu $s0, %lo(gKirbyController) # addiu $s0, $s0, 0x6fe8
/* 0EE8EC 8018DEAC 960E0000 */  lhu   $t6, ($s0)
/* 0EE8F0 8018DEB0 31D84000 */  andi  $t8, $t6, 0x4000
/* 0EE8F4 8018DEB4 1300000A */  beqz  $t8, .L8018DEE0_ovl3
/* 0EE8F8 8018DEB8 00000000 */   nop   
/* 0EE8FC 8018DEBC 92390017 */  lbu   $t9, 0x17($s1)
.L8018DEC0_ovl3:
/* 0EE900 8018DEC0 17200007 */  bnez  $t9, .L8018DEE0_ovl3
/* 0EE904 8018DEC4 00000000 */   nop   
/* 0EE908 8018DEC8 0C002DAF */  jal   finish_current_thread
/* 0EE90C 8018DECC 24040001 */   li    $a0, 1
/* 0EE910 8018DED0 960F0000 */  lhu   $t7, ($s0)
/* 0EE914 8018DED4 31E84000 */  andi  $t0, $t7, 0x4000
/* 0EE918 8018DED8 5500FFF9 */  bnezl $t0, .L8018DEC0_ovl3
/* 0EE91C 8018DEDC 92390017 */   lbu   $t9, 0x17($s1)
.L8018DEE0_ovl3:
/* 0EE920 8018DEE0 0C029D9E */  jal   play_sound
/* 0EE924 8018DEE4 24040043 */   li    $a0, 67
/* 0EE928 8018DEE8 3C040002 */  lui   $a0, (0x00020278 >> 16) # lui $a0, 2
/* 0EE92C 8018DEEC 3C050002 */  lui   $a1, (0x00020279 >> 16) # lui $a1, 2
/* 0EE930 8018DEF0 34A50279 */  ori   $a1, (0x00020279 & 0xFFFF) # ori $a1, $a1, 0x279
/* 0EE934 8018DEF4 34840278 */  ori   $a0, (0x00020278 & 0xFFFF) # ori $a0, $a0, 0x278
/* 0EE938 8018DEF8 0C048C3A */  jal   func_801230E8
/* 0EE93C 8018DEFC 00003025 */   move  $a2, $zero
/* 0EE940 8018DF00 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0EE944 8018DF04 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0EE948 8018DF08 3C098019 */  lui   $t1, %hi(D_8018DF78) # $t1, 0x8019
/* 0EE94C 8018DF0C 3C01800E */ lui $at, %hi(D_800DF310)
/* 0EE950 8018DF10 8D4B0000 */  lw    $t3, ($t2)
/* 0EE954 8018DF14 2529DF78 */  addiu $t1, %lo(D_8018DF78) # addiu $t1, $t1, -0x2088
/* 0EE958 8018DF18 2404000C */  li    $a0, 12
/* 0EE95C 8018DF1C 000B6080 */  sll   $t4, $t3, 2
/* 0EE960 8018DF20 002C0821 */  addu  $at, $at, $t4
/* 0EE964 8018DF24 0C002DAF */  jal   finish_current_thread
/* 0EE968 8018DF28 AC29F310 */ sw $t1, %lo(D_800DF310)($at)
/* 0EE96C 8018DF2C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0EE970 8018DF30 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0EE974 8018DF34 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0EE978 8018DF38 8DAE0000 */  lw    $t6, ($t5)
/* 0EE97C 8018DF3C 000EC080 */  sll   $t8, $t6, 2
/* 0EE980 8018DF40 00380821 */  addu  $at, $at, $t8
/* 0EE984 8018DF44 C4306A10 */ lwc1 $f16, %lo(D_800E6A10)($at)
/* 0EE988 8018DF48 0C02BC9F */  jal   func_800AF27C
/* 0EE98C 8018DF4C E6300078 */   swc1  $f16, 0x78($s1)
/* 0EE990 8018DF50 8E390030 */  lw    $t9, 0x30($s1)
/* 0EE994 8018DF54 AE2000A0 */  sw    $zero, 0xa0($s1)
/* 0EE998 8018DF58 272F0001 */  addiu $t7, $t9, 1
/* 0EE99C 8018DF5C 0C02BE85 */  jal   func_800AFA14
/* 0EE9A0 8018DF60 AE2F0030 */   sw    $t7, 0x30($s1)
/* 0EE9A4 8018DF64 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EE9A8 8018DF68 8FB00014 */  lw    $s0, 0x14($sp)
/* 0EE9AC 8018DF6C 8FB10018 */  lw    $s1, 0x18($sp)
/* 0EE9B0 8018DF70 03E00008 */  jr    $ra
/* 0EE9B4 8018DF74 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8018DDCC_ovl3, @function
.size func_8018DDCC_ovl3, . - func_8018DDCC_ovl3
