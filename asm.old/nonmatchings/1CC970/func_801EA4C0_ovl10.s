glabel func_801EA4C0_ovl10
/* 1DB230 801EA4C0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1DB234 801EA4C4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1DB238 801EA4C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1DB23C 801EA4CC AFBF001C */  sw         $ra, 0x1C($sp)
/* 1DB240 801EA4D0 8DC20000 */  lw         $v0, 0x0($t6)
/* 1DB244 801EA4D4 3C0F800F */  lui        $t7, %hi(D_800E9720)
/* 1DB248 801EA4D8 44800000 */  mtc1       $zero, $f0
.L801EA4DC_ovl9:
/* 1DB24C 801EA4DC 00021080 */  sll        $v0, $v0, 2
/* 1DB250 801EA4E0 01E27821 */  addu       $t7, $t7, $v0
/* 1DB254 801EA4E4 8DEF9720 */  lw         $t7, %lo(D_800E9720)($t7)
/* 1DB258 801EA4E8 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 1DB25C 801EA4EC 3C07800F */  lui        $a3, %hi(D_800EADE0)
.L801EA4F0_ovl9:
/* 1DB260 801EA4F0 448F2000 */  mtc1       $t7, $f4
/* 1DB264 801EA4F4 00E23821 */  addu       $a3, $a3, $v0
.L801EA4F8_ovl16:
/* 1DB268 801EA4F8 00220821 */  addu       $at, $at, $v0
/* 1DB26C 801EA4FC 44060000 */  mfc1       $a2, $f0
.L801EA500_ovl9:
/* 1DB270 801EA500 C42CAA60 */  lwc1       $f12, %lo(D_800EAA60)($at)
/* 1DB274 801EA504 8CE7ADE0 */  lw         $a3, %lo(D_800EADE0)($a3)
/* 1DB278 801EA508 E7A00010 */  swc1       $f0, 0x10($sp)
.L801EA50C_ovl16:
/* 1DB27C 801EA50C E7A00014 */  swc1       $f0, 0x14($sp)
.L801EA510_ovl9:
/* 1DB280 801EA510 0C003386 */  jal        func_8000CE18
/* 1DB284 801EA514 468023A0 */   cvt.s.w   $f14, $f4
/* 1DB288 801EA518 3C01801F */  lui        $at, %hi(func_801F4B30_ovl10 + 0x38)
/* 1DB28C 801EA51C C4264B68 */  lwc1       $f6, %lo(func_801F4B30_ovl10 + 0x38)($at)
/* 1DB290 801EA520 46060300 */  add.s      $f12, $f0, $f6
/* 1DB294 801EA524 0C00D604 */  jal        cosf
/* 1DB298 801EA528 E7AC0020 */   swc1      $f12, 0x20($sp)
/* 1DB29C 801EA52C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1DB2A0 801EA530 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1DB2A4 801EA534 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 1DB2A8 801EA538 C7AC0020 */  lwc1       $f12, 0x20($sp)
/* 1DB2AC 801EA53C 8F190000 */  lw         $t9, 0x0($t8)
/* 1DB2B0 801EA540 00194080 */  sll        $t0, $t9, 2
/* 1DB2B4 801EA544 00280821 */  addu       $at, $at, $t0
/* 1DB2B8 801EA548 C428AC20 */  lwc1       $f8, %lo(D_800EAC20)($at)
/* 1DB2BC 801EA54C 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
/* 1DB2C0 801EA550 44818000 */  mtc1       $at, $f16
/* 1DB2C4 801EA554 46004282 */  mul.s      $f10, $f8, $f0
/* 1DB2C8 801EA558 00000000 */  nop
/* 1DB2CC 801EA55C 46105482 */  mul.s      $f18, $f10, $f16
/* 1DB2D0 801EA560 0C00B5B8 */  jal        sinf
/* 1DB2D4 801EA564 E7B20024 */   swc1      $f18, 0x24($sp)
glabel func_801EA568_ovl16
/* 1DB2D8 801EA568 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1DB2DC 801EA56C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1DB2E0 801EA570 3C01800F */  lui        $at, %hi(D_800EAC20)
.L801EA574_ovl9:
/* 1DB2E4 801EA574 3C09800F */  lui        $t1, %hi(D_800E98E0)
/* 1DB2E8 801EA578 8C620000 */  lw         $v0, 0x0($v1)
/* 1DB2EC 801EA57C 8FA50024 */  lw         $a1, 0x24($sp)
/* 1DB2F0 801EA580 00021080 */  sll        $v0, $v0, 2
/* 1DB2F4 801EA584 00220821 */  addu       $at, $at, $v0
/* 1DB2F8 801EA588 C424AC20 */  lwc1       $f4, %lo(D_800EAC20)($at)
/* 1DB2FC 801EA58C 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 1DB300 801EA590 44814000 */  mtc1       $at, $f8
/* 1DB304 801EA594 46002182 */  mul.s      $f6, $f4, $f0
/* 1DB308 801EA598 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 1DB30C 801EA59C 00220821 */  addu       $at, $at, $v0
/* 1DB310 801EA5A0 C42AAFA0 */  lwc1       $f10, %lo(D_800EAFA0)($at)
/* 1DB314 801EA5A4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1DB318 801EA5A8 00220821 */  addu       $at, $at, $v0
/* 1DB31C 801EA5AC 46083082 */  mul.s      $f2, $f6, $f8
/* 1DB320 801EA5B0 46025400 */  add.s      $f16, $f10, $f2
/* 1DB324 801EA5B4 E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 1DB328 801EA5B8 8C620000 */  lw         $v0, 0x0($v1)
.L801EA5BC_ovl9:
/* 1DB32C 801EA5BC 3C01800E */  lui        $at, %hi(D_800E5F90)
.L801EA5C0_ovl9:
/* 1DB330 801EA5C0 00021080 */  sll        $v0, $v0, 2
/* 1DB334 801EA5C4 01224821 */  addu       $t1, $t1, $v0
/* 1DB338 801EA5C8 8D2998E0 */  lw         $t1, %lo(D_800E98E0)($t1)
/* 1DB33C 801EA5CC 00220821 */  addu       $at, $at, $v0
/* 1DB340 801EA5D0 AC295F90 */  sw         $t1, %lo(D_800E5F90)($at)
/* 1DB344 801EA5D4 8C620000 */  lw         $v0, 0x0($v1)
/* 1DB348 801EA5D8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1DB34C 801EA5DC 00021080 */  sll        $v0, $v0, 2
/* 1DB350 801EA5E0 00220821 */  addu       $at, $at, $v0
/* 1DB354 801EA5E4 C432A6E0 */  lwc1       $f18, %lo(D_800EA6E0)($at)
/* 1DB358 801EA5E8 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 1DB35C 801EA5EC 00220821 */  addu       $at, $at, $v0
/* 1DB360 801EA5F0 E4326BD0 */  swc1       $f18, %lo(D_800E6BD0)($at)
/* 1DB364 801EA5F4 0C03E63B */  jal        func_800F98EC
/* 1DB368 801EA5F8 8C640000 */   lw        $a0, 0x0($v1)
.L801EA5FC_ovl16:
/* 1DB36C 801EA5FC 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 1DB370 801EA600 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 1DB374 801EA604 3C0D800F */  lui        $t5, %hi(D_800E9720)
/* 1DB378 801EA608 25AD9720 */  addiu      $t5, $t5, %lo(D_800E9720)
/* 1DB37C 801EA60C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1DB380 801EA610 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1DB384 801EA614 000B6080 */  sll        $t4, $t3, 2
/* 1DB388 801EA618 018D1021 */  addu       $v0, $t4, $t5
/* 1DB38C 801EA61C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1DB390 801EA620 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1DB394 801EA624 25CF0001 */  addiu      $t7, $t6, 0x1
glabel func_801EA628_ovl9
/* 1DB398 801EA628 03E00008 */  jr         $ra
.L801EA62C_ovl16:
/* 1DB39C 801EA62C AC4F0000 */   sw        $t7, 0x0($v0)
