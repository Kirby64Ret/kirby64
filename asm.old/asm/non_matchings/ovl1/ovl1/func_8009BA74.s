glabel func_8009BA74
/* 043CC4 8009BA74 3C08800D */  lui   $t0, %hi(D_800D69C0) # $t0, 0x800d
/* 043CC8 8009BA78 250869C0 */  addiu $t0, %lo(D_800D69C0) # addiu $t0, $t0, 0x69c0
/* 043CCC 8009BA7C 8D030000 */  lw    $v1, ($t0)
/* 043CD0 8009BA80 AFA7000C */  sw    $a3, 0xc($sp)
/* 043CD4 8009BA84 30E7FFFF */  andi  $a3, $a3, 0xffff
/* 043CD8 8009BA88 14600003 */  bnez  $v1, .L8009BA98_ovl1
/* 043CDC 8009BA8C AFA40000 */   sw    $a0, ($sp)
/* 043CE0 8009BA90 03E00008 */  jr    $ra
/* 043CE4 8009BA94 00001025 */   move  $v0, $zero
.type func_8009BA74, @function

.L8009BA98_ovl1:
/* 043CE8 8009BA98 3C04800D */  lui   $a0, %hi(D_800D6AE0) # $a0, 0x800d
/* 043CEC 8009BA9C 24846AE0 */  addiu $a0, %lo(D_800D6AE0) # addiu $a0, $a0, 0x6ae0
/* 043CF0 8009BAA0 948E0000 */  lhu   $t6, ($a0)
/* 043CF4 8009BAA4 3C09800D */  lui   $t1, %hi(D_800D6AE6) # $t1, 0x800d
/* 043CF8 8009BAA8 25296AE6 */  addiu $t1, %lo(D_800D6AE6) # addiu $t1, $t1, 0x6ae6
/* 043CFC 8009BAAC 95380000 */  lhu   $t8, ($t1)
/* 043D00 8009BAB0 25CF0001 */  addiu $t7, $t6, 1
/* 043D04 8009BAB4 31E2FFFF */  andi  $v0, $t7, 0xffff
/* 043D08 8009BAB8 0302082A */  slt   $at, $t8, $v0
/* 043D0C 8009BABC 10200002 */  beqz  $at, .L8009BAC8_ovl1
/* 043D10 8009BAC0 A48F0000 */   sh    $t7, ($a0)
/* 043D14 8009BAC4 A5220000 */  sh    $v0, ($t1)
.L8009BAC8_ovl1:
/* 043D18 8009BAC8 8FA40040 */  lw    $a0, 0x40($sp)
/* 043D1C 8009BACC 3C02800C */  lui   $v0, %hi(D_800BE3E8) # $v0, 0x800c
/* 043D20 8009BAD0 2442E3E8 */  addiu $v0, %lo(D_800BE3E8) # addiu $v0, $v0, -0x1c18
/* 043D24 8009BAD4 50800005 */  beql  $a0, $zero, .L8009BAEC_ovl1
/* 043D28 8009BAD8 944A0000 */   lhu   $t2, ($v0)
/* 043D2C 8009BADC 94990004 */  lhu   $t9, 4($a0)
/* 043D30 8009BAE0 10000005 */  b     .L8009BAF8_ovl1
/* 043D34 8009BAE4 A4790004 */   sh    $t9, 4($v1)
/* 043D38 8009BAE8 944A0000 */  lhu   $t2, ($v0)
.L8009BAEC_ovl1:
/* 043D3C 8009BAEC 254C0001 */  addiu $t4, $t2, 1
/* 043D40 8009BAF0 A44C0000 */  sh    $t4, ($v0)
/* 043D44 8009BAF4 A46C0004 */  sh    $t4, 4($v1)
.L8009BAF8_ovl1:
/* 043D48 8009BAF8 10800008 */  beqz  $a0, .L8009BB1C_ovl1
/* 043D4C 8009BAFC 000550C3 */   sra   $t2, $a1, 3
/* 043D50 8009BB00 8C8D004C */  lw    $t5, 0x4c($a0)
/* 043D54 8009BB04 11A00006 */  beqz  $t5, .L8009BB20_ovl1
/* 043D58 8009BB08 AC6D0060 */   sw    $t5, 0x60($v1)
/* 043D5C 8009BB0C 95AE002A */  lhu   $t6, 0x2a($t5)
/* 043D60 8009BB10 25CF0001 */  addiu $t7, $t6, 1
/* 043D64 8009BB14 10000002 */  b     .L8009BB20_ovl1
/* 043D68 8009BB18 A5AF002A */   sh    $t7, 0x2a($t5)
.L8009BB1C_ovl1:
/* 043D6C 8009BB1C AC600060 */  sw    $zero, 0x60($v1)
.L8009BB20_ovl1:
/* 043D70 8009BB20 8FB90000 */  lw    $t9, ($sp)
/* 043D74 8009BB24 8C780000 */  lw    $t8, ($v1)
/* 043D78 8009BB28 000A5880 */  sll   $t3, $t2, 2
/* 043D7C 8009BB2C 17200008 */  bnez  $t9, .L8009BB50_ovl1
/* 043D80 8009BB30 AD180000 */   sw    $t8, ($t0)
/* 043D84 8009BB34 3C0C800D */  lui   $t4, %hi(D_800D69C8) # $t4, 0x800d
/* 043D88 8009BB38 258C69C8 */  addiu $t4, %lo(D_800D69C8) # addiu $t4, $t4, 0x69c8
/* 043D8C 8009BB3C 016C1021 */  addu  $v0, $t3, $t4
/* 043D90 8009BB40 8C4D0000 */  lw    $t5, ($v0)
/* 043D94 8009BB44 AC6D0000 */  sw    $t5, ($v1)
/* 043D98 8009BB48 10000006 */  b     .L8009BB64_ovl1
/* 043D9C 8009BB4C AC430000 */   sw    $v1, ($v0)
.L8009BB50_ovl1:
/* 043DA0 8009BB50 8FAE0000 */  lw    $t6, ($sp)
/* 043DA4 8009BB54 8DCF0000 */  lw    $t7, ($t6)
/* 043DA8 8009BB58 AC6F0000 */  sw    $t7, ($v1)
/* 043DAC 8009BB5C 8FB80000 */  lw    $t8, ($sp)
/* 043DB0 8009BB60 AF030000 */  sw    $v1, ($t8)
.L8009BB64_ovl1:
/* 043DB4 8009BB64 A0650008 */  sb    $a1, 8($v1)
/* 043DB8 8009BB68 A4660006 */  sh    $a2, 6($v1)
/* 043DBC 8009BB6C A067000A */  sb    $a3, 0xa($v1)
/* 043DC0 8009BB70 C7A40018 */  lwc1  $f4, 0x18($sp)
/* 043DC4 8009BB74 34CE0010 */  ori   $t6, $a2, 0x10
/* 043DC8 8009BB78 240F0001 */  li    $t7, 1
/* 043DCC 8009BB7C E4640024 */  swc1  $f4, 0x24($v1)
/* 043DD0 8009BB80 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 043DD4 8009BB84 E4660028 */  swc1  $f6, 0x28($v1)
/* 043DD8 8009BB88 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 043DDC 8009BB8C E468002C */  swc1  $f8, 0x2c($v1)
/* 043DE0 8009BB90 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 043DE4 8009BB94 E46A0030 */  swc1  $f10, 0x30($v1)
/* 043DE8 8009BB98 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 043DEC 8009BB9C E4700034 */  swc1  $f16, 0x34($v1)
/* 043DF0 8009BBA0 C7B2002C */  lwc1  $f18, 0x2c($sp)
/* 043DF4 8009BBA4 E4720038 */  swc1  $f18, 0x38($v1)
/* 043DF8 8009BBA8 C7A40030 */  lwc1  $f4, 0x30($sp)
/* 043DFC 8009BBAC E4640044 */  swc1  $f4, 0x44($v1)
/* 043E00 8009BBB0 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 043E04 8009BBB4 8FA20010 */  lw    $v0, 0x10($sp)
/* 043E08 8009BBB8 E466003C */  swc1  $f6, 0x3c($v1)
/* 043E0C 8009BBBC C7A80038 */  lwc1  $f8, 0x38($sp)
/* 043E10 8009BBC0 E4680040 */  swc1  $f8, 0x40($v1)
/* 043E14 8009BBC4 8FB90014 */  lw    $t9, 0x14($sp)
/* 043E18 8009BBC8 A460001C */  sh    $zero, 0x1c($v1)
/* 043E1C 8009BBCC A460001E */  sh    $zero, 0x1e($v1)
/* 043E20 8009BBD0 272A0001 */  addiu $t2, $t9, 1
/* 043E24 8009BBD4 A46A0022 */  sh    $t2, 0x22($v1)
/* 043E28 8009BBD8 AC620018 */  sw    $v0, 0x18($v1)
/* 043E2C 8009BBDC 8FAC003C */  lw    $t4, 0x3c($sp)
/* 043E30 8009BBE0 11800002 */  beqz  $t4, .L8009BBEC_ovl1
/* 043E34 8009BBE4 00000000 */   nop   
/* 043E38 8009BBE8 A46E0006 */  sh    $t6, 6($v1)
.L8009BBEC_ovl1:
/* 043E3C 8009BBEC 50400004 */  beql  $v0, $zero, .L8009BC00_ovl1
/* 043E40 8009BBF0 A4600010 */   sh    $zero, 0x10($v1)
/* 043E44 8009BBF4 10000002 */  b     .L8009BC00_ovl1
/* 043E48 8009BBF8 A46F0010 */   sh    $t7, 0x10($v1)
/* 043E4C 8009BBFC A4600010 */  sh    $zero, 0x10($v1)
.L8009BC00_ovl1:
/* 043E50 8009BC00 240200FF */  li    $v0, 255
/* 043E54 8009BC04 A062000C */  sb    $v0, 0xc($v1)
/* 043E58 8009BC08 A062004F */  sb    $v0, 0x4f($v1)
/* 043E5C 8009BC0C A062004E */  sb    $v0, 0x4e($v1)
/* 043E60 8009BC10 A062004D */  sb    $v0, 0x4d($v1)
/* 043E64 8009BC14 A062004C */  sb    $v0, 0x4c($v1)
/* 043E68 8009BC18 00001025 */  move  $v0, $zero
/* 043E6C 8009BC1C A0620056 */  sb    $v0, 0x56($v1)
/* 043E70 8009BC20 A0620055 */  sb    $v0, 0x55($v1)
/* 043E74 8009BC24 A0620054 */  sb    $v0, 0x54($v1)
/* 043E78 8009BC28 A060000B */  sb    $zero, 0xb($v1)
/* 043E7C 8009BC2C A0600057 */  sb    $zero, 0x57($v1)
/* 043E80 8009BC30 A4600016 */  sh    $zero, 0x16($v1)
/* 043E84 8009BC34 A4600014 */  sh    $zero, 0x14($v1)
/* 043E88 8009BC38 A4600012 */  sh    $zero, 0x12($v1)
/* 043E8C 8009BC3C AC64005C */  sw    $a0, 0x5c($v1)
/* 043E90 8009BC40 00601025 */  move  $v0, $v1
/* 043E94 8009BC44 03E00008 */  jr    $ra
/* 043E98 8009BC48 00000000 */   nop   
.type func_8009BA74, @function
.size func_8009BA74, . - func_8009BA74
