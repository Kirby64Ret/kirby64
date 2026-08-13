nonmatching func_801E5ABC_ovl9, 0x1D0

glabel func_801E5ABC_ovl9
    /* 193B0C 801E5ABC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 193B10 801E5AC0 AFB10038 */  sw         $s1, 0x38($sp)
    /* 193B14 801E5AC4 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 193B18 801E5AC8 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 193B1C 801E5ACC 8E220000 */  lw         $v0, 0x0($s1)
    /* 193B20 801E5AD0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 193B24 801E5AD4 AFB00034 */  sw         $s0, 0x34($sp)
    /* 193B28 801E5AD8 F7BA0028 */  sdc1       $f26, 0x28($sp)
    /* 193B2C 801E5ADC F7B80020 */  sdc1       $f24, 0x20($sp)
    /* 193B30 801E5AE0 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* 193B34 801E5AE4 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* 193B38 801E5AE8 AFA40040 */  sw         $a0, 0x40($sp)
    /* 193B3C 801E5AEC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 193B40 801E5AF0 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 193B44 801E5AF4 3C09800E */  lui        $t1, %hi(D_800E1B50)
    /* 193B48 801E5AF8 000E7880 */  sll        $t7, $t6, 2
    /* 193B4C 801E5AFC 002F0821 */  addu       $at, $at, $t7
    /* 193B50 801E5B00 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
    /* 193B54 801E5B04 8C590000 */  lw         $t9, 0x0($v0)
    /* 193B58 801E5B08 3C18801D */  lui        $t8, %hi(D_801CBB0C)
    /* 193B5C 801E5B0C 3C10800D */  lui        $s0, %hi(gameTicksPerDraw)
    /* 193B60 801E5B10 00194080 */  sll        $t0, $t9, 2
    /* 193B64 801E5B14 01284821 */  addu       $t1, $t1, $t0
    /* 193B68 801E5B18 8D291B50 */  lw         $t1, %lo(D_800E1B50)($t1)
    /* 193B6C 801E5B1C 2718BB0C */  addiu      $t8, $t8, %lo(D_801CBB0C)
    /* 193B70 801E5B20 26106B10 */  addiu      $s0, $s0, %lo(gameTicksPerDraw)
    /* 193B74 801E5B24 AD380098 */  sw         $t8, 0x98($t1)
    /* 193B78 801E5B28 0C02BB30 */  jal        func_800AECC0
    /* 193B7C 801E5B2C C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 193B80 801E5B30 0C02BB48 */  jal        func_800AED20
    /* 193B84 801E5B34 C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 193B88 801E5B38 0C02CCFD */  jal        func_800B33F4
    /* 193B8C 801E5B3C 00000000 */   nop
    /* 193B90 801E5B40 8E220000 */  lw         $v0, 0x0($s1)
    /* 193B94 801E5B44 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 193B98 801E5B48 240A0001 */  addiu      $t2, $zero, 0x1
    /* 193B9C 801E5B4C 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 193BA0 801E5B50 44802000 */  mtc1       $zero, $f4
    /* 193BA4 801E5B54 3C040001 */  lui        $a0, (0x101F7 >> 16)
    /* 193BA8 801E5B58 000B6080 */  sll        $t4, $t3, 2
    /* 193BAC 801E5B5C 002C0821 */  addu       $at, $at, $t4
    /* 193BB0 801E5B60 AC2A8920 */  sw         $t2, %lo(D_800E8920)($at)
    /* 193BB4 801E5B64 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 193BB8 801E5B68 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* 193BBC 801E5B6C 348401F7 */  ori        $a0, $a0, (0x101F7 & 0xFFFF)
    /* 193BC0 801E5B70 000D7080 */  sll        $t6, $t5, 2
    /* 193BC4 801E5B74 002E0821 */  addu       $at, $at, $t6
    /* 193BC8 801E5B78 0C02A806 */  jal        func_800AA018
    /* 193BCC 801E5B7C E424A8A0 */   swc1      $f4, %lo(D_800EA8A0)($at)
    /* 193BD0 801E5B80 3C0143A0 */  lui        $at, (0x43A00000 >> 16)
    /* 193BD4 801E5B84 4481D000 */  mtc1       $at, $f26
    /* 193BD8 801E5B88 3C014370 */  lui        $at, (0x43700000 >> 16)
    /* 193BDC 801E5B8C 4481B000 */  mtc1       $at, $f22
    /* 193BE0 801E5B90 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 193BE4 801E5B94 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
    /* 193BE8 801E5B98 4481A000 */  mtc1       $at, $f20
    /* 193BEC 801E5B9C 4480C000 */  mtc1       $zero, $f24
    /* 193BF0 801E5BA0 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
    /* 193BF4 801E5BA4 8E2F0000 */  lw         $t7, 0x0($s1)
  .L801E5BA8_ovl9:
    /* 193BF8 801E5BA8 C6060000 */  lwc1       $f6, 0x0($s0)
    /* 193BFC 801E5BAC 8DF90000 */  lw         $t9, 0x0($t7)
    /* 193C00 801E5BB0 46143000 */  add.s      $f0, $f6, $f20
    /* 193C04 801E5BB4 00194080 */  sll        $t0, $t9, 2
    /* 193C08 801E5BB8 0208C021 */  addu       $t8, $s0, $t0
    /* 193C0C 801E5BBC C7020000 */  lwc1       $f2, 0x0($t8)
    /* 193C10 801E5BC0 4602003C */  c.lt.s     $f0, $f2
    /* 193C14 801E5BC4 00000000 */  nop
    /* 193C18 801E5BC8 45020005 */  bc1fl      .L801E5BE0_ovl9
    /* 193C1C 801E5BCC 46020301 */   sub.s     $f12, $f0, $f2
    /* 193C20 801E5BD0 46020301 */  sub.s      $f12, $f0, $f2
    /* 193C24 801E5BD4 10000002 */  b          .L801E5BE0_ovl9
    /* 193C28 801E5BD8 46006307 */   neg.s     $f12, $f12
    /* 193C2C 801E5BDC 46020301 */  sub.s      $f12, $f0, $f2
  .L801E5BE0_ovl9:
    /* 193C30 801E5BE0 4616603C */  c.lt.s     $f12, $f22
    /* 193C34 801E5BE4 00000000 */  nop
    /* 193C38 801E5BE8 45000012 */  bc1f       .L801E5C34_ovl9
    /* 193C3C 801E5BEC 00000000 */   nop
    /* 193C40 801E5BF0 0C067694 */  jal        func_8019DA50_ovl7
    /* 193C44 801E5BF4 00000000 */   nop
    /* 193C48 801E5BF8 4618003C */  c.lt.s     $f0, $f24
    /* 193C4C 801E5BFC 00000000 */  nop
    /* 193C50 801E5C00 45000005 */  bc1f       .L801E5C18_ovl9
    /* 193C54 801E5C04 00000000 */   nop
    /* 193C58 801E5C08 0C067694 */  jal        func_8019DA50_ovl7
    /* 193C5C 801E5C0C 00000000 */   nop
    /* 193C60 801E5C10 10000004 */  b          .L801E5C24_ovl9
    /* 193C64 801E5C14 46000087 */   neg.s     $f2, $f0
  .L801E5C18_ovl9:
    /* 193C68 801E5C18 0C067694 */  jal        func_8019DA50_ovl7
    /* 193C6C 801E5C1C 00000000 */   nop
    /* 193C70 801E5C20 46000086 */  mov.s      $f2, $f0
  .L801E5C24_ovl9:
    /* 193C74 801E5C24 461A103C */  c.lt.s     $f2, $f26
    /* 193C78 801E5C28 00000000 */  nop
    /* 193C7C 801E5C2C 45010005 */  bc1t       .L801E5C44_ovl9
    /* 193C80 801E5C30 00000000 */   nop
  .L801E5C34_ovl9:
    /* 193C84 801E5C34 0C002DAF */  jal        ohSleep
    /* 193C88 801E5C38 24040001 */   addiu     $a0, $zero, 0x1
    /* 193C8C 801E5C3C 1000FFDA */  b          .L801E5BA8_ovl9
    /* 193C90 801E5C40 8E2F0000 */   lw        $t7, 0x0($s1)
  .L801E5C44_ovl9:
    /* 193C94 801E5C44 0C02BC9F */  jal        func_800AF27C
    /* 193C98 801E5C48 00000000 */   nop
    /* 193C9C 801E5C4C 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 193CA0 801E5C50 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 193CA4 801E5C54 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 193CA8 801E5C58 8D6A0000 */  lw         $t2, 0x0($t3)
    /* 193CAC 801E5C5C 24090003 */  addiu      $t1, $zero, 0x3
    /* 193CB0 801E5C60 8FB10038 */  lw         $s1, 0x38($sp)
    /* 193CB4 801E5C64 000A6080 */  sll        $t4, $t2, 2
    /* 193CB8 801E5C68 002C0821 */  addu       $at, $at, $t4
    /* 193CBC 801E5C6C D7B40010 */  ldc1       $f20, 0x10($sp)
    /* 193CC0 801E5C70 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* 193CC4 801E5C74 D7B80020 */  ldc1       $f24, 0x20($sp)
    /* 193CC8 801E5C78 D7BA0028 */  ldc1       $f26, 0x28($sp)
    /* 193CCC 801E5C7C 8FB00034 */  lw         $s0, 0x34($sp)
    /* 193CD0 801E5C80 AC29DC50 */  sw         $t1, %lo(gEntityFuncListIDArray)($at)
    /* 193CD4 801E5C84 03E00008 */  jr         $ra
    /* 193CD8 801E5C88 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_801E5ABC_ovl9
.size func_801E5ABC_ovl9, . - func_801E5ABC_ovl9
