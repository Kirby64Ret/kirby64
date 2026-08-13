nonmatching func_8016858C_ovl3, 0xE38

glabel func_8016858C_ovl3
    /* C8FCC 8016858C 27BDFE98 */  addiu      $sp, $sp, -0x168
    /* C8FD0 80168590 AFBF001C */  sw         $ra, 0x1C($sp)
    /* C8FD4 80168594 AFB10018 */  sw         $s1, 0x18($sp)
    /* C8FD8 80168598 AFB00014 */  sw         $s0, 0x14($sp)
    /* C8FDC 8016859C 8C820000 */  lw         $v0, 0x0($a0)
    /* C8FE0 801685A0 3C0E800E */  lui        $t6, %hi(D_800DD8D0)
    /* C8FE4 801685A4 00023080 */  sll        $a2, $v0, 2
    /* C8FE8 801685A8 01C67021 */  addu       $t6, $t6, $a2
    /* C8FEC 801685AC 8DCED8D0 */  lw         $t6, %lo(D_800DD8D0)($t6)
    /* C8FF0 801685B0 31CF0040 */  andi       $t7, $t6, 0x40
    /* C8FF4 801685B4 55E0037F */  bnel       $t7, $zero, .L801693B4_ovl3
    /* C8FF8 801685B8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* C8FFC 801685BC AFA20164 */  sw         $v0, 0x164($sp)
    /* C9000 801685C0 AFA40168 */  sw         $a0, 0x168($sp)
    /* C9004 801685C4 0C02AC3D */  jal        func_800AB0F4
    /* C9008 801685C8 AFA60020 */   sw        $a2, 0x20($sp)
    /* C900C 801685CC 2458FFED */  addiu      $t8, $v0, -0x13
    /* C9010 801685D0 2F01000C */  sltiu      $at, $t8, 0xC
    /* C9014 801685D4 10200376 */  beqz       $at, .L801693B0_ovl3
    /* C9018 801685D8 8FA60020 */   lw        $a2, 0x20($sp)
    /* C901C 801685DC 0018C080 */  sll        $t8, $t8, 2
    /* C9020 801685E0 3C018019 */  lui        $at, %hi(jtbl_801971BC_ovl3)
    /* C9024 801685E4 00380821 */  addu       $at, $at, $t8
    /* C9028 801685E8 8C3871BC */  lw         $t8, %lo(jtbl_801971BC_ovl3)($at)
    /* C902C 801685EC 03000008 */  jr         $t8
    /* C9030 801685F0 00000000 */   nop
  jlabel .L801685F4_ovl3
    /* C9034 801685F4 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C9038 801685F8 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C903C 801685FC 8E020000 */  lw         $v0, 0x0($s0)
    /* C9040 80168600 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C9044 80168604 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C9048 80168608 24590008 */  addiu      $t9, $v0, 0x8
    /* C904C 8016860C AE190000 */  sw         $t9, 0x0($s0)
    /* C9050 80168610 3C0E800E */  lui        $t6, %hi(gSegment4StartArray)
    /* C9054 80168614 01C67021 */  addu       $t6, $t6, $a2
    /* C9058 80168618 AC480000 */  sw         $t0, 0x0($v0)
    /* C905C 8016861C 8DCEF4D0 */  lw         $t6, %lo(gSegment4StartArray)($t6)
    /* C9060 80168620 3C0F800E */  lui        $t7, %hi(D_800E0650)
    /* C9064 80168624 01E67821 */  addu       $t7, $t7, $a2
    /* C9068 80168628 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C906C 8016862C 8DEF0650 */  lw         $t7, %lo(D_800E0650)($t7)
    /* C9070 80168630 3C18800E */  lui        $t8, %hi(D_800E5F90)
    /* C9074 80168634 0306C021 */  addu       $t8, $t8, $a2
    /* C9078 80168638 11E0002D */  beqz       $t7, .L801686F0_ovl3
    /* C907C 8016863C 00000000 */   nop
    /* C9080 80168640 8F185F90 */  lw         $t8, %lo(D_800E5F90)($t8)
    /* C9084 80168644 2401FFFF */  addiu      $at, $zero, -0x1
    /* C9088 80168648 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C908C 8016864C 1701000A */  bne        $t8, $at, .L80168678_ovl3
    /* C9090 80168650 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C9094 80168654 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9098 80168658 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C909C 8016865C 00862021 */  addu       $a0, $a0, $a2
    /* C90A0 80168660 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C90A4 80168664 8E25000C */  lw         $a1, 0xC($s1)
    /* C90A8 80168668 0C03E430 */  jal        func_800F90C0
    /* C90AC 8016866C 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C90B0 80168670 10000005 */  b          .L80168688_ovl3
    /* C90B4 80168674 8E020000 */   lw        $v0, 0x0($s0)
  .L80168678_ovl3:
    /* C90B8 80168678 8FA40164 */  lw         $a0, 0x164($sp)
    /* C90BC 8016867C 0C03E430 */  jal        func_800F90C0
    /* C90C0 80168680 8E25000C */   lw        $a1, 0xC($s1)
    /* C90C4 80168684 8E020000 */  lw         $v0, 0x0($s0)
  .L80168688_ovl3:
    /* C90C8 80168688 3C0EDB02 */  lui        $t6, (0xDB020000 >> 16)
    /* C90CC 8016868C 240F0018 */  addiu      $t7, $zero, 0x18
    /* C90D0 80168690 24590008 */  addiu      $t9, $v0, 0x8
    /* C90D4 80168694 AE190000 */  sw         $t9, 0x0($s0)
    /* C90D8 80168698 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C90DC 8016869C AC4E0000 */  sw         $t6, 0x0($v0)
    /* C90E0 801686A0 8E020000 */  lw         $v0, 0x0($s0)
    /* C90E4 801686A4 3C19DC08 */  lui        $t9, (0xDC08060A >> 16)
    /* C90E8 801686A8 3739060A */  ori        $t9, $t9, (0xDC08060A & 0xFFFF)
    /* C90EC 801686AC 24580008 */  addiu      $t8, $v0, 0x8
    /* C90F0 801686B0 AE180000 */  sw         $t8, 0x0($s0)
    /* C90F4 801686B4 AC590000 */  sw         $t9, 0x0($v0)
    /* C90F8 801686B8 8E2E000C */  lw         $t6, 0xC($s1)
    /* C90FC 801686BC 3C19DC08 */  lui        $t9, (0xDC08090A >> 16)
    /* C9100 801686C0 3739090A */  ori        $t9, $t9, (0xDC08090A & 0xFFFF)
    /* C9104 801686C4 25CF0008 */  addiu      $t7, $t6, 0x8
    /* C9108 801686C8 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C910C 801686CC 8E020000 */  lw         $v0, 0x0($s0)
    /* C9110 801686D0 24580008 */  addiu      $t8, $v0, 0x8
    /* C9114 801686D4 AE180000 */  sw         $t8, 0x0($s0)
    /* C9118 801686D8 AC590000 */  sw         $t9, 0x0($v0)
    /* C911C 801686DC 8E2E000C */  lw         $t6, 0xC($s1)
    /* C9120 801686E0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9124 801686E4 8E2F000C */  lw         $t7, 0xC($s1)
    /* C9128 801686E8 25F80018 */  addiu      $t8, $t7, 0x18
    /* C912C 801686EC AE38000C */  sw         $t8, 0xC($s1)
  .L801686F0_ovl3:
    /* C9130 801686F0 0C02AC48 */  jal        func_800AB120
    /* C9134 801686F4 8FA40168 */   lw        $a0, 0x168($sp)
    /* C9138 801686F8 8E020000 */  lw         $v0, 0x0($s0)
    /* C913C 801686FC 3C0EDB02 */  lui        $t6, (0xDB020000 >> 16)
    /* C9140 80168700 240F0018 */  addiu      $t7, $zero, 0x18
    /* C9144 80168704 24590008 */  addiu      $t9, $v0, 0x8
    /* C9148 80168708 AE190000 */  sw         $t9, 0x0($s0)
    /* C914C 8016870C AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9150 80168710 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C9154 80168714 8E020000 */  lw         $v0, 0x0($s0)
    /* C9158 80168718 3C0E800C */  lui        $t6, %hi(D_800BE550)
    /* C915C 8016871C 3C19DC08 */  lui        $t9, (0xDC08060A >> 16)
    /* C9160 80168720 24580008 */  addiu      $t8, $v0, 0x8
    /* C9164 80168724 AE180000 */  sw         $t8, 0x0($s0)
    /* C9168 80168728 3739060A */  ori        $t9, $t9, (0xDC08060A & 0xFFFF)
    /* C916C 8016872C 25CEE550 */  addiu      $t6, $t6, %lo(D_800BE550)
    /* C9170 80168730 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9174 80168734 AC590000 */  sw         $t9, 0x0($v0)
    /* C9178 80168738 8E020000 */  lw         $v0, 0x0($s0)
    /* C917C 8016873C 3C19800C */  lui        $t9, %hi(D_800BE548)
    /* C9180 80168740 3C18DC08 */  lui        $t8, (0xDC08090A >> 16)
    /* C9184 80168744 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9188 80168748 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C918C 8016874C 3718090A */  ori        $t8, $t8, (0xDC08090A & 0xFFFF)
    /* C9190 80168750 2739E548 */  addiu      $t9, $t9, %lo(D_800BE548)
    /* C9194 80168754 AC590004 */  sw         $t9, 0x4($v0)
    /* C9198 80168758 10000315 */  b          .L801693B0_ovl3
    /* C919C 8016875C AC580000 */   sw        $t8, 0x0($v0)
  jlabel .L80168760_ovl3
    /* C91A0 80168760 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C91A4 80168764 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C91A8 80168768 8E020000 */  lw         $v0, 0x0($s0)
    /* C91AC 8016876C 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C91B0 80168770 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C91B4 80168774 244E0008 */  addiu      $t6, $v0, 0x8
    /* C91B8 80168778 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C91BC 8016877C 3C0F800E */  lui        $t7, %hi(gSegment4StartArray)
    /* C91C0 80168780 01E67821 */  addu       $t7, $t7, $a2
    /* C91C4 80168784 AC480000 */  sw         $t0, 0x0($v0)
    /* C91C8 80168788 8DEFF4D0 */  lw         $t7, %lo(gSegment4StartArray)($t7)
    /* C91CC 8016878C 3C18800E */  lui        $t8, %hi(D_800E0650)
    /* C91D0 80168790 0306C021 */  addu       $t8, $t8, $a2
    /* C91D4 80168794 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C91D8 80168798 8F180650 */  lw         $t8, %lo(D_800E0650)($t8)
    /* C91DC 8016879C 3C19800E */  lui        $t9, %hi(D_800E5F90)
    /* C91E0 801687A0 0326C821 */  addu       $t9, $t9, $a2
    /* C91E4 801687A4 1300002D */  beqz       $t8, .L8016885C_ovl3
    /* C91E8 801687A8 00000000 */   nop
    /* C91EC 801687AC 8F395F90 */  lw         $t9, %lo(D_800E5F90)($t9)
    /* C91F0 801687B0 2401FFFF */  addiu      $at, $zero, -0x1
    /* C91F4 801687B4 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C91F8 801687B8 1721000A */  bne        $t9, $at, .L801687E4_ovl3
    /* C91FC 801687BC 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C9200 801687C0 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9204 801687C4 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C9208 801687C8 00862021 */  addu       $a0, $a0, $a2
    /* C920C 801687CC 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C9210 801687D0 8E25000C */  lw         $a1, 0xC($s1)
    /* C9214 801687D4 0C03E430 */  jal        func_800F90C0
    /* C9218 801687D8 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C921C 801687DC 10000005 */  b          .L801687F4_ovl3
    /* C9220 801687E0 8E020000 */   lw        $v0, 0x0($s0)
  .L801687E4_ovl3:
    /* C9224 801687E4 8FA40164 */  lw         $a0, 0x164($sp)
    /* C9228 801687E8 0C03E430 */  jal        func_800F90C0
    /* C922C 801687EC 8E25000C */   lw        $a1, 0xC($s1)
    /* C9230 801687F0 8E020000 */  lw         $v0, 0x0($s0)
  .L801687F4_ovl3:
    /* C9234 801687F4 3C0FDB02 */  lui        $t7, (0xDB020000 >> 16)
    /* C9238 801687F8 24180018 */  addiu      $t8, $zero, 0x18
    /* C923C 801687FC 244E0008 */  addiu      $t6, $v0, 0x8
    /* C9240 80168800 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C9244 80168804 AC580004 */  sw         $t8, 0x4($v0)
    /* C9248 80168808 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C924C 8016880C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9250 80168810 3C0EDC08 */  lui        $t6, (0xDC08060A >> 16)
    /* C9254 80168814 35CE060A */  ori        $t6, $t6, (0xDC08060A & 0xFFFF)
    /* C9258 80168818 24590008 */  addiu      $t9, $v0, 0x8
    /* C925C 8016881C AE190000 */  sw         $t9, 0x0($s0)
    /* C9260 80168820 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C9264 80168824 8E2F000C */  lw         $t7, 0xC($s1)
    /* C9268 80168828 3C0EDC08 */  lui        $t6, (0xDC08090A >> 16)
    /* C926C 8016882C 35CE090A */  ori        $t6, $t6, (0xDC08090A & 0xFFFF)
    /* C9270 80168830 25F80008 */  addiu      $t8, $t7, 0x8
    /* C9274 80168834 AC580004 */  sw         $t8, 0x4($v0)
    /* C9278 80168838 8E020000 */  lw         $v0, 0x0($s0)
    /* C927C 8016883C 24590008 */  addiu      $t9, $v0, 0x8
    /* C9280 80168840 AE190000 */  sw         $t9, 0x0($s0)
    /* C9284 80168844 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C9288 80168848 8E2F000C */  lw         $t7, 0xC($s1)
    /* C928C 8016884C AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9290 80168850 8E38000C */  lw         $t8, 0xC($s1)
    /* C9294 80168854 27190018 */  addiu      $t9, $t8, 0x18
    /* C9298 80168858 AE39000C */  sw         $t9, 0xC($s1)
  .L8016885C_ovl3:
    /* C929C 8016885C 0C02AC7C */  jal        func_800AB1F0
    /* C92A0 80168860 8FA40168 */   lw        $a0, 0x168($sp)
    /* C92A4 80168864 8E020000 */  lw         $v0, 0x0($s0)
    /* C92A8 80168868 3C0FDB02 */  lui        $t7, (0xDB020000 >> 16)
    /* C92AC 8016886C 24180018 */  addiu      $t8, $zero, 0x18
    /* C92B0 80168870 244E0008 */  addiu      $t6, $v0, 0x8
    /* C92B4 80168874 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C92B8 80168878 AC580004 */  sw         $t8, 0x4($v0)
    /* C92BC 8016887C AC4F0000 */  sw         $t7, 0x0($v0)
    /* C92C0 80168880 8E020000 */  lw         $v0, 0x0($s0)
    /* C92C4 80168884 3C0F800C */  lui        $t7, %hi(D_800BE550)
    /* C92C8 80168888 3C0EDC08 */  lui        $t6, (0xDC08060A >> 16)
    /* C92CC 8016888C 24590008 */  addiu      $t9, $v0, 0x8
    /* C92D0 80168890 AE190000 */  sw         $t9, 0x0($s0)
    /* C92D4 80168894 35CE060A */  ori        $t6, $t6, (0xDC08060A & 0xFFFF)
    /* C92D8 80168898 25EFE550 */  addiu      $t7, $t7, %lo(D_800BE550)
    /* C92DC 8016889C AC4F0004 */  sw         $t7, 0x4($v0)
    /* C92E0 801688A0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C92E4 801688A4 8E020000 */  lw         $v0, 0x0($s0)
    /* C92E8 801688A8 3C0E800C */  lui        $t6, %hi(D_800BE548)
    /* C92EC 801688AC 3C19DC08 */  lui        $t9, (0xDC08090A >> 16)
    /* C92F0 801688B0 24580008 */  addiu      $t8, $v0, 0x8
    /* C92F4 801688B4 AE180000 */  sw         $t8, 0x0($s0)
    /* C92F8 801688B8 3739090A */  ori        $t9, $t9, (0xDC08090A & 0xFFFF)
    /* C92FC 801688BC 25CEE548 */  addiu      $t6, $t6, %lo(D_800BE548)
    /* C9300 801688C0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9304 801688C4 100002BA */  b          .L801693B0_ovl3
    /* C9308 801688C8 AC590000 */   sw        $t9, 0x0($v0)
  jlabel .L801688CC_ovl3
    /* C930C 801688CC 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C9310 801688D0 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C9314 801688D4 8E020000 */  lw         $v0, 0x0($s0)
    /* C9318 801688D8 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C931C 801688DC 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C9320 801688E0 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9324 801688E4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9328 801688E8 3C18800E */  lui        $t8, %hi(gSegment4StartArray)
    /* C932C 801688EC 0306C021 */  addu       $t8, $t8, $a2
    /* C9330 801688F0 AC480000 */  sw         $t0, 0x0($v0)
    /* C9334 801688F4 8F18F4D0 */  lw         $t8, %lo(gSegment4StartArray)($t8)
    /* C9338 801688F8 3C19800E */  lui        $t9, %hi(D_800E0650)
    /* C933C 801688FC 0326C821 */  addu       $t9, $t9, $a2
    /* C9340 80168900 AC580004 */  sw         $t8, 0x4($v0)
    /* C9344 80168904 8F390650 */  lw         $t9, %lo(D_800E0650)($t9)
    /* C9348 80168908 1320002E */  beqz       $t9, .L801689C4_ovl3
    /* C934C 8016890C 3C0E800E */   lui       $t6, %hi(D_800E5F90)
    /* C9350 80168910 01C67021 */  addu       $t6, $t6, $a2
    /* C9354 80168914 8DCE5F90 */  lw         $t6, %lo(D_800E5F90)($t6)
    /* C9358 80168918 2401FFFF */  addiu      $at, $zero, -0x1
    /* C935C 8016891C 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9360 80168920 15C1000A */  bne        $t6, $at, .L8016894C_ovl3
    /* C9364 80168924 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C9368 80168928 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C936C 8016892C 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C9370 80168930 00862021 */  addu       $a0, $a0, $a2
    /* C9374 80168934 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C9378 80168938 8E25000C */  lw         $a1, 0xC($s1)
    /* C937C 8016893C 0C03E430 */  jal        func_800F90C0
    /* C9380 80168940 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C9384 80168944 10000005 */  b          .L8016895C_ovl3
    /* C9388 80168948 8E020000 */   lw        $v0, 0x0($s0)
  .L8016894C_ovl3:
    /* C938C 8016894C 8FA40164 */  lw         $a0, 0x164($sp)
    /* C9390 80168950 0C03E430 */  jal        func_800F90C0
    /* C9394 80168954 8E25000C */   lw        $a1, 0xC($s1)
    /* C9398 80168958 8E020000 */  lw         $v0, 0x0($s0)
  .L8016895C_ovl3:
    /* C939C 8016895C 3C18DB02 */  lui        $t8, (0xDB020000 >> 16)
    /* C93A0 80168960 24190018 */  addiu      $t9, $zero, 0x18
    /* C93A4 80168964 244F0008 */  addiu      $t7, $v0, 0x8
    /* C93A8 80168968 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C93AC 8016896C AC590004 */  sw         $t9, 0x4($v0)
    /* C93B0 80168970 AC580000 */  sw         $t8, 0x0($v0)
    /* C93B4 80168974 8E020000 */  lw         $v0, 0x0($s0)
    /* C93B8 80168978 3C0FDC08 */  lui        $t7, (0xDC08060A >> 16)
    /* C93BC 8016897C 35EF060A */  ori        $t7, $t7, (0xDC08060A & 0xFFFF)
    /* C93C0 80168980 244E0008 */  addiu      $t6, $v0, 0x8
    /* C93C4 80168984 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C93C8 80168988 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C93CC 8016898C 8E38000C */  lw         $t8, 0xC($s1)
    /* C93D0 80168990 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* C93D4 80168994 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* C93D8 80168998 27190008 */  addiu      $t9, $t8, 0x8
    /* C93DC 8016899C AC590004 */  sw         $t9, 0x4($v0)
    /* C93E0 801689A0 8E020000 */  lw         $v0, 0x0($s0)
    /* C93E4 801689A4 244E0008 */  addiu      $t6, $v0, 0x8
    /* C93E8 801689A8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C93EC 801689AC AC4F0000 */  sw         $t7, 0x0($v0)
    /* C93F0 801689B0 8E38000C */  lw         $t8, 0xC($s1)
    /* C93F4 801689B4 AC580004 */  sw         $t8, 0x4($v0)
    /* C93F8 801689B8 8E39000C */  lw         $t9, 0xC($s1)
    /* C93FC 801689BC 272E0018 */  addiu      $t6, $t9, 0x18
    /* C9400 801689C0 AE2E000C */  sw         $t6, 0xC($s1)
  .L801689C4_ovl3:
    /* C9404 801689C4 0C0050E9 */  jal        renderDrawDObjFromGObj
    /* C9408 801689C8 8FA40168 */   lw        $a0, 0x168($sp)
    /* C940C 801689CC 8E020000 */  lw         $v0, 0x0($s0)
    /* C9410 801689D0 3C18DB02 */  lui        $t8, (0xDB020000 >> 16)
    /* C9414 801689D4 24190018 */  addiu      $t9, $zero, 0x18
    /* C9418 801689D8 244F0008 */  addiu      $t7, $v0, 0x8
    /* C941C 801689DC AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9420 801689E0 AC590004 */  sw         $t9, 0x4($v0)
    /* C9424 801689E4 AC580000 */  sw         $t8, 0x0($v0)
    /* C9428 801689E8 8E020000 */  lw         $v0, 0x0($s0)
    /* C942C 801689EC 3C18800C */  lui        $t8, %hi(D_800BE550)
    /* C9430 801689F0 3C0FDC08 */  lui        $t7, (0xDC08060A >> 16)
    /* C9434 801689F4 244E0008 */  addiu      $t6, $v0, 0x8
    /* C9438 801689F8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C943C 801689FC 35EF060A */  ori        $t7, $t7, (0xDC08060A & 0xFFFF)
    /* C9440 80168A00 2718E550 */  addiu      $t8, $t8, %lo(D_800BE550)
    /* C9444 80168A04 AC580004 */  sw         $t8, 0x4($v0)
    /* C9448 80168A08 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C944C 80168A0C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9450 80168A10 3C0F800C */  lui        $t7, %hi(D_800BE548)
    /* C9454 80168A14 3C0EDC08 */  lui        $t6, (0xDC08090A >> 16)
    /* C9458 80168A18 24590008 */  addiu      $t9, $v0, 0x8
    /* C945C 80168A1C AE190000 */  sw         $t9, 0x0($s0)
    /* C9460 80168A20 35CE090A */  ori        $t6, $t6, (0xDC08090A & 0xFFFF)
    /* C9464 80168A24 25EFE548 */  addiu      $t7, $t7, %lo(D_800BE548)
    /* C9468 80168A28 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C946C 80168A2C 10000260 */  b          .L801693B0_ovl3
    /* C9470 80168A30 AC4E0000 */   sw        $t6, 0x0($v0)
  jlabel .L80168A34_ovl3
    /* C9474 80168A34 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C9478 80168A38 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C947C 80168A3C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9480 80168A40 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C9484 80168A44 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C9488 80168A48 24580008 */  addiu      $t8, $v0, 0x8
    /* C948C 80168A4C AE180000 */  sw         $t8, 0x0($s0)
    /* C9490 80168A50 3C19800E */  lui        $t9, %hi(gSegment4StartArray)
    /* C9494 80168A54 0326C821 */  addu       $t9, $t9, $a2
    /* C9498 80168A58 AC480000 */  sw         $t0, 0x0($v0)
    /* C949C 80168A5C 8F39F4D0 */  lw         $t9, %lo(gSegment4StartArray)($t9)
    /* C94A0 80168A60 3C0E800E */  lui        $t6, %hi(D_800E0650)
    /* C94A4 80168A64 01C67021 */  addu       $t6, $t6, $a2
    /* C94A8 80168A68 AC590004 */  sw         $t9, 0x4($v0)
    /* C94AC 80168A6C 8DCE0650 */  lw         $t6, %lo(D_800E0650)($t6)
    /* C94B0 80168A70 11C0002E */  beqz       $t6, .L80168B2C_ovl3
    /* C94B4 80168A74 3C0F800E */   lui       $t7, %hi(D_800E5F90)
    /* C94B8 80168A78 01E67821 */  addu       $t7, $t7, $a2
    /* C94BC 80168A7C 8DEF5F90 */  lw         $t7, %lo(D_800E5F90)($t7)
    /* C94C0 80168A80 2401FFFF */  addiu      $at, $zero, -0x1
    /* C94C4 80168A84 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C94C8 80168A88 15E1000A */  bne        $t7, $at, .L80168AB4_ovl3
    /* C94CC 80168A8C 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C94D0 80168A90 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C94D4 80168A94 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C94D8 80168A98 00862021 */  addu       $a0, $a0, $a2
    /* C94DC 80168A9C 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C94E0 80168AA0 8E25000C */  lw         $a1, 0xC($s1)
    /* C94E4 80168AA4 0C03E430 */  jal        func_800F90C0
    /* C94E8 80168AA8 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C94EC 80168AAC 10000005 */  b          .L80168AC4_ovl3
    /* C94F0 80168AB0 8E020000 */   lw        $v0, 0x0($s0)
  .L80168AB4_ovl3:
    /* C94F4 80168AB4 8FA40164 */  lw         $a0, 0x164($sp)
    /* C94F8 80168AB8 0C03E430 */  jal        func_800F90C0
    /* C94FC 80168ABC 8E25000C */   lw        $a1, 0xC($s1)
    /* C9500 80168AC0 8E020000 */  lw         $v0, 0x0($s0)
  .L80168AC4_ovl3:
    /* C9504 80168AC4 3C19DB02 */  lui        $t9, (0xDB020000 >> 16)
    /* C9508 80168AC8 240E0018 */  addiu      $t6, $zero, 0x18
    /* C950C 80168ACC 24580008 */  addiu      $t8, $v0, 0x8
    /* C9510 80168AD0 AE180000 */  sw         $t8, 0x0($s0)
    /* C9514 80168AD4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9518 80168AD8 AC590000 */  sw         $t9, 0x0($v0)
    /* C951C 80168ADC 8E020000 */  lw         $v0, 0x0($s0)
    /* C9520 80168AE0 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
    /* C9524 80168AE4 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
    /* C9528 80168AE8 244F0008 */  addiu      $t7, $v0, 0x8
    /* C952C 80168AEC AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9530 80168AF0 AC580000 */  sw         $t8, 0x0($v0)
    /* C9534 80168AF4 8E39000C */  lw         $t9, 0xC($s1)
    /* C9538 80168AF8 3C18DC08 */  lui        $t8, (0xDC08090A >> 16)
    /* C953C 80168AFC 3718090A */  ori        $t8, $t8, (0xDC08090A & 0xFFFF)
    /* C9540 80168B00 272E0008 */  addiu      $t6, $t9, 0x8
    /* C9544 80168B04 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9548 80168B08 8E020000 */  lw         $v0, 0x0($s0)
    /* C954C 80168B0C 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9550 80168B10 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9554 80168B14 AC580000 */  sw         $t8, 0x0($v0)
    /* C9558 80168B18 8E39000C */  lw         $t9, 0xC($s1)
    /* C955C 80168B1C AC590004 */  sw         $t9, 0x4($v0)
    /* C9560 80168B20 8E2E000C */  lw         $t6, 0xC($s1)
    /* C9564 80168B24 25CF0018 */  addiu      $t7, $t6, 0x18
    /* C9568 80168B28 AE2F000C */  sw         $t7, 0xC($s1)
  .L80168B2C_ovl3:
    /* C956C 80168B2C 0C005617 */  jal        func_8001585C
    /* C9570 80168B30 8FA40168 */   lw        $a0, 0x168($sp)
    /* C9574 80168B34 8E020000 */  lw         $v0, 0x0($s0)
    /* C9578 80168B38 3C19DB02 */  lui        $t9, (0xDB020000 >> 16)
    /* C957C 80168B3C 240E0018 */  addiu      $t6, $zero, 0x18
    /* C9580 80168B40 24580008 */  addiu      $t8, $v0, 0x8
    /* C9584 80168B44 AE180000 */  sw         $t8, 0x0($s0)
    /* C9588 80168B48 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C958C 80168B4C AC590000 */  sw         $t9, 0x0($v0)
    /* C9590 80168B50 8E020000 */  lw         $v0, 0x0($s0)
    /* C9594 80168B54 3C19800C */  lui        $t9, %hi(D_800BE550)
    /* C9598 80168B58 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
    /* C959C 80168B5C 244F0008 */  addiu      $t7, $v0, 0x8
    /* C95A0 80168B60 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C95A4 80168B64 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
    /* C95A8 80168B68 2739E550 */  addiu      $t9, $t9, %lo(D_800BE550)
    /* C95AC 80168B6C AC590004 */  sw         $t9, 0x4($v0)
    /* C95B0 80168B70 AC580000 */  sw         $t8, 0x0($v0)
    /* C95B4 80168B74 8E020000 */  lw         $v0, 0x0($s0)
    /* C95B8 80168B78 3C18800C */  lui        $t8, %hi(D_800BE548)
    /* C95BC 80168B7C 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* C95C0 80168B80 244E0008 */  addiu      $t6, $v0, 0x8
    /* C95C4 80168B84 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C95C8 80168B88 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* C95CC 80168B8C 2718E548 */  addiu      $t8, $t8, %lo(D_800BE548)
    /* C95D0 80168B90 AC580004 */  sw         $t8, 0x4($v0)
    /* C95D4 80168B94 10000206 */  b          .L801693B0_ovl3
    /* C95D8 80168B98 AC4F0000 */   sw        $t7, 0x0($v0)
  jlabel .L80168B9C_ovl3
    /* C95DC 80168B9C 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C95E0 80168BA0 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C95E4 80168BA4 8E020000 */  lw         $v0, 0x0($s0)
    /* C95E8 80168BA8 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C95EC 80168BAC 3C0E800E */  lui        $t6, %hi(gSegment4StartArray)
    /* C95F0 80168BB0 24590008 */  addiu      $t9, $v0, 0x8
    /* C95F4 80168BB4 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C95F8 80168BB8 AE190000 */  sw         $t9, 0x0($s0)
    /* C95FC 80168BBC 25CEF4D0 */  addiu      $t6, $t6, %lo(gSegment4StartArray)
    /* C9600 80168BC0 00CE2021 */  addu       $a0, $a2, $t6
    /* C9604 80168BC4 AC480000 */  sw         $t0, 0x0($v0)
    /* C9608 80168BC8 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C960C 80168BCC 3C0E800E */  lui        $t6, %hi(D_800E0650)
    /* C9610 80168BD0 01C67021 */  addu       $t6, $t6, $a2
    /* C9614 80168BD4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9618 80168BD8 8E030004 */  lw         $v1, 0x4($s0)
    /* C961C 80168BDC 3C0F800E */  lui        $t7, %hi(D_800E5F90)
    /* C9620 80168BE0 01E67821 */  addu       $t7, $t7, $a2
    /* C9624 80168BE4 24780008 */  addiu      $t8, $v1, 0x8
    /* C9628 80168BE8 AE180004 */  sw         $t8, 0x4($s0)
    /* C962C 80168BEC AC680000 */  sw         $t0, 0x0($v1)
    /* C9630 80168BF0 8C990000 */  lw         $t9, 0x0($a0)
    /* C9634 80168BF4 AC790004 */  sw         $t9, 0x4($v1)
    /* C9638 80168BF8 8DCE0650 */  lw         $t6, %lo(D_800E0650)($t6)
    /* C963C 80168BFC 11C0003E */  beqz       $t6, .L80168CF8_ovl3
    /* C9640 80168C00 00000000 */   nop
    /* C9644 80168C04 8DEF5F90 */  lw         $t7, %lo(D_800E5F90)($t7)
    /* C9648 80168C08 2401FFFF */  addiu      $at, $zero, -0x1
    /* C964C 80168C0C 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9650 80168C10 15E1000A */  bne        $t7, $at, .L80168C3C_ovl3
    /* C9654 80168C14 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C9658 80168C18 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C965C 80168C1C 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C9660 80168C20 00862021 */  addu       $a0, $a0, $a2
    /* C9664 80168C24 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C9668 80168C28 8E25000C */  lw         $a1, 0xC($s1)
    /* C966C 80168C2C 0C03E430 */  jal        func_800F90C0
    /* C9670 80168C30 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C9674 80168C34 10000005 */  b          .L80168C4C_ovl3
    /* C9678 80168C38 8E020000 */   lw        $v0, 0x0($s0)
  .L80168C3C_ovl3:
    /* C967C 80168C3C 8FA40164 */  lw         $a0, 0x164($sp)
    /* C9680 80168C40 0C03E430 */  jal        func_800F90C0
    /* C9684 80168C44 8E25000C */   lw        $a1, 0xC($s1)
    /* C9688 80168C48 8E020000 */  lw         $v0, 0x0($s0)
  .L80168C4C_ovl3:
    /* C968C 80168C4C 3C19DB02 */  lui        $t9, (0xDB020000 >> 16)
    /* C9690 80168C50 240E0018 */  addiu      $t6, $zero, 0x18
    /* C9694 80168C54 24580008 */  addiu      $t8, $v0, 0x8
    /* C9698 80168C58 AE180000 */  sw         $t8, 0x0($s0)
    /* C969C 80168C5C AC4E0004 */  sw         $t6, 0x4($v0)
    /* C96A0 80168C60 AC590000 */  sw         $t9, 0x0($v0)
    /* C96A4 80168C64 8E020000 */  lw         $v0, 0x0($s0)
    /* C96A8 80168C68 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
    /* C96AC 80168C6C 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
    /* C96B0 80168C70 244F0008 */  addiu      $t7, $v0, 0x8
    /* C96B4 80168C74 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C96B8 80168C78 AC580000 */  sw         $t8, 0x0($v0)
    /* C96BC 80168C7C 8E39000C */  lw         $t9, 0xC($s1)
    /* C96C0 80168C80 3C18DC08 */  lui        $t8, (0xDC08090A >> 16)
    /* C96C4 80168C84 3718090A */  ori        $t8, $t8, (0xDC08090A & 0xFFFF)
    /* C96C8 80168C88 272E0008 */  addiu      $t6, $t9, 0x8
    /* C96CC 80168C8C AC4E0004 */  sw         $t6, 0x4($v0)
    /* C96D0 80168C90 8E020000 */  lw         $v0, 0x0($s0)
    /* C96D4 80168C94 244F0008 */  addiu      $t7, $v0, 0x8
    /* C96D8 80168C98 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C96DC 80168C9C AC580000 */  sw         $t8, 0x0($v0)
    /* C96E0 80168CA0 8E39000C */  lw         $t9, 0xC($s1)
    /* C96E4 80168CA4 3C0FDC08 */  lui        $t7, (0xDC08060A >> 16)
    /* C96E8 80168CA8 35EF060A */  ori        $t7, $t7, (0xDC08060A & 0xFFFF)
    /* C96EC 80168CAC AC590004 */  sw         $t9, 0x4($v0)
    /* C96F0 80168CB0 8E030004 */  lw         $v1, 0x4($s0)
    /* C96F4 80168CB4 246E0008 */  addiu      $t6, $v1, 0x8
    /* C96F8 80168CB8 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C96FC 80168CBC AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9700 80168CC0 8E38000C */  lw         $t8, 0xC($s1)
    /* C9704 80168CC4 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* C9708 80168CC8 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* C970C 80168CCC 27190008 */  addiu      $t9, $t8, 0x8
    /* C9710 80168CD0 AC790004 */  sw         $t9, 0x4($v1)
    /* C9714 80168CD4 8E030004 */  lw         $v1, 0x4($s0)
    /* C9718 80168CD8 246E0008 */  addiu      $t6, $v1, 0x8
    /* C971C 80168CDC AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9720 80168CE0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9724 80168CE4 8E38000C */  lw         $t8, 0xC($s1)
    /* C9728 80168CE8 AC780004 */  sw         $t8, 0x4($v1)
    /* C972C 80168CEC 8E39000C */  lw         $t9, 0xC($s1)
    /* C9730 80168CF0 272E0018 */  addiu      $t6, $t9, 0x18
    /* C9734 80168CF4 AE2E000C */  sw         $t6, 0xC($s1)
  .L80168CF8_ovl3:
    /* C9738 80168CF8 0C02AC5D */  jal        func_800AB174
    /* C973C 80168CFC 8FA40168 */   lw        $a0, 0x168($sp)
    /* C9740 80168D00 8E020000 */  lw         $v0, 0x0($s0)
    /* C9744 80168D04 3C1FDB02 */  lui        $ra, (0xDB020000 >> 16)
    /* C9748 80168D08 24110018 */  addiu      $s1, $zero, 0x18
    /* C974C 80168D0C 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9750 80168D10 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9754 80168D14 AC510004 */  sw         $s1, 0x4($v0)
    /* C9758 80168D18 AC5F0000 */  sw         $ra, 0x0($v0)
    /* C975C 80168D1C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9760 80168D20 3C0CDC08 */  lui        $t4, (0xDC08060A >> 16)
    /* C9764 80168D24 3C04800C */  lui        $a0, %hi(D_800BE550)
    /* C9768 80168D28 24580008 */  addiu      $t8, $v0, 0x8
    /* C976C 80168D2C AE180000 */  sw         $t8, 0x0($s0)
    /* C9770 80168D30 358C060A */  ori        $t4, $t4, (0xDC08060A & 0xFFFF)
    /* C9774 80168D34 2484E550 */  addiu      $a0, $a0, %lo(D_800BE550)
    /* C9778 80168D38 AC440004 */  sw         $a0, 0x4($v0)
    /* C977C 80168D3C AC4C0000 */  sw         $t4, 0x0($v0)
    /* C9780 80168D40 8E020000 */  lw         $v0, 0x0($s0)
    /* C9784 80168D44 3C0DDC08 */  lui        $t5, (0xDC08090A >> 16)
    /* C9788 80168D48 3C05800C */  lui        $a1, %hi(D_800BE548)
    /* C978C 80168D4C 24590008 */  addiu      $t9, $v0, 0x8
    /* C9790 80168D50 AE190000 */  sw         $t9, 0x0($s0)
    /* C9794 80168D54 35AD090A */  ori        $t5, $t5, (0xDC08090A & 0xFFFF)
    /* C9798 80168D58 24A5E548 */  addiu      $a1, $a1, %lo(D_800BE548)
    /* C979C 80168D5C AC450004 */  sw         $a1, 0x4($v0)
    /* C97A0 80168D60 AC4D0000 */  sw         $t5, 0x0($v0)
    /* C97A4 80168D64 8E030004 */  lw         $v1, 0x4($s0)
    /* C97A8 80168D68 246E0008 */  addiu      $t6, $v1, 0x8
    /* C97AC 80168D6C AE0E0004 */  sw         $t6, 0x4($s0)
    /* C97B0 80168D70 AC710004 */  sw         $s1, 0x4($v1)
    /* C97B4 80168D74 AC7F0000 */  sw         $ra, 0x0($v1)
    /* C97B8 80168D78 8E030004 */  lw         $v1, 0x4($s0)
    /* C97BC 80168D7C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C97C0 80168D80 AE0F0004 */  sw         $t7, 0x4($s0)
    /* C97C4 80168D84 AC640004 */  sw         $a0, 0x4($v1)
    /* C97C8 80168D88 AC6C0000 */  sw         $t4, 0x0($v1)
    /* C97CC 80168D8C 8E030004 */  lw         $v1, 0x4($s0)
    /* C97D0 80168D90 24780008 */  addiu      $t8, $v1, 0x8
    /* C97D4 80168D94 AE180004 */  sw         $t8, 0x4($s0)
    /* C97D8 80168D98 AC650004 */  sw         $a1, 0x4($v1)
    /* C97DC 80168D9C 10000184 */  b          .L801693B0_ovl3
    /* C97E0 80168DA0 AC6D0000 */   sw        $t5, 0x0($v1)
  jlabel .L80168DA4_ovl3
    /* C97E4 80168DA4 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C97E8 80168DA8 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C97EC 80168DAC 8E020000 */  lw         $v0, 0x0($s0)
    /* C97F0 80168DB0 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C97F4 80168DB4 3C0E800E */  lui        $t6, %hi(gSegment4StartArray)
    /* C97F8 80168DB8 24590008 */  addiu      $t9, $v0, 0x8
    /* C97FC 80168DBC 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C9800 80168DC0 AE190000 */  sw         $t9, 0x0($s0)
    /* C9804 80168DC4 25CEF4D0 */  addiu      $t6, $t6, %lo(gSegment4StartArray)
    /* C9808 80168DC8 00CE2021 */  addu       $a0, $a2, $t6
    /* C980C 80168DCC AC480000 */  sw         $t0, 0x0($v0)
    /* C9810 80168DD0 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C9814 80168DD4 3C0E800E */  lui        $t6, %hi(D_800E0650)
    /* C9818 80168DD8 01C67021 */  addu       $t6, $t6, $a2
    /* C981C 80168DDC AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9820 80168DE0 8E030004 */  lw         $v1, 0x4($s0)
    /* C9824 80168DE4 3C0F800E */  lui        $t7, %hi(D_800E5F90)
    /* C9828 80168DE8 01E67821 */  addu       $t7, $t7, $a2
    /* C982C 80168DEC 24780008 */  addiu      $t8, $v1, 0x8
    /* C9830 80168DF0 AE180004 */  sw         $t8, 0x4($s0)
    /* C9834 80168DF4 AC680000 */  sw         $t0, 0x0($v1)
    /* C9838 80168DF8 8C990000 */  lw         $t9, 0x0($a0)
    /* C983C 80168DFC AC790004 */  sw         $t9, 0x4($v1)
    /* C9840 80168E00 8DCE0650 */  lw         $t6, %lo(D_800E0650)($t6)
    /* C9844 80168E04 11C0003E */  beqz       $t6, .L80168F00_ovl3
    /* C9848 80168E08 00000000 */   nop
    /* C984C 80168E0C 8DEF5F90 */  lw         $t7, %lo(D_800E5F90)($t7)
    /* C9850 80168E10 2401FFFF */  addiu      $at, $zero, -0x1
    /* C9854 80168E14 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9858 80168E18 15E1000A */  bne        $t7, $at, .L80168E44_ovl3
    /* C985C 80168E1C 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C9860 80168E20 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9864 80168E24 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C9868 80168E28 00862021 */  addu       $a0, $a0, $a2
    /* C986C 80168E2C 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C9870 80168E30 8E25000C */  lw         $a1, 0xC($s1)
    /* C9874 80168E34 0C03E430 */  jal        func_800F90C0
    /* C9878 80168E38 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C987C 80168E3C 10000005 */  b          .L80168E54_ovl3
    /* C9880 80168E40 8E020000 */   lw        $v0, 0x0($s0)
  .L80168E44_ovl3:
    /* C9884 80168E44 8FA40164 */  lw         $a0, 0x164($sp)
    /* C9888 80168E48 0C03E430 */  jal        func_800F90C0
    /* C988C 80168E4C 8E25000C */   lw        $a1, 0xC($s1)
    /* C9890 80168E50 8E020000 */  lw         $v0, 0x0($s0)
  .L80168E54_ovl3:
    /* C9894 80168E54 3C19DB02 */  lui        $t9, (0xDB020000 >> 16)
    /* C9898 80168E58 240E0018 */  addiu      $t6, $zero, 0x18
    /* C989C 80168E5C 24580008 */  addiu      $t8, $v0, 0x8
    /* C98A0 80168E60 AE180000 */  sw         $t8, 0x0($s0)
    /* C98A4 80168E64 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C98A8 80168E68 AC590000 */  sw         $t9, 0x0($v0)
    /* C98AC 80168E6C 8E020000 */  lw         $v0, 0x0($s0)
    /* C98B0 80168E70 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
    /* C98B4 80168E74 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
    /* C98B8 80168E78 244F0008 */  addiu      $t7, $v0, 0x8
    /* C98BC 80168E7C AE0F0000 */  sw         $t7, 0x0($s0)
    /* C98C0 80168E80 AC580000 */  sw         $t8, 0x0($v0)
    /* C98C4 80168E84 8E39000C */  lw         $t9, 0xC($s1)
    /* C98C8 80168E88 3C18DC08 */  lui        $t8, (0xDC08090A >> 16)
    /* C98CC 80168E8C 3718090A */  ori        $t8, $t8, (0xDC08090A & 0xFFFF)
    /* C98D0 80168E90 272E0008 */  addiu      $t6, $t9, 0x8
    /* C98D4 80168E94 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C98D8 80168E98 8E020000 */  lw         $v0, 0x0($s0)
    /* C98DC 80168E9C 244F0008 */  addiu      $t7, $v0, 0x8
    /* C98E0 80168EA0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C98E4 80168EA4 AC580000 */  sw         $t8, 0x0($v0)
    /* C98E8 80168EA8 8E39000C */  lw         $t9, 0xC($s1)
    /* C98EC 80168EAC 3C0FDC08 */  lui        $t7, (0xDC08060A >> 16)
    /* C98F0 80168EB0 35EF060A */  ori        $t7, $t7, (0xDC08060A & 0xFFFF)
    /* C98F4 80168EB4 AC590004 */  sw         $t9, 0x4($v0)
    /* C98F8 80168EB8 8E030004 */  lw         $v1, 0x4($s0)
    /* C98FC 80168EBC 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9900 80168EC0 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9904 80168EC4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9908 80168EC8 8E38000C */  lw         $t8, 0xC($s1)
    /* C990C 80168ECC 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* C9910 80168ED0 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* C9914 80168ED4 27190008 */  addiu      $t9, $t8, 0x8
    /* C9918 80168ED8 AC790004 */  sw         $t9, 0x4($v1)
    /* C991C 80168EDC 8E030004 */  lw         $v1, 0x4($s0)
    /* C9920 80168EE0 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9924 80168EE4 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9928 80168EE8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C992C 80168EEC 8E38000C */  lw         $t8, 0xC($s1)
    /* C9930 80168EF0 AC780004 */  sw         $t8, 0x4($v1)
    /* C9934 80168EF4 8E39000C */  lw         $t9, 0xC($s1)
    /* C9938 80168EF8 272E0018 */  addiu      $t6, $t9, 0x18
    /* C993C 80168EFC AE2E000C */  sw         $t6, 0xC($s1)
  .L80168F00_ovl3:
    /* C9940 80168F00 0C02AC91 */  jal        func_800AB244
    /* C9944 80168F04 8FA40168 */   lw        $a0, 0x168($sp)
    /* C9948 80168F08 8E020000 */  lw         $v0, 0x0($s0)
    /* C994C 80168F0C 3C1FDB02 */  lui        $ra, (0xDB020000 >> 16)
    /* C9950 80168F10 24110018 */  addiu      $s1, $zero, 0x18
    /* C9954 80168F14 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9958 80168F18 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C995C 80168F1C AC510004 */  sw         $s1, 0x4($v0)
    /* C9960 80168F20 AC5F0000 */  sw         $ra, 0x0($v0)
    /* C9964 80168F24 8E020000 */  lw         $v0, 0x0($s0)
    /* C9968 80168F28 3C0CDC08 */  lui        $t4, (0xDC08060A >> 16)
    /* C996C 80168F2C 3C04800C */  lui        $a0, %hi(D_800BE550)
    /* C9970 80168F30 24580008 */  addiu      $t8, $v0, 0x8
    /* C9974 80168F34 AE180000 */  sw         $t8, 0x0($s0)
    /* C9978 80168F38 358C060A */  ori        $t4, $t4, (0xDC08060A & 0xFFFF)
    /* C997C 80168F3C 2484E550 */  addiu      $a0, $a0, %lo(D_800BE550)
    /* C9980 80168F40 AC440004 */  sw         $a0, 0x4($v0)
    /* C9984 80168F44 AC4C0000 */  sw         $t4, 0x0($v0)
    /* C9988 80168F48 8E020000 */  lw         $v0, 0x0($s0)
    /* C998C 80168F4C 3C0DDC08 */  lui        $t5, (0xDC08090A >> 16)
    /* C9990 80168F50 3C05800C */  lui        $a1, %hi(D_800BE548)
    /* C9994 80168F54 24590008 */  addiu      $t9, $v0, 0x8
    /* C9998 80168F58 AE190000 */  sw         $t9, 0x0($s0)
    /* C999C 80168F5C 35AD090A */  ori        $t5, $t5, (0xDC08090A & 0xFFFF)
    /* C99A0 80168F60 24A5E548 */  addiu      $a1, $a1, %lo(D_800BE548)
    /* C99A4 80168F64 AC450004 */  sw         $a1, 0x4($v0)
    /* C99A8 80168F68 AC4D0000 */  sw         $t5, 0x0($v0)
    /* C99AC 80168F6C 8E030004 */  lw         $v1, 0x4($s0)
    /* C99B0 80168F70 246E0008 */  addiu      $t6, $v1, 0x8
    /* C99B4 80168F74 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C99B8 80168F78 AC710004 */  sw         $s1, 0x4($v1)
    /* C99BC 80168F7C AC7F0000 */  sw         $ra, 0x0($v1)
    /* C99C0 80168F80 8E030004 */  lw         $v1, 0x4($s0)
    /* C99C4 80168F84 246F0008 */  addiu      $t7, $v1, 0x8
    /* C99C8 80168F88 AE0F0004 */  sw         $t7, 0x4($s0)
    /* C99CC 80168F8C AC640004 */  sw         $a0, 0x4($v1)
    /* C99D0 80168F90 AC6C0000 */  sw         $t4, 0x0($v1)
    /* C99D4 80168F94 8E030004 */  lw         $v1, 0x4($s0)
    /* C99D8 80168F98 24780008 */  addiu      $t8, $v1, 0x8
    /* C99DC 80168F9C AE180004 */  sw         $t8, 0x4($s0)
    /* C99E0 80168FA0 AC650004 */  sw         $a1, 0x4($v1)
    /* C99E4 80168FA4 10000102 */  b          .L801693B0_ovl3
    /* C99E8 80168FA8 AC6D0000 */   sw        $t5, 0x0($v1)
  jlabel .L80168FAC_ovl3
    /* C99EC 80168FAC 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C99F0 80168FB0 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C99F4 80168FB4 8E020000 */  lw         $v0, 0x0($s0)
    /* C99F8 80168FB8 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C99FC 80168FBC 3C0E800E */  lui        $t6, %hi(gSegment4StartArray)
    /* C9A00 80168FC0 24590008 */  addiu      $t9, $v0, 0x8
    /* C9A04 80168FC4 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C9A08 80168FC8 AE190000 */  sw         $t9, 0x0($s0)
    /* C9A0C 80168FCC 25CEF4D0 */  addiu      $t6, $t6, %lo(gSegment4StartArray)
    /* C9A10 80168FD0 00CE2021 */  addu       $a0, $a2, $t6
    /* C9A14 80168FD4 AC480000 */  sw         $t0, 0x0($v0)
    /* C9A18 80168FD8 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C9A1C 80168FDC 3C0E800E */  lui        $t6, %hi(D_800E0650)
    /* C9A20 80168FE0 01C67021 */  addu       $t6, $t6, $a2
    /* C9A24 80168FE4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9A28 80168FE8 8E030004 */  lw         $v1, 0x4($s0)
    /* C9A2C 80168FEC 24780008 */  addiu      $t8, $v1, 0x8
    /* C9A30 80168FF0 AE180004 */  sw         $t8, 0x4($s0)
    /* C9A34 80168FF4 AC680000 */  sw         $t0, 0x0($v1)
    /* C9A38 80168FF8 8C990000 */  lw         $t9, 0x0($a0)
    /* C9A3C 80168FFC AC790004 */  sw         $t9, 0x4($v1)
    /* C9A40 80169000 8DCE0650 */  lw         $t6, %lo(D_800E0650)($t6)
    /* C9A44 80169004 11C0003F */  beqz       $t6, .L80169104_ovl3
    /* C9A48 80169008 3C0F800E */   lui       $t7, %hi(D_800E5F90)
    /* C9A4C 8016900C 01E67821 */  addu       $t7, $t7, $a2
    /* C9A50 80169010 8DEF5F90 */  lw         $t7, %lo(D_800E5F90)($t7)
    /* C9A54 80169014 2401FFFF */  addiu      $at, $zero, -0x1
    /* C9A58 80169018 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9A5C 8016901C 15E1000A */  bne        $t7, $at, .L80169048_ovl3
    /* C9A60 80169020 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C9A64 80169024 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9A68 80169028 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C9A6C 8016902C 00862021 */  addu       $a0, $a0, $a2
    /* C9A70 80169030 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C9A74 80169034 8E25000C */  lw         $a1, 0xC($s1)
    /* C9A78 80169038 0C03E430 */  jal        func_800F90C0
    /* C9A7C 8016903C 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C9A80 80169040 10000005 */  b          .L80169058_ovl3
    /* C9A84 80169044 8E020000 */   lw        $v0, 0x0($s0)
  .L80169048_ovl3:
    /* C9A88 80169048 8FA40164 */  lw         $a0, 0x164($sp)
    /* C9A8C 8016904C 0C03E430 */  jal        func_800F90C0
    /* C9A90 80169050 8E25000C */   lw        $a1, 0xC($s1)
    /* C9A94 80169054 8E020000 */  lw         $v0, 0x0($s0)
  .L80169058_ovl3:
    /* C9A98 80169058 3C19DB02 */  lui        $t9, (0xDB020000 >> 16)
    /* C9A9C 8016905C 240E0018 */  addiu      $t6, $zero, 0x18
    /* C9AA0 80169060 24580008 */  addiu      $t8, $v0, 0x8
    /* C9AA4 80169064 AE180000 */  sw         $t8, 0x0($s0)
    /* C9AA8 80169068 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9AAC 8016906C AC590000 */  sw         $t9, 0x0($v0)
    /* C9AB0 80169070 8E020000 */  lw         $v0, 0x0($s0)
    /* C9AB4 80169074 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
    /* C9AB8 80169078 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
    /* C9ABC 8016907C 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9AC0 80169080 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9AC4 80169084 AC580000 */  sw         $t8, 0x0($v0)
    /* C9AC8 80169088 8E39000C */  lw         $t9, 0xC($s1)
    /* C9ACC 8016908C 3C18DC08 */  lui        $t8, (0xDC08090A >> 16)
    /* C9AD0 80169090 3718090A */  ori        $t8, $t8, (0xDC08090A & 0xFFFF)
    /* C9AD4 80169094 272E0008 */  addiu      $t6, $t9, 0x8
    /* C9AD8 80169098 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9ADC 8016909C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9AE0 801690A0 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9AE4 801690A4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9AE8 801690A8 AC580000 */  sw         $t8, 0x0($v0)
    /* C9AEC 801690AC 8E39000C */  lw         $t9, 0xC($s1)
    /* C9AF0 801690B0 3C0FDC08 */  lui        $t7, (0xDC08060A >> 16)
    /* C9AF4 801690B4 35EF060A */  ori        $t7, $t7, (0xDC08060A & 0xFFFF)
    /* C9AF8 801690B8 AC590004 */  sw         $t9, 0x4($v0)
    /* C9AFC 801690BC 8E030004 */  lw         $v1, 0x4($s0)
    /* C9B00 801690C0 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9B04 801690C4 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9B08 801690C8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9B0C 801690CC 8E38000C */  lw         $t8, 0xC($s1)
    /* C9B10 801690D0 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* C9B14 801690D4 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* C9B18 801690D8 27190008 */  addiu      $t9, $t8, 0x8
    /* C9B1C 801690DC AC790004 */  sw         $t9, 0x4($v1)
    /* C9B20 801690E0 8E030004 */  lw         $v1, 0x4($s0)
    /* C9B24 801690E4 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9B28 801690E8 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9B2C 801690EC AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9B30 801690F0 8E38000C */  lw         $t8, 0xC($s1)
    /* C9B34 801690F4 AC780004 */  sw         $t8, 0x4($v1)
    /* C9B38 801690F8 8E39000C */  lw         $t9, 0xC($s1)
    /* C9B3C 801690FC 272E0018 */  addiu      $t6, $t9, 0x18
    /* C9B40 80169100 AE2E000C */  sw         $t6, 0xC($s1)
  .L80169104_ovl3:
    /* C9B44 80169104 0C0052B5 */  jal        renderDrawObject_TypeD
    /* C9B48 80169108 8FA40168 */   lw        $a0, 0x168($sp)
    /* C9B4C 8016910C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9B50 80169110 3C1FDB02 */  lui        $ra, (0xDB020000 >> 16)
    /* C9B54 80169114 24110018 */  addiu      $s1, $zero, 0x18
    /* C9B58 80169118 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9B5C 8016911C AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9B60 80169120 AC510004 */  sw         $s1, 0x4($v0)
    /* C9B64 80169124 AC5F0000 */  sw         $ra, 0x0($v0)
    /* C9B68 80169128 8E020000 */  lw         $v0, 0x0($s0)
    /* C9B6C 8016912C 3C0CDC08 */  lui        $t4, (0xDC08060A >> 16)
    /* C9B70 80169130 3C04800C */  lui        $a0, %hi(D_800BE550)
    /* C9B74 80169134 24580008 */  addiu      $t8, $v0, 0x8
    /* C9B78 80169138 AE180000 */  sw         $t8, 0x0($s0)
    /* C9B7C 8016913C 358C060A */  ori        $t4, $t4, (0xDC08060A & 0xFFFF)
    /* C9B80 80169140 2484E550 */  addiu      $a0, $a0, %lo(D_800BE550)
    /* C9B84 80169144 AC440004 */  sw         $a0, 0x4($v0)
    /* C9B88 80169148 AC4C0000 */  sw         $t4, 0x0($v0)
    /* C9B8C 8016914C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9B90 80169150 3C0DDC08 */  lui        $t5, (0xDC08090A >> 16)
    /* C9B94 80169154 3C05800C */  lui        $a1, %hi(D_800BE548)
    /* C9B98 80169158 24590008 */  addiu      $t9, $v0, 0x8
    /* C9B9C 8016915C AE190000 */  sw         $t9, 0x0($s0)
    /* C9BA0 80169160 35AD090A */  ori        $t5, $t5, (0xDC08090A & 0xFFFF)
    /* C9BA4 80169164 24A5E548 */  addiu      $a1, $a1, %lo(D_800BE548)
    /* C9BA8 80169168 AC450004 */  sw         $a1, 0x4($v0)
    /* C9BAC 8016916C AC4D0000 */  sw         $t5, 0x0($v0)
    /* C9BB0 80169170 8E030004 */  lw         $v1, 0x4($s0)
    /* C9BB4 80169174 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9BB8 80169178 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9BBC 8016917C AC710004 */  sw         $s1, 0x4($v1)
    /* C9BC0 80169180 AC7F0000 */  sw         $ra, 0x0($v1)
    /* C9BC4 80169184 8E030004 */  lw         $v1, 0x4($s0)
    /* C9BC8 80169188 246F0008 */  addiu      $t7, $v1, 0x8
    /* C9BCC 8016918C AE0F0004 */  sw         $t7, 0x4($s0)
    /* C9BD0 80169190 AC640004 */  sw         $a0, 0x4($v1)
    /* C9BD4 80169194 AC6C0000 */  sw         $t4, 0x0($v1)
    /* C9BD8 80169198 8E030004 */  lw         $v1, 0x4($s0)
    /* C9BDC 8016919C 24780008 */  addiu      $t8, $v1, 0x8
    /* C9BE0 801691A0 AE180004 */  sw         $t8, 0x4($s0)
    /* C9BE4 801691A4 AC650004 */  sw         $a1, 0x4($v1)
    /* C9BE8 801691A8 10000081 */  b          .L801693B0_ovl3
    /* C9BEC 801691AC AC6D0000 */   sw        $t5, 0x0($v1)
  jlabel .L801691B0_ovl3
    /* C9BF0 801691B0 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* C9BF4 801691B4 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* C9BF8 801691B8 8E020000 */  lw         $v0, 0x0($s0)
    /* C9BFC 801691BC 3C08DB06 */  lui        $t0, (0xDB060010 >> 16)
    /* C9C00 801691C0 3C0E800E */  lui        $t6, %hi(gSegment4StartArray)
    /* C9C04 801691C4 24590008 */  addiu      $t9, $v0, 0x8
    /* C9C08 801691C8 35080010 */  ori        $t0, $t0, (0xDB060010 & 0xFFFF)
    /* C9C0C 801691CC AE190000 */  sw         $t9, 0x0($s0)
    /* C9C10 801691D0 25CEF4D0 */  addiu      $t6, $t6, %lo(gSegment4StartArray)
    /* C9C14 801691D4 00CE2021 */  addu       $a0, $a2, $t6
    /* C9C18 801691D8 AC480000 */  sw         $t0, 0x0($v0)
    /* C9C1C 801691DC 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C9C20 801691E0 3C0E800E */  lui        $t6, %hi(D_800E0650)
    /* C9C24 801691E4 01C67021 */  addu       $t6, $t6, $a2
    /* C9C28 801691E8 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9C2C 801691EC 8E030004 */  lw         $v1, 0x4($s0)
    /* C9C30 801691F0 24780008 */  addiu      $t8, $v1, 0x8
    /* C9C34 801691F4 AE180004 */  sw         $t8, 0x4($s0)
    /* C9C38 801691F8 AC680000 */  sw         $t0, 0x0($v1)
    /* C9C3C 801691FC 8C990000 */  lw         $t9, 0x0($a0)
    /* C9C40 80169200 AC790004 */  sw         $t9, 0x4($v1)
    /* C9C44 80169204 8DCE0650 */  lw         $t6, %lo(D_800E0650)($t6)
    /* C9C48 80169208 11C0003F */  beqz       $t6, .L80169308_ovl3
    /* C9C4C 8016920C 3C0F800E */   lui       $t7, %hi(D_800E5F90)
    /* C9C50 80169210 01E67821 */  addu       $t7, $t7, $a2
    /* C9C54 80169214 8DEF5F90 */  lw         $t7, %lo(D_800E5F90)($t7)
    /* C9C58 80169218 2401FFFF */  addiu      $at, $zero, -0x1
    /* C9C5C 8016921C 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9C60 80169220 15E1000A */  bne        $t7, $at, .L8016924C_ovl3
    /* C9C64 80169224 2631A3F8 */   addiu     $s1, $s1, %lo(gDynamicBuffer1)
    /* C9C68 80169228 3C118005 */  lui        $s1, %hi(gDynamicBuffer1)
    /* C9C6C 8016922C 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C9C70 80169230 00862021 */  addu       $a0, $a0, $a2
    /* C9C74 80169234 2631A3F8 */  addiu      $s1, $s1, %lo(gDynamicBuffer1)
    /* C9C78 80169238 8E25000C */  lw         $a1, 0xC($s1)
    /* C9C7C 8016923C 0C03E430 */  jal        func_800F90C0
    /* C9C80 80169240 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
    /* C9C84 80169244 10000005 */  b          .L8016925C_ovl3
    /* C9C88 80169248 8E020000 */   lw        $v0, 0x0($s0)
  .L8016924C_ovl3:
    /* C9C8C 8016924C 8FA40164 */  lw         $a0, 0x164($sp)
    /* C9C90 80169250 0C03E430 */  jal        func_800F90C0
    /* C9C94 80169254 8E25000C */   lw        $a1, 0xC($s1)
    /* C9C98 80169258 8E020000 */  lw         $v0, 0x0($s0)
  .L8016925C_ovl3:
    /* C9C9C 8016925C 3C19DB02 */  lui        $t9, (0xDB020000 >> 16)
    /* C9CA0 80169260 240E0018 */  addiu      $t6, $zero, 0x18
    /* C9CA4 80169264 24580008 */  addiu      $t8, $v0, 0x8
    /* C9CA8 80169268 AE180000 */  sw         $t8, 0x0($s0)
    /* C9CAC 8016926C AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9CB0 80169270 AC590000 */  sw         $t9, 0x0($v0)
    /* C9CB4 80169274 8E020000 */  lw         $v0, 0x0($s0)
    /* C9CB8 80169278 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
    /* C9CBC 8016927C 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
    /* C9CC0 80169280 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9CC4 80169284 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9CC8 80169288 AC580000 */  sw         $t8, 0x0($v0)
    /* C9CCC 8016928C 8E39000C */  lw         $t9, 0xC($s1)
    /* C9CD0 80169290 3C18DC08 */  lui        $t8, (0xDC08090A >> 16)
    /* C9CD4 80169294 3718090A */  ori        $t8, $t8, (0xDC08090A & 0xFFFF)
    /* C9CD8 80169298 272E0008 */  addiu      $t6, $t9, 0x8
    /* C9CDC 8016929C AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9CE0 801692A0 8E020000 */  lw         $v0, 0x0($s0)
    /* C9CE4 801692A4 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9CE8 801692A8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9CEC 801692AC AC580000 */  sw         $t8, 0x0($v0)
    /* C9CF0 801692B0 8E39000C */  lw         $t9, 0xC($s1)
    /* C9CF4 801692B4 3C0FDC08 */  lui        $t7, (0xDC08060A >> 16)
    /* C9CF8 801692B8 35EF060A */  ori        $t7, $t7, (0xDC08060A & 0xFFFF)
    /* C9CFC 801692BC AC590004 */  sw         $t9, 0x4($v0)
    /* C9D00 801692C0 8E030004 */  lw         $v1, 0x4($s0)
    /* C9D04 801692C4 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9D08 801692C8 AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9D0C 801692CC AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9D10 801692D0 8E38000C */  lw         $t8, 0xC($s1)
    /* C9D14 801692D4 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* C9D18 801692D8 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* C9D1C 801692DC 27190008 */  addiu      $t9, $t8, 0x8
    /* C9D20 801692E0 AC790004 */  sw         $t9, 0x4($v1)
    /* C9D24 801692E4 8E030004 */  lw         $v1, 0x4($s0)
    /* C9D28 801692E8 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9D2C 801692EC AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9D30 801692F0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9D34 801692F4 8E38000C */  lw         $t8, 0xC($s1)
    /* C9D38 801692F8 AC780004 */  sw         $t8, 0x4($v1)
    /* C9D3C 801692FC 8E39000C */  lw         $t9, 0xC($s1)
    /* C9D40 80169300 272E0018 */  addiu      $t6, $t9, 0x18
    /* C9D44 80169304 AE2E000C */  sw         $t6, 0xC($s1)
  .L80169308_ovl3:
    /* C9D48 80169308 0C0056F3 */  jal        func_80015BCC
    /* C9D4C 8016930C 8FA40168 */   lw        $a0, 0x168($sp)
    /* C9D50 80169310 8E020000 */  lw         $v0, 0x0($s0)
    /* C9D54 80169314 3C1FDB02 */  lui        $ra, (0xDB020000 >> 16)
    /* C9D58 80169318 24110018 */  addiu      $s1, $zero, 0x18
    /* C9D5C 8016931C 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9D60 80169320 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9D64 80169324 AC510004 */  sw         $s1, 0x4($v0)
    /* C9D68 80169328 AC5F0000 */  sw         $ra, 0x0($v0)
    /* C9D6C 8016932C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9D70 80169330 3C0CDC08 */  lui        $t4, (0xDC08060A >> 16)
    /* C9D74 80169334 3C04800C */  lui        $a0, %hi(D_800BE550)
    /* C9D78 80169338 24580008 */  addiu      $t8, $v0, 0x8
    /* C9D7C 8016933C AE180000 */  sw         $t8, 0x0($s0)
    /* C9D80 80169340 358C060A */  ori        $t4, $t4, (0xDC08060A & 0xFFFF)
    /* C9D84 80169344 2484E550 */  addiu      $a0, $a0, %lo(D_800BE550)
    /* C9D88 80169348 AC440004 */  sw         $a0, 0x4($v0)
    /* C9D8C 8016934C AC4C0000 */  sw         $t4, 0x0($v0)
    /* C9D90 80169350 8E020000 */  lw         $v0, 0x0($s0)
    /* C9D94 80169354 3C0DDC08 */  lui        $t5, (0xDC08090A >> 16)
    /* C9D98 80169358 3C05800C */  lui        $a1, %hi(D_800BE548)
    /* C9D9C 8016935C 24590008 */  addiu      $t9, $v0, 0x8
    /* C9DA0 80169360 AE190000 */  sw         $t9, 0x0($s0)
    /* C9DA4 80169364 35AD090A */  ori        $t5, $t5, (0xDC08090A & 0xFFFF)
    /* C9DA8 80169368 24A5E548 */  addiu      $a1, $a1, %lo(D_800BE548)
    /* C9DAC 8016936C AC450004 */  sw         $a1, 0x4($v0)
    /* C9DB0 80169370 AC4D0000 */  sw         $t5, 0x0($v0)
    /* C9DB4 80169374 8E030004 */  lw         $v1, 0x4($s0)
    /* C9DB8 80169378 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9DBC 8016937C AE0E0004 */  sw         $t6, 0x4($s0)
    /* C9DC0 80169380 AC710004 */  sw         $s1, 0x4($v1)
    /* C9DC4 80169384 AC7F0000 */  sw         $ra, 0x0($v1)
    /* C9DC8 80169388 8E030004 */  lw         $v1, 0x4($s0)
    /* C9DCC 8016938C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C9DD0 80169390 AE0F0004 */  sw         $t7, 0x4($s0)
    /* C9DD4 80169394 AC640004 */  sw         $a0, 0x4($v1)
    /* C9DD8 80169398 AC6C0000 */  sw         $t4, 0x0($v1)
    /* C9DDC 8016939C 8E030004 */  lw         $v1, 0x4($s0)
    /* C9DE0 801693A0 24780008 */  addiu      $t8, $v1, 0x8
    /* C9DE4 801693A4 AE180004 */  sw         $t8, 0x4($s0)
    /* C9DE8 801693A8 AC650004 */  sw         $a1, 0x4($v1)
    /* C9DEC 801693AC AC6D0000 */  sw         $t5, 0x0($v1)
  .L801693B0_ovl3:
    /* C9DF0 801693B0 8FBF001C */  lw         $ra, 0x1C($sp)
  .L801693B4_ovl3:
    /* C9DF4 801693B4 8FB00014 */  lw         $s0, 0x14($sp)
    /* C9DF8 801693B8 8FB10018 */  lw         $s1, 0x18($sp)
    /* C9DFC 801693BC 03E00008 */  jr         $ra
    /* C9E00 801693C0 27BD0168 */   addiu     $sp, $sp, 0x168
endlabel func_8016858C_ovl3
.size func_8016858C_ovl3, . - func_8016858C_ovl3
