nonmatching func_80165504_ovl3, 0x2B8

glabel func_80165504_ovl3
    /* C5F44 80165504 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* C5F48 80165508 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C5F4C 8016550C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C5F50 80165510 AFBF003C */  sw         $ra, 0x3C($sp)
    /* C5F54 80165514 AFBE0038 */  sw         $fp, 0x38($sp)
    /* C5F58 80165518 AFB70034 */  sw         $s7, 0x34($sp)
    /* C5F5C 8016551C AFB60030 */  sw         $s6, 0x30($sp)
    /* C5F60 80165520 AFB5002C */  sw         $s5, 0x2C($sp)
    /* C5F64 80165524 AFB40028 */  sw         $s4, 0x28($sp)
    /* C5F68 80165528 AFB30024 */  sw         $s3, 0x24($sp)
    /* C5F6C 8016552C AFB20020 */  sw         $s2, 0x20($sp)
    /* C5F70 80165530 AFB1001C */  sw         $s1, 0x1C($sp)
    /* C5F74 80165534 AFB00018 */  sw         $s0, 0x18($sp)
    /* C5F78 80165538 AFA40040 */  sw         $a0, 0x40($sp)
    /* C5F7C 8016553C 8CEF0000 */  lw         $t7, 0x0($a3)
    /* C5F80 80165540 3C018019 */  lui        $at, %hi(D_80197178_ovl3)
    /* C5F84 80165544 C4207178 */  lwc1       $f0, %lo(D_80197178_ovl3)($at)
    /* C5F88 80165548 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* C5F8C 8016554C 3C0E800B */  lui        $t6, %hi(func_800B5064)
    /* C5F90 80165550 000FC080 */  sll        $t8, $t7, 2
    /* C5F94 80165554 00380821 */  addu       $at, $at, $t8
    /* C5F98 80165558 25CE5064 */  addiu      $t6, $t6, %lo(func_800B5064)
    /* C5F9C 8016555C AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
    /* C5FA0 80165560 8CE80000 */  lw         $t0, 0x0($a3)
    /* C5FA4 80165564 3C01800E */  lui        $at, %hi(D_800DF150)
    /* C5FA8 80165568 3C198016 */  lui        $t9, %hi(func_801657BC_ovl3)
    /* C5FAC 8016556C 00084880 */  sll        $t1, $t0, 2
    /* C5FB0 80165570 00290821 */  addu       $at, $at, $t1
    /* C5FB4 80165574 273957BC */  addiu      $t9, $t9, %lo(func_801657BC_ovl3)
    /* C5FB8 80165578 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
    /* C5FBC 8016557C 8CEA0000 */  lw         $t2, 0x0($a3)
    /* C5FC0 80165580 3C01800E */  lui        $at, %hi(D_800E0F10)
    /* C5FC4 80165584 24120001 */  addiu      $s2, $zero, 0x1
    /* C5FC8 80165588 000A5880 */  sll        $t3, $t2, 2
    /* C5FCC 8016558C 002B0821 */  addu       $at, $at, $t3
    /* C5FD0 80165590 AC320F10 */  sw         $s2, %lo(D_800E0F10)($at)
    /* C5FD4 80165594 8CEC0000 */  lw         $t4, 0x0($a3)
    /* C5FD8 80165598 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* C5FDC 8016559C 3C10800E */  lui        $s0, %hi(D_800E0D50)
    /* C5FE0 801655A0 000C6880 */  sll        $t5, $t4, 2
    /* C5FE4 801655A4 002D0821 */  addu       $at, $at, $t5
    /* C5FE8 801655A8 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* C5FEC 801655AC 8CEF0000 */  lw         $t7, 0x0($a3)
    /* C5FF0 801655B0 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* C5FF4 801655B4 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
    /* C5FF8 801655B8 000F7080 */  sll        $t6, $t7, 2
    /* C5FFC 801655BC 002E0821 */  addu       $at, $at, $t6
    /* C6000 801655C0 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* C6004 801655C4 8CF80000 */  lw         $t8, 0x0($a3)
    /* C6008 801655C8 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* C600C 801655CC 3C11800F */  lui        $s1, %hi(D_800E98E0)
    /* C6010 801655D0 00184080 */  sll        $t0, $t8, 2
    /* C6014 801655D4 00280821 */  addu       $at, $at, $t0
    /* C6018 801655D8 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
    /* C601C 801655DC 8CE30000 */  lw         $v1, 0x0($a3)
    /* C6020 801655E0 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
    /* C6024 801655E4 3C040002 */  lui        $a0, (0x20055 >> 16)
    /* C6028 801655E8 00031880 */  sll        $v1, $v1, 2
    /* C602C 801655EC 0203C821 */  addu       $t9, $s0, $v1
    /* C6030 801655F0 8F290000 */  lw         $t1, 0x0($t9)
    /* C6034 801655F4 02236821 */  addu       $t5, $s1, $v1
    /* C6038 801655F8 34840055 */  ori        $a0, $a0, (0x20055 & 0xFFFF)
    /* C603C 801655FC 00095080 */  sll        $t2, $t1, 2
    /* C6040 80165600 022A5821 */  addu       $t3, $s1, $t2
    /* C6044 80165604 8D6C0000 */  lw         $t4, 0x0($t3)
    /* C6048 80165608 24050022 */  addiu      $a1, $zero, 0x22
    /* C604C 8016560C 24060010 */  addiu      $a2, $zero, 0x10
    /* C6050 80165610 0C02A619 */  jal        func_800A9864
    /* C6054 80165614 ADAC0000 */   sw        $t4, 0x0($t5)
    /* C6058 80165618 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C605C 8016561C 3C1E0002 */  lui        $fp, (0x202C2 >> 16)
    /* C6060 80165620 3C170002 */  lui        $s7, (0x20056 >> 16)
    /* C6064 80165624 3C160002 */  lui        $s6, (0x202C3 >> 16)
    /* C6068 80165628 3C150002 */  lui        $s5, (0x20057 >> 16)
    /* C606C 8016562C 36B50057 */  ori        $s5, $s5, (0x20057 & 0xFFFF)
    /* C6070 80165630 36D602C3 */  ori        $s6, $s6, (0x202C3 & 0xFFFF)
    /* C6074 80165634 36F70056 */  ori        $s7, $s7, (0x20056 & 0xFFFF)
    /* C6078 80165638 37DE02C2 */  ori        $fp, $fp, (0x202C2 & 0xFFFF)
    /* C607C 8016563C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C6080 80165640 24140003 */  addiu      $s4, $zero, 0x3
    /* C6084 80165644 24130002 */  addiu      $s3, $zero, 0x2
  .L80165648_ovl3:
    /* C6088 80165648 8CE30000 */  lw         $v1, 0x0($a3)
    /* C608C 8016564C 00031880 */  sll        $v1, $v1, 2
    /* C6090 80165650 02232021 */  addu       $a0, $s1, $v1
    /* C6094 80165654 8C850000 */  lw         $a1, 0x0($a0)
    /* C6098 80165658 50A0000A */  beql       $a1, $zero, .L80165684_ovl3
    /* C609C 8016565C 3C040002 */   lui       $a0, (0x202C1 >> 16)
    /* C60A0 80165660 10B20011 */  beq        $a1, $s2, .L801656A8_ovl3
    /* C60A4 80165664 00000000 */   nop
    /* C60A8 80165668 10B3001A */  beq        $a1, $s3, .L801656D4_ovl3
    /* C60AC 8016566C 00000000 */   nop
    /* C60B0 80165670 10B40023 */  beq        $a1, $s4, .L80165700_ovl3
    /* C60B4 80165674 00000000 */   nop
    /* C60B8 80165678 1000002F */  b          .L80165738_ovl3
    /* C60BC 8016567C 02034821 */   addu      $t1, $s0, $v1
    /* C60C0 80165680 3C040002 */  lui        $a0, (0x202C1 >> 16)
  .L80165684_ovl3:
    /* C60C4 80165684 0C02A806 */  jal        func_800AA018
    /* C60C8 80165688 348402C1 */   ori       $a0, $a0, (0x202C1 & 0xFFFF)
    /* C60CC 8016568C 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C60D0 80165690 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C60D4 80165694 8CE30000 */  lw         $v1, 0x0($a3)
    /* C60D8 80165698 00031880 */  sll        $v1, $v1, 2
    /* C60DC 8016569C 02232021 */  addu       $a0, $s1, $v1
    /* C60E0 801656A0 10000024 */  b          .L80165734_ovl3
    /* C60E4 801656A4 8C850000 */   lw        $a1, 0x0($a0)
  .L801656A8_ovl3:
    /* C60E8 801656A8 0C02A5D8 */  jal        func_800A9760
    /* C60EC 801656AC 02E02025 */   or        $a0, $s7, $zero
    /* C60F0 801656B0 0C02A806 */  jal        func_800AA018
    /* C60F4 801656B4 03C02025 */   or        $a0, $fp, $zero
    /* C60F8 801656B8 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C60FC 801656BC 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C6100 801656C0 8CE30000 */  lw         $v1, 0x0($a3)
    /* C6104 801656C4 00031880 */  sll        $v1, $v1, 2
    /* C6108 801656C8 02232021 */  addu       $a0, $s1, $v1
    /* C610C 801656CC 10000019 */  b          .L80165734_ovl3
    /* C6110 801656D0 8C850000 */   lw        $a1, 0x0($a0)
  .L801656D4_ovl3:
    /* C6114 801656D4 0C02A5D8 */  jal        func_800A9760
    /* C6118 801656D8 02A02025 */   or        $a0, $s5, $zero
    /* C611C 801656DC 0C02A806 */  jal        func_800AA018
    /* C6120 801656E0 02C02025 */   or        $a0, $s6, $zero
    /* C6124 801656E4 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C6128 801656E8 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C612C 801656EC 8CE30000 */  lw         $v1, 0x0($a3)
    /* C6130 801656F0 00031880 */  sll        $v1, $v1, 2
    /* C6134 801656F4 02232021 */  addu       $a0, $s1, $v1
    /* C6138 801656F8 1000000E */  b          .L80165734_ovl3
    /* C613C 801656FC 8C850000 */   lw        $a1, 0x0($a0)
  .L80165700_ovl3:
    /* C6140 80165700 0C002DAF */  jal        ohSleep
    /* C6144 80165704 24040002 */   addiu     $a0, $zero, 0x2
    /* C6148 80165708 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* C614C 8016570C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* C6150 80165710 240F0004 */  addiu      $t7, $zero, 0x4
    /* C6154 80165714 24040005 */  addiu      $a0, $zero, 0x5
    /* C6158 80165718 8DD80000 */  lw         $t8, 0x0($t6)
    /* C615C 8016571C 00184080 */  sll        $t0, $t8, 2
    /* C6160 80165720 0228C821 */  addu       $t9, $s1, $t0
    /* C6164 80165724 0C002DAF */  jal        ohSleep
    /* C6168 80165728 AF2F0000 */   sw        $t7, 0x0($t9)
    /* C616C 8016572C 10000013 */  b          .L8016577C_ovl3
    /* C6170 80165730 00000000 */   nop
  .L80165734_ovl3:
    /* C6174 80165734 02034821 */  addu       $t1, $s0, $v1
  .L80165738_ovl3:
    /* C6178 80165738 8D2A0000 */  lw         $t2, 0x0($t1)
    /* C617C 8016573C 000A5880 */  sll        $t3, $t2, 2
    /* C6180 80165740 022B6021 */  addu       $t4, $s1, $t3
    /* C6184 80165744 8D820000 */  lw         $v0, 0x0($t4)
    /* C6188 80165748 10A20003 */  beq        $a1, $v0, .L80165758_ovl3
    /* C618C 8016574C 00000000 */   nop
    /* C6190 80165750 1000FFBD */  b          .L80165648_ovl3
    /* C6194 80165754 AC820000 */   sw        $v0, 0x0($a0)
  .L80165758_ovl3:
    /* C6198 80165758 0C002DAF */  jal        ohSleep
    /* C619C 8016575C 02402025 */   or        $a0, $s2, $zero
    /* C61A0 80165760 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C61A4 80165764 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C61A8 80165768 8CE30000 */  lw         $v1, 0x0($a3)
    /* C61AC 8016576C 00031880 */  sll        $v1, $v1, 2
    /* C61B0 80165770 02232021 */  addu       $a0, $s1, $v1
    /* C61B4 80165774 1000FFEF */  b          .L80165734_ovl3
    /* C61B8 80165778 8C850000 */   lw        $a1, 0x0($a0)
  .L8016577C_ovl3:
    /* C61BC 8016577C 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* C61C0 80165780 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* C61C4 80165784 0C02C640 */  jal        func_800B1900
    /* C61C8 80165788 95A40002 */   lhu       $a0, 0x2($t5)
    /* C61CC 8016578C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* C61D0 80165790 8FB00018 */  lw         $s0, 0x18($sp)
    /* C61D4 80165794 8FB1001C */  lw         $s1, 0x1C($sp)
    /* C61D8 80165798 8FB20020 */  lw         $s2, 0x20($sp)
    /* C61DC 8016579C 8FB30024 */  lw         $s3, 0x24($sp)
    /* C61E0 801657A0 8FB40028 */  lw         $s4, 0x28($sp)
    /* C61E4 801657A4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* C61E8 801657A8 8FB60030 */  lw         $s6, 0x30($sp)
    /* C61EC 801657AC 8FB70034 */  lw         $s7, 0x34($sp)
    /* C61F0 801657B0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* C61F4 801657B4 03E00008 */  jr         $ra
    /* C61F8 801657B8 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_80165504_ovl3
.size func_80165504_ovl3, . - func_80165504_ovl3
