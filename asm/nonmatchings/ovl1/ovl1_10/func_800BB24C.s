nonmatching func_800BB24C, 0x118

glabel func_800BB24C
    /* 6349C 800BB24C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 634A0 800BB250 3C09800F */  lui        $t1, %hi(D_800ED4A0)
    /* 634A4 800BB254 3C08800F */  lui        $t0, %hi(D_800ED410)
    /* 634A8 800BB258 3C07800F */  lui        $a3, %hi(D_800ED320)
    /* 634AC 800BB25C 3C0A800F */  lui        $t2, %hi(D_800ED410)
    /* 634B0 800BB260 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 634B4 800BB264 254AD410 */  addiu      $t2, $t2, %lo(D_800ED410)
    /* 634B8 800BB268 24E7D320 */  addiu      $a3, $a3, %lo(D_800ED320)
    /* 634BC 800BB26C 2508D410 */  addiu      $t0, $t0, %lo(D_800ED410)
    /* 634C0 800BB270 2529D4A0 */  addiu      $t1, $t1, %lo(D_800ED4A0)
    /* 634C4 800BB274 24060003 */  addiu      $a2, $zero, 0x3
  .L800BB278:
    /* 634C8 800BB278 A1200000 */  sb         $zero, 0x0($t1)
    /* 634CC 800BB27C AD280004 */  sw         $t0, 0x4($t1)
    /* 634D0 800BB280 01001025 */  or         $v0, $t0, $zero
    /* 634D4 800BB284 AD070000 */  sw         $a3, 0x0($t0)
    /* 634D8 800BB288 00E01825 */  or         $v1, $a3, $zero
    /* 634DC 800BB28C ACE0000C */  sw         $zero, 0xC($a3)
    /* 634E0 800BB290 ACE00010 */  sw         $zero, 0x10($a3)
    /* 634E4 800BB294 01002025 */  or         $a0, $t0, $zero
    /* 634E8 800BB298 24050001 */  addiu      $a1, $zero, 0x1
  .L800BB29C:
    /* 634EC 800BB29C 2442000C */  addiu      $v0, $v0, 0xC
    /* 634F0 800BB2A0 AC820004 */  sw         $v0, 0x4($a0)
    /* 634F4 800BB2A4 24630014 */  addiu      $v1, $v1, 0x14
    /* 634F8 800BB2A8 AC430000 */  sw         $v1, 0x0($v0)
    /* 634FC 800BB2AC AC60000C */  sw         $zero, 0xC($v1)
    /* 63500 800BB2B0 AC600010 */  sw         $zero, 0x10($v1)
    /* 63504 800BB2B4 24A50001 */  addiu      $a1, $a1, 0x1
    /* 63508 800BB2B8 AC440008 */  sw         $a0, 0x8($v0)
    /* 6350C 800BB2BC 14A6FFF7 */  bne        $a1, $a2, .L800BB29C
    /* 63510 800BB2C0 00402025 */   or        $a0, $v0, $zero
    /* 63514 800BB2C4 AC400004 */  sw         $zero, 0x4($v0)
    /* 63518 800BB2C8 8D2E0004 */  lw         $t6, 0x4($t1)
    /* 6351C 800BB2CC 24E7003C */  addiu      $a3, $a3, 0x3C
    /* 63520 800BB2D0 25080024 */  addiu      $t0, $t0, 0x24
    /* 63524 800BB2D4 25290008 */  addiu      $t1, $t1, 0x8
    /* 63528 800BB2D8 14EAFFE7 */  bne        $a3, $t2, .L800BB278
    /* 6352C 800BB2DC ADC20008 */   sw        $v0, 0x8($t6)
    /* 63530 800BB2E0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 63534 800BB2E4 3C01800F */  lui        $at, %hi(D_800ED4C0)
    /* 63538 800BB2E8 3C188005 */  lui        $t8, %hi(contChannelMap)
    /* 6353C 800BB2EC 83188E9C */  lb         $t8, %lo(contChannelMap)($t8)
    /* 63540 800BB2F0 AC2FD4C0 */  sw         $t7, %lo(D_800ED4C0)($at)
    /* 63544 800BB2F4 3C19800F */  lui        $t9, %hi(D_800ED320)
    /* 63548 800BB2F8 3C01800F */  lui        $at, %hi(alGlobals)
    /* 6354C 800BB2FC 2739D320 */  addiu      $t9, $t9, %lo(D_800ED320)
    /* 63550 800BB300 3C04800F */  lui        $a0, %hi(D_800ECD70)
    /* 63554 800BB304 3C0505F5 */  lui        $a1, (0x5F5E100 >> 16)
    /* 63558 800BB308 3C06800C */  lui        $a2, %hi(func_800BAD0C)
    /* 6355C 800BB30C 240B0034 */  addiu      $t3, $zero, 0x34
    /* 63560 800BB310 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 63564 800BB314 24C6AD0C */  addiu      $a2, $a2, %lo(func_800BAD0C)
    /* 63568 800BB318 34A5E100 */  ori        $a1, $a1, (0x5F5E100 & 0xFFFF)
    /* 6356C 800BB31C 2484CD70 */  addiu      $a0, $a0, %lo(D_800ECD70)
    /* 63570 800BB320 AFB90010 */  sw         $t9, 0x10($sp)
    /* 63574 800BB324 00003825 */  or         $a3, $zero, $zero
    /* 63578 800BB328 0C00BEF8 */  jal        osCreateThread
    /* 6357C 800BB32C AC38D4C4 */   sw        $t8, %lo(alGlobals)($at)
    /* 63580 800BB330 3C0DFEDC */  lui        $t5, (0xFEDCBA98 >> 16)
    /* 63584 800BB334 35ADBA98 */  ori        $t5, $t5, (0xFEDCBA98 & 0xFFFF)
    /* 63588 800BB338 240C0000 */  addiu      $t4, $zero, 0x0
    /* 6358C 800BB33C 3C01800F */  lui        $at, %hi(D_800ECF58)
    /* 63590 800BB340 3C04800F */  lui        $a0, %hi(D_800ECD70)
    /* 63594 800BB344 AC2CCF58 */  sw         $t4, %lo(D_800ECF58)($at)
    /* 63598 800BB348 AC2DCF5C */  sw         $t5, %lo(D_800ECF5C)($at)
    /* 6359C 800BB34C 0C00E334 */  jal        osStartThread
    /* 635A0 800BB350 2484CD70 */   addiu     $a0, $a0, %lo(D_800ECD70)
    /* 635A4 800BB354 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 635A8 800BB358 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 635AC 800BB35C 03E00008 */  jr         $ra
    /* 635B0 800BB360 00000000 */   nop
endlabel func_800BB24C
.size func_800BB24C, . - func_800BB24C
