glabel func_8016B410_ovl3
/* CBE50 8016B410 3C0E800C */  lui        $t6, %hi(D_800BE500)
/* CBE54 8016B414 8DCEE500 */  lw         $t6, %lo(D_800BE500)($t6)
/* CBE58 8016B418 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBE5C 8016B41C 24010004 */  addiu      $at, $zero, 0x4
/* CBE60 8016B420 AFBF0014 */  sw         $ra, 0x14($sp)
/* CBE64 8016B424 15C10015 */  bne        $t6, $at, .L8016B47C_ovl3
/* CBE68 8016B428 AFA40018 */   sw        $a0, 0x18($sp)
/* CBE6C 8016B42C 3C0F800C */  lui        $t7, %hi(D_800BE504)
/* CBE70 8016B430 8DEFE504 */  lw         $t7, %lo(D_800BE504)($t7)
/* CBE74 8016B434 24010001 */  addiu      $at, $zero, 0x1
/* CBE78 8016B438 3C18800C */  lui        $t8, %hi(D_800BE508)
/* CBE7C 8016B43C 15E1000F */  bne        $t7, $at, .L8016B47C_ovl3
/* CBE80 8016B440 00000000 */   nop
/* CBE84 8016B444 8F18E508 */  lw         $t8, %lo(D_800BE508)($t8)
/* CBE88 8016B448 3C028013 */  lui        $v0, %hi(D_801292B0)
/* CBE8C 8016B44C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* CBE90 8016B450 1700000A */  bnez       $t8, .L8016B47C_ovl3
/* CBE94 8016B454 00000000 */   nop
/* CBE98 8016B458 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* CBE9C 8016B45C 244292B0 */  addiu      $v0, $v0, %lo(D_801292B0)
/* CBEA0 8016B460 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* CBEA4 8016B464 E4440000 */  swc1       $f4, 0x0($v0)
/* CBEA8 8016B468 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* CBEAC 8016B46C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
.L8016B470_ovl5:
/* CBEB0 8016B470 E4460004 */  swc1       $f6, 0x4($v0)
/* CBEB4 8016B474 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* CBEB8 8016B478 E4480008 */  swc1       $f8, 0x8($v0)
.L8016B47C_ovl3:
/* CBEBC 8016B47C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* CBEC0 8016B480 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CBEC4 8016B484 3C19800F */  lui        $t9, %hi(D_800E98E0)
/* CBEC8 8016B488 8C620000 */  lw         $v0, 0x0($v1)
/* CBECC 8016B48C 00021080 */  sll        $v0, $v0, 2
/* CBED0 8016B490 0322C821 */  addu       $t9, $t9, $v0
/* CBED4 8016B494 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
/* CBED8 8016B498 2F210007 */  sltiu      $at, $t9, 0x7
/* CBEDC 8016B49C 102000A5 */  beqz       $at, .L8016B734_ovl3
/* CBEE0 8016B4A0 0019C880 */   sll       $t9, $t9, 2
.L8016B4A4_ovl5:
/* CBEE4 8016B4A4 3C018019 */  lui        $at, %hi(jtbl_80197250_ovl3)
.L8016B4A8_ovl5:
/* CBEE8 8016B4A8 00390821 */  addu       $at, $at, $t9
/* CBEEC 8016B4AC 8C397250 */  lw         $t9, %lo(jtbl_80197250_ovl3)($at)
/* CBEF0 8016B4B0 03200008 */  jr         $t9
/* CBEF4 8016B4B4 00000000 */   nop
/* CBEF8 8016B4B8 3C09800E */  lui        $t1, %hi(gEntitiesNextPosXArray)
/* CBEFC 8016B4BC 252925D0 */  addiu      $t1, $t1, %lo(gEntitiesNextPosXArray)
/* CBF00 8016B4C0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* CBF04 8016B4C4 00220821 */  addu       $at, $at, $v0
/* CBF08 8016B4C8 00492021 */  addu       $a0, $v0, $t1
/* CBF0C 8016B4CC C48A0000 */  lwc1       $f10, 0x0($a0)
.L8016B4D0_ovl5:
/* CBF10 8016B4D0 C430A6E0 */  lwc1       $f16, %lo(D_800EA6E0)($at)
/* CBF14 8016B4D4 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* CBF18 8016B4D8 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* CBF1C 8016B4DC 46105480 */  add.s      $f18, $f10, $f16
/* CBF20 8016B4E0 3C01800F */  lui        $at, %hi(D_800EA8A0)
.L8016B4E4_ovl5:
/* CBF24 8016B4E4 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosZArray)
/* CBF28 8016B4E8 256B2950 */  addiu      $t3, $t3, %lo(gEntitiesNextPosZArray)
/* CBF2C 8016B4EC E4920000 */  swc1       $f18, 0x0($a0)
/* CBF30 8016B4F0 8C620000 */  lw         $v0, 0x0($v1)
/* CBF34 8016B4F4 00021080 */  sll        $v0, $v0, 2
/* CBF38 8016B4F8 004A2821 */  addu       $a1, $v0, $t2
/* CBF3C 8016B4FC 00220821 */  addu       $at, $at, $v0
/* CBF40 8016B500 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* CBF44 8016B504 C4A40000 */  lwc1       $f4, 0x0($a1)
/* CBF48 8016B508 3C01800F */  lui        $at, %hi(D_800EAA60)
/* CBF4C 8016B50C 46062200 */  add.s      $f8, $f4, $f6
/* CBF50 8016B510 E4A80000 */  swc1       $f8, 0x0($a1)
.L8016B514_ovl5:
/* CBF54 8016B514 8C620000 */  lw         $v0, 0x0($v1)
/* CBF58 8016B518 00021080 */  sll        $v0, $v0, 2
/* CBF5C 8016B51C 004B3021 */  addu       $a2, $v0, $t3
/* CBF60 8016B520 00220821 */  addu       $at, $at, $v0
/* CBF64 8016B524 C430AA60 */  lwc1       $f16, %lo(D_800EAA60)($at)
/* CBF68 8016B528 C4CA0000 */  lwc1       $f10, 0x0($a2)
/* CBF6C 8016B52C 46105480 */  add.s      $f18, $f10, $f16
/* CBF70 8016B530 10000080 */  b          .L8016B734_ovl3
/* CBF74 8016B534 E4D20000 */   swc1      $f18, 0x0($a2)
/* CBF78 8016B538 3C04801D */  lui        $a0, %hi(D_801CB1FC)
/* CBF7C 8016B53C 0C068E4E */  jal        func_801A3938
/* CBF80 8016B540 2484B1FC */   addiu     $a0, $a0, %lo(D_801CB1FC)
/* CBF84 8016B544 3C04801A */  lui        $a0, %hi(func_801A38BC_ovl7)
.L8016B548_ovl5:
/* CBF88 8016B548 0C068DB3 */  jal        func_801A36CC
/* CBF8C 8016B54C 248438BC */   addiu     $a0, $a0, %lo(func_801A38BC_ovl7)
/* CBF90 8016B550 3C04801D */  lui        $a0, %hi(D_801CA980)
/* CBF94 8016B554 0C068CEE */  jal        func_801A33B8
/* CBF98 8016B558 2484A980 */   addiu     $a0, $a0, %lo(D_801CA980)
/* CBF9C 8016B55C 0C05ADD3 */  jal        func_8016B74C_ovl3
/* CBFA0 8016B560 00000000 */   nop
.L8016B564_ovl5:
/* CBFA4 8016B564 1040000A */  beqz       $v0, .L8016B590_ovl3
/* CBFA8 8016B568 3C068013 */   lui       $a2, %hi(D_8012BCA0)
/* CBFAC 8016B56C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* CBFB0 8016B570 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
.L8016B574_ovl5:
/* CBFB4 8016B574 3C01800F */  lui        $at, %hi(D_800E98E0)
/* CBFB8 8016B578 240C0006 */  addiu      $t4, $zero, 0x6
/* CBFBC 8016B57C 8DAE0000 */  lw         $t6, 0x0($t5)
/* CBFC0 8016B580 000E7880 */  sll        $t7, $t6, 2
/* CBFC4 8016B584 002F0821 */  addu       $at, $at, $t7
/* CBFC8 8016B588 1000006A */  b          .L8016B734_ovl3
/* CBFCC 8016B58C AC2C98E0 */   sw        $t4, %lo(D_800E98E0)($at)
.L8016B590_ovl3:
/* CBFD0 8016B590 24C6BCA0 */  addiu      $a2, $a2, %lo(D_8012BCA0)
/* CBFD4 8016B594 8CC20000 */  lw         $v0, 0x0($a2)
/* CBFD8 8016B598 3C04801D */  lui        $a0, %hi(D_801CA840)
/* CBFDC 8016B59C 000214C2 */  srl        $v0, $v0, 19
/* CBFE0 8016B5A0 30580FFF */  andi       $t8, $v0, 0xFFF
.L8016B5A4_ovl5:
/* CBFE4 8016B5A4 1300004A */  beqz       $t8, .L8016B6D0_ovl3
/* CBFE8 8016B5A8 305901C0 */   andi      $t9, $v0, 0x1C0
/* CBFEC 8016B5AC 13200016 */  beqz       $t9, .L8016B608_ovl3
/* CBFF0 8016B5B0 00000000 */   nop
/* CBFF4 8016B5B4 8CC20014 */  lw         $v0, 0x14($a2)
/* CBFF8 8016B5B8 10400013 */  beqz       $v0, .L8016B608_ovl3
/* CBFFC 8016B5BC 00000000 */   nop
/* CC000 8016B5C0 94430012 */  lhu        $v1, 0x12($v0)
/* CC004 8016B5C4 24010004 */  addiu      $at, $zero, 0x4
/* CC008 8016B5C8 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* CC00C 8016B5CC 10610003 */  beq        $v1, $at, .L8016B5DC_ovl3
/* CC010 8016B5D0 24010005 */   addiu     $at, $zero, 0x5
/* CC014 8016B5D4 1461000C */  bne        $v1, $at, .L8016B608_ovl3
.L8016B5D8_ovl5:
/* CC018 8016B5D8 00000000 */   nop
.L8016B5DC_ovl3:
/* CC01C 8016B5DC 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* CC020 8016B5E0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* CC024 8016B5E4 3C058017 */  lui        $a1, %hi(func_8016B9D4_ovl3)
/* CC028 8016B5E8 8D2A0000 */  lw         $t2, 0x0($t1)
/* CC02C 8016B5EC 24A5B9D4 */  addiu      $a1, $a1, %lo(func_8016B9D4_ovl3)
/* CC030 8016B5F0 000A5880 */  sll        $t3, $t2, 2
.L8016B5F4_ovl5:
/* CC034 8016B5F4 008B2021 */  addu       $a0, $a0, $t3
/* CC038 8016B5F8 0C02C7B2 */  jal        assign_new_process_entry
/* CC03C 8016B5FC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* CC040 8016B600 1000004F */  b          .L8016B740_ovl3
.L8016B604_ovl5:
/* CC044 8016B604 8FBF0014 */   lw        $ra, 0x14($sp)
.L8016B608_ovl3:
/* CC048 8016B608 0C029D9E */  jal        play_sound
/* CC04C 8016B60C 240400D7 */   addiu     $a0, $zero, 0xD7
/* CC050 8016B610 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* CC054 8016B614 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CC058 8016B618 3C018019 */  lui        $at, %hi(D_8019726C_ovl3)
/* CC05C 8016B61C C420726C */  lwc1       $f0, %lo(D_8019726C_ovl3)($at)
/* CC060 8016B620 8C6E0000 */  lw         $t6, 0x0($v1)
/* CC064 8016B624 3C01800F */  lui        $at, %hi(D_800E98E0)
/* CC068 8016B628 240D0005 */  addiu      $t5, $zero, 0x5
/* CC06C 8016B62C 000E6080 */  sll        $t4, $t6, 2
.L8016B630_ovl5:
/* CC070 8016B630 002C0821 */  addu       $at, $at, $t4
/* CC074 8016B634 AC2D98E0 */  sw         $t5, %lo(D_800E98E0)($at)
/* CC078 8016B638 8C6F0000 */  lw         $t7, 0x0($v1)
/* CC07C 8016B63C 3C07800E */  lui        $a3, %hi(D_800E64D0)
/* CC080 8016B640 24E764D0 */  addiu      $a3, $a3, %lo(D_800E64D0)
/* CC084 8016B644 000FC080 */  sll        $t8, $t7, 2
/* CC088 8016B648 00F82021 */  addu       $a0, $a3, $t8
/* CC08C 8016B64C C4840000 */  lwc1       $f4, 0x0($a0)
/* CC090 8016B650 3C08800E */  lui        $t0, %hi(D_800E3210)
/* CC094 8016B654 25083210 */  addiu      $t0, $t0, %lo(D_800E3210)
/* CC098 8016B658 46002182 */  mul.s      $f6, $f4, $f0
/* CC09C 8016B65C 3C068013 */  lui        $a2, %hi(D_8012BCA0)
/* CC0A0 8016B660 24C6BCA0 */  addiu      $a2, $a2, %lo(D_8012BCA0)
.L8016B664_ovl5:
/* CC0A4 8016B664 8CC20000 */  lw         $v0, 0x0($a2)
/* CC0A8 8016B668 000214C2 */  srl        $v0, $v0, 19
/* CC0AC 8016B66C E4860000 */  swc1       $f6, 0x0($a0)
/* CC0B0 8016B670 8C790000 */  lw         $t9, 0x0($v1)
/* CC0B4 8016B674 304A003F */  andi       $t2, $v0, 0x3F
/* CC0B8 8016B678 304D0FC0 */  andi       $t5, $v0, 0xFC0
/* CC0BC 8016B67C 00194880 */  sll        $t1, $t9, 2
.L8016B680_ovl5:
/* CC0C0 8016B680 01092821 */  addu       $a1, $t0, $t1
/* CC0C4 8016B684 C4A80000 */  lwc1       $f8, 0x0($a1)
/* CC0C8 8016B688 46004282 */  mul.s      $f10, $f8, $f0
/* CC0CC 8016B68C 11400007 */  beqz       $t2, .L8016B6AC_ovl3
.L8016B690_ovl5:
/* CC0D0 8016B690 E4AA0000 */   swc1      $f10, 0x0($a1)
/* CC0D4 8016B694 8C6B0000 */  lw         $t3, 0x0($v1)
/* CC0D8 8016B698 000B7080 */  sll        $t6, $t3, 2
/* CC0DC 8016B69C 00EE2021 */  addu       $a0, $a3, $t6
/* CC0E0 8016B6A0 C4900000 */  lwc1       $f16, 0x0($a0)
/* CC0E4 8016B6A4 46008487 */  neg.s      $f18, $f16
/* CC0E8 8016B6A8 E4920000 */  swc1       $f18, 0x0($a0)
.L8016B6AC_ovl3:
/* CC0EC 8016B6AC 11A00021 */  beqz       $t5, .L8016B734_ovl3
/* CC0F0 8016B6B0 00000000 */   nop
/* CC0F4 8016B6B4 8C6C0000 */  lw         $t4, 0x0($v1)
/* CC0F8 8016B6B8 000C7880 */  sll        $t7, $t4, 2
.L8016B6BC_ovl5:
/* CC0FC 8016B6BC 010F2821 */  addu       $a1, $t0, $t7
/* CC100 8016B6C0 C4A40000 */  lwc1       $f4, 0x0($a1)
/* CC104 8016B6C4 46002187 */  neg.s      $f6, $f4
/* CC108 8016B6C8 1000001A */  b          .L8016B734_ovl3
/* CC10C 8016B6CC E4A60000 */   swc1      $f6, 0x0($a1)
.L8016B6D0_ovl3:
/* CC110 8016B6D0 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* CC114 8016B6D4 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* CC118 8016B6D8 2484A840 */  addiu      $a0, $a0, %lo(D_801CA840)
/* CC11C 8016B6DC 0C04455D */  jal        func_80111574
/* CC120 8016B6E0 8F050000 */   lw        $a1, 0x0($t8)
/* CC124 8016B6E4 0C044713 */  jal        func_80111C4C
/* CC128 8016B6E8 00402025 */   or        $a0, $v0, $zero
/* CC12C 8016B6EC 10000011 */  b          .L8016B734_ovl3
.L8016B6F0_ovl5:
/* CC130 8016B6F0 00000000 */   nop
/* CC134 8016B6F4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CC138 8016B6F8 00220821 */  addu       $at, $at, $v0
/* CC13C 8016B6FC C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* CC140 8016B700 3C018019 */  lui        $at, %hi(D_80197270_ovl3)
/* CC144 8016B704 C42A7270 */  lwc1       $f10, %lo(D_80197270_ovl3)($at)
/* CC148 8016B708 3C01800E */  lui        $at, %hi(D_800E17D0)
/* CC14C 8016B70C 00220821 */  addu       $at, $at, $v0
/* CC150 8016B710 460A4002 */  mul.s      $f0, $f8, $f10
.L8016B714_ovl5:
/* CC154 8016B714 24040001 */  addiu      $a0, $zero, 0x1
.L8016B718_ovl5:
/* CC158 8016B718 E42017D0 */  swc1       $f0, %lo(D_800E17D0)($at)
/* CC15C 8016B71C 8C790000 */  lw         $t9, 0x0($v1)
/* CC160 8016B720 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* CC164 8016B724 00194880 */  sll        $t1, $t9, 2
/* CC168 8016B728 00290821 */  addu       $at, $at, $t1
/* CC16C 8016B72C 0C05AF49 */  jal        func_8016BD24_ovl3
/* CC170 8016B730 E42041D0 */   swc1      $f0, %lo(gEntitiesAngleYArray)($at)
.L8016B734_ovl3:
/* CC174 8016B734 0C05A5BC */  jal        func_801696F0_ovl3
/* CC178 8016B738 8FA40018 */   lw        $a0, 0x18($sp)
/* CC17C 8016B73C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8016B740_ovl3:
/* CC180 8016B740 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC184 8016B744 03E00008 */  jr         $ra
/* CC188 8016B748 00000000 */   nop
