glabel func_801A4754_ovl7
/* 14A7C4 801A4754 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 14A7C8 801A4758 AFB10024 */  sw         $s1, 0x24($sp)
/* 14A7CC 801A475C 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 14A7D0 801A4760 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 14A7D4 801A4764 8E280000 */  lw         $t0, 0x0($s1)
/* 14A7D8 801A4768 AFBF0034 */  sw         $ra, 0x34($sp)
/* 14A7DC 801A476C AFB40030 */  sw         $s4, 0x30($sp)
/* 14A7E0 801A4770 AFB3002C */  sw         $s3, 0x2C($sp)
/* 14A7E4 801A4774 AFB20028 */  sw         $s2, 0x28($sp)
/* 14A7E8 801A4778 AFB00020 */  sw         $s0, 0x20($sp)
/* 14A7EC 801A477C AFA40048 */  sw         $a0, 0x48($sp)
/* 14A7F0 801A4780 8D030000 */  lw         $v1, 0x0($t0)
/* 14A7F4 801A4784 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 14A7F8 801A4788 3C01801D */  lui        $at, %hi(D_801CDFBC_ovl7)
/* 14A7FC 801A478C 00031880 */  sll        $v1, $v1, 2
/* 14A800 801A4790 00431021 */  addu       $v0, $v0, $v1
/* 14A804 801A4794 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 14A808 801A4798 C42EDFBC */  lwc1       $f14, %lo(D_801CDFBC_ovl7)($at)
/* 14A80C 801A479C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 14A810 801A47A0 8C4E0088 */  lw         $t6, 0x88($v0)
/* 14A814 801A47A4 3C18801A */  lui        $t8, %hi(func_801A4C0C_ovl7)
/* 14A818 801A47A8 27184C0C */  addiu      $t8, $t8, %lo(func_801A4C0C_ovl7)
/* 14A81C 801A47AC 8DC5000C */  lw         $a1, 0xC($t6)
/* 14A820 801A47B0 00230821 */  addu       $at, $at, $v1
/* 14A824 801A47B4 24190024 */  addiu      $t9, $zero, 0x24
/* 14A828 801A47B8 8CAF0000 */  lw         $t7, 0x0($a1)
/* 14A82C 801A47BC AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* 14A830 801A47C0 3C01800E */  lui        $at, %hi(D_800DDA90)
/* 14A834 801A47C4 AFAF003C */  sw         $t7, 0x3C($sp)
/* 14A838 801A47C8 8D0A0000 */  lw         $t2, 0x0($t0)
/* 14A83C 801A47CC 3C14800F */  lui        $s4, %hi(D_800EC4A0)
/* 14A840 801A47D0 2694C4A0 */  addiu      $s4, $s4, %lo(D_800EC4A0)
/* 14A844 801A47D4 000A5880 */  sll        $t3, $t2, 2
/* 14A848 801A47D8 002B0821 */  addu       $at, $at, $t3
/* 14A84C 801A47DC AC39DA90 */  sw         $t9, %lo(D_800DDA90)($at)
/* 14A850 801A47E0 AC400048 */  sw         $zero, 0x48($v0)
/* 14A854 801A47E4 AC400098 */  sw         $zero, 0x98($v0)
/* 14A858 801A47E8 8E280000 */  lw         $t0, 0x0($s1)
/* 14A85C 801A47EC 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 14A860 801A47F0 44806000 */  mtc1       $zero, $f12
/* 14A864 801A47F4 8D0C0000 */  lw         $t4, 0x0($t0)
/* 14A868 801A47F8 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 14A86C 801A47FC 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 14A870 801A4800 000C6880 */  sll        $t5, $t4, 2
/* 14A874 801A4804 002D0821 */  addu       $at, $at, $t5
/* 14A878 801A4808 AC20C2E0 */  sw         $zero, %lo(D_800EC2E0)($at)
/* 14A87C 801A480C 8D0E0000 */  lw         $t6, 0x0($t0)
/* 14A880 801A4810 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 14A884 801A4814 3C07800E */  lui        $a3, %hi(D_800E3910)
/* 14A888 801A4818 000E7880 */  sll        $t7, $t6, 2
/* 14A88C 801A481C 028FC021 */  addu       $t8, $s4, $t7
/* 14A890 801A4820 AF000000 */  sw         $zero, 0x0($t8)
/* 14A894 801A4824 8D0A0000 */  lw         $t2, 0x0($t0)
/* 14A898 801A4828 24E73910 */  addiu      $a3, $a3, %lo(D_800E3910)
/* 14A89C 801A482C 3C09800E */  lui        $t1, %hi(D_800E3E50)
/* 14A8A0 801A4830 000AC880 */  sll        $t9, $t2, 2
/* 14A8A4 801A4834 00D95821 */  addu       $t3, $a2, $t9
/* 14A8A8 801A4838 E56C0000 */  swc1       $f12, 0x0($t3)
/* 14A8AC 801A483C 8D030000 */  lw         $v1, 0x0($t0)
/* 14A8B0 801A4840 25293E50 */  addiu      $t1, $t1, %lo(D_800E3E50)
/* 14A8B4 801A4844 00031880 */  sll        $v1, $v1, 2
/* 14A8B8 801A4848 00C36021 */  addu       $t4, $a2, $v1
/* 14A8BC 801A484C C5840000 */  lwc1       $f4, 0x0($t4)
/* 14A8C0 801A4850 00230821 */  addu       $at, $at, $v1
/* 14A8C4 801A4854 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 14A8C8 801A4858 8D0D0000 */  lw         $t5, 0x0($t0)
/* 14A8CC 801A485C 3C01800E */  lui        $at, %hi(D_800E6850)
/* 14A8D0 801A4860 000D7080 */  sll        $t6, $t5, 2
/* 14A8D4 801A4864 002E0821 */  addu       $at, $at, $t6
/* 14A8D8 801A4868 E42E6850 */  swc1       $f14, %lo(D_800E6850)($at)
/* 14A8DC 801A486C 8D0F0000 */  lw         $t7, 0x0($t0)
/* 14A8E0 801A4870 3C01800E */  lui        $at, %hi(D_800E3750)
/* 14A8E4 801A4874 000FC080 */  sll        $t8, $t7, 2
/* 14A8E8 801A4878 00F85021 */  addu       $t2, $a3, $t8
/* 14A8EC 801A487C E54C0000 */  swc1       $f12, 0x0($t2)
/* 14A8F0 801A4880 8D030000 */  lw         $v1, 0x0($t0)
/* 14A8F4 801A4884 00031880 */  sll        $v1, $v1, 2
/* 14A8F8 801A4888 00E3C821 */  addu       $t9, $a3, $v1
/* 14A8FC 801A488C C7200000 */  lwc1       $f0, 0x0($t9)
/* 14A900 801A4890 00230821 */  addu       $at, $at, $v1
/* 14A904 801A4894 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 14A908 801A4898 8D0B0000 */  lw         $t3, 0x0($t0)
/* 14A90C 801A489C 3C01800E */  lui        $at, %hi(D_800E3590)
/* 14A910 801A48A0 000B6080 */  sll        $t4, $t3, 2
/* 14A914 801A48A4 002C0821 */  addu       $at, $at, $t4
/* 14A918 801A48A8 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 14A91C 801A48AC 8D0D0000 */  lw         $t5, 0x0($t0)
/* 14A920 801A48B0 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 14A924 801A48B4 000D7080 */  sll        $t6, $t5, 2
/* 14A928 801A48B8 002E0821 */  addu       $at, $at, $t6
/* 14A92C 801A48BC E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 14A930 801A48C0 8D0F0000 */  lw         $t7, 0x0($t0)
/* 14A934 801A48C4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14A938 801A48C8 000FC080 */  sll        $t8, $t7, 2
/* 14A93C 801A48CC 00380821 */  addu       $at, $at, $t8
/* 14A940 801A48D0 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 14A944 801A48D4 8D0A0000 */  lw         $t2, 0x0($t0)
/* 14A948 801A48D8 3C01800E */  lui        $at, %hi(D_800E3050)
/* 14A94C 801A48DC 000AC880 */  sll        $t9, $t2, 2
/* 14A950 801A48E0 00390821 */  addu       $at, $at, $t9
/* 14A954 801A48E4 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 14A958 801A48E8 8D0B0000 */  lw         $t3, 0x0($t0)
/* 14A95C 801A48EC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 14A960 801A48F0 000B6080 */  sll        $t4, $t3, 2
/* 14A964 801A48F4 012C6821 */  addu       $t5, $t1, $t4
/* 14A968 801A48F8 E5AE0000 */  swc1       $f14, 0x0($t5)
/* 14A96C 801A48FC 8D030000 */  lw         $v1, 0x0($t0)
/* 14A970 801A4900 00031880 */  sll        $v1, $v1, 2
/* 14A974 801A4904 01237021 */  addu       $t6, $t1, $v1
/* 14A978 801A4908 C5C20000 */  lwc1       $f2, 0x0($t6)
/* 14A97C 801A490C 00230821 */  addu       $at, $at, $v1
/* 14A980 801A4910 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 14A984 801A4914 8D0F0000 */  lw         $t7, 0x0($t0)
/* 14A988 801A4918 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14A98C 801A491C 000FC080 */  sll        $t8, $t7, 2
/* 14A990 801A4920 00380821 */  addu       $at, $at, $t8
/* 14A994 801A4924 0C069984 */  jal        func_801A6610_ovl7
/* 14A998 801A4928 E4223AD0 */   swc1      $f2, %lo(D_800E3AD0)($at)
/* 14A99C 801A492C 0C02BD02 */  jal        func_800AF408
/* 14A9A0 801A4930 00000000 */   nop
/* 14A9A4 801A4934 8E280000 */  lw         $t0, 0x0($s1)
/* 14A9A8 801A4938 3C10800F */  lui        $s0, %hi(D_800E9720)
/* 14A9AC 801A493C 26109720 */  addiu      $s0, $s0, %lo(D_800E9720)
/* 14A9B0 801A4940 8D190000 */  lw         $t9, 0x0($t0)
/* 14A9B4 801A4944 240A00B4 */  addiu      $t2, $zero, 0xB4
/* 14A9B8 801A4948 3C01800F */  lui        $at, %hi(D_800EA520)
/* 14A9BC 801A494C 00195880 */  sll        $t3, $t9, 2
/* 14A9C0 801A4950 020B6021 */  addu       $t4, $s0, $t3
/* 14A9C4 801A4954 AD8A0000 */  sw         $t2, 0x0($t4)
/* 14A9C8 801A4958 8D0D0000 */  lw         $t5, 0x0($t0)
/* 14A9CC 801A495C 3C13800F */  lui        $s3, %hi(D_800E9E20)
/* 14A9D0 801A4960 26739E20 */  addiu      $s3, $s3, %lo(D_800E9E20)
/* 14A9D4 801A4964 000D7080 */  sll        $t6, $t5, 2
/* 14A9D8 801A4968 002E0821 */  addu       $at, $at, $t6
/* 14A9DC 801A496C AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* 14A9E0 801A4970 8D0F0000 */  lw         $t7, 0x0($t0)
/* 14A9E4 801A4974 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 14A9E8 801A4978 24040007 */  addiu      $a0, $zero, 0x7
/* 14A9EC 801A497C 000FC080 */  sll        $t8, $t7, 2
/* 14A9F0 801A4980 00380821 */  addu       $at, $at, $t8
/* 14A9F4 801A4984 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
/* 14A9F8 801A4988 8D190000 */  lw         $t9, 0x0($t0)
/* 14A9FC 801A498C 00195880 */  sll        $t3, $t9, 2
/* 14AA00 801A4990 026B5021 */  addu       $t2, $s3, $t3
/* 14AA04 801A4994 0C06B9F8 */  jal        func_801AE7E0_ovl7
/* 14AA08 801A4998 AD400000 */   sw        $zero, 0x0($t2)
/* 14AA0C 801A499C 8E280000 */  lw         $t0, 0x0($s1)
/* 14AA10 801A49A0 3C12800F */  lui        $s2, %hi(D_800E9C60)
/* 14AA14 801A49A4 26529C60 */  addiu      $s2, $s2, %lo(D_800E9C60)
/* 14AA18 801A49A8 8D0C0000 */  lw         $t4, 0x0($t0)
/* 14AA1C 801A49AC 8FA3003C */  lw         $v1, 0x3C($sp)
/* 14AA20 801A49B0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 14AA24 801A49B4 000C6880 */  sll        $t5, $t4, 2
/* 14AA28 801A49B8 024D7021 */  addu       $t6, $s2, $t5
/* 14AA2C 801A49BC ADC20000 */  sw         $v0, 0x0($t6)
/* 14AA30 801A49C0 8D0F0000 */  lw         $t7, 0x0($t0)
/* 14AA34 801A49C4 C4660010 */  lwc1       $f6, 0x10($v1)
/* 14AA38 801A49C8 3C04801C */  lui        $a0, %hi(D_801C5360_ovl7)
/* 14AA3C 801A49CC 000FC080 */  sll        $t8, $t7, 2
/* 14AA40 801A49D0 00380821 */  addu       $at, $at, $t8
/* 14AA44 801A49D4 E4264550 */  swc1       $f6, %lo(gEntitiesScaleXArray)($at)
/* 14AA48 801A49D8 8D190000 */  lw         $t9, 0x0($t0)
/* 14AA4C 801A49DC C4680010 */  lwc1       $f8, 0x10($v1)
/* 14AA50 801A49E0 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 14AA54 801A49E4 00195880 */  sll        $t3, $t9, 2
/* 14AA58 801A49E8 002B0821 */  addu       $at, $at, $t3
/* 14AA5C 801A49EC E4284710 */  swc1       $f8, %lo(gEntitiesScaleYArray)($at)
/* 14AA60 801A49F0 8D0A0000 */  lw         $t2, 0x0($t0)
/* 14AA64 801A49F4 C46A0010 */  lwc1       $f10, 0x10($v1)
/* 14AA68 801A49F8 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 14AA6C 801A49FC 000A6080 */  sll        $t4, $t2, 2
/* 14AA70 801A4A00 002C0821 */  addu       $at, $at, $t4
/* 14AA74 801A4A04 24845360 */  addiu      $a0, $a0, %lo(D_801C5360_ovl7)
/* 14AA78 801A4A08 0C066220 */  jal        func_80198880_ovl7
/* 14AA7C 801A4A0C E42A48D0 */   swc1      $f10, %lo(gEntitiesScaleZArray)($at)
/* 14AA80 801A4A10 8E2D0000 */  lw         $t5, 0x0($s1)
/* 14AA84 801A4A14 3C01800F */  lui        $at, %hi(D_800E8920)
/* 14AA88 801A4A18 240400C1 */  addiu      $a0, $zero, 0xC1
/* 14AA8C 801A4A1C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 14AA90 801A4A20 000E7880 */  sll        $t7, $t6, 2
/* 14AA94 801A4A24 002F0821 */  addu       $at, $at, $t7
/* 14AA98 801A4A28 0C029D9E */  jal        play_sound
/* 14AA9C 801A4A2C AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 14AAA0 801A4A30 8E280000 */  lw         $t0, 0x0($s1)
/* 14AAA4 801A4A34 3C18800F */  lui        $t8, %hi(D_800E8E60)
/* 14AAA8 801A4A38 24010001 */  addiu      $at, $zero, 0x1
/* 14AAAC 801A4A3C 8D030000 */  lw         $v1, 0x0($t0)
/* 14AAB0 801A4A40 00031880 */  sll        $v1, $v1, 2
/* 14AAB4 801A4A44 0303C021 */  addu       $t8, $t8, $v1
/* 14AAB8 801A4A48 8F188E60 */  lw         $t8, %lo(D_800E8E60)($t8)
/* 14AABC 801A4A4C 0243C821 */  addu       $t9, $s2, $v1
/* 14AAC0 801A4A50 02835021 */  addu       $t2, $s4, $v1
/* 14AAC4 801A4A54 57010021 */  bnel       $t8, $at, .L801A4ADC_ovl7
/* 14AAC8 801A4A58 8D4C0000 */   lw        $t4, 0x0($t2)
/* 14AACC 801A4A5C 8F220000 */  lw         $v0, 0x0($t9)
/* 14AAD0 801A4A60 3C13800F */  lui        $s3, %hi(D_800E9AA0)
/* 14AAD4 801A4A64 26739AA0 */  addiu      $s3, $s3, %lo(D_800E9AA0)
/* 14AAD8 801A4A68 00021080 */  sll        $v0, $v0, 2
/* 14AADC 801A4A6C 02625821 */  addu       $t3, $s3, $v0
/* 14AAE0 801A4A70 8D6A0000 */  lw         $t2, 0x0($t3)
/* 14AAE4 801A4A74 3C10800E */  lui        $s0, %hi(D_800DE350)
/* 14AAE8 801A4A78 2610E350 */  addiu      $s0, $s0, %lo(D_800DE350)
/* 14AAEC 801A4A7C 15400046 */  bnez       $t2, .L801A4B98_ovl7
/* 14AAF0 801A4A80 02026021 */   addu      $t4, $s0, $v0
/* 14AAF4 801A4A84 8D8D0000 */  lw         $t5, 0x0($t4)
/* 14AAF8 801A4A88 11A00043 */  beqz       $t5, .L801A4B98_ovl7
/* 14AAFC 801A4A8C 00000000 */   nop
.L801A4A90_ovl7:
/* 14AB00 801A4A90 0C002DAF */  jal        finish_current_thread
/* 14AB04 801A4A94 24040001 */   addiu     $a0, $zero, 0x1
/* 14AB08 801A4A98 8E280000 */  lw         $t0, 0x0($s1)
/* 14AB0C 801A4A9C 8D030000 */  lw         $v1, 0x0($t0)
/* 14AB10 801A4AA0 00031880 */  sll        $v1, $v1, 2
/* 14AB14 801A4AA4 02437021 */  addu       $t6, $s2, $v1
/* 14AB18 801A4AA8 8DC20000 */  lw         $v0, 0x0($t6)
/* 14AB1C 801A4AAC 00021080 */  sll        $v0, $v0, 2
/* 14AB20 801A4AB0 02627821 */  addu       $t7, $s3, $v0
/* 14AB24 801A4AB4 8DF80000 */  lw         $t8, 0x0($t7)
/* 14AB28 801A4AB8 0202C821 */  addu       $t9, $s0, $v0
/* 14AB2C 801A4ABC 17000036 */  bnez       $t8, .L801A4B98_ovl7
/* 14AB30 801A4AC0 00000000 */   nop
/* 14AB34 801A4AC4 8F2B0000 */  lw         $t3, 0x0($t9)
/* 14AB38 801A4AC8 1560FFF1 */  bnez       $t3, .L801A4A90_ovl7
/* 14AB3C 801A4ACC 00000000 */   nop
/* 14AB40 801A4AD0 10000031 */  b          .L801A4B98_ovl7
/* 14AB44 801A4AD4 00000000 */   nop
/* 14AB48 801A4AD8 8D4C0000 */  lw         $t4, 0x0($t2)
.L801A4ADC_ovl7:
/* 14AB4C 801A4ADC 02036821 */  addu       $t5, $s0, $v1
/* 14AB50 801A4AE0 55800020 */  bnel       $t4, $zero, .L801A4B64_ovl7
/* 14AB54 801A4AE4 02035021 */   addu      $t2, $s0, $v1
/* 14AB58 801A4AE8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 14AB5C 801A4AEC 02637821 */  addu       $t7, $s3, $v1
/* 14AB60 801A4AF0 51C0001C */  beql       $t6, $zero, .L801A4B64_ovl7
/* 14AB64 801A4AF4 02035021 */   addu      $t2, $s0, $v1
/* 14AB68 801A4AF8 8DF80000 */  lw         $t8, 0x0($t7)
/* 14AB6C 801A4AFC 57000019 */  bnel       $t8, $zero, .L801A4B64_ovl7
/* 14AB70 801A4B00 02035021 */   addu      $t2, $s0, $v1
.L801A4B04_ovl7:
/* 14AB74 801A4B04 0C002DAF */  jal        finish_current_thread
/* 14AB78 801A4B08 24040001 */   addiu     $a0, $zero, 0x1
/* 14AB7C 801A4B0C 8E280000 */  lw         $t0, 0x0($s1)
/* 14AB80 801A4B10 8D190000 */  lw         $t9, 0x0($t0)
/* 14AB84 801A4B14 00195880 */  sll        $t3, $t9, 2
/* 14AB88 801A4B18 020B1021 */  addu       $v0, $s0, $t3
/* 14AB8C 801A4B1C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 14AB90 801A4B20 254CFFFF */  addiu      $t4, $t2, -0x1
/* 14AB94 801A4B24 AC4C0000 */  sw         $t4, 0x0($v0)
/* 14AB98 801A4B28 8D030000 */  lw         $v1, 0x0($t0)
/* 14AB9C 801A4B2C 00031880 */  sll        $v1, $v1, 2
/* 14ABA0 801A4B30 02836821 */  addu       $t5, $s4, $v1
/* 14ABA4 801A4B34 8DAE0000 */  lw         $t6, 0x0($t5)
/* 14ABA8 801A4B38 02037821 */  addu       $t7, $s0, $v1
/* 14ABAC 801A4B3C 0263C821 */  addu       $t9, $s3, $v1
/* 14ABB0 801A4B40 55C00008 */  bnel       $t6, $zero, .L801A4B64_ovl7
/* 14ABB4 801A4B44 02035021 */   addu      $t2, $s0, $v1
/* 14ABB8 801A4B48 8DF80000 */  lw         $t8, 0x0($t7)
/* 14ABBC 801A4B4C 53000005 */  beql       $t8, $zero, .L801A4B64_ovl7
/* 14ABC0 801A4B50 02035021 */   addu      $t2, $s0, $v1
/* 14ABC4 801A4B54 8F2B0000 */  lw         $t3, 0x0($t9)
/* 14ABC8 801A4B58 1160FFEA */  beqz       $t3, .L801A4B04_ovl7
/* 14ABCC 801A4B5C 00000000 */   nop
/* 14ABD0 801A4B60 02035021 */  addu       $t2, $s0, $v1
.L801A4B64_ovl7:
/* 14ABD4 801A4B64 8D4C0000 */  lw         $t4, 0x0($t2)
/* 14ABD8 801A4B68 02636821 */  addu       $t5, $s3, $v1
/* 14ABDC 801A4B6C 1180000A */  beqz       $t4, .L801A4B98_ovl7
/* 14ABE0 801A4B70 00000000 */   nop
/* 14ABE4 801A4B74 8DAE0000 */  lw         $t6, 0x0($t5)
/* 14ABE8 801A4B78 15C00007 */  bnez       $t6, .L801A4B98_ovl7
/* 14ABEC 801A4B7C 00000000 */   nop
/* 14ABF0 801A4B80 0C06937F */  jal        func_801A4DFC_ovl7
/* 14ABF4 801A4B84 8FA40048 */   lw        $a0, 0x48($sp)
/* 14ABF8 801A4B88 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 14ABFC 801A4B8C 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 14AC00 801A4B90 8D030000 */  lw         $v1, 0x0($t0)
/* 14AC04 801A4B94 00031880 */  sll        $v1, $v1, 2
.L801A4B98_ovl7:
/* 14AC08 801A4B98 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 14AC0C 801A4B9C 00230821 */  addu       $at, $at, $v1
/* 14AC10 801A4BA0 240F0001 */  addiu      $t7, $zero, 0x1
/* 14AC14 801A4BA4 AC2FC2E0 */  sw         $t7, %lo(D_800EC2E0)($at)
/* 14AC18 801A4BA8 8D030000 */  lw         $v1, 0x0($t0)
/* 14AC1C 801A4BAC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 14AC20 801A4BB0 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 14AC24 801A4BB4 00031880 */  sll        $v1, $v1, 2
/* 14AC28 801A4BB8 00230821 */  addu       $at, $at, $v1
/* 14AC2C 801A4BBC C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 14AC30 801A4BC0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 14AC34 801A4BC4 00230821 */  addu       $at, $at, $v1
/* 14AC38 801A4BC8 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 14AC3C 801A4BCC 00E33821 */  addu       $a3, $a3, $v1
/* 14AC40 801A4BD0 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 14AC44 801A4BD4 24040003 */  addiu      $a0, $zero, 0x3
/* 14AC48 801A4BD8 24050002 */  addiu      $a1, $zero, 0x2
/* 14AC4C 801A4BDC 2406006F */  addiu      $a2, $zero, 0x6F
/* 14AC50 801A4BE0 E7B00010 */  swc1       $f16, 0x10($sp)
/* 14AC54 801A4BE4 0C029FDD */  jal        func_800A7F74
/* 14AC58 801A4BE8 E7B20014 */   swc1      $f18, 0x14($sp)
/* 14AC5C 801A4BEC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 14AC60 801A4BF0 8FB00020 */  lw         $s0, 0x20($sp)
/* 14AC64 801A4BF4 8FB10024 */  lw         $s1, 0x24($sp)
/* 14AC68 801A4BF8 8FB20028 */  lw         $s2, 0x28($sp)
/* 14AC6C 801A4BFC 8FB3002C */  lw         $s3, 0x2C($sp)
/* 14AC70 801A4C00 8FB40030 */  lw         $s4, 0x30($sp)
/* 14AC74 801A4C04 03E00008 */  jr         $ra
/* 14AC78 801A4C08 27BD0048 */   addiu     $sp, $sp, 0x48
