glabel func_801E85B8_ovl10
/* 1D9328 801E85B8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D932C 801E85BC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D9330 801E85C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D9334 801E85C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D9338 801E85C8 AFA40018 */  sw         $a0, 0x18($sp)
glabel func_801E85CC_ovl9
/* 1D933C 801E85CC 8C4E0000 */  lw         $t6, 0x0($v0)
.L801E85D0_ovl16:
/* 1D9340 801E85D0 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D9344 801E85D4 24180001 */  addiu      $t8, $zero, 0x1
.L801E85D8_ovl16:
/* 1D9348 801E85D8 000E7880 */  sll        $t7, $t6, 2
/* 1D934C 801E85DC 002F0821 */  addu       $at, $at, $t7
/* 1D9350 801E85E0 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1D9354 801E85E4 8C590000 */  lw         $t9, 0x0($v0)
/* 1D9358 801E85E8 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1D935C 801E85EC 24090002 */  addiu      $t1, $zero, 0x2
/* 1D9360 801E85F0 00194080 */  sll        $t0, $t9, 2
/* 1D9364 801E85F4 00280821 */  addu       $at, $at, $t0
/* 1D9368 801E85F8 AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
/* 1D936C 801E85FC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1D9370 801E8600 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D9374 801E8604 3C0C801E */  lui        $t4, %hi(func_801DB1E0_ovl17)
/* 1D9378 801E8608 000A5880 */  sll        $t3, $t2, 2
/* 1D937C 801E860C 002B0821 */  addu       $at, $at, $t3
/* 1D9380 801E8610 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
.L801E8614_ovl16:
/* 1D9384 801E8614 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1D9388 801E8618 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1D938C 801E861C 258CB1E0 */  addiu      $t4, $t4, %lo(func_801DB1E0_ovl17)
/* 1D9390 801E8620 000D7080 */  sll        $t6, $t5, 2
/* 1D9394 801E8624 002E0821 */  addu       $at, $at, $t6
/* 1D9398 801E8628 AC2CEF90 */  sw         $t4, %lo(D_800DEF90)($at)
/* 1D939C 801E862C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1D93A0 801E8630 3C01800F */  lui        $at, %hi(D_800EA8A0)
.L801E8634_ovl16:
/* 1D93A4 801E8634 000FC880 */  sll        $t9, $t7, 2
/* 1D93A8 801E8638 00390821 */  addu       $at, $at, $t9
/* 1D93AC 801E863C 0C07973C */  jal        func_801E5CF0_ovl13
/* 1D93B0 801E8640 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 1D93B4 801E8644 3C040001 */  lui        $a0, (0x103A5 >> 16)
/* 1D93B8 801E8648 0C02A7A9 */  jal        func_800A9EA4
/* 1D93BC 801E864C 348403A5 */   ori       $a0, $a0, (0x103A5 & 0xFFFF)
/* 1D93C0 801E8650 3C040001 */  lui        $a0, (0x103A4 >> 16)
/* 1D93C4 801E8654 0C02A7A9 */  jal        func_800A9EA4
/* 1D93C8 801E8658 348403A4 */   ori       $a0, $a0, (0x103A4 & 0xFFFF)
/* 1D93CC 801E865C 0C002DAF */  jal        finish_current_thread
/* 1D93D0 801E8660 2404000F */   addiu     $a0, $zero, 0xF
/* 1D93D4 801E8664 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D93D8 801E8668 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D93DC 801E866C 3C014020 */  lui        $at, (0x40200000 >> 16)
/* 1D93E0 801E8670 44811000 */  mtc1       $at, $f2
/* 1D93E4 801E8674 8C480000 */  lw         $t0, 0x0($v0)
/* 1D93E8 801E8678 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D93EC 801E867C 24180001 */  addiu      $t8, $zero, 0x1
/* 1D93F0 801E8680 00085080 */  sll        $t2, $t0, 2
/* 1D93F4 801E8684 002A0821 */  addu       $at, $at, $t2
/* 1D93F8 801E8688 AC389E20 */  sw         $t8, %lo(D_800E9E20)($at)
/* 1D93FC 801E868C 8C490000 */  lw         $t1, 0x0($v0)
/* 1D9400 801E8690 44800000 */  mtc1       $zero, $f0
/* 1D9404 801E8694 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D9408 801E8698 00095880 */  sll        $t3, $t1, 2
/* 1D940C 801E869C 002B0821 */  addu       $at, $at, $t3
/* 1D9410 801E86A0 E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 1D9414 801E86A4 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1D9418 801E86A8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1D941C 801E86AC 000D6080 */  sll        $t4, $t5, 2
/* 1D9420 801E86B0 002C0821 */  addu       $at, $at, $t4
.L801E86B4_ovl16:
/* 1D9424 801E86B4 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1D9428 801E86B8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1D942C 801E86BC 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1D9430 801E86C0 000E7880 */  sll        $t7, $t6, 2
/* 1D9434 801E86C4 002F0821 */  addu       $at, $at, $t7
/* 1D9438 801E86C8 E4206690 */  swc1       $f0, %lo(D_800E6690)($at)
/* 1D943C 801E86CC 8C590000 */  lw         $t9, 0x0($v0)
/* 1D9440 801E86D0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1D9444 801E86D4 00194080 */  sll        $t0, $t9, 2
/* 1D9448 801E86D8 00280821 */  addu       $at, $at, $t0
/* 1D944C 801E86DC E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 1D9450 801E86E0 8C580000 */  lw         $t8, 0x0($v0)
/* 1D9454 801E86E4 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1D9458 801E86E8 00185080 */  sll        $t2, $t8, 2
/* 1D945C 801E86EC 002A0821 */  addu       $at, $at, $t2
/* 1D9460 801E86F0 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
glabel func_801E86F4_ovl16
/* 1D9464 801E86F4 8C490000 */  lw         $t1, 0x0($v0)
/* 1D9468 801E86F8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1D946C 801E86FC 00095880 */  sll        $t3, $t1, 2
/* 1D9470 801E8700 002B0821 */  addu       $at, $at, $t3
/* 1D9474 801E8704 0C02BE85 */  jal        func_800AFA14
/* 1D9478 801E8708 E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* 1D947C 801E870C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D9480 801E8710 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D9484 801E8714 03E00008 */  jr         $ra
/* 1D9488 801E8718 00000000 */   nop
