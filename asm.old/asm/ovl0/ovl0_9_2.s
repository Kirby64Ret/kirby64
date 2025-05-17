.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_8002AD90
/* 02B990 8002AD90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 02B994 8002AD94 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02B998 8002AD98 AFA50024 */  sw    $a1, 0x24($sp)
/* 02B99C 8002AD9C AFA60028 */  sw    $a2, 0x28($sp)
/* 02B9A0 8002ADA0 AFA7002C */  sw    $a3, 0x2c($sp)
/* 02B9A4 8002ADA4 8C8E0008 */  lw    $t6, 8($a0)
/* 02B9A8 8002ADA8 51C0002F */  beql  $t6, $zero, .L8002AE68_ovl0
/* 02B9AC 8002ADAC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B9B0 8002ADB0 0C00A642 */  jal   __n_allocParam
/* 02B9B4 8002ADB4 AFA40020 */   sw    $a0, 0x20($sp)
/* 02B9B8 8002ADB8 93A50037 */  lbu   $a1, 0x37($sp)
/* 02B9BC 8002ADBC 8FA80020 */  lw    $t0, 0x20($sp)
/* 02B9C0 8002ADC0 00403025 */  move  $a2, $v0
/* 02B9C4 8002ADC4 04A10003 */  bgez  $a1, .L8002ADD4_ovl0
/* 02B9C8 8002ADC8 00A01825 */   move  $v1, $a1
/* 02B9CC 8002ADCC 00032823 */  negu  $a1, $v1
/* 02B9D0 8002ADD0 30A500FF */  andi  $a1, $a1, 0xff
.L8002ADD4_ovl0:
/* 02B9D4 8002ADD4 10400023 */  beqz  $v0, .L8002AE64_ovl0
/* 02B9D8 8002ADD8 3C0F8004 */   lui   $t7, %hi(n_syn) # $t7, 0x8004
/* 02B9DC 8002ADDC 8DEFFB14 */  lw    $t7, %lo(n_syn)($t7)
/* 02B9E0 8002ADE0 8D190008 */  lw    $t9, 8($t0)
/* 02B9E4 8002ADE4 240B000D */  li    $t3, 13
/* 02B9E8 8002ADE8 8DF80028 */  lw    $t8, 0x28($t7)
/* 02B9EC 8002ADEC 8F290088 */  lw    $t1, 0x88($t9)
/* 02B9F0 8002ADF0 ACC00000 */  sw    $zero, ($a2)
/* 02B9F4 8002ADF4 A4CB0008 */  sh    $t3, 8($a2)
/* 02B9F8 8002ADF8 03095021 */  addu  $t2, $t8, $t1
/* 02B9FC 8002ADFC ACCA0004 */  sw    $t2, 4($a2)
/* 02BA00 8002AE00 850C001A */  lh    $t4, 0x1a($t0)
/* 02BA04 8002AE04 A4CC000A */  sh    $t4, 0xa($a2)
/* 02BA08 8002AE08 93AD0033 */  lbu   $t5, 0x33($sp)
/* 02BA0C 8002AE0C A0CD0012 */  sb    $t5, 0x12($a2)
/* 02BA10 8002AE10 87AE002E */  lh    $t6, 0x2e($sp)
/* 02BA14 8002AE14 A0C50013 */  sb    $a1, 0x13($a2)
/* 02BA18 8002AE18 A4CE0010 */  sh    $t6, 0x10($a2)
/* 02BA1C 8002AE1C 93AF003F */  lbu   $t7, 0x3f($sp)
/* 02BA20 8002AE20 A0CF001C */  sb    $t7, 0x1c($a2)
/* 02BA24 8002AE24 93B90043 */  lbu   $t9, 0x43($sp)
/* 02BA28 8002AE28 A0D9001D */  sb    $t9, 0x1d($a2)
/* 02BA2C 8002AE2C C7A40028 */  lwc1  $f4, 0x28($sp)
/* 02BA30 8002AE30 E4C4000C */  swc1  $f4, 0xc($a2)
/* 02BA34 8002AE34 AFA80020 */  sw    $t0, 0x20($sp)
/* 02BA38 8002AE38 AFA6001C */  sw    $a2, 0x1c($sp)
/* 02BA3C 8002AE3C 0C00A60F */  jal   _n_timeToSamples
/* 02BA40 8002AE40 8FA40038 */   lw    $a0, 0x38($sp)
/* 02BA44 8002AE44 8FA6001C */  lw    $a2, 0x1c($sp)
/* 02BA48 8002AE48 8FA80020 */  lw    $t0, 0x20($sp)
/* 02BA4C 8002AE4C 24050003 */  li    $a1, 3
/* 02BA50 8002AE50 ACC20014 */  sw    $v0, 0x14($a2)
/* 02BA54 8002AE54 8FB80024 */  lw    $t8, 0x24($sp)
/* 02BA58 8002AE58 ACD80018 */  sw    $t8, 0x18($a2)
/* 02BA5C 8002AE5C 0C009D48 */  jal   n_alEnvmixerParam
/* 02BA60 8002AE60 8D040008 */   lw    $a0, 8($t0)
.L8002AE64_ovl0:
/* 02BA64 8002AE64 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002AE68_ovl0:
/* 02BA68 8002AE68 27BD0020 */  addiu $sp, $sp, 0x20
/* 02BA6C 8002AE6C 03E00008 */  jr    $ra
/* 02BA70 8002AE70 00000000 */   nop   

.type func_8002AD90, @function
.size func_8002AD90, . - func_8002AD90

glabel func_8002AE74
/* 02BA74 8002AE74 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 02BA78 8002AE78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02BA7C 8002AE7C AFA50024 */  sw    $a1, 0x24($sp)
/* 02BA80 8002AE80 AFA60028 */  sw    $a2, 0x28($sp)
/* 02BA84 8002AE84 AFA7002C */  sw    $a3, 0x2c($sp)
/* 02BA88 8002AE88 8C8E0008 */  lw    $t6, 8($a0)
/* 02BA8C 8002AE8C 51C0002E */  beql  $t6, $zero, .L8002AF48_ovl0
/* 02BA90 8002AE90 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02BA94 8002AE94 0C00A642 */  jal   __n_allocParam
/* 02BA98 8002AE98 AFA40020 */   sw    $a0, 0x20($sp)
/* 02BA9C 8002AE9C 93A50037 */  lbu   $a1, 0x37($sp)
/* 02BAA0 8002AEA0 8FA80020 */  lw    $t0, 0x20($sp)
/* 02BAA4 8002AEA4 00403025 */  move  $a2, $v0
/* 02BAA8 8002AEA8 04A10003 */  bgez  $a1, .L8002AEB8_ovl0
/* 02BAAC 8002AEAC 00A01825 */   move  $v1, $a1
/* 02BAB0 8002AEB0 00032823 */  negu  $a1, $v1
/* 02BAB4 8002AEB4 30A500FF */  andi  $a1, $a1, 0xff
.L8002AEB8_ovl0:
/* 02BAB8 8002AEB8 10400022 */  beqz  $v0, .L8002AF44_ovl0
/* 02BABC 8002AEBC 3C0F8004 */   lui   $t7, %hi(n_syn) # $t7, 0x8004
/* 02BAC0 8002AEC0 8DEFFB14 */  lw    $t7, %lo(n_syn)($t7)
/* 02BAC4 8002AEC4 8D190008 */  lw    $t9, 8($t0)
/* 02BAC8 8002AEC8 240B000D */  li    $t3, 13
/* 02BACC 8002AECC 8DF80028 */  lw    $t8, 0x28($t7)
/* 02BAD0 8002AED0 8F290088 */  lw    $t1, 0x88($t9)
/* 02BAD4 8002AED4 ACC00000 */  sw    $zero, ($a2)
/* 02BAD8 8002AED8 A4CB0008 */  sh    $t3, 8($a2)
/* 02BADC 8002AEDC 03095021 */  addu  $t2, $t8, $t1
/* 02BAE0 8002AEE0 ACCA0004 */  sw    $t2, 4($a2)
/* 02BAE4 8002AEE4 850C001A */  lh    $t4, 0x1a($t0)
/* 02BAE8 8002AEE8 240F005F */  li    $t7, 95
/* 02BAEC 8002AEEC A4CC000A */  sh    $t4, 0xa($a2)
/* 02BAF0 8002AEF0 93AD0033 */  lbu   $t5, 0x33($sp)
/* 02BAF4 8002AEF4 A0CD0012 */  sb    $t5, 0x12($a2)
/* 02BAF8 8002AEF8 87AE002E */  lh    $t6, 0x2e($sp)
/* 02BAFC 8002AEFC A0C50013 */  sb    $a1, 0x13($a2)
/* 02BB00 8002AF00 A0C0001C */  sb    $zero, 0x1c($a2)
/* 02BB04 8002AF04 A0CF001D */  sb    $t7, 0x1d($a2)
/* 02BB08 8002AF08 A4CE0010 */  sh    $t6, 0x10($a2)
/* 02BB0C 8002AF0C C7A40028 */  lwc1  $f4, 0x28($sp)
/* 02BB10 8002AF10 E4C4000C */  swc1  $f4, 0xc($a2)
/* 02BB14 8002AF14 AFA80020 */  sw    $t0, 0x20($sp)
/* 02BB18 8002AF18 AFA6001C */  sw    $a2, 0x1c($sp)
/* 02BB1C 8002AF1C 0C00A60F */  jal   _n_timeToSamples
/* 02BB20 8002AF20 8FA40038 */   lw    $a0, 0x38($sp)
/* 02BB24 8002AF24 8FA6001C */  lw    $a2, 0x1c($sp)
/* 02BB28 8002AF28 8FA80020 */  lw    $t0, 0x20($sp)
/* 02BB2C 8002AF2C 24050003 */  li    $a1, 3
/* 02BB30 8002AF30 ACC20014 */  sw    $v0, 0x14($a2)
/* 02BB34 8002AF34 8FB90024 */  lw    $t9, 0x24($sp)
/* 02BB38 8002AF38 ACD90018 */  sw    $t9, 0x18($a2)
/* 02BB3C 8002AF3C 0C009D48 */  jal   n_alEnvmixerParam
/* 02BB40 8002AF40 8D040008 */   lw    $a0, 8($t0)
.L8002AF44_ovl0:
/* 02BB44 8002AF44 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002AF48_ovl0:
/* 02BB48 8002AF48 27BD0020 */  addiu $sp, $sp, 0x20
/* 02BB4C 8002AF4C 03E00008 */  jr    $ra
/* 02BB50 8002AF50 00000000 */   nop   
/* 02BB54 8002AF54 00000000 */  nop   
/* 02BB58 8002AF58 00000000 */  nop   
/* 02BB5C 8002AF5C 00000000 */  nop   

.type func_8002AE74, @function
.size func_8002AE74, . - func_8002AE74

glabel func_8002AF60
/* 02BB60 8002AF60 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 02BB64 8002AF64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02BB68 8002AF68 8C8E0034 */  lw    $t6, 0x34($a0)
/* 02BB6C 8002AF6C 24010001 */  li    $at, 1
/* 02BB70 8002AF70 00803825 */  move  $a3, $a0
/* 02BB74 8002AF74 15C1002D */  bne   $t6, $at, .L8002B02C_ovl0
/* 02BB78 8002AF78 8C860018 */   lw    $a2, 0x18($a0)
/* 02BB7C 8002AF7C 10C0002B */  beqz  $a2, .L8002B02C_ovl0
/* 02BB80 8002AF80 00C02025 */   move  $a0, $a2
/* 02BB84 8002AF84 27A50024 */  addiu $a1, $sp, 0x24
/* 02BB88 8002AF88 AFA60020 */  sw    $a2, 0x20($sp)
/* 02BB8C 8002AF8C 0C00B33B */  jal   func_8002CCEC
/* 02BB90 8002AF90 AFA70038 */   sw    $a3, 0x38($sp)
/* 02BB94 8002AF94 8FA60020 */  lw    $a2, 0x20($sp)
/* 02BB98 8002AF98 10400024 */  beqz  $v0, .L8002B02C_ovl0
/* 02BB9C 8002AF9C 8FA70038 */   lw    $a3, 0x38($sp)
/* 02BBA0 8002AFA0 8CEF0090 */  lw    $t7, 0x90($a3)
/* 02BBA4 8002AFA4 00C02025 */  move  $a0, $a2
/* 02BBA8 8002AFA8 51E00018 */  beql  $t7, $zero, .L8002B00C_ovl0
/* 02BBAC 8002AFAC A7A00028 */   sh    $zero, 0x28($sp)
/* 02BBB0 8002AFB0 AFA60020 */  sw    $a2, 0x20($sp)
/* 02BBB4 8002AFB4 0C00B27B */  jal   func_8002C9EC
/* 02BBB8 8002AFB8 AFA70038 */   sw    $a3, 0x38($sp)
/* 02BBBC 8002AFBC 8FA70038 */  lw    $a3, 0x38($sp)
/* 02BBC0 8002AFC0 8FB80024 */  lw    $t8, 0x24($sp)
/* 02BBC4 8002AFC4 8FA60020 */  lw    $a2, 0x20($sp)
/* 02BBC8 8002AFC8 8CE8008C */  lw    $t0, 0x8c($a3)
/* 02BBCC 8002AFCC 0058C821 */  addu  $t9, $v0, $t8
/* 02BBD0 8002AFD0 00C02025 */  move  $a0, $a2
/* 02BBD4 8002AFD4 8D090008 */  lw    $t1, 8($t0)
/* 02BBD8 8002AFD8 0329082A */  slt   $at, $t9, $t1
/* 02BBDC 8002AFDC 5420000B */  bnezl $at, .L8002B00C_ovl0
/* 02BBE0 8002AFE0 A7A00028 */   sh    $zero, 0x28($sp)
/* 02BBE4 8002AFE4 8CE50088 */  lw    $a1, 0x88($a3)
/* 02BBE8 8002AFE8 0C00B274 */  jal   func_8002C9D0
/* 02BBEC 8002AFEC AFA70038 */   sw    $a3, 0x38($sp)
/* 02BBF0 8002AFF0 8FA70038 */  lw    $a3, 0x38($sp)
/* 02BBF4 8002AFF4 2401FFFF */  li    $at, -1
/* 02BBF8 8002AFF8 8CE20090 */  lw    $v0, 0x90($a3)
/* 02BBFC 8002AFFC 10410002 */  beq   $v0, $at, .L8002B008_ovl0
/* 02BC00 8002B000 244AFFFF */   addiu $t2, $v0, -1
/* 02BC04 8002B004 ACEA0090 */  sw    $t2, 0x90($a3)
.L8002B008_ovl0:
/* 02BC08 8002B008 A7A00028 */  sh    $zero, 0x28($sp)
.L8002B00C_ovl0:
/* 02BC0C 8002B00C 8CEB002C */  lw    $t3, 0x2c($a3)
/* 02BC10 8002B010 8FAC0024 */  lw    $t4, 0x24($sp)
/* 02BC14 8002B014 24E40050 */  addiu $a0, $a3, 0x50
/* 02BC18 8002B018 27A50028 */  addiu $a1, $sp, 0x28
/* 02BC1C 8002B01C 016C0019 */  multu $t3, $t4
/* 02BC20 8002B020 00003012 */  mflo  $a2
/* 02BC24 8002B024 0C009818 */  jal   func_80026060
/* 02BC28 8002B028 00000000 */   nop   
.L8002B02C_ovl0:
/* 02BC2C 8002B02C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02BC30 8002B030 27BD0038 */  addiu $sp, $sp, 0x38
/* 02BC34 8002B034 03E00008 */  jr    $ra
/* 02BC38 8002B038 00000000 */   nop   

.type func_8002AF60, @function
.size func_8002AF60, . - func_8002AF60

glabel func_8002B03C
/* 02BC3C 8002B03C 8C8E0068 */  lw    $t6, 0x68($a0)
/* 02BC40 8002B040 00061080 */  sll   $v0, $a2, 2
/* 02BC44 8002B044 00461023 */  subu  $v0, $v0, $a2
/* 02BC48 8002B048 000210C0 */  sll   $v0, $v0, 3
/* 02BC4C 8002B04C 01C27821 */  addu  $t7, $t6, $v0
/* 02BC50 8002B050 ADE50000 */  sw    $a1, ($t7)
/* 02BC54 8002B054 8C990068 */  lw    $t9, 0x68($a0)
/* 02BC58 8002B058 90B80001 */  lbu   $t8, 1($a1)
/* 02BC5C 8002B05C 2409007F */  li    $t1, 127
/* 02BC60 8002B060 03224021 */  addu  $t0, $t9, $v0
/* 02BC64 8002B064 A1180007 */  sb    $t8, 7($t0)
/* 02BC68 8002B068 8C8A0068 */  lw    $t2, 0x68($a0)
/* 02BC6C 8002B06C 01425821 */  addu  $t3, $t2, $v0
/* 02BC70 8002B070 A1690009 */  sb    $t1, 9($t3)
/* 02BC74 8002B074 8C8D0068 */  lw    $t5, 0x68($a0)
/* 02BC78 8002B078 90AC0002 */  lbu   $t4, 2($a1)
/* 02BC7C 8002B07C 01A27021 */  addu  $t6, $t5, $v0
/* 02BC80 8002B080 A1CC0008 */  sb    $t4, 8($t6)
/* 02BC84 8002B084 8C990068 */  lw    $t9, 0x68($a0)
/* 02BC88 8002B088 84AF000C */  lh    $t7, 0xc($a1)
/* 02BC8C 8002B08C 0322C021 */  addu  $t8, $t9, $v0
/* 02BC90 8002B090 A70F0004 */  sh    $t7, 4($t8)
/* 02BC94 8002B094 8C8A0068 */  lw    $t2, 0x68($a0)
/* 02BC98 8002B098 90A80000 */  lbu   $t0, ($a1)
/* 02BC9C 8002B09C 01424821 */  addu  $t1, $t2, $v0
/* 02BCA0 8002B0A0 03E00008 */  jr    $ra
/* 02BCA4 8002B0A4 A1280011 */   sb    $t0, 0x11($t1)

.type func_8002B03C, @function
.size func_8002B03C, . - func_8002B03C

glabel func_8002B0A8
/* 02BCA8 8002B0A8 8C8E0068 */  lw    $t6, 0x68($a0)
/* 02BCAC 8002B0AC 00051080 */  sll   $v0, $a1, 2
/* 02BCB0 8002B0B0 00451023 */  subu  $v0, $v0, $a1
/* 02BCB4 8002B0B4 000210C0 */  sll   $v0, $v0, 3
/* 02BCB8 8002B0B8 01C27821 */  addu  $t7, $t6, $v0
/* 02BCBC 8002B0BC A1E00006 */  sb    $zero, 6($t7)
/* 02BCC0 8002B0C0 8C980068 */  lw    $t8, 0x68($a0)
/* 02BCC4 8002B0C4 24080040 */  li    $t0, 64
/* 02BCC8 8002B0C8 240B007F */  li    $t3, 127
/* 02BCCC 8002B0CC 0302C821 */  addu  $t9, $t8, $v0
/* 02BCD0 8002B0D0 A320000A */  sb    $zero, 0xa($t9)
/* 02BCD4 8002B0D4 8C890068 */  lw    $t1, 0x68($a0)
/* 02BCD8 8002B0D8 240E0005 */  li    $t6, 5
/* 02BCDC 8002B0DC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02BCE0 8002B0E0 01225021 */  addu  $t2, $t1, $v0
/* 02BCE4 8002B0E4 A1480007 */  sb    $t0, 7($t2)
/* 02BCE8 8002B0E8 8C8C0068 */  lw    $t4, 0x68($a0)
/* 02BCEC 8002B0EC 240800C8 */  li    $t0, 200
/* 02BCF0 8002B0F0 44812000 */  mtc1  $at, $f4
/* 02BCF4 8002B0F4 01826821 */  addu  $t5, $t4, $v0
/* 02BCF8 8002B0F8 A1AB0009 */  sb    $t3, 9($t5)
/* 02BCFC 8002B0FC 8C8F0068 */  lw    $t7, 0x68($a0)
/* 02BD00 8002B100 01E2C021 */  addu  $t8, $t7, $v0
/* 02BD04 8002B104 A30E0008 */  sb    $t6, 8($t8)
/* 02BD08 8002B108 8C990068 */  lw    $t9, 0x68($a0)
/* 02BD0C 8002B10C 2418005F */  li    $t8, 95
/* 02BD10 8002B110 03224821 */  addu  $t1, $t9, $v0
/* 02BD14 8002B114 A120000B */  sb    $zero, 0xb($t1)
/* 02BD18 8002B118 8C8A0068 */  lw    $t2, 0x68($a0)
/* 02BD1C 8002B11C 01426021 */  addu  $t4, $t2, $v0
/* 02BD20 8002B120 A5880004 */  sh    $t0, 4($t4)
/* 02BD24 8002B124 8C8B0068 */  lw    $t3, 0x68($a0)
/* 02BD28 8002B128 01626821 */  addu  $t5, $t3, $v0
/* 02BD2C 8002B12C E5A4000C */  swc1  $f4, 0xc($t5)
/* 02BD30 8002B130 8C8F0068 */  lw    $t7, 0x68($a0)
/* 02BD34 8002B134 01E27021 */  addu  $t6, $t7, $v0
/* 02BD38 8002B138 A1C00012 */  sb    $zero, 0x12($t6)
/* 02BD3C 8002B13C 8C990068 */  lw    $t9, 0x68($a0)
/* 02BD40 8002B140 03224821 */  addu  $t1, $t9, $v0
/* 02BD44 8002B144 A1380013 */  sb    $t8, 0x13($t1)
/* 02BD48 8002B148 8C8A0068 */  lw    $t2, 0x68($a0)
/* 02BD4C 8002B14C 01424021 */  addu  $t0, $t2, $v0
/* 02BD50 8002B150 03E00008 */  jr    $ra
/* 02BD54 8002B154 A1000014 */   sb    $zero, 0x14($t0)

.type func_8002B0A8, @function
.size func_8002B0A8, . - func_8002B0A8

glabel func_8002B158
/* 02BD58 8002B158 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02BD5C 8002B15C AFB20020 */  sw    $s2, 0x20($sp)
/* 02BD60 8002B160 00809025 */  move  $s2, $a0
/* 02BD64 8002B164 AFBF0024 */  sw    $ra, 0x24($sp)
/* 02BD68 8002B168 AFB1001C */  sw    $s1, 0x1c($sp)
/* 02BD6C 8002B16C AFB00018 */  sw    $s0, 0x18($sp)
/* 02BD70 8002B170 AFA5002C */  sw    $a1, 0x2c($sp)
/* 02BD74 8002B174 00A01025 */  move  $v0, $a1
/* 02BD78 8002B178 8C51000C */  lw    $s1, 0xc($v0)
.L8002B17C_ovl0:
/* 02BD7C 8002B17C 24420004 */  addiu $v0, $v0, 4
/* 02BD80 8002B180 5220FFFE */  beql  $s1, $zero, .L8002B17C_ovl0
/* 02BD84 8002B184 8C51000C */   lw    $s1, 0xc($v0)
/* 02BD88 8002B188 924E003C */  lbu   $t6, 0x3c($s2)
/* 02BD8C 8002B18C 00008025 */  move  $s0, $zero
/* 02BD90 8002B190 19C0000C */  blez  $t6, .L8002B1C4_ovl0
/* 02BD94 8002B194 02402025 */   move  $a0, $s2
.L8002B198_ovl0:
/* 02BD98 8002B198 0C00AC2A */  jal   func_8002B0A8
/* 02BD9C 8002B19C 02002825 */   move  $a1, $s0
/* 02BDA0 8002B1A0 02402025 */  move  $a0, $s2
/* 02BDA4 8002B1A4 02202825 */  move  $a1, $s1
/* 02BDA8 8002B1A8 0C00AC0F */  jal   func_8002B03C
/* 02BDAC 8002B1AC 02003025 */   move  $a2, $s0
/* 02BDB0 8002B1B0 924F003C */  lbu   $t7, 0x3c($s2)
/* 02BDB4 8002B1B4 26100001 */  addiu $s0, $s0, 1
/* 02BDB8 8002B1B8 020F082A */  slt   $at, $s0, $t7
/* 02BDBC 8002B1BC 5420FFF6 */  bnezl $at, .L8002B198_ovl0
/* 02BDC0 8002B1C0 02402025 */   move  $a0, $s2
.L8002B1C4_ovl0:
/* 02BDC4 8002B1C4 8FB8002C */  lw    $t8, 0x2c($sp)
/* 02BDC8 8002B1C8 02402025 */  move  $a0, $s2
/* 02BDCC 8002B1CC 8F190008 */  lw    $t9, 8($t8)
/* 02BDD0 8002B1D0 53200009 */  beql  $t9, $zero, .L8002B1F8_ovl0
/* 02BDD4 8002B1D4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02BDD8 8002B1D8 0C00AC2A */  jal   func_8002B0A8
/* 02BDDC 8002B1DC 02002825 */   move  $a1, $s0
/* 02BDE0 8002B1E0 8FA8002C */  lw    $t0, 0x2c($sp)
/* 02BDE4 8002B1E4 02402025 */  move  $a0, $s2
/* 02BDE8 8002B1E8 24060009 */  li    $a2, 9
/* 02BDEC 8002B1EC 0C00AC0F */  jal   func_8002B03C
/* 02BDF0 8002B1F0 8D050008 */   lw    $a1, 8($t0)
/* 02BDF4 8002B1F4 8FBF0024 */  lw    $ra, 0x24($sp)
.L8002B1F8_ovl0:
/* 02BDF8 8002B1F8 8FB00018 */  lw    $s0, 0x18($sp)
/* 02BDFC 8002B1FC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 02BE00 8002B200 8FB20020 */  lw    $s2, 0x20($sp)
/* 02BE04 8002B204 03E00008 */  jr    $ra
/* 02BE08 8002B208 27BD0028 */   addiu $sp, $sp, 0x28

.type func_8002B158, @function
.size func_8002B158, . - func_8002B158

glabel func_8002B20C
/* 02BE0C 8002B20C 03E00008 */  jr    $ra
/* 02BE10 8002B210 00000000 */   nop   

.type func_8002B20C, @function
.size func_8002B20C, . - func_8002B20C

glabel func_8002B214
/* 02BE14 8002B214 8C8E0024 */  lw    $t6, 0x24($a0)
/* 02BE18 8002B218 240203E8 */  li    $v0, 1000
/* 02BE1C 8002B21C 01C51823 */  subu  $v1, $t6, $a1
/* 02BE20 8002B220 04600003 */  bltz  $v1, .L8002B230_ovl0
/* 02BE24 8002B224 00000000 */   nop   
/* 02BE28 8002B228 03E00008 */  jr    $ra
/* 02BE2C 8002B22C 00601025 */   move  $v0, $v1
.L8002B230_ovl0:
/* 02BE30 8002B230 03E00008 */  jr    $ra
/* 02BE34 8002B234 00000000 */   nop   

.type func_8002B214, @function
.size func_8002B214, . - func_8002B214

glabel func_8002B238
/* 02BE38 8002B238 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02BE3C 8002B23C AFBF0014 */  sw    $ra, 0x14($sp)
/* 02BE40 8002B240 AFA5002C */  sw    $a1, 0x2c($sp)
/* 02BE44 8002B244 908F0033 */  lbu   $t7, 0x33($a0)
/* 02BE48 8002B248 908E0036 */  lbu   $t6, 0x36($a0)
/* 02BE4C 8002B24C 90990030 */  lbu   $t9, 0x30($a0)
/* 02BE50 8002B250 00803025 */  move  $a2, $a0
/* 02BE54 8002B254 01CF0019 */  multu $t6, $t7
/* 02BE58 8002B258 AFA60028 */  sw    $a2, 0x28($sp)
/* 02BE5C 8002B25C 00A02025 */  move  $a0, $a1
/* 02BE60 8002B260 0000C012 */  mflo  $t8
/* 02BE64 8002B264 00000000 */  nop   
/* 02BE68 8002B268 00000000 */  nop   
/* 02BE6C 8002B26C 03190019 */  multu $t8, $t9
/* 02BE70 8002B270 00001812 */  mflo  $v1
/* 02BE74 8002B274 00031983 */  sra   $v1, $v1, 6
/* 02BE78 8002B278 0C00B26C */  jal   func_8002C9B0
/* 02BE7C 8002B27C AFA30024 */   sw    $v1, 0x24($sp)
/* 02BE80 8002B280 8FA60028 */  lw    $a2, 0x28($sp)
/* 02BE84 8002B284 A7A2001E */  sh    $v0, 0x1e($sp)
/* 02BE88 8002B288 8FA4002C */  lw    $a0, 0x2c($sp)
/* 02BE8C 8002B28C 0C00B434 */  jal   func_8002D0D0
/* 02BE90 8002B290 90C50031 */   lbu   $a1, 0x31($a2)
/* 02BE94 8002B294 8FA60028 */  lw    $a2, 0x28($sp)
/* 02BE98 8002B298 87AB001E */  lh    $t3, 0x1e($sp)
/* 02BE9C 8002B29C 8FA30024 */  lw    $v1, 0x24($sp)
/* 02BEA0 8002B2A0 8CC80020 */  lw    $t0, 0x20($a2)
/* 02BEA4 8002B2A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02BEA8 8002B2A8 9109000D */  lbu   $t1, 0xd($t0)
/* 02BEAC 8002B2AC 27BD0028 */  addiu $sp, $sp, 0x28
/* 02BEB0 8002B2B0 00490019 */  multu $v0, $t1
/* 02BEB4 8002B2B4 00005012 */  mflo  $t2
/* 02BEB8 8002B2B8 00000000 */  nop   
/* 02BEBC 8002B2BC 00000000 */  nop   
/* 02BEC0 8002B2C0 014B0019 */  multu $t2, $t3
/* 02BEC4 8002B2C4 00002012 */  mflo  $a0
/* 02BEC8 8002B2C8 00042383 */  sra   $a0, $a0, 0xe
/* 02BECC 8002B2CC 00000000 */  nop   
/* 02BED0 8002B2D0 00640019 */  multu $v1, $a0
/* 02BED4 8002B2D4 00001812 */  mflo  $v1
/* 02BED8 8002B2D8 00031BC2 */  srl   $v1, $v1, 0xf
/* 02BEDC 8002B2DC 00031400 */  sll   $v0, $v1, 0x10
/* 02BEE0 8002B2E0 03E00008 */  jr    $ra
/* 02BEE4 8002B2E4 00021403 */   sra   $v0, $v0, 0x10

.type func_8002B238, @function
.size func_8002B238, . - func_8002B238

glabel func_8002B2E8
/* 02BEE8 8002B2E8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 02BEEC 8002B2EC AFBF0034 */  sw    $ra, 0x34($sp)
/* 02BEF0 8002B2F0 AFB60030 */  sw    $s6, 0x30($sp)
/* 02BEF4 8002B2F4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 02BEF8 8002B2F8 AFB40028 */  sw    $s4, 0x28($sp)
/* 02BEFC 8002B2FC AFB30024 */  sw    $s3, 0x24($sp)
/* 02BF00 8002B300 AFB20020 */  sw    $s2, 0x20($sp)
/* 02BF04 8002B304 AFB1001C */  sw    $s1, 0x1c($sp)
/* 02BF08 8002B308 AFB00018 */  sw    $s0, 0x18($sp)
/* 02BF0C 8002B30C AFA60068 */  sw    $a2, 0x68($sp)
/* 02BF10 8002B310 8CB60010 */  lw    $s6, 0x10($a1)
/* 02BF14 8002B314 0080A025 */  move  $s4, $a0
/* 02BF18 8002B318 00A0A825 */  move  $s5, $a1
/* 02BF1C 8002B31C 92CE0034 */  lbu   $t6, 0x34($s6)
/* 02BF20 8002B320 55C0001A */  bnezl $t6, .L8002B38C_ovl0
/* 02BF24 8002B324 240A0003 */   li    $t2, 3
/* 02BF28 8002B328 8C900058 */  lw    $s0, 0x58($a0)
/* 02BF2C 8002B32C 24130006 */  li    $s3, 6
/* 02BF30 8002B330 52000016 */  beql  $s0, $zero, .L8002B38C_ovl0
/* 02BF34 8002B334 240A0003 */   li    $t2, 3
.L8002B338_ovl0:
/* 02BF38 8002B338 860F000C */  lh    $t7, 0xc($s0)
/* 02BF3C 8002B33C 8E110000 */  lw    $s1, ($s0)
/* 02BF40 8002B340 166F000F */  bne   $s3, $t7, .L8002B380_ovl0
/* 02BF44 8002B344 00000000 */   nop   
/* 02BF48 8002B348 8E180010 */  lw    $t8, 0x10($s0)
/* 02BF4C 8002B34C 16B8000C */  bne   $s5, $t8, .L8002B380_ovl0
/* 02BF50 8002B350 00000000 */   nop   
/* 02BF54 8002B354 12200005 */  beqz  $s1, .L8002B36C_ovl0
/* 02BF58 8002B358 26920050 */   addiu $s2, $s4, 0x50
/* 02BF5C 8002B35C 8E390008 */  lw    $t9, 8($s1)
/* 02BF60 8002B360 8E080008 */  lw    $t0, 8($s0)
/* 02BF64 8002B364 03284821 */  addu  $t1, $t9, $t0
/* 02BF68 8002B368 AE290008 */  sw    $t1, 8($s1)
.L8002B36C_ovl0:
/* 02BF6C 8002B36C 0C0097DD */  jal   alUnlink
/* 02BF70 8002B370 02002025 */   move  $a0, $s0
/* 02BF74 8002B374 02002025 */  move  $a0, $s0
/* 02BF78 8002B378 0C0097D4 */  jal   alLink
/* 02BF7C 8002B37C 02402825 */   move  $a1, $s2
.L8002B380_ovl0:
/* 02BF80 8002B380 1620FFED */  bnez  $s1, .L8002B338_ovl0
/* 02BF84 8002B384 02208025 */   move  $s0, $s1
/* 02BF88 8002B388 240A0003 */  li    $t2, 3
.L8002B38C_ovl0:
/* 02BF8C 8002B38C A2C00033 */  sb    $zero, 0x33($s6)
/* 02BF90 8002B390 A2CA0034 */  sb    $t2, 0x34($s6)
/* 02BF94 8002B394 A2C00030 */  sb    $zero, 0x30($s6)
/* 02BF98 8002B398 8FAC0068 */  lw    $t4, 0x68($sp)
/* 02BF9C 8002B39C 8E8B001C */  lw    $t3, 0x1c($s4)
/* 02BFA0 8002B3A0 02A02025 */  move  $a0, $s5
/* 02BFA4 8002B3A4 00002825 */  move  $a1, $zero
/* 02BFA8 8002B3A8 016C6821 */  addu  $t5, $t3, $t4
/* 02BFAC 8002B3AC AECD0024 */  sw    $t5, 0x24($s6)
/* 02BFB0 8002B3B0 0C00B264 */  jal   func_8002C990
/* 02BFB4 8002B3B4 26920050 */   addiu $s2, $s4, 0x50
/* 02BFB8 8002B3B8 02A02025 */  move  $a0, $s5
/* 02BFBC 8002B3BC 00002825 */  move  $a1, $zero
/* 02BFC0 8002B3C0 0C00B494 */  jal   n_alSynSetVol
/* 02BFC4 8002B3C4 8FA60068 */   lw    $a2, 0x68($sp)
/* 02BFC8 8002B3C8 240E0005 */  li    $t6, 5
/* 02BFCC 8002B3CC A7AE0050 */  sh    $t6, 0x50($sp)
/* 02BFD0 8002B3D0 AFB50054 */  sw    $s5, 0x54($sp)
/* 02BFD4 8002B3D4 02402025 */  move  $a0, $s2
/* 02BFD8 8002B3D8 27A50050 */  addiu $a1, $sp, 0x50
/* 02BFDC 8002B3DC 0C009818 */  jal   func_80026060
/* 02BFE0 8002B3E0 8FA60068 */   lw    $a2, 0x68($sp)
/* 02BFE4 8002B3E4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 02BFE8 8002B3E8 8FB00018 */  lw    $s0, 0x18($sp)
/* 02BFEC 8002B3EC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 02BFF0 8002B3F0 8FB20020 */  lw    $s2, 0x20($sp)
/* 02BFF4 8002B3F4 8FB30024 */  lw    $s3, 0x24($sp)
/* 02BFF8 8002B3F8 8FB40028 */  lw    $s4, 0x28($sp)
/* 02BFFC 8002B3FC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 02C000 8002B400 8FB60030 */  lw    $s6, 0x30($sp)
/* 02C004 8002B404 03E00008 */  jr    $ra
/* 02C008 8002B408 27BD0060 */   addiu $sp, $sp, 0x60

.type func_8002B2E8, @function
.size func_8002B2E8, . - func_8002B2E8

glabel func_8002B40C
/* 02C00C 8002B40C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 02C010 8002B410 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02C014 8002B414 8C870058 */  lw    $a3, 0x58($a0)
/* 02C018 8002B418 00805025 */  move  $t2, $a0
/* 02C01C 8002B41C 00004025 */  move  $t0, $zero
/* 02C020 8002B420 10E0001F */  beqz  $a3, .L8002B4A0_ovl0
/* 02C024 8002B424 24090001 */   li    $t1, 1
/* 02C028 8002B428 24040005 */  li    $a0, 5
.L8002B42C_ovl0:
/* 02C02C 8002B42C 84EE000C */  lh    $t6, 0xc($a3)
/* 02C030 8002B430 8CE30008 */  lw    $v1, 8($a3)
/* 02C034 8002B434 8CE20000 */  lw    $v0, ($a3)
/* 02C038 8002B438 148E0017 */  bne   $a0, $t6, .L8002B498_ovl0
/* 02C03C 8002B43C 01034021 */   addu  $t0, $t0, $v1
/* 02C040 8002B440 8CEF0010 */  lw    $t7, 0x10($a3)
/* 02C044 8002B444 14AF0014 */  bne   $a1, $t7, .L8002B498_ovl0
/* 02C048 8002B448 00C8082A */   slt   $at, $a2, $t0
/* 02C04C 8002B44C 10200010 */  beqz  $at, .L8002B490_ovl0
/* 02C050 8002B450 00E02025 */   move  $a0, $a3
/* 02C054 8002B454 50400005 */  beql  $v0, $zero, .L8002B46C_ovl0
/* 02C058 8002B458 AFA7002C */   sw    $a3, 0x2c($sp)
/* 02C05C 8002B45C 8C580008 */  lw    $t8, 8($v0)
/* 02C060 8002B460 0303C821 */  addu  $t9, $t8, $v1
/* 02C064 8002B464 AC590008 */  sw    $t9, 8($v0)
/* 02C068 8002B468 AFA7002C */  sw    $a3, 0x2c($sp)
.L8002B46C_ovl0:
/* 02C06C 8002B46C A3A9001F */  sb    $t1, 0x1f($sp)
/* 02C070 8002B470 0C0097DD */  jal   alUnlink
/* 02C074 8002B474 AFAA0030 */   sw    $t2, 0x30($sp)
/* 02C078 8002B478 8FAA0030 */  lw    $t2, 0x30($sp)
/* 02C07C 8002B47C 8FA4002C */  lw    $a0, 0x2c($sp)
/* 02C080 8002B480 0C0097D4 */  jal   alLink
/* 02C084 8002B484 25450050 */   addiu $a1, $t2, 0x50
/* 02C088 8002B488 10000005 */  b     .L8002B4A0_ovl0
/* 02C08C 8002B48C 93A9001F */   lbu   $t1, 0x1f($sp)
.L8002B490_ovl0:
/* 02C090 8002B490 10000003 */  b     .L8002B4A0_ovl0
/* 02C094 8002B494 00004825 */   move  $t1, $zero
.L8002B498_ovl0:
/* 02C098 8002B498 1440FFE4 */  bnez  $v0, .L8002B42C_ovl0
/* 02C09C 8002B49C 00403825 */   move  $a3, $v0
.L8002B4A0_ovl0:
/* 02C0A0 8002B4A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02C0A4 8002B4A4 27BD0030 */  addiu $sp, $sp, 0x30
/* 02C0A8 8002B4A8 01201025 */  move  $v0, $t1
/* 02C0AC 8002B4AC 03E00008 */  jr    $ra
/* 02C0B0 8002B4B0 00000000 */   nop   

.type func_8002B40C, @function
.size func_8002B40C, . - func_8002B40C

glabel func_8002B4B4
/* 02C0B4 8002B4B4 8C83006C */  lw    $v1, 0x6c($a0)
/* 02C0B8 8002B4B8 00001025 */  move  $v0, $zero
/* 02C0BC 8002B4BC 24A6FFFC */  addiu $a2, $a1, -4
/* 02C0C0 8002B4C0 10600016 */  beqz  $v1, .L8002B51C_ovl0
/* 02C0C4 8002B4C4 00000000 */   nop   
.L8002B4C8_ovl0:
/* 02C0C8 8002B4C8 54660011 */  bnel  $v1, $a2, .L8002B510_ovl0
/* 02C0CC 8002B4CC 00601025 */   move  $v0, $v1
/* 02C0D0 8002B4D0 50400005 */  beql  $v0, $zero, .L8002B4E8_ovl0
/* 02C0D4 8002B4D4 8C6F0000 */   lw    $t7, ($v1)
/* 02C0D8 8002B4D8 8C6E0000 */  lw    $t6, ($v1)
/* 02C0DC 8002B4DC 10000003 */  b     .L8002B4EC_ovl0
/* 02C0E0 8002B4E0 AC4E0000 */   sw    $t6, ($v0)
/* 02C0E4 8002B4E4 8C6F0000 */  lw    $t7, ($v1)
.L8002B4E8_ovl0:
/* 02C0E8 8002B4E8 AC8F006C */  sw    $t7, 0x6c($a0)
.L8002B4EC_ovl0:
/* 02C0EC 8002B4EC 8C980070 */  lw    $t8, 0x70($a0)
/* 02C0F0 8002B4F0 54780003 */  bnel  $v1, $t8, .L8002B500_ovl0
/* 02C0F4 8002B4F4 8C990074 */   lw    $t9, 0x74($a0)
/* 02C0F8 8002B4F8 AC820070 */  sw    $v0, 0x70($a0)
/* 02C0FC 8002B4FC 8C990074 */  lw    $t9, 0x74($a0)
.L8002B500_ovl0:
/* 02C100 8002B500 AC790000 */  sw    $t9, ($v1)
/* 02C104 8002B504 03E00008 */  jr    $ra
/* 02C108 8002B508 AC830074 */   sw    $v1, 0x74($a0)
/* 02C10C 8002B50C 00601025 */  move  $v0, $v1
.L8002B510_ovl0:
/* 02C110 8002B510 8C630000 */  lw    $v1, ($v1)
/* 02C114 8002B514 1460FFEC */  bnez  $v1, .L8002B4C8_ovl0
/* 02C118 8002B518 00000000 */   nop   
.L8002B51C_ovl0:
/* 02C11C 8002B51C 03E00008 */  jr    $ra
/* 02C120 8002B520 00000000 */   nop   

.type func_8002B4B4, @function
.size func_8002B4B4, . - func_8002B4B4

glabel func_8002B524
/* 02C124 8002B524 908E0008 */  lbu   $t6, 8($a0)
/* 02C128 8002B528 240100FF */  li    $at, 255
/* 02C12C 8002B52C 15C10019 */  bne   $t6, $at, .L8002B594_ovl0
/* 02C130 8002B530 00000000 */   nop   
/* 02C134 8002B534 908F0009 */  lbu   $t7, 9($a0)
/* 02C138 8002B538 24010051 */  li    $at, 81
/* 02C13C 8002B53C 24820004 */  addiu $v0, $a0, 4
/* 02C140 8002B540 15E10014 */  bne   $t7, $at, .L8002B594_ovl0
/* 02C144 8002B544 00000000 */   nop   
/* 02C148 8002B548 904E0008 */  lbu   $t6, 8($v0)
/* 02C14C 8002B54C 90580007 */  lbu   $t8, 7($v0)
/* 02C150 8002B550 8CA60018 */  lw    $a2, 0x18($a1)
/* 02C154 8002B554 000E7A00 */  sll   $t7, $t6, 8
/* 02C158 8002B558 904E0009 */  lbu   $t6, 9($v0)
/* 02C15C 8002B55C 0018CC00 */  sll   $t9, $t8, 0x10
/* 02C160 8002B560 032FC025 */  or    $t8, $t9, $t7
/* 02C164 8002B564 030E1825 */  or    $v1, $t8, $t6
/* 02C168 8002B568 44832000 */  mtc1  $v1, $f4
/* 02C16C 8002B56C 241801E8 */  li    $t8, 488
/* 02C170 8002B570 10C00007 */  beqz  $a2, .L8002B590_ovl0
/* 02C174 8002B574 46802020 */   cvt.s.w $f0, $f4
/* 02C178 8002B578 C4C60014 */  lwc1  $f6, 0x14($a2)
/* 02C17C 8002B57C 46060202 */  mul.s $f8, $f0, $f6
/* 02C180 8002B580 4600428D */  trunc.w.s $f10, $f8
/* 02C184 8002B584 440F5000 */  mfc1  $t7, $f10
/* 02C188 8002B588 03E00008 */  jr    $ra
/* 02C18C 8002B58C ACAF002C */   sw    $t7, 0x2c($a1)
.L8002B590_ovl0:
/* 02C190 8002B590 ACB8002C */  sw    $t8, 0x2c($a1)
.L8002B594_ovl0:
/* 02C194 8002B594 03E00008 */  jr    $ra
/* 02C198 8002B598 00000000 */   nop   

.type func_8002B524, @function
.size func_8002B524, . - func_8002B524

glabel func_8002B59C
/* 02C19C 8002B59C 8C8E0068 */  lw    $t6, 0x68($a0)
/* 02C1A0 8002B5A0 00061080 */  sll   $v0, $a2, 2
/* 02C1A4 8002B5A4 00461023 */  subu  $v0, $v0, $a2
/* 02C1A8 8002B5A8 000210C0 */  sll   $v0, $v0, 3
/* 02C1AC 8002B5AC 01C27821 */  addu  $t7, $t6, $v0
/* 02C1B0 8002B5B0 ADE50000 */  sw    $a1, ($t7)
/* 02C1B4 8002B5B4 8C990068 */  lw    $t9, 0x68($a0)
/* 02C1B8 8002B5B8 90B80002 */  lbu   $t8, 2($a1)
/* 02C1BC 8002B5BC 03224021 */  addu  $t0, $t9, $v0
/* 02C1C0 8002B5C0 A1180008 */  sb    $t8, 8($t0)
/* 02C1C4 8002B5C4 8C8A0068 */  lw    $t2, 0x68($a0)
/* 02C1C8 8002B5C8 84A9000C */  lh    $t1, 0xc($a1)
/* 02C1CC 8002B5CC 01425821 */  addu  $t3, $t2, $v0
/* 02C1D0 8002B5D0 A5690004 */  sh    $t1, 4($t3)
/* 02C1D4 8002B5D4 8C8D0068 */  lw    $t5, 0x68($a0)
/* 02C1D8 8002B5D8 90AC0000 */  lbu   $t4, ($a1)
/* 02C1DC 8002B5DC 01A27021 */  addu  $t6, $t5, $v0
/* 02C1E0 8002B5E0 03E00008 */  jr    $ra
/* 02C1E4 8002B5E4 A1CC0011 */   sb    $t4, 0x11($t6)

.type func_8002B59C, @function
.size func_8002B59C, . - func_8002B59C

glabel func_8002B5E8
/* 02C1E8 8002B5E8 908F0031 */  lbu   $t7, 0x31($a0)
/* 02C1EC 8002B5EC 8CAE0068 */  lw    $t6, 0x68($a1)
/* 02C1F0 8002B5F0 8C890020 */  lw    $t1, 0x20($a0)
/* 02C1F4 8002B5F4 000FC080 */  sll   $t8, $t7, 2
/* 02C1F8 8002B5F8 030FC023 */  subu  $t8, $t8, $t7
/* 02C1FC 8002B5FC 0018C0C0 */  sll   $t8, $t8, 3
/* 02C200 8002B600 01D8C821 */  addu  $t9, $t6, $t8
/* 02C204 8002B604 93280007 */  lbu   $t0, 7($t9)
/* 02C208 8002B608 912A000C */  lbu   $t2, 0xc($t1)
/* 02C20C 8002B60C 010A1821 */  addu  $v1, $t0, $t2
/* 02C210 8002B610 2463FFC0 */  addiu $v1, $v1, -0x40
/* 02C214 8002B614 5C600003 */  bgtzl $v1, .L8002B624_ovl0
/* 02C218 8002B618 2861007F */   slti  $at, $v1, 0x7f
/* 02C21C 8002B61C 00001825 */  move  $v1, $zero
/* 02C220 8002B620 2861007F */  slti  $at, $v1, 0x7f
.L8002B624_ovl0:
/* 02C224 8002B624 14200002 */  bnez  $at, .L8002B630_ovl0
/* 02C228 8002B628 00000000 */   nop   
/* 02C22C 8002B62C 2403007F */  li    $v1, 127
.L8002B630_ovl0:
/* 02C230 8002B630 03E00008 */  jr    $ra
/* 02C234 8002B634 306200FF */   andi  $v0, $v1, 0xff

.type func_8002B5E8, @function
.size func_8002B5E8, . - func_8002B5E8

glabel func_8002B638
/* 02C238 8002B638 AFA50004 */  sw    $a1, 4($sp)
/* 02C23C 8002B63C AFA60008 */  sw    $a2, 8($sp)
/* 02C240 8002B640 8C83006C */  lw    $v1, 0x6c($a0)
/* 02C244 8002B644 30A500FF */  andi  $a1, $a1, 0xff
/* 02C248 8002B648 30C600FF */  andi  $a2, $a2, 0xff
/* 02C24C 8002B64C 10600013 */  beqz  $v1, .L8002B69C_ovl0
/* 02C250 8002B650 00A01025 */   move  $v0, $a1
/* 02C254 8002B654 24070004 */  li    $a3, 4
/* 02C258 8002B658 24050003 */  li    $a1, 3
/* 02C25C 8002B65C 906E0032 */  lbu   $t6, 0x32($v1)
.L8002B660_ovl0:
/* 02C260 8002B660 544E000C */  bnel  $v0, $t6, .L8002B694_ovl0
/* 02C264 8002B664 8C630000 */   lw    $v1, ($v1)
/* 02C268 8002B668 906F0031 */  lbu   $t7, 0x31($v1)
/* 02C26C 8002B66C 54CF0009 */  bnel  $a2, $t7, .L8002B694_ovl0
/* 02C270 8002B670 8C630000 */   lw    $v1, ($v1)
/* 02C274 8002B674 90640035 */  lbu   $a0, 0x35($v1)
/* 02C278 8002B678 50A40006 */  beql  $a1, $a0, .L8002B694_ovl0
/* 02C27C 8002B67C 8C630000 */   lw    $v1, ($v1)
/* 02C280 8002B680 50E40004 */  beql  $a3, $a0, .L8002B694_ovl0
/* 02C284 8002B684 8C630000 */   lw    $v1, ($v1)
/* 02C288 8002B688 03E00008 */  jr    $ra
/* 02C28C 8002B68C 00601025 */   move  $v0, $v1
/* 02C290 8002B690 8C630000 */  lw    $v1, ($v1)
.L8002B694_ovl0:
/* 02C294 8002B694 5460FFF2 */  bnezl $v1, .L8002B660_ovl0
/* 02C298 8002B698 906E0032 */   lbu   $t6, 0x32($v1)
.L8002B69C_ovl0:
/* 02C29C 8002B69C 00001025 */  move  $v0, $zero
/* 02C2A0 8002B6A0 03E00008 */  jr    $ra
/* 02C2A4 8002B6A4 00000000 */   nop   
.type func_8002B638, @function
.size func_8002B638, . - func_8002B638

glabel func_8002B6A8
/* 02C2A8 8002B6A8 AFA50004 */  sw    $a1, 4($sp)
/* 02C2AC 8002B6AC AFA60008 */  sw    $a2, 8($sp)
/* 02C2B0 8002B6B0 AFA7000C */  sw    $a3, 0xc($sp)
/* 02C2B4 8002B6B4 8C830074 */  lw    $v1, 0x74($a0)
/* 02C2B8 8002B6B8 30E700FF */  andi  $a3, $a3, 0xff
/* 02C2BC 8002B6BC 30C600FF */  andi  $a2, $a2, 0xff
/* 02C2C0 8002B6C0 10600010 */  beqz  $v1, .L8002B704_ovl0
/* 02C2C4 8002B6C4 30A500FF */   andi  $a1, $a1, 0xff
/* 02C2C8 8002B6C8 8C6E0000 */  lw    $t6, ($v1)
/* 02C2CC 8002B6CC AC8E0074 */  sw    $t6, 0x74($a0)
/* 02C2D0 8002B6D0 AC600000 */  sw    $zero, ($v1)
/* 02C2D4 8002B6D4 8C8F006C */  lw    $t7, 0x6c($a0)
/* 02C2D8 8002B6D8 55E00004 */  bnezl $t7, .L8002B6EC_ovl0
/* 02C2DC 8002B6DC 8C980070 */   lw    $t8, 0x70($a0)
/* 02C2E0 8002B6E0 10000003 */  b     .L8002B6F0_ovl0
/* 02C2E4 8002B6E4 AC83006C */   sw    $v1, 0x6c($a0)
/* 02C2E8 8002B6E8 8C980070 */  lw    $t8, 0x70($a0)
.L8002B6EC_ovl0:
/* 02C2EC 8002B6EC AF030000 */  sw    $v1, ($t8)
.L8002B6F0_ovl0:
/* 02C2F0 8002B6F0 AC830070 */  sw    $v1, 0x70($a0)
/* 02C2F4 8002B6F4 A0670031 */  sb    $a3, 0x31($v1)
/* 02C2F8 8002B6F8 A0650032 */  sb    $a1, 0x32($v1)
/* 02C2FC 8002B6FC A0660033 */  sb    $a2, 0x33($v1)
/* 02C300 8002B700 AC630014 */  sw    $v1, 0x14($v1)
.L8002B704_ovl0:
/* 02C304 8002B704 03E00008 */  jr    $ra
/* 02C308 8002B708 00601025 */   move  $v0, $v1

.type func_8002B6A8, @function
.size func_8002B6A8, . - func_8002B6A8

glabel func_8002B70C
/* 02C30C 8002B70C AFA7000C */  sw    $a3, 0xc($sp)
/* 02C310 8002B710 30E700FF */  andi  $a3, $a3, 0xff
/* 02C314 8002B714 AFA50004 */  sw    $a1, 4($sp)
/* 02C318 8002B718 AFA60008 */  sw    $a2, 8($sp)
/* 02C31C 8002B71C 8C8E0068 */  lw    $t6, 0x68($a0)
/* 02C320 8002B720 00077880 */  sll   $t7, $a3, 2
/* 02C324 8002B724 01E77823 */  subu  $t7, $t7, $a3
/* 02C328 8002B728 000F78C0 */  sll   $t7, $t7, 3
/* 02C32C 8002B72C 01CFC021 */  addu  $t8, $t6, $t7
/* 02C330 8002B730 8F020000 */  lw    $v0, ($t8)
/* 02C334 8002B734 30A500FF */  andi  $a1, $a1, 0xff
/* 02C338 8002B738 30CB00FF */  andi  $t3, $a2, 0xff
/* 02C33C 8002B73C 8448000E */  lh    $t0, 0xe($v0)
/* 02C340 8002B740 24030001 */  li    $v1, 1
/* 02C344 8002B744 00A04825 */  move  $t1, $a1
/* 02C348 8002B748 1900002E */  blez  $t0, .L8002B804_ovl0
/* 02C34C 8002B74C 00682821 */   addu  $a1, $v1, $t0
.L8002B750_ovl0:
/* 02C350 8002B750 04A10002 */  bgez  $a1, .L8002B75C_ovl0
/* 02C354 8002B754 00A00821 */   addu  $at, $a1, $zero
/* 02C358 8002B758 24A10001 */  addiu $at, $a1, 1
.L8002B75C_ovl0:
/* 02C35C 8002B75C 00012843 */  sra   $a1, $at, 1
/* 02C360 8002B760 0005C880 */  sll   $t9, $a1, 2
/* 02C364 8002B764 00596021 */  addu  $t4, $v0, $t9
/* 02C368 8002B768 8D87000C */  lw    $a3, 0xc($t4)
/* 02C36C 8002B76C 00A02025 */  move  $a0, $a1
/* 02C370 8002B770 8CE60004 */  lw    $a2, 4($a3)
/* 02C374 8002B774 90CA0002 */  lbu   $t2, 2($a2)
/* 02C378 8002B778 012A082A */  slt   $at, $t1, $t2
/* 02C37C 8002B77C 54200011 */  bnezl $at, .L8002B7C4_ovl0
/* 02C380 8002B780 012A082A */   slt   $at, $t1, $t2
/* 02C384 8002B784 90CD0003 */  lbu   $t5, 3($a2)
/* 02C388 8002B788 01A9082A */  slt   $at, $t5, $t1
/* 02C38C 8002B78C 5420000D */  bnezl $at, .L8002B7C4_ovl0
/* 02C390 8002B790 012A082A */   slt   $at, $t1, $t2
/* 02C394 8002B794 90CE0000 */  lbu   $t6, ($a2)
/* 02C398 8002B798 01602825 */  move  $a1, $t3
/* 02C39C 8002B79C 016E082A */  slt   $at, $t3, $t6
/* 02C3A0 8002B7A0 54200008 */  bnezl $at, .L8002B7C4_ovl0
/* 02C3A4 8002B7A4 012A082A */   slt   $at, $t1, $t2
/* 02C3A8 8002B7A8 90CF0001 */  lbu   $t7, 1($a2)
/* 02C3AC 8002B7AC 01E5082A */  slt   $at, $t7, $a1
/* 02C3B0 8002B7B0 54200004 */  bnezl $at, .L8002B7C4_ovl0
/* 02C3B4 8002B7B4 012A082A */   slt   $at, $t1, $t2
/* 02C3B8 8002B7B8 03E00008 */  jr    $ra
/* 02C3BC 8002B7BC 00E01025 */   move  $v0, $a3
/* 02C3C0 8002B7C0 012A082A */  slt   $at, $t1, $t2
.L8002B7C4_ovl0:
/* 02C3C4 8002B7C4 14200009 */  bnez  $at, .L8002B7EC_ovl0
/* 02C3C8 8002B7C8 00000000 */   nop   
/* 02C3CC 8002B7CC 90D80000 */  lbu   $t8, ($a2)
/* 02C3D0 8002B7D0 0178082A */  slt   $at, $t3, $t8
/* 02C3D4 8002B7D4 50200008 */  beql  $at, $zero, .L8002B7F8_ovl0
/* 02C3D8 8002B7D8 24830001 */   addiu $v1, $a0, 1
/* 02C3DC 8002B7DC 90D90003 */  lbu   $t9, 3($a2)
/* 02C3E0 8002B7E0 0329082A */  slt   $at, $t9, $t1
/* 02C3E4 8002B7E4 54200004 */  bnezl $at, .L8002B7F8_ovl0
/* 02C3E8 8002B7E8 24830001 */   addiu $v1, $a0, 1
.L8002B7EC_ovl0:
/* 02C3EC 8002B7EC 10000002 */  b     .L8002B7F8_ovl0
/* 02C3F0 8002B7F0 2488FFFF */   addiu $t0, $a0, -1
/* 02C3F4 8002B7F4 24830001 */  addiu $v1, $a0, 1
.L8002B7F8_ovl0:
/* 02C3F8 8002B7F8 0103082A */  slt   $at, $t0, $v1
/* 02C3FC 8002B7FC 5020FFD4 */  beql  $at, $zero, .L8002B750_ovl0
/* 02C400 8002B800 00682821 */   addu  $a1, $v1, $t0
.L8002B804_ovl0:
/* 02C404 8002B804 00001025 */  move  $v0, $zero
/* 02C408 8002B808 03E00008 */  jr    $ra
/* 02C40C 8002B80C 00000000 */   nop   
.type func_8002B70C, @function
.size func_8002B70C, . - func_8002B70C

glabel func_8002B810
/* 02C410 8002B810 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 02C414 8002B814 AFBF0024 */  sw    $ra, 0x24($sp)
/* 02C418 8002B818 90960008 */  lbu   $s6, 8($a0)
/* 02C41C 8002B81C 90910009 */  lbu   $s1, 9($a0)
/* 02C420 8002B820 9094000A */  lbu   $s4, 0xa($a0)
/* 02C424 8002B824 32C300F0 */  andi  $v1, $s6, 0xf0
/* 02C428 8002B828 246EFF80 */  addiu $t6, $v1, -0x80
/* 02C42C 8002B82C 2DC10061 */  sltiu $at, $t6, 0x61
/* 02C430 8002B830 102001FE */  beqz  $at, .L8002C02C_ovl0
/* 02C434 8002B834 32D6000F */   andi  $s6, $s6, 0xf
/* 02C438 8002B838 000E7080 */  sll   $t6, $t6, 2
/* 02C43C 8002B83C 3C018004 */ lui $at, %hi(D_800417F0)
/* 02C440 8002B840 002E0821 */  addu  $at, $at, $t6
/* 02C444 8002B844 8C2E17F0 */ lw $t6, %lo(D_800417F0)($at)
/* 02C448 8002B848 01C00008 */  jr    $t6
/* 02C44C 8002B84C 00000000 */   nop   
/* 02C450 8002B850 528000D6 */  beql  $s4, $zero, .L8002BBAC_ovl0
/* 02C454 8002B854 02402025 */   move  $a0, $s2
/* 02C458 8002B858 8E4F0034 */  lw    $t7, 0x34($s2)
/* 02C45C 8002B85C 24010001 */  li    $at, 1
/* 02C460 8002B860 02402025 */  move  $a0, $s2
/* 02C464 8002B864 15E101F1 */  bne   $t7, $at, .L8002C02C_ovl0
/* 02C468 8002B868 322500FF */   andi  $a1, $s1, 0xff
/* 02C46C 8002B86C 328600FF */  andi  $a2, $s4, 0xff
/* 02C470 8002B870 0C00ADC3 */  jal   func_8002B70C
/* 02C474 8002B874 32C700FF */   andi  $a3, $s6, 0xff
/* 02C478 8002B878 104001EC */  beqz  $v0, .L8002C02C_ovl0
/* 02C47C 8002B87C 0040B825 */   move  $s7, $v0
/* 02C480 8002B880 8E580068 */  lw    $t8, 0x68($s2)
/* 02C484 8002B884 0016F080 */  sll   $fp, $s6, 2
/* 02C488 8002B888 03D6F023 */  subu  $fp, $fp, $s6
/* 02C48C 8002B88C 001EF0C0 */  sll   $fp, $fp, 3
/* 02C490 8002B890 031EC821 */  addu  $t9, $t8, $fp
/* 02C494 8002B894 932E0008 */  lbu   $t6, 8($t9)
/* 02C498 8002B898 A7A0008E */  sh    $zero, 0x8e($sp)
/* 02C49C 8002B89C A3A00090 */  sb    $zero, 0x90($sp)
/* 02C4A0 8002B8A0 02402025 */  move  $a0, $s2
/* 02C4A4 8002B8A4 322500FF */  andi  $a1, $s1, 0xff
/* 02C4A8 8002B8A8 328600FF */  andi  $a2, $s4, 0xff
/* 02C4AC 8002B8AC 32C700FF */  andi  $a3, $s6, 0xff
/* 02C4B0 8002B8B0 0C00ADAA */  jal   func_8002B6A8
/* 02C4B4 8002B8B4 A7AE008C */   sh    $t6, 0x8c($sp)
/* 02C4B8 8002B8B8 104001DC */  beqz  $v0, .L8002C02C_ovl0
/* 02C4BC 8002B8BC 00408025 */   move  $s0, $v0
/* 02C4C0 8002B8C0 24440004 */  addiu $a0, $v0, 4
/* 02C4C4 8002B8C4 AFA40034 */  sw    $a0, 0x34($sp)
/* 02C4C8 8002B8C8 0C00AAF4 */  jal   n_alSynAllocVoice
/* 02C4CC 8002B8CC 27A5008C */   addiu $a1, $sp, 0x8c
/* 02C4D0 8002B8D0 AE170020 */  sw    $s7, 0x20($s0)
/* 02C4D4 8002B8D4 A2000034 */  sb    $zero, 0x34($s0)
/* 02C4D8 8002B8D8 8E4F0068 */  lw    $t7, 0x68($s2)
/* 02C4DC 8002B8DC 24150002 */  li    $s5, 2
/* 02C4E0 8002B8E0 01FEC021 */  addu  $t8, $t7, $fp
/* 02C4E4 8002B8E4 9319000B */  lbu   $t9, 0xb($t8)
/* 02C4E8 8002B8E8 2B210040 */  slti  $at, $t9, 0x40
/* 02C4EC 8002B8EC 54200004 */  bnezl $at, .L8002B900_ovl0
/* 02C4F0 8002B8F0 A2000035 */   sb    $zero, 0x35($s0)
/* 02C4F4 8002B8F4 10000002 */  b     .L8002B900_ovl0
/* 02C4F8 8002B8F8 A2150035 */   sb    $s5, 0x35($s0)
/* 02C4FC 8002B8FC A2000035 */  sb    $zero, 0x35($s0)
.L8002B900_ovl0:
/* 02C500 8002B900 8EE20004 */  lw    $v0, 4($s7)
/* 02C504 8002B904 904E0004 */  lbu   $t6, 4($v0)
/* 02C508 8002B908 80590005 */  lb    $t9, 5($v0)
/* 02C50C 8002B90C 022E7823 */  subu  $t7, $s1, $t6
/* 02C510 8002B910 000FC080 */  sll   $t8, $t7, 2
/* 02C514 8002B914 030FC023 */  subu  $t8, $t8, $t7
/* 02C518 8002B918 0018C0C0 */  sll   $t8, $t8, 3
/* 02C51C 8002B91C 030FC021 */  addu  $t8, $t8, $t7
/* 02C520 8002B920 0018C080 */  sll   $t8, $t8, 2
/* 02C524 8002B924 03192021 */  addu  $a0, $t8, $t9
/* 02C528 8002B928 00042400 */  sll   $a0, $a0, 0x10
/* 02C52C 8002B92C 0C00DC20 */  jal   alCents2Ratio
/* 02C530 8002B930 00042403 */   sra   $a0, $a0, 0x10
/* 02C534 8002B934 E6000028 */  swc1  $f0, 0x28($s0)
/* 02C538 8002B938 8EEE0000 */  lw    $t6, ($s7)
/* 02C53C 8002B93C 3C0142FE */  li    $at, 0x42FE0000 # 127.000000
/* 02C540 8002B940 44812000 */  mtc1  $at, $f4
/* 02C544 8002B944 91CF000C */  lbu   $t7, 0xc($t6)
/* 02C548 8002B948 A20F0030 */  sb    $t7, 0x30($s0)
/* 02C54C 8002B94C 8EF90000 */  lw    $t9, ($s7)
/* 02C550 8002B950 8E58001C */  lw    $t8, 0x1c($s2)
/* 02C554 8002B954 8F2E0000 */  lw    $t6, ($t9)
/* 02C558 8002B958 A2000037 */  sb    $zero, 0x37($s0)
/* 02C55C 8002B95C 030E7821 */  addu  $t7, $t8, $t6
/* 02C560 8002B960 AE0F0024 */  sw    $t7, 0x24($s0)
/* 02C564 8002B964 8E590068 */  lw    $t9, 0x68($s2)
/* 02C568 8002B968 033EC021 */  addu  $t8, $t9, $fp
/* 02C56C 8002B96C 8F110000 */  lw    $s1, ($t8)
/* 02C570 8002B970 E7A4007C */  swc1  $f4, 0x7c($sp)
/* 02C574 8002B974 92260004 */  lbu   $a2, 4($s1)
/* 02C578 8002B978 50C0001A */  beql  $a2, $zero, .L8002B9E4_ovl0
/* 02C57C 8002B97C 4459F800 */   cfc1  $t9, $31
/* 02C580 8002B980 8E42007C */  lw    $v0, 0x7c($s2)
/* 02C584 8002B984 50400017 */  beql  $v0, $zero, .L8002B9E4_ovl0
/* 02C588 8002B988 4459F800 */   cfc1  $t9, $31
/* 02C58C 8002B98C 922E0006 */  lbu   $t6, 6($s1)
/* 02C590 8002B990 92270005 */  lbu   $a3, 5($s1)
/* 02C594 8002B994 27A40074 */  addiu $a0, $sp, 0x74
/* 02C598 8002B998 AFAE0010 */  sw    $t6, 0x10($sp)
/* 02C59C 8002B99C 922F0007 */  lbu   $t7, 7($s1)
/* 02C5A0 8002B9A0 27A5007C */  addiu $a1, $sp, 0x7c
/* 02C5A4 8002B9A4 0040F809 */  jalr  $v0
/* 02C5A8 8002B9A8 AFAF0014 */  sw    $t7, 0x14($sp)
/* 02C5AC 8002B9AC 1040000C */  beqz  $v0, .L8002B9E0_ovl0
/* 02C5B0 8002B9B0 24190016 */   li    $t9, 22
/* 02C5B4 8002B9B4 8FB80074 */  lw    $t8, 0x74($sp)
/* 02C5B8 8002B9B8 A7B900A4 */  sh    $t9, 0xa4($sp)
/* 02C5BC 8002B9BC AFB000A8 */  sw    $s0, 0xa8($sp)
/* 02C5C0 8002B9C0 26440050 */  addiu $a0, $s2, 0x50
/* 02C5C4 8002B9C4 27A500A4 */  addiu $a1, $sp, 0xa4
/* 02C5C8 8002B9C8 00403025 */  move  $a2, $v0
/* 02C5CC 8002B9CC 0C009818 */  jal   func_80026060
/* 02C5D0 8002B9D0 AFB800AC */   sw    $t8, 0xac($sp)
/* 02C5D4 8002B9D4 920E0037 */  lbu   $t6, 0x37($s0)
/* 02C5D8 8002B9D8 35CF0001 */  ori   $t7, $t6, 1
/* 02C5DC 8002B9DC A20F0037 */  sb    $t7, 0x37($s0)
.L8002B9E0_ovl0:
/* 02C5E0 8002B9E0 4459F800 */  cfc1  $t9, $31
.L8002B9E4_ovl0:
/* 02C5E4 8002B9E4 24180001 */  li    $t8, 1
/* 02C5E8 8002B9E8 44D8F800 */  ctc1  $t8, $31
/* 02C5EC 8002B9EC C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 02C5F0 8002B9F0 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 02C5F4 8002B9F4 46003224 */  cvt.w.s $f8, $f6
/* 02C5F8 8002B9F8 4458F800 */  cfc1  $t8, $31
/* 02C5FC 8002B9FC 00000000 */  nop   
/* 02C600 8002BA00 33180078 */  andi  $t8, $t8, 0x78
/* 02C604 8002BA04 53000013 */  beql  $t8, $zero, .L8002BA54_ovl0
/* 02C608 8002BA08 44184000 */   mfc1  $t8, $f8
/* 02C60C 8002BA0C 44814000 */  mtc1  $at, $f8
/* 02C610 8002BA10 24180001 */  li    $t8, 1
/* 02C614 8002BA14 46083201 */  sub.s $f8, $f6, $f8
/* 02C618 8002BA18 44D8F800 */  ctc1  $t8, $31
/* 02C61C 8002BA1C 00000000 */  nop   
/* 02C620 8002BA20 46004224 */  cvt.w.s $f8, $f8
/* 02C624 8002BA24 4458F800 */  cfc1  $t8, $31
/* 02C628 8002BA28 00000000 */  nop   
/* 02C62C 8002BA2C 33180078 */  andi  $t8, $t8, 0x78
/* 02C630 8002BA30 17000005 */  bnez  $t8, .L8002BA48_ovl0
/* 02C634 8002BA34 00000000 */   nop   
/* 02C638 8002BA38 44184000 */  mfc1  $t8, $f8
/* 02C63C 8002BA3C 3C018000 */  lui   $at, 0x8000
/* 02C640 8002BA40 10000007 */  b     .L8002BA60_ovl0
/* 02C644 8002BA44 0301C025 */   or    $t8, $t8, $at
.L8002BA48_ovl0:
/* 02C648 8002BA48 10000005 */  b     .L8002BA60_ovl0
/* 02C64C 8002BA4C 2418FFFF */   li    $t8, -1
/* 02C650 8002BA50 44184000 */  mfc1  $t8, $f8
.L8002BA54_ovl0:
/* 02C654 8002BA54 00000000 */  nop   
/* 02C658 8002BA58 0700FFFB */  bltz  $t8, .L8002BA48_ovl0
/* 02C65C 8002BA5C 00000000 */   nop   
.L8002BA60_ovl0:
/* 02C660 8002BA60 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02C664 8002BA64 44815000 */  mtc1  $at, $f10
/* 02C668 8002BA68 A2180036 */  sb    $t8, 0x36($s0)
/* 02C66C 8002BA6C 44D9F800 */  ctc1  $t9, $31
/* 02C670 8002BA70 E7AA007C */  swc1  $f10, 0x7c($sp)
/* 02C674 8002BA74 92260008 */  lbu   $a2, 8($s1)
/* 02C678 8002BA78 26550050 */  addiu $s5, $s2, 0x50
/* 02C67C 8002BA7C 50C0001B */  beql  $a2, $zero, .L8002BAEC_ovl0
/* 02C680 8002BA80 C7A4007C */   lwc1  $f4, 0x7c($sp)
/* 02C684 8002BA84 8E42007C */  lw    $v0, 0x7c($s2)
/* 02C688 8002BA88 50400018 */  beql  $v0, $zero, .L8002BAEC_ovl0
/* 02C68C 8002BA8C C7A4007C */   lwc1  $f4, 0x7c($sp)
/* 02C690 8002BA90 922E000A */  lbu   $t6, 0xa($s1)
/* 02C694 8002BA94 92270009 */  lbu   $a3, 9($s1)
/* 02C698 8002BA98 27A40074 */  addiu $a0, $sp, 0x74
/* 02C69C 8002BA9C AFAE0010 */  sw    $t6, 0x10($sp)
/* 02C6A0 8002BAA0 922F000B */  lbu   $t7, 0xb($s1)
/* 02C6A4 8002BAA4 27A5007C */  addiu $a1, $sp, 0x7c
/* 02C6A8 8002BAA8 0040F809 */  jalr  $v0
/* 02C6AC 8002BAAC AFAF0014 */  sw    $t7, 0x14($sp)
/* 02C6B0 8002BAB0 1040000D */  beqz  $v0, .L8002BAE8_ovl0
/* 02C6B4 8002BAB4 24190017 */   li    $t9, 23
/* 02C6B8 8002BAB8 8FB80074 */  lw    $t8, 0x74($sp)
/* 02C6BC 8002BABC A7B900A4 */  sh    $t9, 0xa4($sp)
/* 02C6C0 8002BAC0 AFB000A8 */  sw    $s0, 0xa8($sp)
/* 02C6C4 8002BAC4 A3B600B0 */  sb    $s6, 0xb0($sp)
/* 02C6C8 8002BAC8 02A02025 */  move  $a0, $s5
/* 02C6CC 8002BACC 27A500A4 */  addiu $a1, $sp, 0xa4
/* 02C6D0 8002BAD0 00403025 */  move  $a2, $v0
/* 02C6D4 8002BAD4 0C009818 */  jal   func_80026060
/* 02C6D8 8002BAD8 AFB800AC */   sw    $t8, 0xac($sp)
/* 02C6DC 8002BADC 920E0037 */  lbu   $t6, 0x37($s0)
/* 02C6E0 8002BAE0 35CF0002 */  ori   $t7, $t6, 2
/* 02C6E4 8002BAE4 A20F0037 */  sb    $t7, 0x37($s0)
.L8002BAE8_ovl0:
/* 02C6E8 8002BAE8 C7A4007C */  lwc1  $f4, 0x7c($sp)
.L8002BAEC_ovl0:
/* 02C6EC 8002BAEC C6080028 */  lwc1  $f8, 0x28($s0)
/* 02C6F0 8002BAF0 02002025 */  move  $a0, $s0
/* 02C6F4 8002BAF4 E604002C */  swc1  $f4, 0x2c($s0)
/* 02C6F8 8002BAF8 8E590068 */  lw    $t9, 0x68($s2)
/* 02C6FC 8002BAFC C604002C */  lwc1  $f4, 0x2c($s0)
/* 02C700 8002BB00 02402825 */  move  $a1, $s2
/* 02C704 8002BB04 033E1021 */  addu  $v0, $t9, $fp
/* 02C708 8002BB08 C446000C */  lwc1  $f6, 0xc($v0)
/* 02C70C 8002BB0C 9051000A */  lbu   $s1, 0xa($v0)
/* 02C710 8002BB10 46083282 */  mul.s $f10, $f6, $f8
/* 02C714 8002BB14 00000000 */  nop   
/* 02C718 8002BB18 46045502 */  mul.s $f20, $f10, $f4
/* 02C71C 8002BB1C 0C00AD7A */  jal   func_8002B5E8
/* 02C720 8002BB20 00000000 */   nop   
/* 02C724 8002BB24 305400FF */  andi  $s4, $v0, 0xff
/* 02C728 8002BB28 02002025 */  move  $a0, $s0
/* 02C72C 8002BB2C 0C00AC8E */  jal   func_8002B238
/* 02C730 8002BB30 02402825 */   move  $a1, $s2
/* 02C734 8002BB34 8EF80000 */  lw    $t8, ($s7)
/* 02C738 8002BB38 8EE50008 */  lw    $a1, 8($s7)
/* 02C73C 8002BB3C 4406A000 */  mfc1  $a2, $f20
/* 02C740 8002BB40 8F130000 */  lw    $s3, ($t8)
/* 02C744 8002BB44 00023C00 */  sll   $a3, $v0, 0x10
/* 02C748 8002BB48 00073C03 */  sra   $a3, $a3, 0x10
/* 02C74C 8002BB4C AFB10014 */  sw    $s1, 0x14($sp)
/* 02C750 8002BB50 AFB40010 */  sw    $s4, 0x10($sp)
/* 02C754 8002BB54 8FA40034 */  lw    $a0, 0x34($sp)
/* 02C758 8002BB58 0C00AB9D */  jal   func_8002AE74
/* 02C75C 8002BB5C AFB30018 */   sw    $s3, 0x18($sp)
/* 02C760 8002BB60 8FAF0034 */  lw    $t7, 0x34($sp)
/* 02C764 8002BB64 240E0006 */  li    $t6, 6
/* 02C768 8002BB68 A7AE00A4 */  sh    $t6, 0xa4($sp)
/* 02C76C 8002BB6C AFAF00A8 */  sw    $t7, 0xa8($sp)
/* 02C770 8002BB70 8EF90000 */  lw    $t9, ($s7)
/* 02C774 8002BB74 02A02025 */  move  $a0, $s5
/* 02C778 8002BB78 27A500A4 */  addiu $a1, $sp, 0xa4
/* 02C77C 8002BB7C 9338000D */  lbu   $t8, 0xd($t9)
/* 02C780 8002BB80 A3B800B0 */  sb    $t8, 0xb0($sp)
/* 02C784 8002BB84 8EEE0000 */  lw    $t6, ($s7)
/* 02C788 8002BB88 8DCF0004 */  lw    $t7, 4($t6)
/* 02C78C 8002BB8C AFAF00AC */  sw    $t7, 0xac($sp)
/* 02C790 8002BB90 8EF90000 */  lw    $t9, ($s7)
/* 02C794 8002BB94 8F330000 */  lw    $s3, ($t9)
/* 02C798 8002BB98 0C009818 */  jal   func_80026060
/* 02C79C 8002BB9C 02603025 */   move  $a2, $s3
/* 02C7A0 8002BBA0 10000123 */  b     .L8002C030_ovl0
/* 02C7A4 8002BBA4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C7A8 8002BBA8 02402025 */  move  $a0, $s2
.L8002BBAC_ovl0:
/* 02C7AC 8002BBAC 322500FF */  andi  $a1, $s1, 0xff
/* 02C7B0 8002BBB0 0C00AD8E */  jal   func_8002B638
/* 02C7B4 8002BBB4 32C600FF */   andi  $a2, $s6, 0xff
/* 02C7B8 8002BBB8 1040011C */  beqz  $v0, .L8002C02C_ovl0
/* 02C7BC 8002BBBC 00408025 */   move  $s0, $v0
/* 02C7C0 8002BBC0 90580035 */  lbu   $t8, 0x35($v0)
/* 02C7C4 8002BBC4 24160002 */  li    $s6, 2
/* 02C7C8 8002BBC8 240E0004 */  li    $t6, 4
/* 02C7CC 8002BBCC 16D80003 */  bne   $s6, $t8, .L8002BBDC_ovl0
/* 02C7D0 8002BBD0 02402025 */   move  $a0, $s2
/* 02C7D4 8002BBD4 10000115 */  b     .L8002C02C_ovl0
/* 02C7D8 8002BBD8 A04E0035 */   sb    $t6, 0x35($v0)
.L8002BBDC_ovl0:
/* 02C7DC 8002BBDC 8E0F0020 */  lw    $t7, 0x20($s0)
/* 02C7E0 8002BBE0 241E0003 */  li    $fp, 3
/* 02C7E4 8002BBE4 A21E0035 */  sb    $fp, 0x35($s0)
/* 02C7E8 8002BBE8 8DF90000 */  lw    $t9, ($t7)
/* 02C7EC 8002BBEC 26050004 */  addiu $a1, $s0, 4
/* 02C7F0 8002BBF0 0C00ACBA */  jal   func_8002B2E8
/* 02C7F4 8002BBF4 8F260008 */   lw    $a2, 8($t9)
/* 02C7F8 8002BBF8 1000010D */  b     .L8002C030_ovl0
/* 02C7FC 8002BBFC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C800 8002BC00 02402025 */  move  $a0, $s2
/* 02C804 8002BC04 322500FF */  andi  $a1, $s1, 0xff
/* 02C808 8002BC08 0C00AD8E */  jal   func_8002B638
/* 02C80C 8002BC0C 32C600FF */   andi  $a2, $s6, 0xff
/* 02C810 8002BC10 10400106 */  beqz  $v0, .L8002C02C_ovl0
/* 02C814 8002BC14 00408025 */   move  $s0, $v0
/* 02C818 8002BC18 A0540033 */  sb    $s4, 0x33($v0)
/* 02C81C 8002BC1C 00402025 */  move  $a0, $v0
/* 02C820 8002BC20 0C00AC8E */  jal   func_8002B238
/* 02C824 8002BC24 02402825 */   move  $a1, $s2
/* 02C828 8002BC28 8E43001C */  lw    $v1, 0x1c($s2)
/* 02C82C 8002BC2C 8E180024 */  lw    $t8, 0x24($s0)
/* 02C830 8002BC30 00022C00 */  sll   $a1, $v0, 0x10
/* 02C834 8002BC34 00052C03 */  sra   $a1, $a1, 0x10
/* 02C838 8002BC38 03032023 */  subu  $a0, $t8, $v1
/* 02C83C 8002BC3C 04800003 */  bltz  $a0, .L8002BC4C_ovl0
/* 02C840 8002BC40 240203E8 */   li    $v0, 1000
/* 02C844 8002BC44 10000001 */  b     .L8002BC4C_ovl0
/* 02C848 8002BC48 00801025 */   move  $v0, $a0
.L8002BC4C_ovl0:
/* 02C84C 8002BC4C 26040004 */  addiu $a0, $s0, 4
/* 02C850 8002BC50 0C00B494 */  jal   n_alSynSetVol
/* 02C854 8002BC54 00403025 */   move  $a2, $v0
/* 02C858 8002BC58 100000F5 */  b     .L8002C030_ovl0
/* 02C85C 8002BC5C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C860 8002BC60 8E4E0068 */  lw    $t6, 0x68($s2)
/* 02C864 8002BC64 00167880 */  sll   $t7, $s6, 2
/* 02C868 8002BC68 01F67823 */  subu  $t7, $t7, $s6
/* 02C86C 8002BC6C 000F78C0 */  sll   $t7, $t7, 3
/* 02C870 8002BC70 01CFC821 */  addu  $t9, $t6, $t7
/* 02C874 8002BC74 100000ED */  b     .L8002C02C_ovl0
/* 02C878 8002BC78 A3310010 */   sb    $s1, 0x10($t9)
/* 02C87C 8002BC7C 2A210041 */  slti  $at, $s1, 0x41
/* 02C880 8002BC80 14200009 */  bnez  $at, .L8002BCA8_ovl0
/* 02C884 8002BC84 02201025 */   move  $v0, $s1
/* 02C888 8002BC88 2401005B */  li    $at, 91
/* 02C88C 8002BC8C 10410087 */  beq   $v0, $at, .L8002BEAC_ovl0
/* 02C890 8002BC90 00167080 */   sll   $t6, $s6, 2
/* 02C894 8002BC94 2401005D */  li    $at, 93
/* 02C898 8002BC98 504100E5 */  beql  $v0, $at, .L8002C030_ovl0
/* 02C89C 8002BC9C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C8A0 8002BCA0 100000E3 */  b     .L8002C030_ovl0
/* 02C8A4 8002BCA4 8FBF0024 */   lw    $ra, 0x24($sp)
.L8002BCA8_ovl0:
/* 02C8A8 8002BCA8 2841001C */  slti  $at, $v0, 0x1c
/* 02C8AC 8002BCAC 14200006 */  bnez  $at, .L8002BCC8_ovl0
/* 02C8B0 8002BCB0 2458FFF9 */   addiu $t8, $v0, -7
/* 02C8B4 8002BCB4 24010040 */  li    $at, 64
/* 02C8B8 8002BCB8 1041004F */  beq   $v0, $at, .L8002BDF8_ovl0
/* 02C8BC 8002BCBC 0016C880 */   sll   $t9, $s6, 2
/* 02C8C0 8002BCC0 100000DB */  b     .L8002C030_ovl0
/* 02C8C4 8002BCC4 8FBF0024 */   lw    $ra, 0x24($sp)
.L8002BCC8_ovl0:
/* 02C8C8 8002BCC8 2F010015 */  sltiu $at, $t8, 0x15
/* 02C8CC 8002BCCC 102000D7 */  beqz  $at, .L8002C02C_ovl0
/* 02C8D0 8002BCD0 0018C080 */   sll   $t8, $t8, 2
/* 02C8D4 8002BCD4 3C018004 */ lui $at, %hi(D_80041974)
/* 02C8D8 8002BCD8 00380821 */  addu  $at, $at, $t8
/* 02C8DC 8002BCDC 8C381974 */ lw $t8, %lo(D_80041974)($at)
/* 02C8E0 8002BCE0 03000008 */  jr    $t8
/* 02C8E4 8002BCE4 00000000 */   nop   
/* 02C8E8 8002BCE8 8E4E0068 */  lw    $t6, 0x68($s2)
/* 02C8EC 8002BCEC 00167880 */  sll   $t7, $s6, 2
/* 02C8F0 8002BCF0 01F67823 */  subu  $t7, $t7, $s6
/* 02C8F4 8002BCF4 000F78C0 */  sll   $t7, $t7, 3
/* 02C8F8 8002BCF8 01CFC821 */  addu  $t9, $t6, $t7
/* 02C8FC 8002BCFC A3340007 */  sb    $s4, 7($t9)
/* 02C900 8002BD00 8E50006C */  lw    $s0, 0x6c($s2)
/* 02C904 8002BD04 520000CA */  beql  $s0, $zero, .L8002C030_ovl0
/* 02C908 8002BD08 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C90C 8002BD0C 02C08825 */  move  $s1, $s6
/* 02C910 8002BD10 92180031 */  lbu   $t8, 0x31($s0)
.L8002BD14_ovl0:
/* 02C914 8002BD14 02002025 */  move  $a0, $s0
/* 02C918 8002BD18 56380007 */  bnel  $s1, $t8, .L8002BD38_ovl0
/* 02C91C 8002BD1C 8E100000 */   lw    $s0, ($s0)
/* 02C920 8002BD20 0C00AD7A */  jal   func_8002B5E8
/* 02C924 8002BD24 02402825 */   move  $a1, $s2
/* 02C928 8002BD28 26040004 */  addiu $a0, $s0, 4
/* 02C92C 8002BD2C 0C00AB44 */  jal   n_alSynSetPan
/* 02C930 8002BD30 304500FF */   andi  $a1, $v0, 0xff
/* 02C934 8002BD34 8E100000 */  lw    $s0, ($s0)
.L8002BD38_ovl0:
/* 02C938 8002BD38 5600FFF6 */  bnezl $s0, .L8002BD14_ovl0
/* 02C93C 8002BD3C 92180031 */   lbu   $t8, 0x31($s0)
/* 02C940 8002BD40 100000BB */  b     .L8002C030_ovl0
/* 02C944 8002BD44 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C948 8002BD48 8E4E0068 */  lw    $t6, 0x68($s2)
/* 02C94C 8002BD4C 00167880 */  sll   $t7, $s6, 2
/* 02C950 8002BD50 01F67823 */  subu  $t7, $t7, $s6
/* 02C954 8002BD54 000F78C0 */  sll   $t7, $t7, 3
/* 02C958 8002BD58 01CFC821 */  addu  $t9, $t6, $t7
/* 02C95C 8002BD5C A3340009 */  sb    $s4, 9($t9)
/* 02C960 8002BD60 8E50006C */  lw    $s0, 0x6c($s2)
/* 02C964 8002BD64 520000B2 */  beql  $s0, $zero, .L8002C030_ovl0
/* 02C968 8002BD68 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C96C 8002BD6C 02C08825 */  move  $s1, $s6
/* 02C970 8002BD70 24130003 */  li    $s3, 3
/* 02C974 8002BD74 92180031 */  lbu   $t8, 0x31($s0)
.L8002BD78_ovl0:
/* 02C978 8002BD78 56380014 */  bnel  $s1, $t8, .L8002BDCC_ovl0
/* 02C97C 8002BD7C 8E100000 */   lw    $s0, ($s0)
/* 02C980 8002BD80 920E0034 */  lbu   $t6, 0x34($s0)
/* 02C984 8002BD84 02002025 */  move  $a0, $s0
/* 02C988 8002BD88 526E0010 */  beql  $s3, $t6, .L8002BDCC_ovl0
/* 02C98C 8002BD8C 8E100000 */   lw    $s0, ($s0)
/* 02C990 8002BD90 0C00AC8E */  jal   func_8002B238
/* 02C994 8002BD94 02402825 */   move  $a1, $s2
/* 02C998 8002BD98 8E43001C */  lw    $v1, 0x1c($s2)
/* 02C99C 8002BD9C 8E0F0024 */  lw    $t7, 0x24($s0)
/* 02C9A0 8002BDA0 00022C00 */  sll   $a1, $v0, 0x10
/* 02C9A4 8002BDA4 00052C03 */  sra   $a1, $a1, 0x10
/* 02C9A8 8002BDA8 01E32023 */  subu  $a0, $t7, $v1
/* 02C9AC 8002BDAC 04800003 */  bltz  $a0, .L8002BDBC_ovl0
/* 02C9B0 8002BDB0 240203E8 */   li    $v0, 1000
/* 02C9B4 8002BDB4 10000001 */  b     .L8002BDBC_ovl0
/* 02C9B8 8002BDB8 00801025 */   move  $v0, $a0
.L8002BDBC_ovl0:
/* 02C9BC 8002BDBC 26040004 */  addiu $a0, $s0, 4
/* 02C9C0 8002BDC0 0C00B494 */  jal   n_alSynSetVol
/* 02C9C4 8002BDC4 00403025 */   move  $a2, $v0
/* 02C9C8 8002BDC8 8E100000 */  lw    $s0, ($s0)
.L8002BDCC_ovl0:
/* 02C9CC 8002BDCC 5600FFEA */  bnezl $s0, .L8002BD78_ovl0
/* 02C9D0 8002BDD0 92180031 */   lbu   $t8, 0x31($s0)
/* 02C9D4 8002BDD4 10000096 */  b     .L8002C030_ovl0
/* 02C9D8 8002BDD8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C9DC 8002BDDC 8E590068 */  lw    $t9, 0x68($s2)
/* 02C9E0 8002BDE0 0016C080 */  sll   $t8, $s6, 2
/* 02C9E4 8002BDE4 0316C023 */  subu  $t8, $t8, $s6
/* 02C9E8 8002BDE8 0018C0C0 */  sll   $t8, $t8, 3
/* 02C9EC 8002BDEC 03387021 */  addu  $t6, $t9, $t8
/* 02C9F0 8002BDF0 1000008E */  b     .L8002C02C_ovl0
/* 02C9F4 8002BDF4 A1D40008 */   sb    $s4, 8($t6)
.L8002BDF8_ovl0:
/* 02C9F8 8002BDF8 8E4F0068 */  lw    $t7, 0x68($s2)
/* 02C9FC 8002BDFC 0336C823 */  subu  $t9, $t9, $s6
/* 02CA00 8002BE00 0019C8C0 */  sll   $t9, $t9, 3
/* 02CA04 8002BE04 01F9C021 */  addu  $t8, $t7, $t9
/* 02CA08 8002BE08 A314000B */  sb    $s4, 0xb($t8)
/* 02CA0C 8002BE0C 8E50006C */  lw    $s0, 0x6c($s2)
/* 02CA10 8002BE10 52000087 */  beql  $s0, $zero, .L8002C030_ovl0
/* 02CA14 8002BE14 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02CA18 8002BE18 02C08825 */  move  $s1, $s6
/* 02CA1C 8002BE1C 24160002 */  li    $s6, 2
/* 02CA20 8002BE20 241E0003 */  li    $fp, 3
/* 02CA24 8002BE24 24170004 */  li    $s7, 4
/* 02CA28 8002BE28 24150002 */  li    $s5, 2
/* 02CA2C 8002BE2C 24130003 */  li    $s3, 3
/* 02CA30 8002BE30 920E0031 */  lbu   $t6, 0x31($s0)
.L8002BE34_ovl0:
/* 02CA34 8002BE34 562E0019 */  bnel  $s1, $t6, .L8002BE9C_ovl0
/* 02CA38 8002BE38 8E100000 */   lw    $s0, ($s0)
/* 02CA3C 8002BE3C 92020035 */  lbu   $v0, 0x35($s0)
/* 02CA40 8002BE40 2A810040 */  slti  $at, $s4, 0x40
/* 02CA44 8002BE44 52620015 */  beql  $s3, $v0, .L8002BE9C_ovl0
/* 02CA48 8002BE48 8E100000 */   lw    $s0, ($s0)
/* 02CA4C 8002BE4C 14200005 */  bnez  $at, .L8002BE64_ovl0
/* 02CA50 8002BE50 00000000 */   nop   
/* 02CA54 8002BE54 54400011 */  bnezl $v0, .L8002BE9C_ovl0
/* 02CA58 8002BE58 8E100000 */   lw    $s0, ($s0)
/* 02CA5C 8002BE5C 1000000E */  b     .L8002BE98_ovl0
/* 02CA60 8002BE60 A2150035 */   sb    $s5, 0x35($s0)
.L8002BE64_ovl0:
/* 02CA64 8002BE64 16C20003 */  bne   $s6, $v0, .L8002BE74_ovl0
/* 02CA68 8002BE68 00000000 */   nop   
/* 02CA6C 8002BE6C 1000000A */  b     .L8002BE98_ovl0
/* 02CA70 8002BE70 A2000035 */   sb    $zero, 0x35($s0)
.L8002BE74_ovl0:
/* 02CA74 8002BE74 56E20009 */  bnel  $s7, $v0, .L8002BE9C_ovl0
/* 02CA78 8002BE78 8E100000 */   lw    $s0, ($s0)
/* 02CA7C 8002BE7C 8E0F0020 */  lw    $t7, 0x20($s0)
/* 02CA80 8002BE80 A21E0035 */  sb    $fp, 0x35($s0)
/* 02CA84 8002BE84 02402025 */  move  $a0, $s2
/* 02CA88 8002BE88 8DF90000 */  lw    $t9, ($t7)
/* 02CA8C 8002BE8C 26050004 */  addiu $a1, $s0, 4
/* 02CA90 8002BE90 0C00ACBA */  jal   func_8002B2E8
/* 02CA94 8002BE94 8F260008 */   lw    $a2, 8($t9)
.L8002BE98_ovl0:
/* 02CA98 8002BE98 8E100000 */  lw    $s0, ($s0)
.L8002BE9C_ovl0:
/* 02CA9C 8002BE9C 5600FFE5 */  bnezl $s0, .L8002BE34_ovl0
/* 02CAA0 8002BEA0 920E0031 */   lbu   $t6, 0x31($s0)
/* 02CAA4 8002BEA4 10000062 */  b     .L8002C030_ovl0
/* 02CAA8 8002BEA8 8FBF0024 */   lw    $ra, 0x24($sp)
.L8002BEAC_ovl0:
/* 02CAAC 8002BEAC 8E580068 */  lw    $t8, 0x68($s2)
/* 02CAB0 8002BEB0 01D67023 */  subu  $t6, $t6, $s6
/* 02CAB4 8002BEB4 000E70C0 */  sll   $t6, $t6, 3
/* 02CAB8 8002BEB8 030E7821 */  addu  $t7, $t8, $t6
/* 02CABC 8002BEBC A1F4000A */  sb    $s4, 0xa($t7)
/* 02CAC0 8002BEC0 8E50006C */  lw    $s0, 0x6c($s2)
/* 02CAC4 8002BEC4 5200005A */  beql  $s0, $zero, .L8002C030_ovl0
/* 02CAC8 8002BEC8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02CACC 8002BECC 02C08825 */  move  $s1, $s6
/* 02CAD0 8002BED0 92190031 */  lbu   $t9, 0x31($s0)
.L8002BED4_ovl0:
/* 02CAD4 8002BED4 26040004 */  addiu $a0, $s0, 4
/* 02CAD8 8002BED8 56390004 */  bnel  $s1, $t9, .L8002BEEC_ovl0
/* 02CADC 8002BEDC 8E100000 */   lw    $s0, ($s0)
/* 02CAE0 8002BEE0 0C00B3F9 */  jal   func_8002CFE4
/* 02CAE4 8002BEE4 328500FF */   andi  $a1, $s4, 0xff
/* 02CAE8 8002BEE8 8E100000 */  lw    $s0, ($s0)
.L8002BEEC_ovl0:
/* 02CAEC 8002BEEC 5600FFF9 */  bnezl $s0, .L8002BED4_ovl0
/* 02CAF0 8002BEF0 92190031 */   lbu   $t9, 0x31($s0)
/* 02CAF4 8002BEF4 1000004E */  b     .L8002C030_ovl0
/* 02CAF8 8002BEF8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02CAFC 8002BEFC 2A810079 */  slti  $at, $s4, 0x79
/* 02CB00 8002BF00 14200009 */  bnez  $at, .L8002BF28_ovl0
/* 02CB04 8002BF04 02801025 */   move  $v0, $s4
/* 02CB08 8002BF08 8E4E0068 */  lw    $t6, 0x68($s2)
/* 02CB0C 8002BF0C 00167880 */  sll   $t7, $s6, 2
/* 02CB10 8002BF10 01F67823 */  subu  $t7, $t7, $s6
/* 02CB14 8002BF14 000F78C0 */  sll   $t7, $t7, 3
/* 02CB18 8002BF18 241804B0 */  li    $t8, 1200
/* 02CB1C 8002BF1C 01CFC821 */  addu  $t9, $t6, $t7
/* 02CB20 8002BF20 10000042 */  b     .L8002C02C_ovl0
/* 02CB24 8002BF24 A7380004 */   sh    $t8, 4($t9)
.L8002BF28_ovl0:
/* 02CB28 8002BF28 8E4F0068 */  lw    $t7, 0x68($s2)
/* 02CB2C 8002BF2C 0016C080 */  sll   $t8, $s6, 2
/* 02CB30 8002BF30 0316C023 */  subu  $t8, $t8, $s6
/* 02CB34 8002BF34 00027080 */  sll   $t6, $v0, 2
/* 02CB38 8002BF38 01C27021 */  addu  $t6, $t6, $v0
/* 02CB3C 8002BF3C 0018C0C0 */  sll   $t8, $t8, 3
/* 02CB40 8002BF40 000E7040 */  sll   $t6, $t6, 1
/* 02CB44 8002BF44 01F8C821 */  addu  $t9, $t7, $t8
/* 02CB48 8002BF48 10000038 */  b     .L8002C02C_ovl0
/* 02CB4C 8002BF4C A72E0004 */   sh    $t6, 4($t9)
/* 02CB50 8002BF50 10000036 */  b     .L8002C02C_ovl0
/* 02CB54 8002BF54 A2540078 */   sb    $s4, 0x78($s2)
/* 02CB58 8002BF58 8E420020 */  lw    $v0, 0x20($s2)
/* 02CB5C 8002BF5C 0011C080 */  sll   $t8, $s1, 2
/* 02CB60 8002BF60 02402025 */  move  $a0, $s2
/* 02CB64 8002BF64 844F0000 */  lh    $t7, ($v0)
/* 02CB68 8002BF68 02C03025 */  move  $a2, $s6
/* 02CB6C 8002BF6C 00587021 */  addu  $t6, $v0, $t8
/* 02CB70 8002BF70 022F082A */  slt   $at, $s1, $t7
/* 02CB74 8002BF74 5020002E */  beql  $at, $zero, .L8002C030_ovl0
/* 02CB78 8002BF78 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02CB7C 8002BF7C 0C00AD67 */  jal   func_8002B59C
/* 02CB80 8002BF80 8DC5000C */   lw    $a1, 0xc($t6)
/* 02CB84 8002BF84 1000002A */  b     .L8002C030_ovl0
/* 02CB88 8002BF88 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02CB8C 8002BF8C 8E590068 */  lw    $t9, 0x68($s2)
/* 02CB90 8002BF90 0016F080 */  sll   $fp, $s6, 2
/* 02CB94 8002BF94 03D6F023 */  subu  $fp, $fp, $s6
/* 02CB98 8002BF98 001EF0C0 */  sll   $fp, $fp, 3
/* 02CB9C 8002BF9C 033E7821 */  addu  $t7, $t9, $fp
/* 02CBA0 8002BFA0 85F80004 */  lh    $t8, 4($t7)
/* 02CBA4 8002BFA4 001471C0 */  sll   $t6, $s4, 7
/* 02CBA8 8002BFA8 01D1C821 */  addu  $t9, $t6, $s1
/* 02CBAC 8002BFAC 272FE000 */  addiu $t7, $t9, -0x2000
/* 02CBB0 8002BFB0 030F0019 */  multu $t8, $t7
/* 02CBB4 8002BFB4 00002012 */  mflo  $a0
/* 02CBB8 8002BFB8 04810002 */  bgez  $a0, .L8002BFC4_ovl0
/* 02CBBC 8002BFBC 00800821 */  addu  $at, $a0, $zero
/* 02CBC0 8002BFC0 24811FFF */  addiu $at, $a0, 0x1fff
.L8002BFC4_ovl0:
/* 02CBC4 8002BFC4 00012343 */  sra   $a0, $at, 0xd
/* 02CBC8 8002BFC8 0C00DC20 */  jal   alCents2Ratio
/* 02CBCC 8002BFCC 00000000 */   nop   
/* 02CBD0 8002BFD0 8E4E0068 */  lw    $t6, 0x68($s2)
/* 02CBD4 8002BFD4 46000506 */  mov.s $f20, $f0
/* 02CBD8 8002BFD8 01DEC821 */  addu  $t9, $t6, $fp
/* 02CBDC 8002BFDC E720000C */  swc1  $f0, 0xc($t9)
/* 02CBE0 8002BFE0 8E50006C */  lw    $s0, 0x6c($s2)
/* 02CBE4 8002BFE4 52000012 */  beql  $s0, $zero, .L8002C030_ovl0
/* 02CBE8 8002BFE8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02CBEC 8002BFEC 02C08825 */  move  $s1, $s6
/* 02CBF0 8002BFF0 92180031 */  lbu   $t8, 0x31($s0)
.L8002BFF4_ovl0:
/* 02CBF4 8002BFF4 5638000B */  bnel  $s1, $t8, .L8002C024_ovl0
/* 02CBF8 8002BFF8 8E100000 */   lw    $s0, ($s0)
/* 02CBFC 8002BFFC C6060028 */  lwc1  $f6, 0x28($s0)
/* 02CC00 8002C000 C60A002C */  lwc1  $f10, 0x2c($s0)
/* 02CC04 8002C004 26040004 */  addiu $a0, $s0, 4
/* 02CC08 8002C008 46143202 */  mul.s $f8, $f6, $f20
/* 02CC0C 8002C00C 00000000 */  nop   
/* 02CC10 8002C010 460A4102 */  mul.s $f4, $f8, $f10
/* 02CC14 8002C014 44052000 */  mfc1  $a1, $f4
/* 02CC18 8002C018 0C00B368 */  jal   func_8002CDA0
/* 02CC1C 8002C01C 00000000 */   nop   
/* 02CC20 8002C020 8E100000 */  lw    $s0, ($s0)
.L8002C024_ovl0:
/* 02CC24 8002C024 5600FFF3 */  bnezl $s0, .L8002BFF4_ovl0
/* 02CC28 8002C028 92180031 */   lbu   $t8, 0x31($s0)
.L8002C02C_ovl0:
/* 02CC2C 8002C02C 8FBF0024 */  lw    $ra, 0x24($sp)
.L8002C030_ovl0:
/* 02CC30 8002C030 27BD00D0 */  addiu $sp, $sp, 0xd0
/* 02CC34 8002C034 03E00008 */  jr    $ra
/* 02CC38 8002C038 00000000 */   nop   

.type func_8002B810, @function
.size func_8002B810, . - func_8002B810

glabel func_8002C03C
/* 02CC3C 8002C03C 03E00008 */  jr    $ra
/* 02CC40 8002C040 00000000 */   nop   

.type func_8002C03C, @function
.size func_8002C03C, . - func_8002C03C

glabel func_8002C044
/* 02CC44 8002C044 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 02CC48 8002C048 AFB50034 */  sw    $s5, 0x34($sp)
/* 02CC4C 8002C04C AFB20028 */  sw    $s2, 0x28($sp)
/* 02CC50 8002C050 248E0040 */  addiu $t6, $a0, 0x40
/* 02CC54 8002C054 00809025 */  move  $s2, $a0
/* 02CC58 8002C058 AFBF0044 */  sw    $ra, 0x44($sp)
/* 02CC5C 8002C05C AFBE0040 */  sw    $fp, 0x40($sp)
/* 02CC60 8002C060 AFB7003C */  sw    $s7, 0x3c($sp)
/* 02CC64 8002C064 AFB60038 */  sw    $s6, 0x38($sp)
/* 02CC68 8002C068 AFB40030 */  sw    $s4, 0x30($sp)
/* 02CC6C 8002C06C AFB3002C */  sw    $s3, 0x2c($sp)
/* 02CC70 8002C070 AFB10024 */  sw    $s1, 0x24($sp)
/* 02CC74 8002C074 AFB00020 */  sw    $s0, 0x20($sp)
/* 02CC78 8002C078 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 02CC7C 8002C07C AFAE0050 */  sw    $t6, 0x50($sp)
/* 02CC80 8002C080 24950050 */  addiu $s5, $a0, 0x50
.L8002C084_ovl0:
/* 02CC84 8002C084 964F0040 */  lhu   $t7, 0x40($s2)
/* 02CC88 8002C088 2DE10018 */  sltiu $at, $t7, 0x18
/* 02CC8C 8002C08C 1020016A */  beqz  $at, .L8002C638_ovl0
/* 02CC90 8002C090 000F7880 */   sll   $t7, $t7, 2
/* 02CC94 8002C094 3C018004 */ lui $at, %hi(D_800419C8)
/* 02CC98 8002C098 002F0821 */  addu  $at, $at, $t7
/* 02CC9C 8002C09C 8C2F19C8 */ lw $t7, %lo(D_800419C8)($at)
/* 02CCA0 8002C0A0 01E00008 */  jr    $t7
/* 02CCA4 8002C0A4 00000000 */   nop   
/* 02CCA8 8002C0A8 8E440018 */  lw    $a0, 0x18($s2)
/* 02CCAC 8002C0AC 50800163 */  beql  $a0, $zero, .L8002C63C_ovl0
/* 02CCB0 8002C0B0 02A02025 */   move  $a0, $s5
/* 02CCB4 8002C0B4 0C00B292 */  jal   func_8002CA48
/* 02CCB8 8002C0B8 27A50088 */   addiu $a1, $sp, 0x88
/* 02CCBC 8002C0BC 87A20088 */  lh    $v0, 0x88($sp)
/* 02CCC0 8002C0C0 24010001 */  li    $at, 1
/* 02CCC4 8002C0C4 27A40088 */  addiu $a0, $sp, 0x88
/* 02CCC8 8002C0C8 10410008 */  beq   $v0, $at, .L8002C0EC_ovl0
/* 02CCCC 8002C0CC 24010003 */   li    $at, 3
/* 02CCD0 8002C0D0 1041000F */  beq   $v0, $at, .L8002C110_ovl0
/* 02CCD4 8002C0D4 02402825 */   move  $a1, $s2
/* 02CCD8 8002C0D8 24010004 */  li    $at, 4
/* 02CCDC 8002C0DC 10410012 */  beq   $v0, $at, .L8002C128_ovl0
/* 02CCE0 8002C0E0 24180002 */   li    $t8, 2
/* 02CCE4 8002C0E4 10000155 */  b     .L8002C63C_ovl0
/* 02CCE8 8002C0E8 02A02025 */   move  $a0, $s5
.L8002C0EC_ovl0:
/* 02CCEC 8002C0EC AFB200D0 */  sw    $s2, 0xd0($sp)
/* 02CCF0 8002C0F0 0C00AE04 */  jal   func_8002B810
/* 02CCF4 8002C0F4 AFB5004C */   sw    $s5, 0x4c($sp)
/* 02CCF8 8002C0F8 8FB200D0 */  lw    $s2, 0xd0($sp)
/* 02CCFC 8002C0FC 8FB5004C */  lw    $s5, 0x4c($sp)
/* 02CD00 8002C100 0C00ABD8 */  jal   func_8002AF60
/* 02CD04 8002C104 02402025 */   move  $a0, $s2
/* 02CD08 8002C108 1000014C */  b     .L8002C63C_ovl0
/* 02CD0C 8002C10C 02A02025 */   move  $a0, $s5
.L8002C110_ovl0:
/* 02CD10 8002C110 0C00AD49 */  jal   func_8002B524
/* 02CD14 8002C114 27A40088 */   addiu $a0, $sp, 0x88
/* 02CD18 8002C118 0C00ABD8 */  jal   func_8002AF60
/* 02CD1C 8002C11C 02402025 */   move  $a0, $s2
/* 02CD20 8002C120 10000146 */  b     .L8002C63C_ovl0
/* 02CD24 8002C124 02A02025 */   move  $a0, $s5
.L8002C128_ovl0:
/* 02CD28 8002C128 AE580034 */  sw    $t8, 0x34($s2)
/* 02CD2C 8002C12C 24190010 */  li    $t9, 16
/* 02CD30 8002C130 3C067FFF */  lui   $a2, (0x7FFFFFFF >> 16) # lui $a2, 0x7fff
/* 02CD34 8002C134 A7B90088 */  sh    $t9, 0x88($sp)
/* 02CD38 8002C138 34C6FFFF */  ori   $a2, (0x7FFFFFFF & 0xFFFF) # ori $a2, $a2, 0xffff
/* 02CD3C 8002C13C 02A02025 */  move  $a0, $s5
/* 02CD40 8002C140 0C009818 */  jal   func_80026060
/* 02CD44 8002C144 27A50088 */   addiu $a1, $sp, 0x88
/* 02CD48 8002C148 1000013C */  b     .L8002C63C_ovl0
/* 02CD4C 8002C14C 02A02025 */   move  $a0, $s5
/* 02CD50 8002C150 240E0009 */  li    $t6, 9
/* 02CD54 8002C154 A7AE00BC */  sh    $t6, 0xbc($sp)
/* 02CD58 8002C158 8E460064 */  lw    $a2, 0x64($s2)
/* 02CD5C 8002C15C 02A02025 */  move  $a0, $s5
/* 02CD60 8002C160 0C009818 */  jal   func_80026060
/* 02CD64 8002C164 27A500BC */   addiu $a1, $sp, 0xbc
/* 02CD68 8002C168 10000134 */  b     .L8002C63C_ovl0
/* 02CD6C 8002C16C 02A02025 */   move  $a0, $s5
/* 02CD70 8002C170 8E500044 */  lw    $s0, 0x44($s2)
/* 02CD74 8002C174 0C00AA9C */  jal   n_alSynStopVoice
/* 02CD78 8002C178 02002025 */   move  $a0, $s0
/* 02CD7C 8002C17C 0C00B46C */  jal   func_8002D1B0
/* 02CD80 8002C180 02002025 */   move  $a0, $s0
/* 02CD84 8002C184 8E110010 */  lw    $s1, 0x10($s0)
/* 02CD88 8002C188 02402025 */  move  $a0, $s2
/* 02CD8C 8002C18C 922F0037 */  lbu   $t7, 0x37($s1)
/* 02CD90 8002C190 51E00004 */  beql  $t7, $zero, .L8002C1A4_ovl0
/* 02CD94 8002C194 02402025 */   move  $a0, $s2
/* 02CD98 8002C198 0C00B1A3 */  jal   func_8002C68C
/* 02CD9C 8002C19C 02202825 */   move  $a1, $s1
/* 02CDA0 8002C1A0 02402025 */  move  $a0, $s2
.L8002C1A4_ovl0:
/* 02CDA4 8002C1A4 0C00AD2D */  jal   func_8002B4B4
/* 02CDA8 8002C1A8 02002825 */   move  $a1, $s0
/* 02CDAC 8002C1AC 10000123 */  b     .L8002C63C_ovl0
/* 02CDB0 8002C1B0 02A02025 */   move  $a0, $s5
/* 02CDB4 8002C1B4 8E500044 */  lw    $s0, 0x44($s2)
/* 02CDB8 8002C1B8 24190001 */  li    $t9, 1
/* 02CDBC 8002C1BC 8E110010 */  lw    $s1, 0x10($s0)
/* 02CDC0 8002C1C0 92380034 */  lbu   $t8, 0x34($s1)
/* 02CDC4 8002C1C4 57000003 */  bnezl $t8, .L8002C1D4_ovl0
/* 02CDC8 8002C1C8 924E004C */   lbu   $t6, 0x4c($s2)
/* 02CDCC 8002C1CC A2390034 */  sb    $t9, 0x34($s1)
/* 02CDD0 8002C1D0 924E004C */  lbu   $t6, 0x4c($s2)
.L8002C1D4_ovl0:
/* 02CDD4 8002C1D4 8E530048 */  lw    $s3, 0x48($s2)
/* 02CDD8 8002C1D8 02202025 */  move  $a0, $s1
/* 02CDDC 8002C1DC A22E0030 */  sb    $t6, 0x30($s1)
/* 02CDE0 8002C1E0 8E4F001C */  lw    $t7, 0x1c($s2)
/* 02CDE4 8002C1E4 02402825 */  move  $a1, $s2
/* 02CDE8 8002C1E8 01F3C021 */  addu  $t8, $t7, $s3
/* 02CDEC 8002C1EC 0C00AC8E */  jal   func_8002B238
/* 02CDF0 8002C1F0 AE380024 */   sw    $t8, 0x24($s1)
/* 02CDF4 8002C1F4 00022C00 */  sll   $a1, $v0, 0x10
/* 02CDF8 8002C1F8 00052C03 */  sra   $a1, $a1, 0x10
/* 02CDFC 8002C1FC 02002025 */  move  $a0, $s0
/* 02CE00 8002C200 0C00B494 */  jal   n_alSynSetVol
/* 02CE04 8002C204 02603025 */   move  $a2, $s3
/* 02CE08 8002C208 1000010C */  b     .L8002C63C_ovl0
/* 02CE0C 8002C20C 02A02025 */   move  $a0, $s5
/* 02CE10 8002C210 8E590080 */  lw    $t9, 0x80($s2)
/* 02CE14 8002C214 8E540048 */  lw    $s4, 0x48($s2)
/* 02CE18 8002C218 8E510044 */  lw    $s1, 0x44($s2)
/* 02CE1C 8002C21C 27A500A8 */  addiu $a1, $sp, 0xa8
/* 02CE20 8002C220 0320F809 */  jalr  $t9
/* 02CE24 8002C224 02802025 */  move  $a0, $s4
/* 02CE28 8002C228 444EF800 */  cfc1  $t6, $31
/* 02CE2C 8002C22C 240F0001 */  li    $t7, 1
/* 02CE30 8002C230 44CFF800 */  ctc1  $t7, $31
/* 02CE34 8002C234 C7A400A8 */  lwc1  $f4, 0xa8($sp)
/* 02CE38 8002C238 00409825 */  move  $s3, $v0
/* 02CE3C 8002C23C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 02CE40 8002C240 460021A4 */  cvt.w.s $f6, $f4
/* 02CE44 8002C244 02202025 */  move  $a0, $s1
/* 02CE48 8002C248 02402825 */  move  $a1, $s2
/* 02CE4C 8002C24C 444FF800 */  cfc1  $t7, $31
/* 02CE50 8002C250 00000000 */  nop   
/* 02CE54 8002C254 31EF0078 */  andi  $t7, $t7, 0x78
/* 02CE58 8002C258 51E00013 */  beql  $t7, $zero, .L8002C2A8_ovl0
/* 02CE5C 8002C25C 440F3000 */   mfc1  $t7, $f6
/* 02CE60 8002C260 44813000 */  mtc1  $at, $f6
/* 02CE64 8002C264 240F0001 */  li    $t7, 1
/* 02CE68 8002C268 46062181 */  sub.s $f6, $f4, $f6
/* 02CE6C 8002C26C 44CFF800 */  ctc1  $t7, $31
/* 02CE70 8002C270 00000000 */  nop   
/* 02CE74 8002C274 460031A4 */  cvt.w.s $f6, $f6
/* 02CE78 8002C278 444FF800 */  cfc1  $t7, $31
/* 02CE7C 8002C27C 00000000 */  nop   
/* 02CE80 8002C280 31EF0078 */  andi  $t7, $t7, 0x78
/* 02CE84 8002C284 15E00005 */  bnez  $t7, .L8002C29C_ovl0
/* 02CE88 8002C288 00000000 */   nop   
/* 02CE8C 8002C28C 440F3000 */  mfc1  $t7, $f6
/* 02CE90 8002C290 3C018000 */  lui   $at, 0x8000
/* 02CE94 8002C294 10000007 */  b     .L8002C2B4_ovl0
/* 02CE98 8002C298 01E17825 */   or    $t7, $t7, $at
.L8002C29C_ovl0:
/* 02CE9C 8002C29C 10000005 */  b     .L8002C2B4_ovl0
/* 02CEA0 8002C2A0 240FFFFF */   li    $t7, -1
/* 02CEA4 8002C2A4 440F3000 */  mfc1  $t7, $f6
.L8002C2A8_ovl0:
/* 02CEA8 8002C2A8 00000000 */  nop   
/* 02CEAC 8002C2AC 05E0FFFB */  bltz  $t7, .L8002C29C_ovl0
/* 02CEB0 8002C2B0 00000000 */   nop   
.L8002C2B4_ovl0:
/* 02CEB4 8002C2B4 44CEF800 */  ctc1  $t6, $31
/* 02CEB8 8002C2B8 0C00AC8E */  jal   func_8002B238
/* 02CEBC 8002C2BC A22F0036 */   sb    $t7, 0x36($s1)
/* 02CEC0 8002C2C0 8E43001C */  lw    $v1, 0x1c($s2)
/* 02CEC4 8002C2C4 8E380024 */  lw    $t8, 0x24($s1)
/* 02CEC8 8002C2C8 00022C00 */  sll   $a1, $v0, 0x10
/* 02CECC 8002C2CC 00052C03 */  sra   $a1, $a1, 0x10
/* 02CED0 8002C2D0 03032023 */  subu  $a0, $t8, $v1
/* 02CED4 8002C2D4 04800003 */  bltz  $a0, .L8002C2E4_ovl0
/* 02CED8 8002C2D8 240203E8 */   li    $v0, 1000
/* 02CEDC 8002C2DC 10000001 */  b     .L8002C2E4_ovl0
/* 02CEE0 8002C2E0 00801025 */   move  $v0, $a0
.L8002C2E4_ovl0:
/* 02CEE4 8002C2E4 26240004 */  addiu $a0, $s1, 4
/* 02CEE8 8002C2E8 0C00B494 */  jal   n_alSynSetVol
/* 02CEEC 8002C2EC 00403025 */   move  $a2, $v0
/* 02CEF0 8002C2F0 24190016 */  li    $t9, 22
/* 02CEF4 8002C2F4 A7B900BC */  sh    $t9, 0xbc($sp)
/* 02CEF8 8002C2F8 AFB100C0 */  sw    $s1, 0xc0($sp)
/* 02CEFC 8002C2FC AFB400C4 */  sw    $s4, 0xc4($sp)
/* 02CF00 8002C300 02A02025 */  move  $a0, $s5
/* 02CF04 8002C304 27A500BC */  addiu $a1, $sp, 0xbc
/* 02CF08 8002C308 0C009818 */  jal   func_80026060
/* 02CF0C 8002C30C 02603025 */   move  $a2, $s3
/* 02CF10 8002C310 100000CA */  b     .L8002C63C_ovl0
/* 02CF14 8002C314 02A02025 */   move  $a0, $s5
/* 02CF18 8002C318 8E590080 */  lw    $t9, 0x80($s2)
/* 02CF1C 8002C31C 8E540048 */  lw    $s4, 0x48($s2)
/* 02CF20 8002C320 8E510044 */  lw    $s1, 0x44($s2)
/* 02CF24 8002C324 9250004C */  lbu   $s0, 0x4c($s2)
/* 02CF28 8002C328 27A500A8 */  addiu $a1, $sp, 0xa8
/* 02CF2C 8002C32C 0320F809 */  jalr  $t9
/* 02CF30 8002C330 02802025 */  move  $a0, $s4
/* 02CF34 8002C334 C7A800A8 */  lwc1  $f8, 0xa8($sp)
/* 02CF38 8002C338 00107880 */  sll   $t7, $s0, 2
/* 02CF3C 8002C33C 01F07823 */  subu  $t7, $t7, $s0
/* 02CF40 8002C340 E628002C */  swc1  $f8, 0x2c($s1)
/* 02CF44 8002C344 8E4E0068 */  lw    $t6, 0x68($s2)
/* 02CF48 8002C348 C634002C */  lwc1  $f20, 0x2c($s1)
/* 02CF4C 8002C34C 000F78C0 */  sll   $t7, $t7, 3
/* 02CF50 8002C350 01CF1821 */  addu  $v1, $t6, $t7
/* 02CF54 8002C354 90780010 */  lbu   $t8, 0x10($v1)
/* 02CF58 8002C358 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02CF5C 8002C35C 44810000 */  mtc1  $at, $f0
/* 02CF60 8002C360 44989000 */  mtc1  $t8, $f18
/* 02CF64 8002C364 00409825 */  move  $s3, $v0
/* 02CF68 8002C368 4600A101 */  sub.s $f4, $f20, $f0
/* 02CF6C 8002C36C 26240004 */  addiu $a0, $s1, 4
/* 02CF70 8002C370 07010005 */  bgez  $t8, .L8002C388_ovl0
/* 02CF74 8002C374 46809220 */   cvt.s.w $f8, $f18
/* 02CF78 8002C378 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 02CF7C 8002C37C 44815000 */  mtc1  $at, $f10
/* 02CF80 8002C380 00000000 */  nop   
/* 02CF84 8002C384 460A4200 */  add.s $f8, $f8, $f10
.L8002C388_ovl0:
/* 02CF88 8002C388 46082182 */  mul.s $f6, $f4, $f8
/* 02CF8C 8002C38C 3C0142FE */  li    $at, 0x42FE0000 # 127.000000
/* 02CF90 8002C390 44815000 */  mtc1  $at, $f10
/* 02CF94 8002C394 00000000 */  nop   
/* 02CF98 8002C398 460A3103 */  div.s $f4, $f6, $f10
/* 02CF9C 8002C39C C6260028 */  lwc1  $f6, 0x28($s1)
/* 02CFA0 8002C3A0 46002200 */  add.s $f8, $f4, $f0
/* 02CFA4 8002C3A4 C464000C */  lwc1  $f4, 0xc($v1)
/* 02CFA8 8002C3A8 46083282 */  mul.s $f10, $f6, $f8
/* 02CFAC 8002C3AC 00000000 */  nop   
/* 02CFB0 8002C3B0 460A2182 */  mul.s $f6, $f4, $f10
/* 02CFB4 8002C3B4 44053000 */  mfc1  $a1, $f6
/* 02CFB8 8002C3B8 0C00B368 */  jal   func_8002CDA0
/* 02CFBC 8002C3BC 00000000 */   nop   
/* 02CFC0 8002C3C0 24190017 */  li    $t9, 23
/* 02CFC4 8002C3C4 A7B900BC */  sh    $t9, 0xbc($sp)
/* 02CFC8 8002C3C8 AFB100C0 */  sw    $s1, 0xc0($sp)
/* 02CFCC 8002C3CC AFB400C4 */  sw    $s4, 0xc4($sp)
/* 02CFD0 8002C3D0 A3B000C8 */  sb    $s0, 0xc8($sp)
/* 02CFD4 8002C3D4 02A02025 */  move  $a0, $s5
/* 02CFD8 8002C3D8 27A500BC */  addiu $a1, $sp, 0xbc
/* 02CFDC 8002C3DC 0C009818 */  jal   func_80026060
/* 02CFE0 8002C3E0 02603025 */   move  $a2, $s3
/* 02CFE4 8002C3E4 10000095 */  b     .L8002C63C_ovl0
/* 02CFE8 8002C3E8 02A02025 */   move  $a0, $s5
/* 02CFEC 8002C3EC 8FA40050 */  lw    $a0, 0x50($sp)
/* 02CFF0 8002C3F0 AFB200D0 */  sw    $s2, 0xd0($sp)
/* 02CFF4 8002C3F4 0C00AE04 */  jal   func_8002B810
/* 02CFF8 8002C3F8 AFB5004C */   sw    $s5, 0x4c($sp)
/* 02CFFC 8002C3FC 8FB200D0 */  lw    $s2, 0xd0($sp)
/* 02D000 8002C400 1000008D */  b     .L8002C638_ovl0
/* 02D004 8002C404 8FB5004C */   lw    $s5, 0x4c($sp)
/* 02D008 8002C408 02402825 */  move  $a1, $s2
/* 02D00C 8002C40C 0C00AD49 */  jal   func_8002B524
/* 02D010 8002C410 8FA40050 */   lw    $a0, 0x50($sp)
/* 02D014 8002C414 10000089 */  b     .L8002C63C_ovl0
/* 02D018 8002C418 02A02025 */   move  $a0, $s5
/* 02D01C 8002C41C 8E4E0034 */  lw    $t6, 0x34($s2)
/* 02D020 8002C420 24010001 */  li    $at, 1
/* 02D024 8002C424 240F0001 */  li    $t7, 1
/* 02D028 8002C428 11C10083 */  beq   $t6, $at, .L8002C638_ovl0
/* 02D02C 8002C42C 02402025 */   move  $a0, $s2
/* 02D030 8002C430 0C00ABD8 */  jal   func_8002AF60
/* 02D034 8002C434 AE4F0034 */   sw    $t7, 0x34($s2)
/* 02D038 8002C438 10000080 */  b     .L8002C63C_ovl0
/* 02D03C 8002C43C 02A02025 */   move  $a0, $s5
/* 02D040 8002C440 8E580034 */  lw    $t8, 0x34($s2)
/* 02D044 8002C444 24010002 */  li    $at, 2
/* 02D048 8002C448 5701007C */  bnel  $t8, $at, .L8002C63C_ovl0
/* 02D04C 8002C44C 02A02025 */   move  $a0, $s5
/* 02D050 8002C450 8E51006C */  lw    $s1, 0x6c($s2)
/* 02D054 8002C454 12200011 */  beqz  $s1, .L8002C49C_ovl0
/* 02D058 8002C458 26300004 */   addiu $s0, $s1, 4
.L8002C45C_ovl0:
/* 02D05C 8002C45C 0C00AA9C */  jal   n_alSynStopVoice
/* 02D060 8002C460 02002025 */   move  $a0, $s0
/* 02D064 8002C464 0C00B46C */  jal   func_8002D1B0
/* 02D068 8002C468 02002025 */   move  $a0, $s0
/* 02D06C 8002C46C 92390037 */  lbu   $t9, 0x37($s1)
/* 02D070 8002C470 02402025 */  move  $a0, $s2
/* 02D074 8002C474 53200004 */  beql  $t9, $zero, .L8002C488_ovl0
/* 02D078 8002C478 02402025 */   move  $a0, $s2
/* 02D07C 8002C47C 0C00B1A3 */  jal   func_8002C68C
/* 02D080 8002C480 02202825 */   move  $a1, $s1
/* 02D084 8002C484 02402025 */  move  $a0, $s2
.L8002C488_ovl0:
/* 02D088 8002C488 0C00AD2D */  jal   func_8002B4B4
/* 02D08C 8002C48C 02002825 */   move  $a1, $s0
/* 02D090 8002C490 8E51006C */  lw    $s1, 0x6c($s2)
/* 02D094 8002C494 5620FFF1 */  bnezl $s1, .L8002C45C_ovl0
/* 02D098 8002C498 26300004 */   addiu $s0, $s1, 4
.L8002C49C_ovl0:
/* 02D09C 8002C49C AE40001C */  sw    $zero, 0x1c($s2)
/* 02D0A0 8002C4A0 10000065 */  b     .L8002C638_ovl0
/* 02D0A4 8002C4A4 AE400034 */   sw    $zero, 0x34($s2)
/* 02D0A8 8002C4A8 8E4E0034 */  lw    $t6, 0x34($s2)
/* 02D0AC 8002C4AC 24010001 */  li    $at, 1
/* 02D0B0 8002C4B0 02A02025 */  move  $a0, $s5
/* 02D0B4 8002C4B4 55C10061 */  bnel  $t6, $at, .L8002C63C_ovl0
/* 02D0B8 8002C4B8 02A02025 */   move  $a0, $s5
/* 02D0BC 8002C4BC 0C0097E9 */  jal   func_80025FA4
/* 02D0C0 8002C4C0 00002825 */   move  $a1, $zero
/* 02D0C4 8002C4C4 02A02025 */  move  $a0, $s5
/* 02D0C8 8002C4C8 0C0097E9 */  jal   func_80025FA4
/* 02D0CC 8002C4CC 24050002 */   li    $a1, 2
/* 02D0D0 8002C4D0 8E51006C */  lw    $s1, 0x6c($s2)
/* 02D0D4 8002C4D4 1220000D */  beqz  $s1, .L8002C50C_ovl0
/* 02D0D8 8002C4D8 26300004 */   addiu $s0, $s1, 4
.L8002C4DC_ovl0:
/* 02D0DC 8002C4DC 02002825 */  move  $a1, $s0
/* 02D0E0 8002C4E0 02402025 */  move  $a0, $s2
/* 02D0E4 8002C4E4 0C00AD03 */  jal   func_8002B40C
/* 02D0E8 8002C4E8 3406C350 */   li    $a2, 50000
/* 02D0EC 8002C4EC 10400004 */  beqz  $v0, .L8002C500_ovl0
/* 02D0F0 8002C4F0 02402025 */   move  $a0, $s2
/* 02D0F4 8002C4F4 02002825 */  move  $a1, $s0
/* 02D0F8 8002C4F8 0C00ACBA */  jal   func_8002B2E8
/* 02D0FC 8002C4FC 3406C350 */   li    $a2, 50000
.L8002C500_ovl0:
/* 02D100 8002C500 8E310000 */  lw    $s1, ($s1)
/* 02D104 8002C504 5620FFF5 */  bnezl $s1, .L8002C4DC_ovl0
/* 02D108 8002C508 26300004 */   addiu $s0, $s1, 4
.L8002C50C_ovl0:
/* 02D10C 8002C50C 240F0002 */  li    $t7, 2
/* 02D110 8002C510 AE4F0034 */  sw    $t7, 0x34($s2)
/* 02D114 8002C514 24180010 */  li    $t8, 16
/* 02D118 8002C518 3C067FFF */  lui   $a2, (0x7FFFFFFF >> 16) # lui $a2, 0x7fff
/* 02D11C 8002C51C A7B800BC */  sh    $t8, 0xbc($sp)
/* 02D120 8002C520 34C6FFFF */  ori   $a2, (0x7FFFFFFF & 0xFFFF) # ori $a2, $a2, 0xffff
/* 02D124 8002C524 02A02025 */  move  $a0, $s5
/* 02D128 8002C528 0C009818 */  jal   func_80026060
/* 02D12C 8002C52C 27A500BC */   addiu $a1, $sp, 0xbc
/* 02D130 8002C530 10000042 */  b     .L8002C63C_ovl0
/* 02D134 8002C534 02A02025 */   move  $a0, $s5
/* 02D138 8002C538 8E51006C */  lw    $s1, 0x6c($s2)
/* 02D13C 8002C53C 86590044 */  lh    $t9, 0x44($s2)
/* 02D140 8002C540 1220003D */  beqz  $s1, .L8002C638_ovl0
/* 02D144 8002C544 A659003A */   sh    $t9, 0x3a($s2)
/* 02D148 8002C548 02202025 */  move  $a0, $s1
.L8002C54C_ovl0:
/* 02D14C 8002C54C 0C00AC8E */  jal   func_8002B238
/* 02D150 8002C550 02402825 */   move  $a1, $s2
/* 02D154 8002C554 8E43001C */  lw    $v1, 0x1c($s2)
/* 02D158 8002C558 8E2E0024 */  lw    $t6, 0x24($s1)
/* 02D15C 8002C55C 00022C00 */  sll   $a1, $v0, 0x10
/* 02D160 8002C560 00052C03 */  sra   $a1, $a1, 0x10
/* 02D164 8002C564 01C32023 */  subu  $a0, $t6, $v1
/* 02D168 8002C568 04800003 */  bltz  $a0, .L8002C578_ovl0
/* 02D16C 8002C56C 240203E8 */   li    $v0, 1000
/* 02D170 8002C570 10000001 */  b     .L8002C578_ovl0
/* 02D174 8002C574 00801025 */   move  $v0, $a0
.L8002C578_ovl0:
/* 02D178 8002C578 26240004 */  addiu $a0, $s1, 4
/* 02D17C 8002C57C 0C00B494 */  jal   n_alSynSetVol
/* 02D180 8002C580 00403025 */   move  $a2, $v0
/* 02D184 8002C584 8E310000 */  lw    $s1, ($s1)
/* 02D188 8002C588 5620FFF0 */  bnezl $s1, .L8002C54C_ovl0
/* 02D18C 8002C58C 02202025 */   move  $a0, $s1
/* 02D190 8002C590 1000002A */  b     .L8002C63C_ovl0
/* 02D194 8002C594 02A02025 */   move  $a0, $s5
/* 02D198 8002C598 8E4F0044 */  lw    $t7, 0x44($s2)
/* 02D19C 8002C59C 8E580048 */  lw    $t8, 0x48($s2)
/* 02D1A0 8002C5A0 8E59004C */  lw    $t9, 0x4c($s2)
/* 02D1A4 8002C5A4 AE4F0088 */  sw    $t7, 0x88($s2)
/* 02D1A8 8002C5A8 AE58008C */  sw    $t8, 0x8c($s2)
/* 02D1AC 8002C5AC 10000022 */  b     .L8002C638_ovl0
/* 02D1B0 8002C5B0 AE590090 */   sw    $t9, 0x90($s2)
/* 02D1B4 8002C5B4 92500044 */  lbu   $s0, 0x44($s2)
/* 02D1B8 8002C5B8 8E4F0068 */  lw    $t7, 0x68($s2)
/* 02D1BC 8002C5BC 924E0045 */  lbu   $t6, 0x45($s2)
/* 02D1C0 8002C5C0 0010C080 */  sll   $t8, $s0, 2
/* 02D1C4 8002C5C4 0310C023 */  subu  $t8, $t8, $s0
/* 02D1C8 8002C5C8 0018C0C0 */  sll   $t8, $t8, 3
/* 02D1CC 8002C5CC 01F8C821 */  addu  $t9, $t7, $t8
/* 02D1D0 8002C5D0 10000019 */  b     .L8002C638_ovl0
/* 02D1D4 8002C5D4 A32E0008 */   sb    $t6, 8($t9)
/* 02D1D8 8002C5D8 8E450044 */  lw    $a1, 0x44($s2)
/* 02D1DC 8002C5DC 241901E8 */  li    $t9, 488
/* 02D1E0 8002C5E0 3C018004 */  lui   $at, %hi(D_80041A28) # $at, 0x8004
/* 02D1E4 8002C5E4 10A00008 */  beqz  $a1, .L8002C608_ovl0
/* 02D1E8 8002C5E8 AE450018 */   sw    $a1, 0x18($s2)
/* 02D1EC 8002C5EC C4281A28 */  lwc1  $f8, %lo(D_80041A28)($at)
/* 02D1F0 8002C5F0 C4A40014 */  lwc1  $f4, 0x14($a1)
/* 02D1F4 8002C5F4 46044282 */  mul.s $f10, $f8, $f4
/* 02D1F8 8002C5F8 4600518D */  trunc.w.s $f6, $f10
/* 02D1FC 8002C5FC 440E3000 */  mfc1  $t6, $f6
/* 02D200 8002C600 10000002 */  b     .L8002C60C_ovl0
/* 02D204 8002C604 AE4E002C */   sw    $t6, 0x2c($s2)
.L8002C608_ovl0:
/* 02D208 8002C608 AE59002C */  sw    $t9, 0x2c($s2)
.L8002C60C_ovl0:
/* 02D20C 8002C60C 8E450020 */  lw    $a1, 0x20($s2)
/* 02D210 8002C610 50A0000A */  beql  $a1, $zero, .L8002C63C_ovl0
/* 02D214 8002C614 02A02025 */   move  $a0, $s5
/* 02D218 8002C618 0C00AC56 */  jal   func_8002B158
/* 02D21C 8002C61C 02402025 */   move  $a0, $s2
/* 02D220 8002C620 10000006 */  b     .L8002C63C_ovl0
/* 02D224 8002C624 02A02025 */   move  $a0, $s5
/* 02D228 8002C628 8E450044 */  lw    $a1, 0x44($s2)
/* 02D22C 8002C62C 02402025 */  move  $a0, $s2
/* 02D230 8002C630 0C00AC56 */  jal   func_8002B158
/* 02D234 8002C634 AE450020 */   sw    $a1, 0x20($s2)
.L8002C638_ovl0:
/* 02D238 8002C638 02A02025 */  move  $a0, $s5
.L8002C63C_ovl0:
/* 02D23C 8002C63C 0C00986C */  jal   func_800261B0
/* 02D240 8002C640 8FA50050 */   lw    $a1, 0x50($sp)
/* 02D244 8002C644 1040FE8F */  beqz  $v0, .L8002C084_ovl0
/* 02D248 8002C648 AE420030 */   sw    $v0, 0x30($s2)
/* 02D24C 8002C64C 8E4F001C */  lw    $t7, 0x1c($s2)
/* 02D250 8002C650 01E2C021 */  addu  $t8, $t7, $v0
/* 02D254 8002C654 AE58001C */  sw    $t8, 0x1c($s2)
/* 02D258 8002C658 8FBF0044 */  lw    $ra, 0x44($sp)
/* 02D25C 8002C65C 8FBE0040 */  lw    $fp, 0x40($sp)
/* 02D260 8002C660 8FB7003C */  lw    $s7, 0x3c($sp)
/* 02D264 8002C664 8FB60038 */  lw    $s6, 0x38($sp)
/* 02D268 8002C668 8FB50034 */  lw    $s5, 0x34($sp)
/* 02D26C 8002C66C 8FB40030 */  lw    $s4, 0x30($sp)
/* 02D270 8002C670 8FB3002C */  lw    $s3, 0x2c($sp)
/* 02D274 8002C674 8FB20028 */  lw    $s2, 0x28($sp)
/* 02D278 8002C678 8FB10024 */  lw    $s1, 0x24($sp)
/* 02D27C 8002C67C 8FB00020 */  lw    $s0, 0x20($sp)
/* 02D280 8002C680 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 02D284 8002C684 03E00008 */  jr    $ra
/* 02D288 8002C688 27BD00D0 */   addiu $sp, $sp, 0xd0

.type func_8002C044, @function
.size func_8002C044, . - func_8002C044

glabel func_8002C68C
/* 02D28C 8002C68C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 02D290 8002C690 AFBF0034 */  sw    $ra, 0x34($sp)
/* 02D294 8002C694 AFB70030 */  sw    $s7, 0x30($sp)
/* 02D298 8002C698 AFB6002C */  sw    $s6, 0x2c($sp)
/* 02D29C 8002C69C AFB50028 */  sw    $s5, 0x28($sp)
/* 02D2A0 8002C6A0 AFB40024 */  sw    $s4, 0x24($sp)
/* 02D2A4 8002C6A4 AFB30020 */  sw    $s3, 0x20($sp)
/* 02D2A8 8002C6A8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 02D2AC 8002C6AC AFB10018 */  sw    $s1, 0x18($sp)
/* 02D2B0 8002C6B0 AFB00014 */  sw    $s0, 0x14($sp)
/* 02D2B4 8002C6B4 8C900058 */  lw    $s0, 0x58($a0)
/* 02D2B8 8002C6B8 00A09025 */  move  $s2, $a1
/* 02D2BC 8002C6BC 0080A825 */  move  $s5, $a0
/* 02D2C0 8002C6C0 12000028 */  beqz  $s0, .L8002C764_ovl0
/* 02D2C4 8002C6C4 24170017 */   li    $s7, 23
/* 02D2C8 8002C6C8 24160016 */  li    $s6, 22
.L8002C6CC_ovl0:
/* 02D2CC 8002C6CC 8613000C */  lh    $s3, 0xc($s0)
/* 02D2D0 8002C6D0 8E110000 */  lw    $s1, ($s0)
/* 02D2D4 8002C6D4 52760004 */  beql  $s3, $s6, .L8002C6E8_ovl0
/* 02D2D8 8002C6D8 8E0E0010 */   lw    $t6, 0x10($s0)
/* 02D2DC 8002C6DC 1677001F */  bne   $s3, $s7, .L8002C75C_ovl0
/* 02D2E0 8002C6E0 00000000 */   nop   
/* 02D2E4 8002C6E4 8E0E0010 */  lw    $t6, 0x10($s0)
.L8002C6E8_ovl0:
/* 02D2E8 8002C6E8 164E001C */  bne   $s2, $t6, .L8002C75C_ovl0
/* 02D2EC 8002C6EC 00000000 */   nop   
/* 02D2F0 8002C6F0 8EB90084 */  lw    $t9, 0x84($s5)
/* 02D2F4 8002C6F4 8E040014 */  lw    $a0, 0x14($s0)
/* 02D2F8 8002C6F8 26B40050 */  addiu $s4, $s5, 0x50
/* 02D2FC 8002C6FC 0320F809 */  jalr  $t9
/* 02D300 8002C700 00000000 */  nop   
/* 02D304 8002C704 0C0097DD */  jal   alUnlink
/* 02D308 8002C708 02002025 */   move  $a0, $s0
/* 02D30C 8002C70C 12200005 */  beqz  $s1, .L8002C724_ovl0
/* 02D310 8002C710 02002025 */   move  $a0, $s0
/* 02D314 8002C714 8E2F0008 */  lw    $t7, 8($s1)
/* 02D318 8002C718 8E180008 */  lw    $t8, 8($s0)
/* 02D31C 8002C71C 01F84021 */  addu  $t0, $t7, $t8
/* 02D320 8002C720 AE280008 */  sw    $t0, 8($s1)
.L8002C724_ovl0:
/* 02D324 8002C724 0C0097D4 */  jal   alLink
/* 02D328 8002C728 02802825 */   move  $a1, $s4
/* 02D32C 8002C72C 56760006 */  bnel  $s3, $s6, .L8002C748_ovl0
/* 02D330 8002C730 924B0037 */   lbu   $t3, 0x37($s2)
/* 02D334 8002C734 92490037 */  lbu   $t1, 0x37($s2)
/* 02D338 8002C738 312A00FE */  andi  $t2, $t1, 0xfe
/* 02D33C 8002C73C 10000004 */  b     .L8002C750_ovl0
/* 02D340 8002C740 A24A0037 */   sb    $t2, 0x37($s2)
/* 02D344 8002C744 924B0037 */  lbu   $t3, 0x37($s2)
.L8002C748_ovl0:
/* 02D348 8002C748 316C00FD */  andi  $t4, $t3, 0xfd
/* 02D34C 8002C74C A24C0037 */  sb    $t4, 0x37($s2)
.L8002C750_ovl0:
/* 02D350 8002C750 924D0037 */  lbu   $t5, 0x37($s2)
/* 02D354 8002C754 51A00004 */  beql  $t5, $zero, .L8002C768_ovl0
/* 02D358 8002C758 8FBF0034 */   lw    $ra, 0x34($sp)
.L8002C75C_ovl0:
/* 02D35C 8002C75C 1620FFDB */  bnez  $s1, .L8002C6CC_ovl0
/* 02D360 8002C760 02208025 */   move  $s0, $s1
.L8002C764_ovl0:
/* 02D364 8002C764 8FBF0034 */  lw    $ra, 0x34($sp)
.L8002C768_ovl0:
/* 02D368 8002C768 8FB00014 */  lw    $s0, 0x14($sp)
/* 02D36C 8002C76C 8FB10018 */  lw    $s1, 0x18($sp)
/* 02D370 8002C770 8FB2001C */  lw    $s2, 0x1c($sp)
/* 02D374 8002C774 8FB30020 */  lw    $s3, 0x20($sp)
/* 02D378 8002C778 8FB40024 */  lw    $s4, 0x24($sp)
/* 02D37C 8002C77C 8FB50028 */  lw    $s5, 0x28($sp)
/* 02D380 8002C780 8FB6002C */  lw    $s6, 0x2c($sp)
/* 02D384 8002C784 8FB70030 */  lw    $s7, 0x30($sp)
/* 02D388 8002C788 03E00008 */  jr    $ra
/* 02D38C 8002C78C 27BD0038 */   addiu $sp, $sp, 0x38

.type func_8002C68C, @function
.size func_8002C68C, . - func_8002C68C

glabel func_8002C790
/* 02D390 8002C790 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02D394 8002C794 AFBF0024 */  sw    $ra, 0x24($sp)
/* 02D398 8002C798 AFB20020 */  sw    $s2, 0x20($sp)
/* 02D39C 8002C79C AFB1001C */  sw    $s1, 0x1c($sp)
/* 02D3A0 8002C7A0 AFB00018 */  sw    $s0, 0x18($sp)
/* 02D3A4 8002C7A4 908E003C */  lbu   $t6, 0x3c($a0)
/* 02D3A8 8002C7A8 00808825 */  move  $s1, $a0
/* 02D3AC 8002C7AC 00008025 */  move  $s0, $zero
/* 02D3B0 8002C7B0 19C00010 */  blez  $t6, .L8002C7F4_ovl0
/* 02D3B4 8002C7B4 00009025 */   move  $s2, $zero
/* 02D3B8 8002C7B8 8E2F0068 */  lw    $t7, 0x68($s1)
.L8002C7BC_ovl0:
/* 02D3BC 8002C7BC 02202025 */  move  $a0, $s1
/* 02D3C0 8002C7C0 02002825 */  move  $a1, $s0
/* 02D3C4 8002C7C4 01F2C021 */  addu  $t8, $t7, $s2
/* 02D3C8 8002C7C8 AF000000 */  sw    $zero, ($t8)
/* 02D3CC 8002C7CC 8E390068 */  lw    $t9, 0x68($s1)
/* 02D3D0 8002C7D0 03324021 */  addu  $t0, $t9, $s2
/* 02D3D4 8002C7D4 0C00AC2A */  jal   func_8002B0A8
/* 02D3D8 8002C7D8 A1000010 */   sb    $zero, 0x10($t0)
/* 02D3DC 8002C7DC 9229003C */  lbu   $t1, 0x3c($s1)
/* 02D3E0 8002C7E0 26100001 */  addiu $s0, $s0, 1
/* 02D3E4 8002C7E4 26520018 */  addiu $s2, $s2, 0x18
/* 02D3E8 8002C7E8 0209082A */  slt   $at, $s0, $t1
/* 02D3EC 8002C7EC 5420FFF3 */  bnezl $at, .L8002C7BC_ovl0
/* 02D3F0 8002C7F0 8E2F0068 */   lw    $t7, 0x68($s1)
.L8002C7F4_ovl0:
/* 02D3F4 8002C7F4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 02D3F8 8002C7F8 8FB00018 */  lw    $s0, 0x18($sp)
/* 02D3FC 8002C7FC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 02D400 8002C800 8FB20020 */  lw    $s2, 0x20($sp)
/* 02D404 8002C804 03E00008 */  jr    $ra
/* 02D408 8002C808 27BD0028 */   addiu $sp, $sp, 0x28

.type func_8002C790, @function
.size func_8002C790, . - func_8002C790

glabel func_8002C80C
/* 02D40C 8002C80C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 02D410 8002C810 AFBF0024 */  sw    $ra, 0x24($sp)
/* 02D414 8002C814 AFB10020 */  sw    $s1, 0x20($sp)
/* 02D418 8002C818 AFB0001C */  sw    $s0, 0x1c($sp)
/* 02D41C 8002C81C 8CA6000C */  lw    $a2, 0xc($a1)
/* 02D420 8002C820 AC800020 */  sw    $zero, 0x20($a0)
/* 02D424 8002C824 AC800024 */  sw    $zero, 0x24($a0)
/* 02D428 8002C828 AC800028 */  sw    $zero, 0x28($a0)
/* 02D42C 8002C82C AC800018 */  sw    $zero, 0x18($a0)
/* 02D430 8002C830 3C0E8004 */  lui   $t6, %hi(n_syn) # $t6, 0x8004
/* 02D434 8002C834 8DCEFB14 */  lw    $t6, %lo(n_syn)($t6)
/* 02D438 8002C838 240F00FF */  li    $t7, 255
/* 02D43C 8002C83C 241801E8 */  li    $t8, 488
/* 02D440 8002C840 24197FFF */  li    $t9, 32767
/* 02D444 8002C844 A48F0038 */  sh    $t7, 0x38($a0)
/* 02D448 8002C848 AC98002C */  sw    $t8, 0x2c($a0)
/* 02D44C 8002C84C AC800030 */  sw    $zero, 0x30($a0)
/* 02D450 8002C850 AC800034 */  sw    $zero, 0x34($a0)
/* 02D454 8002C854 A499003A */  sh    $t9, 0x3a($a0)
/* 02D458 8002C858 AC8E0014 */  sw    $t6, 0x14($a0)
/* 02D45C 8002C85C 90A80009 */  lbu   $t0, 9($a1)
/* 02D460 8002C860 24093E80 */  li    $t1, 16000
/* 02D464 8002C864 AC890064 */  sw    $t1, 0x64($a0)
/* 02D468 8002C868 AC80001C */  sw    $zero, 0x1c($a0)
/* 02D46C 8002C86C A088003D */  sb    $t0, 0x3d($a0)
/* 02D470 8002C870 8CAA0010 */  lw    $t2, 0x10($a1)
/* 02D474 8002C874 240D0009 */  li    $t5, 9
/* 02D478 8002C878 00A08825 */  move  $s1, $a1
/* 02D47C 8002C87C AC8A007C */  sw    $t2, 0x7c($a0)
/* 02D480 8002C880 8CAB0014 */  lw    $t3, 0x14($a1)
/* 02D484 8002C884 00808025 */  move  $s0, $a0
/* 02D488 8002C888 240F0018 */  li    $t7, 24
/* 02D48C 8002C88C AC8B0080 */  sw    $t3, 0x80($a0)
/* 02D490 8002C890 8CAC0018 */  lw    $t4, 0x18($a1)
/* 02D494 8002C894 AC800088 */  sw    $zero, 0x88($a0)
/* 02D498 8002C898 AC80008C */  sw    $zero, 0x8c($a0)
/* 02D49C 8002C89C AC800090 */  sw    $zero, 0x90($a0)
/* 02D4A0 8002C8A0 A48D0040 */  sh    $t5, 0x40($a0)
/* 02D4A4 8002C8A4 AC8C0084 */  sw    $t4, 0x84($a0)
/* 02D4A8 8002C8A8 90AE0008 */  lbu   $t6, 8($a1)
/* 02D4AC 8002C8AC 00002825 */  move  $a1, $zero
/* 02D4B0 8002C8B0 A08E003C */  sb    $t6, 0x3c($a0)
/* 02D4B4 8002C8B4 92270008 */  lbu   $a3, 8($s1)
/* 02D4B8 8002C8B8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 02D4BC 8002C8BC 00002025 */  move  $a0, $zero
/* 02D4C0 8002C8C0 0C0078F5 */  jal   func_8001E3D4
/* 02D4C4 8002C8C4 AFA6002C */   sw    $a2, 0x2c($sp)
/* 02D4C8 8002C8C8 AE020068 */  sw    $v0, 0x68($s0)
/* 02D4CC 8002C8CC 0C00B1E4 */  jal   func_8002C790
/* 02D4D0 8002C8D0 02002025 */   move  $a0, $s0
/* 02D4D4 8002C8D4 8E270000 */  lw    $a3, ($s1)
/* 02D4D8 8002C8D8 24180038 */  li    $t8, 56
/* 02D4DC 8002C8DC AFB80010 */  sw    $t8, 0x10($sp)
/* 02D4E0 8002C8E0 00002025 */  move  $a0, $zero
/* 02D4E4 8002C8E4 00002825 */  move  $a1, $zero
/* 02D4E8 8002C8E8 0C0078F5 */  jal   func_8001E3D4
/* 02D4EC 8002C8EC 8FA6002C */   lw    $a2, 0x2c($sp)
/* 02D4F0 8002C8F0 AE000074 */  sw    $zero, 0x74($s0)
/* 02D4F4 8002C8F4 8E390000 */  lw    $t9, ($s1)
/* 02D4F8 8002C8F8 00002025 */  move  $a0, $zero
/* 02D4FC 8002C8FC 00002825 */  move  $a1, $zero
/* 02D500 8002C900 1B20000B */  blez  $t9, .L8002C930_ovl0
/* 02D504 8002C904 240A001C */   li    $t2, 28
/* 02D508 8002C908 00401825 */  move  $v1, $v0
/* 02D50C 8002C90C 8E080074 */  lw    $t0, 0x74($s0)
.L8002C910_ovl0:
/* 02D510 8002C910 24840001 */  addiu $a0, $a0, 1
/* 02D514 8002C914 AC680000 */  sw    $t0, ($v1)
/* 02D518 8002C918 AE030074 */  sw    $v1, 0x74($s0)
/* 02D51C 8002C91C 8E290000 */  lw    $t1, ($s1)
/* 02D520 8002C920 24630038 */  addiu $v1, $v1, 0x38
/* 02D524 8002C924 0089082A */  slt   $at, $a0, $t1
/* 02D528 8002C928 5420FFF9 */  bnezl $at, .L8002C910_ovl0
/* 02D52C 8002C92C 8E080074 */   lw    $t0, 0x74($s0)
.L8002C930_ovl0:
/* 02D530 8002C930 AE00006C */  sw    $zero, 0x6c($s0)
/* 02D534 8002C934 AE000070 */  sw    $zero, 0x70($s0)
/* 02D538 8002C938 8E270004 */  lw    $a3, 4($s1)
/* 02D53C 8002C93C AFAA0010 */  sw    $t2, 0x10($sp)
/* 02D540 8002C940 8FA6002C */  lw    $a2, 0x2c($sp)
/* 02D544 8002C944 0C0078F5 */  jal   func_8001E3D4
/* 02D548 8002C948 00002025 */   move  $a0, $zero
/* 02D54C 8002C94C 26040050 */  addiu $a0, $s0, 0x50
/* 02D550 8002C950 00402825 */  move  $a1, $v0
/* 02D554 8002C954 0C009898 */  jal   func_80026260
/* 02D558 8002C958 8E260004 */   lw    $a2, 4($s1)
/* 02D55C 8002C95C 3C0B8003 */  lui   $t3, %hi(D_8002C044) # $t3, 0x8003
/* 02D560 8002C960 256BC044 */  addiu $t3, %lo(D_8002C044) # addiu $t3, $t3, -0x3fbc
/* 02D564 8002C964 AE000000 */  sw    $zero, ($s0)
/* 02D568 8002C968 AE0B0008 */  sw    $t3, 8($s0)
/* 02D56C 8002C96C AE100004 */  sw    $s0, 4($s0)
/* 02D570 8002C970 0C00AA44 */  jal   n_alSynAddSeqPlayer
/* 02D574 8002C974 02002025 */   move  $a0, $s0
/* 02D578 8002C978 8FBF0024 */  lw    $ra, 0x24($sp)
/* 02D57C 8002C97C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 02D580 8002C980 8FB10020 */  lw    $s1, 0x20($sp)
/* 02D584 8002C984 03E00008 */  jr    $ra
/* 02D588 8002C988 27BD0040 */   addiu $sp, $sp, 0x40

.type func_8002C80C, @function
.size func_8002C80C, . - func_8002C80C

/* 02D58C 8002C98C 00000000 */  nop   


glabel func_8002C990
/* 02D590 8002C990 AFA50004 */  sw    $a1, 4($sp)
/* 02D594 8002C994 00052C00 */  sll   $a1, $a1, 0x10
/* 02D598 8002C998 00052C03 */  sra   $a1, $a1, 0x10
/* 02D59C 8002C99C 03E00008 */  jr    $ra
/* 02D5A0 8002C9A0 A4850016 */   sh    $a1, 0x16($a0)

.type func_8002C990, @function
.size func_8002C990, . - func_8002C990

/* 02D5A4 8002C9A4 00000000 */  nop   
/* 02D5A8 8002C9A8 00000000 */  nop   
/* 02D5AC 8002C9AC 00000000 */  nop   


glabel func_8002C9B0
/* 02D5B0 8002C9B0 848E003A */  lh    $t6, 0x3a($a0)
/* 02D5B4 8002C9B4 908F0078 */  lbu   $t7, 0x78($a0)
/* 02D5B8 8002C9B8 01CF0019 */  multu $t6, $t7
/* 02D5BC 8002C9BC 00001012 */  mflo  $v0
/* 02D5C0 8002C9C0 000211C3 */  sra   $v0, $v0, 7
/* 02D5C4 8002C9C4 00021400 */  sll   $v0, $v0, 0x10
/* 02D5C8 8002C9C8 03E00008 */  jr    $ra
/* 02D5CC 8002C9CC 00021403 */   sra   $v0, $v0, 0x10

.type func_8002C9B0, @function
.size func_8002C9B0, . - func_8002C9B0

glabel func_8002C9D0
/* 02D5D0 8002C9D0 8CAE0000 */  lw    $t6, ($a1)
/* 02D5D4 8002C9D4 AC8E0008 */  sw    $t6, 8($a0)
/* 02D5D8 8002C9D8 84AF000C */  lh    $t7, 0xc($a1)
/* 02D5DC 8002C9DC A48F001A */  sh    $t7, 0x1a($a0)
/* 02D5E0 8002C9E0 8CB80004 */  lw    $t8, 4($a1)
/* 02D5E4 8002C9E4 03E00008 */  jr    $ra
/* 02D5E8 8002C9E8 AC98000C */   sw    $t8, 0xc($a0)

.type func_8002C9D0, @function
.size func_8002C9D0, . - func_8002C9D0

glabel func_8002C9EC
/* 02D5EC 8002C9EC 03E00008 */  jr    $ra
/* 02D5F0 8002C9F0 8C82000C */   lw    $v0, 0xc($a0)

.type func_8002C9EC, @function
.size func_8002C9EC, . - func_8002C9EC

glabel func_8002C9F4
/* 02D5F4 8002C9F4 03E00008 */  jr    $ra
/* 02D5F8 8002C9F8 00000000 */   nop   

.type func_8002C9F4, @function
.size func_8002C9F4, . - func_8002C9F4

glabel func_8002C9FC
/* 02D5FC 8002C9FC 8C830008 */  lw    $v1, 8($a0)
/* 02D600 8002CA00 90620000 */  lbu   $v0, ($v1)
/* 02D604 8002CA04 246E0001 */  addiu $t6, $v1, 1
/* 02D608 8002CA08 AC8E0008 */  sw    $t6, 8($a0)
/* 02D60C 8002CA0C 304F0080 */  andi  $t7, $v0, 0x80
/* 02D610 8002CA10 11E0000B */  beqz  $t7, .L8002CA40_ovl0
/* 02D614 8002CA14 00402825 */   move  $a1, $v0
/* 02D618 8002CA18 3045007F */  andi  $a1, $v0, 0x7f
.L8002CA1C_ovl0:
/* 02D61C 8002CA1C 8C830008 */  lw    $v1, 8($a0)
/* 02D620 8002CA20 0005C9C0 */  sll   $t9, $a1, 7
/* 02D624 8002CA24 90620000 */  lbu   $v0, ($v1)
/* 02D628 8002CA28 24780001 */  addiu $t8, $v1, 1
/* 02D62C 8002CA2C AC980008 */  sw    $t8, 8($a0)
/* 02D630 8002CA30 304E007F */  andi  $t6, $v0, 0x7f
/* 02D634 8002CA34 304F0080 */  andi  $t7, $v0, 0x80
/* 02D638 8002CA38 15E0FFF8 */  bnez  $t7, .L8002CA1C_ovl0
/* 02D63C 8002CA3C 032E2821 */   addu  $a1, $t9, $t6
.L8002CA40_ovl0:
/* 02D640 8002CA40 03E00008 */  jr    $ra
/* 02D644 8002CA44 00A01025 */   move  $v0, $a1

.type func_8002C9FC, @function
.size func_8002C9FC, . - func_8002C9FC

glabel func_8002CA48
/* 02D648 8002CA48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02D64C 8002CA4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 02D650 8002CA50 00803025 */  move  $a2, $a0
/* 02D654 8002CA54 0C00B27F */  jal   func_8002C9FC
/* 02D658 8002CA58 00A03825 */   move  $a3, $a1
/* 02D65C 8002CA5C 8CCE000C */  lw    $t6, 0xc($a2)
/* 02D660 8002CA60 8CC30008 */  lw    $v1, 8($a2)
/* 02D664 8002CA64 00404825 */  move  $t1, $v0
/* 02D668 8002CA68 01C27821 */  addu  $t7, $t6, $v0
/* 02D66C 8002CA6C ACCF000C */  sw    $t7, 0xc($a2)
/* 02D670 8002CA70 90640000 */  lbu   $a0, ($v1)
/* 02D674 8002CA74 240100FF */  li    $at, 255
/* 02D678 8002CA78 24780001 */  addiu $t8, $v1, 1
/* 02D67C 8002CA7C ACD80008 */  sw    $t8, 8($a2)
/* 02D680 8002CA80 00801025 */  move  $v0, $a0
/* 02D684 8002CA84 1481002F */  bne   $a0, $at, .L8002CB44_ovl0
/* 02D688 8002CA88 308500FF */   andi  $a1, $a0, 0xff
/* 02D68C 8002CA8C 93020000 */  lbu   $v0, ($t8)
/* 02D690 8002CA90 27190001 */  addiu $t9, $t8, 1
/* 02D694 8002CA94 24010051 */  li    $at, 81
/* 02D698 8002CA98 ACD90008 */  sw    $t9, 8($a2)
/* 02D69C 8002CA9C 1441001B */  bne   $v0, $at, .L8002CB0C_ovl0
/* 02D6A0 8002CAA0 00404025 */   move  $t0, $v0
/* 02D6A4 8002CAA4 240E0003 */  li    $t6, 3
/* 02D6A8 8002CAA8 A4EE0000 */  sh    $t6, ($a3)
/* 02D6AC 8002CAAC ACE90004 */  sw    $t1, 4($a3)
/* 02D6B0 8002CAB0 A0E50008 */  sb    $a1, 8($a3)
/* 02D6B4 8002CAB4 A0E80009 */  sb    $t0, 9($a3)
/* 02D6B8 8002CAB8 8CC30008 */  lw    $v1, 8($a2)
/* 02D6BC 8002CABC 90620000 */  lbu   $v0, ($v1)
/* 02D6C0 8002CAC0 246F0001 */  addiu $t7, $v1, 1
/* 02D6C4 8002CAC4 ACCF0008 */  sw    $t7, 8($a2)
/* 02D6C8 8002CAC8 A0E2000A */  sb    $v0, 0xa($a3)
/* 02D6CC 8002CACC 8CC30008 */  lw    $v1, 8($a2)
/* 02D6D0 8002CAD0 90640000 */  lbu   $a0, ($v1)
/* 02D6D4 8002CAD4 24780001 */  addiu $t8, $v1, 1
/* 02D6D8 8002CAD8 ACD80008 */  sw    $t8, 8($a2)
/* 02D6DC 8002CADC A0E4000B */  sb    $a0, 0xb($a3)
/* 02D6E0 8002CAE0 8CC30008 */  lw    $v1, 8($a2)
/* 02D6E4 8002CAE4 90650000 */  lbu   $a1, ($v1)
/* 02D6E8 8002CAE8 24790001 */  addiu $t9, $v1, 1
/* 02D6EC 8002CAEC ACD90008 */  sw    $t9, 8($a2)
/* 02D6F0 8002CAF0 A0E5000C */  sb    $a1, 0xc($a3)
/* 02D6F4 8002CAF4 8CC30008 */  lw    $v1, 8($a2)
/* 02D6F8 8002CAF8 90640000 */  lbu   $a0, ($v1)
/* 02D6FC 8002CAFC 246E0001 */  addiu $t6, $v1, 1
/* 02D700 8002CB00 ACCE0008 */  sw    $t6, 8($a2)
/* 02D704 8002CB04 1000000D */  b     .L8002CB3C_ovl0
/* 02D708 8002CB08 A0E4000D */   sb    $a0, 0xd($a3)
.L8002CB0C_ovl0:
/* 02D70C 8002CB0C 2401002F */  li    $at, 47
/* 02D710 8002CB10 1441000A */  bne   $v0, $at, .L8002CB3C_ovl0
/* 02D714 8002CB14 240F0004 */   li    $t7, 4
/* 02D718 8002CB18 A4EF0000 */  sh    $t7, ($a3)
/* 02D71C 8002CB1C ACE90004 */  sw    $t1, 4($a3)
/* 02D720 8002CB20 A0E50008 */  sb    $a1, 8($a3)
/* 02D724 8002CB24 A0E80009 */  sb    $t0, 9($a3)
/* 02D728 8002CB28 8CC30008 */  lw    $v1, 8($a2)
/* 02D72C 8002CB2C 90640000 */  lbu   $a0, ($v1)
/* 02D730 8002CB30 24780001 */  addiu $t8, $v1, 1
/* 02D734 8002CB34 ACD80008 */  sw    $t8, 8($a2)
/* 02D738 8002CB38 A0E4000A */  sb    $a0, 0xa($a3)
.L8002CB3C_ovl0:
/* 02D73C 8002CB3C 1000001F */  b     .L8002CBBC_ovl0
/* 02D740 8002CB40 A4C0001A */   sh    $zero, 0x1a($a2)
.L8002CB44_ovl0:
/* 02D744 8002CB44 24190001 */  li    $t9, 1
/* 02D748 8002CB48 304E0080 */  andi  $t6, $v0, 0x80
/* 02D74C 8002CB4C A4F90000 */  sh    $t9, ($a3)
/* 02D750 8002CB50 11C00009 */  beqz  $t6, .L8002CB78_ovl0
/* 02D754 8002CB54 ACE90004 */   sw    $t1, 4($a3)
/* 02D758 8002CB58 A0E50008 */  sb    $a1, 8($a3)
/* 02D75C 8002CB5C 8CC30008 */  lw    $v1, 8($a2)
/* 02D760 8002CB60 90640000 */  lbu   $a0, ($v1)
/* 02D764 8002CB64 246F0001 */  addiu $t7, $v1, 1
/* 02D768 8002CB68 ACCF0008 */  sw    $t7, 8($a2)
/* 02D76C 8002CB6C A0E40009 */  sb    $a0, 9($a3)
/* 02D770 8002CB70 10000004 */  b     .L8002CB84_ovl0
/* 02D774 8002CB74 A4C5001A */   sh    $a1, 0x1a($a2)
.L8002CB78_ovl0:
/* 02D778 8002CB78 84D8001A */  lh    $t8, 0x1a($a2)
/* 02D77C 8002CB7C A0E40009 */  sb    $a0, 9($a3)
/* 02D780 8002CB80 A0F80008 */  sb    $t8, 8($a3)
.L8002CB84_ovl0:
/* 02D784 8002CB84 90E20008 */  lbu   $v0, 8($a3)
/* 02D788 8002CB88 240100C0 */  li    $at, 192
/* 02D78C 8002CB8C 304200F0 */  andi  $v0, $v0, 0xf0
/* 02D790 8002CB90 10410009 */  beq   $v0, $at, .L8002CBB8_ovl0
/* 02D794 8002CB94 240100D0 */   li    $at, 208
/* 02D798 8002CB98 50410008 */  beql  $v0, $at, .L8002CBBC_ovl0
/* 02D79C 8002CB9C A0E0000A */   sb    $zero, 0xa($a3)
/* 02D7A0 8002CBA0 8CC30008 */  lw    $v1, 8($a2)
/* 02D7A4 8002CBA4 90640000 */  lbu   $a0, ($v1)
/* 02D7A8 8002CBA8 24790001 */  addiu $t9, $v1, 1
/* 02D7AC 8002CBAC ACD90008 */  sw    $t9, 8($a2)
/* 02D7B0 8002CBB0 10000002 */  b     .L8002CBBC_ovl0
/* 02D7B4 8002CBB4 A0E4000A */   sb    $a0, 0xa($a3)
.L8002CBB8_ovl0:
/* 02D7B8 8002CBB8 A0E0000A */  sb    $zero, 0xa($a3)
.L8002CBBC_ovl0:
/* 02D7BC 8002CBBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02D7C0 8002CBC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 02D7C4 8002CBC4 03E00008 */  jr    $ra
/* 02D7C8 8002CBC8 00000000 */   nop   

.type func_8002CA48, @function
.size func_8002CA48, . - func_8002CA48

glabel func_8002CBCC
/* 02D7CC 8002CBCC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 02D7D0 8002CBD0 AFB70030 */  sw    $s7, 0x30($sp)
/* 02D7D4 8002CBD4 AFB10018 */  sw    $s1, 0x18($sp)
/* 02D7D8 8002CBD8 AFB00014 */  sw    $s0, 0x14($sp)
/* 02D7DC 8002CBDC 00808025 */  move  $s0, $a0
/* 02D7E0 8002CBE0 00C08825 */  move  $s1, $a2
/* 02D7E4 8002CBE4 00A0B825 */  move  $s7, $a1
/* 02D7E8 8002CBE8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 02D7EC 8002CBEC AFB6002C */  sw    $s6, 0x2c($sp)
/* 02D7F0 8002CBF0 AFB50028 */  sw    $s5, 0x28($sp)
/* 02D7F4 8002CBF4 AFB40024 */  sw    $s4, 0x24($sp)
/* 02D7F8 8002CBF8 AFB30020 */  sw    $s3, 0x20($sp)
/* 02D7FC 8002CBFC 14C00007 */  bnez  $a2, .L8002CC1C_ovl0
/* 02D800 8002CC00 AFB2001C */   sw    $s2, 0x1c($sp)
/* 02D804 8002CC04 8C8E0004 */  lw    $t6, 4($a0)
/* 02D808 8002CC08 A4A0000C */  sh    $zero, 0xc($a1)
/* 02D80C 8002CC0C ACA00004 */  sw    $zero, 4($a1)
/* 02D810 8002CC10 ACA00008 */  sw    $zero, 8($a1)
/* 02D814 8002CC14 1000002A */  b     .L8002CCC0_ovl0
/* 02D818 8002CC18 ACAE0000 */   sw    $t6, ($a1)
.L8002CC1C_ovl0:
/* 02D81C 8002CC1C 8E0F0008 */  lw    $t7, 8($s0)
/* 02D820 8002CC20 00001025 */  move  $v0, $zero
/* 02D824 8002CC24 24130004 */  li    $s3, 4
/* 02D828 8002CC28 AFAF004C */  sw    $t7, 0x4c($sp)
/* 02D82C 8002CC2C 8618001A */  lh    $t8, 0x1a($s0)
/* 02D830 8002CC30 27B20050 */  addiu $s2, $sp, 0x50
/* 02D834 8002CC34 A7B8003E */  sh    $t8, 0x3e($sp)
/* 02D838 8002CC38 8E19000C */  lw    $t9, 0xc($s0)
/* 02D83C 8002CC3C AFB90044 */  sw    $t9, 0x44($sp)
/* 02D840 8002CC40 8E080004 */  lw    $t0, 4($s0)
/* 02D844 8002CC44 A600001A */  sh    $zero, 0x1a($s0)
/* 02D848 8002CC48 AE00000C */  sw    $zero, 0xc($s0)
/* 02D84C 8002CC4C AE080008 */  sw    $t0, 8($s0)
/* 02D850 8002CC50 8E140008 */  lw    $s4, 8($s0)
.L8002CC54_ovl0:
/* 02D854 8002CC54 8615001A */  lh    $s5, 0x1a($s0)
/* 02D858 8002CC58 0040B025 */  move  $s6, $v0
/* 02D85C 8002CC5C 02002025 */  move  $a0, $s0
/* 02D860 8002CC60 0C00B292 */  jal   func_8002CA48
/* 02D864 8002CC64 02402825 */   move  $a1, $s2
/* 02D868 8002CC68 87A90050 */  lh    $t1, 0x50($sp)
/* 02D86C 8002CC6C 55330006 */  bnel  $t1, $s3, .L8002CC88_ovl0
/* 02D870 8002CC70 8E02000C */   lw    $v0, 0xc($s0)
/* 02D874 8002CC74 8E140008 */  lw    $s4, 8($s0)
/* 02D878 8002CC78 8615001A */  lh    $s5, 0x1a($s0)
/* 02D87C 8002CC7C 10000005 */  b     .L8002CC94_ovl0
/* 02D880 8002CC80 8E16000C */   lw    $s6, 0xc($s0)
/* 02D884 8002CC84 8E02000C */  lw    $v0, 0xc($s0)
.L8002CC88_ovl0:
/* 02D888 8002CC88 0051082B */  sltu  $at, $v0, $s1
/* 02D88C 8002CC8C 5420FFF1 */  bnezl $at, .L8002CC54_ovl0
/* 02D890 8002CC90 8E140008 */   lw    $s4, 8($s0)
.L8002CC94_ovl0:
/* 02D894 8002CC94 AEF40000 */  sw    $s4, ($s7)
/* 02D898 8002CC98 A6F5000C */  sh    $s5, 0xc($s7)
/* 02D89C 8002CC9C AEF60004 */  sw    $s6, 4($s7)
/* 02D8A0 8002CCA0 8E0A000C */  lw    $t2, 0xc($s0)
/* 02D8A4 8002CCA4 AEEA0008 */  sw    $t2, 8($s7)
/* 02D8A8 8002CCA8 8FAB004C */  lw    $t3, 0x4c($sp)
/* 02D8AC 8002CCAC AE0B0008 */  sw    $t3, 8($s0)
/* 02D8B0 8002CCB0 87AC003E */  lh    $t4, 0x3e($sp)
/* 02D8B4 8002CCB4 A60C001A */  sh    $t4, 0x1a($s0)
/* 02D8B8 8002CCB8 8FAD0044 */  lw    $t5, 0x44($sp)
/* 02D8BC 8002CCBC AE0D000C */  sw    $t5, 0xc($s0)
.L8002CCC0_ovl0:
/* 02D8C0 8002CCC0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 02D8C4 8002CCC4 8FB00014 */  lw    $s0, 0x14($sp)
/* 02D8C8 8002CCC8 8FB10018 */  lw    $s1, 0x18($sp)
/* 02D8CC 8002CCCC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 02D8D0 8002CCD0 8FB30020 */  lw    $s3, 0x20($sp)
/* 02D8D4 8002CCD4 8FB40024 */  lw    $s4, 0x24($sp)
/* 02D8D8 8002CCD8 8FB50028 */  lw    $s5, 0x28($sp)
/* 02D8DC 8002CCDC 8FB6002C */  lw    $s6, 0x2c($sp)
/* 02D8E0 8002CCE0 8FB70030 */  lw    $s7, 0x30($sp)
/* 02D8E4 8002CCE4 03E00008 */  jr    $ra
/* 02D8E8 8002CCE8 27BD0060 */   addiu $sp, $sp, 0x60

.type func_8002CBCC, @function
.size func_8002CBCC, . - func_8002CBCC

glabel func_8002CCEC
/* 02D8EC 8002CCEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02D8F0 8002CCF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02D8F4 8002CCF4 8C8F0010 */  lw    $t7, 0x10($a0)
/* 02D8F8 8002CCF8 8C8E0000 */  lw    $t6, ($a0)
/* 02D8FC 8002CCFC 8C820008 */  lw    $v0, 8($a0)
/* 02D900 8002CD00 00803025 */  move  $a2, $a0
/* 02D904 8002CD04 01CFC021 */  addu  $t8, $t6, $t7
/* 02D908 8002CD08 0058082B */  sltu  $at, $v0, $t8
/* 02D90C 8002CD0C 14200003 */  bnez  $at, .L8002CD1C_ovl0
/* 02D910 8002CD10 00A04025 */   move  $t0, $a1
/* 02D914 8002CD14 10000007 */  b     .L8002CD34_ovl0
/* 02D918 8002CD18 00001025 */   move  $v0, $zero
.L8002CD1C_ovl0:
/* 02D91C 8002CD1C 00403825 */  move  $a3, $v0
/* 02D920 8002CD20 0C00B27F */  jal   func_8002C9FC
/* 02D924 8002CD24 00C02025 */   move  $a0, $a2
/* 02D928 8002CD28 AD020000 */  sw    $v0, ($t0)
/* 02D92C 8002CD2C ACC70008 */  sw    $a3, 8($a2)
/* 02D930 8002CD30 24020001 */  li    $v0, 1
.L8002CD34_ovl0:
/* 02D934 8002CD34 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02D938 8002CD38 27BD0018 */  addiu $sp, $sp, 0x18
/* 02D93C 8002CD3C 03E00008 */  jr    $ra
/* 02D940 8002CD40 00000000 */   nop   

.type func_8002CCEC, @function
.size func_8002CCEC, . - func_8002CCEC

glabel func_8002CD44
/* 02D944 8002CD44 03E00008 */  jr    $ra
/* 02D948 8002CD48 00000000 */   nop   

.type func_8002CD44, @function
.size func_8002CD44, . - func_8002CD44

glabel func_8002CD4C
/* 02D94C 8002CD4C 03E00008 */  jr    $ra
/* 02D950 8002CD50 00000000 */   nop   

.type func_8002CD4C, @function
.size func_8002CD4C, . - func_8002CD4C

glabel func_8002CD54
/* 02D954 8002CD54 00000000 */  nop   
/* 02D958 8002CD58 00000000 */  nop   
/* 02D95C 8002CD5C 00000000 */  nop   
/* 02D960 8002CD60 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02D964 8002CD64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02D968 8002CD68 240E000D */  li    $t6, 13
/* 02D96C 8002CD6C AFA5001C */  sw    $a1, 0x1c($sp)
/* 02D970 8002CD70 A7AE0018 */  sh    $t6, 0x18($sp)
/* 02D974 8002CD74 27A50018 */  addiu $a1, $sp, 0x18
/* 02D978 8002CD78 24840050 */  addiu $a0, $a0, 0x50
/* 02D97C 8002CD7C 0C009818 */  jal   func_80026060
/* 02D980 8002CD80 00003025 */   move  $a2, $zero
/* 02D984 8002CD84 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02D988 8002CD88 27BD0028 */  addiu $sp, $sp, 0x28
/* 02D98C 8002CD8C 03E00008 */  jr    $ra
/* 02D990 8002CD90 00000000 */   nop   

.type func_8002CD54, @function
.size func_8002CD54, . - func_8002CD54

/* 02D994 8002CD94 00000000 */  nop   
/* 02D998 8002CD98 00000000 */  nop   
/* 02D99C 8002CD9C 00000000 */  nop   

glabel func_8002CDA0
/* 02D9A0 8002CDA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02D9A4 8002CDA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02D9A8 8002CDA8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 02D9AC 8002CDAC 8C8E0008 */  lw    $t6, 8($a0)
/* 02D9B0 8002CDB0 51C00016 */  beql  $t6, $zero, .L8002CE0C_ovl0
/* 02D9B4 8002CDB4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02D9B8 8002CDB8 0C00A642 */  jal   __n_allocParam
/* 02D9BC 8002CDBC AFA40018 */   sw    $a0, 0x18($sp)
/* 02D9C0 8002CDC0 8FA70018 */  lw    $a3, 0x18($sp)
/* 02D9C4 8002CDC4 10400010 */  beqz  $v0, .L8002CE08_ovl0
/* 02D9C8 8002CDC8 00403025 */   move  $a2, $v0
/* 02D9CC 8002CDCC 3C0F8004 */  lui   $t7, %hi(n_syn) # $t7, 0x8004
/* 02D9D0 8002CDD0 8DEFFB14 */  lw    $t7, %lo(n_syn)($t7)
/* 02D9D4 8002CDD4 8CF90008 */  lw    $t9, 8($a3)
/* 02D9D8 8002CDD8 240A0007 */  li    $t2, 7
/* 02D9DC 8002CDDC 8DF80028 */  lw    $t8, 0x28($t7)
/* 02D9E0 8002CDE0 8F280088 */  lw    $t0, 0x88($t9)
/* 02D9E4 8002CDE4 A44A0008 */  sh    $t2, 8($v0)
/* 02D9E8 8002CDE8 24050003 */  li    $a1, 3
/* 02D9EC 8002CDEC 03084821 */  addu  $t1, $t8, $t0
/* 02D9F0 8002CDF0 AC490004 */  sw    $t1, 4($v0)
/* 02D9F4 8002CDF4 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 02D9F8 8002CDF8 AC400000 */  sw    $zero, ($v0)
/* 02D9FC 8002CDFC E444000C */  swc1  $f4, 0xc($v0)
/* 02DA00 8002CE00 0C009D48 */  jal   n_alEnvmixerParam
/* 02DA04 8002CE04 8CE40008 */   lw    $a0, 8($a3)
.L8002CE08_ovl0:
/* 02DA08 8002CE08 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002CE0C_ovl0:
/* 02DA0C 8002CE0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 02DA10 8002CE10 03E00008 */  jr    $ra
/* 02DA14 8002CE14 00000000 */   nop   

.type func_8002CDA0, @function
.size func_8002CDA0, . - func_8002CDA0

/* 02DA18 8002CE18 00000000 */  nop   
/* 02DA1C 8002CE1C 00000000 */  nop   

glabel func_8002CE20
/* 02DA20 8002CE20 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 02DA24 8002CE24 30C200FF */  andi  $v0, $a2, 0xff
/* 02DA28 8002CE28 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DA2C 8002CE2C AFA60038 */  sw    $a2, 0x38($sp)
/* 02DA30 8002CE30 00804025 */  move  $t0, $a0
/* 02DA34 8002CE34 1440000A */  bnez  $v0, .L8002CE60_ovl0
/* 02DA38 8002CE38 00A03825 */   move  $a3, $a1
/* 02DA3C 8002CE3C 240E000E */  li    $t6, 14
/* 02DA40 8002CE40 AFA50024 */  sw    $a1, 0x24($sp)
/* 02DA44 8002CE44 A7AE0020 */  sh    $t6, 0x20($sp)
/* 02DA48 8002CE48 27A50020 */  addiu $a1, $sp, 0x20
/* 02DA4C 8002CE4C 24840050 */  addiu $a0, $a0, 0x50
/* 02DA50 8002CE50 0C009818 */  jal   func_80026060
/* 02DA54 8002CE54 00003025 */   move  $a2, $zero
/* 02DA58 8002CE58 10000016 */  b     .L8002CEB4_ovl0
/* 02DA5C 8002CE5C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8002CE60_ovl0:
/* 02DA60 8002CE60 24010001 */  li    $at, 1
/* 02DA64 8002CE64 14410009 */  bne   $v0, $at, .L8002CE8C_ovl0
/* 02DA68 8002CE68 240F0018 */   li    $t7, 24
/* 02DA6C 8002CE6C A7AF0020 */  sh    $t7, 0x20($sp)
/* 02DA70 8002CE70 AFA70024 */  sw    $a3, 0x24($sp)
/* 02DA74 8002CE74 25040050 */  addiu $a0, $t0, 0x50
/* 02DA78 8002CE78 27A50020 */  addiu $a1, $sp, 0x20
/* 02DA7C 8002CE7C 0C009818 */  jal   func_80026060
/* 02DA80 8002CE80 00003025 */   move  $a2, $zero
/* 02DA84 8002CE84 1000000B */  b     .L8002CEB4_ovl0
/* 02DA88 8002CE88 8FBF0014 */   lw    $ra, 0x14($sp)
.L8002CE8C_ovl0:
/* 02DA8C 8002CE8C 24010002 */  li    $at, 2
/* 02DA90 8002CE90 14410007 */  bne   $v0, $at, .L8002CEB0_ovl0
/* 02DA94 8002CE94 24180019 */   li    $t8, 25
/* 02DA98 8002CE98 A7B80020 */  sh    $t8, 0x20($sp)
/* 02DA9C 8002CE9C AFA70024 */  sw    $a3, 0x24($sp)
/* 02DAA0 8002CEA0 25040050 */  addiu $a0, $t0, 0x50
/* 02DAA4 8002CEA4 27A50020 */  addiu $a1, $sp, 0x20
/* 02DAA8 8002CEA8 0C009818 */  jal   func_80026060
/* 02DAAC 8002CEAC 00003025 */   move  $a2, $zero
.L8002CEB0_ovl0:
/* 02DAB0 8002CEB0 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002CEB4_ovl0:
/* 02DAB4 8002CEB4 27BD0030 */  addiu $sp, $sp, 0x30
/* 02DAB8 8002CEB8 03E00008 */  jr    $ra
/* 02DABC 8002CEBC 00000000 */   nop   

.type func_8002CE20, @function
.size func_8002CE20, . - func_8002CE20

glabel func_8002CEC0
/* 02DAC0 8002CEC0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02DAC4 8002CEC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DAC8 8002CEC8 240E000E */  li    $t6, 14
/* 02DACC 8002CECC AFA5001C */  sw    $a1, 0x1c($sp)
/* 02DAD0 8002CED0 A7AE0018 */  sh    $t6, 0x18($sp)
/* 02DAD4 8002CED4 27A50018 */  addiu $a1, $sp, 0x18
/* 02DAD8 8002CED8 24840050 */  addiu $a0, $a0, 0x50
/* 02DADC 8002CEDC 0C009818 */  jal   func_80026060
/* 02DAE0 8002CEE0 00003025 */   move  $a2, $zero
/* 02DAE4 8002CEE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02DAE8 8002CEE8 27BD0028 */  addiu $sp, $sp, 0x28
/* 02DAEC 8002CEEC 03E00008 */  jr    $ra
/* 02DAF0 8002CEF0 00000000 */   nop   
/* 02DAF4 8002CEF4 00000000 */  nop   
/* 02DAF8 8002CEF8 00000000 */  nop   
/* 02DAFC 8002CEFC 00000000 */  nop   
.type func_8002CEC0, @function
.size func_8002CEC0, . - func_8002CEC0
















glabel func_8002CF00
/* 02DB00 8002CF00 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02DB04 8002CF04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DB08 8002CF08 AFA5002C */  sw    $a1, 0x2c($sp)
/* 02DB0C 8002CF0C 00A03825 */  move  $a3, $a1
/* 02DB10 8002CF10 240E000A */  li    $t6, 10
/* 02DB14 8002CF14 A7AE0018 */  sh    $t6, 0x18($sp)
/* 02DB18 8002CF18 A7A7001C */  sh    $a3, 0x1c($sp)
/* 02DB1C 8002CF1C 27A50018 */  addiu $a1, $sp, 0x18
/* 02DB20 8002CF20 24840050 */  addiu $a0, $a0, 0x50
/* 02DB24 8002CF24 0C009818 */  jal   func_80026060
/* 02DB28 8002CF28 00003025 */   move  $a2, $zero
/* 02DB2C 8002CF2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02DB30 8002CF30 27BD0028 */  addiu $sp, $sp, 0x28
/* 02DB34 8002CF34 03E00008 */  jr    $ra
/* 02DB38 8002CF38 00000000 */   nop   
/* 02DB3C 8002CF3C 00000000 */  nop   
.type func_8002CF00, @function
.size func_8002CF00, . - func_8002CF00







glabel func_8002CF40
/* 02DB40 8002CF40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02DB44 8002CF44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DB48 8002CF48 AFA5001C */  sw    $a1, 0x1c($sp)
/* 02DB4C 8002CF4C AFA60020 */  sw    $a2, 0x20($sp)
/* 02DB50 8002CF50 8C8E0008 */  lw    $t6, 8($a0)
/* 02DB54 8002CF54 51C00020 */  beql  $t6, $zero, .L8002CFD8_ovl0
/* 02DB58 8002CF58 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02DB5C 8002CF5C 0C00A642 */  jal   __n_allocParam
/* 02DB60 8002CF60 AFA40018 */   sw    $a0, 0x18($sp)
/* 02DB64 8002CF64 8FA70018 */  lw    $a3, 0x18($sp)
/* 02DB68 8002CF68 1040001A */  beqz  $v0, .L8002CFD4_ovl0
/* 02DB6C 8002CF6C 00403025 */   move  $a2, $v0
/* 02DB70 8002CF70 3C0F8004 */  lui   $t7, %hi(n_syn) # $t7, 0x8004
/* 02DB74 8002CF74 8DEFFB14 */  lw    $t7, %lo(n_syn)($t7)
/* 02DB78 8002CF78 8CF90008 */  lw    $t9, 8($a3)
/* 02DB7C 8002CF7C 240A0011 */  li    $t2, 17
/* 02DB80 8002CF80 8DF80028 */  lw    $t8, 0x28($t7)
/* 02DB84 8002CF84 8F280088 */  lw    $t0, 0x88($t9)
/* 02DB88 8002CF88 A44A0008 */  sh    $t2, 8($v0)
/* 02DB8C 8002CF8C 24050003 */  li    $a1, 3
/* 02DB90 8002CF90 03084821 */  addu  $t1, $t8, $t0
/* 02DB94 8002CF94 AC490004 */  sw    $t1, 4($v0)
/* 02DB98 8002CF98 93A3001F */  lbu   $v1, 0x1f($sp)
/* 02DB9C 8002CF9C 04610003 */  bgez  $v1, .L8002CFAC_ovl0
/* 02DBA0 8002CFA0 00035823 */   negu  $t3, $v1
/* 02DBA4 8002CFA4 10000002 */  b     .L8002CFB0_ovl0
/* 02DBA8 8002CFA8 AC4B000C */   sw    $t3, 0xc($v0)
.L8002CFAC_ovl0:
/* 02DBAC 8002CFAC AC43000C */  sw    $v1, 0xc($v0)
.L8002CFB0_ovl0:
/* 02DBB0 8002CFB0 93A30023 */  lbu   $v1, 0x23($sp)
/* 02DBB4 8002CFB4 04610003 */  bgez  $v1, .L8002CFC4_ovl0
/* 02DBB8 8002CFB8 00036023 */   negu  $t4, $v1
/* 02DBBC 8002CFBC 10000002 */  b     .L8002CFC8_ovl0
/* 02DBC0 8002CFC0 AC4C0010 */   sw    $t4, 0x10($v0)
.L8002CFC4_ovl0:
/* 02DBC4 8002CFC4 AC430010 */  sw    $v1, 0x10($v0)
.L8002CFC8_ovl0:
/* 02DBC8 8002CFC8 ACC00000 */  sw    $zero, ($a2)
/* 02DBCC 8002CFCC 0C009D48 */  jal   n_alEnvmixerParam
/* 02DBD0 8002CFD0 8CE40008 */   lw    $a0, 8($a3)
.L8002CFD4_ovl0:
/* 02DBD4 8002CFD4 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002CFD8_ovl0:
/* 02DBD8 8002CFD8 27BD0018 */  addiu $sp, $sp, 0x18
/* 02DBDC 8002CFDC 03E00008 */  jr    $ra
/* 02DBE0 8002CFE0 00000000 */   nop   

.type func_8002CF40, @function
.size func_8002CF40, . - func_8002CF40

glabel func_8002CFE4
/* 02DBE4 8002CFE4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02DBE8 8002CFE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DBEC 8002CFEC AFA5001C */  sw    $a1, 0x1c($sp)
/* 02DBF0 8002CFF0 8C8E0008 */  lw    $t6, 8($a0)
/* 02DBF4 8002CFF4 51C0001A */  beql  $t6, $zero, .L8002D060_ovl0
/* 02DBF8 8002CFF8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02DBFC 8002CFFC 0C00A642 */  jal   __n_allocParam
/* 02DC00 8002D000 AFA40018 */   sw    $a0, 0x18($sp)
/* 02DC04 8002D004 8FA70018 */  lw    $a3, 0x18($sp)
/* 02DC08 8002D008 10400014 */  beqz  $v0, .L8002D05C_ovl0
/* 02DC0C 8002D00C 00403025 */   move  $a2, $v0
/* 02DC10 8002D010 3C0F8004 */  lui   $t7, %hi(n_syn) # $t7, 0x8004
/* 02DC14 8002D014 8DEFFB14 */  lw    $t7, %lo(n_syn)($t7)
/* 02DC18 8002D018 8CF90008 */  lw    $t9, 8($a3)
/* 02DC1C 8002D01C 240A0010 */  li    $t2, 16
/* 02DC20 8002D020 8DF80028 */  lw    $t8, 0x28($t7)
/* 02DC24 8002D024 8F280088 */  lw    $t0, 0x88($t9)
/* 02DC28 8002D028 A44A0008 */  sh    $t2, 8($v0)
/* 02DC2C 8002D02C 24050003 */  li    $a1, 3
/* 02DC30 8002D030 03084821 */  addu  $t1, $t8, $t0
/* 02DC34 8002D034 AC490004 */  sw    $t1, 4($v0)
/* 02DC38 8002D038 93A3001F */  lbu   $v1, 0x1f($sp)
/* 02DC3C 8002D03C 04610003 */  bgez  $v1, .L8002D04C_ovl0
/* 02DC40 8002D040 00035823 */   negu  $t3, $v1
/* 02DC44 8002D044 10000002 */  b     .L8002D050_ovl0
/* 02DC48 8002D048 AC4B000C */   sw    $t3, 0xc($v0)
.L8002D04C_ovl0:
/* 02DC4C 8002D04C AC43000C */  sw    $v1, 0xc($v0)
.L8002D050_ovl0:
/* 02DC50 8002D050 ACC00000 */  sw    $zero, ($a2)
/* 02DC54 8002D054 0C009D48 */  jal   n_alEnvmixerParam
/* 02DC58 8002D058 8CE40008 */   lw    $a0, 8($a3)
.L8002D05C_ovl0:
/* 02DC5C 8002D05C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002D060_ovl0:
/* 02DC60 8002D060 27BD0018 */  addiu $sp, $sp, 0x18
/* 02DC64 8002D064 03E00008 */  jr    $ra
/* 02DC68 8002D068 00000000 */   nop   
/* 02DC6C 8002D06C 00000000 */  nop   

.type func_8002CFE4, @function
.size func_8002CFE4, . - func_8002CFE4


glabel func_8002D070
/* 02DC70 8002D070 3C028004 */  lui   $v0, %hi(n_syn) # $v0, 0x8004
/* 02DC74 8002D074 2442FB14 */  addiu $v0, %lo(n_syn) # addiu $v0, $v0, -0x4ec
/* 02DC78 8002D078 8C4E0000 */  lw    $t6, ($v0)
/* 02DC7C 8002D07C ADC00000 */  sw    $zero, ($t6)
/* 02DC80 8002D080 8C4F0000 */  lw    $t7, ($v0)
/* 02DC84 8002D084 ADE00004 */  sw    $zero, 4($t7)
/* 02DC88 8002D088 8C580000 */  lw    $t8, ($v0)
/* 02DC8C 8002D08C AF000008 */  sw    $zero, 8($t8)
/* 02DC90 8002D090 8C590000 */  lw    $t9, ($v0)
/* 02DC94 8002D094 03E00008 */  jr    $ra
/* 02DC98 8002D098 AF20000C */   sw    $zero, 0xc($t9)
/* 02DC9C 8002D09C 00000000 */  nop   

.type func_8002D070, @function
.size func_8002D070, . - func_8002D070


glabel func_8002D0A0
/* 02DCA0 8002D0A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02DCA4 8002D0A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DCA8 8002D0A8 240E000F */  li    $t6, 15
/* 02DCAC 8002D0AC A7AE0018 */  sh    $t6, 0x18($sp)
/* 02DCB0 8002D0B0 27A50018 */  addiu $a1, $sp, 0x18
/* 02DCB4 8002D0B4 24840050 */  addiu $a0, $a0, 0x50
/* 02DCB8 8002D0B8 0C009818 */  jal   func_80026060
/* 02DCBC 8002D0BC 00003025 */   move  $a2, $zero
/* 02DCC0 8002D0C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02DCC4 8002D0C4 27BD0028 */  addiu $sp, $sp, 0x28
/* 02DCC8 8002D0C8 03E00008 */  jr    $ra
/* 02DCCC 8002D0CC 00000000 */   nop   

.type func_8002D0A0, @function
.size func_8002D0A0, . - func_8002D0A0

glabel func_8002D0D0
/* 02DCD0 8002D0D0 AFA50004 */  sw    $a1, 4($sp)
/* 02DCD4 8002D0D4 30A500FF */  andi  $a1, $a1, 0xff
/* 02DCD8 8002D0D8 8C8E0068 */  lw    $t6, 0x68($a0)
/* 02DCDC 8002D0DC 00057880 */  sll   $t7, $a1, 2
/* 02DCE0 8002D0E0 01E57823 */  subu  $t7, $t7, $a1
/* 02DCE4 8002D0E4 000F78C0 */  sll   $t7, $t7, 3
/* 02DCE8 8002D0E8 01CF1821 */  addu  $v1, $t6, $t7
/* 02DCEC 8002D0EC 90780011 */  lbu   $t8, 0x11($v1)
/* 02DCF0 8002D0F0 90790009 */  lbu   $t9, 9($v1)
/* 02DCF4 8002D0F4 2401007F */  li    $at, 127
/* 02DCF8 8002D0F8 03190019 */  multu $t8, $t9
/* 02DCFC 8002D0FC 00001012 */  mflo  $v0
/* 02DD00 8002D100 00000000 */  nop   
/* 02DD04 8002D104 00000000 */  nop   
/* 02DD08 8002D108 0041001A */  div   $zero, $v0, $at
/* 02DD0C 8002D10C 00001012 */  mflo  $v0
/* 02DD10 8002D110 304200FF */  andi  $v0, $v0, 0xff
/* 02DD14 8002D114 03E00008 */  jr    $ra
/* 02DD18 8002D118 00000000 */   nop   
/* 02DD1C 8002D11C 00000000 */  nop   

.type func_8002D0D0, @function
.size func_8002D0D0, . - func_8002D0D0


glabel func_8002D120
/* 02DD20 8002D120 3C0E8004 */  lui   $t6, %hi(n_syn) # $t6, 0x8004
/* 02DD24 8002D124 8DCEFB14 */  lw    $t6, %lo(n_syn)($t6)
/* 02DD28 8002D128 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 02DD2C 8002D12C AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DD30 8002D130 AFA40020 */  sw    $a0, 0x20($sp)
/* 02DD34 8002D134 8DCF0040 */  lw    $t7, 0x40($t6)
/* 02DD38 8002D138 00043C00 */  sll   $a3, $a0, 0x10
/* 02DD3C 8002D13C 00073C03 */  sra   $a3, $a3, 0x10
/* 02DD40 8002D140 00071880 */  sll   $v1, $a3, 2
/* 02DD44 8002D144 01E32021 */  addu  $a0, $t7, $v1
/* 02DD48 8002D148 24840024 */  addiu $a0, $a0, 0x24
/* 02DD4C 8002D14C 0C00A942 */  jal   func_8002A508
/* 02DD50 8002D150 AFA3001C */   sw    $v1, 0x1c($sp)
/* 02DD54 8002D154 3C188004 */  lui   $t8, %hi(n_syn) # $t8, 0x8004
/* 02DD58 8002D158 8F18FB14 */  lw    $t8, %lo(n_syn)($t8)
/* 02DD5C 8002D15C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 02DD60 8002D160 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02DD64 8002D164 8F190040 */  lw    $t9, 0x40($t8)
/* 02DD68 8002D168 03234021 */  addu  $t0, $t9, $v1
/* 02DD6C 8002D16C 8D020024 */  lw    $v0, 0x24($t0)
/* 02DD70 8002D170 03E00008 */  jr    $ra
/* 02DD74 8002D174 27BD0020 */   addiu $sp, $sp, 0x20
/* 02DD78 8002D178 00000000 */  nop   
/* 02DD7C 8002D17C 00000000 */  nop

.type func_8002D120, @function
.size func_8002D120, . - func_8002D120


glabel func_8002D180
/* 02DD80 8002D180 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02DD84 8002D184 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DD88 8002D188 240E0011 */  li    $t6, 17
/* 02DD8C 8002D18C A7AE0018 */  sh    $t6, 0x18($sp)
/* 02DD90 8002D190 27A50018 */  addiu $a1, $sp, 0x18
/* 02DD94 8002D194 24840050 */  addiu $a0, $a0, 0x50
/* 02DD98 8002D198 0C009818 */  jal   func_80026060
/* 02DD9C 8002D19C 00003025 */   move  $a2, $zero
/* 02DDA0 8002D1A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02DDA4 8002D1A4 27BD0028 */  addiu $sp, $sp, 0x28
/* 02DDA8 8002D1A8 03E00008 */  jr    $ra
/* 02DDAC 8002D1AC 00000000 */   nop   

.type func_8002D180, @function
.size func_8002D180, . - func_8002D180

glabel func_8002D1B0
/* 02DDB0 8002D1B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02DDB4 8002D1B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02DDB8 8002D1B8 8C850008 */  lw    $a1, 8($a0)
/* 02DDBC 8002D1BC 00803825 */  move  $a3, $a0
/* 02DDC0 8002D1C0 50A0001F */  beql  $a1, $zero, .L8002D240_ovl0
/* 02DDC4 8002D1C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02DDC8 8002D1C8 8CAE0088 */  lw    $t6, 0x88($a1)
/* 02DDCC 8002D1CC 51C00017 */  beql  $t6, $zero, .L8002D22C_ovl0
/* 02DDD0 8002D1D0 00A02025 */   move  $a0, $a1
/* 02DDD4 8002D1D4 0C00A642 */  jal   __n_allocParam
/* 02DDD8 8002D1D8 AFA40018 */   sw    $a0, 0x18($sp)
/* 02DDDC 8002D1DC 8FA70018 */  lw    $a3, 0x18($sp)
/* 02DDE0 8002D1E0 10400015 */  beqz  $v0, .L8002D238_ovl0
/* 02DDE4 8002D1E4 00403025 */   move  $a2, $v0
/* 02DDE8 8002D1E8 3C0F8004 */  lui   $t7, %hi(n_syn) # $t7, 0x8004
/* 02DDEC 8002D1EC 8DEFFB14 */  lw    $t7, %lo(n_syn)($t7)
/* 02DDF0 8002D1F0 8CF90008 */  lw    $t9, 8($a3)
/* 02DDF4 8002D1F4 24050003 */  li    $a1, 3
/* 02DDF8 8002D1F8 8DF80028 */  lw    $t8, 0x28($t7)
/* 02DDFC 8002D1FC 8F280088 */  lw    $t0, 0x88($t9)
/* 02DE00 8002D200 A4400008 */  sh    $zero, 8($v0)
/* 02DE04 8002D204 03084821 */  addu  $t1, $t8, $t0
/* 02DE08 8002D208 AC490004 */  sw    $t1, 4($v0)
/* 02DE0C 8002D20C 8CEA0008 */  lw    $t2, 8($a3)
/* 02DE10 8002D210 AC4A000C */  sw    $t2, 0xc($v0)
/* 02DE14 8002D214 8CE40008 */  lw    $a0, 8($a3)
/* 02DE18 8002D218 0C009D48 */  jal   n_alEnvmixerParam
/* 02DE1C 8002D21C AFA70018 */   sw    $a3, 0x18($sp)
/* 02DE20 8002D220 10000005 */  b     .L8002D238_ovl0
/* 02DE24 8002D224 8FA70018 */   lw    $a3, 0x18($sp)
/* 02DE28 8002D228 00A02025 */  move  $a0, $a1
.L8002D22C_ovl0:
/* 02DE2C 8002D22C 0C009D70 */  jal   func_800275C0
/* 02DE30 8002D230 AFA70018 */   sw    $a3, 0x18($sp)
/* 02DE34 8002D234 8FA70018 */  lw    $a3, 0x18($sp)
.L8002D238_ovl0:
/* 02DE38 8002D238 ACE00008 */  sw    $zero, 8($a3)
/* 02DE3C 8002D23C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002D240_ovl0:
/* 02DE40 8002D240 27BD0018 */  addiu $sp, $sp, 0x18
/* 02DE44 8002D244 03E00008 */  jr    $ra
/* 02DE48 8002D248 00000000 */   nop   
/* 02DE4C 8002D24C 00000000 */  nop   

.type func_8002D1B0, @function
.size func_8002D1B0, . - func_8002D1B0
