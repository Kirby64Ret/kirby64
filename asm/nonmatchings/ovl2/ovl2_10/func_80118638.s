nonmatching func_80118638, 0x128

glabel func_80118638
    /* A10A8 80118638 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* A10AC 8011863C AFBF0034 */  sw         $ra, 0x34($sp)
    /* A10B0 80118640 AFB20030 */  sw         $s2, 0x30($sp)
    /* A10B4 80118644 AFB1002C */  sw         $s1, 0x2C($sp)
    /* A10B8 80118648 AFB00028 */  sw         $s0, 0x28($sp)
    /* A10BC 8011864C F7B60020 */  sdc1       $f22, 0x20($sp)
    /* A10C0 80118650 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* A10C4 80118654 8C830000 */  lw         $v1, 0x0($a0)
    /* A10C8 80118658 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* A10CC 8011865C 27A40040 */  addiu      $a0, $sp, 0x40
    /* A10D0 80118660 00031080 */  sll        $v0, $v1, 2
    /* A10D4 80118664 00220821 */  addu       $at, $at, $v0
    /* A10D8 80118668 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* A10DC 8011866C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* A10E0 80118670 00220821 */  addu       $at, $at, $v0
    /* A10E4 80118674 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* A10E8 80118678 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* A10EC 8011867C 00220821 */  addu       $at, $at, $v0
    /* A10F0 80118680 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* A10F4 80118684 E7A40040 */  swc1       $f4, 0x40($sp)
    /* A10F8 80118688 E7A60044 */  swc1       $f6, 0x44($sp)
    /* A10FC 8011868C 0C0437E7 */  jal        func_8010DF9C
    /* A1100 80118690 E7A80048 */   swc1      $f8, 0x48($sp)
    /* A1104 80118694 10400004 */  beqz       $v0, .L801186A8
    /* A1108 80118698 3C0E8005 */   lui       $t6, %hi(omCurrentObj)
    /* A110C 8011869C 3C118013 */  lui        $s1, %hi(D_8012BCE0)
    /* A1110 801186A0 8E31BCE0 */  lw         $s1, %lo(D_8012BCE0)($s1)
    /* A1114 801186A4 AFB10054 */  sw         $s1, 0x54($sp)
  .L801186A8:
    /* A1118 801186A8 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* A111C 801186AC 8FB10054 */  lw         $s1, 0x54($sp)
    /* A1120 801186B0 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* A1124 801186B4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* A1128 801186B8 02202025 */  or         $a0, $s1, $zero
    /* A112C 801186BC 000FC080 */  sll        $t8, $t7, 2
    /* A1130 801186C0 00380821 */  addu       $at, $at, $t8
    /* A1134 801186C4 0C0438A8 */  jal        func_8010E2A0
    /* A1138 801186C8 AC20EF90 */   sw        $zero, %lo(D_800DEF90)($at)
    /* A113C 801186CC 3C014270 */  lui        $at, (0x42700000 >> 16)
    /* A1140 801186D0 4481B000 */  mtc1       $at, $f22
    /* A1144 801186D4 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* A1148 801186D8 3C10800D */  lui        $s0, %hi(gameTicksPerDrawInv)
    /* A114C 801186DC 4481A000 */  mtc1       $at, $f20
    /* A1150 801186E0 305200FF */  andi       $s2, $v0, 0xFF
    /* A1154 801186E4 26106B14 */  addiu      $s0, $s0, %lo(gameTicksPerDrawInv)
    /* A1158 801186E8 02202025 */  or         $a0, $s1, $zero
  .L801186EC:
    /* A115C 801186EC 0C0438A2 */  jal        func_8010E288
    /* A1160 801186F0 24050050 */   addiu     $a1, $zero, 0x50
    /* A1164 801186F4 C60A0000 */  lwc1       $f10, 0x0($s0)
    /* A1168 801186F8 460AA402 */  mul.s      $f16, $f20, $f10
    /* A116C 801186FC 4600848D */  trunc.w.s  $f18, $f16
    /* A1170 80118700 44049000 */  mfc1       $a0, $f18
    /* A1174 80118704 0C002DAF */  jal        ohSleep
    /* A1178 80118708 00000000 */   nop
    /* A117C 8011870C 02202025 */  or         $a0, $s1, $zero
    /* A1180 80118710 0C0438A2 */  jal        func_8010E288
    /* A1184 80118714 324500FF */   andi      $a1, $s2, 0xFF
    /* A1188 80118718 C6040000 */  lwc1       $f4, 0x0($s0)
    /* A118C 8011871C 4604B182 */  mul.s      $f6, $f22, $f4
    /* A1190 80118720 4600320D */  trunc.w.s  $f8, $f6
    /* A1194 80118724 44044000 */  mfc1       $a0, $f8
    /* A1198 80118728 0C002DAF */  jal        ohSleep
    /* A119C 8011872C 00000000 */   nop
    /* A11A0 80118730 1000FFEE */  b          .L801186EC
    /* A11A4 80118734 02202025 */   or        $a0, $s1, $zero
    /* A11A8 80118738 00000000 */  nop
    /* A11AC 8011873C 00000000 */  nop
    /* A11B0 80118740 8FBF0034 */  lw         $ra, 0x34($sp)
    /* A11B4 80118744 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* A11B8 80118748 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* A11BC 8011874C 8FB00028 */  lw         $s0, 0x28($sp)
    /* A11C0 80118750 8FB1002C */  lw         $s1, 0x2C($sp)
    /* A11C4 80118754 8FB20030 */  lw         $s2, 0x30($sp)
    /* A11C8 80118758 03E00008 */  jr         $ra
    /* A11CC 8011875C 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_80118638
.size func_80118638, . - func_80118638
