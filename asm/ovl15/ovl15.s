.set noat
.set noreorder
.set gp=64


.section .text, "ax"

/* 205D40 801DB1E0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 205D44 801DB1E4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 205D48 801DB1E8 AFB20020 */  sw    $s2, 0x20($sp)
/* 205D4C 801DB1EC AFB1001C */  sw    $s1, 0x1c($sp)
/* 205D50 801DB1F0 AFB00018 */  sw    $s0, 0x18($sp)
/* 205D54 801DB1F4 0C068CA0 */  jal   func_801A3280_ovl15
/* 205D58 801DB1F8 AFA40028 */   sw    $a0, 0x28($sp)
/* 205D5C 801DB1FC 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 205D60 801DB200 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 205D64 801DB204 8E420000 */  lw    $v0, ($s2)
/* 205D68 801DB208 3C01800F */  lui   $at, 0x800f
/* 205D6C 801DB20C 240E0001 */  li    $t6, 1
/* 205D70 801DB210 8C4F0000 */  lw    $t7, ($v0)
/* 205D74 801DB214 3C0A800E */  lui   $t2, 0x800e
/* 205D78 801DB218 2419FFFF */  li    $t9, -1
/* 205D7C 801DB21C 000FC080 */  sll   $t8, $t7, 2
/* 205D80 801DB220 00380821 */  addu  $at, $at, $t8
/* 205D84 801DB224 AC2E8E60 */  sw    $t6, -0x71a0($at)
/* 205D88 801DB228 8C480000 */  lw    $t0, ($v0)
/* 205D8C 801DB22C 00084880 */  sll   $t1, $t0, 2
/* 205D90 801DB230 01495021 */  addu  $t2, $t2, $t1
/* 205D94 801DB234 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 205D98 801DB238 0C066ED6 */  jal   func_8019BB58_ovl15
/* 205D9C 801DB23C A1590039 */   sb    $t9, 0x39($t2)
/* 205DA0 801DB240 8E4C0000 */  lw    $t4, ($s2)
/* 205DA4 801DB244 3C0B801E */  lui   $t3, %hi(D_801DB378) # $t3, 0x801e
/* 205DA8 801DB248 3C01800E */  lui   $at, 0x800e
/* 205DAC 801DB24C 8D8D0000 */  lw    $t5, ($t4)
/* 205DB0 801DB250 256BB378 */  addiu $t3, %lo(D_801DB378) # addiu $t3, $t3, -0x4c88
/* 205DB4 801DB254 3C04801E */  lui   $a0, %hi(D_801DB2F8) # $a0, 0x801e
/* 205DB8 801DB258 000D7880 */  sll   $t7, $t5, 2
/* 205DBC 801DB25C 002F0821 */  addu  $at, $at, $t7
/* 205DC0 801DB260 AC2BF150 */  sw    $t3, -0xeb0($at)
/* 205DC4 801DB264 0C068354 */  jal   func_801A0D50
/* 205DC8 801DB268 2484B2F8 */   addiu $a0, %lo(D_801DB2F8) # addiu $a0, $a0, -0x4d08
/* 205DCC 801DB26C 8E420000 */  lw    $v0, ($s2)
/* 205DD0 801DB270 3C01800F */  lui   $at, 0x800f
/* 205DD4 801DB274 3C04800E */  lui   $a0, 0x800e
/* 205DD8 801DB278 8C4E0000 */  lw    $t6, ($v0)
/* 205DDC 801DB27C 3C06801E */  lui   $a2, %hi(D_801E6450) # $a2, 0x801e
/* 205DE0 801DB280 24C66450 */  addiu $a2, %lo(D_801E6450) # addiu $a2, $a2, 0x6450
/* 205DE4 801DB284 000EC080 */  sll   $t8, $t6, 2
/* 205DE8 801DB288 00380821 */  addu  $at, $at, $t8
/* 205DEC 801DB28C AC208920 */  sw    $zero, -0x76e0($at)
/* 205DF0 801DB290 8C480000 */  lw    $t0, ($v0)
/* 205DF4 801DB294 2405000B */  li    $a1, 11
/* 205DF8 801DB298 00882021 */  addu  $a0, $a0, $t0
/* 205DFC 801DB29C 0C02911F */  jal   call_virtual_function
/* 205E00 801DB2A0 90847880 */   lbu   $a0, 0x7880($a0)
/* 205E04 801DB2A4 3C11801E */  lui   $s1, %hi(D_801E647C) # $s1, 0x801e
/* 205E08 801DB2A8 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 205E0C 801DB2AC 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 205E10 801DB2B0 2631647C */  addiu $s1, %lo(D_801E647C) # addiu $s1, $s1, 0x647c
/* 205E14 801DB2B4 8E490000 */  lw    $t1, ($s2)
.L801DB2B8_ovl15:
/* 205E18 801DB2B8 24050011 */  li    $a1, 17
/* 205E1C 801DB2BC 02203025 */  move  $a2, $s1
/* 205E20 801DB2C0 8D390000 */  lw    $t9, ($t1)
/* 205E24 801DB2C4 00195080 */  sll   $t2, $t9, 2
/* 205E28 801DB2C8 020A6021 */  addu  $t4, $s0, $t2
/* 205E2C 801DB2CC 0C02911F */  jal   call_virtual_function
/* 205E30 801DB2D0 8D840000 */   lw    $a0, ($t4)
/* 205E34 801DB2D4 1000FFF8 */  b     .L801DB2B8_ovl15
/* 205E38 801DB2D8 8E490000 */   lw    $t1, ($s2)
/* 205E3C 801DB2DC 00000000 */  nop   
/* 205E40 801DB2E0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 205E44 801DB2E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 205E48 801DB2E8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 205E4C 801DB2EC 8FB20020 */  lw    $s2, 0x20($sp)
/* 205E50 801DB2F0 03E00008 */  jr    $ra
/* 205E54 801DB2F4 27BD0028 */   addiu $sp, $sp, 0x28

/* 205E58 801DB2F8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 205E5C 801DB2FC AFB20020 */  sw    $s2, 0x20($sp)
/* 205E60 801DB300 AFB1001C */  sw    $s1, 0x1c($sp)
/* 205E64 801DB304 AFB00018 */  sw    $s0, 0x18($sp)
/* 205E68 801DB308 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 205E6C 801DB30C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 205E70 801DB310 3C12801E */  lui   $s2, %hi(D_801E647C) # $s2, 0x801e
/* 205E74 801DB314 AFBF0024 */  sw    $ra, 0x24($sp)
/* 205E78 801DB318 AFA40028 */  sw    $a0, 0x28($sp)
/* 205E7C 801DB31C 2652647C */  addiu $s2, %lo(D_801E647C) # addiu $s2, $s2, 0x647c
/* 205E80 801DB320 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 205E84 801DB324 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 205E88 801DB328 8E2E0000 */  lw    $t6, ($s1)
.L801DB32C_ovl15:
/* 205E8C 801DB32C 24050011 */  li    $a1, 17
/* 205E90 801DB330 02403025 */  move  $a2, $s2
/* 205E94 801DB334 8DCF0000 */  lw    $t7, ($t6)
/* 205E98 801DB338 000FC080 */  sll   $t8, $t7, 2
/* 205E9C 801DB33C 0218C821 */  addu  $t9, $s0, $t8
/* 205EA0 801DB340 0C02911F */  jal   call_virtual_function
/* 205EA4 801DB344 8F240000 */   lw    $a0, ($t9)
/* 205EA8 801DB348 1000FFF8 */  b     .L801DB32C_ovl15
/* 205EAC 801DB34C 8E2E0000 */   lw    $t6, ($s1)
/* 205EB0 801DB350 00000000 */  nop   
/* 205EB4 801DB354 00000000 */  nop   
/* 205EB8 801DB358 00000000 */  nop   
/* 205EBC 801DB35C 00000000 */  nop   
/* 205EC0 801DB360 8FBF0024 */  lw    $ra, 0x24($sp)
/* 205EC4 801DB364 8FB00018 */  lw    $s0, 0x18($sp)
/* 205EC8 801DB368 8FB1001C */  lw    $s1, 0x1c($sp)
/* 205ECC 801DB36C 8FB20020 */  lw    $s2, 0x20($sp)
/* 205ED0 801DB370 03E00008 */  jr    $ra
/* 205ED4 801DB374 27BD0028 */   addiu $sp, $sp, 0x28

/* 205ED8 801DB378 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 205EDC 801DB37C 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 205EE0 801DB380 8C4E0014 */  lw    $t6, 0x14($v0)
/* 205EE4 801DB384 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 205EE8 801DB388 AFBF0014 */  sw    $ra, 0x14($sp)
/* 205EEC 801DB38C 11C0000C */  beqz  $t6, .L801DB3C0_ovl15
/* 205EF0 801DB390 AFA40018 */   sw    $a0, 0x18($sp)
/* 205EF4 801DB394 8C4F0010 */  lw    $t7, 0x10($v0)
/* 205EF8 801DB398 25F80001 */  addiu $t8, $t7, 1
/* 205EFC 801DB39C 2B010029 */  slti  $at, $t8, 0x29
/* 205F00 801DB3A0 14200008 */  bnez  $at, .L801DB3C4_ovl15
/* 205F04 801DB3A4 AC580010 */   sw    $t8, 0x10($v0)
/* 205F08 801DB3A8 0C029D9E */  jal   play_sound
/* 205F0C 801DB3AC 240401A5 */   li    $a0, 421
/* 205F10 801DB3B0 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 205F14 801DB3B4 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 205F18 801DB3B8 10000002 */  b     .L801DB3C4_ovl15
/* 205F1C 801DB3BC AC400010 */   sw    $zero, 0x10($v0)
.L801DB3C0_ovl15:
/* 205F20 801DB3C0 AC400010 */  sw    $zero, 0x10($v0)
.L801DB3C4_ovl15:
/* 205F24 801DB3C4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 205F28 801DB3C8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 205F2C 801DB3CC 3C04800E */  lui   $a0, 0x800e
/* 205F30 801DB3D0 3C06801E */  lui   $a2, %hi(D_801E64C0) # $a2, 0x801e
/* 205F34 801DB3D4 8D090000 */  lw    $t1, ($t0)
/* 205F38 801DB3D8 24C664C0 */  addiu $a2, %lo(D_801E64C0) # addiu $a2, $a2, 0x64c0
/* 205F3C 801DB3DC 2405000C */  li    $a1, 12
/* 205F40 801DB3E0 00095080 */  sll   $t2, $t1, 2
/* 205F44 801DB3E4 008A2021 */  addu  $a0, $a0, $t2
/* 205F48 801DB3E8 0C02911F */  jal   call_virtual_function
/* 205F4C 801DB3EC 8C84DFD0 */   lw    $a0, -0x2030($a0)
/* 205F50 801DB3F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 205F54 801DB3F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 205F58 801DB3F8 03E00008 */  jr    $ra
/* 205F5C 801DB3FC 00000000 */   nop   

/* 205F60 801DB400 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 205F64 801DB404 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 205F68 801DB408 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 205F6C 801DB40C AFBF003C */  sw    $ra, 0x3c($sp)
/* 205F70 801DB410 AFBE0038 */  sw    $fp, 0x38($sp)
/* 205F74 801DB414 AFB70034 */  sw    $s7, 0x34($sp)
/* 205F78 801DB418 AFB60030 */  sw    $s6, 0x30($sp)
/* 205F7C 801DB41C AFB5002C */  sw    $s5, 0x2c($sp)
/* 205F80 801DB420 AFB40028 */  sw    $s4, 0x28($sp)
/* 205F84 801DB424 AFB30024 */  sw    $s3, 0x24($sp)
/* 205F88 801DB428 AFB20020 */  sw    $s2, 0x20($sp)
/* 205F8C 801DB42C AFB1001C */  sw    $s1, 0x1c($sp)
/* 205F90 801DB430 AFB00018 */  sw    $s0, 0x18($sp)
/* 205F94 801DB434 AFA40040 */  sw    $a0, 0x40($sp)
/* 205F98 801DB438 24040079 */  li    $a0, 121
/* 205F9C 801DB43C 0C02C67D */  jal   func_800B19F4
/* 205FA0 801DB440 8DC50000 */   lw    $a1, ($t6)
/* 205FA4 801DB444 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 205FA8 801DB448 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 205FAC 801DB44C 0C02BEED */  jal   func_800AFBB4
/* 205FB0 801DB450 00002025 */   move  $a0, $zero
/* 205FB4 801DB454 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 205FB8 801DB458 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 205FBC 801DB45C 3C0F800B */  lui   $t7, %hi(D_800B7790) # $t7, 0x800b
/* 205FC0 801DB460 3C01800E */  lui   $at, 0x800e
/* 205FC4 801DB464 8CD80000 */  lw    $t8, ($a2)
/* 205FC8 801DB468 25EF7790 */  addiu $t7, %lo(D_800B7790) # addiu $t7, $t7, 0x7790
/* 205FCC 801DB46C 3C04800E */  lui   $a0, 0x800e
/* 205FD0 801DB470 0018C880 */  sll   $t9, $t8, 2
/* 205FD4 801DB474 00390821 */  addu  $at, $at, $t9
/* 205FD8 801DB478 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 205FDC 801DB47C 8CC80000 */  lw    $t0, ($a2)
/* 205FE0 801DB480 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 205FE4 801DB484 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 205FE8 801DB488 00084880 */  sll   $t1, $t0, 2
/* 205FEC 801DB48C 00892021 */  addu  $a0, $a0, $t1
/* 205FF0 801DB490 0C02C7DA */  jal   func_800B1F68
/* 205FF4 801DB494 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 205FF8 801DB498 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 205FFC 801DB49C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 206000 801DB4A0 3C01800E */  lui   $at, 0x800e
/* 206004 801DB4A4 8D4B0000 */  lw    $t3, ($t2)
/* 206008 801DB4A8 000B6080 */  sll   $t4, $t3, 2
/* 20600C 801DB4AC 002C0821 */  addu  $at, $at, $t4
/* 206010 801DB4B0 0C02CCFD */  jal   func_800B33F4
/* 206014 801DB4B4 AC20F150 */   sw    $zero, -0xeb0($at)
/* 206018 801DB4B8 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 20601C 801DB4BC 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 206020 801DB4C0 AE00003C */  sw    $zero, 0x3c($s0)
/* 206024 801DB4C4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 206028 801DB4C8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 20602C 801DB4CC 00001825 */  move  $v1, $zero
/* 206030 801DB4D0 241E0002 */  li    $fp, 2
/* 206034 801DB4D4 8DAE0000 */  lw    $t6, ($t5)
/* 206038 801DB4D8 AE00002C */  sw    $zero, 0x2c($s0)
/* 20603C 801DB4DC AE000028 */  sw    $zero, 0x28($s0)
/* 206040 801DB4E0 AE00000C */  sw    $zero, 0xc($s0)
/* 206044 801DB4E4 AE000008 */  sw    $zero, 8($s0)
/* 206048 801DB4E8 24170003 */  li    $s7, 3
/* 20604C 801DB4EC 24160004 */  li    $s6, 4
/* 206050 801DB4F0 24150005 */  li    $s5, 5
/* 206054 801DB4F4 24140006 */  li    $s4, 6
/* 206058 801DB4F8 24130007 */  li    $s3, 7
/* 20605C 801DB4FC 24120008 */  li    $s2, 8
/* 206060 801DB500 24110009 */  li    $s1, 9
/* 206064 801DB504 AE0E0038 */  sw    $t6, 0x38($s0)
.L801DB508_ovl15:
/* 206068 801DB508 2C61000A */  sltiu $at, $v1, 0xa
.L801DB50C_ovl15:
/* 20606C 801DB50C 10200086 */  beqz  $at, .L801DB728_ovl15
/* 206070 801DB510 0003C080 */   sll   $t8, $v1, 2
.L801DB514_ovl15:
/* 206074 801DB514 3C01801E */  lui   $at, 0x801e
/* 206078 801DB518 00380821 */  addu  $at, $at, $t8
/* 20607C 801DB51C 8C386790 */  lw    $t8, 0x6790($at)
/* 206080 801DB520 03000008 */  jr    $t8
/* 206084 801DB524 00000000 */   nop   
/* 206088 801DB528 24040004 */  li    $a0, 4
/* 20608C 801DB52C 0C067829 */  jal   func_8019E0A4_ovl15
/* 206090 801DB530 24050003 */   li    $a1, 3
/* 206094 801DB534 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 206098 801DB538 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 20609C 801DB53C 3C01800F */  lui   $at, 0x800f
/* 2060A0 801DB540 24040004 */  li    $a0, 4
/* 2060A4 801DB544 8DF90000 */  lw    $t9, ($t7)
/* 2060A8 801DB548 24050001 */  li    $a1, 1
/* 2060AC 801DB54C 00194080 */  sll   $t0, $t9, 2
/* 2060B0 801DB550 00280821 */  addu  $at, $at, $t0
/* 2060B4 801DB554 AC22BBE0 */  sw    $v0, -0x4420($at)
/* 2060B8 801DB558 0C067829 */  jal   func_8019E0A4_ovl15
/* 2060BC 801DB55C AE020030 */   sw    $v0, 0x30($s0)
/* 2060C0 801DB560 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 2060C4 801DB564 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 2060C8 801DB568 3C01800F */  lui   $at, 0x800f
/* 2060CC 801DB56C 3C0C800F */  lui   $t4, %hi(D_800EBBE0) # $t4, 0x800f
/* 2060D0 801DB570 8CC90000 */  lw    $t1, ($a2)
/* 2060D4 801DB574 258CBBE0 */  addiu $t4, %lo(D_800EBBE0) # addiu $t4, $t4, -0x4420
/* 2060D8 801DB578 3C0B800F */  lui   $t3, 0x800f
/* 2060DC 801DB57C 00095080 */  sll   $t2, $t1, 2
/* 2060E0 801DB580 002A0821 */  addu  $at, $at, $t2
/* 2060E4 801DB584 AC22C120 */  sw    $v0, -0x3ee0($at)
/* 2060E8 801DB588 AE020034 */  sw    $v0, 0x34($s0)
/* 2060EC 801DB58C 8CC40000 */  lw    $a0, ($a2)
/* 2060F0 801DB590 00042080 */  sll   $a0, $a0, 2
/* 2060F4 801DB594 008C6821 */  addu  $t5, $a0, $t4
/* 2060F8 801DB598 8DAE0000 */  lw    $t6, ($t5)
/* 2060FC 801DB59C 01645821 */  addu  $t3, $t3, $a0
/* 206100 801DB5A0 8D6BC120 */  lw    $t3, -0x3ee0($t3)
/* 206104 801DB5A4 000EC080 */  sll   $t8, $t6, 2
/* 206108 801DB5A8 030C7821 */  addu  $t7, $t8, $t4
/* 20610C 801DB5AC ADEB0000 */  sw    $t3, ($t7)
/* 206110 801DB5B0 8E03003C */  lw    $v1, 0x3c($s0)
/* 206114 801DB5B4 5460FFD5 */  bnezl $v1, .L801DB50C_ovl15
/* 206118 801DB5B8 2C61000A */   sltiu $at, $v1, 0xa
.L801DB5BC_ovl15:
/* 20611C 801DB5BC 0C002DAF */  jal   finish_current_thread
/* 206120 801DB5C0 24040001 */   li    $a0, 1
/* 206124 801DB5C4 8E03003C */  lw    $v1, 0x3c($s0)
/* 206128 801DB5C8 1060FFFC */  beqz  $v1, .L801DB5BC_ovl15
/* 20612C 801DB5CC 00000000 */   nop   
/* 206130 801DB5D0 1000FFCE */  b     .L801DB50C_ovl15
/* 206134 801DB5D4 2C61000A */   sltiu $at, $v1, 0xa
/* 206138 801DB5D8 24010001 */  li    $at, 1
/* 20613C 801DB5DC 5461FFCB */  bnel  $v1, $at, .L801DB50C_ovl15
/* 206140 801DB5E0 2C61000A */   sltiu $at, $v1, 0xa
.L801DB5E4_ovl15:
/* 206144 801DB5E4 0C002DAF */  jal   finish_current_thread
/* 206148 801DB5E8 24040001 */   li    $a0, 1
/* 20614C 801DB5EC 8E03003C */  lw    $v1, 0x3c($s0)
/* 206150 801DB5F0 24010001 */  li    $at, 1
/* 206154 801DB5F4 1061FFFB */  beq   $v1, $at, .L801DB5E4_ovl15
/* 206158 801DB5F8 00000000 */   nop   
/* 20615C 801DB5FC 1000FFC3 */  b     .L801DB50C_ovl15
/* 206160 801DB600 2C61000A */   sltiu $at, $v1, 0xa
/* 206164 801DB604 57C3FFC1 */  bnel  $fp, $v1, .L801DB50C_ovl15
/* 206168 801DB608 2C61000A */   sltiu $at, $v1, 0xa
.L801DB60C_ovl15:
/* 20616C 801DB60C 0C002DAF */  jal   finish_current_thread
/* 206170 801DB610 24040001 */   li    $a0, 1
/* 206174 801DB614 8E03003C */  lw    $v1, 0x3c($s0)
/* 206178 801DB618 13C3FFFC */  beq   $fp, $v1, .L801DB60C_ovl15
/* 20617C 801DB61C 00000000 */   nop   
/* 206180 801DB620 1000FFBA */  b     .L801DB50C_ovl15
/* 206184 801DB624 2C61000A */   sltiu $at, $v1, 0xa
/* 206188 801DB628 56E3FFB8 */  bnel  $s7, $v1, .L801DB50C_ovl15
/* 20618C 801DB62C 2C61000A */   sltiu $at, $v1, 0xa
.L801DB630_ovl15:
/* 206190 801DB630 0C002DAF */  jal   finish_current_thread
/* 206194 801DB634 24040001 */   li    $a0, 1
/* 206198 801DB638 8E03003C */  lw    $v1, 0x3c($s0)
/* 20619C 801DB63C 12E3FFFC */  beq   $s7, $v1, .L801DB630_ovl15
/* 2061A0 801DB640 00000000 */   nop   
/* 2061A4 801DB644 1000FFB1 */  b     .L801DB50C_ovl15
/* 2061A8 801DB648 2C61000A */   sltiu $at, $v1, 0xa
/* 2061AC 801DB64C 56C3FFAF */  bnel  $s6, $v1, .L801DB50C_ovl15
/* 2061B0 801DB650 2C61000A */   sltiu $at, $v1, 0xa
.L801DB654_ovl15:
/* 2061B4 801DB654 0C002DAF */  jal   finish_current_thread
/* 2061B8 801DB658 24040001 */   li    $a0, 1
/* 2061BC 801DB65C 8E03003C */  lw    $v1, 0x3c($s0)
/* 2061C0 801DB660 12C3FFFC */  beq   $s6, $v1, .L801DB654_ovl15
/* 2061C4 801DB664 00000000 */   nop   
/* 2061C8 801DB668 1000FFA8 */  b     .L801DB50C_ovl15
/* 2061CC 801DB66C 2C61000A */   sltiu $at, $v1, 0xa
/* 2061D0 801DB670 56A3FFA6 */  bnel  $s5, $v1, .L801DB50C_ovl15
/* 2061D4 801DB674 2C61000A */   sltiu $at, $v1, 0xa
.L801DB678_ovl15:
/* 2061D8 801DB678 0C002DAF */  jal   finish_current_thread
/* 2061DC 801DB67C 24040001 */   li    $a0, 1
/* 2061E0 801DB680 8E03003C */  lw    $v1, 0x3c($s0)
/* 2061E4 801DB684 12A3FFFC */  beq   $s5, $v1, .L801DB678_ovl15
/* 2061E8 801DB688 00000000 */   nop   
/* 2061EC 801DB68C 1000FF9F */  b     .L801DB50C_ovl15
/* 2061F0 801DB690 2C61000A */   sltiu $at, $v1, 0xa
/* 2061F4 801DB694 5683FF9D */  bnel  $s4, $v1, .L801DB50C_ovl15
/* 2061F8 801DB698 2C61000A */   sltiu $at, $v1, 0xa
.L801DB69C_ovl15:
/* 2061FC 801DB69C 0C002DAF */  jal   finish_current_thread
/* 206200 801DB6A0 24040001 */   li    $a0, 1
/* 206204 801DB6A4 8E03003C */  lw    $v1, 0x3c($s0)
/* 206208 801DB6A8 1283FFFC */  beq   $s4, $v1, .L801DB69C_ovl15
/* 20620C 801DB6AC 00000000 */   nop   
/* 206210 801DB6B0 1000FF96 */  b     .L801DB50C_ovl15
/* 206214 801DB6B4 2C61000A */   sltiu $at, $v1, 0xa
/* 206218 801DB6B8 5663FF94 */  bnel  $s3, $v1, .L801DB50C_ovl15
/* 20621C 801DB6BC 2C61000A */   sltiu $at, $v1, 0xa
.L801DB6C0_ovl15:
/* 206220 801DB6C0 0C002DAF */  jal   finish_current_thread
/* 206224 801DB6C4 24040001 */   li    $a0, 1
/* 206228 801DB6C8 8E03003C */  lw    $v1, 0x3c($s0)
/* 20622C 801DB6CC 1263FFFC */  beq   $s3, $v1, .L801DB6C0_ovl15
/* 206230 801DB6D0 00000000 */   nop   
/* 206234 801DB6D4 1000FF8D */  b     .L801DB50C_ovl15
/* 206238 801DB6D8 2C61000A */   sltiu $at, $v1, 0xa
/* 20623C 801DB6DC 5643FF8B */  bnel  $s2, $v1, .L801DB50C_ovl15
/* 206240 801DB6E0 2C61000A */   sltiu $at, $v1, 0xa
.L801DB6E4_ovl15:
/* 206244 801DB6E4 0C002DAF */  jal   finish_current_thread
/* 206248 801DB6E8 24040001 */   li    $a0, 1
/* 20624C 801DB6EC 8E03003C */  lw    $v1, 0x3c($s0)
/* 206250 801DB6F0 1243FFFC */  beq   $s2, $v1, .L801DB6E4_ovl15
/* 206254 801DB6F4 00000000 */   nop   
/* 206258 801DB6F8 1000FF84 */  b     .L801DB50C_ovl15
/* 20625C 801DB6FC 2C61000A */   sltiu $at, $v1, 0xa
/* 206260 801DB700 5623FF82 */  bnel  $s1, $v1, .L801DB50C_ovl15
/* 206264 801DB704 2C61000A */   sltiu $at, $v1, 0xa
.L801DB708_ovl15:
/* 206268 801DB708 0C002DAF */  jal   finish_current_thread
/* 20626C 801DB70C 24040001 */   li    $a0, 1
/* 206270 801DB710 8E03003C */  lw    $v1, 0x3c($s0)
/* 206274 801DB714 1223FFFC */  beq   $s1, $v1, .L801DB708_ovl15
/* 206278 801DB718 00000000 */   nop   
/* 20627C 801DB71C 2C61000A */  sltiu $at, $v1, 0xa
/* 206280 801DB720 5420FF7C */  bnezl $at, .L801DB514_ovl15
/* 206284 801DB724 0003C080 */   sll   $t8, $v1, 2
.L801DB728_ovl15:
/* 206288 801DB728 0C02BE85 */  jal   func_800AFA14
/* 20628C 801DB72C 00000000 */   nop   
/* 206290 801DB730 1000FF75 */  b     .L801DB508_ovl15
/* 206294 801DB734 8E03003C */   lw    $v1, 0x3c($s0)
/* 206298 801DB738 00000000 */  nop   
/* 20629C 801DB73C 00000000 */  nop   
/* 2062A0 801DB740 8FBF003C */  lw    $ra, 0x3c($sp)
/* 2062A4 801DB744 8FB00018 */  lw    $s0, 0x18($sp)
/* 2062A8 801DB748 8FB1001C */  lw    $s1, 0x1c($sp)
/* 2062AC 801DB74C 8FB20020 */  lw    $s2, 0x20($sp)
/* 2062B0 801DB750 8FB30024 */  lw    $s3, 0x24($sp)
/* 2062B4 801DB754 8FB40028 */  lw    $s4, 0x28($sp)
/* 2062B8 801DB758 8FB5002C */  lw    $s5, 0x2c($sp)
/* 2062BC 801DB75C 8FB60030 */  lw    $s6, 0x30($sp)
/* 2062C0 801DB760 8FB70034 */  lw    $s7, 0x34($sp)
/* 2062C4 801DB764 8FBE0038 */  lw    $fp, 0x38($sp)
/* 2062C8 801DB768 03E00008 */  jr    $ra
/* 2062CC 801DB76C 27BD0040 */   addiu $sp, $sp, 0x40

/* 2062D0 801DB770 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 2062D4 801DB774 AFB1003C */  sw    $s1, 0x3c($sp)
/* 2062D8 801DB778 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 2062DC 801DB77C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 2062E0 801DB780 8E230000 */  lw    $v1, ($s1)
/* 2062E4 801DB784 AFBF005C */  sw    $ra, 0x5c($sp)
/* 2062E8 801DB788 AFBE0058 */  sw    $fp, 0x58($sp)
/* 2062EC 801DB78C AFB70054 */  sw    $s7, 0x54($sp)
/* 2062F0 801DB790 AFB60050 */  sw    $s6, 0x50($sp)
/* 2062F4 801DB794 AFB5004C */  sw    $s5, 0x4c($sp)
/* 2062F8 801DB798 AFB40048 */  sw    $s4, 0x48($sp)
/* 2062FC 801DB79C AFB30044 */  sw    $s3, 0x44($sp)
/* 206300 801DB7A0 AFB20040 */  sw    $s2, 0x40($sp)
/* 206304 801DB7A4 AFB00038 */  sw    $s0, 0x38($sp)
/* 206308 801DB7A8 F7BA0030 */  sdc1  $f26, 0x30($sp)
/* 20630C 801DB7AC F7B80028 */  sdc1  $f24, 0x28($sp)
/* 206310 801DB7B0 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 206314 801DB7B4 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 206318 801DB7B8 AFA40060 */  sw    $a0, 0x60($sp)
/* 20631C 801DB7BC 8C6E0000 */  lw    $t6, ($v1)
/* 206320 801DB7C0 3C01800F */  lui   $at, 0x800f
/* 206324 801DB7C4 3C04800E */  lui   $a0, 0x800e
/* 206328 801DB7C8 000E7880 */  sll   $t7, $t6, 2
/* 20632C 801DB7CC 002F0821 */  addu  $at, $at, $t7
/* 206330 801DB7D0 AC208E60 */  sw    $zero, -0x71a0($at)
/* 206334 801DB7D4 8C780000 */  lw    $t8, ($v1)
/* 206338 801DB7D8 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 20633C 801DB7DC 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 206340 801DB7E0 0018C880 */  sll   $t9, $t8, 2
/* 206344 801DB7E4 00992021 */  addu  $a0, $a0, $t9
/* 206348 801DB7E8 0C02C7DA */  jal   func_800B1F68
/* 20634C 801DB7EC 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 206350 801DB7F0 8E280000 */  lw    $t0, ($s1)
/* 206354 801DB7F4 24040071 */  li    $a0, 113
/* 206358 801DB7F8 0C02C67D */  jal   func_800B19F4
/* 20635C 801DB7FC 8D050000 */   lw    $a1, ($t0)
/* 206360 801DB800 00002025 */  move  $a0, $zero
/* 206364 801DB804 0C02BEED */  jal   func_800AFBB4
/* 206368 801DB808 8E250000 */   lw    $a1, ($s1)
/* 20636C 801DB80C 0C044A6B */  jal   func_801129AC
/* 206370 801DB810 00000000 */   nop   
/* 206374 801DB814 0C044A77 */  jal   func_801129DC
/* 206378 801DB818 00000000 */   nop   
/* 20637C 801DB81C 8E230000 */  lw    $v1, ($s1)
/* 206380 801DB820 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 206384 801DB824 44812000 */  mtc1  $at, $f4
/* 206388 801DB828 8C690000 */  lw    $t1, ($v1)
/* 20638C 801DB82C 3C01800E */  lui   $at, 0x800e
/* 206390 801DB830 3C0B800B */  lui   $t3, %hi(D_800B7138) # $t3, 0x800b
/* 206394 801DB834 00095080 */  sll   $t2, $t1, 2
/* 206398 801DB838 002A0821 */  addu  $at, $at, $t2
/* 20639C 801DB83C E4242790 */  swc1  $f4, 0x2790($at)
/* 2063A0 801DB840 8C6C0000 */  lw    $t4, ($v1)
/* 2063A4 801DB844 3C01800E */  lui   $at, 0x800e
/* 2063A8 801DB848 256B7138 */  addiu $t3, %lo(D_800B7138) # addiu $t3, $t3, 0x7138
/* 2063AC 801DB84C 000C6880 */  sll   $t5, $t4, 2
/* 2063B0 801DB850 002D0821 */  addu  $at, $at, $t5
/* 2063B4 801DB854 AC2BEF90 */  sw    $t3, -0x1070($at)
/* 2063B8 801DB858 8C6F0000 */  lw    $t7, ($v1)
/* 2063BC 801DB85C 3C01800E */  lui   $at, 0x800e
/* 2063C0 801DB860 3C0E801E */  lui   $t6, %hi(D_801DBE20) # $t6, 0x801e
/* 2063C4 801DB864 000FC080 */  sll   $t8, $t7, 2
/* 2063C8 801DB868 00380821 */  addu  $at, $at, $t8
/* 2063CC 801DB86C 25CEBE20 */  addiu $t6, %lo(D_801DBE20) # addiu $t6, $t6, -0x41e0
/* 2063D0 801DB870 0C02CCFD */  jal   func_800B33F4
/* 2063D4 801DB874 AC2EF150 */   sw    $t6, -0xeb0($at)
/* 2063D8 801DB878 8E390000 */  lw    $t9, ($s1)
/* 2063DC 801DB87C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 2063E0 801DB880 44813000 */  mtc1  $at, $f6
/* 2063E4 801DB884 8F280000 */  lw    $t0, ($t9)
/* 2063E8 801DB888 3C01800E */  lui   $at, 0x800e
/* 2063EC 801DB88C 3C04800D */  lui   $a0, %hi(D_800D70D4) # $a0, 0x800d
/* 2063F0 801DB890 00084880 */  sll   $t1, $t0, 2
/* 2063F4 801DB894 00290821 */  addu  $at, $at, $t1
/* 2063F8 801DB898 E4266A10 */  swc1  $f6, 0x6a10($at)
/* 2063FC 801DB89C 3C01801E */  lui   $at, %hi(D_801E67B8) # $at, 0x801e
/* 206400 801DB8A0 C43A67B8 */  lwc1  $f26, %lo(D_801E67B8)($at)
/* 206404 801DB8A4 3C01801E */  lui   $at, %hi(D_801E67BC) # $at, 0x801e
/* 206408 801DB8A8 C43867BC */  lwc1  $f24, %lo(D_801E67BC)($at)
/* 20640C 801DB8AC 3C01801E */  lui   $at, %hi(D_801E67C0) # $at, 0x801e
/* 206410 801DB8B0 C43667C0 */  lwc1  $f22, %lo(D_801E67C0)($at)
/* 206414 801DB8B4 3C01801E */  lui   $at, %hi(D_801E67C4) # $at, 0x801e
/* 206418 801DB8B8 3C15800E */  lui   $s5, %hi(D_800E0D50) # $s5, 0x800e
/* 20641C 801DB8BC 3C14800F */  lui   $s4, %hi(D_800EA6E0) # $s4, 0x800f
/* 206420 801DB8C0 3C13800E */  lui   $s3, %hi(D_800E64D0) # $s3, 0x800e
/* 206424 801DB8C4 3C12800E */  lui   $s2, %hi(gEntitiesNextPosXArray) # $s2, 0x800e
/* 206428 801DB8C8 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 20642C 801DB8CC 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 206430 801DB8D0 265225D0 */  addiu $s2, %lo(gEntitiesNextPosXArray) # addiu $s2, $s2, 0x25d0
/* 206434 801DB8D4 267364D0 */  addiu $s3, %lo(D_800E64D0) # addiu $s3, $s3, 0x64d0
/* 206438 801DB8D8 2694A6E0 */  addiu $s4, %lo(D_800EA6E0) # addiu $s4, $s4, -0x5920
/* 20643C 801DB8DC 26B50D50 */  addiu $s5, %lo(D_800E0D50) # addiu $s5, $s5, 0xd50
/* 206440 801DB8E0 C43467C4 */  lwc1  $f20, %lo(D_801E67C4)($at)
/* 206444 801DB8E4 8C8470D4 */  lw    $a0, %lo(D_800D70D4)($a0)
/* 206448 801DB8E8 241E0009 */  li    $fp, 9
/* 20644C 801DB8EC 24170001 */  li    $s7, 1
/* 206450 801DB8F0 24160004 */  li    $s6, 4
.L801DB8F4_ovl15:
/* 206454 801DB8F4 2C81000A */  sltiu $at, $a0, 0xa
.L801DB8F8_ovl15:
/* 206458 801DB8F8 10200130 */  beqz  $at, .L801DBDBC_ovl15
/* 20645C 801DB8FC 00045080 */   sll   $t2, $a0, 2
.L801DB900_ovl15:
/* 206460 801DB900 3C01801E */  lui   $at, 0x801e
/* 206464 801DB904 002A0821 */  addu  $at, $at, $t2
/* 206468 801DB908 8C2A67C8 */  lw    $t2, 0x67c8($at)
/* 20646C 801DB90C 01400008 */  jr    $t2
/* 206470 801DB910 00000000 */   nop   
/* 206474 801DB914 5480FFF8 */  bnezl $a0, .L801DB8F8_ovl15
/* 206478 801DB918 2C81000A */   sltiu $at, $a0, 0xa
.L801DB91C_ovl15:
/* 20647C 801DB91C 0C002DAF */  jal   finish_current_thread
/* 206480 801DB920 02E02025 */   move  $a0, $s7
/* 206484 801DB924 8E04003C */  lw    $a0, 0x3c($s0)
/* 206488 801DB928 1080FFFC */  beqz  $a0, .L801DB91C_ovl15
/* 20648C 801DB92C 00000000 */   nop   
/* 206490 801DB930 1000FFF1 */  b     .L801DB8F8_ovl15
/* 206494 801DB934 2C81000A */   sltiu $at, $a0, 0xa
/* 206498 801DB938 8E230000 */  lw    $v1, ($s1)
/* 20649C 801DB93C 3C01C2C8 */  li    $at, 0xC2C80000 # -100.000000
/* 2064A0 801DB940 44814000 */  mtc1  $at, $f8
/* 2064A4 801DB944 8C6C0000 */  lw    $t4, ($v1)
/* 2064A8 801DB948 000C5880 */  sll   $t3, $t4, 2
/* 2064AC 801DB94C 026B6821 */  addu  $t5, $s3, $t3
/* 2064B0 801DB950 E5A80000 */  swc1  $f8, ($t5)
/* 2064B4 801DB954 8C620000 */  lw    $v0, ($v1)
/* 2064B8 801DB958 00021080 */  sll   $v0, $v0, 2
/* 2064BC 801DB95C 02427821 */  addu  $t7, $s2, $v0
/* 2064C0 801DB960 C5EA0000 */  lwc1  $f10, ($t7)
/* 2064C4 801DB964 460AA03C */  c.lt.s $f20, $f10
/* 2064C8 801DB968 00000000 */  nop   
/* 2064CC 801DB96C 4502000D */  bc1fl .L801DB9A4_ovl15
/* 2064D0 801DB970 3C01C120 */   lui   $at, 0xc120
.L801DB974_ovl15:
/* 2064D4 801DB974 0C002DAF */  jal   finish_current_thread
/* 2064D8 801DB978 02E02025 */   move  $a0, $s7
/* 2064DC 801DB97C 8E230000 */  lw    $v1, ($s1)
/* 2064E0 801DB980 8C620000 */  lw    $v0, ($v1)
/* 2064E4 801DB984 00021080 */  sll   $v0, $v0, 2
/* 2064E8 801DB988 02427021 */  addu  $t6, $s2, $v0
/* 2064EC 801DB98C C5D00000 */  lwc1  $f16, ($t6)
/* 2064F0 801DB990 4610A03C */  c.lt.s $f20, $f16
/* 2064F4 801DB994 00000000 */  nop   
/* 2064F8 801DB998 4501FFF6 */  bc1t  .L801DB974_ovl15
/* 2064FC 801DB99C 00000000 */   nop   
/* 206500 801DB9A0 3C01C120 */  li    $at, 0xC1200000 # -10.000000
.L801DB9A4_ovl15:
/* 206504 801DB9A4 44819000 */  mtc1  $at, $f18
/* 206508 801DB9A8 0262C021 */  addu  $t8, $s3, $v0
/* 20650C 801DB9AC E7120000 */  swc1  $f18, ($t8)
/* 206510 801DB9B0 8C620000 */  lw    $v0, ($v1)
/* 206514 801DB9B4 00021080 */  sll   $v0, $v0, 2
/* 206518 801DB9B8 0242C821 */  addu  $t9, $s2, $v0
/* 20651C 801DB9BC C7240000 */  lwc1  $f4, ($t9)
/* 206520 801DB9C0 4604B03C */  c.lt.s $f22, $f4
/* 206524 801DB9C4 00000000 */  nop   
/* 206528 801DB9C8 4502000D */  bc1fl .L801DBA00_ovl15
/* 20652C 801DB9CC 3C01BF80 */   lui   $at, 0xbf80
.L801DB9D0_ovl15:
/* 206530 801DB9D0 0C002DAF */  jal   finish_current_thread
/* 206534 801DB9D4 02E02025 */   move  $a0, $s7
/* 206538 801DB9D8 8E230000 */  lw    $v1, ($s1)
/* 20653C 801DB9DC 8C620000 */  lw    $v0, ($v1)
/* 206540 801DB9E0 00021080 */  sll   $v0, $v0, 2
/* 206544 801DB9E4 02424021 */  addu  $t0, $s2, $v0
/* 206548 801DB9E8 C5060000 */  lwc1  $f6, ($t0)
/* 20654C 801DB9EC 4606B03C */  c.lt.s $f22, $f6
/* 206550 801DB9F0 00000000 */  nop   
/* 206554 801DB9F4 4501FFF6 */  bc1t  .L801DB9D0_ovl15
/* 206558 801DB9F8 00000000 */   nop   
/* 20655C 801DB9FC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
.L801DBA00_ovl15:
/* 206560 801DBA00 44814000 */  mtc1  $at, $f8
/* 206564 801DBA04 02624821 */  addu  $t1, $s3, $v0
/* 206568 801DBA08 E5280000 */  swc1  $f8, ($t1)
/* 20656C 801DBA0C 8C620000 */  lw    $v0, ($v1)
/* 206570 801DBA10 00021080 */  sll   $v0, $v0, 2
/* 206574 801DBA14 02425021 */  addu  $t2, $s2, $v0
/* 206578 801DBA18 C54A0000 */  lwc1  $f10, ($t2)
/* 20657C 801DBA1C 460AC03C */  c.lt.s $f24, $f10
/* 206580 801DBA20 00000000 */  nop   
/* 206584 801DBA24 4500000C */  bc1f  .L801DBA58_ovl15
/* 206588 801DBA28 00000000 */   nop   
.L801DBA2C_ovl15:
/* 20658C 801DBA2C 0C002DAF */  jal   finish_current_thread
/* 206590 801DBA30 02E02025 */   move  $a0, $s7
/* 206594 801DBA34 8E230000 */  lw    $v1, ($s1)
/* 206598 801DBA38 8C620000 */  lw    $v0, ($v1)
/* 20659C 801DBA3C 00021080 */  sll   $v0, $v0, 2
/* 2065A0 801DBA40 02426021 */  addu  $t4, $s2, $v0
/* 2065A4 801DBA44 C5900000 */  lwc1  $f16, ($t4)
/* 2065A8 801DBA48 4610C03C */  c.lt.s $f24, $f16
/* 2065AC 801DBA4C 00000000 */  nop   
/* 2065B0 801DBA50 4501FFF6 */  bc1t  .L801DBA2C_ovl15
/* 2065B4 801DBA54 00000000 */   nop   
.L801DBA58_ovl15:
/* 2065B8 801DBA58 3C01801E */  lui   $at, %hi(D_801E67F0) # $at, 0x801e
/* 2065BC 801DBA5C C43267F0 */  lwc1  $f18, %lo(D_801E67F0)($at)
/* 2065C0 801DBA60 02625821 */  addu  $t3, $s3, $v0
/* 2065C4 801DBA64 E5720000 */  swc1  $f18, ($t3)
/* 2065C8 801DBA68 8C620000 */  lw    $v0, ($v1)
/* 2065CC 801DBA6C 00021080 */  sll   $v0, $v0, 2
/* 2065D0 801DBA70 02426821 */  addu  $t5, $s2, $v0
/* 2065D4 801DBA74 C5A40000 */  lwc1  $f4, ($t5)
/* 2065D8 801DBA78 4604D03C */  c.lt.s $f26, $f4
/* 2065DC 801DBA7C 00000000 */  nop   
/* 2065E0 801DBA80 4502000D */  bc1fl .L801DBAB8_ovl15
/* 2065E4 801DBA84 44804000 */   mtc1  $zero, $f8
.L801DBA88_ovl15:
/* 2065E8 801DBA88 0C002DAF */  jal   finish_current_thread
/* 2065EC 801DBA8C 02E02025 */   move  $a0, $s7
/* 2065F0 801DBA90 8E230000 */  lw    $v1, ($s1)
/* 2065F4 801DBA94 8C620000 */  lw    $v0, ($v1)
/* 2065F8 801DBA98 00021080 */  sll   $v0, $v0, 2
/* 2065FC 801DBA9C 02427821 */  addu  $t7, $s2, $v0
/* 206600 801DBAA0 C5E60000 */  lwc1  $f6, ($t7)
/* 206604 801DBAA4 4606D03C */  c.lt.s $f26, $f6
/* 206608 801DBAA8 00000000 */  nop   
/* 20660C 801DBAAC 4501FFF6 */  bc1t  .L801DBA88_ovl15
/* 206610 801DBAB0 00000000 */   nop   
/* 206614 801DBAB4 44804000 */  mtc1  $zero, $f8
.L801DBAB8_ovl15:
/* 206618 801DBAB8 3C01800E */  lui   $at, 0x800e
/* 20661C 801DBABC 00220821 */  addu  $at, $at, $v0
/* 206620 801DBAC0 E4286690 */  swc1  $f8, 0x6690($at)
/* 206624 801DBAC4 8C620000 */  lw    $v0, ($v1)
/* 206628 801DBAC8 3C01800E */  lui   $at, 0x800e
/* 20662C 801DBACC 00021080 */  sll   $v0, $v0, 2
/* 206630 801DBAD0 00220821 */  addu  $at, $at, $v0
/* 206634 801DBAD4 C42A6690 */  lwc1  $f10, 0x6690($at)
/* 206638 801DBAD8 02627021 */  addu  $t6, $s3, $v0
/* 20663C 801DBADC 3C01801E */  lui   $at, %hi(D_801E67F4) # $at, 0x801e
/* 206640 801DBAE0 E5CA0000 */  swc1  $f10, ($t6)
/* 206644 801DBAE4 8C780000 */  lw    $t8, ($v1)
/* 206648 801DBAE8 C43067F4 */  lwc1  $f16, %lo(D_801E67F4)($at)
/* 20664C 801DBAEC 3C01800E */  lui   $at, 0x800e
/* 206650 801DBAF0 0018C880 */  sll   $t9, $t8, 2
/* 206654 801DBAF4 00390821 */  addu  $at, $at, $t9
/* 206658 801DBAF8 E4306850 */  swc1  $f16, 0x6850($at)
/* 20665C 801DBAFC 8E04003C */  lw    $a0, 0x3c($s0)
/* 206660 801DBB00 56E4FF7D */  bnel  $s7, $a0, .L801DB8F8_ovl15
/* 206664 801DBB04 2C81000A */   sltiu $at, $a0, 0xa
.L801DBB08_ovl15:
/* 206668 801DBB08 0C002DAF */  jal   finish_current_thread
/* 20666C 801DBB0C 02E02025 */   move  $a0, $s7
/* 206670 801DBB10 8E04003C */  lw    $a0, 0x3c($s0)
/* 206674 801DBB14 12E4FFFC */  beq   $s7, $a0, .L801DBB08_ovl15
/* 206678 801DBB18 00000000 */   nop   
/* 20667C 801DBB1C 1000FF76 */  b     .L801DB8F8_ovl15
/* 206680 801DBB20 2C81000A */   sltiu $at, $a0, 0xa
/* 206684 801DBB24 24010002 */  li    $at, 2
/* 206688 801DBB28 5481FF73 */  bnel  $a0, $at, .L801DB8F8_ovl15
/* 20668C 801DBB2C 2C81000A */   sltiu $at, $a0, 0xa
.L801DBB30_ovl15:
/* 206690 801DBB30 0C002DAF */  jal   finish_current_thread
/* 206694 801DBB34 02E02025 */   move  $a0, $s7
/* 206698 801DBB38 8E04003C */  lw    $a0, 0x3c($s0)
/* 20669C 801DBB3C 24010002 */  li    $at, 2
/* 2066A0 801DBB40 1081FFFB */  beq   $a0, $at, .L801DBB30_ovl15
/* 2066A4 801DBB44 00000000 */   nop   
/* 2066A8 801DBB48 1000FF6B */  b     .L801DB8F8_ovl15
/* 2066AC 801DBB4C 2C81000A */   sltiu $at, $a0, 0xa
/* 2066B0 801DBB50 AE17000C */  sw    $s7, 0xc($s0)
/* 2066B4 801DBB54 0C03EFC6 */  jal   func_800FBF18
/* 2066B8 801DBB58 24040002 */   li    $a0, 2
/* 2066BC 801DBB5C 0C03EF87 */  jal   func_800FBE1C
/* 2066C0 801DBB60 00000000 */   nop   
/* 2066C4 801DBB64 8E230000 */  lw    $v1, ($s1)
/* 2066C8 801DBB68 3C028013 */  lui   $v0, %hi(D_801292B0) # $v0, 0x8013
/* 2066CC 801DBB6C 244292B0 */  addiu $v0, %lo(D_801292B0) # addiu $v0, $v0, -0x6d50
/* 2066D0 801DBB70 8C680000 */  lw    $t0, ($v1)
/* 2066D4 801DBB74 3C01800E */  lui   $at, 0x800e
/* 2066D8 801DBB78 24040004 */  li    $a0, 4
/* 2066DC 801DBB7C 00084880 */  sll   $t1, $t0, 2
/* 2066E0 801DBB80 02495021 */  addu  $t2, $s2, $t1
/* 2066E4 801DBB84 C5520000 */  lwc1  $f18, ($t2)
/* 2066E8 801DBB88 E4520000 */  swc1  $f18, ($v0)
/* 2066EC 801DBB8C 8C6C0000 */  lw    $t4, ($v1)
/* 2066F0 801DBB90 000C5880 */  sll   $t3, $t4, 2
/* 2066F4 801DBB94 002B0821 */  addu  $at, $at, $t3
/* 2066F8 801DBB98 C4242790 */  lwc1  $f4, 0x2790($at)
/* 2066FC 801DBB9C 3C01800E */  lui   $at, 0x800e
/* 206700 801DBBA0 E4440004 */  swc1  $f4, 4($v0)
/* 206704 801DBBA4 8C6D0000 */  lw    $t5, ($v1)
/* 206708 801DBBA8 000D7880 */  sll   $t7, $t5, 2
/* 20670C 801DBBAC 002F0821 */  addu  $at, $at, $t7
/* 206710 801DBBB0 C4262950 */  lwc1  $f6, 0x2950($at)
/* 206714 801DBBB4 0C03E905 */  jal   func_800FA414
/* 206718 801DBBB8 E4460008 */   swc1  $f6, 8($v0)
/* 20671C 801DBBBC 3C0E800D */  lui   $t6, %hi(D_800D7088) # $t6, 0x800d
/* 206720 801DBBC0 8DCE7088 */  lw    $t6, %lo(D_800D7088)($t6)
/* 206724 801DBBC4 2401000B */  li    $at, 11
/* 206728 801DBBC8 51C10009 */  beql  $t6, $at, .L801DBBF0_ovl15
/* 20672C 801DBBCC AE16003C */   sw    $s6, 0x3c($s0)
.L801DBBD0_ovl15:
/* 206730 801DBBD0 0C002DAF */  jal   finish_current_thread
/* 206734 801DBBD4 02E02025 */   move  $a0, $s7
/* 206738 801DBBD8 3C18800D */  lui   $t8, %hi(D_800D7088) # $t8, 0x800d
/* 20673C 801DBBDC 8F187088 */  lw    $t8, %lo(D_800D7088)($t8)
/* 206740 801DBBE0 2401000B */  li    $at, 11
/* 206744 801DBBE4 1701FFFA */  bne   $t8, $at, .L801DBBD0_ovl15
/* 206748 801DBBE8 00000000 */   nop   
/* 20674C 801DBBEC AE16003C */  sw    $s6, 0x3c($s0)
.L801DBBF0_ovl15:
/* 206750 801DBBF0 1000FF40 */  b     .L801DB8F4_ovl15
/* 206754 801DBBF4 02C02025 */   move  $a0, $s6
/* 206758 801DBBF8 56C4FF3F */  bnel  $s6, $a0, .L801DB8F8_ovl15
/* 20675C 801DBBFC 2C81000A */   sltiu $at, $a0, 0xa
/* 206760 801DBC00 8E390000 */  lw    $t9, ($s1)
.L801DBC04_ovl15:
/* 206764 801DBC04 02E02025 */  move  $a0, $s7
/* 206768 801DBC08 8F220000 */  lw    $v0, ($t9)
/* 20676C 801DBC0C 00021080 */  sll   $v0, $v0, 2
/* 206770 801DBC10 02A24021 */  addu  $t0, $s5, $v0
/* 206774 801DBC14 8D090000 */  lw    $t1, ($t0)
/* 206778 801DBC18 02625821 */  addu  $t3, $s3, $v0
/* 20677C 801DBC1C 00095080 */  sll   $t2, $t1, 2
/* 206780 801DBC20 028A6021 */  addu  $t4, $s4, $t2
/* 206784 801DBC24 C5880000 */  lwc1  $f8, ($t4)
/* 206788 801DBC28 0C002DAF */  jal   finish_current_thread
/* 20678C 801DBC2C E5680000 */   swc1  $f8, ($t3)
/* 206790 801DBC30 8E04003C */  lw    $a0, 0x3c($s0)
/* 206794 801DBC34 52C4FFF3 */  beql  $s6, $a0, .L801DBC04_ovl15
/* 206798 801DBC38 8E390000 */   lw    $t9, ($s1)
/* 20679C 801DBC3C 1000FF2E */  b     .L801DB8F8_ovl15
/* 2067A0 801DBC40 2C81000A */   sltiu $at, $a0, 0xa
/* 2067A4 801DBC44 24010005 */  li    $at, 5
/* 2067A8 801DBC48 5481FF2B */  bnel  $a0, $at, .L801DB8F8_ovl15
/* 2067AC 801DBC4C 2C81000A */   sltiu $at, $a0, 0xa
/* 2067B0 801DBC50 8E2D0000 */  lw    $t5, ($s1)
.L801DBC54_ovl15:
/* 2067B4 801DBC54 02E02025 */  move  $a0, $s7
/* 2067B8 801DBC58 8DA20000 */  lw    $v0, ($t5)
/* 2067BC 801DBC5C 00021080 */  sll   $v0, $v0, 2
/* 2067C0 801DBC60 02A27821 */  addu  $t7, $s5, $v0
/* 2067C4 801DBC64 8DEE0000 */  lw    $t6, ($t7)
/* 2067C8 801DBC68 02624021 */  addu  $t0, $s3, $v0
/* 2067CC 801DBC6C 000EC080 */  sll   $t8, $t6, 2
/* 2067D0 801DBC70 0298C821 */  addu  $t9, $s4, $t8
/* 2067D4 801DBC74 C72A0000 */  lwc1  $f10, ($t9)
/* 2067D8 801DBC78 0C002DAF */  jal   finish_current_thread
/* 2067DC 801DBC7C E50A0000 */   swc1  $f10, ($t0)
/* 2067E0 801DBC80 8E04003C */  lw    $a0, 0x3c($s0)
/* 2067E4 801DBC84 24010005 */  li    $at, 5
/* 2067E8 801DBC88 5081FFF2 */  beql  $a0, $at, .L801DBC54_ovl15
/* 2067EC 801DBC8C 8E2D0000 */   lw    $t5, ($s1)
/* 2067F0 801DBC90 1000FF19 */  b     .L801DB8F8_ovl15
/* 2067F4 801DBC94 2C81000A */   sltiu $at, $a0, 0xa
/* 2067F8 801DBC98 24010006 */  li    $at, 6
/* 2067FC 801DBC9C 54810012 */  bnel  $a0, $at, .L801DBCE8_ovl15
/* 206800 801DBCA0 8E230000 */   lw    $v1, ($s1)
/* 206804 801DBCA4 8E290000 */  lw    $t1, ($s1)
.L801DBCA8_ovl15:
/* 206808 801DBCA8 02E02025 */  move  $a0, $s7
/* 20680C 801DBCAC 8D220000 */  lw    $v0, ($t1)
/* 206810 801DBCB0 00021080 */  sll   $v0, $v0, 2
/* 206814 801DBCB4 02A25021 */  addu  $t2, $s5, $v0
/* 206818 801DBCB8 8D4C0000 */  lw    $t4, ($t2)
/* 20681C 801DBCBC 02627821 */  addu  $t7, $s3, $v0
/* 206820 801DBCC0 000C5880 */  sll   $t3, $t4, 2
/* 206824 801DBCC4 028B6821 */  addu  $t5, $s4, $t3
/* 206828 801DBCC8 C5B00000 */  lwc1  $f16, ($t5)
/* 20682C 801DBCCC 0C002DAF */  jal   finish_current_thread
/* 206830 801DBCD0 E5F00000 */   swc1  $f16, ($t7)
/* 206834 801DBCD4 8E04003C */  lw    $a0, 0x3c($s0)
/* 206838 801DBCD8 24010006 */  li    $at, 6
/* 20683C 801DBCDC 5081FFF2 */  beql  $a0, $at, .L801DBCA8_ovl15
/* 206840 801DBCE0 8E290000 */   lw    $t1, ($s1)
/* 206844 801DBCE4 8E230000 */  lw    $v1, ($s1)
.L801DBCE8_ovl15:
/* 206848 801DBCE8 44809000 */  mtc1  $zero, $f18
/* 20684C 801DBCEC 3C01800E */  lui   $at, 0x800e
/* 206850 801DBCF0 8C6E0000 */  lw    $t6, ($v1)
/* 206854 801DBCF4 000EC080 */  sll   $t8, $t6, 2
/* 206858 801DBCF8 00380821 */  addu  $at, $at, $t8
/* 20685C 801DBCFC E4326690 */  swc1  $f18, 0x6690($at)
/* 206860 801DBD00 8C620000 */  lw    $v0, ($v1)
/* 206864 801DBD04 3C01800E */  lui   $at, 0x800e
/* 206868 801DBD08 00021080 */  sll   $v0, $v0, 2
/* 20686C 801DBD0C 00220821 */  addu  $at, $at, $v0
/* 206870 801DBD10 C4246690 */  lwc1  $f4, 0x6690($at)
/* 206874 801DBD14 0262C821 */  addu  $t9, $s3, $v0
/* 206878 801DBD18 3C01801E */  lui   $at, %hi(D_801E67F8) # $at, 0x801e
/* 20687C 801DBD1C E7240000 */  swc1  $f4, ($t9)
/* 206880 801DBD20 8C680000 */  lw    $t0, ($v1)
/* 206884 801DBD24 C42667F8 */  lwc1  $f6, %lo(D_801E67F8)($at)
/* 206888 801DBD28 3C01800E */  lui   $at, 0x800e
/* 20688C 801DBD2C 00084880 */  sll   $t1, $t0, 2
/* 206890 801DBD30 00290821 */  addu  $at, $at, $t1
/* 206894 801DBD34 1000FEEF */  b     .L801DB8F4_ovl15
/* 206898 801DBD38 E4266850 */   swc1  $f6, 0x6850($at)
/* 20689C 801DBD3C 24010007 */  li    $at, 7
/* 2068A0 801DBD40 5481FEED */  bnel  $a0, $at, .L801DB8F8_ovl15
/* 2068A4 801DBD44 2C81000A */   sltiu $at, $a0, 0xa
.L801DBD48_ovl15:
/* 2068A8 801DBD48 0C002DAF */  jal   finish_current_thread
/* 2068AC 801DBD4C 02E02025 */   move  $a0, $s7
/* 2068B0 801DBD50 8E04003C */  lw    $a0, 0x3c($s0)
/* 2068B4 801DBD54 24010007 */  li    $at, 7
/* 2068B8 801DBD58 1081FFFB */  beq   $a0, $at, .L801DBD48_ovl15
/* 2068BC 801DBD5C 00000000 */   nop   
/* 2068C0 801DBD60 1000FEE5 */  b     .L801DB8F8_ovl15
/* 2068C4 801DBD64 2C81000A */   sltiu $at, $a0, 0xa
/* 2068C8 801DBD68 24010008 */  li    $at, 8
/* 2068CC 801DBD6C 5481FEE2 */  bnel  $a0, $at, .L801DB8F8_ovl15
/* 2068D0 801DBD70 2C81000A */   sltiu $at, $a0, 0xa
.L801DBD74_ovl15:
/* 2068D4 801DBD74 0C002DAF */  jal   finish_current_thread
/* 2068D8 801DBD78 02E02025 */   move  $a0, $s7
/* 2068DC 801DBD7C 8E04003C */  lw    $a0, 0x3c($s0)
/* 2068E0 801DBD80 24010008 */  li    $at, 8
/* 2068E4 801DBD84 1081FFFB */  beq   $a0, $at, .L801DBD74_ovl15
/* 2068E8 801DBD88 00000000 */   nop   
/* 2068EC 801DBD8C 1000FEDA */  b     .L801DB8F8_ovl15
/* 2068F0 801DBD90 2C81000A */   sltiu $at, $a0, 0xa
/* 2068F4 801DBD94 57C4FED8 */  bnel  $fp, $a0, .L801DB8F8_ovl15
/* 2068F8 801DBD98 2C81000A */   sltiu $at, $a0, 0xa
.L801DBD9C_ovl15:
/* 2068FC 801DBD9C 0C002DAF */  jal   finish_current_thread
/* 206900 801DBDA0 02E02025 */   move  $a0, $s7
/* 206904 801DBDA4 8E04003C */  lw    $a0, 0x3c($s0)
/* 206908 801DBDA8 13C4FFFC */  beq   $fp, $a0, .L801DBD9C_ovl15
/* 20690C 801DBDAC 00000000 */   nop   
/* 206910 801DBDB0 2C81000A */  sltiu $at, $a0, 0xa
/* 206914 801DBDB4 5420FED2 */  bnezl $at, .L801DB900_ovl15
/* 206918 801DBDB8 00045080 */   sll   $t2, $a0, 2
.L801DBDBC_ovl15:
/* 20691C 801DBDBC 0C02BE85 */  jal   func_800AFA14
/* 206920 801DBDC0 00000000 */   nop   
/* 206924 801DBDC4 1000FECB */  b     .L801DB8F4_ovl15
/* 206928 801DBDC8 8E04003C */   lw    $a0, 0x3c($s0)
/* 20692C 801DBDCC 00000000 */  nop   
/* 206930 801DBDD0 00000000 */  nop   
/* 206934 801DBDD4 00000000 */  nop   
/* 206938 801DBDD8 00000000 */  nop   
/* 20693C 801DBDDC 00000000 */  nop   
/* 206940 801DBDE0 8FBF005C */  lw    $ra, 0x5c($sp)
/* 206944 801DBDE4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 206948 801DBDE8 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 20694C 801DBDEC D7B80028 */  ldc1  $f24, 0x28($sp)
/* 206950 801DBDF0 D7BA0030 */  ldc1  $f26, 0x30($sp)
/* 206954 801DBDF4 8FB00038 */  lw    $s0, 0x38($sp)
/* 206958 801DBDF8 8FB1003C */  lw    $s1, 0x3c($sp)
/* 20695C 801DBDFC 8FB20040 */  lw    $s2, 0x40($sp)
/* 206960 801DBE00 8FB30044 */  lw    $s3, 0x44($sp)
/* 206964 801DBE04 8FB40048 */  lw    $s4, 0x48($sp)
/* 206968 801DBE08 8FB5004C */  lw    $s5, 0x4c($sp)
/* 20696C 801DBE0C 8FB60050 */  lw    $s6, 0x50($sp)
/* 206970 801DBE10 8FB70054 */  lw    $s7, 0x54($sp)
/* 206974 801DBE14 8FBE0058 */  lw    $fp, 0x58($sp)
/* 206978 801DBE18 03E00008 */  jr    $ra
/* 20697C 801DBE1C 27BD0060 */   addiu $sp, $sp, 0x60

/* 206980 801DBE20 3C0E800D */  lui   $t6, %hi(D_800D70D4) # $t6, 0x800d
/* 206984 801DBE24 8DCE70D4 */  lw    $t6, %lo(D_800D70D4)($t6)
/* 206988 801DBE28 AFA40000 */  sw    $a0, ($sp)
/* 20698C 801DBE2C 2DC1000A */  sltiu $at, $t6, 0xa
/* 206990 801DBE30 1020001C */  beqz  $at, .L801DBEA4_ovl15
/* 206994 801DBE34 000E7080 */   sll   $t6, $t6, 2
/* 206998 801DBE38 3C01801E */  lui   $at, 0x801e
/* 20699C 801DBE3C 002E0821 */  addu  $at, $at, $t6
/* 2069A0 801DBE40 8C2E67FC */  lw    $t6, 0x67fc($at)
/* 2069A4 801DBE44 01C00008 */  jr    $t6
/* 2069A8 801DBE48 00000000 */   nop   
/* 2069AC 801DBE4C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 2069B0 801DBE50 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 2069B4 801DBE54 3C01800E */  lui   $at, 0x800e
/* 2069B8 801DBE58 3C038013 */  lui   $v1, %hi(D_801292B0) # $v1, 0x8013
/* 2069BC 801DBE5C 8C4F0000 */  lw    $t7, ($v0)
/* 2069C0 801DBE60 246392B0 */  addiu $v1, %lo(D_801292B0) # addiu $v1, $v1, -0x6d50
/* 2069C4 801DBE64 000FC080 */  sll   $t8, $t7, 2
/* 2069C8 801DBE68 00380821 */  addu  $at, $at, $t8
/* 2069CC 801DBE6C C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 2069D0 801DBE70 3C01800E */  lui   $at, 0x800e
/* 2069D4 801DBE74 E4640000 */  swc1  $f4, ($v1)
/* 2069D8 801DBE78 8C590000 */  lw    $t9, ($v0)
/* 2069DC 801DBE7C 00194080 */  sll   $t0, $t9, 2
/* 2069E0 801DBE80 00280821 */  addu  $at, $at, $t0
/* 2069E4 801DBE84 C4262790 */  lwc1  $f6, 0x2790($at)
/* 2069E8 801DBE88 3C01800E */  lui   $at, 0x800e
/* 2069EC 801DBE8C E4660004 */  swc1  $f6, 4($v1)
/* 2069F0 801DBE90 8C490000 */  lw    $t1, ($v0)
/* 2069F4 801DBE94 00095080 */  sll   $t2, $t1, 2
/* 2069F8 801DBE98 002A0821 */  addu  $at, $at, $t2
/* 2069FC 801DBE9C C4282950 */  lwc1  $f8, 0x2950($at)
/* 206A00 801DBEA0 E4680008 */  swc1  $f8, 8($v1)
.L801DBEA4_ovl15:
/* 206A04 801DBEA4 03E00008 */  jr    $ra
/* 206A08 801DBEA8 00000000 */   nop   

/* 206A0C 801DBEAC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 206A10 801DBEB0 AFB10018 */  sw    $s1, 0x18($sp)
/* 206A14 801DBEB4 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 206A18 801DBEB8 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 206A1C 801DBEBC 8E230000 */  lw    $v1, ($s1)
/* 206A20 801DBEC0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 206A24 801DBEC4 AFB00014 */  sw    $s0, 0x14($sp)
/* 206A28 801DBEC8 AFA40038 */  sw    $a0, 0x38($sp)
/* 206A2C 801DBECC 8C620000 */  lw    $v0, ($v1)
/* 206A30 801DBED0 3C01800E */  lui   $at, 0x800e
/* 206A34 801DBED4 3C10800E */  lui   $s0, 0x800e
/* 206A38 801DBED8 00021080 */  sll   $v0, $v0, 2
/* 206A3C 801DBEDC 00220821 */  addu  $at, $at, $v0
/* 206A40 801DBEE0 AC20EF90 */  sw    $zero, -0x1070($at)
/* 206A44 801DBEE4 8C6E0000 */  lw    $t6, ($v1)
/* 206A48 801DBEE8 3C01800E */  lui   $at, 0x800e
/* 206A4C 801DBEEC 3C04800E */  lui   $a0, 0x800e
/* 206A50 801DBEF0 000E7880 */  sll   $t7, $t6, 2
/* 206A54 801DBEF4 002F0821 */  addu  $at, $at, $t7
/* 206A58 801DBEF8 AC20F150 */  sw    $zero, -0xeb0($at)
/* 206A5C 801DBEFC 8C780000 */  lw    $t8, ($v1)
/* 206A60 801DBF00 02028021 */  addu  $s0, $s0, $v0
/* 206A64 801DBF04 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 206A68 801DBF08 0018C880 */  sll   $t9, $t8, 2
/* 206A6C 801DBF0C 00992021 */  addu  $a0, $a0, $t9
/* 206A70 801DBF10 8E100D50 */  lw    $s0, 0xd50($s0)
/* 206A74 801DBF14 8C84EC10 */  lw    $a0, -0x13f0($a0)
/* 206A78 801DBF18 0C02C7DA */  jal   func_800B1F68
/* 206A7C 801DBF1C 24A51434 */   addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 206A80 801DBF20 8E280000 */  lw    $t0, ($s1)
/* 206A84 801DBF24 2404007D */  li    $a0, 125
/* 206A88 801DBF28 0C02C67D */  jal   func_800B19F4
/* 206A8C 801DBF2C 8D050000 */   lw    $a1, ($t0)
/* 206A90 801DBF30 00002025 */  move  $a0, $zero
/* 206A94 801DBF34 0C02BEED */  jal   func_800AFBB4
/* 206A98 801DBF38 8E250000 */   lw    $a1, ($s1)
/* 206A9C 801DBF3C 0C029D9E */  jal   play_sound
/* 206AA0 801DBF40 24040198 */   li    $a0, 408
/* 206AA4 801DBF44 8E230000 */  lw    $v1, ($s1)
/* 206AA8 801DBF48 3C0B800D */  lui   $t3, %hi(D_800D70D4) # $t3, 0x800d
/* 206AAC 801DBF4C 8D6B70D4 */  lw    $t3, %lo(D_800D70D4)($t3)
/* 206AB0 801DBF50 8C690000 */  lw    $t1, ($v1)
/* 206AB4 801DBF54 3C01800F */  lui   $at, 0x800f
/* 206AB8 801DBF58 24040002 */  li    $a0, 2
/* 206ABC 801DBF5C 00095080 */  sll   $t2, $t1, 2
/* 206AC0 801DBF60 002A0821 */  addu  $at, $at, $t2
/* 206AC4 801DBF64 AC2498E0 */  sw    $a0, -0x6720($at)
/* 206AC8 801DBF68 29610004 */  slti  $at, $t3, 4
/* 206ACC 801DBF6C 10200024 */  beqz  $at, .L801DC000_ovl15
/* 206AD0 801DBF70 02002825 */   move  $a1, $s0
/* 206AD4 801DBF74 00103880 */  sll   $a3, $s0, 2
/* 206AD8 801DBF78 3C02800E */  lui   $v0, 0x800e
/* 206ADC 801DBF7C 00471021 */  addu  $v0, $v0, $a3
/* 206AE0 801DBF80 8C42FF50 */  lw    $v0, -0xb0($v0)
/* 206AE4 801DBF84 3C010001 */  lui   $at, (0x000103BD >> 16) # lui $at, 1
/* 206AE8 801DBF88 342103BD */  ori   $at, (0x000103BD & 0xFFFF) # ori $at, $at, 0x3bd
/* 206AEC 801DBF8C 10410009 */  beq   $v0, $at, .L801DBFB4_ovl15
/* 206AF0 801DBF90 3C010001 */   lui   $at, (0x000103BF >> 16) # lui $at, 1
/* 206AF4 801DBF94 342103BF */  ori   $at, (0x000103BF & 0xFFFF) # ori $at, $at, 0x3bf
/* 206AF8 801DBF98 1041000C */  beq   $v0, $at, .L801DBFCC_ovl15
/* 206AFC 801DBF9C 3C010001 */   lui   $at, (0x000103C1 >> 16) # lui $at, 1
/* 206B00 801DBFA0 342103C1 */  ori   $at, (0x000103C1 & 0xFFFF) # ori $at, $at, 0x3c1
/* 206B04 801DBFA4 50410011 */  beql  $v0, $at, .L801DBFEC_ovl15
/* 206B08 801DBFA8 8C790000 */   lw    $t9, ($v1)
/* 206B0C 801DBFAC 1000000F */  b     .L801DBFEC_ovl15
/* 206B10 801DBFB0 8C790000 */   lw    $t9, ($v1)
.L801DBFB4_ovl15:
/* 206B14 801DBFB4 8C6C0000 */  lw    $t4, ($v1)
/* 206B18 801DBFB8 3C01800F */  lui   $at, 0x800f
/* 206B1C 801DBFBC 000C6880 */  sll   $t5, $t4, 2
/* 206B20 801DBFC0 002D0821 */  addu  $at, $at, $t5
/* 206B24 801DBFC4 10000015 */  b     .L801DC01C_ovl15
/* 206B28 801DBFC8 AC209AA0 */   sw    $zero, -0x6560($at)
.L801DBFCC_ovl15:
/* 206B2C 801DBFCC 8C6F0000 */  lw    $t7, ($v1)
/* 206B30 801DBFD0 3C01800F */  lui   $at, 0x800f
/* 206B34 801DBFD4 240E0001 */  li    $t6, 1
/* 206B38 801DBFD8 000FC080 */  sll   $t8, $t7, 2
/* 206B3C 801DBFDC 00380821 */  addu  $at, $at, $t8
/* 206B40 801DBFE0 1000000E */  b     .L801DC01C_ovl15
/* 206B44 801DBFE4 AC2E9AA0 */   sw    $t6, -0x6560($at)
/* 206B48 801DBFE8 8C790000 */  lw    $t9, ($v1)
.L801DBFEC_ovl15:
/* 206B4C 801DBFEC 3C01800F */  lui   $at, 0x800f
/* 206B50 801DBFF0 00194080 */  sll   $t0, $t9, 2
/* 206B54 801DBFF4 00280821 */  addu  $at, $at, $t0
/* 206B58 801DBFF8 10000008 */  b     .L801DC01C_ovl15
/* 206B5C 801DBFFC AC249AA0 */   sw    $a0, -0x6560($at)
.L801DC000_ovl15:
/* 206B60 801DC000 8C6A0000 */  lw    $t2, ($v1)
/* 206B64 801DC004 3C01800F */  lui   $at, 0x800f
/* 206B68 801DC008 24090003 */  li    $t1, 3
/* 206B6C 801DC00C 000A5880 */  sll   $t3, $t2, 2
/* 206B70 801DC010 002B0821 */  addu  $at, $at, $t3
/* 206B74 801DC014 AC299AA0 */  sw    $t1, -0x6560($at)
/* 206B78 801DC018 00103880 */  sll   $a3, $s0, 2
.L801DC01C_ovl15:
/* 206B7C 801DC01C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 206B80 801DC020 C42C6B10 */  lwc1  $f12, %lo(D_800D6B10)($at)
/* 206B84 801DC024 0C02BB74 */  jal   func_800AEDD0
/* 206B88 801DC028 AFA70024 */   sw    $a3, 0x24($sp)
/* 206B8C 801DC02C 8E2C0000 */  lw    $t4, ($s1)
/* 206B90 801DC030 3C0E800F */  lui   $t6, 0x800f
/* 206B94 801DC034 3C04801E */  lui   $a0, 0x801e
/* 206B98 801DC038 8D8D0000 */  lw    $t5, ($t4)
/* 206B9C 801DC03C 24050000 */  li    $a1, 0
/* 206BA0 801DC040 02003025 */  move  $a2, $s0
/* 206BA4 801DC044 000D7880 */  sll   $t7, $t5, 2
/* 206BA8 801DC048 01CF7021 */  addu  $t6, $t6, $t7
/* 206BAC 801DC04C 8DCE9AA0 */  lw    $t6, -0x6560($t6)
/* 206BB0 801DC050 000EC080 */  sll   $t8, $t6, 2
/* 206BB4 801DC054 00982021 */  addu  $a0, $a0, $t8
/* 206BB8 801DC058 0C02A80E */  jal   func_800AA038
/* 206BBC 801DC05C 8C8464F0 */   lw    $a0, 0x64f0($a0)
/* 206BC0 801DC060 0C002DAF */  jal   finish_current_thread
/* 206BC4 801DC064 2404002A */   li    $a0, 42
/* 206BC8 801DC068 3C040001 */  lui   $a0, (0x000103DD >> 16) # lui $a0, 1
/* 206BCC 801DC06C 348403DD */  ori   $a0, (0x000103DD & 0xFFFF) # ori $a0, $a0, 0x3dd
/* 206BD0 801DC070 24050000 */  li    $a1, 0
/* 206BD4 801DC074 0C02A80E */  jal   func_800AA038
/* 206BD8 801DC078 02003025 */   move  $a2, $s0
/* 206BDC 801DC07C 8E390000 */  lw    $t9, ($s1)
/* 206BE0 801DC080 3C01800F */  lui   $at, 0x800f
/* 206BE4 801DC084 8FA70024 */  lw    $a3, 0x24($sp)
/* 206BE8 801DC088 8F280000 */  lw    $t0, ($t9)
/* 206BEC 801DC08C 2409FFFF */  li    $t1, -1
/* 206BF0 801DC090 24040002 */  li    $a0, 2
/* 206BF4 801DC094 00085080 */  sll   $t2, $t0, 2
/* 206BF8 801DC098 002A0821 */  addu  $at, $at, $t2
/* 206BFC 801DC09C AC2098E0 */  sw    $zero, -0x6720($at)
/* 206C00 801DC0A0 3C01800F */  lui   $at, 0x800f
/* 206C04 801DC0A4 00270821 */  addu  $at, $at, $a3
/* 206C08 801DC0A8 AC29BDA0 */  sw    $t1, -0x4260($at)
/* 206C0C 801DC0AC 3C01800F */  lui   $at, 0x800f
/* 206C10 801DC0B0 00270821 */  addu  $at, $at, $a3
/* 206C14 801DC0B4 0C002DAF */  jal   finish_current_thread
/* 206C18 801DC0B8 AC20A1A0 */   sw    $zero, -0x5e60($at)
/* 206C1C 801DC0BC 8E2B0000 */  lw    $t3, ($s1)
/* 206C20 801DC0C0 0C067656 */  jal   func_8019D958_ovl15
/* 206C24 801DC0C4 95640002 */   lhu   $a0, 2($t3)
/* 206C28 801DC0C8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 206C2C 801DC0CC 8FB00014 */  lw    $s0, 0x14($sp)
/* 206C30 801DC0D0 8FB10018 */  lw    $s1, 0x18($sp)
/* 206C34 801DC0D4 03E00008 */  jr    $ra
/* 206C38 801DC0D8 27BD0038 */   addiu $sp, $sp, 0x38

/* 206C3C 801DC0DC 8C820080 */  lw    $v0, 0x80($a0)
/* 206C40 801DC0E0 10400008 */  beqz  $v0, .L801DC104_ovl15
/* 206C44 801DC0E4 00000000 */   nop   
/* 206C48 801DC0E8 88AF0000 */  lwl   $t7, ($a1)
.L801DC0EC_ovl15:
/* 206C4C 801DC0EC 98AF0003 */  lwr   $t7, 3($a1)
/* 206C50 801DC0F0 A84F0058 */  swl   $t7, 0x58($v0)
/* 206C54 801DC0F4 B84F005B */  swr   $t7, 0x5b($v0)
/* 206C58 801DC0F8 8C420000 */  lw    $v0, ($v0)
/* 206C5C 801DC0FC 5440FFFB */  bnezl $v0, .L801DC0EC_ovl15
/* 206C60 801DC100 88AF0000 */   lwl   $t7, ($a1)
.L801DC104_ovl15:
/* 206C64 801DC104 03E00008 */  jr    $ra
/* 206C68 801DC108 00000000 */   nop   

/* 206C6C 801DC10C 8C820080 */  lw    $v0, 0x80($a0)
/* 206C70 801DC110 10400008 */  beqz  $v0, .L801DC134_ovl15
/* 206C74 801DC114 00000000 */   nop   
/* 206C78 801DC118 88AF0000 */  lwl   $t7, ($a1)
.L801DC11C_ovl15:
/* 206C7C 801DC11C 98AF0003 */  lwr   $t7, 3($a1)
/* 206C80 801DC120 A84F0060 */  swl   $t7, 0x60($v0)
/* 206C84 801DC124 B84F0063 */  swr   $t7, 0x63($v0)
/* 206C88 801DC128 8C420000 */  lw    $v0, ($v0)
/* 206C8C 801DC12C 5440FFFB */  bnezl $v0, .L801DC11C_ovl15
/* 206C90 801DC130 88AF0000 */   lwl   $t7, ($a1)
.L801DC134_ovl15:
/* 206C94 801DC134 03E00008 */  jr    $ra
/* 206C98 801DC138 00000000 */   nop   

/* 206C9C 801DC13C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 206CA0 801DC140 AFB20020 */  sw    $s2, 0x20($sp)
/* 206CA4 801DC144 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 206CA8 801DC148 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 206CAC 801DC14C 8E420000 */  lw    $v0, ($s2)
/* 206CB0 801DC150 AFBF0024 */  sw    $ra, 0x24($sp)
/* 206CB4 801DC154 AFB1001C */  sw    $s1, 0x1c($sp)
/* 206CB8 801DC158 AFB00018 */  sw    $s0, 0x18($sp)
/* 206CBC 801DC15C AFA40028 */  sw    $a0, 0x28($sp)
/* 206CC0 801DC160 8C4E0000 */  lw    $t6, ($v0)
/* 206CC4 801DC164 44801000 */  mtc1  $zero, $f2
/* 206CC8 801DC168 3C07800E */  lui   $a3, %hi(gEntitiesAngleZArray) # $a3, 0x800e
/* 206CCC 801DC16C 24E74390 */  addiu $a3, %lo(gEntitiesAngleZArray) # addiu $a3, $a3, 0x4390
/* 206CD0 801DC170 000E7880 */  sll   $t7, $t6, 2
/* 206CD4 801DC174 00EFC021 */  addu  $t8, $a3, $t7
/* 206CD8 801DC178 E7020000 */  swc1  $f2, ($t8)
/* 206CDC 801DC17C 8C430000 */  lw    $v1, ($v0)
/* 206CE0 801DC180 3C01800E */  lui   $at, 0x800e
/* 206CE4 801DC184 3C08800F */  lui   $t0, %hi(D_800E9020) # $t0, 0x800f
/* 206CE8 801DC188 00031880 */  sll   $v1, $v1, 2
/* 206CEC 801DC18C 00E3C821 */  addu  $t9, $a3, $v1
/* 206CF0 801DC190 C7200000 */  lwc1  $f0, ($t9)
/* 206CF4 801DC194 00230821 */  addu  $at, $at, $v1
/* 206CF8 801DC198 25089020 */  addiu $t0, %lo(D_800E9020) # addiu $t0, $t0, -0x6fe0
/* 206CFC 801DC19C E42041D0 */  swc1  $f0, 0x41d0($at)
/* 206D00 801DC1A0 8C490000 */  lw    $t1, ($v0)
/* 206D04 801DC1A4 3C01800E */  lui   $at, 0x800e
/* 206D08 801DC1A8 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 206D0C 801DC1AC 00095080 */  sll   $t2, $t1, 2
/* 206D10 801DC1B0 002A0821 */  addu  $at, $at, $t2
/* 206D14 801DC1B4 E4204010 */  swc1  $f0, 0x4010($at)
/* 206D18 801DC1B8 8C4B0000 */  lw    $t3, ($v0)
/* 206D1C 801DC1BC 3C01800E */  lui   $at, 0x800e
/* 206D20 801DC1C0 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 206D24 801DC1C4 000B6080 */  sll   $t4, $t3, 2
/* 206D28 801DC1C8 010C6821 */  addu  $t5, $t0, $t4
/* 206D2C 801DC1CC E5A20000 */  swc1  $f2, ($t5)
/* 206D30 801DC1D0 8C430000 */  lw    $v1, ($v0)
/* 206D34 801DC1D4 3C09801E */  lui   $t1, %hi(D_801DC310) # $t1, 0x801e
/* 206D38 801DC1D8 2529C310 */  addiu $t1, %lo(D_801DC310) # addiu $t1, $t1, -0x3cf0
/* 206D3C 801DC1DC 00031880 */  sll   $v1, $v1, 2
/* 206D40 801DC1E0 01037021 */  addu  $t6, $t0, $v1
/* 206D44 801DC1E4 C5C40000 */  lwc1  $f4, ($t6)
/* 206D48 801DC1E8 00230821 */  addu  $at, $at, $v1
/* 206D4C 801DC1EC 3C040001 */  lui   $a0, (0x0001008F >> 16) # lui $a0, 1
/* 206D50 801DC1F0 E42417D0 */  swc1  $f4, 0x17d0($at)
/* 206D54 801DC1F4 8C580000 */  lw    $t8, ($v0)
/* 206D58 801DC1F8 3C01800E */  lui   $at, 0x800e
/* 206D5C 801DC1FC 3484008F */  ori   $a0, (0x0001008F & 0xFFFF) # ori $a0, $a0, 0x8f
/* 206D60 801DC200 0018C880 */  sll   $t9, $t8, 2
/* 206D64 801DC204 00390821 */  addu  $at, $at, $t9
/* 206D68 801DC208 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 206D6C 801DC20C 8C4A0000 */  lw    $t2, ($v0)
/* 206D70 801DC210 3C01800E */  lui   $at, 0x800e
/* 206D74 801DC214 24050023 */  li    $a1, 35
/* 206D78 801DC218 000A5880 */  sll   $t3, $t2, 2
/* 206D7C 801DC21C 002B0821 */  addu  $at, $at, $t3
/* 206D80 801DC220 AC29F150 */  sw    $t1, -0xeb0($at)
/* 206D84 801DC224 0C02A619 */  jal   func_800A9864
/* 206D88 801DC228 24060010 */   li    $a2, 16
/* 206D8C 801DC22C 24040001 */  li    $a0, 1
/* 206D90 801DC230 0C02BEED */  jal   func_800AFBB4
/* 206D94 801DC234 8E450000 */   lw    $a1, ($s2)
/* 206D98 801DC238 3C040001 */  lui   $a0, (0x00010526 >> 16) # lui $a0, 1
/* 206D9C 801DC23C 0C02A806 */  jal   func_800AA018
/* 206DA0 801DC240 34840526 */   ori   $a0, (0x00010526 & 0xFFFF) # ori $a0, $a0, 0x526
/* 206DA4 801DC244 3C040001 */  lui   $a0, (0x00010525 >> 16) # lui $a0, 1
/* 206DA8 801DC248 0C02A855 */  jal   func_800AA154
/* 206DAC 801DC24C 34840525 */   ori   $a0, (0x00010525 & 0xFFFF) # ori $a0, $a0, 0x525
/* 206DB0 801DC250 3C040001 */  lui   $a0, (0x00010528 >> 16) # lui $a0, 1
/* 206DB4 801DC254 0C02A806 */  jal   func_800AA018
/* 206DB8 801DC258 34840528 */   ori   $a0, (0x00010528 & 0xFFFF) # ori $a0, $a0, 0x528
/* 206DBC 801DC25C 3C040001 */  lui   $a0, (0x00010527 >> 16) # lui $a0, 1
/* 206DC0 801DC260 0C02A855 */  jal   func_800AA154
/* 206DC4 801DC264 34840527 */   ori   $a0, (0x00010527 & 0xFFFF) # ori $a0, $a0, 0x527
/* 206DC8 801DC268 3C040001 */  lui   $a0, (0x0001052A >> 16) # lui $a0, 1
/* 206DCC 801DC26C 0C02A806 */  jal   func_800AA018
/* 206DD0 801DC270 3484052A */   ori   $a0, (0x0001052A & 0xFFFF) # ori $a0, $a0, 0x52a
/* 206DD4 801DC274 3C040001 */  lui   $a0, (0x00010529 >> 16) # lui $a0, 1
/* 206DD8 801DC278 0C02A806 */  jal   func_800AA018
/* 206DDC 801DC27C 34840529 */   ori   $a0, (0x00010529 & 0xFFFF) # ori $a0, $a0, 0x529
/* 206DE0 801DC280 8E4C0000 */  lw    $t4, ($s2)
/* 206DE4 801DC284 3C11800F */  lui   $s1, %hi(D_800EBBE0) # $s1, 0x800f
/* 206DE8 801DC288 2631BBE0 */  addiu $s1, %lo(D_800EBBE0) # addiu $s1, $s1, -0x4420
/* 206DEC 801DC28C 8D820000 */  lw    $v0, ($t4)
/* 206DF0 801DC290 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 206DF4 801DC294 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 206DF8 801DC298 00026880 */  sll   $t5, $v0, 2
/* 206DFC 801DC29C 022D7021 */  addu  $t6, $s1, $t5
/* 206E00 801DC2A0 8DD80000 */  lw    $t8, ($t6)
/* 206E04 801DC2A4 00187880 */  sll   $t7, $t8, 2
/* 206E08 801DC2A8 020FC821 */  addu  $t9, $s0, $t7
/* 206E0C 801DC2AC 8F2A0000 */  lw    $t2, ($t9)
/* 206E10 801DC2B0 29410002 */  slti  $at, $t2, 2
/* 206E14 801DC2B4 1020000E */  beqz  $at, .L801DC2F0_ovl15
/* 206E18 801DC2B8 00000000 */   nop   
.L801DC2BC_ovl15:
/* 206E1C 801DC2BC 0C002DAF */  jal   finish_current_thread
/* 206E20 801DC2C0 24040001 */   li    $a0, 1
/* 206E24 801DC2C4 8E490000 */  lw    $t1, ($s2)
/* 206E28 801DC2C8 8D220000 */  lw    $v0, ($t1)
/* 206E2C 801DC2CC 00025880 */  sll   $t3, $v0, 2
/* 206E30 801DC2D0 022B6021 */  addu  $t4, $s1, $t3
/* 206E34 801DC2D4 8D8D0000 */  lw    $t5, ($t4)
/* 206E38 801DC2D8 000D7080 */  sll   $t6, $t5, 2
/* 206E3C 801DC2DC 020EC021 */  addu  $t8, $s0, $t6
/* 206E40 801DC2E0 8F0F0000 */  lw    $t7, ($t8)
/* 206E44 801DC2E4 29E10002 */  slti  $at, $t7, 2
/* 206E48 801DC2E8 1420FFF4 */  bnez  $at, .L801DC2BC_ovl15
/* 206E4C 801DC2EC 00000000 */   nop   
.L801DC2F0_ovl15:
/* 206E50 801DC2F0 0C067656 */  jal   func_8019D958_ovl15
/* 206E54 801DC2F4 3044FFFF */   andi  $a0, $v0, 0xffff
/* 206E58 801DC2F8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 206E5C 801DC2FC 8FB00018 */  lw    $s0, 0x18($sp)
/* 206E60 801DC300 8FB1001C */  lw    $s1, 0x1c($sp)
/* 206E64 801DC304 8FB20020 */  lw    $s2, 0x20($sp)
/* 206E68 801DC308 03E00008 */  jr    $ra
/* 206E6C 801DC30C 27BD0028 */   addiu $sp, $sp, 0x28

/* 206E70 801DC310 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 206E74 801DC314 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 206E78 801DC318 8CEE0000 */  lw    $t6, ($a3)
/* 206E7C 801DC31C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 206E80 801DC320 AFBF0014 */  sw    $ra, 0x14($sp)
/* 206E84 801DC324 AFA40030 */  sw    $a0, 0x30($sp)
/* 206E88 801DC328 8DC20000 */  lw    $v0, ($t6)
/* 206E8C 801DC32C 3C03800E */  lui   $v1, %hi(D_800E0D50) # $v1, 0x800e
/* 206E90 801DC330 24630D50 */  addiu $v1, %lo(D_800E0D50) # addiu $v1, $v1, 0xd50
/* 206E94 801DC334 00021080 */  sll   $v0, $v0, 2
/* 206E98 801DC338 00627821 */  addu  $t7, $v1, $v0
/* 206E9C 801DC33C 8DF80000 */  lw    $t8, ($t7)
/* 206EA0 801DC340 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 206EA4 801DC344 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 206EA8 801DC348 0018C880 */  sll   $t9, $t8, 2
/* 206EAC 801DC34C 00D95021 */  addu  $t2, $a2, $t9
/* 206EB0 801DC350 8D4B0000 */  lw    $t3, ($t2)
/* 206EB4 801DC354 00C26821 */  addu  $t5, $a2, $v0
/* 206EB8 801DC358 8DAE0000 */  lw    $t6, ($t5)
/* 206EBC 801DC35C 8D6C0018 */  lw    $t4, 0x18($t3)
/* 206EC0 801DC360 27A40024 */  addiu $a0, $sp, 0x24
/* 206EC4 801DC364 8DCF0010 */  lw    $t7, 0x10($t6)
/* 206EC8 801DC368 C5800034 */  lwc1  $f0, 0x34($t4)
/* 206ECC 801DC36C E5E00034 */  swc1  $f0, 0x34($t7)
/* 206ED0 801DC370 8CF80000 */  lw    $t8, ($a3)
/* 206ED4 801DC374 8F190000 */  lw    $t9, ($t8)
/* 206ED8 801DC378 00195080 */  sll   $t2, $t9, 2
/* 206EDC 801DC37C 00CA5821 */  addu  $t3, $a2, $t2
/* 206EE0 801DC380 8D6C0000 */  lw    $t4, ($t3)
/* 206EE4 801DC384 8D8D000C */  lw    $t5, 0xc($t4)
/* 206EE8 801DC388 E5A00034 */  swc1  $f0, 0x34($t5)
/* 206EEC 801DC38C 8CEE0000 */  lw    $t6, ($a3)
/* 206EF0 801DC390 8DCF0000 */  lw    $t7, ($t6)
/* 206EF4 801DC394 000FC080 */  sll   $t8, $t7, 2
/* 206EF8 801DC398 0078C821 */  addu  $t9, $v1, $t8
/* 206EFC 801DC39C 8F2A0000 */  lw    $t2, ($t9)
/* 206F00 801DC3A0 000A5880 */  sll   $t3, $t2, 2
/* 206F04 801DC3A4 00CB6021 */  addu  $t4, $a2, $t3
/* 206F08 801DC3A8 8D8D0000 */  lw    $t5, ($t4)
/* 206F0C 801DC3AC 0C0291E5 */  jal   func_800A4794
/* 206F10 801DC3B0 8DA5001C */   lw    $a1, 0x1c($t5)
/* 206F14 801DC3B4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 206F18 801DC3B8 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 206F1C 801DC3BC 8CE30000 */  lw    $v1, ($a3)
/* 206F20 801DC3C0 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 206F24 801DC3C4 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 206F28 801DC3C8 8C6E0000 */  lw    $t6, ($v1)
/* 206F2C 801DC3CC 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 206F30 801DC3D0 3C05800E */  lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 206F34 801DC3D4 000E7880 */  sll   $t7, $t6, 2
/* 206F38 801DC3D8 008FC021 */  addu  $t8, $a0, $t7
/* 206F3C 801DC3DC E7040000 */  swc1  $f4, ($t8)
/* 206F40 801DC3E0 8C790000 */  lw    $t9, ($v1)
/* 206F44 801DC3E4 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 206F48 801DC3E8 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 206F4C 801DC3EC 00195080 */  sll   $t2, $t9, 2
/* 206F50 801DC3F0 00AA5821 */  addu  $t3, $a1, $t2
/* 206F54 801DC3F4 E5660000 */  swc1  $f6, ($t3)
/* 206F58 801DC3F8 8C6C0000 */  lw    $t4, ($v1)
/* 206F5C 801DC3FC C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 206F60 801DC400 3C08800E */  lui   $t0, %hi(gEntitiesNextPosZArray) # $t0, 0x800e
/* 206F64 801DC404 25082950 */  addiu $t0, %lo(gEntitiesNextPosZArray) # addiu $t0, $t0, 0x2950
/* 206F68 801DC408 000C6880 */  sll   $t5, $t4, 2
/* 206F6C 801DC40C 010D7021 */  addu  $t6, $t0, $t5
/* 206F70 801DC410 E5C80000 */  swc1  $f8, ($t6)
/* 206F74 801DC414 8C620000 */  lw    $v0, ($v1)
/* 206F78 801DC418 3C09800F */  lui   $t1, %hi(D_800EBBE0) # $t1, 0x800f
/* 206F7C 801DC41C 2529BBE0 */  addiu $t1, %lo(D_800EBBE0) # addiu $t1, $t1, -0x4420
/* 206F80 801DC420 00021080 */  sll   $v0, $v0, 2
/* 206F84 801DC424 01227821 */  addu  $t7, $t1, $v0
/* 206F88 801DC428 8DF80000 */  lw    $t8, ($t7)
/* 206F8C 801DC42C 3C0A800F */  lui   $t2, 0x800f
/* 206F90 801DC430 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 206F94 801DC434 0018C880 */  sll   $t9, $t8, 2
/* 206F98 801DC438 01595021 */  addu  $t2, $t2, $t9
/* 206F9C 801DC43C 8D4A98E0 */  lw    $t2, -0x6720($t2)
/* 206FA0 801DC440 24010001 */  li    $at, 1
/* 206FA4 801DC444 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 206FA8 801DC448 1541003A */  bne   $t2, $at, .L801DC534_ovl15
/* 206FAC 801DC44C C7AA0024 */   lwc1  $f10, 0x24($sp)
/* 206FB0 801DC450 00825821 */  addu  $t3, $a0, $v0
/* 206FB4 801DC454 E56A0000 */  swc1  $f10, ($t3)
/* 206FB8 801DC458 8C620000 */  lw    $v0, ($v1)
/* 206FBC 801DC45C 00021080 */  sll   $v0, $v0, 2
/* 206FC0 801DC460 01226021 */  addu  $t4, $t1, $v0
/* 206FC4 801DC464 8D8D0000 */  lw    $t5, ($t4)
/* 206FC8 801DC468 0082C021 */  addu  $t8, $a0, $v0
/* 206FCC 801DC46C C7120000 */  lwc1  $f18, ($t8)
/* 206FD0 801DC470 000D7080 */  sll   $t6, $t5, 2
/* 206FD4 801DC474 008E7821 */  addu  $t7, $a0, $t6
/* 206FD8 801DC478 C5F00000 */  lwc1  $f16, ($t7)
/* 206FDC 801DC47C 00C2C821 */  addu  $t9, $a2, $v0
/* 206FE0 801DC480 8F2A0000 */  lw    $t2, ($t9)
/* 206FE4 801DC484 46128101 */  sub.s $f4, $f16, $f18
/* 206FE8 801DC488 8D4B0008 */  lw    $t3, 8($t2)
/* 206FEC 801DC48C E564001C */  swc1  $f4, 0x1c($t3)
/* 206FF0 801DC490 8CE30000 */  lw    $v1, ($a3)
/* 206FF4 801DC494 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 206FF8 801DC498 8C6C0000 */  lw    $t4, ($v1)
/* 206FFC 801DC49C 000C6880 */  sll   $t5, $t4, 2
/* 207000 801DC4A0 00AD7021 */  addu  $t6, $a1, $t5
/* 207004 801DC4A4 E5C60000 */  swc1  $f6, ($t6)
/* 207008 801DC4A8 8C620000 */  lw    $v0, ($v1)
/* 20700C 801DC4AC 00021080 */  sll   $v0, $v0, 2
/* 207010 801DC4B0 01227821 */  addu  $t7, $t1, $v0
/* 207014 801DC4B4 8DF80000 */  lw    $t8, ($t7)
/* 207018 801DC4B8 00A25821 */  addu  $t3, $a1, $v0
/* 20701C 801DC4BC C56A0000 */  lwc1  $f10, ($t3)
/* 207020 801DC4C0 0018C880 */  sll   $t9, $t8, 2
/* 207024 801DC4C4 00B95021 */  addu  $t2, $a1, $t9
/* 207028 801DC4C8 C5480000 */  lwc1  $f8, ($t2)
/* 20702C 801DC4CC 00C26021 */  addu  $t4, $a2, $v0
/* 207030 801DC4D0 8D8D0000 */  lw    $t5, ($t4)
/* 207034 801DC4D4 460A4401 */  sub.s $f16, $f8, $f10
/* 207038 801DC4D8 8DAE0008 */  lw    $t6, 8($t5)
/* 20703C 801DC4DC E5D00020 */  swc1  $f16, 0x20($t6)
/* 207040 801DC4E0 8CE30000 */  lw    $v1, ($a3)
/* 207044 801DC4E4 C7B2002C */  lwc1  $f18, 0x2c($sp)
/* 207048 801DC4E8 8C6F0000 */  lw    $t7, ($v1)
/* 20704C 801DC4EC 000FC080 */  sll   $t8, $t7, 2
/* 207050 801DC4F0 0118C821 */  addu  $t9, $t0, $t8
/* 207054 801DC4F4 E7320000 */  swc1  $f18, ($t9)
/* 207058 801DC4F8 8C620000 */  lw    $v0, ($v1)
/* 20705C 801DC4FC 00021080 */  sll   $v0, $v0, 2
/* 207060 801DC500 01225021 */  addu  $t2, $t1, $v0
/* 207064 801DC504 8D4B0000 */  lw    $t3, ($t2)
/* 207068 801DC508 01027021 */  addu  $t6, $t0, $v0
/* 20706C 801DC50C C5C60000 */  lwc1  $f6, ($t6)
/* 207070 801DC510 000B6080 */  sll   $t4, $t3, 2
/* 207074 801DC514 010C6821 */  addu  $t5, $t0, $t4
/* 207078 801DC518 C5A40000 */  lwc1  $f4, ($t5)
/* 20707C 801DC51C 00C27821 */  addu  $t7, $a2, $v0
/* 207080 801DC520 8DF80000 */  lw    $t8, ($t7)
/* 207084 801DC524 46062201 */  sub.s $f8, $f4, $f6
/* 207088 801DC528 8F190008 */  lw    $t9, 8($t8)
/* 20708C 801DC52C 10000015 */  b     .L801DC584_ovl15
/* 207090 801DC530 E7280024 */   swc1  $f8, 0x24($t9)
.L801DC534_ovl15:
/* 207094 801DC534 00C25021 */  addu  $t2, $a2, $v0
/* 207098 801DC538 8D4B0000 */  lw    $t3, ($t2)
/* 20709C 801DC53C 44805000 */  mtc1  $zero, $f10
/* 2070A0 801DC540 8D6C0008 */  lw    $t4, 8($t3)
/* 2070A4 801DC544 E58A0024 */  swc1  $f10, 0x24($t4)
/* 2070A8 801DC548 8CED0000 */  lw    $t5, ($a3)
/* 2070AC 801DC54C 8DAE0000 */  lw    $t6, ($t5)
/* 2070B0 801DC550 000E7880 */  sll   $t7, $t6, 2
/* 2070B4 801DC554 00CFC021 */  addu  $t8, $a2, $t7
/* 2070B8 801DC558 8F190000 */  lw    $t9, ($t8)
/* 2070BC 801DC55C 8F230008 */  lw    $v1, 8($t9)
/* 2070C0 801DC560 C4600024 */  lwc1  $f0, 0x24($v1)
/* 2070C4 801DC564 E4600020 */  swc1  $f0, 0x20($v1)
/* 2070C8 801DC568 8CEA0000 */  lw    $t2, ($a3)
/* 2070CC 801DC56C 8D4B0000 */  lw    $t3, ($t2)
/* 2070D0 801DC570 000B6080 */  sll   $t4, $t3, 2
/* 2070D4 801DC574 00CC6821 */  addu  $t5, $a2, $t4
/* 2070D8 801DC578 8DAE0000 */  lw    $t6, ($t5)
/* 2070DC 801DC57C 8DCF0008 */  lw    $t7, 8($t6)
/* 2070E0 801DC580 E5E0001C */  swc1  $f0, 0x1c($t7)
.L801DC584_ovl15:
/* 2070E4 801DC584 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2070E8 801DC588 27BD0030 */  addiu $sp, $sp, 0x30
/* 2070EC 801DC58C 03E00008 */  jr    $ra
/* 2070F0 801DC590 00000000 */   nop   

/* 2070F4 801DC594 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 2070F8 801DC598 AFB00018 */  sw    $s0, 0x18($sp)
/* 2070FC 801DC59C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 207100 801DC5A0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 207104 801DC5A4 8E020000 */  lw    $v0, ($s0)
/* 207108 801DC5A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20710C 801DC5AC AFA40020 */  sw    $a0, 0x20($sp)
/* 207110 801DC5B0 8C4F0000 */  lw    $t7, ($v0)
/* 207114 801DC5B4 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 207118 801DC5B8 3C01800E */  lui   $at, 0x800e
/* 20711C 801DC5BC 000FC080 */  sll   $t8, $t7, 2
/* 207120 801DC5C0 00380821 */  addu  $at, $at, $t8
/* 207124 801DC5C4 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 207128 801DC5C8 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 20712C 801DC5CC 8C480000 */  lw    $t0, ($v0)
/* 207130 801DC5D0 3C01800E */  lui   $at, 0x800e
/* 207134 801DC5D4 3C19801E */  lui   $t9, %hi(D_801DC890) # $t9, 0x801e
/* 207138 801DC5D8 00084880 */  sll   $t1, $t0, 2
/* 20713C 801DC5DC 00290821 */  addu  $at, $at, $t1
/* 207140 801DC5E0 2739C890 */  addiu $t9, %lo(D_801DC890) # addiu $t9, $t9, -0x3770
/* 207144 801DC5E4 AC39F150 */  sw    $t9, -0xeb0($at)
/* 207148 801DC5E8 8C4B0000 */  lw    $t3, ($v0)
/* 20714C 801DC5EC 3C0D800E */  lui   $t5, 0x800e
/* 207150 801DC5F0 3C0A801E */  lui   $t2, %hi(D_801D8E08) # $t2, 0x801e
/* 207154 801DC5F4 000B6080 */  sll   $t4, $t3, 2
/* 207158 801DC5F8 01AC6821 */  addu  $t5, $t5, $t4
/* 20715C 801DC5FC 8DAD1B50 */  lw    $t5, 0x1b50($t5)
/* 207160 801DC600 254A8E08 */  addiu $t2, %lo(D_801D8E08) # addiu $t2, $t2, -0x71f8
/* 207164 801DC604 3C0F800E */  lui   $t7, 0x800e
/* 207168 801DC608 ADAA008C */  sw    $t2, 0x8c($t5)
/* 20716C 801DC60C 8E020000 */  lw    $v0, ($s0)
/* 207170 801DC610 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 207174 801DC614 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 207178 801DC618 8C430000 */  lw    $v1, ($v0)
/* 20717C 801DC61C 44803000 */  mtc1  $zero, $f6
/* 207180 801DC620 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 207184 801DC624 00031880 */  sll   $v1, $v1, 2
/* 207188 801DC628 01E37821 */  addu  $t7, $t7, $v1
/* 20718C 801DC62C 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 207190 801DC630 00A34021 */  addu  $t0, $a1, $v1
/* 207194 801DC634 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 207198 801DC638 000F7080 */  sll   $t6, $t7, 2
/* 20719C 801DC63C 00AEC021 */  addu  $t8, $a1, $t6
/* 2071A0 801DC640 C7040000 */  lwc1  $f4, ($t8)
/* 2071A4 801DC644 3C01800E */  lui   $at, 0x800e
/* 2071A8 801DC648 24040002 */  li    $a0, 2
/* 2071AC 801DC64C E5040000 */  swc1  $f4, ($t0)
/* 2071B0 801DC650 8C590000 */  lw    $t9, ($v0)
/* 2071B4 801DC654 00194880 */  sll   $t1, $t9, 2
/* 2071B8 801DC658 00C95821 */  addu  $t3, $a2, $t1
/* 2071BC 801DC65C E5660000 */  swc1  $f6, ($t3)
/* 2071C0 801DC660 8C430000 */  lw    $v1, ($v0)
/* 2071C4 801DC664 00031880 */  sll   $v1, $v1, 2
/* 2071C8 801DC668 00C36021 */  addu  $t4, $a2, $v1
/* 2071CC 801DC66C C5880000 */  lwc1  $f8, ($t4)
/* 2071D0 801DC670 00230821 */  addu  $at, $at, $v1
/* 2071D4 801DC674 E4282790 */  swc1  $f8, 0x2790($at)
/* 2071D8 801DC678 8C4A0000 */  lw    $t2, ($v0)
/* 2071DC 801DC67C 3C01800F */  lui   $at, 0x800f
/* 2071E0 801DC680 000A6880 */  sll   $t5, $t2, 2
/* 2071E4 801DC684 002D0821 */  addu  $at, $at, $t5
/* 2071E8 801DC688 AC2098E0 */  sw    $zero, -0x6720($at)
/* 2071EC 801DC68C 8C4F0000 */  lw    $t7, ($v0)
/* 2071F0 801DC690 3C01800F */  lui   $at, 0x800f
/* 2071F4 801DC694 000F7080 */  sll   $t6, $t7, 2
/* 2071F8 801DC698 002E0821 */  addu  $at, $at, $t6
/* 2071FC 801DC69C AC20A360 */  sw    $zero, -0x5ca0($at)
/* 207200 801DC6A0 8C580000 */  lw    $t8, ($v0)
/* 207204 801DC6A4 3C01800F */  lui   $at, 0x800f
/* 207208 801DC6A8 00184080 */  sll   $t0, $t8, 2
/* 20720C 801DC6AC 00280821 */  addu  $at, $at, $t0
/* 207210 801DC6B0 0C006291 */  jal   random_soft_s32_range
/* 207214 801DC6B4 AC20A1A0 */   sw    $zero, -0x5e60($at)
/* 207218 801DC6B8 5040000B */  beql  $v0, $zero, .L801DC6E8_ovl15
/* 20721C 801DC6BC 8E020000 */   lw    $v0, ($s0)
/* 207220 801DC6C0 8E020000 */  lw    $v0, ($s0)
/* 207224 801DC6C4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 207228 801DC6C8 44815000 */  mtc1  $at, $f10
/* 20722C 801DC6CC 8C590000 */  lw    $t9, ($v0)
/* 207230 801DC6D0 3C01800E */  lui   $at, 0x800e
/* 207234 801DC6D4 00194880 */  sll   $t1, $t9, 2
/* 207238 801DC6D8 00290821 */  addu  $at, $at, $t1
/* 20723C 801DC6DC 10000009 */  b     .L801DC704_ovl15
/* 207240 801DC6E0 E42A6A10 */   swc1  $f10, 0x6a10($at)
/* 207244 801DC6E4 8E020000 */  lw    $v0, ($s0)
.L801DC6E8_ovl15:
/* 207248 801DC6E8 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20724C 801DC6EC 44818000 */  mtc1  $at, $f16
/* 207250 801DC6F0 8C4B0000 */  lw    $t3, ($v0)
/* 207254 801DC6F4 3C01800E */  lui   $at, 0x800e
/* 207258 801DC6F8 000B6080 */  sll   $t4, $t3, 2
/* 20725C 801DC6FC 002C0821 */  addu  $at, $at, $t4
/* 207260 801DC700 E4306A10 */  swc1  $f16, 0x6a10($at)
.L801DC704_ovl15:
/* 207264 801DC704 8C430000 */  lw    $v1, ($v0)
/* 207268 801DC708 3C01800E */  lui   $at, 0x800e
/* 20726C 801DC70C 24040010 */  li    $a0, 16
/* 207270 801DC710 00031880 */  sll   $v1, $v1, 2
/* 207274 801DC714 00230821 */  addu  $at, $at, $v1
/* 207278 801DC718 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 20727C 801DC71C 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 207280 801DC720 44812000 */  mtc1  $at, $f4
/* 207284 801DC724 3C01800E */  lui   $at, 0x800e
/* 207288 801DC728 00230821 */  addu  $at, $at, $v1
/* 20728C 801DC72C 46049182 */  mul.s $f6, $f18, $f4
/* 207290 801DC730 0C002DAF */  jal   finish_current_thread
/* 207294 801DC734 E4263050 */   swc1  $f6, 0x3050($at)
/* 207298 801DC738 8E0D0000 */  lw    $t5, ($s0)
/* 20729C 801DC73C 3C01800F */  lui   $at, 0x800f
/* 2072A0 801DC740 240A0001 */  li    $t2, 1
/* 2072A4 801DC744 8DAF0000 */  lw    $t7, ($t5)
/* 2072A8 801DC748 24040006 */  li    $a0, 6
/* 2072AC 801DC74C 24050002 */  li    $a1, 2
/* 2072B0 801DC750 000F7080 */  sll   $t6, $t7, 2
/* 2072B4 801DC754 002E0821 */  addu  $at, $at, $t6
/* 2072B8 801DC758 AC2A98E0 */  sw    $t2, -0x6720($at)
/* 2072BC 801DC75C 0C02A08D */  jal   func_800A8234
/* 2072C0 801DC760 2406000A */   li    $a2, 10
/* 2072C4 801DC764 8E180000 */  lw    $t8, ($s0)
/* 2072C8 801DC768 3C01800F */  lui   $at, 0x800f
/* 2072CC 801DC76C 24040195 */  li    $a0, 405
/* 2072D0 801DC770 8F080000 */  lw    $t0, ($t8)
/* 2072D4 801DC774 0008C880 */  sll   $t9, $t0, 2
/* 2072D8 801DC778 00390821 */  addu  $at, $at, $t9
/* 2072DC 801DC77C 0C029D9E */  jal   play_sound
/* 2072E0 801DC780 AC22A360 */   sw    $v0, -0x5ca0($at)
/* 2072E4 801DC784 8E090000 */  lw    $t1, ($s0)
/* 2072E8 801DC788 3C01800E */  lui   $at, 0x800e
/* 2072EC 801DC78C 24040020 */  li    $a0, 32
/* 2072F0 801DC790 8D230000 */  lw    $v1, ($t1)
/* 2072F4 801DC794 00031880 */  sll   $v1, $v1, 2
/* 2072F8 801DC798 00230821 */  addu  $at, $at, $v1
/* 2072FC 801DC79C C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 207300 801DC7A0 3C01C220 */  li    $at, 0xC2200000 # -40.000000
/* 207304 801DC7A4 44815000 */  mtc1  $at, $f10
/* 207308 801DC7A8 3C01800E */  lui   $at, 0x800e
/* 20730C 801DC7AC 00230821 */  addu  $at, $at, $v1
/* 207310 801DC7B0 460A4402 */  mul.s $f16, $f8, $f10
/* 207314 801DC7B4 0C002DAF */  jal   finish_current_thread
/* 207318 801DC7B8 E4303050 */   swc1  $f16, 0x3050($at)
/* 20731C 801DC7BC 8E020000 */  lw    $v0, ($s0)
/* 207320 801DC7C0 3C01800F */  lui   $at, 0x800f
/* 207324 801DC7C4 240B0002 */  li    $t3, 2
/* 207328 801DC7C8 8C4C0000 */  lw    $t4, ($v0)
/* 20732C 801DC7CC 3C05800F */  lui   $a1, 0x800f
/* 207330 801DC7D0 000C6880 */  sll   $t5, $t4, 2
/* 207334 801DC7D4 002D0821 */  addu  $at, $at, $t5
/* 207338 801DC7D8 AC2B98E0 */  sw    $t3, -0x6720($at)
/* 20733C 801DC7DC 8C430000 */  lw    $v1, ($v0)
/* 207340 801DC7E0 00031880 */  sll   $v1, $v1, 2
/* 207344 801DC7E4 00A32821 */  addu  $a1, $a1, $v1
/* 207348 801DC7E8 8CA5A360 */  lw    $a1, -0x5ca0($a1)
/* 20734C 801DC7EC 10A0000B */  beqz  $a1, .L801DC81C_ovl15
/* 207350 801DC7F0 00000000 */   nop   
/* 207354 801DC7F4 0C0287CC */  jal   func_800A1F30
/* 207358 801DC7F8 00A02025 */   move  $a0, $a1
/* 20735C 801DC7FC 8E020000 */  lw    $v0, ($s0)
/* 207360 801DC800 3C01800F */  lui   $at, 0x800f
/* 207364 801DC804 8C4F0000 */  lw    $t7, ($v0)
/* 207368 801DC808 000F5080 */  sll   $t2, $t7, 2
/* 20736C 801DC80C 002A0821 */  addu  $at, $at, $t2
/* 207370 801DC810 AC20A360 */  sw    $zero, -0x5ca0($at)
/* 207374 801DC814 8C430000 */  lw    $v1, ($v0)
/* 207378 801DC818 00031880 */  sll   $v1, $v1, 2
.L801DC81C_ovl15:
/* 20737C 801DC81C 3C01800E */  lui   $at, 0x800e
/* 207380 801DC820 00230821 */  addu  $at, $at, $v1
/* 207384 801DC824 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 207388 801DC828 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 20738C 801DC82C 44812000 */  mtc1  $at, $f4
/* 207390 801DC830 3C01800E */  lui   $at, 0x800e
/* 207394 801DC834 00230821 */  addu  $at, $at, $v1
/* 207398 801DC838 46049182 */  mul.s $f6, $f18, $f4
/* 20739C 801DC83C 24040010 */  li    $a0, 16
/* 2073A0 801DC840 0C002DAF */  jal   finish_current_thread
/* 2073A4 801DC844 E4263050 */   swc1  $f6, 0x3050($at)
/* 2073A8 801DC848 8E180000 */  lw    $t8, ($s0)
/* 2073AC 801DC84C 3C01800F */  lui   $at, 0x800f
/* 2073B0 801DC850 240E0003 */  li    $t6, 3
/* 2073B4 801DC854 8F080000 */  lw    $t0, ($t8)
/* 2073B8 801DC858 0008C880 */  sll   $t9, $t0, 2
/* 2073BC 801DC85C 00390821 */  addu  $at, $at, $t9
/* 2073C0 801DC860 0C02CCFD */  jal   func_800B33F4
/* 2073C4 801DC864 AC2E98E0 */   sw    $t6, -0x6720($at)
/* 2073C8 801DC868 0C002DAF */  jal   finish_current_thread
/* 2073CC 801DC86C 2404000A */   li    $a0, 10
/* 2073D0 801DC870 8E090000 */  lw    $t1, ($s0)
/* 2073D4 801DC874 0C067656 */  jal   func_8019D958_ovl15
/* 2073D8 801DC878 95240002 */   lhu   $a0, 2($t1)
/* 2073DC 801DC87C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 2073E0 801DC880 8FB00018 */  lw    $s0, 0x18($sp)
/* 2073E4 801DC884 27BD0020 */  addiu $sp, $sp, 0x20
/* 2073E8 801DC888 03E00008 */  jr    $ra
/* 2073EC 801DC88C 00000000 */   nop   

/* 2073F0 801DC890 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 2073F4 801DC894 AFA40020 */  sw    $a0, 0x20($sp)
/* 2073F8 801DC898 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 2073FC 801DC89C 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 207400 801DC8A0 8C850000 */  lw    $a1, ($a0)
/* 207404 801DC8A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 207408 801DC8A8 3C0E800F */  lui   $t6, 0x800f
/* 20740C 801DC8AC 8CA30000 */  lw    $v1, ($a1)
/* 207410 801DC8B0 24010001 */  li    $at, 1
/* 207414 801DC8B4 3C06800F */  lui   $a2, 0x800f
/* 207418 801DC8B8 00031880 */  sll   $v1, $v1, 2
/* 20741C 801DC8BC 01C37021 */  addu  $t6, $t6, $v1
/* 207420 801DC8C0 8DCE98E0 */  lw    $t6, -0x6720($t6)
/* 207424 801DC8C4 00C33021 */  addu  $a2, $a2, $v1
/* 207428 801DC8C8 55C10059 */  bnel  $t6, $at, .L801DCA30_ovl15
/* 20742C 801DC8CC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 207430 801DC8D0 8CC6A360 */  lw    $a2, -0x5ca0($a2)
/* 207434 801DC8D4 3C01800E */  lui   $at, 0x800e
/* 207438 801DC8D8 00230821 */  addu  $at, $at, $v1
/* 20743C 801DC8DC 10C0002F */  beqz  $a2, .L801DC99C_ovl15
/* 207440 801DC8E0 3C07800E */   lui   $a3, 0x800e
/* 207444 801DC8E4 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 207448 801DC8E8 8CCF004C */  lw    $t7, 0x4c($a2)
/* 20744C 801DC8EC 3C01800E */  lui   $at, 0x800e
/* 207450 801DC8F0 E5E40004 */  swc1  $f4, 4($t7)
/* 207454 801DC8F4 8C980000 */  lw    $t8, ($a0)
/* 207458 801DC8F8 8CC9004C */  lw    $t1, 0x4c($a2)
/* 20745C 801DC8FC 8F190000 */  lw    $t9, ($t8)
/* 207460 801DC900 00194080 */  sll   $t0, $t9, 2
/* 207464 801DC904 00280821 */  addu  $at, $at, $t0
/* 207468 801DC908 C4262790 */  lwc1  $f6, 0x2790($at)
/* 20746C 801DC90C 3C01800E */  lui   $at, 0x800e
/* 207470 801DC910 E5260008 */  swc1  $f6, 8($t1)
/* 207474 801DC914 8C8A0000 */  lw    $t2, ($a0)
/* 207478 801DC918 8CCD004C */  lw    $t5, 0x4c($a2)
/* 20747C 801DC91C 8D4B0000 */  lw    $t3, ($t2)
/* 207480 801DC920 000B6080 */  sll   $t4, $t3, 2
/* 207484 801DC924 002C0821 */  addu  $at, $at, $t4
/* 207488 801DC928 C4282950 */  lwc1  $f8, 0x2950($at)
/* 20748C 801DC92C 3C01800E */  lui   $at, 0x800e
/* 207490 801DC930 E5A8000C */  swc1  $f8, 0xc($t5)
/* 207494 801DC934 8C8E0000 */  lw    $t6, ($a0)
/* 207498 801DC938 8CD9004C */  lw    $t9, 0x4c($a2)
/* 20749C 801DC93C 8DCF0000 */  lw    $t7, ($t6)
/* 2074A0 801DC940 000FC080 */  sll   $t8, $t7, 2
/* 2074A4 801DC944 00380821 */  addu  $at, $at, $t8
/* 2074A8 801DC948 C42A4010 */  lwc1  $f10, 0x4010($at)
/* 2074AC 801DC94C 3C01800E */  lui   $at, 0x800e
/* 2074B0 801DC950 E72A0010 */  swc1  $f10, 0x10($t9)
/* 2074B4 801DC954 8C880000 */  lw    $t0, ($a0)
/* 2074B8 801DC958 8CCB004C */  lw    $t3, 0x4c($a2)
/* 2074BC 801DC95C 8D090000 */  lw    $t1, ($t0)
/* 2074C0 801DC960 00095080 */  sll   $t2, $t1, 2
/* 2074C4 801DC964 002A0821 */  addu  $at, $at, $t2
/* 2074C8 801DC968 C43041D0 */  lwc1  $f16, 0x41d0($at)
/* 2074CC 801DC96C 3C01800E */  lui   $at, 0x800e
/* 2074D0 801DC970 E5700014 */  swc1  $f16, 0x14($t3)
/* 2074D4 801DC974 8C8C0000 */  lw    $t4, ($a0)
/* 2074D8 801DC978 8CCF004C */  lw    $t7, 0x4c($a2)
/* 2074DC 801DC97C 8D8D0000 */  lw    $t5, ($t4)
/* 2074E0 801DC980 000D7080 */  sll   $t6, $t5, 2
/* 2074E4 801DC984 002E0821 */  addu  $at, $at, $t6
/* 2074E8 801DC988 C4324390 */  lwc1  $f18, 0x4390($at)
/* 2074EC 801DC98C E5F20018 */  swc1  $f18, 0x18($t7)
/* 2074F0 801DC990 8C850000 */  lw    $a1, ($a0)
/* 2074F4 801DC994 8CA30000 */  lw    $v1, ($a1)
/* 2074F8 801DC998 00031880 */  sll   $v1, $v1, 2
.L801DC99C_ovl15:
/* 2074FC 801DC99C 3C18800F */  lui   $t8, %hi(D_800EA1A0) # $t8, 0x800f
/* 207500 801DC9A0 2718A1A0 */  addiu $t8, %lo(D_800EA1A0) # addiu $t8, $t8, -0x5e60
/* 207504 801DC9A4 00781021 */  addu  $v0, $v1, $t8
/* 207508 801DC9A8 8C440000 */  lw    $a0, ($v0)
/* 20750C 801DC9AC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 207510 801DC9B0 30860001 */  andi  $a2, $a0, 1
/* 207514 801DC9B4 2CC60001 */  sltiu $a2, $a2, 1
/* 207518 801DC9B8 24990001 */  addiu $t9, $a0, 1
/* 20751C 801DC9BC 10C00019 */  beqz  $a2, .L801DCA24_ovl15
/* 207520 801DC9C0 AC590000 */   sw    $t9, ($v0)
/* 207524 801DC9C4 8CA30000 */  lw    $v1, ($a1)
/* 207528 801DC9C8 44812000 */  mtc1  $at, $f4
/* 20752C 801DC9CC 3C01800E */  lui   $at, 0x800e
/* 207530 801DC9D0 00031880 */  sll   $v1, $v1, 2
/* 207534 801DC9D4 00230821 */  addu  $at, $at, $v1
/* 207538 801DC9D8 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 20753C 801DC9DC 3C01800E */  lui   $at, 0x800e
/* 207540 801DC9E0 00230821 */  addu  $at, $at, $v1
/* 207544 801DC9E4 46062032 */  c.eq.s $f4, $f6
/* 207548 801DC9E8 00E33821 */  addu  $a3, $a3, $v1
/* 20754C 801DC9EC 24050002 */  li    $a1, 2
/* 207550 801DC9F0 24040006 */  li    $a0, 6
/* 207554 801DC9F4 45000003 */  bc1f  .L801DCA04_ovl15
/* 207558 801DC9F8 24060008 */   li    $a2, 8
/* 20755C 801DC9FC 10000001 */  b     .L801DCA04_ovl15
/* 207560 801DCA00 24060003 */   li    $a2, 3
.L801DCA04_ovl15:
/* 207564 801DCA04 C4282790 */  lwc1  $f8, 0x2790($at)
/* 207568 801DCA08 3C01800E */  lui   $at, 0x800e
/* 20756C 801DCA0C 00230821 */  addu  $at, $at, $v1
/* 207570 801DCA10 C42A2950 */  lwc1  $f10, 0x2950($at)
/* 207574 801DCA14 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 207578 801DCA18 E7A80010 */  swc1  $f8, 0x10($sp)
/* 20757C 801DCA1C 0C029FDD */  jal   func_800A7F74
/* 207580 801DCA20 E7AA0014 */   swc1  $f10, 0x14($sp)
.L801DCA24_ovl15:
/* 207584 801DCA24 0C067CEC */  jal   func_8019F3B0_ovl15
/* 207588 801DCA28 00000000 */   nop   
/* 20758C 801DCA2C 8FBF001C */  lw    $ra, 0x1c($sp)
.L801DCA30_ovl15:
/* 207590 801DCA30 27BD0020 */  addiu $sp, $sp, 0x20
/* 207594 801DCA34 03E00008 */  jr    $ra
/* 207598 801DCA38 00000000 */   nop   

/* 20759C 801DCA3C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 2075A0 801DCA40 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 2075A4 801DCA44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2075A8 801DCA48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2075AC 801DCA4C AFA40018 */  sw    $a0, 0x18($sp)
/* 2075B0 801DCA50 8C4F0000 */  lw    $t7, ($v0)
/* 2075B4 801DCA54 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 2075B8 801DCA58 3C01800E */  lui   $at, 0x800e
/* 2075BC 801DCA5C 000FC080 */  sll   $t8, $t7, 2
/* 2075C0 801DCA60 00380821 */  addu  $at, $at, $t8
/* 2075C4 801DCA64 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 2075C8 801DCA68 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 2075CC 801DCA6C 8C4A0000 */  lw    $t2, ($v0)
/* 2075D0 801DCA70 3C01800E */  lui   $at, 0x800e
/* 2075D4 801DCA74 3C19801E */  lui   $t9, %hi(D_801DD7C0) # $t9, 0x801e
/* 2075D8 801DCA78 000A5880 */  sll   $t3, $t2, 2
/* 2075DC 801DCA7C 002B0821 */  addu  $at, $at, $t3
/* 2075E0 801DCA80 2739D7C0 */  addiu $t9, %lo(D_801DD7C0) # addiu $t9, $t9, -0x2840
/* 2075E4 801DCA84 AC39F150 */  sw    $t9, -0xeb0($at)
/* 2075E8 801DCA88 8C430000 */  lw    $v1, ($v0)
/* 2075EC 801DCA8C 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 2075F0 801DCA90 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 2075F4 801DCA94 00031880 */  sll   $v1, $v1, 2
/* 2075F8 801DCA98 00E36021 */  addu  $t4, $a3, $v1
/* 2075FC 801DCA9C 8D8D0000 */  lw    $t5, ($t4)
/* 207600 801DCAA0 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 207604 801DCAA4 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 207608 801DCAA8 000D7880 */  sll   $t7, $t5, 2
/* 20760C 801DCAAC 00EF7021 */  addu  $t6, $a3, $t7
/* 207610 801DCAB0 8DD80000 */  lw    $t8, ($t6)
/* 207614 801DCAB4 01035821 */  addu  $t3, $t0, $v1
/* 207618 801DCAB8 3C09800E */  lui   $t1, %hi(gEntitiesNextPosZArray) # $t1, 0x800e
/* 20761C 801DCABC 00185080 */  sll   $t2, $t8, 2
/* 207620 801DCAC0 010AC821 */  addu  $t9, $t0, $t2
/* 207624 801DCAC4 C7240000 */  lwc1  $f4, ($t9)
/* 207628 801DCAC8 25292950 */  addiu $t1, %lo(gEntitiesNextPosZArray) # addiu $t1, $t1, 0x2950
/* 20762C 801DCACC 44804000 */  mtc1  $zero, $f8
/* 207630 801DCAD0 E5640000 */  swc1  $f4, ($t3)
/* 207634 801DCAD4 8C430000 */  lw    $v1, ($v0)
/* 207638 801DCAD8 3C01800E */  lui   $at, 0x800e
/* 20763C 801DCADC 3C040001 */  lui   $a0, (0x000100D9 >> 16) # lui $a0, 1
/* 207640 801DCAE0 00031880 */  sll   $v1, $v1, 2
/* 207644 801DCAE4 00E36021 */  addu  $t4, $a3, $v1
/* 207648 801DCAE8 8D8D0000 */  lw    $t5, ($t4)
/* 20764C 801DCAEC 01235821 */  addu  $t3, $t1, $v1
/* 207650 801DCAF0 348400D9 */  ori   $a0, (0x000100D9 & 0xFFFF) # ori $a0, $a0, 0xd9
/* 207654 801DCAF4 000D7880 */  sll   $t7, $t5, 2
/* 207658 801DCAF8 00EF7021 */  addu  $t6, $a3, $t7
/* 20765C 801DCAFC 8DD80000 */  lw    $t8, ($t6)
/* 207660 801DCB00 24050023 */  li    $a1, 35
/* 207664 801DCB04 24060010 */  li    $a2, 16
/* 207668 801DCB08 00185080 */  sll   $t2, $t8, 2
/* 20766C 801DCB0C 012AC821 */  addu  $t9, $t1, $t2
/* 207670 801DCB10 C7260000 */  lwc1  $f6, ($t9)
/* 207674 801DCB14 E5660000 */  swc1  $f6, ($t3)
/* 207678 801DCB18 8C4C0000 */  lw    $t4, ($v0)
/* 20767C 801DCB1C 000C6880 */  sll   $t5, $t4, 2
/* 207680 801DCB20 002D0821 */  addu  $at, $at, $t5
/* 207684 801DCB24 0C02A619 */  jal   func_800A9864
/* 207688 801DCB28 E4282790 */   swc1  $f8, 0x2790($at)
/* 20768C 801DCB2C 3C040001 */  lui   $a0, (0x00010618 >> 16) # lui $a0, 1
/* 207690 801DCB30 0C02A806 */  jal   func_800AA018
/* 207694 801DCB34 34840618 */   ori   $a0, (0x00010618 & 0xFFFF) # ori $a0, $a0, 0x618
/* 207698 801DCB38 3C040001 */  lui   $a0, (0x00010617 >> 16) # lui $a0, 1
/* 20769C 801DCB3C 0C02A855 */  jal   func_800AA154
/* 2076A0 801DCB40 34840617 */   ori   $a0, (0x00010617 & 0xFFFF) # ori $a0, $a0, 0x617
/* 2076A4 801DCB44 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 2076A8 801DCB48 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 2076AC 801DCB4C 0C067656 */  jal   func_8019D958_ovl15
/* 2076B0 801DCB50 95E40002 */   lhu   $a0, 2($t7)
/* 2076B4 801DCB54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2076B8 801DCB58 27BD0018 */  addiu $sp, $sp, 0x18
/* 2076BC 801DCB5C 03E00008 */  jr    $ra
/* 2076C0 801DCB60 00000000 */   nop   

/* 2076C4 801DCB64 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 2076C8 801DCB68 AFB40024 */  sw    $s4, 0x24($sp)
/* 2076CC 801DCB6C 3C148005 */  lui   $s4, %hi(D_8004A7C4) # $s4, 0x8005
/* 2076D0 801DCB70 2694A7C4 */  addiu $s4, %lo(D_8004A7C4) # addiu $s4, $s4, -0x583c
/* 2076D4 801DCB74 8E870000 */  lw    $a3, ($s4)
/* 2076D8 801DCB78 AFBF002C */  sw    $ra, 0x2c($sp)
/* 2076DC 801DCB7C AFB50028 */  sw    $s5, 0x28($sp)
/* 2076E0 801DCB80 AFB30020 */  sw    $s3, 0x20($sp)
/* 2076E4 801DCB84 AFB2001C */  sw    $s2, 0x1c($sp)
/* 2076E8 801DCB88 AFB10018 */  sw    $s1, 0x18($sp)
/* 2076EC 801DCB8C AFB00014 */  sw    $s0, 0x14($sp)
/* 2076F0 801DCB90 AFA40030 */  sw    $a0, 0x30($sp)
/* 2076F4 801DCB94 8CEE0000 */  lw    $t6, ($a3)
/* 2076F8 801DCB98 44801000 */  mtc1  $zero, $f2
/* 2076FC 801DCB9C 3C03800E */  lui   $v1, %hi(gEntitiesAngleZArray) # $v1, 0x800e
/* 207700 801DCBA0 24634390 */  addiu $v1, %lo(gEntitiesAngleZArray) # addiu $v1, $v1, 0x4390
/* 207704 801DCBA4 000E7880 */  sll   $t7, $t6, 2
/* 207708 801DCBA8 006FC021 */  addu  $t8, $v1, $t7
/* 20770C 801DCBAC E7020000 */  swc1  $f2, ($t8)
/* 207710 801DCBB0 8CE20000 */  lw    $v0, ($a3)
/* 207714 801DCBB4 3C01800E */  lui   $at, 0x800e
/* 207718 801DCBB8 3C08800F */  lui   $t0, %hi(D_800E9020) # $t0, 0x800f
/* 20771C 801DCBBC 00021080 */  sll   $v0, $v0, 2
/* 207720 801DCBC0 0062C821 */  addu  $t9, $v1, $v0
/* 207724 801DCBC4 C7200000 */  lwc1  $f0, ($t9)
/* 207728 801DCBC8 00220821 */  addu  $at, $at, $v0
/* 20772C 801DCBCC 25089020 */  addiu $t0, %lo(D_800E9020) # addiu $t0, $t0, -0x6fe0
/* 207730 801DCBD0 E42041D0 */  swc1  $f0, 0x41d0($at)
/* 207734 801DCBD4 8CE90000 */  lw    $t1, ($a3)
/* 207738 801DCBD8 3C01800E */  lui   $at, 0x800e
/* 20773C 801DCBDC 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 207740 801DCBE0 00095080 */  sll   $t2, $t1, 2
/* 207744 801DCBE4 002A0821 */  addu  $at, $at, $t2
/* 207748 801DCBE8 E4204010 */  swc1  $f0, 0x4010($at)
/* 20774C 801DCBEC 8CEB0000 */  lw    $t3, ($a3)
/* 207750 801DCBF0 3C01800E */  lui   $at, 0x800e
/* 207754 801DCBF4 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 207758 801DCBF8 000B6080 */  sll   $t4, $t3, 2
/* 20775C 801DCBFC 010C6821 */  addu  $t5, $t0, $t4
/* 207760 801DCC00 E5A20000 */  swc1  $f2, ($t5)
/* 207764 801DCC04 8CE20000 */  lw    $v0, ($a3)
/* 207768 801DCC08 3C09801E */  lui   $t1, %hi(D_801DCDA8) # $t1, 0x801e
/* 20776C 801DCC0C 2529CDA8 */  addiu $t1, %lo(D_801DCDA8) # addiu $t1, $t1, -0x3258
/* 207770 801DCC10 00021080 */  sll   $v0, $v0, 2
/* 207774 801DCC14 01027021 */  addu  $t6, $t0, $v0
/* 207778 801DCC18 C5C40000 */  lwc1  $f4, ($t6)
/* 20777C 801DCC1C 00220821 */  addu  $at, $at, $v0
/* 207780 801DCC20 3C040001 */  lui   $a0, (0x000100DA >> 16) # lui $a0, 1
/* 207784 801DCC24 E42417D0 */  swc1  $f4, 0x17d0($at)
/* 207788 801DCC28 8CF80000 */  lw    $t8, ($a3)
/* 20778C 801DCC2C 3C01800E */  lui   $at, 0x800e
/* 207790 801DCC30 348400DA */  ori   $a0, (0x000100DA & 0xFFFF) # ori $a0, $a0, 0xda
/* 207794 801DCC34 0018C880 */  sll   $t9, $t8, 2
/* 207798 801DCC38 00390821 */  addu  $at, $at, $t9
/* 20779C 801DCC3C AC2FEF90 */  sw    $t7, -0x1070($at)
/* 2077A0 801DCC40 8CEA0000 */  lw    $t2, ($a3)
/* 2077A4 801DCC44 3C01800E */  lui   $at, 0x800e
/* 2077A8 801DCC48 24050023 */  li    $a1, 35
/* 2077AC 801DCC4C 000A5880 */  sll   $t3, $t2, 2
/* 2077B0 801DCC50 002B0821 */  addu  $at, $at, $t3
/* 2077B4 801DCC54 AC29F150 */  sw    $t1, -0xeb0($at)
/* 2077B8 801DCC58 0C02A619 */  jal   func_800A9864
/* 2077BC 801DCC5C 24060010 */   li    $a2, 16
/* 2077C0 801DCC60 8E870000 */  lw    $a3, ($s4)
/* 2077C4 801DCC64 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 2077C8 801DCC68 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 2077CC 801DCC6C 8CE20000 */  lw    $v0, ($a3)
/* 2077D0 801DCC70 3C11800E */  lui   $s1, %hi(D_800DFF50) # $s1, 0x800e
/* 2077D4 801DCC74 2631FF50 */  addiu $s1, %lo(D_800DFF50) # addiu $s1, $s1, -0xb0
/* 2077D8 801DCC78 00021080 */  sll   $v0, $v0, 2
/* 2077DC 801DCC7C 02426021 */  addu  $t4, $s2, $v0
/* 2077E0 801DCC80 8D8D0000 */  lw    $t5, ($t4)
/* 2077E4 801DCC84 3C130001 */  lui   $s3, (0x000103BD >> 16) # lui $s3, 1
/* 2077E8 801DCC88 367303BD */  ori   $s3, (0x000103BD & 0xFFFF) # ori $s3, $s3, 0x3bd
/* 2077EC 801DCC8C 000D7080 */  sll   $t6, $t5, 2
/* 2077F0 801DCC90 022EC021 */  addu  $t8, $s1, $t6
/* 2077F4 801DCC94 8F030000 */  lw    $v1, ($t8)
/* 2077F8 801DCC98 3C150001 */  lui   $s5, (0x000103BF >> 16) # lui $s5, 1
/* 2077FC 801DCC9C 36B503BF */  ori   $s5, (0x000103BF & 0xFFFF) # ori $s5, $s5, 0x3bf
/* 207800 801DCCA0 1073000A */  beq   $v1, $s3, .L801DCCCC_ovl15
/* 207804 801DCCA4 00002025 */   move  $a0, $zero
/* 207808 801DCCA8 3C150001 */  lui   $s5, (0x000103BF >> 16) # lui $s5, 1
/* 20780C 801DCCAC 36B503BF */  ori   $s5, (0x000103BF & 0xFFFF) # ori $s5, $s5, 0x3bf
/* 207810 801DCCB0 10750006 */  beq   $v1, $s5, .L801DCCCC_ovl15
/* 207814 801DCCB4 3C100001 */   lui   $s0, (0x000103C1 >> 16) # lui $s0, 1
/* 207818 801DCCB8 361003C1 */  ori   $s0, (0x000103C1 & 0xFFFF) # ori $s0, $s0, 0x3c1
/* 20781C 801DCCBC 1070000B */  beq   $v1, $s0, .L801DCCEC_ovl15
/* 207820 801DCCC0 3C013FC0 */   li    $at, 0x3FC00000 # 1.500000
/* 207824 801DCCC4 1000000A */  b     .L801DCCF0_ovl15
/* 207828 801DCCC8 44814000 */   mtc1  $at, $f8
.L801DCCCC_ovl15:
/* 20782C 801DCCCC 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 207830 801DCCD0 44813000 */  mtc1  $at, $f6
/* 207834 801DCCD4 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 207838 801DCCD8 00220821 */  addu  $at, $at, $v0
/* 20783C 801DCCDC 3C100001 */  lui   $s0, (0x000103C1 >> 16) # lui $s0, 1
/* 207840 801DCCE0 361003C1 */  ori   $s0, (0x000103C1 & 0xFFFF) # ori $s0, $s0, 0x3c1
/* 207844 801DCCE4 10000005 */  b     .L801DCCFC_ovl15
/* 207848 801DCCE8 E4264550 */   swc1  $f6, 0x4550($at)
.L801DCCEC_ovl15:
/* 20784C 801DCCEC 44814000 */  mtc1  $at, $f8
.L801DCCF0_ovl15:
/* 207850 801DCCF0 3C01800E */  lui   $at, 0x800e
/* 207854 801DCCF4 00220821 */  addu  $at, $at, $v0
/* 207858 801DCCF8 E4284550 */  swc1  $f8, 0x4550($at)
.L801DCCFC_ovl15:
/* 20785C 801DCCFC 0C02BEED */  jal   func_800AFBB4
/* 207860 801DCD00 00E02825 */   move  $a1, $a3
/* 207864 801DCD04 8E8F0000 */  lw    $t7, ($s4)
/* 207868 801DCD08 8DE30000 */  lw    $v1, ($t7)
/* 20786C 801DCD0C 0003C880 */  sll   $t9, $v1, 2
/* 207870 801DCD10 02595021 */  addu  $t2, $s2, $t9
/* 207874 801DCD14 8D490000 */  lw    $t1, ($t2)
/* 207878 801DCD18 00095880 */  sll   $t3, $t1, 2
/* 20787C 801DCD1C 022B6021 */  addu  $t4, $s1, $t3
/* 207880 801DCD20 8D820000 */  lw    $v0, ($t4)
/* 207884 801DCD24 12620005 */  beq   $s3, $v0, .L801DCD3C_ovl15
/* 207888 801DCD28 00000000 */   nop   
/* 20788C 801DCD2C 12A20003 */  beq   $s5, $v0, .L801DCD3C_ovl15
/* 207890 801DCD30 00000000 */   nop   
/* 207894 801DCD34 16020011 */  bne   $s0, $v0, .L801DCD7C_ovl15
/* 207898 801DCD38 00000000 */   nop   
.L801DCD3C_ovl15:
/* 20789C 801DCD3C 0C002DAF */  jal   finish_current_thread
/* 2078A0 801DCD40 24040001 */   li    $a0, 1
/* 2078A4 801DCD44 8E8D0000 */  lw    $t5, ($s4)
/* 2078A8 801DCD48 8DA30000 */  lw    $v1, ($t5)
/* 2078AC 801DCD4C 00037080 */  sll   $t6, $v1, 2
/* 2078B0 801DCD50 024EC021 */  addu  $t8, $s2, $t6
/* 2078B4 801DCD54 8F0F0000 */  lw    $t7, ($t8)
/* 2078B8 801DCD58 000FC880 */  sll   $t9, $t7, 2
/* 2078BC 801DCD5C 02395021 */  addu  $t2, $s1, $t9
/* 2078C0 801DCD60 8D420000 */  lw    $v0, ($t2)
/* 2078C4 801DCD64 1262FFF5 */  beq   $s3, $v0, .L801DCD3C_ovl15
/* 2078C8 801DCD68 00000000 */   nop   
/* 2078CC 801DCD6C 12A2FFF3 */  beq   $s5, $v0, .L801DCD3C_ovl15
/* 2078D0 801DCD70 00000000 */   nop   
/* 2078D4 801DCD74 1202FFF1 */  beq   $s0, $v0, .L801DCD3C_ovl15
/* 2078D8 801DCD78 00000000 */   nop   
.L801DCD7C_ovl15:
/* 2078DC 801DCD7C 0C067656 */  jal   func_8019D958_ovl15
/* 2078E0 801DCD80 3064FFFF */   andi  $a0, $v1, 0xffff
/* 2078E4 801DCD84 8FBF002C */  lw    $ra, 0x2c($sp)
/* 2078E8 801DCD88 8FB00014 */  lw    $s0, 0x14($sp)
/* 2078EC 801DCD8C 8FB10018 */  lw    $s1, 0x18($sp)
/* 2078F0 801DCD90 8FB2001C */  lw    $s2, 0x1c($sp)
/* 2078F4 801DCD94 8FB30020 */  lw    $s3, 0x20($sp)
/* 2078F8 801DCD98 8FB40024 */  lw    $s4, 0x24($sp)
/* 2078FC 801DCD9C 8FB50028 */  lw    $s5, 0x28($sp)
/* 207900 801DCDA0 03E00008 */  jr    $ra
/* 207904 801DCDA4 27BD0030 */   addiu $sp, $sp, 0x30

/* 207908 801DCDA8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 20790C 801DCDAC AFB10018 */  sw    $s1, 0x18($sp)
/* 207910 801DCDB0 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 207914 801DCDB4 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 207918 801DCDB8 8E2E0000 */  lw    $t6, ($s1)
/* 20791C 801DCDBC AFBF001C */  sw    $ra, 0x1c($sp)
/* 207920 801DCDC0 AFB00014 */  sw    $s0, 0x14($sp)
/* 207924 801DCDC4 AFA40058 */  sw    $a0, 0x58($sp)
/* 207928 801DCDC8 8DC20000 */  lw    $v0, ($t6)
/* 20792C 801DCDCC 3C03800E */  lui   $v1, 0x800e
/* 207930 801DCDD0 3C18800E */  lui   $t8, 0x800e
/* 207934 801DCDD4 00621821 */  addu  $v1, $v1, $v0
/* 207938 801DCDD8 90637880 */  lbu   $v1, 0x7880($v1)
/* 20793C 801DCDDC 00027880 */  sll   $t7, $v0, 2
/* 207940 801DCDE0 030FC021 */  addu  $t8, $t8, $t7
/* 207944 801DCDE4 8F180D50 */  lw    $t8, 0xd50($t8)
/* 207948 801DCDE8 2463FFF9 */  addiu $v1, $v1, -7
/* 20794C 801DCDEC 3C10800E */  lui   $s0, %hi(D_800DFBD0) # $s0, 0x800e
/* 207950 801DCDF0 00033080 */  sll   $a2, $v1, 2
/* 207954 801DCDF4 3C0A801E */  lui   $t2, 0x801e
/* 207958 801DCDF8 2610FBD0 */  addiu $s0, %lo(D_800DFBD0) # addiu $s0, $s0, -0x430
/* 20795C 801DCDFC 01465021 */  addu  $t2, $t2, $a2
/* 207960 801DCE00 0018C880 */  sll   $t9, $t8, 2
/* 207964 801DCE04 8D4A6500 */  lw    $t2, 0x6500($t2)
/* 207968 801DCE08 02194021 */  addu  $t0, $s0, $t9
/* 20796C 801DCE0C 8D090000 */  lw    $t1, ($t0)
/* 207970 801DCE10 000A5880 */  sll   $t3, $t2, 2
/* 207974 801DCE14 27A4004C */  addiu $a0, $sp, 0x4c
/* 207978 801DCE18 012B6021 */  addu  $t4, $t1, $t3
/* 20797C 801DCE1C 8D850000 */  lw    $a1, ($t4)
/* 207980 801DCE20 0C0291E5 */  jal   func_800A4794
/* 207984 801DCE24 AFA60028 */   sw    $a2, 0x28($sp)
/* 207988 801DCE28 3C01C2A0 */  li    $at, 0xC2A00000 # -80.000000
/* 20798C 801DCE2C C7A20054 */  lwc1  $f2, 0x54($sp)
/* 207990 801DCE30 44812000 */  mtc1  $at, $f4
/* 207994 801DCE34 24040001 */  li    $a0, 1
/* 207998 801DCE38 4604103C */  c.lt.s $f2, $f4
/* 20799C 801DCE3C 00000000 */  nop   
/* 2079A0 801DCE40 45000006 */  bc1f  .L801DCE5C_ovl15
/* 2079A4 801DCE44 00000000 */   nop   
/* 2079A8 801DCE48 00002025 */  move  $a0, $zero
/* 2079AC 801DCE4C 0C02BEED */  jal   func_800AFBB4
/* 2079B0 801DCE50 8E250000 */   lw    $a1, ($s1)
/* 2079B4 801DCE54 10000075 */  b     .L801DD02C_ovl15
/* 2079B8 801DCE58 8FBF001C */   lw    $ra, 0x1c($sp)
.L801DCE5C_ovl15:
/* 2079BC 801DCE5C 0C02BEED */  jal   func_800AFBB4
/* 2079C0 801DCE60 8E250000 */   lw    $a1, ($s1)
/* 2079C4 801DCE64 8E220000 */  lw    $v0, ($s1)
/* 2079C8 801DCE68 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 2079CC 801DCE6C 44818000 */  mtc1  $at, $f16
/* 2079D0 801DCE70 8C4D0000 */  lw    $t5, ($v0)
/* 2079D4 801DCE74 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 2079D8 801DCE78 3C01800E */  lui   $at, 0x800e
/* 2079DC 801DCE7C 000D7080 */  sll   $t6, $t5, 2
/* 2079E0 801DCE80 002E0821 */  addu  $at, $at, $t6
/* 2079E4 801DCE84 E42625D0 */  swc1  $f6, 0x25d0($at)
/* 2079E8 801DCE88 8C4F0000 */  lw    $t7, ($v0)
/* 2079EC 801DCE8C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 2079F0 801DCE90 44814000 */  mtc1  $at, $f8
/* 2079F4 801DCE94 3C01800E */  lui   $at, 0x800e
/* 2079F8 801DCE98 000FC080 */  sll   $t8, $t7, 2
/* 2079FC 801DCE9C 00380821 */  addu  $at, $at, $t8
/* 207A00 801DCEA0 E4282790 */  swc1  $f8, 0x2790($at)
/* 207A04 801DCEA4 8C590000 */  lw    $t9, ($v0)
/* 207A08 801DCEA8 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 207A0C 801DCEAC 3C05800E */  lui   $a1, %hi(gEntitiesNextPosZArray) # $a1, 0x800e
/* 207A10 801DCEB0 24A52950 */  addiu $a1, %lo(gEntitiesNextPosZArray) # addiu $a1, $a1, 0x2950
/* 207A14 801DCEB4 00194080 */  sll   $t0, $t9, 2
/* 207A18 801DCEB8 00A85021 */  addu  $t2, $a1, $t0
/* 207A1C 801DCEBC E54A0000 */  swc1  $f10, ($t2)
/* 207A20 801DCEC0 8C430000 */  lw    $v1, ($v0)
/* 207A24 801DCEC4 00031880 */  sll   $v1, $v1, 2
/* 207A28 801DCEC8 00A32021 */  addu  $a0, $a1, $v1
/* 207A2C 801DCECC C4920000 */  lwc1  $f18, ($a0)
/* 207A30 801DCED0 4612803C */  c.lt.s $f16, $f18
/* 207A34 801DCED4 00000000 */  nop   
/* 207A38 801DCED8 45020005 */  bc1fl .L801DCEF0_ovl15
/* 207A3C 801DCEDC 02034821 */   addu  $t1, $s0, $v1
/* 207A40 801DCEE0 E4900000 */  swc1  $f16, ($a0)
/* 207A44 801DCEE4 8C430000 */  lw    $v1, ($v0)
/* 207A48 801DCEE8 00031880 */  sll   $v1, $v1, 2
/* 207A4C 801DCEEC 02034821 */  addu  $t1, $s0, $v1
.L801DCEF0_ovl15:
/* 207A50 801DCEF0 8D2B0000 */  lw    $t3, ($t1)
/* 207A54 801DCEF4 44807000 */  mtc1  $zero, $f14
/* 207A58 801DCEF8 27A40040 */  addiu $a0, $sp, 0x40
/* 207A5C 801DCEFC 8D6C0004 */  lw    $t4, 4($t3)
/* 207A60 801DCF00 E58E001C */  swc1  $f14, 0x1c($t4)
/* 207A64 801DCF04 8E2D0000 */  lw    $t5, ($s1)
/* 207A68 801DCF08 8DAE0000 */  lw    $t6, ($t5)
/* 207A6C 801DCF0C 000E7880 */  sll   $t7, $t6, 2
/* 207A70 801DCF10 020FC021 */  addu  $t8, $s0, $t7
/* 207A74 801DCF14 8F190000 */  lw    $t9, ($t8)
/* 207A78 801DCF18 8F280004 */  lw    $t0, 4($t9)
/* 207A7C 801DCF1C E50E0020 */  swc1  $f14, 0x20($t0)
/* 207A80 801DCF20 8E2A0000 */  lw    $t2, ($s1)
/* 207A84 801DCF24 3C08800E */  lui   $t0, 0x800e
/* 207A88 801DCF28 8D490000 */  lw    $t1, ($t2)
/* 207A8C 801DCF2C 00095880 */  sll   $t3, $t1, 2
/* 207A90 801DCF30 020B6021 */  addu  $t4, $s0, $t3
/* 207A94 801DCF34 8D8D0000 */  lw    $t5, ($t4)
/* 207A98 801DCF38 8DAE0004 */  lw    $t6, 4($t5)
/* 207A9C 801DCF3C 3C0D801E */  lui   $t5, 0x801e
/* 207AA0 801DCF40 E5CE0024 */  swc1  $f14, 0x24($t6)
/* 207AA4 801DCF44 8E2F0000 */  lw    $t7, ($s1)
/* 207AA8 801DCF48 8FAC0028 */  lw    $t4, 0x28($sp)
/* 207AAC 801DCF4C 8DF80000 */  lw    $t8, ($t7)
/* 207AB0 801DCF50 01AC6821 */  addu  $t5, $t5, $t4
/* 207AB4 801DCF54 8DAD6508 */  lw    $t5, 0x6508($t5)
/* 207AB8 801DCF58 0018C880 */  sll   $t9, $t8, 2
/* 207ABC 801DCF5C 01194021 */  addu  $t0, $t0, $t9
/* 207AC0 801DCF60 8D080D50 */  lw    $t0, 0xd50($t0)
/* 207AC4 801DCF64 000D7080 */  sll   $t6, $t5, 2
/* 207AC8 801DCF68 00085080 */  sll   $t2, $t0, 2
/* 207ACC 801DCF6C 020A4821 */  addu  $t1, $s0, $t2
/* 207AD0 801DCF70 8D2B0000 */  lw    $t3, ($t1)
/* 207AD4 801DCF74 016E7821 */  addu  $t7, $t3, $t6
/* 207AD8 801DCF78 0C0291E5 */  jal   func_800A4794
/* 207ADC 801DCF7C 8DE50000 */   lw    $a1, ($t7)
/* 207AE0 801DCF80 C7A00048 */  lwc1  $f0, 0x48($sp)
/* 207AE4 801DCF84 C7A20054 */  lwc1  $f2, 0x54($sp)
/* 207AE8 801DCF88 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 207AEC 801DCF8C 44818000 */  mtc1  $at, $f16
/* 207AF0 801DCF90 46001032 */  c.eq.s $f2, $f0
/* 207AF4 801DCF94 C7A40054 */  lwc1  $f4, 0x54($sp)
/* 207AF8 801DCF98 44807000 */  mtc1  $zero, $f14
/* 207AFC 801DCF9C 46001301 */  sub.s $f12, $f2, $f0
/* 207B00 801DCFA0 45000003 */  bc1f  .L801DCFB0_ovl15
/* 207B04 801DCFA4 46102180 */   add.s $f6, $f4, $f16
/* 207B08 801DCFA8 3C01801E */  lui   $at, %hi(D_801E6824) # $at, 0x801e
/* 207B0C 801DCFAC C42C6824 */  lwc1  $f12, %lo(D_801E6824)($at)
.L801DCFB0_ovl15:
/* 207B10 801DCFB0 460C3003 */  div.s $f0, $f6, $f12
/* 207B14 801DCFB4 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 207B18 801DCFB8 C7AA004C */  lwc1  $f10, 0x4c($sp)
/* 207B1C 801DCFBC 8E380000 */  lw    $t8, ($s1)
/* 207B20 801DCFC0 460A4481 */  sub.s $f18, $f8, $f10
/* 207B24 801DCFC4 8F190000 */  lw    $t9, ($t8)
/* 207B28 801DCFC8 00194080 */  sll   $t0, $t9, 2
/* 207B2C 801DCFCC 02085021 */  addu  $t2, $s0, $t0
/* 207B30 801DCFD0 8D490000 */  lw    $t1, ($t2)
/* 207B34 801DCFD4 8D2C0008 */  lw    $t4, 8($t1)
/* 207B38 801DCFD8 46009102 */  mul.s $f4, $f18, $f0
/* 207B3C 801DCFDC E584001C */  swc1  $f4, 0x1c($t4)
/* 207B40 801DCFE0 8E2D0000 */  lw    $t5, ($s1)
/* 207B44 801DCFE4 8DAB0000 */  lw    $t3, ($t5)
/* 207B48 801DCFE8 000B7080 */  sll   $t6, $t3, 2
/* 207B4C 801DCFEC 020E7821 */  addu  $t7, $s0, $t6
/* 207B50 801DCFF0 8DF80000 */  lw    $t8, ($t7)
/* 207B54 801DCFF4 8F190008 */  lw    $t9, 8($t8)
/* 207B58 801DCFF8 E72E0020 */  swc1  $f14, 0x20($t9)
/* 207B5C 801DCFFC 8E280000 */  lw    $t0, ($s1)
/* 207B60 801DD000 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 207B64 801DD004 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 207B68 801DD008 8D0A0000 */  lw    $t2, ($t0)
/* 207B6C 801DD00C 46083281 */  sub.s $f10, $f6, $f8
/* 207B70 801DD010 000A4880 */  sll   $t1, $t2, 2
/* 207B74 801DD014 02096021 */  addu  $t4, $s0, $t1
/* 207B78 801DD018 8D8D0000 */  lw    $t5, ($t4)
/* 207B7C 801DD01C 46005482 */  mul.s $f18, $f10, $f0
/* 207B80 801DD020 8DAB0008 */  lw    $t3, 8($t5)
/* 207B84 801DD024 E5720024 */  swc1  $f18, 0x24($t3)
/* 207B88 801DD028 8FBF001C */  lw    $ra, 0x1c($sp)
.L801DD02C_ovl15:
/* 207B8C 801DD02C 8FB00014 */  lw    $s0, 0x14($sp)
/* 207B90 801DD030 8FB10018 */  lw    $s1, 0x18($sp)
/* 207B94 801DD034 03E00008 */  jr    $ra
/* 207B98 801DD038 27BD0058 */   addiu $sp, $sp, 0x58

/* 207B9C 801DD03C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 207BA0 801DD040 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 207BA4 801DD044 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 207BA8 801DD048 AFBF0014 */  sw    $ra, 0x14($sp)
/* 207BAC 801DD04C AFA40018 */  sw    $a0, 0x18($sp)
/* 207BB0 801DD050 8C4F0000 */  lw    $t7, ($v0)
/* 207BB4 801DD054 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 207BB8 801DD058 3C01800E */  lui   $at, 0x800e
/* 207BBC 801DD05C 000FC080 */  sll   $t8, $t7, 2
/* 207BC0 801DD060 00380821 */  addu  $at, $at, $t8
/* 207BC4 801DD064 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 207BC8 801DD068 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 207BCC 801DD06C 8C480000 */  lw    $t0, ($v0)
/* 207BD0 801DD070 3C01800E */  lui   $at, 0x800e
/* 207BD4 801DD074 3C19801E */  lui   $t9, %hi(D_801DD208) # $t9, 0x801e
/* 207BD8 801DD078 00084880 */  sll   $t1, $t0, 2
/* 207BDC 801DD07C 00290821 */  addu  $at, $at, $t1
/* 207BE0 801DD080 2739D208 */  addiu $t9, %lo(D_801DD208) # addiu $t9, $t9, -0x2df8
/* 207BE4 801DD084 AC39F150 */  sw    $t9, -0xeb0($at)
/* 207BE8 801DD088 8C4A0000 */  lw    $t2, ($v0)
/* 207BEC 801DD08C 3C04800E */  lui   $a0, 0x800e
/* 207BF0 801DD090 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 207BF4 801DD094 000A5880 */  sll   $t3, $t2, 2
/* 207BF8 801DD098 008B2021 */  addu  $a0, $a0, $t3
/* 207BFC 801DD09C 8C84EC10 */  lw    $a0, -0x13f0($a0)
/* 207C00 801DD0A0 0C02C7DA */  jal   func_800B1F68
/* 207C04 801DD0A4 24A51434 */   addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 207C08 801DD0A8 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 207C0C 801DD0AC 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 207C10 801DD0B0 24040071 */  li    $a0, 113
/* 207C14 801DD0B4 0C02C67D */  jal   func_800B19F4
/* 207C18 801DD0B8 8D850000 */   lw    $a1, ($t4)
/* 207C1C 801DD0BC 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 207C20 801DD0C0 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 207C24 801DD0C4 0C02BEED */  jal   func_800AFBB4
/* 207C28 801DD0C8 00002025 */   move  $a0, $zero
/* 207C2C 801DD0CC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 207C30 801DD0D0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 207C34 801DD0D4 3C06800E */  lui   $a2, %hi(D_800E0D50) # $a2, 0x800e
/* 207C38 801DD0D8 24C60D50 */  addiu $a2, %lo(D_800E0D50) # addiu $a2, $a2, 0xd50
/* 207C3C 801DD0DC 8C430000 */  lw    $v1, ($v0)
/* 207C40 801DD0E0 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 207C44 801DD0E4 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 207C48 801DD0E8 00031880 */  sll   $v1, $v1, 2
/* 207C4C 801DD0EC 00C36821 */  addu  $t5, $a2, $v1
/* 207C50 801DD0F0 8DAF0000 */  lw    $t7, ($t5)
/* 207C54 801DD0F4 00A34021 */  addu  $t0, $a1, $v1
/* 207C58 801DD0F8 44803000 */  mtc1  $zero, $f6
/* 207C5C 801DD0FC 000F7080 */  sll   $t6, $t7, 2
/* 207C60 801DD100 00AEC021 */  addu  $t8, $a1, $t6
/* 207C64 801DD104 C7040000 */  lwc1  $f4, ($t8)
/* 207C68 801DD108 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 207C6C 801DD10C 24E72950 */  addiu $a3, %lo(gEntitiesNextPosZArray) # addiu $a3, $a3, 0x2950
/* 207C70 801DD110 E5040000 */  swc1  $f4, ($t0)
/* 207C74 801DD114 8C590000 */  lw    $t9, ($v0)
/* 207C78 801DD118 3C01800E */  lui   $at, 0x800e
/* 207C7C 801DD11C 3C04800F */  lui   $a0, %hi(D_800E9C60) # $a0, 0x800f
/* 207C80 801DD120 00194880 */  sll   $t1, $t9, 2
/* 207C84 801DD124 00E95021 */  addu  $t2, $a3, $t1
/* 207C88 801DD128 E5460000 */  swc1  $f6, ($t2)
/* 207C8C 801DD12C 8C430000 */  lw    $v1, ($v0)
/* 207C90 801DD130 24849C60 */  addiu $a0, %lo(D_800E9C60) # addiu $a0, $a0, -0x63a0
/* 207C94 801DD134 240A0001 */  li    $t2, 1
/* 207C98 801DD138 00031880 */  sll   $v1, $v1, 2
/* 207C9C 801DD13C 00E35821 */  addu  $t3, $a3, $v1
/* 207CA0 801DD140 C5680000 */  lwc1  $f8, ($t3)
/* 207CA4 801DD144 00230821 */  addu  $at, $at, $v1
/* 207CA8 801DD148 E4282790 */  swc1  $f8, 0x2790($at)
/* 207CAC 801DD14C 8C4C0000 */  lw    $t4, ($v0)
/* 207CB0 801DD150 3C01800F */  lui   $at, 0x800f
/* 207CB4 801DD154 000C6880 */  sll   $t5, $t4, 2
/* 207CB8 801DD158 002D0821 */  addu  $at, $at, $t5
/* 207CBC 801DD15C AC2098E0 */  sw    $zero, -0x6720($at)
/* 207CC0 801DD160 8C430000 */  lw    $v1, ($v0)
/* 207CC4 801DD164 00031880 */  sll   $v1, $v1, 2
/* 207CC8 801DD168 00C37821 */  addu  $t7, $a2, $v1
/* 207CCC 801DD16C 8DEE0000 */  lw    $t6, ($t7)
/* 207CD0 801DD170 00835821 */  addu  $t3, $a0, $v1
/* 207CD4 801DD174 00834821 */  addu  $t1, $a0, $v1
/* 207CD8 801DD178 000EC080 */  sll   $t8, $t6, 2
/* 207CDC 801DD17C 00984021 */  addu  $t0, $a0, $t8
/* 207CE0 801DD180 8D190000 */  lw    $t9, ($t0)
/* 207CE4 801DD184 3C08800E */  lui   $t0, 0x800e
/* 207CE8 801DD188 3C0E800E */  lui   $t6, 0x800e
/* 207CEC 801DD18C 13200003 */  beqz  $t9, .L801DD19C_ovl15
/* 207CF0 801DD190 3C0F801E */   lui   $t7, %hi(D_801D8D54) # $t7, 0x801e
/* 207CF4 801DD194 10000002 */  b     .L801DD1A0_ovl15
/* 207CF8 801DD198 AD200000 */   sw    $zero, ($t1)
.L801DD19C_ovl15:
/* 207CFC 801DD19C AD6A0000 */  sw    $t2, ($t3)
.L801DD1A0_ovl15:
/* 207D00 801DD1A0 8C430000 */  lw    $v1, ($v0)
/* 207D04 801DD1A4 00031880 */  sll   $v1, $v1, 2
/* 207D08 801DD1A8 00836021 */  addu  $t4, $a0, $v1
/* 207D0C 801DD1AC 8D8D0000 */  lw    $t5, ($t4)
/* 207D10 801DD1B0 01034021 */  addu  $t0, $t0, $v1
/* 207D14 801DD1B4 01C37021 */  addu  $t6, $t6, $v1
/* 207D18 801DD1B8 11A00005 */  beqz  $t5, .L801DD1D0_ovl15
/* 207D1C 801DD1BC 00000000 */   nop   
/* 207D20 801DD1C0 8DCE1B50 */  lw    $t6, 0x1b50($t6)
/* 207D24 801DD1C4 25EF8D54 */  addiu $t7, %lo(D_801D8D54) # addiu $t7, $t7, -0x72ac
/* 207D28 801DD1C8 10000005 */  b     .L801DD1E0_ovl15
/* 207D2C 801DD1CC ADCF008C */   sw    $t7, 0x8c($t6)
.L801DD1D0_ovl15:
/* 207D30 801DD1D0 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 207D34 801DD1D4 3C18801E */  lui   $t8, %hi(D_801D8D78) # $t8, 0x801e
/* 207D38 801DD1D8 27188D78 */  addiu $t8, %lo(D_801D8D78) # addiu $t8, $t8, -0x7288
/* 207D3C 801DD1DC AD18008C */  sw    $t8, 0x8c($t0)
.L801DD1E0_ovl15:
/* 207D40 801DD1E0 0C002DAF */  jal   finish_current_thread
/* 207D44 801DD1E4 24040041 */   li    $a0, 65
/* 207D48 801DD1E8 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 207D4C 801DD1EC 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 207D50 801DD1F0 0C067656 */  jal   func_8019D958_ovl15
/* 207D54 801DD1F4 97240002 */   lhu   $a0, 2($t9)
/* 207D58 801DD1F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 207D5C 801DD1FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 207D60 801DD200 03E00008 */  jr    $ra
/* 207D64 801DD204 00000000 */   nop   

/* 207D68 801DD208 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 207D6C 801DD20C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 207D70 801DD210 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 207D74 801DD214 AFBF0014 */  sw    $ra, 0x14($sp)
/* 207D78 801DD218 AFA40048 */  sw    $a0, 0x48($sp)
/* 207D7C 801DD21C 8C4E0000 */  lw    $t6, ($v0)
/* 207D80 801DD220 3C18800F */  lui   $t8, %hi(D_800E98E0) # $t8, 0x800f
/* 207D84 801DD224 271898E0 */  addiu $t8, %lo(D_800E98E0) # addiu $t8, $t8, -0x6720
/* 207D88 801DD228 000E7880 */  sll   $t7, $t6, 2
/* 207D8C 801DD22C 01F81821 */  addu  $v1, $t7, $t8
/* 207D90 801DD230 8C640000 */  lw    $a0, ($v1)
/* 207D94 801DD234 3C08800E */  lui   $t0, 0x800e
/* 207D98 801DD238 3C0A800E */  lui   $t2, 0x800e
/* 207D9C 801DD23C 2885001A */  slti  $a1, $a0, 0x1a
/* 207DA0 801DD240 38A50001 */  xori  $a1, $a1, 1
/* 207DA4 801DD244 24990001 */  addiu $t9, $a0, 1
/* 207DA8 801DD248 10A0002F */  beqz  $a1, .L801DD308_ovl15
/* 207DAC 801DD24C AC790000 */   sw    $t9, ($v1)
/* 207DB0 801DD250 8C430000 */  lw    $v1, ($v0)
/* 207DB4 801DD254 3C0B800F */  lui   $t3, 0x800f
/* 207DB8 801DD258 3C0D801E */  lui   $t5, 0x801e
/* 207DBC 801DD25C 00031880 */  sll   $v1, $v1, 2
/* 207DC0 801DD260 01635821 */  addu  $t3, $t3, $v1
/* 207DC4 801DD264 8D6B9C60 */  lw    $t3, -0x63a0($t3)
/* 207DC8 801DD268 01034021 */  addu  $t0, $t0, $v1
/* 207DCC 801DD26C 8D080D50 */  lw    $t0, 0xd50($t0)
/* 207DD0 801DD270 000B6080 */  sll   $t4, $t3, 2
/* 207DD4 801DD274 01AC6821 */  addu  $t5, $t5, $t4
/* 207DD8 801DD278 00084880 */  sll   $t1, $t0, 2
/* 207DDC 801DD27C 8DAD6500 */  lw    $t5, 0x6500($t5)
/* 207DE0 801DD280 01495021 */  addu  $t2, $t2, $t1
/* 207DE4 801DD284 8D4AFBD0 */  lw    $t2, -0x430($t2)
/* 207DE8 801DD288 000D7080 */  sll   $t6, $t5, 2
/* 207DEC 801DD28C 27A4003C */  addiu $a0, $sp, 0x3c
/* 207DF0 801DD290 014E7821 */  addu  $t7, $t2, $t6
/* 207DF4 801DD294 0C0291E5 */  jal   func_800A4794
/* 207DF8 801DD298 8DE50000 */   lw    $a1, ($t7)
/* 207DFC 801DD29C 3C01C270 */  li    $at, 0xC2700000 # -60.000000
/* 207E00 801DD2A0 44812000 */  mtc1  $at, $f4
/* 207E04 801DD2A4 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 207E08 801DD2A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 207E0C 801DD2AC 4606203C */  c.lt.s $f4, $f6
/* 207E10 801DD2B0 00000000 */  nop   
/* 207E14 801DD2B4 45020015 */  bc1fl .L801DD30C_ovl15
/* 207E18 801DD2B8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 207E1C 801DD2BC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 207E20 801DD2C0 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 207E24 801DD2C4 3C01800E */  lui   $at, 0x800e
/* 207E28 801DD2C8 8C580000 */  lw    $t8, ($v0)
/* 207E2C 801DD2CC 44800000 */  mtc1  $zero, $f0
/* 207E30 801DD2D0 0018C880 */  sll   $t9, $t8, 2
/* 207E34 801DD2D4 00390821 */  addu  $at, $at, $t9
/* 207E38 801DD2D8 E42825D0 */  swc1  $f8, 0x25d0($at)
/* 207E3C 801DD2DC 8C480000 */  lw    $t0, ($v0)
/* 207E40 801DD2E0 3C01800E */  lui   $at, 0x800e
/* 207E44 801DD2E4 00084880 */  sll   $t1, $t0, 2
/* 207E48 801DD2E8 00290821 */  addu  $at, $at, $t1
/* 207E4C 801DD2EC E4202790 */  swc1  $f0, 0x2790($at)
/* 207E50 801DD2F0 8C4B0000 */  lw    $t3, ($v0)
/* 207E54 801DD2F4 3C01800E */  lui   $at, 0x800e
/* 207E58 801DD2F8 000B6080 */  sll   $t4, $t3, 2
/* 207E5C 801DD2FC 002C0821 */  addu  $at, $at, $t4
/* 207E60 801DD300 0C067CEC */  jal   func_8019F3B0_ovl15
/* 207E64 801DD304 E4202950 */   swc1  $f0, 0x2950($at)
.L801DD308_ovl15:
/* 207E68 801DD308 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DD30C_ovl15:
/* 207E6C 801DD30C 27BD0048 */  addiu $sp, $sp, 0x48
/* 207E70 801DD310 03E00008 */  jr    $ra
/* 207E74 801DD314 00000000 */   nop   

/* 207E78 801DD318 3C07800D */  lui   $a3, %hi(D_800D7098) # $a3, 0x800d
/* 207E7C 801DD31C 24E77098 */  addiu $a3, %lo(D_800D7098) # addiu $a3, $a3, 0x7098
/* 207E80 801DD320 ACE00014 */  sw    $zero, 0x14($a3)
/* 207E84 801DD324 ACE00010 */  sw    $zero, 0x10($a3)
/* 207E88 801DD328 ACE00024 */  sw    $zero, 0x24($a3)
/* 207E8C 801DD32C ACE00004 */  sw    $zero, 4($a3)
/* 207E90 801DD330 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 207E94 801DD334 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 207E98 801DD338 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 207E9C 801DD33C AFBF0014 */  sw    $ra, 0x14($sp)
/* 207EA0 801DD340 AFA40018 */  sw    $a0, 0x18($sp)
/* 207EA4 801DD344 8C620000 */  lw    $v0, ($v1)
/* 207EA8 801DD348 3C0E800E */  lui   $t6, 0x800e
/* 207EAC 801DD34C 3C01800F */  lui   $at, 0x800f
/* 207EB0 801DD350 00021080 */  sll   $v0, $v0, 2
/* 207EB4 801DD354 01C27021 */  addu  $t6, $t6, $v0
/* 207EB8 801DD358 8DCE5F90 */  lw    $t6, 0x5f90($t6)
/* 207EBC 801DD35C 00220821 */  addu  $at, $at, $v0
/* 207EC0 801DD360 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 207EC4 801DD364 AC2EA520 */  sw    $t6, -0x5ae0($at)
/* 207EC8 801DD368 8C620000 */  lw    $v0, ($v1)
/* 207ECC 801DD36C 3C01800E */  lui   $at, 0x800e
/* 207ED0 801DD370 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 207ED4 801DD374 00021080 */  sll   $v0, $v0, 2
/* 207ED8 801DD378 00220821 */  addu  $at, $at, $v0
/* 207EDC 801DD37C C4246BD0 */  lwc1  $f4, 0x6bd0($at)
/* 207EE0 801DD380 3C01800F */  lui   $at, 0x800f
/* 207EE4 801DD384 00220821 */  addu  $at, $at, $v0
/* 207EE8 801DD388 E424B320 */  swc1  $f4, -0x4ce0($at)
/* 207EEC 801DD38C 8C620000 */  lw    $v0, ($v1)
/* 207EF0 801DD390 3C01800F */  lui   $at, 0x800f
/* 207EF4 801DD394 3C09800E */  lui   $t1, %hi(gEntitiesNextPosZArray) # $t1, 0x800e
/* 207EF8 801DD398 00021080 */  sll   $v0, $v0, 2
/* 207EFC 801DD39C 01027821 */  addu  $t7, $t0, $v0
/* 207F00 801DD3A0 C5E60000 */  lwc1  $f6, ($t7)
/* 207F04 801DD3A4 00220821 */  addu  $at, $at, $v0
/* 207F08 801DD3A8 25292950 */  addiu $t1, %lo(gEntitiesNextPosZArray) # addiu $t1, $t1, 0x2950
/* 207F0C 801DD3AC E426ADE0 */  swc1  $f6, -0x5220($at)
/* 207F10 801DD3B0 8C620000 */  lw    $v0, ($v1)
/* 207F14 801DD3B4 3C01800E */  lui   $at, 0x800e
/* 207F18 801DD3B8 240AFFFF */  li    $t2, -1
/* 207F1C 801DD3BC 00021080 */  sll   $v0, $v0, 2
/* 207F20 801DD3C0 00220821 */  addu  $at, $at, $v0
/* 207F24 801DD3C4 C4282790 */  lwc1  $f8, 0x2790($at)
/* 207F28 801DD3C8 3C01800F */  lui   $at, 0x800f
/* 207F2C 801DD3CC 00220821 */  addu  $at, $at, $v0
/* 207F30 801DD3D0 E428AFA0 */  swc1  $f8, -0x5060($at)
/* 207F34 801DD3D4 8C620000 */  lw    $v0, ($v1)
/* 207F38 801DD3D8 3C01800F */  lui   $at, 0x800f
/* 207F3C 801DD3DC 3C040001 */  lui   $a0, (0x00010066 >> 16) # lui $a0, 1
/* 207F40 801DD3E0 00021080 */  sll   $v0, $v0, 2
/* 207F44 801DD3E4 0122C021 */  addu  $t8, $t1, $v0
/* 207F48 801DD3E8 C70A0000 */  lwc1  $f10, ($t8)
/* 207F4C 801DD3EC 00220821 */  addu  $at, $at, $v0
/* 207F50 801DD3F0 34840066 */  ori   $a0, (0x00010066 & 0xFFFF) # ori $a0, $a0, 0x66
/* 207F54 801DD3F4 E42AB160 */  swc1  $f10, -0x4ea0($at)
/* 207F58 801DD3F8 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 207F5C 801DD3FC AC2A7154 */  sw    $t2, %lo(D_800D7154)($at)
/* 207F60 801DD400 8C790000 */  lw    $t9, ($v1)
/* 207F64 801DD404 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 207F68 801DD408 44818000 */  mtc1  $at, $f16
/* 207F6C 801DD40C 3C01800E */  lui   $at, 0x800e
/* 207F70 801DD410 00195880 */  sll   $t3, $t9, 2
/* 207F74 801DD414 002B0821 */  addu  $at, $at, $t3
/* 207F78 801DD418 E4306A10 */  swc1  $f16, 0x6a10($at)
/* 207F7C 801DD41C 8C6C0000 */  lw    $t4, ($v1)
/* 207F80 801DD420 3C01801E */  lui   $at, %hi(D_801E6828) # $at, 0x801e
/* 207F84 801DD424 C4326828 */  lwc1  $f18, %lo(D_801E6828)($at)
/* 207F88 801DD428 3C01800E */  lui   $at, 0x800e
/* 207F8C 801DD42C 000C6880 */  sll   $t5, $t4, 2
/* 207F90 801DD430 002D0821 */  addu  $at, $at, $t5
/* 207F94 801DD434 E43217D0 */  swc1  $f18, 0x17d0($at)
/* 207F98 801DD438 8C6E0000 */  lw    $t6, ($v1)
/* 207F9C 801DD43C 3C0145E1 */  li    $at, 0x45E10000 # 7200.000000
/* 207FA0 801DD440 44812000 */  mtc1  $at, $f4
/* 207FA4 801DD444 000E7880 */  sll   $t7, $t6, 2
/* 207FA8 801DD448 010FC021 */  addu  $t8, $t0, $t7
/* 207FAC 801DD44C E7040000 */  swc1  $f4, ($t8)
/* 207FB0 801DD450 8C790000 */  lw    $t9, ($v1)
/* 207FB4 801DD454 3C01C407 */  li    $at, 0xC4070000 # -540.000000
/* 207FB8 801DD458 44813000 */  mtc1  $at, $f6
/* 207FBC 801DD45C 00195880 */  sll   $t3, $t9, 2
/* 207FC0 801DD460 012B6021 */  addu  $t4, $t1, $t3
/* 207FC4 801DD464 E5860000 */  swc1  $f6, ($t4)
/* 207FC8 801DD468 ACE00020 */  sw    $zero, 0x20($a3)
/* 207FCC 801DD46C ACEA001C */  sw    $t2, 0x1c($a3)
/* 207FD0 801DD470 8C6E0000 */  lw    $t6, ($v1)
/* 207FD4 801DD474 3C01800E */  lui   $at, 0x800e
/* 207FD8 801DD478 3C0D800B */  lui   $t5, %hi(D_800B7560) # $t5, 0x800b
/* 207FDC 801DD47C 000E7880 */  sll   $t7, $t6, 2
/* 207FE0 801DD480 002F0821 */  addu  $at, $at, $t7
/* 207FE4 801DD484 25AD7560 */  addiu $t5, %lo(D_800B7560) # addiu $t5, $t5, 0x7560
/* 207FE8 801DD488 AC2DEF90 */  sw    $t5, -0x1070($at)
/* 207FEC 801DD48C 2405002A */  li    $a1, 42
/* 207FF0 801DD490 0C02A619 */  jal   func_800A9864
/* 207FF4 801DD494 24060010 */   li    $a2, 16
/* 207FF8 801DD498 0C006291 */  jal   random_soft_s32_range
/* 207FFC 801DD49C 24040004 */   li    $a0, 4
/* 208000 801DD4A0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 208004 801DD4A4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 208008 801DD4A8 0002C080 */  sll   $t8, $v0, 2
/* 20800C 801DD4AC 3C19801E */  lui   $t9, 0x801e
/* 208010 801DD4B0 8C6B0000 */  lw    $t3, ($v1)
/* 208014 801DD4B4 0338C821 */  addu  $t9, $t9, $t8
/* 208018 801DD4B8 8F396510 */  lw    $t9, 0x6510($t9)
/* 20801C 801DD4BC 3C01800F */  lui   $at, 0x800f
/* 208020 801DD4C0 000B6080 */  sll   $t4, $t3, 2
/* 208024 801DD4C4 002C0821 */  addu  $at, $at, $t4
/* 208028 801DD4C8 AC399AA0 */  sw    $t9, -0x6560($at)
/* 20802C 801DD4CC 8C6E0000 */  lw    $t6, ($v1)
/* 208030 801DD4D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 208034 801DD4D4 3C01800E */  lui   $at, 0x800e
/* 208038 801DD4D8 000E6880 */  sll   $t5, $t6, 2
/* 20803C 801DD4DC 002D0821 */  addu  $at, $at, $t5
/* 208040 801DD4E0 AC20DC50 */  sw    $zero, -0x23b0($at)
/* 208044 801DD4E4 03E00008 */  jr    $ra
/* 208048 801DD4E8 27BD0018 */   addiu $sp, $sp, 0x18

/* 20804C 801DD4EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 208050 801DD4F0 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 208054 801DD4F4 4480A000 */  mtc1  $zero, $f20
/* 208058 801DD4F8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 20805C 801DD4FC AFB10020 */  sw    $s1, 0x20($sp)
/* 208060 801DD500 AFB0001C */  sw    $s0, 0x1c($sp)
/* 208064 801DD504 AFA40028 */  sw    $a0, 0x28($sp)
/* 208068 801DD508 0C02BB48 */  jal   func_800AED20
/* 20806C 801DD50C 4600A306 */   mov.s $f12, $f20
/* 208070 801DD510 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 208074 801DD514 0C02BB30 */  jal   func_800AECC0
/* 208078 801DD518 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 20807C 801DD51C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 208080 801DD520 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 208084 801DD524 8E2E0000 */  lw    $t6, ($s1)
/* 208088 801DD528 3C01800E */  lui   $at, 0x800e
/* 20808C 801DD52C 8DCF0000 */  lw    $t7, ($t6)
/* 208090 801DD530 000FC080 */  sll   $t8, $t7, 2
/* 208094 801DD534 00380821 */  addu  $at, $at, $t8
/* 208098 801DD538 0C02CCFD */  jal   func_800B33F4
/* 20809C 801DD53C AC20DFD0 */   sw    $zero, -0x2030($at)
/* 2080A0 801DD540 3C040001 */  lui   $a0, (0x000103CB >> 16) # lui $a0, 1
/* 2080A4 801DD544 0C02A806 */  jal   func_800AA018
/* 2080A8 801DD548 348403CB */   ori   $a0, (0x000103CB & 0xFFFF) # ori $a0, $a0, 0x3cb
/* 2080AC 801DD54C 3C040001 */  lui   $a0, (0x000103DD >> 16) # lui $a0, 1
/* 2080B0 801DD550 0C02A806 */  jal   func_800AA018
/* 2080B4 801DD554 348403DD */   ori   $a0, (0x000103DD & 0xFFFF) # ori $a0, $a0, 0x3dd
/* 2080B8 801DD558 8E280000 */  lw    $t0, ($s1)
/* 2080BC 801DD55C 3C01800F */  lui   $at, 0x800f
/* 2080C0 801DD560 2419FFFF */  li    $t9, -1
/* 2080C4 801DD564 8D090000 */  lw    $t1, ($t0)
/* 2080C8 801DD568 2404019F */  li    $a0, 415
/* 2080CC 801DD56C 00095080 */  sll   $t2, $t1, 2
/* 2080D0 801DD570 002A0821 */  addu  $at, $at, $t2
/* 2080D4 801DD574 0C029D9E */  jal   play_sound
/* 2080D8 801DD578 AC39BDA0 */   sw    $t9, -0x4260($at)
/* 2080DC 801DD57C 8E220000 */  lw    $v0, ($s1)
/* 2080E0 801DD580 3C0D800E */  lui   $t5, %hi(gEntitiesNextPosYArray) # $t5, 0x800e
/* 2080E4 801DD584 25AD2790 */  addiu $t5, %lo(gEntitiesNextPosYArray) # addiu $t5, $t5, 0x2790
/* 2080E8 801DD588 8C4B0000 */  lw    $t3, ($v0)
/* 2080EC 801DD58C 3C01801E */  lui   $at, %hi(D_801E682C) # $at, 0x801e
/* 2080F0 801DD590 C426682C */  lwc1  $f6, %lo(D_801E682C)($at)
/* 2080F4 801DD594 000B6080 */  sll   $t4, $t3, 2
/* 2080F8 801DD598 018D1821 */  addu  $v1, $t4, $t5
/* 2080FC 801DD59C C4640000 */  lwc1  $f4, ($v1)
/* 208100 801DD5A0 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 208104 801DD5A4 44815000 */  mtc1  $at, $f10
/* 208108 801DD5A8 46062201 */  sub.s $f8, $f4, $f6
/* 20810C 801DD5AC 3C10800E */  lui   $s0, %hi(D_800E3210) # $s0, 0x800e
/* 208110 801DD5B0 26103210 */  addiu $s0, %lo(D_800E3210) # addiu $s0, $s0, 0x3210
/* 208114 801DD5B4 3C01BFC0 */  li    $at, 0xBFC00000 # -1.500000
/* 208118 801DD5B8 E4680000 */  swc1  $f8, ($v1)
/* 20811C 801DD5BC 8C4E0000 */  lw    $t6, ($v0)
/* 208120 801DD5C0 44818000 */  mtc1  $at, $f16
/* 208124 801DD5C4 3C01800E */  lui   $at, 0x800e
/* 208128 801DD5C8 000E7880 */  sll   $t7, $t6, 2
/* 20812C 801DD5CC 020FC021 */  addu  $t8, $s0, $t7
/* 208130 801DD5D0 E70A0000 */  swc1  $f10, ($t8)
/* 208134 801DD5D4 8C480000 */  lw    $t0, ($v0)
/* 208138 801DD5D8 00084880 */  sll   $t1, $t0, 2
/* 20813C 801DD5DC 00290821 */  addu  $at, $at, $t1
/* 208140 801DD5E0 E4303750 */  swc1  $f16, 0x3750($at)
/* 208144 801DD5E4 8C590000 */  lw    $t9, ($v0)
/* 208148 801DD5E8 00195080 */  sll   $t2, $t9, 2
/* 20814C 801DD5EC 020A5821 */  addu  $t3, $s0, $t2
/* 208150 801DD5F0 C5720000 */  lwc1  $f18, ($t3)
/* 208154 801DD5F4 4612A03C */  c.lt.s $f20, $f18
/* 208158 801DD5F8 00000000 */  nop   
/* 20815C 801DD5FC 4500000C */  bc1f  .L801DD630_ovl15
/* 208160 801DD600 00000000 */   nop   
.L801DD604_ovl15:
/* 208164 801DD604 0C002DAF */  jal   finish_current_thread
/* 208168 801DD608 24040001 */   li    $a0, 1
/* 20816C 801DD60C 8E2C0000 */  lw    $t4, ($s1)
/* 208170 801DD610 8D8D0000 */  lw    $t5, ($t4)
/* 208174 801DD614 000D7080 */  sll   $t6, $t5, 2
/* 208178 801DD618 020E7821 */  addu  $t7, $s0, $t6
/* 20817C 801DD61C C5E40000 */  lwc1  $f4, ($t7)
/* 208180 801DD620 4604A03C */  c.lt.s $f20, $f4
/* 208184 801DD624 00000000 */  nop   
/* 208188 801DD628 4501FFF6 */  bc1t  .L801DD604_ovl15
/* 20818C 801DD62C 00000000 */   nop   
.L801DD630_ovl15:
/* 208190 801DD630 0C002DAF */  jal   finish_current_thread
/* 208194 801DD634 2404000A */   li    $a0, 10
/* 208198 801DD638 8E380000 */  lw    $t8, ($s1)
/* 20819C 801DD63C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 2081A0 801DD640 44813000 */  mtc1  $at, $f6
/* 2081A4 801DD644 8F080000 */  lw    $t0, ($t8)
/* 2081A8 801DD648 3C01800E */  lui   $at, 0x800e
/* 2081AC 801DD64C 24040028 */  li    $a0, 40
/* 2081B0 801DD650 00084880 */  sll   $t1, $t0, 2
/* 2081B4 801DD654 00290821 */  addu  $at, $at, $t1
/* 2081B8 801DD658 0C002DAF */  jal   finish_current_thread
/* 2081BC 801DD65C E4263750 */   swc1  $f6, 0x3750($at)
/* 2081C0 801DD660 8E390000 */  lw    $t9, ($s1)
/* 2081C4 801DD664 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 2081C8 801DD668 44814000 */  mtc1  $at, $f8
/* 2081CC 801DD66C 8F2A0000 */  lw    $t2, ($t9)
/* 2081D0 801DD670 3C01800E */  lui   $at, 0x800e
/* 2081D4 801DD674 2404000A */  li    $a0, 10
/* 2081D8 801DD678 000A5880 */  sll   $t3, $t2, 2
/* 2081DC 801DD67C 002B0821 */  addu  $at, $at, $t3
/* 2081E0 801DD680 0C002DAF */  jal   finish_current_thread
/* 2081E4 801DD684 E4283750 */   swc1  $f8, 0x3750($at)
/* 2081E8 801DD688 8E220000 */  lw    $v0, ($s1)
/* 2081EC 801DD68C 3C01800E */  lui   $at, 0x800e
/* 2081F0 801DD690 2404001E */  li    $a0, 30
/* 2081F4 801DD694 8C4C0000 */  lw    $t4, ($v0)
/* 2081F8 801DD698 000C6880 */  sll   $t5, $t4, 2
/* 2081FC 801DD69C 002D0821 */  addu  $at, $at, $t5
/* 208200 801DD6A0 E4343750 */  swc1  $f20, 0x3750($at)
/* 208204 801DD6A4 8C430000 */  lw    $v1, ($v0)
/* 208208 801DD6A8 3C01800E */  lui   $at, 0x800e
/* 20820C 801DD6AC 00031880 */  sll   $v1, $v1, 2
/* 208210 801DD6B0 00230821 */  addu  $at, $at, $v1
/* 208214 801DD6B4 C42A3750 */  lwc1  $f10, 0x3750($at)
/* 208218 801DD6B8 02037021 */  addu  $t6, $s0, $v1
/* 20821C 801DD6BC 3C01801E */  lui   $at, %hi(D_801E6830) # $at, 0x801e
/* 208220 801DD6C0 E5CA0000 */  swc1  $f10, ($t6)
/* 208224 801DD6C4 8C4F0000 */  lw    $t7, ($v0)
/* 208228 801DD6C8 C4306830 */  lwc1  $f16, %lo(D_801E6830)($at)
/* 20822C 801DD6CC 3C01800E */  lui   $at, 0x800e
/* 208230 801DD6D0 000FC080 */  sll   $t8, $t7, 2
/* 208234 801DD6D4 00380821 */  addu  $at, $at, $t8
/* 208238 801DD6D8 0C002DAF */  jal   finish_current_thread
/* 20823C 801DD6DC E4303C90 */   swc1  $f16, 0x3c90($at)
/* 208240 801DD6E0 8E280000 */  lw    $t0, ($s1)
/* 208244 801DD6E4 3C01800E */  lui   $at, 0x800e
/* 208248 801DD6E8 8D090000 */  lw    $t1, ($t0)
/* 20824C 801DD6EC 0009C880 */  sll   $t9, $t1, 2
/* 208250 801DD6F0 00390821 */  addu  $at, $at, $t9
/* 208254 801DD6F4 C4327B20 */  lwc1  $f18, 0x7b20($at)
/* 208258 801DD6F8 4600910D */  trunc.w.s $f4, $f18
/* 20825C 801DD6FC 44042000 */  mfc1  $a0, $f4
/* 208260 801DD700 0C02F07F */  jal   func_800BC1FC
/* 208264 801DD704 00000000 */   nop   
/* 208268 801DD708 0C02BBFF */  jal   func_800AEFFC
/* 20826C 801DD70C 24040002 */   li    $a0, 2
/* 208270 801DD710 24020001 */  li    $v0, 1
/* 208274 801DD714 3C01800D */  lui   $at, %hi(D_800D70D4) # $at, 0x800d
/* 208278 801DD718 AC2270D4 */  sw    $v0, %lo(D_800D70D4)($at)
/* 20827C 801DD71C 8E2B0000 */  lw    $t3, ($s1)
/* 208280 801DD720 8FBF0024 */  lw    $ra, 0x24($sp)
/* 208284 801DD724 3C01800E */  lui   $at, 0x800e
/* 208288 801DD728 8D6C0000 */  lw    $t4, ($t3)
/* 20828C 801DD72C 8FB10020 */  lw    $s1, 0x20($sp)
/* 208290 801DD730 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 208294 801DD734 000C6880 */  sll   $t5, $t4, 2
/* 208298 801DD738 002D0821 */  addu  $at, $at, $t5
/* 20829C 801DD73C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 2082A0 801DD740 AC22DC50 */  sw    $v0, -0x23b0($at)
/* 2082A4 801DD744 03E00008 */  jr    $ra
/* 2082A8 801DD748 27BD0028 */   addiu $sp, $sp, 0x28

/* 2082AC 801DD74C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2082B0 801DD750 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2082B4 801DD754 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2082B8 801DD758 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2082BC 801DD75C AFA40018 */  sw    $a0, 0x18($sp)
/* 2082C0 801DD760 8DCF0000 */  lw    $t7, ($t6)
/* 2082C4 801DD764 3C01800E */  lui   $at, 0x800e
/* 2082C8 801DD768 000FC080 */  sll   $t8, $t7, 2
/* 2082CC 801DD76C 00380821 */  addu  $at, $at, $t8
/* 2082D0 801DD770 0C02CCFD */  jal   func_800B33F4
/* 2082D4 801DD774 AC20DFD0 */   sw    $zero, -0x2030($at)
/* 2082D8 801DD778 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 2082DC 801DD77C 0C02BB30 */  jal   func_800AECC0
/* 2082E0 801DD780 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 2082E4 801DD784 3C040001 */  lui   $a0, (0x000103CB >> 16) # lui $a0, 1
/* 2082E8 801DD788 348403CB */  ori   $a0, (0x000103CB & 0xFFFF) # ori $a0, $a0, 0x3cb
/* 2082EC 801DD78C 0C02AA19 */  jal   func_800AA864
/* 2082F0 801DD790 24050002 */   li    $a1, 2
/* 2082F4 801DD794 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 2082F8 801DD798 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 2082FC 801DD79C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 208300 801DD7A0 3C01800E */  lui   $at, 0x800e
/* 208304 801DD7A4 8D090000 */  lw    $t1, ($t0)
/* 208308 801DD7A8 24190002 */  li    $t9, 2
/* 20830C 801DD7AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 208310 801DD7B0 00095080 */  sll   $t2, $t1, 2
/* 208314 801DD7B4 002A0821 */  addu  $at, $at, $t2
/* 208318 801DD7B8 03E00008 */  jr    $ra
/* 20831C 801DD7BC AC39DC50 */   sw    $t9, -0x23b0($at)

/* 208320 801DD7C0 03E00008 */  jr    $ra
/* 208324 801DD7C4 AFA40000 */   sw    $a0, ($sp)

/* 208328 801DD7C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 20832C 801DD7CC AFBF0024 */  sw    $ra, 0x24($sp)
/* 208330 801DD7D0 AFA40028 */  sw    $a0, 0x28($sp)
/* 208334 801DD7D4 AFB20020 */  sw    $s2, 0x20($sp)
/* 208338 801DD7D8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 20833C 801DD7DC AFB00018 */  sw    $s0, 0x18($sp)
/* 208340 801DD7E0 0C006291 */  jal   random_soft_s32_range
/* 208344 801DD7E4 24040009 */   li    $a0, 9
/* 208348 801DD7E8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20834C 801DD7EC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 208350 801DD7F0 8E050000 */  lw    $a1, ($s0)
/* 208354 801DD7F4 3C12800F */  lui   $s2, %hi(D_800E9AA0) # $s2, 0x800f
/* 208358 801DD7F8 26529AA0 */  addiu $s2, %lo(D_800E9AA0) # addiu $s2, $s2, -0x6560
/* 20835C 801DD7FC 8CAE0000 */  lw    $t6, ($a1)
/* 208360 801DD800 3C11801E */  lui   $s1, %hi(D_801E6520) # $s1, 0x801e
/* 208364 801DD804 26316520 */  addiu $s1, %lo(D_801E6520) # addiu $s1, $s1, 0x6520
/* 208368 801DD808 000E7880 */  sll   $t7, $t6, 2
/* 20836C 801DD80C 024F2021 */  addu  $a0, $s2, $t7
/* 208370 801DD810 8C880000 */  lw    $t0, ($a0)
/* 208374 801DD814 0002C080 */  sll   $t8, $v0, 2
/* 208378 801DD818 0238C821 */  addu  $t9, $s1, $t8
/* 20837C 801DD81C 00084880 */  sll   $t1, $t0, 2
/* 208380 801DD820 02295021 */  addu  $t2, $s1, $t1
/* 208384 801DD824 8D4B0000 */  lw    $t3, ($t2)
/* 208388 801DD828 8F230000 */  lw    $v1, ($t9)
/* 20838C 801DD82C 00403025 */  move  $a2, $v0
/* 208390 801DD830 55630012 */  bnel  $t3, $v1, .L801DD87C_ovl15
/* 208394 801DD834 24010003 */   li    $at, 3
.L801DD838_ovl15:
/* 208398 801DD838 0C006291 */  jal   random_soft_s32_range
/* 20839C 801DD83C 24040009 */   li    $a0, 9
/* 2083A0 801DD840 8E050000 */  lw    $a1, ($s0)
/* 2083A4 801DD844 00027080 */  sll   $t6, $v0, 2
/* 2083A8 801DD848 022E7821 */  addu  $t7, $s1, $t6
/* 2083AC 801DD84C 8CAC0000 */  lw    $t4, ($a1)
/* 2083B0 801DD850 8DE30000 */  lw    $v1, ($t7)
/* 2083B4 801DD854 00403025 */  move  $a2, $v0
/* 2083B8 801DD858 000C6880 */  sll   $t5, $t4, 2
/* 2083BC 801DD85C 024D2021 */  addu  $a0, $s2, $t5
/* 2083C0 801DD860 8C980000 */  lw    $t8, ($a0)
/* 2083C4 801DD864 0018C880 */  sll   $t9, $t8, 2
/* 2083C8 801DD868 02394021 */  addu  $t0, $s1, $t9
/* 2083CC 801DD86C 8D090000 */  lw    $t1, ($t0)
/* 2083D0 801DD870 1123FFF1 */  beq   $t1, $v1, .L801DD838_ovl15
/* 2083D4 801DD874 00000000 */   nop   
/* 2083D8 801DD878 24010003 */  li    $at, 3
.L801DD87C_ovl15:
/* 2083DC 801DD87C 10610009 */  beq   $v1, $at, .L801DD8A4_ovl15
/* 2083E0 801DD880 24010004 */   li    $at, 4
/* 2083E4 801DD884 10610007 */  beq   $v1, $at, .L801DD8A4_ovl15
/* 2083E8 801DD888 24010005 */   li    $at, 5
/* 2083EC 801DD88C 1061000C */  beq   $v1, $at, .L801DD8C0_ovl15
/* 2083F0 801DD890 24010006 */   li    $at, 6
/* 2083F4 801DD894 1061000A */  beq   $v1, $at, .L801DD8C0_ovl15
/* 2083F8 801DD898 00000000 */   nop   
/* 2083FC 801DD89C 1000001C */  b     .L801DD910_ovl15
/* 208400 801DD8A0 AC860000 */   sw    $a2, ($a0)
.L801DD8A4_ovl15:
/* 208404 801DD8A4 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 208408 801DD8A8 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 20840C 801DD8AC AE000004 */  sw    $zero, 4($s0)
/* 208410 801DD8B0 8CAA0000 */  lw    $t2, ($a1)
/* 208414 801DD8B4 000A5880 */  sll   $t3, $t2, 2
/* 208418 801DD8B8 10000014 */  b     .L801DD90C_ovl15
/* 20841C 801DD8BC 024B2021 */   addu  $a0, $s2, $t3
.L801DD8C0_ovl15:
/* 208420 801DD8C0 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 208424 801DD8C4 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 208428 801DD8C8 8E0C0004 */  lw    $t4, 4($s0)
/* 20842C 801DD8CC 258D0001 */  addiu $t5, $t4, 1
/* 208430 801DD8D0 29A10005 */  slti  $at, $t5, 5
/* 208434 801DD8D4 1420000A */  bnez  $at, .L801DD900_ovl15
/* 208438 801DD8D8 AE0D0004 */   sw    $t5, 4($s0)
/* 20843C 801DD8DC 0C006291 */  jal   random_soft_s32_range
/* 208440 801DD8E0 24040002 */   li    $a0, 2
/* 208444 801DD8E4 10400003 */  beqz  $v0, .L801DD8F4_ovl15
/* 208448 801DD8E8 3C058005 */   lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 20844C 801DD8EC 10000002 */  b     .L801DD8F8_ovl15
/* 208450 801DD8F0 00003025 */   move  $a2, $zero
.L801DD8F4_ovl15:
/* 208454 801DD8F4 24060002 */  li    $a2, 2
.L801DD8F8_ovl15:
/* 208458 801DD8F8 AE000004 */  sw    $zero, 4($s0)
/* 20845C 801DD8FC 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
.L801DD900_ovl15:
/* 208460 801DD900 8CAF0000 */  lw    $t7, ($a1)
/* 208464 801DD904 000FC080 */  sll   $t8, $t7, 2
/* 208468 801DD908 02582021 */  addu  $a0, $s2, $t8
.L801DD90C_ovl15:
/* 20846C 801DD90C AC860000 */  sw    $a2, ($a0)
.L801DD910_ovl15:
/* 208470 801DD910 8CA20000 */  lw    $v0, ($a1)
/* 208474 801DD914 8FBF0024 */  lw    $ra, 0x24($sp)
/* 208478 801DD918 3C01800E */  lui   $at, 0x800e
/* 20847C 801DD91C 00021080 */  sll   $v0, $v0, 2
/* 208480 801DD920 0242C821 */  addu  $t9, $s2, $v0
/* 208484 801DD924 8F280000 */  lw    $t0, ($t9)
/* 208488 801DD928 00220821 */  addu  $at, $at, $v0
/* 20848C 801DD92C 8FB20020 */  lw    $s2, 0x20($sp)
/* 208490 801DD930 00084880 */  sll   $t1, $t0, 2
/* 208494 801DD934 02295021 */  addu  $t2, $s1, $t1
/* 208498 801DD938 8D4B0000 */  lw    $t3, ($t2)
/* 20849C 801DD93C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 2084A0 801DD940 8FB00018 */  lw    $s0, 0x18($sp)
/* 2084A4 801DD944 27BD0028 */  addiu $sp, $sp, 0x28
/* 2084A8 801DD948 03E00008 */  jr    $ra
/* 2084AC 801DD94C AC2BDC50 */   sw    $t3, -0x23b0($at)

/* 2084B0 801DD950 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2084B4 801DD954 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2084B8 801DD958 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2084BC 801DD95C AFBF0014 */  sw    $ra, 0x14($sp)
/* 2084C0 801DD960 AFA40018 */  sw    $a0, 0x18($sp)
/* 2084C4 801DD964 8C6E0000 */  lw    $t6, ($v1)
/* 2084C8 801DD968 3C01800E */  lui   $at, 0x800e
/* 2084CC 801DD96C 24040001 */  li    $a0, 1
/* 2084D0 801DD970 000E7880 */  sll   $t7, $t6, 2
/* 2084D4 801DD974 002F0821 */  addu  $at, $at, $t7
/* 2084D8 801DD978 AC24DFD0 */  sw    $a0, -0x2030($at)
/* 2084DC 801DD97C 8C780000 */  lw    $t8, ($v1)
/* 2084E0 801DD980 3C01800E */  lui   $at, 0x800e
/* 2084E4 801DD984 44802000 */  mtc1  $zero, $f4
/* 2084E8 801DD988 0018C880 */  sll   $t9, $t8, 2
/* 2084EC 801DD98C 00390821 */  addu  $at, $at, $t9
/* 2084F0 801DD990 AC24DC50 */  sw    $a0, -0x23b0($at)
/* 2084F4 801DD994 8C680000 */  lw    $t0, ($v1)
/* 2084F8 801DD998 3C01800F */  lui   $at, 0x800f
/* 2084FC 801DD99C 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 208500 801DD9A0 00084880 */  sll   $t1, $t0, 2
/* 208504 801DD9A4 00290821 */  addu  $at, $at, $t1
/* 208508 801DD9A8 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 20850C 801DD9AC E424AC20 */  swc1  $f4, -0x53e0($at)
/* 208510 801DD9B0 8CA20020 */  lw    $v0, 0x20($a1)
/* 208514 801DD9B4 10400007 */  beqz  $v0, .L801DD9D4_ovl15
/* 208518 801DD9B8 00000000 */   nop   
/* 20851C 801DD9BC 1044001A */  beq   $v0, $a0, .L801DDA28_ovl15
/* 208520 801DD9C0 24010002 */   li    $at, 2
/* 208524 801DD9C4 5041003C */  beql  $v0, $at, .L801DDAB8_ovl15
/* 208528 801DD9C8 8CB8001C */   lw    $t8, 0x1c($a1)
/* 20852C 801DD9CC 1000003A */  b     .L801DDAB8_ovl15
/* 208530 801DD9D0 8CB8001C */   lw    $t8, 0x1c($a1)
.L801DD9D4_ovl15:
/* 208534 801DD9D4 0C006291 */  jal   random_soft_s32_range
/* 208538 801DD9D8 24040002 */   li    $a0, 2
/* 20853C 801DD9DC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 208540 801DD9E0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 208544 801DD9E4 3C06800F */  lui   $a2, %hi(D_800E9C60) # $a2, 0x800f
/* 208548 801DD9E8 24C69C60 */  addiu $a2, %lo(D_800E9C60) # addiu $a2, $a2, -0x63a0
/* 20854C 801DD9EC 8C6A0000 */  lw    $t2, ($v1)
/* 208550 801DD9F0 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 208554 801DD9F4 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 208558 801DD9F8 000A5880 */  sll   $t3, $t2, 2
/* 20855C 801DD9FC 00CB6021 */  addu  $t4, $a2, $t3
/* 208560 801DDA00 AD820000 */  sw    $v0, ($t4)
/* 208564 801DDA04 8C6D0000 */  lw    $t5, ($v1)
/* 208568 801DDA08 8CB90020 */  lw    $t9, 0x20($a1)
/* 20856C 801DDA0C 000D7080 */  sll   $t6, $t5, 2
/* 208570 801DDA10 00CE7821 */  addu  $t7, $a2, $t6
/* 208574 801DDA14 8DF80000 */  lw    $t8, ($t7)
/* 208578 801DDA18 27280001 */  addiu $t0, $t9, 1
/* 20857C 801DDA1C ACA80020 */  sw    $t0, 0x20($a1)
/* 208580 801DDA20 10000033 */  b     .L801DDAF0_ovl15
/* 208584 801DDA24 ACB8001C */   sw    $t8, 0x1c($a1)
.L801DDA28_ovl15:
/* 208588 801DDA28 0C006291 */  jal   random_soft_s32_range
/* 20858C 801DDA2C 24040004 */   li    $a0, 4
/* 208590 801DDA30 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 208594 801DDA34 1440000B */  bnez  $v0, .L801DDA64_ovl15
/* 208598 801DDA38 24A57098 */   addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 20859C 801DDA3C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2085A0 801DDA40 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2085A4 801DDA44 3C06800F */  lui   $a2, %hi(D_800E9C60) # $a2, 0x800f
/* 2085A8 801DDA48 8CA9001C */  lw    $t1, 0x1c($a1)
/* 2085AC 801DDA4C 8C6A0000 */  lw    $t2, ($v1)
/* 2085B0 801DDA50 24C69C60 */  addiu $a2, %lo(D_800E9C60) # addiu $a2, $a2, -0x63a0
/* 2085B4 801DDA54 000A5880 */  sll   $t3, $t2, 2
/* 2085B8 801DDA58 00CB6021 */  addu  $t4, $a2, $t3
/* 2085BC 801DDA5C 1000000C */  b     .L801DDA90_ovl15
/* 2085C0 801DDA60 AD890000 */   sw    $t1, ($t4)
.L801DDA64_ovl15:
/* 2085C4 801DDA64 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2085C8 801DDA68 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2085CC 801DDA6C 8CAD001C */  lw    $t5, 0x1c($a1)
/* 2085D0 801DDA70 3C06800F */  lui   $a2, %hi(D_800E9C60) # $a2, 0x800f
/* 2085D4 801DDA74 8C780000 */  lw    $t8, ($v1)
/* 2085D8 801DDA78 24C69C60 */  addiu $a2, %lo(D_800E9C60) # addiu $a2, $a2, -0x63a0
/* 2085DC 801DDA7C 01A07027 */  not   $t6, $t5
/* 2085E0 801DDA80 0018C880 */  sll   $t9, $t8, 2
/* 2085E4 801DDA84 00D94021 */  addu  $t0, $a2, $t9
/* 2085E8 801DDA88 31CF0001 */  andi  $t7, $t6, 1
/* 2085EC 801DDA8C AD0F0000 */  sw    $t7, ($t0)
.L801DDA90_ovl15:
/* 2085F0 801DDA90 8C6A0000 */  lw    $t2, ($v1)
/* 2085F4 801DDA94 8CAD0020 */  lw    $t5, 0x20($a1)
/* 2085F8 801DDA98 000A5880 */  sll   $t3, $t2, 2
/* 2085FC 801DDA9C 00CB4821 */  addu  $t1, $a2, $t3
/* 208600 801DDAA0 8D2C0000 */  lw    $t4, ($t1)
/* 208604 801DDAA4 25AE0001 */  addiu $t6, $t5, 1
/* 208608 801DDAA8 ACAE0020 */  sw    $t6, 0x20($a1)
/* 20860C 801DDAAC 10000010 */  b     .L801DDAF0_ovl15
/* 208610 801DDAB0 ACAC001C */   sw    $t4, 0x1c($a1)
/* 208614 801DDAB4 8CB8001C */  lw    $t8, 0x1c($a1)
.L801DDAB8_ovl15:
/* 208618 801DDAB8 8C680000 */  lw    $t0, ($v1)
/* 20861C 801DDABC 3C06800F */  lui   $a2, %hi(D_800E9C60) # $a2, 0x800f
/* 208620 801DDAC0 24C69C60 */  addiu $a2, %lo(D_800E9C60) # addiu $a2, $a2, -0x63a0
/* 208624 801DDAC4 0300C827 */  not   $t9, $t8
/* 208628 801DDAC8 00085080 */  sll   $t2, $t0, 2
/* 20862C 801DDACC 00CA5821 */  addu  $t3, $a2, $t2
/* 208630 801DDAD0 332F0001 */  andi  $t7, $t9, 1
/* 208634 801DDAD4 AD6F0000 */  sw    $t7, ($t3)
/* 208638 801DDAD8 8C690000 */  lw    $t1, ($v1)
/* 20863C 801DDADC 00096080 */  sll   $t4, $t1, 2
/* 208640 801DDAE0 00CC6821 */  addu  $t5, $a2, $t4
/* 208644 801DDAE4 8DAE0000 */  lw    $t6, ($t5)
/* 208648 801DDAE8 ACA40020 */  sw    $a0, 0x20($a1)
/* 20864C 801DDAEC ACAE001C */  sw    $t6, 0x1c($a1)
.L801DDAF0_ovl15:
/* 208650 801DDAF0 8C780000 */  lw    $t8, ($v1)
/* 208654 801DDAF4 3C05801E */  lui   $a1, 0x801e
/* 208658 801DDAF8 24040004 */  li    $a0, 4
/* 20865C 801DDAFC 0018C880 */  sll   $t9, $t8, 2
/* 208660 801DDB00 00D94021 */  addu  $t0, $a2, $t9
/* 208664 801DDB04 8D0A0000 */  lw    $t2, ($t0)
/* 208668 801DDB08 000A7880 */  sll   $t7, $t2, 2
/* 20866C 801DDB0C 00AF2821 */  addu  $a1, $a1, $t7
/* 208670 801DDB10 0C067829 */  jal   func_8019E0A4_ovl15
/* 208674 801DDB14 8CA5654C */   lw    $a1, 0x654c($a1)
/* 208678 801DDB18 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 20867C 801DDB1C C4266B10 */  lwc1  $f6, %lo(D_800D6B10)($at)
/* 208680 801DDB20 3C01801E */  lui   $at, %hi(D_801E6834) # $at, 0x801e
/* 208684 801DDB24 C4286834 */  lwc1  $f8, %lo(D_801E6834)($at)
/* 208688 801DDB28 46083302 */  mul.s $f12, $f6, $f8
/* 20868C 801DDB2C 0C02BB30 */  jal   func_800AECC0
/* 208690 801DDB30 00000000 */   nop   
/* 208694 801DDB34 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 208698 801DDB38 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 20869C 801DDB3C 3C06800F */  lui   $a2, %hi(D_800E9C60) # $a2, 0x800f
/* 2086A0 801DDB40 24C69C60 */  addiu $a2, %lo(D_800E9C60) # addiu $a2, $a2, -0x63a0
/* 2086A4 801DDB44 8D690000 */  lw    $t1, ($t3)
/* 2086A8 801DDB48 3C04801E */  lui   $a0, 0x801e
/* 2086AC 801DDB4C 00096080 */  sll   $t4, $t1, 2
/* 2086B0 801DDB50 00CC6821 */  addu  $t5, $a2, $t4
/* 2086B4 801DDB54 8DAE0000 */  lw    $t6, ($t5)
/* 2086B8 801DDB58 000EC080 */  sll   $t8, $t6, 2
/* 2086BC 801DDB5C 00982021 */  addu  $a0, $a0, $t8
/* 2086C0 801DDB60 0C02A806 */  jal   func_800AA018
/* 2086C4 801DDB64 8C846544 */   lw    $a0, 0x6544($a0)
/* 2086C8 801DDB68 0C002DAF */  jal   finish_current_thread
/* 2086CC 801DDB6C 2404002D */   li    $a0, 45
/* 2086D0 801DDB70 0C029D9E */  jal   play_sound
/* 2086D4 801DDB74 240401A4 */   li    $a0, 420
/* 2086D8 801DDB78 24040004 */  li    $a0, 4
/* 2086DC 801DDB7C 0C067829 */  jal   func_8019E0A4_ovl15
/* 2086E0 801DDB80 24050009 */   li    $a1, 9
/* 2086E4 801DDB84 0C02BC9F */  jal   func_800AF27C
/* 2086E8 801DDB88 00000000 */   nop   
/* 2086EC 801DDB8C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 2086F0 801DDB90 0C02BB30 */  jal   func_800AECC0
/* 2086F4 801DDB94 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 2086F8 801DDB98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2086FC 801DDB9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 208700 801DDBA0 03E00008 */  jr    $ra
/* 208704 801DDBA4 00000000 */   nop   

/* 208708 801DDBA8 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 20870C 801DDBAC 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 208710 801DDBB0 8CEE0000 */  lw    $t6, ($a3)
/* 208714 801DDBB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 208718 801DDBB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20871C 801DDBBC AFA40018 */  sw    $a0, 0x18($sp)
/* 208720 801DDBC0 8DC20000 */  lw    $v0, ($t6)
/* 208724 801DDBC4 3C01800F */  lui   $at, 0x800f
/* 208728 801DDBC8 00021080 */  sll   $v0, $v0, 2
/* 20872C 801DDBCC 00220821 */  addu  $at, $at, $v0
/* 208730 801DDBD0 C420AC20 */  lwc1  $f0, -0x53e0($at)
/* 208734 801DDBD4 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 208738 801DDBD8 44812000 */  mtc1  $at, $f4
/* 20873C 801DDBDC 3C014304 */  li    $at, 0x43040000 # 132.000000
/* 208740 801DDBE0 4600203E */  c.le.s $f4, $f0
/* 208744 801DDBE4 00000000 */  nop   
/* 208748 801DDBE8 45000056 */  bc1f  .L801DDD44_ovl15
/* 20874C 801DDBEC 00000000 */   nop   
/* 208750 801DDBF0 44813000 */  mtc1  $at, $f6
/* 208754 801DDBF4 3C03800F */  lui   $v1, 0x800f
/* 208758 801DDBF8 3C0F800F */  lui   $t7, 0x800f
/* 20875C 801DDBFC 4606003E */  c.le.s $f0, $f6
/* 208760 801DDC00 00621821 */  addu  $v1, $v1, $v0
/* 208764 801DDC04 01E27821 */  addu  $t7, $t7, $v0
/* 208768 801DDC08 4500004E */  bc1f  .L801DDD44_ovl15
/* 20876C 801DDC0C 00000000 */   nop   
/* 208770 801DDC10 8C63BDA0 */  lw    $v1, -0x4260($v1)
/* 208774 801DDC14 8DEF9C60 */  lw    $t7, -0x63a0($t7)
/* 208778 801DDC18 24630001 */  addiu $v1, $v1, 1
/* 20877C 801DDC1C 11E0001B */  beqz  $t7, .L801DDC8C_ovl15
/* 208780 801DDC20 2C630001 */   sltiu $v1, $v1, 1
/* 208784 801DDC24 10600008 */  beqz  $v1, .L801DDC48_ovl15
/* 208788 801DDC28 3C09800E */   lui   $t1, 0x800e
/* 20878C 801DDC2C 3C19800E */  lui   $t9, 0x800e
/* 208790 801DDC30 0322C821 */  addu  $t9, $t9, $v0
/* 208794 801DDC34 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 208798 801DDC38 3C18801E */  lui   $t8, %hi(D_801D8CA0) # $t8, 0x801e
/* 20879C 801DDC3C 27188CA0 */  addiu $t8, %lo(D_801D8CA0) # addiu $t8, $t8, -0x7360
/* 2087A0 801DDC40 10000006 */  b     .L801DDC5C_ovl15
/* 2087A4 801DDC44 AF38008C */   sw    $t8, 0x8c($t9)
.L801DDC48_ovl15:
/* 2087A8 801DDC48 01224821 */  addu  $t1, $t1, $v0
/* 2087AC 801DDC4C 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 2087B0 801DDC50 3C08801E */  lui   $t0, %hi(D_801D8C7C) # $t0, 0x801e
/* 2087B4 801DDC54 25088C7C */  addiu $t0, %lo(D_801D8C7C) # addiu $t0, $t0, -0x7384
/* 2087B8 801DDC58 AD28008C */  sw    $t0, 0x8c($t1)
.L801DDC5C_ovl15:
/* 2087BC 801DDC5C 8CEA0000 */  lw    $t2, ($a3)
/* 2087C0 801DDC60 3C0D800E */  lui   $t5, 0x800e
/* 2087C4 801DDC64 00003025 */  move  $a2, $zero
/* 2087C8 801DDC68 8D4B0000 */  lw    $t3, ($t2)
/* 2087CC 801DDC6C 000B6080 */  sll   $t4, $t3, 2
/* 2087D0 801DDC70 01AC6821 */  addu  $t5, $t5, $t4
/* 2087D4 801DDC74 8DADFBD0 */  lw    $t5, -0x430($t5)
/* 2087D8 801DDC78 8DA40044 */  lw    $a0, 0x44($t5)
/* 2087DC 801DDC7C 0C0785DF */  jal   func_801E177C_ovl15
/* 2087E0 801DDC80 00802825 */   move  $a1, $a0
/* 2087E4 801DDC84 10000019 */  b     .L801DDCEC_ovl15
/* 2087E8 801DDC88 00000000 */   nop   
.L801DDC8C_ovl15:
/* 2087EC 801DDC8C 10600008 */  beqz  $v1, .L801DDCB0_ovl15
/* 2087F0 801DDC90 3C19800E */   lui   $t9, 0x800e
/* 2087F4 801DDC94 3C0F800E */  lui   $t7, 0x800e
/* 2087F8 801DDC98 01E27821 */  addu  $t7, $t7, $v0
/* 2087FC 801DDC9C 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 208800 801DDCA0 3C0E801E */  lui   $t6, %hi(D_801D8CE8) # $t6, 0x801e
/* 208804 801DDCA4 25CE8CE8 */  addiu $t6, %lo(D_801D8CE8) # addiu $t6, $t6, -0x7318
/* 208808 801DDCA8 10000006 */  b     .L801DDCC4_ovl15
/* 20880C 801DDCAC ADEE008C */   sw    $t6, 0x8c($t7)
.L801DDCB0_ovl15:
/* 208810 801DDCB0 0322C821 */  addu  $t9, $t9, $v0
/* 208814 801DDCB4 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 208818 801DDCB8 3C18801E */  lui   $t8, %hi(D_801D8CC4) # $t8, 0x801e
/* 20881C 801DDCBC 27188CC4 */  addiu $t8, %lo(D_801D8CC4) # addiu $t8, $t8, -0x733c
/* 208820 801DDCC0 AF38008C */  sw    $t8, 0x8c($t9)
.L801DDCC4_ovl15:
/* 208824 801DDCC4 8CE80000 */  lw    $t0, ($a3)
/* 208828 801DDCC8 3C0B800E */  lui   $t3, 0x800e
/* 20882C 801DDCCC 00003025 */  move  $a2, $zero
/* 208830 801DDCD0 8D090000 */  lw    $t1, ($t0)
/* 208834 801DDCD4 00095080 */  sll   $t2, $t1, 2
/* 208838 801DDCD8 016A5821 */  addu  $t3, $t3, $t2
/* 20883C 801DDCDC 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 208840 801DDCE0 8D64002C */  lw    $a0, 0x2c($t3)
/* 208844 801DDCE4 0C0785DF */  jal   func_801E177C_ovl15
/* 208848 801DDCE8 00802825 */   move  $a1, $a0
.L801DDCEC_ovl15:
/* 20884C 801DDCEC 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 208850 801DDCF0 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 208854 801DDCF4 3C0D800E */  lui   $t5, 0x800e
/* 208858 801DDCF8 24010007 */  li    $at, 7
/* 20885C 801DDCFC 8D820000 */  lw    $v0, ($t4)
/* 208860 801DDD00 3C0E800F */  lui   $t6, 0x800f
/* 208864 801DDD04 00021080 */  sll   $v0, $v0, 2
/* 208868 801DDD08 01A26821 */  addu  $t5, $t5, $v0
/* 20886C 801DDD0C 8DADDC50 */  lw    $t5, -0x23b0($t5)
/* 208870 801DDD10 01C27021 */  addu  $t6, $t6, $v0
/* 208874 801DDD14 11A1000B */  beq   $t5, $at, .L801DDD44_ovl15
/* 208878 801DDD18 00000000 */   nop   
/* 20887C 801DDD1C 8DCE83E0 */  lw    $t6, -0x7c20($t6)
/* 208880 801DDD20 24010001 */  li    $at, 1
/* 208884 801DDD24 15C10007 */  bne   $t6, $at, .L801DDD44_ovl15
/* 208888 801DDD28 00000000 */   nop   
/* 20888C 801DDD2C 0C07775D */  jal   func_801DDD74_ovl15
/* 208890 801DDD30 8FA40018 */   lw    $a0, 0x18($sp)
/* 208894 801DDD34 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 208898 801DDD38 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 20889C 801DDD3C 8DE20000 */  lw    $v0, ($t7)
/* 2088A0 801DDD40 00021080 */  sll   $v0, $v0, 2
.L801DDD44_ovl15:
/* 2088A4 801DDD44 3C18800F */  lui   $t8, %hi(D_800EAC20) # $t8, 0x800f
/* 2088A8 801DDD48 2718AC20 */  addiu $t8, %lo(D_800EAC20) # addiu $t8, $t8, -0x53e0
/* 2088AC 801DDD4C 3C01800E */  lui   $at, 0x800e
/* 2088B0 801DDD50 00220821 */  addu  $at, $at, $v0
/* 2088B4 801DDD54 00581821 */  addu  $v1, $v0, $t8
/* 2088B8 801DDD58 C4680000 */  lwc1  $f8, ($v1)
/* 2088BC 801DDD5C C42A09D0 */  lwc1  $f10, 0x9d0($at)
/* 2088C0 801DDD60 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2088C4 801DDD64 27BD0018 */  addiu $sp, $sp, 0x18
/* 2088C8 801DDD68 460A4400 */  add.s $f16, $f8, $f10
/* 2088CC 801DDD6C 03E00008 */  jr    $ra
/* 2088D0 801DDD70 E4700000 */   swc1  $f16, ($v1)

/* 2088D4 801DDD74 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2088D8 801DDD78 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2088DC 801DDD7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2088E0 801DDD80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2088E4 801DDD84 AFA40018 */  sw    $a0, 0x18($sp)
/* 2088E8 801DDD88 8C6F0000 */  lw    $t7, ($v1)
/* 2088EC 801DDD8C 3C01800E */  lui   $at, 0x800e
/* 2088F0 801DDD90 240E0007 */  li    $t6, 7
/* 2088F4 801DDD94 000FC080 */  sll   $t8, $t7, 2
/* 2088F8 801DDD98 00380821 */  addu  $at, $at, $t8
/* 2088FC 801DDD9C AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 208900 801DDDA0 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 208904 801DDDA4 C4266E5C */  lwc1  $f6, %lo(D_800D6E5C)($at)
/* 208908 801DDDA8 44802000 */  mtc1  $zero, $f4
/* 20890C 801DDDAC 00000000 */  nop   
/* 208910 801DDDB0 46062032 */  c.eq.s $f4, $f6
/* 208914 801DDDB4 00000000 */  nop   
/* 208918 801DDDB8 45030008 */  bc1tl .L801DDDDC_ovl15
/* 20891C 801DDDBC 24040004 */   li    $a0, 4
/* 208920 801DDDC0 8C790000 */  lw    $t9, ($v1)
/* 208924 801DDDC4 3C01800E */  lui   $at, 0x800e
/* 208928 801DDDC8 00194080 */  sll   $t0, $t9, 2
/* 20892C 801DDDCC 00280821 */  addu  $at, $at, $t0
/* 208930 801DDDD0 0C02F047 */  jal   func_800BC11C
/* 208934 801DDDD4 C42C7B20 */   lwc1  $f12, 0x7b20($at)
/* 208938 801DDDD8 24040004 */  li    $a0, 4
.L801DDDDC_ovl15:
/* 20893C 801DDDDC 0C067829 */  jal   func_8019E0A4_ovl15
/* 208940 801DDDE0 24050002 */   li    $a1, 2
/* 208944 801DDDE4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 208948 801DDDE8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 20894C 801DDDEC 3C01800F */  lui   $at, 0x800f
/* 208950 801DDDF0 240B0001 */  li    $t3, 1
/* 208954 801DDDF4 8C690000 */  lw    $t1, ($v1)
/* 208958 801DDDF8 240401E7 */  li    $a0, 487
/* 20895C 801DDDFC 00095080 */  sll   $t2, $t1, 2
/* 208960 801DDE00 002A0821 */  addu  $at, $at, $t2
/* 208964 801DDE04 AC22BDA0 */  sw    $v0, -0x4260($at)
/* 208968 801DDE08 8C6C0000 */  lw    $t4, ($v1)
/* 20896C 801DDE0C 3C01800F */  lui   $at, 0x800f
/* 208970 801DDE10 000C6880 */  sll   $t5, $t4, 2
/* 208974 801DDE14 002D0821 */  addu  $at, $at, $t5
/* 208978 801DDE18 0C029D9E */  jal   play_sound
/* 20897C 801DDE1C AC2BA1A0 */   sw    $t3, -0x5e60($at)
/* 208980 801DDE20 24040002 */  li    $a0, 2
/* 208984 801DDE24 0C02ED1A */  jal   func_800BB468
/* 208988 801DDE28 00002825 */   move  $a1, $zero
/* 20898C 801DDE2C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 208990 801DDE30 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 208994 801DDE34 3C01800E */  lui   $at, 0x800e
/* 208998 801DDE38 3C05800E */  lui   $a1, 0x800e
/* 20899C 801DDE3C 8DE20000 */  lw    $v0, ($t7)
/* 2089A0 801DDE40 3C07800E */  lui   $a3, 0x800e
/* 2089A4 801DDE44 24040002 */  li    $a0, 2
/* 2089A8 801DDE48 00021080 */  sll   $v0, $v0, 2
/* 2089AC 801DDE4C 00220821 */  addu  $at, $at, $v0
/* 2089B0 801DDE50 C4282790 */  lwc1  $f8, 0x2790($at)
/* 2089B4 801DDE54 3C0143C8 */  li    $at, 0x43C80000 # 400.000000
/* 2089B8 801DDE58 44815000 */  mtc1  $at, $f10
/* 2089BC 801DDE5C 00A22821 */  addu  $a1, $a1, $v0
/* 2089C0 801DDE60 00E23821 */  addu  $a3, $a3, $v0
/* 2089C4 801DDE64 460A4400 */  add.s $f16, $f8, $f10
/* 2089C8 801DDE68 8CE72950 */  lw    $a3, 0x2950($a3)
/* 2089CC 801DDE6C 8CA525D0 */  lw    $a1, 0x25d0($a1)
/* 2089D0 801DDE70 44068000 */  mfc1  $a2, $f16
/* 2089D4 801DDE74 0C03F5D5 */  jal   func_800FD754
/* 2089D8 801DDE78 00000000 */   nop   
/* 2089DC 801DDE7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2089E0 801DDE80 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 2089E4 801DDE84 AC207154 */  sw    $zero, %lo(D_800D7154)($at)
/* 2089E8 801DDE88 03E00008 */  jr    $ra
/* 2089EC 801DDE8C 27BD0018 */   addiu $sp, $sp, 0x18

/* 2089F0 801DDE90 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 2089F4 801DDE94 AFBE0058 */  sw    $fp, 0x58($sp)
/* 2089F8 801DDE98 3C1E8005 */  lui   $fp, %hi(D_8004A7C4) # $fp, 0x8005
/* 2089FC 801DDE9C 27DEA7C4 */  addiu $fp, %lo(D_8004A7C4) # addiu $fp, $fp, -0x583c
/* 208A00 801DDEA0 8FC60000 */  lw    $a2, ($fp)
/* 208A04 801DDEA4 AFBF005C */  sw    $ra, 0x5c($sp)
/* 208A08 801DDEA8 AFB70054 */  sw    $s7, 0x54($sp)
/* 208A0C 801DDEAC AFB60050 */  sw    $s6, 0x50($sp)
/* 208A10 801DDEB0 AFB5004C */  sw    $s5, 0x4c($sp)
/* 208A14 801DDEB4 AFB40048 */  sw    $s4, 0x48($sp)
/* 208A18 801DDEB8 AFB30044 */  sw    $s3, 0x44($sp)
/* 208A1C 801DDEBC AFB20040 */  sw    $s2, 0x40($sp)
/* 208A20 801DDEC0 AFB1003C */  sw    $s1, 0x3c($sp)
/* 208A24 801DDEC4 AFB00038 */  sw    $s0, 0x38($sp)
/* 208A28 801DDEC8 F7BA0030 */  sdc1  $f26, 0x30($sp)
/* 208A2C 801DDECC F7B80028 */  sdc1  $f24, 0x28($sp)
/* 208A30 801DDED0 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 208A34 801DDED4 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 208A38 801DDED8 AFA40060 */  sw    $a0, 0x60($sp)
/* 208A3C 801DDEDC 8CCF0000 */  lw    $t7, ($a2)
/* 208A40 801DDEE0 3C01800E */  lui   $at, 0x800e
/* 208A44 801DDEE4 240E0002 */  li    $t6, 2
/* 208A48 801DDEE8 000FC080 */  sll   $t8, $t7, 2
/* 208A4C 801DDEEC 00380821 */  addu  $at, $at, $t8
/* 208A50 801DDEF0 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 208A54 801DDEF4 8CC80000 */  lw    $t0, ($a2)
/* 208A58 801DDEF8 3C01800E */  lui   $at, 0x800e
/* 208A5C 801DDEFC 24190001 */  li    $t9, 1
/* 208A60 801DDF00 00084880 */  sll   $t1, $t0, 2
/* 208A64 801DDF04 00290821 */  addu  $at, $at, $t1
/* 208A68 801DDF08 AC39DC50 */  sw    $t9, -0x23b0($at)
/* 208A6C 801DDF0C 8CCB0000 */  lw    $t3, ($a2)
/* 208A70 801DDF10 3C01800F */  lui   $at, 0x800f
/* 208A74 801DDF14 240AFFFF */  li    $t2, -1
/* 208A78 801DDF18 000B6080 */  sll   $t4, $t3, 2
/* 208A7C 801DDF1C 002C0821 */  addu  $at, $at, $t4
/* 208A80 801DDF20 AC2A9FE0 */  sw    $t2, -0x6020($at)
/* 208A84 801DDF24 8CCD0000 */  lw    $t5, ($a2)
/* 208A88 801DDF28 4480C000 */  mtc1  $zero, $f24
/* 208A8C 801DDF2C 3C11800F */  lui   $s1, %hi(D_800EAC20) # $s1, 0x800f
/* 208A90 801DDF30 2631AC20 */  addiu $s1, %lo(D_800EAC20) # addiu $s1, $s1, -0x53e0
/* 208A94 801DDF34 000D7880 */  sll   $t7, $t5, 2
/* 208A98 801DDF38 022F7021 */  addu  $t6, $s1, $t7
/* 208A9C 801DDF3C E5D80000 */  swc1  $f24, ($t6)
/* 208AA0 801DDF40 8CD80000 */  lw    $t8, ($a2)
/* 208AA4 801DDF44 3C10800F */  lui   $s0, %hi(D_800E9E20) # $s0, 0x800f
/* 208AA8 801DDF48 26109E20 */  addiu $s0, %lo(D_800E9E20) # addiu $s0, $s0, -0x61e0
/* 208AAC 801DDF4C 00184080 */  sll   $t0, $t8, 2
/* 208AB0 801DDF50 0208C821 */  addu  $t9, $s0, $t0
/* 208AB4 801DDF54 AF200000 */  sw    $zero, ($t9)
/* 208AB8 801DDF58 24040004 */  li    $a0, 4
/* 208ABC 801DDF5C 0C067829 */  jal   func_8019E0A4_ovl15
/* 208AC0 801DDF60 24050007 */   li    $a1, 7
/* 208AC4 801DDF64 24040004 */  li    $a0, 4
/* 208AC8 801DDF68 0C067829 */  jal   func_8019E0A4_ovl15
/* 208ACC 801DDF6C 24050008 */   li    $a1, 8
/* 208AD0 801DDF70 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 208AD4 801DDF74 C4246B10 */  lwc1  $f4, %lo(D_800D6B10)($at)
/* 208AD8 801DDF78 3C01801E */  lui   $at, %hi(D_801E6838) # $at, 0x801e
/* 208ADC 801DDF7C C4266838 */  lwc1  $f6, %lo(D_801E6838)($at)
/* 208AE0 801DDF80 46062302 */  mul.s $f12, $f4, $f6
/* 208AE4 801DDF84 0C02BB30 */  jal   func_800AECC0
/* 208AE8 801DDF88 00000000 */   nop   
/* 208AEC 801DDF8C 3C040001 */  lui   $a0, (0x000103C1 >> 16) # lui $a0, 1
/* 208AF0 801DDF90 0C02A806 */  jal   func_800AA018
/* 208AF4 801DDF94 348403C1 */   ori   $a0, (0x000103C1 & 0xFFFF) # ori $a0, $a0, 0x3c1
/* 208AF8 801DDF98 8FC90000 */  lw    $t1, ($fp)
/* 208AFC 801DDF9C 3C01437E */  li    $at, 0x437E0000 # 254.000000
/* 208B00 801DDFA0 4481D000 */  mtc1  $at, $f26
/* 208B04 801DDFA4 8D220000 */  lw    $v0, ($t1)
/* 208B08 801DDFA8 3C0142F8 */  li    $at, 0x42F80000 # 124.000000
/* 208B0C 801DDFAC 00021080 */  sll   $v0, $v0, 2
/* 208B10 801DDFB0 02225821 */  addu  $t3, $s1, $v0
/* 208B14 801DDFB4 C5600000 */  lwc1  $f0, ($t3)
/* 208B18 801DDFB8 461A003E */  c.le.s $f0, $f26
/* 208B1C 801DDFBC 00000000 */  nop   
/* 208B20 801DDFC0 4502002B */  bc1fl .L801DE070_ovl15
/* 208B24 801DDFC4 240C0002 */   li    $t4, 2
/* 208B28 801DDFC8 4481B000 */  mtc1  $at, $f22
/* 208B2C 801DDFCC 3C01428C */  li    $at, 0x428C0000 # 70.000000
/* 208B30 801DDFD0 4481A000 */  mtc1  $at, $f20
/* 208B34 801DDFD4 00000000 */  nop   
/* 208B38 801DDFD8 02025021 */  addu  $t2, $s0, $v0
.L801DDFDC_ovl15:
/* 208B3C 801DDFDC 8D4C0000 */  lw    $t4, ($t2)
/* 208B40 801DDFE0 55800012 */  bnezl $t4, .L801DE02C_ovl15
/* 208B44 801DDFE4 4600B03C */   c.lt.s $f22, $f0
/* 208B48 801DDFE8 4600A03C */  c.lt.s $f20, $f0
/* 208B4C 801DDFEC 00000000 */  nop   
/* 208B50 801DDFF0 4502000E */  bc1fl .L801DE02C_ovl15
/* 208B54 801DDFF4 4600B03C */   c.lt.s $f22, $f0
/* 208B58 801DDFF8 0C029D9E */  jal   play_sound
/* 208B5C 801DDFFC 240401A4 */   li    $a0, 420
/* 208B60 801DE000 8FC60000 */  lw    $a2, ($fp)
/* 208B64 801DE004 240D0001 */  li    $t5, 1
/* 208B68 801DE008 8CCF0000 */  lw    $t7, ($a2)
/* 208B6C 801DE00C 000F7080 */  sll   $t6, $t7, 2
/* 208B70 801DE010 020EC021 */  addu  $t8, $s0, $t6
/* 208B74 801DE014 AF0D0000 */  sw    $t5, ($t8)
/* 208B78 801DE018 8CC80000 */  lw    $t0, ($a2)
/* 208B7C 801DE01C 0008C880 */  sll   $t9, $t0, 2
/* 208B80 801DE020 02394821 */  addu  $t1, $s1, $t9
/* 208B84 801DE024 C5200000 */  lwc1  $f0, ($t1)
/* 208B88 801DE028 4600B03C */  c.lt.s $f22, $f0
.L801DE02C_ovl15:
/* 208B8C 801DE02C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 208B90 801DE030 45000003 */  bc1f  .L801DE040_ovl15
/* 208B94 801DE034 00000000 */   nop   
/* 208B98 801DE038 0C02BB30 */  jal   func_800AECC0
/* 208B9C 801DE03C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
.L801DE040_ovl15:
/* 208BA0 801DE040 0C002DAF */  jal   finish_current_thread
/* 208BA4 801DE044 24040001 */   li    $a0, 1
/* 208BA8 801DE048 8FCB0000 */  lw    $t3, ($fp)
/* 208BAC 801DE04C 8D620000 */  lw    $v0, ($t3)
/* 208BB0 801DE050 00021080 */  sll   $v0, $v0, 2
/* 208BB4 801DE054 02225021 */  addu  $t2, $s1, $v0
/* 208BB8 801DE058 C5400000 */  lwc1  $f0, ($t2)
/* 208BBC 801DE05C 461A003E */  c.le.s $f0, $f26
/* 208BC0 801DE060 00000000 */  nop   
/* 208BC4 801DE064 4503FFDD */  bc1tl .L801DDFDC_ovl15
/* 208BC8 801DE068 02025021 */   addu  $t2, $s0, $v0
/* 208BCC 801DE06C 240C0002 */  li    $t4, 2
.L801DE070_ovl15:
/* 208BD0 801DE070 02027821 */  addu  $t7, $s0, $v0
/* 208BD4 801DE074 ADEC0000 */  sw    $t4, ($t7)
/* 208BD8 801DE078 0C029D9E */  jal   play_sound
/* 208BDC 801DE07C 240401A0 */   li    $a0, 416
/* 208BE0 801DE080 00002025 */  move  $a0, $zero
/* 208BE4 801DE084 0C02ED1A */  jal   func_800BB468
/* 208BE8 801DE088 00002825 */   move  $a1, $zero
/* 208BEC 801DE08C 24040004 */  li    $a0, 4
/* 208BF0 801DE090 0C067829 */  jal   func_8019E0A4_ovl15
/* 208BF4 801DE094 24050006 */   li    $a1, 6
/* 208BF8 801DE098 0C03EE45 */  jal   func_800FB914
/* 208BFC 801DE09C 24040002 */   li    $a0, 2
/* 208C00 801DE0A0 0C002DAF */  jal   finish_current_thread
/* 208C04 801DE0A4 24040001 */   li    $a0, 1
/* 208C08 801DE0A8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 208C0C 801DE0AC 3C17800F */  lui   $s7, %hi(D_800E8E60) # $s7, 0x800f
/* 208C10 801DE0B0 3C16800E */  lui   $s6, %hi(gEntitiesNextPosZArray) # $s6, 0x800e
/* 208C14 801DE0B4 3C15800E */  lui   $s5, %hi(gEntitiesNextPosYArray) # $s5, 0x800e
/* 208C18 801DE0B8 3C14800E */  lui   $s4, %hi(gEntitiesNextPosXArray) # $s4, 0x800e
/* 208C1C 801DE0BC 3C13800E */  lui   $s3, %hi(D_800E6BD0) # $s3, 0x800e
/* 208C20 801DE0C0 3C12800E */  lui   $s2, %hi(D_800E5F90) # $s2, 0x800e
/* 208C24 801DE0C4 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 208C28 801DE0C8 4481A000 */  mtc1  $at, $f20
/* 208C2C 801DE0CC 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 208C30 801DE0D0 26525F90 */  addiu $s2, %lo(D_800E5F90) # addiu $s2, $s2, 0x5f90
/* 208C34 801DE0D4 26736BD0 */  addiu $s3, %lo(D_800E6BD0) # addiu $s3, $s3, 0x6bd0
/* 208C38 801DE0D8 269425D0 */  addiu $s4, %lo(gEntitiesNextPosXArray) # addiu $s4, $s4, 0x25d0
/* 208C3C 801DE0DC 26B52790 */  addiu $s5, %lo(gEntitiesNextPosYArray) # addiu $s5, $s5, 0x2790
/* 208C40 801DE0E0 26D62950 */  addiu $s6, %lo(gEntitiesNextPosZArray) # addiu $s6, $s6, 0x2950
/* 208C44 801DE0E4 26F78E60 */  addiu $s7, %lo(D_800E8E60) # addiu $s7, $s7, -0x71a0
/* 208C48 801DE0E8 00008825 */  move  $s1, $zero
/* 208C4C 801DE0EC 4406C000 */  mfc1  $a2, $f24
.L801DE0F0_ovl15:
/* 208C50 801DE0F0 4407C000 */  mfc1  $a3, $f24
/* 208C54 801DE0F4 24040010 */  li    $a0, 16
/* 208C58 801DE0F8 0C06B328 */  jal   func_801ACCA0_ovl15
/* 208C5C 801DE0FC 02202825 */   move  $a1, $s1
/* 208C60 801DE100 10400034 */  beqz  $v0, .L801DE1D4_ovl15
/* 208C64 801DE104 26310001 */   addiu $s1, $s1, 1
/* 208C68 801DE108 00021880 */  sll   $v1, $v0, 2
/* 208C6C 801DE10C 02E36821 */  addu  $t5, $s7, $v1
/* 208C70 801DE110 240E0001 */  li    $t6, 1
/* 208C74 801DE114 ADAE0000 */  sw    $t6, ($t5)
/* 208C78 801DE118 8FC60000 */  lw    $a2, ($fp)
/* 208C7C 801DE11C 02437821 */  addu  $t7, $s2, $v1
/* 208C80 801DE120 8CD80000 */  lw    $t8, ($a2)
/* 208C84 801DE124 00184080 */  sll   $t0, $t8, 2
/* 208C88 801DE128 0208C821 */  addu  $t9, $s0, $t0
/* 208C8C 801DE12C 8F290000 */  lw    $t1, ($t9)
/* 208C90 801DE130 00095880 */  sll   $t3, $t1, 2
/* 208C94 801DE134 024B5021 */  addu  $t2, $s2, $t3
/* 208C98 801DE138 8D4C0000 */  lw    $t4, ($t2)
/* 208C9C 801DE13C 02635821 */  addu  $t3, $s3, $v1
/* 208CA0 801DE140 ADEC0000 */  sw    $t4, ($t7)
/* 208CA4 801DE144 8CCE0000 */  lw    $t6, ($a2)
/* 208CA8 801DE148 000E6880 */  sll   $t5, $t6, 2
/* 208CAC 801DE14C 020DC021 */  addu  $t8, $s0, $t5
/* 208CB0 801DE150 8F080000 */  lw    $t0, ($t8)
/* 208CB4 801DE154 0008C880 */  sll   $t9, $t0, 2
/* 208CB8 801DE158 02794821 */  addu  $t1, $s3, $t9
/* 208CBC 801DE15C C5280000 */  lwc1  $f8, ($t1)
/* 208CC0 801DE160 02834021 */  addu  $t0, $s4, $v1
/* 208CC4 801DE164 E5680000 */  swc1  $f8, ($t3)
/* 208CC8 801DE168 8CCA0000 */  lw    $t2, ($a2)
/* 208CCC 801DE16C 000A6080 */  sll   $t4, $t2, 2
/* 208CD0 801DE170 020C7821 */  addu  $t7, $s0, $t4
/* 208CD4 801DE174 8DEE0000 */  lw    $t6, ($t7)
/* 208CD8 801DE178 000E6880 */  sll   $t5, $t6, 2
/* 208CDC 801DE17C 028DC021 */  addu  $t8, $s4, $t5
/* 208CE0 801DE180 C70A0000 */  lwc1  $f10, ($t8)
/* 208CE4 801DE184 02A37021 */  addu  $t6, $s5, $v1
/* 208CE8 801DE188 E50A0000 */  swc1  $f10, ($t0)
/* 208CEC 801DE18C 8CD90000 */  lw    $t9, ($a2)
/* 208CF0 801DE190 00194880 */  sll   $t1, $t9, 2
/* 208CF4 801DE194 02095821 */  addu  $t3, $s0, $t1
/* 208CF8 801DE198 8D6A0000 */  lw    $t2, ($t3)
/* 208CFC 801DE19C 000A6080 */  sll   $t4, $t2, 2
/* 208D00 801DE1A0 02AC7821 */  addu  $t7, $s5, $t4
/* 208D04 801DE1A4 C5F00000 */  lwc1  $f16, ($t7)
/* 208D08 801DE1A8 02C35021 */  addu  $t2, $s6, $v1
/* 208D0C 801DE1AC 46148480 */  add.s $f18, $f16, $f20
/* 208D10 801DE1B0 E5D20000 */  swc1  $f18, ($t6)
/* 208D14 801DE1B4 8CCD0000 */  lw    $t5, ($a2)
/* 208D18 801DE1B8 000DC080 */  sll   $t8, $t5, 2
/* 208D1C 801DE1BC 02184021 */  addu  $t0, $s0, $t8
/* 208D20 801DE1C0 8D190000 */  lw    $t9, ($t0)
/* 208D24 801DE1C4 00194880 */  sll   $t1, $t9, 2
/* 208D28 801DE1C8 02C95821 */  addu  $t3, $s6, $t1
/* 208D2C 801DE1CC C5640000 */  lwc1  $f4, ($t3)
/* 208D30 801DE1D0 E5440000 */  swc1  $f4, ($t2)
.L801DE1D4_ovl15:
/* 208D34 801DE1D4 24010002 */  li    $at, 2
/* 208D38 801DE1D8 5621FFC5 */  bnel  $s1, $at, .L801DE0F0_ovl15
/* 208D3C 801DE1DC 4406C000 */   mfc1  $a2, $f24
/* 208D40 801DE1E0 0C02BC9F */  jal   func_800AF27C
/* 208D44 801DE1E4 00000000 */   nop   
/* 208D48 801DE1E8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 208D4C 801DE1EC 0C02BB30 */  jal   func_800AECC0
/* 208D50 801DE1F0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 208D54 801DE1F4 8FBF005C */  lw    $ra, 0x5c($sp)
/* 208D58 801DE1F8 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 208D5C 801DE1FC D7B60020 */  ldc1  $f22, 0x20($sp)
/* 208D60 801DE200 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 208D64 801DE204 D7BA0030 */  ldc1  $f26, 0x30($sp)
/* 208D68 801DE208 8FB00038 */  lw    $s0, 0x38($sp)
/* 208D6C 801DE20C 8FB1003C */  lw    $s1, 0x3c($sp)
/* 208D70 801DE210 8FB20040 */  lw    $s2, 0x40($sp)
/* 208D74 801DE214 8FB30044 */  lw    $s3, 0x44($sp)
/* 208D78 801DE218 8FB40048 */  lw    $s4, 0x48($sp)
/* 208D7C 801DE21C 8FB5004C */  lw    $s5, 0x4c($sp)
/* 208D80 801DE220 8FB60050 */  lw    $s6, 0x50($sp)
/* 208D84 801DE224 8FB70054 */  lw    $s7, 0x54($sp)
/* 208D88 801DE228 8FBE0058 */  lw    $fp, 0x58($sp)
/* 208D8C 801DE22C 03E00008 */  jr    $ra
/* 208D90 801DE230 27BD0060 */   addiu $sp, $sp, 0x60

/* 208D94 801DE234 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 208D98 801DE238 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 208D9C 801DE23C 8CEE0000 */  lw    $t6, ($a3)
/* 208DA0 801DE240 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 208DA4 801DE244 AFBF0014 */  sw    $ra, 0x14($sp)
/* 208DA8 801DE248 AFA40048 */  sw    $a0, 0x48($sp)
/* 208DAC 801DE24C 8DC60000 */  lw    $a2, ($t6)
/* 208DB0 801DE250 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 208DB4 801DE254 00063080 */  sll   $a2, $a2, 2
/* 208DB8 801DE258 00260821 */  addu  $at, $at, $a2
/* 208DBC 801DE25C C420AC20 */  lwc1  $f0, -0x53e0($at)
/* 208DC0 801DE260 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 208DC4 801DE264 44812000 */  mtc1  $at, $f4
/* 208DC8 801DE268 3C0143CD */  li    $at, 0x43CD0000 # 410.000000
/* 208DCC 801DE26C 4600203E */  c.le.s $f4, $f0
/* 208DD0 801DE270 00000000 */  nop   
/* 208DD4 801DE274 450000AB */  bc1f  .L801DE524_ovl15
/* 208DD8 801DE278 00000000 */   nop   
/* 208DDC 801DE27C 44813000 */  mtc1  $at, $f6
/* 208DE0 801DE280 3C02800F */  lui   $v0, 0x800f
/* 208DE4 801DE284 3C0142F8 */  li    $at, 0x42F80000 # 124.000000
/* 208DE8 801DE288 4606003E */  c.le.s $f0, $f6
/* 208DEC 801DE28C 00000000 */  nop   
/* 208DF0 801DE290 450000A4 */  bc1f  .L801DE524_ovl15
/* 208DF4 801DE294 00000000 */   nop   
/* 208DF8 801DE298 44814000 */  mtc1  $at, $f8
/* 208DFC 801DE29C 00461021 */  addu  $v0, $v0, $a2
/* 208E00 801DE2A0 8C42BDA0 */  lw    $v0, -0x4260($v0)
/* 208E04 801DE2A4 4608003C */  c.lt.s $f0, $f8
/* 208E08 801DE2A8 3C0143B4 */  li    $at, 0x43B40000 # 360.000000
/* 208E0C 801DE2AC 24420001 */  addiu $v0, $v0, 1
/* 208E10 801DE2B0 2C420001 */  sltiu $v0, $v0, 1
/* 208E14 801DE2B4 45020011 */  bc1fl .L801DE2FC_ovl15
/* 208E18 801DE2B8 44815000 */   mtc1  $at, $f10
/* 208E1C 801DE2BC 10400008 */  beqz  $v0, .L801DE2E0_ovl15
/* 208E20 801DE2C0 3C19801E */   lui   $t9, %hi(D_801D8ACC) # $t9, 0x801e
/* 208E24 801DE2C4 3C18800E */  lui   $t8, 0x800e
/* 208E28 801DE2C8 0306C021 */  addu  $t8, $t8, $a2
/* 208E2C 801DE2CC 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 208E30 801DE2D0 3C0F801E */  lui   $t7, %hi(D_801D8B38) # $t7, 0x801e
/* 208E34 801DE2D4 25EF8B38 */  addiu $t7, %lo(D_801D8B38) # addiu $t7, $t7, -0x74c8
/* 208E38 801DE2D8 1000002A */  b     .L801DE384_ovl15
/* 208E3C 801DE2DC AF0F008C */   sw    $t7, 0x8c($t8)
.L801DE2E0_ovl15:
/* 208E40 801DE2E0 3C08800E */  lui   $t0, 0x800e
/* 208E44 801DE2E4 01064021 */  addu  $t0, $t0, $a2
/* 208E48 801DE2E8 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 208E4C 801DE2EC 27398ACC */  addiu $t9, %lo(D_801D8ACC) # addiu $t9, $t9, -0x7534
/* 208E50 801DE2F0 10000024 */  b     .L801DE384_ovl15
/* 208E54 801DE2F4 AD19008C */   sw    $t9, 0x8c($t0)
/* 208E58 801DE2F8 44815000 */  mtc1  $at, $f10
.L801DE2FC_ovl15:
/* 208E5C 801DE2FC 00000000 */  nop   
/* 208E60 801DE300 460A003C */  c.lt.s $f0, $f10
/* 208E64 801DE304 00000000 */  nop   
/* 208E68 801DE308 45000010 */  bc1f  .L801DE34C_ovl15
/* 208E6C 801DE30C 00000000 */   nop   
/* 208E70 801DE310 10400008 */  beqz  $v0, .L801DE334_ovl15
/* 208E74 801DE314 3C0B801E */   lui   $t3, %hi(D_801D8AF0) # $t3, 0x801e
/* 208E78 801DE318 3C0A800E */  lui   $t2, 0x800e
/* 208E7C 801DE31C 01465021 */  addu  $t2, $t2, $a2
/* 208E80 801DE320 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 208E84 801DE324 3C09801E */  lui   $t1, %hi(D_801D8B5C) # $t1, 0x801e
/* 208E88 801DE328 25298B5C */  addiu $t1, %lo(D_801D8B5C) # addiu $t1, $t1, -0x74a4
/* 208E8C 801DE32C 10000015 */  b     .L801DE384_ovl15
/* 208E90 801DE330 AD49008C */   sw    $t1, 0x8c($t2)
.L801DE334_ovl15:
/* 208E94 801DE334 3C0C800E */  lui   $t4, 0x800e
/* 208E98 801DE338 01866021 */  addu  $t4, $t4, $a2
/* 208E9C 801DE33C 8D8C1B50 */  lw    $t4, 0x1b50($t4)
/* 208EA0 801DE340 256B8AF0 */  addiu $t3, %lo(D_801D8AF0) # addiu $t3, $t3, -0x7510
/* 208EA4 801DE344 1000000F */  b     .L801DE384_ovl15
/* 208EA8 801DE348 AD8B008C */   sw    $t3, 0x8c($t4)
.L801DE34C_ovl15:
/* 208EAC 801DE34C 10400008 */  beqz  $v0, .L801DE370_ovl15
/* 208EB0 801DE350 3C18800E */   lui   $t8, 0x800e
/* 208EB4 801DE354 3C0E800E */  lui   $t6, 0x800e
/* 208EB8 801DE358 01C67021 */  addu  $t6, $t6, $a2
/* 208EBC 801DE35C 8DCE1B50 */  lw    $t6, 0x1b50($t6)
/* 208EC0 801DE360 3C0D801E */  lui   $t5, %hi(D_801D8B80) # $t5, 0x801e
/* 208EC4 801DE364 25AD8B80 */  addiu $t5, %lo(D_801D8B80) # addiu $t5, $t5, -0x7480
/* 208EC8 801DE368 10000006 */  b     .L801DE384_ovl15
/* 208ECC 801DE36C ADCD008C */   sw    $t5, 0x8c($t6)
.L801DE370_ovl15:
/* 208ED0 801DE370 0306C021 */  addu  $t8, $t8, $a2
/* 208ED4 801DE374 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 208ED8 801DE378 3C0F801E */  lui   $t7, %hi(D_801D8B14) # $t7, 0x801e
/* 208EDC 801DE37C 25EF8B14 */  addiu $t7, %lo(D_801D8B14) # addiu $t7, $t7, -0x74ec
/* 208EE0 801DE380 AF0F008C */  sw    $t7, 0x8c($t8)
.L801DE384_ovl15:
/* 208EE4 801DE384 8CF90000 */  lw    $t9, ($a3)
/* 208EE8 801DE388 3C02800E */  lui   $v0, 0x800e
/* 208EEC 801DE38C 00003025 */  move  $a2, $zero
/* 208EF0 801DE390 8F280000 */  lw    $t0, ($t9)
/* 208EF4 801DE394 00084880 */  sll   $t1, $t0, 2
/* 208EF8 801DE398 00491021 */  addu  $v0, $v0, $t1
/* 208EFC 801DE39C 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 208F00 801DE3A0 8C440044 */  lw    $a0, 0x44($v0)
/* 208F04 801DE3A4 0C0785DF */  jal   func_801E177C_ovl15
/* 208F08 801DE3A8 8C45002C */   lw    $a1, 0x2c($v0)
/* 208F0C 801DE3AC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 208F10 801DE3B0 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 208F14 801DE3B4 3C0B800F */  lui   $t3, 0x800f
/* 208F18 801DE3B8 24010001 */  li    $at, 1
/* 208F1C 801DE3BC 8D460000 */  lw    $a2, ($t2)
/* 208F20 801DE3C0 3C0C800E */  lui   $t4, 0x800e
/* 208F24 801DE3C4 00063080 */  sll   $a2, $a2, 2
/* 208F28 801DE3C8 01665821 */  addu  $t3, $t3, $a2
/* 208F2C 801DE3CC 8D6B83E0 */  lw    $t3, -0x7c20($t3)
/* 208F30 801DE3D0 01866021 */  addu  $t4, $t4, $a2
/* 208F34 801DE3D4 5561000A */  bnel  $t3, $at, .L801DE400_ovl15
/* 208F38 801DE3D8 3C0142F8 */   lui   $at, 0x42f8
/* 208F3C 801DE3DC 8D8CDC50 */  lw    $t4, -0x23b0($t4)
/* 208F40 801DE3E0 24010007 */  li    $at, 7
/* 208F44 801DE3E4 1181004F */  beq   $t4, $at, .L801DE524_ovl15
/* 208F48 801DE3E8 00000000 */   nop   
/* 208F4C 801DE3EC 0C07775D */  jal   func_801DDD74_ovl15
/* 208F50 801DE3F0 8FA40048 */   lw    $a0, 0x48($sp)
/* 208F54 801DE3F4 1000004B */  b     .L801DE524_ovl15
/* 208F58 801DE3F8 00000000 */   nop   
/* 208F5C 801DE3FC 3C0142F8 */  li    $at, 0x42F80000 # 124.000000
.L801DE400_ovl15:
/* 208F60 801DE400 44818000 */  mtc1  $at, $f16
/* 208F64 801DE404 3C01800F */  lui   $at, 0x800f
/* 208F68 801DE408 00260821 */  addu  $at, $at, $a2
/* 208F6C 801DE40C C432AC20 */  lwc1  $f18, -0x53e0($at)
/* 208F70 801DE410 3C0E800E */  lui   $t6, 0x800e
/* 208F74 801DE414 01C67021 */  addu  $t6, $t6, $a2
/* 208F78 801DE418 4610903E */  c.le.s $f18, $f16
/* 208F7C 801DE41C 3C0D801E */  lui   $t5, %hi(D_801D8DC0) # $t5, 0x801e
/* 208F80 801DE420 45000040 */  bc1f  .L801DE524_ovl15
/* 208F84 801DE424 00000000 */   nop   
/* 208F88 801DE428 8DCE1B50 */  lw    $t6, 0x1b50($t6)
/* 208F8C 801DE42C 25AD8DC0 */  addiu $t5, %lo(D_801D8DC0) # addiu $t5, $t5, -0x7240
/* 208F90 801DE430 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 208F94 801DE434 ADCD008C */  sw    $t5, 0x8c($t6)
/* 208F98 801DE438 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 208F9C 801DE43C 3C08800E */  lui   $t0, 0x800e
/* 208FA0 801DE440 27A5002C */  addiu $a1, $sp, 0x2c
/* 208FA4 801DE444 8DF80000 */  lw    $t8, ($t7)
/* 208FA8 801DE448 0018C880 */  sll   $t9, $t8, 2
/* 208FAC 801DE44C 01194021 */  addu  $t0, $t0, $t9
/* 208FB0 801DE450 8D08FBD0 */  lw    $t0, -0x430($t0)
/* 208FB4 801DE454 0C0786E6 */  jal   func_801E1B98_ovl15
/* 208FB8 801DE458 8D040044 */   lw    $a0, 0x44($t0)
/* 208FBC 801DE45C 10400013 */  beqz  $v0, .L801DE4AC_ovl15
/* 208FC0 801DE460 8FA40038 */   lw    $a0, 0x38($sp)
/* 208FC4 801DE464 93A5002C */  lbu   $a1, 0x2c($sp)
/* 208FC8 801DE468 93A6002D */  lbu   $a2, 0x2d($sp)
/* 208FCC 801DE46C 0C05A50C */  jal   func_80169430_ovl15
/* 208FD0 801DE470 24070009 */   li    $a3, 9
/* 208FD4 801DE474 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 208FD8 801DE478 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 208FDC 801DE47C 3C01800F */  lui   $at, 0x800f
/* 208FE0 801DE480 3C04800F */  lui   $a0, %hi(D_800E9FE0) # $a0, 0x800f
/* 208FE4 801DE484 8C690000 */  lw    $t1, ($v1)
/* 208FE8 801DE488 24849FE0 */  addiu $a0, %lo(D_800E9FE0) # addiu $a0, $a0, -0x6020
/* 208FEC 801DE48C 00095080 */  sll   $t2, $t1, 2
/* 208FF0 801DE490 002A0821 */  addu  $at, $at, $t2
/* 208FF4 801DE494 AC20BF60 */  sw    $zero, -0x40a0($at)
/* 208FF8 801DE498 8C6B0000 */  lw    $t3, ($v1)
/* 208FFC 801DE49C 000B6080 */  sll   $t4, $t3, 2
/* 209000 801DE4A0 008C6821 */  addu  $t5, $a0, $t4
/* 209004 801DE4A4 1000001F */  b     .L801DE524_ovl15
/* 209008 801DE4A8 ADA00000 */   sw    $zero, ($t5)
.L801DE4AC_ovl15:
/* 20900C 801DE4AC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 209010 801DE4B0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 209014 801DE4B4 3C19800E */  lui   $t9, 0x800e
/* 209018 801DE4B8 27A5002C */  addiu $a1, $sp, 0x2c
/* 20901C 801DE4BC 8DCF0000 */  lw    $t7, ($t6)
/* 209020 801DE4C0 000FC080 */  sll   $t8, $t7, 2
/* 209024 801DE4C4 0338C821 */  addu  $t9, $t9, $t8
/* 209028 801DE4C8 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 20902C 801DE4CC 0C0786E6 */  jal   func_801E1B98_ovl15
/* 209030 801DE4D0 8F24002C */   lw    $a0, 0x2c($t9)
/* 209034 801DE4D4 10400013 */  beqz  $v0, .L801DE524_ovl15
/* 209038 801DE4D8 00000000 */   nop   
/* 20903C 801DE4DC 8FA40038 */  lw    $a0, 0x38($sp)
/* 209040 801DE4E0 93A5002C */  lbu   $a1, 0x2c($sp)
/* 209044 801DE4E4 93A6002D */  lbu   $a2, 0x2d($sp)
/* 209048 801DE4E8 0C05A50C */  jal   func_80169430_ovl15
/* 20904C 801DE4EC 2407000A */   li    $a3, 10
/* 209050 801DE4F0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 209054 801DE4F4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 209058 801DE4F8 3C01800F */  lui   $at, 0x800f
/* 20905C 801DE4FC 3C04800F */  lui   $a0, %hi(D_800E9FE0) # $a0, 0x800f
/* 209060 801DE500 8C680000 */  lw    $t0, ($v1)
/* 209064 801DE504 24849FE0 */  addiu $a0, %lo(D_800E9FE0) # addiu $a0, $a0, -0x6020
/* 209068 801DE508 00084880 */  sll   $t1, $t0, 2
/* 20906C 801DE50C 00290821 */  addu  $at, $at, $t1
/* 209070 801DE510 AC20BF60 */  sw    $zero, -0x40a0($at)
/* 209074 801DE514 8C6A0000 */  lw    $t2, ($v1)
/* 209078 801DE518 000A5880 */  sll   $t3, $t2, 2
/* 20907C 801DE51C 008B6021 */  addu  $t4, $a0, $t3
/* 209080 801DE520 AD800000 */  sw    $zero, ($t4)
.L801DE524_ovl15:
/* 209084 801DE524 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 209088 801DE528 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 20908C 801DE52C 8CE30000 */  lw    $v1, ($a3)
/* 209090 801DE530 3C0D800F */  lui   $t5, %hi(D_800EAC20) # $t5, 0x800f
/* 209094 801DE534 25ADAC20 */  addiu $t5, %lo(D_800EAC20) # addiu $t5, $t5, -0x53e0
/* 209098 801DE538 8C660000 */  lw    $a2, ($v1)
/* 20909C 801DE53C 3C0142F8 */  li    $at, 0x42F80000 # 124.000000
/* 2090A0 801DE540 44812000 */  mtc1  $at, $f4
/* 2090A4 801DE544 00063080 */  sll   $a2, $a2, 2
/* 2090A8 801DE548 00CD1021 */  addu  $v0, $a2, $t5
/* 2090AC 801DE54C C4400000 */  lwc1  $f0, ($v0)
/* 2090B0 801DE550 3C014380 */  li    $at, 0x43800000 # 256.000000
/* 2090B4 801DE554 3C04800F */  lui   $a0, %hi(D_800E9FE0) # $a0, 0x800f
/* 2090B8 801DE558 4600203C */  c.lt.s $f4, $f0
/* 2090BC 801DE55C 44813000 */  mtc1  $at, $f6
/* 2090C0 801DE560 24849FE0 */  addiu $a0, %lo(D_800E9FE0) # addiu $a0, $a0, -0x6020
/* 2090C4 801DE564 3C01800E */  lui   $at, 0x800e
/* 2090C8 801DE568 45000009 */  bc1f  .L801DE590_ovl15
/* 2090CC 801DE56C 240E0001 */   li    $t6, 1
/* 2090D0 801DE570 00867821 */  addu  $t7, $a0, $a2
/* 2090D4 801DE574 ADEE0000 */  sw    $t6, ($t7)
/* 2090D8 801DE578 8C660000 */  lw    $a2, ($v1)
/* 2090DC 801DE57C 3C18800F */  lui   $t8, %hi(D_800EAC20) # $t8, 0x800f
/* 2090E0 801DE580 2718AC20 */  addiu $t8, %lo(D_800EAC20) # addiu $t8, $t8, -0x53e0
/* 2090E4 801DE584 00063080 */  sll   $a2, $a2, 2
/* 2090E8 801DE588 00D81021 */  addu  $v0, $a2, $t8
/* 2090EC 801DE58C C4400000 */  lwc1  $f0, ($v0)
.L801DE590_ovl15:
/* 2090F0 801DE590 4600303C */  c.lt.s $f6, $f0
/* 2090F4 801DE594 00000000 */  nop   
/* 2090F8 801DE598 45000009 */  bc1f  .L801DE5C0_ovl15
/* 2090FC 801DE59C 24190002 */   li    $t9, 2
/* 209100 801DE5A0 00864021 */  addu  $t0, $a0, $a2
/* 209104 801DE5A4 AD190000 */  sw    $t9, ($t0)
/* 209108 801DE5A8 8C660000 */  lw    $a2, ($v1)
/* 20910C 801DE5AC 3C09800F */  lui   $t1, %hi(D_800EAC20) # $t1, 0x800f
/* 209110 801DE5B0 2529AC20 */  addiu $t1, %lo(D_800EAC20) # addiu $t1, $t1, -0x53e0
/* 209114 801DE5B4 00063080 */  sll   $a2, $a2, 2
/* 209118 801DE5B8 00C91021 */  addu  $v0, $a2, $t1
/* 20911C 801DE5BC C4400000 */  lwc1  $f0, ($v0)
.L801DE5C0_ovl15:
/* 209120 801DE5C0 00260821 */  addu  $at, $at, $a2
/* 209124 801DE5C4 C42809D0 */  lwc1  $f8, 0x9d0($at)
/* 209128 801DE5C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20912C 801DE5CC 27BD0048 */  addiu $sp, $sp, 0x48
/* 209130 801DE5D0 46080280 */  add.s $f10, $f0, $f8
/* 209134 801DE5D4 03E00008 */  jr    $ra
/* 209138 801DE5D8 E44A0000 */   swc1  $f10, ($v0)

/* 20913C 801DE5DC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 209140 801DE5E0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 209144 801DE5E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 209148 801DE5E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20914C 801DE5EC AFA40020 */  sw    $a0, 0x20($sp)
/* 209150 801DE5F0 8DF80000 */  lw    $t8, ($t7)
/* 209154 801DE5F4 3C01800E */  lui   $at, 0x800e
/* 209158 801DE5F8 240E0003 */  li    $t6, 3
/* 20915C 801DE5FC 0018C880 */  sll   $t9, $t8, 2
/* 209160 801DE600 00390821 */  addu  $at, $at, $t9
/* 209164 801DE604 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 209168 801DE608 24040004 */  li    $a0, 4
/* 20916C 801DE60C 0C067829 */  jal   func_8019E0A4_ovl15
/* 209170 801DE610 24050005 */   li    $a1, 5
/* 209174 801DE614 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 209178 801DE618 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 20917C 801DE61C 3C01800F */  lui   $at, 0x800f
/* 209180 801DE620 24040004 */  li    $a0, 4
/* 209184 801DE624 8D090000 */  lw    $t1, ($t0)
/* 209188 801DE628 AFA2001C */  sw    $v0, 0x1c($sp)
/* 20918C 801DE62C 24050004 */  li    $a1, 4
/* 209190 801DE630 00095080 */  sll   $t2, $t1, 2
/* 209194 801DE634 002A0821 */  addu  $at, $at, $t2
/* 209198 801DE638 0C067829 */  jal   func_8019E0A4_ovl15
/* 20919C 801DE63C AC22BF60 */   sw    $v0, -0x40a0($at)
/* 2091A0 801DE640 8FA3001C */  lw    $v1, 0x1c($sp)
/* 2091A4 801DE644 2404FFFF */  li    $a0, -1
/* 2091A8 801DE648 00402825 */  move  $a1, $v0
/* 2091AC 801DE64C 10640023 */  beq   $v1, $a0, .L801DE6DC_ovl15
/* 2091B0 801DE650 00000000 */   nop   
/* 2091B4 801DE654 10440021 */  beq   $v0, $a0, .L801DE6DC_ovl15
/* 2091B8 801DE658 00035880 */   sll   $t3, $v1, 2
/* 2091BC 801DE65C 3C02800F */  lui   $v0, %hi(D_800EBBE0) # $v0, 0x800f
/* 2091C0 801DE660 2442BBE0 */  addiu $v0, %lo(D_800EBBE0) # addiu $v0, $v0, -0x4420
/* 2091C4 801DE664 004B6021 */  addu  $t4, $v0, $t3
/* 2091C8 801DE668 00056880 */  sll   $t5, $a1, 2
/* 2091CC 801DE66C AD850000 */  sw    $a1, ($t4)
/* 2091D0 801DE670 004D7821 */  addu  $t7, $v0, $t5
/* 2091D4 801DE674 3C040001 */  lui   $a0, (0x000103C3 >> 16) # lui $a0, 1
/* 2091D8 801DE678 ADE30000 */  sw    $v1, ($t7)
/* 2091DC 801DE67C 0C02A855 */  jal   func_800AA154
/* 2091E0 801DE680 348403C3 */   ori   $a0, (0x000103C3 & 0xFFFF) # ori $a0, $a0, 0x3c3
/* 2091E4 801DE684 3C040001 */  lui   $a0, (0x000103C5 >> 16) # lui $a0, 1
/* 2091E8 801DE688 348403C5 */  ori   $a0, (0x000103C5 & 0xFFFF) # ori $a0, $a0, 0x3c5
/* 2091EC 801DE68C 0C02AA19 */  jal   func_800AA864
/* 2091F0 801DE690 24050008 */   li    $a1, 8
/* 2091F4 801DE694 3C040001 */  lui   $a0, (0x000103C7 >> 16) # lui $a0, 1
/* 2091F8 801DE698 0C02A855 */  jal   func_800AA154
/* 2091FC 801DE69C 348403C7 */   ori   $a0, (0x000103C7 & 0xFFFF) # ori $a0, $a0, 0x3c7
/* 209200 801DE6A0 0C002DAF */  jal   finish_current_thread
/* 209204 801DE6A4 24040006 */   li    $a0, 6
/* 209208 801DE6A8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 20920C 801DE6AC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 209210 801DE6B0 3C08800E */  lui   $t0, 0x800e
/* 209214 801DE6B4 44802000 */  mtc1  $zero, $f4
/* 209218 801DE6B8 8F0E0000 */  lw    $t6, ($t8)
/* 20921C 801DE6BC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 209220 801DE6C0 000EC880 */  sll   $t9, $t6, 2
/* 209224 801DE6C4 01194021 */  addu  $t0, $t0, $t9
/* 209228 801DE6C8 8D08FBD0 */  lw    $t0, -0x430($t0)
/* 20922C 801DE6CC 8D090018 */  lw    $t1, 0x18($t0)
/* 209230 801DE6D0 E5240034 */  swc1  $f4, 0x34($t1)
/* 209234 801DE6D4 10000008 */  b     .L801DE6F8_ovl15
/* 209238 801DE6D8 8C42A7C4 */   lw    $v0, %lo(D_8004A7C4)($v0)
.L801DE6DC_ovl15:
/* 20923C 801DE6DC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 209240 801DE6E0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 209244 801DE6E4 3C01800F */  lui   $at, 0x800f
/* 209248 801DE6E8 8C4A0000 */  lw    $t2, ($v0)
/* 20924C 801DE6EC 000A5880 */  sll   $t3, $t2, 2
/* 209250 801DE6F0 002B0821 */  addu  $at, $at, $t3
/* 209254 801DE6F4 AC24BF60 */  sw    $a0, -0x40a0($at)
.L801DE6F8_ovl15:
/* 209258 801DE6F8 8C4D0000 */  lw    $t5, ($v0)
/* 20925C 801DE6FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 209260 801DE700 3C01800E */  lui   $at, 0x800e
/* 209264 801DE704 000D7880 */  sll   $t7, $t5, 2
/* 209268 801DE708 002F0821 */  addu  $at, $at, $t7
/* 20926C 801DE70C 240C0001 */  li    $t4, 1
/* 209270 801DE710 AC2CDC50 */  sw    $t4, -0x23b0($at)
/* 209274 801DE714 03E00008 */  jr    $ra
/* 209278 801DE718 27BD0020 */   addiu $sp, $sp, 0x20

/* 20927C 801DE71C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 209280 801DE720 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 209284 801DE724 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 209288 801DE728 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20928C 801DE72C AFA40018 */  sw    $a0, 0x18($sp)
/* 209290 801DE730 8DC20000 */  lw    $v0, ($t6)
/* 209294 801DE734 3C04800F */  lui   $a0, 0x800f
/* 209298 801DE738 44801000 */  mtc1  $zero, $f2
/* 20929C 801DE73C 00021080 */  sll   $v0, $v0, 2
/* 2092A0 801DE740 00822021 */  addu  $a0, $a0, $v0
/* 2092A4 801DE744 8C84BF60 */  lw    $a0, -0x40a0($a0)
/* 2092A8 801DE748 2401FFFF */  li    $at, -1
/* 2092AC 801DE74C 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 2092B0 801DE750 10810014 */  beq   $a0, $at, .L801DE7A4_ovl15
/* 2092B4 801DE754 24A525D0 */   addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 2092B8 801DE758 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 2092BC 801DE75C 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 2092C0 801DE760 00041880 */  sll   $v1, $a0, 2
/* 2092C4 801DE764 00A37821 */  addu  $t7, $a1, $v1
/* 2092C8 801DE768 00C3C821 */  addu  $t9, $a2, $v1
/* 2092CC 801DE76C 00C24021 */  addu  $t0, $a2, $v0
/* 2092D0 801DE770 00A2C021 */  addu  $t8, $a1, $v0
/* 2092D4 801DE774 C7060000 */  lwc1  $f6, ($t8)
/* 2092D8 801DE778 C50A0000 */  lwc1  $f10, ($t0)
/* 2092DC 801DE77C C7280000 */  lwc1  $f8, ($t9)
/* 2092E0 801DE780 C5E40000 */  lwc1  $f4, ($t7)
/* 2092E4 801DE784 460A4381 */  sub.s $f14, $f8, $f10
/* 2092E8 801DE788 0C0061C3 */  jal   atan2f
/* 2092EC 801DE78C 46062301 */   sub.s $f12, $f4, $f6
/* 2092F0 801DE790 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 2092F4 801DE794 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 2092F8 801DE798 46000086 */  mov.s $f2, $f0
/* 2092FC 801DE79C 8D220000 */  lw    $v0, ($t1)
/* 209300 801DE7A0 00021080 */  sll   $v0, $v0, 2
.L801DE7A4_ovl15:
/* 209304 801DE7A4 3C0A800E */  lui   $t2, 0x800e
/* 209308 801DE7A8 01425021 */  addu  $t2, $t2, $v0
/* 20930C 801DE7AC 8D4AFBD0 */  lw    $t2, -0x430($t2)
/* 209310 801DE7B0 8D4B0018 */  lw    $t3, 0x18($t2)
/* 209314 801DE7B4 E5620034 */  swc1  $f2, 0x34($t3)
/* 209318 801DE7B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20931C 801DE7BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 209320 801DE7C0 03E00008 */  jr    $ra
/* 209324 801DE7C4 00000000 */   nop   

/* 209328 801DE7C8 27BDFF90 */  addiu $sp, $sp, -0x70
/* 20932C 801DE7CC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 209330 801DE7D0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 209334 801DE7D4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 209338 801DE7D8 AFBE0038 */  sw    $fp, 0x38($sp)
/* 20933C 801DE7DC AFB70034 */  sw    $s7, 0x34($sp)
/* 209340 801DE7E0 AFB60030 */  sw    $s6, 0x30($sp)
/* 209344 801DE7E4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 209348 801DE7E8 AFB40028 */  sw    $s4, 0x28($sp)
/* 20934C 801DE7EC AFB30024 */  sw    $s3, 0x24($sp)
/* 209350 801DE7F0 AFB20020 */  sw    $s2, 0x20($sp)
/* 209354 801DE7F4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 209358 801DE7F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 20935C 801DE7FC AFA40070 */  sw    $a0, 0x70($sp)
/* 209360 801DE800 8DCF0000 */  lw    $t7, ($t6)
/* 209364 801DE804 3C01800E */  lui   $at, 0x800e
/* 209368 801DE808 3C040001 */  lui   $a0, (0x000103C9 >> 16) # lui $a0, 1
/* 20936C 801DE80C 000FC080 */  sll   $t8, $t7, 2
/* 209370 801DE810 00380821 */  addu  $at, $at, $t8
/* 209374 801DE814 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 209378 801DE818 0C02A806 */  jal   func_800AA018
/* 20937C 801DE81C 348403C9 */   ori   $a0, (0x000103C9 & 0xFFFF) # ori $a0, $a0, 0x3c9
/* 209380 801DE820 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 209384 801DE824 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 209388 801DE828 3C01800E */  lui   $at, 0x800e
/* 20938C 801DE82C 24190001 */  li    $t9, 1
/* 209390 801DE830 8D090000 */  lw    $t1, ($t0)
/* 209394 801DE834 2404000A */  li    $a0, 10
/* 209398 801DE838 00095080 */  sll   $t2, $t1, 2
/* 20939C 801DE83C 002A0821 */  addu  $at, $at, $t2
/* 2093A0 801DE840 AC39DC50 */  sw    $t9, -0x23b0($at)
/* 2093A4 801DE844 3C01800D */  lui   $at, %hi(D_800D70BC) # $at, 0x800d
/* 2093A8 801DE848 0C002DAF */  jal   finish_current_thread
/* 2093AC 801DE84C AC2070BC */   sw    $zero, %lo(D_800D70BC)($at)
/* 2093B0 801DE850 0C029D9E */  jal   play_sound
/* 2093B4 801DE854 24040251 */   li    $a0, 593
/* 2093B8 801DE858 0C006291 */  jal   random_soft_s32_range
/* 2093BC 801DE85C 24040018 */   li    $a0, 24
/* 2093C0 801DE860 AFA20064 */  sw    $v0, 0x64($sp)
/* 2093C4 801DE864 0C006291 */  jal   random_soft_s32_range
/* 2093C8 801DE868 24040018 */   li    $a0, 24
/* 2093CC 801DE86C AFA20060 */  sw    $v0, 0x60($sp)
/* 2093D0 801DE870 0C006291 */  jal   random_soft_s32_range
/* 2093D4 801DE874 2404000E */   li    $a0, 14
/* 2093D8 801DE878 3C1E801E */  lui   $fp, %hi(D_801E65EC) # $fp, 0x801e
/* 2093DC 801DE87C 3C17800E */  lui   $s7, %hi(D_800DFBD0) # $s7, 0x800e
/* 2093E0 801DE880 3C15800F */  lui   $s5, %hi(D_800E8E60) # $s5, 0x800f
/* 2093E4 801DE884 AFA2005C */  sw    $v0, 0x5c($sp)
/* 2093E8 801DE888 26B58E60 */  addiu $s5, %lo(D_800E8E60) # addiu $s5, $s5, -0x71a0
/* 2093EC 801DE88C 26F7FBD0 */  addiu $s7, %lo(D_800DFBD0) # addiu $s7, $s7, -0x430
/* 2093F0 801DE890 27DE65EC */  addiu $fp, %lo(D_801E65EC) # addiu $fp, $fp, 0x65ec
/* 2093F4 801DE894 00008825 */  move  $s1, $zero
/* 2093F8 801DE898 27B60050 */  addiu $s6, $sp, 0x50
/* 2093FC 801DE89C 24040037 */  li    $a0, 55
.L801DE8A0_ovl15:
/* 209400 801DE8A0 0C06B30D */  jal   func_801ACC34_ovl15
/* 209404 801DE8A4 00002825 */   move  $a1, $zero
/* 209408 801DE8A8 1040003C */  beqz  $v0, .L801DE99C_ovl15
/* 20940C 801DE8AC 00028080 */   sll   $s0, $v0, 2
/* 209410 801DE8B0 240B0001 */  li    $t3, 1
/* 209414 801DE8B4 02B06021 */  addu  $t4, $s5, $s0
/* 209418 801DE8B8 AD8B0000 */  sw    $t3, ($t4)
/* 20941C 801DE8BC 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 209420 801DE8C0 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 209424 801DE8C4 00114880 */  sll   $t1, $s1, 2
/* 209428 801DE8C8 03C9C821 */  addu  $t9, $fp, $t1
/* 20942C 801DE8CC 8DAE0000 */  lw    $t6, ($t5)
/* 209430 801DE8D0 8F2A0000 */  lw    $t2, ($t9)
/* 209434 801DE8D4 8FAD0064 */  lw    $t5, 0x64($sp)
/* 209438 801DE8D8 000E7880 */  sll   $t7, $t6, 2
/* 20943C 801DE8DC 02EFC021 */  addu  $t8, $s7, $t7
/* 209440 801DE8E0 8F080000 */  lw    $t0, ($t8)
/* 209444 801DE8E4 000A5880 */  sll   $t3, $t2, 2
/* 209448 801DE8E8 8FA90060 */  lw    $t1, 0x60($sp)
/* 20944C 801DE8EC 010B6021 */  addu  $t4, $t0, $t3
/* 209450 801DE8F0 8FAB005C */  lw    $t3, 0x5c($sp)
/* 209454 801DE8F4 000D7080 */  sll   $t6, $t5, 2
/* 209458 801DE8F8 01D17821 */  addu  $t7, $t6, $s1
/* 20945C 801DE8FC 8D850000 */  lw    $a1, ($t4)
/* 209460 801DE900 3C0E801E */  lui   $t6, %hi(D_801E65B4) # $t6, 0x801e
/* 209464 801DE904 3C08801E */  lui   $t0, %hi(D_801E6554) # $t0, 0x801e
/* 209468 801DE908 3C18801E */  lui   $t8, %hi(D_801E6554) # $t8, 0x801e
/* 20946C 801DE90C 0009C880 */  sll   $t9, $t1, 2
/* 209470 801DE910 000B6080 */  sll   $t4, $t3, 2
/* 209474 801DE914 01916821 */  addu  $t5, $t4, $s1
/* 209478 801DE918 03315021 */  addu  $t2, $t9, $s1
/* 20947C 801DE91C 27186554 */  addiu $t8, %lo(D_801E6554) # addiu $t8, $t8, 0x6554
/* 209480 801DE920 25086554 */  addiu $t0, %lo(D_801E6554) # addiu $t0, $t0, 0x6554
/* 209484 801DE924 25CE65B4 */  addiu $t6, %lo(D_801E65B4) # addiu $t6, $t6, 0x65b4
/* 209488 801DE928 01AEA021 */  addu  $s4, $t5, $t6
/* 20948C 801DE92C 01489821 */  addu  $s3, $t2, $t0
/* 209490 801DE930 01F89021 */  addu  $s2, $t7, $t8
/* 209494 801DE934 0C0291E5 */  jal   func_800A4794
/* 209498 801DE938 02C02025 */   move  $a0, $s6
/* 20949C 801DE93C C7A40050 */  lwc1  $f4, 0x50($sp)
/* 2094A0 801DE940 3C01800E */  lui   $at, 0x800e
/* 2094A4 801DE944 00300821 */  addu  $at, $at, $s0
/* 2094A8 801DE948 C7A60054 */  lwc1  $f6, 0x54($sp)
/* 2094AC 801DE94C E42425D0 */  swc1  $f4, 0x25d0($at)
/* 2094B0 801DE950 3C01800E */  lui   $at, 0x800e
/* 2094B4 801DE954 00300821 */  addu  $at, $at, $s0
/* 2094B8 801DE958 C7A80058 */  lwc1  $f8, 0x58($sp)
/* 2094BC 801DE95C E4262790 */  swc1  $f6, 0x2790($at)
/* 2094C0 801DE960 3C01800E */  lui   $at, 0x800e
/* 2094C4 801DE964 00300821 */  addu  $at, $at, $s0
/* 2094C8 801DE968 E4282950 */  swc1  $f8, 0x2950($at)
/* 2094CC 801DE96C 824F0000 */  lb    $t7, ($s2)
/* 2094D0 801DE970 3C01800F */  lui   $at, 0x800f
/* 2094D4 801DE974 00300821 */  addu  $at, $at, $s0
/* 2094D8 801DE978 AC2F9AA0 */  sw    $t7, -0x6560($at)
/* 2094DC 801DE97C 82780000 */  lb    $t8, ($s3)
/* 2094E0 801DE980 3C01800F */  lui   $at, 0x800f
/* 2094E4 801DE984 00300821 */  addu  $at, $at, $s0
/* 2094E8 801DE988 AC389C60 */  sw    $t8, -0x63a0($at)
/* 2094EC 801DE98C 82890000 */  lb    $t1, ($s4)
/* 2094F0 801DE990 3C01800F */  lui   $at, 0x800f
/* 2094F4 801DE994 00300821 */  addu  $at, $at, $s0
/* 2094F8 801DE998 AC299E20 */  sw    $t1, -0x61e0($at)
.L801DE99C_ovl15:
/* 2094FC 801DE99C 26310001 */  addiu $s1, $s1, 1
/* 209500 801DE9A0 24010004 */  li    $at, 4
/* 209504 801DE9A4 5621FFBE */  bnel  $s1, $at, .L801DE8A0_ovl15
/* 209508 801DE9A8 24040037 */   li    $a0, 55
/* 20950C 801DE9AC 0C002DAF */  jal   finish_current_thread
/* 209510 801DE9B0 2404000A */   li    $a0, 10
/* 209514 801DE9B4 24190001 */  li    $t9, 1
/* 209518 801DE9B8 3C01800D */  lui   $at, %hi(D_800D70BC) # $at, 0x800d
/* 20951C 801DE9BC AC3970BC */  sw    $t9, %lo(D_800D70BC)($at)
/* 209520 801DE9C0 0C029D9E */  jal   play_sound
/* 209524 801DE9C4 2404019A */   li    $a0, 410
/* 209528 801DE9C8 0C02BC9F */  jal   func_800AF27C
/* 20952C 801DE9CC 00000000 */   nop   
/* 209530 801DE9D0 3C040001 */  lui   $a0, (0x000103CB >> 16) # lui $a0, 1
/* 209534 801DE9D4 348403CB */  ori   $a0, (0x000103CB & 0xFFFF) # ori $a0, $a0, 0x3cb
/* 209538 801DE9D8 0C02AA19 */  jal   func_800AA864
/* 20953C 801DE9DC 2405000D */   li    $a1, 13
/* 209540 801DE9E0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 209544 801DE9E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 209548 801DE9E8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 20954C 801DE9EC 8FB20020 */  lw    $s2, 0x20($sp)
/* 209550 801DE9F0 8FB30024 */  lw    $s3, 0x24($sp)
/* 209554 801DE9F4 8FB40028 */  lw    $s4, 0x28($sp)
/* 209558 801DE9F8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 20955C 801DE9FC 8FB60030 */  lw    $s6, 0x30($sp)
/* 209560 801DEA00 8FB70034 */  lw    $s7, 0x34($sp)
/* 209564 801DEA04 8FBE0038 */  lw    $fp, 0x38($sp)
/* 209568 801DEA08 03E00008 */  jr    $ra
/* 20956C 801DEA0C 27BD0070 */   addiu $sp, $sp, 0x70

/* 209570 801DEA10 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 209574 801DEA14 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 209578 801DEA18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20957C 801DEA1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 209580 801DEA20 AFA40018 */  sw    $a0, 0x18($sp)
/* 209584 801DEA24 8DCF0000 */  lw    $t7, ($t6)
/* 209588 801DEA28 3C01800E */  lui   $at, 0x800e
/* 20958C 801DEA2C 000FC080 */  sll   $t8, $t7, 2
/* 209590 801DEA30 00380821 */  addu  $at, $at, $t8
/* 209594 801DEA34 0C02CCFD */  jal   func_800B33F4
/* 209598 801DEA38 AC20DFD0 */   sw    $zero, -0x2030($at)
/* 20959C 801DEA3C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 2095A0 801DEA40 0C02BB30 */  jal   func_800AECC0
/* 2095A4 801DEA44 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 2095A8 801DEA48 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 2095AC 801DEA4C AC207154 */  sw    $zero, %lo(D_800D7154)($at)
/* 2095B0 801DEA50 3C01800D */  lui   $at, %hi(D_800D70D4) # $at, 0x800d
/* 2095B4 801DEA54 24190002 */  li    $t9, 2
/* 2095B8 801DEA58 3C040001 */  lui   $a0, (0x000103CB >> 16) # lui $a0, 1
/* 2095BC 801DEA5C AC3970D4 */  sw    $t9, %lo(D_800D70D4)($at)
/* 2095C0 801DEA60 348403CB */  ori   $a0, (0x000103CB & 0xFFFF) # ori $a0, $a0, 0x3cb
/* 2095C4 801DEA64 0C02AA19 */  jal   func_800AA864
/* 2095C8 801DEA68 24050004 */   li    $a1, 4
/* 2095CC 801DEA6C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 2095D0 801DEA70 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 2095D4 801DEA74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2095D8 801DEA78 3C01800E */  lui   $at, 0x800e
/* 2095DC 801DEA7C 8D2A0000 */  lw    $t2, ($t1)
/* 2095E0 801DEA80 24080008 */  li    $t0, 8
/* 2095E4 801DEA84 27BD0018 */  addiu $sp, $sp, 0x18
/* 2095E8 801DEA88 000A5880 */  sll   $t3, $t2, 2
/* 2095EC 801DEA8C 002B0821 */  addu  $at, $at, $t3
/* 2095F0 801DEA90 03E00008 */  jr    $ra
/* 2095F4 801DEA94 AC28DC50 */   sw    $t0, -0x23b0($at)

/* 2095F8 801DEA98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 2095FC 801DEA9C AFB1001C */  sw    $s1, 0x1c($sp)
/* 209600 801DEAA0 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 209604 801DEAA4 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 209608 801DEAA8 8E2F0000 */  lw    $t7, ($s1)
/* 20960C 801DEAAC AFBF0024 */  sw    $ra, 0x24($sp)
/* 209610 801DEAB0 AFB20020 */  sw    $s2, 0x20($sp)
/* 209614 801DEAB4 AFB00018 */  sw    $s0, 0x18($sp)
/* 209618 801DEAB8 AFA40028 */  sw    $a0, 0x28($sp)
/* 20961C 801DEABC 8DF80000 */  lw    $t8, ($t7)
/* 209620 801DEAC0 3C01800E */  lui   $at, 0x800e
/* 209624 801DEAC4 240E0004 */  li    $t6, 4
/* 209628 801DEAC8 0018C880 */  sll   $t9, $t8, 2
/* 20962C 801DEACC 00390821 */  addu  $at, $at, $t9
/* 209630 801DEAD0 44806000 */  mtc1  $zero, $f12
/* 209634 801DEAD4 0C02BB48 */  jal   func_800AED20
/* 209638 801DEAD8 AC2EDFD0 */   sw    $t6, -0x2030($at)
/* 20963C 801DEADC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 209640 801DEAE0 0C02BB30 */  jal   func_800AECC0
/* 209644 801DEAE4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 209648 801DEAE8 0C02CCFD */  jal   func_800B33F4
/* 20964C 801DEAEC 00000000 */   nop   
/* 209650 801DEAF0 8E220000 */  lw    $v0, ($s1)
/* 209654 801DEAF4 3C01800F */  lui   $at, 0x800f
/* 209658 801DEAF8 2403FFFF */  li    $v1, -1
/* 20965C 801DEAFC 8C4C0000 */  lw    $t4, ($v0)
/* 209660 801DEB00 3C12800D */  lui   $s2, %hi(D_800D7098) # $s2, 0x800d
/* 209664 801DEB04 26527098 */  addiu $s2, %lo(D_800D7098) # addiu $s2, $s2, 0x7098
/* 209668 801DEB08 000C6880 */  sll   $t5, $t4, 2
/* 20966C 801DEB0C 002D0821 */  addu  $at, $at, $t5
/* 209670 801DEB10 AC20A1A0 */  sw    $zero, -0x5e60($at)
/* 209674 801DEB14 8C4F0000 */  lw    $t7, ($v0)
/* 209678 801DEB18 3C01800F */  lui   $at, 0x800f
/* 20967C 801DEB1C 2404019F */  li    $a0, 415
/* 209680 801DEB20 000FC080 */  sll   $t8, $t7, 2
/* 209684 801DEB24 00380821 */  addu  $at, $at, $t8
/* 209688 801DEB28 AC23BDA0 */  sw    $v1, -0x4260($at)
/* 20968C 801DEB2C 8C4E0000 */  lw    $t6, ($v0)
/* 209690 801DEB30 3C01800F */  lui   $at, 0x800f
/* 209694 801DEB34 000EC880 */  sll   $t9, $t6, 2
/* 209698 801DEB38 00390821 */  addu  $at, $at, $t9
/* 20969C 801DEB3C AC209E20 */  sw    $zero, -0x61e0($at)
/* 2096A0 801DEB40 AE400000 */  sw    $zero, ($s2)
/* 2096A4 801DEB44 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 2096A8 801DEB48 0C029D9E */  jal   play_sound
/* 2096AC 801DEB4C AC237154 */   sw    $v1, %lo(D_800D7154)($at)
/* 2096B0 801DEB50 8E220000 */  lw    $v0, ($s1)
/* 2096B4 801DEB54 3C014158 */  li    $at, 0x41580000 # 13.500000
/* 2096B8 801DEB58 44812000 */  mtc1  $at, $f4
/* 2096BC 801DEB5C 8C4C0000 */  lw    $t4, ($v0)
/* 2096C0 801DEB60 3C01800E */  lui   $at, 0x800e
/* 2096C4 801DEB64 3C10800E */  lui   $s0, %hi(D_800E3750) # $s0, 0x800e
/* 2096C8 801DEB68 000C6880 */  sll   $t5, $t4, 2
/* 2096CC 801DEB6C 002D0821 */  addu  $at, $at, $t5
/* 2096D0 801DEB70 E42433D0 */  swc1  $f4, 0x33d0($at)
/* 2096D4 801DEB74 8C4F0000 */  lw    $t7, ($v0)
/* 2096D8 801DEB78 3C01801E */  lui   $at, %hi(D_801E683C) # $at, 0x801e
/* 2096DC 801DEB7C C426683C */  lwc1  $f6, %lo(D_801E683C)($at)
/* 2096E0 801DEB80 3C01800F */  lui   $at, 0x800f
/* 2096E4 801DEB84 000FC080 */  sll   $t8, $t7, 2
/* 2096E8 801DEB88 00380821 */  addu  $at, $at, $t8
/* 2096EC 801DEB8C E426AC20 */  swc1  $f6, -0x53e0($at)
/* 2096F0 801DEB90 8C4E0000 */  lw    $t6, ($v0)
/* 2096F4 801DEB94 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 2096F8 801DEB98 44814000 */  mtc1  $at, $f8
/* 2096FC 801DEB9C 26103750 */  addiu $s0, %lo(D_800E3750) # addiu $s0, $s0, 0x3750
/* 209700 801DEBA0 000EC880 */  sll   $t9, $t6, 2
/* 209704 801DEBA4 02196021 */  addu  $t4, $s0, $t9
/* 209708 801DEBA8 24040014 */  li    $a0, 20
/* 20970C 801DEBAC 0C002DAF */  jal   finish_current_thread
/* 209710 801DEBB0 E5880000 */   swc1  $f8, ($t4)
/* 209714 801DEBB4 8E2D0000 */  lw    $t5, ($s1)
/* 209718 801DEBB8 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20971C 801DEBBC 44815000 */  mtc1  $at, $f10
/* 209720 801DEBC0 8DAF0000 */  lw    $t7, ($t5)
/* 209724 801DEBC4 24040014 */  li    $a0, 20
/* 209728 801DEBC8 000FC080 */  sll   $t8, $t7, 2
/* 20972C 801DEBCC 02187021 */  addu  $t6, $s0, $t8
/* 209730 801DEBD0 0C002DAF */  jal   finish_current_thread
/* 209734 801DEBD4 E5CA0000 */   swc1  $f10, ($t6)
/* 209738 801DEBD8 8E220000 */  lw    $v0, ($s1)
/* 20973C 801DEBDC 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 209740 801DEBE0 44818000 */  mtc1  $at, $f16
/* 209744 801DEBE4 8C590000 */  lw    $t9, ($v0)
/* 209748 801DEBE8 3C01800E */  lui   $at, 0x800e
/* 20974C 801DEBEC 44801000 */  mtc1  $zero, $f2
/* 209750 801DEBF0 00196080 */  sll   $t4, $t9, 2
/* 209754 801DEBF4 002C0821 */  addu  $at, $at, $t4
/* 209758 801DEBF8 E4303C90 */  swc1  $f16, 0x3c90($at)
/* 20975C 801DEBFC 8C4D0000 */  lw    $t5, ($v0)
/* 209760 801DEC00 3C01800F */  lui   $at, 0x800f
/* 209764 801DEC04 3C05800E */  lui   $a1, %hi(D_800DFBD0) # $a1, 0x800e
/* 209768 801DEC08 000D7880 */  sll   $t7, $t5, 2
/* 20976C 801DEC0C 002F0821 */  addu  $at, $at, $t7
/* 209770 801DEC10 E422AC20 */  swc1  $f2, -0x53e0($at)
/* 209774 801DEC14 8C580000 */  lw    $t8, ($v0)
/* 209778 801DEC18 24A5FBD0 */  addiu $a1, %lo(D_800DFBD0) # addiu $a1, $a1, -0x430
/* 20977C 801DEC1C 3C01801E */  lui   $at, %hi(D_801E6840) # $at, 0x801e
/* 209780 801DEC20 00187080 */  sll   $t6, $t8, 2
/* 209784 801DEC24 00AEC821 */  addu  $t9, $a1, $t6
/* 209788 801DEC28 8F2C0000 */  lw    $t4, ($t9)
/* 20978C 801DEC2C C4326840 */  lwc1  $f18, %lo(D_801E6840)($at)
/* 209790 801DEC30 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 209794 801DEC34 8D8D0004 */  lw    $t5, 4($t4)
/* 209798 801DEC38 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 20979C 801DEC3C 3C01800E */  lui   $at, 0x800e
/* 2097A0 801DEC40 E5B20034 */  swc1  $f18, 0x34($t5)
/* 2097A4 801DEC44 8E220000 */  lw    $v0, ($s1)
/* 2097A8 801DEC48 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 2097AC 801DEC4C 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 2097B0 801DEC50 8C4F0000 */  lw    $t7, ($v0)
/* 2097B4 801DEC54 3C04800E */  lui   $a0, %hi(D_800E0D50) # $a0, 0x800e
/* 2097B8 801DEC58 24840D50 */  addiu $a0, %lo(D_800E0D50) # addiu $a0, $a0, 0xd50
/* 2097BC 801DEC5C 000FC080 */  sll   $t8, $t7, 2
/* 2097C0 801DEC60 00D87021 */  addu  $t6, $a2, $t8
/* 2097C4 801DEC64 E5C20000 */  swc1  $f2, ($t6)
/* 2097C8 801DEC68 8C430000 */  lw    $v1, ($v0)
/* 2097CC 801DEC6C 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 2097D0 801DEC70 25085F90 */  addiu $t0, %lo(D_800E5F90) # addiu $t0, $t0, 0x5f90
/* 2097D4 801DEC74 00031880 */  sll   $v1, $v1, 2
/* 2097D8 801DEC78 00C3C821 */  addu  $t9, $a2, $v1
/* 2097DC 801DEC7C C7200000 */  lwc1  $f0, ($t9)
/* 2097E0 801DEC80 00230821 */  addu  $at, $at, $v1
/* 2097E4 801DEC84 3C09800E */  lui   $t1, %hi(D_800E6BD0) # $t1, 0x800e
/* 2097E8 801DEC88 E4203590 */  swc1  $f0, 0x3590($at)
/* 2097EC 801DEC8C 8C4C0000 */  lw    $t4, ($v0)
/* 2097F0 801DEC90 3C01800E */  lui   $at, 0x800e
/* 2097F4 801DEC94 25296BD0 */  addiu $t1, %lo(D_800E6BD0) # addiu $t1, $t1, 0x6bd0
/* 2097F8 801DEC98 000C6880 */  sll   $t5, $t4, 2
/* 2097FC 801DEC9C 002D0821 */  addu  $at, $at, $t5
/* 209800 801DECA0 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 209804 801DECA4 8C4F0000 */  lw    $t7, ($v0)
/* 209808 801DECA8 3C01800E */  lui   $at, 0x800e
/* 20980C 801DECAC 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosXArray) # $t2, 0x800e
/* 209810 801DECB0 000FC080 */  sll   $t8, $t7, 2
/* 209814 801DECB4 00380821 */  addu  $at, $at, $t8
/* 209818 801DECB8 E4203050 */  swc1  $f0, 0x3050($at)
/* 20981C 801DECBC 8C4E0000 */  lw    $t6, ($v0)
/* 209820 801DECC0 3C01801E */  lui   $at, %hi(D_801E6844) # $at, 0x801e
/* 209824 801DECC4 C4246844 */  lwc1  $f4, %lo(D_801E6844)($at)
/* 209828 801DECC8 000EC880 */  sll   $t9, $t6, 2
/* 20982C 801DECCC 00F96021 */  addu  $t4, $a3, $t9
/* 209830 801DECD0 E5840000 */  swc1  $f4, ($t4)
/* 209834 801DECD4 8C430000 */  lw    $v1, ($v0)
/* 209838 801DECD8 3C01800E */  lui   $at, 0x800e
/* 20983C 801DECDC 3C0F800B */  lui   $t7, %hi(D_800B7138) # $t7, 0x800b
/* 209840 801DECE0 00031880 */  sll   $v1, $v1, 2
/* 209844 801DECE4 00E36821 */  addu  $t5, $a3, $v1
/* 209848 801DECE8 C5A60000 */  lwc1  $f6, ($t5)
/* 20984C 801DECEC 00230821 */  addu  $at, $at, $v1
/* 209850 801DECF0 25EF7138 */  addiu $t7, %lo(D_800B7138) # addiu $t7, $t7, 0x7138
/* 209854 801DECF4 E4263AD0 */  swc1  $f6, 0x3ad0($at)
/* 209858 801DECF8 8C580000 */  lw    $t8, ($v0)
/* 20985C 801DECFC 3C01800E */  lui   $at, 0x800e
/* 209860 801DED00 254A25D0 */  addiu $t2, %lo(gEntitiesNextPosXArray) # addiu $t2, $t2, 0x25d0
/* 209864 801DED04 00187080 */  sll   $t6, $t8, 2
/* 209868 801DED08 002E0821 */  addu  $at, $at, $t6
/* 20986C 801DED0C AC2FEF90 */  sw    $t7, -0x1070($at)
/* 209870 801DED10 8C590000 */  lw    $t9, ($v0)
/* 209874 801DED14 3C01800F */  lui   $at, 0x800f
/* 209878 801DED18 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosZArray) # $t3, 0x800e
/* 20987C 801DED1C 00196080 */  sll   $t4, $t9, 2
/* 209880 801DED20 002C0821 */  addu  $at, $at, $t4
/* 209884 801DED24 AC208E60 */  sw    $zero, -0x71a0($at)
/* 209888 801DED28 8C4D0000 */  lw    $t5, ($v0)
/* 20988C 801DED2C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 209890 801DED30 44814000 */  mtc1  $at, $f8
/* 209894 801DED34 3C01800E */  lui   $at, 0x800e
/* 209898 801DED38 000DC080 */  sll   $t8, $t5, 2
/* 20989C 801DED3C 00380821 */  addu  $at, $at, $t8
/* 2098A0 801DED40 E4286A10 */  swc1  $f8, 0x6a10($at)
/* 2098A4 801DED44 8C430000 */  lw    $v1, ($v0)
/* 2098A8 801DED48 256B2950 */  addiu $t3, %lo(gEntitiesNextPosZArray) # addiu $t3, $t3, 0x2950
/* 2098AC 801DED4C 3C10800F */  lui   $s0, %hi(D_800E8920) # $s0, 0x800f
/* 2098B0 801DED50 00031880 */  sll   $v1, $v1, 2
/* 2098B4 801DED54 00837821 */  addu  $t7, $a0, $v1
/* 2098B8 801DED58 8DEE0000 */  lw    $t6, ($t7)
/* 2098BC 801DED5C 0103C021 */  addu  $t8, $t0, $v1
/* 2098C0 801DED60 26108920 */  addiu $s0, %lo(D_800E8920) # addiu $s0, $s0, -0x76e0
/* 2098C4 801DED64 000EC880 */  sll   $t9, $t6, 2
/* 2098C8 801DED68 01196021 */  addu  $t4, $t0, $t9
/* 2098CC 801DED6C 8D8D0000 */  lw    $t5, ($t4)
/* 2098D0 801DED70 AF0D0000 */  sw    $t5, ($t8)
/* 2098D4 801DED74 8C430000 */  lw    $v1, ($v0)
/* 2098D8 801DED78 00031880 */  sll   $v1, $v1, 2
/* 2098DC 801DED7C 00837821 */  addu  $t7, $a0, $v1
/* 2098E0 801DED80 8DEE0000 */  lw    $t6, ($t7)
/* 2098E4 801DED84 01236821 */  addu  $t5, $t1, $v1
/* 2098E8 801DED88 000EC880 */  sll   $t9, $t6, 2
/* 2098EC 801DED8C 01396021 */  addu  $t4, $t1, $t9
/* 2098F0 801DED90 C58A0000 */  lwc1  $f10, ($t4)
/* 2098F4 801DED94 E5AA0000 */  swc1  $f10, ($t5)
/* 2098F8 801DED98 8C430000 */  lw    $v1, ($v0)
/* 2098FC 801DED9C 00031880 */  sll   $v1, $v1, 2
/* 209900 801DEDA0 0083C021 */  addu  $t8, $a0, $v1
/* 209904 801DEDA4 8F0F0000 */  lw    $t7, ($t8)
/* 209908 801DEDA8 01436021 */  addu  $t4, $t2, $v1
/* 20990C 801DEDAC 000F7080 */  sll   $t6, $t7, 2
/* 209910 801DEDB0 014EC821 */  addu  $t9, $t2, $t6
/* 209914 801DEDB4 C7300000 */  lwc1  $f16, ($t9)
/* 209918 801DEDB8 E5900000 */  swc1  $f16, ($t4)
/* 20991C 801DEDBC 8C430000 */  lw    $v1, ($v0)
/* 209920 801DEDC0 00031880 */  sll   $v1, $v1, 2
/* 209924 801DEDC4 00836821 */  addu  $t5, $a0, $v1
/* 209928 801DEDC8 8DB80000 */  lw    $t8, ($t5)
/* 20992C 801DEDCC 0163C821 */  addu  $t9, $t3, $v1
/* 209930 801DEDD0 00187880 */  sll   $t7, $t8, 2
/* 209934 801DEDD4 016F7021 */  addu  $t6, $t3, $t7
/* 209938 801DEDD8 C5D20000 */  lwc1  $f18, ($t6)
/* 20993C 801DEDDC E7320000 */  swc1  $f18, ($t9)
/* 209940 801DEDE0 8C4C0000 */  lw    $t4, ($v0)
/* 209944 801DEDE4 000C6880 */  sll   $t5, $t4, 2
/* 209948 801DEDE8 020DC021 */  addu  $t8, $s0, $t5
/* 20994C 801DEDEC AF000000 */  sw    $zero, ($t8)
/* 209950 801DEDF0 8C4F0000 */  lw    $t7, ($v0)
/* 209954 801DEDF4 000F7080 */  sll   $t6, $t7, 2
/* 209958 801DEDF8 00AEC821 */  addu  $t9, $a1, $t6
/* 20995C 801DEDFC 8F2C0000 */  lw    $t4, ($t9)
/* 209960 801DEE00 8D8D0004 */  lw    $t5, 4($t4)
/* 209964 801DEE04 E5A20034 */  swc1  $f2, 0x34($t5)
/* 209968 801DEE08 8E220000 */  lw    $v0, ($s1)
/* 20996C 801DEE0C 8C580000 */  lw    $t8, ($v0)
/* 209970 801DEE10 00187880 */  sll   $t7, $t8, 2
/* 209974 801DEE14 020F7021 */  addu  $t6, $s0, $t7
/* 209978 801DEE18 8DD90000 */  lw    $t9, ($t6)
/* 20997C 801DEE1C 5720000B */  bnezl $t9, .L801DEE4C_ovl15
/* 209980 801DEE20 24030001 */   li    $v1, 1
.L801DEE24_ovl15:
/* 209984 801DEE24 0C002DAF */  jal   finish_current_thread
/* 209988 801DEE28 24040001 */   li    $a0, 1
/* 20998C 801DEE2C 8E220000 */  lw    $v0, ($s1)
/* 209990 801DEE30 8C4C0000 */  lw    $t4, ($v0)
/* 209994 801DEE34 000C6880 */  sll   $t5, $t4, 2
/* 209998 801DEE38 020DC021 */  addu  $t8, $s0, $t5
/* 20999C 801DEE3C 8F0F0000 */  lw    $t7, ($t8)
/* 2099A0 801DEE40 11E0FFF8 */  beqz  $t7, .L801DEE24_ovl15
/* 2099A4 801DEE44 00000000 */   nop   
/* 2099A8 801DEE48 24030001 */  li    $v1, 1
.L801DEE4C_ovl15:
/* 2099AC 801DEE4C 24100003 */  li    $s0, 3
/* 2099B0 801DEE50 AE50003C */  sw    $s0, 0x3c($s2)
/* 2099B4 801DEE54 AE43002C */  sw    $v1, 0x2c($s2)
/* 2099B8 801DEE58 8C590000 */  lw    $t9, ($v0)
/* 2099BC 801DEE5C 3C0E800B */  lui   $t6, %hi(D_800B7790) # $t6, 0x800b
/* 2099C0 801DEE60 3C01800E */  lui   $at, 0x800e
/* 2099C4 801DEE64 00196080 */  sll   $t4, $t9, 2
/* 2099C8 801DEE68 002C0821 */  addu  $at, $at, $t4
/* 2099CC 801DEE6C 25CE7790 */  addiu $t6, %lo(D_800B7790) # addiu $t6, $t6, 0x7790
/* 2099D0 801DEE70 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 2099D4 801DEE74 8C4D0000 */  lw    $t5, ($v0)
/* 2099D8 801DEE78 3C01800F */  lui   $at, 0x800f
/* 2099DC 801DEE7C 000DC080 */  sll   $t8, $t5, 2
/* 2099E0 801DEE80 00380821 */  addu  $at, $at, $t8
/* 2099E4 801DEE84 0C02CCFD */  jal   func_800B33F4
/* 2099E8 801DEE88 AC238E60 */   sw    $v1, -0x71a0($at)
/* 2099EC 801DEE8C 0C03EE45 */  jal   func_800FB914
/* 2099F0 801DEE90 02002025 */   move  $a0, $s0
/* 2099F4 801DEE94 0C029D9E */  jal   play_sound
/* 2099F8 801DEE98 2404019D */   li    $a0, 413
/* 2099FC 801DEE9C 0C029D9E */  jal   play_sound
/* 209A00 801DEEA0 2404019C */   li    $a0, 412
/* 209A04 801DEEA4 3C040001 */  lui   $a0, (0x000103DF >> 16) # lui $a0, 1
/* 209A08 801DEEA8 0C02A855 */  jal   func_800AA154
/* 209A0C 801DEEAC 348403DF */   ori   $a0, (0x000103DF & 0xFFFF) # ori $a0, $a0, 0x3df
/* 209A10 801DEEB0 240F0001 */  li    $t7, 1
/* 209A14 801DEEB4 3C040001 */  lui   $a0, (0x000103D7 >> 16) # lui $a0, 1
/* 209A18 801DEEB8 AE4F0014 */  sw    $t7, 0x14($s2)
/* 209A1C 801DEEBC 0C02A806 */  jal   func_800AA018
/* 209A20 801DEEC0 348403D7 */   ori   $a0, (0x000103D7 & 0xFFFF) # ori $a0, $a0, 0x3d7
/* 209A24 801DEEC4 8E59003C */  lw    $t9, 0x3c($s2)
/* 209A28 801DEEC8 56190007 */  bnel  $s0, $t9, .L801DEEE8_ovl15
/* 209A2C 801DEECC 8E220000 */   lw    $v0, ($s1)
.L801DEED0_ovl15:
/* 209A30 801DEED0 0C002DAF */  jal   finish_current_thread
/* 209A34 801DEED4 24040001 */   li    $a0, 1
/* 209A38 801DEED8 8E4E003C */  lw    $t6, 0x3c($s2)
/* 209A3C 801DEEDC 120EFFFC */  beq   $s0, $t6, .L801DEED0_ovl15
/* 209A40 801DEEE0 00000000 */   nop   
/* 209A44 801DEEE4 8E220000 */  lw    $v0, ($s1)
.L801DEEE8_ovl15:
/* 209A48 801DEEE8 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 209A4C 801DEEEC 44812000 */  mtc1  $at, $f4
/* 209A50 801DEEF0 8C4C0000 */  lw    $t4, ($v0)
/* 209A54 801DEEF4 3C03800E */  lui   $v1, %hi(D_800E7B20) # $v1, 0x800e
/* 209A58 801DEEF8 24637B20 */  addiu $v1, %lo(D_800E7B20) # addiu $v1, $v1, 0x7b20
/* 209A5C 801DEEFC 000C6880 */  sll   $t5, $t4, 2
/* 209A60 801DEF00 006DC021 */  addu  $t8, $v1, $t5
/* 209A64 801DEF04 E7040000 */  swc1  $f4, ($t8)
/* 209A68 801DEF08 8C4F0000 */  lw    $t7, ($v0)
/* 209A6C 801DEF0C 000FC880 */  sll   $t9, $t7, 2
/* 209A70 801DEF10 00797021 */  addu  $t6, $v1, $t9
/* 209A74 801DEF14 C5C60000 */  lwc1  $f6, ($t6)
/* 209A78 801DEF18 4600320D */  trunc.w.s $f8, $f6
/* 209A7C 801DEF1C 44044000 */  mfc1  $a0, $f8
/* 209A80 801DEF20 0C02F07F */  jal   func_800BC1FC
/* 209A84 801DEF24 00000000 */   nop   
/* 209A88 801DEF28 8E220000 */  lw    $v0, ($s1)
/* 209A8C 801DEF2C 3C01801E */  lui   $at, %hi(D_801E6848) # $at, 0x801e
/* 209A90 801DEF30 C42A6848 */  lwc1  $f10, %lo(D_801E6848)($at)
/* 209A94 801DEF34 8C4D0000 */  lw    $t5, ($v0)
/* 209A98 801DEF38 3C01800E */  lui   $at, 0x800e
/* 209A9C 801DEF3C 3C040001 */  lui   $a0, (0x000103D7 >> 16) # lui $a0, 1
/* 209AA0 801DEF40 000DC080 */  sll   $t8, $t5, 2
/* 209AA4 801DEF44 00380821 */  addu  $at, $at, $t8
/* 209AA8 801DEF48 E42A3590 */  swc1  $f10, 0x3590($at)
/* 209AAC 801DEF4C 8C4F0000 */  lw    $t7, ($v0)
/* 209AB0 801DEF50 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 209AB4 801DEF54 44818000 */  mtc1  $at, $f16
/* 209AB8 801DEF58 3C01800E */  lui   $at, 0x800e
/* 209ABC 801DEF5C 000FC880 */  sll   $t9, $t7, 2
/* 209AC0 801DEF60 00390821 */  addu  $at, $at, $t9
/* 209AC4 801DEF64 348403D7 */  ori   $a0, (0x000103D7 & 0xFFFF) # ori $a0, $a0, 0x3d7
/* 209AC8 801DEF68 24050004 */  li    $a1, 4
/* 209ACC 801DEF6C 0C02AA19 */  jal   func_800AA864
/* 209AD0 801DEF70 E4303AD0 */   swc1  $f16, 0x3ad0($at)
/* 209AD4 801DEF74 0C02BC9F */  jal   func_800AF27C
/* 209AD8 801DEF78 00000000 */   nop   
/* 209ADC 801DEF7C 8E2C0000 */  lw    $t4, ($s1)
/* 209AE0 801DEF80 8FBF0024 */  lw    $ra, 0x24($sp)
/* 209AE4 801DEF84 3C01800E */  lui   $at, 0x800e
/* 209AE8 801DEF88 8D8D0000 */  lw    $t5, ($t4)
/* 209AEC 801DEF8C 240E0009 */  li    $t6, 9
/* 209AF0 801DEF90 8FB1001C */  lw    $s1, 0x1c($sp)
/* 209AF4 801DEF94 000DC080 */  sll   $t8, $t5, 2
/* 209AF8 801DEF98 00380821 */  addu  $at, $at, $t8
/* 209AFC 801DEF9C 8FB00018 */  lw    $s0, 0x18($sp)
/* 209B00 801DEFA0 8FB20020 */  lw    $s2, 0x20($sp)
/* 209B04 801DEFA4 AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 209B08 801DEFA8 03E00008 */  jr    $ra
/* 209B0C 801DEFAC 27BD0028 */   addiu $sp, $sp, 0x28

/* 209B10 801DEFB0 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 209B14 801DEFB4 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 209B18 801DEFB8 8CE30000 */  lw    $v1, ($a3)
/* 209B1C 801DEFBC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 209B20 801DEFC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 209B24 801DEFC4 8C620000 */  lw    $v0, ($v1)
/* 209B28 801DEFC8 3C0E800E */  lui   $t6, 0x800e
/* 209B2C 801DEFCC 3C01800E */  lui   $at, 0x800e
/* 209B30 801DEFD0 00021080 */  sll   $v0, $v0, 2
/* 209B34 801DEFD4 01C27021 */  addu  $t6, $t6, $v0
/* 209B38 801DEFD8 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 209B3C 801DEFDC 00220821 */  addu  $at, $at, $v0
/* 209B40 801DEFE0 C4243050 */  lwc1  $f4, 0x3050($at)
/* 209B44 801DEFE4 3C01800F */  lui   $at, 0x800f
/* 209B48 801DEFE8 000E7880 */  sll   $t7, $t6, 2
/* 209B4C 801DEFEC 002F0821 */  addu  $at, $at, $t7
/* 209B50 801DEFF0 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 209B54 801DEFF4 8C620000 */  lw    $v0, ($v1)
/* 209B58 801DEFF8 3C18800E */  lui   $t8, 0x800e
/* 209B5C 801DEFFC 3C01800F */  lui   $at, 0x800f
/* 209B60 801DF000 00021080 */  sll   $v0, $v0, 2
/* 209B64 801DF004 0302C021 */  addu  $t8, $t8, $v0
/* 209B68 801DF008 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 209B6C 801DF00C 00220821 */  addu  $at, $at, $v0
/* 209B70 801DF010 C428AC20 */  lwc1  $f8, -0x53e0($at)
/* 209B74 801DF014 8F050004 */  lw    $a1, 4($t8)
/* 209B78 801DF018 3C08800F */  lui   $t0, 0x800f
/* 209B7C 801DF01C C4A60034 */  lwc1  $f6, 0x34($a1)
/* 209B80 801DF020 46083280 */  add.s $f10, $f6, $f8
/* 209B84 801DF024 E4AA0034 */  swc1  $f10, 0x34($a1)
/* 209B88 801DF028 8CF90000 */  lw    $t9, ($a3)
/* 209B8C 801DF02C 8F220000 */  lw    $v0, ($t9)
/* 209B90 801DF030 00021080 */  sll   $v0, $v0, 2
/* 209B94 801DF034 01024021 */  addu  $t0, $t0, $v0
/* 209B98 801DF038 8D089E20 */  lw    $t0, -0x61e0($t0)
/* 209B9C 801DF03C 2901002B */  slti  $at, $t0, 0x2b
/* 209BA0 801DF040 14200008 */  bnez  $at, .L801DF064_ovl15
/* 209BA4 801DF044 00000000 */   nop   
/* 209BA8 801DF048 0C0787A2 */  jal   func_801E1E88_ovl15
/* 209BAC 801DF04C 00000000 */   nop   
/* 209BB0 801DF050 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 209BB4 801DF054 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 209BB8 801DF058 8CE90000 */  lw    $t1, ($a3)
/* 209BBC 801DF05C 8D220000 */  lw    $v0, ($t1)
/* 209BC0 801DF060 00021080 */  sll   $v0, $v0, 2
.L801DF064_ovl15:
/* 209BC4 801DF064 3C0B800E */  lui   $t3, 0x800e
/* 209BC8 801DF068 01625821 */  addu  $t3, $t3, $v0
/* 209BCC 801DF06C 8D6B1B50 */  lw    $t3, 0x1b50($t3)
/* 209BD0 801DF070 3C0A801E */  lui   $t2, %hi(D_801D8E98) # $t2, 0x801e
/* 209BD4 801DF074 254A8E98 */  addiu $t2, %lo(D_801D8E98) # addiu $t2, $t2, -0x7168
/* 209BD8 801DF078 AD6A008C */  sw    $t2, 0x8c($t3)
/* 209BDC 801DF07C 8CEC0000 */  lw    $t4, ($a3)
/* 209BE0 801DF080 3C03800E */  lui   $v1, 0x800e
/* 209BE4 801DF084 00003025 */  move  $a2, $zero
/* 209BE8 801DF088 8D8D0000 */  lw    $t5, ($t4)
/* 209BEC 801DF08C 000D7080 */  sll   $t6, $t5, 2
/* 209BF0 801DF090 006E1821 */  addu  $v1, $v1, $t6
/* 209BF4 801DF094 8C63FBD0 */  lw    $v1, -0x430($v1)
/* 209BF8 801DF098 8C640010 */  lw    $a0, 0x10($v1)
/* 209BFC 801DF09C 0C078674 */  jal   func_801E19D0_ovl15
/* 209C00 801DF0A0 8C650058 */   lw    $a1, 0x58($v1)
/* 209C04 801DF0A4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 209C08 801DF0A8 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 209C0C 801DF0AC 8CEF0000 */  lw    $t7, ($a3)
/* 209C10 801DF0B0 3C18800E */  lui   $t8, 0x800e
/* 209C14 801DF0B4 3C010001 */  lui   $at, (0x000103D7 >> 16) # lui $at, 1
/* 209C18 801DF0B8 8DE20000 */  lw    $v0, ($t7)
/* 209C1C 801DF0BC 342103D7 */  ori   $at, (0x000103D7 & 0xFFFF) # ori $at, $at, 0x3d7
/* 209C20 801DF0C0 3C08800E */  lui   $t0, 0x800e
/* 209C24 801DF0C4 00021080 */  sll   $v0, $v0, 2
/* 209C28 801DF0C8 0302C021 */  addu  $t8, $t8, $v0
/* 209C2C 801DF0CC 8F18FF50 */  lw    $t8, -0xb0($t8)
/* 209C30 801DF0D0 01024021 */  addu  $t0, $t0, $v0
/* 209C34 801DF0D4 17010013 */  bne   $t8, $at, .L801DF124_ovl15
/* 209C38 801DF0D8 00000000 */   nop   
/* 209C3C 801DF0DC 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 209C40 801DF0E0 3C19801E */  lui   $t9, %hi(D_801D9120) # $t9, 0x801e
/* 209C44 801DF0E4 27399120 */  addiu $t9, %lo(D_801D9120) # addiu $t9, $t9, -0x6ee0
/* 209C48 801DF0E8 AD19008C */  sw    $t9, 0x8c($t0)
/* 209C4C 801DF0EC 8CE90000 */  lw    $t1, ($a3)
/* 209C50 801DF0F0 3C0C800E */  lui   $t4, 0x800e
/* 209C54 801DF0F4 00002825 */  move  $a1, $zero
/* 209C58 801DF0F8 8D2A0000 */  lw    $t2, ($t1)
/* 209C5C 801DF0FC 00003025 */  move  $a2, $zero
/* 209C60 801DF100 000A5880 */  sll   $t3, $t2, 2
/* 209C64 801DF104 018B6021 */  addu  $t4, $t4, $t3
/* 209C68 801DF108 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 209C6C 801DF10C 0C078674 */  jal   func_801E19D0_ovl15
/* 209C70 801DF110 8D840018 */   lw    $a0, 0x18($t4)
/* 209C74 801DF114 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 209C78 801DF118 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 209C7C 801DF11C 8DA20000 */  lw    $v0, ($t5)
/* 209C80 801DF120 00021080 */  sll   $v0, $v0, 2
.L801DF124_ovl15:
/* 209C84 801DF124 3C0E800F */  lui   $t6, %hi(D_800E9E20) # $t6, 0x800f
/* 209C88 801DF128 25CE9E20 */  addiu $t6, %lo(D_800E9E20) # addiu $t6, $t6, -0x61e0
/* 209C8C 801DF12C 004E1821 */  addu  $v1, $v0, $t6
/* 209C90 801DF130 8C6F0000 */  lw    $t7, ($v1)
/* 209C94 801DF134 8FBF0014 */  lw    $ra, 0x14($sp)
/* 209C98 801DF138 27BD0018 */  addiu $sp, $sp, 0x18
/* 209C9C 801DF13C 25F80001 */  addiu $t8, $t7, 1
/* 209CA0 801DF140 03E00008 */  jr    $ra
/* 209CA4 801DF144 AC780000 */   sw    $t8, ($v1)

/* 209CA8 801DF148 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 209CAC 801DF14C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 209CB0 801DF150 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 209CB4 801DF154 240E0001 */  li    $t6, 1
/* 209CB8 801DF158 3C01800D */  lui   $at, %hi(D_800D70AC) # $at, 0x800d
/* 209CBC 801DF15C AFBF0014 */  sw    $ra, 0x14($sp)
/* 209CC0 801DF160 AFA40018 */  sw    $a0, 0x18($sp)
/* 209CC4 801DF164 AC2E70AC */  sw    $t6, %lo(D_800D70AC)($at)
/* 209CC8 801DF168 8F190000 */  lw    $t9, ($t8)
/* 209CCC 801DF16C 3C01800E */  lui   $at, 0x800e
/* 209CD0 801DF170 240F0005 */  li    $t7, 5
/* 209CD4 801DF174 00194080 */  sll   $t0, $t9, 2
/* 209CD8 801DF178 00280821 */  addu  $at, $at, $t0
/* 209CDC 801DF17C 0C02CCFD */  jal   func_800B33F4
/* 209CE0 801DF180 AC2FDFD0 */   sw    $t7, -0x2030($at)
/* 209CE4 801DF184 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 209CE8 801DF188 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 209CEC 801DF18C 3C01801E */  lui   $at, %hi(D_801E684C) # $at, 0x801e
/* 209CF0 801DF190 C424684C */  lwc1  $f4, %lo(D_801E684C)($at)
/* 209CF4 801DF194 8C430000 */  lw    $v1, ($v0)
/* 209CF8 801DF198 3C01800E */  lui   $at, 0x800e
/* 209CFC 801DF19C 3C040001 */  lui   $a0, (0x000103D7 >> 16) # lui $a0, 1
/* 209D00 801DF1A0 00031880 */  sll   $v1, $v1, 2
/* 209D04 801DF1A4 00230821 */  addu  $at, $at, $v1
/* 209D08 801DF1A8 C42625D0 */  lwc1  $f6, 0x25d0($at)
/* 209D0C 801DF1AC 3C01800E */  lui   $at, 0x800e
/* 209D10 801DF1B0 2409000A */  li    $t1, 10
/* 209D14 801DF1B4 4606203C */  c.lt.s $f4, $f6
/* 209D18 801DF1B8 348403D7 */  ori   $a0, (0x000103D7 & 0xFFFF) # ori $a0, $a0, 0x3d7
/* 209D1C 801DF1BC 24050004 */  li    $a1, 4
/* 209D20 801DF1C0 00230821 */  addu  $at, $at, $v1
/* 209D24 801DF1C4 45000014 */  bc1f  .L801DF218_ovl15
/* 209D28 801DF1C8 240E000E */   li    $t6, 14
/* 209D2C 801DF1CC 3C01800E */  lui   $at, 0x800e
/* 209D30 801DF1D0 00230821 */  addu  $at, $at, $v1
/* 209D34 801DF1D4 AC29DC50 */  sw    $t1, -0x23b0($at)
/* 209D38 801DF1D8 8C4A0000 */  lw    $t2, ($v0)
/* 209D3C 801DF1DC 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 209D40 801DF1E0 44814000 */  mtc1  $at, $f8
/* 209D44 801DF1E4 3C01800E */  lui   $at, 0x800e
/* 209D48 801DF1E8 000A5880 */  sll   $t3, $t2, 2
/* 209D4C 801DF1EC 002B0821 */  addu  $at, $at, $t3
/* 209D50 801DF1F0 E4283050 */  swc1  $f8, 0x3050($at)
/* 209D54 801DF1F4 8C4C0000 */  lw    $t4, ($v0)
/* 209D58 801DF1F8 44805000 */  mtc1  $zero, $f10
/* 209D5C 801DF1FC 3C01800E */  lui   $at, 0x800e
/* 209D60 801DF200 000C6880 */  sll   $t5, $t4, 2
/* 209D64 801DF204 002D0821 */  addu  $at, $at, $t5
/* 209D68 801DF208 0C02AA19 */  jal   func_800AA864
/* 209D6C 801DF20C E42A3590 */   swc1  $f10, 0x3590($at)
/* 209D70 801DF210 10000010 */  b     .L801DF254_ovl15
/* 209D74 801DF214 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DF218_ovl15:
/* 209D78 801DF218 AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 209D7C 801DF21C 8C580000 */  lw    $t8, ($v0)
/* 209D80 801DF220 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 209D84 801DF224 44818000 */  mtc1  $at, $f16
/* 209D88 801DF228 3C01800E */  lui   $at, 0x800e
/* 209D8C 801DF22C 0018C880 */  sll   $t9, $t8, 2
/* 209D90 801DF230 00390821 */  addu  $at, $at, $t9
/* 209D94 801DF234 E4303050 */  swc1  $f16, 0x3050($at)
/* 209D98 801DF238 8C4F0000 */  lw    $t7, ($v0)
/* 209D9C 801DF23C 44809000 */  mtc1  $zero, $f18
/* 209DA0 801DF240 3C01800E */  lui   $at, 0x800e
/* 209DA4 801DF244 000F4080 */  sll   $t0, $t7, 2
/* 209DA8 801DF248 00280821 */  addu  $at, $at, $t0
/* 209DAC 801DF24C E4323590 */  swc1  $f18, 0x3590($at)
/* 209DB0 801DF250 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DF254_ovl15:
/* 209DB4 801DF254 27BD0018 */  addiu $sp, $sp, 0x18
/* 209DB8 801DF258 03E00008 */  jr    $ra
/* 209DBC 801DF25C 00000000 */   nop   

/* 209DC0 801DF260 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 209DC4 801DF264 AFB00018 */  sw    $s0, 0x18($sp)
/* 209DC8 801DF268 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 209DCC 801DF26C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 209DD0 801DF270 8E0E0000 */  lw    $t6, ($s0)
/* 209DD4 801DF274 AFBF001C */  sw    $ra, 0x1c($sp)
/* 209DD8 801DF278 AFA40020 */  sw    $a0, 0x20($sp)
/* 209DDC 801DF27C 8DC20000 */  lw    $v0, ($t6)
/* 209DE0 801DF280 3C0F800E */  lui   $t7, 0x800e
/* 209DE4 801DF284 3C01800E */  lui   $at, 0x800e
/* 209DE8 801DF288 00021080 */  sll   $v0, $v0, 2
/* 209DEC 801DF28C 01E27821 */  addu  $t7, $t7, $v0
/* 209DF0 801DF290 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 209DF4 801DF294 00220821 */  addu  $at, $at, $v0
/* 209DF8 801DF298 C4243050 */  lwc1  $f4, 0x3050($at)
/* 209DFC 801DF29C 3C01800F */  lui   $at, 0x800f
/* 209E00 801DF2A0 000FC080 */  sll   $t8, $t7, 2
/* 209E04 801DF2A4 00380821 */  addu  $at, $at, $t8
/* 209E08 801DF2A8 0C0787A2 */  jal   func_801E1E88_ovl15
/* 209E0C 801DF2AC E424A6E0 */   swc1  $f4, -0x5920($at)
/* 209E10 801DF2B0 8E080000 */  lw    $t0, ($s0)
/* 209E14 801DF2B4 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 209E18 801DF2B8 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 209E1C 801DF2BC 8D090000 */  lw    $t1, ($t0)
/* 209E20 801DF2C0 3C19801E */  lui   $t9, %hi(D_801D92AC) # $t9, 0x801e
/* 209E24 801DF2C4 273992AC */  addiu $t9, %lo(D_801D92AC) # addiu $t9, $t9, -0x6d54
/* 209E28 801DF2C8 00095080 */  sll   $t2, $t1, 2
/* 209E2C 801DF2CC 006A5821 */  addu  $t3, $v1, $t2
/* 209E30 801DF2D0 8D6C0000 */  lw    $t4, ($t3)
/* 209E34 801DF2D4 3C02800E */  lui   $v0, 0x800e
/* 209E38 801DF2D8 00003025 */  move  $a2, $zero
/* 209E3C 801DF2DC AD99008C */  sw    $t9, 0x8c($t4)
/* 209E40 801DF2E0 8E0D0000 */  lw    $t5, ($s0)
/* 209E44 801DF2E4 8DAE0000 */  lw    $t6, ($t5)
/* 209E48 801DF2E8 000E7880 */  sll   $t7, $t6, 2
/* 209E4C 801DF2EC 004F1021 */  addu  $v0, $v0, $t7
/* 209E50 801DF2F0 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 209E54 801DF2F4 8C440010 */  lw    $a0, 0x10($v0)
/* 209E58 801DF2F8 0C078674 */  jal   func_801E19D0_ovl15
/* 209E5C 801DF2FC 8C450058 */   lw    $a1, 0x58($v0)
/* 209E60 801DF300 3C18800D */  lui   $t8, %hi(D_800D7098) # $t8, 0x800d
/* 209E64 801DF304 8F187098 */  lw    $t8, %lo(D_800D7098)($t8)
/* 209E68 801DF308 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 209E6C 801DF30C 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 209E70 801DF310 5300000B */  beql  $t8, $zero, .L801DF340_ovl15
/* 209E74 801DF314 8E0D0000 */   lw    $t5, ($s0)
/* 209E78 801DF318 8E090000 */  lw    $t1, ($s0)
/* 209E7C 801DF31C 3C08801E */  lui   $t0, %hi(D_801D9120) # $t0, 0x801e
/* 209E80 801DF320 25089120 */  addiu $t0, %lo(D_801D9120) # addiu $t0, $t0, -0x6ee0
/* 209E84 801DF324 8D2A0000 */  lw    $t2, ($t1)
/* 209E88 801DF328 000A5880 */  sll   $t3, $t2, 2
/* 209E8C 801DF32C 006BC821 */  addu  $t9, $v1, $t3
/* 209E90 801DF330 8F2C0000 */  lw    $t4, ($t9)
/* 209E94 801DF334 10000014 */  b     .L801DF388_ovl15
/* 209E98 801DF338 AD88008C */   sw    $t0, 0x8c($t4)
/* 209E9C 801DF33C 8E0D0000 */  lw    $t5, ($s0)
.L801DF340_ovl15:
/* 209EA0 801DF340 3C0E800F */  lui   $t6, 0x800f
/* 209EA4 801DF344 3C0F801E */  lui   $t7, %hi(D_801D9120) # $t7, 0x801e
/* 209EA8 801DF348 8DA20000 */  lw    $v0, ($t5)
/* 209EAC 801DF34C 00021080 */  sll   $v0, $v0, 2
/* 209EB0 801DF350 01C27021 */  addu  $t6, $t6, $v0
/* 209EB4 801DF354 8DCEA1A0 */  lw    $t6, -0x5e60($t6)
/* 209EB8 801DF358 00625821 */  addu  $t3, $v1, $v0
/* 209EBC 801DF35C 0062C021 */  addu  $t8, $v1, $v0
/* 209EC0 801DF360 51C00006 */  beql  $t6, $zero, .L801DF37C_ovl15
/* 209EC4 801DF364 8D790000 */   lw    $t9, ($t3)
/* 209EC8 801DF368 8F090000 */  lw    $t1, ($t8)
/* 209ECC 801DF36C 25EF9120 */  addiu $t7, %lo(D_801D9120) # addiu $t7, $t7, -0x6ee0
/* 209ED0 801DF370 10000005 */  b     .L801DF388_ovl15
/* 209ED4 801DF374 AD2F008C */   sw    $t7, 0x8c($t1)
/* 209ED8 801DF378 8D790000 */  lw    $t9, ($t3)
.L801DF37C_ovl15:
/* 209EDC 801DF37C 3C0A801E */  lui   $t2, %hi(D_801D90D8) # $t2, 0x801e
/* 209EE0 801DF380 254A90D8 */  addiu $t2, %lo(D_801D90D8) # addiu $t2, $t2, -0x6f28
/* 209EE4 801DF384 AF2A008C */  sw    $t2, 0x8c($t9)
.L801DF388_ovl15:
/* 209EE8 801DF388 8E080000 */  lw    $t0, ($s0)
/* 209EEC 801DF38C 3C0E800E */  lui   $t6, 0x800e
/* 209EF0 801DF390 00002825 */  move  $a1, $zero
/* 209EF4 801DF394 8D0C0000 */  lw    $t4, ($t0)
/* 209EF8 801DF398 00003025 */  move  $a2, $zero
/* 209EFC 801DF39C 000C6880 */  sll   $t5, $t4, 2
/* 209F00 801DF3A0 01CD7021 */  addu  $t6, $t6, $t5
/* 209F04 801DF3A4 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 209F08 801DF3A8 0C07861A */  jal   func_801E1868_ovl15
/* 209F0C 801DF3AC 8DC40018 */   lw    $a0, 0x18($t6)
/* 209F10 801DF3B0 8E180000 */  lw    $t8, ($s0)
/* 209F14 801DF3B4 3C0F800F */  lui   $t7, 0x800f
/* 209F18 801DF3B8 24010001 */  li    $at, 1
/* 209F1C 801DF3BC 8F020000 */  lw    $v0, ($t8)
/* 209F20 801DF3C0 3C09800E */  lui   $t1, 0x800e
/* 209F24 801DF3C4 00021080 */  sll   $v0, $v0, 2
/* 209F28 801DF3C8 01E27821 */  addu  $t7, $t7, $v0
/* 209F2C 801DF3CC 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 209F30 801DF3D0 01224821 */  addu  $t1, $t1, $v0
/* 209F34 801DF3D4 15E10007 */  bne   $t7, $at, .L801DF3F4_ovl15
/* 209F38 801DF3D8 00000000 */   nop   
/* 209F3C 801DF3DC 8D29DC50 */  lw    $t1, -0x23b0($t1)
/* 209F40 801DF3E0 24010010 */  li    $at, 16
/* 209F44 801DF3E4 11210003 */  beq   $t1, $at, .L801DF3F4_ovl15
/* 209F48 801DF3E8 00000000 */   nop   
/* 209F4C 801DF3EC 0C077D04 */  jal   func_801DF410_ovl15
/* 209F50 801DF3F0 8FA40020 */   lw    $a0, 0x20($sp)
.L801DF3F4_ovl15:
/* 209F54 801DF3F4 0C078708 */  jal   func_801E1C20_ovl15
/* 209F58 801DF3F8 8FA40020 */   lw    $a0, 0x20($sp)
/* 209F5C 801DF3FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 209F60 801DF400 8FB00018 */  lw    $s0, 0x18($sp)
/* 209F64 801DF404 27BD0020 */  addiu $sp, $sp, 0x20
/* 209F68 801DF408 03E00008 */  jr    $ra
/* 209F6C 801DF40C 00000000 */   nop   

/* 209F70 801DF410 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 209F74 801DF414 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 209F78 801DF418 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 209F7C 801DF41C AFBF0014 */  sw    $ra, 0x14($sp)
/* 209F80 801DF420 AFA40018 */  sw    $a0, 0x18($sp)
/* 209F84 801DF424 8C6F0000 */  lw    $t7, ($v1)
/* 209F88 801DF428 3C01800E */  lui   $at, 0x800e
/* 209F8C 801DF42C 240E0010 */  li    $t6, 16
/* 209F90 801DF430 000FC080 */  sll   $t8, $t7, 2
/* 209F94 801DF434 00380821 */  addu  $at, $at, $t8
/* 209F98 801DF438 AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 209F9C 801DF43C 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 209FA0 801DF440 C4266E5C */  lwc1  $f6, %lo(D_800D6E5C)($at)
/* 209FA4 801DF444 44802000 */  mtc1  $zero, $f4
/* 209FA8 801DF448 00000000 */  nop   
/* 209FAC 801DF44C 46062032 */  c.eq.s $f4, $f6
/* 209FB0 801DF450 00000000 */  nop   
/* 209FB4 801DF454 45030008 */  bc1tl .L801DF478_ovl15
/* 209FB8 801DF458 24040004 */   li    $a0, 4
/* 209FBC 801DF45C 8C790000 */  lw    $t9, ($v1)
/* 209FC0 801DF460 3C01800E */  lui   $at, 0x800e
/* 209FC4 801DF464 00194080 */  sll   $t0, $t9, 2
/* 209FC8 801DF468 00280821 */  addu  $at, $at, $t0
/* 209FCC 801DF46C 0C02F047 */  jal   func_800BC11C
/* 209FD0 801DF470 C42C7B20 */   lwc1  $f12, 0x7b20($at)
/* 209FD4 801DF474 24040004 */  li    $a0, 4
.L801DF478_ovl15:
/* 209FD8 801DF478 0C067829 */  jal   func_8019E0A4_ovl15
/* 209FDC 801DF47C 24050002 */   li    $a1, 2
/* 209FE0 801DF480 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 209FE4 801DF484 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 209FE8 801DF488 3C01800F */  lui   $at, 0x800f
/* 209FEC 801DF48C 240B0001 */  li    $t3, 1
/* 209FF0 801DF490 8C690000 */  lw    $t1, ($v1)
/* 209FF4 801DF494 2404019E */  li    $a0, 414
/* 209FF8 801DF498 00095080 */  sll   $t2, $t1, 2
/* 209FFC 801DF49C 002A0821 */  addu  $at, $at, $t2
/* 20A000 801DF4A0 AC22BDA0 */  sw    $v0, -0x4260($at)
/* 20A004 801DF4A4 8C6C0000 */  lw    $t4, ($v1)
/* 20A008 801DF4A8 3C01800F */  lui   $at, 0x800f
/* 20A00C 801DF4AC 000C6880 */  sll   $t5, $t4, 2
/* 20A010 801DF4B0 002D0821 */  addu  $at, $at, $t5
/* 20A014 801DF4B4 0C029D9E */  jal   play_sound
/* 20A018 801DF4B8 AC2BA1A0 */   sw    $t3, -0x5e60($at)
/* 20A01C 801DF4BC 24040003 */  li    $a0, 3
/* 20A020 801DF4C0 0C02ED1A */  jal   func_800BB468
/* 20A024 801DF4C4 00002825 */   move  $a1, $zero
/* 20A028 801DF4C8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 20A02C 801DF4CC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 20A030 801DF4D0 3C01800E */  lui   $at, 0x800e
/* 20A034 801DF4D4 3C05800E */  lui   $a1, 0x800e
/* 20A038 801DF4D8 8DE20000 */  lw    $v0, ($t7)
/* 20A03C 801DF4DC 3C07800E */  lui   $a3, 0x800e
/* 20A040 801DF4E0 24040002 */  li    $a0, 2
/* 20A044 801DF4E4 00021080 */  sll   $v0, $v0, 2
/* 20A048 801DF4E8 00220821 */  addu  $at, $at, $v0
/* 20A04C 801DF4EC C4282790 */  lwc1  $f8, 0x2790($at)
/* 20A050 801DF4F0 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 20A054 801DF4F4 44815000 */  mtc1  $at, $f10
/* 20A058 801DF4F8 00A22821 */  addu  $a1, $a1, $v0
/* 20A05C 801DF4FC 00E23821 */  addu  $a3, $a3, $v0
/* 20A060 801DF500 460A4400 */  add.s $f16, $f8, $f10
/* 20A064 801DF504 8CE72950 */  lw    $a3, 0x2950($a3)
/* 20A068 801DF508 8CA525D0 */  lw    $a1, 0x25d0($a1)
/* 20A06C 801DF50C 44068000 */  mfc1  $a2, $f16
/* 20A070 801DF510 0C03F5D5 */  jal   func_800FD754
/* 20A074 801DF514 00000000 */   nop   
/* 20A078 801DF518 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20A07C 801DF51C 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 20A080 801DF520 AC207154 */  sw    $zero, %lo(D_800D7154)($at)
/* 20A084 801DF524 03E00008 */  jr    $ra
/* 20A088 801DF528 27BD0018 */   addiu $sp, $sp, 0x18

/* 20A08C 801DF52C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 20A090 801DF530 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 20A094 801DF534 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20A098 801DF538 240E0001 */  li    $t6, 1
/* 20A09C 801DF53C 3C01800D */  lui   $at, %hi(D_800D70AC) # $at, 0x800d
/* 20A0A0 801DF540 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20A0A4 801DF544 AFA40018 */  sw    $a0, 0x18($sp)
/* 20A0A8 801DF548 AC2E70AC */  sw    $t6, %lo(D_800D70AC)($at)
/* 20A0AC 801DF54C 8DE30000 */  lw    $v1, ($t7)
/* 20A0B0 801DF550 3C06800F */  lui   $a2, 0x800f
/* 20A0B4 801DF554 00031880 */  sll   $v1, $v1, 2
/* 20A0B8 801DF558 00C33021 */  addu  $a2, $a2, $v1
/* 20A0BC 801DF55C 8CC69AA0 */  lw    $a2, -0x6560($a2)
/* 20A0C0 801DF560 2CC10006 */  sltiu $at, $a2, 6
/* 20A0C4 801DF564 1020002F */  beqz  $at, .L801DF624_ovl15
/* 20A0C8 801DF568 0006C080 */   sll   $t8, $a2, 2
/* 20A0CC 801DF56C 3C01801E */  lui   $at, 0x801e
/* 20A0D0 801DF570 00380821 */  addu  $at, $at, $t8
/* 20A0D4 801DF574 8C386850 */  lw    $t8, 0x6850($at)
/* 20A0D8 801DF578 03000008 */  jr    $t8
/* 20A0DC 801DF57C 00000000 */   nop   
/* 20A0E0 801DF580 0C006291 */  jal   random_soft_s32_range
/* 20A0E4 801DF584 24040002 */   li    $a0, 2
/* 20A0E8 801DF588 10400010 */  beqz  $v0, .L801DF5CC_ovl15
/* 20A0EC 801DF58C 3C048005 */   lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 20A0F0 801DF590 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 20A0F4 801DF594 3C09800F */  lui   $t1, %hi(D_800E9AA0) # $t1, 0x800f
/* 20A0F8 801DF598 25299AA0 */  addiu $t1, %lo(D_800E9AA0) # addiu $t1, $t1, -0x6560
/* 20A0FC 801DF59C 8C990000 */  lw    $t9, ($a0)
/* 20A100 801DF5A0 3C06800F */  lui   $a2, 0x800f
/* 20A104 801DF5A4 00194080 */  sll   $t0, $t9, 2
/* 20A108 801DF5A8 01092821 */  addu  $a1, $t0, $t1
/* 20A10C 801DF5AC 8CAA0000 */  lw    $t2, ($a1)
/* 20A110 801DF5B0 254B0001 */  addiu $t3, $t2, 1
/* 20A114 801DF5B4 ACAB0000 */  sw    $t3, ($a1)
/* 20A118 801DF5B8 8C830000 */  lw    $v1, ($a0)
/* 20A11C 801DF5BC 00031880 */  sll   $v1, $v1, 2
/* 20A120 801DF5C0 00C33021 */  addu  $a2, $a2, $v1
/* 20A124 801DF5C4 10000017 */  b     .L801DF624_ovl15
/* 20A128 801DF5C8 8CC69AA0 */   lw    $a2, -0x6560($a2)
.L801DF5CC_ovl15:
/* 20A12C 801DF5CC 0C006291 */  jal   random_soft_s32_range
/* 20A130 801DF5D0 24040002 */   li    $a0, 2
/* 20A134 801DF5D4 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 20A138 801DF5D8 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 20A13C 801DF5DC 3C0E800F */  lui   $t6, %hi(D_800E9AA0) # $t6, 0x800f
/* 20A140 801DF5E0 25CE9AA0 */  addiu $t6, %lo(D_800E9AA0) # addiu $t6, $t6, -0x6560
/* 20A144 801DF5E4 8C8C0000 */  lw    $t4, ($a0)
/* 20A148 801DF5E8 0002C880 */  sll   $t9, $v0, 2
/* 20A14C 801DF5EC 3C09801E */  lui   $t1, 0x801e
/* 20A150 801DF5F0 000C6880 */  sll   $t5, $t4, 2
/* 20A154 801DF5F4 01AE2821 */  addu  $a1, $t5, $t6
/* 20A158 801DF5F8 8CAF0000 */  lw    $t7, ($a1)
/* 20A15C 801DF5FC 3C06800F */  lui   $a2, 0x800f
/* 20A160 801DF600 000FC0C0 */  sll   $t8, $t7, 3
/* 20A164 801DF604 03194021 */  addu  $t0, $t8, $t9
/* 20A168 801DF608 01284821 */  addu  $t1, $t1, $t0
/* 20A16C 801DF60C 8D296614 */  lw    $t1, 0x6614($t1)
/* 20A170 801DF610 ACA90000 */  sw    $t1, ($a1)
/* 20A174 801DF614 8C830000 */  lw    $v1, ($a0)
/* 20A178 801DF618 00031880 */  sll   $v1, $v1, 2
/* 20A17C 801DF61C 00C33021 */  addu  $a2, $a2, $v1
/* 20A180 801DF620 8CC69AA0 */  lw    $a2, -0x6560($a2)
.L801DF624_ovl15:
/* 20A184 801DF624 00065080 */  sll   $t2, $a2, 2
/* 20A188 801DF628 3C0B801E */  lui   $t3, 0x801e
/* 20A18C 801DF62C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20A190 801DF630 016A5821 */  addu  $t3, $t3, $t2
/* 20A194 801DF634 8D6B65FC */  lw    $t3, 0x65fc($t3)
/* 20A198 801DF638 3C01800E */  lui   $at, 0x800e
/* 20A19C 801DF63C 00230821 */  addu  $at, $at, $v1
/* 20A1A0 801DF640 27BD0018 */  addiu $sp, $sp, 0x18
/* 20A1A4 801DF644 03E00008 */  jr    $ra
/* 20A1A8 801DF648 AC2BDC50 */   sw    $t3, -0x23b0($at)

/* 20A1AC 801DF64C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 20A1B0 801DF650 AFB20020 */  sw    $s2, 0x20($sp)
/* 20A1B4 801DF654 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 20A1B8 801DF658 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 20A1BC 801DF65C 8E430000 */  lw    $v1, ($s2)
/* 20A1C0 801DF660 AFBF0034 */  sw    $ra, 0x34($sp)
/* 20A1C4 801DF664 AFB60030 */  sw    $s6, 0x30($sp)
/* 20A1C8 801DF668 AFB5002C */  sw    $s5, 0x2c($sp)
/* 20A1CC 801DF66C AFB40028 */  sw    $s4, 0x28($sp)
/* 20A1D0 801DF670 AFB30024 */  sw    $s3, 0x24($sp)
/* 20A1D4 801DF674 AFB1001C */  sw    $s1, 0x1c($sp)
/* 20A1D8 801DF678 AFB00018 */  sw    $s0, 0x18($sp)
/* 20A1DC 801DF67C AFA40038 */  sw    $a0, 0x38($sp)
/* 20A1E0 801DF680 8C6F0000 */  lw    $t7, ($v1)
/* 20A1E4 801DF684 3C01800E */  lui   $at, 0x800e
/* 20A1E8 801DF688 240E0006 */  li    $t6, 6
/* 20A1EC 801DF68C 000FC080 */  sll   $t8, $t7, 2
/* 20A1F0 801DF690 00380821 */  addu  $at, $at, $t8
/* 20A1F4 801DF694 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 20A1F8 801DF698 8C790000 */  lw    $t9, ($v1)
/* 20A1FC 801DF69C 3C13800E */  lui   $s3, %hi(gEntityVtableIndexArray) # $s3, 0x800e
/* 20A200 801DF6A0 2673DC50 */  addiu $s3, %lo(gEntityVtableIndexArray) # addiu $s3, $s3, -0x23b0
/* 20A204 801DF6A4 00194080 */  sll   $t0, $t9, 2
/* 20A208 801DF6A8 24140009 */  li    $s4, 9
/* 20A20C 801DF6AC 02684821 */  addu  $t1, $s3, $t0
/* 20A210 801DF6B0 AD340000 */  sw    $s4, ($t1)
/* 20A214 801DF6B4 0C006291 */  jal   random_soft_s32_range
/* 20A218 801DF6B8 24040002 */   li    $a0, 2
/* 20A21C 801DF6BC 8E430000 */  lw    $v1, ($s2)
/* 20A220 801DF6C0 3C11800F */  lui   $s1, %hi(D_800E9C60) # $s1, 0x800f
/* 20A224 801DF6C4 26319C60 */  addiu $s1, %lo(D_800E9C60) # addiu $s1, $s1, -0x63a0
/* 20A228 801DF6C8 8C6A0000 */  lw    $t2, ($v1)
/* 20A22C 801DF6CC 3C15801E */  lui   $s5, %hi(D_801E6644) # $s5, 0x801e
/* 20A230 801DF6D0 26B56644 */  addiu $s5, %lo(D_801E6644) # addiu $s5, $s5, 0x6644
/* 20A234 801DF6D4 000A5880 */  sll   $t3, $t2, 2
/* 20A238 801DF6D8 022B6021 */  addu  $t4, $s1, $t3
/* 20A23C 801DF6DC AD820000 */  sw    $v0, ($t4)
/* 20A240 801DF6E0 00008025 */  move  $s0, $zero
/* 20A244 801DF6E4 24160002 */  li    $s6, 2
.L801DF6E8_ovl15:
/* 20A248 801DF6E8 8C620000 */  lw    $v0, ($v1)
/* 20A24C 801DF6EC 00021080 */  sll   $v0, $v0, 2
/* 20A250 801DF6F0 02626821 */  addu  $t5, $s3, $v0
/* 20A254 801DF6F4 8DAF0000 */  lw    $t7, ($t5)
/* 20A258 801DF6F8 02227021 */  addu  $t6, $s1, $v0
/* 20A25C 801DF6FC 568F001B */  bnel  $s4, $t7, .L801DF76C_ovl15
/* 20A260 801DF700 8FBF0034 */   lw    $ra, 0x34($sp)
/* 20A264 801DF704 8DD80000 */  lw    $t8, ($t6)
/* 20A268 801DF708 0018C880 */  sll   $t9, $t8, 2
/* 20A26C 801DF70C 02B94021 */  addu  $t0, $s5, $t9
/* 20A270 801DF710 0C02A806 */  jal   func_800AA018
/* 20A274 801DF714 8D040000 */   lw    $a0, ($t0)
/* 20A278 801DF718 0C002DAF */  jal   finish_current_thread
/* 20A27C 801DF71C 2404001E */   li    $a0, 30
/* 20A280 801DF720 0C029D9E */  jal   play_sound
/* 20A284 801DF724 24040199 */   li    $a0, 409
/* 20A288 801DF728 0C02BC9F */  jal   func_800AF27C
/* 20A28C 801DF72C 00000000 */   nop   
/* 20A290 801DF730 8E430000 */  lw    $v1, ($s2)
/* 20A294 801DF734 26100001 */  addiu $s0, $s0, 1
/* 20A298 801DF738 8C690000 */  lw    $t1, ($v1)
/* 20A29C 801DF73C 00095080 */  sll   $t2, $t1, 2
/* 20A2A0 801DF740 022A1021 */  addu  $v0, $s1, $t2
/* 20A2A4 801DF744 8C4B0000 */  lw    $t3, ($v0)
/* 20A2A8 801DF748 256C0001 */  addiu $t4, $t3, 1
/* 20A2AC 801DF74C 05810004 */  bgez  $t4, .L801DF760_ovl15
/* 20A2B0 801DF750 318D0001 */   andi  $t5, $t4, 1
/* 20A2B4 801DF754 11A00002 */  beqz  $t5, .L801DF760_ovl15
/* 20A2B8 801DF758 00000000 */   nop   
/* 20A2BC 801DF75C 25ADFFFE */  addiu $t5, $t5, -2
.L801DF760_ovl15:
/* 20A2C0 801DF760 1616FFE1 */  bne   $s0, $s6, .L801DF6E8_ovl15
/* 20A2C4 801DF764 AC4D0000 */   sw    $t5, ($v0)
/* 20A2C8 801DF768 8FBF0034 */  lw    $ra, 0x34($sp)
.L801DF76C_ovl15:
/* 20A2CC 801DF76C 8FB00018 */  lw    $s0, 0x18($sp)
/* 20A2D0 801DF770 8FB1001C */  lw    $s1, 0x1c($sp)
/* 20A2D4 801DF774 8FB20020 */  lw    $s2, 0x20($sp)
/* 20A2D8 801DF778 8FB30024 */  lw    $s3, 0x24($sp)
/* 20A2DC 801DF77C 8FB40028 */  lw    $s4, 0x28($sp)
/* 20A2E0 801DF780 8FB5002C */  lw    $s5, 0x2c($sp)
/* 20A2E4 801DF784 8FB60030 */  lw    $s6, 0x30($sp)
/* 20A2E8 801DF788 03E00008 */  jr    $ra
/* 20A2EC 801DF78C 27BD0038 */   addiu $sp, $sp, 0x38

/* 20A2F0 801DF790 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 20A2F4 801DF794 AFB00018 */  sw    $s0, 0x18($sp)
/* 20A2F8 801DF798 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20A2FC 801DF79C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20A300 801DF7A0 8E0E0000 */  lw    $t6, ($s0)
/* 20A304 801DF7A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20A308 801DF7A8 AFA40020 */  sw    $a0, 0x20($sp)
/* 20A30C 801DF7AC 8DC20000 */  lw    $v0, ($t6)
/* 20A310 801DF7B0 3C0F800E */  lui   $t7, 0x800e
/* 20A314 801DF7B4 3C01800E */  lui   $at, 0x800e
/* 20A318 801DF7B8 00021080 */  sll   $v0, $v0, 2
/* 20A31C 801DF7BC 01E27821 */  addu  $t7, $t7, $v0
/* 20A320 801DF7C0 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 20A324 801DF7C4 00220821 */  addu  $at, $at, $v0
/* 20A328 801DF7C8 C4243050 */  lwc1  $f4, 0x3050($at)
/* 20A32C 801DF7CC 3C01800F */  lui   $at, 0x800f
/* 20A330 801DF7D0 000FC080 */  sll   $t8, $t7, 2
/* 20A334 801DF7D4 00380821 */  addu  $at, $at, $t8
/* 20A338 801DF7D8 0C0787A2 */  jal   func_801E1E88_ovl15
/* 20A33C 801DF7DC E424A6E0 */   swc1  $f4, -0x5920($at)
/* 20A340 801DF7E0 8E080000 */  lw    $t0, ($s0)
/* 20A344 801DF7E4 3C0B800E */  lui   $t3, 0x800e
/* 20A348 801DF7E8 3C19801E */  lui   $t9, %hi(D_801D92AC) # $t9, 0x801e
/* 20A34C 801DF7EC 8D090000 */  lw    $t1, ($t0)
/* 20A350 801DF7F0 273992AC */  addiu $t9, %lo(D_801D92AC) # addiu $t9, $t9, -0x6d54
/* 20A354 801DF7F4 3C03800E */  lui   $v1, 0x800e
/* 20A358 801DF7F8 00095080 */  sll   $t2, $t1, 2
/* 20A35C 801DF7FC 016A5821 */  addu  $t3, $t3, $t2
/* 20A360 801DF800 8D6B1B50 */  lw    $t3, 0x1b50($t3)
/* 20A364 801DF804 00003025 */  move  $a2, $zero
/* 20A368 801DF808 AD79008C */  sw    $t9, 0x8c($t3)
/* 20A36C 801DF80C 8E0C0000 */  lw    $t4, ($s0)
/* 20A370 801DF810 8D8D0000 */  lw    $t5, ($t4)
/* 20A374 801DF814 000D7080 */  sll   $t6, $t5, 2
/* 20A378 801DF818 006E1821 */  addu  $v1, $v1, $t6
/* 20A37C 801DF81C 8C63FBD0 */  lw    $v1, -0x430($v1)
/* 20A380 801DF820 8C640010 */  lw    $a0, 0x10($v1)
/* 20A384 801DF824 0C078674 */  jal   func_801E19D0_ovl15
/* 20A388 801DF828 8C650058 */   lw    $a1, 0x58($v1)
/* 20A38C 801DF82C 8E180000 */  lw    $t8, ($s0)
/* 20A390 801DF830 3C07800E */  lui   $a3, %hi(D_800E1B50) # $a3, 0x800e
/* 20A394 801DF834 24E71B50 */  addiu $a3, %lo(D_800E1B50) # addiu $a3, $a3, 0x1b50
/* 20A398 801DF838 8F080000 */  lw    $t0, ($t8)
/* 20A39C 801DF83C 3C0F801E */  lui   $t7, %hi(D_801D906C) # $t7, 0x801e
/* 20A3A0 801DF840 25EF906C */  addiu $t7, %lo(D_801D906C) # addiu $t7, $t7, -0x6f94
/* 20A3A4 801DF844 00084880 */  sll   $t1, $t0, 2
/* 20A3A8 801DF848 00E95021 */  addu  $t2, $a3, $t1
/* 20A3AC 801DF84C 8D590000 */  lw    $t9, ($t2)
/* 20A3B0 801DF850 3C0C800F */  lui   $t4, 0x800f
/* 20A3B4 801DF854 3C03800E */  lui   $v1, 0x800e
/* 20A3B8 801DF858 AF2F008C */  sw    $t7, 0x8c($t9)
/* 20A3BC 801DF85C 8E0B0000 */  lw    $t3, ($s0)
/* 20A3C0 801DF860 8D620000 */  lw    $v0, ($t3)
/* 20A3C4 801DF864 00021080 */  sll   $v0, $v0, 2
/* 20A3C8 801DF868 01826021 */  addu  $t4, $t4, $v0
/* 20A3CC 801DF86C 8D8C9C60 */  lw    $t4, -0x63a0($t4)
/* 20A3D0 801DF870 00621821 */  addu  $v1, $v1, $v0
/* 20A3D4 801DF874 1180000B */  beqz  $t4, .L801DF8A4_ovl15
/* 20A3D8 801DF878 00000000 */   nop   
/* 20A3DC 801DF87C 3C03800E */  lui   $v1, 0x800e
/* 20A3E0 801DF880 00621821 */  addu  $v1, $v1, $v0
/* 20A3E4 801DF884 8C63FBD0 */  lw    $v1, -0x430($v1)
/* 20A3E8 801DF888 00003025 */  move  $a2, $zero
/* 20A3EC 801DF88C 8C640030 */  lw    $a0, 0x30($v1)
/* 20A3F0 801DF890 0C078674 */  jal   func_801E19D0_ovl15
/* 20A3F4 801DF894 8C650034 */   lw    $a1, 0x34($v1)
/* 20A3F8 801DF898 3C07800E */  lui   $a3, %hi(D_800E1B50) # $a3, 0x800e
/* 20A3FC 801DF89C 10000008 */  b     .L801DF8C0_ovl15
/* 20A400 801DF8A0 24E71B50 */   addiu $a3, %lo(D_800E1B50) # addiu $a3, $a3, 0x1b50
.L801DF8A4_ovl15:
/* 20A404 801DF8A4 8C63FBD0 */  lw    $v1, -0x430($v1)
/* 20A408 801DF8A8 00003025 */  move  $a2, $zero
/* 20A40C 801DF8AC 8C640048 */  lw    $a0, 0x48($v1)
/* 20A410 801DF8B0 0C078674 */  jal   func_801E19D0_ovl15
/* 20A414 801DF8B4 8C65004C */   lw    $a1, 0x4c($v1)
/* 20A418 801DF8B8 3C07800E */  lui   $a3, %hi(D_800E1B50) # $a3, 0x800e
/* 20A41C 801DF8BC 24E71B50 */  addiu $a3, %lo(D_800E1B50) # addiu $a3, $a3, 0x1b50
.L801DF8C0_ovl15:
/* 20A420 801DF8C0 3C0D800D */  lui   $t5, %hi(D_800D7098) # $t5, 0x800d
/* 20A424 801DF8C4 8DAD7098 */  lw    $t5, %lo(D_800D7098)($t5)
/* 20A428 801DF8C8 51A0000B */  beql  $t5, $zero, .L801DF8F8_ovl15
/* 20A42C 801DF8CC 8E190000 */   lw    $t9, ($s0)
/* 20A430 801DF8D0 8E180000 */  lw    $t8, ($s0)
/* 20A434 801DF8D4 3C0E801E */  lui   $t6, %hi(D_801D9120) # $t6, 0x801e
/* 20A438 801DF8D8 25CE9120 */  addiu $t6, %lo(D_801D9120) # addiu $t6, $t6, -0x6ee0
/* 20A43C 801DF8DC 8F080000 */  lw    $t0, ($t8)
/* 20A440 801DF8E0 00084880 */  sll   $t1, $t0, 2
/* 20A444 801DF8E4 00E95021 */  addu  $t2, $a3, $t1
/* 20A448 801DF8E8 8D4F0000 */  lw    $t7, ($t2)
/* 20A44C 801DF8EC 10000014 */  b     .L801DF940_ovl15
/* 20A450 801DF8F0 ADEE008C */   sw    $t6, 0x8c($t7)
/* 20A454 801DF8F4 8E190000 */  lw    $t9, ($s0)
.L801DF8F8_ovl15:
/* 20A458 801DF8F8 3C0B800F */  lui   $t3, 0x800f
/* 20A45C 801DF8FC 3C0C801E */  lui   $t4, %hi(D_801D9120) # $t4, 0x801e
/* 20A460 801DF900 8F220000 */  lw    $v0, ($t9)
/* 20A464 801DF904 00021080 */  sll   $v0, $v0, 2
/* 20A468 801DF908 01625821 */  addu  $t3, $t3, $v0
/* 20A46C 801DF90C 8D6BA1A0 */  lw    $t3, -0x5e60($t3)
/* 20A470 801DF910 00E24821 */  addu  $t1, $a3, $v0
/* 20A474 801DF914 00E26821 */  addu  $t5, $a3, $v0
/* 20A478 801DF918 51600006 */  beql  $t3, $zero, .L801DF934_ovl15
/* 20A47C 801DF91C 8D2A0000 */   lw    $t2, ($t1)
/* 20A480 801DF920 8DB80000 */  lw    $t8, ($t5)
/* 20A484 801DF924 258C9120 */  addiu $t4, %lo(D_801D9120) # addiu $t4, $t4, -0x6ee0
/* 20A488 801DF928 10000005 */  b     .L801DF940_ovl15
/* 20A48C 801DF92C AF0C008C */   sw    $t4, 0x8c($t8)
/* 20A490 801DF930 8D2A0000 */  lw    $t2, ($t1)
.L801DF934_ovl15:
/* 20A494 801DF934 3C08801E */  lui   $t0, %hi(D_801D90D8) # $t0, 0x801e
/* 20A498 801DF938 250890D8 */  addiu $t0, %lo(D_801D90D8) # addiu $t0, $t0, -0x6f28
/* 20A49C 801DF93C AD48008C */  sw    $t0, 0x8c($t2)
.L801DF940_ovl15:
/* 20A4A0 801DF940 8E0E0000 */  lw    $t6, ($s0)
/* 20A4A4 801DF944 3C0B800E */  lui   $t3, 0x800e
/* 20A4A8 801DF948 00002825 */  move  $a1, $zero
/* 20A4AC 801DF94C 8DCF0000 */  lw    $t7, ($t6)
/* 20A4B0 801DF950 00003025 */  move  $a2, $zero
/* 20A4B4 801DF954 000FC880 */  sll   $t9, $t7, 2
/* 20A4B8 801DF958 01795821 */  addu  $t3, $t3, $t9
/* 20A4BC 801DF95C 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 20A4C0 801DF960 0C07861A */  jal   func_801E1868_ovl15
/* 20A4C4 801DF964 8D640018 */   lw    $a0, 0x18($t3)
/* 20A4C8 801DF968 8E0D0000 */  lw    $t5, ($s0)
/* 20A4CC 801DF96C 3C0C800F */  lui   $t4, 0x800f
/* 20A4D0 801DF970 24010001 */  li    $at, 1
/* 20A4D4 801DF974 8DA20000 */  lw    $v0, ($t5)
/* 20A4D8 801DF978 3C18800E */  lui   $t8, 0x800e
/* 20A4DC 801DF97C 00021080 */  sll   $v0, $v0, 2
/* 20A4E0 801DF980 01826021 */  addu  $t4, $t4, $v0
/* 20A4E4 801DF984 8D8C83E0 */  lw    $t4, -0x7c20($t4)
/* 20A4E8 801DF988 0302C021 */  addu  $t8, $t8, $v0
/* 20A4EC 801DF98C 15810007 */  bne   $t4, $at, .L801DF9AC_ovl15
/* 20A4F0 801DF990 00000000 */   nop   
/* 20A4F4 801DF994 8F18DC50 */  lw    $t8, -0x23b0($t8)
/* 20A4F8 801DF998 24010010 */  li    $at, 16
/* 20A4FC 801DF99C 13010003 */  beq   $t8, $at, .L801DF9AC_ovl15
/* 20A500 801DF9A0 00000000 */   nop   
/* 20A504 801DF9A4 0C077D04 */  jal   func_801DF410_ovl15
/* 20A508 801DF9A8 8FA40020 */   lw    $a0, 0x20($sp)
.L801DF9AC_ovl15:
/* 20A50C 801DF9AC 0C078708 */  jal   func_801E1C20_ovl15
/* 20A510 801DF9B0 8FA40020 */   lw    $a0, 0x20($sp)
/* 20A514 801DF9B4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 20A518 801DF9B8 8FB00018 */  lw    $s0, 0x18($sp)
/* 20A51C 801DF9BC 27BD0020 */  addiu $sp, $sp, 0x20
/* 20A520 801DF9C0 03E00008 */  jr    $ra
/* 20A524 801DF9C4 00000000 */   nop   

/* 20A528 801DF9C8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20A52C 801DF9CC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20A530 801DF9D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20A534 801DF9D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20A538 801DF9D8 AFA40018 */  sw    $a0, 0x18($sp)
/* 20A53C 801DF9DC 8C4F0000 */  lw    $t7, ($v0)
/* 20A540 801DF9E0 3C01800E */  lui   $at, 0x800e
/* 20A544 801DF9E4 240E0007 */  li    $t6, 7
/* 20A548 801DF9E8 000FC080 */  sll   $t8, $t7, 2
/* 20A54C 801DF9EC 00380821 */  addu  $at, $at, $t8
/* 20A550 801DF9F0 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 20A554 801DF9F4 8C480000 */  lw    $t0, ($v0)
/* 20A558 801DF9F8 3C01800E */  lui   $at, 0x800e
/* 20A55C 801DF9FC 24190009 */  li    $t9, 9
/* 20A560 801DFA00 00084880 */  sll   $t1, $t0, 2
/* 20A564 801DFA04 00290821 */  addu  $at, $at, $t1
/* 20A568 801DFA08 3C040001 */  lui   $a0, (0x000103D1 >> 16) # lui $a0, 1
/* 20A56C 801DFA0C AC39DC50 */  sw    $t9, -0x23b0($at)
/* 20A570 801DFA10 0C02A806 */  jal   func_800AA018
/* 20A574 801DFA14 348403D1 */   ori   $a0, (0x000103D1 & 0xFFFF) # ori $a0, $a0, 0x3d1
/* 20A578 801DFA18 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 20A57C 801DFA1C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 20A580 801DFA20 3C0A801E */  lui   $t2, %hi(D_801DFC10) # $t2, 0x801e
/* 20A584 801DFA24 3C01800E */  lui   $at, 0x800e
/* 20A588 801DFA28 8D6C0000 */  lw    $t4, ($t3)
/* 20A58C 801DFA2C 254AFC10 */  addiu $t2, %lo(D_801DFC10) # addiu $t2, $t2, -0x3f0
/* 20A590 801DFA30 000C6880 */  sll   $t5, $t4, 2
/* 20A594 801DFA34 002D0821 */  addu  $at, $at, $t5
/* 20A598 801DFA38 0C02BC9F */  jal   func_800AF27C
/* 20A59C 801DFA3C AC2AF310 */   sw    $t2, -0xcf0($at)
/* 20A5A0 801DFA40 3C040001 */  lui   $a0, (0x000103D7 >> 16) # lui $a0, 1
/* 20A5A4 801DFA44 348403D7 */  ori   $a0, (0x000103D7 & 0xFFFF) # ori $a0, $a0, 0x3d7
/* 20A5A8 801DFA48 0C02AA19 */  jal   func_800AA864
/* 20A5AC 801DFA4C 24050004 */   li    $a1, 4
/* 20A5B0 801DFA50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20A5B4 801DFA54 27BD0018 */  addiu $sp, $sp, 0x18
/* 20A5B8 801DFA58 03E00008 */  jr    $ra
/* 20A5BC 801DFA5C 00000000 */   nop   

/* 20A5C0 801DFA60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 20A5C4 801DFA64 AFB00018 */  sw    $s0, 0x18($sp)
/* 20A5C8 801DFA68 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20A5CC 801DFA6C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20A5D0 801DFA70 8E0E0000 */  lw    $t6, ($s0)
/* 20A5D4 801DFA74 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20A5D8 801DFA78 AFA40020 */  sw    $a0, 0x20($sp)
/* 20A5DC 801DFA7C 8DC20000 */  lw    $v0, ($t6)
/* 20A5E0 801DFA80 3C0F800E */  lui   $t7, 0x800e
/* 20A5E4 801DFA84 3C01800E */  lui   $at, 0x800e
/* 20A5E8 801DFA88 00021080 */  sll   $v0, $v0, 2
/* 20A5EC 801DFA8C 01E27821 */  addu  $t7, $t7, $v0
/* 20A5F0 801DFA90 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 20A5F4 801DFA94 00220821 */  addu  $at, $at, $v0
/* 20A5F8 801DFA98 C4243050 */  lwc1  $f4, 0x3050($at)
/* 20A5FC 801DFA9C 3C01800F */  lui   $at, 0x800f
/* 20A600 801DFAA0 000FC080 */  sll   $t8, $t7, 2
/* 20A604 801DFAA4 00380821 */  addu  $at, $at, $t8
/* 20A608 801DFAA8 0C0787A2 */  jal   func_801E1E88_ovl15
/* 20A60C 801DFAAC E424A6E0 */   swc1  $f4, -0x5920($at)
/* 20A610 801DFAB0 8E080000 */  lw    $t0, ($s0)
/* 20A614 801DFAB4 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 20A618 801DFAB8 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 20A61C 801DFABC 8D090000 */  lw    $t1, ($t0)
/* 20A620 801DFAC0 3C19801E */  lui   $t9, %hi(D_801D92AC) # $t9, 0x801e
/* 20A624 801DFAC4 273992AC */  addiu $t9, %lo(D_801D92AC) # addiu $t9, $t9, -0x6d54
/* 20A628 801DFAC8 00095080 */  sll   $t2, $t1, 2
/* 20A62C 801DFACC 006A5821 */  addu  $t3, $v1, $t2
/* 20A630 801DFAD0 8D6C0000 */  lw    $t4, ($t3)
/* 20A634 801DFAD4 3C02800E */  lui   $v0, 0x800e
/* 20A638 801DFAD8 00003025 */  move  $a2, $zero
/* 20A63C 801DFADC AD99008C */  sw    $t9, 0x8c($t4)
/* 20A640 801DFAE0 8E0D0000 */  lw    $t5, ($s0)
/* 20A644 801DFAE4 8DAE0000 */  lw    $t6, ($t5)
/* 20A648 801DFAE8 000E7880 */  sll   $t7, $t6, 2
/* 20A64C 801DFAEC 004F1021 */  addu  $v0, $v0, $t7
/* 20A650 801DFAF0 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20A654 801DFAF4 8C440010 */  lw    $a0, 0x10($v0)
/* 20A658 801DFAF8 0C078674 */  jal   func_801E19D0_ovl15
/* 20A65C 801DFAFC 8C450058 */   lw    $a1, 0x58($v0)
/* 20A660 801DFB00 3C18800D */  lui   $t8, %hi(D_800D7098) # $t8, 0x800d
/* 20A664 801DFB04 8F187098 */  lw    $t8, %lo(D_800D7098)($t8)
/* 20A668 801DFB08 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 20A66C 801DFB0C 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 20A670 801DFB10 5300000B */  beql  $t8, $zero, .L801DFB40_ovl15
/* 20A674 801DFB14 8E0D0000 */   lw    $t5, ($s0)
/* 20A678 801DFB18 8E090000 */  lw    $t1, ($s0)
/* 20A67C 801DFB1C 3C08801E */  lui   $t0, %hi(D_801D9120) # $t0, 0x801e
/* 20A680 801DFB20 25089120 */  addiu $t0, %lo(D_801D9120) # addiu $t0, $t0, -0x6ee0
/* 20A684 801DFB24 8D2A0000 */  lw    $t2, ($t1)
/* 20A688 801DFB28 000A5880 */  sll   $t3, $t2, 2
/* 20A68C 801DFB2C 006BC821 */  addu  $t9, $v1, $t3
/* 20A690 801DFB30 8F2C0000 */  lw    $t4, ($t9)
/* 20A694 801DFB34 10000014 */  b     .L801DFB88_ovl15
/* 20A698 801DFB38 AD88008C */   sw    $t0, 0x8c($t4)
/* 20A69C 801DFB3C 8E0D0000 */  lw    $t5, ($s0)
.L801DFB40_ovl15:
/* 20A6A0 801DFB40 3C0E800F */  lui   $t6, 0x800f
/* 20A6A4 801DFB44 3C0F801E */  lui   $t7, %hi(D_801D9120) # $t7, 0x801e
/* 20A6A8 801DFB48 8DA20000 */  lw    $v0, ($t5)
/* 20A6AC 801DFB4C 00021080 */  sll   $v0, $v0, 2
/* 20A6B0 801DFB50 01C27021 */  addu  $t6, $t6, $v0
/* 20A6B4 801DFB54 8DCEA1A0 */  lw    $t6, -0x5e60($t6)
/* 20A6B8 801DFB58 00625821 */  addu  $t3, $v1, $v0
/* 20A6BC 801DFB5C 0062C021 */  addu  $t8, $v1, $v0
/* 20A6C0 801DFB60 51C00006 */  beql  $t6, $zero, .L801DFB7C_ovl15
/* 20A6C4 801DFB64 8D790000 */   lw    $t9, ($t3)
/* 20A6C8 801DFB68 8F090000 */  lw    $t1, ($t8)
/* 20A6CC 801DFB6C 25EF9120 */  addiu $t7, %lo(D_801D9120) # addiu $t7, $t7, -0x6ee0
/* 20A6D0 801DFB70 10000005 */  b     .L801DFB88_ovl15
/* 20A6D4 801DFB74 AD2F008C */   sw    $t7, 0x8c($t1)
/* 20A6D8 801DFB78 8D790000 */  lw    $t9, ($t3)
.L801DFB7C_ovl15:
/* 20A6DC 801DFB7C 3C0A801E */  lui   $t2, %hi(D_801D90D8) # $t2, 0x801e
/* 20A6E0 801DFB80 254A90D8 */  addiu $t2, %lo(D_801D90D8) # addiu $t2, $t2, -0x6f28
/* 20A6E4 801DFB84 AF2A008C */  sw    $t2, 0x8c($t9)
.L801DFB88_ovl15:
/* 20A6E8 801DFB88 8E080000 */  lw    $t0, ($s0)
/* 20A6EC 801DFB8C 3C0E800E */  lui   $t6, 0x800e
/* 20A6F0 801DFB90 00002825 */  move  $a1, $zero
/* 20A6F4 801DFB94 8D0C0000 */  lw    $t4, ($t0)
/* 20A6F8 801DFB98 00003025 */  move  $a2, $zero
/* 20A6FC 801DFB9C 000C6880 */  sll   $t5, $t4, 2
/* 20A700 801DFBA0 01CD7021 */  addu  $t6, $t6, $t5
/* 20A704 801DFBA4 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 20A708 801DFBA8 0C07861A */  jal   func_801E1868_ovl15
/* 20A70C 801DFBAC 8DC40018 */   lw    $a0, 0x18($t6)
/* 20A710 801DFBB0 8E180000 */  lw    $t8, ($s0)
/* 20A714 801DFBB4 3C0F800F */  lui   $t7, 0x800f
/* 20A718 801DFBB8 24010001 */  li    $at, 1
/* 20A71C 801DFBBC 8F020000 */  lw    $v0, ($t8)
/* 20A720 801DFBC0 3C09800E */  lui   $t1, 0x800e
/* 20A724 801DFBC4 00021080 */  sll   $v0, $v0, 2
/* 20A728 801DFBC8 01E27821 */  addu  $t7, $t7, $v0
/* 20A72C 801DFBCC 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 20A730 801DFBD0 01224821 */  addu  $t1, $t1, $v0
/* 20A734 801DFBD4 15E10007 */  bne   $t7, $at, .L801DFBF4_ovl15
/* 20A738 801DFBD8 00000000 */   nop   
/* 20A73C 801DFBDC 8D29DC50 */  lw    $t1, -0x23b0($t1)
/* 20A740 801DFBE0 24010010 */  li    $at, 16
/* 20A744 801DFBE4 11210003 */  beq   $t1, $at, .L801DFBF4_ovl15
/* 20A748 801DFBE8 00000000 */   nop   
/* 20A74C 801DFBEC 0C077D04 */  jal   func_801DF410_ovl15
/* 20A750 801DFBF0 8FA40020 */   lw    $a0, 0x20($sp)
.L801DFBF4_ovl15:
/* 20A754 801DFBF4 0C078708 */  jal   func_801E1C20_ovl15
/* 20A758 801DFBF8 8FA40020 */   lw    $a0, 0x20($sp)
/* 20A75C 801DFBFC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 20A760 801DFC00 8FB00018 */  lw    $s0, 0x18($sp)
/* 20A764 801DFC04 27BD0020 */  addiu $sp, $sp, 0x20
/* 20A768 801DFC08 03E00008 */  jr    $ra
/* 20A76C 801DFC0C 00000000 */   nop   

/* 20A770 801DFC10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20A774 801DFC14 44866000 */  mtc1  $a2, $f12
/* 20A778 801DFC18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20A77C 801DFC1C 14A00031 */  bnez  $a1, .L801DFCE4_ovl15
/* 20A780 801DFC20 AFA40018 */   sw    $a0, 0x18($sp)
/* 20A784 801DFC24 4600610D */  trunc.w.s $f4, $f12
/* 20A788 801DFC28 24010001 */  li    $at, 1
/* 20A78C 801DFC2C 24040038 */  li    $a0, 56
/* 20A790 801DFC30 440F2000 */  mfc1  $t7, $f4
/* 20A794 801DFC34 00000000 */  nop   
/* 20A798 801DFC38 55E1002B */  bnel  $t7, $at, .L801DFCE8_ovl15
/* 20A79C 801DFC3C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 20A7A0 801DFC40 0C06B30D */  jal   func_801ACC34_ovl15
/* 20A7A4 801DFC44 24050002 */   li    $a1, 2
/* 20A7A8 801DFC48 10400026 */  beqz  $v0, .L801DFCE4_ovl15
/* 20A7AC 801DFC4C 3C05800E */   lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 20A7B0 801DFC50 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 20A7B4 801DFC54 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 20A7B8 801DFC58 00021880 */  sll   $v1, $v0, 2
/* 20A7BC 801DFC5C 3C01800F */  lui   $at, 0x800f
/* 20A7C0 801DFC60 00230821 */  addu  $at, $at, $v1
/* 20A7C4 801DFC64 24180001 */  li    $t8, 1
/* 20A7C8 801DFC68 AC388E60 */  sw    $t8, -0x71a0($at)
/* 20A7CC 801DFC6C 8C990000 */  lw    $t9, ($a0)
/* 20A7D0 801DFC70 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 20A7D4 801DFC74 00A35021 */  addu  $t2, $a1, $v1
/* 20A7D8 801DFC78 00194080 */  sll   $t0, $t9, 2
/* 20A7DC 801DFC7C 00A84821 */  addu  $t1, $a1, $t0
/* 20A7E0 801DFC80 C5260000 */  lwc1  $f6, ($t1)
/* 20A7E4 801DFC84 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 20A7E8 801DFC88 24C62790 */  addiu $a2, %lo(gEntitiesNextPosYArray) # addiu $a2, $a2, 0x2790
/* 20A7EC 801DFC8C E5460000 */  swc1  $f6, ($t2)
/* 20A7F0 801DFC90 8C8B0000 */  lw    $t3, ($a0)
/* 20A7F4 801DFC94 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 20A7F8 801DFC98 44815000 */  mtc1  $at, $f10
/* 20A7FC 801DFC9C 000B6080 */  sll   $t4, $t3, 2
/* 20A800 801DFCA0 00CC6821 */  addu  $t5, $a2, $t4
/* 20A804 801DFCA4 C5A80000 */  lwc1  $f8, ($t5)
/* 20A808 801DFCA8 00C37021 */  addu  $t6, $a2, $v1
/* 20A80C 801DFCAC 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 20A810 801DFCB0 460A4400 */  add.s $f16, $f8, $f10
/* 20A814 801DFCB4 24E72950 */  addiu $a3, %lo(gEntitiesNextPosZArray) # addiu $a3, $a3, 0x2950
/* 20A818 801DFCB8 00E34021 */  addu  $t0, $a3, $v1
/* 20A81C 801DFCBC 3C01800E */  lui   $at, 0x800e
/* 20A820 801DFCC0 E5D00000 */  swc1  $f16, ($t6)
/* 20A824 801DFCC4 8C8F0000 */  lw    $t7, ($a0)
/* 20A828 801DFCC8 00230821 */  addu  $at, $at, $v1
/* 20A82C 801DFCCC 000FC080 */  sll   $t8, $t7, 2
/* 20A830 801DFCD0 00F8C821 */  addu  $t9, $a3, $t8
/* 20A834 801DFCD4 C7320000 */  lwc1  $f18, ($t9)
/* 20A838 801DFCD8 E5120000 */  swc1  $f18, ($t0)
/* 20A83C 801DFCDC 8C890000 */  lw    $t1, ($a0)
/* 20A840 801DFCE0 AC290D50 */  sw    $t1, 0xd50($at)
.L801DFCE4_ovl15:
/* 20A844 801DFCE4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DFCE8_ovl15:
/* 20A848 801DFCE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 20A84C 801DFCEC 03E00008 */  jr    $ra
/* 20A850 801DFCF0 00000000 */   nop   

/* 20A854 801DFCF4 27BDFF98 */  addiu $sp, $sp, -0x68
/* 20A858 801DFCF8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20A85C 801DFCFC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20A860 801DFD00 AFBF003C */  sw    $ra, 0x3c($sp)
/* 20A864 801DFD04 AFBE0038 */  sw    $fp, 0x38($sp)
/* 20A868 801DFD08 AFB70034 */  sw    $s7, 0x34($sp)
/* 20A86C 801DFD0C AFB60030 */  sw    $s6, 0x30($sp)
/* 20A870 801DFD10 AFB5002C */  sw    $s5, 0x2c($sp)
/* 20A874 801DFD14 AFB40028 */  sw    $s4, 0x28($sp)
/* 20A878 801DFD18 AFB30024 */  sw    $s3, 0x24($sp)
/* 20A87C 801DFD1C AFB20020 */  sw    $s2, 0x20($sp)
/* 20A880 801DFD20 AFB1001C */  sw    $s1, 0x1c($sp)
/* 20A884 801DFD24 AFB00018 */  sw    $s0, 0x18($sp)
/* 20A888 801DFD28 AFA40068 */  sw    $a0, 0x68($sp)
/* 20A88C 801DFD2C 8C4F0000 */  lw    $t7, ($v0)
/* 20A890 801DFD30 3C01800E */  lui   $at, 0x800e
/* 20A894 801DFD34 240E0008 */  li    $t6, 8
/* 20A898 801DFD38 000FC080 */  sll   $t8, $t7, 2
/* 20A89C 801DFD3C 00380821 */  addu  $at, $at, $t8
/* 20A8A0 801DFD40 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 20A8A4 801DFD44 8C480000 */  lw    $t0, ($v0)
/* 20A8A8 801DFD48 3C01800E */  lui   $at, 0x800e
/* 20A8AC 801DFD4C 24190009 */  li    $t9, 9
/* 20A8B0 801DFD50 00084880 */  sll   $t1, $t0, 2
/* 20A8B4 801DFD54 00290821 */  addu  $at, $at, $t1
/* 20A8B8 801DFD58 3C040001 */  lui   $a0, (0x000103D5 >> 16) # lui $a0, 1
/* 20A8BC 801DFD5C AC39DC50 */  sw    $t9, -0x23b0($at)
/* 20A8C0 801DFD60 0C02A806 */  jal   func_800AA018
/* 20A8C4 801DFD64 348403D5 */   ori   $a0, (0x000103D5 & 0xFFFF) # ori $a0, $a0, 0x3d5
/* 20A8C8 801DFD68 3C01800D */  lui   $at, %hi(D_800D70BC) # $at, 0x800d
/* 20A8CC 801DFD6C AC2070BC */  sw    $zero, %lo(D_800D70BC)($at)
/* 20A8D0 801DFD70 0C002DAF */  jal   finish_current_thread
/* 20A8D4 801DFD74 2404000A */   li    $a0, 10
/* 20A8D8 801DFD78 0C029D9E */  jal   play_sound
/* 20A8DC 801DFD7C 24040251 */   li    $a0, 593
/* 20A8E0 801DFD80 0C006291 */  jal   random_soft_s32_range
/* 20A8E4 801DFD84 24040004 */   li    $a0, 4
/* 20A8E8 801DFD88 AFA2005C */  sw    $v0, 0x5c($sp)
/* 20A8EC 801DFD8C 0C006291 */  jal   random_soft_s32_range
/* 20A8F0 801DFD90 2404000E */   li    $a0, 14
/* 20A8F4 801DFD94 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosXArray) # $fp, 0x800e
/* 20A8F8 801DFD98 3C17801E */  lui   $s7, %hi(D_801E65EC) # $s7, 0x801e
/* 20A8FC 801DFD9C 3C16800E */  lui   $s6, %hi(D_800DFBD0) # $s6, 0x800e
/* 20A900 801DFDA0 3C14800F */  lui   $s4, %hi(D_800E8E60) # $s4, 0x800f
/* 20A904 801DFDA4 AFA20058 */  sw    $v0, 0x58($sp)
/* 20A908 801DFDA8 26948E60 */  addiu $s4, %lo(D_800E8E60) # addiu $s4, $s4, -0x71a0
/* 20A90C 801DFDAC 26D6FBD0 */  addiu $s6, %lo(D_800DFBD0) # addiu $s6, $s6, -0x430
/* 20A910 801DFDB0 26F765EC */  addiu $s7, %lo(D_801E65EC) # addiu $s7, $s7, 0x65ec
/* 20A914 801DFDB4 27DE25D0 */  addiu $fp, %lo(gEntitiesNextPosXArray) # addiu $fp, $fp, 0x25d0
/* 20A918 801DFDB8 00008825 */  move  $s1, $zero
/* 20A91C 801DFDBC 27B5004C */  addiu $s5, $sp, 0x4c
/* 20A920 801DFDC0 24040037 */  li    $a0, 55
.L801DFDC4_ovl15:
/* 20A924 801DFDC4 0C06B30D */  jal   func_801ACC34_ovl15
/* 20A928 801DFDC8 24050001 */   li    $a1, 1
/* 20A92C 801DFDCC 10400034 */  beqz  $v0, .L801DFEA0_ovl15
/* 20A930 801DFDD0 00028080 */   sll   $s0, $v0, 2
/* 20A934 801DFDD4 240A0001 */  li    $t2, 1
/* 20A938 801DFDD8 02905821 */  addu  $t3, $s4, $s0
/* 20A93C 801DFDDC AD6A0000 */  sw    $t2, ($t3)
/* 20A940 801DFDE0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 20A944 801DFDE4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 20A948 801DFDE8 00114080 */  sll   $t0, $s1, 2
/* 20A94C 801DFDEC 02E8C821 */  addu  $t9, $s7, $t0
/* 20A950 801DFDF0 8D8D0000 */  lw    $t5, ($t4)
/* 20A954 801DFDF4 8F290000 */  lw    $t1, ($t9)
/* 20A958 801DFDF8 8FAC005C */  lw    $t4, 0x5c($sp)
/* 20A95C 801DFDFC 000D7880 */  sll   $t7, $t5, 2
/* 20A960 801DFE00 02CF7021 */  addu  $t6, $s6, $t7
/* 20A964 801DFE04 8DD80000 */  lw    $t8, ($t6)
/* 20A968 801DFE08 8FA80058 */  lw    $t0, 0x58($sp)
/* 20A96C 801DFE0C 00095080 */  sll   $t2, $t1, 2
/* 20A970 801DFE10 030A5821 */  addu  $t3, $t8, $t2
/* 20A974 801DFE14 3C18801E */  lui   $t8, %hi(D_801E65B4) # $t8, 0x801e
/* 20A978 801DFE18 3C0E801E */  lui   $t6, %hi(D_801E664C) # $t6, 0x801e
/* 20A97C 801DFE1C 000C6880 */  sll   $t5, $t4, 2
/* 20A980 801DFE20 0008C880 */  sll   $t9, $t0, 2
/* 20A984 801DFE24 03314821 */  addu  $t1, $t9, $s1
/* 20A988 801DFE28 01B17821 */  addu  $t7, $t5, $s1
/* 20A98C 801DFE2C 25CE664C */  addiu $t6, %lo(D_801E664C) # addiu $t6, $t6, 0x664c
/* 20A990 801DFE30 271865B4 */  addiu $t8, %lo(D_801E65B4) # addiu $t8, $t8, 0x65b4
/* 20A994 801DFE34 01389821 */  addu  $s3, $t1, $t8
/* 20A998 801DFE38 01EE9021 */  addu  $s2, $t7, $t6
/* 20A99C 801DFE3C 8D650000 */  lw    $a1, ($t3)
/* 20A9A0 801DFE40 0C0291E5 */  jal   func_800A4794
/* 20A9A4 801DFE44 02A02025 */   move  $a0, $s5
/* 20A9A8 801DFE48 C7A4004C */  lwc1  $f4, 0x4c($sp)
/* 20A9AC 801DFE4C 03D05021 */  addu  $t2, $fp, $s0
/* 20A9B0 801DFE50 3C01800E */  lui   $at, 0x800e
/* 20A9B4 801DFE54 E5440000 */  swc1  $f4, ($t2)
/* 20A9B8 801DFE58 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 20A9BC 801DFE5C 00300821 */  addu  $at, $at, $s0
/* 20A9C0 801DFE60 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 20A9C4 801DFE64 E4262790 */  swc1  $f6, 0x2790($at)
/* 20A9C8 801DFE68 3C01800E */  lui   $at, 0x800e
/* 20A9CC 801DFE6C 00300821 */  addu  $at, $at, $s0
/* 20A9D0 801DFE70 E4282950 */  swc1  $f8, 0x2950($at)
/* 20A9D4 801DFE74 3C01800F */  lui   $at, 0x800f
/* 20A9D8 801DFE78 00300821 */  addu  $at, $at, $s0
/* 20A9DC 801DFE7C AC319AA0 */  sw    $s1, -0x6560($at)
/* 20A9E0 801DFE80 824B0000 */  lb    $t3, ($s2)
/* 20A9E4 801DFE84 3C01800F */  lui   $at, 0x800f
/* 20A9E8 801DFE88 00300821 */  addu  $at, $at, $s0
/* 20A9EC 801DFE8C AC2B9C60 */  sw    $t3, -0x63a0($at)
/* 20A9F0 801DFE90 826C0000 */  lb    $t4, ($s3)
/* 20A9F4 801DFE94 3C01800F */  lui   $at, 0x800f
/* 20A9F8 801DFE98 00300821 */  addu  $at, $at, $s0
/* 20A9FC 801DFE9C AC2C9E20 */  sw    $t4, -0x61e0($at)
.L801DFEA0_ovl15:
/* 20AA00 801DFEA0 26310001 */  addiu $s1, $s1, 1
/* 20AA04 801DFEA4 24010004 */  li    $at, 4
/* 20AA08 801DFEA8 5621FFC6 */  bnel  $s1, $at, .L801DFDC4_ovl15
/* 20AA0C 801DFEAC 24040037 */   li    $a0, 55
/* 20AA10 801DFEB0 0C002DAF */  jal   finish_current_thread
/* 20AA14 801DFEB4 2404000A */   li    $a0, 10
/* 20AA18 801DFEB8 240D0001 */  li    $t5, 1
/* 20AA1C 801DFEBC 3C01800D */  lui   $at, %hi(D_800D70BC) # $at, 0x800d
/* 20AA20 801DFEC0 AC2D70BC */  sw    $t5, %lo(D_800D70BC)($at)
/* 20AA24 801DFEC4 0C029D9E */  jal   play_sound
/* 20AA28 801DFEC8 2404019A */   li    $a0, 410
/* 20AA2C 801DFECC 0C02BC9F */  jal   func_800AF27C
/* 20AA30 801DFED0 00000000 */   nop   
/* 20AA34 801DFED4 3C040001 */  lui   $a0, (0x000103D7 >> 16) # lui $a0, 1
/* 20AA38 801DFED8 348403D7 */  ori   $a0, (0x000103D7 & 0xFFFF) # ori $a0, $a0, 0x3d7
/* 20AA3C 801DFEDC 0C02AA19 */  jal   func_800AA864
/* 20AA40 801DFEE0 2405000A */   li    $a1, 10
/* 20AA44 801DFEE4 8FBF003C */  lw    $ra, 0x3c($sp)
/* 20AA48 801DFEE8 8FB00018 */  lw    $s0, 0x18($sp)
/* 20AA4C 801DFEEC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 20AA50 801DFEF0 8FB20020 */  lw    $s2, 0x20($sp)
/* 20AA54 801DFEF4 8FB30024 */  lw    $s3, 0x24($sp)
/* 20AA58 801DFEF8 8FB40028 */  lw    $s4, 0x28($sp)
/* 20AA5C 801DFEFC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 20AA60 801DFF00 8FB60030 */  lw    $s6, 0x30($sp)
/* 20AA64 801DFF04 8FB70034 */  lw    $s7, 0x34($sp)
/* 20AA68 801DFF08 8FBE0038 */  lw    $fp, 0x38($sp)
/* 20AA6C 801DFF0C 03E00008 */  jr    $ra
/* 20AA70 801DFF10 27BD0068 */   addiu $sp, $sp, 0x68

/* 20AA74 801DFF14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 20AA78 801DFF18 AFB00018 */  sw    $s0, 0x18($sp)
/* 20AA7C 801DFF1C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20AA80 801DFF20 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20AA84 801DFF24 8E0E0000 */  lw    $t6, ($s0)
/* 20AA88 801DFF28 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20AA8C 801DFF2C AFA40020 */  sw    $a0, 0x20($sp)
/* 20AA90 801DFF30 8DC20000 */  lw    $v0, ($t6)
/* 20AA94 801DFF34 3C0F800E */  lui   $t7, 0x800e
/* 20AA98 801DFF38 3C01800E */  lui   $at, 0x800e
/* 20AA9C 801DFF3C 00021080 */  sll   $v0, $v0, 2
/* 20AAA0 801DFF40 01E27821 */  addu  $t7, $t7, $v0
/* 20AAA4 801DFF44 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 20AAA8 801DFF48 00220821 */  addu  $at, $at, $v0
/* 20AAAC 801DFF4C C4243050 */  lwc1  $f4, 0x3050($at)
/* 20AAB0 801DFF50 3C01800F */  lui   $at, 0x800f
/* 20AAB4 801DFF54 000FC080 */  sll   $t8, $t7, 2
/* 20AAB8 801DFF58 00380821 */  addu  $at, $at, $t8
/* 20AABC 801DFF5C 0C0787A2 */  jal   func_801E1E88_ovl15
/* 20AAC0 801DFF60 E424A6E0 */   swc1  $f4, -0x5920($at)
/* 20AAC4 801DFF64 8E080000 */  lw    $t0, ($s0)
/* 20AAC8 801DFF68 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 20AACC 801DFF6C 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 20AAD0 801DFF70 8D090000 */  lw    $t1, ($t0)
/* 20AAD4 801DFF74 3C19801E */  lui   $t9, %hi(D_801D92AC) # $t9, 0x801e
/* 20AAD8 801DFF78 273992AC */  addiu $t9, %lo(D_801D92AC) # addiu $t9, $t9, -0x6d54
/* 20AADC 801DFF7C 00095080 */  sll   $t2, $t1, 2
/* 20AAE0 801DFF80 006A5821 */  addu  $t3, $v1, $t2
/* 20AAE4 801DFF84 8D6C0000 */  lw    $t4, ($t3)
/* 20AAE8 801DFF88 3C02800E */  lui   $v0, 0x800e
/* 20AAEC 801DFF8C 00003025 */  move  $a2, $zero
/* 20AAF0 801DFF90 AD99008C */  sw    $t9, 0x8c($t4)
/* 20AAF4 801DFF94 8E0D0000 */  lw    $t5, ($s0)
/* 20AAF8 801DFF98 8DAE0000 */  lw    $t6, ($t5)
/* 20AAFC 801DFF9C 000E7880 */  sll   $t7, $t6, 2
/* 20AB00 801DFFA0 004F1021 */  addu  $v0, $v0, $t7
/* 20AB04 801DFFA4 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20AB08 801DFFA8 8C440010 */  lw    $a0, 0x10($v0)
/* 20AB0C 801DFFAC 0C078674 */  jal   func_801E19D0_ovl15
/* 20AB10 801DFFB0 8C450058 */   lw    $a1, 0x58($v0)
/* 20AB14 801DFFB4 3C18800D */  lui   $t8, %hi(D_800D7098) # $t8, 0x800d
/* 20AB18 801DFFB8 8F187098 */  lw    $t8, %lo(D_800D7098)($t8)
/* 20AB1C 801DFFBC 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 20AB20 801DFFC0 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 20AB24 801DFFC4 5300000B */  beql  $t8, $zero, .L801DFFF4_ovl15
/* 20AB28 801DFFC8 8E0D0000 */   lw    $t5, ($s0)
/* 20AB2C 801DFFCC 8E090000 */  lw    $t1, ($s0)
/* 20AB30 801DFFD0 3C08801E */  lui   $t0, %hi(D_801D9120) # $t0, 0x801e
/* 20AB34 801DFFD4 25089120 */  addiu $t0, %lo(D_801D9120) # addiu $t0, $t0, -0x6ee0
/* 20AB38 801DFFD8 8D2A0000 */  lw    $t2, ($t1)
/* 20AB3C 801DFFDC 000A5880 */  sll   $t3, $t2, 2
/* 20AB40 801DFFE0 006BC821 */  addu  $t9, $v1, $t3
/* 20AB44 801DFFE4 8F2C0000 */  lw    $t4, ($t9)
/* 20AB48 801DFFE8 10000014 */  b     .L801E003C_ovl15
/* 20AB4C 801DFFEC AD88008C */   sw    $t0, 0x8c($t4)
/* 20AB50 801DFFF0 8E0D0000 */  lw    $t5, ($s0)
.L801DFFF4_ovl15:
/* 20AB54 801DFFF4 3C0E800F */  lui   $t6, 0x800f
/* 20AB58 801DFFF8 3C0F801E */  lui   $t7, %hi(D_801D9120) # $t7, 0x801e
/* 20AB5C 801DFFFC 8DA20000 */  lw    $v0, ($t5)
/* 20AB60 801E0000 00021080 */  sll   $v0, $v0, 2
/* 20AB64 801E0004 01C27021 */  addu  $t6, $t6, $v0
/* 20AB68 801E0008 8DCEA1A0 */  lw    $t6, -0x5e60($t6)
/* 20AB6C 801E000C 00625821 */  addu  $t3, $v1, $v0
/* 20AB70 801E0010 0062C021 */  addu  $t8, $v1, $v0
/* 20AB74 801E0014 51C00006 */  beql  $t6, $zero, .L801E0030_ovl15
/* 20AB78 801E0018 8D790000 */   lw    $t9, ($t3)
/* 20AB7C 801E001C 8F090000 */  lw    $t1, ($t8)
/* 20AB80 801E0020 25EF9120 */  addiu $t7, %lo(D_801D9120) # addiu $t7, $t7, -0x6ee0
/* 20AB84 801E0024 10000005 */  b     .L801E003C_ovl15
/* 20AB88 801E0028 AD2F008C */   sw    $t7, 0x8c($t1)
/* 20AB8C 801E002C 8D790000 */  lw    $t9, ($t3)
.L801E0030_ovl15:
/* 20AB90 801E0030 3C0A801E */  lui   $t2, %hi(D_801D90D8) # $t2, 0x801e
/* 20AB94 801E0034 254A90D8 */  addiu $t2, %lo(D_801D90D8) # addiu $t2, $t2, -0x6f28
/* 20AB98 801E0038 AF2A008C */  sw    $t2, 0x8c($t9)
.L801E003C_ovl15:
/* 20AB9C 801E003C 8E080000 */  lw    $t0, ($s0)
/* 20ABA0 801E0040 3C0E800E */  lui   $t6, 0x800e
/* 20ABA4 801E0044 00002825 */  move  $a1, $zero
/* 20ABA8 801E0048 8D0C0000 */  lw    $t4, ($t0)
/* 20ABAC 801E004C 00003025 */  move  $a2, $zero
/* 20ABB0 801E0050 000C6880 */  sll   $t5, $t4, 2
/* 20ABB4 801E0054 01CD7021 */  addu  $t6, $t6, $t5
/* 20ABB8 801E0058 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 20ABBC 801E005C 0C07861A */  jal   func_801E1868_ovl15
/* 20ABC0 801E0060 8DC40018 */   lw    $a0, 0x18($t6)
/* 20ABC4 801E0064 8E180000 */  lw    $t8, ($s0)
/* 20ABC8 801E0068 3C0F800F */  lui   $t7, 0x800f
/* 20ABCC 801E006C 24010001 */  li    $at, 1
/* 20ABD0 801E0070 8F020000 */  lw    $v0, ($t8)
/* 20ABD4 801E0074 3C09800E */  lui   $t1, 0x800e
/* 20ABD8 801E0078 00021080 */  sll   $v0, $v0, 2
/* 20ABDC 801E007C 01E27821 */  addu  $t7, $t7, $v0
/* 20ABE0 801E0080 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 20ABE4 801E0084 01224821 */  addu  $t1, $t1, $v0
/* 20ABE8 801E0088 15E10007 */  bne   $t7, $at, .L801E00A8_ovl15
/* 20ABEC 801E008C 00000000 */   nop   
/* 20ABF0 801E0090 8D29DC50 */  lw    $t1, -0x23b0($t1)
/* 20ABF4 801E0094 24010010 */  li    $at, 16
/* 20ABF8 801E0098 11210003 */  beq   $t1, $at, .L801E00A8_ovl15
/* 20ABFC 801E009C 00000000 */   nop   
/* 20AC00 801E00A0 0C077D04 */  jal   func_801DF410_ovl15
/* 20AC04 801E00A4 8FA40020 */   lw    $a0, 0x20($sp)
.L801E00A8_ovl15:
/* 20AC08 801E00A8 0C078708 */  jal   func_801E1C20_ovl15
/* 20AC0C 801E00AC 8FA40020 */   lw    $a0, 0x20($sp)
/* 20AC10 801E00B0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 20AC14 801E00B4 8FB00018 */  lw    $s0, 0x18($sp)
/* 20AC18 801E00B8 27BD0020 */  addiu $sp, $sp, 0x20
/* 20AC1C 801E00BC 03E00008 */  jr    $ra
/* 20AC20 801E00C0 00000000 */   nop   

/* 20AC24 801E00C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 20AC28 801E00C8 AFB10020 */  sw    $s1, 0x20($sp)
/* 20AC2C 801E00CC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 20AC30 801E00D0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 20AC34 801E00D4 8E220000 */  lw    $v0, ($s1)
/* 20AC38 801E00D8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 20AC3C 801E00DC AFB0001C */  sw    $s0, 0x1c($sp)
/* 20AC40 801E00E0 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 20AC44 801E00E4 AFA40028 */  sw    $a0, 0x28($sp)
/* 20AC48 801E00E8 8C4F0000 */  lw    $t7, ($v0)
/* 20AC4C 801E00EC 3C01800E */  lui   $at, 0x800e
/* 20AC50 801E00F0 240E0009 */  li    $t6, 9
/* 20AC54 801E00F4 000FC080 */  sll   $t8, $t7, 2
/* 20AC58 801E00F8 00380821 */  addu  $at, $at, $t8
/* 20AC5C 801E00FC AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 20AC60 801E0100 8C480000 */  lw    $t0, ($v0)
/* 20AC64 801E0104 3C01800F */  lui   $at, 0x800f
/* 20AC68 801E0108 24190001 */  li    $t9, 1
/* 20AC6C 801E010C 00084880 */  sll   $t1, $t0, 2
/* 20AC70 801E0110 00290821 */  addu  $at, $at, $t1
/* 20AC74 801E0114 3C03800D */  lui   $v1, %hi(D_800D7098) # $v1, 0x800d
/* 20AC78 801E0118 AC39A360 */  sw    $t9, -0x5ca0($at)
/* 20AC7C 801E011C 24637098 */  addiu $v1, %lo(D_800D7098) # addiu $v1, $v1, 0x7098
/* 20AC80 801E0120 AC600014 */  sw    $zero, 0x14($v1)
/* 20AC84 801E0124 AC600004 */  sw    $zero, 4($v1)
/* 20AC88 801E0128 8C4A0000 */  lw    $t2, ($v0)
/* 20AC8C 801E012C 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 20AC90 801E0130 44812000 */  mtc1  $at, $f4
/* 20AC94 801E0134 3C01800E */  lui   $at, 0x800e
/* 20AC98 801E0138 000A5880 */  sll   $t3, $t2, 2
/* 20AC9C 801E013C 002B0821 */  addu  $at, $at, $t3
/* 20ACA0 801E0140 E4243050 */  swc1  $f4, 0x3050($at)
/* 20ACA4 801E0144 8C4C0000 */  lw    $t4, ($v0)
/* 20ACA8 801E0148 44800000 */  mtc1  $zero, $f0
/* 20ACAC 801E014C 3C01800E */  lui   $at, 0x800e
/* 20ACB0 801E0150 000C6880 */  sll   $t5, $t4, 2
/* 20ACB4 801E0154 002D0821 */  addu  $at, $at, $t5
/* 20ACB8 801E0158 E4203590 */  swc1  $f0, 0x3590($at)
/* 20ACBC 801E015C 8C4F0000 */  lw    $t7, ($v0)
/* 20ACC0 801E0160 3C01800E */  lui   $at, 0x800e
/* 20ACC4 801E0164 3C10800E */  lui   $s0, %hi(D_800E3750) # $s0, 0x800e
/* 20ACC8 801E0168 000F7080 */  sll   $t6, $t7, 2
/* 20ACCC 801E016C 002E0821 */  addu  $at, $at, $t6
/* 20ACD0 801E0170 E4203210 */  swc1  $f0, 0x3210($at)
/* 20ACD4 801E0174 8C580000 */  lw    $t8, ($v0)
/* 20ACD8 801E0178 3C01801E */  lui   $at, %hi(D_801E6868) # $at, 0x801e
/* 20ACDC 801E017C C4266868 */  lwc1  $f6, %lo(D_801E6868)($at)
/* 20ACE0 801E0180 26103750 */  addiu $s0, %lo(D_800E3750) # addiu $s0, $s0, 0x3750
/* 20ACE4 801E0184 00184080 */  sll   $t0, $t8, 2
/* 20ACE8 801E0188 0208C821 */  addu  $t9, $s0, $t0
/* 20ACEC 801E018C E7260000 */  swc1  $f6, ($t9)
/* 20ACF0 801E0190 8C490000 */  lw    $t1, ($v0)
/* 20ACF4 801E0194 3C01800F */  lui   $at, 0x800f
/* 20ACF8 801E0198 2404019C */  li    $a0, 412
/* 20ACFC 801E019C 00095080 */  sll   $t2, $t1, 2
/* 20AD00 801E01A0 002A0821 */  addu  $at, $at, $t2
/* 20AD04 801E01A4 AC208920 */  sw    $zero, -0x76e0($at)
/* 20AD08 801E01A8 8C4B0000 */  lw    $t3, ($v0)
/* 20AD0C 801E01AC 3C018013 */  lui   $at, %hi(D_80129214) # $at, 0x8013
/* 20AD10 801E01B0 C4289214 */  lwc1  $f8, %lo(D_80129214)($at)
/* 20AD14 801E01B4 3C01800F */  lui   $at, 0x800f
/* 20AD18 801E01B8 000B6080 */  sll   $t4, $t3, 2
/* 20AD1C 801E01BC 002C0821 */  addu  $at, $at, $t4
/* 20AD20 801E01C0 E428AA60 */  swc1  $f8, -0x55a0($at)
/* 20AD24 801E01C4 8C4D0000 */  lw    $t5, ($v0)
/* 20AD28 801E01C8 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20AD2C 801E01CC 44815000 */  mtc1  $at, $f10
/* 20AD30 801E01D0 3C01800F */  lui   $at, 0x800f
/* 20AD34 801E01D4 000D7880 */  sll   $t7, $t5, 2
/* 20AD38 801E01D8 002F0821 */  addu  $at, $at, $t7
/* 20AD3C 801E01DC 0C029D9E */  jal   play_sound
/* 20AD40 801E01E0 E42AA8A0 */   swc1  $f10, -0x5760($at)
/* 20AD44 801E01E4 3C040001 */  lui   $a0, (0x000103E1 >> 16) # lui $a0, 1
/* 20AD48 801E01E8 0C02A855 */  jal   func_800AA154
/* 20AD4C 801E01EC 348403E1 */   ori   $a0, (0x000103E1 & 0xFFFF) # ori $a0, $a0, 0x3e1
/* 20AD50 801E01F0 0C029D9E */  jal   play_sound
/* 20AD54 801E01F4 2404019F */   li    $a0, 415
/* 20AD58 801E01F8 8E220000 */  lw    $v0, ($s1)
/* 20AD5C 801E01FC 44800000 */  mtc1  $zero, $f0
/* 20AD60 801E0200 3C01800F */  lui   $at, 0x800f
/* 20AD64 801E0204 8C4E0000 */  lw    $t6, ($v0)
/* 20AD68 801E0208 3C040001 */  lui   $a0, (0x000103CB >> 16) # lui $a0, 1
/* 20AD6C 801E020C 348403CB */  ori   $a0, (0x000103CB & 0xFFFF) # ori $a0, $a0, 0x3cb
/* 20AD70 801E0210 000EC080 */  sll   $t8, $t6, 2
/* 20AD74 801E0214 00380821 */  addu  $at, $at, $t8
/* 20AD78 801E0218 E420A8A0 */  swc1  $f0, -0x5760($at)
/* 20AD7C 801E021C 8C480000 */  lw    $t0, ($v0)
/* 20AD80 801E0220 3C01800E */  lui   $at, 0x800e
/* 20AD84 801E0224 0008C880 */  sll   $t9, $t0, 2
/* 20AD88 801E0228 02194821 */  addu  $t1, $s0, $t9
/* 20AD8C 801E022C E5200000 */  swc1  $f0, ($t1)
/* 20AD90 801E0230 8C430000 */  lw    $v1, ($v0)
/* 20AD94 801E0234 00031880 */  sll   $v1, $v1, 2
/* 20AD98 801E0238 02035021 */  addu  $t2, $s0, $v1
/* 20AD9C 801E023C C5500000 */  lwc1  $f16, ($t2)
/* 20ADA0 801E0240 00230821 */  addu  $at, $at, $v1
/* 20ADA4 801E0244 E4303210 */  swc1  $f16, 0x3210($at)
/* 20ADA8 801E0248 8C4B0000 */  lw    $t3, ($v0)
/* 20ADAC 801E024C 3C01801E */  lui   $at, %hi(D_801E686C) # $at, 0x801e
/* 20ADB0 801E0250 C432686C */  lwc1  $f18, %lo(D_801E686C)($at)
/* 20ADB4 801E0254 3C01800E */  lui   $at, 0x800e
/* 20ADB8 801E0258 000B6080 */  sll   $t4, $t3, 2
/* 20ADBC 801E025C 002C0821 */  addu  $at, $at, $t4
/* 20ADC0 801E0260 0C02A806 */  jal   func_800AA018
/* 20ADC4 801E0264 E4323C90 */   swc1  $f18, 0x3c90($at)
/* 20ADC8 801E0268 8E220000 */  lw    $v0, ($s1)
/* 20ADCC 801E026C 3C10800E */  lui   $s0, %hi(gEntitiesNextPosXArray) # $s0, 0x800e
/* 20ADD0 801E0270 261025D0 */  addiu $s0, %lo(gEntitiesNextPosXArray) # addiu $s0, $s0, 0x25d0
/* 20ADD4 801E0274 8C4D0000 */  lw    $t5, ($v0)
/* 20ADD8 801E0278 3C01801E */  lui   $at, %hi(D_801E6870) # $at, 0x801e
/* 20ADDC 801E027C C4346870 */  lwc1  $f20, %lo(D_801E6870)($at)
/* 20ADE0 801E0280 000D7880 */  sll   $t7, $t5, 2
/* 20ADE4 801E0284 020F7021 */  addu  $t6, $s0, $t7
/* 20ADE8 801E0288 C5C40000 */  lwc1  $f4, ($t6)
/* 20ADEC 801E028C 4604A03C */  c.lt.s $f20, $f4
/* 20ADF0 801E0290 00000000 */  nop   
/* 20ADF4 801E0294 4502000D */  bc1fl .L801E02CC_ovl15
/* 20ADF8 801E0298 24090001 */   li    $t1, 1
.L801E029C_ovl15:
/* 20ADFC 801E029C 0C002DAF */  jal   finish_current_thread
/* 20AE00 801E02A0 24040001 */   li    $a0, 1
/* 20AE04 801E02A4 8E220000 */  lw    $v0, ($s1)
/* 20AE08 801E02A8 8C580000 */  lw    $t8, ($v0)
/* 20AE0C 801E02AC 00184080 */  sll   $t0, $t8, 2
/* 20AE10 801E02B0 0208C821 */  addu  $t9, $s0, $t0
/* 20AE14 801E02B4 C7260000 */  lwc1  $f6, ($t9)
/* 20AE18 801E02B8 4606A03C */  c.lt.s $f20, $f6
/* 20AE1C 801E02BC 00000000 */  nop   
/* 20AE20 801E02C0 4501FFF6 */  bc1t  .L801E029C_ovl15
/* 20AE24 801E02C4 00000000 */   nop   
/* 20AE28 801E02C8 24090001 */  li    $t1, 1
.L801E02CC_ovl15:
/* 20AE2C 801E02CC 3C01800D */  lui   $at, %hi(D_800D70A0) # $at, 0x800d
/* 20AE30 801E02D0 AC2970A0 */  sw    $t1, %lo(D_800D70A0)($at)
/* 20AE34 801E02D4 8C4A0000 */  lw    $t2, ($v0)
/* 20AE38 801E02D8 3C01801E */  lui   $at, %hi(D_801E6874) # $at, 0x801e
/* 20AE3C 801E02DC C4286874 */  lwc1  $f8, %lo(D_801E6874)($at)
/* 20AE40 801E02E0 3C01800E */  lui   $at, 0x800e
/* 20AE44 801E02E4 000A5880 */  sll   $t3, $t2, 2
/* 20AE48 801E02E8 002B0821 */  addu  $at, $at, $t3
/* 20AE4C 801E02EC 24040014 */  li    $a0, 20
/* 20AE50 801E02F0 0C002DAF */  jal   finish_current_thread
/* 20AE54 801E02F4 E4283590 */   swc1  $f8, 0x3590($at)
/* 20AE58 801E02F8 8E220000 */  lw    $v0, ($s1)
/* 20AE5C 801E02FC 44805000 */  mtc1  $zero, $f10
/* 20AE60 801E0300 3C01800E */  lui   $at, 0x800e
/* 20AE64 801E0304 8C4C0000 */  lw    $t4, ($v0)
/* 20AE68 801E0308 000C6880 */  sll   $t5, $t4, 2
/* 20AE6C 801E030C 002D0821 */  addu  $at, $at, $t5
/* 20AE70 801E0310 E42A3590 */  swc1  $f10, 0x3590($at)
/* 20AE74 801E0314 8C430000 */  lw    $v1, ($v0)
/* 20AE78 801E0318 3C01800E */  lui   $at, 0x800e
/* 20AE7C 801E031C 00031880 */  sll   $v1, $v1, 2
/* 20AE80 801E0320 00230821 */  addu  $at, $at, $v1
/* 20AE84 801E0324 C4303590 */  lwc1  $f16, 0x3590($at)
/* 20AE88 801E0328 3C01800E */  lui   $at, 0x800e
/* 20AE8C 801E032C 00230821 */  addu  $at, $at, $v1
/* 20AE90 801E0330 E4303050 */  swc1  $f16, 0x3050($at)
/* 20AE94 801E0334 8C4F0000 */  lw    $t7, ($v0)
/* 20AE98 801E0338 3C01801E */  lui   $at, %hi(D_801E6878) # $at, 0x801e
/* 20AE9C 801E033C C4326878 */  lwc1  $f18, %lo(D_801E6878)($at)
/* 20AEA0 801E0340 3C01800E */  lui   $at, 0x800e
/* 20AEA4 801E0344 000F7080 */  sll   $t6, $t7, 2
/* 20AEA8 801E0348 002E0821 */  addu  $at, $at, $t6
/* 20AEAC 801E034C E4323AD0 */  swc1  $f18, 0x3ad0($at)
/* 20AEB0 801E0350 8C580000 */  lw    $t8, ($v0)
/* 20AEB4 801E0354 3C01800F */  lui   $at, 0x800f
/* 20AEB8 801E0358 00184080 */  sll   $t0, $t8, 2
/* 20AEBC 801E035C 00280821 */  addu  $at, $at, $t0
/* 20AEC0 801E0360 0C02BE85 */  jal   func_800AFA14
/* 20AEC4 801E0364 AC20A360 */   sw    $zero, -0x5ca0($at)
/* 20AEC8 801E0368 8FBF0024 */  lw    $ra, 0x24($sp)
/* 20AECC 801E036C D7B40010 */  ldc1  $f20, 0x10($sp)
/* 20AED0 801E0370 8FB0001C */  lw    $s0, 0x1c($sp)
/* 20AED4 801E0374 8FB10020 */  lw    $s1, 0x20($sp)
/* 20AED8 801E0378 03E00008 */  jr    $ra
/* 20AEDC 801E037C 27BD0028 */   addiu $sp, $sp, 0x28

/* 20AEE0 801E0380 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 20AEE4 801E0384 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 20AEE8 801E0388 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20AEEC 801E038C AFBF0014 */  sw    $ra, 0x14($sp)
/* 20AEF0 801E0390 AFA40018 */  sw    $a0, 0x18($sp)
/* 20AEF4 801E0394 8CE20000 */  lw    $v0, ($a3)
/* 20AEF8 801E0398 3C01800E */  lui   $at, 0x800e
/* 20AEFC 801E039C 44802000 */  mtc1  $zero, $f4
/* 20AF00 801E03A0 00021080 */  sll   $v0, $v0, 2
/* 20AF04 801E03A4 00220821 */  addu  $at, $at, $v0
/* 20AF08 801E03A8 C4263210 */  lwc1  $f6, 0x3210($at)
/* 20AF0C 801E03AC 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 20AF10 801E03B0 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 20AF14 801E03B4 46062032 */  c.eq.s $f4, $f6
/* 20AF18 801E03B8 00000000 */  nop   
/* 20AF1C 801E03BC 45000013 */  bc1f  .L801E040C_ovl15
/* 20AF20 801E03C0 00000000 */   nop   
/* 20AF24 801E03C4 8CA20004 */  lw    $v0, 4($a1)
/* 20AF28 801E03C8 2C430001 */  sltiu $v1, $v0, 1
/* 20AF2C 801E03CC 244E0001 */  addiu $t6, $v0, 1
/* 20AF30 801E03D0 10600007 */  beqz  $v1, .L801E03F0_ovl15
/* 20AF34 801E03D4 ACAE0004 */   sw    $t6, 4($a1)
/* 20AF38 801E03D8 0C029D9E */  jal   play_sound
/* 20AF3C 801E03DC 24040224 */   li    $a0, 548
/* 20AF40 801E03E0 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 20AF44 801E03E4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 20AF48 801E03E8 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 20AF4C 801E03EC 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
.L801E03F0_ovl15:
/* 20AF50 801E03F0 8CAF0004 */  lw    $t7, 4($a1)
/* 20AF54 801E03F4 24010028 */  li    $at, 40
/* 20AF58 801E03F8 01E1001A */  div   $zero, $t7, $at
/* 20AF5C 801E03FC 0000C010 */  mfhi  $t8
/* 20AF60 801E0400 ACB80004 */  sw    $t8, 4($a1)
/* 20AF64 801E0404 8CE20000 */  lw    $v0, ($a3)
/* 20AF68 801E0408 00021080 */  sll   $v0, $v0, 2
.L801E040C_ovl15:
/* 20AF6C 801E040C 3C038013 */  lui   $v1, %hi(D_80129210) # $v1, 0x8013
/* 20AF70 801E0410 3C01800F */  lui   $at, 0x800f
/* 20AF74 801E0414 24639210 */  addiu $v1, %lo(D_80129210) # addiu $v1, $v1, -0x6df0
/* 20AF78 801E0418 00220821 */  addu  $at, $at, $v0
/* 20AF7C 801E041C C42AA8A0 */  lwc1  $f10, -0x5760($at)
/* 20AF80 801E0420 C4680004 */  lwc1  $f8, 4($v1)
/* 20AF84 801E0424 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 20AF88 801E0428 3C0C800E */  lui   $t4, 0x800e
/* 20AF8C 801E042C 460A4400 */  add.s $f16, $f8, $f10
/* 20AF90 801E0430 3C0A800E */  lui   $t2, 0x800e
/* 20AF94 801E0434 E4700004 */  swc1  $f16, 4($v1)
/* 20AF98 801E0438 8CF90000 */  lw    $t9, ($a3)
/* 20AF9C 801E043C C4600004 */  lwc1  $f0, 4($v1)
/* 20AFA0 801E0440 00194080 */  sll   $t0, $t9, 2
/* 20AFA4 801E0444 00280821 */  addu  $at, $at, $t0
/* 20AFA8 801E0448 C422AA60 */  lwc1  $f2, -0x55a0($at)
/* 20AFAC 801E044C 3C01428C */  li    $at, 0x428C0000 # 70.000000
/* 20AFB0 801E0450 4600103C */  c.lt.s $f2, $f0
/* 20AFB4 801E0454 00000000 */  nop   
/* 20AFB8 801E0458 45020004 */  bc1fl .L801E046C_ovl15
/* 20AFBC 801E045C 44811000 */   mtc1  $at, $f2
/* 20AFC0 801E0460 E4620004 */  swc1  $f2, 4($v1)
/* 20AFC4 801E0464 C4600004 */  lwc1  $f0, 4($v1)
/* 20AFC8 801E0468 44811000 */  mtc1  $at, $f2
.L801E046C_ovl15:
/* 20AFCC 801E046C 3C01800E */  lui   $at, 0x800e
/* 20AFD0 801E0470 4602003C */  c.lt.s $f0, $f2
/* 20AFD4 801E0474 00000000 */  nop   
/* 20AFD8 801E0478 45020003 */  bc1fl .L801E0488_ovl15
/* 20AFDC 801E047C 8CE20000 */   lw    $v0, ($a3)
/* 20AFE0 801E0480 E4620004 */  swc1  $f2, 4($v1)
/* 20AFE4 801E0484 8CE20000 */  lw    $v0, ($a3)
.L801E0488_ovl15:
/* 20AFE8 801E0488 3C09800F */  lui   $t1, 0x800f
/* 20AFEC 801E048C 00021080 */  sll   $v0, $v0, 2
/* 20AFF0 801E0490 01224821 */  addu  $t1, $t1, $v0
/* 20AFF4 801E0494 8D29A360 */  lw    $t1, -0x5ca0($t1)
/* 20AFF8 801E0498 01826021 */  addu  $t4, $t4, $v0
/* 20AFFC 801E049C 00220821 */  addu  $at, $at, $v0
/* 20B000 801E04A0 11200008 */  beqz  $t1, .L801E04C4_ovl15
/* 20B004 801E04A4 01425021 */   addu  $t2, $t2, $v0
/* 20B008 801E04A8 8D4A0D50 */  lw    $t2, 0xd50($t2)
/* 20B00C 801E04AC C4323050 */  lwc1  $f18, 0x3050($at)
/* 20B010 801E04B0 3C01800F */  lui   $at, 0x800f
/* 20B014 801E04B4 000A5880 */  sll   $t3, $t2, 2
/* 20B018 801E04B8 002B0821 */  addu  $at, $at, $t3
/* 20B01C 801E04BC 10000007 */  b     .L801E04DC_ovl15
/* 20B020 801E04C0 E432A6E0 */   swc1  $f18, -0x5920($at)
.L801E04C4_ovl15:
/* 20B024 801E04C4 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 20B028 801E04C8 44802000 */  mtc1  $zero, $f4
/* 20B02C 801E04CC 3C01800F */  lui   $at, 0x800f
/* 20B030 801E04D0 000C6880 */  sll   $t5, $t4, 2
/* 20B034 801E04D4 002D0821 */  addu  $at, $at, $t5
/* 20B038 801E04D8 E424A6E0 */  swc1  $f4, -0x5920($at)
.L801E04DC_ovl15:
/* 20B03C 801E04DC 8CEF0000 */  lw    $t7, ($a3)
/* 20B040 801E04E0 3C19800E */  lui   $t9, 0x800e
/* 20B044 801E04E4 3C0E801E */  lui   $t6, %hi(D_801D8E98) # $t6, 0x801e
/* 20B048 801E04E8 000FC080 */  sll   $t8, $t7, 2
/* 20B04C 801E04EC 0338C821 */  addu  $t9, $t9, $t8
/* 20B050 801E04F0 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20B054 801E04F4 25CE8E98 */  addiu $t6, %lo(D_801D8E98) # addiu $t6, $t6, -0x7168
/* 20B058 801E04F8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 20B05C 801E04FC AF2E008C */  sw    $t6, 0x8c($t9)
/* 20B060 801E0500 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 20B064 801E0504 3C02800E */  lui   $v0, 0x800e
/* 20B068 801E0508 00003025 */  move  $a2, $zero
/* 20B06C 801E050C 8D090000 */  lw    $t1, ($t0)
/* 20B070 801E0510 00095080 */  sll   $t2, $t1, 2
/* 20B074 801E0514 004A1021 */  addu  $v0, $v0, $t2
/* 20B078 801E0518 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20B07C 801E051C 8C440010 */  lw    $a0, 0x10($v0)
/* 20B080 801E0520 0C078674 */  jal   func_801E19D0_ovl15
/* 20B084 801E0524 8C450058 */   lw    $a1, 0x58($v0)
/* 20B088 801E0528 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 20B08C 801E052C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 20B090 801E0530 3C0C800E */  lui   $t4, 0x800e
/* 20B094 801E0534 3C010001 */  lui   $at, (0x000103CB >> 16) # lui $at, 1
/* 20B098 801E0538 8D620000 */  lw    $v0, ($t3)
/* 20B09C 801E053C 342103CB */  ori   $at, (0x000103CB & 0xFFFF) # ori $at, $at, 0x3cb
/* 20B0A0 801E0540 3C0F800E */  lui   $t7, 0x800e
/* 20B0A4 801E0544 00021080 */  sll   $v0, $v0, 2
/* 20B0A8 801E0548 01826021 */  addu  $t4, $t4, $v0
/* 20B0AC 801E054C 8D8CFF50 */  lw    $t4, -0xb0($t4)
/* 20B0B0 801E0550 01E27821 */  addu  $t7, $t7, $v0
/* 20B0B4 801E0554 3C0D801E */  lui   $t5, %hi(D_801D921C) # $t5, 0x801e
/* 20B0B8 801E0558 55810010 */  bnel  $t4, $at, .L801E059C_ovl15
/* 20B0BC 801E055C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 20B0C0 801E0560 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 20B0C4 801E0564 25AD921C */  addiu $t5, %lo(D_801D921C) # addiu $t5, $t5, -0x6de4
/* 20B0C8 801E0568 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 20B0CC 801E056C ADED008C */  sw    $t5, 0x8c($t7)
/* 20B0D0 801E0570 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 20B0D4 801E0574 3C08800E */  lui   $t0, 0x800e
/* 20B0D8 801E0578 00003025 */  move  $a2, $zero
/* 20B0DC 801E057C 8F0E0000 */  lw    $t6, ($t8)
/* 20B0E0 801E0580 000EC880 */  sll   $t9, $t6, 2
/* 20B0E4 801E0584 01194021 */  addu  $t0, $t0, $t9
/* 20B0E8 801E0588 8D08FBD0 */  lw    $t0, -0x430($t0)
/* 20B0EC 801E058C 8D0400B0 */  lw    $a0, 0xb0($t0)
/* 20B0F0 801E0590 0C078674 */  jal   func_801E19D0_ovl15
/* 20B0F4 801E0594 00802825 */   move  $a1, $a0
/* 20B0F8 801E0598 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E059C_ovl15:
/* 20B0FC 801E059C 27BD0018 */  addiu $sp, $sp, 0x18
/* 20B100 801E05A0 03E00008 */  jr    $ra
/* 20B104 801E05A4 00000000 */   nop   

/* 20B108 801E05A8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 20B10C 801E05AC AFB10020 */  sw    $s1, 0x20($sp)
/* 20B110 801E05B0 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 20B114 801E05B4 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 20B118 801E05B8 AFB50030 */  sw    $s5, 0x30($sp)
/* 20B11C 801E05BC 8E250000 */  lw    $a1, ($s1)
/* 20B120 801E05C0 3C15800D */  lui   $s5, %hi(D_800D7098) # $s5, 0x800d
/* 20B124 801E05C4 26B57098 */  addiu $s5, %lo(D_800D7098) # addiu $s5, $s5, 0x7098
/* 20B128 801E05C8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 20B12C 801E05CC AFB4002C */  sw    $s4, 0x2c($sp)
/* 20B130 801E05D0 AFB30028 */  sw    $s3, 0x28($sp)
/* 20B134 801E05D4 AFB20024 */  sw    $s2, 0x24($sp)
/* 20B138 801E05D8 AFB0001C */  sw    $s0, 0x1c($sp)
/* 20B13C 801E05DC F7B40010 */  sdc1  $f20, 0x10($sp)
/* 20B140 801E05E0 AFA40040 */  sw    $a0, 0x40($sp)
/* 20B144 801E05E4 AEA00014 */  sw    $zero, 0x14($s5)
/* 20B148 801E05E8 8CAF0000 */  lw    $t7, ($a1)
/* 20B14C 801E05EC 3C01800E */  lui   $at, 0x800e
/* 20B150 801E05F0 240E000A */  li    $t6, 10
/* 20B154 801E05F4 000FC080 */  sll   $t8, $t7, 2
/* 20B158 801E05F8 00380821 */  addu  $at, $at, $t8
/* 20B15C 801E05FC AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 20B160 801E0600 8CA20000 */  lw    $v0, ($a1)
/* 20B164 801E0604 3C12800E */  lui   $s2, %hi(gEntitiesNextPosXArray) # $s2, 0x800e
/* 20B168 801E0608 265225D0 */  addiu $s2, %lo(gEntitiesNextPosXArray) # addiu $s2, $s2, 0x25d0
/* 20B16C 801E060C 00021080 */  sll   $v0, $v0, 2
/* 20B170 801E0610 0242C821 */  addu  $t9, $s2, $v0
/* 20B174 801E0614 C7240000 */  lwc1  $f4, ($t9)
/* 20B178 801E0618 3C14800F */  lui   $s4, %hi(D_800EAC20) # $s4, 0x800f
/* 20B17C 801E061C 2694AC20 */  addiu $s4, %lo(D_800EAC20) # addiu $s4, $s4, -0x53e0
/* 20B180 801E0620 02824021 */  addu  $t0, $s4, $v0
/* 20B184 801E0624 E5040000 */  swc1  $f4, ($t0)
/* 20B188 801E0628 AEA00018 */  sw    $zero, 0x18($s5)
/* 20B18C 801E062C 8CA90000 */  lw    $t1, ($a1)
/* 20B190 801E0630 3C018013 */  lui   $at, %hi(D_80129214) # $at, 0x8013
/* 20B194 801E0634 C4269214 */  lwc1  $f6, %lo(D_80129214)($at)
/* 20B198 801E0638 3C01800F */  lui   $at, 0x800f
/* 20B19C 801E063C 00095080 */  sll   $t2, $t1, 2
/* 20B1A0 801E0640 002A0821 */  addu  $at, $at, $t2
/* 20B1A4 801E0644 E426AA60 */  swc1  $f6, -0x55a0($at)
/* 20B1A8 801E0648 8CAB0000 */  lw    $t3, ($a1)
/* 20B1AC 801E064C 4480A000 */  mtc1  $zero, $f20
/* 20B1B0 801E0650 3C01800F */  lui   $at, 0x800f
/* 20B1B4 801E0654 000B6080 */  sll   $t4, $t3, 2
/* 20B1B8 801E0658 002C0821 */  addu  $at, $at, $t4
/* 20B1BC 801E065C E434A8A0 */  swc1  $f20, -0x5760($at)
/* 20B1C0 801E0660 8CAF0000 */  lw    $t7, ($a1)
/* 20B1C4 801E0664 3C01800F */  lui   $at, 0x800f
/* 20B1C8 801E0668 240D0001 */  li    $t5, 1
/* 20B1CC 801E066C 000F7080 */  sll   $t6, $t7, 2
/* 20B1D0 801E0670 002E0821 */  addu  $at, $at, $t6
/* 20B1D4 801E0674 AC2DA360 */  sw    $t5, -0x5ca0($at)
/* 20B1D8 801E0678 8CB80000 */  lw    $t8, ($a1)
/* 20B1DC 801E067C 3C13800E */  lui   $s3, %hi(D_800E3590) # $s3, 0x800e
/* 20B1E0 801E0680 3C01801E */  lui   $at, %hi(D_801E687C) # $at, 0x801e
/* 20B1E4 801E0684 C428687C */  lwc1  $f8, %lo(D_801E687C)($at)
/* 20B1E8 801E0688 26733590 */  addiu $s3, %lo(D_800E3590) # addiu $s3, $s3, 0x3590
/* 20B1EC 801E068C 0018C880 */  sll   $t9, $t8, 2
/* 20B1F0 801E0690 02794021 */  addu  $t0, $s3, $t9
/* 20B1F4 801E0694 24040014 */  li    $a0, 20
/* 20B1F8 801E0698 0C002DAF */  jal   finish_current_thread
/* 20B1FC 801E069C E5080000 */   swc1  $f8, ($t0)
/* 20B200 801E06A0 8E250000 */  lw    $a1, ($s1)
/* 20B204 801E06A4 3C01800E */  lui   $at, 0x800e
/* 20B208 801E06A8 2404019C */  li    $a0, 412
/* 20B20C 801E06AC 8CA90000 */  lw    $t1, ($a1)
/* 20B210 801E06B0 00095080 */  sll   $t2, $t1, 2
/* 20B214 801E06B4 026A5821 */  addu  $t3, $s3, $t2
/* 20B218 801E06B8 E5740000 */  swc1  $f20, ($t3)
/* 20B21C 801E06BC 8CA20000 */  lw    $v0, ($a1)
/* 20B220 801E06C0 00021080 */  sll   $v0, $v0, 2
/* 20B224 801E06C4 02626021 */  addu  $t4, $s3, $v0
/* 20B228 801E06C8 C58A0000 */  lwc1  $f10, ($t4)
/* 20B22C 801E06CC 00220821 */  addu  $at, $at, $v0
/* 20B230 801E06D0 E42A3050 */  swc1  $f10, 0x3050($at)
/* 20B234 801E06D4 8CAF0000 */  lw    $t7, ($a1)
/* 20B238 801E06D8 3C01801E */  lui   $at, %hi(D_801E6880) # $at, 0x801e
/* 20B23C 801E06DC C4306880 */  lwc1  $f16, %lo(D_801E6880)($at)
/* 20B240 801E06E0 3C01800E */  lui   $at, 0x800e
/* 20B244 801E06E4 000F6880 */  sll   $t5, $t7, 2
/* 20B248 801E06E8 002D0821 */  addu  $at, $at, $t5
/* 20B24C 801E06EC E4303AD0 */  swc1  $f16, 0x3ad0($at)
/* 20B250 801E06F0 8CAE0000 */  lw    $t6, ($a1)
/* 20B254 801E06F4 3C01800F */  lui   $at, 0x800f
/* 20B258 801E06F8 000EC080 */  sll   $t8, $t6, 2
/* 20B25C 801E06FC 00380821 */  addu  $at, $at, $t8
/* 20B260 801E0700 AC20A360 */  sw    $zero, -0x5ca0($at)
/* 20B264 801E0704 8CB90000 */  lw    $t9, ($a1)
/* 20B268 801E0708 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20B26C 801E070C 44819000 */  mtc1  $at, $f18
/* 20B270 801E0710 3C01800F */  lui   $at, 0x800f
/* 20B274 801E0714 00194080 */  sll   $t0, $t9, 2
/* 20B278 801E0718 00280821 */  addu  $at, $at, $t0
/* 20B27C 801E071C E432A8A0 */  swc1  $f18, -0x5760($at)
/* 20B280 801E0720 8CA90000 */  lw    $t1, ($a1)
/* 20B284 801E0724 3C01800F */  lui   $at, 0x800f
/* 20B288 801E0728 00095080 */  sll   $t2, $t1, 2
/* 20B28C 801E072C 002A0821 */  addu  $at, $at, $t2
/* 20B290 801E0730 0C029D9E */  jal   play_sound
/* 20B294 801E0734 AC208920 */   sw    $zero, -0x76e0($at)
/* 20B298 801E0738 0C029D9E */  jal   play_sound
/* 20B29C 801E073C 240401A1 */   li    $a0, 417
/* 20B2A0 801E0740 3C040001 */  lui   $a0, (0x000103E1 >> 16) # lui $a0, 1
/* 20B2A4 801E0744 0C02A806 */  jal   func_800AA018
/* 20B2A8 801E0748 348403E1 */   ori   $a0, (0x000103E1 & 0xFFFF) # ori $a0, $a0, 0x3e1
/* 20B2AC 801E074C 8E2B0000 */  lw    $t3, ($s1)
/* 20B2B0 801E0750 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 20B2B4 801E0754 44812000 */  mtc1  $at, $f4
/* 20B2B8 801E0758 8D6C0000 */  lw    $t4, ($t3)
/* 20B2BC 801E075C 3C01800E */  lui   $at, 0x800e
/* 20B2C0 801E0760 24040019 */  li    $a0, 25
/* 20B2C4 801E0764 000C7880 */  sll   $t7, $t4, 2
/* 20B2C8 801E0768 002F0821 */  addu  $at, $at, $t7
/* 20B2CC 801E076C 0C002DAF */  jal   finish_current_thread
/* 20B2D0 801E0770 E4243750 */   swc1  $f4, 0x3750($at)
/* 20B2D4 801E0774 8E2D0000 */  lw    $t5, ($s1)
/* 20B2D8 801E0778 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 20B2DC 801E077C 44813000 */  mtc1  $at, $f6
/* 20B2E0 801E0780 8DAE0000 */  lw    $t6, ($t5)
/* 20B2E4 801E0784 3C01800E */  lui   $at, 0x800e
/* 20B2E8 801E0788 24040019 */  li    $a0, 25
/* 20B2EC 801E078C 000EC080 */  sll   $t8, $t6, 2
/* 20B2F0 801E0790 00380821 */  addu  $at, $at, $t8
/* 20B2F4 801E0794 0C002DAF */  jal   finish_current_thread
/* 20B2F8 801E0798 E4263750 */   swc1  $f6, 0x3750($at)
/* 20B2FC 801E079C 8E250000 */  lw    $a1, ($s1)
/* 20B300 801E07A0 3C01800F */  lui   $at, 0x800f
/* 20B304 801E07A4 3C02800E */  lui   $v0, %hi(D_800E5F90) # $v0, 0x800e
/* 20B308 801E07A8 8CB90000 */  lw    $t9, ($a1)
/* 20B30C 801E07AC 24425F90 */  addiu $v0, %lo(D_800E5F90) # addiu $v0, $v0, 0x5f90
/* 20B310 801E07B0 3C03800E */  lui   $v1, %hi(D_800E6BD0) # $v1, 0x800e
/* 20B314 801E07B4 00194080 */  sll   $t0, $t9, 2
/* 20B318 801E07B8 00280821 */  addu  $at, $at, $t0
/* 20B31C 801E07BC E434A8A0 */  swc1  $f20, -0x5760($at)
/* 20B320 801E07C0 8CAA0000 */  lw    $t2, ($a1)
/* 20B324 801E07C4 8C490000 */  lw    $t1, ($v0)
/* 20B328 801E07C8 24636BD0 */  addiu $v1, %lo(D_800E6BD0) # addiu $v1, $v1, 0x6bd0
/* 20B32C 801E07CC 000A5880 */  sll   $t3, $t2, 2
/* 20B330 801E07D0 004B6021 */  addu  $t4, $v0, $t3
/* 20B334 801E07D4 AD890000 */  sw    $t1, ($t4)
/* 20B338 801E07D8 8CAF0000 */  lw    $t7, ($a1)
/* 20B33C 801E07DC C4680000 */  lwc1  $f8, ($v1)
/* 20B340 801E07E0 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 20B344 801E07E4 000F6880 */  sll   $t5, $t7, 2
/* 20B348 801E07E8 006D7021 */  addu  $t6, $v1, $t5
/* 20B34C 801E07EC E5C80000 */  swc1  $f8, ($t6)
/* 20B350 801E07F0 8CB80000 */  lw    $t8, ($a1)
/* 20B354 801E07F4 C64A0000 */  lwc1  $f10, ($s2)
/* 20B358 801E07F8 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 20B35C 801E07FC 0018C880 */  sll   $t9, $t8, 2
/* 20B360 801E0800 02594021 */  addu  $t0, $s2, $t9
/* 20B364 801E0804 E50A0000 */  swc1  $f10, ($t0)
/* 20B368 801E0808 8CAA0000 */  lw    $t2, ($a1)
/* 20B36C 801E080C C4D00000 */  lwc1  $f16, ($a2)
/* 20B370 801E0810 3C040001 */  lui   $a0, (0x000103D3 >> 16) # lui $a0, 1
/* 20B374 801E0814 000A5880 */  sll   $t3, $t2, 2
/* 20B378 801E0818 00CB4821 */  addu  $t1, $a2, $t3
/* 20B37C 801E081C 348403D3 */  ori   $a0, (0x000103D3 & 0xFFFF) # ori $a0, $a0, 0x3d3
/* 20B380 801E0820 0C02A806 */  jal   func_800AA018
/* 20B384 801E0824 E5300000 */   swc1  $f16, ($t1)
/* 20B388 801E0828 8E250000 */  lw    $a1, ($s1)
/* 20B38C 801E082C 3C01C100 */  li    $at, 0xC1000000 # -8.000000
/* 20B390 801E0830 44819000 */  mtc1  $at, $f18
/* 20B394 801E0834 8CAC0000 */  lw    $t4, ($a1)
/* 20B398 801E0838 3C01800E */  lui   $at, 0x800e
/* 20B39C 801E083C 3C10800E */  lui   $s0, %hi(gEntitiesNextPosYArray) # $s0, 0x800e
/* 20B3A0 801E0840 000C7880 */  sll   $t7, $t4, 2
/* 20B3A4 801E0844 002F0821 */  addu  $at, $at, $t7
/* 20B3A8 801E0848 E4323210 */  swc1  $f18, 0x3210($at)
/* 20B3AC 801E084C 8CAD0000 */  lw    $t5, ($a1)
/* 20B3B0 801E0850 3C01800E */  lui   $at, 0x800e
/* 20B3B4 801E0854 26102790 */  addiu $s0, %lo(gEntitiesNextPosYArray) # addiu $s0, $s0, 0x2790
/* 20B3B8 801E0858 000D7080 */  sll   $t6, $t5, 2
/* 20B3BC 801E085C 002E0821 */  addu  $at, $at, $t6
/* 20B3C0 801E0860 E4343750 */  swc1  $f20, 0x3750($at)
/* 20B3C4 801E0864 8CB80000 */  lw    $t8, ($a1)
/* 20B3C8 801E0868 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 20B3CC 801E086C 44812000 */  mtc1  $at, $f4
/* 20B3D0 801E0870 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 20B3D4 801E0874 0018C880 */  sll   $t9, $t8, 2
/* 20B3D8 801E0878 00390821 */  addu  $at, $at, $t9
/* 20B3DC 801E087C E4243AD0 */  swc1  $f4, 0x3ad0($at)
/* 20B3E0 801E0880 8CA20000 */  lw    $v0, ($a1)
/* 20B3E4 801E0884 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 20B3E8 801E0888 44813000 */  mtc1  $at, $f6
/* 20B3EC 801E088C 00021080 */  sll   $v0, $v0, 2
/* 20B3F0 801E0890 02024021 */  addu  $t0, $s0, $v0
/* 20B3F4 801E0894 C5080000 */  lwc1  $f8, ($t0)
/* 20B3F8 801E0898 4608303C */  c.lt.s $f6, $f8
/* 20B3FC 801E089C 00000000 */  nop   
/* 20B400 801E08A0 4502002E */  bc1fl .L801E095C_ovl15
/* 20B404 801E08A4 0262C021 */   addu  $t8, $s3, $v0
/* 20B408 801E08A8 8EAA0018 */  lw    $t2, 0x18($s5)
.L801E08AC_ovl15:
/* 20B40C 801E08AC 5540000A */  bnezl $t2, .L801E08D8_ovl15
/* 20B410 801E08B0 8E290000 */   lw    $t1, ($s1)
/* 20B414 801E08B4 0C066E46 */  jal   func_8019B918_ovl15
/* 20B418 801E08B8 00000000 */   nop   
/* 20B41C 801E08BC 54400006 */  bnezl $v0, .L801E08D8_ovl15
/* 20B420 801E08C0 8E290000 */   lw    $t1, ($s1)
/* 20B424 801E08C4 0C029D9E */  jal   play_sound
/* 20B428 801E08C8 2404019F */   li    $a0, 415
/* 20B42C 801E08CC 240B0001 */  li    $t3, 1
/* 20B430 801E08D0 AEAB0018 */  sw    $t3, 0x18($s5)
/* 20B434 801E08D4 8E290000 */  lw    $t1, ($s1)
.L801E08D8_ovl15:
/* 20B438 801E08D8 C64A0000 */  lwc1  $f10, ($s2)
/* 20B43C 801E08DC 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 20B440 801E08E0 8D220000 */  lw    $v0, ($t1)
/* 20B444 801E08E4 00021080 */  sll   $v0, $v0, 2
/* 20B448 801E08E8 02426021 */  addu  $t4, $s2, $v0
/* 20B44C 801E08EC C5900000 */  lwc1  $f16, ($t4)
/* 20B450 801E08F0 46105001 */  sub.s $f0, $f10, $f16
/* 20B454 801E08F4 4600A03C */  c.lt.s $f20, $f0
/* 20B458 801E08F8 00000000 */  nop   
/* 20B45C 801E08FC 45020007 */  bc1fl .L801E091C_ovl15
/* 20B460 801E0900 44812000 */   mtc1  $at, $f4
/* 20B464 801E0904 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 20B468 801E0908 44819000 */  mtc1  $at, $f18
/* 20B46C 801E090C 02627821 */  addu  $t7, $s3, $v0
/* 20B470 801E0910 10000004 */  b     .L801E0924_ovl15
/* 20B474 801E0914 E5F20000 */   swc1  $f18, ($t7)
/* 20B478 801E0918 44812000 */  mtc1  $at, $f4
.L801E091C_ovl15:
/* 20B47C 801E091C 02626821 */  addu  $t5, $s3, $v0
/* 20B480 801E0920 E5A40000 */  swc1  $f4, ($t5)
.L801E0924_ovl15:
/* 20B484 801E0924 0C002DAF */  jal   finish_current_thread
/* 20B488 801E0928 24040001 */   li    $a0, 1
/* 20B48C 801E092C 8E250000 */  lw    $a1, ($s1)
/* 20B490 801E0930 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 20B494 801E0934 44813000 */  mtc1  $at, $f6
/* 20B498 801E0938 8CA20000 */  lw    $v0, ($a1)
/* 20B49C 801E093C 00021080 */  sll   $v0, $v0, 2
/* 20B4A0 801E0940 02027021 */  addu  $t6, $s0, $v0
/* 20B4A4 801E0944 C5C80000 */  lwc1  $f8, ($t6)
/* 20B4A8 801E0948 4608303C */  c.lt.s $f6, $f8
/* 20B4AC 801E094C 00000000 */  nop   
/* 20B4B0 801E0950 4503FFD6 */  bc1tl .L801E08AC_ovl15
/* 20B4B4 801E0954 8EAA0018 */   lw    $t2, 0x18($s5)
/* 20B4B8 801E0958 0262C021 */  addu  $t8, $s3, $v0
.L801E095C_ovl15:
/* 20B4BC 801E095C E7140000 */  swc1  $f20, ($t8)
/* 20B4C0 801E0960 8CA20000 */  lw    $v0, ($a1)
/* 20B4C4 801E0964 3C03800E */  lui   $v1, %hi(D_800E3050) # $v1, 0x800e
/* 20B4C8 801E0968 24633050 */  addiu $v1, %lo(D_800E3050) # addiu $v1, $v1, 0x3050
/* 20B4CC 801E096C 00021080 */  sll   $v0, $v0, 2
/* 20B4D0 801E0970 0262C821 */  addu  $t9, $s3, $v0
/* 20B4D4 801E0974 C72A0000 */  lwc1  $f10, ($t9)
/* 20B4D8 801E0978 00624021 */  addu  $t0, $v1, $v0
/* 20B4DC 801E097C 3C01801E */  lui   $at, %hi(D_801E6884) # $at, 0x801e
/* 20B4E0 801E0980 E50A0000 */  swc1  $f10, ($t0)
/* 20B4E4 801E0984 8CAA0000 */  lw    $t2, ($a1)
/* 20B4E8 801E0988 C4306884 */  lwc1  $f16, %lo(D_801E6884)($at)
/* 20B4EC 801E098C 3C01800E */  lui   $at, 0x800e
/* 20B4F0 801E0990 000A5880 */  sll   $t3, $t2, 2
/* 20B4F4 801E0994 002B0821 */  addu  $at, $at, $t3
/* 20B4F8 801E0998 E4303AD0 */  swc1  $f16, 0x3ad0($at)
/* 20B4FC 801E099C 8CA20000 */  lw    $v0, ($a1)
/* 20B500 801E09A0 3C01801E */  lui   $at, %hi(D_801E6888) # $at, 0x801e
/* 20B504 801E09A4 C4246888 */  lwc1  $f4, %lo(D_801E6888)($at)
/* 20B508 801E09A8 00021080 */  sll   $v0, $v0, 2
/* 20B50C 801E09AC 00624821 */  addu  $t1, $v1, $v0
/* 20B510 801E09B0 C5320000 */  lwc1  $f18, ($t1)
/* 20B514 801E09B4 02626021 */  addu  $t4, $s3, $v0
/* 20B518 801E09B8 2404000A */  li    $a0, 10
/* 20B51C 801E09BC 46049182 */  mul.s $f6, $f18, $f4
/* 20B520 801E09C0 0C002DAF */  jal   finish_current_thread
/* 20B524 801E09C4 E5860000 */   swc1  $f6, ($t4)
/* 20B528 801E09C8 8E250000 */  lw    $a1, ($s1)
/* 20B52C 801E09CC 3C01800E */  lui   $at, 0x800e
/* 20B530 801E09D0 8CAF0000 */  lw    $t7, ($a1)
/* 20B534 801E09D4 000F6880 */  sll   $t5, $t7, 2
/* 20B538 801E09D8 026D7021 */  addu  $t6, $s3, $t5
/* 20B53C 801E09DC E5D40000 */  swc1  $f20, ($t6)
/* 20B540 801E09E0 8CA20000 */  lw    $v0, ($a1)
/* 20B544 801E09E4 00021080 */  sll   $v0, $v0, 2
/* 20B548 801E09E8 0262C021 */  addu  $t8, $s3, $v0
/* 20B54C 801E09EC C7080000 */  lwc1  $f8, ($t8)
/* 20B550 801E09F0 00220821 */  addu  $at, $at, $v0
/* 20B554 801E09F4 E4283050 */  swc1  $f8, 0x3050($at)
/* 20B558 801E09F8 8CB90000 */  lw    $t9, ($a1)
/* 20B55C 801E09FC 3C01801E */  lui   $at, %hi(D_801E688C) # $at, 0x801e
/* 20B560 801E0A00 C42A688C */  lwc1  $f10, %lo(D_801E688C)($at)
/* 20B564 801E0A04 3C01800E */  lui   $at, 0x800e
/* 20B568 801E0A08 00194080 */  sll   $t0, $t9, 2
/* 20B56C 801E0A0C 00280821 */  addu  $at, $at, $t0
/* 20B570 801E0A10 E42A3AD0 */  swc1  $f10, 0x3ad0($at)
/* 20B574 801E0A14 8CAA0000 */  lw    $t2, ($a1)
/* 20B578 801E0A18 000A5880 */  sll   $t3, $t2, 2
/* 20B57C 801E0A1C 020B1821 */  addu  $v1, $s0, $t3
/* 20B580 801E0A20 C4700000 */  lwc1  $f16, ($v1)
/* 20B584 801E0A24 4610A03C */  c.lt.s $f20, $f16
/* 20B588 801E0A28 00000000 */  nop   
/* 20B58C 801E0A2C 4500000C */  bc1f  .L801E0A60_ovl15
/* 20B590 801E0A30 00000000 */   nop   
.L801E0A34_ovl15:
/* 20B594 801E0A34 0C002DAF */  jal   finish_current_thread
/* 20B598 801E0A38 24040001 */   li    $a0, 1
/* 20B59C 801E0A3C 8E290000 */  lw    $t1, ($s1)
/* 20B5A0 801E0A40 8D2C0000 */  lw    $t4, ($t1)
/* 20B5A4 801E0A44 000C7880 */  sll   $t7, $t4, 2
/* 20B5A8 801E0A48 020F1821 */  addu  $v1, $s0, $t7
/* 20B5AC 801E0A4C C4720000 */  lwc1  $f18, ($v1)
/* 20B5B0 801E0A50 4612A03C */  c.lt.s $f20, $f18
/* 20B5B4 801E0A54 00000000 */  nop   
/* 20B5B8 801E0A58 4501FFF6 */  bc1t  .L801E0A34_ovl15
/* 20B5BC 801E0A5C 00000000 */   nop   
.L801E0A60_ovl15:
/* 20B5C0 801E0A60 0C02CCFD */  jal   func_800B33F4
/* 20B5C4 801E0A64 E4740000 */   swc1  $f20, ($v1)
/* 20B5C8 801E0A68 0C03EE45 */  jal   func_800FB914
/* 20B5CC 801E0A6C 24040003 */   li    $a0, 3
/* 20B5D0 801E0A70 0C029D9E */  jal   play_sound
/* 20B5D4 801E0A74 2404019D */   li    $a0, 413
/* 20B5D8 801E0A78 0C02BC9F */  jal   func_800AF27C
/* 20B5DC 801E0A7C 00000000 */   nop   
/* 20B5E0 801E0A80 8E2D0000 */  lw    $t5, ($s1)
/* 20B5E4 801E0A84 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20B5E8 801E0A88 44812000 */  mtc1  $at, $f4
/* 20B5EC 801E0A8C 8DAE0000 */  lw    $t6, ($t5)
/* 20B5F0 801E0A90 3C01800F */  lui   $at, 0x800f
/* 20B5F4 801E0A94 2404019C */  li    $a0, 412
/* 20B5F8 801E0A98 000EC080 */  sll   $t8, $t6, 2
/* 20B5FC 801E0A9C 00380821 */  addu  $at, $at, $t8
/* 20B600 801E0AA0 0C029D9E */  jal   play_sound
/* 20B604 801E0AA4 E424A8A0 */   swc1  $f4, -0x5760($at)
/* 20B608 801E0AA8 3C040001 */  lui   $a0, (0x000103DF >> 16) # lui $a0, 1
/* 20B60C 801E0AAC 0C02A855 */  jal   func_800AA154
/* 20B610 801E0AB0 348403DF */   ori   $a0, (0x000103DF & 0xFFFF) # ori $a0, $a0, 0x3df
/* 20B614 801E0AB4 8E250000 */  lw    $a1, ($s1)
/* 20B618 801E0AB8 3C01800F */  lui   $at, 0x800f
/* 20B61C 801E0ABC 3C040001 */  lui   $a0, (0x000103D7 >> 16) # lui $a0, 1
/* 20B620 801E0AC0 8CB90000 */  lw    $t9, ($a1)
/* 20B624 801E0AC4 348403D7 */  ori   $a0, (0x000103D7 & 0xFFFF) # ori $a0, $a0, 0x3d7
/* 20B628 801E0AC8 00194080 */  sll   $t0, $t9, 2
/* 20B62C 801E0ACC 00280821 */  addu  $at, $at, $t0
/* 20B630 801E0AD0 E434A8A0 */  swc1  $f20, -0x5760($at)
/* 20B634 801E0AD4 8CAA0000 */  lw    $t2, ($a1)
/* 20B638 801E0AD8 3C01800F */  lui   $at, 0x800f
/* 20B63C 801E0ADC 000A5880 */  sll   $t3, $t2, 2
/* 20B640 801E0AE0 002B0821 */  addu  $at, $at, $t3
/* 20B644 801E0AE4 C426AA60 */  lwc1  $f6, -0x55a0($at)
/* 20B648 801E0AE8 3C018013 */  li    $at, 0x80130000 # -0.000000
/* 20B64C 801E0AEC 0C02A806 */  jal   func_800AA018
/* 20B650 801E0AF0 E4269214 */   swc1  $f6, %lo(D_80129214)($at)
/* 20B654 801E0AF4 0C029D9E */  jal   play_sound
/* 20B658 801E0AF8 24040194 */   li    $a0, 404
/* 20B65C 801E0AFC 8E250000 */  lw    $a1, ($s1)
/* 20B660 801E0B00 44808000 */  mtc1  $zero, $f16
/* 20B664 801E0B04 3C0142DC */  li    $at, 0x42DC0000 # 110.000000
/* 20B668 801E0B08 8CA20000 */  lw    $v0, ($a1)
/* 20B66C 801E0B0C 44819000 */  mtc1  $at, $f18
/* 20B670 801E0B10 2404000A */  li    $a0, 10
/* 20B674 801E0B14 00021080 */  sll   $v0, $v0, 2
/* 20B678 801E0B18 02824821 */  addu  $t1, $s4, $v0
/* 20B67C 801E0B1C 02426021 */  addu  $t4, $s2, $v0
/* 20B680 801E0B20 C58A0000 */  lwc1  $f10, ($t4)
/* 20B684 801E0B24 C5280000 */  lwc1  $f8, ($t1)
/* 20B688 801E0B28 460A4001 */  sub.s $f0, $f8, $f10
/* 20B68C 801E0B2C 4610003C */  c.lt.s $f0, $f16
/* 20B690 801E0B30 00000000 */  nop   
/* 20B694 801E0B34 45020004 */  bc1fl .L801E0B48_ovl15
/* 20B698 801E0B38 46000306 */   mov.s $f12, $f0
/* 20B69C 801E0B3C 10000002 */  b     .L801E0B48_ovl15
/* 20B6A0 801E0B40 46000307 */   neg.s $f12, $f0
/* 20B6A4 801E0B44 46000306 */  mov.s $f12, $f0
.L801E0B48_ovl15:
/* 20B6A8 801E0B48 460C903C */  c.lt.s $f18, $f12
/* 20B6AC 801E0B4C 00000000 */  nop   
/* 20B6B0 801E0B50 45020083 */  bc1fl .L801E0D60_ovl15
/* 20B6B4 801E0B54 4600A03C */   c.lt.s $f20, $f0
/* 20B6B8 801E0B58 4600A03C */  c.lt.s $f20, $f0
/* 20B6BC 801E0B5C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20B6C0 801E0B60 45020007 */  bc1fl .L801E0B80_ovl15
/* 20B6C4 801E0B64 44813000 */   mtc1  $at, $f6
/* 20B6C8 801E0B68 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20B6CC 801E0B6C 44812000 */  mtc1  $at, $f4
/* 20B6D0 801E0B70 02627821 */  addu  $t7, $s3, $v0
/* 20B6D4 801E0B74 10000004 */  b     .L801E0B88_ovl15
/* 20B6D8 801E0B78 E5E40000 */   swc1  $f4, ($t7)
/* 20B6DC 801E0B7C 44813000 */  mtc1  $at, $f6
.L801E0B80_ovl15:
/* 20B6E0 801E0B80 02626821 */  addu  $t5, $s3, $v0
/* 20B6E4 801E0B84 E5A60000 */  swc1  $f6, ($t5)
.L801E0B88_ovl15:
/* 20B6E8 801E0B88 0C002DAF */  jal   finish_current_thread
/* 20B6EC 801E0B8C E7A00038 */   swc1  $f0, 0x38($sp)
/* 20B6F0 801E0B90 C7A00038 */  lwc1  $f0, 0x38($sp)
/* 20B6F4 801E0B94 4600A03C */  c.lt.s $f20, $f0
/* 20B6F8 801E0B98 00000000 */  nop   
/* 20B6FC 801E0B9C 4502000B */  bc1fl .L801E0BCC_ovl15
/* 20B700 801E0BA0 8E250000 */   lw    $a1, ($s1)
/* 20B704 801E0BA4 8E250000 */  lw    $a1, ($s1)
/* 20B708 801E0BA8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 20B70C 801E0BAC 44814000 */  mtc1  $at, $f8
/* 20B710 801E0BB0 8CAE0000 */  lw    $t6, ($a1)
/* 20B714 801E0BB4 3C01800E */  lui   $at, 0x800e
/* 20B718 801E0BB8 000EC080 */  sll   $t8, $t6, 2
/* 20B71C 801E0BBC 00380821 */  addu  $at, $at, $t8
/* 20B720 801E0BC0 10000009 */  b     .L801E0BE8_ovl15
/* 20B724 801E0BC4 E4283050 */   swc1  $f8, 0x3050($at)
/* 20B728 801E0BC8 8E250000 */  lw    $a1, ($s1)
.L801E0BCC_ovl15:
/* 20B72C 801E0BCC 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 20B730 801E0BD0 44815000 */  mtc1  $at, $f10
/* 20B734 801E0BD4 8CB90000 */  lw    $t9, ($a1)
/* 20B738 801E0BD8 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 20B73C 801E0BDC 00194080 */  sll   $t0, $t9, 2
/* 20B740 801E0BE0 00280821 */  addu  $at, $at, $t0
/* 20B744 801E0BE4 E42A3050 */  swc1  $f10, 0x3050($at)
.L801E0BE8_ovl15:
/* 20B748 801E0BE8 8CAA0000 */  lw    $t2, ($a1)
/* 20B74C 801E0BEC 44802000 */  mtc1  $zero, $f4
/* 20B750 801E0BF0 3C01425C */  li    $at, 0x425C0000 # 55.000000
/* 20B754 801E0BF4 000A5880 */  sll   $t3, $t2, 2
/* 20B758 801E0BF8 026B4821 */  addu  $t1, $s3, $t3
/* 20B75C 801E0BFC E5340000 */  swc1  $f20, ($t1)
/* 20B760 801E0C00 8CA20000 */  lw    $v0, ($a1)
/* 20B764 801E0C04 44813000 */  mtc1  $at, $f6
/* 20B768 801E0C08 00021080 */  sll   $v0, $v0, 2
/* 20B76C 801E0C0C 02826021 */  addu  $t4, $s4, $v0
/* 20B770 801E0C10 02427821 */  addu  $t7, $s2, $v0
/* 20B774 801E0C14 C5F20000 */  lwc1  $f18, ($t7)
/* 20B778 801E0C18 C5900000 */  lwc1  $f16, ($t4)
/* 20B77C 801E0C1C 46128001 */  sub.s $f0, $f16, $f18
/* 20B780 801E0C20 4604003C */  c.lt.s $f0, $f4
/* 20B784 801E0C24 00000000 */  nop   
/* 20B788 801E0C28 45020004 */  bc1fl .L801E0C3C_ovl15
/* 20B78C 801E0C2C 46000306 */   mov.s $f12, $f0
/* 20B790 801E0C30 10000002 */  b     .L801E0C3C_ovl15
/* 20B794 801E0C34 46000307 */   neg.s $f12, $f0
/* 20B798 801E0C38 46000306 */  mov.s $f12, $f0
.L801E0C3C_ovl15:
/* 20B79C 801E0C3C 460C303C */  c.lt.s $f6, $f12
/* 20B7A0 801E0C40 00000000 */  nop   
/* 20B7A4 801E0C44 4502001A */  bc1fl .L801E0CB0_ovl15
/* 20B7A8 801E0C48 4600A03C */   c.lt.s $f20, $f0
.L801E0C4C_ovl15:
/* 20B7AC 801E0C4C 0C002DAF */  jal   finish_current_thread
/* 20B7B0 801E0C50 24040001 */   li    $a0, 1
/* 20B7B4 801E0C54 8E2D0000 */  lw    $t5, ($s1)
/* 20B7B8 801E0C58 44808000 */  mtc1  $zero, $f16
/* 20B7BC 801E0C5C 3C01425C */  li    $at, 0x425C0000 # 55.000000
/* 20B7C0 801E0C60 8DA20000 */  lw    $v0, ($t5)
/* 20B7C4 801E0C64 44819000 */  mtc1  $at, $f18
/* 20B7C8 801E0C68 00021080 */  sll   $v0, $v0, 2
/* 20B7CC 801E0C6C 02827021 */  addu  $t6, $s4, $v0
/* 20B7D0 801E0C70 0242C021 */  addu  $t8, $s2, $v0
/* 20B7D4 801E0C74 C70A0000 */  lwc1  $f10, ($t8)
/* 20B7D8 801E0C78 C5C80000 */  lwc1  $f8, ($t6)
/* 20B7DC 801E0C7C 460A4001 */  sub.s $f0, $f8, $f10
/* 20B7E0 801E0C80 4610003C */  c.lt.s $f0, $f16
/* 20B7E4 801E0C84 00000000 */  nop   
/* 20B7E8 801E0C88 45020004 */  bc1fl .L801E0C9C_ovl15
/* 20B7EC 801E0C8C 46000306 */   mov.s $f12, $f0
/* 20B7F0 801E0C90 10000002 */  b     .L801E0C9C_ovl15
/* 20B7F4 801E0C94 46000307 */   neg.s $f12, $f0
/* 20B7F8 801E0C98 46000306 */  mov.s $f12, $f0
.L801E0C9C_ovl15:
/* 20B7FC 801E0C9C 460C903C */  c.lt.s $f18, $f12
/* 20B800 801E0CA0 00000000 */  nop   
/* 20B804 801E0CA4 4501FFE9 */  bc1t  .L801E0C4C_ovl15
/* 20B808 801E0CA8 00000000 */   nop   
/* 20B80C 801E0CAC 4600A03C */  c.lt.s $f20, $f0
.L801E0CB0_ovl15:
/* 20B810 801E0CB0 2404000A */  li    $a0, 10
/* 20B814 801E0CB4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20B818 801E0CB8 45020007 */  bc1fl .L801E0CD8_ovl15
/* 20B81C 801E0CBC 44813000 */   mtc1  $at, $f6
/* 20B820 801E0CC0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20B824 801E0CC4 44812000 */  mtc1  $at, $f4
/* 20B828 801E0CC8 0262C821 */  addu  $t9, $s3, $v0
/* 20B82C 801E0CCC 10000004 */  b     .L801E0CE0_ovl15
/* 20B830 801E0CD0 E7240000 */   swc1  $f4, ($t9)
/* 20B834 801E0CD4 44813000 */  mtc1  $at, $f6
.L801E0CD8_ovl15:
/* 20B838 801E0CD8 02624021 */  addu  $t0, $s3, $v0
/* 20B83C 801E0CDC E5060000 */  swc1  $f6, ($t0)
.L801E0CE0_ovl15:
/* 20B840 801E0CE0 0C002DAF */  jal   finish_current_thread
/* 20B844 801E0CE4 E7A00038 */   swc1  $f0, 0x38($sp)
/* 20B848 801E0CE8 C7A00038 */  lwc1  $f0, 0x38($sp)
/* 20B84C 801E0CEC 4600A03C */  c.lt.s $f20, $f0
/* 20B850 801E0CF0 00000000 */  nop   
/* 20B854 801E0CF4 4502000B */  bc1fl .L801E0D24_ovl15
/* 20B858 801E0CF8 8E250000 */   lw    $a1, ($s1)
/* 20B85C 801E0CFC 8E250000 */  lw    $a1, ($s1)
/* 20B860 801E0D00 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20B864 801E0D04 44814000 */  mtc1  $at, $f8
/* 20B868 801E0D08 8CAA0000 */  lw    $t2, ($a1)
/* 20B86C 801E0D0C 3C01800E */  lui   $at, 0x800e
/* 20B870 801E0D10 000A5880 */  sll   $t3, $t2, 2
/* 20B874 801E0D14 002B0821 */  addu  $at, $at, $t3
/* 20B878 801E0D18 10000009 */  b     .L801E0D40_ovl15
/* 20B87C 801E0D1C E4283050 */   swc1  $f8, 0x3050($at)
/* 20B880 801E0D20 8E250000 */  lw    $a1, ($s1)
.L801E0D24_ovl15:
/* 20B884 801E0D24 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20B888 801E0D28 44815000 */  mtc1  $at, $f10
/* 20B88C 801E0D2C 8CA90000 */  lw    $t1, ($a1)
/* 20B890 801E0D30 3C01800E */  lui   $at, 0x800e
/* 20B894 801E0D34 00096080 */  sll   $t4, $t1, 2
/* 20B898 801E0D38 002C0821 */  addu  $at, $at, $t4
/* 20B89C 801E0D3C E42A3050 */  swc1  $f10, 0x3050($at)
.L801E0D40_ovl15:
/* 20B8A0 801E0D40 8CAF0000 */  lw    $t7, ($a1)
/* 20B8A4 801E0D44 000F6880 */  sll   $t5, $t7, 2
/* 20B8A8 801E0D48 026D7021 */  addu  $t6, $s3, $t5
/* 20B8AC 801E0D4C E5D40000 */  swc1  $f20, ($t6)
/* 20B8B0 801E0D50 8CA20000 */  lw    $v0, ($a1)
/* 20B8B4 801E0D54 1000003A */  b     .L801E0E40_ovl15
/* 20B8B8 801E0D58 00021080 */   sll   $v0, $v0, 2
/* 20B8BC 801E0D5C 4600A03C */  c.lt.s $f20, $f0
.L801E0D60_ovl15:
/* 20B8C0 801E0D60 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20B8C4 801E0D64 45020008 */  bc1fl .L801E0D88_ovl15
/* 20B8C8 801E0D68 44819000 */   mtc1  $at, $f18
/* 20B8CC 801E0D6C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20B8D0 801E0D70 44818000 */  mtc1  $at, $f16
/* 20B8D4 801E0D74 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 20B8D8 801E0D78 00220821 */  addu  $at, $at, $v0
/* 20B8DC 801E0D7C 10000005 */  b     .L801E0D94_ovl15
/* 20B8E0 801E0D80 E4303050 */   swc1  $f16, 0x3050($at)
/* 20B8E4 801E0D84 44819000 */  mtc1  $at, $f18
.L801E0D88_ovl15:
/* 20B8E8 801E0D88 3C01800E */  lui   $at, 0x800e
/* 20B8EC 801E0D8C 00220821 */  addu  $at, $at, $v0
/* 20B8F0 801E0D90 E4323050 */  swc1  $f18, 0x3050($at)
.L801E0D94_ovl15:
/* 20B8F4 801E0D94 8CA20000 */  lw    $v0, ($a1)
/* 20B8F8 801E0D98 3C01425C */  li    $at, 0x425C0000 # 55.000000
/* 20B8FC 801E0D9C 44812000 */  mtc1  $at, $f4
/* 20B900 801E0DA0 00021080 */  sll   $v0, $v0, 2
/* 20B904 801E0DA4 0282C021 */  addu  $t8, $s4, $v0
/* 20B908 801E0DA8 0242C821 */  addu  $t9, $s2, $v0
/* 20B90C 801E0DAC C7200000 */  lwc1  $f0, ($t9)
/* 20B910 801E0DB0 C7020000 */  lwc1  $f2, ($t8)
/* 20B914 801E0DB4 4600103C */  c.lt.s $f2, $f0
/* 20B918 801E0DB8 00000000 */  nop   
/* 20B91C 801E0DBC 45020005 */  bc1fl .L801E0DD4_ovl15
/* 20B920 801E0DC0 46001301 */   sub.s $f12, $f2, $f0
/* 20B924 801E0DC4 46001301 */  sub.s $f12, $f2, $f0
/* 20B928 801E0DC8 10000002 */  b     .L801E0DD4_ovl15
/* 20B92C 801E0DCC 46006307 */   neg.s $f12, $f12
/* 20B930 801E0DD0 46001301 */  sub.s $f12, $f2, $f0
.L801E0DD4_ovl15:
/* 20B934 801E0DD4 460C203C */  c.lt.s $f4, $f12
/* 20B938 801E0DD8 00000000 */  nop   
/* 20B93C 801E0DDC 45020019 */  bc1fl .L801E0E44_ovl15
/* 20B940 801E0DE0 02625821 */   addu  $t3, $s3, $v0
.L801E0DE4_ovl15:
/* 20B944 801E0DE4 0C002DAF */  jal   finish_current_thread
/* 20B948 801E0DE8 24040001 */   li    $a0, 1
/* 20B94C 801E0DEC 8E250000 */  lw    $a1, ($s1)
/* 20B950 801E0DF0 3C01425C */  li    $at, 0x425C0000 # 55.000000
/* 20B954 801E0DF4 44813000 */  mtc1  $at, $f6
/* 20B958 801E0DF8 8CA20000 */  lw    $v0, ($a1)
/* 20B95C 801E0DFC 00021080 */  sll   $v0, $v0, 2
/* 20B960 801E0E00 02824021 */  addu  $t0, $s4, $v0
/* 20B964 801E0E04 02425021 */  addu  $t2, $s2, $v0
/* 20B968 801E0E08 C5400000 */  lwc1  $f0, ($t2)
/* 20B96C 801E0E0C C5020000 */  lwc1  $f2, ($t0)
/* 20B970 801E0E10 4600103C */  c.lt.s $f2, $f0
/* 20B974 801E0E14 00000000 */  nop   
/* 20B978 801E0E18 45020005 */  bc1fl .L801E0E30_ovl15
/* 20B97C 801E0E1C 46001301 */   sub.s $f12, $f2, $f0
/* 20B980 801E0E20 46001301 */  sub.s $f12, $f2, $f0
/* 20B984 801E0E24 10000002 */  b     .L801E0E30_ovl15
/* 20B988 801E0E28 46006307 */   neg.s $f12, $f12
/* 20B98C 801E0E2C 46001301 */  sub.s $f12, $f2, $f0
.L801E0E30_ovl15:
/* 20B990 801E0E30 460C303C */  c.lt.s $f6, $f12
/* 20B994 801E0E34 00000000 */  nop   
/* 20B998 801E0E38 4501FFEA */  bc1t  .L801E0DE4_ovl15
/* 20B99C 801E0E3C 00000000 */   nop   
.L801E0E40_ovl15:
/* 20B9A0 801E0E40 02625821 */  addu  $t3, $s3, $v0
.L801E0E44_ovl15:
/* 20B9A4 801E0E44 E5740000 */  swc1  $f20, ($t3)
/* 20B9A8 801E0E48 8CA20000 */  lw    $v0, ($a1)
/* 20B9AC 801E0E4C 3C01800E */  lui   $at, 0x800e
/* 20B9B0 801E0E50 240D0001 */  li    $t5, 1
/* 20B9B4 801E0E54 00021080 */  sll   $v0, $v0, 2
/* 20B9B8 801E0E58 02624821 */  addu  $t1, $s3, $v0
/* 20B9BC 801E0E5C C5280000 */  lwc1  $f8, ($t1)
/* 20B9C0 801E0E60 00220821 */  addu  $at, $at, $v0
/* 20B9C4 801E0E64 240E0001 */  li    $t6, 1
/* 20B9C8 801E0E68 E4283050 */  swc1  $f8, 0x3050($at)
/* 20B9CC 801E0E6C 8CAC0000 */  lw    $t4, ($a1)
/* 20B9D0 801E0E70 3C01801E */  lui   $at, %hi(D_801E6890) # $at, 0x801e
/* 20B9D4 801E0E74 C42A6890 */  lwc1  $f10, %lo(D_801E6890)($at)
/* 20B9D8 801E0E78 3C01800E */  lui   $at, 0x800e
/* 20B9DC 801E0E7C 000C7880 */  sll   $t7, $t4, 2
/* 20B9E0 801E0E80 002F0821 */  addu  $at, $at, $t7
/* 20B9E4 801E0E84 E42A3AD0 */  swc1  $f10, 0x3ad0($at)
/* 20B9E8 801E0E88 AEAD0014 */  sw    $t5, 0x14($s5)
/* 20B9EC 801E0E8C 8CB80000 */  lw    $t8, ($a1)
/* 20B9F0 801E0E90 3C01800F */  lui   $at, 0x800f
/* 20B9F4 801E0E94 24040014 */  li    $a0, 20
/* 20B9F8 801E0E98 0018C880 */  sll   $t9, $t8, 2
/* 20B9FC 801E0E9C 00390821 */  addu  $at, $at, $t9
/* 20BA00 801E0EA0 AC2EA360 */  sw    $t6, -0x5ca0($at)
/* 20BA04 801E0EA4 8CA80000 */  lw    $t0, ($a1)
/* 20BA08 801E0EA8 3C01801E */  lui   $at, %hi(D_801E6894) # $at, 0x801e
/* 20BA0C 801E0EAC C4306894 */  lwc1  $f16, %lo(D_801E6894)($at)
/* 20BA10 801E0EB0 00085080 */  sll   $t2, $t0, 2
/* 20BA14 801E0EB4 026A5821 */  addu  $t3, $s3, $t2
/* 20BA18 801E0EB8 0C002DAF */  jal   finish_current_thread
/* 20BA1C 801E0EBC E5700000 */   swc1  $f16, ($t3)
/* 20BA20 801E0EC0 8E250000 */  lw    $a1, ($s1)
/* 20BA24 801E0EC4 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 20BA28 801E0EC8 44819000 */  mtc1  $at, $f18
/* 20BA2C 801E0ECC 8CA90000 */  lw    $t1, ($a1)
/* 20BA30 801E0ED0 3C01800E */  lui   $at, 0x800e
/* 20BA34 801E0ED4 24080009 */  li    $t0, 9
/* 20BA38 801E0ED8 00096080 */  sll   $t4, $t1, 2
/* 20BA3C 801E0EDC 002C0821 */  addu  $at, $at, $t4
/* 20BA40 801E0EE0 E4323050 */  swc1  $f18, 0x3050($at)
/* 20BA44 801E0EE4 8CAF0000 */  lw    $t7, ($a1)
/* 20BA48 801E0EE8 3C01800F */  lui   $at, 0x800f
/* 20BA4C 801E0EEC 000F6880 */  sll   $t5, $t7, 2
/* 20BA50 801E0EF0 026DC021 */  addu  $t8, $s3, $t5
/* 20BA54 801E0EF4 E7140000 */  swc1  $f20, ($t8)
/* 20BA58 801E0EF8 8CAE0000 */  lw    $t6, ($a1)
/* 20BA5C 801E0EFC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 20BA60 801E0F00 8FB50030 */  lw    $s5, 0x30($sp)
/* 20BA64 801E0F04 000EC880 */  sll   $t9, $t6, 2
/* 20BA68 801E0F08 00390821 */  addu  $at, $at, $t9
/* 20BA6C 801E0F0C AC20A1A0 */  sw    $zero, -0x5e60($at)
/* 20BA70 801E0F10 8CAA0000 */  lw    $t2, ($a1)
/* 20BA74 801E0F14 3C01800E */  lui   $at, 0x800e
/* 20BA78 801E0F18 8FB4002C */  lw    $s4, 0x2c($sp)
/* 20BA7C 801E0F1C 000A5880 */  sll   $t3, $t2, 2
/* 20BA80 801E0F20 002B0821 */  addu  $at, $at, $t3
/* 20BA84 801E0F24 8FB30028 */  lw    $s3, 0x28($sp)
/* 20BA88 801E0F28 8FB20024 */  lw    $s2, 0x24($sp)
/* 20BA8C 801E0F2C 8FB10020 */  lw    $s1, 0x20($sp)
/* 20BA90 801E0F30 8FB0001C */  lw    $s0, 0x1c($sp)
/* 20BA94 801E0F34 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 20BA98 801E0F38 AC28DC50 */  sw    $t0, -0x23b0($at)
/* 20BA9C 801E0F3C 03E00008 */  jr    $ra
/* 20BAA0 801E0F40 27BD0040 */   addiu $sp, $sp, 0x40

/* 20BAA4 801E0F44 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 20BAA8 801E0F48 AFB30020 */  sw    $s3, 0x20($sp)
/* 20BAAC 801E0F4C 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 20BAB0 801E0F50 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 20BAB4 801E0F54 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 20BAB8 801E0F58 AC207098 */  sw    $zero, %lo(D_800D7098)($at)
/* 20BABC 801E0F5C 8E620000 */  lw    $v0, ($s3)
/* 20BAC0 801E0F60 AFBF0024 */  sw    $ra, 0x24($sp)
/* 20BAC4 801E0F64 AFB2001C */  sw    $s2, 0x1c($sp)
/* 20BAC8 801E0F68 AFB10018 */  sw    $s1, 0x18($sp)
/* 20BACC 801E0F6C AFB00014 */  sw    $s0, 0x14($sp)
/* 20BAD0 801E0F70 8C4E0000 */  lw    $t6, ($v0)
/* 20BAD4 801E0F74 3C038013 */  lui   $v1, %hi(D_80129210) # $v1, 0x8013
/* 20BAD8 801E0F78 3C01800F */  lui   $at, 0x800f
/* 20BADC 801E0F7C 000E7880 */  sll   $t7, $t6, 2
/* 20BAE0 801E0F80 24639210 */  addiu $v1, %lo(D_80129210) # addiu $v1, $v1, -0x6df0
/* 20BAE4 801E0F84 002F0821 */  addu  $at, $at, $t7
/* 20BAE8 801E0F88 C426A8A0 */  lwc1  $f6, -0x5760($at)
/* 20BAEC 801E0F8C C4640004 */  lwc1  $f4, 4($v1)
/* 20BAF0 801E0F90 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 20BAF4 801E0F94 3C0B800E */  lui   $t3, 0x800e
/* 20BAF8 801E0F98 46062200 */  add.s $f8, $f4, $f6
/* 20BAFC 801E0F9C 3C09800E */  lui   $t1, 0x800e
/* 20BB00 801E0FA0 E4680004 */  swc1  $f8, 4($v1)
/* 20BB04 801E0FA4 8C580000 */  lw    $t8, ($v0)
/* 20BB08 801E0FA8 C4600004 */  lwc1  $f0, 4($v1)
/* 20BB0C 801E0FAC 0018C880 */  sll   $t9, $t8, 2
/* 20BB10 801E0FB0 00390821 */  addu  $at, $at, $t9
/* 20BB14 801E0FB4 C422AA60 */  lwc1  $f2, -0x55a0($at)
/* 20BB18 801E0FB8 3C01428C */  li    $at, 0x428C0000 # 70.000000
/* 20BB1C 801E0FBC 4600103C */  c.lt.s $f2, $f0
/* 20BB20 801E0FC0 00000000 */  nop   
/* 20BB24 801E0FC4 45020004 */  bc1fl .L801E0FD8_ovl15
/* 20BB28 801E0FC8 44811000 */   mtc1  $at, $f2
/* 20BB2C 801E0FCC E4620004 */  swc1  $f2, 4($v1)
/* 20BB30 801E0FD0 C4600004 */  lwc1  $f0, 4($v1)
/* 20BB34 801E0FD4 44811000 */  mtc1  $at, $f2
.L801E0FD8_ovl15:
/* 20BB38 801E0FD8 3C01800E */  lui   $at, 0x800e
/* 20BB3C 801E0FDC 4602003C */  c.lt.s $f0, $f2
/* 20BB40 801E0FE0 00000000 */  nop   
/* 20BB44 801E0FE4 45020003 */  bc1fl .L801E0FF4_ovl15
/* 20BB48 801E0FE8 8C500000 */   lw    $s0, ($v0)
/* 20BB4C 801E0FEC E4620004 */  swc1  $f2, 4($v1)
/* 20BB50 801E0FF0 8C500000 */  lw    $s0, ($v0)
.L801E0FF4_ovl15:
/* 20BB54 801E0FF4 3C08800F */  lui   $t0, 0x800f
/* 20BB58 801E0FF8 00108080 */  sll   $s0, $s0, 2
/* 20BB5C 801E0FFC 01104021 */  addu  $t0, $t0, $s0
/* 20BB60 801E1000 8D08A360 */  lw    $t0, -0x5ca0($t0)
/* 20BB64 801E1004 01705821 */  addu  $t3, $t3, $s0
/* 20BB68 801E1008 00300821 */  addu  $at, $at, $s0
/* 20BB6C 801E100C 11000008 */  beqz  $t0, .L801E1030_ovl15
/* 20BB70 801E1010 01304821 */   addu  $t1, $t1, $s0
/* 20BB74 801E1014 8D290D50 */  lw    $t1, 0xd50($t1)
/* 20BB78 801E1018 C42A3050 */  lwc1  $f10, 0x3050($at)
/* 20BB7C 801E101C 3C01800F */  lui   $at, 0x800f
/* 20BB80 801E1020 00095080 */  sll   $t2, $t1, 2
/* 20BB84 801E1024 002A0821 */  addu  $at, $at, $t2
/* 20BB88 801E1028 10000007 */  b     .L801E1048_ovl15
/* 20BB8C 801E102C E42AA6E0 */   swc1  $f10, -0x5920($at)
.L801E1030_ovl15:
/* 20BB90 801E1030 8D6B0D50 */  lw    $t3, 0xd50($t3)
/* 20BB94 801E1034 44808000 */  mtc1  $zero, $f16
/* 20BB98 801E1038 3C01800F */  lui   $at, 0x800f
/* 20BB9C 801E103C 000B6080 */  sll   $t4, $t3, 2
/* 20BBA0 801E1040 002C0821 */  addu  $at, $at, $t4
/* 20BBA4 801E1044 E430A6E0 */  swc1  $f16, -0x5920($at)
.L801E1048_ovl15:
/* 20BBA8 801E1048 0C0787A2 */  jal   func_801E1E88_ovl15
/* 20BBAC 801E104C 00000000 */   nop   
/* 20BBB0 801E1050 8E6D0000 */  lw    $t5, ($s3)
/* 20BBB4 801E1054 3C0E800E */  lui   $t6, 0x800e
/* 20BBB8 801E1058 3C010001 */  lui   $at, (0x000103D7 >> 16) # lui $at, 1
/* 20BBBC 801E105C 8DB00000 */  lw    $s0, ($t5)
/* 20BBC0 801E1060 3C11800E */  lui   $s1, %hi(D_800E1B50) # $s1, 0x800e
/* 20BBC4 801E1064 342103D7 */  ori   $at, (0x000103D7 & 0xFFFF) # ori $at, $at, 0x3d7
/* 20BBC8 801E1068 00108080 */  sll   $s0, $s0, 2
/* 20BBCC 801E106C 01D07021 */  addu  $t6, $t6, $s0
/* 20BBD0 801E1070 8DCEFF50 */  lw    $t6, -0xb0($t6)
/* 20BBD4 801E1074 26311B50 */  addiu $s1, %lo(D_800E1B50) # addiu $s1, $s1, 0x1b50
/* 20BBD8 801E1078 0230C021 */  addu  $t8, $s1, $s0
/* 20BBDC 801E107C 55C10027 */  bnel  $t6, $at, .L801E111C_ovl15
/* 20BBE0 801E1080 8F0F0000 */   lw    $t7, ($t8)
/* 20BBE4 801E1084 3C11800E */  lui   $s1, %hi(D_800E1B50) # $s1, 0x800e
/* 20BBE8 801E1088 26311B50 */  addiu $s1, %lo(D_800E1B50) # addiu $s1, $s1, 0x1b50
/* 20BBEC 801E108C 0230C021 */  addu  $t8, $s1, $s0
/* 20BBF0 801E1090 8F190000 */  lw    $t9, ($t8)
/* 20BBF4 801E1094 3C0F801E */  lui   $t7, %hi(D_801D92AC) # $t7, 0x801e
/* 20BBF8 801E1098 25EF92AC */  addiu $t7, %lo(D_801D92AC) # addiu $t7, $t7, -0x6d54
/* 20BBFC 801E109C AF2F008C */  sw    $t7, 0x8c($t9)
/* 20BC00 801E10A0 8E680000 */  lw    $t0, ($s3)
/* 20BC04 801E10A4 3C12800E */  lui   $s2, %hi(D_800DFBD0) # $s2, 0x800e
/* 20BC08 801E10A8 2652FBD0 */  addiu $s2, %lo(D_800DFBD0) # addiu $s2, $s2, -0x430
/* 20BC0C 801E10AC 8D090000 */  lw    $t1, ($t0)
/* 20BC10 801E10B0 00003025 */  move  $a2, $zero
/* 20BC14 801E10B4 00095080 */  sll   $t2, $t1, 2
/* 20BC18 801E10B8 024A5821 */  addu  $t3, $s2, $t2
/* 20BC1C 801E10BC 8D620000 */  lw    $v0, ($t3)
/* 20BC20 801E10C0 8C440010 */  lw    $a0, 0x10($v0)
/* 20BC24 801E10C4 0C078674 */  jal   func_801E19D0_ovl15
/* 20BC28 801E10C8 8C450058 */   lw    $a1, 0x58($v0)
/* 20BC2C 801E10CC 8E6D0000 */  lw    $t5, ($s3)
/* 20BC30 801E10D0 3C0C801E */  lui   $t4, %hi(D_801D9120) # $t4, 0x801e
/* 20BC34 801E10D4 258C9120 */  addiu $t4, %lo(D_801D9120) # addiu $t4, $t4, -0x6ee0
/* 20BC38 801E10D8 8DAE0000 */  lw    $t6, ($t5)
/* 20BC3C 801E10DC 00002825 */  move  $a1, $zero
/* 20BC40 801E10E0 00003025 */  move  $a2, $zero
/* 20BC44 801E10E4 000EC080 */  sll   $t8, $t6, 2
/* 20BC48 801E10E8 02387821 */  addu  $t7, $s1, $t8
/* 20BC4C 801E10EC 8DF90000 */  lw    $t9, ($t7)
/* 20BC50 801E10F0 AF2C008C */  sw    $t4, 0x8c($t9)
/* 20BC54 801E10F4 8E680000 */  lw    $t0, ($s3)
/* 20BC58 801E10F8 8D090000 */  lw    $t1, ($t0)
/* 20BC5C 801E10FC 00095080 */  sll   $t2, $t1, 2
/* 20BC60 801E1100 024A5821 */  addu  $t3, $s2, $t2
/* 20BC64 801E1104 8D6D0000 */  lw    $t5, ($t3)
/* 20BC68 801E1108 0C078674 */  jal   func_801E19D0_ovl15
/* 20BC6C 801E110C 8DA40018 */   lw    $a0, 0x18($t5)
/* 20BC70 801E1110 10000041 */  b     .L801E1218_ovl15
/* 20BC74 801E1114 8FBF0024 */   lw    $ra, 0x24($sp)
/* 20BC78 801E1118 8F0F0000 */  lw    $t7, ($t8)
.L801E111C_ovl15:
/* 20BC7C 801E111C 3C0E801E */  lui   $t6, %hi(D_801D8E98) # $t6, 0x801e
/* 20BC80 801E1120 25CE8E98 */  addiu $t6, %lo(D_801D8E98) # addiu $t6, $t6, -0x7168
/* 20BC84 801E1124 ADEE008C */  sw    $t6, 0x8c($t7)
/* 20BC88 801E1128 8E6C0000 */  lw    $t4, ($s3)
/* 20BC8C 801E112C 3C12800E */  lui   $s2, %hi(D_800DFBD0) # $s2, 0x800e
/* 20BC90 801E1130 2652FBD0 */  addiu $s2, %lo(D_800DFBD0) # addiu $s2, $s2, -0x430
/* 20BC94 801E1134 8D990000 */  lw    $t9, ($t4)
/* 20BC98 801E1138 00003025 */  move  $a2, $zero
/* 20BC9C 801E113C 00194080 */  sll   $t0, $t9, 2
/* 20BCA0 801E1140 02484821 */  addu  $t1, $s2, $t0
/* 20BCA4 801E1144 8D220000 */  lw    $v0, ($t1)
/* 20BCA8 801E1148 8C440010 */  lw    $a0, 0x10($v0)
/* 20BCAC 801E114C 0C078674 */  jal   func_801E19D0_ovl15
/* 20BCB0 801E1150 8C450058 */   lw    $a1, 0x58($v0)
/* 20BCB4 801E1154 8E6A0000 */  lw    $t2, ($s3)
/* 20BCB8 801E1158 3C0B800E */  lui   $t3, 0x800e
/* 20BCBC 801E115C 3C010001 */  lui   $at, (0x000103D3 >> 16) # lui $at, 1
/* 20BCC0 801E1160 8D500000 */  lw    $s0, ($t2)
/* 20BCC4 801E1164 342103D3 */  ori   $at, (0x000103D3 & 0xFFFF) # ori $at, $at, 0x3d3
/* 20BCC8 801E1168 00108080 */  sll   $s0, $s0, 2
/* 20BCCC 801E116C 01705821 */  addu  $t3, $t3, $s0
/* 20BCD0 801E1170 8D6BFF50 */  lw    $t3, -0xb0($t3)
/* 20BCD4 801E1174 0230C021 */  addu  $t8, $s1, $s0
/* 20BCD8 801E1178 55610027 */  bnel  $t3, $at, .L801E1218_ovl15
/* 20BCDC 801E117C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 20BCE0 801E1180 8F0E0000 */  lw    $t6, ($t8)
/* 20BCE4 801E1184 3C0D801E */  lui   $t5, %hi(D_801D921C) # $t5, 0x801e
/* 20BCE8 801E1188 25AD921C */  addiu $t5, %lo(D_801D921C) # addiu $t5, $t5, -0x6de4
/* 20BCEC 801E118C ADCD008C */  sw    $t5, 0x8c($t6)
/* 20BCF0 801E1190 8E6F0000 */  lw    $t7, ($s3)
/* 20BCF4 801E1194 00003025 */  move  $a2, $zero
/* 20BCF8 801E1198 8DEC0000 */  lw    $t4, ($t7)
/* 20BCFC 801E119C 000CC880 */  sll   $t9, $t4, 2
/* 20BD00 801E11A0 02594021 */  addu  $t0, $s2, $t9
/* 20BD04 801E11A4 8D090000 */  lw    $t1, ($t0)
/* 20BD08 801E11A8 8D2400B0 */  lw    $a0, 0xb0($t1)
/* 20BD0C 801E11AC 0C078674 */  jal   func_801E19D0_ovl15
/* 20BD10 801E11B0 00802825 */   move  $a1, $a0
/* 20BD14 801E11B4 3C0A800C */  lui   $t2, %hi(D_800BE4EC) # $t2, 0x800c
/* 20BD18 801E11B8 8D4AE4EC */  lw    $t2, %lo(D_800BE4EC)($t2)
/* 20BD1C 801E11BC 3C10801E */  lui   $s0, %hi(D_801E665C) # $s0, 0x801e
/* 20BD20 801E11C0 2610665C */  addiu $s0, %lo(D_801E665C) # addiu $s0, $s0, 0x665c
/* 20BD24 801E11C4 000A58C2 */  srl   $t3, $t2, 3
/* 20BD28 801E11C8 15600012 */  bnez  $t3, .L801E1214_ovl15
/* 20BD2C 801E11CC 3C11801E */   lui   $s1, %hi(D_801E6670) # $s1, 0x801e
/* 20BD30 801E11D0 26316670 */  addiu $s1, %lo(D_801E6670) # addiu $s1, $s1, 0x6670
/* 20BD34 801E11D4 8E780000 */  lw    $t8, ($s3)
.L801E11D8_ovl15:
/* 20BD38 801E11D8 8E190000 */  lw    $t9, ($s0)
/* 20BD3C 801E11DC 24040006 */  li    $a0, 6
/* 20BD40 801E11E0 8F0D0000 */  lw    $t5, ($t8)
/* 20BD44 801E11E4 00194080 */  sll   $t0, $t9, 2
/* 20BD48 801E11E8 24050002 */  li    $a1, 2
/* 20BD4C 801E11EC 000D7080 */  sll   $t6, $t5, 2
/* 20BD50 801E11F0 024E7821 */  addu  $t7, $s2, $t6
/* 20BD54 801E11F4 8DEC0000 */  lw    $t4, ($t7)
/* 20BD58 801E11F8 2406000C */  li    $a2, 12
/* 20BD5C 801E11FC 01884821 */  addu  $t1, $t4, $t0
/* 20BD60 801E1200 0C02A040 */  jal   func_800A8100
/* 20BD64 801E1204 8D270000 */   lw    $a3, ($t1)
/* 20BD68 801E1208 26100004 */  addiu $s0, $s0, 4
/* 20BD6C 801E120C 5611FFF2 */  bnel  $s0, $s1, .L801E11D8_ovl15
/* 20BD70 801E1210 8E780000 */   lw    $t8, ($s3)
.L801E1214_ovl15:
/* 20BD74 801E1214 8FBF0024 */  lw    $ra, 0x24($sp)
.L801E1218_ovl15:
/* 20BD78 801E1218 8FB00014 */  lw    $s0, 0x14($sp)
/* 20BD7C 801E121C 8FB10018 */  lw    $s1, 0x18($sp)
/* 20BD80 801E1220 8FB2001C */  lw    $s2, 0x1c($sp)
/* 20BD84 801E1224 8FB30020 */  lw    $s3, 0x20($sp)
/* 20BD88 801E1228 03E00008 */  jr    $ra
/* 20BD8C 801E122C 27BD0028 */   addiu $sp, $sp, 0x28

/* 20BD90 801E1230 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 20BD94 801E1234 AFB40048 */  sw    $s4, 0x48($sp)
/* 20BD98 801E1238 3C148005 */  lui   $s4, %hi(D_8004A7C4) # $s4, 0x8005
/* 20BD9C 801E123C 3C01800D */  lui   $at, %hi(D_800D70AC) # $at, 0x800d
/* 20BDA0 801E1240 2694A7C4 */  addiu $s4, %lo(D_8004A7C4) # addiu $s4, $s4, -0x583c
/* 20BDA4 801E1244 AC2070AC */  sw    $zero, %lo(D_800D70AC)($at)
/* 20BDA8 801E1248 8E8F0000 */  lw    $t7, ($s4)
/* 20BDAC 801E124C AFBF004C */  sw    $ra, 0x4c($sp)
/* 20BDB0 801E1250 AFB30044 */  sw    $s3, 0x44($sp)
/* 20BDB4 801E1254 AFB20040 */  sw    $s2, 0x40($sp)
/* 20BDB8 801E1258 AFB1003C */  sw    $s1, 0x3c($sp)
/* 20BDBC 801E125C AFB00038 */  sw    $s0, 0x38($sp)
/* 20BDC0 801E1260 F7BA0030 */  sdc1  $f26, 0x30($sp)
/* 20BDC4 801E1264 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 20BDC8 801E1268 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 20BDCC 801E126C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 20BDD0 801E1270 AFA40050 */  sw    $a0, 0x50($sp)
/* 20BDD4 801E1274 8DF80000 */  lw    $t8, ($t7)
/* 20BDD8 801E1278 3C01800E */  lui   $at, 0x800e
/* 20BDDC 801E127C 240E000B */  li    $t6, 11
/* 20BDE0 801E1280 0018C880 */  sll   $t9, $t8, 2
/* 20BDE4 801E1284 00390821 */  addu  $at, $at, $t9
/* 20BDE8 801E1288 0C02CCFD */  jal   func_800B33F4
/* 20BDEC 801E128C AC2EDFD0 */   sw    $t6, -0x2030($at)
/* 20BDF0 801E1290 8E830000 */  lw    $v1, ($s4)
/* 20BDF4 801E1294 3C01800F */  lui   $at, 0x800f
/* 20BDF8 801E1298 3C0F800D */  lui   $t7, %hi(D_800D6B54) # $t7, 0x800d
/* 20BDFC 801E129C 8C6B0000 */  lw    $t3, ($v1)
/* 20BE00 801E12A0 8DEF6B54 */  lw    $t7, %lo(D_800D6B54)($t7)
/* 20BE04 801E12A4 240D0006 */  li    $t5, 6
/* 20BE08 801E12A8 000B6080 */  sll   $t4, $t3, 2
/* 20BE0C 801E12AC 002C0821 */  addu  $at, $at, $t4
/* 20BE10 801E12B0 AC209AA0 */  sw    $zero, -0x6560($at)
/* 20BE14 801E12B4 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 20BE18 801E12B8 AC207154 */  sw    $zero, %lo(D_800D7154)($at)
/* 20BE1C 801E12BC 3C01800D */  lui   $at, %hi(D_800D70D4) # $at, 0x800d
/* 20BE20 801E12C0 15E00004 */  bnez  $t7, .L801E12D4_ovl15
/* 20BE24 801E12C4 AC2D70D4 */   sw    $t5, %lo(D_800D70D4)($at)
/* 20BE28 801E12C8 0C067C7B */  jal   func_8019F1EC_ovl15
/* 20BE2C 801E12CC 00000000 */   nop   
/* 20BE30 801E12D0 8E830000 */  lw    $v1, ($s4)
.L801E12D4_ovl15:
/* 20BE34 801E12D4 8C780000 */  lw    $t8, ($v1)
/* 20BE38 801E12D8 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 20BE3C 801E12DC 4481D000 */  mtc1  $at, $f26
/* 20BE40 801E12E0 4480B000 */  mtc1  $zero, $f22
/* 20BE44 801E12E4 3C01800E */  lui   $at, 0x800e
/* 20BE48 801E12E8 00187080 */  sll   $t6, $t8, 2
/* 20BE4C 801E12EC 002E0821 */  addu  $at, $at, $t6
/* 20BE50 801E12F0 E4363210 */  swc1  $f22, 0x3210($at)
/* 20BE54 801E12F4 8C790000 */  lw    $t9, ($v1)
/* 20BE58 801E12F8 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 20BE5C 801E12FC 44812000 */  mtc1  $at, $f4
/* 20BE60 801E1300 3C01800E */  lui   $at, 0x800e
/* 20BE64 801E1304 00195880 */  sll   $t3, $t9, 2
/* 20BE68 801E1308 002B0821 */  addu  $at, $at, $t3
/* 20BE6C 801E130C E4243750 */  swc1  $f4, 0x3750($at)
/* 20BE70 801E1310 8C6C0000 */  lw    $t4, ($v1)
/* 20BE74 801E1314 3C11800E */  lui   $s1, %hi(D_800E3050) # $s1, 0x800e
/* 20BE78 801E1318 26313050 */  addiu $s1, %lo(D_800E3050) # addiu $s1, $s1, 0x3050
/* 20BE7C 801E131C 000C6880 */  sll   $t5, $t4, 2
/* 20BE80 801E1320 022D7821 */  addu  $t7, $s1, $t5
/* 20BE84 801E1324 E5FA0000 */  swc1  $f26, ($t7)
/* 20BE88 801E1328 8C780000 */  lw    $t8, ($v1)
/* 20BE8C 801E132C 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 20BE90 801E1330 3C13800E */  lui   $s3, %hi(D_800E0D50) # $s3, 0x800e
/* 20BE94 801E1334 00187080 */  sll   $t6, $t8, 2
/* 20BE98 801E1338 002E0821 */  addu  $at, $at, $t6
/* 20BE9C 801E133C E4363590 */  swc1  $f22, 0x3590($at)
/* 20BEA0 801E1340 8C790000 */  lw    $t9, ($v1)
/* 20BEA4 801E1344 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20BEA8 801E1348 44813000 */  mtc1  $at, $f6
/* 20BEAC 801E134C 26730D50 */  addiu $s3, %lo(D_800E0D50) # addiu $s3, $s3, 0xd50
/* 20BEB0 801E1350 00195880 */  sll   $t3, $t9, 2
/* 20BEB4 801E1354 026B6021 */  addu  $t4, $s3, $t3
/* 20BEB8 801E1358 8D8D0000 */  lw    $t5, ($t4)
/* 20BEBC 801E135C 4606B03C */  c.lt.s $f22, $f6
/* 20BEC0 801E1360 3C12800F */  lui   $s2, %hi(D_800EA6E0) # $s2, 0x800f
/* 20BEC4 801E1364 2652A6E0 */  addiu $s2, %lo(D_800EA6E0) # addiu $s2, $s2, -0x5920
/* 20BEC8 801E1368 000D7880 */  sll   $t7, $t5, 2
/* 20BECC 801E136C 024FC021 */  addu  $t8, $s2, $t7
/* 20BED0 801E1370 4481A000 */  mtc1  $at, $f20
/* 20BED4 801E1374 45000017 */  bc1f  .L801E13D4_ovl15
/* 20BED8 801E1378 E71A0000 */   swc1  $f26, ($t8)
/* 20BEDC 801E137C 3C01801E */  lui   $at, %hi(D_801E6898) # $at, 0x801e
/* 20BEE0 801E1380 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 20BEE4 801E1384 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 20BEE8 801E1388 C4386898 */  lwc1  $f24, %lo(D_801E6898)($at)
.L801E138C_ovl15:
/* 20BEEC 801E138C C6080000 */  lwc1  $f8, ($s0)
/* 20BEF0 801E1390 46144302 */  mul.s $f12, $f8, $f20
/* 20BEF4 801E1394 0C02BB30 */  jal   func_800AECC0
/* 20BEF8 801E1398 00000000 */   nop   
/* 20BEFC 801E139C 0C002DAF */  jal   finish_current_thread
/* 20BF00 801E13A0 24040001 */   li    $a0, 1
/* 20BF04 801E13A4 4614D282 */  mul.s $f10, $f26, $f20
/* 20BF08 801E13A8 4618A501 */  sub.s $f20, $f20, $f24
/* 20BF0C 801E13AC 8E8E0000 */  lw    $t6, ($s4)
/* 20BF10 801E13B0 8DD90000 */  lw    $t9, ($t6)
/* 20BF14 801E13B4 4614B03C */  c.lt.s $f22, $f20
/* 20BF18 801E13B8 00195880 */  sll   $t3, $t9, 2
/* 20BF1C 801E13BC 022B6021 */  addu  $t4, $s1, $t3
/* 20BF20 801E13C0 4501FFF2 */  bc1t  .L801E138C_ovl15
/* 20BF24 801E13C4 E58A0000 */   swc1  $f10, ($t4)
/* 20BF28 801E13C8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20BF2C 801E13CC 4481A000 */  mtc1  $at, $f20
/* 20BF30 801E13D0 00000000 */  nop   
.L801E13D4_ovl15:
/* 20BF34 801E13D4 3C01801E */  lui   $at, %hi(D_801E689C) # $at, 0x801e
/* 20BF38 801E13D8 C438689C */  lwc1  $f24, %lo(D_801E689C)($at)
/* 20BF3C 801E13DC 0C02BB30 */  jal   func_800AECC0
/* 20BF40 801E13E0 4600B306 */   mov.s $f12, $f22
/* 20BF44 801E13E4 8E830000 */  lw    $v1, ($s4)
/* 20BF48 801E13E8 3C01800E */  lui   $at, 0x800e
/* 20BF4C 801E13EC 2404005A */  li    $a0, 90
/* 20BF50 801E13F0 8C6D0000 */  lw    $t5, ($v1)
/* 20BF54 801E13F4 000D7880 */  sll   $t7, $t5, 2
/* 20BF58 801E13F8 002F0821 */  addu  $at, $at, $t7
/* 20BF5C 801E13FC E4363590 */  swc1  $f22, 0x3590($at)
/* 20BF60 801E1400 8C620000 */  lw    $v0, ($v1)
/* 20BF64 801E1404 3C01800E */  lui   $at, 0x800e
/* 20BF68 801E1408 00021080 */  sll   $v0, $v0, 2
/* 20BF6C 801E140C 00220821 */  addu  $at, $at, $v0
/* 20BF70 801E1410 C4303590 */  lwc1  $f16, 0x3590($at)
/* 20BF74 801E1414 0222C021 */  addu  $t8, $s1, $v0
/* 20BF78 801E1418 3C01801E */  lui   $at, %hi(D_801E68A0) # $at, 0x801e
/* 20BF7C 801E141C E7100000 */  swc1  $f16, ($t8)
/* 20BF80 801E1420 8C6E0000 */  lw    $t6, ($v1)
/* 20BF84 801E1424 C43268A0 */  lwc1  $f18, %lo(D_801E68A0)($at)
/* 20BF88 801E1428 3C01800E */  lui   $at, 0x800e
/* 20BF8C 801E142C 000EC880 */  sll   $t9, $t6, 2
/* 20BF90 801E1430 00390821 */  addu  $at, $at, $t9
/* 20BF94 801E1434 0C002DAF */  jal   finish_current_thread
/* 20BF98 801E1438 E4323AD0 */   swc1  $f18, 0x3ad0($at)
/* 20BF9C 801E143C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20BFA0 801E1440 44812000 */  mtc1  $at, $f4
/* 20BFA4 801E1444 00000000 */  nop   
/* 20BFA8 801E1448 4604B03C */  c.lt.s $f22, $f4
/* 20BFAC 801E144C 00000000 */  nop   
/* 20BFB0 801E1450 4502000E */  bc1fl .L801E148C_ovl15
/* 20BFB4 801E1454 8E990000 */   lw    $t9, ($s4)
/* 20BFB8 801E1458 8E830000 */  lw    $v1, ($s4)
.L801E145C_ovl15:
/* 20BFBC 801E145C 8C6B0000 */  lw    $t3, ($v1)
/* 20BFC0 801E1460 4614D182 */  mul.s $f6, $f26, $f20
/* 20BFC4 801E1464 4618A501 */  sub.s $f20, $f20, $f24
/* 20BFC8 801E1468 000B6080 */  sll   $t4, $t3, 2
/* 20BFCC 801E146C 026C6821 */  addu  $t5, $s3, $t4
/* 20BFD0 801E1470 8DAF0000 */  lw    $t7, ($t5)
/* 20BFD4 801E1474 4614B03C */  c.lt.s $f22, $f20
/* 20BFD8 801E1478 000FC080 */  sll   $t8, $t7, 2
/* 20BFDC 801E147C 02587021 */  addu  $t6, $s2, $t8
/* 20BFE0 801E1480 4501FFF6 */  bc1t  .L801E145C_ovl15
/* 20BFE4 801E1484 E5C60000 */   swc1  $f6, ($t6)
/* 20BFE8 801E1488 8E990000 */  lw    $t9, ($s4)
.L801E148C_ovl15:
/* 20BFEC 801E148C 24040004 */  li    $a0, 4
/* 20BFF0 801E1490 8F2B0000 */  lw    $t3, ($t9)
/* 20BFF4 801E1494 000B6080 */  sll   $t4, $t3, 2
/* 20BFF8 801E1498 026C6821 */  addu  $t5, $s3, $t4
/* 20BFFC 801E149C 8DAF0000 */  lw    $t7, ($t5)
/* 20C000 801E14A0 000FC080 */  sll   $t8, $t7, 2
/* 20C004 801E14A4 02587021 */  addu  $t6, $s2, $t8
/* 20C008 801E14A8 0C06F1E5 */  jal   func_801BC794_ovl15
/* 20C00C 801E14AC E5D60000 */   swc1  $f22, ($t6)
/* 20C010 801E14B0 2401FFFF */  li    $at, -1
/* 20C014 801E14B4 10410030 */  beq   $v0, $at, .L801E1578_ovl15
/* 20C018 801E14B8 3C06800E */   lui   $a2, %hi(D_800E5F90) # $a2, 0x800e
/* 20C01C 801E14BC 3C05800D */  lui   $a1, %hi(D_800D70CC) # $a1, 0x800d
/* 20C020 801E14C0 8CA570CC */  lw    $a1, %lo(D_800D70CC)($a1)
/* 20C024 801E14C4 24C65F90 */  addiu $a2, %lo(D_800E5F90) # addiu $a2, $a2, 0x5f90
/* 20C028 801E14C8 3C07800E */  lui   $a3, %hi(D_800E6BD0) # $a3, 0x800e
/* 20C02C 801E14CC 00052880 */  sll   $a1, $a1, 2
/* 20C030 801E14D0 00C5C821 */  addu  $t9, $a2, $a1
/* 20C034 801E14D4 8F2B0000 */  lw    $t3, ($t9)
/* 20C038 801E14D8 00022080 */  sll   $a0, $v0, 2
/* 20C03C 801E14DC 24E76BD0 */  addiu $a3, %lo(D_800E6BD0) # addiu $a3, $a3, 0x6bd0
/* 20C040 801E14E0 00C46021 */  addu  $t4, $a2, $a0
/* 20C044 801E14E4 00E56821 */  addu  $t5, $a3, $a1
/* 20C048 801E14E8 AD8B0000 */  sw    $t3, ($t4)
/* 20C04C 801E14EC C5A80000 */  lwc1  $f8, ($t5)
/* 20C050 801E14F0 00E47821 */  addu  $t7, $a3, $a0
/* 20C054 801E14F4 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 20C058 801E14F8 E5E80000 */  swc1  $f8, ($t7)
/* 20C05C 801E14FC 8E830000 */  lw    $v1, ($s4)
/* 20C060 801E1500 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 20C064 801E1504 01045821 */  addu  $t3, $t0, $a0
/* 20C068 801E1508 8C780000 */  lw    $t8, ($v1)
/* 20C06C 801E150C 3C09800E */  lui   $t1, %hi(gEntitiesNextPosYArray) # $t1, 0x800e
/* 20C070 801E1510 25292790 */  addiu $t1, %lo(gEntitiesNextPosYArray) # addiu $t1, $t1, 0x2790
/* 20C074 801E1514 00187080 */  sll   $t6, $t8, 2
/* 20C078 801E1518 010EC821 */  addu  $t9, $t0, $t6
/* 20C07C 801E151C C72A0000 */  lwc1  $f10, ($t9)
/* 20C080 801E1520 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 20C084 801E1524 44819000 */  mtc1  $at, $f18
/* 20C088 801E1528 E56A0000 */  swc1  $f10, ($t3)
/* 20C08C 801E152C 8C6C0000 */  lw    $t4, ($v1)
/* 20C090 801E1530 0124C021 */  addu  $t8, $t1, $a0
/* 20C094 801E1534 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosZArray) # $t2, 0x800e
/* 20C098 801E1538 000C6880 */  sll   $t5, $t4, 2
/* 20C09C 801E153C 012D7821 */  addu  $t7, $t1, $t5
/* 20C0A0 801E1540 C5F00000 */  lwc1  $f16, ($t7)
/* 20C0A4 801E1544 254A2950 */  addiu $t2, %lo(gEntitiesNextPosZArray) # addiu $t2, $t2, 0x2950
/* 20C0A8 801E1548 01446021 */  addu  $t4, $t2, $a0
/* 20C0AC 801E154C 46128100 */  add.s $f4, $f16, $f18
/* 20C0B0 801E1550 3C01800F */  lui   $at, 0x800f
/* 20C0B4 801E1554 00240821 */  addu  $at, $at, $a0
/* 20C0B8 801E1558 240D0001 */  li    $t5, 1
/* 20C0BC 801E155C E7040000 */  swc1  $f4, ($t8)
/* 20C0C0 801E1560 8C6E0000 */  lw    $t6, ($v1)
/* 20C0C4 801E1564 000EC880 */  sll   $t9, $t6, 2
/* 20C0C8 801E1568 01595821 */  addu  $t3, $t2, $t9
/* 20C0CC 801E156C C5660000 */  lwc1  $f6, ($t3)
/* 20C0D0 801E1570 E5860000 */  swc1  $f6, ($t4)
/* 20C0D4 801E1574 AC2D8E60 */  sw    $t5, -0x71a0($at)
.L801E1578_ovl15:
/* 20C0D8 801E1578 0C02BE85 */  jal   func_800AFA14
/* 20C0DC 801E157C 00000000 */   nop   
/* 20C0E0 801E1580 8FBF004C */  lw    $ra, 0x4c($sp)
/* 20C0E4 801E1584 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 20C0E8 801E1588 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 20C0EC 801E158C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 20C0F0 801E1590 D7BA0030 */  ldc1  $f26, 0x30($sp)
/* 20C0F4 801E1594 8FB00038 */  lw    $s0, 0x38($sp)
/* 20C0F8 801E1598 8FB1003C */  lw    $s1, 0x3c($sp)
/* 20C0FC 801E159C 8FB20040 */  lw    $s2, 0x40($sp)
/* 20C100 801E15A0 8FB30044 */  lw    $s3, 0x44($sp)
/* 20C104 801E15A4 8FB40048 */  lw    $s4, 0x48($sp)
/* 20C108 801E15A8 03E00008 */  jr    $ra
/* 20C10C 801E15AC 27BD0050 */   addiu $sp, $sp, 0x50

/* 20C110 801E15B0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 20C114 801E15B4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 20C118 801E15B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20C11C 801E15BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 20C120 801E15C0 AFA40018 */  sw    $a0, 0x18($sp)
/* 20C124 801E15C4 8DC30000 */  lw    $v1, ($t6)
/* 20C128 801E15C8 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 20C12C 801E15CC 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 20C130 801E15D0 00031880 */  sll   $v1, $v1, 2
/* 20C134 801E15D4 3C01C2A0 */  li    $at, 0xC2A00000 # -80.000000
/* 20C138 801E15D8 006F1021 */  addu  $v0, $v1, $t7
/* 20C13C 801E15DC 44810000 */  mtc1  $at, $f0
/* 20C140 801E15E0 C4440000 */  lwc1  $f4, ($v0)
/* 20C144 801E15E4 24040003 */  li    $a0, 3
/* 20C148 801E15E8 4600203C */  c.lt.s $f4, $f0
/* 20C14C 801E15EC 00000000 */  nop   
/* 20C150 801E15F0 45000026 */  bc1f  .L801E168C_ovl15
/* 20C154 801E15F4 00000000 */   nop   
/* 20C158 801E15F8 0C03EE45 */  jal   func_800FB914
/* 20C15C 801E15FC E4400000 */   swc1  $f0, ($v0)
/* 20C160 801E1600 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20C164 801E1604 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20C168 801E1608 44803000 */  mtc1  $zero, $f6
/* 20C16C 801E160C 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 20C170 801E1610 8C580000 */  lw    $t8, ($v0)
/* 20C174 801E1614 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 20C178 801E1618 3C01800E */  lui   $at, 0x800e
/* 20C17C 801E161C 0018C880 */  sll   $t9, $t8, 2
/* 20C180 801E1620 00B94021 */  addu  $t0, $a1, $t9
/* 20C184 801E1624 E5060000 */  swc1  $f6, ($t0)
/* 20C188 801E1628 8C430000 */  lw    $v1, ($v0)
/* 20C18C 801E162C 240C0001 */  li    $t4, 1
/* 20C190 801E1630 2404019D */  li    $a0, 413
/* 20C194 801E1634 00031880 */  sll   $v1, $v1, 2
/* 20C198 801E1638 00A34821 */  addu  $t1, $a1, $v1
/* 20C19C 801E163C C5280000 */  lwc1  $f8, ($t1)
/* 20C1A0 801E1640 00230821 */  addu  $at, $at, $v1
/* 20C1A4 801E1644 E4283210 */  swc1  $f8, 0x3210($at)
/* 20C1A8 801E1648 8C4A0000 */  lw    $t2, ($v0)
/* 20C1AC 801E164C 3C01801E */  lui   $at, %hi(D_801E68A4) # $at, 0x801e
/* 20C1B0 801E1650 C42A68A4 */  lwc1  $f10, %lo(D_801E68A4)($at)
/* 20C1B4 801E1654 3C01800E */  lui   $at, 0x800e
/* 20C1B8 801E1658 000A5880 */  sll   $t3, $t2, 2
/* 20C1BC 801E165C 002B0821 */  addu  $at, $at, $t3
/* 20C1C0 801E1660 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 20C1C4 801E1664 8C4D0000 */  lw    $t5, ($v0)
/* 20C1C8 801E1668 3C01800F */  lui   $at, 0x800f
/* 20C1CC 801E166C 000D7080 */  sll   $t6, $t5, 2
/* 20C1D0 801E1670 002E0821 */  addu  $at, $at, $t6
/* 20C1D4 801E1674 0C029D9E */  jal   play_sound
/* 20C1D8 801E1678 AC2C9AA0 */   sw    $t4, -0x6560($at)
/* 20C1DC 801E167C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 20C1E0 801E1680 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 20C1E4 801E1684 8DE30000 */  lw    $v1, ($t7)
/* 20C1E8 801E1688 00031880 */  sll   $v1, $v1, 2
.L801E168C_ovl15:
/* 20C1EC 801E168C 3C19800E */  lui   $t9, 0x800e
/* 20C1F0 801E1690 0323C821 */  addu  $t9, $t9, $v1
/* 20C1F4 801E1694 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20C1F8 801E1698 3C18801E */  lui   $t8, %hi(D_801D92D0) # $t8, 0x801e
/* 20C1FC 801E169C 271892D0 */  addiu $t8, %lo(D_801D92D0) # addiu $t8, $t8, -0x6d30
/* 20C200 801E16A0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 20C204 801E16A4 AF38008C */  sw    $t8, 0x8c($t9)
/* 20C208 801E16A8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 20C20C 801E16AC 3C02800E */  lui   $v0, 0x800e
/* 20C210 801E16B0 00003025 */  move  $a2, $zero
/* 20C214 801E16B4 8D090000 */  lw    $t1, ($t0)
/* 20C218 801E16B8 00095080 */  sll   $t2, $t1, 2
/* 20C21C 801E16BC 004A1021 */  addu  $v0, $v0, $t2
/* 20C220 801E16C0 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20C224 801E16C4 8C440010 */  lw    $a0, 0x10($v0)
/* 20C228 801E16C8 0C078674 */  jal   func_801E19D0_ovl15
/* 20C22C 801E16CC 8C450058 */   lw    $a1, 0x58($v0)
/* 20C230 801E16D0 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 20C234 801E16D4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 20C238 801E16D8 3C0F800E */  lui   $t7, 0x800e
/* 20C23C 801E16DC 3C0B801E */  lui   $t3, %hi(D_801D90FC) # $t3, 0x801e
/* 20C240 801E16E0 8DAC0000 */  lw    $t4, ($t5)
/* 20C244 801E16E4 256B90FC */  addiu $t3, %lo(D_801D90FC) # addiu $t3, $t3, -0x6f04
/* 20C248 801E16E8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 20C24C 801E16EC 000C7080 */  sll   $t6, $t4, 2
/* 20C250 801E16F0 01EE7821 */  addu  $t7, $t7, $t6
/* 20C254 801E16F4 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 20C258 801E16F8 3C09800E */  lui   $t1, 0x800e
/* 20C25C 801E16FC 00002825 */  move  $a1, $zero
/* 20C260 801E1700 ADEB008C */  sw    $t3, 0x8c($t7)
/* 20C264 801E1704 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 20C268 801E1708 00003025 */  move  $a2, $zero
/* 20C26C 801E170C 8F190000 */  lw    $t9, ($t8)
/* 20C270 801E1710 00194080 */  sll   $t0, $t9, 2
/* 20C274 801E1714 01284821 */  addu  $t1, $t1, $t0
/* 20C278 801E1718 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 20C27C 801E171C 0C078674 */  jal   func_801E19D0_ovl15
/* 20C280 801E1720 8D240018 */   lw    $a0, 0x18($t1)
/* 20C284 801E1724 0C078708 */  jal   func_801E1C20_ovl15
/* 20C288 801E1728 8FA40018 */   lw    $a0, 0x18($sp)
/* 20C28C 801E172C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20C290 801E1730 27BD0018 */  addiu $sp, $sp, 0x18
/* 20C294 801E1734 03E00008 */  jr    $ra
/* 20C298 801E1738 00000000 */   nop   

/* 20C29C 801E173C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20C2A0 801E1740 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20C2A4 801E1744 0C06775E */  jal   func_8019DD78_ovl15
/* 20C2A8 801E1748 00000000 */   nop   
/* 20C2AC 801E174C 2401FFFF */  li    $at, -1
/* 20C2B0 801E1750 10410005 */  beq   $v0, $at, .L801E1768_ovl15
/* 20C2B4 801E1754 00401825 */   move  $v1, $v0
/* 20C2B8 801E1758 00027080 */  sll   $t6, $v0, 2
/* 20C2BC 801E175C 3C01800F */  lui   $at, 0x800f
/* 20C2C0 801E1760 002E0821 */  addu  $at, $at, $t6
/* 20C2C4 801E1764 AC208E60 */  sw    $zero, -0x71a0($at)
.L801E1768_ovl15:
/* 20C2C8 801E1768 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20C2CC 801E176C 27BD0018 */  addiu $sp, $sp, 0x18
/* 20C2D0 801E1770 00601025 */  move  $v0, $v1
/* 20C2D4 801E1774 03E00008 */  jr    $ra
/* 20C2D8 801E1778 00000000 */   nop   

/* 20C2DC 801E177C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20C2E0 801E1780 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20C2E4 801E1784 0C078674 */  jal   func_801E19D0_ovl15
/* 20C2E8 801E1788 00000000 */   nop   
/* 20C2EC 801E178C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 20C2F0 801E1790 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 20C2F4 801E1794 3C0F800F */  lui   $t7, 0x800f
/* 20C2F8 801E1798 3C06800F */  lui   $a2, %hi(D_800EBDA0) # $a2, 0x800f
/* 20C2FC 801E179C 8DC40000 */  lw    $a0, ($t6)
/* 20C300 801E17A0 24C6BDA0 */  addiu $a2, %lo(D_800EBDA0) # addiu $a2, $a2, -0x4260
/* 20C304 801E17A4 24010002 */  li    $at, 2
/* 20C308 801E17A8 00042080 */  sll   $a0, $a0, 2
/* 20C30C 801E17AC 01E47821 */  addu  $t7, $t7, $a0
/* 20C310 801E17B0 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 20C314 801E17B4 00C4C021 */  addu  $t8, $a2, $a0
/* 20C318 801E17B8 55E10026 */  bnel  $t7, $at, .L801E1854_ovl15
/* 20C31C 801E17BC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 20C320 801E17C0 8F190000 */  lw    $t9, ($t8)
/* 20C324 801E17C4 2401FFFF */  li    $at, -1
/* 20C328 801E17C8 24050002 */  li    $a1, 2
/* 20C32C 801E17CC 57210021 */  bnel  $t9, $at, .L801E1854_ovl15
/* 20C330 801E17D0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 20C334 801E17D4 0C067829 */  jal   func_8019E0A4_ovl15
/* 20C338 801E17D8 24040004 */   li    $a0, 4
/* 20C33C 801E17DC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 20C340 801E17E0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 20C344 801E17E4 3C06800F */  lui   $a2, %hi(D_800EBDA0) # $a2, 0x800f
/* 20C348 801E17E8 24C6BDA0 */  addiu $a2, %lo(D_800EBDA0) # addiu $a2, $a2, -0x4260
/* 20C34C 801E17EC 8C680000 */  lw    $t0, ($v1)
/* 20C350 801E17F0 2401FFFF */  li    $at, -1
/* 20C354 801E17F4 00084880 */  sll   $t1, $t0, 2
/* 20C358 801E17F8 00C95021 */  addu  $t2, $a2, $t1
/* 20C35C 801E17FC AD420000 */  sw    $v0, ($t2)
/* 20C360 801E1800 8C640000 */  lw    $a0, ($v1)
/* 20C364 801E1804 00042080 */  sll   $a0, $a0, 2
/* 20C368 801E1808 00C45821 */  addu  $t3, $a2, $a0
/* 20C36C 801E180C 8D6C0000 */  lw    $t4, ($t3)
/* 20C370 801E1810 1181000F */  beq   $t4, $at, .L801E1850_ovl15
/* 20C374 801E1814 3C01800D */   lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 20C378 801E1818 C4266E5C */  lwc1  $f6, %lo(D_800D6E5C)($at)
/* 20C37C 801E181C 44802000 */  mtc1  $zero, $f4
/* 20C380 801E1820 3C01800E */  lui   $at, 0x800e
/* 20C384 801E1824 00240821 */  addu  $at, $at, $a0
/* 20C388 801E1828 46062032 */  c.eq.s $f4, $f6
/* 20C38C 801E182C 00000000 */  nop   
/* 20C390 801E1830 45030008 */  bc1tl .L801E1854_ovl15
/* 20C394 801E1834 8FBF0014 */   lw    $ra, 0x14($sp)
/* 20C398 801E1838 0C02F047 */  jal   func_800BC11C
/* 20C39C 801E183C C42C7B20 */   lwc1  $f12, 0x7b20($at)
/* 20C3A0 801E1840 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 20C3A4 801E1844 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 20C3A8 801E1848 8DA40000 */  lw    $a0, ($t5)
/* 20C3AC 801E184C 00042080 */  sll   $a0, $a0, 2
.L801E1850_ovl15:
/* 20C3B0 801E1850 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E1854_ovl15:
/* 20C3B4 801E1854 3C02800F */  lui   $v0, 0x800f
/* 20C3B8 801E1858 00441021 */  addu  $v0, $v0, $a0
/* 20C3BC 801E185C 8C4283E0 */  lw    $v0, -0x7c20($v0)
/* 20C3C0 801E1860 03E00008 */  jr    $ra
/* 20C3C4 801E1864 27BD0018 */   addiu $sp, $sp, 0x18

/* 20C3C8 801E1868 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 20C3CC 801E186C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 20C3D0 801E1870 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 20C3D4 801E1874 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20C3D8 801E1878 8DCF0000 */  lw    $t7, ($t6)
/* 20C3DC 801E187C 3C01800E */  lui   $at, 0x800e
/* 20C3E0 801E1880 000FC080 */  sll   $t8, $t7, 2
/* 20C3E4 801E1884 00380821 */  addu  $at, $at, $t8
/* 20C3E8 801E1888 C4247B20 */  lwc1  $f4, 0x7b20($at)
/* 20C3EC 801E188C 0C078674 */  jal   func_801E19D0_ovl15
/* 20C3F0 801E1890 E7A4001C */   swc1  $f4, 0x1c($sp)
/* 20C3F4 801E1894 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 20C3F8 801E1898 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 20C3FC 801E189C 3C01800E */  lui   $at, 0x800e
/* 20C400 801E18A0 3C05800F */  lui   $a1, 0x800f
/* 20C404 801E18A4 8F230000 */  lw    $v1, ($t9)
/* 20C408 801E18A8 24040004 */  li    $a0, 4
/* 20C40C 801E18AC 00031880 */  sll   $v1, $v1, 2
/* 20C410 801E18B0 00230821 */  addu  $at, $at, $v1
/* 20C414 801E18B4 00A32821 */  addu  $a1, $a1, $v1
/* 20C418 801E18B8 C4267B20 */  lwc1  $f6, 0x7b20($at)
/* 20C41C 801E18BC 8CA583E0 */  lw    $a1, -0x7c20($a1)
/* 20C420 801E18C0 24010002 */  li    $at, 2
/* 20C424 801E18C4 E7A60018 */  swc1  $f6, 0x18($sp)
/* 20C428 801E18C8 54A1003D */  bnel  $a1, $at, .L801E19C0_ovl15
/* 20C42C 801E18CC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 20C430 801E18D0 0C067829 */  jal   func_8019E0A4_ovl15
/* 20C434 801E18D4 24050002 */   li    $a1, 2
/* 20C438 801E18D8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 20C43C 801E18DC 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 20C440 801E18E0 3C05800F */  lui   $a1, %hi(D_800EBDA0) # $a1, 0x800f
/* 20C444 801E18E4 24A5BDA0 */  addiu $a1, %lo(D_800EBDA0) # addiu $a1, $a1, -0x4260
/* 20C448 801E18E8 8C880000 */  lw    $t0, ($a0)
/* 20C44C 801E18EC 2401FFFF */  li    $at, -1
/* 20C450 801E18F0 00084880 */  sll   $t1, $t0, 2
/* 20C454 801E18F4 00A95021 */  addu  $t2, $a1, $t1
/* 20C458 801E18F8 AD420000 */  sw    $v0, ($t2)
/* 20C45C 801E18FC 8C830000 */  lw    $v1, ($a0)
/* 20C460 801E1900 00031880 */  sll   $v1, $v1, 2
/* 20C464 801E1904 00A35821 */  addu  $t3, $a1, $v1
/* 20C468 801E1908 8D6C0000 */  lw    $t4, ($t3)
/* 20C46C 801E190C 1181000F */  beq   $t4, $at, .L801E194C_ovl15
/* 20C470 801E1910 3C01800D */   lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 20C474 801E1914 C42A6E5C */  lwc1  $f10, %lo(D_800D6E5C)($at)
/* 20C478 801E1918 44804000 */  mtc1  $zero, $f8
/* 20C47C 801E191C 3C01800E */  lui   $at, 0x800e
/* 20C480 801E1920 00230821 */  addu  $at, $at, $v1
/* 20C484 801E1924 460A4032 */  c.eq.s $f8, $f10
/* 20C488 801E1928 00000000 */  nop   
/* 20C48C 801E192C 45010007 */  bc1t  .L801E194C_ovl15
/* 20C490 801E1930 00000000 */   nop   
/* 20C494 801E1934 0C02F047 */  jal   func_800BC11C
/* 20C498 801E1938 C42C7B20 */   lwc1  $f12, 0x7b20($at)
/* 20C49C 801E193C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 20C4A0 801E1940 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 20C4A4 801E1944 8C830000 */  lw    $v1, ($a0)
/* 20C4A8 801E1948 00031880 */  sll   $v1, $v1, 2
.L801E194C_ovl15:
/* 20C4AC 801E194C 3C01801E */  lui   $at, %hi(D_801E68A8) # $at, 0x801e
/* 20C4B0 801E1950 C42068A8 */  lwc1  $f0, %lo(D_801E68A8)($at)
/* 20C4B4 801E1954 C7B0001C */  lwc1  $f16, 0x1c($sp)
/* 20C4B8 801E1958 C7B20018 */  lwc1  $f18, 0x18($sp)
/* 20C4BC 801E195C 240F0001 */  li    $t7, 1
/* 20C4C0 801E1960 4610003C */  c.lt.s $f0, $f16
/* 20C4C4 801E1964 00000000 */  nop   
/* 20C4C8 801E1968 4500000C */  bc1f  .L801E199C_ovl15
/* 20C4CC 801E196C 00000000 */   nop   
/* 20C4D0 801E1970 4600903C */  c.lt.s $f18, $f0
/* 20C4D4 801E1974 3C01800E */  lui   $at, 0x800e
/* 20C4D8 801E1978 00230821 */  addu  $at, $at, $v1
/* 20C4DC 801E197C 240D000F */  li    $t5, 15
/* 20C4E0 801E1980 45000006 */  bc1f  .L801E199C_ovl15
/* 20C4E4 801E1984 240E0001 */   li    $t6, 1
/* 20C4E8 801E1988 AC2DDC50 */  sw    $t5, -0x23b0($at)
/* 20C4EC 801E198C 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 20C4F0 801E1990 AC2E7098 */  sw    $t6, %lo(D_800D7098)($at)
/* 20C4F4 801E1994 8C830000 */  lw    $v1, ($a0)
/* 20C4F8 801E1998 00031880 */  sll   $v1, $v1, 2
.L801E199C_ovl15:
/* 20C4FC 801E199C 3C01800F */  lui   $at, 0x800f
/* 20C500 801E19A0 00230821 */  addu  $at, $at, $v1
/* 20C504 801E19A4 AC2FA1A0 */  sw    $t7, -0x5e60($at)
/* 20C508 801E19A8 8C980000 */  lw    $t8, ($a0)
/* 20C50C 801E19AC 3C05800F */  lui   $a1, 0x800f
/* 20C510 801E19B0 0018C880 */  sll   $t9, $t8, 2
/* 20C514 801E19B4 00B92821 */  addu  $a1, $a1, $t9
/* 20C518 801E19B8 8CA583E0 */  lw    $a1, -0x7c20($a1)
/* 20C51C 801E19BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E19C0_ovl15:
/* 20C520 801E19C0 27BD0020 */  addiu $sp, $sp, 0x20
/* 20C524 801E19C4 00A01025 */  move  $v0, $a1
/* 20C528 801E19C8 03E00008 */  jr    $ra
/* 20C52C 801E19CC 00000000 */   nop   

/* 20C530 801E19D0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 20C534 801E19D4 AFB10018 */  sw    $s1, 0x18($sp)
/* 20C538 801E19D8 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 20C53C 801E19DC 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 20C540 801E19E0 8E2E0000 */  lw    $t6, ($s1)
/* 20C544 801E19E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20C548 801E19E8 AFB00014 */  sw    $s0, 0x14($sp)
/* 20C54C 801E19EC AFA40050 */  sw    $a0, 0x50($sp)
/* 20C550 801E19F0 AFA50054 */  sw    $a1, 0x54($sp)
/* 20C554 801E19F4 AFA60058 */  sw    $a2, 0x58($sp)
/* 20C558 801E19F8 8DC40000 */  lw    $a0, ($t6)
/* 20C55C 801E19FC 3C10800E */  lui   $s0, 0x800e
/* 20C560 801E1A00 00047880 */  sll   $t7, $a0, 2
/* 20C564 801E1A04 020F8021 */  addu  $s0, $s0, $t7
/* 20C568 801E1A08 0C044554 */  jal   func_80111550
/* 20C56C 801E1A0C 8E101B50 */   lw    $s0, 0x1b50($s0)
/* 20C570 801E1A10 8E380000 */  lw    $t8, ($s1)
/* 20C574 801E1A14 8E04008C */  lw    $a0, 0x8c($s0)
/* 20C578 801E1A18 0C044722 */  jal   func_80111C88
/* 20C57C 801E1A1C 8F050000 */   lw    $a1, ($t8)
/* 20C580 801E1A20 10400012 */  beqz  $v0, .L801E1A6C_ovl15
/* 20C584 801E1A24 00402025 */   move  $a0, $v0
/* 20C588 801E1A28 8FA30050 */  lw    $v1, 0x50($sp)
/* 20C58C 801E1A2C 50600004 */  beql  $v1, $zero, .L801E1A40_ovl15
/* 20C590 801E1A30 8FA30054 */   lw    $v1, 0x54($sp)
/* 20C594 801E1A34 8C590024 */  lw    $t9, 0x24($v0)
/* 20C598 801E1A38 AF230008 */  sw    $v1, 8($t9)
/* 20C59C 801E1A3C 8FA30054 */  lw    $v1, 0x54($sp)
.L801E1A40_ovl15:
/* 20C5A0 801E1A40 50600004 */  beql  $v1, $zero, .L801E1A54_ovl15
/* 20C5A4 801E1A44 8FA30058 */   lw    $v1, 0x58($sp)
/* 20C5A8 801E1A48 8C480024 */  lw    $t0, 0x24($v0)
/* 20C5AC 801E1A4C AD030030 */  sw    $v1, 0x30($t0)
/* 20C5B0 801E1A50 8FA30058 */  lw    $v1, 0x58($sp)
.L801E1A54_ovl15:
/* 20C5B4 801E1A54 10600003 */  beqz  $v1, .L801E1A64_ovl15
/* 20C5B8 801E1A58 00000000 */   nop   
/* 20C5BC 801E1A5C 8C490024 */  lw    $t1, 0x24($v0)
/* 20C5C0 801E1A60 AD230058 */  sw    $v1, 0x58($t1)
.L801E1A64_ovl15:
/* 20C5C4 801E1A64 0C0447B3 */  jal   func_80111ECC
/* 20C5C8 801E1A68 00000000 */   nop   
.L801E1A6C_ovl15:
/* 20C5CC 801E1A6C 0C0442C0 */  jal   func_80110B00
/* 20C5D0 801E1A70 27A40030 */   addiu $a0, $sp, 0x30
/* 20C5D4 801E1A74 10400010 */  beqz  $v0, .L801E1AB8_ovl15
/* 20C5D8 801E1A78 00000000 */   nop   
/* 20C5DC 801E1A7C 8E2B0000 */  lw    $t3, ($s1)
/* 20C5E0 801E1A80 93AA0032 */  lbu   $t2, 0x32($sp)
/* 20C5E4 801E1A84 3C03800F */  lui   $v1, %hi(D_800E83E0) # $v1, 0x800f
/* 20C5E8 801E1A88 8D6C0000 */  lw    $t4, ($t3)
/* 20C5EC 801E1A8C 246383E0 */  addiu $v1, %lo(D_800E83E0) # addiu $v1, $v1, -0x7c20
/* 20C5F0 801E1A90 000C6880 */  sll   $t5, $t4, 2
/* 20C5F4 801E1A94 006D7021 */  addu  $t6, $v1, $t5
/* 20C5F8 801E1A98 ADCA0000 */  sw    $t2, ($t6)
/* 20C5FC 801E1A9C 93AF0033 */  lbu   $t7, 0x33($sp)
/* 20C600 801E1AA0 A20F0043 */  sb    $t7, 0x43($s0)
/* 20C604 801E1AA4 93B80030 */  lbu   $t8, 0x30($sp)
/* 20C608 801E1AA8 A218003E */  sb    $t8, 0x3e($s0)
/* 20C60C 801E1AAC 93B90031 */  lbu   $t9, 0x31($sp)
/* 20C610 801E1AB0 1000002F */  b     .L801E1B70_ovl15
/* 20C614 801E1AB4 A219003F */   sb    $t9, 0x3f($s0)
.L801E1AB8_ovl15:
/* 20C618 801E1AB8 0C0443F5 */  jal   func_80110FD4
/* 20C61C 801E1ABC 27A40030 */   addiu $a0, $sp, 0x30
/* 20C620 801E1AC0 10400010 */  beqz  $v0, .L801E1B04_ovl15
/* 20C624 801E1AC4 00000000 */   nop   
/* 20C628 801E1AC8 8E290000 */  lw    $t1, ($s1)
/* 20C62C 801E1ACC 93A80032 */  lbu   $t0, 0x32($sp)
/* 20C630 801E1AD0 3C03800F */  lui   $v1, %hi(D_800E83E0) # $v1, 0x800f
/* 20C634 801E1AD4 8D2B0000 */  lw    $t3, ($t1)
/* 20C638 801E1AD8 246383E0 */  addiu $v1, %lo(D_800E83E0) # addiu $v1, $v1, -0x7c20
/* 20C63C 801E1ADC 000B6080 */  sll   $t4, $t3, 2
/* 20C640 801E1AE0 006C6821 */  addu  $t5, $v1, $t4
/* 20C644 801E1AE4 ADA80000 */  sw    $t0, ($t5)
/* 20C648 801E1AE8 93AA0033 */  lbu   $t2, 0x33($sp)
/* 20C64C 801E1AEC A20A0043 */  sb    $t2, 0x43($s0)
/* 20C650 801E1AF0 93AE0030 */  lbu   $t6, 0x30($sp)
/* 20C654 801E1AF4 A20E003E */  sb    $t6, 0x3e($s0)
/* 20C658 801E1AF8 93AF0031 */  lbu   $t7, 0x31($sp)
/* 20C65C 801E1AFC 1000001C */  b     .L801E1B70_ovl15
/* 20C660 801E1B00 A20F003F */   sb    $t7, 0x3f($s0)
.L801E1B04_ovl15:
/* 20C664 801E1B04 0C044054 */  jal   func_80110150
/* 20C668 801E1B08 27A40030 */   addiu $a0, $sp, 0x30
/* 20C66C 801E1B0C 50400011 */  beql  $v0, $zero, .L801E1B54_ovl15
/* 20C670 801E1B10 8E2E0000 */   lw    $t6, ($s1)
/* 20C674 801E1B14 8E390000 */  lw    $t9, ($s1)
/* 20C678 801E1B18 93B80032 */  lbu   $t8, 0x32($sp)
/* 20C67C 801E1B1C 3C03800F */  lui   $v1, %hi(D_800E83E0) # $v1, 0x800f
/* 20C680 801E1B20 8F290000 */  lw    $t1, ($t9)
/* 20C684 801E1B24 246383E0 */  addiu $v1, %lo(D_800E83E0) # addiu $v1, $v1, -0x7c20
/* 20C688 801E1B28 00095880 */  sll   $t3, $t1, 2
/* 20C68C 801E1B2C 006B6021 */  addu  $t4, $v1, $t3
/* 20C690 801E1B30 AD980000 */  sw    $t8, ($t4)
/* 20C694 801E1B34 93A80033 */  lbu   $t0, 0x33($sp)
/* 20C698 801E1B38 A2080043 */  sb    $t0, 0x43($s0)
/* 20C69C 801E1B3C 93AD0030 */  lbu   $t5, 0x30($sp)
/* 20C6A0 801E1B40 A20D003E */  sb    $t5, 0x3e($s0)
/* 20C6A4 801E1B44 93AA0031 */  lbu   $t2, 0x31($sp)
/* 20C6A8 801E1B48 10000009 */  b     .L801E1B70_ovl15
/* 20C6AC 801E1B4C A20A003F */   sb    $t2, 0x3f($s0)
/* 20C6B0 801E1B50 8E2E0000 */  lw    $t6, ($s1)
.L801E1B54_ovl15:
/* 20C6B4 801E1B54 3C03800F */  lui   $v1, %hi(D_800E83E0) # $v1, 0x800f
/* 20C6B8 801E1B58 246383E0 */  addiu $v1, %lo(D_800E83E0) # addiu $v1, $v1, -0x7c20
/* 20C6BC 801E1B5C 8DCF0000 */  lw    $t7, ($t6)
/* 20C6C0 801E1B60 000FC880 */  sll   $t9, $t7, 2
/* 20C6C4 801E1B64 00794821 */  addu  $t1, $v1, $t9
/* 20C6C8 801E1B68 AD200000 */  sw    $zero, ($t1)
/* 20C6CC 801E1B6C A2000043 */  sb    $zero, 0x43($s0)
.L801E1B70_ovl15:
/* 20C6D0 801E1B70 8E2B0000 */  lw    $t3, ($s1)
/* 20C6D4 801E1B74 8FBF001C */  lw    $ra, 0x1c($sp)
/* 20C6D8 801E1B78 8FB10018 */  lw    $s1, 0x18($sp)
/* 20C6DC 801E1B7C 8D780000 */  lw    $t8, ($t3)
/* 20C6E0 801E1B80 8FB00014 */  lw    $s0, 0x14($sp)
/* 20C6E4 801E1B84 00186080 */  sll   $t4, $t8, 2
/* 20C6E8 801E1B88 006C4021 */  addu  $t0, $v1, $t4
/* 20C6EC 801E1B8C 8D020000 */  lw    $v0, ($t0)
/* 20C6F0 801E1B90 03E00008 */  jr    $ra
/* 20C6F4 801E1B94 27BD0050 */   addiu $sp, $sp, 0x50

/* 20C6F8 801E1B98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 20C6FC 801E1B9C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 20C700 801E1BA0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 20C704 801E1BA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20C708 801E1BA8 AFA40020 */  sw    $a0, 0x20($sp)
/* 20C70C 801E1BAC AFA50024 */  sw    $a1, 0x24($sp)
/* 20C710 801E1BB0 8DC40000 */  lw    $a0, ($t6)
/* 20C714 801E1BB4 3C18800E */  lui   $t8, 0x800e
/* 20C718 801E1BB8 00047880 */  sll   $t7, $a0, 2
/* 20C71C 801E1BBC 030FC021 */  addu  $t8, $t8, $t7
/* 20C720 801E1BC0 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 20C724 801E1BC4 0C044554 */  jal   func_80111550
/* 20C728 801E1BC8 AFB80018 */   sw    $t8, 0x18($sp)
/* 20C72C 801E1BCC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 20C730 801E1BD0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 20C734 801E1BD4 8FB90018 */  lw    $t9, 0x18($sp)
/* 20C738 801E1BD8 8D050000 */  lw    $a1, ($t0)
/* 20C73C 801E1BDC 0C044722 */  jal   func_80111C88
/* 20C740 801E1BE0 8F24008C */   lw    $a0, 0x8c($t9)
/* 20C744 801E1BE4 10400008 */  beqz  $v0, .L801E1C08_ovl15
/* 20C748 801E1BE8 00402025 */   move  $a0, $v0
/* 20C74C 801E1BEC 8FA30020 */  lw    $v1, 0x20($sp)
/* 20C750 801E1BF0 10600003 */  beqz  $v1, .L801E1C00_ovl15
/* 20C754 801E1BF4 00000000 */   nop   
/* 20C758 801E1BF8 8C490024 */  lw    $t1, 0x24($v0)
/* 20C75C 801E1BFC AD230008 */  sw    $v1, 8($t1)
.L801E1C00_ovl15:
/* 20C760 801E1C00 0C0447B3 */  jal   func_80111ECC
/* 20C764 801E1C04 00000000 */   nop   
.L801E1C08_ovl15:
/* 20C768 801E1C08 0C044054 */  jal   func_80110150
/* 20C76C 801E1C0C 8FA40024 */   lw    $a0, 0x24($sp)
/* 20C770 801E1C10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20C774 801E1C14 27BD0020 */  addiu $sp, $sp, 0x20
/* 20C778 801E1C18 03E00008 */  jr    $ra
/* 20C77C 801E1C1C 00000000 */   nop   

/* 20C780 801E1C20 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 20C784 801E1C24 AFB00018 */  sw    $s0, 0x18($sp)
/* 20C788 801E1C28 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20C78C 801E1C2C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20C790 801E1C30 8E0F0000 */  lw    $t7, ($s0)
/* 20C794 801E1C34 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20C798 801E1C38 AFA40040 */  sw    $a0, 0x40($sp)
/* 20C79C 801E1C3C 8DF80000 */  lw    $t8, ($t7)
/* 20C7A0 801E1C40 3C08800E */  lui   $t0, 0x800e
/* 20C7A4 801E1C44 3C0E801E */  lui   $t6, %hi(D_801D8F70) # $t6, 0x801e
/* 20C7A8 801E1C48 0018C880 */  sll   $t9, $t8, 2
/* 20C7AC 801E1C4C 01194021 */  addu  $t0, $t0, $t9
/* 20C7B0 801E1C50 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 20C7B4 801E1C54 25CE8F70 */  addiu $t6, %lo(D_801D8F70) # addiu $t6, $t6, -0x7090
/* 20C7B8 801E1C58 3C0C800E */  lui   $t4, 0x800e
/* 20C7BC 801E1C5C AD0E008C */  sw    $t6, 0x8c($t0)
/* 20C7C0 801E1C60 8E090000 */  lw    $t1, ($s0)
/* 20C7C4 801E1C64 27A50024 */  addiu $a1, $sp, 0x24
/* 20C7C8 801E1C68 8D2A0000 */  lw    $t2, ($t1)
/* 20C7CC 801E1C6C 000A5880 */  sll   $t3, $t2, 2
/* 20C7D0 801E1C70 018B6021 */  addu  $t4, $t4, $t3
/* 20C7D4 801E1C74 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 20C7D8 801E1C78 0C0786E6 */  jal   func_801E1B98_ovl15
/* 20C7DC 801E1C7C 8D840010 */   lw    $a0, 0x10($t4)
/* 20C7E0 801E1C80 10400011 */  beqz  $v0, .L801E1CC8_ovl15
/* 20C7E4 801E1C84 8FA40030 */   lw    $a0, 0x30($sp)
/* 20C7E8 801E1C88 93A50024 */  lbu   $a1, 0x24($sp)
/* 20C7EC 801E1C8C 93A60025 */  lbu   $a2, 0x25($sp)
/* 20C7F0 801E1C90 0C05A50C */  jal   func_80169430_ovl15
/* 20C7F4 801E1C94 2407000B */   li    $a3, 11
/* 20C7F8 801E1C98 8E020000 */  lw    $v0, ($s0)
/* 20C7FC 801E1C9C 3C01800F */  lui   $at, 0x800f
/* 20C800 801E1CA0 8C4D0000 */  lw    $t5, ($v0)
/* 20C804 801E1CA4 000D7880 */  sll   $t7, $t5, 2
/* 20C808 801E1CA8 002F0821 */  addu  $at, $at, $t7
/* 20C80C 801E1CAC AC20BF60 */  sw    $zero, -0x40a0($at)
/* 20C810 801E1CB0 8C580000 */  lw    $t8, ($v0)
/* 20C814 801E1CB4 3C01800F */  lui   $at, 0x800f
/* 20C818 801E1CB8 0018C880 */  sll   $t9, $t8, 2
/* 20C81C 801E1CBC 00390821 */  addu  $at, $at, $t9
/* 20C820 801E1CC0 1000006C */  b     .L801E1E74_ovl15
/* 20C824 801E1CC4 AC209FE0 */   sw    $zero, -0x6020($at)
.L801E1CC8_ovl15:
/* 20C828 801E1CC8 8E080000 */  lw    $t0, ($s0)
/* 20C82C 801E1CCC 3C0B800E */  lui   $t3, 0x800e
/* 20C830 801E1CD0 3C0E801E */  lui   $t6, %hi(D_801D8F94) # $t6, 0x801e
/* 20C834 801E1CD4 8D090000 */  lw    $t1, ($t0)
/* 20C838 801E1CD8 25CE8F94 */  addiu $t6, %lo(D_801D8F94) # addiu $t6, $t6, -0x706c
/* 20C83C 801E1CDC 3C18800E */  lui   $t8, 0x800e
/* 20C840 801E1CE0 00095080 */  sll   $t2, $t1, 2
/* 20C844 801E1CE4 016A5821 */  addu  $t3, $t3, $t2
/* 20C848 801E1CE8 8D6B1B50 */  lw    $t3, 0x1b50($t3)
/* 20C84C 801E1CEC 27A50024 */  addiu $a1, $sp, 0x24
/* 20C850 801E1CF0 AD6E008C */  sw    $t6, 0x8c($t3)
/* 20C854 801E1CF4 8E0C0000 */  lw    $t4, ($s0)
/* 20C858 801E1CF8 8D8D0000 */  lw    $t5, ($t4)
/* 20C85C 801E1CFC 000D7880 */  sll   $t7, $t5, 2
/* 20C860 801E1D00 030FC021 */  addu  $t8, $t8, $t7
/* 20C864 801E1D04 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 20C868 801E1D08 0C0786E6 */  jal   func_801E1B98_ovl15
/* 20C86C 801E1D0C 8F040010 */   lw    $a0, 0x10($t8)
/* 20C870 801E1D10 10400011 */  beqz  $v0, .L801E1D58_ovl15
/* 20C874 801E1D14 8FA40030 */   lw    $a0, 0x30($sp)
/* 20C878 801E1D18 93A50024 */  lbu   $a1, 0x24($sp)
/* 20C87C 801E1D1C 93A60025 */  lbu   $a2, 0x25($sp)
/* 20C880 801E1D20 0C05A50C */  jal   func_80169430_ovl15
/* 20C884 801E1D24 2407000C */   li    $a3, 12
/* 20C888 801E1D28 8E020000 */  lw    $v0, ($s0)
/* 20C88C 801E1D2C 3C01800F */  lui   $at, 0x800f
/* 20C890 801E1D30 8C590000 */  lw    $t9, ($v0)
/* 20C894 801E1D34 00194080 */  sll   $t0, $t9, 2
/* 20C898 801E1D38 00280821 */  addu  $at, $at, $t0
/* 20C89C 801E1D3C AC20BF60 */  sw    $zero, -0x40a0($at)
/* 20C8A0 801E1D40 8C490000 */  lw    $t1, ($v0)
/* 20C8A4 801E1D44 3C01800F */  lui   $at, 0x800f
/* 20C8A8 801E1D48 00095080 */  sll   $t2, $t1, 2
/* 20C8AC 801E1D4C 002A0821 */  addu  $at, $at, $t2
/* 20C8B0 801E1D50 10000048 */  b     .L801E1E74_ovl15
/* 20C8B4 801E1D54 AC209FE0 */   sw    $zero, -0x6020($at)
.L801E1D58_ovl15:
/* 20C8B8 801E1D58 8E0B0000 */  lw    $t3, ($s0)
/* 20C8BC 801E1D5C 3C0F800E */  lui   $t7, 0x800e
/* 20C8C0 801E1D60 3C0E801E */  lui   $t6, %hi(D_801D8FB8) # $t6, 0x801e
/* 20C8C4 801E1D64 8D6C0000 */  lw    $t4, ($t3)
/* 20C8C8 801E1D68 25CE8FB8 */  addiu $t6, %lo(D_801D8FB8) # addiu $t6, $t6, -0x7048
/* 20C8CC 801E1D6C 3C09800E */  lui   $t1, 0x800e
/* 20C8D0 801E1D70 000C6880 */  sll   $t5, $t4, 2
/* 20C8D4 801E1D74 01ED7821 */  addu  $t7, $t7, $t5
/* 20C8D8 801E1D78 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 20C8DC 801E1D7C 27A50024 */  addiu $a1, $sp, 0x24
/* 20C8E0 801E1D80 ADEE008C */  sw    $t6, 0x8c($t7)
/* 20C8E4 801E1D84 8E180000 */  lw    $t8, ($s0)
/* 20C8E8 801E1D88 8F190000 */  lw    $t9, ($t8)
/* 20C8EC 801E1D8C 00194080 */  sll   $t0, $t9, 2
/* 20C8F0 801E1D90 01284821 */  addu  $t1, $t1, $t0
/* 20C8F4 801E1D94 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 20C8F8 801E1D98 0C0786E6 */  jal   func_801E1B98_ovl15
/* 20C8FC 801E1D9C 8D240010 */   lw    $a0, 0x10($t1)
/* 20C900 801E1DA0 10400011 */  beqz  $v0, .L801E1DE8_ovl15
/* 20C904 801E1DA4 8FA40030 */   lw    $a0, 0x30($sp)
/* 20C908 801E1DA8 93A50024 */  lbu   $a1, 0x24($sp)
/* 20C90C 801E1DAC 93A60025 */  lbu   $a2, 0x25($sp)
/* 20C910 801E1DB0 0C05A50C */  jal   func_80169430_ovl15
/* 20C914 801E1DB4 2407000D */   li    $a3, 13
/* 20C918 801E1DB8 8E020000 */  lw    $v0, ($s0)
/* 20C91C 801E1DBC 3C01800F */  lui   $at, 0x800f
/* 20C920 801E1DC0 8C4A0000 */  lw    $t2, ($v0)
/* 20C924 801E1DC4 000A5880 */  sll   $t3, $t2, 2
/* 20C928 801E1DC8 002B0821 */  addu  $at, $at, $t3
/* 20C92C 801E1DCC AC20BF60 */  sw    $zero, -0x40a0($at)
/* 20C930 801E1DD0 8C4C0000 */  lw    $t4, ($v0)
/* 20C934 801E1DD4 3C01800F */  lui   $at, 0x800f
/* 20C938 801E1DD8 000C6880 */  sll   $t5, $t4, 2
/* 20C93C 801E1DDC 002D0821 */  addu  $at, $at, $t5
/* 20C940 801E1DE0 10000024 */  b     .L801E1E74_ovl15
/* 20C944 801E1DE4 AC209FE0 */   sw    $zero, -0x6020($at)
.L801E1DE8_ovl15:
/* 20C948 801E1DE8 8E0F0000 */  lw    $t7, ($s0)
/* 20C94C 801E1DEC 3C08800E */  lui   $t0, 0x800e
/* 20C950 801E1DF0 3C0E801E */  lui   $t6, %hi(D_801D8FDC) # $t6, 0x801e
/* 20C954 801E1DF4 8DF80000 */  lw    $t8, ($t7)
/* 20C958 801E1DF8 25CE8FDC */  addiu $t6, %lo(D_801D8FDC) # addiu $t6, $t6, -0x7024
/* 20C95C 801E1DFC 3C0C800E */  lui   $t4, 0x800e
/* 20C960 801E1E00 0018C880 */  sll   $t9, $t8, 2
/* 20C964 801E1E04 01194021 */  addu  $t0, $t0, $t9
/* 20C968 801E1E08 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 20C96C 801E1E0C 27A50024 */  addiu $a1, $sp, 0x24
/* 20C970 801E1E10 AD0E008C */  sw    $t6, 0x8c($t0)
/* 20C974 801E1E14 8E090000 */  lw    $t1, ($s0)
/* 20C978 801E1E18 8D2A0000 */  lw    $t2, ($t1)
/* 20C97C 801E1E1C 000A5880 */  sll   $t3, $t2, 2
/* 20C980 801E1E20 018B6021 */  addu  $t4, $t4, $t3
/* 20C984 801E1E24 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 20C988 801E1E28 0C0786E6 */  jal   func_801E1B98_ovl15
/* 20C98C 801E1E2C 8D840010 */   lw    $a0, 0x10($t4)
/* 20C990 801E1E30 10400010 */  beqz  $v0, .L801E1E74_ovl15
/* 20C994 801E1E34 8FA40030 */   lw    $a0, 0x30($sp)
/* 20C998 801E1E38 93A50024 */  lbu   $a1, 0x24($sp)
/* 20C99C 801E1E3C 93A60025 */  lbu   $a2, 0x25($sp)
/* 20C9A0 801E1E40 0C05A50C */  jal   func_80169430_ovl15
/* 20C9A4 801E1E44 2407000E */   li    $a3, 14
/* 20C9A8 801E1E48 8E020000 */  lw    $v0, ($s0)
/* 20C9AC 801E1E4C 3C01800F */  lui   $at, 0x800f
/* 20C9B0 801E1E50 8C4D0000 */  lw    $t5, ($v0)
/* 20C9B4 801E1E54 000D7880 */  sll   $t7, $t5, 2
/* 20C9B8 801E1E58 002F0821 */  addu  $at, $at, $t7
/* 20C9BC 801E1E5C AC20BF60 */  sw    $zero, -0x40a0($at)
/* 20C9C0 801E1E60 8C580000 */  lw    $t8, ($v0)
/* 20C9C4 801E1E64 3C01800F */  lui   $at, 0x800f
/* 20C9C8 801E1E68 0018C880 */  sll   $t9, $t8, 2
/* 20C9CC 801E1E6C 00390821 */  addu  $at, $at, $t9
/* 20C9D0 801E1E70 AC209FE0 */  sw    $zero, -0x6020($at)
.L801E1E74_ovl15:
/* 20C9D4 801E1E74 8FBF001C */  lw    $ra, 0x1c($sp)
/* 20C9D8 801E1E78 8FB00018 */  lw    $s0, 0x18($sp)
/* 20C9DC 801E1E7C 27BD0040 */  addiu $sp, $sp, 0x40
/* 20C9E0 801E1E80 03E00008 */  jr    $ra
/* 20C9E4 801E1E84 00000000 */   nop   

/* 20C9E8 801E1E88 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20C9EC 801E1E8C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20C9F0 801E1E90 AFA40000 */  sw    $a0, ($sp)
/* 20C9F4 801E1E94 3C18800E */  lui   $t8, %hi(gEntitiesNextPosYArray) # $t8, 0x800e
/* 20C9F8 801E1E98 8C4E0000 */  lw    $t6, ($v0)
/* 20C9FC 801E1E9C 27182790 */  addiu $t8, %lo(gEntitiesNextPosYArray) # addiu $t8, $t8, 0x2790
/* 20CA00 801E1EA0 44800000 */  mtc1  $zero, $f0
/* 20CA04 801E1EA4 000E7880 */  sll   $t7, $t6, 2
/* 20CA08 801E1EA8 01F82021 */  addu  $a0, $t7, $t8
/* 20CA0C 801E1EAC C4840000 */  lwc1  $f4, ($a0)
/* 20CA10 801E1EB0 4600203C */  c.lt.s $f4, $f0
/* 20CA14 801E1EB4 00000000 */  nop   
/* 20CA18 801E1EB8 4500001C */  bc1f  .L801E1F2C_ovl15
/* 20CA1C 801E1EBC 00000000 */   nop   
/* 20CA20 801E1EC0 E4800000 */  swc1  $f0, ($a0)
/* 20CA24 801E1EC4 8C590000 */  lw    $t9, ($v0)
/* 20CA28 801E1EC8 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 20CA2C 801E1ECC 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 20CA30 801E1ED0 00194080 */  sll   $t0, $t9, 2
/* 20CA34 801E1ED4 00A84821 */  addu  $t1, $a1, $t0
/* 20CA38 801E1ED8 E5200000 */  swc1  $f0, ($t1)
/* 20CA3C 801E1EDC 8C430000 */  lw    $v1, ($v0)
/* 20CA40 801E1EE0 3C01800E */  lui   $at, 0x800e
/* 20CA44 801E1EE4 240D0001 */  li    $t5, 1
/* 20CA48 801E1EE8 00031880 */  sll   $v1, $v1, 2
/* 20CA4C 801E1EEC 00A35021 */  addu  $t2, $a1, $v1
/* 20CA50 801E1EF0 C5460000 */  lwc1  $f6, ($t2)
/* 20CA54 801E1EF4 00230821 */  addu  $at, $at, $v1
/* 20CA58 801E1EF8 E4263210 */  swc1  $f6, 0x3210($at)
/* 20CA5C 801E1EFC 8C4B0000 */  lw    $t3, ($v0)
/* 20CA60 801E1F00 3C01801E */  lui   $at, %hi(D_801E68AC) # $at, 0x801e
/* 20CA64 801E1F04 C42868AC */  lwc1  $f8, %lo(D_801E68AC)($at)
/* 20CA68 801E1F08 3C01800E */  lui   $at, 0x800e
/* 20CA6C 801E1F0C 000B6080 */  sll   $t4, $t3, 2
/* 20CA70 801E1F10 002C0821 */  addu  $at, $at, $t4
/* 20CA74 801E1F14 E4283C90 */  swc1  $f8, 0x3c90($at)
/* 20CA78 801E1F18 8C4E0000 */  lw    $t6, ($v0)
/* 20CA7C 801E1F1C 3C01800F */  lui   $at, 0x800f
/* 20CA80 801E1F20 000E7880 */  sll   $t7, $t6, 2
/* 20CA84 801E1F24 002F0821 */  addu  $at, $at, $t7
/* 20CA88 801E1F28 AC2D8920 */  sw    $t5, -0x76e0($at)
.L801E1F2C_ovl15:
/* 20CA8C 801E1F2C 03E00008 */  jr    $ra
/* 20CA90 801E1F30 00000000 */   nop   

/* 20CA94 801E1F34 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 20CA98 801E1F38 AFB40040 */  sw    $s4, 0x40($sp)
/* 20CA9C 801E1F3C 3C148005 */  lui   $s4, %hi(D_8004A7C4) # $s4, 0x8005
/* 20CAA0 801E1F40 2694A7C4 */  addiu $s4, %lo(D_8004A7C4) # addiu $s4, $s4, -0x583c
/* 20CAA4 801E1F44 8E850000 */  lw    $a1, ($s4)
/* 20CAA8 801E1F48 AFBF0054 */  sw    $ra, 0x54($sp)
/* 20CAAC 801E1F4C AFBE0050 */  sw    $fp, 0x50($sp)
/* 20CAB0 801E1F50 AFB7004C */  sw    $s7, 0x4c($sp)
/* 20CAB4 801E1F54 AFB60048 */  sw    $s6, 0x48($sp)
/* 20CAB8 801E1F58 AFB50044 */  sw    $s5, 0x44($sp)
/* 20CABC 801E1F5C AFB3003C */  sw    $s3, 0x3c($sp)
/* 20CAC0 801E1F60 AFB20038 */  sw    $s2, 0x38($sp)
/* 20CAC4 801E1F64 AFB10034 */  sw    $s1, 0x34($sp)
/* 20CAC8 801E1F68 AFB00030 */  sw    $s0, 0x30($sp)
/* 20CACC 801E1F6C F7B80028 */  sdc1  $f24, 0x28($sp)
/* 20CAD0 801E1F70 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 20CAD4 801E1F74 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 20CAD8 801E1F78 8CAE0000 */  lw    $t6, ($a1)
/* 20CADC 801E1F7C 3C11800F */  lui   $s1, %hi(D_800E8E60) # $s1, 0x800f
/* 20CAE0 801E1F80 26318E60 */  addiu $s1, %lo(D_800E8E60) # addiu $s1, $s1, -0x71a0
/* 20CAE4 801E1F84 000E7880 */  sll   $t7, $t6, 2
/* 20CAE8 801E1F88 022FC021 */  addu  $t8, $s1, $t7
/* 20CAEC 801E1F8C AF000000 */  sw    $zero, ($t8)
/* 20CAF0 801E1F90 8CA30000 */  lw    $v1, ($a1)
/* 20CAF4 801E1F94 3C19800E */  lui   $t9, 0x800e
/* 20CAF8 801E1F98 3C01800F */  lui   $at, 0x800f
/* 20CAFC 801E1F9C 00031880 */  sll   $v1, $v1, 2
/* 20CB00 801E1FA0 0323C821 */  addu  $t9, $t9, $v1
/* 20CB04 801E1FA4 8F395F90 */  lw    $t9, 0x5f90($t9)
/* 20CB08 801E1FA8 00230821 */  addu  $at, $at, $v1
/* 20CB0C 801E1FAC AC39A520 */  sw    $t9, -0x5ae0($at)
/* 20CB10 801E1FB0 8CA30000 */  lw    $v1, ($a1)
/* 20CB14 801E1FB4 3C01800E */  lui   $at, 0x800e
/* 20CB18 801E1FB8 00031880 */  sll   $v1, $v1, 2
/* 20CB1C 801E1FBC 00230821 */  addu  $at, $at, $v1
/* 20CB20 801E1FC0 C4246BD0 */  lwc1  $f4, 0x6bd0($at)
/* 20CB24 801E1FC4 3C01800F */  lui   $at, 0x800f
/* 20CB28 801E1FC8 00230821 */  addu  $at, $at, $v1
/* 20CB2C 801E1FCC E424B320 */  swc1  $f4, -0x4ce0($at)
/* 20CB30 801E1FD0 8CA30000 */  lw    $v1, ($a1)
/* 20CB34 801E1FD4 3C01800E */  lui   $at, 0x800e
/* 20CB38 801E1FD8 00031880 */  sll   $v1, $v1, 2
/* 20CB3C 801E1FDC 00230821 */  addu  $at, $at, $v1
/* 20CB40 801E1FE0 C42625D0 */  lwc1  $f6, 0x25d0($at)
/* 20CB44 801E1FE4 3C01800F */  lui   $at, 0x800f
/* 20CB48 801E1FE8 00230821 */  addu  $at, $at, $v1
/* 20CB4C 801E1FEC E426ADE0 */  swc1  $f6, -0x5220($at)
/* 20CB50 801E1FF0 8CA30000 */  lw    $v1, ($a1)
/* 20CB54 801E1FF4 3C01800E */  lui   $at, 0x800e
/* 20CB58 801E1FF8 00031880 */  sll   $v1, $v1, 2
/* 20CB5C 801E1FFC 00230821 */  addu  $at, $at, $v1
/* 20CB60 801E2000 C4282790 */  lwc1  $f8, 0x2790($at)
/* 20CB64 801E2004 3C01800F */  lui   $at, 0x800f
/* 20CB68 801E2008 00230821 */  addu  $at, $at, $v1
/* 20CB6C 801E200C E428AFA0 */  swc1  $f8, -0x5060($at)
/* 20CB70 801E2010 8CA30000 */  lw    $v1, ($a1)
/* 20CB74 801E2014 3C01800E */  lui   $at, 0x800e
/* 20CB78 801E2018 00031880 */  sll   $v1, $v1, 2
/* 20CB7C 801E201C 00230821 */  addu  $at, $at, $v1
/* 20CB80 801E2020 C42A2950 */  lwc1  $f10, 0x2950($at)
/* 20CB84 801E2024 3C01800F */  lui   $at, 0x800f
/* 20CB88 801E2028 00230821 */  addu  $at, $at, $v1
/* 20CB8C 801E202C E42AB160 */  swc1  $f10, -0x4ea0($at)
/* 20CB90 801E2030 8CA80000 */  lw    $t0, ($a1)
/* 20CB94 801E2034 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20CB98 801E2038 44818000 */  mtc1  $at, $f16
/* 20CB9C 801E203C 3C01800E */  lui   $at, 0x800e
/* 20CBA0 801E2040 00084880 */  sll   $t1, $t0, 2
/* 20CBA4 801E2044 00290821 */  addu  $at, $at, $t1
/* 20CBA8 801E2048 E4306A10 */  swc1  $f16, 0x6a10($at)
/* 20CBAC 801E204C 8CAA0000 */  lw    $t2, ($a1)
/* 20CBB0 801E2050 3C01801E */  lui   $at, %hi(D_801E68B0) # $at, 0x801e
/* 20CBB4 801E2054 C43268B0 */  lwc1  $f18, %lo(D_801E68B0)($at)
/* 20CBB8 801E2058 3C01800E */  lui   $at, 0x800e
/* 20CBBC 801E205C 000A5880 */  sll   $t3, $t2, 2
/* 20CBC0 801E2060 002B0821 */  addu  $at, $at, $t3
/* 20CBC4 801E2064 0C03E39B */  jal   func_800F8E6C
/* 20CBC8 801E2068 E43264D0 */   swc1  $f18, 0x64d0($at)
/* 20CBCC 801E206C 0C02CCFD */  jal   func_800B33F4
/* 20CBD0 801E2070 00000000 */   nop   
/* 20CBD4 801E2074 8E850000 */  lw    $a1, ($s4)
/* 20CBD8 801E2078 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 20CBDC 801E207C 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 20CBE0 801E2080 8CA30000 */  lw    $v1, ($a1)
/* 20CBE4 801E2084 3C01801E */  lui   $at, %hi(D_801E68B4) # $at, 0x801e
/* 20CBE8 801E2088 C42268B4 */  lwc1  $f2, %lo(D_801E68B4)($at)
/* 20CBEC 801E208C 00031880 */  sll   $v1, $v1, 2
/* 20CBF0 801E2090 00831021 */  addu  $v0, $a0, $v1
/* 20CBF4 801E2094 C4400000 */  lwc1  $f0, ($v0)
/* 20CBF8 801E2098 4480A000 */  mtc1  $zero, $f20
/* 20CBFC 801E209C 3C01801E */  lui   $at, %hi(D_801E68B8) # $at, 0x801e
/* 20CC00 801E20A0 4600103E */  c.le.s $f2, $f0
/* 20CC04 801E20A4 00000000 */  nop   
/* 20CC08 801E20A8 4502000C */  bc1fl .L801E20DC_ovl15
/* 20CC0C 801E20AC 4614003C */   c.lt.s $f0, $f20
/* 20CC10 801E20B0 46020101 */  sub.s $f4, $f0, $f2
.L801E20B4_ovl15:
/* 20CC14 801E20B4 E4440000 */  swc1  $f4, ($v0)
/* 20CC18 801E20B8 8CA30000 */  lw    $v1, ($a1)
/* 20CC1C 801E20BC 00031880 */  sll   $v1, $v1, 2
/* 20CC20 801E20C0 00831021 */  addu  $v0, $a0, $v1
/* 20CC24 801E20C4 C4400000 */  lwc1  $f0, ($v0)
/* 20CC28 801E20C8 4600103E */  c.le.s $f2, $f0
/* 20CC2C 801E20CC 00000000 */  nop   
/* 20CC30 801E20D0 4503FFF8 */  bc1tl .L801E20B4_ovl15
/* 20CC34 801E20D4 46020101 */   sub.s $f4, $f0, $f2
/* 20CC38 801E20D8 4614003C */  c.lt.s $f0, $f20
.L801E20DC_ovl15:
/* 20CC3C 801E20DC 00000000 */  nop   
/* 20CC40 801E20E0 4500000B */  bc1f  .L801E2110_ovl15
/* 20CC44 801E20E4 00000000 */   nop   
/* 20CC48 801E20E8 46020180 */  add.s $f6, $f0, $f2
.L801E20EC_ovl15:
/* 20CC4C 801E20EC E4460000 */  swc1  $f6, ($v0)
/* 20CC50 801E20F0 8CA30000 */  lw    $v1, ($a1)
/* 20CC54 801E20F4 00031880 */  sll   $v1, $v1, 2
/* 20CC58 801E20F8 00831021 */  addu  $v0, $a0, $v1
/* 20CC5C 801E20FC C4400000 */  lwc1  $f0, ($v0)
/* 20CC60 801E2100 4614003C */  c.lt.s $f0, $f20
/* 20CC64 801E2104 00000000 */  nop   
/* 20CC68 801E2108 4503FFF8 */  bc1tl .L801E20EC_ovl15
/* 20CC6C 801E210C 46020180 */   add.s $f6, $f0, $f2
.L801E2110_ovl15:
/* 20CC70 801E2110 C42868B8 */  lwc1  $f8, %lo(D_801E68B8)($at)
/* 20CC74 801E2114 3C01800E */  lui   $at, 0x800e
/* 20CC78 801E2118 00230821 */  addu  $at, $at, $v1
/* 20CC7C 801E211C 46080080 */  add.s $f2, $f0, $f8
/* 20CC80 801E2120 3C10800F */  lui   $s0, %hi(D_800EA6E0) # $s0, 0x800f
/* 20CC84 801E2124 2610A6E0 */  addiu $s0, %lo(D_800EA6E0) # addiu $s0, $s0, -0x5920
/* 20CC88 801E2128 E42241D0 */  swc1  $f2, 0x41d0($at)
/* 20CC8C 801E212C 8CAC0000 */  lw    $t4, ($a1)
/* 20CC90 801E2130 000C6880 */  sll   $t5, $t4, 2
/* 20CC94 801E2134 020D7021 */  addu  $t6, $s0, $t5
/* 20CC98 801E2138 E5C20000 */  swc1  $f2, ($t6)
/* 20CC9C 801E213C 8CAF0000 */  lw    $t7, ($a1)
/* 20CCA0 801E2140 000FC080 */  sll   $t8, $t7, 2
/* 20CCA4 801E2144 0218C821 */  addu  $t9, $s0, $t8
/* 20CCA8 801E2148 0C00B5B8 */  jal   sinf
/* 20CCAC 801E214C C72C0000 */   lwc1  $f12, ($t9)
/* 20CCB0 801E2150 8E850000 */  lw    $a1, ($s4)
/* 20CCB4 801E2154 3C014407 */  li    $at, 0x44070000 # 540.000000
/* 20CCB8 801E2158 4481B000 */  mtc1  $at, $f22
/* 20CCBC 801E215C 8CA30000 */  lw    $v1, ($a1)
/* 20CCC0 801E2160 3C01800E */  lui   $at, 0x800e
/* 20CCC4 801E2164 46160282 */  mul.s $f10, $f0, $f22
/* 20CCC8 801E2168 00031880 */  sll   $v1, $v1, 2
/* 20CCCC 801E216C 00230821 */  addu  $at, $at, $v1
/* 20CCD0 801E2170 C43025D0 */  lwc1  $f16, 0x25d0($at)
/* 20CCD4 801E2174 3C01800F */  lui   $at, 0x800f
/* 20CCD8 801E2178 00230821 */  addu  $at, $at, $v1
/* 20CCDC 801E217C 46105480 */  add.s $f18, $f10, $f16
/* 20CCE0 801E2180 E432AA60 */  swc1  $f18, -0x55a0($at)
/* 20CCE4 801E2184 8CA80000 */  lw    $t0, ($a1)
/* 20CCE8 801E2188 00084880 */  sll   $t1, $t0, 2
/* 20CCEC 801E218C 02095021 */  addu  $t2, $s0, $t1
/* 20CCF0 801E2190 0C00D604 */  jal   cosf
/* 20CCF4 801E2194 C54C0000 */   lwc1  $f12, ($t2)
/* 20CCF8 801E2198 8E850000 */  lw    $a1, ($s4)
/* 20CCFC 801E219C 46160102 */  mul.s $f4, $f0, $f22
/* 20CD00 801E21A0 3C01800E */  lui   $at, 0x800e
/* 20CD04 801E21A4 8CA30000 */  lw    $v1, ($a1)
/* 20CD08 801E21A8 24100001 */  li    $s0, 1
/* 20CD0C 801E21AC 3C0E801E */  lui   $t6, %hi(D_801E27BC) # $t6, 0x801e
/* 20CD10 801E21B0 00031880 */  sll   $v1, $v1, 2
/* 20CD14 801E21B4 00230821 */  addu  $at, $at, $v1
/* 20CD18 801E21B8 C4262950 */  lwc1  $f6, 0x2950($at)
/* 20CD1C 801E21BC 3C01800F */  lui   $at, 0x800f
/* 20CD20 801E21C0 00230821 */  addu  $at, $at, $v1
/* 20CD24 801E21C4 46062200 */  add.s $f8, $f4, $f6
/* 20CD28 801E21C8 25CE27BC */  addiu $t6, %lo(D_801E27BC) # addiu $t6, $t6, 0x27bc
/* 20CD2C 801E21CC 4600A306 */  mov.s $f12, $f20
/* 20CD30 801E21D0 E428AC20 */  swc1  $f8, -0x53e0($at)
/* 20CD34 801E21D4 8CAB0000 */  lw    $t3, ($a1)
/* 20CD38 801E21D8 3C01800E */  lui   $at, 0x800e
/* 20CD3C 801E21DC 000B6080 */  sll   $t4, $t3, 2
/* 20CD40 801E21E0 022C6821 */  addu  $t5, $s1, $t4
/* 20CD44 801E21E4 ADB00000 */  sw    $s0, ($t5)
/* 20CD48 801E21E8 8CAF0000 */  lw    $t7, ($a1)
/* 20CD4C 801E21EC 000FC080 */  sll   $t8, $t7, 2
/* 20CD50 801E21F0 00380821 */  addu  $at, $at, $t8
/* 20CD54 801E21F4 0C02BB48 */  jal   func_800AED20
/* 20CD58 801E21F8 AC2EF150 */   sw    $t6, -0xeb0($at)
/* 20CD5C 801E21FC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 20CD60 801E2200 0C02BB30 */  jal   func_800AECC0
/* 20CD64 801E2204 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 20CD68 801E2208 3C040001 */  lui   $a0, (0x00010066 >> 16) # lui $a0, 1
/* 20CD6C 801E220C 34840066 */  ori   $a0, (0x00010066 & 0xFFFF) # ori $a0, $a0, 0x66
/* 20CD70 801E2210 24050023 */  li    $a1, 35
/* 20CD74 801E2214 0C02A619 */  jal   func_800A9864
/* 20CD78 801E2218 24060010 */   li    $a2, 16
/* 20CD7C 801E221C 8E850000 */  lw    $a1, ($s4)
/* 20CD80 801E2220 3C11800F */  lui   $s1, %hi(D_800EA360) # $s1, 0x800f
/* 20CD84 801E2224 2631A360 */  addiu $s1, %lo(D_800EA360) # addiu $s1, $s1, -0x5ca0
/* 20CD88 801E2228 8CB90000 */  lw    $t9, ($a1)
/* 20CD8C 801E222C 3C01801E */  lui   $at, %hi(D_801E68BC) # $at, 0x801e
/* 20CD90 801E2230 3C1E801E */  lui   $fp, %hi(D_801E6670) # $fp, 0x801e
/* 20CD94 801E2234 00194080 */  sll   $t0, $t9, 2
/* 20CD98 801E2238 02284821 */  addu  $t1, $s1, $t0
/* 20CD9C 801E223C AD200000 */  sw    $zero, ($t1)
/* 20CDA0 801E2240 8CA30000 */  lw    $v1, ($a1)
/* 20CDA4 801E2244 C43868BC */  lwc1  $f24, %lo(D_801E68BC)($at)
/* 20CDA8 801E2248 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20CDAC 801E224C 3C17801E */  lui   $s7, %hi(D_801E6680) # $s7, 0x801e
/* 20CDB0 801E2250 3C16801E */  lui   $s6, %hi(D_801E6690) # $s6, 0x801e
/* 20CDB4 801E2254 3C13800E */  lui   $s3, %hi(D_800DFF50) # $s3, 0x800e
/* 20CDB8 801E2258 3C12800F */  lui   $s2, %hi(D_800EA1A0) # $s2, 0x800f
/* 20CDBC 801E225C 4481B000 */  mtc1  $at, $f22
/* 20CDC0 801E2260 2652A1A0 */  addiu $s2, %lo(D_800EA1A0) # addiu $s2, $s2, -0x5e60
/* 20CDC4 801E2264 2673FF50 */  addiu $s3, %lo(D_800DFF50) # addiu $s3, $s3, -0xb0
/* 20CDC8 801E2268 26D66690 */  addiu $s6, %lo(D_801E6690) # addiu $s6, $s6, 0x6690
/* 20CDCC 801E226C 26F76680 */  addiu $s7, %lo(D_801E6680) # addiu $s7, $s7, 0x6680
/* 20CDD0 801E2270 27DE6670 */  addiu $fp, %lo(D_801E6670) # addiu $fp, $fp, 0x6670
/* 20CDD4 801E2274 24150002 */  li    $s5, 2
/* 20CDD8 801E2278 00031880 */  sll   $v1, $v1, 2
.L801E227C_ovl15:
/* 20CDDC 801E227C 3C01800F */  lui   $at, 0x800f
/* 20CDE0 801E2280 00230821 */  addu  $at, $at, $v1
/* 20CDE4 801E2284 AC208920 */  sw    $zero, -0x76e0($at)
/* 20CDE8 801E2288 8CAA0000 */  lw    $t2, ($a1)
/* 20CDEC 801E228C 3C01800E */  lui   $at, 0x800e
/* 20CDF0 801E2290 3C0F800B */  lui   $t7, %hi(D_800B7560) # $t7, 0x800b
/* 20CDF4 801E2294 000A5880 */  sll   $t3, $t2, 2
/* 20CDF8 801E2298 024B6021 */  addu  $t4, $s2, $t3
/* 20CDFC 801E229C AD800000 */  sw    $zero, ($t4)
/* 20CE00 801E22A0 8CA30000 */  lw    $v1, ($a1)
/* 20CE04 801E22A4 25EF7560 */  addiu $t7, %lo(D_800B7560) # addiu $t7, $t7, 0x7560
/* 20CE08 801E22A8 00031880 */  sll   $v1, $v1, 2
/* 20CE0C 801E22AC 02236821 */  addu  $t5, $s1, $v1
/* 20CE10 801E22B0 8DA20000 */  lw    $v0, ($t5)
/* 20CE14 801E22B4 00230821 */  addu  $at, $at, $v1
/* 20CE18 801E22B8 10400007 */  beqz  $v0, .L801E22D8_ovl15
/* 20CE1C 801E22BC 00000000 */   nop   
/* 20CE20 801E22C0 1050006A */  beq   $v0, $s0, .L801E246C_ovl15
/* 20CE24 801E22C4 3C19800B */   lui   $t9, 0x800b
/* 20CE28 801E22C8 105500CA */  beq   $v0, $s5, .L801E25F4_ovl15
/* 20CE2C 801E22CC 3C0E800B */   lui   $t6, 0x800b
/* 20CE30 801E22D0 1000FFEA */  b     .L801E227C_ovl15
/* 20CE34 801E22D4 00000000 */   nop   
.L801E22D8_ovl15:
/* 20CE38 801E22D8 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 20CE3C 801E22DC 8CA30000 */  lw    $v1, ($a1)
/* 20CE40 801E22E0 3C01800F */  lui   $at, 0x800f
/* 20CE44 801E22E4 00031880 */  sll   $v1, $v1, 2
/* 20CE48 801E22E8 00230821 */  addu  $at, $at, $v1
/* 20CE4C 801E22EC C42AAA60 */  lwc1  $f10, -0x55a0($at)
/* 20CE50 801E22F0 3C01800E */  lui   $at, 0x800e
/* 20CE54 801E22F4 00230821 */  addu  $at, $at, $v1
/* 20CE58 801E22F8 E42A25D0 */  swc1  $f10, 0x25d0($at)
/* 20CE5C 801E22FC 8CA30000 */  lw    $v1, ($a1)
/* 20CE60 801E2300 3C01800F */  lui   $at, 0x800f
/* 20CE64 801E2304 00031880 */  sll   $v1, $v1, 2
/* 20CE68 801E2308 00230821 */  addu  $at, $at, $v1
/* 20CE6C 801E230C C430AC20 */  lwc1  $f16, -0x53e0($at)
/* 20CE70 801E2310 3C01800E */  lui   $at, 0x800e
/* 20CE74 801E2314 00230821 */  addu  $at, $at, $v1
/* 20CE78 801E2318 E4302950 */  swc1  $f16, 0x2950($at)
/* 20CE7C 801E231C 8CAE0000 */  lw    $t6, ($a1)
/* 20CE80 801E2320 3C01C348 */  li    $at, 0xC3480000 # -200.000000
/* 20CE84 801E2324 44819000 */  mtc1  $at, $f18
/* 20CE88 801E2328 3C01800E */  lui   $at, 0x800e
/* 20CE8C 801E232C 000EC080 */  sll   $t8, $t6, 2
/* 20CE90 801E2330 00380821 */  addu  $at, $at, $t8
/* 20CE94 801E2334 E4322790 */  swc1  $f18, 0x2790($at)
/* 20CE98 801E2338 8CB90000 */  lw    $t9, ($a1)
/* 20CE9C 801E233C 3C01800F */  lui   $at, 0x800f
/* 20CEA0 801E2340 00194080 */  sll   $t0, $t9, 2
/* 20CEA4 801E2344 00280821 */  addu  $at, $at, $t0
/* 20CEA8 801E2348 E4349020 */  swc1  $f20, -0x6fe0($at)
/* 20CEAC 801E234C 8CA90000 */  lw    $t1, ($a1)
/* 20CEB0 801E2350 3C01801E */  lui   $at, %hi(D_801E68C0) # $at, 0x801e
/* 20CEB4 801E2354 C42468C0 */  lwc1  $f4, %lo(D_801E68C0)($at)
/* 20CEB8 801E2358 3C01800E */  lui   $at, 0x800e
/* 20CEBC 801E235C 00095080 */  sll   $t2, $t1, 2
/* 20CEC0 801E2360 002A0821 */  addu  $at, $at, $t2
/* 20CEC4 801E2364 E42417D0 */  swc1  $f4, 0x17d0($at)
/* 20CEC8 801E2368 8CAB0000 */  lw    $t3, ($a1)
/* 20CECC 801E236C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20CED0 801E2370 44813000 */  mtc1  $at, $f6
/* 20CED4 801E2374 3C01800E */  lui   $at, 0x800e
/* 20CED8 801E2378 000B6080 */  sll   $t4, $t3, 2
/* 20CEDC 801E237C 002C0821 */  addu  $at, $at, $t4
/* 20CEE0 801E2380 E4266A10 */  swc1  $f6, 0x6a10($at)
/* 20CEE4 801E2384 8CA30000 */  lw    $v1, ($a1)
/* 20CEE8 801E2388 00031880 */  sll   $v1, $v1, 2
/* 20CEEC 801E238C 02236821 */  addu  $t5, $s1, $v1
/* 20CEF0 801E2390 8DAF0000 */  lw    $t7, ($t5)
/* 20CEF4 801E2394 15E0FFB9 */  bnez  $t7, .L801E227C_ovl15
/* 20CEF8 801E2398 00000000 */   nop   
.L801E239C_ovl15:
/* 20CEFC 801E239C 3C01800F */  lui   $at, 0x800f
/* 20CF00 801E23A0 00230821 */  addu  $at, $at, $v1
/* 20CF04 801E23A4 AC209E20 */  sw    $zero, -0x61e0($at)
/* 20CF08 801E23A8 8CAE0000 */  lw    $t6, ($a1)
/* 20CF0C 801E23AC 000EC080 */  sll   $t8, $t6, 2
/* 20CF10 801E23B0 0258C821 */  addu  $t9, $s2, $t8
/* 20CF14 801E23B4 8F280000 */  lw    $t0, ($t9)
/* 20CF18 801E23B8 00084880 */  sll   $t1, $t0, 2
/* 20CF1C 801E23BC 03C95021 */  addu  $t2, $fp, $t1
/* 20CF20 801E23C0 0C02A806 */  jal   func_800AA018
/* 20CF24 801E23C4 8D440000 */   lw    $a0, ($t2)
/* 20CF28 801E23C8 0C02BC8C */  jal   func_800AF230
/* 20CF2C 801E23CC 00000000 */   nop   
/* 20CF30 801E23D0 5050001E */  beql  $v0, $s0, .L801E244C_ovl15
/* 20CF34 801E23D4 8E850000 */   lw    $a1, ($s4)
/* 20CF38 801E23D8 8E8B0000 */  lw    $t3, ($s4)
/* 20CF3C 801E23DC 8D630000 */  lw    $v1, ($t3)
/* 20CF40 801E23E0 00031880 */  sll   $v1, $v1, 2
/* 20CF44 801E23E4 02236021 */  addu  $t4, $s1, $v1
/* 20CF48 801E23E8 8D8D0000 */  lw    $t5, ($t4)
/* 20CF4C 801E23EC 15A00016 */  bnez  $t5, .L801E2448_ovl15
/* 20CF50 801E23F0 0243C021 */   addu  $t8, $s2, $v1
.L801E23F4_ovl15:
/* 20CF54 801E23F4 8F190000 */  lw    $t9, ($t8)
/* 20CF58 801E23F8 02637821 */  addu  $t7, $s3, $v1
/* 20CF5C 801E23FC 8DEE0000 */  lw    $t6, ($t7)
/* 20CF60 801E2400 00194080 */  sll   $t0, $t9, 2
/* 20CF64 801E2404 03C84821 */  addu  $t1, $fp, $t0
/* 20CF68 801E2408 8D2A0000 */  lw    $t2, ($t1)
/* 20CF6C 801E240C 55CA000F */  bnel  $t6, $t2, .L801E244C_ovl15
/* 20CF70 801E2410 8E850000 */   lw    $a1, ($s4)
/* 20CF74 801E2414 0C002DAF */  jal   finish_current_thread
/* 20CF78 801E2418 02002025 */   move  $a0, $s0
/* 20CF7C 801E241C 0C02BC8C */  jal   func_800AF230
/* 20CF80 801E2420 00000000 */   nop   
/* 20CF84 801E2424 50500009 */  beql  $v0, $s0, .L801E244C_ovl15
/* 20CF88 801E2428 8E850000 */   lw    $a1, ($s4)
/* 20CF8C 801E242C 8E8B0000 */  lw    $t3, ($s4)
/* 20CF90 801E2430 8D630000 */  lw    $v1, ($t3)
/* 20CF94 801E2434 00031880 */  sll   $v1, $v1, 2
/* 20CF98 801E2438 02236021 */  addu  $t4, $s1, $v1
/* 20CF9C 801E243C 8D8D0000 */  lw    $t5, ($t4)
/* 20CFA0 801E2440 51A0FFEC */  beql  $t5, $zero, .L801E23F4_ovl15
/* 20CFA4 801E2444 0243C021 */   addu  $t8, $s2, $v1
.L801E2448_ovl15:
/* 20CFA8 801E2448 8E850000 */  lw    $a1, ($s4)
.L801E244C_ovl15:
/* 20CFAC 801E244C 8CA30000 */  lw    $v1, ($a1)
/* 20CFB0 801E2450 00031880 */  sll   $v1, $v1, 2
/* 20CFB4 801E2454 02237821 */  addu  $t7, $s1, $v1
/* 20CFB8 801E2458 8DF80000 */  lw    $t8, ($t7)
/* 20CFBC 801E245C 1300FFCF */  beqz  $t8, .L801E239C_ovl15
/* 20CFC0 801E2460 00000000 */   nop   
/* 20CFC4 801E2464 1000FF85 */  b     .L801E227C_ovl15
/* 20CFC8 801E2468 00000000 */   nop   
.L801E246C_ovl15:
/* 20CFCC 801E246C 3C01800E */  lui   $at, 0x800e
/* 20CFD0 801E2470 00230821 */  addu  $at, $at, $v1
/* 20CFD4 801E2474 27397560 */  addiu $t9, $t9, 0x7560
/* 20CFD8 801E2478 AC39EF90 */  sw    $t9, -0x1070($at)
/* 20CFDC 801E247C 8CA80000 */  lw    $t0, ($a1)
/* 20CFE0 801E2480 3C01800E */  lui   $at, 0x800e
/* 20CFE4 801E2484 00084880 */  sll   $t1, $t0, 2
/* 20CFE8 801E2488 00290821 */  addu  $at, $at, $t1
/* 20CFEC 801E248C E4366A10 */  swc1  $f22, 0x6a10($at)
/* 20CFF0 801E2490 8CA30000 */  lw    $v1, ($a1)
/* 20CFF4 801E2494 3C01800F */  lui   $at, 0x800f
/* 20CFF8 801E2498 00031880 */  sll   $v1, $v1, 2
/* 20CFFC 801E249C 00230821 */  addu  $at, $at, $v1
/* 20D000 801E24A0 C428ADE0 */  lwc1  $f8, -0x5220($at)
/* 20D004 801E24A4 3C01800E */  lui   $at, 0x800e
/* 20D008 801E24A8 00230821 */  addu  $at, $at, $v1
/* 20D00C 801E24AC E42825D0 */  swc1  $f8, 0x25d0($at)
/* 20D010 801E24B0 8CAE0000 */  lw    $t6, ($a1)
/* 20D014 801E24B4 3C01800E */  lui   $at, 0x800e
/* 20D018 801E24B8 000E5080 */  sll   $t2, $t6, 2
/* 20D01C 801E24BC 002A0821 */  addu  $at, $at, $t2
/* 20D020 801E24C0 E4342790 */  swc1  $f20, 0x2790($at)
/* 20D024 801E24C4 8CA30000 */  lw    $v1, ($a1)
/* 20D028 801E24C8 3C01800F */  lui   $at, 0x800f
/* 20D02C 801E24CC 00031880 */  sll   $v1, $v1, 2
/* 20D030 801E24D0 00230821 */  addu  $at, $at, $v1
/* 20D034 801E24D4 C42AB160 */  lwc1  $f10, -0x4ea0($at)
/* 20D038 801E24D8 3C01800E */  lui   $at, 0x800e
/* 20D03C 801E24DC 00230821 */  addu  $at, $at, $v1
/* 20D040 801E24E0 E42A2950 */  swc1  $f10, 0x2950($at)
/* 20D044 801E24E4 8CAB0000 */  lw    $t3, ($a1)
/* 20D048 801E24E8 3C01800F */  lui   $at, 0x800f
/* 20D04C 801E24EC 000B6080 */  sll   $t4, $t3, 2
/* 20D050 801E24F0 002C0821 */  addu  $at, $at, $t4
/* 20D054 801E24F4 E4349020 */  swc1  $f20, -0x6fe0($at)
/* 20D058 801E24F8 8CAD0000 */  lw    $t5, ($a1)
/* 20D05C 801E24FC 3C01800E */  lui   $at, 0x800e
/* 20D060 801E2500 000D7880 */  sll   $t7, $t5, 2
/* 20D064 801E2504 002F0821 */  addu  $at, $at, $t7
/* 20D068 801E2508 E43817D0 */  swc1  $f24, 0x17d0($at)
/* 20D06C 801E250C 8CA30000 */  lw    $v1, ($a1)
/* 20D070 801E2510 00031880 */  sll   $v1, $v1, 2
/* 20D074 801E2514 0223C021 */  addu  $t8, $s1, $v1
/* 20D078 801E2518 8F190000 */  lw    $t9, ($t8)
/* 20D07C 801E251C 1619FF57 */  bne   $s0, $t9, .L801E227C_ovl15
/* 20D080 801E2520 00000000 */   nop   
.L801E2524_ovl15:
/* 20D084 801E2524 3C01800F */  lui   $at, 0x800f
/* 20D088 801E2528 00230821 */  addu  $at, $at, $v1
/* 20D08C 801E252C AC209E20 */  sw    $zero, -0x61e0($at)
/* 20D090 801E2530 8CA80000 */  lw    $t0, ($a1)
/* 20D094 801E2534 00084880 */  sll   $t1, $t0, 2
/* 20D098 801E2538 02497021 */  addu  $t6, $s2, $t1
/* 20D09C 801E253C 8DCA0000 */  lw    $t2, ($t6)
/* 20D0A0 801E2540 000A5880 */  sll   $t3, $t2, 2
/* 20D0A4 801E2544 02EB6021 */  addu  $t4, $s7, $t3
/* 20D0A8 801E2548 0C02A806 */  jal   func_800AA018
/* 20D0AC 801E254C 8D840000 */   lw    $a0, ($t4)
/* 20D0B0 801E2550 0C02BC8C */  jal   func_800AF230
/* 20D0B4 801E2554 00000000 */   nop   
/* 20D0B8 801E2558 5050001E */  beql  $v0, $s0, .L801E25D4_ovl15
/* 20D0BC 801E255C 8E850000 */   lw    $a1, ($s4)
/* 20D0C0 801E2560 8E8D0000 */  lw    $t5, ($s4)
/* 20D0C4 801E2564 8DA30000 */  lw    $v1, ($t5)
/* 20D0C8 801E2568 00031880 */  sll   $v1, $v1, 2
/* 20D0CC 801E256C 02237821 */  addu  $t7, $s1, $v1
/* 20D0D0 801E2570 8DF80000 */  lw    $t8, ($t7)
/* 20D0D4 801E2574 16180016 */  bne   $s0, $t8, .L801E25D0_ovl15
/* 20D0D8 801E2578 02434821 */   addu  $t1, $s2, $v1
.L801E257C_ovl15:
/* 20D0DC 801E257C 8D2E0000 */  lw    $t6, ($t1)
/* 20D0E0 801E2580 0263C821 */  addu  $t9, $s3, $v1
/* 20D0E4 801E2584 8F280000 */  lw    $t0, ($t9)
/* 20D0E8 801E2588 000E5080 */  sll   $t2, $t6, 2
/* 20D0EC 801E258C 02EA5821 */  addu  $t3, $s7, $t2
/* 20D0F0 801E2590 8D6C0000 */  lw    $t4, ($t3)
/* 20D0F4 801E2594 550C000F */  bnel  $t0, $t4, .L801E25D4_ovl15
/* 20D0F8 801E2598 8E850000 */   lw    $a1, ($s4)
/* 20D0FC 801E259C 0C002DAF */  jal   finish_current_thread
/* 20D100 801E25A0 02002025 */   move  $a0, $s0
/* 20D104 801E25A4 0C02BC8C */  jal   func_800AF230
/* 20D108 801E25A8 00000000 */   nop   
/* 20D10C 801E25AC 50500009 */  beql  $v0, $s0, .L801E25D4_ovl15
/* 20D110 801E25B0 8E850000 */   lw    $a1, ($s4)
/* 20D114 801E25B4 8E8D0000 */  lw    $t5, ($s4)
/* 20D118 801E25B8 8DA30000 */  lw    $v1, ($t5)
/* 20D11C 801E25BC 00031880 */  sll   $v1, $v1, 2
/* 20D120 801E25C0 02237821 */  addu  $t7, $s1, $v1
/* 20D124 801E25C4 8DF80000 */  lw    $t8, ($t7)
/* 20D128 801E25C8 5218FFEC */  beql  $s0, $t8, .L801E257C_ovl15
/* 20D12C 801E25CC 02434821 */   addu  $t1, $s2, $v1
.L801E25D0_ovl15:
/* 20D130 801E25D0 8E850000 */  lw    $a1, ($s4)
.L801E25D4_ovl15:
/* 20D134 801E25D4 8CA30000 */  lw    $v1, ($a1)
/* 20D138 801E25D8 00031880 */  sll   $v1, $v1, 2
/* 20D13C 801E25DC 0223C821 */  addu  $t9, $s1, $v1
/* 20D140 801E25E0 8F290000 */  lw    $t1, ($t9)
/* 20D144 801E25E4 1209FFCF */  beq   $s0, $t1, .L801E2524_ovl15
/* 20D148 801E25E8 00000000 */   nop   
/* 20D14C 801E25EC 1000FF23 */  b     .L801E227C_ovl15
/* 20D150 801E25F0 00000000 */   nop   
.L801E25F4_ovl15:
/* 20D154 801E25F4 3C01800E */  lui   $at, 0x800e
/* 20D158 801E25F8 00230821 */  addu  $at, $at, $v1
/* 20D15C 801E25FC 25CE7560 */  addiu $t6, $t6, 0x7560
/* 20D160 801E2600 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 20D164 801E2604 8CAA0000 */  lw    $t2, ($a1)
/* 20D168 801E2608 3C01800E */  lui   $at, 0x800e
/* 20D16C 801E260C 000A5880 */  sll   $t3, $t2, 2
/* 20D170 801E2610 002B0821 */  addu  $at, $at, $t3
/* 20D174 801E2614 E4366A10 */  swc1  $f22, 0x6a10($at)
/* 20D178 801E2618 8CA30000 */  lw    $v1, ($a1)
/* 20D17C 801E261C 3C01800F */  lui   $at, 0x800f
/* 20D180 801E2620 00031880 */  sll   $v1, $v1, 2
/* 20D184 801E2624 00230821 */  addu  $at, $at, $v1
/* 20D188 801E2628 C430ADE0 */  lwc1  $f16, -0x5220($at)
/* 20D18C 801E262C 3C01800E */  lui   $at, 0x800e
/* 20D190 801E2630 00230821 */  addu  $at, $at, $v1
/* 20D194 801E2634 E43025D0 */  swc1  $f16, 0x25d0($at)
/* 20D198 801E2638 8CA80000 */  lw    $t0, ($a1)
/* 20D19C 801E263C 3C01800E */  lui   $at, 0x800e
/* 20D1A0 801E2640 00086080 */  sll   $t4, $t0, 2
/* 20D1A4 801E2644 002C0821 */  addu  $at, $at, $t4
/* 20D1A8 801E2648 E4342790 */  swc1  $f20, 0x2790($at)
/* 20D1AC 801E264C 8CA30000 */  lw    $v1, ($a1)
/* 20D1B0 801E2650 3C01800F */  lui   $at, 0x800f
/* 20D1B4 801E2654 00031880 */  sll   $v1, $v1, 2
/* 20D1B8 801E2658 00230821 */  addu  $at, $at, $v1
/* 20D1BC 801E265C C432B160 */  lwc1  $f18, -0x4ea0($at)
/* 20D1C0 801E2660 3C01800E */  lui   $at, 0x800e
/* 20D1C4 801E2664 00230821 */  addu  $at, $at, $v1
/* 20D1C8 801E2668 E4322950 */  swc1  $f18, 0x2950($at)
/* 20D1CC 801E266C 8CAD0000 */  lw    $t5, ($a1)
/* 20D1D0 801E2670 3C01800F */  lui   $at, 0x800f
/* 20D1D4 801E2674 000D7880 */  sll   $t7, $t5, 2
/* 20D1D8 801E2678 002F0821 */  addu  $at, $at, $t7
/* 20D1DC 801E267C E4349020 */  swc1  $f20, -0x6fe0($at)
/* 20D1E0 801E2680 8CB80000 */  lw    $t8, ($a1)
/* 20D1E4 801E2684 3C01800E */  lui   $at, 0x800e
/* 20D1E8 801E2688 0018C880 */  sll   $t9, $t8, 2
/* 20D1EC 801E268C 00390821 */  addu  $at, $at, $t9
/* 20D1F0 801E2690 E43817D0 */  swc1  $f24, 0x17d0($at)
/* 20D1F4 801E2694 8CA30000 */  lw    $v1, ($a1)
/* 20D1F8 801E2698 00031880 */  sll   $v1, $v1, 2
/* 20D1FC 801E269C 02234821 */  addu  $t1, $s1, $v1
/* 20D200 801E26A0 8D2E0000 */  lw    $t6, ($t1)
/* 20D204 801E26A4 16AEFEF5 */  bne   $s5, $t6, .L801E227C_ovl15
/* 20D208 801E26A8 00000000 */   nop   
.L801E26AC_ovl15:
/* 20D20C 801E26AC 3C01800F */  lui   $at, 0x800f
/* 20D210 801E26B0 00230821 */  addu  $at, $at, $v1
/* 20D214 801E26B4 AC209E20 */  sw    $zero, -0x61e0($at)
/* 20D218 801E26B8 8CAA0000 */  lw    $t2, ($a1)
/* 20D21C 801E26BC 000A5880 */  sll   $t3, $t2, 2
/* 20D220 801E26C0 024B4021 */  addu  $t0, $s2, $t3
/* 20D224 801E26C4 8D0C0000 */  lw    $t4, ($t0)
/* 20D228 801E26C8 000C6880 */  sll   $t5, $t4, 2
/* 20D22C 801E26CC 02CD7821 */  addu  $t7, $s6, $t5
/* 20D230 801E26D0 0C02A806 */  jal   func_800AA018
/* 20D234 801E26D4 8DE40000 */   lw    $a0, ($t7)
/* 20D238 801E26D8 0C02BC8C */  jal   func_800AF230
/* 20D23C 801E26DC 00000000 */   nop   
/* 20D240 801E26E0 5050001E */  beql  $v0, $s0, .L801E275C_ovl15
/* 20D244 801E26E4 8E850000 */   lw    $a1, ($s4)
/* 20D248 801E26E8 8E980000 */  lw    $t8, ($s4)
/* 20D24C 801E26EC 8F030000 */  lw    $v1, ($t8)
/* 20D250 801E26F0 00031880 */  sll   $v1, $v1, 2
/* 20D254 801E26F4 0223C821 */  addu  $t9, $s1, $v1
/* 20D258 801E26F8 8F290000 */  lw    $t1, ($t9)
/* 20D25C 801E26FC 16A90016 */  bne   $s5, $t1, .L801E2758_ovl15
/* 20D260 801E2700 02435821 */   addu  $t3, $s2, $v1
.L801E2704_ovl15:
/* 20D264 801E2704 8D680000 */  lw    $t0, ($t3)
/* 20D268 801E2708 02637021 */  addu  $t6, $s3, $v1
/* 20D26C 801E270C 8DCA0000 */  lw    $t2, ($t6)
/* 20D270 801E2710 00086080 */  sll   $t4, $t0, 2
/* 20D274 801E2714 02CC6821 */  addu  $t5, $s6, $t4
/* 20D278 801E2718 8DAF0000 */  lw    $t7, ($t5)
/* 20D27C 801E271C 554F000F */  bnel  $t2, $t7, .L801E275C_ovl15
/* 20D280 801E2720 8E850000 */   lw    $a1, ($s4)
/* 20D284 801E2724 0C002DAF */  jal   finish_current_thread
/* 20D288 801E2728 02002025 */   move  $a0, $s0
/* 20D28C 801E272C 0C02BC8C */  jal   func_800AF230
/* 20D290 801E2730 00000000 */   nop   
/* 20D294 801E2734 50500009 */  beql  $v0, $s0, .L801E275C_ovl15
/* 20D298 801E2738 8E850000 */   lw    $a1, ($s4)
/* 20D29C 801E273C 8E980000 */  lw    $t8, ($s4)
/* 20D2A0 801E2740 8F030000 */  lw    $v1, ($t8)
/* 20D2A4 801E2744 00031880 */  sll   $v1, $v1, 2
/* 20D2A8 801E2748 0223C821 */  addu  $t9, $s1, $v1
/* 20D2AC 801E274C 8F290000 */  lw    $t1, ($t9)
/* 20D2B0 801E2750 52A9FFEC */  beql  $s5, $t1, .L801E2704_ovl15
/* 20D2B4 801E2754 02435821 */   addu  $t3, $s2, $v1
.L801E2758_ovl15:
/* 20D2B8 801E2758 8E850000 */  lw    $a1, ($s4)
.L801E275C_ovl15:
/* 20D2BC 801E275C 8CA30000 */  lw    $v1, ($a1)
/* 20D2C0 801E2760 00031880 */  sll   $v1, $v1, 2
/* 20D2C4 801E2764 02237021 */  addu  $t6, $s1, $v1
/* 20D2C8 801E2768 8DCB0000 */  lw    $t3, ($t6)
/* 20D2CC 801E276C 12ABFFCF */  beq   $s5, $t3, .L801E26AC_ovl15
/* 20D2D0 801E2770 00000000 */   nop   
/* 20D2D4 801E2774 1000FEC1 */  b     .L801E227C_ovl15
/* 20D2D8 801E2778 00000000 */   nop   
/* 20D2DC 801E277C 00000000 */  nop   
/* 20D2E0 801E2780 8FBF0054 */  lw    $ra, 0x54($sp)
/* 20D2E4 801E2784 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 20D2E8 801E2788 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 20D2EC 801E278C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 20D2F0 801E2790 8FB00030 */  lw    $s0, 0x30($sp)
/* 20D2F4 801E2794 8FB10034 */  lw    $s1, 0x34($sp)
/* 20D2F8 801E2798 8FB20038 */  lw    $s2, 0x38($sp)
/* 20D2FC 801E279C 8FB3003C */  lw    $s3, 0x3c($sp)
/* 20D300 801E27A0 8FB40040 */  lw    $s4, 0x40($sp)
/* 20D304 801E27A4 8FB50044 */  lw    $s5, 0x44($sp)
/* 20D308 801E27A8 8FB60048 */  lw    $s6, 0x48($sp)
/* 20D30C 801E27AC 8FB7004C */  lw    $s7, 0x4c($sp)
/* 20D310 801E27B0 8FBE0050 */  lw    $fp, 0x50($sp)
/* 20D314 801E27B4 03E00008 */  jr    $ra
/* 20D318 801E27B8 27BD0058 */   addiu $sp, $sp, 0x58

/* 20D31C 801E27BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 20D320 801E27C0 AFB00018 */  sw    $s0, 0x18($sp)
/* 20D324 801E27C4 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20D328 801E27C8 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20D32C 801E27CC 8E050000 */  lw    $a1, ($s0)
/* 20D330 801E27D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20D334 801E27D4 AFA40020 */  sw    $a0, 0x20($sp)
/* 20D338 801E27D8 8CA30000 */  lw    $v1, ($a1)
/* 20D33C 801E27DC 3C02800F */  lui   $v0, 0x800f
/* 20D340 801E27E0 3C0E800F */  lui   $t6, 0x800f
/* 20D344 801E27E4 00031880 */  sll   $v1, $v1, 2
/* 20D348 801E27E8 00431021 */  addu  $v0, $v0, $v1
/* 20D34C 801E27EC 8C42A360 */  lw    $v0, -0x5ca0($v0)
/* 20D350 801E27F0 01C37021 */  addu  $t6, $t6, $v1
/* 20D354 801E27F4 10400008 */  beqz  $v0, .L801E2818_ovl15
/* 20D358 801E27F8 00000000 */   nop   
/* 20D35C 801E27FC 24040001 */  li    $a0, 1
/* 20D360 801E2800 10440078 */  beq   $v0, $a0, .L801E29E4_ovl15
/* 20D364 801E2804 24060002 */   li    $a2, 2
/* 20D368 801E2808 1046016B */  beq   $v0, $a2, .L801E2DB8_ovl15
/* 20D36C 801E280C 00000000 */   nop   
/* 20D370 801E2810 10000199 */  b     .L801E2E78_ovl15
/* 20D374 801E2814 00000000 */   nop   
.L801E2818_ovl15:
/* 20D378 801E2818 8DCEA1A0 */  lw    $t6, -0x5e60($t6)
/* 20D37C 801E281C 2DC10005 */  sltiu $at, $t6, 5
/* 20D380 801E2820 10200195 */  beqz  $at, .L801E2E78_ovl15
/* 20D384 801E2824 000E7080 */   sll   $t6, $t6, 2
/* 20D388 801E2828 3C01801E */  lui   $at, 0x801e
/* 20D38C 801E282C 002E0821 */  addu  $at, $at, $t6
/* 20D390 801E2830 8C2E68C4 */  lw    $t6, 0x68c4($at)
/* 20D394 801E2834 01C00008 */  jr    $t6
/* 20D398 801E2838 00000000 */   nop   
/* 20D39C 801E283C 3C02800F */  lui   $v0, 0x800f
/* 20D3A0 801E2840 00431021 */  addu  $v0, $v0, $v1
/* 20D3A4 801E2844 8C429E20 */  lw    $v0, -0x61e0($v0)
/* 20D3A8 801E2848 28410034 */  slti  $at, $v0, 0x34
/* 20D3AC 801E284C 1420018A */  bnez  $at, .L801E2E78_ovl15
/* 20D3B0 801E2850 00000000 */   nop   
/* 20D3B4 801E2854 28410041 */  slti  $at, $v0, 0x41
/* 20D3B8 801E2858 10200187 */  beqz  $at, .L801E2E78_ovl15
/* 20D3BC 801E285C 3C18800E */   lui   $t8, 0x800e
/* 20D3C0 801E2860 0303C021 */  addu  $t8, $t8, $v1
/* 20D3C4 801E2864 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 20D3C8 801E2868 3C0F801E */  lui   $t7, %hi(D_801D8A84) # $t7, 0x801e
/* 20D3CC 801E286C 25EF8A84 */  addiu $t7, %lo(D_801D8A84) # addiu $t7, $t7, -0x757c
/* 20D3D0 801E2870 AF0F008C */  sw    $t7, 0x8c($t8)
/* 20D3D4 801E2874 8E190000 */  lw    $t9, ($s0)
/* 20D3D8 801E2878 3C0A800E */  lui   $t2, 0x800e
/* 20D3DC 801E287C 00002825 */  move  $a1, $zero
/* 20D3E0 801E2880 8F280000 */  lw    $t0, ($t9)
/* 20D3E4 801E2884 00003025 */  move  $a2, $zero
/* 20D3E8 801E2888 00084880 */  sll   $t1, $t0, 2
/* 20D3EC 801E288C 01495021 */  addu  $t2, $t2, $t1
/* 20D3F0 801E2890 8D4AFBD0 */  lw    $t2, -0x430($t2)
/* 20D3F4 801E2894 0C078674 */  jal   func_801E19D0_ovl15
/* 20D3F8 801E2898 8D44002C */   lw    $a0, 0x2c($t2)
/* 20D3FC 801E289C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 20D400 801E28A0 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 20D404 801E28A4 8CA30000 */  lw    $v1, ($a1)
/* 20D408 801E28A8 10000173 */  b     .L801E2E78_ovl15
/* 20D40C 801E28AC 00031880 */   sll   $v1, $v1, 2
/* 20D410 801E28B0 3C02800F */  lui   $v0, 0x800f
/* 20D414 801E28B4 00431021 */  addu  $v0, $v0, $v1
/* 20D418 801E28B8 8C429E20 */  lw    $v0, -0x61e0($v0)
/* 20D41C 801E28BC 28410034 */  slti  $at, $v0, 0x34
/* 20D420 801E28C0 1420016D */  bnez  $at, .L801E2E78_ovl15
/* 20D424 801E28C4 00000000 */   nop   
/* 20D428 801E28C8 28410041 */  slti  $at, $v0, 0x41
/* 20D42C 801E28CC 1020016A */  beqz  $at, .L801E2E78_ovl15
/* 20D430 801E28D0 3C0C800E */   lui   $t4, 0x800e
/* 20D434 801E28D4 01836021 */  addu  $t4, $t4, $v1
/* 20D438 801E28D8 8D8C1B50 */  lw    $t4, 0x1b50($t4)
/* 20D43C 801E28DC 3C0B801E */  lui   $t3, %hi(D_801D8A3C) # $t3, 0x801e
/* 20D440 801E28E0 256B8A3C */  addiu $t3, %lo(D_801D8A3C) # addiu $t3, $t3, -0x75c4
/* 20D444 801E28E4 AD8B008C */  sw    $t3, 0x8c($t4)
/* 20D448 801E28E8 8E0D0000 */  lw    $t5, ($s0)
/* 20D44C 801E28EC 3C18800E */  lui   $t8, 0x800e
/* 20D450 801E28F0 00002825 */  move  $a1, $zero
/* 20D454 801E28F4 8DAE0000 */  lw    $t6, ($t5)
/* 20D458 801E28F8 00003025 */  move  $a2, $zero
/* 20D45C 801E28FC 000E7880 */  sll   $t7, $t6, 2
/* 20D460 801E2900 030FC021 */  addu  $t8, $t8, $t7
/* 20D464 801E2904 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 20D468 801E2908 0C078674 */  jal   func_801E19D0_ovl15
/* 20D46C 801E290C 8F040044 */   lw    $a0, 0x44($t8)
/* 20D470 801E2910 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 20D474 801E2914 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 20D478 801E2918 8CA30000 */  lw    $v1, ($a1)
/* 20D47C 801E291C 10000156 */  b     .L801E2E78_ovl15
/* 20D480 801E2920 00031880 */   sll   $v1, $v1, 2
/* 20D484 801E2924 3C02800F */  lui   $v0, 0x800f
/* 20D488 801E2928 00431021 */  addu  $v0, $v0, $v1
/* 20D48C 801E292C 8C429E20 */  lw    $v0, -0x61e0($v0)
/* 20D490 801E2930 28410034 */  slti  $at, $v0, 0x34
/* 20D494 801E2934 14200150 */  bnez  $at, .L801E2E78_ovl15
/* 20D498 801E2938 00000000 */   nop   
/* 20D49C 801E293C 2841009F */  slti  $at, $v0, 0x9f
/* 20D4A0 801E2940 1020014D */  beqz  $at, .L801E2E78_ovl15
/* 20D4A4 801E2944 00000000 */   nop   
/* 20D4A8 801E2948 2841003F */  slti  $at, $v0, 0x3f
/* 20D4AC 801E294C 10200007 */  beqz  $at, .L801E296C_ovl15
/* 20D4B0 801E2950 3C19801E */   lui   $t9, %hi(D_801D8B38) # $t9, 0x801e
/* 20D4B4 801E2954 3C08800E */  lui   $t0, 0x800e
/* 20D4B8 801E2958 01034021 */  addu  $t0, $t0, $v1
/* 20D4BC 801E295C 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 20D4C0 801E2960 27398B38 */  addiu $t9, %lo(D_801D8B38) # addiu $t9, $t9, -0x74c8
/* 20D4C4 801E2964 10000010 */  b     .L801E29A8_ovl15
/* 20D4C8 801E2968 AD19008C */   sw    $t9, 0x8c($t0)
.L801E296C_ovl15:
/* 20D4CC 801E296C 28410097 */  slti  $at, $v0, 0x97
/* 20D4D0 801E2970 10200008 */  beqz  $at, .L801E2994_ovl15
/* 20D4D4 801E2974 3C0C800E */   lui   $t4, 0x800e
/* 20D4D8 801E2978 3C0A800E */  lui   $t2, 0x800e
/* 20D4DC 801E297C 01435021 */  addu  $t2, $t2, $v1
/* 20D4E0 801E2980 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 20D4E4 801E2984 3C09801E */  lui   $t1, %hi(D_801D8B5C) # $t1, 0x801e
/* 20D4E8 801E2988 25298B5C */  addiu $t1, %lo(D_801D8B5C) # addiu $t1, $t1, -0x74a4
/* 20D4EC 801E298C 10000006 */  b     .L801E29A8_ovl15
/* 20D4F0 801E2990 AD49008C */   sw    $t1, 0x8c($t2)
.L801E2994_ovl15:
/* 20D4F4 801E2994 01836021 */  addu  $t4, $t4, $v1
/* 20D4F8 801E2998 8D8C1B50 */  lw    $t4, 0x1b50($t4)
/* 20D4FC 801E299C 3C0B801E */  lui   $t3, %hi(D_801D8B80) # $t3, 0x801e
/* 20D500 801E29A0 256B8B80 */  addiu $t3, %lo(D_801D8B80) # addiu $t3, $t3, -0x7480
/* 20D504 801E29A4 AD8B008C */  sw    $t3, 0x8c($t4)
.L801E29A8_ovl15:
/* 20D508 801E29A8 8E0D0000 */  lw    $t5, ($s0)
/* 20D50C 801E29AC 3C02800E */  lui   $v0, 0x800e
/* 20D510 801E29B0 00003025 */  move  $a2, $zero
/* 20D514 801E29B4 8DAE0000 */  lw    $t6, ($t5)
/* 20D518 801E29B8 000E7880 */  sll   $t7, $t6, 2
/* 20D51C 801E29BC 004F1021 */  addu  $v0, $v0, $t7
/* 20D520 801E29C0 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20D524 801E29C4 8C440044 */  lw    $a0, 0x44($v0)
/* 20D528 801E29C8 0C078674 */  jal   func_801E19D0_ovl15
/* 20D52C 801E29CC 8C45002C */   lw    $a1, 0x2c($v0)
/* 20D530 801E29D0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 20D534 801E29D4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 20D538 801E29D8 8CA30000 */  lw    $v1, ($a1)
/* 20D53C 801E29DC 10000126 */  b     .L801E2E78_ovl15
/* 20D540 801E29E0 00031880 */   sll   $v1, $v1, 2
.L801E29E4_ovl15:
/* 20D544 801E29E4 3C02800F */  lui   $v0, 0x800f
/* 20D548 801E29E8 00431021 */  addu  $v0, $v0, $v1
/* 20D54C 801E29EC 8C42A1A0 */  lw    $v0, -0x5e60($v0)
/* 20D550 801E29F0 10400090 */  beqz  $v0, .L801E2C34_ovl15
/* 20D554 801E29F4 00000000 */   nop   
/* 20D558 801E29F8 10440007 */  beq   $v0, $a0, .L801E2A18_ovl15
/* 20D55C 801E29FC 24060002 */   li    $a2, 2
/* 20D560 801E2A00 10460079 */  beq   $v0, $a2, .L801E2BE8_ovl15
/* 20D564 801E2A04 24010003 */   li    $at, 3
/* 20D568 801E2A08 1041008A */  beq   $v0, $at, .L801E2C34_ovl15
/* 20D56C 801E2A0C 00000000 */   nop   
/* 20D570 801E2A10 10000119 */  b     .L801E2E78_ovl15
/* 20D574 801E2A14 00000000 */   nop   
.L801E2A18_ovl15:
/* 20D578 801E2A18 3C19800E */  lui   $t9, 0x800e
/* 20D57C 801E2A1C 0323C821 */  addu  $t9, $t9, $v1
/* 20D580 801E2A20 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20D584 801E2A24 3C18801E */  lui   $t8, %hi(D_801D906C) # $t8, 0x801e
/* 20D588 801E2A28 2718906C */  addiu $t8, %lo(D_801D906C) # addiu $t8, $t8, -0x6f94
/* 20D58C 801E2A2C AF38008C */  sw    $t8, 0x8c($t9)
/* 20D590 801E2A30 8E080000 */  lw    $t0, ($s0)
/* 20D594 801E2A34 3C02800E */  lui   $v0, 0x800e
/* 20D598 801E2A38 00003025 */  move  $a2, $zero
/* 20D59C 801E2A3C 8D090000 */  lw    $t1, ($t0)
/* 20D5A0 801E2A40 00095080 */  sll   $t2, $t1, 2
/* 20D5A4 801E2A44 004A1021 */  addu  $v0, $v0, $t2
/* 20D5A8 801E2A48 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20D5AC 801E2A4C 8C440030 */  lw    $a0, 0x30($v0)
/* 20D5B0 801E2A50 0C078674 */  jal   func_801E19D0_ovl15
/* 20D5B4 801E2A54 8C450034 */   lw    $a1, 0x34($v0)
/* 20D5B8 801E2A58 8E0C0000 */  lw    $t4, ($s0)
/* 20D5BC 801E2A5C 3C0F800E */  lui   $t7, 0x800e
/* 20D5C0 801E2A60 3C0B801E */  lui   $t3, %hi(D_801D92AC) # $t3, 0x801e
/* 20D5C4 801E2A64 8D8D0000 */  lw    $t5, ($t4)
/* 20D5C8 801E2A68 256B92AC */  addiu $t3, %lo(D_801D92AC) # addiu $t3, $t3, -0x6d54
/* 20D5CC 801E2A6C 3C02800E */  lui   $v0, 0x800e
/* 20D5D0 801E2A70 000D7080 */  sll   $t6, $t5, 2
/* 20D5D4 801E2A74 01EE7821 */  addu  $t7, $t7, $t6
/* 20D5D8 801E2A78 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 20D5DC 801E2A7C 00003025 */  move  $a2, $zero
/* 20D5E0 801E2A80 ADEB008C */  sw    $t3, 0x8c($t7)
/* 20D5E4 801E2A84 8E180000 */  lw    $t8, ($s0)
/* 20D5E8 801E2A88 8F190000 */  lw    $t9, ($t8)
/* 20D5EC 801E2A8C 00194080 */  sll   $t0, $t9, 2
/* 20D5F0 801E2A90 00481021 */  addu  $v0, $v0, $t0
/* 20D5F4 801E2A94 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20D5F8 801E2A98 8C440010 */  lw    $a0, 0x10($v0)
/* 20D5FC 801E2A9C 0C078674 */  jal   func_801E19D0_ovl15
/* 20D600 801E2AA0 8C450058 */   lw    $a1, 0x58($v0)
/* 20D604 801E2AA4 8E0A0000 */  lw    $t2, ($s0)
/* 20D608 801E2AA8 3C0E800E */  lui   $t6, 0x800e
/* 20D60C 801E2AAC 3C09801E */  lui   $t1, %hi(D_801D9120) # $t1, 0x801e
/* 20D610 801E2AB0 8D4C0000 */  lw    $t4, ($t2)
/* 20D614 801E2AB4 25299120 */  addiu $t1, %lo(D_801D9120) # addiu $t1, $t1, -0x6ee0
/* 20D618 801E2AB8 3C19800E */  lui   $t9, 0x800e
/* 20D61C 801E2ABC 000C6880 */  sll   $t5, $t4, 2
/* 20D620 801E2AC0 01CD7021 */  addu  $t6, $t6, $t5
/* 20D624 801E2AC4 8DCE1B50 */  lw    $t6, 0x1b50($t6)
/* 20D628 801E2AC8 00002825 */  move  $a1, $zero
/* 20D62C 801E2ACC 00003025 */  move  $a2, $zero
/* 20D630 801E2AD0 ADC9008C */  sw    $t1, 0x8c($t6)
/* 20D634 801E2AD4 8E0B0000 */  lw    $t3, ($s0)
/* 20D638 801E2AD8 8D6F0000 */  lw    $t7, ($t3)
/* 20D63C 801E2ADC 000FC080 */  sll   $t8, $t7, 2
/* 20D640 801E2AE0 0338C821 */  addu  $t9, $t9, $t8
/* 20D644 801E2AE4 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 20D648 801E2AE8 0C078674 */  jal   func_801E19D0_ovl15
/* 20D64C 801E2AEC 8F240018 */   lw    $a0, 0x18($t9)
/* 20D650 801E2AF0 8E0A0000 */  lw    $t2, ($s0)
/* 20D654 801E2AF4 3C09800E */  lui   $t1, 0x800e
/* 20D658 801E2AF8 3C08801E */  lui   $t0, %hi(D_801D8F70) # $t0, 0x801e
/* 20D65C 801E2AFC 8D4C0000 */  lw    $t4, ($t2)
/* 20D660 801E2B00 25088F70 */  addiu $t0, %lo(D_801D8F70) # addiu $t0, $t0, -0x7090
/* 20D664 801E2B04 3C18800E */  lui   $t8, 0x800e
/* 20D668 801E2B08 000C6880 */  sll   $t5, $t4, 2
/* 20D66C 801E2B0C 012D4821 */  addu  $t1, $t1, $t5
/* 20D670 801E2B10 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 20D674 801E2B14 00002825 */  move  $a1, $zero
/* 20D678 801E2B18 00003025 */  move  $a2, $zero
/* 20D67C 801E2B1C AD28008C */  sw    $t0, 0x8c($t1)
/* 20D680 801E2B20 8E0E0000 */  lw    $t6, ($s0)
/* 20D684 801E2B24 8DCB0000 */  lw    $t3, ($t6)
/* 20D688 801E2B28 000B7880 */  sll   $t7, $t3, 2
/* 20D68C 801E2B2C 030FC021 */  addu  $t8, $t8, $t7
/* 20D690 801E2B30 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 20D694 801E2B34 0C078674 */  jal   func_801E19D0_ovl15
/* 20D698 801E2B38 8F040010 */   lw    $a0, 0x10($t8)
/* 20D69C 801E2B3C 8E0A0000 */  lw    $t2, ($s0)
/* 20D6A0 801E2B40 3C08800E */  lui   $t0, 0x800e
/* 20D6A4 801E2B44 3C19801E */  lui   $t9, %hi(D_801D8F94) # $t9, 0x801e
/* 20D6A8 801E2B48 8D4C0000 */  lw    $t4, ($t2)
/* 20D6AC 801E2B4C 27398F94 */  addiu $t9, %lo(D_801D8F94) # addiu $t9, $t9, -0x706c
/* 20D6B0 801E2B50 3C0F800E */  lui   $t7, 0x800e
/* 20D6B4 801E2B54 000C6880 */  sll   $t5, $t4, 2
/* 20D6B8 801E2B58 010D4021 */  addu  $t0, $t0, $t5
/* 20D6BC 801E2B5C 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 20D6C0 801E2B60 00002825 */  move  $a1, $zero
/* 20D6C4 801E2B64 00003025 */  move  $a2, $zero
/* 20D6C8 801E2B68 AD19008C */  sw    $t9, 0x8c($t0)
/* 20D6CC 801E2B6C 8E090000 */  lw    $t1, ($s0)
/* 20D6D0 801E2B70 8D2E0000 */  lw    $t6, ($t1)
/* 20D6D4 801E2B74 000E5880 */  sll   $t3, $t6, 2
/* 20D6D8 801E2B78 01EB7821 */  addu  $t7, $t7, $t3
/* 20D6DC 801E2B7C 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 20D6E0 801E2B80 0C078674 */  jal   func_801E19D0_ovl15
/* 20D6E4 801E2B84 8DE40010 */   lw    $a0, 0x10($t7)
/* 20D6E8 801E2B88 8E0A0000 */  lw    $t2, ($s0)
/* 20D6EC 801E2B8C 3C19800E */  lui   $t9, 0x800e
/* 20D6F0 801E2B90 3C18801E */  lui   $t8, %hi(D_801D8FB8) # $t8, 0x801e
/* 20D6F4 801E2B94 8D4C0000 */  lw    $t4, ($t2)
/* 20D6F8 801E2B98 27188FB8 */  addiu $t8, %lo(D_801D8FB8) # addiu $t8, $t8, -0x7048
/* 20D6FC 801E2B9C 3C0B800E */  lui   $t3, 0x800e
/* 20D700 801E2BA0 000C6880 */  sll   $t5, $t4, 2
/* 20D704 801E2BA4 032DC821 */  addu  $t9, $t9, $t5
/* 20D708 801E2BA8 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20D70C 801E2BAC 00002825 */  move  $a1, $zero
/* 20D710 801E2BB0 00003025 */  move  $a2, $zero
/* 20D714 801E2BB4 AF38008C */  sw    $t8, 0x8c($t9)
/* 20D718 801E2BB8 8E080000 */  lw    $t0, ($s0)
/* 20D71C 801E2BBC 8D090000 */  lw    $t1, ($t0)
/* 20D720 801E2BC0 00097080 */  sll   $t6, $t1, 2
/* 20D724 801E2BC4 016E5821 */  addu  $t3, $t3, $t6
/* 20D728 801E2BC8 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 20D72C 801E2BCC 0C078674 */  jal   func_801E19D0_ovl15
/* 20D730 801E2BD0 8D640010 */   lw    $a0, 0x10($t3)
/* 20D734 801E2BD4 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 20D738 801E2BD8 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 20D73C 801E2BDC 8CA30000 */  lw    $v1, ($a1)
/* 20D740 801E2BE0 100000A5 */  b     .L801E2E78_ovl15
/* 20D744 801E2BE4 00031880 */   sll   $v1, $v1, 2
.L801E2BE8_ovl15:
/* 20D748 801E2BE8 3C0A800E */  lui   $t2, 0x800e
/* 20D74C 801E2BEC 01435021 */  addu  $t2, $t2, $v1
/* 20D750 801E2BF0 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 20D754 801E2BF4 3C0F801E */  lui   $t7, %hi(D_801D906C) # $t7, 0x801e
/* 20D758 801E2BF8 25EF906C */  addiu $t7, %lo(D_801D906C) # addiu $t7, $t7, -0x6f94
/* 20D75C 801E2BFC AD4F008C */  sw    $t7, 0x8c($t2)
/* 20D760 801E2C00 8E0C0000 */  lw    $t4, ($s0)
/* 20D764 801E2C04 3C02800E */  lui   $v0, 0x800e
/* 20D768 801E2C08 00003025 */  move  $a2, $zero
/* 20D76C 801E2C0C 8D8D0000 */  lw    $t5, ($t4)
/* 20D770 801E2C10 000DC080 */  sll   $t8, $t5, 2
/* 20D774 801E2C14 00581021 */  addu  $v0, $v0, $t8
/* 20D778 801E2C18 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20D77C 801E2C1C 8C440048 */  lw    $a0, 0x48($v0)
/* 20D780 801E2C20 0C078674 */  jal   func_801E19D0_ovl15
/* 20D784 801E2C24 8C45004C */   lw    $a1, 0x4c($v0)
/* 20D788 801E2C28 8E190000 */  lw    $t9, ($s0)
/* 20D78C 801E2C2C 8F230000 */  lw    $v1, ($t9)
/* 20D790 801E2C30 00031880 */  sll   $v1, $v1, 2
.L801E2C34_ovl15:
/* 20D794 801E2C34 3C09800E */  lui   $t1, 0x800e
/* 20D798 801E2C38 01234821 */  addu  $t1, $t1, $v1
/* 20D79C 801E2C3C 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 20D7A0 801E2C40 3C08801E */  lui   $t0, %hi(D_801D92AC) # $t0, 0x801e
/* 20D7A4 801E2C44 250892AC */  addiu $t0, %lo(D_801D92AC) # addiu $t0, $t0, -0x6d54
/* 20D7A8 801E2C48 AD28008C */  sw    $t0, 0x8c($t1)
/* 20D7AC 801E2C4C 8E0E0000 */  lw    $t6, ($s0)
/* 20D7B0 801E2C50 3C02800E */  lui   $v0, 0x800e
/* 20D7B4 801E2C54 00003025 */  move  $a2, $zero
/* 20D7B8 801E2C58 8DCB0000 */  lw    $t3, ($t6)
/* 20D7BC 801E2C5C 000B7880 */  sll   $t7, $t3, 2
/* 20D7C0 801E2C60 004F1021 */  addu  $v0, $v0, $t7
/* 20D7C4 801E2C64 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20D7C8 801E2C68 8C440010 */  lw    $a0, 0x10($v0)
/* 20D7CC 801E2C6C 0C078674 */  jal   func_801E19D0_ovl15
/* 20D7D0 801E2C70 8C450058 */   lw    $a1, 0x58($v0)
/* 20D7D4 801E2C74 8E0C0000 */  lw    $t4, ($s0)
/* 20D7D8 801E2C78 3C19800E */  lui   $t9, 0x800e
/* 20D7DC 801E2C7C 3C0A801E */  lui   $t2, %hi(D_801D9120) # $t2, 0x801e
/* 20D7E0 801E2C80 8D8D0000 */  lw    $t5, ($t4)
/* 20D7E4 801E2C84 254A9120 */  addiu $t2, %lo(D_801D9120) # addiu $t2, $t2, -0x6ee0
/* 20D7E8 801E2C88 3C0B800E */  lui   $t3, 0x800e
/* 20D7EC 801E2C8C 000DC080 */  sll   $t8, $t5, 2
/* 20D7F0 801E2C90 0338C821 */  addu  $t9, $t9, $t8
/* 20D7F4 801E2C94 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20D7F8 801E2C98 00002825 */  move  $a1, $zero
/* 20D7FC 801E2C9C 00003025 */  move  $a2, $zero
/* 20D800 801E2CA0 AF2A008C */  sw    $t2, 0x8c($t9)
/* 20D804 801E2CA4 8E080000 */  lw    $t0, ($s0)
/* 20D808 801E2CA8 8D090000 */  lw    $t1, ($t0)
/* 20D80C 801E2CAC 00097080 */  sll   $t6, $t1, 2
/* 20D810 801E2CB0 016E5821 */  addu  $t3, $t3, $t6
/* 20D814 801E2CB4 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 20D818 801E2CB8 0C078674 */  jal   func_801E19D0_ovl15
/* 20D81C 801E2CBC 8D640018 */   lw    $a0, 0x18($t3)
/* 20D820 801E2CC0 8E0C0000 */  lw    $t4, ($s0)
/* 20D824 801E2CC4 3C0A800E */  lui   $t2, 0x800e
/* 20D828 801E2CC8 3C0F801E */  lui   $t7, %hi(D_801D8F70) # $t7, 0x801e
/* 20D82C 801E2CCC 8D8D0000 */  lw    $t5, ($t4)
/* 20D830 801E2CD0 25EF8F70 */  addiu $t7, %lo(D_801D8F70) # addiu $t7, $t7, -0x7090
/* 20D834 801E2CD4 3C0E800E */  lui   $t6, 0x800e
/* 20D838 801E2CD8 000DC080 */  sll   $t8, $t5, 2
/* 20D83C 801E2CDC 01585021 */  addu  $t2, $t2, $t8
/* 20D840 801E2CE0 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 20D844 801E2CE4 00002825 */  move  $a1, $zero
/* 20D848 801E2CE8 00003025 */  move  $a2, $zero
/* 20D84C 801E2CEC AD4F008C */  sw    $t7, 0x8c($t2)
/* 20D850 801E2CF0 8E190000 */  lw    $t9, ($s0)
/* 20D854 801E2CF4 8F280000 */  lw    $t0, ($t9)
/* 20D858 801E2CF8 00084880 */  sll   $t1, $t0, 2
/* 20D85C 801E2CFC 01C97021 */  addu  $t6, $t6, $t1
/* 20D860 801E2D00 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 20D864 801E2D04 0C078674 */  jal   func_801E19D0_ovl15
/* 20D868 801E2D08 8DC40010 */   lw    $a0, 0x10($t6)
/* 20D86C 801E2D0C 8E0C0000 */  lw    $t4, ($s0)
/* 20D870 801E2D10 3C0F800E */  lui   $t7, 0x800e
/* 20D874 801E2D14 3C0B801E */  lui   $t3, %hi(D_801D8F94) # $t3, 0x801e
/* 20D878 801E2D18 8D8D0000 */  lw    $t5, ($t4)
/* 20D87C 801E2D1C 256B8F94 */  addiu $t3, %lo(D_801D8F94) # addiu $t3, $t3, -0x706c
/* 20D880 801E2D20 3C09800E */  lui   $t1, 0x800e
/* 20D884 801E2D24 000DC080 */  sll   $t8, $t5, 2
/* 20D888 801E2D28 01F87821 */  addu  $t7, $t7, $t8
/* 20D88C 801E2D2C 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 20D890 801E2D30 00002825 */  move  $a1, $zero
/* 20D894 801E2D34 00003025 */  move  $a2, $zero
/* 20D898 801E2D38 ADEB008C */  sw    $t3, 0x8c($t7)
/* 20D89C 801E2D3C 8E0A0000 */  lw    $t2, ($s0)
/* 20D8A0 801E2D40 8D590000 */  lw    $t9, ($t2)
/* 20D8A4 801E2D44 00194080 */  sll   $t0, $t9, 2
/* 20D8A8 801E2D48 01284821 */  addu  $t1, $t1, $t0
/* 20D8AC 801E2D4C 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 20D8B0 801E2D50 0C078674 */  jal   func_801E19D0_ovl15
/* 20D8B4 801E2D54 8D240010 */   lw    $a0, 0x10($t1)
/* 20D8B8 801E2D58 8E0C0000 */  lw    $t4, ($s0)
/* 20D8BC 801E2D5C 3C0B800E */  lui   $t3, 0x800e
/* 20D8C0 801E2D60 3C0E801E */  lui   $t6, %hi(D_801D8FB8) # $t6, 0x801e
/* 20D8C4 801E2D64 8D8D0000 */  lw    $t5, ($t4)
/* 20D8C8 801E2D68 25CE8FB8 */  addiu $t6, %lo(D_801D8FB8) # addiu $t6, $t6, -0x7048
/* 20D8CC 801E2D6C 3C08800E */  lui   $t0, 0x800e
/* 20D8D0 801E2D70 000DC080 */  sll   $t8, $t5, 2
/* 20D8D4 801E2D74 01785821 */  addu  $t3, $t3, $t8
/* 20D8D8 801E2D78 8D6B1B50 */  lw    $t3, 0x1b50($t3)
/* 20D8DC 801E2D7C 00002825 */  move  $a1, $zero
/* 20D8E0 801E2D80 00003025 */  move  $a2, $zero
/* 20D8E4 801E2D84 AD6E008C */  sw    $t6, 0x8c($t3)
/* 20D8E8 801E2D88 8E0F0000 */  lw    $t7, ($s0)
/* 20D8EC 801E2D8C 8DEA0000 */  lw    $t2, ($t7)
/* 20D8F0 801E2D90 000AC880 */  sll   $t9, $t2, 2
/* 20D8F4 801E2D94 01194021 */  addu  $t0, $t0, $t9
/* 20D8F8 801E2D98 8D08FBD0 */  lw    $t0, -0x430($t0)
/* 20D8FC 801E2D9C 0C078674 */  jal   func_801E19D0_ovl15
/* 20D900 801E2DA0 8D040010 */   lw    $a0, 0x10($t0)
/* 20D904 801E2DA4 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 20D908 801E2DA8 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 20D90C 801E2DAC 8CA30000 */  lw    $v1, ($a1)
/* 20D910 801E2DB0 10000031 */  b     .L801E2E78_ovl15
/* 20D914 801E2DB4 00031880 */   sll   $v1, $v1, 2
.L801E2DB8_ovl15:
/* 20D918 801E2DB8 3C02800F */  lui   $v0, 0x800f
/* 20D91C 801E2DBC 00431021 */  addu  $v0, $v0, $v1
/* 20D920 801E2DC0 8C42A1A0 */  lw    $v0, -0x5e60($v0)
/* 20D924 801E2DC4 3C0C800E */  lui   $t4, 0x800e
/* 20D928 801E2DC8 01836021 */  addu  $t4, $t4, $v1
/* 20D92C 801E2DCC 10400005 */  beqz  $v0, .L801E2DE4_ovl15
/* 20D930 801E2DD0 00000000 */   nop   
/* 20D934 801E2DD4 10440003 */  beq   $v0, $a0, .L801E2DE4_ovl15
/* 20D938 801E2DD8 00000000 */   nop   
/* 20D93C 801E2DDC 14460026 */  bne   $v0, $a2, .L801E2E78_ovl15
/* 20D940 801E2DE0 00000000 */   nop   
.L801E2DE4_ovl15:
/* 20D944 801E2DE4 8D8C1B50 */  lw    $t4, 0x1b50($t4)
/* 20D948 801E2DE8 3C09801E */  lui   $t1, %hi(D_801D8E98) # $t1, 0x801e
/* 20D94C 801E2DEC 25298E98 */  addiu $t1, %lo(D_801D8E98) # addiu $t1, $t1, -0x7168
/* 20D950 801E2DF0 AD89008C */  sw    $t1, 0x8c($t4)
/* 20D954 801E2DF4 8E0D0000 */  lw    $t5, ($s0)
/* 20D958 801E2DF8 3C02800E */  lui   $v0, 0x800e
/* 20D95C 801E2DFC 00003025 */  move  $a2, $zero
/* 20D960 801E2E00 8DB80000 */  lw    $t8, ($t5)
/* 20D964 801E2E04 00187080 */  sll   $t6, $t8, 2
/* 20D968 801E2E08 004E1021 */  addu  $v0, $v0, $t6
/* 20D96C 801E2E0C 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 20D970 801E2E10 8C440010 */  lw    $a0, 0x10($v0)
/* 20D974 801E2E14 0C078674 */  jal   func_801E19D0_ovl15
/* 20D978 801E2E18 8C450058 */   lw    $a1, 0x58($v0)
/* 20D97C 801E2E1C 8E0F0000 */  lw    $t7, ($s0)
/* 20D980 801E2E20 3C08800E */  lui   $t0, 0x800e
/* 20D984 801E2E24 3C0B801E */  lui   $t3, %hi(D_801D921C) # $t3, 0x801e
/* 20D988 801E2E28 8DEA0000 */  lw    $t2, ($t7)
/* 20D98C 801E2E2C 256B921C */  addiu $t3, %lo(D_801D921C) # addiu $t3, $t3, -0x6de4
/* 20D990 801E2E30 3C18800E */  lui   $t8, 0x800e
/* 20D994 801E2E34 000AC880 */  sll   $t9, $t2, 2
/* 20D998 801E2E38 01194021 */  addu  $t0, $t0, $t9
/* 20D99C 801E2E3C 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 20D9A0 801E2E40 00003025 */  move  $a2, $zero
/* 20D9A4 801E2E44 AD0B008C */  sw    $t3, 0x8c($t0)
/* 20D9A8 801E2E48 8E090000 */  lw    $t1, ($s0)
/* 20D9AC 801E2E4C 8D2C0000 */  lw    $t4, ($t1)
/* 20D9B0 801E2E50 000C6880 */  sll   $t5, $t4, 2
/* 20D9B4 801E2E54 030DC021 */  addu  $t8, $t8, $t5
/* 20D9B8 801E2E58 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 20D9BC 801E2E5C 8F0400B0 */  lw    $a0, 0xb0($t8)
/* 20D9C0 801E2E60 0C078674 */  jal   func_801E19D0_ovl15
/* 20D9C4 801E2E64 00802825 */   move  $a1, $a0
/* 20D9C8 801E2E68 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 20D9CC 801E2E6C 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 20D9D0 801E2E70 8CA30000 */  lw    $v1, ($a1)
/* 20D9D4 801E2E74 00031880 */  sll   $v1, $v1, 2
.L801E2E78_ovl15:
/* 20D9D8 801E2E78 3C048005 */  lui   $a0, %hi(D_80048F2C) # $a0, 0x8005
/* 20D9DC 801E2E7C 94848F2C */  lhu   $a0, %lo(D_80048F2C)($a0)
/* 20D9E0 801E2E80 3C0F800F */  lui   $t7, %hi(D_800EA360) # $t7, 0x800f
/* 20D9E4 801E2E84 25EFA360 */  addiu $t7, %lo(D_800EA360) # addiu $t7, $t7, -0x5ca0
/* 20D9E8 801E2E88 308E8000 */  andi  $t6, $a0, 0x8000
/* 20D9EC 801E2E8C 11C0000A */  beqz  $t6, .L801E2EB8_ovl15
/* 20D9F0 801E2E90 30884000 */   andi  $t0, $a0, 0x4000
/* 20D9F4 801E2E94 006F1021 */  addu  $v0, $v1, $t7
/* 20D9F8 801E2E98 8C4A0000 */  lw    $t2, ($v0)
/* 20D9FC 801E2E9C 24010003 */  li    $at, 3
/* 20DA00 801E2EA0 25590001 */  addiu $t9, $t2, 1
/* 20DA04 801E2EA4 0321001A */  div   $zero, $t9, $at
/* 20DA08 801E2EA8 00005810 */  mfhi  $t3
/* 20DA0C 801E2EAC AC4B0000 */  sw    $t3, ($v0)
/* 20DA10 801E2EB0 8CA30000 */  lw    $v1, ($a1)
/* 20DA14 801E2EB4 00031880 */  sll   $v1, $v1, 2
.L801E2EB8_ovl15:
/* 20DA18 801E2EB8 1100001B */  beqz  $t0, .L801E2F28_ovl15
/* 20DA1C 801E2EBC 3C19800F */   lui   $t9, %hi(D_800E9E20) # $t9, 0x800f
/* 20DA20 801E2EC0 3C18800F */  lui   $t8, 0x800f
/* 20DA24 801E2EC4 0303C021 */  addu  $t8, $t8, $v1
/* 20DA28 801E2EC8 8F18A360 */  lw    $t8, -0x5ca0($t8)
/* 20DA2C 801E2ECC 3C09800F */  lui   $t1, %hi(D_800EA1A0) # $t1, 0x800f
/* 20DA30 801E2ED0 2529A1A0 */  addiu $t1, %lo(D_800EA1A0) # addiu $t1, $t1, -0x5e60
/* 20DA34 801E2ED4 00691021 */  addu  $v0, $v1, $t1
/* 20DA38 801E2ED8 8C4C0000 */  lw    $t4, ($v0)
/* 20DA3C 801E2EDC 3C0F801E */  lui   $t7, 0x801e
/* 20DA40 801E2EE0 00187080 */  sll   $t6, $t8, 2
/* 20DA44 801E2EE4 01EE7821 */  addu  $t7, $t7, $t6
/* 20DA48 801E2EE8 8DEF669C */  lw    $t7, 0x669c($t7)
/* 20DA4C 801E2EEC 258D0001 */  addiu $t5, $t4, 1
/* 20DA50 801E2EF0 01AF001A */  div   $zero, $t5, $t7
/* 20DA54 801E2EF4 00005010 */  mfhi  $t2
/* 20DA58 801E2EF8 AC4A0000 */  sw    $t2, ($v0)
/* 20DA5C 801E2EFC 8CA30000 */  lw    $v1, ($a1)
/* 20DA60 801E2F00 15E00002 */  bnez  $t7, .L801E2F0C_ovl15
/* 20DA64 801E2F04 00000000 */   nop   
/* 20DA68 801E2F08 0007000D */  break 7
.L801E2F0C_ovl15:
/* 20DA6C 801E2F0C 2401FFFF */  li    $at, -1
/* 20DA70 801E2F10 15E10004 */  bne   $t7, $at, .L801E2F24_ovl15
/* 20DA74 801E2F14 3C018000 */   lui   $at, 0x8000
/* 20DA78 801E2F18 15A10002 */  bne   $t5, $at, .L801E2F24_ovl15
/* 20DA7C 801E2F1C 00000000 */   nop   
/* 20DA80 801E2F20 0006000D */  break 6
.L801E2F24_ovl15:
/* 20DA84 801E2F24 00031880 */  sll   $v1, $v1, 2
.L801E2F28_ovl15:
/* 20DA88 801E2F28 27399E20 */  addiu $t9, %lo(D_800E9E20) # addiu $t9, $t9, -0x61e0
/* 20DA8C 801E2F2C 00791021 */  addu  $v0, $v1, $t9
/* 20DA90 801E2F30 8C4B0000 */  lw    $t3, ($v0)
/* 20DA94 801E2F34 8FBF001C */  lw    $ra, 0x1c($sp)
/* 20DA98 801E2F38 8FB00018 */  lw    $s0, 0x18($sp)
/* 20DA9C 801E2F3C 25680001 */  addiu $t0, $t3, 1
/* 20DAA0 801E2F40 AC480000 */  sw    $t0, ($v0)
/* 20DAA4 801E2F44 03E00008 */  jr    $ra
/* 20DAA8 801E2F48 27BD0020 */   addiu $sp, $sp, 0x20

/* 20DAAC 801E2F4C 00000000 */  nop   
/* 20DAB0 801E2F50 00000000 */  nop   
/* 20DAB4 801E2F54 00000000 */  nop   
/* 20DAB8 801E2F58 00000000 */  nop   
/* 20DABC 801E2F5C 00000000 */  nop   
/* 20DAC0 801E2F60 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 20DAC4 801E2F64 AFBF0024 */  sw    $ra, 0x24($sp)
/* 20DAC8 801E2F68 AFB20020 */  sw    $s2, 0x20($sp)
/* 20DACC 801E2F6C AFB1001C */  sw    $s1, 0x1c($sp)
/* 20DAD0 801E2F70 AFB00018 */  sw    $s0, 0x18($sp)
/* 20DAD4 801E2F74 0C068CA0 */  jal   func_801A3280_ovl15
/* 20DAD8 801E2F78 AFA40028 */   sw    $a0, 0x28($sp)
/* 20DADC 801E2F7C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20DAE0 801E2F80 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20DAE4 801E2F84 8E0E0000 */  lw    $t6, ($s0)
/* 20DAE8 801E2F88 3C04800E */  lui   $a0, 0x800e
/* 20DAEC 801E2F8C 3C06801E */  lui   $a2, %hi(D_801E66B0) # $a2, 0x801e
/* 20DAF0 801E2F90 8DCF0000 */  lw    $t7, ($t6)
/* 20DAF4 801E2F94 24C666B0 */  addiu $a2, %lo(D_801E66B0) # addiu $a2, $a2, 0x66b0
/* 20DAF8 801E2F98 24050004 */  li    $a1, 4
/* 20DAFC 801E2F9C 008F2021 */  addu  $a0, $a0, $t7
/* 20DB00 801E2FA0 0C02911F */  jal   call_virtual_function
/* 20DB04 801E2FA4 90847880 */   lbu   $a0, 0x7880($a0)
/* 20DB08 801E2FA8 3C12801E */  lui   $s2, %hi(D_801E66C0) # $s2, 0x801e
/* 20DB0C 801E2FAC 3C11800E */  lui   $s1, %hi(gEntityVtableIndexArray) # $s1, 0x800e
/* 20DB10 801E2FB0 2631DC50 */  addiu $s1, %lo(gEntityVtableIndexArray) # addiu $s1, $s1, -0x23b0
/* 20DB14 801E2FB4 265266C0 */  addiu $s2, %lo(D_801E66C0) # addiu $s2, $s2, 0x66c0
/* 20DB18 801E2FB8 8E180000 */  lw    $t8, ($s0)
.L801E2FBC_ovl15:
/* 20DB1C 801E2FBC 24050001 */  li    $a1, 1
/* 20DB20 801E2FC0 02403025 */  move  $a2, $s2
/* 20DB24 801E2FC4 8F190000 */  lw    $t9, ($t8)
/* 20DB28 801E2FC8 00194080 */  sll   $t0, $t9, 2
/* 20DB2C 801E2FCC 02284821 */  addu  $t1, $s1, $t0
/* 20DB30 801E2FD0 0C02911F */  jal   call_virtual_function
/* 20DB34 801E2FD4 8D240000 */   lw    $a0, ($t1)
/* 20DB38 801E2FD8 1000FFF8 */  b     .L801E2FBC_ovl15
/* 20DB3C 801E2FDC 8E180000 */   lw    $t8, ($s0)
/* 20DB40 801E2FE0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 20DB44 801E2FE4 8FB00018 */  lw    $s0, 0x18($sp)
/* 20DB48 801E2FE8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 20DB4C 801E2FEC 8FB20020 */  lw    $s2, 0x20($sp)
/* 20DB50 801E2FF0 03E00008 */  jr    $ra
/* 20DB54 801E2FF4 27BD0028 */   addiu $sp, $sp, 0x28

/* 20DB58 801E2FF8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20DB5C 801E2FFC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20DB60 801E3000 AFA40000 */  sw    $a0, ($sp)
/* 20DB64 801E3004 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20DB68 801E3008 8C4E0000 */  lw    $t6, ($v0)
/* 20DB6C 801E300C 44812000 */  mtc1  $at, $f4
/* 20DB70 801E3010 3C01800E */  lui   $at, 0x800e
/* 20DB74 801E3014 000E7880 */  sll   $t7, $t6, 2
/* 20DB78 801E3018 002F0821 */  addu  $at, $at, $t7
/* 20DB7C 801E301C E4246A10 */  swc1  $f4, 0x6a10($at)
/* 20DB80 801E3020 8C580000 */  lw    $t8, ($v0)
/* 20DB84 801E3024 3C01800E */  lui   $at, 0x800e
/* 20DB88 801E3028 0018C880 */  sll   $t9, $t8, 2
/* 20DB8C 801E302C 00390821 */  addu  $at, $at, $t9
/* 20DB90 801E3030 03E00008 */  jr    $ra
/* 20DB94 801E3034 AC20DC50 */   sw    $zero, -0x23b0($at)

/* 20DB98 801E3038 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20DB9C 801E303C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20DBA0 801E3040 AFA40000 */  sw    $a0, ($sp)
/* 20DBA4 801E3044 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20DBA8 801E3048 8C4E0000 */  lw    $t6, ($v0)
/* 20DBAC 801E304C 44812000 */  mtc1  $at, $f4
/* 20DBB0 801E3050 3C01800E */  lui   $at, 0x800e
/* 20DBB4 801E3054 000E7880 */  sll   $t7, $t6, 2
/* 20DBB8 801E3058 002F0821 */  addu  $at, $at, $t7
/* 20DBBC 801E305C E4246A10 */  swc1  $f4, 0x6a10($at)
/* 20DBC0 801E3060 8C580000 */  lw    $t8, ($v0)
/* 20DBC4 801E3064 3C01800E */  lui   $at, 0x800e
/* 20DBC8 801E3068 0018C880 */  sll   $t9, $t8, 2
/* 20DBCC 801E306C 00390821 */  addu  $at, $at, $t9
/* 20DBD0 801E3070 03E00008 */  jr    $ra
/* 20DBD4 801E3074 AC20DC50 */   sw    $zero, -0x23b0($at)

/* 20DBD8 801E3078 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20DBDC 801E307C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20DBE0 801E3080 AFA40000 */  sw    $a0, ($sp)
/* 20DBE4 801E3084 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20DBE8 801E3088 8C4E0000 */  lw    $t6, ($v0)
/* 20DBEC 801E308C 44812000 */  mtc1  $at, $f4
/* 20DBF0 801E3090 3C01800E */  lui   $at, 0x800e
/* 20DBF4 801E3094 000E7880 */  sll   $t7, $t6, 2
/* 20DBF8 801E3098 002F0821 */  addu  $at, $at, $t7
/* 20DBFC 801E309C E4246A10 */  swc1  $f4, 0x6a10($at)
/* 20DC00 801E30A0 8C580000 */  lw    $t8, ($v0)
/* 20DC04 801E30A4 3C01800E */  lui   $at, 0x800e
/* 20DC08 801E30A8 0018C880 */  sll   $t9, $t8, 2
/* 20DC0C 801E30AC 00390821 */  addu  $at, $at, $t9
/* 20DC10 801E30B0 03E00008 */  jr    $ra
/* 20DC14 801E30B4 AC20DC50 */   sw    $zero, -0x23b0($at)

/* 20DC18 801E30B8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 20DC1C 801E30BC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 20DC20 801E30C0 AFA40000 */  sw    $a0, ($sp)
/* 20DC24 801E30C4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20DC28 801E30C8 8C4E0000 */  lw    $t6, ($v0)
/* 20DC2C 801E30CC 44812000 */  mtc1  $at, $f4
/* 20DC30 801E30D0 3C01800E */  lui   $at, 0x800e
/* 20DC34 801E30D4 000E7880 */  sll   $t7, $t6, 2
/* 20DC38 801E30D8 002F0821 */  addu  $at, $at, $t7
/* 20DC3C 801E30DC E4246A10 */  swc1  $f4, 0x6a10($at)
/* 20DC40 801E30E0 8C580000 */  lw    $t8, ($v0)
/* 20DC44 801E30E4 3C01800E */  lui   $at, 0x800e
/* 20DC48 801E30E8 0018C880 */  sll   $t9, $t8, 2
/* 20DC4C 801E30EC 00390821 */  addu  $at, $at, $t9
/* 20DC50 801E30F0 03E00008 */  jr    $ra
/* 20DC54 801E30F4 AC20DC50 */   sw    $zero, -0x23b0($at)

/* 20DC58 801E30F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 20DC5C 801E30FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 20DC60 801E3100 AFB10018 */  sw    $s1, 0x18($sp)
/* 20DC64 801E3104 AFB00014 */  sw    $s0, 0x14($sp)
/* 20DC68 801E3108 0C066E6C */  jal   func_8019B9B0_ovl15
/* 20DC6C 801E310C AFA40020 */   sw    $a0, 0x20($sp)
/* 20DC70 801E3110 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 20DC74 801E3114 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 20DC78 801E3118 8E220000 */  lw    $v0, ($s1)
/* 20DC7C 801E311C 3C0E800B */  lui   $t6, %hi(D_800B7790) # $t6, 0x800b
/* 20DC80 801E3120 3C01800E */  lui   $at, 0x800e
/* 20DC84 801E3124 8C4F0000 */  lw    $t7, ($v0)
/* 20DC88 801E3128 25CE7790 */  addiu $t6, %lo(D_800B7790) # addiu $t6, $t6, 0x7790
/* 20DC8C 801E312C 3C19801E */  lui   $t9, %hi(D_801E3404) # $t9, 0x801e
/* 20DC90 801E3130 000FC080 */  sll   $t8, $t7, 2
/* 20DC94 801E3134 00380821 */  addu  $at, $at, $t8
/* 20DC98 801E3138 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 20DC9C 801E313C 8C480000 */  lw    $t0, ($v0)
/* 20DCA0 801E3140 3C01800E */  lui   $at, 0x800e
/* 20DCA4 801E3144 27393404 */  addiu $t9, %lo(D_801E3404) # addiu $t9, $t9, 0x3404
/* 20DCA8 801E3148 00084880 */  sll   $t1, $t0, 2
/* 20DCAC 801E314C 00290821 */  addu  $at, $at, $t1
/* 20DCB0 801E3150 AC39F150 */  sw    $t9, -0xeb0($at)
/* 20DCB4 801E3154 8C4B0000 */  lw    $t3, ($v0)
/* 20DCB8 801E3158 3C0D800E */  lui   $t5, 0x800e
/* 20DCBC 801E315C 3C0A801E */  lui   $t2, %hi(D_801DAF3C) # $t2, 0x801e
/* 20DCC0 801E3160 000B6080 */  sll   $t4, $t3, 2
/* 20DCC4 801E3164 01AC6821 */  addu  $t5, $t5, $t4
/* 20DCC8 801E3168 8DAD1B50 */  lw    $t5, 0x1b50($t5)
/* 20DCCC 801E316C 254AAF3C */  addiu $t2, %lo(D_801DAF3C) # addiu $t2, $t2, -0x50c4
/* 20DCD0 801E3170 3C040001 */  lui   $a0, (0x00010090 >> 16) # lui $a0, 1
/* 20DCD4 801E3174 34840090 */  ori   $a0, (0x00010090 & 0xFFFF) # ori $a0, $a0, 0x90
/* 20DCD8 801E3178 24050023 */  li    $a1, 35
/* 20DCDC 801E317C 24060010 */  li    $a2, 16
/* 20DCE0 801E3180 0C02A619 */  jal   func_800A9864
/* 20DCE4 801E3184 ADAA0098 */   sw    $t2, 0x98($t5)
/* 20DCE8 801E3188 8E2E0000 */  lw    $t6, ($s1)
/* 20DCEC 801E318C 3C10800F */  lui   $s0, %hi(D_800E8920) # $s0, 0x800f
/* 20DCF0 801E3190 26108920 */  addiu $s0, %lo(D_800E8920) # addiu $s0, $s0, -0x76e0
/* 20DCF4 801E3194 8DD80000 */  lw    $t8, ($t6)
/* 20DCF8 801E3198 240F0001 */  li    $t7, 1
/* 20DCFC 801E319C 00184080 */  sll   $t0, $t8, 2
/* 20DD00 801E31A0 0208C821 */  addu  $t9, $s0, $t0
/* 20DD04 801E31A4 0C02CCFD */  jal   func_800B33F4
/* 20DD08 801E31A8 AF2F0000 */   sw    $t7, ($t9)
/* 20DD0C 801E31AC 8E290000 */  lw    $t1, ($s1)
/* 20DD10 801E31B0 3C02800E */  lui   $v0, 0x800e
/* 20DD14 801E31B4 24010001 */  li    $at, 1
/* 20DD18 801E31B8 8D250000 */  lw    $a1, ($t1)
/* 20DD1C 801E31BC 00451021 */  addu  $v0, $v0, $a1
/* 20DD20 801E31C0 90427880 */  lbu   $v0, 0x7880($v0)
/* 20DD24 801E31C4 5040000A */  beql  $v0, $zero, .L801E31F0_ovl15
/* 20DD28 801E31C8 00052080 */   sll   $a0, $a1, 2
/* 20DD2C 801E31CC 10410007 */  beq   $v0, $at, .L801E31EC_ovl15
/* 20DD30 801E31D0 24010002 */   li    $at, 2
/* 20DD34 801E31D4 1041000F */  beq   $v0, $at, .L801E3214_ovl15
/* 20DD38 801E31D8 24010003 */   li    $at, 3
/* 20DD3C 801E31DC 1041000D */  beq   $v0, $at, .L801E3214_ovl15
/* 20DD40 801E31E0 00000000 */   nop   
/* 20DD44 801E31E4 1000000B */  b     .L801E3214_ovl15
/* 20DD48 801E31E8 00000000 */   nop   
.L801E31EC_ovl15:
/* 20DD4C 801E31EC 00052080 */  sll   $a0, $a1, 2
.L801E31F0_ovl15:
/* 20DD50 801E31F0 3C01800E */  lui   $at, 0x800e
/* 20DD54 801E31F4 00240821 */  addu  $at, $at, $a0
/* 20DD58 801E31F8 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 20DD5C 801E31FC 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 20DD60 801E3200 44813000 */  mtc1  $at, $f6
/* 20DD64 801E3204 3C01800E */  lui   $at, 0x800e
/* 20DD68 801E3208 00240821 */  addu  $at, $at, $a0
/* 20DD6C 801E320C 46062202 */  mul.s $f8, $f4, $f6
/* 20DD70 801E3210 E4283050 */  swc1  $f8, 0x3050($at)
.L801E3214_ovl15:
/* 20DD74 801E3214 0C002DAF */  jal   finish_current_thread
/* 20DD78 801E3218 24040001 */   li    $a0, 1
/* 20DD7C 801E321C 0C02CCFD */  jal   func_800B33F4
/* 20DD80 801E3220 00000000 */   nop   
/* 20DD84 801E3224 8E220000 */  lw    $v0, ($s1)
/* 20DD88 801E3228 3C01800E */  lui   $at, 0x800e
/* 20DD8C 801E322C 3C0D800E */  lui   $t5, 0x800e
/* 20DD90 801E3230 8C4B0000 */  lw    $t3, ($v0)
/* 20DD94 801E3234 000B6080 */  sll   $t4, $t3, 2
/* 20DD98 801E3238 020C5021 */  addu  $t2, $s0, $t4
/* 20DD9C 801E323C AD400000 */  sw    $zero, ($t2)
/* 20DDA0 801E3240 8C440000 */  lw    $a0, ($v0)
/* 20DDA4 801E3244 00042080 */  sll   $a0, $a0, 2
/* 20DDA8 801E3248 00240821 */  addu  $at, $at, $a0
/* 20DDAC 801E324C C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 20DDB0 801E3250 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 20DDB4 801E3254 44818000 */  mtc1  $at, $f16
/* 20DDB8 801E3258 3C01800E */  lui   $at, 0x800e
/* 20DDBC 801E325C 00240821 */  addu  $at, $at, $a0
/* 20DDC0 801E3260 46105482 */  mul.s $f18, $f10, $f16
/* 20DDC4 801E3264 E4323050 */  swc1  $f18, 0x3050($at)
/* 20DDC8 801E3268 8C450000 */  lw    $a1, ($v0)
/* 20DDCC 801E326C 3C01801E */  lui   $at, 0x801e
/* 20DDD0 801E3270 01A56821 */  addu  $t5, $t5, $a1
/* 20DDD4 801E3274 91AD7880 */  lbu   $t5, 0x7880($t5)
/* 20DDD8 801E3278 0005C080 */  sll   $t8, $a1, 2
/* 20DDDC 801E327C 000D7080 */  sll   $t6, $t5, 2
/* 20DDE0 801E3280 002E0821 */  addu  $at, $at, $t6
/* 20DDE4 801E3284 C42466C4 */  lwc1  $f4, 0x66c4($at)
/* 20DDE8 801E3288 3C01800E */  lui   $at, 0x800e
/* 20DDEC 801E328C 00380821 */  addu  $at, $at, $t8
/* 20DDF0 801E3290 E4243210 */  swc1  $f4, 0x3210($at)
/* 20DDF4 801E3294 8C480000 */  lw    $t0, ($v0)
/* 20DDF8 801E3298 3C01801E */  lui   $at, %hi(D_801E68E0) # $at, 0x801e
/* 20DDFC 801E329C C42668E0 */  lwc1  $f6, %lo(D_801E68E0)($at)
/* 20DE00 801E32A0 3C01800E */  lui   $at, 0x800e
/* 20DE04 801E32A4 00087880 */  sll   $t7, $t0, 2
/* 20DE08 801E32A8 002F0821 */  addu  $at, $at, $t7
/* 20DE0C 801E32AC E4263750 */  swc1  $f6, 0x3750($at)
/* 20DE10 801E32B0 8C590000 */  lw    $t9, ($v0)
/* 20DE14 801E32B4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 20DE18 801E32B8 44814000 */  mtc1  $at, $f8
/* 20DE1C 801E32BC 3C01800E */  lui   $at, 0x800e
/* 20DE20 801E32C0 00194880 */  sll   $t1, $t9, 2
/* 20DE24 801E32C4 00290821 */  addu  $at, $at, $t1
/* 20DE28 801E32C8 E4283C90 */  swc1  $f8, 0x3c90($at)
/* 20DE2C 801E32CC 8C4B0000 */  lw    $t3, ($v0)
/* 20DE30 801E32D0 000B6080 */  sll   $t4, $t3, 2
/* 20DE34 801E32D4 020C1821 */  addu  $v1, $s0, $t4
/* 20DE38 801E32D8 8C6A0000 */  lw    $t2, ($v1)
/* 20DE3C 801E32DC 5540000B */  bnezl $t2, .L801E330C_ovl15
/* 20DE40 801E32E0 AC600000 */   sw    $zero, ($v1)
.L801E32E4_ovl15:
/* 20DE44 801E32E4 0C002DAF */  jal   finish_current_thread
/* 20DE48 801E32E8 24040001 */   li    $a0, 1
/* 20DE4C 801E32EC 8E220000 */  lw    $v0, ($s1)
/* 20DE50 801E32F0 8C4D0000 */  lw    $t5, ($v0)
/* 20DE54 801E32F4 000D7080 */  sll   $t6, $t5, 2
/* 20DE58 801E32F8 020E1821 */  addu  $v1, $s0, $t6
/* 20DE5C 801E32FC 8C780000 */  lw    $t8, ($v1)
/* 20DE60 801E3300 1300FFF8 */  beqz  $t8, .L801E32E4_ovl15
/* 20DE64 801E3304 00000000 */   nop   
/* 20DE68 801E3308 AC600000 */  sw    $zero, ($v1)
.L801E330C_ovl15:
/* 20DE6C 801E330C 8C440000 */  lw    $a0, ($v0)
/* 20DE70 801E3310 3C01800E */  lui   $at, 0x800e
/* 20DE74 801E3314 00042080 */  sll   $a0, $a0, 2
/* 20DE78 801E3318 00240821 */  addu  $at, $at, $a0
/* 20DE7C 801E331C C4206A10 */  lwc1  $f0, 0x6a10($at)
/* 20DE80 801E3320 3C01800E */  lui   $at, 0x800e
/* 20DE84 801E3324 00240821 */  addu  $at, $at, $a0
/* 20DE88 801E3328 46000280 */  add.s $f10, $f0, $f0
/* 20DE8C 801E332C E42A3050 */  swc1  $f10, 0x3050($at)
/* 20DE90 801E3330 8C480000 */  lw    $t0, ($v0)
/* 20DE94 801E3334 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 20DE98 801E3338 44818000 */  mtc1  $at, $f16
/* 20DE9C 801E333C 3C01800E */  lui   $at, 0x800e
/* 20DEA0 801E3340 00087880 */  sll   $t7, $t0, 2
/* 20DEA4 801E3344 002F0821 */  addu  $at, $at, $t7
/* 20DEA8 801E3348 E4303210 */  swc1  $f16, 0x3210($at)
/* 20DEAC 801E334C 8C590000 */  lw    $t9, ($v0)
/* 20DEB0 801E3350 3C01801E */  lui   $at, %hi(D_801E68E4) # $at, 0x801e
/* 20DEB4 801E3354 C43268E4 */  lwc1  $f18, %lo(D_801E68E4)($at)
/* 20DEB8 801E3358 3C01800E */  lui   $at, 0x800e
/* 20DEBC 801E335C 00194880 */  sll   $t1, $t9, 2
/* 20DEC0 801E3360 00290821 */  addu  $at, $at, $t1
/* 20DEC4 801E3364 E4323750 */  swc1  $f18, 0x3750($at)
/* 20DEC8 801E3368 8C4B0000 */  lw    $t3, ($v0)
/* 20DECC 801E336C 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 20DED0 801E3370 44812000 */  mtc1  $at, $f4
/* 20DED4 801E3374 3C01800E */  lui   $at, 0x800e
/* 20DED8 801E3378 000B6080 */  sll   $t4, $t3, 2
/* 20DEDC 801E337C 002C0821 */  addu  $at, $at, $t4
/* 20DEE0 801E3380 E4243C90 */  swc1  $f4, 0x3c90($at)
/* 20DEE4 801E3384 8C4A0000 */  lw    $t2, ($v0)
/* 20DEE8 801E3388 000A6880 */  sll   $t5, $t2, 2
/* 20DEEC 801E338C 020D7021 */  addu  $t6, $s0, $t5
/* 20DEF0 801E3390 8DD80000 */  lw    $t8, ($t6)
/* 20DEF4 801E3394 1700000A */  bnez  $t8, .L801E33C0_ovl15
/* 20DEF8 801E3398 00000000 */   nop   
.L801E339C_ovl15:
/* 20DEFC 801E339C 0C002DAF */  jal   finish_current_thread
/* 20DF00 801E33A0 24040001 */   li    $a0, 1
/* 20DF04 801E33A4 8E280000 */  lw    $t0, ($s1)
/* 20DF08 801E33A8 8D0F0000 */  lw    $t7, ($t0)
/* 20DF0C 801E33AC 000FC880 */  sll   $t9, $t7, 2
/* 20DF10 801E33B0 02194821 */  addu  $t1, $s0, $t9
/* 20DF14 801E33B4 8D2B0000 */  lw    $t3, ($t1)
/* 20DF18 801E33B8 1160FFF8 */  beqz  $t3, .L801E339C_ovl15
/* 20DF1C 801E33BC 00000000 */   nop   
.L801E33C0_ovl15:
/* 20DF20 801E33C0 0C02CCFD */  jal   func_800B33F4
/* 20DF24 801E33C4 00000000 */   nop   
/* 20DF28 801E33C8 44806000 */  mtc1  $zero, $f12
/* 20DF2C 801E33CC 0C02BB30 */  jal   func_800AECC0
/* 20DF30 801E33D0 00000000 */   nop   
/* 20DF34 801E33D4 44806000 */  mtc1  $zero, $f12
/* 20DF38 801E33D8 0C02BB48 */  jal   func_800AED20
/* 20DF3C 801E33DC 00000000 */   nop   
/* 20DF40 801E33E0 0C002DAF */  jal   finish_current_thread
/* 20DF44 801E33E4 2404001E */   li    $a0, 30
/* 20DF48 801E33E8 0C06B3E1 */  jal   D_801ACF84_ovl15
/* 20DF4C 801E33EC 8FA40020 */   lw    $a0, 0x20($sp)
/* 20DF50 801E33F0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 20DF54 801E33F4 8FB00014 */  lw    $s0, 0x14($sp)
/* 20DF58 801E33F8 8FB10018 */  lw    $s1, 0x18($sp)
/* 20DF5C 801E33FC 03E00008 */  jr    $ra
/* 20DF60 801E3400 27BD0020 */   addiu $sp, $sp, 0x20

/* 20DF64 801E3404 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 20DF68 801E3408 AFA40018 */  sw    $a0, 0x18($sp)
/* 20DF6C 801E340C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 20DF70 801E3410 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 20DF74 801E3414 AFBF0014 */  sw    $ra, 0x14($sp)
/* 20DF78 801E3418 3C01800E */  lui   $at, 0x800e
/* 20DF7C 801E341C 8C820000 */  lw    $v0, ($a0)
/* 20DF80 801E3420 44800000 */  mtc1  $zero, $f0
/* 20DF84 801E3424 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 20DF88 801E3428 00021080 */  sll   $v0, $v0, 2
/* 20DF8C 801E342C 00220821 */  addu  $at, $at, $v0
/* 20DF90 801E3430 C4243050 */  lwc1  $f4, 0x3050($at)
/* 20DF94 801E3434 3C01801E */  lui   $at, %hi(D_801E68E8) # $at, 0x801e
/* 20DF98 801E3438 3C0E800E */  lui   $t6, 0x800e
/* 20DF9C 801E343C 46040032 */  c.eq.s $f0, $f4
/* 20DFA0 801E3440 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 20DFA4 801E3444 45010011 */  bc1t  .L801E348C_ovl15
/* 20DFA8 801E3448 00000000 */   nop   
/* 20DFAC 801E344C C42668E8 */  lwc1  $f6, %lo(D_801E68E8)($at)
/* 20DFB0 801E3450 3C01800E */  lui   $at, 0x800e
/* 20DFB4 801E3454 00220821 */  addu  $at, $at, $v0
/* 20DFB8 801E3458 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 20DFBC 801E345C 01C27021 */  addu  $t6, $t6, $v0
/* 20DFC0 801E3460 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 20DFC4 801E3464 46004287 */  neg.s $f10, $f8
/* 20DFC8 801E3468 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 20DFCC 801E346C 460A3402 */  mul.s $f16, $f6, $f10
/* 20DFD0 801E3470 8DC30004 */  lw    $v1, 4($t6)
/* 20DFD4 801E3474 C4720038 */  lwc1  $f18, 0x38($v1)
/* 20DFD8 801E3478 46109100 */  add.s $f4, $f18, $f16
/* 20DFDC 801E347C E4640038 */  swc1  $f4, 0x38($v1)
/* 20DFE0 801E3480 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 20DFE4 801E3484 8C820000 */  lw    $v0, ($a0)
/* 20DFE8 801E3488 00021080 */  sll   $v0, $v0, 2
.L801E348C_ovl15:
/* 20DFEC 801E348C 3C01800E */  lui   $at, 0x800e
/* 20DFF0 801E3490 00220821 */  addu  $at, $at, $v0
/* 20DFF4 801E3494 C4283210 */  lwc1  $f8, 0x3210($at)
/* 20DFF8 801E3498 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 20DFFC 801E349C 004F1821 */  addu  $v1, $v0, $t7
/* 20E000 801E34A0 4600403E */  c.le.s $f8, $f0
/* 20E004 801E34A4 00000000 */  nop   
/* 20E008 801E34A8 4500000E */  bc1f  .L801E34E4_ovl15
/* 20E00C 801E34AC 00000000 */   nop   
/* 20E010 801E34B0 44810000 */  mtc1  $at, $f0
/* 20E014 801E34B4 C4660000 */  lwc1  $f6, ($v1)
/* 20E018 801E34B8 4600303C */  c.lt.s $f6, $f0
/* 20E01C 801E34BC 00000000 */  nop   
/* 20E020 801E34C0 45000008 */  bc1f  .L801E34E4_ovl15
/* 20E024 801E34C4 00000000 */   nop   
/* 20E028 801E34C8 E4600000 */  swc1  $f0, ($v1)
/* 20E02C 801E34CC 8C990000 */  lw    $t9, ($a0)
/* 20E030 801E34D0 3C01800F */  lui   $at, 0x800f
/* 20E034 801E34D4 24180001 */  li    $t8, 1
/* 20E038 801E34D8 00194080 */  sll   $t0, $t9, 2
/* 20E03C 801E34DC 00280821 */  addu  $at, $at, $t0
/* 20E040 801E34E0 AC388920 */  sw    $t8, -0x76e0($at)
.L801E34E4_ovl15:
/* 20E044 801E34E4 0C0680ED */  jal   func_801A03B4_ovl15
/* 20E048 801E34E8 00000000 */   nop   
/* 20E04C 801E34EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 20E050 801E34F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 20E054 801E34F4 03E00008 */  jr    $ra
/* 20E058 801E34F8 00000000 */   nop   

/* 20E05C 801E34FC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 20E060 801E3500 AFB00018 */  sw    $s0, 0x18($sp)
/* 20E064 801E3504 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20E068 801E3508 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20E06C 801E350C 8E020000 */  lw    $v0, ($s0)
/* 20E070 801E3510 AFBF0024 */  sw    $ra, 0x24($sp)
/* 20E074 801E3514 AFB20020 */  sw    $s2, 0x20($sp)
/* 20E078 801E3518 AFB1001C */  sw    $s1, 0x1c($sp)
/* 20E07C 801E351C AFA40028 */  sw    $a0, 0x28($sp)
/* 20E080 801E3520 8C4E0000 */  lw    $t6, ($v0)
/* 20E084 801E3524 3C01800F */  lui   $at, 0x800f
/* 20E088 801E3528 3C04800E */  lui   $a0, 0x800e
/* 20E08C 801E352C 000E7880 */  sll   $t7, $t6, 2
/* 20E090 801E3530 002F0821 */  addu  $at, $at, $t7
/* 20E094 801E3534 AC209560 */  sw    $zero, -0x6aa0($at)
/* 20E098 801E3538 8C580000 */  lw    $t8, ($v0)
/* 20E09C 801E353C 3C06801E */  lui   $a2, %hi(D_801E66D4) # $a2, 0x801e
/* 20E0A0 801E3540 24C666D4 */  addiu $a2, %lo(D_801E66D4) # addiu $a2, $a2, 0x66d4
/* 20E0A4 801E3544 00982021 */  addu  $a0, $a0, $t8
/* 20E0A8 801E3548 90847880 */  lbu   $a0, 0x7880($a0)
/* 20E0AC 801E354C 0C02911F */  jal   call_virtual_function
/* 20E0B0 801E3550 24050004 */   li    $a1, 4
/* 20E0B4 801E3554 3C12801E */  lui   $s2, %hi(D_801E66E4) # $s2, 0x801e
/* 20E0B8 801E3558 3C11800E */  lui   $s1, %hi(gEntityVtableIndexArray) # $s1, 0x800e
/* 20E0BC 801E355C 2631DC50 */  addiu $s1, %lo(gEntityVtableIndexArray) # addiu $s1, $s1, -0x23b0
/* 20E0C0 801E3560 265266E4 */  addiu $s2, %lo(D_801E66E4) # addiu $s2, $s2, 0x66e4
/* 20E0C4 801E3564 8E190000 */  lw    $t9, ($s0)
.L801E3568_ovl15:
/* 20E0C8 801E3568 24050004 */  li    $a1, 4
/* 20E0CC 801E356C 02403025 */  move  $a2, $s2
/* 20E0D0 801E3570 8F280000 */  lw    $t0, ($t9)
/* 20E0D4 801E3574 00084880 */  sll   $t1, $t0, 2
/* 20E0D8 801E3578 02295021 */  addu  $t2, $s1, $t1
/* 20E0DC 801E357C 0C02911F */  jal   call_virtual_function
/* 20E0E0 801E3580 8D440000 */   lw    $a0, ($t2)
/* 20E0E4 801E3584 1000FFF8 */  b     .L801E3568_ovl15
/* 20E0E8 801E3588 8E190000 */   lw    $t9, ($s0)
/* 20E0EC 801E358C 00000000 */  nop   
/* 20E0F0 801E3590 00000000 */  nop   
/* 20E0F4 801E3594 00000000 */  nop   
/* 20E0F8 801E3598 00000000 */  nop   
/* 20E0FC 801E359C 00000000 */  nop   
/* 20E100 801E35A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 20E104 801E35A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 20E108 801E35A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 20E10C 801E35AC 8FB20020 */  lw    $s2, 0x20($sp)
/* 20E110 801E35B0 03E00008 */  jr    $ra
/* 20E114 801E35B4 27BD0028 */   addiu $sp, $sp, 0x28

/* 20E118 801E35B8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 20E11C 801E35BC AFB00018 */  sw    $s0, 0x18($sp)
/* 20E120 801E35C0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20E124 801E35C4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 20E128 801E35C8 8E020000 */  lw    $v0, ($s0)
/* 20E12C 801E35CC AFBF0024 */  sw    $ra, 0x24($sp)
/* 20E130 801E35D0 AFB20020 */  sw    $s2, 0x20($sp)
/* 20E134 801E35D4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 20E138 801E35D8 AFA40028 */  sw    $a0, 0x28($sp)
/* 20E13C 801E35DC 8C4E0000 */  lw    $t6, ($v0)
/* 20E140 801E35E0 3C01800F */  lui   $at, 0x800f
/* 20E144 801E35E4 3C04800E */  lui   $a0, 0x800e
/* 20E148 801E35E8 000E7880 */  sll   $t7, $t6, 2
/* 20E14C 801E35EC 002F0821 */  addu  $at, $at, $t7
/* 20E150 801E35F0 AC209560 */  sw    $zero, -0x6aa0($at)
/* 20E154 801E35F4 8C580000 */  lw    $t8, ($v0)
/* 20E158 801E35F8 3C06801E */  lui   $a2, %hi(D_801E66D4) # $a2, 0x801e
/* 20E15C 801E35FC 24C666D4 */  addiu $a2, %lo(D_801E66D4) # addiu $a2, $a2, 0x66d4
/* 20E160 801E3600 00982021 */  addu  $a0, $a0, $t8
/* 20E164 801E3604 90847880 */  lbu   $a0, 0x7880($a0)
/* 20E168 801E3608 0C02911F */  jal   call_virtual_function
/* 20E16C 801E360C 24050004 */   li    $a1, 4
/* 20E170 801E3610 3C12801E */  lui   $s2, %hi(D_801E66E4) # $s2, 0x801e
/* 20E174 801E3614 3C11800E */  lui   $s1, %hi(gEntityVtableIndexArray) # $s1, 0x800e
/* 20E178 801E3618 2631DC50 */  addiu $s1, %lo(gEntityVtableIndexArray) # addiu $s1, $s1, -0x23b0
/* 20E17C 801E361C 265266E4 */  addiu $s2, %lo(D_801E66E4) # addiu $s2, $s2, 0x66e4
/* 20E180 801E3620 8E190000 */  lw    $t9, ($s0)
.L801E3624_ovl15:
/* 20E184 801E3624 24050004 */  li    $a1, 4
/* 20E188 801E3628 02403025 */  move  $a2, $s2
/* 20E18C 801E362C 8F280000 */  lw    $t0, ($t9)
/* 20E190 801E3630 00084880 */  sll   $t1, $t0, 2
/* 20E194 801E3634 02295021 */  addu  $t2, $s1, $t1
/* 20E198 801E3638 0C02911F */  jal   call_virtual_function
/* 20E19C 801E363C 8D440000 */   lw    $a0, ($t2)
/* 20E1A0 801E3640 1000FFF8 */  b     .L801E3624_ovl15
/* 20E1A4 801E3644 8E190000 */   lw    $t9, ($s0)
/* 20E1A8 801E3648 00000000 */  nop   
/* 20E1AC 801E364C 00000000 */  nop   
/* 20E1B0 801E3650 00000000 */  nop   
/* 20E1B4 801E3654 00000000 */  nop   
/* 20E1B8 801E3658 00000000 */  nop   
/* 20E1BC 801E365C 00000000 */  nop   
/* 20E1C0 801E3660 8FBF0024 */  lw    $ra, 0x24($sp)
/* 20E1C4 801E3664 8FB00018 */  lw    $s0, 0x18($sp)
/* 20E1C8 801E3668 8FB1001C */  lw    $s1, 0x1c($sp)
/* 20E1CC 801E366C 8FB20020 */  lw    $s2, 0x20($sp)
/* 20E1D0 801E3670 03E00008 */  jr    $ra
/* 20E1D4 801E3674 27BD0028 */   addiu $sp, $sp, 0x28

/* 20E1D8 801E3678 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 20E1DC 801E367C AFB20030 */  sw    $s2, 0x30($sp)
/* 20E1E0 801E3680 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 20E1E4 801E3684 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 20E1E8 801E3688 8E420000 */  lw    $v0, ($s2)
/* 20E1EC 801E368C AFBF0034 */  sw    $ra, 0x34($sp)
/* 20E1F0 801E3690 AFB1002C */  sw    $s1, 0x2c($sp)
/* 20E1F4 801E3694 AFB00028 */  sw    $s0, 0x28($sp)
/* 20E1F8 801E3698 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 20E1FC 801E369C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 20E200 801E36A0 AFA40038 */  sw    $a0, 0x38($sp)
/* 20E204 801E36A4 8C430000 */  lw    $v1, ($v0)
/* 20E208 801E36A8 3C05800E */  lui   $a1, %hi(D_800E1B50) # $a1, 0x800e
/* 20E20C 801E36AC 24A51B50 */  addiu $a1, %lo(D_800E1B50) # addiu $a1, $a1, 0x1b50
/* 20E210 801E36B0 00031880 */  sll   $v1, $v1, 2
/* 20E214 801E36B4 00A37021 */  addu  $t6, $a1, $v1
/* 20E218 801E36B8 3C0F800B */  lui   $t7, %hi(D_800B7560) # $t7, 0x800b
/* 20E21C 801E36BC 3C01800E */  lui   $at, 0x800e
/* 20E220 801E36C0 8DD10000 */  lw    $s1, ($t6)
/* 20E224 801E36C4 00230821 */  addu  $at, $at, $v1
/* 20E228 801E36C8 25EF7560 */  addiu $t7, %lo(D_800B7560) # addiu $t7, $t7, 0x7560
/* 20E22C 801E36CC AC2FEF90 */  sw    $t7, -0x1070($at)
/* 20E230 801E36D0 8C590000 */  lw    $t9, ($v0)
/* 20E234 801E36D4 3C01800E */  lui   $at, 0x800e
/* 20E238 801E36D8 3C18801E */  lui   $t8, %hi(D_801E3B58) # $t8, 0x801e
/* 20E23C 801E36DC 00194080 */  sll   $t0, $t9, 2
/* 20E240 801E36E0 00280821 */  addu  $at, $at, $t0
/* 20E244 801E36E4 27183B58 */  addiu $t8, %lo(D_801E3B58) # addiu $t8, $t8, 0x3b58
/* 20E248 801E36E8 AC38F150 */  sw    $t8, -0xeb0($at)
/* 20E24C 801E36EC 8C4A0000 */  lw    $t2, ($v0)
/* 20E250 801E36F0 3C09801E */  lui   $t1, %hi(D_801DA04C) # $t1, 0x801e
/* 20E254 801E36F4 2529A04C */  addiu $t1, %lo(D_801DA04C) # addiu $t1, $t1, -0x5fb4
/* 20E258 801E36F8 000A5880 */  sll   $t3, $t2, 2
/* 20E25C 801E36FC 00AB6021 */  addu  $t4, $a1, $t3
/* 20E260 801E3700 8D8D0000 */  lw    $t5, ($t4)
/* 20E264 801E3704 0C02CCFD */  jal   func_800B33F4
/* 20E268 801E3708 ADA9008C */   sw    $t1, 0x8c($t5)
/* 20E26C 801E370C 8E420000 */  lw    $v0, ($s2)
/* 20E270 801E3710 3C01800F */  lui   $at, 0x800f
/* 20E274 801E3714 3C040001 */  lui   $a0, (0x00010091 >> 16) # lui $a0, 1
/* 20E278 801E3718 8C4E0000 */  lw    $t6, ($v0)
/* 20E27C 801E371C 34840091 */  ori   $a0, (0x00010091 & 0xFFFF) # ori $a0, $a0, 0x91
/* 20E280 801E3720 24050023 */  li    $a1, 35
/* 20E284 801E3724 000E7880 */  sll   $t7, $t6, 2
/* 20E288 801E3728 002F0821 */  addu  $at, $at, $t7
/* 20E28C 801E372C AC2098E0 */  sw    $zero, -0x6720($at)
/* 20E290 801E3730 8C590000 */  lw    $t9, ($v0)
/* 20E294 801E3734 3C01800F */  lui   $at, 0x800f
/* 20E298 801E3738 24060010 */  li    $a2, 16
/* 20E29C 801E373C 0019C080 */  sll   $t8, $t9, 2
/* 20E2A0 801E3740 00380821 */  addu  $at, $at, $t8
/* 20E2A4 801E3744 AC20A1A0 */  sw    $zero, -0x5e60($at)
/* 20E2A8 801E3748 8C480000 */  lw    $t0, ($v0)
/* 20E2AC 801E374C 3C01800F */  lui   $at, 0x800f
/* 20E2B0 801E3750 00085080 */  sll   $t2, $t0, 2
/* 20E2B4 801E3754 002A0821 */  addu  $at, $at, $t2
/* 20E2B8 801E3758 0C02A619 */  jal   func_800A9864
/* 20E2BC 801E375C AC20A360 */   sw    $zero, -0x5ca0($at)
/* 20E2C0 801E3760 3C040001 */  lui   $a0, (0x00010534 >> 16) # lui $a0, 1
/* 20E2C4 801E3764 0C02A806 */  jal   func_800AA018
/* 20E2C8 801E3768 34840534 */   ori   $a0, (0x00010534 & 0xFFFF) # ori $a0, $a0, 0x534
/* 20E2CC 801E376C 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 20E2D0 801E3770 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 20E2D4 801E3774 8E0B0024 */  lw    $t3, 0x24($s0)
/* 20E2D8 801E3778 5D600007 */  bgtzl $t3, .L801E3798_ovl15
/* 20E2DC 801E377C 8E420000 */   lw    $v0, ($s2)
.L801E3780_ovl15:
/* 20E2E0 801E3780 0C002DAF */  jal   finish_current_thread
/* 20E2E4 801E3784 24040001 */   li    $a0, 1
/* 20E2E8 801E3788 8E0C0024 */  lw    $t4, 0x24($s0)
/* 20E2EC 801E378C 1980FFFC */  blez  $t4, .L801E3780_ovl15
/* 20E2F0 801E3790 00000000 */   nop   
/* 20E2F4 801E3794 8E420000 */  lw    $v0, ($s2)
.L801E3798_ovl15:
/* 20E2F8 801E3798 3C01800F */  lui   $at, 0x800f
/* 20E2FC 801E379C 24090001 */  li    $t1, 1
/* 20E300 801E37A0 8C4D0000 */  lw    $t5, ($v0)
/* 20E304 801E37A4 3C040001 */  lui   $a0, (0x00010532 >> 16) # lui $a0, 1
/* 20E308 801E37A8 34840532 */  ori   $a0, (0x00010532 & 0xFFFF) # ori $a0, $a0, 0x532
/* 20E30C 801E37AC 000D7080 */  sll   $t6, $t5, 2
/* 20E310 801E37B0 002E0821 */  addu  $at, $at, $t6
/* 20E314 801E37B4 AC2998E0 */  sw    $t1, -0x6720($at)
/* 20E318 801E37B8 8C4F0000 */  lw    $t7, ($v0)
/* 20E31C 801E37BC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 20E320 801E37C0 44812000 */  mtc1  $at, $f4
/* 20E324 801E37C4 3C01800E */  lui   $at, 0x800e
/* 20E328 801E37C8 000FC880 */  sll   $t9, $t7, 2
/* 20E32C 801E37CC 00390821 */  addu  $at, $at, $t9
/* 20E330 801E37D0 E4243750 */  swc1  $f4, 0x3750($at)
/* 20E334 801E37D4 8C580000 */  lw    $t8, ($v0)
/* 20E338 801E37D8 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 20E33C 801E37DC 44813000 */  mtc1  $at, $f6
/* 20E340 801E37E0 3C01800E */  lui   $at, 0x800e
/* 20E344 801E37E4 00184080 */  sll   $t0, $t8, 2
/* 20E348 801E37E8 00280821 */  addu  $at, $at, $t0
/* 20E34C 801E37EC 0C02A806 */  jal   func_800AA018
/* 20E350 801E37F0 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 20E354 801E37F4 8E4A0000 */  lw    $t2, ($s2)
/* 20E358 801E37F8 3C10800E */  lui   $s0, %hi(gEntitiesNextPosYArray) # $s0, 0x800e
/* 20E35C 801E37FC 26102790 */  addiu $s0, %lo(gEntitiesNextPosYArray) # addiu $s0, $s0, 0x2790
/* 20E360 801E3800 8D4B0000 */  lw    $t3, ($t2)
/* 20E364 801E3804 3C014448 */  li    $at, 0x44480000 # 800.000000
/* 20E368 801E3808 4481A000 */  mtc1  $at, $f20
/* 20E36C 801E380C 000B6080 */  sll   $t4, $t3, 2
/* 20E370 801E3810 020C6821 */  addu  $t5, $s0, $t4
/* 20E374 801E3814 C5A80000 */  lwc1  $f8, ($t5)
/* 20E378 801E3818 4614403C */  c.lt.s $f8, $f20
/* 20E37C 801E381C 00000000 */  nop   
/* 20E380 801E3820 4500000C */  bc1f  .L801E3854_ovl15
/* 20E384 801E3824 00000000 */   nop   
.L801E3828_ovl15:
/* 20E388 801E3828 0C002DAF */  jal   finish_current_thread
/* 20E38C 801E382C 24040001 */   li    $a0, 1
/* 20E390 801E3830 8E490000 */  lw    $t1, ($s2)
/* 20E394 801E3834 8D2E0000 */  lw    $t6, ($t1)
/* 20E398 801E3838 000E7880 */  sll   $t7, $t6, 2
/* 20E39C 801E383C 020FC821 */  addu  $t9, $s0, $t7
/* 20E3A0 801E3840 C72A0000 */  lwc1  $f10, ($t9)
/* 20E3A4 801E3844 4614503C */  c.lt.s $f10, $f20
/* 20E3A8 801E3848 00000000 */  nop   
/* 20E3AC 801E384C 4501FFF6 */  bc1t  .L801E3828_ovl15
/* 20E3B0 801E3850 00000000 */   nop   
.L801E3854_ovl15:
/* 20E3B4 801E3854 0C02CCFD */  jal   func_800B33F4
/* 20E3B8 801E3858 00000000 */   nop   
/* 20E3BC 801E385C 8E580000 */  lw    $t8, ($s2)
/* 20E3C0 801E3860 3C04800F */  lui   $a0, 0x800f
/* 20E3C4 801E3864 8F080000 */  lw    $t0, ($t8)
/* 20E3C8 801E3868 00085080 */  sll   $t2, $t0, 2
/* 20E3CC 801E386C 008A2021 */  addu  $a0, $a0, $t2
/* 20E3D0 801E3870 8C849AA0 */  lw    $a0, -0x6560($a0)
/* 20E3D4 801E3874 000420C0 */  sll   $a0, $a0, 3
/* 20E3D8 801E3878 0C002DAF */  jal   finish_current_thread
/* 20E3DC 801E387C 24840001 */   addiu $a0, $a0, 1
/* 20E3E0 801E3880 8E420000 */  lw    $v0, ($s2)
/* 20E3E4 801E3884 3C01800F */  lui   $at, 0x800f
/* 20E3E8 801E3888 24090001 */  li    $t1, 1
/* 20E3EC 801E388C 8C4B0000 */  lw    $t3, ($v0)
/* 20E3F0 801E3890 3C19800F */  lui   $t9, 0x800f
/* 20E3F4 801E3894 3C08800E */  lui   $t0, 0x800e
/* 20E3F8 801E3898 000B6080 */  sll   $t4, $t3, 2
/* 20E3FC 801E389C 020C6821 */  addu  $t5, $s0, $t4
/* 20E400 801E38A0 E5B40000 */  swc1  $f20, ($t5)
/* 20E404 801E38A4 8C4E0000 */  lw    $t6, ($v0)
/* 20E408 801E38A8 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 20E40C 801E38AC 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 20E410 801E38B0 000E7880 */  sll   $t7, $t6, 2
/* 20E414 801E38B4 002F0821 */  addu  $at, $at, $t7
/* 20E418 801E38B8 AC29A360 */  sw    $t1, -0x5ca0($at)
/* 20E41C 801E38BC 8C430000 */  lw    $v1, ($v0)
/* 20E420 801E38C0 3C01801E */  lui   $at, 0x801e
/* 20E424 801E38C4 44800000 */  mtc1  $zero, $f0
/* 20E428 801E38C8 00031880 */  sll   $v1, $v1, 2
/* 20E42C 801E38CC 0323C821 */  addu  $t9, $t9, $v1
/* 20E430 801E38D0 01034021 */  addu  $t0, $t0, $v1
/* 20E434 801E38D4 8D080D50 */  lw    $t0, 0xd50($t0)
/* 20E438 801E38D8 8F399C60 */  lw    $t9, -0x63a0($t9)
/* 20E43C 801E38DC 00836021 */  addu  $t4, $a0, $v1
/* 20E440 801E38E0 00085080 */  sll   $t2, $t0, 2
/* 20E444 801E38E4 0019C080 */  sll   $t8, $t9, 2
/* 20E448 801E38E8 00380821 */  addu  $at, $at, $t8
/* 20E44C 801E38EC 008A5821 */  addu  $t3, $a0, $t2
/* 20E450 801E38F0 C5720000 */  lwc1  $f18, ($t3)
/* 20E454 801E38F4 C43066F4 */  lwc1  $f16, 0x66f4($at)
/* 20E458 801E38F8 3C01800E */  lui   $at, 0x800e
/* 20E45C 801E38FC 46128100 */  add.s $f4, $f16, $f18
/* 20E460 801E3900 E5840000 */  swc1  $f4, ($t4)
/* 20E464 801E3904 8C4D0000 */  lw    $t5, ($v0)
/* 20E468 801E3908 000D7080 */  sll   $t6, $t5, 2
/* 20E46C 801E390C 002E0821 */  addu  $at, $at, $t6
/* 20E470 801E3910 E4202950 */  swc1  $f0, 0x2950($at)
/* 20E474 801E3914 8C490000 */  lw    $t1, ($v0)
/* 20E478 801E3918 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 20E47C 801E391C 44813000 */  mtc1  $at, $f6
/* 20E480 801E3920 3C01800E */  lui   $at, 0x800e
/* 20E484 801E3924 00097880 */  sll   $t7, $t1, 2
/* 20E488 801E3928 002F0821 */  addu  $at, $at, $t7
/* 20E48C 801E392C E4263210 */  swc1  $f6, 0x3210($at)
/* 20E490 801E3930 8C590000 */  lw    $t9, ($v0)
/* 20E494 801E3934 3C01800E */  lui   $at, 0x800e
/* 20E498 801E3938 0019C080 */  sll   $t8, $t9, 2
/* 20E49C 801E393C 00380821 */  addu  $at, $at, $t8
/* 20E4A0 801E3940 E4203750 */  swc1  $f0, 0x3750($at)
/* 20E4A4 801E3944 8C480000 */  lw    $t0, ($v0)
/* 20E4A8 801E3948 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 20E4AC 801E394C 44814000 */  mtc1  $at, $f8
/* 20E4B0 801E3950 3C01800E */  lui   $at, 0x800e
/* 20E4B4 801E3954 00085080 */  sll   $t2, $t0, 2
/* 20E4B8 801E3958 002A0821 */  addu  $at, $at, $t2
/* 20E4BC 801E395C 0C066E6C */  jal   func_8019B9B0_ovl15
/* 20E4C0 801E3960 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 20E4C4 801E3964 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 20E4C8 801E3968 4481B000 */  mtc1  $at, $f22
/* 20E4CC 801E396C 3C01C47A */  li    $at, 0xC47A0000 # -1000.000000
/* 20E4D0 801E3970 44815000 */  mtc1  $at, $f10
/* 20E4D4 801E3974 8E2B0080 */  lw    $t3, 0x80($s1)
/* 20E4D8 801E3978 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 20E4DC 801E397C 44818000 */  mtc1  $at, $f16
/* 20E4E0 801E3980 E56A0018 */  swc1  $f10, 0x18($t3)
/* 20E4E4 801E3984 8E2C0080 */  lw    $t4, 0x80($s1)
/* 20E4E8 801E3988 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 20E4EC 801E398C E5900010 */  swc1  $f16, 0x10($t4)
/* 20E4F0 801E3990 8E220080 */  lw    $v0, 0x80($s1)
/* 20E4F4 801E3994 C4520010 */  lwc1  $f18, 0x10($v0)
/* 20E4F8 801E3998 4616903C */  c.lt.s $f18, $f22
/* 20E4FC 801E399C 00000000 */  nop   
/* 20E500 801E39A0 45020010 */  bc1fl .L801E39E4_ovl15
/* 20E504 801E39A4 E4560010 */   swc1  $f22, 0x10($v0)
/* 20E508 801E39A8 4481A000 */  mtc1  $at, $f20
/* 20E50C 801E39AC 00000000 */  nop   
.L801E39B0_ovl15:
/* 20E510 801E39B0 0C002DAF */  jal   finish_current_thread
/* 20E514 801E39B4 24040001 */   li    $a0, 1
/* 20E518 801E39B8 8E220080 */  lw    $v0, 0x80($s1)
/* 20E51C 801E39BC C4440010 */  lwc1  $f4, 0x10($v0)
/* 20E520 801E39C0 46142180 */  add.s $f6, $f4, $f20
/* 20E524 801E39C4 E4460010 */  swc1  $f6, 0x10($v0)
/* 20E528 801E39C8 8E220080 */  lw    $v0, 0x80($s1)
/* 20E52C 801E39CC C4480010 */  lwc1  $f8, 0x10($v0)
/* 20E530 801E39D0 4616403C */  c.lt.s $f8, $f22
/* 20E534 801E39D4 00000000 */  nop   
/* 20E538 801E39D8 4501FFF5 */  bc1t  .L801E39B0_ovl15
/* 20E53C 801E39DC 00000000 */   nop   
/* 20E540 801E39E0 E4560010 */  swc1  $f22, 0x10($v0)
.L801E39E4_ovl15:
/* 20E544 801E39E4 8E4D0000 */  lw    $t5, ($s2)
/* 20E548 801E39E8 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 20E54C 801E39EC 4481A000 */  mtc1  $at, $f20
/* 20E550 801E39F0 8DAE0000 */  lw    $t6, ($t5)
/* 20E554 801E39F4 000E4880 */  sll   $t1, $t6, 2
/* 20E558 801E39F8 02097821 */  addu  $t7, $s0, $t1
/* 20E55C 801E39FC C5EA0000 */  lwc1  $f10, ($t7)
/* 20E560 801E3A00 460AA03C */  c.lt.s $f20, $f10
/* 20E564 801E3A04 00000000 */  nop   
/* 20E568 801E3A08 4500000C */  bc1f  .L801E3A3C_ovl15
/* 20E56C 801E3A0C 00000000 */   nop   
.L801E3A10_ovl15:
/* 20E570 801E3A10 0C002DAF */  jal   finish_current_thread
/* 20E574 801E3A14 24040001 */   li    $a0, 1
/* 20E578 801E3A18 8E590000 */  lw    $t9, ($s2)
/* 20E57C 801E3A1C 8F380000 */  lw    $t8, ($t9)
/* 20E580 801E3A20 00184080 */  sll   $t0, $t8, 2
/* 20E584 801E3A24 02085021 */  addu  $t2, $s0, $t0
/* 20E588 801E3A28 C5500000 */  lwc1  $f16, ($t2)
/* 20E58C 801E3A2C 4610A03C */  c.lt.s $f20, $f16
/* 20E590 801E3A30 00000000 */  nop   
/* 20E594 801E3A34 4501FFF6 */  bc1t  .L801E3A10_ovl15
/* 20E598 801E3A38 00000000 */   nop   
.L801E3A3C_ovl15:
/* 20E59C 801E3A3C 0C02CCFD */  jal   func_800B33F4
/* 20E5A0 801E3A40 00000000 */   nop   
/* 20E5A4 801E3A44 8E420000 */  lw    $v0, ($s2)
/* 20E5A8 801E3A48 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 20E5AC 801E3A4C 44819000 */  mtc1  $at, $f18
/* 20E5B0 801E3A50 8C4B0000 */  lw    $t3, ($v0)
/* 20E5B4 801E3A54 3C0E800F */  lui   $t6, 0x800f
/* 20E5B8 801E3A58 3C01800F */  lui   $at, 0x800f
/* 20E5BC 801E3A5C 000B6080 */  sll   $t4, $t3, 2
/* 20E5C0 801E3A60 020C6821 */  addu  $t5, $s0, $t4
/* 20E5C4 801E3A64 E5B20000 */  swc1  $f18, ($t5)
/* 20E5C8 801E3A68 8C430000 */  lw    $v1, ($v0)
/* 20E5CC 801E3A6C 24090001 */  li    $t1, 1
/* 20E5D0 801E3A70 24040197 */  li    $a0, 407
/* 20E5D4 801E3A74 00031880 */  sll   $v1, $v1, 2
/* 20E5D8 801E3A78 01C37021 */  addu  $t6, $t6, $v1
/* 20E5DC 801E3A7C 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 20E5E0 801E3A80 00230821 */  addu  $at, $at, $v1
/* 20E5E4 801E3A84 11C00024 */  beqz  $t6, .L801E3B18_ovl15
/* 20E5E8 801E3A88 00000000 */   nop   
/* 20E5EC 801E3A8C 0C029D9E */  jal   play_sound
/* 20E5F0 801E3A90 AC29A1A0 */   sw    $t1, -0x5e60($at)
/* 20E5F4 801E3A94 3C040001 */  lui   $a0, (0x0001052F >> 16) # lui $a0, 1
/* 20E5F8 801E3A98 3484052F */  ori   $a0, (0x0001052F & 0xFFFF) # ori $a0, $a0, 0x52f
/* 20E5FC 801E3A9C 0C02A831 */  jal   func_800AA0C4
/* 20E600 801E3AA0 3C053F80 */   lui   $a1, 0x3f80
/* 20E604 801E3AA4 8E420000 */  lw    $v0, ($s2)
/* 20E608 801E3AA8 3C01800F */  lui   $at, 0x800f
/* 20E60C 801E3AAC 3C0E800E */  lui   $t6, 0x800e
/* 20E610 801E3AB0 8C4F0000 */  lw    $t7, ($v0)
/* 20E614 801E3AB4 3C0B801E */  lui   $t3, %hi(D_801DA070) # $t3, 0x801e
/* 20E618 801E3AB8 256BA070 */  addiu $t3, %lo(D_801DA070) # addiu $t3, $t3, -0x5f90
/* 20E61C 801E3ABC 000FC880 */  sll   $t9, $t7, 2
/* 20E620 801E3AC0 00390821 */  addu  $at, $at, $t9
/* 20E624 801E3AC4 AC20A1A0 */  sw    $zero, -0x5e60($at)
/* 20E628 801E3AC8 8C580000 */  lw    $t8, ($v0)
/* 20E62C 801E3ACC 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 20E630 801E3AD0 44812000 */  mtc1  $at, $f4
/* 20E634 801E3AD4 00184080 */  sll   $t0, $t8, 2
/* 20E638 801E3AD8 02085021 */  addu  $t2, $s0, $t0
/* 20E63C 801E3ADC E5440000 */  swc1  $f4, ($t2)
/* 20E640 801E3AE0 8C4C0000 */  lw    $t4, ($v0)
/* 20E644 801E3AE4 3C040001 */  lui   $a0, (0x00010530 >> 16) # lui $a0, 1
/* 20E648 801E3AE8 34840530 */  ori   $a0, (0x00010530 & 0xFFFF) # ori $a0, $a0, 0x530
/* 20E64C 801E3AEC 000C6880 */  sll   $t5, $t4, 2
/* 20E650 801E3AF0 01CD7021 */  addu  $t6, $t6, $t5
/* 20E654 801E3AF4 8DCE1B50 */  lw    $t6, 0x1b50($t6)
/* 20E658 801E3AF8 0C02A806 */  jal   func_800AA018
/* 20E65C 801E3AFC ADCB008C */   sw    $t3, 0x8c($t6)
/* 20E660 801E3B00 0C002DAF */  jal   finish_current_thread
/* 20E664 801E3B04 2404003C */   li    $a0, 60
/* 20E668 801E3B08 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 20E66C 801E3B0C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 20E670 801E3B10 8D230000 */  lw    $v1, ($t1)
/* 20E674 801E3B14 00031880 */  sll   $v1, $v1, 2
.L801E3B18_ovl15:
/* 20E678 801E3B18 3C19800E */  lui   $t9, 0x800e
/* 20E67C 801E3B1C 0323C821 */  addu  $t9, $t9, $v1
/* 20E680 801E3B20 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20E684 801E3B24 3C0F801D */  lui   $t7, %hi(D_801D7B60) # $t7, 0x801d
/* 20E688 801E3B28 25EF7B60 */  addiu $t7, %lo(D_801D7B60) # addiu $t7, $t7, 0x7b60
/* 20E68C 801E3B2C AF2F0094 */  sw    $t7, 0x94($t9)
/* 20E690 801E3B30 0C06B3E1 */  jal   D_801ACF84_ovl15
/* 20E694 801E3B34 8FA40038 */   lw    $a0, 0x38($sp)
/* 20E698 801E3B38 8FBF0034 */  lw    $ra, 0x34($sp)
/* 20E69C 801E3B3C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 20E6A0 801E3B40 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 20E6A4 801E3B44 8FB00028 */  lw    $s0, 0x28($sp)
/* 20E6A8 801E3B48 8FB1002C */  lw    $s1, 0x2c($sp)
/* 20E6AC 801E3B4C 8FB20030 */  lw    $s2, 0x30($sp)
/* 20E6B0 801E3B50 03E00008 */  jr    $ra
/* 20E6B4 801E3B54 27BD0038 */   addiu $sp, $sp, 0x38

/* 20E6B8 801E3B58 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 20E6BC 801E3B5C 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 20E6C0 801E3B60 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 20E6C4 801E3B64 8D030000 */  lw    $v1, ($t0)
/* 20E6C8 801E3B68 AFBF0024 */  sw    $ra, 0x24($sp)
/* 20E6CC 801E3B6C AFB00020 */  sw    $s0, 0x20($sp)
/* 20E6D0 801E3B70 AFA40048 */  sw    $a0, 0x48($sp)
/* 20E6D4 801E3B74 8C6E0000 */  lw    $t6, ($v1)
/* 20E6D8 801E3B78 3C07800F */  lui   $a3, %hi(D_800E9560) # $a3, 0x800f
/* 20E6DC 801E3B7C 24E79560 */  addiu $a3, %lo(D_800E9560) # addiu $a3, $a3, -0x6aa0
/* 20E6E0 801E3B80 000E7880 */  sll   $t7, $t6, 2
/* 20E6E4 801E3B84 00EF2021 */  addu  $a0, $a3, $t7
/* 20E6E8 801E3B88 8C980000 */  lw    $t8, ($a0)
/* 20E6EC 801E3B8C 3C10800E */  lui   $s0, %hi(D_800DFBD0) # $s0, 0x800e
/* 20E6F0 801E3B90 2610FBD0 */  addiu $s0, %lo(D_800DFBD0) # addiu $s0, $s0, -0x430
/* 20E6F4 801E3B94 27190001 */  addiu $t9, $t8, 1
/* 20E6F8 801E3B98 AC990000 */  sw    $t9, ($a0)
/* 20E6FC 801E3B9C 8C690000 */  lw    $t1, ($v1)
/* 20E700 801E3BA0 44801000 */  mtc1  $zero, $f2
/* 20E704 801E3BA4 00095080 */  sll   $t2, $t1, 2
/* 20E708 801E3BA8 020A5821 */  addu  $t3, $s0, $t2
/* 20E70C 801E3BAC 8D6C0000 */  lw    $t4, ($t3)
/* 20E710 801E3BB0 8D8D0004 */  lw    $t5, 4($t4)
/* 20E714 801E3BB4 E5A20024 */  swc1  $f2, 0x24($t5)
/* 20E718 801E3BB8 8D0E0000 */  lw    $t6, ($t0)
/* 20E71C 801E3BBC 8DCF0000 */  lw    $t7, ($t6)
/* 20E720 801E3BC0 000FC080 */  sll   $t8, $t7, 2
/* 20E724 801E3BC4 0218C821 */  addu  $t9, $s0, $t8
/* 20E728 801E3BC8 8F290000 */  lw    $t1, ($t9)
/* 20E72C 801E3BCC 8D250004 */  lw    $a1, 4($t1)
/* 20E730 801E3BD0 C4A00024 */  lwc1  $f0, 0x24($a1)
/* 20E734 801E3BD4 E4A00020 */  swc1  $f0, 0x20($a1)
/* 20E738 801E3BD8 8D0A0000 */  lw    $t2, ($t0)
/* 20E73C 801E3BDC 8D4B0000 */  lw    $t3, ($t2)
/* 20E740 801E3BE0 000B6080 */  sll   $t4, $t3, 2
/* 20E744 801E3BE4 020C6821 */  addu  $t5, $s0, $t4
/* 20E748 801E3BE8 8DAE0000 */  lw    $t6, ($t5)
/* 20E74C 801E3BEC 8DCF0004 */  lw    $t7, 4($t6)
/* 20E750 801E3BF0 E5E0001C */  swc1  $f0, 0x1c($t7)
/* 20E754 801E3BF4 8D180000 */  lw    $t8, ($t0)
/* 20E758 801E3BF8 8F190000 */  lw    $t9, ($t8)
/* 20E75C 801E3BFC 00194880 */  sll   $t1, $t9, 2
/* 20E760 801E3C00 02095021 */  addu  $t2, $s0, $t1
/* 20E764 801E3C04 8D4B0000 */  lw    $t3, ($t2)
/* 20E768 801E3C08 8D6C0008 */  lw    $t4, 8($t3)
/* 20E76C 801E3C0C E5820024 */  swc1  $f2, 0x24($t4)
/* 20E770 801E3C10 8D0D0000 */  lw    $t5, ($t0)
/* 20E774 801E3C14 8DAE0000 */  lw    $t6, ($t5)
/* 20E778 801E3C18 000E7880 */  sll   $t7, $t6, 2
/* 20E77C 801E3C1C 020FC021 */  addu  $t8, $s0, $t7
/* 20E780 801E3C20 8F190000 */  lw    $t9, ($t8)
/* 20E784 801E3C24 3C18800F */  lui   $t8, 0x800f
/* 20E788 801E3C28 8F260008 */  lw    $a2, 8($t9)
/* 20E78C 801E3C2C C4C00024 */  lwc1  $f0, 0x24($a2)
/* 20E790 801E3C30 E4C00020 */  swc1  $f0, 0x20($a2)
/* 20E794 801E3C34 8D090000 */  lw    $t1, ($t0)
/* 20E798 801E3C38 8D2A0000 */  lw    $t2, ($t1)
/* 20E79C 801E3C3C 000A5880 */  sll   $t3, $t2, 2
/* 20E7A0 801E3C40 020B6021 */  addu  $t4, $s0, $t3
/* 20E7A4 801E3C44 8D8D0000 */  lw    $t5, ($t4)
/* 20E7A8 801E3C48 8DAE0008 */  lw    $t6, 8($t5)
/* 20E7AC 801E3C4C E5C0001C */  swc1  $f0, 0x1c($t6)
/* 20E7B0 801E3C50 8D0F0000 */  lw    $t7, ($t0)
/* 20E7B4 801E3C54 8DE20000 */  lw    $v0, ($t7)
/* 20E7B8 801E3C58 00021080 */  sll   $v0, $v0, 2
/* 20E7BC 801E3C5C 0302C021 */  addu  $t8, $t8, $v0
/* 20E7C0 801E3C60 8F18A360 */  lw    $t8, -0x5ca0($t8)
/* 20E7C4 801E3C64 02025821 */  addu  $t3, $s0, $v0
/* 20E7C8 801E3C68 0202C821 */  addu  $t9, $s0, $v0
/* 20E7CC 801E3C6C 53000008 */  beql  $t8, $zero, .L801E3C90_ovl15
/* 20E7D0 801E3C70 8D6C0000 */   lw    $t4, ($t3)
/* 20E7D4 801E3C74 8F290000 */  lw    $t1, ($t9)
/* 20E7D8 801E3C78 3C01801E */  lui   $at, %hi(D_801E68EC) # $at, 0x801e
/* 20E7DC 801E3C7C C42468EC */  lwc1  $f4, %lo(D_801E68EC)($at)
/* 20E7E0 801E3C80 8D2A0004 */  lw    $t2, 4($t1)
/* 20E7E4 801E3C84 10000006 */  b     .L801E3CA0_ovl15
/* 20E7E8 801E3C88 E5440030 */   swc1  $f4, 0x30($t2)
/* 20E7EC 801E3C8C 8D6C0000 */  lw    $t4, ($t3)
.L801E3C90_ovl15:
/* 20E7F0 801E3C90 3C01801E */  lui   $at, %hi(D_801E68F0) # $at, 0x801e
/* 20E7F4 801E3C94 C42668F0 */  lwc1  $f6, %lo(D_801E68F0)($at)
/* 20E7F8 801E3C98 8D8D0004 */  lw    $t5, 4($t4)
/* 20E7FC 801E3C9C E5A60030 */  swc1  $f6, 0x30($t5)
.L801E3CA0_ovl15:
/* 20E800 801E3CA0 8D0E0000 */  lw    $t6, ($t0)
/* 20E804 801E3CA4 3C01800E */  lui   $at, 0x800e
/* 20E808 801E3CA8 8DCF0000 */  lw    $t7, ($t6)
/* 20E80C 801E3CAC 000FC080 */  sll   $t8, $t7, 2
/* 20E810 801E3CB0 0218C821 */  addu  $t9, $s0, $t8
/* 20E814 801E3CB4 8F290000 */  lw    $t1, ($t9)
/* 20E818 801E3CB8 8D2A0004 */  lw    $t2, 4($t1)
/* 20E81C 801E3CBC E5420038 */  swc1  $f2, 0x38($t2)
/* 20E820 801E3CC0 8D0B0000 */  lw    $t3, ($t0)
/* 20E824 801E3CC4 8D6C0000 */  lw    $t4, ($t3)
/* 20E828 801E3CC8 000C6880 */  sll   $t5, $t4, 2
/* 20E82C 801E3CCC 020D7021 */  addu  $t6, $s0, $t5
/* 20E830 801E3CD0 8DCF0000 */  lw    $t7, ($t6)
/* 20E834 801E3CD4 8DE50004 */  lw    $a1, 4($t7)
/* 20E838 801E3CD8 C4A80038 */  lwc1  $f8, 0x38($a1)
/* 20E83C 801E3CDC E4A80034 */  swc1  $f8, 0x34($a1)
/* 20E840 801E3CE0 8D030000 */  lw    $v1, ($t0)
/* 20E844 801E3CE4 8C620000 */  lw    $v0, ($v1)
/* 20E848 801E3CE8 00021080 */  sll   $v0, $v0, 2
/* 20E84C 801E3CEC 00220821 */  addu  $at, $at, $v0
/* 20E850 801E3CF0 C42A3210 */  lwc1  $f10, 0x3210($at)
/* 20E854 801E3CF4 0202C021 */  addu  $t8, $s0, $v0
/* 20E858 801E3CF8 00E24821 */  addu  $t1, $a3, $v0
/* 20E85C 801E3CFC 460A103C */  c.lt.s $f2, $f10
/* 20E860 801E3D00 00000000 */  nop   
/* 20E864 801E3D04 45020016 */  bc1fl .L801E3D60_ovl15
/* 20E868 801E3D08 8D2A0000 */   lw    $t2, ($t1)
/* 20E86C 801E3D0C 8F190000 */  lw    $t9, ($t8)
/* 20E870 801E3D10 27A4003C */  addiu $a0, $sp, 0x3c
/* 20E874 801E3D14 0C0291E5 */  jal   func_800A4794
/* 20E878 801E3D18 8F25000C */   lw    $a1, 0xc($t9)
/* 20E87C 801E3D1C C7B00040 */  lwc1  $f16, 0x40($sp)
/* 20E880 801E3D20 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 20E884 801E3D24 24040006 */  li    $a0, 6
/* 20E888 801E3D28 24050002 */  li    $a1, 2
/* 20E88C 801E3D2C 2406000B */  li    $a2, 11
/* 20E890 801E3D30 8FA7003C */  lw    $a3, 0x3c($sp)
/* 20E894 801E3D34 E7B00010 */  swc1  $f16, 0x10($sp)
/* 20E898 801E3D38 0C029FDD */  jal   func_800A7F74
/* 20E89C 801E3D3C E7B20014 */   swc1  $f18, 0x14($sp)
/* 20E8A0 801E3D40 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 20E8A4 801E3D44 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 20E8A8 801E3D48 8D030000 */  lw    $v1, ($t0)
/* 20E8AC 801E3D4C 44801000 */  mtc1  $zero, $f2
/* 20E8B0 801E3D50 8C620000 */  lw    $v0, ($v1)
/* 20E8B4 801E3D54 10000027 */  b     .L801E3DF4_ovl15
/* 20E8B8 801E3D58 00021080 */   sll   $v0, $v0, 2
/* 20E8BC 801E3D5C 8D2A0000 */  lw    $t2, ($t1)
.L801E3D60_ovl15:
/* 20E8C0 801E3D60 3C04800E */  lui   $a0, 0x800e
/* 20E8C4 801E3D64 00822021 */  addu  $a0, $a0, $v0
/* 20E8C8 801E3D68 05410004 */  bgez  $t2, .L801E3D7C_ovl15
/* 20E8CC 801E3D6C 314B0001 */   andi  $t3, $t2, 1
/* 20E8D0 801E3D70 11600002 */  beqz  $t3, .L801E3D7C_ovl15
/* 20E8D4 801E3D74 00000000 */   nop   
/* 20E8D8 801E3D78 256BFFFE */  addiu $t3, $t3, -2
.L801E3D7C_ovl15:
/* 20E8DC 801E3D7C 1160001D */  beqz  $t3, .L801E3DF4_ovl15
/* 20E8E0 801E3D80 00000000 */   nop   
/* 20E8E4 801E3D84 8C84FF50 */  lw    $a0, -0xb0($a0)
/* 20E8E8 801E3D88 3C010001 */  lui   $at, (0x00010532 >> 16) # lui $at, 1
/* 20E8EC 801E3D8C 34210532 */  ori   $at, (0x00010532 & 0xFFFF) # ori $at, $at, 0x532
/* 20E8F0 801E3D90 10810005 */  beq   $a0, $at, .L801E3DA8_ovl15
/* 20E8F4 801E3D94 02026021 */   addu  $t4, $s0, $v0
/* 20E8F8 801E3D98 3C010001 */  lui   $at, (0x0001052F >> 16) # lui $at, 1
/* 20E8FC 801E3D9C 3421052F */  ori   $at, (0x0001052F & 0xFFFF) # ori $at, $at, 0x52f
/* 20E900 801E3DA0 14810014 */  bne   $a0, $at, .L801E3DF4_ovl15
/* 20E904 801E3DA4 00000000 */   nop   
.L801E3DA8_ovl15:
/* 20E908 801E3DA8 8D8D0000 */  lw    $t5, ($t4)
/* 20E90C 801E3DAC 27A4003C */  addiu $a0, $sp, 0x3c
/* 20E910 801E3DB0 0C0291E5 */  jal   func_800A4794
/* 20E914 801E3DB4 8DA5000C */   lw    $a1, 0xc($t5)
/* 20E918 801E3DB8 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 20E91C 801E3DBC C7A60044 */  lwc1  $f6, 0x44($sp)
/* 20E920 801E3DC0 24040006 */  li    $a0, 6
/* 20E924 801E3DC4 24050002 */  li    $a1, 2
/* 20E928 801E3DC8 2406000B */  li    $a2, 11
/* 20E92C 801E3DCC 8FA7003C */  lw    $a3, 0x3c($sp)
/* 20E930 801E3DD0 E7A40010 */  swc1  $f4, 0x10($sp)
/* 20E934 801E3DD4 0C029FDD */  jal   func_800A7F74
/* 20E938 801E3DD8 E7A60014 */   swc1  $f6, 0x14($sp)
/* 20E93C 801E3DDC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 20E940 801E3DE0 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 20E944 801E3DE4 8D030000 */  lw    $v1, ($t0)
/* 20E948 801E3DE8 44801000 */  mtc1  $zero, $f2
/* 20E94C 801E3DEC 8C620000 */  lw    $v0, ($v1)
/* 20E950 801E3DF0 00021080 */  sll   $v0, $v0, 2
.L801E3DF4_ovl15:
/* 20E954 801E3DF4 3C0E800F */  lui   $t6, 0x800f
/* 20E958 801E3DF8 01C27021 */  addu  $t6, $t6, $v0
/* 20E95C 801E3DFC 8DCEA1A0 */  lw    $t6, -0x5e60($t6)
/* 20E960 801E3E00 02027821 */  addu  $t7, $s0, $v0
/* 20E964 801E3E04 11C0000C */  beqz  $t6, .L801E3E38_ovl15
/* 20E968 801E3E08 00000000 */   nop   
/* 20E96C 801E3E0C 8DF80000 */  lw    $t8, ($t7)
/* 20E970 801E3E10 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 20E974 801E3E14 44815000 */  mtc1  $at, $f10
/* 20E978 801E3E18 8F190008 */  lw    $t9, 8($t8)
/* 20E97C 801E3E1C 3C01800E */  lui   $at, 0x800e
/* 20E980 801E3E20 00220821 */  addu  $at, $at, $v0
/* 20E984 801E3E24 C7280044 */  lwc1  $f8, 0x44($t9)
/* 20E988 801E3E28 460A4402 */  mul.s $f16, $f8, $f10
/* 20E98C 801E3E2C E4302790 */  swc1  $f16, 0x2790($at)
/* 20E990 801E3E30 8C620000 */  lw    $v0, ($v1)
/* 20E994 801E3E34 00021080 */  sll   $v0, $v0, 2
.L801E3E38_ovl15:
/* 20E998 801E3E38 3C01800E */  lui   $at, 0x800e
/* 20E99C 801E3E3C 00220821 */  addu  $at, $at, $v0
/* 20E9A0 801E3E40 C4322950 */  lwc1  $f18, 0x2950($at)
/* 20E9A4 801E3E44 02024821 */  addu  $t1, $s0, $v0
/* 20E9A8 801E3E48 46121032 */  c.eq.s $f2, $f18
/* 20E9AC 801E3E4C 00000000 */  nop   
/* 20E9B0 801E3E50 45000008 */  bc1f  .L801E3E74_ovl15
/* 20E9B4 801E3E54 00000000 */   nop   
/* 20E9B8 801E3E58 8D230000 */  lw    $v1, ($t1)
/* 20E9BC 801E3E5C 8C6A0008 */  lw    $t2, 8($v1)
/* 20E9C0 801E3E60 8C640004 */  lw    $a0, 4($v1)
/* 20E9C4 801E3E64 0C079755 */  jal   func_801E5D54_ovl15
/* 20E9C8 801E3E68 8D450044 */   lw    $a1, 0x44($t2)
/* 20E9CC 801E3E6C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 20E9D0 801E3E70 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
.L801E3E74_ovl15:
/* 20E9D4 801E3E74 3C0B800D */  lui   $t3, %hi(D_800D7154) # $t3, 0x800d
/* 20E9D8 801E3E78 8D6B7154 */  lw    $t3, %lo(D_800D7154)($t3)
/* 20E9DC 801E3E7C 55600011 */  bnezl $t3, .L801E3EC4_ovl15
/* 20E9E0 801E3E80 8FBF0024 */   lw    $ra, 0x24($sp)
/* 20E9E4 801E3E84 8D030000 */  lw    $v1, ($t0)
/* 20E9E8 801E3E88 3C01800E */  lui   $at, 0x800e
/* 20E9EC 801E3E8C 240CFFFF */  li    $t4, -1
/* 20E9F0 801E3E90 8C6D0000 */  lw    $t5, ($v1)
/* 20E9F4 801E3E94 3C04800E */  lui   $a0, 0x800e
/* 20E9F8 801E3E98 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 20E9FC 801E3E9C 000D7080 */  sll   $t6, $t5, 2
/* 20EA00 801E3EA0 002E0821 */  addu  $at, $at, $t6
/* 20EA04 801E3EA4 AC2CDC50 */  sw    $t4, -0x23b0($at)
/* 20EA08 801E3EA8 8C6F0000 */  lw    $t7, ($v1)
/* 20EA0C 801E3EAC 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 20EA10 801E3EB0 000FC080 */  sll   $t8, $t7, 2
/* 20EA14 801E3EB4 00982021 */  addu  $a0, $a0, $t8
/* 20EA18 801E3EB8 0C02C7B2 */  jal   assign_new_process_entry
/* 20EA1C 801E3EBC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 20EA20 801E3EC0 8FBF0024 */  lw    $ra, 0x24($sp)
.L801E3EC4_ovl15:
/* 20EA24 801E3EC4 8FB00020 */  lw    $s0, 0x20($sp)
/* 20EA28 801E3EC8 27BD0048 */  addiu $sp, $sp, 0x48
/* 20EA2C 801E3ECC 03E00008 */  jr    $ra
/* 20EA30 801E3ED0 00000000 */   nop   

/* 20EA34 801E3ED4 27BDFF88 */  addiu $sp, $sp, -0x78
/* 20EA38 801E3ED8 AFB20028 */  sw    $s2, 0x28($sp)
/* 20EA3C 801E3EDC 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 20EA40 801E3EE0 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 20EA44 801E3EE4 8E4E0000 */  lw    $t6, ($s2)
/* 20EA48 801E3EE8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 20EA4C 801E3EEC AFB10024 */  sw    $s1, 0x24($sp)
/* 20EA50 801E3EF0 AFB00020 */  sw    $s0, 0x20($sp)
/* 20EA54 801E3EF4 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 20EA58 801E3EF8 AFA40078 */  sw    $a0, 0x78($sp)
/* 20EA5C 801E3EFC 8DC20000 */  lw    $v0, ($t6)
/* 20EA60 801E3F00 3C11800E */  lui   $s1, 0x800e
/* 20EA64 801E3F04 3C04800E */  lui   $a0, 0x800e
/* 20EA68 801E3F08 00021080 */  sll   $v0, $v0, 2
/* 20EA6C 801E3F0C 02228821 */  addu  $s1, $s1, $v0
/* 20EA70 801E3F10 00822021 */  addu  $a0, $a0, $v0
/* 20EA74 801E3F14 3C05800B */  lui   $a1, %hi(D_800B1814) # $a1, 0x800b
/* 20EA78 801E3F18 8E311B50 */  lw    $s1, 0x1b50($s1)
/* 20EA7C 801E3F1C 24A51814 */  addiu $a1, %lo(D_800B1814) # addiu $a1, $a1, 0x1814
/* 20EA80 801E3F20 0C02C7DA */  jal   func_800B1F68
/* 20EA84 801E3F24 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 20EA88 801E3F28 8E500000 */  lw    $s0, ($s2)
/* 20EA8C 801E3F2C 3C0F800B */  lui   $t7, %hi(D_800B7790) # $t7, 0x800b
/* 20EA90 801E3F30 3C01800E */  lui   $at, 0x800e
/* 20EA94 801E3F34 8E180000 */  lw    $t8, ($s0)
/* 20EA98 801E3F38 25EF7790 */  addiu $t7, %lo(D_800B7790) # addiu $t7, $t7, 0x7790
/* 20EA9C 801E3F3C 24080001 */  li    $t0, 1
/* 20EAA0 801E3F40 0018C880 */  sll   $t9, $t8, 2
/* 20EAA4 801E3F44 00390821 */  addu  $at, $at, $t9
/* 20EAA8 801E3F48 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 20EAAC 801E3F4C 8E090000 */  lw    $t1, ($s0)
/* 20EAB0 801E3F50 3C01800F */  lui   $at, 0x800f
/* 20EAB4 801E3F54 3C0B801E */  lui   $t3, %hi(D_801E48E4) # $t3, 0x801e
/* 20EAB8 801E3F58 00095080 */  sll   $t2, $t1, 2
/* 20EABC 801E3F5C 002A0821 */  addu  $at, $at, $t2
/* 20EAC0 801E3F60 AC288E60 */  sw    $t0, -0x71a0($at)
/* 20EAC4 801E3F64 8E0C0000 */  lw    $t4, ($s0)
/* 20EAC8 801E3F68 3C01800E */  lui   $at, 0x800e
/* 20EACC 801E3F6C 256B48E4 */  addiu $t3, %lo(D_801E48E4) # addiu $t3, $t3, 0x48e4
/* 20EAD0 801E3F70 000C6880 */  sll   $t5, $t4, 2
/* 20EAD4 801E3F74 002D0821 */  addu  $at, $at, $t5
/* 20EAD8 801E3F78 AC2BF150 */  sw    $t3, -0xeb0($at)
/* 20EADC 801E3F7C 8E180000 */  lw    $t8, ($s0)
/* 20EAE0 801E3F80 3C19800E */  lui   $t9, 0x800e
/* 20EAE4 801E3F84 3C0E801E */  lui   $t6, %hi(D_801DA04C) # $t6, 0x801e
/* 20EAE8 801E3F88 00187880 */  sll   $t7, $t8, 2
/* 20EAEC 801E3F8C 032FC821 */  addu  $t9, $t9, $t7
/* 20EAF0 801E3F90 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20EAF4 801E3F94 25CEA04C */  addiu $t6, %lo(D_801DA04C) # addiu $t6, $t6, -0x5fb4
/* 20EAF8 801E3F98 3C01801E */  lui   $at, %hi(D_801E68F4) # $at, 0x801e
/* 20EAFC 801E3F9C AF2E008C */  sw    $t6, 0x8c($t9)
/* 20EB00 801E3FA0 8E500000 */  lw    $s0, ($s2)
/* 20EB04 801E3FA4 C42468F4 */  lwc1  $f4, %lo(D_801E68F4)($at)
/* 20EB08 801E3FA8 3C01800E */  lui   $at, 0x800e
/* 20EB0C 801E3FAC 8E090000 */  lw    $t1, ($s0)
/* 20EB10 801E3FB0 3C0A800E */  lui   $t2, 0x800e
/* 20EB14 801E3FB4 3C03800E */  lui   $v1, %hi(D_800E17D0) # $v1, 0x800e
/* 20EB18 801E3FB8 00094080 */  sll   $t0, $t1, 2
/* 20EB1C 801E3FBC 00280821 */  addu  $at, $at, $t0
/* 20EB20 801E3FC0 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 20EB24 801E3FC4 8E020000 */  lw    $v0, ($s0)
/* 20EB28 801E3FC8 246317D0 */  addiu $v1, %lo(D_800E17D0) # addiu $v1, $v1, 0x17d0
/* 20EB2C 801E3FCC 4480A000 */  mtc1  $zero, $f20
/* 20EB30 801E3FD0 00021080 */  sll   $v0, $v0, 2
/* 20EB34 801E3FD4 01425021 */  addu  $t2, $t2, $v0
/* 20EB38 801E3FD8 8D4A0D50 */  lw    $t2, 0xd50($t2)
/* 20EB3C 801E3FDC 00626821 */  addu  $t5, $v1, $v0
/* 20EB40 801E3FE0 3C01800F */  lui   $at, 0x800f
/* 20EB44 801E3FE4 000A6080 */  sll   $t4, $t2, 2
/* 20EB48 801E3FE8 006C5821 */  addu  $t3, $v1, $t4
/* 20EB4C 801E3FEC C5660000 */  lwc1  $f6, ($t3)
/* 20EB50 801E3FF0 E5A60000 */  swc1  $f6, ($t5)
/* 20EB54 801E3FF4 8E180000 */  lw    $t8, ($s0)
/* 20EB58 801E3FF8 00187880 */  sll   $t7, $t8, 2
/* 20EB5C 801E3FFC 002F0821 */  addu  $at, $at, $t7
/* 20EB60 801E4000 0C02CCFD */  jal   func_800B33F4
/* 20EB64 801E4004 E4349020 */   swc1  $f20, -0x6fe0($at)
/* 20EB68 801E4008 8E500000 */  lw    $s0, ($s2)
/* 20EB6C 801E400C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 20EB70 801E4010 44814000 */  mtc1  $at, $f8
/* 20EB74 801E4014 8E0E0000 */  lw    $t6, ($s0)
/* 20EB78 801E4018 3C01800E */  lui   $at, 0x800e
/* 20EB7C 801E401C 24180002 */  li    $t8, 2
/* 20EB80 801E4020 000EC880 */  sll   $t9, $t6, 2
/* 20EB84 801E4024 00390821 */  addu  $at, $at, $t9
/* 20EB88 801E4028 E4286A10 */  swc1  $f8, 0x6a10($at)
/* 20EB8C 801E402C 8E090000 */  lw    $t1, ($s0)
/* 20EB90 801E4030 3C01800F */  lui   $at, 0x800f
/* 20EB94 801E4034 00094080 */  sll   $t0, $t1, 2
/* 20EB98 801E4038 00280821 */  addu  $at, $at, $t0
/* 20EB9C 801E403C AC2098E0 */  sw    $zero, -0x6720($at)
/* 20EBA0 801E4040 8E0A0000 */  lw    $t2, ($s0)
/* 20EBA4 801E4044 3C01800F */  lui   $at, 0x800f
/* 20EBA8 801E4048 000A6080 */  sll   $t4, $t2, 2
/* 20EBAC 801E404C 002C0821 */  addu  $at, $at, $t4
/* 20EBB0 801E4050 AC20A1A0 */  sw    $zero, -0x5e60($at)
/* 20EBB4 801E4054 8E0B0000 */  lw    $t3, ($s0)
/* 20EBB8 801E4058 3C01800F */  lui   $at, 0x800f
/* 20EBBC 801E405C 000B6880 */  sll   $t5, $t3, 2
/* 20EBC0 801E4060 002D0821 */  addu  $at, $at, $t5
/* 20EBC4 801E4064 AC20A360 */  sw    $zero, -0x5ca0($at)
/* 20EBC8 801E4068 8E0F0000 */  lw    $t7, ($s0)
/* 20EBCC 801E406C 3C01800F */  lui   $at, 0x800f
/* 20EBD0 801E4070 000F7080 */  sll   $t6, $t7, 2
/* 20EBD4 801E4074 002E0821 */  addu  $at, $at, $t6
/* 20EBD8 801E4078 0C066E6C */  jal   func_8019B9B0_ovl15
/* 20EBDC 801E407C AC38A520 */   sw    $t8, -0x5ae0($at)
/* 20EBE0 801E4080 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 20EBE4 801E4084 44815000 */  mtc1  $at, $f10
/* 20EBE8 801E4088 8E390080 */  lw    $t9, 0x80($s1)
/* 20EBEC 801E408C 3C040001 */  lui   $a0, (0x00010091 >> 16) # lui $a0, 1
/* 20EBF0 801E4090 34840091 */  ori   $a0, (0x00010091 & 0xFFFF) # ori $a0, $a0, 0x91
/* 20EBF4 801E4094 24050023 */  li    $a1, 35
/* 20EBF8 801E4098 24060010 */  li    $a2, 16
/* 20EBFC 801E409C 0C02A619 */  jal   func_800A9864
/* 20EC00 801E40A0 E72A0010 */   swc1  $f10, 0x10($t9)
/* 20EC04 801E40A4 8E490000 */  lw    $t1, ($s2)
/* 20EC08 801E40A8 3C0C800F */  lui   $t4, 0x800f
/* 20EC0C 801E40AC 3C04801E */  lui   $a0, 0x801e
/* 20EC10 801E40B0 8D280000 */  lw    $t0, ($t1)
/* 20EC14 801E40B4 00085080 */  sll   $t2, $t0, 2
/* 20EC18 801E40B8 018A6021 */  addu  $t4, $t4, $t2
/* 20EC1C 801E40BC 8D8C9AA0 */  lw    $t4, -0x6560($t4)
/* 20EC20 801E40C0 000C5880 */  sll   $t3, $t4, 2
/* 20EC24 801E40C4 008B2021 */  addu  $a0, $a0, $t3
/* 20EC28 801E40C8 0C02A806 */  jal   func_800AA018
/* 20EC2C 801E40CC 8C846714 */   lw    $a0, 0x6714($a0)
/* 20EC30 801E40D0 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 20EC34 801E40D4 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 20EC38 801E40D8 8E0D0024 */  lw    $t5, 0x24($s0)
/* 20EC3C 801E40DC 5DA00007 */  bgtzl $t5, .L801E40FC_ovl15
/* 20EC40 801E40E0 8E500000 */   lw    $s0, ($s2)
.L801E40E4_ovl15:
/* 20EC44 801E40E4 0C002DAF */  jal   finish_current_thread
/* 20EC48 801E40E8 24040001 */   li    $a0, 1
/* 20EC4C 801E40EC 8E0F0024 */  lw    $t7, 0x24($s0)
/* 20EC50 801E40F0 19E0FFFC */  blez  $t7, .L801E40E4_ovl15
/* 20EC54 801E40F4 00000000 */   nop   
/* 20EC58 801E40F8 8E500000 */  lw    $s0, ($s2)
.L801E40FC_ovl15:
/* 20EC5C 801E40FC 3C01800F */  lui   $at, 0x800f
/* 20EC60 801E4100 24180001 */  li    $t8, 1
/* 20EC64 801E4104 8E0E0000 */  lw    $t6, ($s0)
/* 20EC68 801E4108 3C09800F */  lui   $t1, 0x800f
/* 20EC6C 801E410C 3C0F800F */  lui   $t7, 0x800f
/* 20EC70 801E4110 000EC880 */  sll   $t9, $t6, 2
/* 20EC74 801E4114 00390821 */  addu  $at, $at, $t9
/* 20EC78 801E4118 AC3898E0 */  sw    $t8, -0x6720($at)
/* 20EC7C 801E411C 8E020000 */  lw    $v0, ($s0)
/* 20EC80 801E4120 3C01801E */  lui   $at, 0x801e
/* 20EC84 801E4124 24180010 */  li    $t8, 16
/* 20EC88 801E4128 00021080 */  sll   $v0, $v0, 2
/* 20EC8C 801E412C 01224821 */  addu  $t1, $t1, $v0
/* 20EC90 801E4130 8D299C60 */  lw    $t1, -0x63a0($t1)
/* 20EC94 801E4134 27A40044 */  addiu $a0, $sp, 0x44
/* 20EC98 801E4138 00094080 */  sll   $t0, $t1, 2
/* 20EC9C 801E413C 00280821 */  addu  $at, $at, $t0
/* 20ECA0 801E4140 C4306754 */  lwc1  $f16, 0x6754($at)
/* 20ECA4 801E4144 3C01800F */  lui   $at, 0x800f
/* 20ECA8 801E4148 00220821 */  addu  $at, $at, $v0
/* 20ECAC 801E414C 4600848D */  trunc.w.s $f18, $f16
/* 20ECB0 801E4150 440C9000 */  mfc1  $t4, $f18
/* 20ECB4 801E4154 00000000 */  nop   
/* 20ECB8 801E4158 AC2CA360 */  sw    $t4, -0x5ca0($at)
/* 20ECBC 801E415C 8E0B0000 */  lw    $t3, ($s0)
/* 20ECC0 801E4160 3C01801E */  lui   $at, 0x801e
/* 20ECC4 801E4164 AFB80070 */  sw    $t8, 0x70($sp)
/* 20ECC8 801E4168 000B6880 */  sll   $t5, $t3, 2
/* 20ECCC 801E416C 01ED7821 */  addu  $t7, $t7, $t5
/* 20ECD0 801E4170 8DEF9AA0 */  lw    $t7, -0x6560($t7)
/* 20ECD4 801E4174 000F7080 */  sll   $t6, $t7, 2
/* 20ECD8 801E4178 002E0821 */  addu  $at, $at, $t6
/* 20ECDC 801E417C C4246724 */  lwc1  $f4, 0x6724($at)
/* 20ECE0 801E4180 0C067BB9 */  jal   func_8019EEE4_ovl15
/* 20ECE4 801E4184 E7A4006C */   swc1  $f4, 0x6c($sp)
/* 20ECE8 801E4188 8E500000 */  lw    $s0, ($s2)
/* 20ECEC 801E418C 3C11800E */  lui   $s1, %hi(D_800DFBD0) # $s1, 0x800e
/* 20ECF0 801E4190 2631FBD0 */  addiu $s1, %lo(D_800DFBD0) # addiu $s1, $s1, -0x430
/* 20ECF4 801E4194 8E020000 */  lw    $v0, ($s0)
/* 20ECF8 801E4198 00021080 */  sll   $v0, $v0, 2
/* 20ECFC 801E419C 0222C821 */  addu  $t9, $s1, $v0
/* 20ED00 801E41A0 8F290000 */  lw    $t1, ($t9)
/* 20ED04 801E41A4 8D280004 */  lw    $t0, 4($t1)
/* 20ED08 801E41A8 C506001C */  lwc1  $f6, 0x1c($t0)
/* 20ED0C 801E41AC 4614303C */  c.lt.s $f6, $f20
/* 20ED10 801E41B0 00000000 */  nop   
/* 20ED14 801E41B4 45020008 */  bc1fl .L801E41D8_ovl15
/* 20ED18 801E41B8 C7B00064 */   lwc1  $f16, 0x64($sp)
/* 20ED1C 801E41BC C7A80064 */  lwc1  $f8, 0x64($sp)
/* 20ED20 801E41C0 3C01800F */  lui   $at, 0x800f
/* 20ED24 801E41C4 00220821 */  addu  $at, $at, $v0
/* 20ED28 801E41C8 46004287 */  neg.s $f10, $f8
/* 20ED2C 801E41CC 10000005 */  b     .L801E41E4_ovl15
/* 20ED30 801E41D0 E42AA6E0 */   swc1  $f10, -0x5920($at)
/* 20ED34 801E41D4 C7B00064 */  lwc1  $f16, 0x64($sp)
.L801E41D8_ovl15:
/* 20ED38 801E41D8 3C01800F */  lui   $at, 0x800f
/* 20ED3C 801E41DC 00220821 */  addu  $at, $at, $v0
/* 20ED40 801E41E0 E430A6E0 */  swc1  $f16, -0x5920($at)
.L801E41E4_ovl15:
/* 20ED44 801E41E4 8E020000 */  lw    $v0, ($s0)
/* 20ED48 801E41E8 00021080 */  sll   $v0, $v0, 2
/* 20ED4C 801E41EC 02225021 */  addu  $t2, $s1, $v0
/* 20ED50 801E41F0 8D4C0000 */  lw    $t4, ($t2)
/* 20ED54 801E41F4 8D8B0004 */  lw    $t3, 4($t4)
/* 20ED58 801E41F8 C572001C */  lwc1  $f18, 0x1c($t3)
/* 20ED5C 801E41FC 4614903C */  c.lt.s $f18, $f20
/* 20ED60 801E4200 00000000 */  nop   
/* 20ED64 801E4204 45020007 */  bc1fl .L801E4224_ovl15
/* 20ED68 801E4208 C7A60068 */   lwc1  $f6, 0x68($sp)
/* 20ED6C 801E420C C7A40068 */  lwc1  $f4, 0x68($sp)
/* 20ED70 801E4210 3C01800F */  lui   $at, 0x800f
/* 20ED74 801E4214 00220821 */  addu  $at, $at, $v0
/* 20ED78 801E4218 10000006 */  b     .L801E4234_ovl15
/* 20ED7C 801E421C E424AC20 */   swc1  $f4, -0x53e0($at)
/* 20ED80 801E4220 C7A60068 */  lwc1  $f6, 0x68($sp)
.L801E4224_ovl15:
/* 20ED84 801E4224 3C01800F */  lui   $at, 0x800f
/* 20ED88 801E4228 00220821 */  addu  $at, $at, $v0
/* 20ED8C 801E422C 46003207 */  neg.s $f8, $f6
/* 20ED90 801E4230 E428AC20 */  swc1  $f8, -0x53e0($at)
.L801E4234_ovl15:
/* 20ED94 801E4234 8E0D0000 */  lw    $t5, ($s0)
/* 20ED98 801E4238 3C0E800F */  lui   $t6, 0x800f
/* 20ED9C 801E423C 3C01801E */  lui   $at, 0x801e
/* 20EDA0 801E4240 000D7880 */  sll   $t7, $t5, 2
/* 20EDA4 801E4244 01CF7021 */  addu  $t6, $t6, $t7
/* 20EDA8 801E4248 8DCE9AA0 */  lw    $t6, -0x6560($t6)
/* 20EDAC 801E424C 24190010 */  li    $t9, 16
/* 20EDB0 801E4250 AFB90070 */  sw    $t9, 0x70($sp)
/* 20EDB4 801E4254 000EC080 */  sll   $t8, $t6, 2
/* 20EDB8 801E4258 00380821 */  addu  $at, $at, $t8
/* 20EDBC 801E425C C42A6734 */  lwc1  $f10, 0x6734($at)
/* 20EDC0 801E4260 27A40044 */  addiu $a0, $sp, 0x44
/* 20EDC4 801E4264 0C067BB9 */  jal   func_8019EEE4_ovl15
/* 20EDC8 801E4268 E7AA006C */   swc1  $f10, 0x6c($sp)
/* 20EDCC 801E426C 8E500000 */  lw    $s0, ($s2)
/* 20EDD0 801E4270 C7B00064 */  lwc1  $f16, 0x64($sp)
/* 20EDD4 801E4274 3C01800F */  lui   $at, 0x800f
/* 20EDD8 801E4278 8E090000 */  lw    $t1, ($s0)
/* 20EDDC 801E427C C7B20068 */  lwc1  $f18, 0x68($sp)
/* 20EDE0 801E4280 3C0F800F */  lui   $t7, 0x800f
/* 20EDE4 801E4284 00094080 */  sll   $t0, $t1, 2
/* 20EDE8 801E4288 00280821 */  addu  $at, $at, $t0
/* 20EDEC 801E428C E430A8A0 */  swc1  $f16, -0x5760($at)
/* 20EDF0 801E4290 8E0A0000 */  lw    $t2, ($s0)
/* 20EDF4 801E4294 46009107 */  neg.s $f4, $f18
/* 20EDF8 801E4298 3C01800F */  lui   $at, 0x800f
/* 20EDFC 801E429C 000A6080 */  sll   $t4, $t2, 2
/* 20EE00 801E42A0 002C0821 */  addu  $at, $at, $t4
/* 20EE04 801E42A4 E424ADE0 */  swc1  $f4, -0x5220($at)
/* 20EE08 801E42A8 8E0B0000 */  lw    $t3, ($s0)
/* 20EE0C 801E42AC 3C01801E */  lui   $at, 0x801e
/* 20EE10 801E42B0 24180010 */  li    $t8, 16
/* 20EE14 801E42B4 000B6880 */  sll   $t5, $t3, 2
/* 20EE18 801E42B8 01ED7821 */  addu  $t7, $t7, $t5
/* 20EE1C 801E42BC 8DEF9AA0 */  lw    $t7, -0x6560($t7)
/* 20EE20 801E42C0 AFB80070 */  sw    $t8, 0x70($sp)
/* 20EE24 801E42C4 27A40044 */  addiu $a0, $sp, 0x44
/* 20EE28 801E42C8 000F7080 */  sll   $t6, $t7, 2
/* 20EE2C 801E42CC 002E0821 */  addu  $at, $at, $t6
/* 20EE30 801E42D0 C4266744 */  lwc1  $f6, 0x6744($at)
/* 20EE34 801E42D4 0C067BB9 */  jal   func_8019EEE4_ovl15
/* 20EE38 801E42D8 E7A6006C */   swc1  $f6, 0x6c($sp)
/* 20EE3C 801E42DC 8E500000 */  lw    $s0, ($s2)
/* 20EE40 801E42E0 8E020000 */  lw    $v0, ($s0)
/* 20EE44 801E42E4 00021080 */  sll   $v0, $v0, 2
/* 20EE48 801E42E8 0222C821 */  addu  $t9, $s1, $v0
/* 20EE4C 801E42EC 8F290000 */  lw    $t1, ($t9)
/* 20EE50 801E42F0 8D280004 */  lw    $t0, 4($t1)
/* 20EE54 801E42F4 C5080024 */  lwc1  $f8, 0x24($t0)
/* 20EE58 801E42F8 4614403C */  c.lt.s $f8, $f20
/* 20EE5C 801E42FC 00000000 */  nop   
/* 20EE60 801E4300 45020007 */  bc1fl .L801E4320_ovl15
/* 20EE64 801E4304 C7B00064 */   lwc1  $f16, 0x64($sp)
/* 20EE68 801E4308 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 20EE6C 801E430C 3C01800F */  lui   $at, 0x800f
/* 20EE70 801E4310 00220821 */  addu  $at, $at, $v0
/* 20EE74 801E4314 10000006 */  b     .L801E4330_ovl15
/* 20EE78 801E4318 E42AAA60 */   swc1  $f10, -0x55a0($at)
/* 20EE7C 801E431C C7B00064 */  lwc1  $f16, 0x64($sp)
.L801E4320_ovl15:
/* 20EE80 801E4320 3C01800F */  lui   $at, 0x800f
/* 20EE84 801E4324 00220821 */  addu  $at, $at, $v0
/* 20EE88 801E4328 46008487 */  neg.s $f18, $f16
/* 20EE8C 801E432C E432AA60 */  swc1  $f18, -0x55a0($at)
.L801E4330_ovl15:
/* 20EE90 801E4330 8E020000 */  lw    $v0, ($s0)
/* 20EE94 801E4334 00021080 */  sll   $v0, $v0, 2
/* 20EE98 801E4338 02225021 */  addu  $t2, $s1, $v0
/* 20EE9C 801E433C 8D4C0000 */  lw    $t4, ($t2)
/* 20EEA0 801E4340 8D8B0004 */  lw    $t3, 4($t4)
/* 20EEA4 801E4344 C5640024 */  lwc1  $f4, 0x24($t3)
/* 20EEA8 801E4348 4614203C */  c.lt.s $f4, $f20
/* 20EEAC 801E434C 00000000 */  nop   
/* 20EEB0 801E4350 45020008 */  bc1fl .L801E4374_ovl15
/* 20EEB4 801E4354 C7AA0068 */   lwc1  $f10, 0x68($sp)
/* 20EEB8 801E4358 C7A60068 */  lwc1  $f6, 0x68($sp)
/* 20EEBC 801E435C 3C01800F */  lui   $at, 0x800f
/* 20EEC0 801E4360 00220821 */  addu  $at, $at, $v0
/* 20EEC4 801E4364 46003207 */  neg.s $f8, $f6
/* 20EEC8 801E4368 10000005 */  b     .L801E4380_ovl15
/* 20EECC 801E436C E428AFA0 */   swc1  $f8, -0x5060($at)
/* 20EED0 801E4370 C7AA0068 */  lwc1  $f10, 0x68($sp)
.L801E4374_ovl15:
/* 20EED4 801E4374 3C01800F */  lui   $at, 0x800f
/* 20EED8 801E4378 00220821 */  addu  $at, $at, $v0
/* 20EEDC 801E437C E42AAFA0 */  swc1  $f10, -0x5060($at)
.L801E4380_ovl15:
/* 20EEE0 801E4380 8E020000 */  lw    $v0, ($s0)
/* 20EEE4 801E4384 3C013D80 */  li    $at, 0x3D800000 # 0.062500
/* 20EEE8 801E4388 44810000 */  mtc1  $at, $f0
/* 20EEEC 801E438C 00021080 */  sll   $v0, $v0, 2
/* 20EEF0 801E4390 02226821 */  addu  $t5, $s1, $v0
/* 20EEF4 801E4394 8DAF0000 */  lw    $t7, ($t5)
/* 20EEF8 801E4398 3C01801E */  lui   $at, %hi(D_801E68F8) # $at, 0x801e
/* 20EEFC 801E439C C43268F8 */  lwc1  $f18, %lo(D_801E68F8)($at)
/* 20EF00 801E43A0 8DEE0004 */  lw    $t6, 4($t7)
/* 20EF04 801E43A4 3C01800F */  lui   $at, 0x800f
/* 20EF08 801E43A8 00220821 */  addu  $at, $at, $v0
/* 20EF0C 801E43AC C5D00030 */  lwc1  $f16, 0x30($t6)
/* 20EF10 801E43B0 3C08800F */  lui   $t0, 0x800f
/* 20EF14 801E43B4 24040010 */  li    $a0, 16
/* 20EF18 801E43B8 46128101 */  sub.s $f4, $f16, $f18
/* 20EF1C 801E43BC 46002182 */  mul.s $f6, $f4, $f0
/* 20EF20 801E43C0 46003207 */  neg.s $f8, $f6
/* 20EF24 801E43C4 E428B160 */  swc1  $f8, -0x4ea0($at)
/* 20EF28 801E43C8 8E020000 */  lw    $v0, ($s0)
/* 20EF2C 801E43CC 3C01800F */  lui   $at, 0x800f
/* 20EF30 801E43D0 00021080 */  sll   $v0, $v0, 2
/* 20EF34 801E43D4 0222C021 */  addu  $t8, $s1, $v0
/* 20EF38 801E43D8 8F190000 */  lw    $t9, ($t8)
/* 20EF3C 801E43DC 00220821 */  addu  $at, $at, $v0
/* 20EF40 801E43E0 8F290004 */  lw    $t1, 4($t9)
/* 20EF44 801E43E4 C52A0038 */  lwc1  $f10, 0x38($t1)
/* 20EF48 801E43E8 46005402 */  mul.s $f16, $f10, $f0
/* 20EF4C 801E43EC 46008487 */  neg.s $f18, $f16
/* 20EF50 801E43F0 E432B320 */  swc1  $f18, -0x4ce0($at)
/* 20EF54 801E43F4 8E020000 */  lw    $v0, ($s0)
/* 20EF58 801E43F8 3C01801E */  lui   $at, 0x801e
/* 20EF5C 801E43FC 00021080 */  sll   $v0, $v0, 2
/* 20EF60 801E4400 01024021 */  addu  $t0, $t0, $v0
/* 20EF64 801E4404 8D089C60 */  lw    $t0, -0x63a0($t0)
/* 20EF68 801E4408 00085080 */  sll   $t2, $t0, 2
/* 20EF6C 801E440C 002A0821 */  addu  $at, $at, $t2
/* 20EF70 801E4410 C4246774 */  lwc1  $f4, 0x6774($at)
/* 20EF74 801E4414 3C01800E */  lui   $at, 0x800e
/* 20EF78 801E4418 00220821 */  addu  $at, $at, $v0
/* 20EF7C 801E441C 0C002DAF */  jal   finish_current_thread
/* 20EF80 801E4420 E4243050 */   swc1  $f4, 0x3050($at)
/* 20EF84 801E4424 0C02BB30 */  jal   func_800AECC0
/* 20EF88 801E4428 4600A306 */   mov.s $f12, $f20
/* 20EF8C 801E442C 0C02BB48 */  jal   func_800AED20
/* 20EF90 801E4430 4600A306 */   mov.s $f12, $f20
/* 20EF94 801E4434 8E500000 */  lw    $s0, ($s2)
/* 20EF98 801E4438 3C01800F */  lui   $at, 0x800f
/* 20EF9C 801E443C 27A40044 */  addiu $a0, $sp, 0x44
/* 20EFA0 801E4440 8E0C0000 */  lw    $t4, ($s0)
/* 20EFA4 801E4444 000C5880 */  sll   $t3, $t4, 2
/* 20EFA8 801E4448 002B0821 */  addu  $at, $at, $t3
/* 20EFAC 801E444C E434B160 */  swc1  $f20, -0x4ea0($at)
/* 20EFB0 801E4450 8E0D0000 */  lw    $t5, ($s0)
/* 20EFB4 801E4454 3C01800F */  lui   $at, 0x800f
/* 20EFB8 801E4458 3C0B800F */  lui   $t3, 0x800f
/* 20EFBC 801E445C 000D7880 */  sll   $t7, $t5, 2
/* 20EFC0 801E4460 002F0821 */  addu  $at, $at, $t7
/* 20EFC4 801E4464 E434B320 */  swc1  $f20, -0x4ce0($at)
/* 20EFC8 801E4468 8E0E0000 */  lw    $t6, ($s0)
/* 20EFCC 801E446C 000EC080 */  sll   $t8, $t6, 2
/* 20EFD0 801E4470 0238C821 */  addu  $t9, $s1, $t8
/* 20EFD4 801E4474 8F290000 */  lw    $t1, ($t9)
/* 20EFD8 801E4478 8D280004 */  lw    $t0, 4($t1)
/* 20EFDC 801E447C C506001C */  lwc1  $f6, 0x1c($t0)
/* 20EFE0 801E4480 E7A6006C */  swc1  $f6, 0x6c($sp)
/* 20EFE4 801E4484 8E0A0000 */  lw    $t2, ($s0)
/* 20EFE8 801E4488 000A6080 */  sll   $t4, $t2, 2
/* 20EFEC 801E448C 016C5821 */  addu  $t3, $t3, $t4
/* 20EFF0 801E4490 8D6BA360 */  lw    $t3, -0x5ca0($t3)
/* 20EFF4 801E4494 0C067BB9 */  jal   func_8019EEE4_ovl15
/* 20EFF8 801E4498 AFAB0070 */   sw    $t3, 0x70($sp)
/* 20EFFC 801E449C 8E500000 */  lw    $s0, ($s2)
/* 20F000 801E44A0 3C01800F */  lui   $at, 0x800f
/* 20F004 801E44A4 C7B20068 */  lwc1  $f18, 0x68($sp)
/* 20F008 801E44A8 8E0D0000 */  lw    $t5, ($s0)
/* 20F00C 801E44AC C7AA0068 */  lwc1  $f10, 0x68($sp)
/* 20F010 801E44B0 000D7880 */  sll   $t7, $t5, 2
/* 20F014 801E44B4 002F0821 */  addu  $at, $at, $t7
/* 20F018 801E44B8 E434A6E0 */  swc1  $f20, -0x5920($at)
/* 20F01C 801E44BC 8E020000 */  lw    $v0, ($s0)
/* 20F020 801E44C0 3C01800F */  lui   $at, 0x800f
/* 20F024 801E44C4 00021080 */  sll   $v0, $v0, 2
/* 20F028 801E44C8 02227021 */  addu  $t6, $s1, $v0
/* 20F02C 801E44CC 8DD80000 */  lw    $t8, ($t6)
/* 20F030 801E44D0 00220821 */  addu  $at, $at, $v0
/* 20F034 801E44D4 8F190004 */  lw    $t9, 4($t8)
/* 20F038 801E44D8 C728001C */  lwc1  $f8, 0x1c($t9)
/* 20F03C 801E44DC 4608A03C */  c.lt.s $f20, $f8
/* 20F040 801E44E0 00000000 */  nop   
/* 20F044 801E44E4 45000006 */  bc1f  .L801E4500_ovl15
/* 20F048 801E44E8 00000000 */   nop   
/* 20F04C 801E44EC 3C01800F */  lui   $at, 0x800f
/* 20F050 801E44F0 46005407 */  neg.s $f16, $f10
/* 20F054 801E44F4 00220821 */  addu  $at, $at, $v0
/* 20F058 801E44F8 10000002 */  b     .L801E4504_ovl15
/* 20F05C 801E44FC E430AC20 */   swc1  $f16, -0x53e0($at)
.L801E4500_ovl15:
/* 20F060 801E4500 E432AC20 */  swc1  $f18, -0x53e0($at)
.L801E4504_ovl15:
/* 20F064 801E4504 8E090000 */  lw    $t1, ($s0)
/* 20F068 801E4508 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 20F06C 801E450C 44813000 */  mtc1  $at, $f6
/* 20F070 801E4510 00094080 */  sll   $t0, $t1, 2
/* 20F074 801E4514 02285021 */  addu  $t2, $s1, $t0
/* 20F078 801E4518 8D4C0000 */  lw    $t4, ($t2)
/* 20F07C 801E451C 3C0E800F */  lui   $t6, 0x800f
/* 20F080 801E4520 27A40044 */  addiu $a0, $sp, 0x44
/* 20F084 801E4524 8D8B0004 */  lw    $t3, 4($t4)
/* 20F088 801E4528 C5640020 */  lwc1  $f4, 0x20($t3)
/* 20F08C 801E452C 46062201 */  sub.s $f8, $f4, $f6
/* 20F090 801E4530 E7A8006C */  swc1  $f8, 0x6c($sp)
/* 20F094 801E4534 8E0D0000 */  lw    $t5, ($s0)
/* 20F098 801E4538 000D7880 */  sll   $t7, $t5, 2
/* 20F09C 801E453C 01CF7021 */  addu  $t6, $t6, $t7
/* 20F0A0 801E4540 8DCEA360 */  lw    $t6, -0x5ca0($t6)
/* 20F0A4 801E4544 0C067BB9 */  jal   func_8019EEE4_ovl15
/* 20F0A8 801E4548 AFAE0070 */   sw    $t6, 0x70($sp)
/* 20F0AC 801E454C 8E500000 */  lw    $s0, ($s2)
/* 20F0B0 801E4550 3C01800F */  lui   $at, 0x800f
/* 20F0B4 801E4554 C7A40068 */  lwc1  $f4, 0x68($sp)
/* 20F0B8 801E4558 8E180000 */  lw    $t8, ($s0)
/* 20F0BC 801E455C C7B00068 */  lwc1  $f16, 0x68($sp)
/* 20F0C0 801E4560 0018C880 */  sll   $t9, $t8, 2
/* 20F0C4 801E4564 00390821 */  addu  $at, $at, $t9
/* 20F0C8 801E4568 E434A8A0 */  swc1  $f20, -0x5760($at)
/* 20F0CC 801E456C 8E020000 */  lw    $v0, ($s0)
/* 20F0D0 801E4570 3C01800F */  lui   $at, 0x800f
/* 20F0D4 801E4574 00021080 */  sll   $v0, $v0, 2
/* 20F0D8 801E4578 02224821 */  addu  $t1, $s1, $v0
/* 20F0DC 801E457C 8D280000 */  lw    $t0, ($t1)
/* 20F0E0 801E4580 00220821 */  addu  $at, $at, $v0
/* 20F0E4 801E4584 8D0A0004 */  lw    $t2, 4($t0)
/* 20F0E8 801E4588 C54A0020 */  lwc1  $f10, 0x20($t2)
/* 20F0EC 801E458C 460AA03C */  c.lt.s $f20, $f10
/* 20F0F0 801E4590 00000000 */  nop   
/* 20F0F4 801E4594 45000006 */  bc1f  .L801E45B0_ovl15
/* 20F0F8 801E4598 00000000 */   nop   
/* 20F0FC 801E459C 3C01800F */  lui   $at, 0x800f
/* 20F100 801E45A0 46008487 */  neg.s $f18, $f16
/* 20F104 801E45A4 00220821 */  addu  $at, $at, $v0
/* 20F108 801E45A8 10000002 */  b     .L801E45B4_ovl15
/* 20F10C 801E45AC E432ADE0 */   swc1  $f18, -0x5220($at)
.L801E45B0_ovl15:
/* 20F110 801E45B0 E424ADE0 */  swc1  $f4, -0x5220($at)
.L801E45B4_ovl15:
/* 20F114 801E45B4 8E0C0000 */  lw    $t4, ($s0)
/* 20F118 801E45B8 3C09800F */  lui   $t1, 0x800f
/* 20F11C 801E45BC 27A40044 */  addiu $a0, $sp, 0x44
/* 20F120 801E45C0 000C5880 */  sll   $t3, $t4, 2
/* 20F124 801E45C4 022B6821 */  addu  $t5, $s1, $t3
/* 20F128 801E45C8 8DAF0000 */  lw    $t7, ($t5)
/* 20F12C 801E45CC 8DEE0004 */  lw    $t6, 4($t7)
/* 20F130 801E45D0 C5C60024 */  lwc1  $f6, 0x24($t6)
/* 20F134 801E45D4 E7A6006C */  swc1  $f6, 0x6c($sp)
/* 20F138 801E45D8 8E180000 */  lw    $t8, ($s0)
/* 20F13C 801E45DC 0018C880 */  sll   $t9, $t8, 2
/* 20F140 801E45E0 01394821 */  addu  $t1, $t1, $t9
/* 20F144 801E45E4 8D29A360 */  lw    $t1, -0x5ca0($t1)
/* 20F148 801E45E8 0C067BB9 */  jal   func_8019EEE4_ovl15
/* 20F14C 801E45EC AFA90070 */   sw    $t1, 0x70($sp)
/* 20F150 801E45F0 8E500000 */  lw    $s0, ($s2)
/* 20F154 801E45F4 3C01800F */  lui   $at, 0x800f
/* 20F158 801E45F8 C7B20068 */  lwc1  $f18, 0x68($sp)
/* 20F15C 801E45FC 8E080000 */  lw    $t0, ($s0)
/* 20F160 801E4600 C7AA0068 */  lwc1  $f10, 0x68($sp)
/* 20F164 801E4604 00085080 */  sll   $t2, $t0, 2
/* 20F168 801E4608 002A0821 */  addu  $at, $at, $t2
/* 20F16C 801E460C E434AA60 */  swc1  $f20, -0x55a0($at)
/* 20F170 801E4610 8E020000 */  lw    $v0, ($s0)
/* 20F174 801E4614 3C01800F */  lui   $at, 0x800f
/* 20F178 801E4618 00021080 */  sll   $v0, $v0, 2
/* 20F17C 801E461C 02226021 */  addu  $t4, $s1, $v0
/* 20F180 801E4620 8D8B0000 */  lw    $t3, ($t4)
/* 20F184 801E4624 00220821 */  addu  $at, $at, $v0
/* 20F188 801E4628 8D6D0004 */  lw    $t5, 4($t3)
/* 20F18C 801E462C C5A80024 */  lwc1  $f8, 0x24($t5)
/* 20F190 801E4630 4608A03C */  c.lt.s $f20, $f8
/* 20F194 801E4634 00000000 */  nop   
/* 20F198 801E4638 45000006 */  bc1f  .L801E4654_ovl15
/* 20F19C 801E463C 00000000 */   nop   
/* 20F1A0 801E4640 3C01800F */  lui   $at, 0x800f
/* 20F1A4 801E4644 46005407 */  neg.s $f16, $f10
/* 20F1A8 801E4648 00220821 */  addu  $at, $at, $v0
/* 20F1AC 801E464C 10000002 */  b     .L801E4658_ovl15
/* 20F1B0 801E4650 E430AFA0 */   swc1  $f16, -0x5060($at)
.L801E4654_ovl15:
/* 20F1B4 801E4654 E432AFA0 */  swc1  $f18, -0x5060($at)
.L801E4658_ovl15:
/* 20F1B8 801E4658 8E020000 */  lw    $v0, ($s0)
/* 20F1BC 801E465C 3C0F800F */  lui   $t7, 0x800f
/* 20F1C0 801E4660 3C01801E */  lui   $at, 0x801e
/* 20F1C4 801E4664 00021080 */  sll   $v0, $v0, 2
/* 20F1C8 801E4668 01E27821 */  addu  $t7, $t7, $v0
/* 20F1CC 801E466C 8DEF9C60 */  lw    $t7, -0x63a0($t7)
/* 20F1D0 801E4670 3C18800F */  lui   $t8, 0x800f
/* 20F1D4 801E4674 3C04800F */  lui   $a0, 0x800f
/* 20F1D8 801E4678 000F7080 */  sll   $t6, $t7, 2
/* 20F1DC 801E467C 002E0821 */  addu  $at, $at, $t6
/* 20F1E0 801E4680 C4246764 */  lwc1  $f4, 0x6764($at)
/* 20F1E4 801E4684 3C01800F */  lui   $at, 0x800f
/* 20F1E8 801E4688 00220821 */  addu  $at, $at, $v0
/* 20F1EC 801E468C E424B160 */  swc1  $f4, -0x4ea0($at)
/* 20F1F0 801E4690 8E020000 */  lw    $v0, ($s0)
/* 20F1F4 801E4694 3C01801E */  lui   $at, 0x801e
/* 20F1F8 801E4698 00021080 */  sll   $v0, $v0, 2
/* 20F1FC 801E469C 0302C021 */  addu  $t8, $t8, $v0
/* 20F200 801E46A0 8F189C60 */  lw    $t8, -0x63a0($t8)
/* 20F204 801E46A4 0018C880 */  sll   $t9, $t8, 2
/* 20F208 801E46A8 00390821 */  addu  $at, $at, $t9
/* 20F20C 801E46AC C4266774 */  lwc1  $f6, 0x6774($at)
/* 20F210 801E46B0 3C01800E */  lui   $at, 0x800e
/* 20F214 801E46B4 00220821 */  addu  $at, $at, $v0
/* 20F218 801E46B8 E4263050 */  swc1  $f6, 0x3050($at)
/* 20F21C 801E46BC 8E090000 */  lw    $t1, ($s0)
/* 20F220 801E46C0 00094080 */  sll   $t0, $t1, 2
/* 20F224 801E46C4 00882021 */  addu  $a0, $a0, $t0
/* 20F228 801E46C8 0C002DAF */  jal   finish_current_thread
/* 20F22C 801E46CC 8C84A360 */   lw    $a0, -0x5ca0($a0)
/* 20F230 801E46D0 8E500000 */  lw    $s0, ($s2)
/* 20F234 801E46D4 3C03800E */  lui   $v1, %hi(D_800E3590) # $v1, 0x800e
/* 20F238 801E46D8 24633590 */  addiu $v1, %lo(D_800E3590) # addiu $v1, $v1, 0x3590
/* 20F23C 801E46DC 8E0A0000 */  lw    $t2, ($s0)
/* 20F240 801E46E0 3C01800E */  lui   $at, 0x800e
/* 20F244 801E46E4 2418FF9C */  li    $t8, -100
/* 20F248 801E46E8 000A6080 */  sll   $t4, $t2, 2
/* 20F24C 801E46EC 006C5821 */  addu  $t3, $v1, $t4
/* 20F250 801E46F0 E5740000 */  swc1  $f20, ($t3)
/* 20F254 801E46F4 8E020000 */  lw    $v0, ($s0)
/* 20F258 801E46F8 00021080 */  sll   $v0, $v0, 2
/* 20F25C 801E46FC 00626821 */  addu  $t5, $v1, $v0
/* 20F260 801E4700 C5A80000 */  lwc1  $f8, ($t5)
/* 20F264 801E4704 00220821 */  addu  $at, $at, $v0
/* 20F268 801E4708 E4283050 */  swc1  $f8, 0x3050($at)
/* 20F26C 801E470C 8E0F0000 */  lw    $t7, ($s0)
/* 20F270 801E4710 3C01801E */  lui   $at, %hi(D_801E68FC) # $at, 0x801e
/* 20F274 801E4714 C42A68FC */  lwc1  $f10, %lo(D_801E68FC)($at)
/* 20F278 801E4718 3C01800E */  lui   $at, 0x800e
/* 20F27C 801E471C 000F7080 */  sll   $t6, $t7, 2
/* 20F280 801E4720 002E0821 */  addu  $at, $at, $t6
/* 20F284 801E4724 E42A3AD0 */  swc1  $f10, 0x3ad0($at)
/* 20F288 801E4728 8E190000 */  lw    $t9, ($s0)
/* 20F28C 801E472C 3C01800F */  lui   $at, 0x800f
/* 20F290 801E4730 3C0F800F */  lui   $t7, 0x800f
/* 20F294 801E4734 00194880 */  sll   $t1, $t9, 2
/* 20F298 801E4738 00290821 */  addu  $at, $at, $t1
/* 20F29C 801E473C AC38A360 */  sw    $t8, -0x5ca0($at)
/* 20F2A0 801E4740 8E020000 */  lw    $v0, ($s0)
/* 20F2A4 801E4744 3C01800F */  lui   $at, 0x800f
/* 20F2A8 801E4748 00021080 */  sll   $v0, $v0, 2
/* 20F2AC 801E474C 02224021 */  addu  $t0, $s1, $v0
/* 20F2B0 801E4750 8D0A0000 */  lw    $t2, ($t0)
/* 20F2B4 801E4754 00220821 */  addu  $at, $at, $v0
/* 20F2B8 801E4758 8D4C0004 */  lw    $t4, 4($t2)
/* 20F2BC 801E475C C5900030 */  lwc1  $f16, 0x30($t4)
/* 20F2C0 801E4760 E430B160 */  swc1  $f16, -0x4ea0($at)
/* 20F2C4 801E4764 8E0B0000 */  lw    $t3, ($s0)
/* 20F2C8 801E4768 3C01800F */  lui   $at, 0x800f
/* 20F2CC 801E476C 000B6880 */  sll   $t5, $t3, 2
/* 20F2D0 801E4770 002D0821 */  addu  $at, $at, $t5
/* 20F2D4 801E4774 E434B320 */  swc1  $f20, -0x4ce0($at)
/* 20F2D8 801E4778 8E020000 */  lw    $v0, ($s0)
/* 20F2DC 801E477C 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 20F2E0 801E4780 00021080 */  sll   $v0, $v0, 2
/* 20F2E4 801E4784 01E27821 */  addu  $t7, $t7, $v0
/* 20F2E8 801E4788 8DEF9E20 */  lw    $t7, -0x61e0($t7)
/* 20F2EC 801E478C 51E00041 */  beql  $t7, $zero, .L801E4894_ovl15
/* 20F2F0 801E4790 44815000 */   mtc1  $at, $f10
/* 20F2F4 801E4794 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 20F2F8 801E4798 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 20F2FC 801E479C 0C02BB30 */  jal   func_800AECC0
/* 20F300 801E47A0 C60C0000 */   lwc1  $f12, ($s0)
/* 20F304 801E47A4 0C02BB48 */  jal   func_800AED20
/* 20F308 801E47A8 C60C0000 */   lwc1  $f12, ($s0)
/* 20F30C 801E47AC 8E590000 */  lw    $t9, ($s2)
/* 20F310 801E47B0 3C01800F */  lui   $at, 0x800f
/* 20F314 801E47B4 240E0001 */  li    $t6, 1
/* 20F318 801E47B8 8F380000 */  lw    $t8, ($t9)
/* 20F31C 801E47BC 24040197 */  li    $a0, 407
/* 20F320 801E47C0 00184880 */  sll   $t1, $t8, 2
/* 20F324 801E47C4 00290821 */  addu  $at, $at, $t1
/* 20F328 801E47C8 0C029D9E */  jal   play_sound
/* 20F32C 801E47CC AC2EA1A0 */   sw    $t6, -0x5e60($at)
/* 20F330 801E47D0 3C040001 */  lui   $a0, (0x0001052F >> 16) # lui $a0, 1
/* 20F334 801E47D4 3484052F */  ori   $a0, (0x0001052F & 0xFFFF) # ori $a0, $a0, 0x52f
/* 20F338 801E47D8 0C02A831 */  jal   func_800AA0C4
/* 20F33C 801E47DC 3C053F80 */   lui   $a1, 0x3f80
/* 20F340 801E47E0 8E500000 */  lw    $s0, ($s2)
/* 20F344 801E47E4 3C01800F */  lui   $at, 0x800f
/* 20F348 801E47E8 8E080000 */  lw    $t0, ($s0)
/* 20F34C 801E47EC 00085080 */  sll   $t2, $t0, 2
/* 20F350 801E47F0 002A0821 */  addu  $at, $at, $t2
/* 20F354 801E47F4 AC20A1A0 */  sw    $zero, -0x5e60($at)
/* 20F358 801E47F8 8E0C0000 */  lw    $t4, ($s0)
/* 20F35C 801E47FC 000C5880 */  sll   $t3, $t4, 2
/* 20F360 801E4800 022B6821 */  addu  $t5, $s1, $t3
/* 20F364 801E4804 8DAF0000 */  lw    $t7, ($t5)
/* 20F368 801E4808 8DF90004 */  lw    $t9, 4($t7)
/* 20F36C 801E480C 0C00D604 */  jal   cosf
/* 20F370 801E4810 C72C0030 */   lwc1  $f12, 0x30($t9)
/* 20F374 801E4814 8E500000 */  lw    $s0, ($s2)
/* 20F378 801E4818 3C01C220 */  li    $at, 0xC2200000 # -40.000000
/* 20F37C 801E481C 44812000 */  mtc1  $at, $f4
/* 20F380 801E4820 8E020000 */  lw    $v0, ($s0)
/* 20F384 801E4824 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 20F388 801E4828 3C0B800E */  lui   $t3, 0x800e
/* 20F38C 801E482C 00021080 */  sll   $v0, $v0, 2
/* 20F390 801E4830 0222C021 */  addu  $t8, $s1, $v0
/* 20F394 801E4834 8F0E0000 */  lw    $t6, ($t8)
/* 20F398 801E4838 00220821 */  addu  $at, $at, $v0
/* 20F39C 801E483C 3C08801E */  lui   $t0, %hi(D_801DA070) # $t0, 0x801e
/* 20F3A0 801E4840 8DC90008 */  lw    $t1, 8($t6)
/* 20F3A4 801E4844 2508A070 */  addiu $t0, %lo(D_801DA070) # addiu $t0, $t0, -0x5f90
/* 20F3A8 801E4848 3C040001 */  lui   $a0, (0x00010530 >> 16) # lui $a0, 1
/* 20F3AC 801E484C C5320044 */  lwc1  $f18, 0x44($t1)
/* 20F3B0 801E4850 34840530 */  ori   $a0, (0x00010530 & 0xFFFF) # ori $a0, $a0, 0x530
/* 20F3B4 801E4854 46049182 */  mul.s $f6, $f18, $f4
/* 20F3B8 801E4858 00000000 */  nop   
/* 20F3BC 801E485C 46003202 */  mul.s $f8, $f6, $f0
/* 20F3C0 801E4860 E4282790 */  swc1  $f8, 0x2790($at)
/* 20F3C4 801E4864 8E0A0000 */  lw    $t2, ($s0)
/* 20F3C8 801E4868 000A6080 */  sll   $t4, $t2, 2
/* 20F3CC 801E486C 016C5821 */  addu  $t3, $t3, $t4
/* 20F3D0 801E4870 8D6B1B50 */  lw    $t3, 0x1b50($t3)
/* 20F3D4 801E4874 0C02A806 */  jal   func_800AA018
/* 20F3D8 801E4878 AD68008C */   sw    $t0, 0x8c($t3)
/* 20F3DC 801E487C 0C002DAF */  jal   finish_current_thread
/* 20F3E0 801E4880 2404003C */   li    $a0, 60
/* 20F3E4 801E4884 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 20F3E8 801E4888 10000005 */  b     .L801E48A0_ovl15
/* 20F3EC 801E488C 8E10A7C4 */   lw    $s0, %lo(D_8004A7C4)($s0)
/* 20F3F0 801E4890 44815000 */  mtc1  $at, $f10
.L801E4894_ovl15:
/* 20F3F4 801E4894 3C01800E */  lui   $at, 0x800e
/* 20F3F8 801E4898 00220821 */  addu  $at, $at, $v0
/* 20F3FC 801E489C E42A2790 */  swc1  $f10, 0x2790($at)
.L801E48A0_ovl15:
/* 20F400 801E48A0 8E0F0000 */  lw    $t7, ($s0)
/* 20F404 801E48A4 3C18800E */  lui   $t8, 0x800e
/* 20F408 801E48A8 3C0D801D */  lui   $t5, %hi(D_801D7B60) # $t5, 0x801d
/* 20F40C 801E48AC 000FC880 */  sll   $t9, $t7, 2
/* 20F410 801E48B0 0319C021 */  addu  $t8, $t8, $t9
/* 20F414 801E48B4 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 20F418 801E48B8 25AD7B60 */  addiu $t5, %lo(D_801D7B60) # addiu $t5, $t5, 0x7b60
/* 20F41C 801E48BC AF0D0094 */  sw    $t5, 0x94($t8)
/* 20F420 801E48C0 0C06B3E1 */  jal   D_801ACF84_ovl15
/* 20F424 801E48C4 8FA40078 */   lw    $a0, 0x78($sp)
/* 20F428 801E48C8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 20F42C 801E48CC D7B40018 */  ldc1  $f20, 0x18($sp)
/* 20F430 801E48D0 8FB00020 */  lw    $s0, 0x20($sp)
/* 20F434 801E48D4 8FB10024 */  lw    $s1, 0x24($sp)
/* 20F438 801E48D8 8FB20028 */  lw    $s2, 0x28($sp)
/* 20F43C 801E48DC 03E00008 */  jr    $ra
/* 20F440 801E48E0 27BD0078 */   addiu $sp, $sp, 0x78

/* 20F444 801E48E4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 20F448 801E48E8 254AA7C4 */  addiu $t2, %lo(D_8004A7C4) # addiu $t2, $t2, -0x583c
/* 20F44C 801E48EC 8D460000 */  lw    $a2, ($t2)
/* 20F450 801E48F0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 20F454 801E48F4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20F458 801E48F8 AFA40040 */  sw    $a0, 0x40($sp)
/* 20F45C 801E48FC 8CCE0000 */  lw    $t6, ($a2)
/* 20F460 801E4900 3C18800F */  lui   $t8, %hi(D_800E9560) # $t8, 0x800f
/* 20F464 801E4904 27189560 */  addiu $t8, %lo(D_800E9560) # addiu $t8, $t8, -0x6aa0
/* 20F468 801E4908 000E7880 */  sll   $t7, $t6, 2
/* 20F46C 801E490C 01F81021 */  addu  $v0, $t7, $t8
/* 20F470 801E4910 8C590000 */  lw    $t9, ($v0)
/* 20F474 801E4914 3C0F800D */  lui   $t7, %hi(D_800D70BC) # $t7, 0x800d
/* 20F478 801E4918 272E0001 */  addiu $t6, $t9, 1
/* 20F47C 801E491C AC4E0000 */  sw    $t6, ($v0)
/* 20F480 801E4920 8DEF70BC */  lw    $t7, %lo(D_800D70BC)($t7)
/* 20F484 801E4924 55E00025 */  bnezl $t7, .L801E49BC_ovl15
/* 20F488 801E4928 8CC30000 */   lw    $v1, ($a2)
/* 20F48C 801E492C 8CC30000 */  lw    $v1, ($a2)
/* 20F490 801E4930 3C02800E */  lui   $v0, %hi(D_800E0D50) # $v0, 0x800e
/* 20F494 801E4934 24420D50 */  addiu $v0, %lo(D_800E0D50) # addiu $v0, $v0, 0xd50
/* 20F498 801E4938 00031880 */  sll   $v1, $v1, 2
/* 20F49C 801E493C 0043C021 */  addu  $t8, $v0, $v1
/* 20F4A0 801E4940 8F190000 */  lw    $t9, ($t8)
/* 20F4A4 801E4944 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosXArray) # $t7, 0x800e
/* 20F4A8 801E4948 25EF25D0 */  addiu $t7, %lo(gEntitiesNextPosXArray) # addiu $t7, $t7, 0x25d0
/* 20F4AC 801E494C 00197080 */  sll   $t6, $t9, 2
/* 20F4B0 801E4950 01CFC021 */  addu  $t8, $t6, $t7
/* 20F4B4 801E4954 C7040000 */  lwc1  $f4, ($t8)
/* 20F4B8 801E4958 006FC821 */  addu  $t9, $v1, $t7
/* 20F4BC 801E495C E7240000 */  swc1  $f4, ($t9)
/* 20F4C0 801E4960 8CC30000 */  lw    $v1, ($a2)
/* 20F4C4 801E4964 3C19800E */  lui   $t9, %hi(gEntitiesNextPosYArray) # $t9, 0x800e
/* 20F4C8 801E4968 27392790 */  addiu $t9, %lo(gEntitiesNextPosYArray) # addiu $t9, $t9, 0x2790
/* 20F4CC 801E496C 00031880 */  sll   $v1, $v1, 2
/* 20F4D0 801E4970 00437021 */  addu  $t6, $v0, $v1
/* 20F4D4 801E4974 8DD80000 */  lw    $t8, ($t6)
/* 20F4D8 801E4978 00187880 */  sll   $t7, $t8, 2
/* 20F4DC 801E497C 01F97021 */  addu  $t6, $t7, $t9
/* 20F4E0 801E4980 C5C60000 */  lwc1  $f6, ($t6)
/* 20F4E4 801E4984 0079C021 */  addu  $t8, $v1, $t9
/* 20F4E8 801E4988 E7060000 */  swc1  $f6, ($t8)
/* 20F4EC 801E498C 8CC30000 */  lw    $v1, ($a2)
/* 20F4F0 801E4990 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 20F4F4 801E4994 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 20F4F8 801E4998 00031880 */  sll   $v1, $v1, 2
/* 20F4FC 801E499C 00437821 */  addu  $t7, $v0, $v1
/* 20F500 801E49A0 8DEE0000 */  lw    $t6, ($t7)
/* 20F504 801E49A4 000EC880 */  sll   $t9, $t6, 2
/* 20F508 801E49A8 03387821 */  addu  $t7, $t9, $t8
/* 20F50C 801E49AC C5E80000 */  lwc1  $f8, ($t7)
/* 20F510 801E49B0 00787021 */  addu  $t6, $v1, $t8
/* 20F514 801E49B4 E5C80000 */  swc1  $f8, ($t6)
/* 20F518 801E49B8 8CC30000 */  lw    $v1, ($a2)
.L801E49BC_ovl15:
/* 20F51C 801E49BC 3C0B800F */  lui   $t3, %hi(D_800EA360) # $t3, 0x800f
/* 20F520 801E49C0 256BA360 */  addiu $t3, %lo(D_800EA360) # addiu $t3, $t3, -0x5ca0
/* 20F524 801E49C4 00031880 */  sll   $v1, $v1, 2
/* 20F528 801E49C8 0163C821 */  addu  $t9, $t3, $v1
/* 20F52C 801E49CC 8F220000 */  lw    $v0, ($t9)
/* 20F530 801E49D0 1040009E */  beqz  $v0, .L801E4C4C_ovl15
/* 20F534 801E49D4 00000000 */   nop   
/* 20F538 801E49D8 1840006C */  blez  $v0, .L801E4B8C_ovl15
/* 20F53C 801E49DC 3C09800E */   lui   $t1, 0x800e
/* 20F540 801E49E0 3C0C800F */  lui   $t4, %hi(D_800EA6E0) # $t4, 0x800f
/* 20F544 801E49E4 258CA6E0 */  addiu $t4, %lo(D_800EA6E0) # addiu $t4, $t4, -0x5920
/* 20F548 801E49E8 3C01800F */  lui   $at, 0x800f
/* 20F54C 801E49EC 00230821 */  addu  $at, $at, $v1
/* 20F550 801E49F0 01832821 */  addu  $a1, $t4, $v1
/* 20F554 801E49F4 C4AA0000 */  lwc1  $f10, ($a1)
/* 20F558 801E49F8 C430AC20 */  lwc1  $f16, -0x53e0($at)
/* 20F55C 801E49FC 3C0D800F */  lui   $t5, %hi(D_800EA8A0) # $t5, 0x800f
/* 20F560 801E4A00 25ADA8A0 */  addiu $t5, %lo(D_800EA8A0) # addiu $t5, $t5, -0x5760
/* 20F564 801E4A04 46105480 */  add.s $f18, $f10, $f16
/* 20F568 801E4A08 3C01800F */  lui   $at, 0x800f
/* 20F56C 801E4A0C 3C1F800F */  lui   $ra, %hi(D_800EAA60) # $ra, 0x800f
/* 20F570 801E4A10 27FFAA60 */  addiu $ra, %lo(D_800EAA60) # addiu $ra, $ra, -0x55a0
/* 20F574 801E4A14 E4B20000 */  swc1  $f18, ($a1)
/* 20F578 801E4A18 8CC30000 */  lw    $v1, ($a2)
/* 20F57C 801E4A1C 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 20F580 801E4A20 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 20F584 801E4A24 00031880 */  sll   $v1, $v1, 2
/* 20F588 801E4A28 01A33821 */  addu  $a3, $t5, $v1
/* 20F58C 801E4A2C 00230821 */  addu  $at, $at, $v1
/* 20F590 801E4A30 C426ADE0 */  lwc1  $f6, -0x5220($at)
/* 20F594 801E4A34 C4E40000 */  lwc1  $f4, ($a3)
/* 20F598 801E4A38 3C01800F */  lui   $at, 0x800f
/* 20F59C 801E4A3C 46062200 */  add.s $f8, $f4, $f6
/* 20F5A0 801E4A40 E4E80000 */  swc1  $f8, ($a3)
/* 20F5A4 801E4A44 8CC30000 */  lw    $v1, ($a2)
/* 20F5A8 801E4A48 00031880 */  sll   $v1, $v1, 2
/* 20F5AC 801E4A4C 03E34021 */  addu  $t0, $ra, $v1
/* 20F5B0 801E4A50 00230821 */  addu  $at, $at, $v1
/* 20F5B4 801E4A54 C430AFA0 */  lwc1  $f16, -0x5060($at)
/* 20F5B8 801E4A58 C50A0000 */  lwc1  $f10, ($t0)
/* 20F5BC 801E4A5C 3C01800F */  lui   $at, 0x800f
/* 20F5C0 801E4A60 46105480 */  add.s $f18, $f10, $f16
/* 20F5C4 801E4A64 E5120000 */  swc1  $f18, ($t0)
/* 20F5C8 801E4A68 8CC30000 */  lw    $v1, ($a2)
/* 20F5CC 801E4A6C 00031880 */  sll   $v1, $v1, 2
/* 20F5D0 801E4A70 01237821 */  addu  $t7, $t1, $v1
/* 20F5D4 801E4A74 8DF80000 */  lw    $t8, ($t7)
/* 20F5D8 801E4A78 01837021 */  addu  $t6, $t4, $v1
/* 20F5DC 801E4A7C C5C60000 */  lwc1  $f6, ($t6)
/* 20F5E0 801E4A80 8F020004 */  lw    $v0, 4($t8)
/* 20F5E4 801E4A84 C444001C */  lwc1  $f4, 0x1c($v0)
/* 20F5E8 801E4A88 46062200 */  add.s $f8, $f4, $f6
/* 20F5EC 801E4A8C E448001C */  swc1  $f8, 0x1c($v0)
/* 20F5F0 801E4A90 8D590000 */  lw    $t9, ($t2)
/* 20F5F4 801E4A94 8F230000 */  lw    $v1, ($t9)
/* 20F5F8 801E4A98 00031880 */  sll   $v1, $v1, 2
/* 20F5FC 801E4A9C 01237821 */  addu  $t7, $t1, $v1
/* 20F600 801E4AA0 8DF80000 */  lw    $t8, ($t7)
/* 20F604 801E4AA4 01A37021 */  addu  $t6, $t5, $v1
/* 20F608 801E4AA8 C5D00000 */  lwc1  $f16, ($t6)
/* 20F60C 801E4AAC 8F020004 */  lw    $v0, 4($t8)
/* 20F610 801E4AB0 C44A0020 */  lwc1  $f10, 0x20($v0)
/* 20F614 801E4AB4 46105480 */  add.s $f18, $f10, $f16
/* 20F618 801E4AB8 E4520020 */  swc1  $f18, 0x20($v0)
/* 20F61C 801E4ABC 8D590000 */  lw    $t9, ($t2)
/* 20F620 801E4AC0 8F230000 */  lw    $v1, ($t9)
/* 20F624 801E4AC4 00031880 */  sll   $v1, $v1, 2
/* 20F628 801E4AC8 01237821 */  addu  $t7, $t1, $v1
/* 20F62C 801E4ACC 8DF80000 */  lw    $t8, ($t7)
/* 20F630 801E4AD0 03E37021 */  addu  $t6, $ra, $v1
/* 20F634 801E4AD4 C5C60000 */  lwc1  $f6, ($t6)
/* 20F638 801E4AD8 8F020004 */  lw    $v0, 4($t8)
/* 20F63C 801E4ADC C4440024 */  lwc1  $f4, 0x24($v0)
/* 20F640 801E4AE0 46062200 */  add.s $f8, $f4, $f6
/* 20F644 801E4AE4 E4480024 */  swc1  $f8, 0x24($v0)
/* 20F648 801E4AE8 8D590000 */  lw    $t9, ($t2)
/* 20F64C 801E4AEC 8F230000 */  lw    $v1, ($t9)
/* 20F650 801E4AF0 00031880 */  sll   $v1, $v1, 2
/* 20F654 801E4AF4 01237821 */  addu  $t7, $t1, $v1
/* 20F658 801E4AF8 8DF80000 */  lw    $t8, ($t7)
/* 20F65C 801E4AFC 00230821 */  addu  $at, $at, $v1
/* 20F660 801E4B00 C430B160 */  lwc1  $f16, -0x4ea0($at)
/* 20F664 801E4B04 8F020004 */  lw    $v0, 4($t8)
/* 20F668 801E4B08 3C01800F */  lui   $at, 0x800f
/* 20F66C 801E4B0C C44A0030 */  lwc1  $f10, 0x30($v0)
/* 20F670 801E4B10 46105480 */  add.s $f18, $f10, $f16
/* 20F674 801E4B14 E4520030 */  swc1  $f18, 0x30($v0)
/* 20F678 801E4B18 8D4E0000 */  lw    $t6, ($t2)
/* 20F67C 801E4B1C 8DC30000 */  lw    $v1, ($t6)
/* 20F680 801E4B20 00031880 */  sll   $v1, $v1, 2
/* 20F684 801E4B24 0123C821 */  addu  $t9, $t1, $v1
/* 20F688 801E4B28 8F2F0000 */  lw    $t7, ($t9)
/* 20F68C 801E4B2C 00230821 */  addu  $at, $at, $v1
/* 20F690 801E4B30 C426B320 */  lwc1  $f6, -0x4ce0($at)
/* 20F694 801E4B34 8DE20004 */  lw    $v0, 4($t7)
/* 20F698 801E4B38 C4440038 */  lwc1  $f4, 0x38($v0)
/* 20F69C 801E4B3C 46062200 */  add.s $f8, $f4, $f6
/* 20F6A0 801E4B40 E4480038 */  swc1  $f8, 0x38($v0)
/* 20F6A4 801E4B44 8D460000 */  lw    $a2, ($t2)
/* 20F6A8 801E4B48 8CD80000 */  lw    $t8, ($a2)
/* 20F6AC 801E4B4C 00187080 */  sll   $t6, $t8, 2
/* 20F6B0 801E4B50 016E2021 */  addu  $a0, $t3, $t6
/* 20F6B4 801E4B54 8C990000 */  lw    $t9, ($a0)
/* 20F6B8 801E4B58 240EFF9C */  li    $t6, -100
/* 20F6BC 801E4B5C 272FFFFF */  addiu $t7, $t9, -1
/* 20F6C0 801E4B60 AC8F0000 */  sw    $t7, ($a0)
/* 20F6C4 801E4B64 8CC30000 */  lw    $v1, ($a2)
/* 20F6C8 801E4B68 00031880 */  sll   $v1, $v1, 2
/* 20F6CC 801E4B6C 01632021 */  addu  $a0, $t3, $v1
/* 20F6D0 801E4B70 8C980000 */  lw    $t8, ($a0)
/* 20F6D4 801E4B74 17000035 */  bnez  $t8, .L801E4C4C_ovl15
/* 20F6D8 801E4B78 00000000 */   nop   
/* 20F6DC 801E4B7C AC8E0000 */  sw    $t6, ($a0)
/* 20F6E0 801E4B80 8CC30000 */  lw    $v1, ($a2)
/* 20F6E4 801E4B84 10000031 */  b     .L801E4C4C_ovl15
/* 20F6E8 801E4B88 00031880 */   sll   $v1, $v1, 2
.L801E4B8C_ovl15:
/* 20F6EC 801E4B8C 2529FBD0 */  addiu $t1, $t1, -0x430
/* 20F6F0 801E4B90 0123C821 */  addu  $t9, $t1, $v1
/* 20F6F4 801E4B94 8F2F0000 */  lw    $t7, ($t9)
/* 20F6F8 801E4B98 44807000 */  mtc1  $zero, $f14
/* 20F6FC 801E4B9C 3C01800F */  lui   $at, 0x800f
/* 20F700 801E4BA0 8DF80004 */  lw    $t8, 4($t7)
/* 20F704 801E4BA4 E70E001C */  swc1  $f14, 0x1c($t8)
/* 20F708 801E4BA8 8D4E0000 */  lw    $t6, ($t2)
/* 20F70C 801E4BAC 8DD90000 */  lw    $t9, ($t6)
/* 20F710 801E4BB0 00197880 */  sll   $t7, $t9, 2
/* 20F714 801E4BB4 012FC021 */  addu  $t8, $t1, $t7
/* 20F718 801E4BB8 8F0E0000 */  lw    $t6, ($t8)
/* 20F71C 801E4BBC 8DD90004 */  lw    $t9, 4($t6)
/* 20F720 801E4BC0 E72E0020 */  swc1  $f14, 0x20($t9)
/* 20F724 801E4BC4 8D4F0000 */  lw    $t7, ($t2)
/* 20F728 801E4BC8 8DF80000 */  lw    $t8, ($t7)
/* 20F72C 801E4BCC 00187080 */  sll   $t6, $t8, 2
/* 20F730 801E4BD0 012EC821 */  addu  $t9, $t1, $t6
/* 20F734 801E4BD4 8F2F0000 */  lw    $t7, ($t9)
/* 20F738 801E4BD8 8DF80004 */  lw    $t8, 4($t7)
/* 20F73C 801E4BDC E70E0024 */  swc1  $f14, 0x24($t8)
/* 20F740 801E4BE0 8D4E0000 */  lw    $t6, ($t2)
/* 20F744 801E4BE4 8DC30000 */  lw    $v1, ($t6)
/* 20F748 801E4BE8 00031880 */  sll   $v1, $v1, 2
/* 20F74C 801E4BEC 0123C821 */  addu  $t9, $t1, $v1
/* 20F750 801E4BF0 8F2F0000 */  lw    $t7, ($t9)
/* 20F754 801E4BF4 00230821 */  addu  $at, $at, $v1
/* 20F758 801E4BF8 C42AB160 */  lwc1  $f10, -0x4ea0($at)
/* 20F75C 801E4BFC 8DF80004 */  lw    $t8, 4($t7)
/* 20F760 801E4C00 3C01800F */  lui   $at, 0x800f
/* 20F764 801E4C04 E70A0030 */  swc1  $f10, 0x30($t8)
/* 20F768 801E4C08 8D4E0000 */  lw    $t6, ($t2)
/* 20F76C 801E4C0C 8DC30000 */  lw    $v1, ($t6)
/* 20F770 801E4C10 240EFF9C */  li    $t6, -100
/* 20F774 801E4C14 00031880 */  sll   $v1, $v1, 2
/* 20F778 801E4C18 0123C821 */  addu  $t9, $t1, $v1
/* 20F77C 801E4C1C 8F2F0000 */  lw    $t7, ($t9)
/* 20F780 801E4C20 00230821 */  addu  $at, $at, $v1
/* 20F784 801E4C24 C430B320 */  lwc1  $f16, -0x4ce0($at)
/* 20F788 801E4C28 8DF80004 */  lw    $t8, 4($t7)
/* 20F78C 801E4C2C E7100038 */  swc1  $f16, 0x38($t8)
/* 20F790 801E4C30 8D460000 */  lw    $a2, ($t2)
/* 20F794 801E4C34 8CD90000 */  lw    $t9, ($a2)
/* 20F798 801E4C38 00197880 */  sll   $t7, $t9, 2
/* 20F79C 801E4C3C 016FC021 */  addu  $t8, $t3, $t7
/* 20F7A0 801E4C40 AF0E0000 */  sw    $t6, ($t8)
/* 20F7A4 801E4C44 8CC30000 */  lw    $v1, ($a2)
/* 20F7A8 801E4C48 00031880 */  sll   $v1, $v1, 2
.L801E4C4C_ovl15:
/* 20F7AC 801E4C4C 3C19800F */  lui   $t9, 0x800f
/* 20F7B0 801E4C50 0323C821 */  addu  $t9, $t9, $v1
/* 20F7B4 801E4C54 8F399560 */  lw    $t9, -0x6aa0($t9)
/* 20F7B8 801E4C58 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 20F7BC 801E4C5C 44807000 */  mtc1  $zero, $f14
/* 20F7C0 801E4C60 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 20F7C4 801E4C64 07210004 */  bgez  $t9, .L801E4C78_ovl15
/* 20F7C8 801E4C68 332F0001 */   andi  $t7, $t9, 1
/* 20F7CC 801E4C6C 11E00002 */  beqz  $t7, .L801E4C78_ovl15
/* 20F7D0 801E4C70 00000000 */   nop   
/* 20F7D4 801E4C74 25EFFFFE */  addiu $t7, $t7, -2
.L801E4C78_ovl15:
/* 20F7D8 801E4C78 11E00028 */  beqz  $t7, .L801E4D1C_ovl15
/* 20F7DC 801E4C7C 3C0E800D */   lui   $t6, %hi(D_800D70BC) # $t6, 0x800d
/* 20F7E0 801E4C80 8DCE70BC */  lw    $t6, %lo(D_800D70BC)($t6)
/* 20F7E4 801E4C84 3C02800E */  lui   $v0, 0x800e
/* 20F7E8 801E4C88 00431021 */  addu  $v0, $v0, $v1
/* 20F7EC 801E4C8C 11C00023 */  beqz  $t6, .L801E4D1C_ovl15
/* 20F7F0 801E4C90 3C18800F */   lui   $t8, 0x800f
/* 20F7F4 801E4C94 0303C021 */  addu  $t8, $t8, $v1
/* 20F7F8 801E4C98 8F189AA0 */  lw    $t8, -0x6560($t8)
/* 20F7FC 801E4C9C 3C0F801E */  lui   $t7, 0x801e
/* 20F800 801E4CA0 8C42FF50 */  lw    $v0, -0xb0($v0)
/* 20F804 801E4CA4 0018C880 */  sll   $t9, $t8, 2
/* 20F808 801E4CA8 01F97821 */  addu  $t7, $t7, $t9
/* 20F80C 801E4CAC 8DEF6714 */  lw    $t7, 0x6714($t7)
/* 20F810 801E4CB0 3C010001 */  lui   $at, (0x0001052F >> 16) # lui $at, 1
/* 20F814 801E4CB4 3421052F */  ori   $at, (0x0001052F & 0xFFFF) # ori $at, $at, 0x52f
/* 20F818 801E4CB8 104F0003 */  beq   $v0, $t7, .L801E4CC8_ovl15
/* 20F81C 801E4CBC 01237021 */   addu  $t6, $t1, $v1
/* 20F820 801E4CC0 14410016 */  bne   $v0, $at, .L801E4D1C_ovl15
/* 20F824 801E4CC4 00000000 */   nop   
.L801E4CC8_ovl15:
/* 20F828 801E4CC8 8DD80000 */  lw    $t8, ($t6)
/* 20F82C 801E4CCC 27A40034 */  addiu $a0, $sp, 0x34
/* 20F830 801E4CD0 0C0291E5 */  jal   func_800A4794
/* 20F834 801E4CD4 8F05000C */   lw    $a1, 0xc($t8)
/* 20F838 801E4CD8 C7B20038 */  lwc1  $f18, 0x38($sp)
/* 20F83C 801E4CDC C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 20F840 801E4CE0 24040006 */  li    $a0, 6
/* 20F844 801E4CE4 24050002 */  li    $a1, 2
/* 20F848 801E4CE8 2406000B */  li    $a2, 11
/* 20F84C 801E4CEC 8FA70034 */  lw    $a3, 0x34($sp)
/* 20F850 801E4CF0 E7B20010 */  swc1  $f18, 0x10($sp)
/* 20F854 801E4CF4 0C029FDD */  jal   func_800A7F74
/* 20F858 801E4CF8 E7A40014 */   swc1  $f4, 0x14($sp)
/* 20F85C 801E4CFC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 20F860 801E4D00 254AA7C4 */  addiu $t2, %lo(D_8004A7C4) # addiu $t2, $t2, -0x583c
/* 20F864 801E4D04 8D590000 */  lw    $t9, ($t2)
/* 20F868 801E4D08 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 20F86C 801E4D0C 44807000 */  mtc1  $zero, $f14
/* 20F870 801E4D10 8F230000 */  lw    $v1, ($t9)
/* 20F874 801E4D14 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 20F878 801E4D18 00031880 */  sll   $v1, $v1, 2
.L801E4D1C_ovl15:
/* 20F87C 801E4D1C 3C0F800F */  lui   $t7, 0x800f
/* 20F880 801E4D20 01E37821 */  addu  $t7, $t7, $v1
/* 20F884 801E4D24 8DEFA1A0 */  lw    $t7, -0x5e60($t7)
/* 20F888 801E4D28 01237021 */  addu  $t6, $t1, $v1
/* 20F88C 801E4D2C 11E0001B */  beqz  $t7, .L801E4D9C_ovl15
/* 20F890 801E4D30 00000000 */   nop   
/* 20F894 801E4D34 8DD80000 */  lw    $t8, ($t6)
/* 20F898 801E4D38 8F190004 */  lw    $t9, 4($t8)
/* 20F89C 801E4D3C 0C00D604 */  jal   cosf
/* 20F8A0 801E4D40 C72C0030 */   lwc1  $f12, 0x30($t9)
/* 20F8A4 801E4D44 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 20F8A8 801E4D48 254AA7C4 */  addiu $t2, %lo(D_8004A7C4) # addiu $t2, $t2, -0x583c
/* 20F8AC 801E4D4C 8D460000 */  lw    $a2, ($t2)
/* 20F8B0 801E4D50 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 20F8B4 801E4D54 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 20F8B8 801E4D58 8CC30000 */  lw    $v1, ($a2)
/* 20F8BC 801E4D5C 3C01C220 */  li    $at, 0xC2200000 # -40.000000
/* 20F8C0 801E4D60 44814000 */  mtc1  $at, $f8
/* 20F8C4 801E4D64 00031880 */  sll   $v1, $v1, 2
/* 20F8C8 801E4D68 01237821 */  addu  $t7, $t1, $v1
/* 20F8CC 801E4D6C 8DEE0000 */  lw    $t6, ($t7)
/* 20F8D0 801E4D70 3C01800E */  lui   $at, 0x800e
/* 20F8D4 801E4D74 00230821 */  addu  $at, $at, $v1
/* 20F8D8 801E4D78 8DD80008 */  lw    $t8, 8($t6)
/* 20F8DC 801E4D7C 44807000 */  mtc1  $zero, $f14
/* 20F8E0 801E4D80 C7060044 */  lwc1  $f6, 0x44($t8)
/* 20F8E4 801E4D84 46083282 */  mul.s $f10, $f6, $f8
/* 20F8E8 801E4D88 00000000 */  nop   
/* 20F8EC 801E4D8C 46005402 */  mul.s $f16, $f10, $f0
/* 20F8F0 801E4D90 E4302790 */  swc1  $f16, 0x2790($at)
/* 20F8F4 801E4D94 8CC30000 */  lw    $v1, ($a2)
/* 20F8F8 801E4D98 00031880 */  sll   $v1, $v1, 2
.L801E4D9C_ovl15:
/* 20F8FC 801E4D9C 3C01800E */  lui   $at, 0x800e
/* 20F900 801E4DA0 00230821 */  addu  $at, $at, $v1
/* 20F904 801E4DA4 C4202950 */  lwc1  $f0, 0x2950($at)
/* 20F908 801E4DA8 44809000 */  mtc1  $zero, $f18
/* 20F90C 801E4DAC 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 20F910 801E4DB0 44812000 */  mtc1  $at, $f4
/* 20F914 801E4DB4 4612003C */  c.lt.s $f0, $f18
/* 20F918 801E4DB8 0123C821 */  addu  $t9, $t1, $v1
/* 20F91C 801E4DBC 45020004 */  bc1fl .L801E4DD0_ovl15
/* 20F920 801E4DC0 46000086 */   mov.s $f2, $f0
/* 20F924 801E4DC4 10000002 */  b     .L801E4DD0_ovl15
/* 20F928 801E4DC8 46000087 */   neg.s $f2, $f0
/* 20F92C 801E4DCC 46000086 */  mov.s $f2, $f0
.L801E4DD0_ovl15:
/* 20F930 801E4DD0 4604103C */  c.lt.s $f2, $f4
/* 20F934 801E4DD4 00000000 */  nop   
/* 20F938 801E4DD8 45000049 */  bc1f  .L801E4F00_ovl15
/* 20F93C 801E4DDC 00000000 */   nop   
/* 20F940 801E4DE0 8F220000 */  lw    $v0, ($t9)
/* 20F944 801E4DE4 8C4F0008 */  lw    $t7, 8($v0)
/* 20F948 801E4DE8 8C440004 */  lw    $a0, 4($v0)
/* 20F94C 801E4DEC 0C079755 */  jal   func_801E5D54_ovl15
/* 20F950 801E4DF0 8DE50044 */   lw    $a1, 0x44($t7)
/* 20F954 801E4DF4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 20F958 801E4DF8 254AA7C4 */  addiu $t2, %lo(D_8004A7C4) # addiu $t2, $t2, -0x583c
/* 20F95C 801E4DFC 8D460000 */  lw    $a2, ($t2)
/* 20F960 801E4E00 3C0E800F */  lui   $t6, 0x800f
/* 20F964 801E4E04 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 20F968 801E4E08 8CC30000 */  lw    $v1, ($a2)
/* 20F96C 801E4E0C 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 20F970 801E4E10 44807000 */  mtc1  $zero, $f14
/* 20F974 801E4E14 00031880 */  sll   $v1, $v1, 2
/* 20F978 801E4E18 01C37021 */  addu  $t6, $t6, $v1
/* 20F97C 801E4E1C 8DCE83E0 */  lw    $t6, -0x7c20($t6)
/* 20F980 801E4E20 0123C821 */  addu  $t9, $t1, $v1
/* 20F984 801E4E24 11C00036 */  beqz  $t6, .L801E4F00_ovl15
/* 20F988 801E4E28 00000000 */   nop   
/* 20F98C 801E4E2C 8F2F0000 */  lw    $t7, ($t9)
/* 20F990 801E4E30 3C18800E */  lui   $t8, %hi(gEntitiesNextPosXArray) # $t8, 0x800e
/* 20F994 801E4E34 271825D0 */  addiu $t8, %lo(gEntitiesNextPosXArray) # addiu $t8, $t8, 0x25d0
/* 20F998 801E4E38 8DEE0004 */  lw    $t6, 4($t7)
/* 20F99C 801E4E3C 00781021 */  addu  $v0, $v1, $t8
/* 20F9A0 801E4E40 C4460000 */  lwc1  $f6, ($v0)
/* 20F9A4 801E4E44 C5C8001C */  lwc1  $f8, 0x1c($t6)
/* 20F9A8 801E4E48 3C18800E */  lui   $t8, %hi(gEntitiesNextPosYArray) # $t8, 0x800e
/* 20F9AC 801E4E4C 27182790 */  addiu $t8, %lo(gEntitiesNextPosYArray) # addiu $t8, $t8, 0x2790
/* 20F9B0 801E4E50 46083280 */  add.s $f10, $f6, $f8
/* 20F9B4 801E4E54 E44A0000 */  swc1  $f10, ($v0)
/* 20F9B8 801E4E58 8CC30000 */  lw    $v1, ($a2)
/* 20F9BC 801E4E5C 00031880 */  sll   $v1, $v1, 2
/* 20F9C0 801E4E60 0123C821 */  addu  $t9, $t1, $v1
/* 20F9C4 801E4E64 8F2F0000 */  lw    $t7, ($t9)
/* 20F9C8 801E4E68 00782021 */  addu  $a0, $v1, $t8
/* 20F9CC 801E4E6C C4900000 */  lwc1  $f16, ($a0)
/* 20F9D0 801E4E70 8DEE0004 */  lw    $t6, 4($t7)
/* 20F9D4 801E4E74 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 20F9D8 801E4E78 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 20F9DC 801E4E7C C5D20020 */  lwc1  $f18, 0x20($t6)
/* 20F9E0 801E4E80 46128100 */  add.s $f4, $f16, $f18
/* 20F9E4 801E4E84 E4840000 */  swc1  $f4, ($a0)
/* 20F9E8 801E4E88 8CC30000 */  lw    $v1, ($a2)
/* 20F9EC 801E4E8C 00031880 */  sll   $v1, $v1, 2
/* 20F9F0 801E4E90 0123C821 */  addu  $t9, $t1, $v1
/* 20F9F4 801E4E94 8F2F0000 */  lw    $t7, ($t9)
/* 20F9F8 801E4E98 00782821 */  addu  $a1, $v1, $t8
/* 20F9FC 801E4E9C C4A60000 */  lwc1  $f6, ($a1)
/* 20FA00 801E4EA0 8DEE0004 */  lw    $t6, 4($t7)
/* 20FA04 801E4EA4 C5C80024 */  lwc1  $f8, 0x24($t6)
/* 20FA08 801E4EA8 46083280 */  add.s $f10, $f6, $f8
/* 20FA0C 801E4EAC E4AA0000 */  swc1  $f10, ($a1)
/* 20FA10 801E4EB0 8CD80000 */  lw    $t8, ($a2)
/* 20FA14 801E4EB4 0018C880 */  sll   $t9, $t8, 2
/* 20FA18 801E4EB8 01397821 */  addu  $t7, $t1, $t9
/* 20FA1C 801E4EBC 8DEE0000 */  lw    $t6, ($t7)
/* 20FA20 801E4EC0 8DD80004 */  lw    $t8, 4($t6)
/* 20FA24 801E4EC4 E70E001C */  swc1  $f14, 0x1c($t8)
/* 20FA28 801E4EC8 8D590000 */  lw    $t9, ($t2)
/* 20FA2C 801E4ECC 8F2F0000 */  lw    $t7, ($t9)
/* 20FA30 801E4ED0 000F7080 */  sll   $t6, $t7, 2
/* 20FA34 801E4ED4 012EC021 */  addu  $t8, $t1, $t6
/* 20FA38 801E4ED8 8F190000 */  lw    $t9, ($t8)
/* 20FA3C 801E4EDC 8F2F0004 */  lw    $t7, 4($t9)
/* 20FA40 801E4EE0 E5EE0020 */  swc1  $f14, 0x20($t7)
/* 20FA44 801E4EE4 8D4E0000 */  lw    $t6, ($t2)
/* 20FA48 801E4EE8 8DD80000 */  lw    $t8, ($t6)
/* 20FA4C 801E4EEC 0018C880 */  sll   $t9, $t8, 2
/* 20FA50 801E4EF0 01397821 */  addu  $t7, $t1, $t9
/* 20FA54 801E4EF4 8DEE0000 */  lw    $t6, ($t7)
/* 20FA58 801E4EF8 8DD80004 */  lw    $t8, 4($t6)
/* 20FA5C 801E4EFC E70E0024 */  swc1  $f14, 0x24($t8)
.L801E4F00_ovl15:
/* 20FA60 801E4F00 3C19800D */  lui   $t9, %hi(D_800D7154) # $t9, 0x800d
/* 20FA64 801E4F04 8F397154 */  lw    $t9, %lo(D_800D7154)($t9)
/* 20FA68 801E4F08 5720005A */  bnezl $t9, .L801E5074_ovl15
/* 20FA6C 801E4F0C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 20FA70 801E4F10 8D460000 */  lw    $a2, ($t2)
/* 20FA74 801E4F14 3C02800E */  lui   $v0, 0x800e
/* 20FA78 801E4F18 3C010001 */  lui   $at, (0x0001052B >> 16) # lui $at, 1
/* 20FA7C 801E4F1C 8CC30000 */  lw    $v1, ($a2)
/* 20FA80 801E4F20 3421052B */  ori   $at, (0x0001052B & 0xFFFF) # ori $at, $at, 0x52b
/* 20FA84 801E4F24 00031880 */  sll   $v1, $v1, 2
/* 20FA88 801E4F28 00431021 */  addu  $v0, $v0, $v1
/* 20FA8C 801E4F2C 8C42FF50 */  lw    $v0, -0xb0($v0)
/* 20FA90 801E4F30 01237021 */  addu  $t6, $t1, $v1
/* 20FA94 801E4F34 1041000A */  beq   $v0, $at, .L801E4F60_ovl15
/* 20FA98 801E4F38 3C010001 */   lui   $at, (0x0001052C >> 16) # lui $at, 1
/* 20FA9C 801E4F3C 3421052C */  ori   $at, (0x0001052C & 0xFFFF) # ori $at, $at, 0x52c
/* 20FAA0 801E4F40 10410007 */  beq   $v0, $at, .L801E4F60_ovl15
/* 20FAA4 801E4F44 3C010001 */   lui   $at, (0x0001052D >> 16) # lui $at, 1
/* 20FAA8 801E4F48 3421052D */  ori   $at, (0x0001052D & 0xFFFF) # ori $at, $at, 0x52d
/* 20FAAC 801E4F4C 10410004 */  beq   $v0, $at, .L801E4F60_ovl15
/* 20FAB0 801E4F50 3C010001 */   lui   $at, (0x0001052E >> 16) # lui $at, 1
/* 20FAB4 801E4F54 3421052E */  ori   $at, (0x0001052E & 0xFFFF) # ori $at, $at, 0x52e
/* 20FAB8 801E4F58 14410039 */  bne   $v0, $at, .L801E5040_ovl15
/* 20FABC 801E4F5C 00000000 */   nop   
.L801E4F60_ovl15:
/* 20FAC0 801E4F60 8DD80000 */  lw    $t8, ($t6)
/* 20FAC4 801E4F64 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosXArray) # $t7, 0x800e
/* 20FAC8 801E4F68 25EF25D0 */  addiu $t7, %lo(gEntitiesNextPosXArray) # addiu $t7, $t7, 0x25d0
/* 20FACC 801E4F6C 8F190004 */  lw    $t9, 4($t8)
/* 20FAD0 801E4F70 006F1021 */  addu  $v0, $v1, $t7
/* 20FAD4 801E4F74 C4500000 */  lwc1  $f16, ($v0)
/* 20FAD8 801E4F78 C732001C */  lwc1  $f18, 0x1c($t9)
/* 20FADC 801E4F7C 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 20FAE0 801E4F80 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 20FAE4 801E4F84 46128100 */  add.s $f4, $f16, $f18
/* 20FAE8 801E4F88 E4440000 */  swc1  $f4, ($v0)
/* 20FAEC 801E4F8C 8CC30000 */  lw    $v1, ($a2)
/* 20FAF0 801E4F90 00031880 */  sll   $v1, $v1, 2
/* 20FAF4 801E4F94 01237021 */  addu  $t6, $t1, $v1
/* 20FAF8 801E4F98 8DD80000 */  lw    $t8, ($t6)
/* 20FAFC 801E4F9C 006F2021 */  addu  $a0, $v1, $t7
/* 20FB00 801E4FA0 C4860000 */  lwc1  $f6, ($a0)
/* 20FB04 801E4FA4 8F190004 */  lw    $t9, 4($t8)
/* 20FB08 801E4FA8 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosZArray) # $t7, 0x800e
/* 20FB0C 801E4FAC 25EF2950 */  addiu $t7, %lo(gEntitiesNextPosZArray) # addiu $t7, $t7, 0x2950
/* 20FB10 801E4FB0 C7280020 */  lwc1  $f8, 0x20($t9)
/* 20FB14 801E4FB4 46083280 */  add.s $f10, $f6, $f8
/* 20FB18 801E4FB8 E48A0000 */  swc1  $f10, ($a0)
/* 20FB1C 801E4FBC 8CC30000 */  lw    $v1, ($a2)
/* 20FB20 801E4FC0 00031880 */  sll   $v1, $v1, 2
/* 20FB24 801E4FC4 01237021 */  addu  $t6, $t1, $v1
/* 20FB28 801E4FC8 8DD80000 */  lw    $t8, ($t6)
/* 20FB2C 801E4FCC 006F2821 */  addu  $a1, $v1, $t7
/* 20FB30 801E4FD0 C4B00000 */  lwc1  $f16, ($a1)
/* 20FB34 801E4FD4 8F190004 */  lw    $t9, 4($t8)
/* 20FB38 801E4FD8 C7320024 */  lwc1  $f18, 0x24($t9)
/* 20FB3C 801E4FDC 46128100 */  add.s $f4, $f16, $f18
/* 20FB40 801E4FE0 E4A40000 */  swc1  $f4, ($a1)
/* 20FB44 801E4FE4 8CCF0000 */  lw    $t7, ($a2)
/* 20FB48 801E4FE8 000F7080 */  sll   $t6, $t7, 2
/* 20FB4C 801E4FEC 012EC021 */  addu  $t8, $t1, $t6
/* 20FB50 801E4FF0 8F190000 */  lw    $t9, ($t8)
/* 20FB54 801E4FF4 8F2F0004 */  lw    $t7, 4($t9)
/* 20FB58 801E4FF8 E5EE001C */  swc1  $f14, 0x1c($t7)
/* 20FB5C 801E4FFC 8D4E0000 */  lw    $t6, ($t2)
/* 20FB60 801E5000 8DD80000 */  lw    $t8, ($t6)
/* 20FB64 801E5004 0018C880 */  sll   $t9, $t8, 2
/* 20FB68 801E5008 01397821 */  addu  $t7, $t1, $t9
/* 20FB6C 801E500C 8DEE0000 */  lw    $t6, ($t7)
/* 20FB70 801E5010 8DD80004 */  lw    $t8, 4($t6)
/* 20FB74 801E5014 E70E0020 */  swc1  $f14, 0x20($t8)
/* 20FB78 801E5018 8D590000 */  lw    $t9, ($t2)
/* 20FB7C 801E501C 8F2F0000 */  lw    $t7, ($t9)
/* 20FB80 801E5020 000F7080 */  sll   $t6, $t7, 2
/* 20FB84 801E5024 012EC021 */  addu  $t8, $t1, $t6
/* 20FB88 801E5028 8F190000 */  lw    $t9, ($t8)
/* 20FB8C 801E502C 8F2F0004 */  lw    $t7, 4($t9)
/* 20FB90 801E5030 E5EE0024 */  swc1  $f14, 0x24($t7)
/* 20FB94 801E5034 8D460000 */  lw    $a2, ($t2)
/* 20FB98 801E5038 8CC30000 */  lw    $v1, ($a2)
/* 20FB9C 801E503C 00031880 */  sll   $v1, $v1, 2
.L801E5040_ovl15:
/* 20FBA0 801E5040 3C01800E */  lui   $at, 0x800e
/* 20FBA4 801E5044 00230821 */  addu  $at, $at, $v1
/* 20FBA8 801E5048 240EFFFF */  li    $t6, -1
/* 20FBAC 801E504C AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 20FBB0 801E5050 8CD80000 */  lw    $t8, ($a2)
/* 20FBB4 801E5054 3C04800E */  lui   $a0, 0x800e
/* 20FBB8 801E5058 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 20FBBC 801E505C 0018C880 */  sll   $t9, $t8, 2
/* 20FBC0 801E5060 00992021 */  addu  $a0, $a0, $t9
/* 20FBC4 801E5064 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 20FBC8 801E5068 0C02C7B2 */  jal   assign_new_process_entry
/* 20FBCC 801E506C 24A5CF84 */   addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 20FBD0 801E5070 8FBF001C */  lw    $ra, 0x1c($sp)
.L801E5074_ovl15:
/* 20FBD4 801E5074 27BD0040 */  addiu $sp, $sp, 0x40
/* 20FBD8 801E5078 03E00008 */  jr    $ra
/* 20FBDC 801E507C 00000000 */   nop   

/* 20FBE0 801E5080 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 20FBE4 801E5084 AFBF0024 */  sw    $ra, 0x24($sp)
/* 20FBE8 801E5088 AFB10020 */  sw    $s1, 0x20($sp)
/* 20FBEC 801E508C AFB0001C */  sw    $s0, 0x1c($sp)
/* 20FBF0 801E5090 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 20FBF4 801E5094 0C066E8F */  jal   func_8019BA3C_ovl15
/* 20FBF8 801E5098 AFA40028 */   sw    $a0, 0x28($sp)
/* 20FBFC 801E509C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 20FC00 801E50A0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 20FC04 801E50A4 8E220000 */  lw    $v0, ($s1)
/* 20FC08 801E50A8 3C0E800B */  lui   $t6, %hi(D_800B7790) # $t6, 0x800b
/* 20FC0C 801E50AC 3C01800E */  lui   $at, 0x800e
/* 20FC10 801E50B0 8C4F0000 */  lw    $t7, ($v0)
/* 20FC14 801E50B4 25CE7790 */  addiu $t6, %lo(D_800B7790) # addiu $t6, $t6, 0x7790
/* 20FC18 801E50B8 3C19801E */  lui   $t9, %hi(D_801E531C) # $t9, 0x801e
/* 20FC1C 801E50BC 000FC080 */  sll   $t8, $t7, 2
/* 20FC20 801E50C0 00380821 */  addu  $at, $at, $t8
/* 20FC24 801E50C4 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 20FC28 801E50C8 8C480000 */  lw    $t0, ($v0)
/* 20FC2C 801E50CC 3C01800E */  lui   $at, 0x800e
/* 20FC30 801E50D0 2739531C */  addiu $t9, %lo(D_801E531C) # addiu $t9, $t9, 0x531c
/* 20FC34 801E50D4 00084880 */  sll   $t1, $t0, 2
/* 20FC38 801E50D8 00290821 */  addu  $at, $at, $t1
/* 20FC3C 801E50DC AC39F150 */  sw    $t9, -0xeb0($at)
/* 20FC40 801E50E0 8C4A0000 */  lw    $t2, ($v0)
/* 20FC44 801E50E4 3C01800F */  lui   $at, 0x800f
/* 20FC48 801E50E8 3C0F800E */  lui   $t7, 0x800e
/* 20FC4C 801E50EC 000A5880 */  sll   $t3, $t2, 2
/* 20FC50 801E50F0 002B0821 */  addu  $at, $at, $t3
/* 20FC54 801E50F4 AC208920 */  sw    $zero, -0x76e0($at)
/* 20FC58 801E50F8 8C4C0000 */  lw    $t4, ($v0)
/* 20FC5C 801E50FC 3C01801E */  lui   $at, %hi(D_801E6900) # $at, 0x801e
/* 20FC60 801E5100 C4246900 */  lwc1  $f4, %lo(D_801E6900)($at)
/* 20FC64 801E5104 3C01800E */  lui   $at, 0x800e
/* 20FC68 801E5108 000C6880 */  sll   $t5, $t4, 2
/* 20FC6C 801E510C 002D0821 */  addu  $at, $at, $t5
/* 20FC70 801E5110 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 20FC74 801E5114 8C430000 */  lw    $v1, ($v0)
/* 20FC78 801E5118 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 20FC7C 801E511C 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 20FC80 801E5120 00031880 */  sll   $v1, $v1, 2
/* 20FC84 801E5124 01E37821 */  addu  $t7, $t7, $v1
/* 20FC88 801E5128 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 20FC8C 801E512C 00834021 */  addu  $t0, $a0, $v1
/* 20FC90 801E5130 44804000 */  mtc1  $zero, $f8
/* 20FC94 801E5134 000F7080 */  sll   $t6, $t7, 2
/* 20FC98 801E5138 008EC021 */  addu  $t8, $a0, $t6
/* 20FC9C 801E513C C7060000 */  lwc1  $f6, ($t8)
/* 20FCA0 801E5140 3C01800F */  lui   $at, 0x800f
/* 20FCA4 801E5144 E5060000 */  swc1  $f6, ($t0)
/* 20FCA8 801E5148 8C590000 */  lw    $t9, ($v0)
/* 20FCAC 801E514C 00194880 */  sll   $t1, $t9, 2
/* 20FCB0 801E5150 00290821 */  addu  $at, $at, $t1
/* 20FCB4 801E5154 0C02CCFD */  jal   func_800B33F4
/* 20FCB8 801E5158 E4289020 */   swc1  $f8, -0x6fe0($at)
/* 20FCBC 801E515C 3C040001 */  lui   $a0, (0x00010092 >> 16) # lui $a0, 1
/* 20FCC0 801E5160 34840092 */  ori   $a0, (0x00010092 & 0xFFFF) # ori $a0, $a0, 0x92
/* 20FCC4 801E5164 2405002A */  li    $a1, 42
/* 20FCC8 801E5168 0C02A619 */  jal   func_800A9864
/* 20FCCC 801E516C 24060010 */   li    $a2, 16
/* 20FCD0 801E5170 3C040001 */  lui   $a0, (0x0001053A >> 16) # lui $a0, 1
/* 20FCD4 801E5174 0C02A806 */  jal   func_800AA018
/* 20FCD8 801E5178 3484053A */   ori   $a0, (0x0001053A & 0xFFFF) # ori $a0, $a0, 0x53a
/* 20FCDC 801E517C 8E220000 */  lw    $v0, ($s1)
/* 20FCE0 801E5180 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 20FCE4 801E5184 4481A000 */  mtc1  $at, $f20
/* 20FCE8 801E5188 8C4A0000 */  lw    $t2, ($v0)
/* 20FCEC 801E518C 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 20FCF0 801E5190 44815000 */  mtc1  $at, $f10
/* 20FCF4 801E5194 3C01800E */  lui   $at, 0x800e
/* 20FCF8 801E5198 000A5880 */  sll   $t3, $t2, 2
/* 20FCFC 801E519C 002B0821 */  addu  $at, $at, $t3
/* 20FD00 801E51A0 E42A3210 */  swc1  $f10, 0x3210($at)
/* 20FD04 801E51A4 8C4C0000 */  lw    $t4, ($v0)
/* 20FD08 801E51A8 3C10800E */  lui   $s0, %hi(gEntitiesNextPosYArray) # $s0, 0x800e
/* 20FD0C 801E51AC 26102790 */  addiu $s0, %lo(gEntitiesNextPosYArray) # addiu $s0, $s0, 0x2790
/* 20FD10 801E51B0 000C6880 */  sll   $t5, $t4, 2
/* 20FD14 801E51B4 020D7821 */  addu  $t7, $s0, $t5
/* 20FD18 801E51B8 C5F00000 */  lwc1  $f16, ($t7)
/* 20FD1C 801E51BC 4610A03C */  c.lt.s $f20, $f16
/* 20FD20 801E51C0 00000000 */  nop   
/* 20FD24 801E51C4 4500000C */  bc1f  .L801E51F8_ovl15
/* 20FD28 801E51C8 00000000 */   nop   
.L801E51CC_ovl15:
/* 20FD2C 801E51CC 0C002DAF */  jal   finish_current_thread
/* 20FD30 801E51D0 24040001 */   li    $a0, 1
/* 20FD34 801E51D4 8E2E0000 */  lw    $t6, ($s1)
/* 20FD38 801E51D8 8DD80000 */  lw    $t8, ($t6)
/* 20FD3C 801E51DC 00184080 */  sll   $t0, $t8, 2
/* 20FD40 801E51E0 0208C821 */  addu  $t9, $s0, $t0
/* 20FD44 801E51E4 C7320000 */  lwc1  $f18, ($t9)
/* 20FD48 801E51E8 4612A03C */  c.lt.s $f20, $f18
/* 20FD4C 801E51EC 00000000 */  nop   
/* 20FD50 801E51F0 4501FFF6 */  bc1t  .L801E51CC_ovl15
/* 20FD54 801E51F4 00000000 */   nop   
.L801E51F8_ovl15:
/* 20FD58 801E51F8 0C029D9E */  jal   play_sound
/* 20FD5C 801E51FC 2404019B */   li    $a0, 411
/* 20FD60 801E5200 3C040001 */  lui   $a0, (0x00010539 >> 16) # lui $a0, 1
/* 20FD64 801E5204 0C02A806 */  jal   func_800AA018
/* 20FD68 801E5208 34840539 */   ori   $a0, (0x00010539 & 0xFFFF) # ori $a0, $a0, 0x539
/* 20FD6C 801E520C 8E220000 */  lw    $v0, ($s1)
/* 20FD70 801E5210 44800000 */  mtc1  $zero, $f0
/* 20FD74 801E5214 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 20FD78 801E5218 8C490000 */  lw    $t1, ($v0)
/* 20FD7C 801E521C 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 20FD80 801E5220 3C01800E */  lui   $at, 0x800e
/* 20FD84 801E5224 00095080 */  sll   $t2, $t1, 2
/* 20FD88 801E5228 020A5821 */  addu  $t3, $s0, $t2
/* 20FD8C 801E522C E5740000 */  swc1  $f20, ($t3)
/* 20FD90 801E5230 8C4C0000 */  lw    $t4, ($v0)
/* 20FD94 801E5234 000C6880 */  sll   $t5, $t4, 2
/* 20FD98 801E5238 008D7821 */  addu  $t7, $a0, $t5
/* 20FD9C 801E523C E5E00000 */  swc1  $f0, ($t7)
/* 20FDA0 801E5240 8C430000 */  lw    $v1, ($v0)
/* 20FDA4 801E5244 00031880 */  sll   $v1, $v1, 2
/* 20FDA8 801E5248 00837021 */  addu  $t6, $a0, $v1
/* 20FDAC 801E524C C5C40000 */  lwc1  $f4, ($t6)
/* 20FDB0 801E5250 00230821 */  addu  $at, $at, $v1
/* 20FDB4 801E5254 E4243210 */  swc1  $f4, 0x3210($at)
/* 20FDB8 801E5258 8C580000 */  lw    $t8, ($v0)
/* 20FDBC 801E525C 3C01801E */  lui   $at, %hi(D_801E6904) # $at, 0x801e
/* 20FDC0 801E5260 C4266904 */  lwc1  $f6, %lo(D_801E6904)($at)
/* 20FDC4 801E5264 3C01800E */  lui   $at, 0x800e
/* 20FDC8 801E5268 00184080 */  sll   $t0, $t8, 2
/* 20FDCC 801E526C 00280821 */  addu  $at, $at, $t0
/* 20FDD0 801E5270 E4263C90 */  swc1  $f6, 0x3c90($at)
/* 20FDD4 801E5274 8C590000 */  lw    $t9, ($v0)
/* 20FDD8 801E5278 3C01800E */  lui   $at, 0x800e
/* 20FDDC 801E527C 00194880 */  sll   $t1, $t9, 2
/* 20FDE0 801E5280 00290821 */  addu  $at, $at, $t1
/* 20FDE4 801E5284 E4203050 */  swc1  $f0, 0x3050($at)
/* 20FDE8 801E5288 8C4A0000 */  lw    $t2, ($v0)
/* 20FDEC 801E528C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 20FDF0 801E5290 44814000 */  mtc1  $at, $f8
/* 20FDF4 801E5294 3C01800E */  lui   $at, 0x800e
/* 20FDF8 801E5298 000A5880 */  sll   $t3, $t2, 2
/* 20FDFC 801E529C 002B0821 */  addu  $at, $at, $t3
/* 20FE00 801E52A0 E4283590 */  swc1  $f8, 0x3590($at)
/* 20FE04 801E52A4 8C4C0000 */  lw    $t4, ($v0)
/* 20FE08 801E52A8 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 20FE0C 801E52AC 44815000 */  mtc1  $at, $f10
/* 20FE10 801E52B0 3C01800E */  lui   $at, 0x800e
/* 20FE14 801E52B4 000C6880 */  sll   $t5, $t4, 2
/* 20FE18 801E52B8 002D0821 */  addu  $at, $at, $t5
/* 20FE1C 801E52BC 0C02BC9F */  jal   func_800AF27C
/* 20FE20 801E52C0 E42A3AD0 */   swc1  $f10, 0x3ad0($at)
/* 20FE24 801E52C4 3C040001 */  lui   $a0, (0x00010538 >> 16) # lui $a0, 1
/* 20FE28 801E52C8 0C02A806 */  jal   func_800AA018
/* 20FE2C 801E52CC 34840538 */   ori   $a0, (0x00010538 & 0xFFFF) # ori $a0, $a0, 0x538
/* 20FE30 801E52D0 0C002DAF */  jal   finish_current_thread
/* 20FE34 801E52D4 2404004B */   li    $a0, 75
/* 20FE38 801E52D8 8E2E0000 */  lw    $t6, ($s1)
/* 20FE3C 801E52DC 3C19800E */  lui   $t9, 0x800e
/* 20FE40 801E52E0 3C0F801D */  lui   $t7, %hi(D_801D7BC4) # $t7, 0x801d
/* 20FE44 801E52E4 8DD80000 */  lw    $t8, ($t6)
/* 20FE48 801E52E8 25EF7BC4 */  addiu $t7, %lo(D_801D7BC4) # addiu $t7, $t7, 0x7bc4
/* 20FE4C 801E52EC 00184080 */  sll   $t0, $t8, 2
/* 20FE50 801E52F0 0328C821 */  addu  $t9, $t9, $t0
/* 20FE54 801E52F4 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 20FE58 801E52F8 AF2F0094 */  sw    $t7, 0x94($t9)
/* 20FE5C 801E52FC 0C06B3E1 */  jal   D_801ACF84_ovl15
/* 20FE60 801E5300 8FA40028 */   lw    $a0, 0x28($sp)
/* 20FE64 801E5304 8FBF0024 */  lw    $ra, 0x24($sp)
/* 20FE68 801E5308 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 20FE6C 801E530C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 20FE70 801E5310 8FB10020 */  lw    $s1, 0x20($sp)
/* 20FE74 801E5314 03E00008 */  jr    $ra
/* 20FE78 801E5318 27BD0028 */   addiu $sp, $sp, 0x28

/* 20FE7C 801E531C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 20FE80 801E5320 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 20FE84 801E5324 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 20FE88 801E5328 AFBF001C */  sw    $ra, 0x1c($sp)
/* 20FE8C 801E532C AFA40048 */  sw    $a0, 0x48($sp)
/* 20FE90 801E5330 8C660000 */  lw    $a2, ($v1)
/* 20FE94 801E5334 3C04800F */  lui   $a0, %hi(D_800E9560) # $a0, 0x800f
/* 20FE98 801E5338 24849560 */  addiu $a0, %lo(D_800E9560) # addiu $a0, $a0, -0x6aa0
/* 20FE9C 801E533C 3C07800E */  lui   $a3, %hi(D_800E1B50) # $a3, 0x800e
/* 20FEA0 801E5340 00063080 */  sll   $a2, $a2, 2
/* 20FEA4 801E5344 24E71B50 */  addiu $a3, %lo(D_800E1B50) # addiu $a3, $a3, 0x1b50
/* 20FEA8 801E5348 00861021 */  addu  $v0, $a0, $a2
/* 20FEAC 801E534C 8C580000 */  lw    $t8, ($v0)
/* 20FEB0 801E5350 00E67021 */  addu  $t6, $a3, $a2
/* 20FEB4 801E5354 8DCF0000 */  lw    $t7, ($t6)
/* 20FEB8 801E5358 27190001 */  addiu $t9, $t8, 1
/* 20FEBC 801E535C AC590000 */  sw    $t9, ($v0)
/* 20FEC0 801E5360 AFAF0044 */  sw    $t7, 0x44($sp)
/* 20FEC4 801E5364 8C660000 */  lw    $a2, ($v1)
/* 20FEC8 801E5368 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 20FECC 801E536C 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 20FED0 801E5370 00063080 */  sll   $a2, $a2, 2
/* 20FED4 801E5374 01064821 */  addu  $t1, $t0, $a2
/* 20FED8 801E5378 C5240000 */  lwc1  $f4, ($t1)
/* 20FEDC 801E537C 3C01800F */  lui   $at, 0x800f
/* 20FEE0 801E5380 00260821 */  addu  $at, $at, $a2
/* 20FEE4 801E5384 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 20FEE8 801E5388 8C660000 */  lw    $a2, ($v1)
/* 20FEEC 801E538C 3C01800E */  lui   $at, 0x800e
/* 20FEF0 801E5390 3C0D800E */  lui   $t5, 0x800e
/* 20FEF4 801E5394 00063080 */  sll   $a2, $a2, 2
/* 20FEF8 801E5398 00260821 */  addu  $at, $at, $a2
/* 20FEFC 801E539C C4262790 */  lwc1  $f6, 0x2790($at)
/* 20FF00 801E53A0 3C01800F */  lui   $at, 0x800f
/* 20FF04 801E53A4 00260821 */  addu  $at, $at, $a2
/* 20FF08 801E53A8 E426A8A0 */  swc1  $f6, -0x5760($at)
/* 20FF0C 801E53AC 8C660000 */  lw    $a2, ($v1)
/* 20FF10 801E53B0 3C01800E */  lui   $at, 0x800e
/* 20FF14 801E53B4 00063080 */  sll   $a2, $a2, 2
/* 20FF18 801E53B8 00260821 */  addu  $at, $at, $a2
/* 20FF1C 801E53BC C4282950 */  lwc1  $f8, 0x2950($at)
/* 20FF20 801E53C0 3C01800F */  lui   $at, 0x800f
/* 20FF24 801E53C4 00260821 */  addu  $at, $at, $a2
/* 20FF28 801E53C8 E428AA60 */  swc1  $f8, -0x55a0($at)
/* 20FF2C 801E53CC 8C660000 */  lw    $a2, ($v1)
/* 20FF30 801E53D0 3C01800E */  lui   $at, 0x800e
/* 20FF34 801E53D4 00063080 */  sll   $a2, $a2, 2
/* 20FF38 801E53D8 00260821 */  addu  $at, $at, $a2
/* 20FF3C 801E53DC C42A3050 */  lwc1  $f10, 0x3050($at)
/* 20FF40 801E53E0 3C01800F */  lui   $at, 0x800f
/* 20FF44 801E53E4 00260821 */  addu  $at, $at, $a2
/* 20FF48 801E53E8 E42AAC20 */  swc1  $f10, -0x53e0($at)
/* 20FF4C 801E53EC 8C660000 */  lw    $a2, ($v1)
/* 20FF50 801E53F0 3C01800E */  lui   $at, 0x800e
/* 20FF54 801E53F4 00063080 */  sll   $a2, $a2, 2
/* 20FF58 801E53F8 00260821 */  addu  $at, $at, $a2
/* 20FF5C 801E53FC C4303590 */  lwc1  $f16, 0x3590($at)
/* 20FF60 801E5400 3C01800F */  lui   $at, 0x800f
/* 20FF64 801E5404 00260821 */  addu  $at, $at, $a2
/* 20FF68 801E5408 E430ADE0 */  swc1  $f16, -0x5220($at)
/* 20FF6C 801E540C 8C660000 */  lw    $a2, ($v1)
/* 20FF70 801E5410 3C01800E */  lui   $at, 0x800e
/* 20FF74 801E5414 00063080 */  sll   $a2, $a2, 2
/* 20FF78 801E5418 00260821 */  addu  $at, $at, $a2
/* 20FF7C 801E541C C4323210 */  lwc1  $f18, 0x3210($at)
/* 20FF80 801E5420 3C01800F */  lui   $at, 0x800f
/* 20FF84 801E5424 00260821 */  addu  $at, $at, $a2
/* 20FF88 801E5428 E432AFA0 */  swc1  $f18, -0x5060($at)
/* 20FF8C 801E542C 8C660000 */  lw    $a2, ($v1)
/* 20FF90 801E5430 00063080 */  sll   $a2, $a2, 2
/* 20FF94 801E5434 00865021 */  addu  $t2, $a0, $a2
/* 20FF98 801E5438 8D4B0000 */  lw    $t3, ($t2)
/* 20FF9C 801E543C 01A66821 */  addu  $t5, $t5, $a2
/* 20FFA0 801E5440 05610004 */  bgez  $t3, .L801E5454_ovl15
/* 20FFA4 801E5444 316C0001 */   andi  $t4, $t3, 1
/* 20FFA8 801E5448 11800002 */  beqz  $t4, .L801E5454_ovl15
/* 20FFAC 801E544C 00000000 */   nop   
/* 20FFB0 801E5450 258CFFFE */  addiu $t4, $t4, -2
.L801E5454_ovl15:
/* 20FFB4 801E5454 51800017 */  beql  $t4, $zero, .L801E54B4_ovl15
/* 20FFB8 801E5458 01067821 */   addu  $t7, $t0, $a2
/* 20FFBC 801E545C 8DADFBD0 */  lw    $t5, -0x430($t5)
/* 20FFC0 801E5460 27A40038 */  addiu $a0, $sp, 0x38
/* 20FFC4 801E5464 0C0291E5 */  jal   func_800A4794
/* 20FFC8 801E5468 8DA50014 */   lw    $a1, 0x14($t5)
/* 20FFCC 801E546C C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 20FFD0 801E5470 C7A60040 */  lwc1  $f6, 0x40($sp)
/* 20FFD4 801E5474 24040006 */  li    $a0, 6
/* 20FFD8 801E5478 24050002 */  li    $a1, 2
/* 20FFDC 801E547C 2406000B */  li    $a2, 11
/* 20FFE0 801E5480 8FA70038 */  lw    $a3, 0x38($sp)
/* 20FFE4 801E5484 E7A40010 */  swc1  $f4, 0x10($sp)
/* 20FFE8 801E5488 0C029FDD */  jal   func_800A7F74
/* 20FFEC 801E548C E7A60014 */   swc1  $f6, 0x14($sp)
/* 20FFF0 801E5490 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 20FFF4 801E5494 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 20FFF8 801E5498 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 20FFFC 801E549C 3C07800E */  lui   $a3, %hi(D_800E1B50) # $a3, 0x800e
/* 210000 801E54A0 8DC60000 */  lw    $a2, ($t6)
/* 210004 801E54A4 24E71B50 */  addiu $a3, %lo(D_800E1B50) # addiu $a3, $a3, 0x1b50
/* 210008 801E54A8 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 21000C 801E54AC 00063080 */  sll   $a2, $a2, 2
/* 210010 801E54B0 01067821 */  addu  $t7, $t0, $a2
.L801E54B4_ovl15:
/* 210014 801E54B4 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 210018 801E54B8 44815000 */  mtc1  $at, $f10
/* 21001C 801E54BC C5E80000 */  lwc1  $f8, ($t7)
/* 210020 801E54C0 C5120000 */  lwc1  $f18, ($t0)
/* 210024 801E54C4 3C18801E */  lui   $t8, %hi(D_801DA0DC) # $t8, 0x801e
/* 210028 801E54C8 460A4401 */  sub.s $f16, $f8, $f10
/* 21002C 801E54CC 00E6C821 */  addu  $t9, $a3, $a2
/* 210030 801E54D0 00E65821 */  addu  $t3, $a3, $a2
/* 210034 801E54D4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 210038 801E54D8 4612803C */  c.lt.s $f16, $f18
/* 21003C 801E54DC 00000000 */  nop   
/* 210040 801E54E0 45020006 */  bc1fl .L801E54FC_ovl15
/* 210044 801E54E4 8D6C0000 */   lw    $t4, ($t3)
/* 210048 801E54E8 8F290000 */  lw    $t1, ($t9)
/* 21004C 801E54EC 2718A0DC */  addiu $t8, %lo(D_801DA0DC) # addiu $t8, $t8, -0x5f24
/* 210050 801E54F0 10000005 */  b     .L801E5508_ovl15
/* 210054 801E54F4 AD38008C */   sw    $t8, 0x8c($t1)
/* 210058 801E54F8 8D6C0000 */  lw    $t4, ($t3)
.L801E54FC_ovl15:
/* 21005C 801E54FC 3C0A801E */  lui   $t2, %hi(D_801DA0B8) # $t2, 0x801e
/* 210060 801E5500 254AA0B8 */  addiu $t2, %lo(D_801DA0B8) # addiu $t2, $t2, -0x5f48
/* 210064 801E5504 AD8A008C */  sw    $t2, 0x8c($t4)
.L801E5508_ovl15:
/* 210068 801E5508 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 21006C 801E550C 3C19800E */  lui   $t9, 0x800e
/* 210070 801E5510 8DAE0000 */  lw    $t6, ($t5)
/* 210074 801E5514 000E7880 */  sll   $t7, $t6, 2
/* 210078 801E5518 032FC821 */  addu  $t9, $t9, $t7
/* 21007C 801E551C 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 210080 801E5520 0C0680F9 */  jal   func_801A03E4_ovl15
/* 210084 801E5524 8F240008 */   lw    $a0, 8($t9)
/* 210088 801E5528 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 21008C 801E552C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 210090 801E5530 3C0A800F */  lui   $t2, 0x800f
/* 210094 801E5534 24010003 */  li    $at, 3
/* 210098 801E5538 8F090000 */  lw    $t1, ($t8)
/* 21009C 801E553C 24040038 */  li    $a0, 56
/* 2100A0 801E5540 00095880 */  sll   $t3, $t1, 2
/* 2100A4 801E5544 014B5021 */  addu  $t2, $t2, $t3
/* 2100A8 801E5548 8D4A83E0 */  lw    $t2, -0x7c20($t2)
/* 2100AC 801E554C 15410047 */  bne   $t2, $at, .L801E566C_ovl15
/* 2100B0 801E5550 00000000 */   nop   
/* 2100B4 801E5554 0C06B274 */  jal   func_801AC9D0_ovl15
/* 2100B8 801E5558 24050003 */   li    $a1, 3
/* 2100BC 801E555C 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 2100C0 801E5560 1040001E */  beqz  $v0, .L801E55DC_ovl15
/* 2100C4 801E5564 250825D0 */   addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 2100C8 801E5568 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2100CC 801E556C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2100D0 801E5570 00022080 */  sll   $a0, $v0, 2
/* 2100D4 801E5574 3C01800F */  lui   $at, 0x800f
/* 2100D8 801E5578 00240821 */  addu  $at, $at, $a0
/* 2100DC 801E557C 240C0001 */  li    $t4, 1
/* 2100E0 801E5580 AC2C8E60 */  sw    $t4, -0x71a0($at)
/* 2100E4 801E5584 8C6D0000 */  lw    $t5, ($v1)
/* 2100E8 801E5588 0104C821 */  addu  $t9, $t0, $a0
/* 2100EC 801E558C 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosYArray) # $t3, 0x800e
/* 2100F0 801E5590 000D7080 */  sll   $t6, $t5, 2
/* 2100F4 801E5594 010E7821 */  addu  $t7, $t0, $t6
/* 2100F8 801E5598 C5E40000 */  lwc1  $f4, ($t7)
/* 2100FC 801E559C 256B2790 */  addiu $t3, %lo(gEntitiesNextPosYArray) # addiu $t3, $t3, 0x2790
/* 210100 801E55A0 008B6021 */  addu  $t4, $a0, $t3
/* 210104 801E55A4 E7240000 */  swc1  $f4, ($t9)
/* 210108 801E55A8 8C780000 */  lw    $t8, ($v1)
/* 21010C 801E55AC 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosZArray) # $t7, 0x800e
/* 210110 801E55B0 25EF2950 */  addiu $t7, %lo(gEntitiesNextPosZArray) # addiu $t7, $t7, 0x2950
/* 210114 801E55B4 00184880 */  sll   $t1, $t8, 2
/* 210118 801E55B8 012B5021 */  addu  $t2, $t1, $t3
/* 21011C 801E55BC C5460000 */  lwc1  $f6, ($t2)
/* 210120 801E55C0 008FC021 */  addu  $t8, $a0, $t7
/* 210124 801E55C4 E5860000 */  swc1  $f6, ($t4)
/* 210128 801E55C8 8C6D0000 */  lw    $t5, ($v1)
/* 21012C 801E55CC 000D7080 */  sll   $t6, $t5, 2
/* 210130 801E55D0 01CFC821 */  addu  $t9, $t6, $t7
/* 210134 801E55D4 C7280000 */  lwc1  $f8, ($t9)
/* 210138 801E55D8 E7080000 */  swc1  $f8, ($t8)
.L801E55DC_ovl15:
/* 21013C 801E55DC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 210140 801E55E0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 210144 801E55E4 3C0A800E */  lui   $t2, 0x800e
/* 210148 801E55E8 44805000 */  mtc1  $zero, $f10
/* 21014C 801E55EC 8D260000 */  lw    $a2, ($t1)
/* 210150 801E55F0 00063080 */  sll   $a2, $a2, 2
/* 210154 801E55F4 01465021 */  addu  $t2, $t2, $a2
/* 210158 801E55F8 8D4AFBD0 */  lw    $t2, -0x430($t2)
/* 21015C 801E55FC 01061021 */  addu  $v0, $t0, $a2
/* 210160 801E5600 8D4B000C */  lw    $t3, 0xc($t2)
/* 210164 801E5604 C5600020 */  lwc1  $f0, 0x20($t3)
/* 210168 801E5608 460A003C */  c.lt.s $f0, $f10
/* 21016C 801E560C 00000000 */  nop   
/* 210170 801E5610 45020004 */  bc1fl .L801E5624_ovl15
/* 210174 801E5614 46000086 */   mov.s $f2, $f0
/* 210178 801E5618 10000002 */  b     .L801E5624_ovl15
/* 21017C 801E561C 46000087 */   neg.s $f2, $f0
/* 210180 801E5620 46000086 */  mov.s $f2, $f0
.L801E5624_ovl15:
/* 210184 801E5624 C4500000 */  lwc1  $f16, ($v0)
/* 210188 801E5628 3C04801D */  lui   $a0, %hi(D_801D7C8C) # $a0, 0x801d
/* 21018C 801E562C 24847C8C */  addiu $a0, %lo(D_801D7C8C) # addiu $a0, $a0, 0x7c8c
/* 210190 801E5630 46028481 */  sub.s $f18, $f16, $f2
/* 210194 801E5634 0C066220 */  jal   func_80198880_ovl15
/* 210198 801E5638 E4520000 */   swc1  $f18, ($v0)
/* 21019C 801E563C 8FAC0044 */  lw    $t4, 0x44($sp)
/* 2101A0 801E5640 8D8D0088 */  lw    $t5, 0x88($t4)
/* 2101A4 801E5644 0C068AB7 */  jal   func_801A2ADC_ovl15
/* 2101A8 801E5648 8DA40010 */   lw    $a0, 0x10($t5)
/* 2101AC 801E564C 3C040001 */  lui   $a0, (0x00010093 >> 16) # lui $a0, 1
/* 2101B0 801E5650 0C02A5D8 */  jal   func_800A9760
/* 2101B4 801E5654 34840093 */   ori   $a0, (0x00010093 & 0xFFFF) # ori $a0, $a0, 0x93
/* 2101B8 801E5658 8FAE0044 */  lw    $t6, 0x44($sp)
/* 2101BC 801E565C 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 2101C0 801E5660 44812000 */  mtc1  $at, $f4
/* 2101C4 801E5664 8DD90080 */  lw    $t9, 0x80($t6)
/* 2101C8 801E5668 E7240010 */  swc1  $f4, 0x10($t9)
.L801E566C_ovl15:
/* 2101CC 801E566C 3C0F800D */  lui   $t7, %hi(D_800D7154) # $t7, 0x800d
/* 2101D0 801E5670 8DEF7154 */  lw    $t7, %lo(D_800D7154)($t7)
/* 2101D4 801E5674 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2101D8 801E5678 55E00011 */  bnezl $t7, .L801E56C0_ovl15
/* 2101DC 801E567C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 2101E0 801E5680 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2101E4 801E5684 3C01800E */  lui   $at, 0x800e
/* 2101E8 801E5688 2418FFFF */  li    $t8, -1
/* 2101EC 801E568C 8C690000 */  lw    $t1, ($v1)
/* 2101F0 801E5690 3C04800E */  lui   $a0, 0x800e
/* 2101F4 801E5694 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 2101F8 801E5698 00095080 */  sll   $t2, $t1, 2
/* 2101FC 801E569C 002A0821 */  addu  $at, $at, $t2
/* 210200 801E56A0 AC38DC50 */  sw    $t8, -0x23b0($at)
/* 210204 801E56A4 8C6B0000 */  lw    $t3, ($v1)
/* 210208 801E56A8 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 21020C 801E56AC 000B6080 */  sll   $t4, $t3, 2
/* 210210 801E56B0 008C2021 */  addu  $a0, $a0, $t4
/* 210214 801E56B4 0C02C7B2 */  jal   assign_new_process_entry
/* 210218 801E56B8 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 21021C 801E56BC 8FBF001C */  lw    $ra, 0x1c($sp)
.L801E56C0_ovl15:
/* 210220 801E56C0 27BD0048 */  addiu $sp, $sp, 0x48
/* 210224 801E56C4 03E00008 */  jr    $ra
/* 210228 801E56C8 00000000 */   nop   

/* 21022C 801E56CC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 210230 801E56D0 AFB30028 */  sw    $s3, 0x28($sp)
/* 210234 801E56D4 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 210238 801E56D8 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 21023C 801E56DC 8E6E0000 */  lw    $t6, ($s3)
/* 210240 801E56E0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 210244 801E56E4 AFB20024 */  sw    $s2, 0x24($sp)
/* 210248 801E56E8 AFB10020 */  sw    $s1, 0x20($sp)
/* 21024C 801E56EC AFB0001C */  sw    $s0, 0x1c($sp)
/* 210250 801E56F0 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 210254 801E56F4 AFA40030 */  sw    $a0, 0x30($sp)
/* 210258 801E56F8 8DCF0000 */  lw    $t7, ($t6)
/* 21025C 801E56FC 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 210260 801E5700 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 210264 801E5704 000FC080 */  sll   $t8, $t7, 2
/* 210268 801E5708 0258C821 */  addu  $t9, $s2, $t8
/* 21026C 801E570C 0C066E8F */  jal   func_8019BA3C_ovl15
/* 210270 801E5710 8F310000 */   lw    $s1, ($t9)
/* 210274 801E5714 8E630000 */  lw    $v1, ($s3)
/* 210278 801E5718 3C08800B */  lui   $t0, %hi(D_800B7790) # $t0, 0x800b
/* 21027C 801E571C 3C01800E */  lui   $at, 0x800e
/* 210280 801E5720 8C690000 */  lw    $t1, ($v1)
/* 210284 801E5724 25087790 */  addiu $t0, %lo(D_800B7790) # addiu $t0, $t0, 0x7790
/* 210288 801E5728 3C0B801E */  lui   $t3, %hi(D_801E5C34) # $t3, 0x801e
/* 21028C 801E572C 00095080 */  sll   $t2, $t1, 2
/* 210290 801E5730 002A0821 */  addu  $at, $at, $t2
/* 210294 801E5734 AC28EF90 */  sw    $t0, -0x1070($at)
/* 210298 801E5738 8C6C0000 */  lw    $t4, ($v1)
/* 21029C 801E573C 3C01800E */  lui   $at, 0x800e
/* 2102A0 801E5740 256B5C34 */  addiu $t3, %lo(D_801E5C34) # addiu $t3, $t3, 0x5c34
/* 2102A4 801E5744 000C6880 */  sll   $t5, $t4, 2
/* 2102A8 801E5748 002D0821 */  addu  $at, $at, $t5
/* 2102AC 801E574C 3C04801D */  lui   $a0, %hi(D_801D7C04) # $a0, 0x801d
/* 2102B0 801E5750 AC2BF150 */  sw    $t3, -0xeb0($at)
/* 2102B4 801E5754 0C066220 */  jal   func_80198880_ovl15
/* 2102B8 801E5758 24847C04 */   addiu $a0, %lo(D_801D7C04) # addiu $a0, $a0, 0x7c04
/* 2102BC 801E575C 8E630000 */  lw    $v1, ($s3)
/* 2102C0 801E5760 3C01800F */  lui   $at, 0x800f
/* 2102C4 801E5764 3C02800E */  lui   $v0, %hi(D_800E17D0) # $v0, 0x800e
/* 2102C8 801E5768 8C6E0000 */  lw    $t6, ($v1)
/* 2102CC 801E576C 244217D0 */  addiu $v0, %lo(D_800E17D0) # addiu $v0, $v0, 0x17d0
/* 2102D0 801E5770 44804000 */  mtc1  $zero, $f8
/* 2102D4 801E5774 000E7880 */  sll   $t7, $t6, 2
/* 2102D8 801E5778 002F0821 */  addu  $at, $at, $t7
/* 2102DC 801E577C AC208920 */  sw    $zero, -0x76e0($at)
/* 2102E0 801E5780 8C780000 */  lw    $t8, ($v1)
/* 2102E4 801E5784 3C01801E */  lui   $at, %hi(D_801E6908) # $at, 0x801e
/* 2102E8 801E5788 C4246908 */  lwc1  $f4, %lo(D_801E6908)($at)
/* 2102EC 801E578C 3C01800E */  lui   $at, 0x800e
/* 2102F0 801E5790 0018C880 */  sll   $t9, $t8, 2
/* 2102F4 801E5794 00390821 */  addu  $at, $at, $t9
/* 2102F8 801E5798 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 2102FC 801E579C 8C650000 */  lw    $a1, ($v1)
/* 210300 801E57A0 3C01800F */  lui   $at, 0x800f
/* 210304 801E57A4 00052880 */  sll   $a1, $a1, 2
/* 210308 801E57A8 02454821 */  addu  $t1, $s2, $a1
/* 21030C 801E57AC 8D280000 */  lw    $t0, ($t1)
/* 210310 801E57B0 00455821 */  addu  $t3, $v0, $a1
/* 210314 801E57B4 00085080 */  sll   $t2, $t0, 2
/* 210318 801E57B8 004A6021 */  addu  $t4, $v0, $t2
/* 21031C 801E57BC C5860000 */  lwc1  $f6, ($t4)
/* 210320 801E57C0 E5660000 */  swc1  $f6, ($t3)
/* 210324 801E57C4 8C6D0000 */  lw    $t5, ($v1)
/* 210328 801E57C8 000D7080 */  sll   $t6, $t5, 2
/* 21032C 801E57CC 002E0821 */  addu  $at, $at, $t6
/* 210330 801E57D0 0C02CCFD */  jal   func_800B33F4
/* 210334 801E57D4 E4289020 */   swc1  $f8, -0x6fe0($at)
/* 210338 801E57D8 8E630000 */  lw    $v1, ($s3)
/* 21033C 801E57DC 00111080 */  sll   $v0, $s1, 2
/* 210340 801E57E0 3C01800F */  lui   $at, 0x800f
/* 210344 801E57E4 8C6F0000 */  lw    $t7, ($v1)
/* 210348 801E57E8 00220821 */  addu  $at, $at, $v0
/* 21034C 801E57EC C42AA6E0 */  lwc1  $f10, -0x5920($at)
/* 210350 801E57F0 3C01800E */  lui   $at, 0x800e
/* 210354 801E57F4 000FC080 */  sll   $t8, $t7, 2
/* 210358 801E57F8 00380821 */  addu  $at, $at, $t8
/* 21035C 801E57FC E42A25D0 */  swc1  $f10, 0x25d0($at)
/* 210360 801E5800 8C790000 */  lw    $t9, ($v1)
/* 210364 801E5804 3C01800F */  lui   $at, 0x800f
/* 210368 801E5808 00220821 */  addu  $at, $at, $v0
/* 21036C 801E580C C430A8A0 */  lwc1  $f16, -0x5760($at)
/* 210370 801E5810 3C10800E */  lui   $s0, %hi(gEntitiesNextPosYArray) # $s0, 0x800e
/* 210374 801E5814 26102790 */  addiu $s0, %lo(gEntitiesNextPosYArray) # addiu $s0, $s0, 0x2790
/* 210378 801E5818 00194880 */  sll   $t1, $t9, 2
/* 21037C 801E581C 02094021 */  addu  $t0, $s0, $t1
/* 210380 801E5820 3C01800F */  lui   $at, 0x800f
/* 210384 801E5824 E5100000 */  swc1  $f16, ($t0)
/* 210388 801E5828 8C6A0000 */  lw    $t2, ($v1)
/* 21038C 801E582C 00220821 */  addu  $at, $at, $v0
/* 210390 801E5830 C432AA60 */  lwc1  $f18, -0x55a0($at)
/* 210394 801E5834 3C01800E */  lui   $at, 0x800e
/* 210398 801E5838 000A6080 */  sll   $t4, $t2, 2
/* 21039C 801E583C 002C0821 */  addu  $at, $at, $t4
/* 2103A0 801E5840 E4322950 */  swc1  $f18, 0x2950($at)
/* 2103A4 801E5844 3C01800F */  lui   $at, 0x800f
/* 2103A8 801E5848 8C6B0000 */  lw    $t3, ($v1)
/* 2103AC 801E584C 00220821 */  addu  $at, $at, $v0
/* 2103B0 801E5850 C424AC20 */  lwc1  $f4, -0x53e0($at)
/* 2103B4 801E5854 3C01800E */  lui   $at, 0x800e
/* 2103B8 801E5858 000B6880 */  sll   $t5, $t3, 2
/* 2103BC 801E585C 002D0821 */  addu  $at, $at, $t5
/* 2103C0 801E5860 E4243050 */  swc1  $f4, 0x3050($at)
/* 2103C4 801E5864 3C01800F */  lui   $at, 0x800f
/* 2103C8 801E5868 8C6E0000 */  lw    $t6, ($v1)
/* 2103CC 801E586C 00220821 */  addu  $at, $at, $v0
/* 2103D0 801E5870 C426ADE0 */  lwc1  $f6, -0x5220($at)
/* 2103D4 801E5874 3C01800E */  lui   $at, 0x800e
/* 2103D8 801E5878 000E7880 */  sll   $t7, $t6, 2
/* 2103DC 801E587C 002F0821 */  addu  $at, $at, $t7
/* 2103E0 801E5880 E4263590 */  swc1  $f6, 0x3590($at)
/* 2103E4 801E5884 3C01800F */  lui   $at, 0x800f
/* 2103E8 801E5888 8C780000 */  lw    $t8, ($v1)
/* 2103EC 801E588C 00220821 */  addu  $at, $at, $v0
/* 2103F0 801E5890 C428AFA0 */  lwc1  $f8, -0x5060($at)
/* 2103F4 801E5894 3C01800E */  lui   $at, 0x800e
/* 2103F8 801E5898 0018C880 */  sll   $t9, $t8, 2
/* 2103FC 801E589C 00390821 */  addu  $at, $at, $t9
/* 210400 801E58A0 E4283210 */  swc1  $f8, 0x3210($at)
/* 210404 801E58A4 8C680000 */  lw    $t0, ($v1)
/* 210408 801E58A8 3C09800D */  lui   $t1, %hi(D_800D70C8) # $t1, 0x800d
/* 21040C 801E58AC 8D2970C8 */  lw    $t1, %lo(D_800D70C8)($t1)
/* 210410 801E58B0 00085080 */  sll   $t2, $t0, 2
/* 210414 801E58B4 024A6021 */  addu  $t4, $s2, $t2
/* 210418 801E58B8 3C040001 */  lui   $a0, (0x00010092 >> 16) # lui $a0, 1
/* 21041C 801E58BC 34840092 */  ori   $a0, (0x00010092 & 0xFFFF) # ori $a0, $a0, 0x92
/* 210420 801E58C0 2405002A */  li    $a1, 42
/* 210424 801E58C4 24060010 */  li    $a2, 16
/* 210428 801E58C8 0C02A619 */  jal   func_800A9864
/* 21042C 801E58CC AD890000 */   sw    $t1, ($t4)
/* 210430 801E58D0 3C11800E */  lui   $s1, %hi(D_800E3210) # $s1, 0x800e
/* 210434 801E58D4 3C040001 */  lui   $a0, (0x00010537 >> 16) # lui $a0, 1
/* 210438 801E58D8 26313210 */  addiu $s1, %lo(D_800E3210) # addiu $s1, $s1, 0x3210
/* 21043C 801E58DC 0C02A806 */  jal   func_800AA018
/* 210440 801E58E0 34840537 */   ori   $a0, (0x00010537 & 0xFFFF) # ori $a0, $a0, 0x537
/* 210444 801E58E4 8E630000 */  lw    $v1, ($s3)
/* 210448 801E58E8 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 21044C 801E58EC 4481A000 */  mtc1  $at, $f20
/* 210450 801E58F0 8C650000 */  lw    $a1, ($v1)
/* 210454 801E58F4 3C07800E */  lui   $a3, %hi(D_800E3590) # $a3, 0x800e
/* 210458 801E58F8 00052880 */  sll   $a1, $a1, 2
/* 21045C 801E58FC 02051021 */  addu  $v0, $s0, $a1
/* 210460 801E5900 C44A0000 */  lwc1  $f10, ($v0)
/* 210464 801E5904 460AA03C */  c.lt.s $f20, $f10
/* 210468 801E5908 00000000 */  nop   
/* 21046C 801E590C 4502002D */  bc1fl .L801E59C4_ovl15
/* 210470 801E5910 E4540000 */   swc1  $f20, ($v0)
/* 210474 801E5914 44808000 */  mtc1  $zero, $f16
/* 210478 801E5918 24E73590 */  addiu $a3, %lo(D_800E3590) # addiu $a3, $a3, 0x3590
/* 21047C 801E591C 00E55821 */  addu  $t3, $a3, $a1
/* 210480 801E5920 E5700000 */  swc1  $f16, ($t3)
/* 210484 801E5924 8C650000 */  lw    $a1, ($v1)
/* 210488 801E5928 3C01800E */  lui   $at, 0x800e
/* 21048C 801E592C 00052880 */  sll   $a1, $a1, 2
/* 210490 801E5930 00E56821 */  addu  $t5, $a3, $a1
/* 210494 801E5934 C5B20000 */  lwc1  $f18, ($t5)
/* 210498 801E5938 00250821 */  addu  $at, $at, $a1
/* 21049C 801E593C E4323050 */  swc1  $f18, 0x3050($at)
/* 2104A0 801E5940 8C6E0000 */  lw    $t6, ($v1)
/* 2104A4 801E5944 3C01801E */  lui   $at, %hi(D_801E690C) # $at, 0x801e
/* 2104A8 801E5948 C424690C */  lwc1  $f4, %lo(D_801E690C)($at)
/* 2104AC 801E594C 3C01800E */  lui   $at, 0x800e
/* 2104B0 801E5950 000E7880 */  sll   $t7, $t6, 2
/* 2104B4 801E5954 002F0821 */  addu  $at, $at, $t7
/* 2104B8 801E5958 E4243AD0 */  swc1  $f4, 0x3ad0($at)
/* 2104BC 801E595C 8C780000 */  lw    $t8, ($v1)
/* 2104C0 801E5960 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 2104C4 801E5964 44813000 */  mtc1  $at, $f6
/* 2104C8 801E5968 0018C880 */  sll   $t9, $t8, 2
/* 2104CC 801E596C 02394021 */  addu  $t0, $s1, $t9
/* 2104D0 801E5970 E5060000 */  swc1  $f6, ($t0)
/* 2104D4 801E5974 8C6A0000 */  lw    $t2, ($v1)
/* 2104D8 801E5978 000A4880 */  sll   $t1, $t2, 2
/* 2104DC 801E597C 02091021 */  addu  $v0, $s0, $t1
/* 2104E0 801E5980 C4480000 */  lwc1  $f8, ($v0)
/* 2104E4 801E5984 4608A03C */  c.lt.s $f20, $f8
/* 2104E8 801E5988 00000000 */  nop   
/* 2104EC 801E598C 4502000D */  bc1fl .L801E59C4_ovl15
/* 2104F0 801E5990 E4540000 */   swc1  $f20, ($v0)
.L801E5994_ovl15:
/* 2104F4 801E5994 0C002DAF */  jal   finish_current_thread
/* 2104F8 801E5998 24040001 */   li    $a0, 1
/* 2104FC 801E599C 8E630000 */  lw    $v1, ($s3)
/* 210500 801E59A0 8C6C0000 */  lw    $t4, ($v1)
/* 210504 801E59A4 000C5880 */  sll   $t3, $t4, 2
/* 210508 801E59A8 020B1021 */  addu  $v0, $s0, $t3
/* 21050C 801E59AC C44A0000 */  lwc1  $f10, ($v0)
/* 210510 801E59B0 460AA03C */  c.lt.s $f20, $f10
/* 210514 801E59B4 00000000 */  nop   
/* 210518 801E59B8 4501FFF6 */  bc1t  .L801E5994_ovl15
/* 21051C 801E59BC 00000000 */   nop   
/* 210520 801E59C0 E4540000 */  swc1  $f20, ($v0)
.L801E59C4_ovl15:
/* 210524 801E59C4 8C6D0000 */  lw    $t5, ($v1)
/* 210528 801E59C8 44808000 */  mtc1  $zero, $f16
/* 21052C 801E59CC 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 210530 801E59D0 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 210534 801E59D4 000D7080 */  sll   $t6, $t5, 2
/* 210538 801E59D8 00CE7821 */  addu  $t7, $a2, $t6
/* 21053C 801E59DC E5F00000 */  swc1  $f16, ($t7)
/* 210540 801E59E0 8C650000 */  lw    $a1, ($v1)
/* 210544 801E59E4 3C01801E */  lui   $at, %hi(D_801E6910) # $at, 0x801e
/* 210548 801E59E8 3C07800E */  lui   $a3, %hi(D_800E3590) # $a3, 0x800e
/* 21054C 801E59EC 00052880 */  sll   $a1, $a1, 2
/* 210550 801E59F0 00C5C021 */  addu  $t8, $a2, $a1
/* 210554 801E59F4 C7120000 */  lwc1  $f18, ($t8)
/* 210558 801E59F8 0225C821 */  addu  $t9, $s1, $a1
/* 21055C 801E59FC 24E73590 */  addiu $a3, %lo(D_800E3590) # addiu $a3, $a3, 0x3590
/* 210560 801E5A00 E7320000 */  swc1  $f18, ($t9)
/* 210564 801E5A04 8C680000 */  lw    $t0, ($v1)
/* 210568 801E5A08 C4246910 */  lwc1  $f4, %lo(D_801E6910)($at)
/* 21056C 801E5A0C 3C01800E */  lui   $at, 0x800e
/* 210570 801E5A10 00085080 */  sll   $t2, $t0, 2
/* 210574 801E5A14 002A0821 */  addu  $at, $at, $t2
/* 210578 801E5A18 E4243C90 */  swc1  $f4, 0x3c90($at)
/* 21057C 801E5A1C 8C690000 */  lw    $t1, ($v1)
/* 210580 801E5A20 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 210584 801E5A24 44813000 */  mtc1  $at, $f6
/* 210588 801E5A28 00096080 */  sll   $t4, $t1, 2
/* 21058C 801E5A2C 00EC5821 */  addu  $t3, $a3, $t4
/* 210590 801E5A30 E5660000 */  swc1  $f6, ($t3)
/* 210594 801E5A34 8C6D0000 */  lw    $t5, ($v1)
/* 210598 801E5A38 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 21059C 801E5A3C 44814000 */  mtc1  $at, $f8
/* 2105A0 801E5A40 3C01800E */  lui   $at, 0x800e
/* 2105A4 801E5A44 000D7080 */  sll   $t6, $t5, 2
/* 2105A8 801E5A48 002E0821 */  addu  $at, $at, $t6
/* 2105AC 801E5A4C 3C040001 */  lui   $a0, (0x00010537 >> 16) # lui $a0, 1
/* 2105B0 801E5A50 34840537 */  ori   $a0, (0x00010537 & 0xFFFF) # ori $a0, $a0, 0x537
/* 2105B4 801E5A54 0C02A7A9 */  jal   func_800A9EA4
/* 2105B8 801E5A58 E4283AD0 */   swc1  $f8, 0x3ad0($at)
/* 2105BC 801E5A5C 8E630000 */  lw    $v1, ($s3)
/* 2105C0 801E5A60 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 2105C4 801E5A64 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 2105C8 801E5A68 8C780000 */  lw    $t8, ($v1)
/* 2105CC 801E5A6C 240F01E0 */  li    $t7, 480
/* 2105D0 801E5A70 3C12800F */  lui   $s2, %hi(D_800E83E0) # $s2, 0x800f
/* 2105D4 801E5A74 0018C880 */  sll   $t9, $t8, 2
/* 2105D8 801E5A78 02194021 */  addu  $t0, $s0, $t9
/* 2105DC 801E5A7C AD0F0000 */  sw    $t7, ($t0)
/* 2105E0 801E5A80 8C650000 */  lw    $a1, ($v1)
/* 2105E4 801E5A84 265283E0 */  addiu $s2, %lo(D_800E83E0) # addiu $s2, $s2, -0x7c20
/* 2105E8 801E5A88 2411000A */  li    $s1, 10
/* 2105EC 801E5A8C 00052880 */  sll   $a1, $a1, 2
/* 2105F0 801E5A90 02055021 */  addu  $t2, $s0, $a1
/* 2105F4 801E5A94 8D490000 */  lw    $t1, ($t2)
/* 2105F8 801E5A98 19200013 */  blez  $t1, .L801E5AE8_ovl15
/* 2105FC 801E5A9C 02456021 */   addu  $t4, $s2, $a1
.L801E5AA0_ovl15:
/* 210600 801E5AA0 8D8B0000 */  lw    $t3, ($t4)
/* 210604 801E5AA4 522B0011 */  beql  $s1, $t3, .L801E5AEC_ovl15
/* 210608 801E5AA8 44805000 */   mtc1  $zero, $f10
/* 21060C 801E5AAC 0C002DAF */  jal   finish_current_thread
/* 210610 801E5AB0 24040001 */   li    $a0, 1
/* 210614 801E5AB4 8E630000 */  lw    $v1, ($s3)
/* 210618 801E5AB8 8C6D0000 */  lw    $t5, ($v1)
/* 21061C 801E5ABC 000D7080 */  sll   $t6, $t5, 2
/* 210620 801E5AC0 020E1021 */  addu  $v0, $s0, $t6
/* 210624 801E5AC4 8C580000 */  lw    $t8, ($v0)
/* 210628 801E5AC8 2719FFFF */  addiu $t9, $t8, -1
/* 21062C 801E5ACC AC590000 */  sw    $t9, ($v0)
/* 210630 801E5AD0 8C650000 */  lw    $a1, ($v1)
/* 210634 801E5AD4 00052880 */  sll   $a1, $a1, 2
/* 210638 801E5AD8 02057821 */  addu  $t7, $s0, $a1
/* 21063C 801E5ADC 8DE80000 */  lw    $t0, ($t7)
/* 210640 801E5AE0 5D00FFEF */  bgtzl $t0, .L801E5AA0_ovl15
/* 210644 801E5AE4 02456021 */   addu  $t4, $s2, $a1
.L801E5AE8_ovl15:
/* 210648 801E5AE8 44805000 */  mtc1  $zero, $f10
.L801E5AEC_ovl15:
/* 21064C 801E5AEC 3C01800E */  lui   $at, 0x800e
/* 210650 801E5AF0 00250821 */  addu  $at, $at, $a1
/* 210654 801E5AF4 E42A3590 */  swc1  $f10, 0x3590($at)
/* 210658 801E5AF8 8C650000 */  lw    $a1, ($v1)
/* 21065C 801E5AFC 3C01800E */  lui   $at, 0x800e
/* 210660 801E5B00 3C12800F */  lui   $s2, %hi(D_800E83E0) # $s2, 0x800f
/* 210664 801E5B04 00052880 */  sll   $a1, $a1, 2
/* 210668 801E5B08 00250821 */  addu  $at, $at, $a1
/* 21066C 801E5B0C C4303590 */  lwc1  $f16, 0x3590($at)
/* 210670 801E5B10 3C01800E */  lui   $at, 0x800e
/* 210674 801E5B14 00250821 */  addu  $at, $at, $a1
/* 210678 801E5B18 3C040001 */  lui   $a0, (0x00010536 >> 16) # lui $a0, 1
/* 21067C 801E5B1C 265283E0 */  addiu $s2, %lo(D_800E83E0) # addiu $s2, $s2, -0x7c20
/* 210680 801E5B20 2411000A */  li    $s1, 10
/* 210684 801E5B24 34840536 */  ori   $a0, (0x00010536 & 0xFFFF) # ori $a0, $a0, 0x536
/* 210688 801E5B28 0C02A7A9 */  jal   func_800A9EA4
/* 21068C 801E5B2C E4303050 */   swc1  $f16, 0x3050($at)
/* 210690 801E5B30 8E6A0000 */  lw    $t2, ($s3)
/* 210694 801E5B34 8D450000 */  lw    $a1, ($t2)
/* 210698 801E5B38 00052880 */  sll   $a1, $a1, 2
/* 21069C 801E5B3C 02054821 */  addu  $t1, $s0, $a1
/* 2106A0 801E5B40 8D2C0000 */  lw    $t4, ($t1)
/* 2106A4 801E5B44 19800013 */  blez  $t4, .L801E5B94_ovl15
/* 2106A8 801E5B48 02455821 */   addu  $t3, $s2, $a1
.L801E5B4C_ovl15:
/* 2106AC 801E5B4C 8D6D0000 */  lw    $t5, ($t3)
/* 2106B0 801E5B50 162D0010 */  bne   $s1, $t5, .L801E5B94_ovl15
/* 2106B4 801E5B54 00000000 */   nop   
/* 2106B8 801E5B58 0C002DAF */  jal   finish_current_thread
/* 2106BC 801E5B5C 24040001 */   li    $a0, 1
/* 2106C0 801E5B60 8E630000 */  lw    $v1, ($s3)
/* 2106C4 801E5B64 8C6E0000 */  lw    $t6, ($v1)
/* 2106C8 801E5B68 000EC080 */  sll   $t8, $t6, 2
/* 2106CC 801E5B6C 02181021 */  addu  $v0, $s0, $t8
/* 2106D0 801E5B70 8C590000 */  lw    $t9, ($v0)
/* 2106D4 801E5B74 272FFFFF */  addiu $t7, $t9, -1
/* 2106D8 801E5B78 AC4F0000 */  sw    $t7, ($v0)
/* 2106DC 801E5B7C 8C650000 */  lw    $a1, ($v1)
/* 2106E0 801E5B80 00052880 */  sll   $a1, $a1, 2
/* 2106E4 801E5B84 02054021 */  addu  $t0, $s0, $a1
/* 2106E8 801E5B88 8D0A0000 */  lw    $t2, ($t0)
/* 2106EC 801E5B8C 5D40FFEF */  bgtzl $t2, .L801E5B4C_ovl15
/* 2106F0 801E5B90 02455821 */   addu  $t3, $s2, $a1
.L801E5B94_ovl15:
/* 2106F4 801E5B94 3C04801D */  lui   $a0, %hi(D_801D7C48) # $a0, 0x801d
/* 2106F8 801E5B98 0C066220 */  jal   func_80198880_ovl15
/* 2106FC 801E5B9C 24847C48 */   addiu $a0, %lo(D_801D7C48) # addiu $a0, $a0, 0x7c48
/* 210700 801E5BA0 8E630000 */  lw    $v1, ($s3)
/* 210704 801E5BA4 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 210708 801E5BA8 44819000 */  mtc1  $at, $f18
/* 21070C 801E5BAC 8C690000 */  lw    $t1, ($v1)
/* 210710 801E5BB0 3C01800E */  lui   $at, 0x800e
/* 210714 801E5BB4 3C040001 */  lui   $a0, (0x00010537 >> 16) # lui $a0, 1
/* 210718 801E5BB8 00096080 */  sll   $t4, $t1, 2
/* 21071C 801E5BBC 002C0821 */  addu  $at, $at, $t4
/* 210720 801E5BC0 E4323590 */  swc1  $f18, 0x3590($at)
/* 210724 801E5BC4 8C6B0000 */  lw    $t3, ($v1)
/* 210728 801E5BC8 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 21072C 801E5BCC 44812000 */  mtc1  $at, $f4
/* 210730 801E5BD0 3C01800E */  lui   $at, 0x800e
/* 210734 801E5BD4 000B6880 */  sll   $t5, $t3, 2
/* 210738 801E5BD8 002D0821 */  addu  $at, $at, $t5
/* 21073C 801E5BDC 34840537 */  ori   $a0, (0x00010537 & 0xFFFF) # ori $a0, $a0, 0x537
/* 210740 801E5BE0 0C02A7A9 */  jal   func_800A9EA4
/* 210744 801E5BE4 E4243AD0 */   swc1  $f4, 0x3ad0($at)
/* 210748 801E5BE8 8E6E0000 */  lw    $t6, ($s3)
/* 21074C 801E5BEC 8DD80000 */  lw    $t8, ($t6)
/* 210750 801E5BF0 0018C880 */  sll   $t9, $t8, 2
/* 210754 801E5BF4 02197821 */  addu  $t7, $s0, $t9
/* 210758 801E5BF8 8DE40000 */  lw    $a0, ($t7)
/* 21075C 801E5BFC 18800003 */  blez  $a0, .L801E5C0C_ovl15
/* 210760 801E5C00 00000000 */   nop   
/* 210764 801E5C04 0C002DAF */  jal   finish_current_thread
/* 210768 801E5C08 00000000 */   nop   
.L801E5C0C_ovl15:
/* 21076C 801E5C0C 0C06B3E1 */  jal   D_801ACF84_ovl15
/* 210770 801E5C10 8FA40030 */   lw    $a0, 0x30($sp)
/* 210774 801E5C14 8FBF002C */  lw    $ra, 0x2c($sp)
/* 210778 801E5C18 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 21077C 801E5C1C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 210780 801E5C20 8FB10020 */  lw    $s1, 0x20($sp)
/* 210784 801E5C24 8FB20024 */  lw    $s2, 0x24($sp)
/* 210788 801E5C28 8FB30028 */  lw    $s3, 0x28($sp)
/* 21078C 801E5C2C 03E00008 */  jr    $ra
/* 210790 801E5C30 27BD0030 */   addiu $sp, $sp, 0x30

/* 210794 801E5C34 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 210798 801E5C38 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21079C 801E5C3C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 2107A0 801E5C40 AFBF001C */  sw    $ra, 0x1c($sp)
/* 2107A4 801E5C44 AFA40038 */  sw    $a0, 0x38($sp)
/* 2107A8 801E5C48 8C4E0000 */  lw    $t6, ($v0)
/* 2107AC 801E5C4C 3C04800F */  lui   $a0, %hi(D_800E9560) # $a0, 0x800f
/* 2107B0 801E5C50 24849560 */  addiu $a0, %lo(D_800E9560) # addiu $a0, $a0, -0x6aa0
/* 2107B4 801E5C54 000E7880 */  sll   $t7, $t6, 2
/* 2107B8 801E5C58 008F1821 */  addu  $v1, $a0, $t7
/* 2107BC 801E5C5C 8C780000 */  lw    $t8, ($v1)
/* 2107C0 801E5C60 3C0B800E */  lui   $t3, 0x800e
/* 2107C4 801E5C64 27190001 */  addiu $t9, $t8, 1
/* 2107C8 801E5C68 AC790000 */  sw    $t9, ($v1)
/* 2107CC 801E5C6C 8C460000 */  lw    $a2, ($v0)
/* 2107D0 801E5C70 00063080 */  sll   $a2, $a2, 2
/* 2107D4 801E5C74 00864021 */  addu  $t0, $a0, $a2
/* 2107D8 801E5C78 8D090000 */  lw    $t1, ($t0)
/* 2107DC 801E5C7C 01665821 */  addu  $t3, $t3, $a2
/* 2107E0 801E5C80 05210004 */  bgez  $t1, .L801E5C94_ovl15
/* 2107E4 801E5C84 312A0001 */   andi  $t2, $t1, 1
/* 2107E8 801E5C88 11400002 */  beqz  $t2, .L801E5C94_ovl15
/* 2107EC 801E5C8C 00000000 */   nop   
/* 2107F0 801E5C90 254AFFFE */  addiu $t2, $t2, -2
.L801E5C94_ovl15:
/* 2107F4 801E5C94 11400012 */  beqz  $t2, .L801E5CE0_ovl15
/* 2107F8 801E5C98 00000000 */   nop   
/* 2107FC 801E5C9C 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 210800 801E5CA0 27A4002C */  addiu $a0, $sp, 0x2c
/* 210804 801E5CA4 0C0291E5 */  jal   func_800A4794
/* 210808 801E5CA8 8D650014 */   lw    $a1, 0x14($t3)
/* 21080C 801E5CAC C7A40030 */  lwc1  $f4, 0x30($sp)
/* 210810 801E5CB0 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 210814 801E5CB4 24040006 */  li    $a0, 6
/* 210818 801E5CB8 24050002 */  li    $a1, 2
/* 21081C 801E5CBC 2406000B */  li    $a2, 11
/* 210820 801E5CC0 8FA7002C */  lw    $a3, 0x2c($sp)
/* 210824 801E5CC4 E7A40010 */  swc1  $f4, 0x10($sp)
/* 210828 801E5CC8 0C029FDD */  jal   func_800A7F74
/* 21082C 801E5CCC E7A60014 */   swc1  $f6, 0x14($sp)
/* 210830 801E5CD0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 210834 801E5CD4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 210838 801E5CD8 8D860000 */  lw    $a2, ($t4)
/* 21083C 801E5CDC 00063080 */  sll   $a2, $a2, 2
.L801E5CE0_ovl15:
/* 210840 801E5CE0 3C0D800E */  lui   $t5, 0x800e
/* 210844 801E5CE4 01A66821 */  addu  $t5, $t5, $a2
/* 210848 801E5CE8 8DADFBD0 */  lw    $t5, -0x430($t5)
/* 21084C 801E5CEC 0C0680F9 */  jal   func_801A03E4_ovl15
/* 210850 801E5CF0 8DA40008 */   lw    $a0, 8($t5)
/* 210854 801E5CF4 3C0E800D */  lui   $t6, %hi(D_800D7154) # $t6, 0x800d
/* 210858 801E5CF8 8DCE7154 */  lw    $t6, %lo(D_800D7154)($t6)
/* 21085C 801E5CFC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 210860 801E5D00 55C00011 */  bnezl $t6, .L801E5D48_ovl15
/* 210864 801E5D04 8FBF001C */   lw    $ra, 0x1c($sp)
/* 210868 801E5D08 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21086C 801E5D0C 3C01800E */  lui   $at, 0x800e
/* 210870 801E5D10 240FFFFF */  li    $t7, -1
/* 210874 801E5D14 8C580000 */  lw    $t8, ($v0)
/* 210878 801E5D18 3C04800E */  lui   $a0, 0x800e
/* 21087C 801E5D1C 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 210880 801E5D20 0018C880 */  sll   $t9, $t8, 2
/* 210884 801E5D24 00390821 */  addu  $at, $at, $t9
/* 210888 801E5D28 AC2FDC50 */  sw    $t7, -0x23b0($at)
/* 21088C 801E5D2C 8C480000 */  lw    $t0, ($v0)
/* 210890 801E5D30 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 210894 801E5D34 00084880 */  sll   $t1, $t0, 2
/* 210898 801E5D38 00892021 */  addu  $a0, $a0, $t1
/* 21089C 801E5D3C 0C02C7B2 */  jal   assign_new_process_entry
/* 2108A0 801E5D40 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 2108A4 801E5D44 8FBF001C */  lw    $ra, 0x1c($sp)
.L801E5D48_ovl15:
/* 2108A8 801E5D48 27BD0038 */  addiu $sp, $sp, 0x38
/* 2108AC 801E5D4C 03E00008 */  jr    $ra
/* 2108B0 801E5D50 00000000 */   nop   

/* 2108B4 801E5D54 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 2108B8 801E5D58 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2108BC 801E5D5C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2108C0 801E5D60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2108C4 801E5D64 AFA40020 */  sw    $a0, 0x20($sp)
/* 2108C8 801E5D68 AFA50024 */  sw    $a1, 0x24($sp)
/* 2108CC 801E5D6C 8DCF0000 */  lw    $t7, ($t6)
/* 2108D0 801E5D70 3C19800E */  lui   $t9, 0x800e
/* 2108D4 801E5D74 000FC080 */  sll   $t8, $t7, 2
/* 2108D8 801E5D78 0338C821 */  addu  $t9, $t9, $t8
/* 2108DC 801E5D7C 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 2108E0 801E5D80 0C068119 */  jal   func_801A0464_ovl15
/* 2108E4 801E5D84 AFB9001C */   sw    $t9, 0x1c($sp)
/* 2108E8 801E5D88 8FA8001C */  lw    $t0, 0x1c($sp)
/* 2108EC 801E5D8C 8FA50020 */  lw    $a1, 0x20($sp)
/* 2108F0 801E5D90 00402025 */  move  $a0, $v0
/* 2108F4 801E5D94 8D09008C */  lw    $t1, 0x8c($t0)
/* 2108F8 801E5D98 8D230008 */  lw    $v1, 8($t1)
/* 2108FC 801E5D9C 8C6A0004 */  lw    $t2, 4($v1)
/* 210900 801E5DA0 15400011 */  bnez  $t2, .L801E5DE8_ovl15
/* 210904 801E5DA4 00000000 */   nop   
/* 210908 801E5DA8 10A0000F */  beqz  $a1, .L801E5DE8_ovl15
/* 21090C 801E5DAC 00000000 */   nop   
/* 210910 801E5DB0 8C4B0024 */  lw    $t3, 0x24($v0)
/* 210914 801E5DB4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 210918 801E5DB8 44812000 */  mtc1  $at, $f4
/* 21091C 801E5DBC AD650008 */  sw    $a1, 8($t3)
/* 210920 801E5DC0 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 210924 801E5DC4 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 210928 801E5DC8 44815000 */  mtc1  $at, $f10
/* 21092C 801E5DCC 46062202 */  mul.s $f8, $f4, $f6
/* 210930 801E5DD0 8C4C0024 */  lw    $t4, 0x24($v0)
/* 210934 801E5DD4 460A4001 */  sub.s $f0, $f8, $f10
/* 210938 801E5DD8 E5800010 */  swc1  $f0, 0x10($t4)
/* 21093C 801E5DDC 8C4D0024 */  lw    $t5, 0x24($v0)
/* 210940 801E5DE0 46000407 */  neg.s $f16, $f0
/* 210944 801E5DE4 E5B0001C */  swc1  $f16, 0x1c($t5)
.L801E5DE8_ovl15:
/* 210948 801E5DE8 0C0447B3 */  jal   func_80111ECC
/* 21094C 801E5DEC 00000000 */   nop   
/* 210950 801E5DF0 0C06812E */  jal   func_801A04B8_ovl15
/* 210954 801E5DF4 00000000 */   nop   
/* 210958 801E5DF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21095C 801E5DFC 27BD0020 */  addiu $sp, $sp, 0x20
/* 210960 801E5E00 03E00008 */  jr    $ra
/* 210964 801E5E04 00000000 */   nop   

/* 210968 801E5E08 00000000 */  nop   
/* 21096C 801E5E0C 00000000 */  nop   
/* 210970 801E5E10 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 210974 801E5E14 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 210978 801E5E18 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 21097C 801E5E1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 210980 801E5E20 AFA40020 */  sw    $a0, 0x20($sp)
/* 210984 801E5E24 8C620000 */  lw    $v0, ($v1)
/* 210988 801E5E28 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 21098C 801E5E2C 44812000 */  mtc1  $at, $f4
/* 210990 801E5E30 3C01800F */  lui   $at, 0x800f
/* 210994 801E5E34 00021080 */  sll   $v0, $v0, 2
/* 210998 801E5E38 00220821 */  addu  $at, $at, $v0
/* 21099C 801E5E3C E424C660 */  swc1  $f4, -0x39a0($at)
/* 2109A0 801E5E40 8C6E0000 */  lw    $t6, ($v1)
/* 2109A4 801E5E44 3C05800E */  lui   $a1, 0x800e
/* 2109A8 801E5E48 00A22821 */  addu  $a1, $a1, $v0
/* 2109AC 801E5E4C 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 2109B0 801E5E50 44803000 */  mtc1  $zero, $f6
/* 2109B4 801E5E54 3C01800F */  lui   $at, 0x800f
/* 2109B8 801E5E58 000E7880 */  sll   $t7, $t6, 2
/* 2109BC 801E5E5C 002F0821 */  addu  $at, $at, $t7
/* 2109C0 801E5E60 AFA5001C */  sw    $a1, 0x1c($sp)
/* 2109C4 801E5E64 0C06AEE8 */  jal   func_801ABBA0_ovl15
/* 2109C8 801E5E68 E426C820 */   swc1  $f6, -0x37e0($at)
/* 2109CC 801E5E6C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 2109D0 801E5E70 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 2109D4 801E5E74 8C590000 */  lw    $t9, ($v0)
/* 2109D8 801E5E78 8FA5001C */  lw    $a1, 0x1c($sp)
/* 2109DC 801E5E7C 3C18801E */  lui   $t8, %hi(D_801E6074) # $t8, 0x801e
/* 2109E0 801E5E80 8F280000 */  lw    $t0, ($t9)
/* 2109E4 801E5E84 3C01800E */  lui   $at, 0x800e
/* 2109E8 801E5E88 27186074 */  addiu $t8, %lo(D_801E6074) # addiu $t8, $t8, 0x6074
/* 2109EC 801E5E8C 00084880 */  sll   $t1, $t0, 2
/* 2109F0 801E5E90 00290821 */  addu  $at, $at, $t1
/* 2109F4 801E5E94 AC38F150 */  sw    $t8, -0xeb0($at)
/* 2109F8 801E5E98 3C0A8011 */  lui   $t2, %hi(func_8010C274) # $t2, 0x8011
/* 2109FC 801E5E9C 3C0B801D */  lui   $t3, %hi(D_801CB56C) # $t3, 0x801d
/* 210A00 801E5EA0 254AC274 */  addiu $t2, %lo(func_8010C274) # addiu $t2, $t2, -0x3d8c
/* 210A04 801E5EA4 256BB56C */  addiu $t3, %lo(D_801CB56C) # addiu $t3, $t3, -0x4a94
/* 210A08 801E5EA8 ACAA0048 */  sw    $t2, 0x48($a1)
/* 210A0C 801E5EAC ACAB0098 */  sw    $t3, 0x98($a1)
/* 210A10 801E5EB0 8C4C0000 */  lw    $t4, ($v0)
/* 210A14 801E5EB4 3C01800F */  lui   $at, 0x800f
/* 210A18 801E5EB8 8D8D0000 */  lw    $t5, ($t4)
/* 210A1C 801E5EBC 000D7080 */  sll   $t6, $t5, 2
/* 210A20 801E5EC0 002E0821 */  addu  $at, $at, $t6
/* 210A24 801E5EC4 AC208920 */  sw    $zero, -0x76e0($at)
/* 210A28 801E5EC8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 210A2C 801E5ECC 0C02BB30 */  jal   func_800AECC0
/* 210A30 801E5ED0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 210A34 801E5ED4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 210A38 801E5ED8 0C02BB48 */  jal   func_800AED20
/* 210A3C 801E5EDC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 210A40 801E5EE0 3C040001 */  lui   $a0, (0x00010530 >> 16) # lui $a0, 1
/* 210A44 801E5EE4 0C02A806 */  jal   func_800AA018
/* 210A48 801E5EE8 34840530 */   ori   $a0, (0x00010530 & 0xFFFF) # ori $a0, $a0, 0x530
/* 210A4C 801E5EEC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 210A50 801E5EF0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 210A54 801E5EF4 3C0F800E */  lui   $t7, 0x800e
/* 210A58 801E5EF8 3C08800F */  lui   $t0, 0x800f
/* 210A5C 801E5EFC 8C620000 */  lw    $v0, ($v1)
/* 210A60 801E5F00 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 210A64 801E5F04 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 210A68 801E5F08 00021080 */  sll   $v0, $v0, 2
/* 210A6C 801E5F0C 01E27821 */  addu  $t7, $t7, $v0
/* 210A70 801E5F10 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 210A74 801E5F14 00826821 */  addu  $t5, $a0, $v0
/* 210A78 801E5F18 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 210A7C 801E5F1C 000FC880 */  sll   $t9, $t7, 2
/* 210A80 801E5F20 01194021 */  addu  $t0, $t0, $t9
/* 210A84 801E5F24 8D088AE0 */  lw    $t0, -0x7520($t0)
/* 210A88 801E5F28 3C014060 */  lui   $at, 0x4060
/* 210A8C 801E5F2C 31180006 */  andi  $t8, $t0, 6
/* 210A90 801E5F30 5300001E */  beql  $t8, $zero, .L801E5FAC_ovl15
/* 210A94 801E5F34 C5AA0000 */   lwc1  $f10, ($t5)
/* 210A98 801E5F38 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 210A9C 801E5F3C 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 210AA0 801E5F40 00824821 */  addu  $t1, $a0, $v0
/* 210AA4 801E5F44 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 210AA8 801E5F48 44815000 */  mtc1  $at, $f10
/* 210AAC 801E5F4C C5280000 */  lwc1  $f8, ($t1)
/* 210AB0 801E5F50 3C01800E */  lui   $at, 0x800e
/* 210AB4 801E5F54 00220821 */  addu  $at, $at, $v0
/* 210AB8 801E5F58 460A4402 */  mul.s $f16, $f8, $f10
/* 210ABC 801E5F5C E43064D0 */  swc1  $f16, 0x64d0($at)
/* 210AC0 801E5F60 8C620000 */  lw    $v0, ($v1)
/* 210AC4 801E5F64 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 210AC8 801E5F68 44812000 */  mtc1  $at, $f4
/* 210ACC 801E5F6C 00021080 */  sll   $v0, $v0, 2
/* 210AD0 801E5F70 00825021 */  addu  $t2, $a0, $v0
/* 210AD4 801E5F74 C5520000 */  lwc1  $f18, ($t2)
/* 210AD8 801E5F78 3C01800E */  lui   $at, 0x800e
/* 210ADC 801E5F7C 00220821 */  addu  $at, $at, $v0
/* 210AE0 801E5F80 46049182 */  mul.s $f6, $f18, $f4
/* 210AE4 801E5F84 E4266690 */  swc1  $f6, 0x6690($at)
/* 210AE8 801E5F88 8C6B0000 */  lw    $t3, ($v1)
/* 210AEC 801E5F8C 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 210AF0 801E5F90 44814000 */  mtc1  $at, $f8
/* 210AF4 801E5F94 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 210AF8 801E5F98 000B6080 */  sll   $t4, $t3, 2
/* 210AFC 801E5F9C 002C0821 */  addu  $at, $at, $t4
/* 210B00 801E5FA0 10000018 */  b     .L801E6004_ovl15
/* 210B04 801E5FA4 E4286850 */   swc1  $f8, 0x6850($at)
/* 210B08 801E5FA8 C5AA0000 */  lwc1  $f10, ($t5)
.L801E5FAC_ovl15:
/* 210B0C 801E5FAC 44818000 */  mtc1  $at, $f16
/* 210B10 801E5FB0 3C01800E */  lui   $at, 0x800e
/* 210B14 801E5FB4 00220821 */  addu  $at, $at, $v0
/* 210B18 801E5FB8 46105482 */  mul.s $f18, $f10, $f16
/* 210B1C 801E5FBC E43264D0 */  swc1  $f18, 0x64d0($at)
/* 210B20 801E5FC0 8C620000 */  lw    $v0, ($v1)
/* 210B24 801E5FC4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 210B28 801E5FC8 44813000 */  mtc1  $at, $f6
/* 210B2C 801E5FCC 00021080 */  sll   $v0, $v0, 2
/* 210B30 801E5FD0 00827021 */  addu  $t6, $a0, $v0
/* 210B34 801E5FD4 C5C40000 */  lwc1  $f4, ($t6)
/* 210B38 801E5FD8 3C01800E */  lui   $at, 0x800e
/* 210B3C 801E5FDC 00220821 */  addu  $at, $at, $v0
/* 210B40 801E5FE0 46062202 */  mul.s $f8, $f4, $f6
/* 210B44 801E5FE4 E4286690 */  swc1  $f8, 0x6690($at)
/* 210B48 801E5FE8 8C6F0000 */  lw    $t7, ($v1)
/* 210B4C 801E5FEC 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 210B50 801E5FF0 44815000 */  mtc1  $at, $f10
/* 210B54 801E5FF4 3C01800E */  lui   $at, 0x800e
/* 210B58 801E5FF8 000FC880 */  sll   $t9, $t7, 2
/* 210B5C 801E5FFC 00390821 */  addu  $at, $at, $t9
/* 210B60 801E6000 E42A6850 */  swc1  $f10, 0x6850($at)
.L801E6004_ovl15:
/* 210B64 801E6004 8C680000 */  lw    $t0, ($v1)
/* 210B68 801E6008 44808000 */  mtc1  $zero, $f16
/* 210B6C 801E600C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 210B70 801E6010 0008C080 */  sll   $t8, $t0, 2
/* 210B74 801E6014 00B84821 */  addu  $t1, $a1, $t8
/* 210B78 801E6018 E5300000 */  swc1  $f16, ($t1)
/* 210B7C 801E601C 8C620000 */  lw    $v0, ($v1)
/* 210B80 801E6020 3C01800E */  lui   $at, 0x800e
/* 210B84 801E6024 2404003C */  li    $a0, 60
/* 210B88 801E6028 00021080 */  sll   $v0, $v0, 2
/* 210B8C 801E602C 00A25021 */  addu  $t2, $a1, $v0
/* 210B90 801E6030 C5520000 */  lwc1  $f18, ($t2)
/* 210B94 801E6034 00220821 */  addu  $at, $at, $v0
/* 210B98 801E6038 E4323210 */  swc1  $f18, 0x3210($at)
/* 210B9C 801E603C 8C6B0000 */  lw    $t3, ($v1)
/* 210BA0 801E6040 3C01801E */  lui   $at, %hi(D_801E6920) # $at, 0x801e
/* 210BA4 801E6044 C4246920 */  lwc1  $f4, %lo(D_801E6920)($at)
/* 210BA8 801E6048 3C01800E */  lui   $at, 0x800e
/* 210BAC 801E604C 000B6080 */  sll   $t4, $t3, 2
/* 210BB0 801E6050 002C0821 */  addu  $at, $at, $t4
/* 210BB4 801E6054 0C002DAF */  jal   finish_current_thread
/* 210BB8 801E6058 E4243C90 */   swc1  $f4, 0x3c90($at)
/* 210BBC 801E605C 0C06B0D9 */  jal   D_801AC364_ovl15
/* 210BC0 801E6060 8FA40020 */   lw    $a0, 0x20($sp)
/* 210BC4 801E6064 8FBF0014 */  lw    $ra, 0x14($sp)
/* 210BC8 801E6068 27BD0020 */  addiu $sp, $sp, 0x20
/* 210BCC 801E606C 03E00008 */  jr    $ra
/* 210BD0 801E6070 00000000 */   nop   

/* 210BD4 801E6074 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 210BD8 801E6078 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 210BDC 801E607C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 210BE0 801E6080 AFBF0014 */  sw    $ra, 0x14($sp)
/* 210BE4 801E6084 8DC20000 */  lw    $v0, ($t6)
/* 210BE8 801E6088 3C03800F */  lui   $v1, 0x800f
/* 210BEC 801E608C 24010012 */  li    $at, 18
/* 210BF0 801E6090 00021080 */  sll   $v0, $v0, 2
/* 210BF4 801E6094 00621821 */  addu  $v1, $v1, $v0
/* 210BF8 801E6098 8C6383E0 */  lw    $v1, -0x7c20($v1)
/* 210BFC 801E609C 10600012 */  beqz  $v1, .L801E60E8_ovl15
/* 210C00 801E60A0 00000000 */   nop   
/* 210C04 801E60A4 14610009 */  bne   $v1, $at, .L801E60CC_ovl15
/* 210C08 801E60A8 3C04800E */   lui   $a0, 0x800e
/* 210C0C 801E60AC 3C04800E */  lui   $a0, 0x800e
/* 210C10 801E60B0 00822021 */  addu  $a0, $a0, $v0
/* 210C14 801E60B4 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 210C18 801E60B8 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 210C1C 801E60BC 0C02C7B2 */  jal   assign_new_process_entry
/* 210C20 801E60C0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 210C24 801E60C4 1000001A */  b     .L801E6130_ovl15
/* 210C28 801E60C8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E60CC_ovl15:
/* 210C2C 801E60CC 00822021 */  addu  $a0, $a0, $v0
/* 210C30 801E60D0 3C05801B */  lui   $a1, %hi(D_801AC364) # $a1, 0x801b
/* 210C34 801E60D4 24A5C364 */  addiu $a1, %lo(D_801AC364) # addiu $a1, $a1, -0x3c9c
/* 210C38 801E60D8 0C02C7B2 */  jal   assign_new_process_entry
/* 210C3C 801E60DC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 210C40 801E60E0 10000013 */  b     .L801E6130_ovl15
/* 210C44 801E60E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E60E8_ovl15:
/* 210C48 801E60E8 0C06835D */  jal   func_801A0D74_ovl15
/* 210C4C 801E60EC 00000000 */   nop   
/* 210C50 801E60F0 10400006 */  beqz  $v0, .L801E610C_ovl15
/* 210C54 801E60F4 3C04801D */   lui   $a0, %hi(D_801CB044) # $a0, 0x801d
/* 210C58 801E60F8 0C068E4E */  jal   func_801A3938_ovl15
/* 210C5C 801E60FC 2484B044 */   addiu $a0, %lo(D_801CB044) # addiu $a0, $a0, -0x4fbc
/* 210C60 801E6100 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 210C64 801E6104 0C068DB3 */  jal   func_801A36CC_ovl15
/* 210C68 801E6108 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801E610C_ovl15:
/* 210C6C 801E610C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 210C70 801E6110 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 210C74 801E6114 3C04801D */  lui   $a0, %hi(D_801CA738) # $a0, 0x801d
/* 210C78 801E6118 2484A738 */  addiu $a0, %lo(D_801CA738) # addiu $a0, $a0, -0x58c8
/* 210C7C 801E611C 0C0445EF */  jal   func_801117BC
/* 210C80 801E6120 8DE50000 */   lw    $a1, ($t7)
/* 210C84 801E6124 0C044713 */  jal   func_80111C4C
/* 210C88 801E6128 00402025 */   move  $a0, $v0
/* 210C8C 801E612C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E6130_ovl15:
/* 210C90 801E6130 27BD0018 */  addiu $sp, $sp, 0x18
/* 210C94 801E6134 03E00008 */  jr    $ra
/* 210C98 801E6138 00000000 */   nop   

/* 210C9C 801E613C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 210CA0 801E6140 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 210CA4 801E6144 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 210CA8 801E6148 AFBF0014 */  sw    $ra, 0x14($sp)
/* 210CAC 801E614C AFA40020 */  sw    $a0, 0x20($sp)
/* 210CB0 801E6150 8C620000 */  lw    $v0, ($v1)
/* 210CB4 801E6154 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 210CB8 801E6158 44812000 */  mtc1  $at, $f4
/* 210CBC 801E615C 3C01800F */  lui   $at, 0x800f
/* 210CC0 801E6160 00021080 */  sll   $v0, $v0, 2
/* 210CC4 801E6164 00220821 */  addu  $at, $at, $v0
/* 210CC8 801E6168 E424C660 */  swc1  $f4, -0x39a0($at)
/* 210CCC 801E616C 8C6E0000 */  lw    $t6, ($v1)
/* 210CD0 801E6170 3C05800E */  lui   $a1, 0x800e
/* 210CD4 801E6174 00A22821 */  addu  $a1, $a1, $v0
/* 210CD8 801E6178 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 210CDC 801E617C 44803000 */  mtc1  $zero, $f6
/* 210CE0 801E6180 3C01800F */  lui   $at, 0x800f
/* 210CE4 801E6184 000E7880 */  sll   $t7, $t6, 2
/* 210CE8 801E6188 002F0821 */  addu  $at, $at, $t7
/* 210CEC 801E618C AFA5001C */  sw    $a1, 0x1c($sp)
/* 210CF0 801E6190 0C06AEE8 */  jal   func_801ABBA0_ovl15
/* 210CF4 801E6194 E426C820 */   swc1  $f6, -0x37e0($at)
/* 210CF8 801E6198 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 210CFC 801E619C 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 210D00 801E61A0 8C990000 */  lw    $t9, ($a0)
/* 210D04 801E61A4 8FA5001C */  lw    $a1, 0x1c($sp)
/* 210D08 801E61A8 3C18801E */  lui   $t8, %hi(D_801E6374) # $t8, 0x801e
/* 210D0C 801E61AC 8F280000 */  lw    $t0, ($t9)
/* 210D10 801E61B0 3C01800E */  lui   $at, 0x800e
/* 210D14 801E61B4 27186374 */  addiu $t8, %lo(D_801E6374) # addiu $t8, $t8, 0x6374
/* 210D18 801E61B8 00084880 */  sll   $t1, $t0, 2
/* 210D1C 801E61BC 00290821 */  addu  $at, $at, $t1
/* 210D20 801E61C0 AC38F150 */  sw    $t8, -0xeb0($at)
/* 210D24 801E61C4 3C0A8011 */  lui   $t2, %hi(func_8010C274) # $t2, 0x8011
/* 210D28 801E61C8 3C0B801D */  lui   $t3, %hi(D_801CB56C) # $t3, 0x801d
/* 210D2C 801E61CC 254AC274 */  addiu $t2, %lo(func_8010C274) # addiu $t2, $t2, -0x3d8c
/* 210D30 801E61D0 256BB56C */  addiu $t3, %lo(D_801CB56C) # addiu $t3, $t3, -0x4a94
/* 210D34 801E61D4 ACAA0048 */  sw    $t2, 0x48($a1)
/* 210D38 801E61D8 ACAB0098 */  sw    $t3, 0x98($a1)
/* 210D3C 801E61DC 8C830000 */  lw    $v1, ($a0)
/* 210D40 801E61E0 3C01800F */  lui   $at, 0x800f
/* 210D44 801E61E4 3C0E800E */  lui   $t6, 0x800e
/* 210D48 801E61E8 8C6C0000 */  lw    $t4, ($v1)
/* 210D4C 801E61EC 3C19800F */  lui   $t9, 0x800f
/* 210D50 801E61F0 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 210D54 801E61F4 000C6880 */  sll   $t5, $t4, 2
/* 210D58 801E61F8 002D0821 */  addu  $at, $at, $t5
/* 210D5C 801E61FC AC208920 */  sw    $zero, -0x76e0($at)
/* 210D60 801E6200 8C620000 */  lw    $v0, ($v1)
/* 210D64 801E6204 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 210D68 801E6208 3C014060 */  lui   $at, 0x4060
/* 210D6C 801E620C 00021080 */  sll   $v0, $v0, 2
/* 210D70 801E6210 01C27021 */  addu  $t6, $t6, $v0
/* 210D74 801E6214 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 210D78 801E6218 00826021 */  addu  $t4, $a0, $v0
/* 210D7C 801E621C 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 210D80 801E6220 000E7880 */  sll   $t7, $t6, 2
/* 210D84 801E6224 032FC821 */  addu  $t9, $t9, $t7
/* 210D88 801E6228 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 210D8C 801E622C 33280006 */  andi  $t0, $t9, 6
/* 210D90 801E6230 5100001E */  beql  $t0, $zero, .L801E62AC_ovl15
/* 210D94 801E6234 C58A0000 */   lwc1  $f10, ($t4)
/* 210D98 801E6238 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 210D9C 801E623C 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 210DA0 801E6240 0082C021 */  addu  $t8, $a0, $v0
/* 210DA4 801E6244 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 210DA8 801E6248 44815000 */  mtc1  $at, $f10
/* 210DAC 801E624C C7080000 */  lwc1  $f8, ($t8)
/* 210DB0 801E6250 3C01800E */  lui   $at, 0x800e
/* 210DB4 801E6254 00220821 */  addu  $at, $at, $v0
/* 210DB8 801E6258 460A4402 */  mul.s $f16, $f8, $f10
/* 210DBC 801E625C E43064D0 */  swc1  $f16, 0x64d0($at)
/* 210DC0 801E6260 8C620000 */  lw    $v0, ($v1)
/* 210DC4 801E6264 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 210DC8 801E6268 44812000 */  mtc1  $at, $f4
/* 210DCC 801E626C 00021080 */  sll   $v0, $v0, 2
/* 210DD0 801E6270 00824821 */  addu  $t1, $a0, $v0
/* 210DD4 801E6274 C5320000 */  lwc1  $f18, ($t1)
/* 210DD8 801E6278 3C01800E */  lui   $at, 0x800e
/* 210DDC 801E627C 00220821 */  addu  $at, $at, $v0
/* 210DE0 801E6280 46049182 */  mul.s $f6, $f18, $f4
/* 210DE4 801E6284 E4266690 */  swc1  $f6, 0x6690($at)
/* 210DE8 801E6288 8C6A0000 */  lw    $t2, ($v1)
/* 210DEC 801E628C 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 210DF0 801E6290 44814000 */  mtc1  $at, $f8
/* 210DF4 801E6294 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 210DF8 801E6298 000A5880 */  sll   $t3, $t2, 2
/* 210DFC 801E629C 002B0821 */  addu  $at, $at, $t3
/* 210E00 801E62A0 10000018 */  b     .L801E6304_ovl15
/* 210E04 801E62A4 E4286850 */   swc1  $f8, 0x6850($at)
/* 210E08 801E62A8 C58A0000 */  lwc1  $f10, ($t4)
.L801E62AC_ovl15:
/* 210E0C 801E62AC 44818000 */  mtc1  $at, $f16
/* 210E10 801E62B0 3C01800E */  lui   $at, 0x800e
/* 210E14 801E62B4 00220821 */  addu  $at, $at, $v0
/* 210E18 801E62B8 46105482 */  mul.s $f18, $f10, $f16
/* 210E1C 801E62BC E43264D0 */  swc1  $f18, 0x64d0($at)
/* 210E20 801E62C0 8C620000 */  lw    $v0, ($v1)
/* 210E24 801E62C4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 210E28 801E62C8 44813000 */  mtc1  $at, $f6
/* 210E2C 801E62CC 00021080 */  sll   $v0, $v0, 2
/* 210E30 801E62D0 00826821 */  addu  $t5, $a0, $v0
/* 210E34 801E62D4 C5A40000 */  lwc1  $f4, ($t5)
/* 210E38 801E62D8 3C01800E */  lui   $at, 0x800e
/* 210E3C 801E62DC 00220821 */  addu  $at, $at, $v0
/* 210E40 801E62E0 46062202 */  mul.s $f8, $f4, $f6
/* 210E44 801E62E4 E4286690 */  swc1  $f8, 0x6690($at)
/* 210E48 801E62E8 8C6E0000 */  lw    $t6, ($v1)
/* 210E4C 801E62EC 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 210E50 801E62F0 44815000 */  mtc1  $at, $f10
/* 210E54 801E62F4 3C01800E */  lui   $at, 0x800e
/* 210E58 801E62F8 000E7880 */  sll   $t7, $t6, 2
/* 210E5C 801E62FC 002F0821 */  addu  $at, $at, $t7
/* 210E60 801E6300 E42A6850 */  swc1  $f10, 0x6850($at)
.L801E6304_ovl15:
/* 210E64 801E6304 8C790000 */  lw    $t9, ($v1)
/* 210E68 801E6308 44808000 */  mtc1  $zero, $f16
/* 210E6C 801E630C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 210E70 801E6310 00194080 */  sll   $t0, $t9, 2
/* 210E74 801E6314 00A8C021 */  addu  $t8, $a1, $t0
/* 210E78 801E6318 E7100000 */  swc1  $f16, ($t8)
/* 210E7C 801E631C 8C620000 */  lw    $v0, ($v1)
/* 210E80 801E6320 3C01800E */  lui   $at, 0x800e
/* 210E84 801E6324 2404003C */  li    $a0, 60
/* 210E88 801E6328 00021080 */  sll   $v0, $v0, 2
/* 210E8C 801E632C 00A24821 */  addu  $t1, $a1, $v0
/* 210E90 801E6330 C5320000 */  lwc1  $f18, ($t1)
/* 210E94 801E6334 00220821 */  addu  $at, $at, $v0
/* 210E98 801E6338 E4323210 */  swc1  $f18, 0x3210($at)
/* 210E9C 801E633C 8C6A0000 */  lw    $t2, ($v1)
/* 210EA0 801E6340 3C01801E */  lui   $at, %hi(D_801E6924) # $at, 0x801e
/* 210EA4 801E6344 C4246924 */  lwc1  $f4, %lo(D_801E6924)($at)
/* 210EA8 801E6348 3C01800E */  lui   $at, 0x800e
/* 210EAC 801E634C 000A5880 */  sll   $t3, $t2, 2
/* 210EB0 801E6350 002B0821 */  addu  $at, $at, $t3
/* 210EB4 801E6354 0C002DAF */  jal   finish_current_thread
/* 210EB8 801E6358 E4243C90 */   swc1  $f4, 0x3c90($at)
/* 210EBC 801E635C 0C06B0D9 */  jal   D_801AC364_ovl15
/* 210EC0 801E6360 8FA40020 */   lw    $a0, 0x20($sp)
/* 210EC4 801E6364 8FBF0014 */  lw    $ra, 0x14($sp)
/* 210EC8 801E6368 27BD0020 */  addiu $sp, $sp, 0x20
/* 210ECC 801E636C 03E00008 */  jr    $ra
/* 210ED0 801E6370 00000000 */   nop   

/* 210ED4 801E6374 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 210ED8 801E6378 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 210EDC 801E637C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 210EE0 801E6380 AFBF0014 */  sw    $ra, 0x14($sp)
/* 210EE4 801E6384 AFA40018 */  sw    $a0, 0x18($sp)
/* 210EE8 801E6388 8DC20000 */  lw    $v0, ($t6)
/* 210EEC 801E638C 3C03800F */  lui   $v1, 0x800f
/* 210EF0 801E6390 24010012 */  li    $at, 18
/* 210EF4 801E6394 00021080 */  sll   $v0, $v0, 2
/* 210EF8 801E6398 00621821 */  addu  $v1, $v1, $v0
/* 210EFC 801E639C 8C6383E0 */  lw    $v1, -0x7c20($v1)
/* 210F00 801E63A0 10600012 */  beqz  $v1, .L801E63EC_ovl15
/* 210F04 801E63A4 00000000 */   nop   
/* 210F08 801E63A8 14610009 */  bne   $v1, $at, .L801E63D0_ovl15
/* 210F0C 801E63AC 3C04800E */   lui   $a0, 0x800e
/* 210F10 801E63B0 3C04800E */  lui   $a0, 0x800e
/* 210F14 801E63B4 00822021 */  addu  $a0, $a0, $v0
/* 210F18 801E63B8 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 210F1C 801E63BC 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 210F20 801E63C0 0C02C7B2 */  jal   assign_new_process_entry
/* 210F24 801E63C4 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 210F28 801E63C8 1000001C */  b     .L801E643C_ovl15
/* 210F2C 801E63CC 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E63D0_ovl15:
/* 210F30 801E63D0 00822021 */  addu  $a0, $a0, $v0
/* 210F34 801E63D4 3C05801B */  lui   $a1, %hi(D_801AC364) # $a1, 0x801b
/* 210F38 801E63D8 24A5C364 */  addiu $a1, %lo(D_801AC364) # addiu $a1, $a1, -0x3c9c
/* 210F3C 801E63DC 0C02C7B2 */  jal   assign_new_process_entry
/* 210F40 801E63E0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 210F44 801E63E4 10000015 */  b     .L801E643C_ovl15
/* 210F48 801E63E8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E63EC_ovl15:
/* 210F4C 801E63EC 0C06AC02 */  jal   func_801AB008_ovl15
/* 210F50 801E63F0 00000000 */   nop   
/* 210F54 801E63F4 0C06835D */  jal   func_801A0D74_ovl15
/* 210F58 801E63F8 8FA40018 */   lw    $a0, 0x18($sp)
/* 210F5C 801E63FC 10400006 */  beqz  $v0, .L801E6418_ovl15
/* 210F60 801E6400 3C04801D */   lui   $a0, %hi(D_801CB044) # $a0, 0x801d
/* 210F64 801E6404 0C068E4E */  jal   func_801A3938_ovl15
/* 210F68 801E6408 2484B044 */   addiu $a0, %lo(D_801CB044) # addiu $a0, $a0, -0x4fbc
/* 210F6C 801E640C 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 210F70 801E6410 0C068DB3 */  jal   func_801A36CC_ovl15
/* 210F74 801E6414 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801E6418_ovl15:
/* 210F78 801E6418 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 210F7C 801E641C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 210F80 801E6420 3C04801D */  lui   $a0, %hi(D_801CA738) # $a0, 0x801d
/* 210F84 801E6424 2484A738 */  addiu $a0, %lo(D_801CA738) # addiu $a0, $a0, -0x58c8
/* 210F88 801E6428 0C0445EF */  jal   func_801117BC
/* 210F8C 801E642C 8DE50000 */   lw    $a1, ($t7)
/* 210F90 801E6430 0C044713 */  jal   func_80111C4C
/* 210F94 801E6434 00402025 */   move  $a0, $v0
/* 210F98 801E6438 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E643C_ovl15:
/* 210F9C 801E643C 27BD0018 */  addiu $sp, $sp, 0x18
/* 210FA0 801E6440 03E00008 */  jr    $ra
/* 210FA4 801E6444 00000000 */   nop   

/* 210FA8 801E6448 00000000 */  nop   
/* 210FAC 801E644C 00000000 */  nop   
# Unknown region 210FB0-211490 [4E0]
.incbin "bin/kirby.u.210FB0.bin"
