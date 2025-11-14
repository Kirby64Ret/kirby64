glabel save_file_set_to_full_completion
/* 062814 800BA5C4 00047880 */  sll   $t7, $a0, 2
/* 062818 800BA5C8 01E47823 */  subu  $t7, $t7, $a0
/* 06281C 800BA5CC 000F7880 */  sll   $t7, $t7, 2
/* 062820 800BA5D0 01E47823 */  subu  $t7, $t7, $a0
/* 062824 800BA5D4 3C18800F */  lui   $t8, %hi(gSaveBuffer1) # $t8, 0x800f
/* 062828 800BA5D8 2718C9F8 */  addiu $t8, %lo(gSaveBuffer1) # addiu $t8, $t8, -0x3608
/* 06282C 800BA5DC 000F78C0 */  sll   $t7, $t7, 3
/* 062830 800BA5E0 01F83821 */  addu  $a3, $t7, $t8
/* 062834 800BA5E4 8CE20014 */  lw    $v0, 0x14($a3)
/* 062838 800BA5E8 3C019999 */  lui   $at, (0x99999999 >> 16) # lui $at, 0x9999
/* 06283C 800BA5EC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 062840 800BA5F0 34219999 */  ori   $at, (0x99999999 & 0xFFFF) # ori $at, $at, 0x9999
/* 062844 800BA5F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 062848 800BA5F8 10410004 */  beq   $v0, $at, .L800BA60C_ovl1
/* 06284C 800BA5FC AFA40038 */   sw    $a0, 0x38($sp)
/* 062850 800BA600 2C410006 */  sltiu $at, $v0, 6
/* 062854 800BA604 54200006 */  bnezl $at, .L800BA620_ovl1
/* 062858 800BA608 8CF90010 */   lw    $t9, 0x10($a3)
.L800BA60C_ovl1:
/* 06285C 800BA60C 8FA40038 */  lw    $a0, 0x38($sp)
/* 062860 800BA610 0C02E30D */  jal   init_save_file_maybe
/* 062864 800BA614 AFA70024 */   sw    $a3, 0x24($sp)
/* 062868 800BA618 8FA70024 */  lw    $a3, 0x24($sp)
/* 06286C 800BA61C 8CF90010 */  lw    $t9, 0x10($a3)
.L800BA620_ovl1:
/* 062870 800BA620 24030008 */  li    $v1, 8
/* 062874 800BA624 240AFFFF */  li    $t2, -1
/* 062878 800BA628 14790005 */  bne   $v1, $t9, .L800BA640_ovl1
/* 06287C 800BA62C 00002025 */   move  $a0, $zero
/* 062880 800BA630 8CE90014 */  lw    $t1, 0x14($a3)
/* 062884 800BA634 24050001 */  li    $a1, 1
/* 062888 800BA638 50A90050 */  beql  $a1, $t1, .L800BA77C_ovl1
/* 06288C 800BA63C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800BA640_ovl1:
/* 062890 800BA640 8FAB0038 */  lw    $t3, 0x38($sp)
/* 062894 800BA644 3C0D800F */  lui   $t5, %hi(gSaveBuffer1) # $t5, 0x800f
/* 062898 800BA648 24050001 */  li    $a1, 1
/* 06289C 800BA64C 000B6080 */  sll   $t4, $t3, 2
/* 0628A0 800BA650 018B6023 */  subu  $t4, $t4, $t3
/* 0628A4 800BA654 000C6080 */  sll   $t4, $t4, 2
/* 0628A8 800BA658 018B6023 */  subu  $t4, $t4, $t3
/* 0628AC 800BA65C 000C60C0 */  sll   $t4, $t4, 3
/* 0628B0 800BA660 25ADC9F8 */  addiu $t5, %lo(gSaveBuffer1) # addiu $t5, $t5, -0x3608
/* 0628B4 800BA664 ACE30010 */  sw    $v1, 0x10($a3)
/* 0628B8 800BA668 018D3021 */  addu  $a2, $t4, $t5
/* 0628BC 800BA66C ACE50014 */  sw    $a1, 0x14($a3)
/* 0628C0 800BA670 ACE00018 */  sw    $zero, 0x18($a3)
/* 0628C4 800BA674 A0E00020 */  sb    $zero, 0x20($a3)
/* 0628C8 800BA678 ACEA001C */  sw    $t2, 0x1c($a3)
/* 0628CC 800BA67C A0E50021 */  sb    $a1, 0x21($a3)
/* 0628D0 800BA680 00C01025 */  move  $v0, $a2
/* 0628D4 800BA684 24030007 */  li    $v1, 7
.L800BA688_ovl1:
/* 0628D8 800BA688 24840001 */  addiu $a0, $a0, 1
/* 0628DC 800BA68C 28810006 */  slti  $at, $a0, 6
/* 0628E0 800BA690 24420004 */  addiu $v0, $v0, 4
/* 0628E4 800BA694 A0430049 */  sb    $v1, 0x49($v0)
/* 0628E8 800BA698 A043004A */  sb    $v1, 0x4a($v0)
/* 0628EC 800BA69C A043004B */  sb    $v1, 0x4b($v0)
/* 0628F0 800BA6A0 1420FFF9 */  bnez  $at, .L800BA688_ovl1
/* 0628F4 800BA6A4 A0430048 */   sb    $v1, 0x48($v0)
/* 0628F8 800BA6A8 A0E00063 */  sb    $zero, 0x63($a3)
/* 0628FC 800BA6AC A0E0004F */  sb    $zero, 0x4f($a3)
/* 062900 800BA6B0 00002025 */  move  $a0, $zero
/* 062904 800BA6B4 00C01025 */  move  $v0, $a2
.L800BA6B8_ovl1:
/* 062908 800BA6B8 24840001 */  addiu $a0, $a0, 1
/* 06290C 800BA6BC 28810008 */  slti  $at, $a0, 8
/* 062910 800BA6C0 A0400044 */  sb    $zero, 0x44($v0)
/* 062914 800BA6C4 1420FFFC */  bnez  $at, .L800BA6B8_ovl1
/* 062918 800BA6C8 24420001 */   addiu $v0, $v0, 1
/* 06291C 800BA6CC 24040003 */  li    $a0, 3
/* 062920 800BA6D0 00C41021 */  addu  $v0, $a2, $a0
/* 062924 800BA6D4 A0C50044 */  sb    $a1, 0x44($a2)
/* 062928 800BA6D8 A0C50045 */  sb    $a1, 0x45($a2)
/* 06292C 800BA6DC A0C50046 */  sb    $a1, 0x46($a2)
/* 062930 800BA6E0 A0450047 */  sb    $a1, 0x47($v0)
/* 062934 800BA6E4 A0450046 */  sb    $a1, 0x46($v0)
/* 062938 800BA6E8 A0450045 */  sb    $a1, 0x45($v0)
/* 06293C 800BA6EC A0450044 */  sb    $a1, 0x44($v0)
/* 062940 800BA6F0 24030055 */  li    $v1, 85
/* 062944 800BA6F4 A0C3002E */  sb    $v1, 0x2e($a2)
/* 062948 800BA6F8 24050015 */  li    $a1, 21
/* 06294C 800BA6FC 24C20001 */  addiu $v0, $a2, 1
/* 062950 800BA700 24040001 */  li    $a0, 1
.L800BA704_ovl1:
/* 062954 800BA704 24840004 */  addiu $a0, $a0, 4
/* 062958 800BA708 A043002E */  sb    $v1, 0x2e($v0)
/* 06295C 800BA70C A043002F */  sb    $v1, 0x2f($v0)
/* 062960 800BA710 A0430030 */  sb    $v1, 0x30($v0)
/* 062964 800BA714 A0430031 */  sb    $v1, 0x31($v0)
/* 062968 800BA718 1485FFFA */  bne   $a0, $a1, .L800BA704_ovl1
/* 06296C 800BA71C 24420004 */   addiu $v0, $v0, 4
/* 062970 800BA720 8FA40038 */  lw    $a0, 0x38($sp)
/* 062974 800BA724 0C02E4B6 */  jal   verify_save
/* 062978 800BA728 AFA70024 */   sw    $a3, 0x24($sp)
/* 06297C 800BA72C 0C02E3F2 */  jal   calc_file_checksum
/* 062980 800BA730 8FA40038 */   lw    $a0, 0x38($sp)
/* 062984 800BA734 8FAF0038 */  lw    $t7, 0x38($sp)
/* 062988 800BA738 8FA70024 */  lw    $a3, 0x24($sp)
/* 06298C 800BA73C 3C19800D */  lui   $t9, %hi(D_800D5150) # $t9, 0x800d
/* 062990 800BA740 27395150 */  addiu $t9, %lo(D_800D5150) # addiu $t9, $t9, 0x5150
/* 062994 800BA744 000FC040 */  sll   $t8, $t7, 1
/* 062998 800BA748 03191021 */  addu  $v0, $t8, $t9
/* 06299C 800BA74C 24E50010 */  addiu $a1, $a3, 0x10
/* 0629A0 800BA750 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0629A4 800BA754 90440001 */  lbu   $a0, 1($v0)
/* 0629A8 800BA758 AFA20020 */  sw    $v0, 0x20($sp)
/* 0629AC 800BA75C 0C00134D */  jal   func_80004D34_ovl1
/* 0629B0 800BA760 24060058 */   li    $a2, 88
/* 0629B4 800BA764 8FA20020 */  lw    $v0, 0x20($sp)
/* 0629B8 800BA768 8FA5001C */  lw    $a1, 0x1c($sp)
/* 0629BC 800BA76C 24060058 */  li    $a2, 88
/* 0629C0 800BA770 0C00134D */  jal   func_80004D34_ovl1
/* 0629C4 800BA774 90440007 */   lbu   $a0, 7($v0)
/* 0629C8 800BA778 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BA77C_ovl1:
/* 0629CC 800BA77C 27BD0038 */  addiu $sp, $sp, 0x38
/* 0629D0 800BA780 03E00008 */  jr    $ra
/* 0629D4 800BA784 00000000 */   nop   

/* 0629D8 800BA788 00000000 */  nop   
/* 0629DC 800BA78C 00000000 */  nop   
/* 0629E0 800BA790 00000000 */  nop   
/* 0629E4 800BA794 00000000 */  nop   
/* 0629E8 800BA798 00000000 */  nop   
/* 0629EC 800BA79C 00000000 */  nop   
.size save_file_set_to_full_completion, . - save_file_set_to_full_completion
