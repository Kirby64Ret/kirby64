glabel func_801DEC08_ovl11
/* 1E94C8 801DEC08 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1E94CC 801DEC0C AFB10018 */  sw         $s1, 0x18($sp)
/* 1E94D0 801DEC10 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 1E94D4 801DEC14 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 1E94D8 801DEC18 8E230000 */  lw         $v1, 0x0($s1)
.L801DEC1C_ovl14:
/* 1E94DC 801DEC1C AFBF001C */  sw         $ra, 0x1C($sp)
.L801DEC20_ovl14:
/* 1E94E0 801DEC20 AFB00014 */  sw         $s0, 0x14($sp)
/* 1E94E4 801DEC24 AFA40058 */  sw         $a0, 0x58($sp)
.L801DEC28_ovl17:
/* 1E94E8 801DEC28 8C620000 */  lw         $v0, 0x0($v1)
/* 1E94EC 801DEC2C 3C01800E */  lui        $at, %hi(D_800E7B20)
.L801DEC30_ovl17:
/* 1E94F0 801DEC30 3C10800E */  lui        $s0, %hi(D_800E1B50)
glabel func_801DEC34_ovl14
/* 1E94F4 801DEC34 00021080 */  sll        $v0, $v0, 2
/* 1E94F8 801DEC38 00220821 */  addu       $at, $at, $v0
/* 1E94FC 801DEC3C C4247B20 */  lwc1       $f4, %lo(D_800E7B20)($at)
/* 1E9500 801DEC40 02028021 */  addu       $s0, $s0, $v0
/* 1E9504 801DEC44 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
/* 1E9508 801DEC48 3C01800F */  lui        $at, %hi(D_800EB320)
/* 1E950C 801DEC4C 00220821 */  addu       $at, $at, $v0
/* 1E9510 801DEC50 E424B320 */  swc1       $f4, %lo(D_800EB320)($at)
/* 1E9514 801DEC54 8E0E008C */  lw         $t6, 0x8C($s0)
/* 1E9518 801DEC58 15C00003 */  bnez       $t6, .L801DEC68_ovl11
.L801DEC5C_ovl17:
/* 1E951C 801DEC5C 00000000 */   nop
/* 1E9520 801DEC60 10000076 */  b          .L801DEE3C_ovl14
/* 1E9524 801DEC64 00001025 */   or        $v0, $zero, $zero
.L801DEC68_ovl11:
/* 1E9528 801DEC68 0C044554 */  jal        func_80111550
/* 1E952C 801DEC6C 8C640000 */   lw        $a0, 0x0($v1)
/* 1E9530 801DEC70 8E2F0000 */  lw         $t7, 0x0($s1)
/* 1E9534 801DEC74 8E04008C */  lw         $a0, 0x8C($s0)
/* 1E9538 801DEC78 0C044722 */  jal        func_80111C88
/* 1E953C 801DEC7C 8DE50000 */   lw        $a1, 0x0($t7)
.L801DEC80_ovl13:
/* 1E9540 801DEC80 8E18008C */  lw         $t8, 0x8C($s0)
/* 1E9544 801DEC84 00402025 */  or         $a0, $v0, $zero
.L801DEC88_ovl16:
/* 1E9548 801DEC88 8F030008 */  lw         $v1, 0x8($t8)
/* 1E954C 801DEC8C 8C790004 */  lw         $t9, 0x4($v1)
/* 1E9550 801DEC90 8FA30058 */  lw         $v1, 0x58($sp)
/* 1E9554 801DEC94 17200005 */  bnez       $t9, func_801DECAC_ovl14
.L801DEC98_ovl14:
/* 1E9558 801DEC98 00000000 */   nop
.L801DEC9C_ovl14:
/* 1E955C 801DEC9C 10600003 */  beqz       $v1, func_801DECAC_ovl14
.L801DECA0_ovl17:
/* 1E9560 801DECA0 00000000 */   nop
/* 1E9564 801DECA4 8C480024 */  lw         $t0, 0x24($v0)
.L801DECA8_ovl13:
/* 1E9568 801DECA8 AD030008 */  sw         $v1, 0x8($t0)
glabel func_801DECAC_ovl14
/* 1E956C 801DECAC 0C0447B3 */  jal        func_80111ECC
/* 1E9570 801DECB0 00000000 */   nop
/* 1E9574 801DECB4 0C0442C0 */  jal        func_80110B00
.L801DECB8_ovl16:
/* 1E9578 801DECB8 27A40038 */   addiu     $a0, $sp, 0x38
/* 1E957C 801DECBC 1040000C */  beqz       $v0, .L801DECF0_ovl11
/* 1E9580 801DECC0 00000000 */   nop
.L801DECC4_ovl10:
/* 1E9584 801DECC4 8E2A0000 */  lw         $t2, 0x0($s1)
/* 1E9588 801DECC8 93A9003A */  lbu        $t1, 0x3A($sp)
/* 1E958C 801DECCC 3C05800F */  lui        $a1, %hi(D_800E83E0)
.L801DECD0_ovl17:
/* 1E9590 801DECD0 8D4B0000 */  lw         $t3, 0x0($t2)
glabel func_801DECD4_ovl17
/* 1E9594 801DECD4 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 1E9598 801DECD8 000B6080 */  sll        $t4, $t3, 2
/* 1E959C 801DECDC 00AC6821 */  addu       $t5, $a1, $t4
/* 1E95A0 801DECE0 ADA90000 */  sw         $t1, 0x0($t5)
.L801DECE4_ovl16:
/* 1E95A4 801DECE4 93AE003B */  lbu        $t6, 0x3B($sp)
/* 1E95A8 801DECE8 10000027 */  b          .L801DED88_ovl11
/* 1E95AC 801DECEC A20E0043 */   sb        $t6, 0x43($s0)
.L801DECF0_ovl11:
/* 1E95B0 801DECF0 0C0443F5 */  jal        func_80110FD4
glabel func_801DECF4_ovl17
/* 1E95B4 801DECF4 27A40038 */   addiu     $a0, $sp, 0x38
.L801DECF8_ovl10:
/* 1E95B8 801DECF8 1040000C */  beqz       $v0, .L801DED2C_ovl11
/* 1E95BC 801DECFC 00000000 */   nop
/* 1E95C0 801DED00 8E380000 */  lw         $t8, 0x0($s1)
/* 1E95C4 801DED04 93AF003A */  lbu        $t7, 0x3A($sp)
/* 1E95C8 801DED08 3C05800F */  lui        $a1, %hi(D_800E83E0)
.L801DED0C_ovl17:
/* 1E95CC 801DED0C 8F190000 */  lw         $t9, 0x0($t8)
.L801DED10_ovl14:
/* 1E95D0 801DED10 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
.L801DED14_ovl14:
/* 1E95D4 801DED14 00194080 */  sll        $t0, $t9, 2
/* 1E95D8 801DED18 00A85021 */  addu       $t2, $a1, $t0
.L801DED1C_ovl17:
/* 1E95DC 801DED1C AD4F0000 */  sw         $t7, 0x0($t2)
.L801DED20_ovl17:
/* 1E95E0 801DED20 93AB003B */  lbu        $t3, 0x3B($sp)
glabel func_801DED24_ovl14
/* 1E95E4 801DED24 10000018 */  b          .L801DED88_ovl11
/* 1E95E8 801DED28 A20B0043 */   sb        $t3, 0x43($s0)
.L801DED2C_ovl11:
/* 1E95EC 801DED2C 0C044054 */  jal        func_80110150
.L801DED30_ovl12:
/* 1E95F0 801DED30 27A40038 */   addiu     $a0, $sp, 0x38
/* 1E95F4 801DED34 5040000D */  beql       $v0, $zero, .L801DED6C_ovl13
glabel func_801DED38_ovl12
/* 1E95F8 801DED38 8E280000 */   lw        $t0, 0x0($s1)
/* 1E95FC 801DED3C 8E290000 */  lw         $t1, 0x0($s1)
glabel func_801DED40_ovl16
/* 1E9600 801DED40 93AC003A */  lbu        $t4, 0x3A($sp)
.L801DED44_ovl14:
/* 1E9604 801DED44 3C05800F */  lui        $a1, %hi(D_800E83E0)
/* 1E9608 801DED48 8D2D0000 */  lw         $t5, 0x0($t1)
/* 1E960C 801DED4C 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 1E9610 801DED50 000D7080 */  sll        $t6, $t5, 2
/* 1E9614 801DED54 00AEC021 */  addu       $t8, $a1, $t6
/* 1E9618 801DED58 AF0C0000 */  sw         $t4, 0x0($t8)
.L801DED5C_ovl17:
/* 1E961C 801DED5C 93B9003B */  lbu        $t9, 0x3B($sp)
/* 1E9620 801DED60 10000009 */  b          .L801DED88_ovl11
/* 1E9624 801DED64 A2190043 */   sb        $t9, 0x43($s0)
/* 1E9628 801DED68 8E280000 */  lw         $t0, 0x0($s1)
.L801DED6C_ovl13:
/* 1E962C 801DED6C 3C05800F */  lui        $a1, %hi(D_800E83E0)
/* 1E9630 801DED70 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 1E9634 801DED74 8D0F0000 */  lw         $t7, 0x0($t0)
.L801DED78_ovl17:
/* 1E9638 801DED78 000F5080 */  sll        $t2, $t7, 2
/* 1E963C 801DED7C 00AA5821 */  addu       $t3, $a1, $t2
/* 1E9640 801DED80 AD600000 */  sw         $zero, 0x0($t3)
/* 1E9644 801DED84 A2000043 */  sb         $zero, 0x43($s0)
.L801DED88_ovl11:
/* 1E9648 801DED88 8E230000 */  lw         $v1, 0x0($s1)
/* 1E964C 801DED8C 24100001 */  addiu      $s0, $zero, 0x1
/* 1E9650 801DED90 8C620000 */  lw         $v0, 0x0($v1)
.L801DED94_ovl12:
/* 1E9654 801DED94 00021080 */  sll        $v0, $v0, 2
.L801DED98_ovl10:
/* 1E9658 801DED98 00A24821 */  addu       $t1, $a1, $v0
glabel func_801DED9C_ovl12
/* 1E965C 801DED9C 8D240000 */  lw         $a0, 0x0($t1)
/* 1E9660 801DEDA0 10900005 */  beq        $a0, $s0, .L801DEDB8_ovl14
/* 1E9664 801DEDA4 24010002 */   addiu     $at, $zero, 0x2
/* 1E9668 801DEDA8 1081000B */  beq        $a0, $at, .L801DEDD8_ovl14
/* 1E966C 801DEDAC 3C02800D */   lui       $v0, %hi(D_800D70D8)
.L801DEDB0_ovl17:
/* 1E9670 801DEDB0 10000022 */  b          .L801DEE3C_ovl14
.L801DEDB4_ovl17:
/* 1E9674 801DEDB4 00001025 */   or        $v0, $zero, $zero
.L801DEDB8_ovl14:
/* 1E9678 801DEDB8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1E967C 801DEDBC 00822021 */  addu       $a0, $a0, $v0
/* 1E9680 801DEDC0 3C05801E */  lui        $a1, %hi(func_801DF5B8_ovl11)
/* 1E9684 801DEDC4 24A5F5B8 */  addiu      $a1, $a1, %lo(func_801DF5B8_ovl11)
.L801DEDC8_ovl17:
/* 1E9688 801DEDC8 0C02C7B2 */  jal        assign_new_process_entry
.L801DEDCC_ovl17:
/* 1E968C 801DEDCC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E9690 801DEDD0 1000001A */  b          .L801DEE3C_ovl14
.L801DEDD4_ovl14:
/* 1E9694 801DEDD4 24020001 */   addiu     $v0, $zero, 0x1
.L801DEDD8_ovl14:
/* 1E9698 801DEDD8 244270D8 */  addiu      $v0, $v0, %lo(D_800D70D8)
/* 1E969C 801DEDDC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1E96A0 801DEDE0 44814000 */  mtc1       $at, $f8
/* 1E96A4 801DEDE4 C4460000 */  lwc1       $f6, 0x0($v0)
glabel func_801DEDE8_ovl16
/* 1E96A8 801DEDE8 3C0C800F */  lui        $t4, %hi(D_800EA520)
/* 1E96AC 801DEDEC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E96B0 801DEDF0 46083281 */  sub.s      $f10, $f6, $f8
/* 1E96B4 801DEDF4 E44A0000 */  swc1       $f10, 0x0($v0)
/* 1E96B8 801DEDF8 8C6D0000 */  lw         $t5, 0x0($v1)
.L801DEDFC_ovl17:
/* 1E96BC 801DEDFC 000D7080 */  sll        $t6, $t5, 2
/* 1E96C0 801DEE00 018E6021 */  addu       $t4, $t4, $t6
/* 1E96C4 801DEE04 8D8CA520 */  lw         $t4, %lo(D_800EA520)($t4)
.L801DEE08_ovl12:
/* 1E96C8 801DEE08 000CC080 */  sll        $t8, $t4, 2
/* 1E96CC 801DEE0C 00380821 */  addu       $at, $at, $t8
/* 1E96D0 801DEE10 0C077B94 */  jal        func_801DEE50_ovl17
/* 1E96D4 801DEE14 AC3098E0 */   sw        $s0, %lo(D_800E98E0)($at)
/* 1E96D8 801DEE18 8E390000 */  lw         $t9, 0x0($s1)
.L801DEE1C_ovl14:
/* 1E96DC 801DEE1C 3C01800F */  lui        $at, %hi(D_800E9FE0)
.L801DEE20_ovl16:
/* 1E96E0 801DEE20 02001025 */  or         $v0, $s0, $zero
.L801DEE24_ovl15:
/* 1E96E4 801DEE24 8F280000 */  lw         $t0, 0x0($t9)
.L801DEE28_ovl17:
/* 1E96E8 801DEE28 00087880 */  sll        $t7, $t0, 2
/* 1E96EC 801DEE2C 002F0821 */  addu       $at, $at, $t7
/* 1E96F0 801DEE30 10000002 */  b          .L801DEE3C_ovl14
/* 1E96F4 801DEE34 AC309FE0 */   sw        $s0, %lo(D_800E9FE0)($at)
.L801DEE38_ovl12:
/* 1E96F8 801DEE38 00001025 */  or         $v0, $zero, $zero
.L801DEE3C_ovl14:
/* 1E96FC 801DEE3C 8FBF001C */  lw         $ra, 0x1C($sp)
.L801DEE40_ovl10:
/* 1E9700 801DEE40 8FB00014 */  lw         $s0, 0x14($sp)
/* 1E9704 801DEE44 8FB10018 */  lw         $s1, 0x18($sp)
.L801DEE48_ovl16:
/* 1E9708 801DEE48 03E00008 */  jr         $ra
.L801DEE4C_ovl15:
/* 1E970C 801DEE4C 27BD0058 */   addiu     $sp, $sp, 0x58
