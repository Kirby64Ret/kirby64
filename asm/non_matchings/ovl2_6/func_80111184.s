glabel func_80111184
/* 099BF4 80111184 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 099BF8 80111188 AFBF0014 */  sw    $ra, 0x14($sp)
/* 099BFC 8011118C AFA5001C */  sw    $a1, 0x1c($sp)
/* 099C00 80111190 8CAF0010 */  lw    $t7, 0x10($a1)
/* 099C04 80111194 8CA70000 */  lw    $a3, ($a1)
/* 099C08 80111198 8C830000 */  lw    $v1, ($a0)
/* 099C0C 8011119C 000FC040 */  sll   $t8, $t7, 1
/* 099C10 801111A0 070200AB */  bltzl $t8, .L80111450_ovl2
/* 099C14 801111A4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099C18 801111A8 8C820018 */  lw    $v0, 0x18($a0)
/* 099C1C 801111AC 3C0A800E */  lui   $t2, %hi(D_800E7CE0) # $t2, 0x800e
/* 099C20 801111B0 254A7CE0 */  addiu $t2, %lo(D_800E7CE0) # addiu $t2, $t2, 0x7ce0
/* 099C24 801111B4 0002C800 */  sll   $t9, $v0, 0
/* 099C28 801111B8 072000A4 */  bltz  $t9, .L8011144C_ovl2
/* 099C2C 801111BC 00034080 */   sll   $t0, $v1, 2
/* 099C30 801111C0 010A4821 */  addu  $t1, $t0, $t2
/* 099C34 801111C4 8D2B0000 */  lw    $t3, ($t1)
/* 099C38 801111C8 3C0C800E */  lui   $t4, %hi(D_800E7CDC) # $t4, 0x800e
/* 099C3C 801111CC 258C7CDC */  addiu $t4, %lo(D_800E7CDC) # addiu $t4, $t4, 0x7cdc
/* 099C40 801111D0 5560009F */  bnezl $t3, .L80111450_ovl2
/* 099C44 801111D4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099C48 801111D8 152C0007 */  bne   $t1, $t4, .L801111F8_ovl2
/* 099C4C 801111DC 8FB8001C */   lw    $t8, 0x1c($sp)
/* 099C50 801111E0 240D0002 */  li    $t5, 2
/* 099C54 801111E4 A0CD0002 */  sb    $t5, 2($a2)
/* 099C58 801111E8 8FAE001C */  lw    $t6, 0x1c($sp)
/* 099C5C 801111EC 8DCF000C */  lw    $t7, 0xc($t6)
/* 099C60 801111F0 10000096 */  b     .L8011144C_ovl2
/* 099C64 801111F4 A0CF0003 */   sb    $t7, 3($a2)
.L801111F8_ovl2:
/* 099C68 801111F8 93050009 */  lbu   $a1, 9($t8)
/* 099C6C 801111FC 2CA10007 */  sltiu $at, $a1, 7
/* 099C70 80111200 10200060 */  beqz  $at, .L80111384_ovl2
/* 099C74 80111204 0005C880 */   sll   $t9, $a1, 2
/* 099C78 80111208 3C018013 */  lui   $at, 0x8013
/* 099C7C 8011120C 00390821 */  addu  $at, $at, $t9
/* 099C80 80111210 8C398CAC */  lw    $t9, -0x7354($at)
/* 099C84 80111214 03200008 */  jr    $t9
/* 099C88 80111218 00000000 */   nop   
/* 099C8C 8011121C 304A0002 */  andi  $t2, $v0, 2
/* 099C90 80111220 11400009 */  beqz  $t2, .L80111248_ovl2
/* 099C94 80111224 2402FFFF */   li    $v0, -1
/* 099C98 80111228 240B000A */  li    $t3, 10
/* 099C9C 8011122C A0CB0002 */  sb    $t3, 2($a2)
/* 099CA0 80111230 8C8C0018 */  lw    $t4, 0x18($a0)
/* 099CA4 80111234 000C68C0 */  sll   $t5, $t4, 3
/* 099CA8 80111238 05A30085 */  bgezl $t5, .L80111450_ovl2
/* 099CAC 8011123C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099CB0 80111240 10000082 */  b     .L8011144C_ovl2
/* 099CB4 80111244 A0C00002 */   sb    $zero, 2($a2)
.L80111248_ovl2:
/* 099CB8 80111248 10E20016 */  beq   $a3, $v0, .L801112A4_ovl2
/* 099CBC 8011124C 3C048013 */   lui   $a0, %hi(D_80128B14) # $a0, 0x8013
/* 099CC0 80111250 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 099CC4 80111254 44812000 */  mtc1  $at, $f4
/* 099CC8 80111258 3C01800E */  lui   $at, 0x800e
/* 099CCC 8011125C 00077080 */  sll   $t6, $a3, 2
/* 099CD0 80111260 002E0821 */  addu  $at, $at, $t6
/* 099CD4 80111264 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 099CD8 80111268 3C01800F */  lui   $at, 0x800f
/* 099CDC 8011126C 00280821 */  addu  $at, $at, $t0
/* 099CE0 80111270 46062032 */  c.eq.s $f4, $f6
/* 099CE4 80111274 240F0001 */  li    $t7, 1
/* 099CE8 80111278 24180003 */  li    $t8, 3
/* 099CEC 8011127C 45000005 */  bc1f  .L80111294_ovl2
/* 099CF0 80111280 00000000 */   nop   
/* 099CF4 80111284 3C01800F */  lui   $at, 0x800f
/* 099CF8 80111288 00280821 */  addu  $at, $at, $t0
/* 099CFC 8011128C 10000002 */  b     .L80111298_ovl2
/* 099D00 80111290 AC2285A0 */   sw    $v0, -0x7a60($at)
.L80111294_ovl2:
/* 099D04 80111294 AC2F85A0 */  sw    $t7, -0x7a60($at)
.L80111298_ovl2:
/* 099D08 80111298 A0D80002 */  sb    $t8, 2($a2)
/* 099D0C 8011129C 1000006B */  b     .L8011144C_ovl2
/* 099D10 801112A0 A0C00004 */   sb    $zero, 4($a2)
.L801112A4_ovl2:
/* 099D14 801112A4 A0C00002 */  sb    $zero, 2($a2)
/* 099D18 801112A8 24848B14 */  addiu $a0, %lo(D_80128B14) # addiu $a0, $a0, -0x74ec
/* 099D1C 801112AC 0C02909C */  jal   func_800A4270_ovl2
/* 099D20 801112B0 00E02825 */   move  $a1, $a3
/* 099D24 801112B4 10000066 */  b     .L80111450_ovl2
/* 099D28 801112B8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099D2C 801112BC 30590001 */  andi  $t9, $v0, 1
/* 099D30 801112C0 13200035 */  beqz  $t9, .L80111398_ovl2
/* 099D34 801112C4 240A0006 */   li    $t2, 6
/* 099D38 801112C8 A0CA0002 */  sb    $t2, 2($a2)
/* 099D3C 801112CC 8C8B0018 */  lw    $t3, 0x18($a0)
/* 099D40 801112D0 000B60C0 */  sll   $t4, $t3, 3
/* 099D44 801112D4 0583005E */  bgezl $t4, .L80111450_ovl2
/* 099D48 801112D8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099D4C 801112DC 1000005B */  b     .L8011144C_ovl2
/* 099D50 801112E0 A0C00002 */   sb    $zero, 2($a2)
/* 099D54 801112E4 304D0008 */  andi  $t5, $v0, 8
/* 099D58 801112E8 11A0002B */  beqz  $t5, .L80111398_ovl2
/* 099D5C 801112EC 240E000C */   li    $t6, 12
/* 099D60 801112F0 A0CE0002 */  sb    $t6, 2($a2)
/* 099D64 801112F4 8C8F0018 */  lw    $t7, 0x18($a0)
/* 099D68 801112F8 000FC0C0 */  sll   $t8, $t7, 3
/* 099D6C 801112FC 07030054 */  bgezl $t8, .L80111450_ovl2
/* 099D70 80111300 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099D74 80111304 10000051 */  b     .L8011144C_ovl2
/* 099D78 80111308 A0C00002 */   sb    $zero, 2($a2)
/* 099D7C 8011130C 30590010 */  andi  $t9, $v0, 0x10
/* 099D80 80111310 13200021 */  beqz  $t9, .L80111398_ovl2
/* 099D84 80111314 240A000D */   li    $t2, 13
/* 099D88 80111318 A0CA0002 */  sb    $t2, 2($a2)
/* 099D8C 8011131C 8C8B0018 */  lw    $t3, 0x18($a0)
/* 099D90 80111320 000B60C0 */  sll   $t4, $t3, 3
/* 099D94 80111324 0583004A */  bgezl $t4, .L80111450_ovl2
/* 099D98 80111328 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099D9C 8011132C 10000047 */  b     .L8011144C_ovl2
/* 099DA0 80111330 A0C00002 */   sb    $zero, 2($a2)
/* 099DA4 80111334 304D0020 */  andi  $t5, $v0, 0x20
/* 099DA8 80111338 11A00017 */  beqz  $t5, .L80111398_ovl2
/* 099DAC 8011133C 240E000E */   li    $t6, 14
/* 099DB0 80111340 A0CE0002 */  sb    $t6, 2($a2)
/* 099DB4 80111344 8C8F0018 */  lw    $t7, 0x18($a0)
/* 099DB8 80111348 000FC0C0 */  sll   $t8, $t7, 3
/* 099DBC 8011134C 07030040 */  bgezl $t8, .L80111450_ovl2
/* 099DC0 80111350 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099DC4 80111354 1000003D */  b     .L8011144C_ovl2
/* 099DC8 80111358 A0C00002 */   sb    $zero, 2($a2)
/* 099DCC 8011135C 30590040 */  andi  $t9, $v0, 0x40
/* 099DD0 80111360 1320000D */  beqz  $t9, .L80111398_ovl2
/* 099DD4 80111364 240A000F */   li    $t2, 15
/* 099DD8 80111368 A0CA0002 */  sb    $t2, 2($a2)
/* 099DDC 8011136C 8C8B0018 */  lw    $t3, 0x18($a0)
/* 099DE0 80111370 000B60C0 */  sll   $t4, $t3, 3
/* 099DE4 80111374 05830036 */  bgezl $t4, .L80111450_ovl2
/* 099DE8 80111378 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099DEC 8011137C 10000033 */  b     .L8011144C_ovl2
/* 099DF0 80111380 A0C00002 */   sb    $zero, 2($a2)
.L80111384_ovl2:
/* 099DF4 80111384 3C048013 */  lui   $a0, %hi(D_80128B34) # $a0, 0x8013
/* 099DF8 80111388 0C02909C */  jal   func_800A4270_ovl2
/* 099DFC 8011138C 24848B34 */   addiu $a0, %lo(D_80128B34) # addiu $a0, $a0, -0x74cc
/* 099E00 80111390 1000002F */  b     .L80111450_ovl2
/* 099E04 80111394 8FBF0014 */   lw    $ra, 0x14($sp)
.L80111398_ovl2:
/* 099E08 80111398 8FAD001C */  lw    $t5, 0x1c($sp)
/* 099E0C 8011139C 44800000 */  mtc1  $zero, $f0
/* 099E10 801113A0 3C19800E */  lui   $t9, %hi(D_800E7B20) # $t9, 0x800e
/* 099E14 801113A4 8DAE000C */  lw    $t6, 0xc($t5)
/* 099E18 801113A8 3C0B800E */  lui   $t3, %hi(D_800E7B20) # $t3, 0x800e
/* 099E1C 801113AC 3C030800 */  lui   $v1, 0x800
/* 099E20 801113B0 A0CE0003 */  sb    $t6, 3($a2)
/* 099E24 801113B4 8C8F0018 */  lw    $t7, 0x18($a0)
/* 099E28 801113B8 8FAA001C */  lw    $t2, 0x1c($sp)
/* 099E2C 801113BC 27397B20 */  addiu $t9, %lo(D_800E7B20) # addiu $t9, $t9, 0x7b20
/* 099E30 801113C0 000FC100 */  sll   $t8, $t7, 4
/* 099E34 801113C4 07000006 */  bltz  $t8, .L801113E0_ovl2
/* 099E38 801113C8 256B7B20 */   addiu $t3, %lo(D_800E7B20) # addiu $t3, $t3, 0x7b20
/* 099E3C 801113CC 01191021 */  addu  $v0, $t0, $t9
/* 099E40 801113D0 C4480000 */  lwc1  $f8, ($v0)
/* 099E44 801113D4 C54A0004 */  lwc1  $f10, 4($t2)
/* 099E48 801113D8 460A4401 */  sub.s $f16, $f8, $f10
/* 099E4C 801113DC E4500000 */  swc1  $f16, ($v0)
.L801113E0_ovl2:
/* 099E50 801113E0 010B1021 */  addu  $v0, $t0, $t3
/* 099E54 801113E4 C4520000 */  lwc1  $f18, ($v0)
/* 099E58 801113E8 240C0001 */  li    $t4, 1
/* 099E5C 801113EC 4600903E */  c.le.s $f18, $f0
/* 099E60 801113F0 00000000 */  nop   
/* 099E64 801113F4 45020005 */  bc1fl .L8011140C_ovl2
/* 099E68 801113F8 240D0002 */   li    $t5, 2
/* 099E6C 801113FC A0CC0002 */  sb    $t4, 2($a2)
/* 099E70 80111400 10000012 */  b     .L8011144C_ovl2
/* 099E74 80111404 E4400000 */   swc1  $f0, ($v0)
/* 099E78 80111408 240D0002 */  li    $t5, 2
.L8011140C_ovl2:
/* 099E7C 8011140C A0CD0002 */  sb    $t5, 2($a2)
/* 099E80 80111410 8C8E0018 */  lw    $t6, 0x18($a0)
/* 099E84 80111414 01C37824 */  and   $t7, $t6, $v1
/* 099E88 80111418 15E0000B */  bnez  $t7, .L80111448_ovl2
/* 099E8C 8011141C 3C18800E */   lui   $t8, 0x800e
/* 099E90 80111420 0308C021 */  addu  $t8, $t8, $t0
/* 099E94 80111424 8F18D710 */  lw    $t8, -0x28f0($t8)
/* 099E98 80111428 24010017 */  li    $at, 23
/* 099E9C 8011142C 2419000F */  li    $t9, 15
/* 099EA0 80111430 17010003 */  bne   $t8, $at, .L80111440_ovl2
/* 099EA4 80111434 240A002D */   li    $t2, 45
/* 099EA8 80111438 10000004 */  b     .L8011144C_ovl2
/* 099EAC 8011143C AD390000 */   sw    $t9, ($t1)
.L80111440_ovl2:
/* 099EB0 80111440 10000002 */  b     .L8011144C_ovl2
/* 099EB4 80111444 AD2A0000 */   sw    $t2, ($t1)
.L80111448_ovl2:
/* 099EB8 80111448 AD200000 */  sw    $zero, ($t1)
.L8011144C_ovl2:
/* 099EBC 8011144C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80111450_ovl2:
/* 099EC0 80111450 27BD0018 */  addiu $sp, $sp, 0x18
/* 099EC4 80111454 03E00008 */  jr    $ra
/* 099EC8 80111458 00000000 */   nop   
