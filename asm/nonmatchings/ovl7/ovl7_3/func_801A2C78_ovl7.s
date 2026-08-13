nonmatching func_801A2C78_ovl7, 0x1EC

glabel func_801A2C78_ovl7
    /* 148CE8 801A2C78 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 148CEC 801A2C7C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 148CF0 801A2C80 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 148CF4 801A2C84 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 148CF8 801A2C88 8C640000 */  lw         $a0, 0x0($v1)
    /* 148CFC 801A2C8C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 148D00 801A2C90 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 148D04 801A2C94 00042080 */  sll        $a0, $a0, 2
    /* 148D08 801A2C98 00240821 */  addu       $at, $at, $a0
    /* 148D0C 801A2C9C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 148D10 801A2CA0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 148D14 801A2CA4 00441021 */  addu       $v0, $v0, $a0
    /* 148D18 801A2CA8 E7A4005C */  swc1       $f4, 0x5C($sp)
    /* 148D1C 801A2CAC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 148D20 801A2CB0 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
    /* 148D24 801A2CB4 27A60050 */  addiu      $a2, $sp, 0x50
    /* 148D28 801A2CB8 000E7880 */  sll        $t7, $t6, 2
    /* 148D2C 801A2CBC 002F0821 */  addu       $at, $at, $t7
    /* 148D30 801A2CC0 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 148D34 801A2CC4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 148D38 801A2CC8 27A7005C */  addiu      $a3, $sp, 0x5C
    /* 148D3C 801A2CCC 460C3200 */  add.s      $f8, $f6, $f12
    /* 148D40 801A2CD0 24050014 */  addiu      $a1, $zero, 0x14
    /* 148D44 801A2CD4 E7A80060 */  swc1       $f8, 0x60($sp)
    /* 148D48 801A2CD8 8C780000 */  lw         $t8, 0x0($v1)
    /* 148D4C 801A2CDC 0018C880 */  sll        $t9, $t8, 2
    /* 148D50 801A2CE0 00390821 */  addu       $at, $at, $t9
    /* 148D54 801A2CE4 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 148D58 801A2CE8 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* 148D5C 801A2CEC 27B90044 */  addiu      $t9, $sp, 0x44
    /* 148D60 801A2CF0 E7AA0064 */  swc1       $f10, 0x64($sp)
    /* 148D64 801A2CF4 8C680000 */  lw         $t0, 0x0($v1)
    /* 148D68 801A2CF8 27B80038 */  addiu      $t8, $sp, 0x38
    /* 148D6C 801A2CFC 00084880 */  sll        $t1, $t0, 2
    /* 148D70 801A2D00 00290821 */  addu       $at, $at, $t1
    /* 148D74 801A2D04 C4302B10 */  lwc1       $f16, %lo(gEntitiesPosXArray)($at)
    /* 148D78 801A2D08 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 148D7C 801A2D0C E7B00050 */  swc1       $f16, 0x50($sp)
    /* 148D80 801A2D10 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 148D84 801A2D14 000A5880 */  sll        $t3, $t2, 2
    /* 148D88 801A2D18 002B0821 */  addu       $at, $at, $t3
    /* 148D8C 801A2D1C C4322CD0 */  lwc1       $f18, %lo(gEntitiesPosYArray)($at)
    /* 148D90 801A2D20 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* 148D94 801A2D24 460C9100 */  add.s      $f4, $f18, $f12
    /* 148D98 801A2D28 E7A40054 */  swc1       $f4, 0x54($sp)
    /* 148D9C 801A2D2C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 148DA0 801A2D30 000C6880 */  sll        $t5, $t4, 2
    /* 148DA4 801A2D34 002D0821 */  addu       $at, $at, $t5
    /* 148DA8 801A2D38 C4262E90 */  lwc1       $f6, %lo(gEntitiesPosZArray)($at)
    /* 148DAC 801A2D3C E7A60058 */  swc1       $f6, 0x58($sp)
    /* 148DB0 801A2D40 8C4E0074 */  lw         $t6, 0x74($v0)
    /* 148DB4 801A2D44 15C00003 */  bnez       $t6, .L801A2D54_ovl7
    /* 148DB8 801A2D48 AFAE0028 */   sw        $t6, 0x28($sp)
    /* 148DBC 801A2D4C 10000041 */  b          .L801A2E54_ovl7
    /* 148DC0 801A2D50 00001025 */   or        $v0, $zero, $zero
  .L801A2D54_ovl7:
    /* 148DC4 801A2D54 8FA40028 */  lw         $a0, 0x28($sp)
    /* 148DC8 801A2D58 AFB80010 */  sw         $t8, 0x10($sp)
    /* 148DCC 801A2D5C AFB90014 */  sw         $t9, 0x14($sp)
    /* 148DD0 801A2D60 0C043812 */  jal        func_8010E048
    /* 148DD4 801A2D64 E7AC0068 */   swc1      $f12, 0x68($sp)
    /* 148DD8 801A2D68 14400003 */  bnez       $v0, .L801A2D78_ovl7
    /* 148DDC 801A2D6C C7AC0068 */   lwc1      $f12, 0x68($sp)
    /* 148DE0 801A2D70 10000038 */  b          .L801A2E54_ovl7
    /* 148DE4 801A2D74 00001025 */   or        $v0, $zero, $zero
  .L801A2D78_ovl7:
    /* 148DE8 801A2D78 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 148DEC 801A2D7C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 148DF0 801A2D80 3C08800F */  lui        $t0, %hi(D_800E8E60)
    /* 148DF4 801A2D84 24010001 */  addiu      $at, $zero, 0x1
    /* 148DF8 801A2D88 8C670000 */  lw         $a3, 0x0($v1)
    /* 148DFC 801A2D8C C7A80044 */  lwc1       $f8, 0x44($sp)
    /* 148E00 801A2D90 00072080 */  sll        $a0, $a3, 2
    /* 148E04 801A2D94 01044021 */  addu       $t0, $t0, $a0
    /* 148E08 801A2D98 8D088E60 */  lw         $t0, %lo(D_800E8E60)($t0)
    /* 148E0C 801A2D9C 1101001B */  beq        $t0, $at, .L801A2E0C_ovl7
    /* 148E10 801A2DA0 3C01800E */   lui       $at, %hi(gEntitiesNextPosXArray)
    /* 148E14 801A2DA4 00240821 */  addu       $at, $at, $a0
    /* 148E18 801A2DA8 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* 148E1C 801A2DAC 44807000 */  mtc1       $zero, $f14
    /* 148E20 801A2DB0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 148E24 801A2DB4 460A4001 */  sub.s      $f0, $f8, $f10
    /* 148E28 801A2DB8 00240821 */  addu       $at, $at, $a0
    /* 148E2C 801A2DBC C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* 148E30 801A2DC0 C7B0004C */  lwc1       $f16, 0x4C($sp)
    /* 148E34 801A2DC4 460E0032 */  c.eq.s     $f0, $f14
    /* 148E38 801A2DC8 46128081 */  sub.s      $f2, $f16, $f18
    /* 148E3C 801A2DCC 45020006 */  bc1fl      .L801A2DE8_ovl7
    /* 148E40 801A2DD0 44050000 */   mfc1      $a1, $f0
    /* 148E44 801A2DD4 460E1032 */  c.eq.s     $f2, $f14
    /* 148E48 801A2DD8 00000000 */  nop
    /* 148E4C 801A2DDC 4503000C */  bc1tl      .L801A2E10_ovl7
    /* 148E50 801A2DE0 C7A40044 */   lwc1      $f4, 0x44($sp)
    /* 148E54 801A2DE4 44050000 */  mfc1       $a1, $f0
  .L801A2DE8_ovl7:
    /* 148E58 801A2DE8 44061000 */  mfc1       $a2, $f2
    /* 148E5C 801A2DEC 00E02025 */  or         $a0, $a3, $zero
    /* 148E60 801A2DF0 0C03E1CA */  jal        func_800F8728
    /* 148E64 801A2DF4 E7AC0068 */   swc1      $f12, 0x68($sp)
    /* 148E68 801A2DF8 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 148E6C 801A2DFC 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 148E70 801A2E00 C7AC0068 */  lwc1       $f12, 0x68($sp)
    /* 148E74 801A2E04 8C640000 */  lw         $a0, 0x0($v1)
    /* 148E78 801A2E08 00042080 */  sll        $a0, $a0, 2
  .L801A2E0C_ovl7:
    /* 148E7C 801A2E0C C7A40044 */  lwc1       $f4, 0x44($sp)
  .L801A2E10_ovl7:
    /* 148E80 801A2E10 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 148E84 801A2E14 C7A60048 */  lwc1       $f6, 0x48($sp)
    /* 148E88 801A2E18 00240821 */  addu       $at, $at, $a0
    /* 148E8C 801A2E1C E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 148E90 801A2E20 8C690000 */  lw         $t1, 0x0($v1)
    /* 148E94 801A2E24 460C3201 */  sub.s      $f8, $f6, $f12
    /* 148E98 801A2E28 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 148E9C 801A2E2C 00095080 */  sll        $t2, $t1, 2
    /* 148EA0 801A2E30 002A0821 */  addu       $at, $at, $t2
    /* 148EA4 801A2E34 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* 148EA8 801A2E38 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 148EAC 801A2E3C C7AA004C */  lwc1       $f10, 0x4C($sp)
    /* 148EB0 801A2E40 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 148EB4 801A2E44 000B6080 */  sll        $t4, $t3, 2
    /* 148EB8 801A2E48 002C0821 */  addu       $at, $at, $t4
    /* 148EBC 801A2E4C 24020001 */  addiu      $v0, $zero, 0x1
    /* 148EC0 801A2E50 E42A2950 */  swc1       $f10, %lo(gEntitiesNextPosZArray)($at)
  .L801A2E54_ovl7:
    /* 148EC4 801A2E54 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 148EC8 801A2E58 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 148ECC 801A2E5C 03E00008 */  jr         $ra
    /* 148ED0 801A2E60 00000000 */   nop
endlabel func_801A2C78_ovl7
.size func_801A2C78_ovl7, . - func_801A2C78_ovl7
