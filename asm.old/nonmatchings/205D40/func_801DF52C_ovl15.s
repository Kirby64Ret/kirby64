glabel func_801DF52C_ovl15
/* 20A08C 801DF52C 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
.L801DF530_ovl16:
/* 20A090 801DF530 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 20A094 801DF534 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20A098 801DF538 240E0001 */  addiu      $t6, $zero, 0x1
/* 20A09C 801DF53C 3C01800D */  lui        $at, %hi(D_800D7098 + 0x14)
.L801DF540_ovl16:
/* 20A0A0 801DF540 AFBF0014 */  sw         $ra, 0x14($sp)
.L801DF544_ovl13:
/* 20A0A4 801DF544 AFA40018 */  sw         $a0, 0x18($sp)
glabel func_801DF548_ovl11
/* 20A0A8 801DF548 AC2E70AC */  sw         $t6, %lo(D_800D7098 + 0x14)($at)
.L801DF54C_ovl17:
/* 20A0AC 801DF54C 8DE30000 */  lw         $v1, 0x0($t7)
.L801DF550_ovl14:
/* 20A0B0 801DF550 3C06800F */  lui        $a2, %hi(D_800E9AA0)
.L801DF554_ovl12:
/* 20A0B4 801DF554 00031880 */  sll        $v1, $v1, 2
/* 20A0B8 801DF558 00C33021 */  addu       $a2, $a2, $v1
.L801DF55C_ovl17:
/* 20A0BC 801DF55C 8CC69AA0 */  lw         $a2, %lo(D_800E9AA0)($a2)
.L801DF560_ovl17:
/* 20A0C0 801DF560 2CC10006 */  sltiu      $at, $a2, 0x6
/* 20A0C4 801DF564 1020002F */  beqz       $at, .L801DF624_ovl16
/* 20A0C8 801DF568 0006C080 */   sll       $t8, $a2, 2
/* 20A0CC 801DF56C 3C01801E */  lui        $at, %hi(jtbl_801E6850_ovl15)
.L801DF570_ovl13:
/* 20A0D0 801DF570 00380821 */  addu       $at, $at, $t8
.L801DF574_ovl16:
/* 20A0D4 801DF574 8C386850 */  lw         $t8, %lo(jtbl_801E6850_ovl15)($at)
/* 20A0D8 801DF578 03000008 */  jr         $t8
/* 20A0DC 801DF57C 00000000 */   nop
glabel func_801DF580_ovl14
/* 20A0E0 801DF580 0C006291 */  jal        random_soft_s32_range
/* 20A0E4 801DF584 24040002 */   addiu     $a0, $zero, 0x2
glabel func_801DF588_ovl13
/* 20A0E8 801DF588 10400010 */  beqz       $v0, .L801DF5CC_ovl15
/* 20A0EC 801DF58C 3C048005 */   lui       $a0, %hi(D_8004A7C4)
/* 20A0F0 801DF590 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 20A0F4 801DF594 3C09800F */  lui        $t1, %hi(D_800E9AA0)
/* 20A0F8 801DF598 25299AA0 */  addiu      $t1, $t1, %lo(D_800E9AA0)
/* 20A0FC 801DF59C 8C990000 */  lw         $t9, 0x0($a0)
/* 20A100 801DF5A0 3C06800F */  lui        $a2, %hi(D_800E9AA0)
/* 20A104 801DF5A4 00194080 */  sll        $t0, $t9, 2
.L801DF5A8_ovl12:
/* 20A108 801DF5A8 01092821 */  addu       $a1, $t0, $t1
.L801DF5AC_ovl11:
/* 20A10C 801DF5AC 8CAA0000 */  lw         $t2, 0x0($a1)
.L801DF5B0_ovl16:
/* 20A110 801DF5B0 254B0001 */  addiu      $t3, $t2, 0x1
/* 20A114 801DF5B4 ACAB0000 */  sw         $t3, 0x0($a1)
glabel func_801DF5B8_ovl11
/* 20A118 801DF5B8 8C830000 */  lw         $v1, 0x0($a0)
/* 20A11C 801DF5BC 00031880 */  sll        $v1, $v1, 2
/* 20A120 801DF5C0 00C33021 */  addu       $a2, $a2, $v1
/* 20A124 801DF5C4 10000017 */  b          .L801DF624_ovl16
.L801DF5C8_ovl13:
/* 20A128 801DF5C8 8CC69AA0 */   lw        $a2, %lo(D_800E9AA0)($a2)
.L801DF5CC_ovl15:
/* 20A12C 801DF5CC 0C006291 */  jal        random_soft_s32_range
glabel func_801DF5D0_ovl13
/* 20A130 801DF5D0 24040002 */   addiu     $a0, $zero, 0x2
/* 20A134 801DF5D4 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 20A138 801DF5D8 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 20A13C 801DF5DC 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 20A140 801DF5E0 25CE9AA0 */  addiu      $t6, $t6, %lo(D_800E9AA0)
.L801DF5E4_ovl16:
/* 20A144 801DF5E4 8C8C0000 */  lw         $t4, 0x0($a0)
/* 20A148 801DF5E8 0002C880 */  sll        $t9, $v0, 2
/* 20A14C 801DF5EC 3C09801E */  lui        $t1, %hi(func_801E6614_ovl15)
glabel func_801DF5F0_ovl12
/* 20A150 801DF5F0 000C6880 */  sll        $t5, $t4, 2
.L801DF5F4_ovl16:
/* 20A154 801DF5F4 01AE2821 */  addu       $a1, $t5, $t6
/* 20A158 801DF5F8 8CAF0000 */  lw         $t7, 0x0($a1)
/* 20A15C 801DF5FC 3C06800F */  lui        $a2, %hi(D_800E9AA0)
.L801DF600_ovl14:
/* 20A160 801DF600 000FC0C0 */  sll        $t8, $t7, 3
/* 20A164 801DF604 03194021 */  addu       $t0, $t8, $t9
.L801DF608_ovl9:
/* 20A168 801DF608 01284821 */  addu       $t1, $t1, $t0
.L801DF60C_ovl11:
/* 20A16C 801DF60C 8D296614 */  lw         $t1, %lo(func_801E6614_ovl15)($t1)
.L801DF610_ovl9:
/* 20A170 801DF610 ACA90000 */  sw         $t1, 0x0($a1)
/* 20A174 801DF614 8C830000 */  lw         $v1, 0x0($a0)
.L801DF618_ovl9:
/* 20A178 801DF618 00031880 */  sll        $v1, $v1, 2
/* 20A17C 801DF61C 00C33021 */  addu       $a2, $a2, $v1
/* 20A180 801DF620 8CC69AA0 */  lw         $a2, %lo(D_800E9AA0)($a2)
.L801DF624_ovl16:
/* 20A184 801DF624 00065080 */  sll        $t2, $a2, 2
glabel func_801DF628_ovl9
/* 20A188 801DF628 3C0B801E */  lui        $t3, %hi(D_801E65FC_ovl15)
glabel func_801DF62C_ovl16
/* 20A18C 801DF62C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20A190 801DF630 016A5821 */  addu       $t3, $t3, $t2
/* 20A194 801DF634 8D6B65FC */  lw         $t3, %lo(D_801E65FC_ovl15)($t3)
/* 20A198 801DF638 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801DF63C_ovl14:
/* 20A19C 801DF63C 00230821 */  addu       $at, $at, $v1
/* 20A1A0 801DF640 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20A1A4 801DF644 03E00008 */  jr         $ra
glabel func_801DF648_ovl17
/* 20A1A8 801DF648 AC2BDC50 */   sw        $t3, %lo(gEntityVtableIndexArray)($at)
