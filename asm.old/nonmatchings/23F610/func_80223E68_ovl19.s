glabel func_80223E68_ovl19
/* 244578 80223E68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 24457C 80223E6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 244580 80223E70 0C054E86 */  jal        func_80153A18_ovl3
/* 244584 80223E74 AFA40028 */   sw        $a0, 0x28($sp)
/* 244588 80223E78 3C048013 */  lui        $a0, %hi(D_8012E922 + 0x22)
/* 24458C 80223E7C 0C03FC80 */  jal        func_800FF200
/* 244590 80223E80 8C84E944 */   lw        $a0, %lo(D_8012E922 + 0x22)($a0)
/* 244594 80223E84 3C018023 */  lui        $at, %hi(D_8022F824_ovl19)
/* 244598 80223E88 C42CF824 */  lwc1       $f12, %lo(D_8022F824_ovl19)($at)
/* 24459C 80223E8C 3C014190 */  lui        $at, (0x41900000 >> 16)
/* 2445A0 80223E90 44817000 */  mtc1       $at, $f14
/* 2445A4 80223E94 44066000 */  mfc1       $a2, $f12
/* 2445A8 80223E98 44077000 */  mfc1       $a3, $f14
/* 2445AC 80223E9C 0C04860A */  jal        func_80121828
/* 2445B0 80223EA0 00000000 */   nop
/* 2445B4 80223EA4 10400003 */  beqz       $v0, .L80223EB4_ovl19
/* 2445B8 80223EA8 00000000 */   nop
/* 2445BC 80223EAC 0C029D9E */  jal        play_sound
/* 2445C0 80223EB0 24040145 */   addiu     $a0, $zero, 0x145
.L80223EB4_ovl19:
/* 2445C4 80223EB4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 2445C8 80223EB8 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 2445CC 80223EBC 8D0E0000 */  lw         $t6, 0x0($t0)
/* 2445D0 80223EC0 3C0F800F */  lui        $t7, %hi(D_800E8920)
/* 2445D4 80223EC4 8DC30000 */  lw         $v1, 0x0($t6)
.L80223EC8_ovl18:
/* 2445D8 80223EC8 00031880 */  sll        $v1, $v1, 2
/* 2445DC 80223ECC 01E37821 */  addu       $t7, $t7, $v1
/* 2445E0 80223ED0 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
/* 2445E4 80223ED4 11E0007B */  beqz       $t7, .L802240C4_ovl19
/* 2445E8 80223ED8 3C05800E */   lui       $a1, %hi(D_800E17D0)
/* 2445EC 80223EDC 00A32821 */  addu       $a1, $a1, $v1
/* 2445F0 80223EE0 3C048013 */  lui        $a0, %hi(D_8012BCA8 + 0x4)
/* 2445F4 80223EE4 8C84BCAC */  lw         $a0, %lo(D_8012BCA8 + 0x4)($a0)
/* 2445F8 80223EE8 0C03E209 */  jal        func_800F8824
/* 2445FC 80223EEC 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
/* 244600 80223EF0 44802000 */  mtc1       $zero, $f4
/* 244604 80223EF4 46000087 */  neg.s      $f2, $f0
/* 244608 80223EF8 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 24460C 80223EFC 46022032 */  c.eq.s     $f4, $f2
/* 244610 80223F00 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244614 80223F04 4503005D */  bc1tl      .L8022407C_ovl19
/* 244618 80223F08 8D190000 */   lw        $t9, 0x0($t0)
/* 24461C 80223F0C 8D040000 */  lw         $a0, 0x0($t0)
.L80223F10_ovl18:
/* 244620 80223F10 3C06800E */  lui        $a2, %hi(gEntitiesAngleXArray)
/* 244624 80223F14 24C64010 */  addiu      $a2, $a2, %lo(gEntitiesAngleXArray)
/* 244628 80223F18 8C830000 */  lw         $v1, 0x0($a0)
/* 24462C 80223F1C 44807000 */  mtc1       $zero, $f14
glabel func_80223F20_ovl18
/* 244630 80223F20 00031880 */  sll        $v1, $v1, 2
/* 244634 80223F24 00C32821 */  addu       $a1, $a2, $v1
/* 244638 80223F28 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 24463C 80223F2C 4600703E */  c.le.s     $f14, $f0
/* 244640 80223F30 00000000 */  nop
/* 244644 80223F34 45020006 */  bc1fl      .L80223F50_ovl19
/* 244648 80223F38 460E003E */   c.le.s    $f0, $f14
/* 24464C 80223F3C 4602703E */  c.le.s     $f14, $f2
/* 244650 80223F40 00000000 */  nop
/* 244654 80223F44 4501000A */  bc1t       .L80223F70_ovl19
/* 244658 80223F48 00000000 */   nop
/* 24465C 80223F4C 460E003E */  c.le.s     $f0, $f14
.L80223F50_ovl19:
/* 244660 80223F50 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 244664 80223F54 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* 244668 80223F58 4502000A */  bc1fl      .L80223F84_ovl19
/* 24466C 80223F5C 8CE20044 */   lw        $v0, 0x44($a3)
/* 244670 80223F60 460E103E */  c.le.s     $f2, $f14
/* 244674 80223F64 00000000 */  nop
/* 244678 80223F68 45020006 */  bc1fl      .L80223F84_ovl19
/* 24467C 80223F6C 8CE20044 */   lw        $v0, 0x44($a3)
.L80223F70_ovl19:
/* 244680 80223F70 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 244684 80223F74 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* 244688 80223F78 10000048 */  b          .L8022409C_ovl19
/* 24468C 80223F7C E4A20000 */   swc1      $f2, 0x0($a1)
/* 244690 80223F80 8CE20044 */  lw         $v0, 0x44($a3)
.L80223F84_ovl19:
/* 244694 80223F84 24010002 */  addiu      $at, $zero, 0x2
/* 244698 80223F88 10410039 */  beq        $v0, $at, .L80224070_ovl19
/* 24469C 80223F8C 24010007 */   addiu     $at, $zero, 0x7
/* 2446A0 80223F90 10410037 */  beq        $v0, $at, .L80224070_ovl19
/* 2446A4 80223F94 24180002 */   addiu     $t8, $zero, 0x2
/* 2446A8 80223F98 3C01800F */  lui        $at, %hi(D_800E8920)
/* 2446AC 80223F9C 00230821 */  addu       $at, $at, $v1
/* 2446B0 80223FA0 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
glabel func_80223FA4_ovl18
/* 2446B4 80223FA4 ACF80044 */  sw         $t8, 0x44($a3)
/* 2446B8 80223FA8 8C990000 */  lw         $t9, 0x0($a0)
/* 2446BC 80223FAC 3C018023 */  lui        $at, %hi(D_8022F828_ovl19)
/* 2446C0 80223FB0 00195080 */  sll        $t2, $t9, 2
/* 2446C4 80223FB4 00CA5821 */  addu       $t3, $a2, $t2
/* 2446C8 80223FB8 C5600000 */  lwc1       $f0, 0x0($t3)
/* 2446CC 80223FBC 460E003C */  c.lt.s     $f0, $f14
/* 2446D0 80223FC0 00000000 */  nop
/* 2446D4 80223FC4 45020036 */  bc1fl      .L802240A0_ovl19
/* 2446D8 80223FC8 8CED0058 */   lw        $t5, 0x58($a3)
/* 2446DC 80223FCC 44803000 */  mtc1       $zero, $f6
/* 2446E0 80223FD0 00000000 */  nop
/* 2446E4 80223FD4 4606003C */  c.lt.s     $f0, $f6
/* 2446E8 80223FD8 00000000 */  nop
/* 2446EC 80223FDC 45020004 */  bc1fl      .L80223FF0_ovl19
/* 2446F0 80223FE0 46000086 */   mov.s     $f2, $f0
/* 2446F4 80223FE4 10000002 */  b          .L80223FF0_ovl19
/* 2446F8 80223FE8 46000087 */   neg.s     $f2, $f0
/* 2446FC 80223FEC 46000086 */  mov.s      $f2, $f0
.L80223FF0_ovl19:
/* 244700 80223FF0 C428F828 */  lwc1       $f8, %lo(D_8022F828_ovl19)($at)
/* 244704 80223FF4 46081300 */  add.s      $f12, $f2, $f8
/* 244708 80223FF8 0C00B5B8 */  jal        sinf
/* 24470C 80223FFC E7AC0018 */   swc1      $f12, 0x18($sp)
/* 244710 80224000 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 244714 80224004 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244718 80224008 8D0C0000 */  lw         $t4, 0x0($t0)
/* 24471C 8022400C 3C01800E */  lui        $at, %hi(D_800E64D0)
.L80224010_ovl18:
/* 244720 80224010 C7AC0018 */  lwc1       $f12, 0x18($sp)
/* 244724 80224014 8D830000 */  lw         $v1, 0x0($t4)
/* 244728 80224018 00031880 */  sll        $v1, $v1, 2
/* 24472C 8022401C 00230821 */  addu       $at, $at, $v1
/* 244730 80224020 C42A64D0 */  lwc1       $f10, %lo(D_800E64D0)($at)
/* 244734 80224024 3C01800E */  lui        $at, %hi(D_800E3210)
/* 244738 80224028 00230821 */  addu       $at, $at, $v1
/* 24473C 8022402C 460A0402 */  mul.s      $f16, $f0, $f10
/* 244740 80224030 0C00D604 */  jal        cosf
/* 244744 80224034 E4303210 */   swc1      $f16, %lo(D_800E3210)($at)
/* 244748 80224038 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 24474C 8022403C 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244750 80224040 8D0D0000 */  lw         $t5, 0x0($t0)
/* 244754 80224044 3C18800E */  lui        $t8, %hi(D_800E64D0)
/* 244758 80224048 271864D0 */  addiu      $t8, $t8, %lo(D_800E64D0)
/* 24475C 8022404C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 244760 80224050 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 244764 80224054 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* 244768 80224058 000E7880 */  sll        $t7, $t6, 2
/* 24476C 8022405C 01F81021 */  addu       $v0, $t7, $t8
/* 244770 80224060 C4520000 */  lwc1       $f18, 0x0($v0)
/* 244774 80224064 46120102 */  mul.s      $f4, $f0, $f18
/* 244778 80224068 1000000C */  b          .L8022409C_ovl19
/* 24477C 8022406C E4440000 */   swc1      $f4, 0x0($v0)
.L80224070_ovl19:
/* 244780 80224070 1000000A */  b          .L8022409C_ovl19
/* 244784 80224074 E4A20000 */   swc1      $f2, 0x0($a1)
/* 244788 80224078 8D190000 */  lw         $t9, 0x0($t0)
.L8022407C_ovl19:
/* 24478C 8022407C 3C06800E */  lui        $a2, %hi(gEntitiesAngleXArray)
/* 244790 80224080 24C64010 */  addiu      $a2, $a2, %lo(gEntitiesAngleXArray)
/* 244794 80224084 8F2A0000 */  lw         $t2, 0x0($t9)
glabel func_80224088_ovl18
/* 244798 80224088 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 24479C 8022408C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* 2447A0 80224090 000A5880 */  sll        $t3, $t2, 2
/* 2447A4 80224094 00CB6021 */  addu       $t4, $a2, $t3
/* 2447A8 80224098 E5820000 */  swc1       $f2, 0x0($t4)
.L8022409C_ovl19:
/* 2447AC 8022409C 8CED0058 */  lw         $t5, 0x58($a3)
.L802240A0_ovl19:
/* 2447B0 802240A0 55A00014 */  bnel       $t5, $zero, .L802240F4_ovl19
/* 2447B4 802240A4 8CEF0044 */   lw        $t7, 0x44($a3)
/* 2447B8 802240A8 0C047701 */  jal        func_8011DC04
/* 2447BC 802240AC 24040143 */   addiu     $a0, $zero, 0x143
/* 2447C0 802240B0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 2447C4 802240B4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 2447C8 802240B8 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 2447CC 802240BC 1000000C */  b          .L802240F0_ovl19
/* 2447D0 802240C0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L802240C4_ovl19:
/* 2447D4 802240C4 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 2447D8 802240C8 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* 2447DC 802240CC 8CEE0058 */  lw         $t6, 0x58($a3)
/* 2447E0 802240D0 51C00008 */  beql       $t6, $zero, .L802240F4_ovl19
/* 2447E4 802240D4 8CEF0044 */   lw        $t7, 0x44($a3)
/* 2447E8 802240D8 0C047717 */  jal        func_8011DC5C
/* 2447EC 802240DC 00000000 */   nop
/* 2447F0 802240E0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 2447F4 802240E4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 2447F8 802240E8 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 2447FC 802240EC 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L802240F0_ovl19:
/* 244800 802240F0 8CEF0044 */  lw         $t7, 0x44($a3)
.L802240F4_ovl19:
/* 244804 802240F4 24010007 */  addiu      $at, $zero, 0x7
/* 244808 802240F8 51E10009 */  beql       $t7, $at, .L80224120_ovl19
/* 24480C 802240FC 8CF80044 */   lw        $t8, 0x44($a3)
/* 244810 80224100 0C089F53 */  jal        func_80227D4C_ovl19
/* 244814 80224104 00000000 */   nop
/* 244818 80224108 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 24481C 8022410C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 244820 80224110 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244824 80224114 144000C8 */  bnez       $v0, .L80224438_ovl19
/* 244828 80224118 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* 24482C 8022411C 8CF80044 */  lw         $t8, 0x44($a3)
.L80224120_ovl19:
/* 244830 80224120 44807000 */  mtc1       $zero, $f14
/* 244834 80224124 2F010008 */  sltiu      $at, $t8, 0x8
/* 244838 80224128 1020009B */  beqz       $at, .L80224398_ovl19
/* 24483C 8022412C 0018C080 */   sll       $t8, $t8, 2
/* 244840 80224130 3C018023 */  lui        $at, %hi(jtbl_8022F82C_ovl19)
glabel func_80224134_ovl18
/* 244844 80224134 00380821 */  addu       $at, $at, $t8
/* 244848 80224138 8C38F82C */  lw         $t8, %lo(jtbl_8022F82C_ovl19)($at)
/* 24484C 8022413C 03000008 */  jr         $t8
/* 244850 80224140 00000000 */   nop
/* 244854 80224144 3C19800D */  lui        $t9, %hi(gKirbyController + 0x2)
/* 244858 80224148 97396FEA */  lhu        $t9, %lo(gKirbyController + 0x2)($t9)
/* 24485C 8022414C 240B0001 */  addiu      $t3, $zero, 0x1
/* 244860 80224150 332A8000 */  andi       $t2, $t9, 0x8000
/* 244864 80224154 51400004 */  beql       $t2, $zero, .L80224168_ovl19
/* 244868 80224158 8D0C0000 */   lw        $t4, 0x0($t0)
/* 24486C 8022415C 1000008E */  b          .L80224398_ovl19
/* 244870 80224160 ACEB0044 */   sw        $t3, 0x44($a3)
/* 244874 80224164 8D0C0000 */  lw         $t4, 0x0($t0)
.L80224168_ovl19:
/* 244878 80224168 3C01800E */  lui        $at, %hi(D_800E3210)
/* 24487C 8022416C 240F0002 */  addiu      $t7, $zero, 0x2
/* 244880 80224170 8D8D0000 */  lw         $t5, 0x0($t4)
/* 244884 80224174 000D7080 */  sll        $t6, $t5, 2
/* 244888 80224178 002E0821 */  addu       $at, $at, $t6
/* 24488C 8022417C C4263210 */  lwc1       $f6, %lo(D_800E3210)($at)
/* 244890 80224180 460E303C */  c.lt.s     $f6, $f14
/* 244894 80224184 00000000 */  nop
/* 244898 80224188 45020084 */  bc1fl      .L8022439C_ovl19
/* 24489C 8022418C 8D0E0000 */   lw        $t6, 0x0($t0)
/* 2448A0 80224190 10000081 */  b          .L80224398_ovl19
/* 2448A4 80224194 ACEF0044 */   sw        $t7, 0x44($a3)
/* 2448A8 80224198 94F800D2 */  lhu        $t8, 0xD2($a3)
/* 2448AC 8022419C 5700007F */  bnel       $t8, $zero, .L8022439C_ovl19
.L802241A0_ovl18:
/* 2448B0 802241A0 8D0E0000 */   lw        $t6, 0x0($t0)
/* 2448B4 802241A4 0C047AF5 */  jal        func_8011EBD4
.L802241A8_ovl18:
/* 2448B8 802241A8 00000000 */   nop
/* 2448BC 802241AC 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 2448C0 802241B0 3C088005 */  lui        $t0, %hi(D_8004A7C4)
glabel func_802241B4_ovl18
/* 2448C4 802241B4 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 2448C8 802241B8 10000077 */  b          .L80224398_ovl19
/* 2448CC 802241BC 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* 2448D0 802241C0 8D190000 */  lw         $t9, 0x0($t0)
/* 2448D4 802241C4 3C0C800F */  lui        $t4, %hi(D_800E8920)
/* 2448D8 802241C8 240D0003 */  addiu      $t5, $zero, 0x3
/* 2448DC 802241CC 8F2A0000 */  lw         $t2, 0x0($t9)
/* 2448E0 802241D0 000A5880 */  sll        $t3, $t2, 2
/* 2448E4 802241D4 018B6021 */  addu       $t4, $t4, $t3
/* 2448E8 802241D8 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
/* 2448EC 802241DC 5180006F */  beql       $t4, $zero, .L8022439C_ovl19
/* 2448F0 802241E0 8D0E0000 */   lw        $t6, 0x0($t0)
/* 2448F4 802241E4 1000006C */  b          .L80224398_ovl19
/* 2448F8 802241E8 ACED0044 */   sw        $t5, %lo(D_80130044)($a3)
/* 2448FC 802241EC 8CEE0030 */  lw         $t6, %lo(D_80130030)($a3)
/* 244900 802241F0 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
/* 244904 802241F4 11C00003 */  beqz       $t6, .L80224204_ovl19
/* 244908 802241F8 00000000 */   nop
/* 24490C 802241FC 10000066 */  b          .L80224398_ovl19
/* 244910 80224200 ACE00044 */   sw        $zero, %lo(D_80130044)($a3)
.L80224204_ovl19:
/* 244914 80224204 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
/* 244918 80224208 24190001 */  addiu      $t9, $zero, 0x1
/* 24491C 8022420C 31F88000 */  andi       $t8, $t7, 0x8000
/* 244920 80224210 53000004 */  beql       $t8, $zero, .L80224224_ovl19
/* 244924 80224214 8D0A0000 */   lw        $t2, 0x0($t0)
/* 244928 80224218 1000005F */  b          .L80224398_ovl19
/* 24492C 8022421C ACF90044 */   sw        $t9, %lo(D_80130044)($a3)
/* 244930 80224220 8D0A0000 */  lw         $t2, 0x0($t0)
.L80224224_ovl19:
/* 244934 80224224 3C01800E */  lui        $at, %hi(D_800E3210)
/* 244938 80224228 240D0002 */  addiu      $t5, $zero, 0x2
/* 24493C 8022422C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 244940 80224230 000B6080 */  sll        $t4, $t3, 2
/* 244944 80224234 002C0821 */  addu       $at, $at, $t4
/* 244948 80224238 C4283210 */  lwc1       $f8, %lo(D_800E3210)($at)
/* 24494C 8022423C 460E403C */  c.lt.s     $f8, $f14
/* 244950 80224240 00000000 */  nop
glabel func_80224244_ovl18
/* 244954 80224244 45020055 */  bc1fl      .L8022439C_ovl19
/* 244958 80224248 8D0E0000 */   lw        $t6, 0x0($t0)
/* 24495C 8022424C 10000052 */  b          .L80224398_ovl19
/* 244960 80224250 ACED0044 */   sw        $t5, %lo(D_80130044)($a3)
/* 244964 80224254 8CEE0030 */  lw         $t6, %lo(D_80130030)($a3)
/* 244968 80224258 51C00050 */  beql       $t6, $zero, .L8022439C_ovl19
/* 24496C 8022425C 8D0E0000 */   lw        $t6, 0x0($t0)
/* 244970 80224260 8D0F0000 */  lw         $t7, 0x0($t0)
/* 244974 80224264 3C0A800F */  lui        $t2, %hi(D_800E8920)
/* 244978 80224268 240B0002 */  addiu      $t3, $zero, 0x2
/* 24497C 8022426C 8DF80000 */  lw         $t8, 0x0($t7)
/* 244980 80224270 0018C880 */  sll        $t9, $t8, 2
/* 244984 80224274 01595021 */  addu       $t2, $t2, $t9
/* 244988 80224278 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
/* 24498C 8022427C 11400003 */  beqz       $t2, .L8022428C_ovl19
/* 244990 80224280 00000000 */   nop
/* 244994 80224284 10000044 */  b          .L80224398_ovl19
/* 244998 80224288 ACE00044 */   sw        $zero, %lo(D_80130044)($a3)
.L8022428C_ovl19:
/* 24499C 8022428C 10000042 */  b          .L80224398_ovl19
/* 2449A0 80224290 ACEB0044 */   sw        $t3, %lo(D_80130044)($a3)
/* 2449A4 80224294 8D040000 */  lw         $a0, 0x0($t0)
/* 2449A8 80224298 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 2449AC 8022429C 3C05800D */  lui        $a1, %hi(D_800D71E8 + 0x50)
/* 2449B0 802242A0 8C8C0000 */  lw         $t4, 0x0($a0)
/* 2449B4 802242A4 24A57238 */  addiu      $a1, $a1, %lo(D_800D71E8 + 0x50)
/* 2449B8 802242A8 3C09800E */  lui        $t1, %hi(D_800DFBD0)
/* 2449BC 802242AC 000C6880 */  sll        $t5, $t4, 2
/* 2449C0 802242B0 002D0821 */  addu       $at, $at, $t5
/* 2449C4 802242B4 C42A64D0 */  lwc1       $f10, %lo(D_800E64D0)($at)
/* 2449C8 802242B8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 2449CC 802242BC 44818000 */  mtc1       $at, $f16
.L802242C0_ovl18:
/* 2449D0 802242C0 3C018023 */  lui        $at, %hi(D_8022F84C_ovl19)
/* 2449D4 802242C4 C424F84C */  lwc1       $f4, %lo(D_8022F84C_ovl19)($at)
/* 2449D8 802242C8 46105482 */  mul.s      $f18, $f10, $f16
/* 2449DC 802242CC 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 2449E0 802242D0 44814000 */  mtc1       $at, $f8
/* 2449E4 802242D4 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
/* 2449E8 802242D8 46049182 */  mul.s      $f6, $f18, $f4
/* 2449EC 802242DC 46083283 */  div.s      $f10, $f6, $f8
/* 2449F0 802242E0 E4AA0000 */  swc1       $f10, 0x0($a1)
/* 2449F4 802242E4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 2449F8 802242E8 C4B20000 */  lwc1       $f18, 0x0($a1)
/* 2449FC 802242EC 000E7880 */  sll        $t7, $t6, 2
/* 244A00 802242F0 012FC021 */  addu       $t8, $t1, $t7
/* 244A04 802242F4 8F190000 */  lw         $t9, 0x0($t8)
/* 244A08 802242F8 8F220020 */  lw         $v0, 0x20($t9)
/* 244A0C 802242FC C4500030 */  lwc1       $f16, 0x30($v0)
/* 244A10 80224300 46128100 */  add.s      $f4, $f16, $f18
/* 244A14 80224304 E4440030 */  swc1       $f4, 0x30($v0)
/* 244A18 80224308 8D0A0000 */  lw         $t2, 0x0($t0)
.L8022430C_ovl18:
/* 244A1C 8022430C C4A80000 */  lwc1       $f8, 0x0($a1)
/* 244A20 80224310 8D4B0000 */  lw         $t3, 0x0($t2)
/* 244A24 80224314 000B6080 */  sll        $t4, $t3, 2
/* 244A28 80224318 012C6821 */  addu       $t5, $t1, $t4
/* 244A2C 8022431C 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_80224320_ovl18
/* 244A30 80224320 8DC30024 */  lw         $v1, 0x24($t6)
/* 244A34 80224324 C4660030 */  lwc1       $f6, 0x30($v1)
/* 244A38 80224328 46083280 */  add.s      $f10, $f6, $f8
/* 244A3C 8022432C 10000089 */  b          .L80224554_ovl19
/* 244A40 80224330 E46A0030 */   swc1      $f10, 0x30($v1)
/* 244A44 80224334 8CEF0030 */  lw         $t7, %lo(D_80130030)($a3)
/* 244A48 80224338 11E00086 */  beqz       $t7, .L80224554_ovl19
/* 244A4C 8022433C 3C18800C */   lui       $t8, %hi(D_800BE500)
/* 244A50 80224340 8F18E500 */  lw         $t8, %lo(D_800BE500)($t8)
/* 244A54 80224344 3C19800C */  lui        $t9, %hi(D_800BE504)
/* 244A58 80224348 8F39E504 */  lw         $t9, %lo(D_800BE504)($t9)
/* 244A5C 8022434C 3C01800C */  lui        $at, %hi(D_800BE52C)
/* 244A60 80224350 3C0A800C */  lui        $t2, %hi(D_800BE508)
/* 244A64 80224354 8D4AE508 */  lw         $t2, %lo(D_800BE508)($t2)
/* 244A68 80224358 AC38E52C */  sw         $t8, %lo(D_800BE52C)($at)
/* 244A6C 8022435C 3C01800C */  lui        $at, %hi(D_800BE530)
/* 244A70 80224360 AC39E530 */  sw         $t9, %lo(D_800BE530)($at)
/* 244A74 80224364 3C01800C */  lui        $at, %hi(D_800BE534)
/* 244A78 80224368 254B0001 */  addiu      $t3, $t2, 0x1
/* 244A7C 8022436C AC2BE534 */  sw         $t3, %lo(D_800BE534)($at)
/* 244A80 80224370 3C01800C */  lui        $at, %hi(D_800BE538)
/* 244A84 80224374 AC20E538 */  sw         $zero, %lo(D_800BE538)($at)
/* 244A88 80224378 3C01800C */  lui        $at, %hi(D_800BE4FC)
/* 244A8C 8022437C 240C0001 */  addiu      $t4, $zero, 0x1
/* 244A90 80224380 AC2CE4FC */  sw         $t4, %lo(D_800BE4FC)($at)
/* 244A94 80224384 3C01800C */  lui        $at, %hi(D_800BE4F8)
/* 244A98 80224388 240D0002 */  addiu      $t5, $zero, 0x2
/* 244A9C 8022438C AC2DE4F8 */  sw         $t5, %lo(D_800BE4F8)($at)
/* 244AA0 80224390 10000070 */  b          .L80224554_ovl19
/* 244AA4 80224394 ACE00030 */   sw        $zero, %lo(D_80130030)($a3)
.L80224398_ovl19:
/* 244AA8 80224398 8D0E0000 */  lw         $t6, 0x0($t0)
.L8022439C_ovl19:
/* 244AAC 8022439C 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 244AB0 802243A0 44808000 */  mtc1       $zero, $f16
/* 244AB4 802243A4 8DC30000 */  lw         $v1, 0x0($t6)
/* 244AB8 802243A8 3C0F800D */  lui        $t7, %hi(D_800D6B54)
/* 244ABC 802243AC 00031880 */  sll        $v1, $v1, 2
/* 244AC0 802243B0 00230821 */  addu       $at, $at, $v1
/* 244AC4 802243B4 C4327B20 */  lwc1       $f18, %lo(D_800E7B20)($at)
/* 244AC8 802243B8 46128032 */  c.eq.s     $f16, $f18
/* 244ACC 802243BC 00000000 */  nop
/* 244AD0 802243C0 45010010 */  bc1t       .L80224404_ovl19
/* 244AD4 802243C4 00000000 */   nop
/* 244AD8 802243C8 8DEF6B54 */  lw         $t7, %lo(D_800D6B54)($t7)
/* 244ADC 802243CC 15E0000D */  bnez       $t7, .L80224404_ovl19
/* 244AE0 802243D0 00000000 */   nop
/* 244AE4 802243D4 8CF80044 */  lw         $t8, 0x44($a3)
/* 244AE8 802243D8 24010004 */  addiu      $at, $zero, 0x4
/* 244AEC 802243DC 13010009 */  beq        $t8, $at, .L80224404_ovl19
/* 244AF0 802243E0 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 244AF4 802243E4 44816000 */  mtc1       $at, $f12
/* 244AF8 802243E8 0C047529 */  jal        func_8011D4A4
/* 244AFC 802243EC 00000000 */   nop
/* 244B00 802243F0 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 244B04 802243F4 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244B08 802243F8 8D190000 */  lw         $t9, 0x0($t0)
/* 244B0C 802243FC 8F230000 */  lw         $v1, 0x0($t9)
/* 244B10 80224400 00031880 */  sll        $v1, $v1, 2
.L80224404_ovl19:
/* 244B14 80224404 3C09800E */  lui        $t1, %hi(D_800DFBD0)
/* 244B18 80224408 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
/* 244B1C 8022440C 01235021 */  addu       $t2, $t1, $v1
/* 244B20 80224410 8D4B0000 */  lw         $t3, 0x0($t2)
/* 244B24 80224414 3C048019 */  lui        $a0, %hi(D_801925E4)
/* 244B28 80224418 248425E4 */  addiu      $a0, $a0, %lo(D_801925E4)
/* 244B2C 8022441C 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* 244B30 80224420 0C05A153 */  jal        func_8016854C_ovl3
/* 244B34 80224424 8D650004 */   lw        $a1, 0x4($t3)
/* 244B38 80224428 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 244B3C 8022442C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 244B40 80224430 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244B44 80224434 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L80224438_ovl19:
/* 244B48 80224438 8D0C0000 */  lw         $t4, 0x0($t0)
/* 244B4C 8022443C 3C0D800F */  lui        $t5, %hi(D_800E98E0)
/* 244B50 80224440 8CE20044 */  lw         $v0, 0x44($a3)
/* 244B54 80224444 8D830000 */  lw         $v1, 0x0($t4)
/* 244B58 80224448 24010004 */  addiu      $at, $zero, 0x4
/* 244B5C 8022444C 00031880 */  sll        $v1, $v1, 2
/* 244B60 80224450 01A36821 */  addu       $t5, $t5, $v1
/* 244B64 80224454 8DAD98E0 */  lw         $t5, %lo(D_800E98E0)($t5)
/* 244B68 80224458 504D0038 */  beql       $v0, $t5, .L8022453C_ovl19
/* 244B6C 8022445C 24010006 */   addiu     $at, $zero, 0x6
/* 244B70 80224460 14410024 */  bne        $v0, $at, .L802244F4_ovl19
/* 244B74 80224464 00000000 */   nop
/* 244B78 80224468 94EE0068 */  lhu        $t6, 0x68($a3)
/* 244B7C 8022446C 24010003 */  addiu      $at, $zero, 0x3
/* 244B80 80224470 3C02800D */  lui        $v0, %hi(gKirbyHp)
/* 244B84 80224474 15C10006 */  bne        $t6, $at, .L80224490_ovl19
/* 244B88 80224478 24426E50 */   addiu     $v0, $v0, %lo(gKirbyHp)
/* 244B8C 8022447C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 244B90 80224480 44813000 */  mtc1       $at, $f6
/* 244B94 80224484 C4440000 */  lwc1       $f4, 0x0($v0)
/* 244B98 80224488 46062200 */  add.s      $f8, $f4, $f6
/* 244B9C 8022448C E4480000 */  swc1       $f8, 0x0($v0)
.L80224490_ovl19:
/* 244BA0 80224490 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 244BA4 80224494 44816000 */  mtc1       $at, $f12
/* 244BA8 80224498 0C02EFF8 */  jal        change_kirby_hp
/* 244BAC 8022449C 00000000 */   nop
/* 244BB0 802244A0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 244BB4 802244A4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 244BB8 802244A8 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244BBC 802244AC 14400007 */  bnez       $v0, .L802244CC_ovl19
/* 244BC0 802244B0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* 244BC4 802244B4 8D180000 */  lw         $t8, 0x0($t0)
/* 244BC8 802244B8 240F0005 */  addiu      $t7, $zero, 0x5
/* 244BCC 802244BC ACEF0044 */  sw         $t7, 0x44($a3)
/* 244BD0 802244C0 8F030000 */  lw         $v1, 0x0($t8)
/* 244BD4 802244C4 1000000B */  b          .L802244F4_ovl19
/* 244BD8 802244C8 00031880 */   sll       $v1, $v1, 2
.L802244CC_ovl19:
/* 244BDC 802244CC 8D040000 */  lw         $a0, 0x0($t0)
/* 244BE0 802244D0 3C0140F0 */  lui        $at, (0x40F00000 >> 16)
/* 244BE4 802244D4 44815000 */  mtc1       $at, $f10
/* 244BE8 802244D8 8C990000 */  lw         $t9, 0x0($a0)
/* 244BEC 802244DC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 244BF0 802244E0 00195080 */  sll        $t2, $t9, 2
/* 244BF4 802244E4 002A0821 */  addu       $at, $at, $t2
/* 244BF8 802244E8 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* 244BFC 802244EC 8C830000 */  lw         $v1, 0x0($a0)
/* 244C00 802244F0 00031880 */  sll        $v1, $v1, 2
.L802244F4_ovl19:
/* 244C04 802244F4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 244C08 802244F8 00832021 */  addu       $a0, $a0, $v1
glabel func_802244FC_ovl18
/* 244C0C 802244FC 3C058022 */  lui        $a1, %hi(func_802231F8_ovl19 + 0x8)
/* 244C10 80224500 24A53200 */  addiu      $a1, $a1, %lo(func_802231F8_ovl19 + 0x8)
/* 244C14 80224504 0C02C7B2 */  jal        assign_new_process_entry
/* 244C18 80224508 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 244C1C 8022450C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 244C20 80224510 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 244C24 80224514 8D0B0000 */  lw         $t3, 0x0($t0)
/* 244C28 80224518 3C078013 */  lui        $a3, %hi(gKirbyState)
/* 244C2C 8022451C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* 244C30 80224520 8D6C0000 */  lw         $t4, 0x0($t3)
/* 244C34 80224524 8CE20044 */  lw         $v0, 0x44($a3)
/* 244C38 80224528 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 244C3C 8022452C 000C6880 */  sll        $t5, $t4, 2
/* 244C40 80224530 002D0821 */  addu       $at, $at, $t5
/* 244C44 80224534 AC2298E0 */  sw         $v0, %lo(D_800E98E0)($at)
/* 244C48 80224538 24010006 */  addiu      $at, $zero, 0x6
.L8022453C_ovl19:
/* 244C4C 8022453C 10410005 */  beq        $v0, $at, .L80224554_ovl19
/* 244C50 80224540 24010007 */   addiu     $at, $zero, 0x7
/* 244C54 80224544 50410004 */  beql       $v0, $at, .L80224558_ovl19
/* 244C58 80224548 8FBF0014 */   lw        $ra, 0x14($sp)
.L8022454C_ovl18:
/* 244C5C 8022454C 0C0891C3 */  jal        func_8022470C_ovl19
/* 244C60 80224550 00000000 */   nop
.L80224554_ovl19:
/* 244C64 80224554 8FBF0014 */  lw         $ra, 0x14($sp)
.L80224558_ovl19:
/* 244C68 80224558 27BD0028 */  addiu      $sp, $sp, 0x28
/* 244C6C 8022455C 03E00008 */  jr         $ra
/* 244C70 80224560 00000000 */   nop
