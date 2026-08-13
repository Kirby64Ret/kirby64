nonmatching func_801A2ADC_ovl7, 0x19C

glabel func_801A2ADC_ovl7
    /* 148B4C 801A2ADC 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 148B50 801A2AE0 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 148B54 801A2AE4 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 148B58 801A2AE8 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 148B5C 801A2AEC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 148B60 801A2AF0 8DC30000 */  lw         $v1, 0x0($t6)
    /* 148B64 801A2AF4 00031880 */  sll        $v1, $v1, 2
    /* 148B68 801A2AF8 00431021 */  addu       $v0, $v0, $v1
    /* 148B6C 801A2AFC 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
    /* 148B70 801A2B00 00230821 */  addu       $at, $at, $v1
    /* 148B74 801A2B04 8C450084 */  lw         $a1, 0x84($v0)
    /* 148B78 801A2B08 10A00059 */  beqz       $a1, .L801A2C70_ovl7
    /* 148B7C 801A2B0C 00000000 */   nop
    /* 148B80 801A2B10 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 148B84 801A2B14 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 148B88 801A2B18 E4A40004 */  swc1       $f4, 0x4($a1)
    /* 148B8C 801A2B1C 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 148B90 801A2B20 8DF80000 */  lw         $t8, 0x0($t7)
    /* 148B94 801A2B24 0018C880 */  sll        $t9, $t8, 2
    /* 148B98 801A2B28 00390821 */  addu       $at, $at, $t9
    /* 148B9C 801A2B2C C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 148BA0 801A2B30 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 148BA4 801A2B34 E4A60008 */  swc1       $f6, 0x8($a1)
    /* 148BA8 801A2B38 8CC80000 */  lw         $t0, 0x0($a2)
    /* 148BAC 801A2B3C 8D090000 */  lw         $t1, 0x0($t0)
    /* 148BB0 801A2B40 00095080 */  sll        $t2, $t1, 2
    /* 148BB4 801A2B44 002A0821 */  addu       $at, $at, $t2
    /* 148BB8 801A2B48 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 148BBC 801A2B4C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 148BC0 801A2B50 44815000 */  mtc1       $at, $f10
    /* 148BC4 801A2B54 E4A8000C */  swc1       $f8, 0xC($a1)
    /* 148BC8 801A2B58 8C8C0000 */  lw         $t4, 0x0($a0)
    /* 148BCC 801A2B5C 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 148BD0 801A2B60 ACAC0010 */  sw         $t4, 0x10($a1)
    /* 148BD4 801A2B64 8C8B0004 */  lw         $t3, 0x4($a0)
    /* 148BD8 801A2B68 ACAB0014 */  sw         $t3, 0x14($a1)
    /* 148BDC 801A2B6C 8C8C0008 */  lw         $t4, 0x8($a0)
    /* 148BE0 801A2B70 ACAC0018 */  sw         $t4, 0x18($a1)
    /* 148BE4 801A2B74 8C8B000C */  lw         $t3, 0xC($a0)
    /* 148BE8 801A2B78 ACAB001C */  sw         $t3, 0x1C($a1)
    /* 148BEC 801A2B7C 8C8C0010 */  lw         $t4, 0x10($a0)
    /* 148BF0 801A2B80 ACAC0020 */  sw         $t4, 0x20($a1)
    /* 148BF4 801A2B84 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 148BF8 801A2B88 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 148BFC 801A2B8C 000E7880 */  sll        $t7, $t6, 2
    /* 148C00 801A2B90 002F0821 */  addu       $at, $at, $t7
    /* 148C04 801A2B94 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* 148C08 801A2B98 46105032 */  c.eq.s     $f10, $f16
    /* 148C0C 801A2B9C 00000000 */  nop
    /* 148C10 801A2BA0 45020018 */  bc1fl      .L801A2C04_ovl7
    /* 148C14 801A2BA4 44801000 */   mtc1      $zero, $f2
    /* 148C18 801A2BA8 44801000 */  mtc1       $zero, $f2
    /* 148C1C 801A2BAC C4A0001C */  lwc1       $f0, 0x1C($a1)
    /* 148C20 801A2BB0 4602003C */  c.lt.s     $f0, $f2
    /* 148C24 801A2BB4 00000000 */  nop
    /* 148C28 801A2BB8 45020005 */  bc1fl      .L801A2BD0_ovl7
    /* 148C2C 801A2BBC E4A0001C */   swc1      $f0, 0x1C($a1)
    /* 148C30 801A2BC0 46000487 */  neg.s      $f18, $f0
    /* 148C34 801A2BC4 10000002 */  b          .L801A2BD0_ovl7
    /* 148C38 801A2BC8 E4B2001C */   swc1      $f18, 0x1C($a1)
    /* 148C3C 801A2BCC E4A0001C */  swc1       $f0, 0x1C($a1)
  .L801A2BD0_ovl7:
    /* 148C40 801A2BD0 C4A00020 */  lwc1       $f0, 0x20($a1)
    /* 148C44 801A2BD4 4602003C */  c.lt.s     $f0, $f2
    /* 148C48 801A2BD8 00000000 */  nop
    /* 148C4C 801A2BDC 45020006 */  bc1fl      .L801A2BF8_ovl7
    /* 148C50 801A2BE0 46000207 */   neg.s     $f8, $f0
    /* 148C54 801A2BE4 46000107 */  neg.s      $f4, $f0
    /* 148C58 801A2BE8 46002187 */  neg.s      $f6, $f4
    /* 148C5C 801A2BEC 10000019 */  b          .L801A2C54_ovl7
    /* 148C60 801A2BF0 E4A60020 */   swc1      $f6, 0x20($a1)
    /* 148C64 801A2BF4 46000207 */  neg.s      $f8, $f0
  .L801A2BF8_ovl7:
    /* 148C68 801A2BF8 10000016 */  b          .L801A2C54_ovl7
    /* 148C6C 801A2BFC E4A80020 */   swc1      $f8, 0x20($a1)
    /* 148C70 801A2C00 44801000 */  mtc1       $zero, $f2
  .L801A2C04_ovl7:
    /* 148C74 801A2C04 C4A0001C */  lwc1       $f0, 0x1C($a1)
    /* 148C78 801A2C08 4602003C */  c.lt.s     $f0, $f2
    /* 148C7C 801A2C0C 00000000 */  nop
    /* 148C80 801A2C10 45020006 */  bc1fl      .L801A2C2C_ovl7
    /* 148C84 801A2C14 46000487 */   neg.s     $f18, $f0
    /* 148C88 801A2C18 46000287 */  neg.s      $f10, $f0
    /* 148C8C 801A2C1C 46005407 */  neg.s      $f16, $f10
    /* 148C90 801A2C20 10000003 */  b          .L801A2C30_ovl7
    /* 148C94 801A2C24 E4B0001C */   swc1      $f16, 0x1C($a1)
    /* 148C98 801A2C28 46000487 */  neg.s      $f18, $f0
  .L801A2C2C_ovl7:
    /* 148C9C 801A2C2C E4B2001C */  swc1       $f18, 0x1C($a1)
  .L801A2C30_ovl7:
    /* 148CA0 801A2C30 C4A00020 */  lwc1       $f0, 0x20($a1)
    /* 148CA4 801A2C34 4602003C */  c.lt.s     $f0, $f2
    /* 148CA8 801A2C38 00000000 */  nop
    /* 148CAC 801A2C3C 45020005 */  bc1fl      .L801A2C54_ovl7
    /* 148CB0 801A2C40 E4A00020 */   swc1      $f0, 0x20($a1)
    /* 148CB4 801A2C44 46000107 */  neg.s      $f4, $f0
    /* 148CB8 801A2C48 10000002 */  b          .L801A2C54_ovl7
    /* 148CBC 801A2C4C E4A40020 */   swc1      $f4, 0x20($a1)
    /* 148CC0 801A2C50 E4A00020 */  swc1       $f0, 0x20($a1)
  .L801A2C54_ovl7:
    /* 148CC4 801A2C54 8CD80000 */  lw         $t8, 0x0($a2)
    /* 148CC8 801A2C58 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* 148CCC 801A2C5C 8F190000 */  lw         $t9, 0x0($t8)
    /* 148CD0 801A2C60 00194080 */  sll        $t0, $t9, 2
    /* 148CD4 801A2C64 00280821 */  addu       $at, $at, $t0
    /* 148CD8 801A2C68 C42617D0 */  lwc1       $f6, %lo(D_800E17D0)($at)
    /* 148CDC 801A2C6C E4A60024 */  swc1       $f6, 0x24($a1)
  .L801A2C70_ovl7:
    /* 148CE0 801A2C70 03E00008 */  jr         $ra
    /* 148CE4 801A2C74 00000000 */   nop
endlabel func_801A2ADC_ovl7
.size func_801A2ADC_ovl7, . - func_801A2ADC_ovl7
