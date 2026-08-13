nonmatching func_80152B50_ovl4, 0xE4

glabel func_80152B50_ovl4
    /* FA080 80152B50 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* FA084 80152B54 3C0F8016 */  lui        $t7, %hi(D_8015A8F8_ovl4)
    /* FA088 80152B58 AFB10024 */  sw         $s1, 0x24($sp)
    /* FA08C 80152B5C 25EFA8F8 */  addiu      $t7, $t7, %lo(D_8015A8F8_ovl4)
    /* FA090 80152B60 000570C0 */  sll        $t6, $a1, 3
    /* FA094 80152B64 01CF8821 */  addu       $s1, $t6, $t7
    /* FA098 80152B68 8E260000 */  lw         $a2, 0x0($s1)
    /* FA09C 80152B6C AFB20028 */  sw         $s2, 0x28($sp)
    /* FA0A0 80152B70 00809025 */  or         $s2, $a0, $zero
    /* FA0A4 80152B74 AFBF002C */  sw         $ra, 0x2C($sp)
    /* FA0A8 80152B78 AFB00020 */  sw         $s0, 0x20($sp)
    /* FA0AC 80152B7C 10C00003 */  beqz       $a2, .L80152B8C_ovl4
    /* FA0B0 80152B80 F7B40018 */   sdc1      $f20, 0x18($sp)
    /* FA0B4 80152B84 0C02A806 */  jal        func_800AA018
    /* FA0B8 80152B88 00C02025 */   or        $a0, $a2, $zero
  .L80152B8C_ovl4:
    /* FA0BC 80152B8C 8E240004 */  lw         $a0, 0x4($s1)
    /* FA0C0 80152B90 10800003 */  beqz       $a0, .L80152BA0_ovl4
    /* FA0C4 80152B94 00000000 */   nop
    /* FA0C8 80152B98 0C02A806 */  jal        func_800AA018
    /* FA0CC 80152B9C 00000000 */   nop
  .L80152BA0_ovl4:
    /* FA0D0 80152BA0 0C02BC8C */  jal        func_800AF230
    /* FA0D4 80152BA4 00000000 */   nop
    /* FA0D8 80152BA8 14400013 */  bnez       $v0, .L80152BF8_ovl4
    /* FA0DC 80152BAC 3C0141E0 */   lui       $at, (0x41E00000 >> 16)
    /* FA0E0 80152BB0 3C108016 */  lui        $s0, %hi(D_8015A8F8_ovl4)
    /* FA0E4 80152BB4 4481A000 */  mtc1       $at, $f20
    /* FA0E8 80152BB8 2610A8F8 */  addiu      $s0, $s0, %lo(D_8015A8F8_ovl4)
  .L80152BBC_ovl4:
    /* FA0EC 80152BBC 16300008 */  bne        $s1, $s0, .L80152BE0_ovl4
    /* FA0F0 80152BC0 00000000 */   nop
    /* FA0F4 80152BC4 C6440040 */  lwc1       $f4, 0x40($s2)
    /* FA0F8 80152BC8 4604A032 */  c.eq.s     $f20, $f4
    /* FA0FC 80152BCC 00000000 */  nop
    /* FA100 80152BD0 45000003 */  bc1f       .L80152BE0_ovl4
    /* FA104 80152BD4 00000000 */   nop
    /* FA108 80152BD8 0C029D9E */  jal        play_sound
    /* FA10C 80152BDC 240400E2 */   addiu     $a0, $zero, 0xE2
  .L80152BE0_ovl4:
    /* FA110 80152BE0 0C002DAF */  jal        ohSleep
    /* FA114 80152BE4 24040001 */   addiu     $a0, $zero, 0x1
    /* FA118 80152BE8 0C02BC8C */  jal        func_800AF230
    /* FA11C 80152BEC 00000000 */   nop
    /* FA120 80152BF0 1040FFF2 */  beqz       $v0, .L80152BBC_ovl4
    /* FA124 80152BF4 00000000 */   nop
  .L80152BF8_ovl4:
    /* FA128 80152BF8 3C198016 */  lui        $t9, %hi(D_8015C698_ovl4)
    /* FA12C 80152BFC 8F39C698 */  lw         $t9, %lo(D_8015C698_ovl4)($t9)
    /* FA130 80152C00 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* FA134 80152C04 24180001 */  addiu      $t8, $zero, 0x1
    /* FA138 80152C08 00194080 */  sll        $t0, $t9, 2
    /* FA13C 80152C0C 00280821 */  addu       $at, $at, $t0
    /* FA140 80152C10 0C02BE85 */  jal        curObjSleepForever
    /* FA144 80152C14 AC38A1A0 */   sw        $t8, %lo(D_800EA1A0)($at)
    /* FA148 80152C18 8FBF002C */  lw         $ra, 0x2C($sp)
    /* FA14C 80152C1C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* FA150 80152C20 8FB00020 */  lw         $s0, 0x20($sp)
    /* FA154 80152C24 8FB10024 */  lw         $s1, 0x24($sp)
    /* FA158 80152C28 8FB20028 */  lw         $s2, 0x28($sp)
    /* FA15C 80152C2C 03E00008 */  jr         $ra
    /* FA160 80152C30 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_80152B50_ovl4
.size func_80152B50_ovl4, . - func_80152B50_ovl4
