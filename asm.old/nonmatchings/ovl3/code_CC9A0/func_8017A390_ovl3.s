glabel func_8017A390_ovl3
/* DADD0 8017A390 27BDFF98 */  addiu      $sp, $sp, -0x68
/* DADD4 8017A394 AFBF001C */  sw         $ra, 0x1C($sp)
.L8017A398_ovl5:
/* DADD8 8017A398 AFA40068 */  sw         $a0, 0x68($sp)
/* DADDC 8017A39C 0C054E61 */  jal        func_80153984_ovl3
.L8017A3A0_ovl5:
/* DADE0 8017A3A0 AFA00054 */   sw        $zero, 0x54($sp)
/* DADE4 8017A3A4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* DADE8 8017A3A8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* DADEC 8017A3AC 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* DADF0 8017A3B0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DADF4 8017A3B4 8DCF0000 */  lw         $t7, 0x0($t6)
.L8017A3B8_ovl5:
/* DADF8 8017A3B8 000FC080 */  sll        $t8, $t7, 2
/* DADFC 8017A3BC 0338C821 */  addu       $t9, $t9, $t8
.L8017A3C0_ovl5:
/* DAE00 8017A3C0 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* DAE04 8017A3C4 332A0006 */  andi       $t2, $t9, 0x6
/* DAE08 8017A3C8 55400006 */  bnel       $t2, $zero, func_8017A3E4_ovl5
/* DAE0C 8017A3CC 44816000 */   mtc1      $at, $f12
/* DAE10 8017A3D0 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
.L8017A3D4_ovl5:
/* DAE14 8017A3D4 44816000 */  mtc1       $at, $f12
/* DAE18 8017A3D8 10000003 */  b          .L8017A3E8_ovl3
/* DAE1C 8017A3DC 00000000 */   nop
/* DAE20 8017A3E0 44816000 */  mtc1       $at, $f12
glabel func_8017A3E4_ovl5
/* DAE24 8017A3E4 00000000 */  nop
.L8017A3E8_ovl3:
/* DAE28 8017A3E8 0C02BB30 */  jal        func_800AECC0
/* DAE2C 8017A3EC 00000000 */   nop
/* DAE30 8017A3F0 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* DAE34 8017A3F4 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* DAE38 8017A3F8 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* DAE3C 8017A3FC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DAE40 8017A400 8D6C0000 */  lw         $t4, 0x0($t3)
/* DAE44 8017A404 000C6880 */  sll        $t5, $t4, 2
/* DAE48 8017A408 01CD7021 */  addu       $t6, $t6, $t5
/* DAE4C 8017A40C 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* DAE50 8017A410 31CF0006 */  andi       $t7, $t6, 0x6
/* DAE54 8017A414 55E00006 */  bnel       $t7, $zero, .L8017A430_ovl3
/* DAE58 8017A418 44817000 */   mtc1      $at, $f14
/* DAE5C 8017A41C 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
/* DAE60 8017A420 44817000 */  mtc1       $at, $f14
/* DAE64 8017A424 10000003 */  b          .L8017A434_ovl3
/* DAE68 8017A428 00000000 */   nop
/* DAE6C 8017A42C 44817000 */  mtc1       $at, $f14
.L8017A430_ovl3:
/* DAE70 8017A430 00000000 */  nop
.L8017A434_ovl3:
/* DAE74 8017A434 0C02BB48 */  jal        func_800AED20
/* DAE78 8017A438 46007306 */   mov.s     $f12, $f14
/* DAE7C 8017A43C 3C018019 */  lui        $at, %hi(D_80197598_ovl3)
/* DAE80 8017A440 C42C7598 */  lwc1       $f12, %lo(D_80197598_ovl3)($at)
/* DAE84 8017A444 3C014190 */  lui        $at, (0x41900000 >> 16)
/* DAE88 8017A448 44817000 */  mtc1       $at, $f14
/* DAE8C 8017A44C 44066000 */  mfc1       $a2, $f12
/* DAE90 8017A450 0C04860A */  jal        func_80121828
.L8017A454_ovl5:
/* DAE94 8017A454 3C074110 */   lui       $a3, (0x41100000 >> 16)
/* DAE98 8017A458 10400028 */  beqz       $v0, .L8017A4FC_ovl3
/* DAE9C 8017A45C 3C088013 */   lui       $t0, %hi(gKirbyState)
/* DAEA0 8017A460 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DAEA4 8017A464 8D180044 */  lw         $t8, 0x44($t0)
/* DAEA8 8017A468 24010003 */  addiu      $at, $zero, 0x3
/* DAEAC 8017A46C 1301000A */  beq        $t8, $at, .L8017A498_ovl3
/* DAEB0 8017A470 00000000 */   nop
/* DAEB4 8017A474 0C03EE45 */  jal        func_800FB914
/* DAEB8 8017A478 24040002 */   addiu     $a0, $zero, 0x2
/* DAEBC 8017A47C 00002025 */  or         $a0, $zero, $zero
/* DAEC0 8017A480 0C02ED1A */  jal        func_800BB468
/* DAEC4 8017A484 00002825 */   or        $a1, $zero, $zero
/* DAEC8 8017A488 0C029D9E */  jal        play_sound
/* DAECC 8017A48C 2404011E */   addiu     $a0, $zero, 0x11E
/* DAED0 8017A490 10000003 */  b          .L8017A4A0_ovl3
.L8017A494_ovl5:
/* DAED4 8017A494 00000000 */   nop
.L8017A498_ovl3:
/* DAED8 8017A498 0C029D9E */  jal        play_sound
/* DAEDC 8017A49C 24040149 */   addiu     $a0, $zero, 0x149
.L8017A4A0_ovl3:
/* DAEE0 8017A4A0 0C048C76 */  jal        func_801231D8
/* DAEE4 8017A4A4 00000000 */   nop
/* DAEE8 8017A4A8 2409FFFF */  addiu      $t1, $zero, -0x1
/* DAEEC 8017A4AC 10490013 */  beq        $v0, $t1, .L8017A4FC_ovl3
/* DAEF0 8017A4B0 00403025 */   or        $a2, $v0, $zero
/* DAEF4 8017A4B4 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* DAEF8 8017A4B8 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* DAEFC 8017A4BC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* DAF00 8017A4C0 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* DAF04 8017A4C4 8F220000 */  lw         $v0, 0x0($t9)
/* DAF08 8017A4C8 24040005 */  addiu      $a0, $zero, 0x5
/* DAF0C 8017A4CC 24050001 */  addiu      $a1, $zero, 0x1
/* DAF10 8017A4D0 00021080 */  sll        $v0, $v0, 2
/* DAF14 8017A4D4 00220821 */  addu       $at, $at, $v0
/* DAF18 8017A4D8 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* DAF1C 8017A4DC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* DAF20 8017A4E0 00220821 */  addu       $at, $at, $v0
.L8017A4E4_ovl5:
/* DAF24 8017A4E4 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
.L8017A4E8_ovl5:
/* DAF28 8017A4E8 00E23821 */  addu       $a3, $a3, $v0
/* DAF2C 8017A4EC 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* DAF30 8017A4F0 E7A40010 */  swc1       $f4, 0x10($sp)
/* DAF34 8017A4F4 0C029FDD */  jal        func_800A7F74
/* DAF38 8017A4F8 E7A60014 */   swc1      $f6, 0x14($sp)
.L8017A4FC_ovl3:
/* DAF3C 8017A4FC 3C05800D */  lui        $a1, %hi(gKirbyController)
/* DAF40 8017A500 24A56FE8 */  addiu      $a1, $a1, %lo(gKirbyController)
/* DAF44 8017A504 94A40000 */  lhu        $a0, 0x0($a1)
.L8017A508_ovl5:
/* DAF48 8017A508 3C088013 */  lui        $t0, %hi(gKirbyState)
.L8017A50C_ovl5:
/* DAF4C 8017A50C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DAF50 8017A510 308A0300 */  andi       $t2, $a0, 0x300
/* DAF54 8017A514 11400013 */  beqz       $t2, .L8017A564_ovl3
/* DAF58 8017A518 2409FFFF */   addiu     $t1, $zero, -0x1
/* DAF5C 8017A51C 308B0100 */  andi       $t3, $a0, 0x100
/* DAF60 8017A520 1160000A */  beqz       $t3, .L8017A54C_ovl3
/* DAF64 8017A524 3C0F8005 */   lui       $t7, %hi(D_8004A7C4)
/* DAF68 8017A528 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* DAF6C 8017A52C 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* DAF70 8017A530 3C01800F */  lui        $at, %hi(D_800E98E0)
/* DAF74 8017A534 24060001 */  addiu      $a2, $zero, 0x1
/* DAF78 8017A538 8D8D0000 */  lw         $t5, 0x0($t4)
/* DAF7C 8017A53C 000D7080 */  sll        $t6, $t5, 2
/* DAF80 8017A540 002E0821 */  addu       $at, $at, $t6
/* DAF84 8017A544 10000007 */  b          .L8017A564_ovl3
/* DAF88 8017A548 AC2698E0 */   sw        $a2, %lo(D_800E98E0)($at)
.L8017A54C_ovl3:
/* DAF8C 8017A54C 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* DAF90 8017A550 3C01800F */  lui        $at, %hi(D_800E98E0)
/* DAF94 8017A554 8DF80000 */  lw         $t8, 0x0($t7)
.L8017A558_ovl5:
/* DAF98 8017A558 0018C880 */  sll        $t9, $t8, 2
.L8017A55C_ovl5:
/* DAF9C 8017A55C 00390821 */  addu       $at, $at, $t9
/* DAFA0 8017A560 AC2998E0 */  sw         $t1, %lo(D_800E98E0)($at)
.L8017A564_ovl3:
/* DAFA4 8017A564 910A0017 */  lbu        $t2, 0x17($t0)
/* DAFA8 8017A568 24060001 */  addiu      $a2, $zero, 0x1
/* DAFAC 8017A56C 51400004 */  beql       $t2, $zero, .L8017A580_ovl3
/* DAFB0 8017A570 910B0016 */   lbu       $t3, 0x16($t0)
/* DAFB4 8017A574 10000016 */  b          .L8017A5D0_ovl3
.L8017A578_ovl5:
/* DAFB8 8017A578 AFA60054 */   sw        $a2, 0x54($sp)
.L8017A57C_ovl5:
/* DAFBC 8017A57C 910B0016 */  lbu        $t3, 0x16($t0)
.L8017A580_ovl3:
/* DAFC0 8017A580 5560000E */  bnel       $t3, $zero, .L8017A5BC_ovl3
/* DAFC4 8017A584 94AF0002 */   lhu       $t7, 0x2($a1)
glabel func_8017A588_ovl5
/* DAFC8 8017A588 94AC0002 */  lhu        $t4, 0x2($a1)
/* DAFCC 8017A58C 318D4000 */  andi       $t5, $t4, 0x4000
/* DAFD0 8017A590 51A00004 */  beql       $t5, $zero, .L8017A5A4_ovl3
/* DAFD4 8017A594 910E000A */   lbu       $t6, 0xA($t0)
/* DAFD8 8017A598 1000000D */  b          .L8017A5D0_ovl3
/* DAFDC 8017A59C AFA60054 */   sw        $a2, 0x54($sp)
/* DAFE0 8017A5A0 910E000A */  lbu        $t6, 0xA($t0)
.L8017A5A4_ovl3:
/* DAFE4 8017A5A4 24010004 */  addiu      $at, $zero, 0x4
/* DAFE8 8017A5A8 55C1000A */  bnel       $t6, $at, .L8017A5D4_ovl3
/* DAFEC 8017A5AC 8FAA0054 */   lw        $t2, 0x54($sp)
/* DAFF0 8017A5B0 10000007 */  b          .L8017A5D0_ovl3
/* DAFF4 8017A5B4 AFA60054 */   sw        $a2, 0x54($sp)
/* DAFF8 8017A5B8 94AF0002 */  lhu        $t7, 0x2($a1)
.L8017A5BC_ovl3:
/* DAFFC 8017A5BC 24190004 */  addiu      $t9, $zero, 0x4
/* DB000 8017A5C0 31F84000 */  andi       $t8, $t7, 0x4000
/* DB004 8017A5C4 53000003 */  beql       $t8, $zero, .L8017A5D4_ovl3
.L8017A5C8_ovl5:
/* DB008 8017A5C8 8FAA0054 */   lw        $t2, 0x54($sp)
/* DB00C 8017A5CC A119000A */  sb         $t9, 0xA($t0)
.L8017A5D0_ovl3:
/* DB010 8017A5D0 8FAA0054 */  lw         $t2, 0x54($sp)
.L8017A5D4_ovl3:
/* DB014 8017A5D4 5140002C */  beql       $t2, $zero, .L8017A688_ovl3
/* DB018 8017A5D8 8D0E0044 */   lw        $t6, 0x44($t0)
/* DB01C 8017A5DC 8D0B0044 */  lw         $t3, 0x44($t0)
/* DB020 8017A5E0 24010003 */  addiu      $at, $zero, 0x3
/* DB024 8017A5E4 240C0003 */  addiu      $t4, $zero, 0x3
/* DB028 8017A5E8 11610026 */  beq        $t3, $at, .L8017A684_ovl3
/* DB02C 8017A5EC 3C0D8005 */   lui       $t5, %hi(D_8004A7C4)
/* DB030 8017A5F0 AD0C0044 */  sw         $t4, 0x44($t0)
/* DB034 8017A5F4 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* DB038 8017A5F8 3C0E800F */  lui        $t6, %hi(D_800E98E0)
.L8017A5FC_ovl5:
/* DB03C 8017A5FC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* DB040 8017A600 8DA20000 */  lw         $v0, 0x0($t5)
/* DB044 8017A604 00021080 */  sll        $v0, $v0, 2
/* DB048 8017A608 01C27021 */  addu       $t6, $t6, $v0
/* DB04C 8017A60C 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* DB050 8017A610 00220821 */  addu       $at, $at, $v0
/* DB054 8017A614 448E4000 */  mtc1       $t6, $f8
/* DB058 8017A618 00000000 */  nop
/* DB05C 8017A61C 468042A0 */  cvt.s.w    $f10, $f8
/* DB060 8017A620 0C0478DD */  jal        func_8011E374
/* DB064 8017A624 E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
/* DB068 8017A628 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DB06C 8017A62C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB070 8017A630 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L8017A634_ovl5:
/* DB074 8017A634 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB078 8017A638 8C6F0000 */  lw         $t7, 0x0($v1)
/* DB07C 8017A63C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DB080 8017A640 000FC080 */  sll        $t8, $t7, 2
/* DB084 8017A644 00380821 */  addu       $at, $at, $t8
/* DB088 8017A648 E42041D0 */  swc1       $f0, %lo(gEntitiesAngleYArray)($at)
/* DB08C 8017A64C 8C790000 */  lw         $t9, 0x0($v1)
/* DB090 8017A650 3C01800E */  lui        $at, %hi(D_800E17D0)
/* DB094 8017A654 00195080 */  sll        $t2, $t9, 2
/* DB098 8017A658 002A0821 */  addu       $at, $at, $t2
/* DB09C 8017A65C E42017D0 */  swc1       $f0, %lo(D_800E17D0)($at)
/* DB0A0 8017A660 910B0017 */  lbu        $t3, 0x17($t0)
/* DB0A4 8017A664 11600005 */  beqz       $t3, .L8017A67C_ovl3
.L8017A668_ovl5:
/* DB0A8 8017A668 00000000 */   nop
/* DB0AC 8017A66C 8D0C0034 */  lw         $t4, 0x34($t0)
glabel func_8017A670_ovl5
/* DB0B0 8017A670 2401FFFE */  addiu      $at, $zero, -0x2
/* DB0B4 8017A674 01816824 */  and        $t5, $t4, $at
/* DB0B8 8017A678 AD0D0034 */  sw         $t5, 0x34($t0)
.L8017A67C_ovl3:
/* DB0BC 8017A67C 10000265 */  b          .L8017B014_ovl3
/* DB0C0 8017A680 8D020044 */   lw        $v0, 0x44($t0)
.L8017A684_ovl3:
/* DB0C4 8017A684 8D0E0044 */  lw         $t6, 0x44($t0)
.L8017A688_ovl3:
/* DB0C8 8017A688 25CF0001 */  addiu      $t7, $t6, 0x1
/* DB0CC 8017A68C 2DE10005 */  sltiu      $at, $t7, 0x5
/* DB0D0 8017A690 1020024E */  beqz       $at, .L8017AFCC_ovl3
/* DB0D4 8017A694 000F7880 */   sll       $t7, $t7, 2
/* DB0D8 8017A698 3C018019 */  lui        $at, %hi(jtbl_8019759C_ovl3)
/* DB0DC 8017A69C 002F0821 */  addu       $at, $at, $t7
/* DB0E0 8017A6A0 8C2F759C */  lw         $t7, %lo(jtbl_8019759C_ovl3)($at)
/* DB0E4 8017A6A4 01E00008 */  jr         $t7
/* DB0E8 8017A6A8 00000000 */   nop
/* DB0EC 8017A6AC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DB0F0 8017A6B0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB0F4 8017A6B4 3C01800E */  lui        $at, %hi(D_800E17D0)
/* DB0F8 8017A6B8 3C0A800F */  lui        $t2, %hi(D_800E8920)
/* DB0FC 8017A6BC 8C620000 */  lw         $v0, 0x0($v1)
/* DB100 8017A6C0 00021080 */  sll        $v0, $v0, 2
/* DB104 8017A6C4 00220821 */  addu       $at, $at, $v0
/* DB108 8017A6C8 C42417D0 */  lwc1       $f4, %lo(D_800E17D0)($at)
/* DB10C 8017A6CC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* DB110 8017A6D0 00220821 */  addu       $at, $at, $v0
/* DB114 8017A6D4 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* DB118 8017A6D8 8C780000 */  lw         $t8, 0x0($v1)
/* DB11C 8017A6DC 0018C880 */  sll        $t9, $t8, 2
/* DB120 8017A6E0 01595021 */  addu       $t2, $t2, $t9
/* DB124 8017A6E4 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
/* DB128 8017A6E8 15400007 */  bnez       $t2, .L8017A708_ovl3
/* DB12C 8017A6EC 00000000 */   nop
/* DB130 8017A6F0 0C04828A */  jal        func_80120A28
/* DB134 8017A6F4 00000000 */   nop
/* DB138 8017A6F8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB13C 8017A6FC 44809000 */  mtc1       $zero, $f18
/* DB140 8017A700 100000BF */  b          .L8017AA00_ovl3
/* DB144 8017A704 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
.L8017A708_ovl3:
/* DB148 8017A708 0C0482BE */  jal        func_80120AF8
/* DB14C 8017A70C 27A4005C */   addiu     $a0, $sp, 0x5C
/* DB150 8017A710 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* DB154 8017A714 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* DB158 8017A718 3C05800E */  lui        $a1, %hi(D_800E17D0)
glabel func_8017A71C_ovl5
/* DB15C 8017A71C 3C048013 */  lui        $a0, %hi(D_8012BCA8 + 0x4)
/* DB160 8017A720 8D6C0000 */  lw         $t4, 0x0($t3)
/* DB164 8017A724 8C84BCAC */  lw         $a0, %lo(D_8012BCA8 + 0x4)($a0)
/* DB168 8017A728 000C6880 */  sll        $t5, $t4, 2
/* DB16C 8017A72C 00AD2821 */  addu       $a1, $a1, $t5
/* DB170 8017A730 0C03E209 */  jal        func_800F8824
/* DB174 8017A734 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
/* DB178 8017A738 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DB17C 8017A73C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB180 8017A740 46000187 */  neg.s      $f6, $f0
/* DB184 8017A744 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* DB188 8017A748 8C6E0000 */  lw         $t6, 0x0($v1)
/* DB18C 8017A74C 44804000 */  mtc1       $zero, $f8
/* DB190 8017A750 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB194 8017A754 000E7880 */  sll        $t7, $t6, 2
/* DB198 8017A758 002F0821 */  addu       $at, $at, $t7
/* DB19C 8017A75C E426A6E0 */  swc1       $f6, %lo(D_800EA6E0)($at)
/* DB1A0 8017A760 8C620000 */  lw         $v0, 0x0($v1)
/* DB1A4 8017A764 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* DB1A8 8017A768 44809000 */  mtc1       $zero, $f18
/* DB1AC 8017A76C 00021080 */  sll        $v0, $v0, 2
/* DB1B0 8017A770 00220821 */  addu       $at, $at, $v0
/* DB1B4 8017A774 C422A6E0 */  lwc1       $f2, %lo(D_800EA6E0)($at)
/* DB1B8 8017A778 3C18800F */  lui        $t8, %hi(D_800E8AE0)
/* DB1BC 8017A77C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DB1C0 8017A780 4602403C */  c.lt.s     $f8, $f2
/* DB1C4 8017A784 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* DB1C8 8017A788 0302C021 */  addu       $t8, $t8, $v0
/* DB1CC 8017A78C 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* DB1D0 8017A790 4502000A */  bc1fl      .L8017A7BC_ovl3
/* DB1D4 8017A794 44803000 */   mtc1      $zero, $f6
/* DB1D8 8017A798 44815000 */  mtc1       $at, $f10
/* DB1DC 8017A79C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* DB1E0 8017A7A0 00220821 */  addu       $at, $at, $v0
/* DB1E4 8017A7A4 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* DB1E8 8017A7A8 46045032 */  c.eq.s     $f10, $f4
/* DB1EC 8017A7AC 00000000 */  nop
/* DB1F0 8017A7B0 4501000E */  bc1t       .L8017A7EC_ovl3
/* DB1F4 8017A7B4 00000000 */   nop
.L8017A7B8_ovl5:
/* DB1F8 8017A7B8 44803000 */  mtc1       $zero, $f6
.L8017A7BC_ovl3:
/* DB1FC 8017A7BC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DB200 8017A7C0 4606103C */  c.lt.s     $f2, $f6
.L8017A7C4_ovl5:
/* DB204 8017A7C4 00000000 */  nop
/* DB208 8017A7C8 4500000E */  bc1f       .L8017A804_ovl3
/* DB20C 8017A7CC 00000000 */   nop
/* DB210 8017A7D0 44814000 */  mtc1       $at, $f8
/* DB214 8017A7D4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* DB218 8017A7D8 00220821 */  addu       $at, $at, $v0
/* DB21C 8017A7DC C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* DB220 8017A7E0 460A4032 */  c.eq.s     $f8, $f10
/* DB224 8017A7E4 00000000 */  nop
.L8017A7E8_ovl5:
/* DB228 8017A7E8 45000006 */  bc1f       .L8017A804_ovl3
.L8017A7EC_ovl3:
/* DB22C 8017A7EC 3C018019 */   lui       $at, %hi(D_801975B0_ovl3)
/* DB230 8017A7F0 C42475B0 */  lwc1       $f4, %lo(D_801975B0_ovl3)($at)
/* DB234 8017A7F4 C7A60060 */  lwc1       $f6, 0x60($sp)
/* DB238 8017A7F8 46062002 */  mul.s      $f0, $f4, $f6
/* DB23C 8017A7FC 10000007 */  b          .L8017A81C_ovl3
/* DB240 8017A800 46121032 */   c.eq.s    $f2, $f18
.L8017A804_ovl3:
/* DB244 8017A804 3C018019 */  lui        $at, %hi(D_801975B4_ovl3)
/* DB248 8017A808 C42875B4 */  lwc1       $f8, %lo(D_801975B4_ovl3)($at)
/* DB24C 8017A80C C7AA0060 */  lwc1       $f10, 0x60($sp)
/* DB250 8017A810 460A4002 */  mul.s      $f0, $f8, $f10
/* DB254 8017A814 00000000 */  nop
/* DB258 8017A818 46121032 */  c.eq.s     $f2, $f18
.L8017A81C_ovl3:
/* DB25C 8017A81C 00000000 */  nop
/* DB260 8017A820 45000004 */  bc1f       .L8017A834_ovl3
/* DB264 8017A824 00000000 */   nop
/* DB268 8017A828 44807000 */  mtc1       $zero, $f14
/* DB26C 8017A82C 1000000D */  b          .L8017A864_ovl3
/* DB270 8017A830 4612103C */   c.lt.s    $f2, $f18
.L8017A834_ovl3:
/* DB274 8017A834 8F188AE0 */  lw         $t8, %lo(D_800E8AE0)($t8)
/* DB278 8017A838 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DB27C 8017A83C 33190006 */  andi       $t9, $t8, 0x6
/* DB280 8017A840 57200006 */  bnel       $t9, $zero, .L8017A85C_ovl3
/* DB284 8017A844 44817000 */   mtc1      $at, $f14
/* DB288 8017A848 3C014000 */  lui        $at, (0x40000000 >> 16)
.L8017A84C_ovl5:
/* DB28C 8017A84C 44817000 */  mtc1       $at, $f14
/* DB290 8017A850 10000004 */  b          .L8017A864_ovl3
/* DB294 8017A854 4612103C */   c.lt.s    $f2, $f18
/* DB298 8017A858 44817000 */  mtc1       $at, $f14
.L8017A85C_ovl3:
/* DB29C 8017A85C 00000000 */  nop
/* DB2A0 8017A860 4612103C */  c.lt.s     $f2, $f18
.L8017A864_ovl3:
/* DB2A4 8017A864 3C014120 */  lui        $at, (0x41200000 >> 16)
/* DB2A8 8017A868 44812000 */  mtc1       $at, $f4
/* DB2AC 8017A86C 3C01800E */  lui        $at, %hi(D_800E6690)
/* DB2B0 8017A870 45000003 */  bc1f       .L8017A880_ovl3
/* DB2B4 8017A874 00220821 */   addu      $at, $at, $v0
.L8017A878_ovl5:
/* DB2B8 8017A878 10000002 */  b          .L8017A884_ovl3
.L8017A87C_ovl5:
/* DB2BC 8017A87C 46001307 */   neg.s     $f12, $f2
.L8017A880_ovl3:
/* DB2C0 8017A880 46001306 */  mov.s      $f12, $f2
.L8017A884_ovl3:
/* DB2C4 8017A884 46046182 */  mul.s      $f6, $f12, $f4
/* DB2C8 8017A888 4612103C */  c.lt.s     $f2, $f18
/* DB2CC 8017A88C 46003202 */  mul.s      $f8, $f6, $f0
/* DB2D0 8017A890 45000003 */  bc1f       .L8017A8A0_ovl3
/* DB2D4 8017A894 46004400 */   add.s     $f16, $f8, $f0
/* DB2D8 8017A898 10000002 */  b          .L8017A8A4_ovl3
/* DB2DC 8017A89C 46001307 */   neg.s     $f12, $f2
.L8017A8A0_ovl3:
/* DB2E0 8017A8A0 46001306 */  mov.s      $f12, $f2
.L8017A8A4_ovl3:
/* DB2E4 8017A8A4 E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
/* DB2E8 8017A8A8 3C014080 */  lui        $at, (0x40800000 >> 16)
.L8017A8AC_ovl5:
/* DB2EC 8017A8AC 44815000 */  mtc1       $at, $f10
/* DB2F0 8017A8B0 3C18800C */  lui        $t8, %hi(D_800BE4EC)
/* DB2F4 8017A8B4 460A6102 */  mul.s      $f4, $f12, $f10
/* DB2F8 8017A8B8 00000000 */  nop
/* DB2FC 8017A8BC 460E2182 */  mul.s      $f6, $f4, $f14
/* DB300 8017A8C0 460E3000 */  add.s      $f0, $f6, $f14
/* DB304 8017A8C4 4612003C */  c.lt.s     $f0, $f18
/* DB308 8017A8C8 00000000 */  nop
/* DB30C 8017A8CC 45000008 */  bc1f       .L8017A8F0_ovl3
/* DB310 8017A8D0 00000000 */   nop
/* DB314 8017A8D4 8C6A0000 */  lw         $t2, 0x0($v1)
/* DB318 8017A8D8 3C01800E */  lui        $at, %hi(D_800E6850)
/* DB31C 8017A8DC 46000207 */  neg.s      $f8, $f0
/* DB320 8017A8E0 000A5880 */  sll        $t3, $t2, 2
/* DB324 8017A8E4 002B0821 */  addu       $at, $at, $t3
/* DB328 8017A8E8 10000006 */  b          .L8017A904_ovl3
/* DB32C 8017A8EC E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
.L8017A8F0_ovl3:
/* DB330 8017A8F0 8C6C0000 */  lw         $t4, 0x0($v1)
/* DB334 8017A8F4 3C01800E */  lui        $at, %hi(D_800E6850)
/* DB338 8017A8F8 000C6880 */  sll        $t5, $t4, 2
/* DB33C 8017A8FC 002D0821 */  addu       $at, $at, $t5
/* DB340 8017A900 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8017A904_ovl3:
/* DB344 8017A904 8C620000 */  lw         $v0, 0x0($v1)
/* DB348 8017A908 3C01800E */  lui        $at, %hi(D_800E64D0)
.L8017A90C_ovl5:
/* DB34C 8017A90C 00021080 */  sll        $v0, $v0, 2
/* DB350 8017A910 00220821 */  addu       $at, $at, $v0
/* DB354 8017A914 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* DB358 8017A918 3C014040 */  lui        $at, (0x40400000 >> 16)
/* DB35C 8017A91C 01C27021 */  addu       $t6, $t6, $v0
/* DB360 8017A920 4612003C */  c.lt.s     $f0, $f18
/* DB364 8017A924 00000000 */  nop
/* DB368 8017A928 45020004 */  bc1fl      .L8017A93C_ovl3
/* DB36C 8017A92C 46000386 */   mov.s     $f14, $f0
/* DB370 8017A930 10000002 */  b          .L8017A93C_ovl3
/* DB374 8017A934 46000387 */   neg.s     $f14, $f0
/* DB378 8017A938 46000386 */  mov.s      $f14, $f0
.L8017A93C_ovl3:
/* DB37C 8017A93C 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* DB380 8017A940 31CF0006 */  andi       $t7, $t6, 0x6
/* DB384 8017A944 55E00006 */  bnel       $t7, $zero, .L8017A960_ovl3
/* DB388 8017A948 44816000 */   mtc1      $at, $f12
/* DB38C 8017A94C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* DB390 8017A950 44816000 */  mtc1       $at, $f12
/* DB394 8017A954 10000004 */  b          .L8017A968_ovl3
/* DB398 8017A958 460E603C */   c.lt.s    $f12, $f14
/* DB39C 8017A95C 44816000 */  mtc1       $at, $f12
.L8017A960_ovl3:
/* DB3A0 8017A960 00000000 */  nop
/* DB3A4 8017A964 460E603C */  c.lt.s     $f12, $f14
.L8017A968_ovl3:
/* DB3A8 8017A968 00000000 */  nop
/* DB3AC 8017A96C 45000024 */  bc1f       .L8017AA00_ovl3
/* DB3B0 8017A970 00000000 */   nop
/* DB3B4 8017A974 8F18E4EC */  lw         $t8, %lo(D_800BE4EC)($t8)
/* DB3B8 8017A978 24010003 */  addiu      $at, $zero, 0x3
/* DB3BC 8017A97C 0301001B */  divu       $zero, $t8, $at
/* DB3C0 8017A980 0000C810 */  mfhi       $t9
/* DB3C4 8017A984 1720001E */  bnez       $t9, .L8017AA00_ovl3
/* DB3C8 8017A988 00000000 */   nop
/* DB3CC 8017A98C 0C048C90 */  jal        func_80123240
/* DB3D0 8017A990 00000000 */   nop
.L8017A994_ovl5:
/* DB3D4 8017A994 3C088013 */  lui        $t0, %hi(gKirbyState)
.L8017A998_ovl5:
/* DB3D8 8017A998 44809000 */  mtc1       $zero, $f18
/* DB3DC 8017A99C 2401FFFF */  addiu      $at, $zero, -0x1
/* DB3E0 8017A9A0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DB3E4 8017A9A4 10410016 */  beq        $v0, $at, .L8017AA00_ovl3
/* DB3E8 8017A9A8 00403025 */   or        $a2, $v0, $zero
/* DB3EC 8017A9AC 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* DB3F0 8017A9B0 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* DB3F4 8017A9B4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* DB3F8 8017A9B8 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* DB3FC 8017A9BC 8D420000 */  lw         $v0, 0x0($t2)
/* DB400 8017A9C0 24040005 */  addiu      $a0, $zero, 0x5
/* DB404 8017A9C4 24050001 */  addiu      $a1, $zero, 0x1
/* DB408 8017A9C8 00021080 */  sll        $v0, $v0, 2
/* DB40C 8017A9CC 00220821 */  addu       $at, $at, $v0
/* DB410 8017A9D0 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* DB414 8017A9D4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* DB418 8017A9D8 00220821 */  addu       $at, $at, $v0
/* DB41C 8017A9DC C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
/* DB420 8017A9E0 00E23821 */  addu       $a3, $a3, $v0
/* DB424 8017A9E4 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* DB428 8017A9E8 E7AA0010 */  swc1       $f10, 0x10($sp)
/* DB42C 8017A9EC 0C029FDD */  jal        func_800A7F74
/* DB430 8017A9F0 E7A40014 */   swc1      $f4, 0x14($sp)
/* DB434 8017A9F4 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB438 8017A9F8 44809000 */  mtc1       $zero, $f18
/* DB43C 8017A9FC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L8017AA00_ovl3:
/* DB440 8017AA00 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DB444 8017AA04 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB448 8017AA08 3C05800E */  lui        $a1, %hi(D_800E64D0)
/* DB44C 8017AA0C 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
/* DB450 8017AA10 8C620000 */  lw         $v0, 0x0($v1)
/* DB454 8017AA14 3C014080 */  lui        $at, (0x40800000 >> 16)
/* DB458 8017AA18 00021080 */  sll        $v0, $v0, 2
/* DB45C 8017AA1C 00A25821 */  addu       $t3, $a1, $v0
/* DB460 8017AA20 C5600000 */  lwc1       $f0, 0x0($t3)
/* DB464 8017AA24 46009032 */  c.eq.s     $f18, $f0
.L8017AA28_ovl5:
/* DB468 8017AA28 00000000 */  nop
/* DB46C 8017AA2C 45010062 */  bc1t       .L8017ABB8_ovl3
/* DB470 8017AA30 00000000 */   nop
.L8017AA34_ovl5:
/* DB474 8017AA34 44813000 */  mtc1       $at, $f6
/* DB478 8017AA38 3C018019 */  lui        $at, %hi(D_801975B8_ovl3)
.L8017AA3C_ovl5:
/* DB47C 8017AA3C C42A75B8 */  lwc1       $f10, %lo(D_801975B8_ovl3)($at)
/* DB480 8017AA40 46060202 */  mul.s      $f8, $f0, $f6
/* DB484 8017AA44 3C014334 */  lui        $at, (0x43340000 >> 16)
.L8017AA48_ovl5:
/* DB488 8017AA48 44813000 */  mtc1       $at, $f6
.L8017AA4C_ovl5:
/* DB48C 8017AA4C 00002025 */  or         $a0, $zero, $zero
/* DB490 8017AA50 3C018019 */  lui        $at, %hi(D_801975C0_ovl3)
/* DB494 8017AA54 460A4102 */  mul.s      $f4, $f8, $f10
/* DB498 8017AA58 C50A0040 */  lwc1       $f10, 0x40($t0)
/* DB49C 8017AA5C 46062203 */  div.s      $f8, $f4, $f6
/* DB4A0 8017AA60 44803000 */  mtc1       $zero, $f6
/* DB4A4 8017AA64 46085100 */  add.s      $f4, $f10, $f8
/* DB4A8 8017AA68 E5040040 */  swc1       $f4, 0x40($t0)
/* DB4AC 8017AA6C C5020040 */  lwc1       $f2, 0x40($t0)
/* DB4B0 8017AA70 4606103C */  c.lt.s     $f2, $f6
/* DB4B4 8017AA74 00000000 */  nop
/* DB4B8 8017AA78 45000007 */  bc1f       .L8017AA98_ovl3
/* DB4BC 8017AA7C 00000000 */   nop
/* DB4C0 8017AA80 3C018019 */  lui        $at, %hi(D_801975BC_ovl3)
/* DB4C4 8017AA84 C42075BC */  lwc1       $f0, %lo(D_801975BC_ovl3)($at)
/* DB4C8 8017AA88 24040001 */  addiu      $a0, $zero, 0x1
/* DB4CC 8017AA8C 46001280 */  add.s      $f10, $f2, $f0
.L8017AA90_ovl5:
/* DB4D0 8017AA90 10000009 */  b          .L8017AAB8_ovl3
/* DB4D4 8017AA94 E50A0040 */   swc1      $f10, 0x40($t0)
.L8017AA98_ovl3:
/* DB4D8 8017AA98 C42075C0 */  lwc1       $f0, %lo(D_801975C0_ovl3)($at)
/* DB4DC 8017AA9C 4602003E */  c.le.s     $f0, $f2
/* DB4E0 8017AAA0 00000000 */  nop
/* DB4E4 8017AAA4 45020005 */  bc1fl      .L8017AABC_ovl3
/* DB4E8 8017AAA8 8C620000 */   lw        $v0, 0x0($v1)
/* DB4EC 8017AAAC 46001201 */  sub.s      $f8, $f2, $f0
/* DB4F0 8017AAB0 24040001 */  addiu      $a0, $zero, 0x1
/* DB4F4 8017AAB4 E5080040 */  swc1       $f8, 0x40($t0)
.L8017AAB8_ovl3:
/* DB4F8 8017AAB8 8C620000 */  lw         $v0, 0x0($v1)
.L8017AABC_ovl3:
/* DB4FC 8017AABC 3C0C800F */  lui        $t4, %hi(D_800E8920)
/* DB500 8017AAC0 00021080 */  sll        $v0, $v0, 2
/* DB504 8017AAC4 01826021 */  addu       $t4, $t4, $v0
/* DB508 8017AAC8 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
/* DB50C 8017AACC 1180001C */  beqz       $t4, .L8017AB40_ovl3
/* DB510 8017AAD0 00000000 */   nop
/* DB514 8017AAD4 1080001A */  beqz       $a0, .L8017AB40_ovl3
/* DB518 8017AAD8 00A26821 */   addu      $t5, $a1, $v0
/* DB51C 8017AADC C5A00000 */  lwc1       $f0, 0x0($t5)
/* DB520 8017AAE0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DB524 8017AAE4 44812000 */  mtc1       $at, $f4
/* DB528 8017AAE8 4612003C */  c.lt.s     $f0, $f18
/* DB52C 8017AAEC 00000000 */  nop
/* DB530 8017AAF0 45020004 */  bc1fl      .L8017AB04_ovl3
/* DB534 8017AAF4 46000306 */   mov.s     $f12, $f0
/* DB538 8017AAF8 10000002 */  b          .L8017AB04_ovl3
/* DB53C 8017AAFC 46000307 */   neg.s     $f12, $f0
/* DB540 8017AB00 46000306 */  mov.s      $f12, $f0
.L8017AB04_ovl3:
/* DB544 8017AB04 460C203C */  c.lt.s     $f4, $f12
/* DB548 8017AB08 00000000 */  nop
.L8017AB0C_ovl5:
/* DB54C 8017AB0C 4500000C */  bc1f       .L8017AB40_ovl3
/* DB550 8017AB10 00000000 */   nop
/* DB554 8017AB14 0C029D9E */  jal        play_sound
.L8017AB18_ovl5:
/* DB558 8017AB18 24040121 */   addiu     $a0, $zero, 0x121
/* DB55C 8017AB1C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L8017AB20_ovl5:
/* DB560 8017AB20 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB564 8017AB24 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB568 8017AB28 3C05800E */  lui        $a1, %hi(D_800E64D0)
.L8017AB2C_ovl5:
/* DB56C 8017AB2C 8C620000 */  lw         $v0, 0x0($v1)
.L8017AB30_ovl5:
/* DB570 8017AB30 44809000 */  mtc1       $zero, $f18
/* DB574 8017AB34 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
/* DB578 8017AB38 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DB57C 8017AB3C 00021080 */  sll        $v0, $v0, 2
.L8017AB40_ovl3:
/* DB580 8017AB40 3C06800E */  lui        $a2, %hi(D_800E6A10)
/* DB584 8017AB44 24C66A10 */  addiu      $a2, $a2, %lo(D_800E6A10)
/* DB588 8017AB48 00C27021 */  addu       $t6, $a2, $v0
/* DB58C 8017AB4C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* DB590 8017AB50 44813000 */  mtc1       $at, $f6
/* DB594 8017AB54 C5CA0000 */  lwc1       $f10, 0x0($t6)
/* DB598 8017AB58 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x50)
/* DB59C 8017AB5C 24847238 */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x50)
/* DB5A0 8017AB60 460A3032 */  c.eq.s     $f6, $f10
/* DB5A4 8017AB64 C5020040 */  lwc1       $f2, 0x40($t0)
/* DB5A8 8017AB68 45020007 */  bc1fl      .L8017AB88_ovl3
/* DB5AC 8017AB6C E4820000 */   swc1      $f2, 0x0($a0)
.L8017AB70_ovl5:
/* DB5B0 8017AB70 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x50)
.L8017AB74_ovl5:
/* DB5B4 8017AB74 46001207 */  neg.s      $f8, $f2
/* DB5B8 8017AB78 24847238 */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x50)
/* DB5BC 8017AB7C 10000002 */  b          .L8017AB88_ovl3
glabel func_8017AB80_ovl5
/* DB5C0 8017AB80 E4880000 */   swc1      $f8, 0x0($a0)
/* DB5C4 8017AB84 E4820000 */  swc1       $f2, 0x0($a0)
.L8017AB88_ovl3:
/* DB5C8 8017AB88 8C6F0000 */  lw         $t7, 0x0($v1)
/* DB5CC 8017AB8C 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* DB5D0 8017AB90 C4840000 */  lwc1       $f4, 0x0($a0)
/* DB5D4 8017AB94 000FC080 */  sll        $t8, $t7, 2
/* DB5D8 8017AB98 0338C821 */  addu       $t9, $t9, $t8
/* DB5DC 8017AB9C 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* DB5E0 8017ABA0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
glabel func_8017ABA4_ovl5
/* DB5E4 8017ABA4 8F2A0004 */  lw         $t2, 0x4($t9)
/* DB5E8 8017ABA8 E5440030 */  swc1       $f4, 0x30($t2)
/* DB5EC 8017ABAC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB5F0 8017ABB0 8C620000 */  lw         $v0, 0x0($v1)
/* DB5F4 8017ABB4 00021080 */  sll        $v0, $v0, 2
.L8017ABB8_ovl3:
/* DB5F8 8017ABB8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* DB5FC 8017ABBC 00220821 */  addu       $at, $at, $v0
/* DB600 8017ABC0 C426A6E0 */  lwc1       $f6, %lo(D_800EA6E0)($at)
/* DB604 8017ABC4 3C06800E */  lui        $a2, %hi(D_800E6A10)
glabel func_8017ABC8_ovl5
/* DB608 8017ABC8 3C0B800F */  lui        $t3, %hi(D_800E8920)
/* DB60C 8017ABCC 46069032 */  c.eq.s     $f18, $f6
/* DB610 8017ABD0 24C66A10 */  addiu      $a2, $a2, %lo(D_800E6A10)
/* DB614 8017ABD4 01625821 */  addu       $t3, $t3, $v0
/* DB618 8017ABD8 450200FD */  bc1fl      .L8017AFD0_ovl3
/* DB61C 8017ABDC 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB620 8017ABE0 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
/* DB624 8017ABE4 3C04800D */  lui        $a0, %hi(gKirbyController)
/* DB628 8017ABE8 516000F9 */  beql       $t3, $zero, .L8017AFD0_ovl3
/* DB62C 8017ABEC 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB630 8017ABF0 94846FE8 */  lhu        $a0, %lo(gKirbyController)($a0)
/* DB634 8017ABF4 00A26821 */  addu       $t5, $a1, $v0
/* DB638 8017ABF8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* DB63C 8017ABFC 308C0300 */  andi       $t4, $a0, 0x300
/* DB640 8017AC00 518000F3 */  beql       $t4, $zero, .L8017AFD0_ovl3
/* DB644 8017AC04 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB648 8017AC08 C5A00000 */  lwc1       $f0, 0x0($t5)
/* DB64C 8017AC0C 44815000 */  mtc1       $at, $f10
/* DB650 8017AC10 308E0100 */  andi       $t6, $a0, 0x100
/* DB654 8017AC14 4612003C */  c.lt.s     $f0, $f18
/* DB658 8017AC18 00000000 */  nop
/* DB65C 8017AC1C 45020004 */  bc1fl      .L8017AC30_ovl3
/* DB660 8017AC20 46000306 */   mov.s     $f12, $f0
.L8017AC24_ovl5:
/* DB664 8017AC24 10000002 */  b          .L8017AC30_ovl3
/* DB668 8017AC28 46000307 */   neg.s     $f12, $f0
/* DB66C 8017AC2C 46000306 */  mov.s      $f12, $f0
.L8017AC30_ovl3:
/* DB670 8017AC30 460A603E */  c.le.s     $f12, $f10
/* DB674 8017AC34 00000000 */  nop
/* DB678 8017AC38 450200E5 */  bc1fl      .L8017AFD0_ovl3
/* DB67C 8017AC3C 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB680 8017AC40 11C00008 */  beqz       $t6, .L8017AC64_ovl3
/* DB684 8017AC44 AD000044 */   sw        $zero, 0x44($t0)
/* DB688 8017AC48 8C6F0000 */  lw         $t7, 0x0($v1)
/* DB68C 8017AC4C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DB690 8017AC50 44814000 */  mtc1       $at, $f8
/* DB694 8017AC54 000FC080 */  sll        $t8, $t7, 2
/* DB698 8017AC58 00D8C821 */  addu       $t9, $a2, $t8
/* DB69C 8017AC5C 100000DB */  b          .L8017AFCC_ovl3
/* DB6A0 8017AC60 E7280000 */   swc1      $f8, 0x0($t9)
.L8017AC64_ovl3:
/* DB6A4 8017AC64 8C6A0000 */  lw         $t2, 0x0($v1)
.L8017AC68_ovl5:
/* DB6A8 8017AC68 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* DB6AC 8017AC6C 44812000 */  mtc1       $at, $f4
/* DB6B0 8017AC70 000A5880 */  sll        $t3, $t2, 2
/* DB6B4 8017AC74 00CB6021 */  addu       $t4, $a2, $t3
/* DB6B8 8017AC78 100000D4 */  b          .L8017AFCC_ovl3
/* DB6BC 8017AC7C E5840000 */   swc1      $f4, 0x0($t4)
/* DB6C0 8017AC80 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* DB6C4 8017AC84 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* DB6C8 8017AC88 3C0E800F */  lui        $t6, %hi(D_800E8920)
/* DB6CC 8017AC8C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* DB6D0 8017AC90 8DA20000 */  lw         $v0, 0x0($t5)
/* DB6D4 8017AC94 240F0002 */  addiu      $t7, $zero, 0x2
/* DB6D8 8017AC98 00021080 */  sll        $v0, $v0, 2
/* DB6DC 8017AC9C 01C27021 */  addu       $t6, $t6, $v0
/* DB6E0 8017ACA0 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
/* DB6E4 8017ACA4 00220821 */  addu       $at, $at, $v0
/* DB6E8 8017ACA8 55C00005 */  bnel       $t6, $zero, .L8017ACC0_ovl3
/* DB6EC 8017ACAC 44809000 */   mtc1      $zero, $f18
/* DB6F0 8017ACB0 AD0F0044 */  sw         $t7, 0x44($t0)
/* DB6F4 8017ACB4 1000009D */  b          .L8017AF2C_ovl3
/* DB6F8 8017ACB8 AD0F003C */   sw        $t7, 0x3C($t0)
.L8017ACBC_ovl5:
/* DB6FC 8017ACBC 44809000 */  mtc1       $zero, $f18
.L8017ACC0_ovl3:
/* DB700 8017ACC0 C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
/* DB704 8017ACC4 3C01800E */  lui        $at, %hi(D_800E6850)
/* DB708 8017ACC8 3C05800E */  lui        $a1, %hi(D_800E17D0)
/* DB70C 8017ACCC 46069032 */  c.eq.s     $f18, $f6
/* DB710 8017ACD0 00220821 */  addu       $at, $at, $v0
/* DB714 8017ACD4 00A22821 */  addu       $a1, $a1, $v0
/* DB718 8017ACD8 3C048013 */  lui        $a0, %hi(D_8012BCA8 + 0x4)
/* DB71C 8017ACDC 45000037 */  bc1f       .L8017ADBC_ovl3
.L8017ACE0_ovl5:
/* DB720 8017ACE0 00000000 */   nop
/* DB724 8017ACE4 C42A6850 */  lwc1       $f10, %lo(D_800E6850)($at)
/* DB728 8017ACE8 3C19800F */  lui        $t9, %hi(D_800E9720)
/* DB72C 8017ACEC 27399720 */  addiu      $t9, $t9, %lo(D_800E9720)
/* DB730 8017ACF0 460A9032 */  c.eq.s     $f18, $f10
/* DB734 8017ACF4 00000000 */  nop
/* DB738 8017ACF8 45000030 */  bc1f       .L8017ADBC_ovl3
/* DB73C 8017ACFC 00000000 */   nop
/* DB740 8017AD00 00592021 */  addu       $a0, $v0, $t9
/* DB744 8017AD04 8C830000 */  lw         $v1, 0x0($a0)
/* DB748 8017AD08 506000B1 */  beql       $v1, $zero, .L8017AFD0_ovl3
/* DB74C 8017AD0C 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB750 8017AD10 18600028 */  blez       $v1, .L8017ADB4_ovl3
/* DB754 8017AD14 246AFFFF */   addiu     $t2, $v1, -0x1
/* DB758 8017AD18 0C048724 */  jal        func_80121C90
/* DB75C 8017AD1C AC8A0000 */   sw        $t2, 0x0($a0)
/* DB760 8017AD20 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB764 8017AD24 10400016 */  beqz       $v0, .L8017AD80_ovl3
.L8017AD28_ovl5:
/* DB768 8017AD28 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* DB76C 8017AD2C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DB770 8017AD30 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB774 8017AD34 3C01800E */  lui        $at, %hi(D_800E6A10)
/* DB778 8017AD38 8C620000 */  lw         $v0, 0x0($v1)
/* DB77C 8017AD3C 00021080 */  sll        $v0, $v0, 2
/* DB780 8017AD40 00220821 */  addu       $at, $at, $v0
.L8017AD44_ovl5:
/* DB784 8017AD44 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
.L8017AD48_ovl5:
/* DB788 8017AD48 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* DB78C 8017AD4C 44812000 */  mtc1       $at, $f4
/* DB790 8017AD50 3C01800E */  lui        $at, %hi(D_800E6690)
glabel func_8017AD54_ovl5
/* DB794 8017AD54 00220821 */  addu       $at, $at, $v0
/* DB798 8017AD58 46044182 */  mul.s      $f6, $f8, $f4
/* DB79C 8017AD5C E4266690 */  swc1       $f6, %lo(D_800E6690)($at)
/* DB7A0 8017AD60 8C6B0000 */  lw         $t3, 0x0($v1)
/* DB7A4 8017AD64 3C014000 */  lui        $at, (0x40000000 >> 16)
/* DB7A8 8017AD68 44815000 */  mtc1       $at, $f10
/* DB7AC 8017AD6C 3C01800E */  lui        $at, %hi(D_800E6850)
/* DB7B0 8017AD70 000B6080 */  sll        $t4, $t3, 2
/* DB7B4 8017AD74 002C0821 */  addu       $at, $at, $t4
/* DB7B8 8017AD78 10000094 */  b          .L8017AFCC_ovl3
/* DB7BC 8017AD7C E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L8017AD80_ovl3:
/* DB7C0 8017AD80 8D0D0034 */  lw         $t5, 0x34($t0)
/* DB7C4 8017AD84 31AE0001 */  andi       $t6, $t5, 0x1
/* DB7C8 8017AD88 55C00091 */  bnel       $t6, $zero, .L8017AFD0_ovl3
/* DB7CC 8017AD8C 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB7D0 8017AD90 0C048465 */  jal        func_80121194
/* DB7D4 8017AD94 00000000 */   nop
/* DB7D8 8017AD98 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB7DC 8017AD9C 1040008B */  beqz       $v0, .L8017AFCC_ovl3
/* DB7E0 8017ADA0 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* DB7E4 8017ADA4 8D0F0034 */  lw         $t7, 0x34($t0)
/* DB7E8 8017ADA8 35F80001 */  ori        $t8, $t7, 0x1
/* DB7EC 8017ADAC 10000087 */  b          .L8017AFCC_ovl3
.L8017ADB0_ovl5:
/* DB7F0 8017ADB0 AD180034 */   sw        $t8, 0x34($t0)
.L8017ADB4_ovl3:
/* DB7F4 8017ADB4 10000085 */  b          .L8017AFCC_ovl3
/* DB7F8 8017ADB8 AD060044 */   sw        $a2, 0x44($t0)
.L8017ADBC_ovl3:
/* DB7FC 8017ADBC 8C84BCAC */  lw         $a0, %lo(D_8012BCA8 + 0x4)($a0)
/* DB800 8017ADC0 0C03E209 */  jal        func_800F8824
/* DB804 8017ADC4 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
/* DB808 8017ADC8 44809000 */  mtc1       $zero, $f18
/* DB80C 8017ADCC 3C028013 */  lui        $v0, %hi(D_8012BCA0)
/* DB810 8017ADD0 3C03800E */  lui        $v1, %hi(D_800E17D0)
/* DB814 8017ADD4 4612003C */  c.lt.s     $f0, $f18
/* DB818 8017ADD8 246317D0 */  addiu      $v1, $v1, %lo(D_800E17D0)
/* DB81C 8017ADDC 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
/* DB820 8017ADE0 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* DB824 8017ADE4 45000014 */  bc1f       .L8017AE38_ovl3
/* DB828 8017ADE8 00000000 */   nop
/* DB82C 8017ADEC 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* DB830 8017ADF0 8C44000C */  lw         $a0, 0xC($v0)
.L8017ADF4_ovl5:
/* DB834 8017ADF4 8F2A0000 */  lw         $t2, 0x0($t9)
/* DB838 8017ADF8 000A5880 */  sll        $t3, $t2, 2
/* DB83C 8017ADFC 006B6021 */  addu       $t4, $v1, $t3
/* DB840 8017AE00 0C03E209 */  jal        func_800F8824
/* DB844 8017AE04 8D850000 */   lw        $a1, 0x0($t4)
/* DB848 8017AE08 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DB84C 8017AE0C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB850 8017AE10 3C04800F */  lui        $a0, %hi(D_800EA8A0)
/* DB854 8017AE14 2484A8A0 */  addiu      $a0, $a0, %lo(D_800EA8A0)
/* DB858 8017AE18 8C6D0000 */  lw         $t5, 0x0($v1)
/* DB85C 8017AE1C 46000207 */  neg.s      $f8, $f0
/* DB860 8017AE20 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB864 8017AE24 000D7080 */  sll        $t6, $t5, 2
/* DB868 8017AE28 008E7821 */  addu       $t7, $a0, $t6
/* DB86C 8017AE2C E5E80000 */  swc1       $f8, 0x0($t7)
/* DB870 8017AE30 10000013 */  b          .L8017AE80_ovl3
/* DB874 8017AE34 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
.L8017AE38_ovl3:
/* DB878 8017AE38 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* DB87C 8017AE3C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* DB880 8017AE40 8C44000C */  lw         $a0, 0xC($v0)
/* DB884 8017AE44 8F190000 */  lw         $t9, 0x0($t8)
.L8017AE48_ovl5:
/* DB888 8017AE48 00195080 */  sll        $t2, $t9, 2
/* DB88C 8017AE4C 006A5821 */  addu       $t3, $v1, $t2
/* DB890 8017AE50 0C03E209 */  jal        func_800F8824
/* DB894 8017AE54 8D650000 */   lw        $a1, 0x0($t3)
/* DB898 8017AE58 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DB89C 8017AE5C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DB8A0 8017AE60 3C04800F */  lui        $a0, %hi(D_800EA8A0)
/* DB8A4 8017AE64 2484A8A0 */  addiu      $a0, $a0, %lo(D_800EA8A0)
/* DB8A8 8017AE68 8C6C0000 */  lw         $t4, 0x0($v1)
.L8017AE6C_ovl5:
/* DB8AC 8017AE6C 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB8B0 8017AE70 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DB8B4 8017AE74 000C6880 */  sll        $t5, $t4, 2
/* DB8B8 8017AE78 008D7021 */  addu       $t6, $a0, $t5
/* DB8BC 8017AE7C E5C00000 */  swc1       $f0, 0x0($t6)
.L8017AE80_ovl3:
/* DB8C0 8017AE80 8C620000 */  lw         $v0, 0x0($v1)
/* DB8C4 8017AE84 3C018019 */  lui        $at, %hi(D_801975C4_ovl3)
/* DB8C8 8017AE88 C42675C4 */  lwc1       $f6, %lo(D_801975C4_ovl3)($at)
/* DB8CC 8017AE8C 00021080 */  sll        $v0, $v0, 2
/* DB8D0 8017AE90 00827821 */  addu       $t7, $a0, $v0
/* DB8D4 8017AE94 C5E40000 */  lwc1       $f4, 0x0($t7)
/* DB8D8 8017AE98 4606203C */  c.lt.s     $f4, $f6
/* DB8DC 8017AE9C 00000000 */  nop
/* DB8E0 8017AEA0 45020015 */  bc1fl      .L8017AEF8_ovl3
/* DB8E4 8017AEA4 44805000 */   mtc1      $zero, $f10
/* DB8E8 8017AEA8 0C048672 */  jal        func_801219C8
/* DB8EC 8017AEAC 00000000 */   nop
/* DB8F0 8017AEB0 0C047B5A */  jal        func_8011ED68
.L8017AEB4_ovl5:
/* DB8F4 8017AEB4 00000000 */   nop
/* DB8F8 8017AEB8 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* DB8FC 8017AEBC 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* DB900 8017AEC0 3C0B800F */  lui        $t3, %hi(D_800E9720)
/* DB904 8017AEC4 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DB908 8017AEC8 8F190000 */  lw         $t9, 0x0($t8)
/* DB90C 8017AECC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L8017AED0_ovl5:
/* DB910 8017AED0 240CFFFF */  addiu      $t4, $zero, -0x1
.L8017AED4_ovl5:
/* DB914 8017AED4 00195080 */  sll        $t2, $t9, 2
/* DB918 8017AED8 016A5821 */  addu       $t3, $t3, $t2
/* DB91C 8017AEDC 8D6B9720 */  lw         $t3, %lo(D_800E9720)($t3)
/* DB920 8017AEE0 0563003B */  bgezl      $t3, .L8017AFD0_ovl3
/* DB924 8017AEE4 8D0E00A0 */   lw        $t6, 0xA0($t0)
glabel func_8017AEE8_ovl5
/* DB928 8017AEE8 AD0C003C */  sw         $t4, 0x3C($t0)
/* DB92C 8017AEEC 10000037 */  b          .L8017AFCC_ovl3
/* DB930 8017AEF0 AD000044 */   sw        $zero, 0x44($t0)
/* DB934 8017AEF4 44805000 */  mtc1       $zero, $f10
.L8017AEF8_ovl3:
/* DB938 8017AEF8 3C01800E */  lui        $at, %hi(D_800E6850)
/* DB93C 8017AEFC 00220821 */  addu       $at, $at, $v0
.L8017AF00_ovl5:
/* DB940 8017AF00 E42A6850 */  swc1       $f10, %lo(D_800E6850)($at)
.L8017AF04_ovl5:
/* DB944 8017AF04 8C6D0000 */  lw         $t5, 0x0($v1)
/* DB948 8017AF08 3C0F800F */  lui        $t7, %hi(D_800E9720)
/* DB94C 8017AF0C 24180001 */  addiu      $t8, $zero, 0x1
/* DB950 8017AF10 000D7080 */  sll        $t6, $t5, 2
/* DB954 8017AF14 01EE7821 */  addu       $t7, $t7, $t6
/* DB958 8017AF18 8DEF9720 */  lw         $t7, %lo(D_800E9720)($t7)
/* DB95C 8017AF1C 05E3002C */  bgezl      $t7, .L8017AFD0_ovl3
/* DB960 8017AF20 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB964 8017AF24 10000029 */  b          .L8017AFCC_ovl3
/* DB968 8017AF28 AD180044 */   sw        $t8, 0x44($t0)
.L8017AF2C_ovl3:
/* DB96C 8017AF2C 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* DB970 8017AF30 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* DB974 8017AF34 3C0A800F */  lui        $t2, %hi(D_800E8920)
/* DB978 8017AF38 3C0B800F */  lui        $t3, %hi(D_800E9720)
/* DB97C 8017AF3C 8F220000 */  lw         $v0, 0x0($t9)
/* DB980 8017AF40 00021080 */  sll        $v0, $v0, 2
/* DB984 8017AF44 01425021 */  addu       $t2, $t2, $v0
/* DB988 8017AF48 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
/* DB98C 8017AF4C 01625821 */  addu       $t3, $t3, $v0
/* DB990 8017AF50 11400004 */  beqz       $t2, .L8017AF64_ovl3
/* DB994 8017AF54 00000000 */   nop
/* DB998 8017AF58 AD09003C */  sw         $t1, 0x3C($t0)
/* DB99C 8017AF5C 1000001B */  b          .L8017AFCC_ovl3
/* DB9A0 8017AF60 AD000044 */   sw        $zero, 0x44($t0)
.L8017AF64_ovl3:
/* DB9A4 8017AF64 8D6B9720 */  lw         $t3, %lo(D_800E9720)($t3)
/* DB9A8 8017AF68 05630019 */  bgezl      $t3, .L8017AFD0_ovl3
.L8017AF6C_ovl5:
/* DB9AC 8017AF6C 8D0E00A0 */   lw        $t6, 0xA0($t0)
/* DB9B0 8017AF70 10000016 */  b          .L8017AFCC_ovl3
/* DB9B4 8017AF74 AD060044 */   sw        $a2, 0x44($t0)
/* DB9B8 8017AF78 8D0C0030 */  lw         $t4, 0x30($t0)
/* DB9BC 8017AF7C 3C048019 */  lui        $a0, %hi(D_80193A68_ovl3)
/* DB9C0 8017AF80 24843A68 */  addiu      $a0, $a0, %lo(D_80193A68_ovl3)
/* DB9C4 8017AF84 1580000D */  bnez       $t4, .L8017AFBC_ovl3
/* DB9C8 8017AF88 00000000 */   nop
/* DB9CC 8017AF8C 0C055127 */  jal        func_8015449C_ovl3
/* DB9D0 8017AF90 00002825 */   or        $a1, $zero, $zero
/* DB9D4 8017AF94 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* DB9D8 8017AF98 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* DB9DC 8017AF9C 3C048019 */  lui        $a0, %hi(D_80191178_ovl3)
/* DB9E0 8017AFA0 24841178 */  addiu      $a0, $a0, %lo(D_80191178_ovl3)
/* DB9E4 8017AFA4 0C044681 */  jal        func_80111A04
/* DB9E8 8017AFA8 8DA50000 */   lw        $a1, 0x0($t5)
/* DB9EC 8017AFAC 0C044713 */  jal        func_80111C4C
/* DB9F0 8017AFB0 00402025 */   or        $a0, $v0, $zero
/* DB9F4 8017AFB4 10000029 */  b          .L8017B05C_ovl3
/* DB9F8 8017AFB8 8FBF001C */   lw        $ra, 0x1C($sp)
.L8017AFBC_ovl3:
/* DB9FC 8017AFBC 0C04759F */  jal        func_8011D67C
.L8017AFC0_ovl5:
/* DBA00 8017AFC0 00000000 */   nop
.L8017AFC4_ovl5:
/* DBA04 8017AFC4 10000025 */  b          .L8017B05C_ovl3
/* DBA08 8017AFC8 8FBF001C */   lw        $ra, 0x1C($sp)
.L8017AFCC_ovl3:
/* DBA0C 8017AFCC 8D0E00A0 */  lw         $t6, 0xA0($t0)
.L8017AFD0_ovl3:
/* DBA10 8017AFD0 3C048019 */  lui        $a0, %hi(D_80191134_ovl3)
/* DBA14 8017AFD4 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* DBA18 8017AFD8 51C0000E */  beql       $t6, $zero, .L8017B014_ovl3
/* DBA1C 8017AFDC 8D020044 */   lw        $v0, 0x44($t0)
/* DBA20 8017AFE0 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* DBA24 8017AFE4 24841134 */  addiu      $a0, $a0, %lo(D_80191134_ovl3)
/* DBA28 8017AFE8 0C044681 */  jal        func_80111A04
/* DBA2C 8017AFEC 8DE50000 */   lw        $a1, 0x0($t7)
.L8017AFF0_ovl5:
/* DBA30 8017AFF0 0C044713 */  jal        func_80111C4C
/* DBA34 8017AFF4 00402025 */   or        $a0, $v0, $zero
/* DBA38 8017AFF8 3C048019 */  lui        $a0, %hi(D_80193204_ovl3)
/* DBA3C 8017AFFC 24843204 */  addiu      $a0, $a0, %lo(D_80193204_ovl3)
/* DBA40 8017B000 0C055127 */  jal        func_8015449C_ovl3
/* DBA44 8017B004 00002825 */   or        $a1, $zero, $zero
/* DBA48 8017B008 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DBA4C 8017B00C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L8017B010_ovl5:
/* DBA50 8017B010 8D020044 */  lw         $v0, 0x44($t0)
.L8017B014_ovl3:
/* DBA54 8017B014 8D18003C */  lw         $t8, 0x3C($t0)
glabel func_8017B018_ovl5
/* DBA58 8017B018 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* DBA5C 8017B01C 5302000F */  beql       $t8, $v0, .L8017B05C_ovl3
/* DBA60 8017B020 8FBF001C */   lw        $ra, 0x1C($sp)
/* DBA64 8017B024 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* DBA68 8017B028 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* DBA6C 8017B02C 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
/* DBA70 8017B030 8F2A0000 */  lw         $t2, 0x0($t9)
/* DBA74 8017B034 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
/* DBA78 8017B038 000A5880 */  sll        $t3, $t2, 2
/* DBA7C 8017B03C 008B2021 */  addu       $a0, $a0, $t3
/* DBA80 8017B040 0C02C7B2 */  jal        assign_new_process_entry
/* DBA84 8017B044 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* DBA88 8017B048 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DBA8C 8017B04C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DBA90 8017B050 8D0C0044 */  lw         $t4, 0x44($t0)
/* DBA94 8017B054 AD0C003C */  sw         $t4, 0x3C($t0)
/* DBA98 8017B058 8FBF001C */  lw         $ra, 0x1C($sp)
.L8017B05C_ovl3:
/* DBA9C 8017B05C 27BD0068 */  addiu      $sp, $sp, 0x68
/* DBAA0 8017B060 03E00008 */  jr         $ra
/* DBAA4 8017B064 00000000 */   nop
