nonmatching func_80153B98_ovl3, 0x430

glabel func_80153B98_ovl3
    /* B45D8 80153B98 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* B45DC 80153B9C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* B45E0 80153BA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* B45E4 80153BA4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* B45E8 80153BA8 AFB00018 */  sw         $s0, 0x18($sp)
    /* B45EC 80153BAC 8C640000 */  lw         $a0, 0x0($v1)
    /* B45F0 80153BB0 3C05800E */  lui        $a1, %hi(D_800E0490)
    /* B45F4 80153BB4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B45F8 80153BB8 00042080 */  sll        $a0, $a0, 2
    /* B45FC 80153BBC 00A42821 */  addu       $a1, $a1, $a0
    /* B4600 80153BC0 8CA50490 */  lw         $a1, %lo(D_800E0490)($a1)
    /* B4604 80153BC4 00240821 */  addu       $at, $at, $a0
    /* B4608 80153BC8 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* B460C 80153BCC 3C078013 */  lui        $a3, %hi(gPositionState)
    /* B4610 80153BD0 8CA20004 */  lw         $v0, 0x4($a1)
    /* B4614 80153BD4 24E7E968 */  addiu      $a3, $a3, %lo(gPositionState)
    /* B4618 80153BD8 E4E40004 */  swc1       $f4, 0x4($a3)
    /* B461C 80153BDC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* B4620 80153BE0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* B4624 80153BE4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B4628 80153BE8 000E7880 */  sll        $t7, $t6, 2
    /* B462C 80153BEC 002F0821 */  addu       $at, $at, $t7
    /* B4630 80153BF0 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* B4634 80153BF4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B4638 80153BF8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* B463C 80153BFC E4E60008 */  swc1       $f6, 0x8($a3)
    /* B4640 80153C00 8C780000 */  lw         $t8, 0x0($v1)
    /* B4644 80153C04 00E02025 */  or         $a0, $a3, $zero
    /* B4648 80153C08 0018C880 */  sll        $t9, $t8, 2
    /* B464C 80153C0C 00390821 */  addu       $at, $at, $t9
    /* B4650 80153C10 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* B4654 80153C14 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* B4658 80153C18 E4E8000C */  swc1       $f8, 0xC($a3)
    /* B465C 80153C1C C44A0000 */  lwc1       $f10, 0x0($v0)
    /* B4660 80153C20 E4EA0010 */  swc1       $f10, 0x10($a3)
    /* B4664 80153C24 C4520000 */  lwc1       $f18, 0x0($v0)
    /* B4668 80153C28 C4500004 */  lwc1       $f16, 0x4($v0)
    /* B466C 80153C2C 46128100 */  add.s      $f4, $f16, $f18
    /* B4670 80153C30 44818000 */  mtc1       $at, $f16
    /* B4674 80153C34 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* B4678 80153C38 E4E40014 */  swc1       $f4, 0x14($a3)
    /* B467C 80153C3C C4480000 */  lwc1       $f8, 0x0($v0)
    /* B4680 80153C40 C4460008 */  lwc1       $f6, 0x8($v0)
    /* B4684 80153C44 46083280 */  add.s      $f10, $f6, $f8
    /* B4688 80153C48 E4EA0018 */  swc1       $f10, 0x18($a3)
    /* B468C 80153C4C 8C6A0000 */  lw         $t2, 0x0($v1)
    /* B4690 80153C50 000A5880 */  sll        $t3, $t2, 2
    /* B4694 80153C54 002B0821 */  addu       $at, $at, $t3
    /* B4698 80153C58 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* B469C 80153C5C 46128032 */  c.eq.s     $f16, $f18
    /* B46A0 80153C60 00000000 */  nop
    /* B46A4 80153C64 45020007 */  bc1fl      .L80153C84_ovl3
    /* B46A8 80153C68 C4480010 */   lwc1      $f8, 0x10($v0)
    /* B46AC 80153C6C C444000C */  lwc1       $f4, 0xC($v0)
    /* B46B0 80153C70 E4E4001C */  swc1       $f4, 0x1C($a3)
    /* B46B4 80153C74 C4460010 */  lwc1       $f6, 0x10($v0)
    /* B46B8 80153C78 10000005 */  b          .L80153C90_ovl3
    /* B46BC 80153C7C E4E60020 */   swc1      $f6, 0x20($a3)
    /* B46C0 80153C80 C4480010 */  lwc1       $f8, 0x10($v0)
  .L80153C84_ovl3:
    /* B46C4 80153C84 E4E8001C */  swc1       $f8, 0x1C($a3)
    /* B46C8 80153C88 C44A000C */  lwc1       $f10, 0xC($v0)
    /* B46CC 80153C8C E4EA0020 */  swc1       $f10, 0x20($a3)
  .L80153C90_ovl3:
    /* B46D0 80153C90 8D0C0034 */  lw         $t4, 0x34($t0)
    /* B46D4 80153C94 318D0001 */  andi       $t5, $t4, 0x1
    /* B46D8 80153C98 51A00005 */  beql       $t5, $zero, .L80153CB0_ovl3
    /* B46DC 80153C9C 8C6E0000 */   lw        $t6, 0x0($v1)
    /* B46E0 80153CA0 C510007C */  lwc1       $f16, 0x7C($t0)
    /* B46E4 80153CA4 10000007 */  b          .L80153CC4_ovl3
    /* B46E8 80153CA8 E4F00024 */   swc1      $f16, 0x24($a3)
    /* B46EC 80153CAC 8C6E0000 */  lw         $t6, 0x0($v1)
  .L80153CB0_ovl3:
    /* B46F0 80153CB0 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* B46F4 80153CB4 000E7880 */  sll        $t7, $t6, 2
    /* B46F8 80153CB8 002F0821 */  addu       $at, $at, $t7
    /* B46FC 80153CBC C43217D0 */  lwc1       $f18, %lo(D_800E17D0)($at)
    /* B4700 80153CC0 E4F20024 */  swc1       $f18, 0x24($a3)
  .L80153CC4_ovl3:
    /* B4704 80153CC4 0C042EF5 */  jal        func_8010BBD4
    /* B4708 80153CC8 AFA50034 */   sw        $a1, 0x34($sp)
    /* B470C 80153CCC 3C108013 */  lui        $s0, %hi(D_8012BCA0)
    /* B4710 80153CD0 2610BCA0 */  addiu      $s0, $s0, %lo(D_8012BCA0)
    /* B4714 80153CD4 3C078013 */  lui        $a3, %hi(gPositionState)
    /* B4718 80153CD8 24E4E968 */  addiu      $a0, $a3, %lo(gPositionState)
    /* B471C 80153CDC 0C04148E */  jal        func_80105238
    /* B4720 80153CE0 02002825 */   or        $a1, $s0, $zero
    /* B4724 80153CE4 3C078013 */  lui        $a3, %hi(gPositionState)
    /* B4728 80153CE8 0C044A29 */  jal        func_801128A4
    /* B472C 80153CEC 24E4E968 */   addiu     $a0, $a3, %lo(gPositionState)
    /* B4730 80153CF0 3C078013 */  lui        $a3, %hi(gPositionState)
    /* B4734 80153CF4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B4738 80153CF8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* B473C 80153CFC 24E7E968 */  addiu      $a3, $a3, %lo(gPositionState)
    /* B4740 80153D00 1040005A */  beqz       $v0, .L80153E6C_ovl3
    /* B4744 80153D04 00404825 */   or        $t1, $v0, $zero
    /* B4748 80153D08 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* B474C 80153D0C 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* B4750 80153D10 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B4754 80153D14 C4E40004 */  lwc1       $f4, 0x4($a3)
    /* B4758 80153D18 8F190000 */  lw         $t9, 0x0($t8)
    /* B475C 80153D1C 44806000 */  mtc1       $zero, $f12
    /* B4760 80153D20 C4E8000C */  lwc1       $f8, 0xC($a3)
    /* B4764 80153D24 00192080 */  sll        $a0, $t9, 2
    /* B4768 80153D28 00240821 */  addu       $at, $at, $a0
    /* B476C 80153D2C C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* B4770 80153D30 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B4774 80153D34 00240821 */  addu       $at, $at, $a0
    /* B4778 80153D38 46062001 */  sub.s      $f0, $f4, $f6
    /* B477C 80153D3C C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* B4780 80153D40 AFB90024 */  sw         $t9, 0x24($sp)
    /* B4784 80153D44 8FA40024 */  lw         $a0, 0x24($sp)
    /* B4788 80153D48 460C0032 */  c.eq.s     $f0, $f12
    /* B478C 80153D4C 460A4081 */  sub.s      $f2, $f8, $f10
    /* B4790 80153D50 45020006 */  bc1fl      .L80153D6C_ovl3
    /* B4794 80153D54 44050000 */   mfc1      $a1, $f0
    /* B4798 80153D58 460C1032 */  c.eq.s     $f2, $f12
    /* B479C 80153D5C 00000000 */  nop
    /* B47A0 80153D60 45030019 */  bc1tl      .L80153DC8_ovl3
    /* B47A4 80153D64 312E0001 */   andi      $t6, $t1, 0x1
    /* B47A8 80153D68 44050000 */  mfc1       $a1, $f0
  .L80153D6C_ovl3:
    /* B47AC 80153D6C 44061000 */  mfc1       $a2, $f2
    /* B47B0 80153D70 0C03E1CA */  jal        func_800F8728
    /* B47B4 80153D74 AFA9003C */   sw        $t1, 0x3C($sp)
    /* B47B8 80153D78 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* B47BC 80153D7C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* B47C0 80153D80 3C078013 */  lui        $a3, %hi(gPositionState)
    /* B47C4 80153D84 24E7E968 */  addiu      $a3, $a3, %lo(gPositionState)
    /* B47C8 80153D88 8C6A0000 */  lw         $t2, 0x0($v1)
    /* B47CC 80153D8C C4F00004 */  lwc1       $f16, 0x4($a3)
    /* B47D0 80153D90 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B47D4 80153D94 000A5880 */  sll        $t3, $t2, 2
    /* B47D8 80153D98 002B0821 */  addu       $at, $at, $t3
    /* B47DC 80153D9C E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* B47E0 80153DA0 8C6C0000 */  lw         $t4, 0x0($v1)
    /* B47E4 80153DA4 C4F2000C */  lwc1       $f18, 0xC($a3)
    /* B47E8 80153DA8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B47EC 80153DAC 000C6880 */  sll        $t5, $t4, 2
    /* B47F0 80153DB0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B47F4 80153DB4 002D0821 */  addu       $at, $at, $t5
    /* B47F8 80153DB8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* B47FC 80153DBC 8FA9003C */  lw         $t1, 0x3C($sp)
    /* B4800 80153DC0 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* B4804 80153DC4 312E0001 */  andi       $t6, $t1, 0x1
  .L80153DC8_ovl3:
    /* B4808 80153DC8 51C0000A */  beql       $t6, $zero, .L80153DF4_ovl3
    /* B480C 80153DCC 312F0002 */   andi      $t7, $t1, 0x2
    /* B4810 80153DD0 8E0F0000 */  lw         $t7, 0x0($s0)
    /* B4814 80153DD4 960C0000 */  lhu        $t4, 0x0($s0)
    /* B4818 80153DD8 000FC4C2 */  srl        $t8, $t7, 19
    /* B481C 80153DDC 37190007 */  ori        $t9, $t8, 0x7
    /* B4820 80153DE0 001958C0 */  sll        $t3, $t9, 3
    /* B4824 80153DE4 318D0007 */  andi       $t5, $t4, 0x7
    /* B4828 80153DE8 016D7025 */  or         $t6, $t3, $t5
    /* B482C 80153DEC A60E0000 */  sh         $t6, 0x0($s0)
    /* B4830 80153DF0 312F0002 */  andi       $t7, $t1, 0x2
  .L80153DF4_ovl3:
    /* B4834 80153DF4 51E0000A */  beql       $t7, $zero, .L80153E20_ovl3
    /* B4838 80153DF8 31380004 */   andi      $t8, $t1, 0x4
    /* B483C 80153DFC 8E180000 */  lw         $t8, 0x0($s0)
    /* B4840 80153E00 960D0000 */  lhu        $t5, 0x0($s0)
    /* B4844 80153E04 0018CCC2 */  srl        $t9, $t8, 19
    /* B4848 80153E08 372A0038 */  ori        $t2, $t9, 0x38
    /* B484C 80153E0C 000A58C0 */  sll        $t3, $t2, 3
    /* B4850 80153E10 31AE0007 */  andi       $t6, $t5, 0x7
    /* B4854 80153E14 016E7825 */  or         $t7, $t3, $t6
    /* B4858 80153E18 A60F0000 */  sh         $t7, 0x0($s0)
    /* B485C 80153E1C 31380004 */  andi       $t8, $t1, 0x4
  .L80153E20_ovl3:
    /* B4860 80153E20 5300000A */  beql       $t8, $zero, .L80153E4C_ovl3
    /* B4864 80153E24 31390008 */   andi      $t9, $t1, 0x8
    /* B4868 80153E28 8E190000 */  lw         $t9, 0x0($s0)
    /* B486C 80153E2C 960E0000 */  lhu        $t6, 0x0($s0)
    /* B4870 80153E30 001954C2 */  srl        $t2, $t9, 19
    /* B4874 80153E34 354C01C0 */  ori        $t4, $t2, 0x1C0
    /* B4878 80153E38 000C58C0 */  sll        $t3, $t4, 3
    /* B487C 80153E3C 31CF0007 */  andi       $t7, $t6, 0x7
    /* B4880 80153E40 016FC025 */  or         $t8, $t3, $t7
    /* B4884 80153E44 A6180000 */  sh         $t8, 0x0($s0)
    /* B4888 80153E48 31390008 */  andi       $t9, $t1, 0x8
  .L80153E4C_ovl3:
    /* B488C 80153E4C 13200007 */  beqz       $t9, .L80153E6C_ovl3
    /* B4890 80153E50 00000000 */   nop
    /* B4894 80153E54 0C047503 */  jal        func_8011D40C
    /* B4898 80153E58 00000000 */   nop
    /* B489C 80153E5C 3C078013 */  lui        $a3, %hi(gPositionState)
    /* B48A0 80153E60 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B48A4 80153E64 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* B48A8 80153E68 24E7E968 */  addiu      $a3, $a3, %lo(gPositionState)
  .L80153E6C_ovl3:
    /* B48AC 80153E6C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* B48B0 80153E70 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* B48B4 80153E74 C4E40008 */  lwc1       $f4, 0x8($a3)
    /* B48B8 80153E78 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* B48BC 80153E7C 8C6A0000 */  lw         $t2, 0x0($v1)
    /* B48C0 80153E80 000A6080 */  sll        $t4, $t2, 2
    /* B48C4 80153E84 002C0821 */  addu       $at, $at, $t4
    /* B48C8 80153E88 E4242790 */  swc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* B48CC 80153E8C 8E020000 */  lw         $v0, 0x0($s0)
    /* B48D0 80153E90 000214C2 */  srl        $v0, $v0, 19
    /* B48D4 80153E94 304501C0 */  andi       $a1, $v0, 0x1C0
    /* B48D8 80153E98 30440E00 */  andi       $a0, $v0, 0xE00
    /* B48DC 80153E9C 00A45825 */  or         $t3, $a1, $a0
    /* B48E0 80153EA0 AD0500E4 */  sw         $a1, 0xE4($t0)
    /* B48E4 80153EA4 AD0400E8 */  sw         $a0, 0xE8($t0)
    /* B48E8 80153EA8 10800007 */  beqz       $a0, .L80153EC8_ovl3
    /* B48EC 80153EAC AD0B00F8 */   sw        $t3, 0xF8($t0)
    /* B48F0 80153EB0 8C780000 */  lw         $t8, 0x0($v1)
    /* B48F4 80153EB4 3C01800F */  lui        $at, %hi(D_800E8920)
    /* B48F8 80153EB8 240F0001 */  addiu      $t7, $zero, 0x1
    /* B48FC 80153EBC 0018C880 */  sll        $t9, $t8, 2
    /* B4900 80153EC0 00390821 */  addu       $at, $at, $t9
    /* B4904 80153EC4 AC2F8920 */  sw         $t7, %lo(D_800E8920)($at)
  .L80153EC8_ovl3:
    /* B4908 80153EC8 8E060014 */  lw         $a2, 0x14($s0)
    /* B490C 80153ECC 10C00008 */  beqz       $a2, .L80153EF0_ovl3
    /* B4910 80153ED0 00C01025 */   or        $v0, $a2, $zero
    /* B4914 80153ED4 50A00007 */  beql       $a1, $zero, .L80153EF4_ovl3
    /* B4918 80153ED8 A5000100 */   sh        $zero, 0x100($t0)
    /* B491C 80153EDC 944A0012 */  lhu        $t2, 0x12($v0)
    /* B4920 80153EE0 A50A0100 */  sh         $t2, 0x100($t0)
    /* B4924 80153EE4 944C000E */  lhu        $t4, 0xE($v0)
    /* B4928 80153EE8 10000003 */  b          .L80153EF8_ovl3
    /* B492C 80153EEC A50C0108 */   sh        $t4, 0x108($t0)
  .L80153EF0_ovl3:
    /* B4930 80153EF0 A5000100 */  sh         $zero, 0x100($t0)
  .L80153EF4_ovl3:
    /* B4934 80153EF4 A5000108 */  sh         $zero, 0x108($t0)
  .L80153EF8_ovl3:
    /* B4938 80153EF8 8E020008 */  lw         $v0, 0x8($s0)
    /* B493C 80153EFC 50400009 */  beql       $v0, $zero, .L80153F24_ovl3
    /* B4940 80153F00 A5000102 */   sh        $zero, 0x102($t0)
    /* B4944 80153F04 50800007 */  beql       $a0, $zero, .L80153F24_ovl3
    /* B4948 80153F08 A5000102 */   sh        $zero, 0x102($t0)
    /* B494C 80153F0C 944D0012 */  lhu        $t5, 0x12($v0)
    /* B4950 80153F10 A50D0102 */  sh         $t5, 0x102($t0)
    /* B4954 80153F14 944E000E */  lhu        $t6, 0xE($v0)
    /* B4958 80153F18 10000003 */  b          .L80153F28_ovl3
    /* B495C 80153F1C A50E010A */   sh        $t6, 0x10A($t0)
    /* B4960 80153F20 A5000102 */  sh         $zero, 0x102($t0)
  .L80153F24_ovl3:
    /* B4964 80153F24 A500010A */  sh         $zero, 0x10A($t0)
  .L80153F28_ovl3:
    /* B4968 80153F28 50A0000C */  beql       $a1, $zero, .L80153F5C_ovl3
    /* B496C 80153F2C 8D1800E8 */   lw        $t8, 0xE8($t0)
    /* B4970 80153F30 0C043709 */  jal        func_8010DC24
    /* B4974 80153F34 00C02025 */   or        $a0, $a2, $zero
    /* B4978 80153F38 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B497C 80153F3C 10400006 */  beqz       $v0, .L80153F58_ovl3
    /* B4980 80153F40 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* B4984 80153F44 3C010001 */  lui        $at, (0x10000 >> 16)
    /* B4988 80153F48 00415825 */  or         $t3, $v0, $at
    /* B498C 80153F4C 3C018013 */  lui        $at, %hi(D_8012E8CA + 0x36)
    /* B4990 80153F50 10000013 */  b          .L80153FA0_ovl3
    /* B4994 80153F54 AC2BE900 */   sw        $t3, %lo(D_8012E8CA + 0x36)($at)
  .L80153F58_ovl3:
    /* B4998 80153F58 8D1800E8 */  lw         $t8, 0xE8($t0)
  .L80153F5C_ovl3:
    /* B499C 80153F5C 5300000C */  beql       $t8, $zero, .L80153F90_ovl3
    /* B49A0 80153F60 91190005 */   lbu       $t9, 0x5($t0)
    /* B49A4 80153F64 0C043709 */  jal        func_8010DC24
    /* B49A8 80153F68 8E040008 */   lw        $a0, 0x8($s0)
    /* B49AC 80153F6C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B49B0 80153F70 10400006 */  beqz       $v0, .L80153F8C_ovl3
    /* B49B4 80153F74 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* B49B8 80153F78 3C010002 */  lui        $at, (0x20000 >> 16)
    /* B49BC 80153F7C 00417825 */  or         $t7, $v0, $at
    /* B49C0 80153F80 3C018013 */  lui        $at, %hi(D_8012E8CA + 0x36)
    /* B49C4 80153F84 10000006 */  b          .L80153FA0_ovl3
    /* B49C8 80153F88 AC2FE900 */   sw        $t7, %lo(D_8012E8CA + 0x36)($at)
  .L80153F8C_ovl3:
    /* B49CC 80153F8C 91190005 */  lbu        $t9, 0x5($t0)
  .L80153F90_ovl3:
    /* B49D0 80153F90 24010016 */  addiu      $at, $zero, 0x16
    /* B49D4 80153F94 53210003 */  beql       $t9, $at, .L80153FA4_ovl3
    /* B49D8 80153F98 8FAA0034 */   lw        $t2, 0x34($sp)
    /* B49DC 80153F9C AD000140 */  sw         $zero, 0x140($t0)
  .L80153FA0_ovl3:
    /* B49E0 80153FA0 8FAA0034 */  lw         $t2, 0x34($sp)
  .L80153FA4_ovl3:
    /* B49E4 80153FA4 0C054C2F */  jal        func_801530BC_ovl3
    /* B49E8 80153FA8 8D440004 */   lw        $a0, 0x4($t2)
    /* B49EC 80153FAC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* B49F0 80153FB0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B49F4 80153FB4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* B49F8 80153FB8 8D0200F8 */  lw         $v0, 0xF8($t0)
    /* B49FC 80153FBC 8FB00018 */  lw         $s0, 0x18($sp)
    /* B4A00 80153FC0 03E00008 */  jr         $ra
    /* B4A04 80153FC4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_80153B98_ovl3
.size func_80153B98_ovl3, . - func_80153B98_ovl3
