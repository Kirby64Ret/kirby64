glabel func_80182D9C_ovl3
/* 0E37DC 80182D9C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0E37E0 80182DA0 AFB00020 */  sw    $s0, 0x20($sp)
/* 0E37E4 80182DA4 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0E37E8 80182DA8 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0E37EC 80182DAC 8E0E00A0 */  lw    $t6, 0xa0($s0)
/* 0E37F0 80182DB0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0E37F4 80182DB4 AFB20028 */  sw    $s2, 0x28($sp)
/* 0E37F8 80182DB8 AFB10024 */  sw    $s1, 0x24($sp)
/* 0E37FC 80182DBC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0E3800 80182DC0 15C000F8 */  bnez  $t6, .L801831A4_ovl3
/* 0E3804 80182DC4 AFA40030 */   sw    $a0, 0x30($sp)
/* 0E3808 80182DC8 44802000 */  mtc1  $zero, $f4
/* 0E380C 80182DCC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0E3810 80182DD0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0E3814 80182DD4 E604007C */  swc1  $f4, 0x7c($s0)
/* 0E3818 80182DD8 C606007C */  lwc1  $f6, 0x7c($s0)
/* 0E381C 80182DDC 8E390000 */  lw    $t9, ($s1)
/* 0E3820 80182DE0 AE00003C */  sw    $zero, 0x3c($s0)
/* 0E3824 80182DE4 AE000044 */  sw    $zero, 0x44($s0)
/* 0E3828 80182DE8 AE000030 */  sw    $zero, 0x30($s0)
/* 0E382C 80182DEC A2000007 */  sb    $zero, 7($s0)
/* 0E3830 80182DF0 A200000A */  sb    $zero, 0xa($s0)
/* 0E3834 80182DF4 E6060080 */  swc1  $f6, 0x80($s0)
/* 0E3838 80182DF8 8F290000 */  lw    $t1, ($t9)
/* 0E383C 80182DFC 3C0B800F */ lui $t3, %hi(D_800E8AE0)
/* 0E3840 80182E00 240D0020 */  li    $t5, 32
/* 0E3844 80182E04 00095080 */  sll   $t2, $t1, 2
/* 0E3848 80182E08 016A5821 */  addu  $t3, $t3, $t2
/* 0E384C 80182E0C 8D6B8AE0 */ lw $t3, %lo(D_800E8AE0)($t3)
/* 0E3850 80182E10 240E0010 */  li    $t6, 16
/* 0E3854 80182E14 316C0006 */  andi  $t4, $t3, 6
/* 0E3858 80182E18 51800004 */  beql  $t4, $zero, .L80182E2C_ovl3
/* 0E385C 80182E1C A20E0016 */   sb    $t6, 0x16($s0)
/* 0E3860 80182E20 10000002 */  b     .L80182E2C_ovl3
/* 0E3864 80182E24 A20D0016 */   sb    $t5, 0x16($s0)
/* 0E3868 80182E28 A20E0016 */  sb    $t6, 0x16($s0)
.L80182E2C_ovl3:
/* 0E386C 80182E2C 0C0473D6 */  jal   func_8011CF58
/* 0E3870 80182E30 00000000 */   nop   
/* 0E3874 80182E34 8E0F0090 */  lw    $t7, 0x90($s0)
/* 0E3878 80182E38 8E220000 */  lw    $v0, ($s1)
/* 0E387C 80182E3C 3C018019 */  lui   $at, %hi(D_80197790) # $at, 0x8019
/* 0E3880 80182E40 C4227790 */  lwc1  $f2, %lo(D_80197790)($at)
/* 0E3884 80182E44 AE0F00A0 */  sw    $t7, 0xa0($s0)
/* 0E3888 80182E48 8C590000 */  lw    $t9, ($v0)
/* 0E388C 80182E4C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0E3890 80182E50 24180033 */  li    $t8, 51
/* 0E3894 80182E54 00194880 */  sll   $t1, $t9, 2
/* 0E3898 80182E58 00290821 */  addu  $at, $at, $t1
/* 0E389C 80182E5C AC38DFD0 */ sw $t8, %lo(D_800DDFD0)($at)
/* 0E38A0 80182E60 8C4A0000 */  lw    $t2, ($v0)
/* 0E38A4 80182E64 44800000 */  mtc1  $zero, $f0
/* 0E38A8 80182E68 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0E38AC 80182E6C 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0E38B0 80182E70 000A5880 */  sll   $t3, $t2, 2
/* 0E38B4 80182E74 00CB6021 */  addu  $t4, $a2, $t3
/* 0E38B8 80182E78 E5800000 */  swc1  $f0, ($t4)
/* 0E38BC 80182E7C 8C430000 */  lw    $v1, ($v0)
/* 0E38C0 80182E80 3C01800E */ lui $at, %hi(D_800E3210)
/* 0E38C4 80182E84 3C07800E */  lui   $a3, %hi(D_800E6690) # $a3, 0x800e
/* 0E38C8 80182E88 00031880 */  sll   $v1, $v1, 2
/* 0E38CC 80182E8C 00C36821 */  addu  $t5, $a2, $v1
/* 0E38D0 80182E90 C5A80000 */  lwc1  $f8, ($t5)
/* 0E38D4 80182E94 00230821 */  addu  $at, $at, $v1
/* 0E38D8 80182E98 24E76690 */  addiu $a3, %lo(D_800E6690) # addiu $a3, $a3, 0x6690
/* 0E38DC 80182E9C E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 0E38E0 80182EA0 8C4E0000 */  lw    $t6, ($v0)
/* 0E38E4 80182EA4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0E38E8 80182EA8 3C08800F */  lui   $t0, %hi(D_800E9C60) # $t0, 0x800f
/* 0E38EC 80182EAC 000E7880 */  sll   $t7, $t6, 2
/* 0E38F0 80182EB0 002F0821 */  addu  $at, $at, $t7
/* 0E38F4 80182EB4 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 0E38F8 80182EB8 8C590000 */  lw    $t9, ($v0)
/* 0E38FC 80182EBC 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0E3900 80182EC0 25089C60 */  addiu $t0, %lo(D_800E9C60) # addiu $t0, $t0, -0x63a0
/* 0E3904 80182EC4 0019C080 */  sll   $t8, $t9, 2
/* 0E3908 80182EC8 00F84821 */  addu  $t1, $a3, $t8
/* 0E390C 80182ECC E5200000 */  swc1  $f0, ($t1)
/* 0E3910 80182ED0 8C430000 */  lw    $v1, ($v0)
/* 0E3914 80182ED4 240DFFFF */  li    $t5, -1
/* 0E3918 80182ED8 240400BA */  li    $a0, 186
/* 0E391C 80182EDC 00031880 */  sll   $v1, $v1, 2
/* 0E3920 80182EE0 00E35021 */  addu  $t2, $a3, $v1
/* 0E3924 80182EE4 C54A0000 */  lwc1  $f10, ($t2)
/* 0E3928 80182EE8 00230821 */  addu  $at, $at, $v1
/* 0E392C 80182EEC E42A64D0 */ swc1 $f10, %lo(D_800E64D0)($at)
/* 0E3930 80182EF0 8C4B0000 */  lw    $t3, ($v0)
/* 0E3934 80182EF4 3C01800E */ lui $at, %hi(D_800E6850)
/* 0E3938 80182EF8 000B6080 */  sll   $t4, $t3, 2
/* 0E393C 80182EFC 002C0821 */  addu  $at, $at, $t4
/* 0E3940 80182F00 E4226850 */ swc1 $f2, %lo(D_800E6850)($at)
/* 0E3944 80182F04 8C4E0000 */  lw    $t6, ($v0)
/* 0E3948 80182F08 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 0E394C 80182F0C 000E7880 */  sll   $t7, $t6, 2
/* 0E3950 80182F10 010FC821 */  addu  $t9, $t0, $t7
/* 0E3954 80182F14 AF2D0000 */  sw    $t5, ($t9)
/* 0E3958 80182F18 8C430000 */  lw    $v1, ($v0)
/* 0E395C 80182F1C 00031880 */  sll   $v1, $v1, 2
/* 0E3960 80182F20 0103C021 */  addu  $t8, $t0, $v1
/* 0E3964 80182F24 8F050000 */  lw    $a1, ($t8)
/* 0E3968 80182F28 00230821 */  addu  $at, $at, $v1
/* 0E396C 80182F2C AC259AA0 */ sw $a1, %lo(D_800E9AA0)($at)
/* 0E3970 80182F30 8C490000 */  lw    $t1, ($v0)
/* 0E3974 80182F34 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0E3978 80182F38 00095080 */  sll   $t2, $t1, 2
/* 0E397C 80182F3C 002A0821 */  addu  $at, $at, $t2
/* 0E3980 80182F40 0C029D9E */  jal   play_sound
/* 0E3984 80182F44 AC2598E0 */ sw $a1, %lo(D_800E98E0)($at)
/* 0E3988 80182F48 3C040002 */  lui   $a0, (0x000201EB >> 16) # lui $a0, 2
/* 0E398C 80182F4C 3C050002 */  lui   $a1, (0x000201EC >> 16) # lui $a1, 2
/* 0E3990 80182F50 34A501EC */  ori   $a1, (0x000201EC & 0xFFFF) # ori $a1, $a1, 0x1ec
/* 0E3994 80182F54 348401EB */  ori   $a0, (0x000201EB & 0xFFFF) # ori $a0, $a0, 0x1eb
/* 0E3998 80182F58 0C048C3A */  jal   func_801230E8
/* 0E399C 80182F5C 24060001 */   li    $a2, 1
/* 0E39A0 80182F60 3C0C8019 */  lui   $t4, %hi(D_801907C8) # $t4, 0x8019
/* 0E39A4 80182F64 240B0001 */  li    $t3, 1
/* 0E39A8 80182F68 258C07C8 */  addiu $t4, %lo(D_801907C8) # addiu $t4, $t4, 0x7c8
/* 0E39AC 80182F6C 3C040002 */  lui   $a0, (0x0002001B >> 16) # lui $a0, 2
/* 0E39B0 80182F70 AE0B003C */  sw    $t3, 0x3c($s0)
/* 0E39B4 80182F74 AE0C015C */  sw    $t4, 0x15c($s0)
/* 0E39B8 80182F78 0C048BC2 */  jal   func_80122F08
/* 0E39BC 80182F7C 3484001B */   ori   $a0, (0x0002001B & 0xFFFF) # ori $a0, $a0, 0x1b
/* 0E39C0 80182F80 8E2F0000 */  lw    $t7, ($s1)
/* 0E39C4 80182F84 240E0001 */  li    $t6, 1
/* 0E39C8 80182F88 AE0E0154 */  sw    $t6, 0x154($s0)
/* 0E39CC 80182F8C 8DED0000 */  lw    $t5, ($t7)
/* 0E39D0 80182F90 3C12800E */  lui   $s2, %hi(D_800E6A10) # $s2, 0x800e
/* 0E39D4 80182F94 26526A10 */  addiu $s2, %lo(D_800E6A10) # addiu $s2, $s2, 0x6a10
/* 0E39D8 80182F98 000DC880 */  sll   $t9, $t5, 2
/* 0E39DC 80182F9C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E39E0 80182FA0 0259C021 */  addu  $t8, $s2, $t9
/* 0E39E4 80182FA4 4481A000 */  mtc1  $at, $f20
/* 0E39E8 80182FA8 C7100000 */  lwc1  $f16, ($t8)
/* 0E39EC 80182FAC 3C040002 */  lui   $a0, 2
/* 0E39F0 80182FB0 4610A032 */  c.eq.s $f20, $f16
/* 0E39F4 80182FB4 00000000 */  nop   
/* 0E39F8 80182FB8 45000006 */  bc1f  .L80182FD4_ovl3
/* 0E39FC 80182FBC 00000000 */   nop   
/* 0E3A00 80182FC0 3C040002 */  lui   $a0, (0x000201E6 >> 16) # lui $a0, 2
/* 0E3A04 80182FC4 0C02A855 */  jal   func_800AA154
/* 0E3A08 80182FC8 348401E5 */   ori   $a0, (0x000201E5 & 0xFFFF) # ori $a0, $a0, 0x1e5
/* 0E3A0C 80182FCC 10000004 */  b     .L80182FE0_ovl3
/* 0E3A10 80182FD0 8E220000 */   lw    $v0, ($s1)
.L80182FD4_ovl3:
/* 0E3A14 80182FD4 0C02A855 */  jal   func_800AA154
/* 0E3A18 80182FD8 348401E6 */   ori   $a0, (0x000201E6 & 0xFFFF) # ori $a0, $a0, 0x1e6
/* 0E3A1C 80182FDC 8E220000 */  lw    $v0, ($s1)
.L80182FE0_ovl3:
/* 0E3A20 80182FE0 24090001 */  li    $t1, 1
/* 0E3A24 80182FE4 AE090044 */  sw    $t1, 0x44($s0)
/* 0E3A28 80182FE8 8C4B0000 */  lw    $t3, ($v0)
/* 0E3A2C 80182FEC 3C06800F */  lui   $a2, %hi(D_800E9560) # $a2, 0x800f
/* 0E3A30 80182FF0 24C69560 */  addiu $a2, %lo(D_800E9560) # addiu $a2, $a2, -0x6aa0
/* 0E3A34 80182FF4 000B6080 */  sll   $t4, $t3, 2
/* 0E3A38 80182FF8 00CC7021 */  addu  $t6, $a2, $t4
/* 0E3A3C 80182FFC 240A0003 */  li    $t2, 3
/* 0E3A40 80183000 ADCA0000 */  sw    $t2, ($t6)
/* 0E3A44 80183004 8C430000 */  lw    $v1, ($v0)
/* 0E3A48 80183008 00031880 */  sll   $v1, $v1, 2
/* 0E3A4C 8018300C 00C32021 */  addu  $a0, $a2, $v1
/* 0E3A50 80183010 8C850000 */  lw    $a1, ($a0)
/* 0E3A54 80183014 10A00026 */  beqz  $a1, .L801830B0_ovl3
/* 0E3A58 80183018 24AFFFFF */   addiu $t7, $a1, -1
.L8018301C_ovl3:
/* 0E3A5C 8018301C AC8F0000 */  sw    $t7, ($a0)
/* 0E3A60 80183020 8C4D0000 */  lw    $t5, ($v0)
/* 0E3A64 80183024 3C040002 */  lui   $a0, (0x000201E4 >> 16) # lui $a0, 2
/* 0E3A68 80183028 348401E4 */  ori   $a0, (0x000201E4 & 0xFFFF) # ori $a0, $a0, 0x1e4
/* 0E3A6C 8018302C 000DC880 */  sll   $t9, $t5, 2
/* 0E3A70 80183030 0259C021 */  addu  $t8, $s2, $t9
/* 0E3A74 80183034 C7120000 */  lwc1  $f18, ($t8)
/* 0E3A78 80183038 3C108018 */  lui   $s0, %hi(D_801831EC)
/* 0E3A7C 8018303C 4612A032 */  c.eq.s $f20, $f18
/* 0E3A80 80183040 00000000 */  nop   
/* 0E3A84 80183044 45000008 */  bc1f  .L80183068_ovl3
/* 0E3A88 80183048 00000000 */   nop   
/* 0E3A8C 8018304C 3C040002 */  lui   $a0, (0x000201E3 >> 16) # lui $a0, 2
/* 0E3A90 80183050 3C108018 */  lui   $s0, %hi(D_801831EC) # $s0, 0x8018
/* 0E3A94 80183054 261031EC */  addiu $s0, %lo(D_801831EC) # addiu $s0, $s0, 0x31ec
/* 0E3A98 80183058 0C02A806 */  jal   func_800AA018
/* 0E3A9C 8018305C 348401E3 */   ori   $a0, (0x000201E3 & 0xFFFF) # ori $a0, $a0, 0x1e3
/* 0E3AA0 80183060 10000004 */  b     .L80183074_ovl3
/* 0E3AA4 80183064 8E290000 */   lw    $t1, ($s1)
.L80183068_ovl3:
/* 0E3AA8 80183068 0C02A806 */  jal   func_800AA018
/* 0E3AAC 8018306C 261031EC */   addiu $s0, $s0, %lo(D_801831EC)
/* 0E3AB0 80183070 8E290000 */  lw    $t1, ($s1)
.L80183074_ovl3:
/* 0E3AB4 80183074 3C01800E */ lui $at, %hi(D_800DF310)
/* 0E3AB8 80183078 8D2B0000 */  lw    $t3, ($t1)
/* 0E3ABC 8018307C 000B6080 */  sll   $t4, $t3, 2
/* 0E3AC0 80183080 002C0821 */  addu  $at, $at, $t4
/* 0E3AC4 80183084 0C02BC9F */  jal   func_800AF27C
/* 0E3AC8 80183088 AC30F310 */ sw $s0, %lo(D_800DF310)($at)
/* 0E3ACC 8018308C 8E220000 */  lw    $v0, ($s1)
/* 0E3AD0 80183090 3C0A800F */  lui   $t2, %hi(D_800E9560) # $t2, 0x800f
/* 0E3AD4 80183094 254A9560 */  addiu $t2, %lo(D_800E9560) # addiu $t2, $t2, -0x6aa0
/* 0E3AD8 80183098 8C430000 */  lw    $v1, ($v0)
/* 0E3ADC 8018309C 00031880 */  sll   $v1, $v1, 2
/* 0E3AE0 801830A0 006A2021 */  addu  $a0, $v1, $t2
/* 0E3AE4 801830A4 8C850000 */  lw    $a1, ($a0)
/* 0E3AE8 801830A8 54A0FFDC */  bnezl $a1, .L8018301C_ovl3
/* 0E3AEC 801830AC 24AFFFFF */   addiu $t7, $a1, -1
.L801830B0_ovl3:
/* 0E3AF0 801830B0 3C10800F */  lui   $s0, %hi(D_800E8920) # $s0, 0x800f
/* 0E3AF4 801830B4 26108920 */  addiu $s0, %lo(D_800E8920) # addiu $s0, $s0, -0x76e0
.L801830B8_ovl3:
/* 0E3AF8 801830B8 02437021 */  addu  $t6, $s2, $v1
/* 0E3AFC 801830BC C5C40000 */  lwc1  $f4, ($t6)
/* 0E3B00 801830C0 3C040002 */  lui   $a0, 2
/* 0E3B04 801830C4 4604A032 */  c.eq.s $f20, $f4
/* 0E3B08 801830C8 00000000 */  nop   
/* 0E3B0C 801830CC 45000006 */  bc1f  .L801830E8_ovl3
/* 0E3B10 801830D0 00000000 */   nop   
/* 0E3B14 801830D4 3C040002 */  lui   $a0, (0x000201E7 >> 16) # lui $a0, 2
/* 0E3B18 801830D8 0C02A806 */  jal   func_800AA018
/* 0E3B1C 801830DC 348401E8 */   ori   $a0, (0x000201E8 & 0xFFFF) # ori $a0, $a0, 0x1e8
/* 0E3B20 801830E0 10000004 */  b     .L801830F4_ovl3
/* 0E3B24 801830E4 8E2F0000 */   lw    $t7, ($s1)
.L801830E8_ovl3:
/* 0E3B28 801830E8 0C02A806 */  jal   func_800AA018
/* 0E3B2C 801830EC 348401E7 */   ori   $a0, (0x000201E7 & 0xFFFF) # ori $a0, $a0, 0x1e7
/* 0E3B30 801830F0 8E2F0000 */  lw    $t7, ($s1)
.L801830F4_ovl3:
/* 0E3B34 801830F4 8DED0000 */  lw    $t5, ($t7)
/* 0E3B38 801830F8 000DC880 */  sll   $t9, $t5, 2
/* 0E3B3C 801830FC 0219C021 */  addu  $t8, $s0, $t9
/* 0E3B40 80183100 8F020000 */  lw    $v0, ($t8)
/* 0E3B44 80183104 10400005 */  beqz  $v0, .L8018311C_ovl3
/* 0E3B48 80183108 00000000 */   nop   
/* 0E3B4C 8018310C 0C002DAF */  jal   func_8000B6BC
/* 0E3B50 80183110 24040001 */   li    $a0, 1
/* 0E3B54 80183114 1000FFF7 */  b     .L801830F4_ovl3
/* 0E3B58 80183118 8E2F0000 */   lw    $t7, ($s1)
.L8018311C_ovl3:
/* 0E3B5C 8018311C 1440000A */  bnez  $v0, .L80183148_ovl3
/* 0E3B60 80183120 00000000 */   nop   
.L80183124_ovl3:
/* 0E3B64 80183124 0C002DAF */  jal   func_8000B6BC
/* 0E3B68 80183128 24040001 */   li    $a0, 1
/* 0E3B6C 8018312C 8E290000 */  lw    $t1, ($s1)
/* 0E3B70 80183130 8D2B0000 */  lw    $t3, ($t1)
/* 0E3B74 80183134 000B6080 */  sll   $t4, $t3, 2
/* 0E3B78 80183138 020C5021 */  addu  $t2, $s0, $t4
/* 0E3B7C 8018313C 8D420000 */  lw    $v0, ($t2)
/* 0E3B80 80183140 1040FFF8 */  beqz  $v0, .L80183124_ovl3
/* 0E3B84 80183144 00000000 */   nop   
.L80183148_ovl3:
/* 0E3B88 80183148 0C029D9E */  jal   play_sound
/* 0E3B8C 8018314C 24040149 */   li    $a0, 329
/* 0E3B90 80183150 8E2E0000 */  lw    $t6, ($s1)
/* 0E3B94 80183154 3C040002 */  lui   $a0, 2
/* 0E3B98 80183158 8DCF0000 */  lw    $t7, ($t6)
/* 0E3B9C 8018315C 000F6880 */  sll   $t5, $t7, 2
/* 0E3BA0 80183160 024DC821 */  addu  $t9, $s2, $t5
/* 0E3BA4 80183164 C7260000 */  lwc1  $f6, ($t9)
/* 0E3BA8 80183168 4606A032 */  c.eq.s $f20, $f6
/* 0E3BAC 8018316C 00000000 */  nop   
/* 0E3BB0 80183170 45000006 */  bc1f  .L8018318C_ovl3
/* 0E3BB4 80183174 00000000 */   nop   
/* 0E3BB8 80183178 3C040002 */  lui   $a0, (0x000201E9 >> 16) # lui $a0, 2
/* 0E3BBC 8018317C 0C02A855 */  jal   func_800AA154
/* 0E3BC0 80183180 348401EA */   ori   $a0, (0x000201EA & 0xFFFF) # ori $a0, $a0, 0x1ea
/* 0E3BC4 80183184 10000004 */  b     .L80183198_ovl3
/* 0E3BC8 80183188 8E380000 */   lw    $t8, ($s1)
.L8018318C_ovl3:
/* 0E3BCC 8018318C 0C02A855 */  jal   func_800AA154
/* 0E3BD0 80183190 348401E9 */   ori   $a0, (0x000201E9 & 0xFFFF) # ori $a0, $a0, 0x1e9
/* 0E3BD4 80183194 8E380000 */  lw    $t8, ($s1)
.L80183198_ovl3:
/* 0E3BD8 80183198 8F030000 */  lw    $v1, ($t8)
/* 0E3BDC 8018319C 1000FFC6 */  b     .L801830B8_ovl3
/* 0E3BE0 801831A0 00031880 */   sll   $v1, $v1, 2
.L801831A4_ovl3:
/* 0E3BE4 801831A4 0C029D9E */  jal   play_sound
/* 0E3BE8 801831A8 2404024B */   li    $a0, 587
/* 0E3BEC 801831AC 0C047585 */  jal   func_8011D614
/* 0E3BF0 801831B0 AE0000A0 */   sw    $zero, 0xa0($s0)
/* 0E3BF4 801831B4 3C040002 */  lui   $a0, (0x000201ED >> 16) # lui $a0, 2
/* 0E3BF8 801831B8 0C02A855 */  jal   func_800AA154
/* 0E3BFC 801831BC 348401ED */   ori   $a0, (0x000201ED & 0xFFFF) # ori $a0, $a0, 0x1ed
/* 0E3C00 801831C0 8E090030 */  lw    $t1, 0x30($s0)
/* 0E3C04 801831C4 252B0001 */  addiu $t3, $t1, 1
/* 0E3C08 801831C8 0C02BE85 */  jal   func_800AFA14
/* 0E3C0C 801831CC AE0B0030 */   sw    $t3, 0x30($s0)
/* 0E3C10 801831D0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0E3C14 801831D4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0E3C18 801831D8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0E3C1C 801831DC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0E3C20 801831E0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0E3C24 801831E4 03E00008 */  jr    $ra
/* 0E3C28 801831E8 27BD0030 */   addiu $sp, $sp, 0x30
