nonmatching func_801DE60C_ovl9, 0x208

glabel func_801DE60C_ovl9
    /* 18C65C 801DE60C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 18C660 801DE610 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 18C664 801DE614 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 18C668 801DE618 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 18C66C 801DE61C AFA40020 */  sw         $a0, 0x20($sp)
    /* 18C670 801DE620 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 18C674 801DE624 3C19800E */  lui        $t9, %hi(D_800E1B50)
    /* 18C678 801DE628 000FC080 */  sll        $t8, $t7, 2
    /* 18C67C 801DE62C 0338C821 */  addu       $t9, $t9, $t8
    /* 18C680 801DE630 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
    /* 18C684 801DE634 0C06835D */  jal        func_801A0D74_ovl7
    /* 18C688 801DE638 AFB9001C */   sw        $t9, 0x1C($sp)
    /* 18C68C 801DE63C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 18C690 801DE640 2463A7C4 */  addiu      $v1, $v1, %lo(omCurrentObj)
    /* 18C694 801DE644 8C680000 */  lw         $t0, 0x0($v1)
    /* 18C698 801DE648 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* 18C69C 801DE64C 24E78920 */  addiu      $a3, $a3, %lo(D_800E8920)
    /* 18C6A0 801DE650 8D020000 */  lw         $v0, 0x0($t0)
    /* 18C6A4 801DE654 24010001 */  addiu      $at, $zero, 0x1
    /* 18C6A8 801DE658 3C05800E */  lui        $a1, %hi(D_800E17D0)
    /* 18C6AC 801DE65C 00021080 */  sll        $v0, $v0, 2
    /* 18C6B0 801DE660 00E24821 */  addu       $t1, $a3, $v0
    /* 18C6B4 801DE664 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 18C6B8 801DE668 00A22821 */  addu       $a1, $a1, $v0
    /* 18C6BC 801DE66C 8FAB001C */  lw         $t3, 0x1C($sp)
    /* 18C6C0 801DE670 15410060 */  bne        $t2, $at, .L801DE7F4_ovl9
    /* 18C6C4 801DE674 00000000 */   nop
    /* 18C6C8 801DE678 8D640078 */  lw         $a0, 0x78($t3)
    /* 18C6CC 801DE67C 0C03E209 */  jal        func_800F8824
    /* 18C6D0 801DE680 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
    /* 18C6D4 801DE684 44801000 */  mtc1       $zero, $f2
    /* 18C6D8 801DE688 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 18C6DC 801DE68C 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* 18C6E0 801DE690 46020032 */  c.eq.s     $f0, $f2
    /* 18C6E4 801DE694 24E78920 */  addiu      $a3, $a3, %lo(D_800E8920)
    /* 18C6E8 801DE698 2463A7C4 */  addiu      $v1, $v1, %lo(omCurrentObj)
    /* 18C6EC 801DE69C 45010055 */  bc1t       .L801DE7F4_ovl9
    /* 18C6F0 801DE6A0 00000000 */   nop
    /* 18C6F4 801DE6A4 4600103C */  c.lt.s     $f2, $f0
    /* 18C6F8 801DE6A8 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* 18C6FC 801DE6AC 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 18C700 801DE6B0 4502000B */  bc1fl      .L801DE6E0_ovl9
    /* 18C704 801DE6B4 8C660000 */   lw        $a2, 0x0($v1)
    /* 18C708 801DE6B8 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 18C70C 801DE6BC 3C0F800E */  lui        $t7, %hi(D_800E6A10)
    /* 18C710 801DE6C0 25EF6A10 */  addiu      $t7, $t7, %lo(D_800E6A10)
    /* 18C714 801DE6C4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 18C718 801DE6C8 000D7080 */  sll        $t6, $t5, 2
    /* 18C71C 801DE6CC 01CF1021 */  addu       $v0, $t6, $t7
    /* 18C720 801DE6D0 C4440000 */  lwc1       $f4, 0x0($v0)
    /* 18C724 801DE6D4 46002187 */  neg.s      $f6, $f4
    /* 18C728 801DE6D8 E4460000 */  swc1       $f6, 0x0($v0)
    /* 18C72C 801DE6DC 8C660000 */  lw         $a2, 0x0($v1)
  .L801DE6E0_ovl9:
    /* 18C730 801DE6E0 8CC20000 */  lw         $v0, 0x0($a2)
    /* 18C734 801DE6E4 00021080 */  sll        $v0, $v0, 2
    /* 18C738 801DE6E8 00E2C021 */  addu       $t8, $a3, $v0
    /* 18C73C 801DE6EC 8F190000 */  lw         $t9, 0x0($t8)
    /* 18C740 801DE6F0 01024021 */  addu       $t0, $t0, $v0
    /* 18C744 801DE6F4 00220821 */  addu       $at, $at, $v0
    /* 18C748 801DE6F8 17200003 */  bnez       $t9, .L801DE708_ovl9
    /* 18C74C 801DE6FC 00000000 */   nop
    /* 18C750 801DE700 1000000F */  b          .L801DE740_ovl9
    /* 18C754 801DE704 E422AC20 */   swc1      $f2, %lo(D_800EAC20)($at)
  .L801DE708_ovl9:
    /* 18C758 801DE708 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
    /* 18C75C 801DE70C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 18C760 801DE710 31090001 */  andi       $t1, $t0, 0x1
    /* 18C764 801DE714 51200006 */  beql       $t1, $zero, .L801DE730_ovl9
    /* 18C768 801DE718 44810000 */   mtc1      $at, $f0
    /* 18C76C 801DE71C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 18C770 801DE720 44810000 */  mtc1       $at, $f0
    /* 18C774 801DE724 10000003 */  b          .L801DE734_ovl9
    /* 18C778 801DE728 00000000 */   nop
    /* 18C77C 801DE72C 44810000 */  mtc1       $at, $f0
  .L801DE730_ovl9:
    /* 18C780 801DE730 00000000 */  nop
  .L801DE734_ovl9:
    /* 18C784 801DE734 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 18C788 801DE738 00220821 */  addu       $at, $at, $v0
    /* 18C78C 801DE73C E420AC20 */  swc1       $f0, %lo(D_800EAC20)($at)
  .L801DE740_ovl9:
    /* 18C790 801DE740 8CC20000 */  lw         $v0, 0x0($a2)
    /* 18C794 801DE744 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 18C798 801DE748 00021080 */  sll        $v0, $v0, 2
    /* 18C79C 801DE74C 00220821 */  addu       $at, $at, $v0
    /* 18C7A0 801DE750 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* 18C7A4 801DE754 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* 18C7A8 801DE758 44815000 */  mtc1       $at, $f10
    /* 18C7AC 801DE75C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 18C7B0 801DE760 00220821 */  addu       $at, $at, $v0
    /* 18C7B4 801DE764 460A4400 */  add.s      $f16, $f8, $f10
    /* 18C7B8 801DE768 E4302CD0 */  swc1       $f16, %lo(gEntitiesPosYArray)($at)
    /* 18C7BC 801DE76C 8CC20000 */  lw         $v0, 0x0($a2)
    /* 18C7C0 801DE770 24010001 */  addiu      $at, $zero, 0x1
    /* 18C7C4 801DE774 00021080 */  sll        $v0, $v0, 2
    /* 18C7C8 801DE778 00E25021 */  addu       $t2, $a3, $v0
    /* 18C7CC 801DE77C 8D430000 */  lw         $v1, 0x0($t2)
    /* 18C7D0 801DE780 1461000A */  bne        $v1, $at, .L801DE7AC_ovl9
    /* 18C7D4 801DE784 00000000 */   nop
    /* 18C7D8 801DE788 0C029D9E */  jal        play_sound
    /* 18C7DC 801DE78C 240400A4 */   addiu     $a0, $zero, 0xA4
    /* 18C7E0 801DE790 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 18C7E4 801DE794 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 18C7E8 801DE798 3C03800F */  lui        $v1, %hi(D_800E8920)
    /* 18C7EC 801DE79C 8CC20000 */  lw         $v0, 0x0($a2)
    /* 18C7F0 801DE7A0 00021080 */  sll        $v0, $v0, 2
    /* 18C7F4 801DE7A4 00621821 */  addu       $v1, $v1, $v0
    /* 18C7F8 801DE7A8 8C638920 */  lw         $v1, %lo(D_800E8920)($v1)
  .L801DE7AC_ovl9:
    /* 18C7FC 801DE7AC 14600006 */  bnez       $v1, .L801DE7C8_ovl9
    /* 18C800 801DE7B0 3C04800E */   lui       $a0, %hi(gEntityGObjProcessArray)
    /* 18C804 801DE7B4 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 18C808 801DE7B8 00220821 */  addu       $at, $at, $v0
    /* 18C80C 801DE7BC 240B0004 */  addiu      $t3, $zero, 0x4
    /* 18C810 801DE7C0 10000005 */  b          .L801DE7D8_ovl9
    /* 18C814 801DE7C4 AC2BDC50 */   sw        $t3, %lo(gEntityFuncListIDArray)($at)
  .L801DE7C8_ovl9:
    /* 18C818 801DE7C8 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 18C81C 801DE7CC 00220821 */  addu       $at, $at, $v0
    /* 18C820 801DE7D0 240C0003 */  addiu      $t4, $zero, 0x3
    /* 18C824 801DE7D4 AC2CDC50 */  sw         $t4, %lo(gEntityFuncListIDArray)($at)
  .L801DE7D8_ovl9:
    /* 18C828 801DE7D8 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 18C82C 801DE7DC 3C05801E */  lui        $a1, %hi(func_801DCA78_ovl9)
    /* 18C830 801DE7E0 24A5CA78 */  addiu      $a1, $a1, %lo(func_801DCA78_ovl9)
    /* 18C834 801DE7E4 000D7080 */  sll        $t6, $t5, 2
    /* 18C838 801DE7E8 008E2021 */  addu       $a0, $a0, $t6
    /* 18C83C 801DE7EC 0C02C7B2 */  jal        assign_new_process_entry
    /* 18C840 801DE7F0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
  .L801DE7F4_ovl9:
    /* 18C844 801DE7F4 0C067CFC */  jal        func_8019F3F0_ovl7
    /* 18C848 801DE7F8 00000000 */   nop
    /* 18C84C 801DE7FC 0C077D15 */  jal        func_801DF454_ovl9
    /* 18C850 801DE800 8FA40020 */   lw        $a0, 0x20($sp)
    /* 18C854 801DE804 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 18C858 801DE808 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 18C85C 801DE80C 03E00008 */  jr         $ra
    /* 18C860 801DE810 00000000 */   nop
endlabel func_801DE60C_ovl9
.size func_801DE60C_ovl9, . - func_801DE60C_ovl9
