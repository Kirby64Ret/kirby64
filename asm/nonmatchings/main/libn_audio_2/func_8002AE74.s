nonmatching func_8002AE74, 0xE0

glabel func_8002AE74
    /* 2BA74 8002AE74 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 2BA78 8002AE78 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BA7C 8002AE7C AFA50024 */  sw         $a1, 0x24($sp)
    /* 2BA80 8002AE80 AFA60028 */  sw         $a2, 0x28($sp)
    /* 2BA84 8002AE84 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 2BA88 8002AE88 8C8E0008 */  lw         $t6, 0x8($a0)
    /* 2BA8C 8002AE8C 51C0002E */  beql       $t6, $zero, .L8002AF48
    /* 2BA90 8002AE90 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2BA94 8002AE94 0C00A642 */  jal        __n_allocParam
    /* 2BA98 8002AE98 AFA40020 */   sw        $a0, 0x20($sp)
    /* 2BA9C 8002AE9C 93A50037 */  lbu        $a1, 0x37($sp)
    /* 2BAA0 8002AEA0 8FA80020 */  lw         $t0, 0x20($sp)
    /* 2BAA4 8002AEA4 00403025 */  or         $a2, $v0, $zero
    /* 2BAA8 8002AEA8 04A10003 */  bgez       $a1, .L8002AEB8
    /* 2BAAC 8002AEAC 00A01825 */   or        $v1, $a1, $zero
    /* 2BAB0 8002AEB0 00032823 */  negu       $a1, $v1
    /* 2BAB4 8002AEB4 30A500FF */  andi       $a1, $a1, 0xFF
  .L8002AEB8:
    /* 2BAB8 8002AEB8 10400022 */  beqz       $v0, .L8002AF44
    /* 2BABC 8002AEBC 3C0F8004 */   lui       $t7, %hi(n_syn)
    /* 2BAC0 8002AEC0 8DEFFB14 */  lw         $t7, %lo(n_syn)($t7)
    /* 2BAC4 8002AEC4 8D190008 */  lw         $t9, 0x8($t0)
    /* 2BAC8 8002AEC8 240B000D */  addiu      $t3, $zero, 0xD
    /* 2BACC 8002AECC 8DF80028 */  lw         $t8, 0x28($t7)
    /* 2BAD0 8002AED0 8F290088 */  lw         $t1, 0x88($t9)
    /* 2BAD4 8002AED4 ACC00000 */  sw         $zero, 0x0($a2)
    /* 2BAD8 8002AED8 A4CB0008 */  sh         $t3, 0x8($a2)
    /* 2BADC 8002AEDC 03095021 */  addu       $t2, $t8, $t1
    /* 2BAE0 8002AEE0 ACCA0004 */  sw         $t2, 0x4($a2)
    /* 2BAE4 8002AEE4 850C001A */  lh         $t4, 0x1A($t0)
    /* 2BAE8 8002AEE8 240F005F */  addiu      $t7, $zero, 0x5F
    /* 2BAEC 8002AEEC A4CC000A */  sh         $t4, 0xA($a2)
    /* 2BAF0 8002AEF0 93AD0033 */  lbu        $t5, 0x33($sp)
    /* 2BAF4 8002AEF4 A0CD0012 */  sb         $t5, 0x12($a2)
    /* 2BAF8 8002AEF8 87AE002E */  lh         $t6, 0x2E($sp)
    /* 2BAFC 8002AEFC A0C50013 */  sb         $a1, 0x13($a2)
    /* 2BB00 8002AF00 A0C0001C */  sb         $zero, 0x1C($a2)
    /* 2BB04 8002AF04 A0CF001D */  sb         $t7, 0x1D($a2)
    /* 2BB08 8002AF08 A4CE0010 */  sh         $t6, 0x10($a2)
    /* 2BB0C 8002AF0C C7A40028 */  lwc1       $f4, 0x28($sp)
    /* 2BB10 8002AF10 E4C4000C */  swc1       $f4, 0xC($a2)
    /* 2BB14 8002AF14 AFA80020 */  sw         $t0, 0x20($sp)
    /* 2BB18 8002AF18 AFA6001C */  sw         $a2, 0x1C($sp)
    /* 2BB1C 8002AF1C 0C00A60F */  jal        _n_timeToSamples
    /* 2BB20 8002AF20 8FA40038 */   lw        $a0, 0x38($sp)
    /* 2BB24 8002AF24 8FA6001C */  lw         $a2, 0x1C($sp)
    /* 2BB28 8002AF28 8FA80020 */  lw         $t0, 0x20($sp)
    /* 2BB2C 8002AF2C 24050003 */  addiu      $a1, $zero, 0x3
    /* 2BB30 8002AF30 ACC20014 */  sw         $v0, 0x14($a2)
    /* 2BB34 8002AF34 8FB90024 */  lw         $t9, 0x24($sp)
    /* 2BB38 8002AF38 ACD90018 */  sw         $t9, 0x18($a2)
    /* 2BB3C 8002AF3C 0C009D48 */  jal        n_alEnvmixerParam
    /* 2BB40 8002AF40 8D040008 */   lw        $a0, 0x8($t0)
  .L8002AF44:
    /* 2BB44 8002AF44 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8002AF48:
    /* 2BB48 8002AF48 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 2BB4C 8002AF4C 03E00008 */  jr         $ra
    /* 2BB50 8002AF50 00000000 */   nop
endlabel func_8002AE74
.size func_8002AE74, . - func_8002AE74
    /* 2BB54 8002AF54 00000000 */  nop
    /* 2BB58 8002AF58 00000000 */  nop
    /* 2BB5C 8002AF5C 00000000 */  nop
