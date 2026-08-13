nonmatching saveForceCompleteFile, 0x1C4

glabel saveForceCompleteFile
    /* 62814 800BA5C4 00047880 */  sll        $t7, $a0, 2
    /* 62818 800BA5C8 01E47823 */  subu       $t7, $t7, $a0
    /* 6281C 800BA5CC 000F7880 */  sll        $t7, $t7, 2
    /* 62820 800BA5D0 01E47823 */  subu       $t7, $t7, $a0
    /* 62824 800BA5D4 3C18800F */  lui        $t8, %hi(gSaveBuffer1)
    /* 62828 800BA5D8 2718C9F8 */  addiu      $t8, $t8, %lo(gSaveBuffer1)
    /* 6282C 800BA5DC 000F78C0 */  sll        $t7, $t7, 3
    /* 62830 800BA5E0 01F83821 */  addu       $a3, $t7, $t8
    /* 62834 800BA5E4 8CE20014 */  lw         $v0, 0x14($a3)
    /* 62838 800BA5E8 3C019999 */  lui        $at, (0x99999999 >> 16)
    /* 6283C 800BA5EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 62840 800BA5F0 34219999 */  ori        $at, $at, (0x99999999 & 0xFFFF)
    /* 62844 800BA5F4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 62848 800BA5F8 10410004 */  beq        $v0, $at, .L800BA60C
    /* 6284C 800BA5FC AFA40038 */   sw        $a0, 0x38($sp)
    /* 62850 800BA600 2C410006 */  sltiu      $at, $v0, 0x6
    /* 62854 800BA604 54200006 */  bnel       $at, $zero, .L800BA620
    /* 62858 800BA608 8CF90010 */   lw        $t9, 0x10($a3)
  .L800BA60C:
    /* 6285C 800BA60C 8FA40038 */  lw         $a0, 0x38($sp)
    /* 62860 800BA610 0C02E30D */  jal        init_save_file_maybe
    /* 62864 800BA614 AFA70024 */   sw        $a3, 0x24($sp)
    /* 62868 800BA618 8FA70024 */  lw         $a3, 0x24($sp)
    /* 6286C 800BA61C 8CF90010 */  lw         $t9, 0x10($a3)
  .L800BA620:
    /* 62870 800BA620 24030008 */  addiu      $v1, $zero, 0x8
    /* 62874 800BA624 240AFFFF */  addiu      $t2, $zero, -0x1
    /* 62878 800BA628 14790005 */  bne        $v1, $t9, .L800BA640
    /* 6287C 800BA62C 00002025 */   or        $a0, $zero, $zero
    /* 62880 800BA630 8CE90014 */  lw         $t1, 0x14($a3)
    /* 62884 800BA634 24050001 */  addiu      $a1, $zero, 0x1
    /* 62888 800BA638 50A90050 */  beql       $a1, $t1, .L800BA77C
    /* 6288C 800BA63C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800BA640:
    /* 62890 800BA640 8FAB0038 */  lw         $t3, 0x38($sp)
    /* 62894 800BA644 3C0D800F */  lui        $t5, %hi(gSaveBuffer1)
    /* 62898 800BA648 24050001 */  addiu      $a1, $zero, 0x1
    /* 6289C 800BA64C 000B6080 */  sll        $t4, $t3, 2
    /* 628A0 800BA650 018B6023 */  subu       $t4, $t4, $t3
    /* 628A4 800BA654 000C6080 */  sll        $t4, $t4, 2
    /* 628A8 800BA658 018B6023 */  subu       $t4, $t4, $t3
    /* 628AC 800BA65C 000C60C0 */  sll        $t4, $t4, 3
    /* 628B0 800BA660 25ADC9F8 */  addiu      $t5, $t5, %lo(gSaveBuffer1)
    /* 628B4 800BA664 ACE30010 */  sw         $v1, 0x10($a3)
    /* 628B8 800BA668 018D3021 */  addu       $a2, $t4, $t5
    /* 628BC 800BA66C ACE50014 */  sw         $a1, 0x14($a3)
    /* 628C0 800BA670 ACE00018 */  sw         $zero, 0x18($a3)
    /* 628C4 800BA674 A0E00020 */  sb         $zero, 0x20($a3)
    /* 628C8 800BA678 ACEA001C */  sw         $t2, 0x1C($a3)
    /* 628CC 800BA67C A0E50021 */  sb         $a1, 0x21($a3)
    /* 628D0 800BA680 00C01025 */  or         $v0, $a2, $zero
    /* 628D4 800BA684 24030007 */  addiu      $v1, $zero, 0x7
  .L800BA688:
    /* 628D8 800BA688 24840001 */  addiu      $a0, $a0, 0x1
    /* 628DC 800BA68C 28810006 */  slti       $at, $a0, 0x6
    /* 628E0 800BA690 24420004 */  addiu      $v0, $v0, 0x4
    /* 628E4 800BA694 A0430049 */  sb         $v1, 0x49($v0)
    /* 628E8 800BA698 A043004A */  sb         $v1, 0x4A($v0)
    /* 628EC 800BA69C A043004B */  sb         $v1, 0x4B($v0)
    /* 628F0 800BA6A0 1420FFF9 */  bnez       $at, .L800BA688
    /* 628F4 800BA6A4 A0430048 */   sb        $v1, 0x48($v0)
    /* 628F8 800BA6A8 A0E00063 */  sb         $zero, 0x63($a3)
    /* 628FC 800BA6AC A0E0004F */  sb         $zero, 0x4F($a3)
    /* 62900 800BA6B0 00002025 */  or         $a0, $zero, $zero
    /* 62904 800BA6B4 00C01025 */  or         $v0, $a2, $zero
  .L800BA6B8:
    /* 62908 800BA6B8 24840001 */  addiu      $a0, $a0, 0x1
    /* 6290C 800BA6BC 28810008 */  slti       $at, $a0, 0x8
    /* 62910 800BA6C0 A0400044 */  sb         $zero, 0x44($v0)
    /* 62914 800BA6C4 1420FFFC */  bnez       $at, .L800BA6B8
    /* 62918 800BA6C8 24420001 */   addiu     $v0, $v0, 0x1
    /* 6291C 800BA6CC 24040003 */  addiu      $a0, $zero, 0x3
    /* 62920 800BA6D0 00C41021 */  addu       $v0, $a2, $a0
    /* 62924 800BA6D4 A0C50044 */  sb         $a1, 0x44($a2)
    /* 62928 800BA6D8 A0C50045 */  sb         $a1, 0x45($a2)
    /* 6292C 800BA6DC A0C50046 */  sb         $a1, 0x46($a2)
    /* 62930 800BA6E0 A0450047 */  sb         $a1, 0x47($v0)
    /* 62934 800BA6E4 A0450046 */  sb         $a1, 0x46($v0)
    /* 62938 800BA6E8 A0450045 */  sb         $a1, 0x45($v0)
    /* 6293C 800BA6EC A0450044 */  sb         $a1, 0x44($v0)
    /* 62940 800BA6F0 24030055 */  addiu      $v1, $zero, 0x55
    /* 62944 800BA6F4 A0C3002E */  sb         $v1, 0x2E($a2)
    /* 62948 800BA6F8 24050015 */  addiu      $a1, $zero, 0x15
    /* 6294C 800BA6FC 24C20001 */  addiu      $v0, $a2, 0x1
    /* 62950 800BA700 24040001 */  addiu      $a0, $zero, 0x1
  .L800BA704:
    /* 62954 800BA704 24840004 */  addiu      $a0, $a0, 0x4
    /* 62958 800BA708 A043002E */  sb         $v1, 0x2E($v0)
    /* 6295C 800BA70C A043002F */  sb         $v1, 0x2F($v0)
    /* 62960 800BA710 A0430030 */  sb         $v1, 0x30($v0)
    /* 62964 800BA714 A0430031 */  sb         $v1, 0x31($v0)
    /* 62968 800BA718 1485FFFA */  bne        $a0, $a1, .L800BA704
    /* 6296C 800BA71C 24420004 */   addiu     $v0, $v0, 0x4
    /* 62970 800BA720 8FA40038 */  lw         $a0, 0x38($sp)
    /* 62974 800BA724 0C02E4B6 */  jal        saveVerify
    /* 62978 800BA728 AFA70024 */   sw        $a3, 0x24($sp)
    /* 6297C 800BA72C 0C02E3F2 */  jal        saveSetFileChecksum
    /* 62980 800BA730 8FA40038 */   lw        $a0, 0x38($sp)
    /* 62984 800BA734 8FAF0038 */  lw         $t7, 0x38($sp)
    /* 62988 800BA738 8FA70024 */  lw         $a3, 0x24($sp)
    /* 6298C 800BA73C 3C19800D */  lui        $t9, %hi(D_800D5150)
    /* 62990 800BA740 27395150 */  addiu      $t9, $t9, %lo(D_800D5150)
    /* 62994 800BA744 000FC040 */  sll        $t8, $t7, 1
    /* 62998 800BA748 03191021 */  addu       $v0, $t8, $t9
    /* 6299C 800BA74C 24E50010 */  addiu      $a1, $a3, 0x10
    /* 629A0 800BA750 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 629A4 800BA754 90440001 */  lbu        $a0, 0x1($v0)
    /* 629A8 800BA758 AFA20020 */  sw         $v0, 0x20($sp)
    /* 629AC 800BA75C 0C00134D */  jal        func_80004D34
    /* 629B0 800BA760 24060058 */   addiu     $a2, $zero, 0x58
    /* 629B4 800BA764 8FA20020 */  lw         $v0, 0x20($sp)
    /* 629B8 800BA768 8FA5001C */  lw         $a1, 0x1C($sp)
    /* 629BC 800BA76C 24060058 */  addiu      $a2, $zero, 0x58
    /* 629C0 800BA770 0C00134D */  jal        func_80004D34
    /* 629C4 800BA774 90440007 */   lbu       $a0, 0x7($v0)
    /* 629C8 800BA778 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800BA77C:
    /* 629CC 800BA77C 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 629D0 800BA780 03E00008 */  jr         $ra
    /* 629D4 800BA784 00000000 */   nop
endlabel saveForceCompleteFile
.size saveForceCompleteFile, . - saveForceCompleteFile
    /* 629D8 800BA788 00000000 */  nop
    /* 629DC 800BA78C 00000000 */  nop
    /* 629E0 800BA790 00000000 */  nop
    /* 629E4 800BA794 00000000 */  nop
    /* 629E8 800BA798 00000000 */  nop
    /* 629EC 800BA79C 00000000 */  nop
