glabel func_801EC4CC_ovl10
/* 1DD23C 801EC4CC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1DD240 801EC4D0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1DD244 801EC4D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1DD248 801EC4D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DD24C 801EC4DC AFA40020 */  sw         $a0, 0x20($sp)
/* 1DD250 801EC4E0 8DC20000 */  lw         $v0, 0x0($t6)
/* 1DD254 801EC4E4 3C03800F */  lui        $v1, %hi(D_800E9E20)
/* 1DD258 801EC4E8 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 1DD25C 801EC4EC 00021080 */  sll        $v0, $v0, 2
/* 1DD260 801EC4F0 00621821 */  addu       $v1, $v1, $v0
/* 1DD264 801EC4F4 8C639E20 */  lw         $v1, %lo(D_800E9E20)($v1)
/* 1DD268 801EC4F8 01E27821 */  addu       $t7, $t7, $v0
/* 1DD26C 801EC4FC 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 1DD270 801EC500 1860001D */  blez       $v1, .L801EC578_ovl10
/* 1DD274 801EC504 AFAF0018 */   sw        $t7, 0x18($sp)
/* 1DD278 801EC508 04610004 */  bgez       $v1, .L801EC51C_ovl10
/* 1DD27C 801EC50C 30780001 */   andi      $t8, $v1, 0x1
/* 1DD280 801EC510 13000002 */  beqz       $t8, .L801EC51C_ovl10
/* 1DD284 801EC514 00000000 */   nop
/* 1DD288 801EC518 2718FFFE */  addiu      $t8, $t8, -0x2
.L801EC51C_ovl10:
/* 1DD28C 801EC51C 1B000003 */  blez       $t8, .L801EC52C_ovl10
/* 1DD290 801EC520 28610002 */   slti      $at, $v1, 0x2
/* 1DD294 801EC524 10200007 */  beqz       $at, .L801EC544_ovl10
/* 1DD298 801EC528 8FA40020 */   lw        $a0, 0x20($sp)
.L801EC52C_ovl10:
/* 1DD29C 801EC52C 3C05801F */  lui        $a1, %hi(func_801F4588_ovl10 + 0xD4)
/* 1DD2A0 801EC530 24A5465C */  addiu      $a1, $a1, %lo(func_801F4588_ovl10 + 0xD4)
/* 1DD2A4 801EC534 0C07BC3C */  jal        func_801EF0F0_ovl10
/* 1DD2A8 801EC538 8FA40020 */   lw        $a0, 0x20($sp)
/* 1DD2AC 801EC53C 10000004 */  b          .L801EC550_ovl10
/* 1DD2B0 801EC540 00000000 */   nop
.L801EC544_ovl10:
/* 1DD2B4 801EC544 3C05801F */  lui        $a1, %hi(func_801F4588_ovl10 + 0xD8)
/* 1DD2B8 801EC548 0C07BC3C */  jal        func_801EF0F0_ovl10
/* 1DD2BC 801EC54C 24A54660 */   addiu     $a1, $a1, %lo(func_801F4588_ovl10 + 0xD8)
.L801EC550_ovl10:
/* 1DD2C0 801EC550 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1DD2C4 801EC554 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1DD2C8 801EC558 3C0A800F */  lui        $t2, %hi(D_800E9E20)
/* 1DD2CC 801EC55C 254A9E20 */  addiu      $t2, $t2, %lo(D_800E9E20)
/* 1DD2D0 801EC560 8F280000 */  lw         $t0, 0x0($t9)
/* 1DD2D4 801EC564 00084880 */  sll        $t1, $t0, 2
/* 1DD2D8 801EC568 012A1021 */  addu       $v0, $t1, $t2
/* 1DD2DC 801EC56C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1DD2E0 801EC570 256CFFFF */  addiu      $t4, $t3, -0x1
/* 1DD2E4 801EC574 AC4C0000 */  sw         $t4, 0x0($v0)
.L801EC578_ovl10:
/* 1DD2E8 801EC578 0C06835D */  jal        func_801A0D74_ovl7
/* 1DD2EC 801EC57C 8FA40020 */   lw        $a0, 0x20($sp)
/* 1DD2F0 801EC580 44823000 */  mtc1       $v0, $f6
/* 1DD2F4 801EC584 44802000 */  mtc1       $zero, $f4
/* 1DD2F8 801EC588 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1DD2FC 801EC58C 46803220 */  cvt.s.w    $f8, $f6
/* 1DD300 801EC590 46082032 */  c.eq.s     $f4, $f8
/* 1DD304 801EC594 00000000 */  nop
glabel func_801EC598_ovl9
/* 1DD308 801EC598 4500000B */  bc1f       .L801EC5C8_ovl10
/* 1DD30C 801EC59C 00000000 */   nop
/* 1DD310 801EC5A0 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1DD314 801EC5A4 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 1DD318 801EC5A8 3C06801F */  lui        $a2, %hi(func_801F4588_ovl10 + 0x98)
/* 1DD31C 801EC5AC 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1DD320 801EC5B0 24C64620 */  addiu      $a2, $a2, %lo(func_801F4588_ovl10 + 0x98)
/* 1DD324 801EC5B4 2405000F */  addiu      $a1, $zero, 0xF
/* 1DD328 801EC5B8 000E7880 */  sll        $t7, $t6, 2
/* 1DD32C 801EC5BC 008F2021 */  addu       $a0, $a0, $t7
/* 1DD330 801EC5C0 0C02911F */  jal        call_virtual_function
/* 1DD334 801EC5C4 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
.L801EC5C8_ovl10:
/* 1DD338 801EC5C8 0C07BACC */  jal        func_801EEB30_ovl10
/* 1DD33C 801EC5CC 00000000 */   nop
/* 1DD340 801EC5D0 44828000 */  mtc1       $v0, $f16
/* 1DD344 801EC5D4 44805000 */  mtc1       $zero, $f10
/* 1DD348 801EC5D8 8FB80018 */  lw         $t8, 0x18($sp)
/* 1DD34C 801EC5DC 468084A0 */  cvt.s.w    $f18, $f16
/* 1DD350 801EC5E0 46125032 */  c.eq.s     $f10, $f18
/* 1DD354 801EC5E4 00000000 */  nop
/* 1DD358 801EC5E8 45020038 */  bc1fl      .L801EC6CC_ovl10
/* 1DD35C 801EC5EC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1DD360 801EC5F0 9319003C */  lbu        $t9, 0x3C($t8)
/* 1DD364 801EC5F4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 1DD368 801EC5F8 57200034 */  bnel       $t9, $zero, .L801EC6CC_ovl10
/* 1DD36C 801EC5FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1DD370 801EC600 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 1DD374 801EC604 3C02800F */  lui        $v0, %hi(D_800E9AA0)
/* 1DD378 801EC608 24010001 */  addiu      $at, $zero, 0x1
/* 1DD37C 801EC60C 8D090000 */  lw         $t1, 0x0($t0)
/* 1DD380 801EC610 00095080 */  sll        $t2, $t1, 2
.L801EC614_ovl16:
/* 1DD384 801EC614 004A1021 */  addu       $v0, $v0, $t2
.L801EC618_ovl16:
/* 1DD388 801EC618 8C429AA0 */  lw         $v0, %lo(D_800E9AA0)($v0)
/* 1DD38C 801EC61C 10410007 */  beq        $v0, $at, .L801EC63C_ovl10
/* 1DD390 801EC620 24010002 */   addiu     $at, $zero, 0x2
.L801EC624_ovl16:
/* 1DD394 801EC624 10410011 */  beq        $v0, $at, .L801EC66C_ovl10
/* 1DD398 801EC628 24010003 */   addiu     $at, $zero, 0x3
/* 1DD39C 801EC62C 10410024 */  beq        $v0, $at, .L801EC6C0_ovl10
/* 1DD3A0 801EC630 00000000 */   nop
/* 1DD3A4 801EC634 10000025 */  b          .L801EC6CC_ovl10
/* 1DD3A8 801EC638 8FBF0014 */   lw        $ra, 0x14($sp)
.L801EC63C_ovl10:
/* 1DD3AC 801EC63C 0C07BB91 */  jal        func_801EEE44_ovl10
/* 1DD3B0 801EC640 8FA40020 */   lw        $a0, 0x20($sp)
/* 1DD3B4 801EC644 10400020 */  beqz       $v0, .L801EC6C8_ovl10
/* 1DD3B8 801EC648 3C0C8005 */   lui       $t4, %hi(D_8004A7C4)
.L801EC64C_ovl16:
/* 1DD3BC 801EC64C 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 1DD3C0 801EC650 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1DD3C4 801EC654 240B0001 */  addiu      $t3, $zero, 0x1
/* 1DD3C8 801EC658 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1DD3CC 801EC65C 000D7080 */  sll        $t6, $t5, 2
.L801EC660_ovl16:
/* 1DD3D0 801EC660 002E0821 */  addu       $at, $at, $t6
/* 1DD3D4 801EC664 10000018 */  b          .L801EC6C8_ovl10
/* 1DD3D8 801EC668 AC2B9C60 */   sw        $t3, %lo(D_800E9C60)($at)
.L801EC66C_ovl10:
/* 1DD3DC 801EC66C 0C07BBB5 */  jal        func_801EEED4_ovl10
/* 1DD3E0 801EC670 8FA40020 */   lw        $a0, 0x20($sp)
/* 1DD3E4 801EC674 10400014 */  beqz       $v0, .L801EC6C8_ovl10
/* 1DD3E8 801EC678 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* 1DD3EC 801EC67C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DD3F0 801EC680 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801EC684_ovl16:
/* 1DD3F4 801EC684 240F0009 */  addiu      $t7, $zero, 0x9
.L801EC688_ovl16:
/* 1DD3F8 801EC688 8C580000 */  lw         $t8, 0x0($v0)
/* 1DD3FC 801EC68C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1DD400 801EC690 3C05801F */  lui        $a1, %hi(func_801EC3C8_ovl10)
/* 1DD404 801EC694 0018C880 */  sll        $t9, $t8, 2
/* 1DD408 801EC698 00390821 */  addu       $at, $at, $t9
/* 1DD40C 801EC69C AC2FDC50 */  sw         $t7, %lo(gEntityVtableIndexArray)($at)
/* 1DD410 801EC6A0 8C480000 */  lw         $t0, 0x0($v0)
/* 1DD414 801EC6A4 24A5C3C8 */  addiu      $a1, $a1, %lo(func_801EC3C8_ovl10)
/* 1DD418 801EC6A8 00084880 */  sll        $t1, $t0, 2
/* 1DD41C 801EC6AC 00892021 */  addu       $a0, $a0, $t1
/* 1DD420 801EC6B0 0C02C7B2 */  jal        assign_new_process_entry
/* 1DD424 801EC6B4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1DD428 801EC6B8 10000004 */  b          .L801EC6CC_ovl10
/* 1DD42C 801EC6BC 8FBF0014 */   lw        $ra, 0x14($sp)
.L801EC6C0_ovl10:
/* 1DD430 801EC6C0 0C07BBD3 */  jal        func_801EEF4C_ovl10
/* 1DD434 801EC6C4 8FA40020 */   lw        $a0, 0x20($sp)
.L801EC6C8_ovl10:
/* 1DD438 801EC6C8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801EC6CC_ovl10:
/* 1DD43C 801EC6CC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1DD440 801EC6D0 03E00008 */  jr         $ra
/* 1DD444 801EC6D4 00000000 */   nop
