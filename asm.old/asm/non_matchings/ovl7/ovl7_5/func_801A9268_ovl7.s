glabel func_801A9268_ovl7
/* 14F2D8 801A9268 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14F2DC 801A926C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14F2E0 801A9270 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 14F2E4 801A9274 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14F2E8 801A9278 8C4E0000 */  lw    $t6, ($v0)
/* 14F2EC 801A927C 3C04800E */ lui $a0, %hi(D_800E1B50)
/* 14F2F0 801A9280 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 14F2F4 801A9284 000E7880 */  sll   $t7, $t6, 2
/* 14F2F8 801A9288 008F2021 */  addu  $a0, $a0, $t7
/* 14F2FC 801A928C 8C841B50 */ lw $a0, %lo(D_800E1B50)($a0)
/* 14F300 801A9290 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 14F304 801A9294 847900B4 */  lh    $t9, 0xb4($v1)
/* 14F308 801A9298 8C980088 */  lw    $t8, 0x88($a0)
/* 14F30C 801A929C 27280001 */  addiu $t0, $t9, 1
/* 14F310 801A92A0 8F05000C */  lw    $a1, 0xc($t8)
/* 14F314 801A92A4 8CA60000 */  lw    $a2, ($a1)
/* 14F318 801A92A8 A46800B4 */  sh    $t0, 0xb4($v1)
/* 14F31C 801A92AC 50C00009 */  beql  $a2, $zero, .L801A92D4_ovl7
/* 14F320 801A92B0 846C00B4 */   lh    $t4, 0xb4($v1)
/* 14F324 801A92B4 8CC4001C */  lw    $a0, 0x1c($a2)
/* 14F328 801A92B8 8C890000 */  lw    $t1, ($a0)
/* 14F32C 801A92BC 51200005 */  beql  $t1, $zero, .L801A92D4_ovl7
/* 14F330 801A92C0 846C00B4 */   lh    $t4, 0xb4($v1)
/* 14F334 801A92C4 906A0008 */  lbu   $t2, 8($v1)
/* 14F338 801A92C8 254B0001 */  addiu $t3, $t2, 1
/* 14F33C 801A92CC A06B0008 */  sb    $t3, 8($v1)
/* 14F340 801A92D0 846C00B4 */  lh    $t4, 0xb4($v1)
.L801A92D4_ovl7:
/* 14F344 801A92D4 24010001 */  li    $at, 1
/* 14F348 801A92D8 5581001E */  bnel  $t4, $at, .L801A9354_ovl7
/* 14F34C 801A92DC 8C620098 */   lw    $v0, 0x98($v1)
/* 14F350 801A92E0 AC6000AC */  sw    $zero, 0xac($v1)
/* 14F354 801A92E4 8C4D0000 */  lw    $t5, ($v0)
/* 14F358 801A92E8 3C0E800E */ lui $t6, %hi(D_800E76C0)
/* 14F35C 801A92EC 3C08800E */ lui $t0, %hi(D_800E7730)
/* 14F360 801A92F0 01CD7021 */  addu  $t6, $t6, $t5
/* 14F364 801A92F4 91CE76C0 */ lbu $t6, %lo(D_800E76C0)($t6)
/* 14F368 801A92F8 000E7E00 */  sll   $t7, $t6, 0x18
/* 14F36C 801A92FC AC6F00A8 */  sw    $t7, 0xa8($v1)
/* 14F370 801A9300 8C590000 */  lw    $t9, ($v0)
/* 14F374 801A9304 3C0E800E */ lui $t6, %hi(D_800E77A0)
/* 14F378 801A9308 01194021 */  addu  $t0, $t0, $t9
/* 14F37C 801A930C 91087730 */ lbu $t0, %lo(D_800E7730)($t0)
/* 14F380 801A9310 00084C00 */  sll   $t1, $t0, 0x10
/* 14F384 801A9314 01E95025 */  or    $t2, $t7, $t1
/* 14F388 801A9318 AC6A00A8 */  sw    $t2, 0xa8($v1)
/* 14F38C 801A931C 8C4C0000 */  lw    $t4, ($v0)
/* 14F390 801A9320 3C09800E */ lui $t1, %hi(D_800E7880)
/* 14F394 801A9324 000C6840 */  sll   $t5, $t4, 1
/* 14F398 801A9328 01CD7021 */  addu  $t6, $t6, $t5
/* 14F39C 801A932C 95CE77A0 */ lhu $t6, %lo(D_800E77A0)($t6)
/* 14F3A0 801A9330 000E7A00 */  sll   $t7, $t6, 8
/* 14F3A4 801A9334 014FC825 */  or    $t9, $t2, $t7
/* 14F3A8 801A9338 AC7900A8 */  sw    $t9, 0xa8($v1)
/* 14F3AC 801A933C 8C580000 */  lw    $t8, ($v0)
/* 14F3B0 801A9340 01384821 */  addu  $t1, $t1, $t8
/* 14F3B4 801A9344 91297880 */ lbu $t1, %lo(D_800E7880)($t1)
/* 14F3B8 801A9348 03295025 */  or    $t2, $t9, $t1
/* 14F3BC 801A934C AC6A00A8 */  sw    $t2, 0xa8($v1)
/* 14F3C0 801A9350 8C620098 */  lw    $v0, 0x98($v1)
.L801A9354_ovl7:
/* 14F3C4 801A9354 54400006 */  bnezl $v0, .L801A9370_ovl7
/* 14F3C8 801A9358 8C6E009C */   lw    $t6, 0x9c($v1)
/* 14F3CC 801A935C 8CCC001C */  lw    $t4, 0x1c($a2)
/* 14F3D0 801A9360 8D8D0004 */  lw    $t5, 4($t4)
/* 14F3D4 801A9364 10000011 */  b     .L801A93AC_ovl7
/* 14F3D8 801A9368 AC6D0098 */   sw    $t5, 0x98($v1)
/* 14F3DC 801A936C 8C6E009C */  lw    $t6, 0x9c($v1)
.L801A9370_ovl7:
/* 14F3E0 801A9370 28410008 */  slti  $at, $v0, 8
/* 14F3E4 801A9374 15C00005 */  bnez  $t6, .L801A938C_ovl7
/* 14F3E8 801A9378 00000000 */   nop   
/* 14F3EC 801A937C 8CCB001C */  lw    $t3, 0x1c($a2)
/* 14F3F0 801A9380 8D6F0004 */  lw    $t7, 4($t3)
/* 14F3F4 801A9384 10000009 */  b     .L801A93AC_ovl7
/* 14F3F8 801A9388 AC6F009C */   sw    $t7, 0x9c($v1)
.L801A938C_ovl7:
/* 14F3FC 801A938C 10200007 */  beqz  $at, .L801A93AC_ovl7
/* 14F400 801A9390 00000000 */   nop   
/* 14F404 801A9394 8CD9001C */  lw    $t9, 0x1c($a2)
/* 14F408 801A9398 8F220004 */  lw    $v0, 4($t9)
/* 14F40C 801A939C 28410008 */  slti  $at, $v0, 8
/* 14F410 801A93A0 14200002 */  bnez  $at, .L801A93AC_ovl7
/* 14F414 801A93A4 00000000 */   nop   
/* 14F418 801A93A8 AC620098 */  sw    $v0, 0x98($v1)
.L801A93AC_ovl7:
/* 14F41C 801A93AC 0C06A536 */  jal   func_801A94D8_ovl7
/* 14F420 801A93B0 AFA60018 */   sw    $a2, 0x18($sp)
/* 14F424 801A93B4 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 14F428 801A93B8 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 14F42C 801A93BC 847800B2 */  lh    $t8, 0xb2($v1)
/* 14F430 801A93C0 846800B4 */  lh    $t0, 0xb4($v1)
/* 14F434 801A93C4 8FA60018 */  lw    $a2, 0x18($sp)
/* 14F438 801A93C8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14F43C 801A93CC 13080004 */  beq   $t8, $t0, .L801A93E0_ovl7
/* 14F440 801A93D0 00000000 */   nop   
/* 14F444 801A93D4 44802000 */  mtc1  $zero, $f4
/* 14F448 801A93D8 3C01801A */  lui   $at, %hi(D_80198820) # $at, 0x801a
/* 14F44C 801A93DC E4248820 */  swc1  $f4, %lo(D_80198820)($at)
.L801A93E0_ovl7:
/* 14F450 801A93E0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14F454 801A93E4 C4C60010 */  lwc1  $f6, 0x10($a2)
/* 14F458 801A93E8 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 14F45C 801A93EC 8C490000 */  lw    $t1, ($v0)
/* 14F460 801A93F0 3C19800E */  lui   $t9, %hi(D_800E76C0) # $t9, 0x800e
/* 14F464 801A93F4 273976C0 */  addiu $t9, %lo(D_800E76C0) # addiu $t9, $t9, 0x76c0
/* 14F468 801A93F8 00095080 */  sll   $t2, $t1, 2
/* 14F46C 801A93FC 002A0821 */  addu  $at, $at, $t2
/* 14F470 801A9400 E4264550 */ swc1 $f6, %lo(gEntitiesScaleXArray)($at)
/* 14F474 801A9404 8C4C0000 */  lw    $t4, ($v0)
/* 14F478 801A9408 C4C80010 */  lwc1  $f8, 0x10($a2)
/* 14F47C 801A940C 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 14F480 801A9410 000C6880 */  sll   $t5, $t4, 2
/* 14F484 801A9414 002D0821 */  addu  $at, $at, $t5
/* 14F488 801A9418 E4284710 */ swc1 $f8, %lo(gEntitiesScaleYArray)($at)
/* 14F48C 801A941C 8C4E0000 */  lw    $t6, ($v0)
/* 14F490 801A9420 C4CA0010 */  lwc1  $f10, 0x10($a2)
/* 14F494 801A9424 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 14F498 801A9428 000E5880 */  sll   $t3, $t6, 2
/* 14F49C 801A942C 002B0821 */  addu  $at, $at, $t3
/* 14F4A0 801A9430 E42A48D0 */ swc1 $f10, %lo(gEntitiesScaleZArray)($at)
/* 14F4A4 801A9434 8C4F0000 */  lw    $t7, ($v0)
/* 14F4A8 801A9438 3C188013 */  lui   $t8, %hi(D_801290E0) # $t8, 0x8013
/* 14F4AC 801A943C 01F92021 */  addu  $a0, $t7, $t9
/* 14F4B0 801A9440 90850000 */  lbu   $a1, ($a0)
/* 14F4B4 801A9444 28A10040 */  slti  $at, $a1, 0x40
/* 14F4B8 801A9448 10200014 */  beqz  $at, .L801A949C_ovl7
/* 14F4BC 801A944C 00054080 */   sll   $t0, $a1, 2
/* 14F4C0 801A9450 01054023 */  subu  $t0, $t0, $a1
/* 14F4C4 801A9454 8F1890E0 */  lw    $t8, %lo(D_801290E0)($t8)
/* 14F4C8 801A9458 00084080 */  sll   $t0, $t0, 2
/* 14F4CC 801A945C 01054023 */  subu  $t0, $t0, $a1
/* 14F4D0 801A9460 00084080 */  sll   $t0, $t0, 2
/* 14F4D4 801A9464 03084821 */  addu  $t1, $t8, $t0
/* 14F4D8 801A9468 912A0005 */  lbu   $t2, 5($t1)
/* 14F4DC 801A946C 3C0D800D */  lui   $t5, %hi(D_800D6C90) # $t5, 0x800d
/* 14F4E0 801A9470 25AD6C90 */  addiu $t5, %lo(D_800D6C90) # addiu $t5, $t5, 0x6c90
/* 14F4E4 801A9474 314C0001 */  andi  $t4, $t2, 1
/* 14F4E8 801A9478 11800008 */  beqz  $t4, .L801A949C_ovl7
/* 14F4EC 801A947C 00AD1821 */   addu  $v1, $a1, $t5
/* 14F4F0 801A9480 906E0000 */  lbu   $t6, ($v1)
/* 14F4F4 801A9484 3C19800E */  lui   $t9, %hi(D_800E76C0) # $t9, 0x800e
/* 14F4F8 801A9488 273976C0 */  addiu $t9, %lo(D_800E76C0) # addiu $t9, $t9, 0x76c0
/* 14F4FC 801A948C 31CB0080 */  andi  $t3, $t6, 0x80
/* 14F500 801A9490 A06B0000 */  sb    $t3, ($v1)
/* 14F504 801A9494 8C4F0000 */  lw    $t7, ($v0)
/* 14F508 801A9498 01F92021 */  addu  $a0, $t7, $t9
.L801A949C_ovl7:
/* 14F50C 801A949C 241800FF */  li    $t8, 255
/* 14F510 801A94A0 0C066ED6 */  jal   func_8019BB58_ovl7
/* 14F514 801A94A4 A0980000 */   sb    $t8, ($a0)
/* 14F518 801A94A8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14F51C 801A94AC 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14F520 801A94B0 3C04800E */ lui $a0, %hi(D_800DE350)
/* 14F524 801A94B4 8D090000 */  lw    $t1, ($t0)
/* 14F528 801A94B8 00095080 */  sll   $t2, $t1, 2
/* 14F52C 801A94BC 008A2021 */  addu  $a0, $a0, $t2
/* 14F530 801A94C0 0C0288C0 */  jal   func_800A2300
/* 14F534 801A94C4 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 14F538 801A94C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14F53C 801A94CC 27BD0028 */  addiu $sp, $sp, 0x28
/* 14F540 801A94D0 03E00008 */  jr    $ra
/* 14F544 801A94D4 00000000 */   nop   
.type func_801A9268_ovl7, @function
.size func_801A9268_ovl7, . - func_801A9268_ovl7
