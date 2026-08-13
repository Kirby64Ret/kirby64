nonmatching func_80121A04, 0x1C8

glabel func_80121A04
    /* AA474 80121A04 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* AA478 80121A08 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* AA47C 80121A0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* AA480 80121A10 AFBF0014 */  sw         $ra, 0x14($sp)
    /* AA484 80121A14 8C820000 */  lw         $v0, 0x0($a0)
    /* AA488 80121A18 3C03800F */  lui        $v1, %hi(D_800E8AE0)
    /* AA48C 80121A1C 00021080 */  sll        $v0, $v0, 2
    /* AA490 80121A20 00621821 */  addu       $v1, $v1, $v0
    /* AA494 80121A24 8C638AE0 */  lw         $v1, %lo(D_800E8AE0)($v1)
    /* AA498 80121A28 306E0004 */  andi       $t6, $v1, 0x4
    /* AA49C 80121A2C 15C00057 */  bnez       $t6, .L80121B8C
    /* AA4A0 80121A30 00000000 */   nop
    /* AA4A4 80121A34 10600055 */  beqz       $v1, .L80121B8C
    /* AA4A8 80121A38 3C058013 */   lui       $a1, %hi(D_8012EADC)
    /* AA4AC 80121A3C 24A5EADC */  addiu      $a1, $a1, %lo(D_8012EADC)
    /* AA4B0 80121A40 8CA30000 */  lw         $v1, 0x0($a1)
    /* AA4B4 80121A44 3C0F800E */  lui        $t7, %hi(D_800DE350)
    /* AA4B8 80121A48 01E27821 */  addu       $t7, $t7, $v0
    /* AA4BC 80121A4C 1460000F */  bnez       $v1, .L80121A8C
    /* AA4C0 80121A50 2469FFFF */   addiu     $t1, $v1, -0x1
    /* AA4C4 80121A54 8DEFE350 */  lw         $t7, %lo(D_800DE350)($t7)
    /* AA4C8 80121A58 8DF80044 */  lw         $t8, 0x44($t7)
    /* AA4CC 80121A5C 33190001 */  andi       $t9, $t8, 0x1
    /* AA4D0 80121A60 57200008 */  bnel       $t9, $zero, .L80121A84
    /* AA4D4 80121A64 24080008 */   addiu     $t0, $zero, 0x8
    /* AA4D8 80121A68 0C05A4F1 */  jal        func_801693C4
    /* AA4DC 80121A6C 24040002 */   addiu     $a0, $zero, 0x2
    /* AA4E0 80121A70 3C058013 */  lui        $a1, %hi(D_8012EADC)
    /* AA4E4 80121A74 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* AA4E8 80121A78 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* AA4EC 80121A7C 24A5EADC */  addiu      $a1, $a1, %lo(D_8012EADC)
    /* AA4F0 80121A80 24080008 */  addiu      $t0, $zero, 0x8
  .L80121A84:
    /* AA4F4 80121A84 10000002 */  b          .L80121A90
    /* AA4F8 80121A88 ACA80000 */   sw        $t0, 0x0($a1)
  .L80121A8C:
    /* AA4FC 80121A8C ACA90000 */  sw         $t1, 0x0($a1)
  .L80121A90:
    /* AA500 80121A90 8C8A0000 */  lw         $t2, 0x0($a0)
    /* AA504 80121A94 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* AA508 80121A98 44802000 */  mtc1       $zero, $f4
    /* AA50C 80121A9C 000A5880 */  sll        $t3, $t2, 2
    /* AA510 80121AA0 002B0821 */  addu       $at, $at, $t3
    /* AA514 80121AA4 C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
    /* AA518 80121AA8 3C038013 */  lui        $v1, %hi(D_8012EAE0)
    /* AA51C 80121AAC 2463EAE0 */  addiu      $v1, $v1, %lo(D_8012EAE0)
    /* AA520 80121AB0 46062032 */  c.eq.s     $f4, $f6
    /* AA524 80121AB4 00000000 */  nop
    /* AA528 80121AB8 4503001D */  bc1tl      .L80121B30
    /* AA52C 80121ABC 8C640000 */   lw        $a0, 0x0($v1)
    /* AA530 80121AC0 3C038013 */  lui        $v1, %hi(D_8012EAE0)
    /* AA534 80121AC4 2463EAE0 */  addiu      $v1, $v1, %lo(D_8012EAE0)
    /* AA538 80121AC8 8C640000 */  lw         $a0, 0x0($v1)
    /* AA53C 80121ACC 3C0C8013 */  lui        $t4, %hi(D_8012E860)
    /* AA540 80121AD0 1480001F */  bnez       $a0, .L80121B50
    /* AA544 80121AD4 00000000 */   nop
    /* AA548 80121AD8 8D8CE860 */  lw         $t4, %lo(D_8012E860)($t4)
    /* AA54C 80121ADC 2401000F */  addiu      $at, $zero, 0xF
    /* AA550 80121AE0 24040002 */  addiu      $a0, $zero, 0x2
    /* AA554 80121AE4 1181000A */  beq        $t4, $at, .L80121B10
    /* AA558 80121AE8 24050001 */   addiu     $a1, $zero, 0x1
    /* AA55C 80121AEC 24040005 */  addiu      $a0, $zero, 0x5
    /* AA560 80121AF0 24050001 */  addiu      $a1, $zero, 0x1
    /* AA564 80121AF4 0C02A08D */  jal        func_800A8234
    /* AA568 80121AF8 2406002C */   addiu     $a2, $zero, 0x2C
    /* AA56C 80121AFC 3C038013 */  lui        $v1, %hi(D_8012EAE0)
    /* AA570 80121B00 2463EAE0 */  addiu      $v1, $v1, %lo(D_8012EAE0)
    /* AA574 80121B04 AC620000 */  sw         $v0, 0x0($v1)
    /* AA578 80121B08 10000011 */  b          .L80121B50
    /* AA57C 80121B0C 00402025 */   or        $a0, $v0, $zero
  .L80121B10:
    /* AA580 80121B10 0C02A08D */  jal        func_800A8234
    /* AA584 80121B14 2406000A */   addiu     $a2, $zero, 0xA
    /* AA588 80121B18 3C038013 */  lui        $v1, %hi(D_8012EAE0)
    /* AA58C 80121B1C 2463EAE0 */  addiu      $v1, $v1, %lo(D_8012EAE0)
    /* AA590 80121B20 AC620000 */  sw         $v0, 0x0($v1)
    /* AA594 80121B24 1000000A */  b          .L80121B50
    /* AA598 80121B28 00402025 */   or        $a0, $v0, $zero
    /* AA59C 80121B2C 8C640000 */  lw         $a0, 0x0($v1)
  .L80121B30:
    /* AA5A0 80121B30 10800007 */  beqz       $a0, .L80121B50
    /* AA5A4 80121B34 00000000 */   nop
    /* AA5A8 80121B38 0C0288B5 */  jal        func_800A22D4
    /* AA5AC 80121B3C 00000000 */   nop
    /* AA5B0 80121B40 3C038013 */  lui        $v1, %hi(D_8012EAE0)
    /* AA5B4 80121B44 2463EAE0 */  addiu      $v1, $v1, %lo(D_8012EAE0)
    /* AA5B8 80121B48 AC600000 */  sw         $zero, 0x0($v1)
    /* AA5BC 80121B4C 00002025 */  or         $a0, $zero, $zero
  .L80121B50:
    /* AA5C0 80121B50 1080001A */  beqz       $a0, .L80121BBC
    /* AA5C4 80121B54 3C018013 */   lui       $at, %hi(D_8012E904)
    /* AA5C8 80121B58 C428E904 */  lwc1       $f8, %lo(D_8012E904)($at)
    /* AA5CC 80121B5C 8C8D004C */  lw         $t5, 0x4C($a0)
    /* AA5D0 80121B60 3C018013 */  lui        $at, %hi(D_8012E908)
    /* AA5D4 80121B64 E5A80004 */  swc1       $f8, 0x4($t5)
    /* AA5D8 80121B68 8C6E0000 */  lw         $t6, 0x0($v1)
    /* AA5DC 80121B6C C42AE908 */  lwc1       $f10, %lo(D_8012E908)($at)
    /* AA5E0 80121B70 8DCF004C */  lw         $t7, 0x4C($t6)
    /* AA5E4 80121B74 E5EA0008 */  swc1       $f10, 0x8($t7)
    /* AA5E8 80121B78 8C780000 */  lw         $t8, 0x0($v1)
    /* AA5EC 80121B7C C430E90C */  lwc1       $f16, %lo(D_8012E90C)($at)
    /* AA5F0 80121B80 8F19004C */  lw         $t9, 0x4C($t8)
    /* AA5F4 80121B84 1000000D */  b          .L80121BBC
    /* AA5F8 80121B88 E730000C */   swc1      $f16, 0xC($t9)
  .L80121B8C:
    /* AA5FC 80121B8C 3C038013 */  lui        $v1, %hi(D_8012EAE0)
    /* AA600 80121B90 2463EAE0 */  addiu      $v1, $v1, %lo(D_8012EAE0)
    /* AA604 80121B94 8C640000 */  lw         $a0, 0x0($v1)
    /* AA608 80121B98 3C058013 */  lui        $a1, %hi(D_8012EADC)
    /* AA60C 80121B9C 24A5EADC */  addiu      $a1, $a1, %lo(D_8012EADC)
    /* AA610 80121BA0 10800006 */  beqz       $a0, .L80121BBC
    /* AA614 80121BA4 ACA00000 */   sw        $zero, 0x0($a1)
    /* AA618 80121BA8 0C0288B5 */  jal        func_800A22D4
    /* AA61C 80121BAC 00000000 */   nop
    /* AA620 80121BB0 3C038013 */  lui        $v1, %hi(D_8012EAE0)
    /* AA624 80121BB4 2463EAE0 */  addiu      $v1, $v1, %lo(D_8012EAE0)
    /* AA628 80121BB8 AC600000 */  sw         $zero, 0x0($v1)
  .L80121BBC:
    /* AA62C 80121BBC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AA630 80121BC0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* AA634 80121BC4 03E00008 */  jr         $ra
    /* AA638 80121BC8 00000000 */   nop
endlabel func_80121A04
.size func_80121A04, . - func_80121A04
