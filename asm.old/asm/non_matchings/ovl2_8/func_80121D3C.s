glabel func_80121D3C
/* 0AA7AC 80121D3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AA7B0 80121D40 AFB00018 */  sw    $s0, 0x18($sp)
/* 0AA7B4 80121D44 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0AA7B8 80121D48 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0AA7BC 80121D4C 92020009 */  lbu   $v0, 9($s0)
/* 0AA7C0 80121D50 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0AA7C4 80121D54 304E0001 */  andi  $t6, $v0, 1
/* 0AA7C8 80121D58 51C0006A */  beql  $t6, $zero, .L80121F04_ovl2
/* 0AA7CC 80121D5C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AA7D0 80121D60 8603006A */  lh    $v1, 0x6a($s0)
/* 0AA7D4 80121D64 240D0002 */  li    $t5, 2
/* 0AA7D8 80121D68 240E0258 */  li    $t6, 600
/* 0AA7DC 80121D6C 10600038 */  beqz  $v1, .L80121E50_ovl2
/* 0AA7E0 80121D70 3C0F800D */ lui $t7, %hi(D_800D6B44)
/* 0AA7E4 80121D74 246FFFFF */  addiu $t7, $v1, -1
/* 0AA7E8 80121D78 A60F006A */  sh    $t7, 0x6a($s0)
/* 0AA7EC 80121D7C 8618006A */  lh    $t8, 0x6a($s0)
/* 0AA7F0 80121D80 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0AA7F4 80121D84 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 0AA7F8 80121D88 17000013 */  bnez  $t8, .L80121DD8_ovl2
/* 0AA7FC 80121D8C 240A0002 */   li    $t2, 2
/* 0AA800 80121D90 3059FFFE */  andi  $t9, $v0, 0xfffe
/* 0AA804 80121D94 A6000068 */  sh    $zero, 0x68($s0)
/* 0AA808 80121D98 A2190009 */  sb    $t9, 9($s0)
/* 0AA80C 80121D9C 0C0288B5 */  jal   func_800A22D4
/* 0AA810 80121DA0 8E04006C */   lw    $a0, 0x6c($s0)
/* 0AA814 80121DA4 8E050054 */  lw    $a1, 0x54($s0)
/* 0AA818 80121DA8 3C018000 */  lui   $at, 0x8000
/* 0AA81C 80121DAC 3C08800D */  lui   $t0, %hi(D_800D6B54) # $t0, 0x800d
/* 0AA820 80121DB0 50A10054 */  beql  $a1, $at, .L80121F04_ovl2
/* 0AA824 80121DB4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AA828 80121DB8 8D086B54 */  lw    $t0, %lo(D_800D6B54)($t0)
/* 0AA82C 80121DBC 55000051 */  bnezl $t0, .L80121F04_ovl2
/* 0AA830 80121DC0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AA834 80121DC4 0C029D6C */  jal   play_music
/* 0AA838 80121DC8 00002025 */   move  $a0, $zero
/* 0AA83C 80121DCC 3C098000 */  lui   $t1, 0x8000
/* 0AA840 80121DD0 1000004B */  b     .L80121F00_ovl2
/* 0AA844 80121DD4 AE090054 */   sw    $t1, 0x54($s0)
.L80121DD8_ovl2:
/* 0AA848 80121DD8 8C8B0000 */  lw    $t3, ($a0)
/* 0AA84C 80121DDC A60A0068 */  sh    $t2, 0x68($s0)
/* 0AA850 80121DE0 8E02006C */  lw    $v0, 0x6c($s0)
/* 0AA854 80121DE4 8D6C0000 */  lw    $t4, ($t3)
/* 0AA858 80121DE8 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0AA85C 80121DEC 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0AA860 80121DF0 000C6880 */  sll   $t5, $t4, 2
/* 0AA864 80121DF4 002D0821 */  addu  $at, $at, $t5
/* 0AA868 80121DF8 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 0AA86C 80121DFC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0AA870 80121E00 E5C40004 */  swc1  $f4, 4($t6)
/* 0AA874 80121E04 8C8F0000 */  lw    $t7, ($a0)
/* 0AA878 80121E08 8C48004C */  lw    $t0, 0x4c($v0)
/* 0AA87C 80121E0C 8DF80000 */  lw    $t8, ($t7)
/* 0AA880 80121E10 0018C880 */  sll   $t9, $t8, 2
/* 0AA884 80121E14 00390821 */  addu  $at, $at, $t9
/* 0AA888 80121E18 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 0AA88C 80121E1C 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0AA890 80121E20 44814000 */  mtc1  $at, $f8
/* 0AA894 80121E24 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0AA898 80121E28 46083280 */  add.s $f10, $f6, $f8
/* 0AA89C 80121E2C E50A0008 */  swc1  $f10, 8($t0)
/* 0AA8A0 80121E30 8C890000 */  lw    $t1, ($a0)
/* 0AA8A4 80121E34 8C4C004C */  lw    $t4, 0x4c($v0)
/* 0AA8A8 80121E38 8D2A0000 */  lw    $t2, ($t1)
/* 0AA8AC 80121E3C 000A5880 */  sll   $t3, $t2, 2
/* 0AA8B0 80121E40 002B0821 */  addu  $at, $at, $t3
/* 0AA8B4 80121E44 C4302950 */ lwc1 $f16, %lo(gEntitiesNextPosZArray)($at)
/* 0AA8B8 80121E48 1000002D */  b     .L80121F00_ovl2
/* 0AA8BC 80121E4C E590000C */   swc1  $f16, 0xc($t4)
.L80121E50_ovl2:
/* 0AA8C0 80121E50 A60D0068 */  sh    $t5, 0x68($s0)
/* 0AA8C4 80121E54 A60E006A */  sh    $t6, 0x6a($s0)
/* 0AA8C8 80121E58 8DEF6B44 */ lw $t7, %lo(D_800D6B44)($t7)
/* 0AA8CC 80121E5C 24040004 */  li    $a0, 4
/* 0AA8D0 80121E60 24050028 */  li    $a1, 40
/* 0AA8D4 80121E64 0C02ED1A */  jal   func_800BB468
/* 0AA8D8 80121E68 AE0F0054 */   sw    $t7, 0x54($s0)
/* 0AA8DC 80121E6C 00002025 */  move  $a0, $zero
/* 0AA8E0 80121E70 0C029D6C */  jal   play_music
/* 0AA8E4 80121E74 2405001F */   li    $a1, 31
/* 0AA8E8 80121E78 24040001 */  li    $a0, 1
/* 0AA8EC 80121E7C 24050001 */  li    $a1, 1
/* 0AA8F0 80121E80 0C02A08D */  jal   func_800A8234
/* 0AA8F4 80121E84 24060007 */   li    $a2, 7
/* 0AA8F8 80121E88 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0AA8FC 80121E8C 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 0AA900 80121E90 8C980000 */  lw    $t8, ($a0)
/* 0AA904 80121E94 AE02006C */  sw    $v0, 0x6c($s0)
/* 0AA908 80121E98 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0AA90C 80121E9C 8F190000 */  lw    $t9, ($t8)
/* 0AA910 80121EA0 8C49004C */  lw    $t1, 0x4c($v0)
/* 0AA914 80121EA4 00194080 */  sll   $t0, $t9, 2
/* 0AA918 80121EA8 00280821 */  addu  $at, $at, $t0
/* 0AA91C 80121EAC C43225D0 */ lwc1 $f18, %lo(gEntitiesNextPosXArray)($at)
/* 0AA920 80121EB0 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0AA924 80121EB4 E5320004 */  swc1  $f18, 4($t1)
/* 0AA928 80121EB8 8C8A0000 */  lw    $t2, ($a0)
/* 0AA92C 80121EBC 8C4D004C */  lw    $t5, 0x4c($v0)
/* 0AA930 80121EC0 8D4B0000 */  lw    $t3, ($t2)
/* 0AA934 80121EC4 000B6080 */  sll   $t4, $t3, 2
/* 0AA938 80121EC8 002C0821 */  addu  $at, $at, $t4
/* 0AA93C 80121ECC C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 0AA940 80121ED0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0AA944 80121ED4 44813000 */  mtc1  $at, $f6
/* 0AA948 80121ED8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0AA94C 80121EDC 46062200 */  add.s $f8, $f4, $f6
/* 0AA950 80121EE0 E5A80008 */  swc1  $f8, 8($t5)
/* 0AA954 80121EE4 8C8E0000 */  lw    $t6, ($a0)
/* 0AA958 80121EE8 8C59004C */  lw    $t9, 0x4c($v0)
/* 0AA95C 80121EEC 8DCF0000 */  lw    $t7, ($t6)
/* 0AA960 80121EF0 000FC080 */  sll   $t8, $t7, 2
/* 0AA964 80121EF4 00380821 */  addu  $at, $at, $t8
/* 0AA968 80121EF8 C42A2950 */ lwc1 $f10, %lo(gEntitiesNextPosZArray)($at)
/* 0AA96C 80121EFC E72A000C */  swc1  $f10, 0xc($t9)
.L80121F00_ovl2:
/* 0AA970 80121F00 8FBF001C */  lw    $ra, 0x1c($sp)
.L80121F04_ovl2:
/* 0AA974 80121F04 8FB00018 */  lw    $s0, 0x18($sp)
/* 0AA978 80121F08 27BD0020 */  addiu $sp, $sp, 0x20
/* 0AA97C 80121F0C 03E00008 */  jr    $ra
/* 0AA980 80121F10 00000000 */   nop   
.type func_80121D3C, @function
.size func_80121D3C, . - func_80121D3C
