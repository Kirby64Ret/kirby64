glabel func_8015DBE4_ovl3
/* BE624 8015DBE4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* BE628 8015DBE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE62C 8015DBEC AFA40048 */  sw         $a0, 0x48($sp)
/* BE630 8015DBF0 0C02CC56 */  jal        func_800B3158
/* BE634 8015DBF4 AFA00030 */   sw        $zero, 0x30($sp)
/* BE638 8015DBF8 14400026 */  bnez       $v0, .L8015DC94_ovl3
/* BE63C 8015DBFC 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* BE640 8015DC00 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* BE644 8015DC04 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* BE648 8015DC08 3C07800F */  lui        $a3, %hi(D_800EA520)
/* BE64C 8015DC0C 8DC20000 */  lw         $v0, 0x0($t6)
/* BE650 8015DC10 00027880 */  sll        $t7, $v0, 2
/* BE654 8015DC14 00EF3821 */  addu       $a3, $a3, $t7
/* BE658 8015DC18 8CE7A520 */  lw         $a3, %lo(D_800EA520)($a3)
/* BE65C 8015DC1C 10E00019 */  beqz       $a3, .L8015DC84_ovl3
/* BE660 8015DC20 00000000 */   nop
/* BE664 8015DC24 0C0288B5 */  jal        func_800A22D4
/* BE668 8015DC28 00E02025 */   or        $a0, $a3, $zero
/* BE66C 8015DC2C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* BE670 8015DC30 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* BE674 8015DC34 3C04800F */  lui        $a0, %hi(D_800EB4E0)
/* BE678 8015DC38 8F190000 */  lw         $t9, 0x0($t8)
/* BE67C 8015DC3C 00195080 */  sll        $t2, $t9, 2
.L8015DC40_ovl5:
/* BE680 8015DC40 008A2021 */  addu       $a0, $a0, $t2
/* BE684 8015DC44 0C0288B5 */  jal        func_800A22D4
/* BE688 8015DC48 8C84B4E0 */   lw        $a0, %lo(D_800EB4E0)($a0)
/* BE68C 8015DC4C 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* BE690 8015DC50 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* BE694 8015DC54 3C04800F */  lui        $a0, %hi(D_800EB6A0)
/* BE698 8015DC58 8D620000 */  lw         $v0, 0x0($t3)
/* BE69C 8015DC5C 00026080 */  sll        $t4, $v0, 2
.L8015DC60_ovl5:
/* BE6A0 8015DC60 008C2021 */  addu       $a0, $a0, $t4
/* BE6A4 8015DC64 8C84B6A0 */  lw         $a0, %lo(D_800EB6A0)($a0)
/* BE6A8 8015DC68 10800006 */  beqz       $a0, .L8015DC84_ovl3
/* BE6AC 8015DC6C 00000000 */   nop
/* BE6B0 8015DC70 0C0288B5 */  jal        func_800A22D4
/* BE6B4 8015DC74 00000000 */   nop
/* BE6B8 8015DC78 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* BE6BC 8015DC7C 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* BE6C0 8015DC80 8DA20000 */  lw         $v0, 0x0($t5)
.L8015DC84_ovl3:
/* BE6C4 8015DC84 0C02C640 */  jal        func_800B1900
/* BE6C8 8015DC88 3044FFFF */   andi      $a0, $v0, 0xFFFF
/* BE6CC 8015DC8C 100001E8 */  b          .L8015E430_ovl3
/* BE6D0 8015DC90 8FBF0014 */   lw        $ra, 0x14($sp)
.L8015DC94_ovl3:
/* BE6D4 8015DC94 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BE6D8 8015DC98 3C0E800F */  lui        $t6, %hi(D_800E9720)
/* BE6DC 8015DC9C 25CE9720 */  addiu      $t6, $t6, %lo(D_800E9720)
/* BE6E0 8015DCA0 8C680000 */  lw         $t0, 0x0($v1)
/* BE6E4 8015DCA4 3C0F800E */  lui        $t7, %hi(D_800E6310)
/* BE6E8 8015DCA8 3C07800F */  lui        $a3, %hi(D_800EA520)
/* BE6EC 8015DCAC 00084080 */  sll        $t0, $t0, 2
/* BE6F0 8015DCB0 010E2021 */  addu       $a0, $t0, $t6
/* BE6F4 8015DCB4 8C820000 */  lw         $v0, 0x0($a0)
.L8015DCB8_ovl5:
/* BE6F8 8015DCB8 01E87821 */  addu       $t7, $t7, $t0
/* BE6FC 8015DCBC 00E83821 */  addu       $a3, $a3, $t0
/* BE700 8015DCC0 10400004 */  beqz       $v0, .L8015DCD4_ovl3
/* BE704 8015DCC4 00000000 */   nop
/* BE708 8015DCC8 8DEF6310 */  lw         $t7, %lo(D_800E6310)($t7)
/* BE70C 8015DCCC 11E0007F */  beqz       $t7, .L8015DECC_ovl3
/* BE710 8015DCD0 00000000 */   nop
.L8015DCD4_ovl3:
/* BE714 8015DCD4 8CE7A520 */  lw         $a3, %lo(D_800EA520)($a3)
/* BE718 8015DCD8 10E00043 */  beqz       $a3, .L8015DDE8_ovl3
/* BE71C 8015DCDC 00000000 */   nop
/* BE720 8015DCE0 0C0287CC */  jal        func_800A1F30
/* BE724 8015DCE4 00E02025 */   or        $a0, $a3, $zero
/* BE728 8015DCE8 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* BE72C 8015DCEC 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* BE730 8015DCF0 3C04800F */  lui        $a0, %hi(D_800EB4E0)
/* BE734 8015DCF4 8F190000 */  lw         $t9, 0x0($t8)
/* BE738 8015DCF8 00195080 */  sll        $t2, $t9, 2
.L8015DCFC_ovl5:
/* BE73C 8015DCFC 008A2021 */  addu       $a0, $a0, $t2
/* BE740 8015DD00 0C0287CC */  jal        func_800A1F30
/* BE744 8015DD04 8C84B4E0 */   lw        $a0, %lo(D_800EB4E0)($a0)
/* BE748 8015DD08 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BE74C 8015DD0C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BE750 8015DD10 3C0D800F */  lui        $t5, %hi(D_800EB6A0)
/* BE754 8015DD14 25ADB6A0 */  addiu      $t5, $t5, %lo(D_800EB6A0)
/* BE758 8015DD18 8C6B0000 */  lw         $t3, 0x0($v1)
/* BE75C 8015DD1C 000B6080 */  sll        $t4, $t3, 2
/* BE760 8015DD20 018D1021 */  addu       $v0, $t4, $t5
/* BE764 8015DD24 8C440000 */  lw         $a0, 0x0($v0)
/* BE768 8015DD28 5080000B */  beql       $a0, $zero, .L8015DD58_ovl5
/* BE76C 8015DD2C AC400000 */   sw        $zero, 0x0($v0)
/* BE770 8015DD30 0C0287CC */  jal        func_800A1F30
/* BE774 8015DD34 00000000 */   nop
/* BE778 8015DD38 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BE77C 8015DD3C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BE780 8015DD40 3C18800F */  lui        $t8, %hi(D_800EB6A0)
/* BE784 8015DD44 2718B6A0 */  addiu      $t8, $t8, %lo(D_800EB6A0)
/* BE788 8015DD48 8C6E0000 */  lw         $t6, 0x0($v1)
/* BE78C 8015DD4C 000E7880 */  sll        $t7, $t6, 2
/* BE790 8015DD50 01F81021 */  addu       $v0, $t7, $t8
/* BE794 8015DD54 AC400000 */  sw         $zero, 0x0($v0)
.L8015DD58_ovl5:
/* BE798 8015DD58 8C680000 */  lw         $t0, 0x0($v1)
/* BE79C 8015DD5C 3C04800F */  lui        $a0, %hi(D_800EB6A0)
/* BE7A0 8015DD60 3C01800F */  lui        $at, %hi(D_800EB4E0)
/* BE7A4 8015DD64 00084080 */  sll        $t0, $t0, 2
/* BE7A8 8015DD68 00882021 */  addu       $a0, $a0, $t0
/* BE7AC 8015DD6C 8C84B6A0 */  lw         $a0, %lo(D_800EB6A0)($a0)
/* BE7B0 8015DD70 00280821 */  addu       $at, $at, $t0
/* BE7B4 8015DD74 44802000 */  mtc1       $zero, $f4
.L8015DD78_ovl5:
/* BE7B8 8015DD78 AC24B4E0 */  sw         $a0, %lo(D_800EB4E0)($at)
/* BE7BC 8015DD7C 8C790000 */  lw         $t9, 0x0($v1)
/* BE7C0 8015DD80 3C01800F */  lui        $at, %hi(D_800EA520)
/* BE7C4 8015DD84 3C09800E */  lui        $t1, %hi(D_800E6690)
/* BE7C8 8015DD88 00195080 */  sll        $t2, $t9, 2
/* BE7CC 8015DD8C 002A0821 */  addu       $at, $at, $t2
/* BE7D0 8015DD90 AC24A520 */  sw         $a0, %lo(D_800EA520)($at)
/* BE7D4 8015DD94 8C6B0000 */  lw         $t3, 0x0($v1)
/* BE7D8 8015DD98 25296690 */  addiu      $t1, $t1, %lo(D_800E6690)
/* BE7DC 8015DD9C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BE7E0 8015DDA0 000B6080 */  sll        $t4, $t3, 2
/* BE7E4 8015DDA4 012C6821 */  addu       $t5, $t1, $t4
/* BE7E8 8015DDA8 E5A40000 */  swc1       $f4, 0x0($t5)
/* BE7EC 8015DDAC 8C680000 */  lw         $t0, 0x0($v1)
/* BE7F0 8015DDB0 00084080 */  sll        $t0, $t0, 2
/* BE7F4 8015DDB4 01287021 */  addu       $t6, $t1, $t0
/* BE7F8 8015DDB8 C5C60000 */  lwc1       $f6, 0x0($t6)
/* BE7FC 8015DDBC 00280821 */  addu       $at, $at, $t0
/* BE800 8015DDC0 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* BE804 8015DDC4 8C6F0000 */  lw         $t7, 0x0($v1)
/* BE808 8015DDC8 3C018019 */  lui        $at, %hi(D_8019708C_ovl3)
/* BE80C 8015DDCC C428708C */  lwc1       $f8, %lo(D_8019708C_ovl3)($at)
.L8015DDD0_ovl5:
/* BE810 8015DDD0 3C01800E */  lui        $at, %hi(D_800E6850)
.L8015DDD4_ovl5:
/* BE814 8015DDD4 000FC080 */  sll        $t8, $t7, 2
/* BE818 8015DDD8 00380821 */  addu       $at, $at, $t8
/* BE81C 8015DDDC E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* BE820 8015DDE0 8C680000 */  lw         $t0, 0x0($v1)
/* BE824 8015DDE4 00084080 */  sll        $t0, $t0, 2
.L8015DDE8_ovl3:
/* BE828 8015DDE8 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* BE82C 8015DDEC 24A5A6E0 */  addiu      $a1, $a1, %lo(D_800EA6E0)
/* BE830 8015DDF0 00A82021 */  addu       $a0, $a1, $t0
/* BE834 8015DDF4 3C013E00 */  lui        $at, (0x3E000000 >> 16)
.L8015DDF8_ovl5:
/* BE838 8015DDF8 44818000 */  mtc1       $at, $f16
/* BE83C 8015DDFC C48A0000 */  lwc1       $f10, 0x0($a0)
/* BE840 8015DE00 44802000 */  mtc1       $zero, $f4
/* BE844 8015DE04 46105481 */  sub.s      $f18, $f10, $f16
/* BE848 8015DE08 E4920000 */  swc1       $f18, 0x0($a0)
/* BE84C 8015DE0C 8C620000 */  lw         $v0, 0x0($v1)
/* BE850 8015DE10 00024080 */  sll        $t0, $v0, 2
/* BE854 8015DE14 00A8C821 */  addu       $t9, $a1, $t0
/* BE858 8015DE18 C7260000 */  lwc1       $f6, 0x0($t9)
/* BE85C 8015DE1C 46062032 */  c.eq.s     $f4, $f6
/* BE860 8015DE20 00000000 */  nop
/* BE864 8015DE24 45000009 */  bc1f       .L8015DE4C_ovl3
/* BE868 8015DE28 00000000 */   nop
/* BE86C 8015DE2C 0C02C640 */  jal        func_800B1900
/* BE870 8015DE30 3044FFFF */   andi      $a0, $v0, 0xFFFF
.L8015DE34_ovl5:
/* BE874 8015DE34 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BE878 8015DE38 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BE87C 8015DE3C 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* BE880 8015DE40 24A5A6E0 */  addiu      $a1, $a1, %lo(D_800EA6E0)
/* BE884 8015DE44 8C680000 */  lw         $t0, 0x0($v1)
/* BE888 8015DE48 00084080 */  sll        $t0, $t0, 2
.L8015DE4C_ovl3:
/* BE88C 8015DE4C 3C04800F */  lui        $a0, %hi(D_800EA8A0)
/* BE890 8015DE50 3C018019 */  lui        $at, %hi(D_80197090_ovl3)
/* BE894 8015DE54 C4227090 */  lwc1       $f2, %lo(D_80197090_ovl3)($at)
/* BE898 8015DE58 2484A8A0 */  addiu      $a0, $a0, %lo(D_800EA8A0)
/* BE89C 8015DE5C 00881021 */  addu       $v0, $a0, $t0
/* BE8A0 8015DE60 3C018019 */  lui        $at, %hi(D_80197094_ovl3)
/* BE8A4 8015DE64 C42A7094 */  lwc1       $f10, %lo(D_80197094_ovl3)($at)
/* BE8A8 8015DE68 C4480000 */  lwc1       $f8, 0x0($v0)
.L8015DE6C_ovl5:
/* BE8AC 8015DE6C 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BE8B0 8015DE70 460A4401 */  sub.s      $f16, $f8, $f10
/* BE8B4 8015DE74 E4500000 */  swc1       $f16, 0x0($v0)
/* BE8B8 8015DE78 8C680000 */  lw         $t0, 0x0($v1)
/* BE8BC 8015DE7C 00084080 */  sll        $t0, $t0, 2
/* BE8C0 8015DE80 00A85021 */  addu       $t2, $a1, $t0
/* BE8C4 8015DE84 C5520000 */  lwc1       $f18, 0x0($t2)
/* BE8C8 8015DE88 00280821 */  addu       $at, $at, $t0
/* BE8CC 8015DE8C 46029002 */  mul.s      $f0, $f18, $f2
/* BE8D0 8015DE90 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* BE8D4 8015DE94 8C6B0000 */  lw         $t3, 0x0($v1)
/* BE8D8 8015DE98 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* BE8DC 8015DE9C 000B6080 */  sll        $t4, $t3, 2
/* BE8E0 8015DEA0 002C0821 */  addu       $at, $at, $t4
/* BE8E4 8015DEA4 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* BE8E8 8015DEA8 8C680000 */  lw         $t0, 0x0($v1)
/* BE8EC 8015DEAC 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* BE8F0 8015DEB0 00084080 */  sll        $t0, $t0, 2
/* BE8F4 8015DEB4 00886821 */  addu       $t5, $a0, $t0
/* BE8F8 8015DEB8 C5A40000 */  lwc1       $f4, 0x0($t5)
/* BE8FC 8015DEBC 00280821 */  addu       $at, $at, $t0
/* BE900 8015DEC0 46022182 */  mul.s      $f6, $f4, $f2
/* BE904 8015DEC4 10000159 */  b          .L8015E42C_ovl3
/* BE908 8015DEC8 E42648D0 */   swc1      $f6, %lo(gEntitiesScaleZArray)($at)
.L8015DECC_ovl3:
/* BE90C 8015DECC 10400005 */  beqz       $v0, .L8015DEE4_ovl3
/* BE910 8015DED0 3C01800E */   lui       $at, %hi(D_800E17D0)
/* BE914 8015DED4 244EFFFF */  addiu      $t6, $v0, -0x1
/* BE918 8015DED8 AC8E0000 */  sw         $t6, 0x0($a0)
/* BE91C 8015DEDC 8C680000 */  lw         $t0, 0x0($v1)
/* BE920 8015DEE0 00084080 */  sll        $t0, $t0, 2
.L8015DEE4_ovl3:
/* BE924 8015DEE4 00280821 */  addu       $at, $at, $t0
/* BE928 8015DEE8 C42817D0 */  lwc1       $f8, %lo(D_800E17D0)($at)
/* BE92C 8015DEEC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L8015DEF0_ovl5:
/* BE930 8015DEF0 00280821 */  addu       $at, $at, $t0
/* BE934 8015DEF4 E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* BE938 8015DEF8 8C6F0000 */  lw         $t7, 0x0($v1)
/* BE93C 8015DEFC 3C0A8019 */  lui        $t2, %hi(D_80197F60_ovl3)
/* BE940 8015DF00 254A7F60 */  addiu      $t2, $t2, %lo(D_80197F60_ovl3)
/* BE944 8015DF04 000FC080 */  sll        $t8, $t7, 2
/* BE948 8015DF08 030FC023 */  subu       $t8, $t8, $t7
/* BE94C 8015DF0C 0018C0C0 */  sll        $t8, $t8, 3
/* BE950 8015DF10 030FC023 */  subu       $t8, $t8, $t7
/* BE954 8015DF14 0018C080 */  sll        $t8, $t8, 2
/* BE958 8015DF18 2719FE90 */  addiu      $t9, $t8, -0x170
/* BE95C 8015DF1C 0C055599 */  jal        func_80155664_ovl3
/* BE960 8015DF20 032A2021 */   addu      $a0, $t9, $t2
/* BE964 8015DF24 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BE968 8015DF28 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BE96C 8015DF2C 3C01800F */  lui        $at, %hi(D_800E8920)
/* BE970 8015DF30 3C04800F */  lui        $a0, %hi(D_800EC2E0)
/* BE974 8015DF34 8C6B0000 */  lw         $t3, 0x0($v1)
/* BE978 8015DF38 000B6080 */  sll        $t4, $t3, 2
.L8015DF3C_ovl5:
/* BE97C 8015DF3C 002C0821 */  addu       $at, $at, $t4
/* BE980 8015DF40 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* BE984 8015DF44 8C6D0000 */  lw         $t5, 0x0($v1)
/* BE988 8015DF48 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* BE98C 8015DF4C 000D7080 */  sll        $t6, $t5, 2
/* BE990 8015DF50 002E0821 */  addu       $at, $at, $t6
/* BE994 8015DF54 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* BE998 8015DF58 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* BE99C 8015DF5C E7AA003C */  swc1       $f10, 0x3C($sp)
/* BE9A0 8015DF60 8C6F0000 */  lw         $t7, 0x0($v1)
/* BE9A4 8015DF64 000FC080 */  sll        $t8, $t7, 2
/* BE9A8 8015DF68 00380821 */  addu       $at, $at, $t8
/* BE9AC 8015DF6C C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
.L8015DF70_ovl5:
/* BE9B0 8015DF70 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* BE9B4 8015DF74 E7B00040 */  swc1       $f16, 0x40($sp)
/* BE9B8 8015DF78 8C790000 */  lw         $t9, 0x0($v1)
/* BE9BC 8015DF7C 00195080 */  sll        $t2, $t9, 2
/* BE9C0 8015DF80 002A0821 */  addu       $at, $at, $t2
/* BE9C4 8015DF84 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* BE9C8 8015DF88 E7B20044 */  swc1       $f18, 0x44($sp)
/* BE9CC 8015DF8C 8C680000 */  lw         $t0, 0x0($v1)
/* BE9D0 8015DF90 00084080 */  sll        $t0, $t0, 2
/* BE9D4 8015DF94 00882021 */  addu       $a0, $a0, $t0
/* BE9D8 8015DF98 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
/* BE9DC 8015DF9C 10800049 */  beqz       $a0, .L8015E0C4_ovl3
/* BE9E0 8015DFA0 24010001 */   addiu     $at, $zero, 0x1
.L8015DFA4_ovl5:
/* BE9E4 8015DFA4 14810088 */  bne        $a0, $at, .L8015E1C8_ovl3
/* BE9E8 8015DFA8 3C054220 */   lui       $a1, (0x42200000 >> 16)
.L8015DFAC_ovl5:
/* BE9EC 8015DFAC 27A4003C */  addiu      $a0, $sp, 0x3C
/* BE9F0 8015DFB0 0C05560E */  jal        func_80155838_ovl3
/* BE9F4 8015DFB4 24060005 */   addiu     $a2, $zero, 0x5
/* BE9F8 8015DFB8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BE9FC 8015DFBC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BEA00 8015DFC0 AFA20030 */  sw         $v0, 0x30($sp)
/* BEA04 8015DFC4 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
glabel func_8015DFC8_ovl5
/* BEA08 8015DFC8 8C680000 */  lw         $t0, 0x0($v1)
/* BEA0C 8015DFCC 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* BEA10 8015DFD0 00084080 */  sll        $t0, $t0, 2
/* BEA14 8015DFD4 01685821 */  addu       $t3, $t3, $t0
/* BEA18 8015DFD8 8D6B8AE0 */  lw         $t3, %lo(D_800E8AE0)($t3)
/* BEA1C 8015DFDC 316C0004 */  andi       $t4, $t3, 0x4
/* BEA20 8015DFE0 55800006 */  bnel       $t4, $zero, .L8015DFFC_ovl3
/* BEA24 8015DFE4 44810000 */   mtc1      $at, $f0
/* BEA28 8015DFE8 3C014120 */  lui        $at, (0x41200000 >> 16)
/* BEA2C 8015DFEC 44810000 */  mtc1       $at, $f0
/* BEA30 8015DFF0 10000003 */  b          .L8015E000_ovl3
/* BEA34 8015DFF4 00000000 */   nop
/* BEA38 8015DFF8 44810000 */  mtc1       $at, $f0
.L8015DFFC_ovl3:
/* BEA3C 8015DFFC 00000000 */  nop
.L8015E000_ovl3:
/* BEA40 8015E000 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BEA44 8015E004 00280821 */  addu       $at, $at, $t0
/* BEA48 8015E008 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* BEA4C 8015E00C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BEA50 8015E010 00280821 */  addu       $at, $at, $t0
/* BEA54 8015E014 46040182 */  mul.s      $f6, $f0, $f4
/* BEA58 8015E018 44804000 */  mtc1       $zero, $f8
/* BEA5C 8015E01C 3C09800E */  lui        $t1, %hi(D_800E6690)
/* BEA60 8015E020 25296690 */  addiu      $t1, $t1, %lo(D_800E6690)
/* BEA64 8015E024 3C0C801A */  lui        $t4, %hi(D_801982F8_ovl3)
/* BEA68 8015E028 258C82F8 */  addiu      $t4, $t4, %lo(D_801982F8_ovl3)
/* BEA6C 8015E02C 3C058019 */  lui        $a1, %hi(D_801935A8_ovl3)
/* BEA70 8015E030 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* BEA74 8015E034 8C6D0000 */  lw         $t5, 0x0($v1)
/* BEA78 8015E038 3C014120 */  lui        $at, (0x41200000 >> 16)
/* BEA7C 8015E03C 44815000 */  mtc1       $at, $f10
/* BEA80 8015E040 000D7080 */  sll        $t6, $t5, 2
/* BEA84 8015E044 012E7821 */  addu       $t7, $t1, $t6
/* BEA88 8015E048 E5E80000 */  swc1       $f8, 0x0($t7)
/* BEA8C 8015E04C 8C780000 */  lw         $t8, 0x0($v1)
/* BEA90 8015E050 3C01800E */  lui        $at, %hi(D_800E6850)
/* BEA94 8015E054 24A535A8 */  addiu      $a1, $a1, %lo(D_801935A8_ovl3)
/* BEA98 8015E058 0018C880 */  sll        $t9, $t8, 2
/* BEA9C 8015E05C 00390821 */  addu       $at, $at, $t9
/* BEAA0 8015E060 E42A6850 */  swc1       $f10, %lo(D_800E6850)($at)
/* BEAA4 8015E064 8C620000 */  lw         $v0, 0x0($v1)
/* BEAA8 8015E068 00003025 */  or         $a2, $zero, $zero
/* BEAAC 8015E06C 00025140 */  sll        $t2, $v0, 5
/* BEAB0 8015E070 254BFF80 */  addiu      $t3, $t2, -0x80
/* BEAB4 8015E074 016C2021 */  addu       $a0, $t3, $t4
/* BEAB8 8015E078 0C055754 */  jal        func_80155D50_ovl3
/* BEABC 8015E07C 00403825 */   or        $a3, $v0, $zero
/* BEAC0 8015E080 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* BEAC4 8015E084 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* BEAC8 8015E088 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* BEACC 8015E08C 3C048019 */  lui        $a0, %hi(D_80190CA0_ovl3)
/* BEAD0 8015E090 8DAE0000 */  lw         $t6, 0x0($t5)
/* BEAD4 8015E094 24840CA0 */  addiu      $a0, $a0, %lo(D_80190CA0_ovl3)
/* BEAD8 8015E098 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* BEADC 8015E09C 000E7880 */  sll        $t7, $t6, 2
/* BEAE0 8015E0A0 030FC021 */  addu       $t8, $t8, $t7
/* BEAE4 8015E0A4 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* BEAE8 8015E0A8 0C058800 */  jal        func_80162000_ovl3
/* BEAEC 8015E0AC 8F050004 */   lw        $a1, 0x4($t8)
/* BEAF0 8015E0B0 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* BEAF4 8015E0B4 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* BEAF8 8015E0B8 8F280000 */  lw         $t0, 0x0($t9)
/* BEAFC 8015E0BC 10000042 */  b          .L8015E1C8_ovl3
/* BEB00 8015E0C0 00084080 */   sll       $t0, $t0, 2
.L8015E0C4_ovl3:
/* BEB04 8015E0C4 27A4003C */  addiu      $a0, $sp, 0x3C
/* BEB08 8015E0C8 3C05C220 */  lui        $a1, (0xC2200000 >> 16)
/* BEB0C 8015E0CC 0C05560E */  jal        func_80155838_ovl3
/* BEB10 8015E0D0 24060003 */   addiu     $a2, $zero, 0x3
/* BEB14 8015E0D4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L8015E0D8_ovl5:
/* BEB18 8015E0D8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BEB1C 8015E0DC AFA20030 */  sw         $v0, 0x30($sp)
/* BEB20 8015E0E0 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
/* BEB24 8015E0E4 8C680000 */  lw         $t0, 0x0($v1)
/* BEB28 8015E0E8 44802000 */  mtc1       $zero, $f4
/* BEB2C 8015E0EC 3C01C108 */  lui        $at, (0xC1080000 >> 16)
/* BEB30 8015E0F0 00084080 */  sll        $t0, $t0, 2
/* BEB34 8015E0F4 01485021 */  addu       $t2, $t2, $t0
/* BEB38 8015E0F8 8D4A8AE0 */  lw         $t2, %lo(D_800E8AE0)($t2)
/* BEB3C 8015E0FC 3C058019 */  lui        $a1, %hi(D_801935E4_ovl3)
/* BEB40 8015E100 314B0004 */  andi       $t3, $t2, 0x4
/* BEB44 8015E104 15600007 */  bnez       $t3, .L8015E124_ovl3
/* BEB48 8015E108 3C0A801A */   lui       $t2, %hi(D_801982F8_ovl3)
/* BEB4C 8015E10C 3C01C188 */  lui        $at, (0xC1880000 >> 16)
/* BEB50 8015E110 44818000 */  mtc1       $at, $f16
/* BEB54 8015E114 3C01800E */  lui        $at, %hi(D_800E3210)
/* BEB58 8015E118 00280821 */  addu       $at, $at, $t0
/* BEB5C 8015E11C 10000005 */  b          .L8015E134_ovl3
/* BEB60 8015E120 E4303210 */   swc1      $f16, %lo(D_800E3210)($at)
.L8015E124_ovl3:
/* BEB64 8015E124 44819000 */  mtc1       $at, $f18
/* BEB68 8015E128 3C01800E */  lui        $at, %hi(D_800E3210)
/* BEB6C 8015E12C 00280821 */  addu       $at, $at, $t0
/* BEB70 8015E130 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
.L8015E134_ovl3:
/* BEB74 8015E134 8C6C0000 */  lw         $t4, 0x0($v1)
/* BEB78 8015E138 3C01800E */  lui        $at, %hi(D_800E3750)
/* BEB7C 8015E13C 254A82F8 */  addiu      $t2, $t2, %lo(D_801982F8_ovl3)
/* BEB80 8015E140 000C6880 */  sll        $t5, $t4, 2
/* BEB84 8015E144 002D0821 */  addu       $at, $at, $t5
/* BEB88 8015E148 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
/* BEB8C 8015E14C 8C6E0000 */  lw         $t6, 0x0($v1)
/* BEB90 8015E150 3C014188 */  lui        $at, (0x41880000 >> 16)
/* BEB94 8015E154 44813000 */  mtc1       $at, $f6
/* BEB98 8015E158 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BEB9C 8015E15C 000E7880 */  sll        $t7, $t6, 2
/* BEBA0 8015E160 002F0821 */  addu       $at, $at, $t7
/* BEBA4 8015E164 E4263C90 */  swc1       $f6, %lo(D_800E3C90)($at)
/* BEBA8 8015E168 8C620000 */  lw         $v0, 0x0($v1)
/* BEBAC 8015E16C 24A535E4 */  addiu      $a1, $a1, %lo(D_801935E4_ovl3)
/* BEBB0 8015E170 00003025 */  or         $a2, $zero, $zero
/* BEBB4 8015E174 0002C140 */  sll        $t8, $v0, 5
/* BEBB8 8015E178 2719FF80 */  addiu      $t9, $t8, -0x80
/* BEBBC 8015E17C 032A2021 */  addu       $a0, $t9, $t2
/* BEBC0 8015E180 0C055754 */  jal        func_80155D50_ovl3
/* BEBC4 8015E184 00403825 */   or        $a3, $v0, $zero
/* BEBC8 8015E188 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* BEBCC 8015E18C 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* BEBD0 8015E190 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
/* BEBD4 8015E194 3C048019 */  lui        $a0, %hi(D_80190CE4_ovl3)
/* BEBD8 8015E198 8D6C0000 */  lw         $t4, 0x0($t3)
/* BEBDC 8015E19C 24840CE4 */  addiu      $a0, $a0, %lo(D_80190CE4_ovl3)
/* BEBE0 8015E1A0 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
.L8015E1A4_ovl5:
/* BEBE4 8015E1A4 000C6880 */  sll        $t5, $t4, 2
/* BEBE8 8015E1A8 01CD7021 */  addu       $t6, $t6, $t5
/* BEBEC 8015E1AC 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
/* BEBF0 8015E1B0 0C058800 */  jal        func_80162000_ovl3
/* BEBF4 8015E1B4 8DC50004 */   lw        $a1, 0x4($t6)
/* BEBF8 8015E1B8 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* BEBFC 8015E1BC 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* BEC00 8015E1C0 8DE80000 */  lw         $t0, 0x0($t7)
/* BEC04 8015E1C4 00084080 */  sll        $t0, $t0, 2
.L8015E1C8_ovl3:
/* BEC08 8015E1C8 8FB80030 */  lw         $t8, 0x30($sp)
/* BEC0C 8015E1CC 13000012 */  beqz       $t8, .L8015E218_ovl3
/* BEC10 8015E1D0 3C19800F */   lui       $t9, %hi(D_800EB6A0)
.L8015E1D4_ovl5:
/* BEC14 8015E1D4 0328C821 */  addu       $t9, $t9, $t0
/* BEC18 8015E1D8 8F39B6A0 */  lw         $t9, %lo(D_800EB6A0)($t9)
/* BEC1C 8015E1DC 24040002 */  addiu      $a0, $zero, 0x2
/* BEC20 8015E1E0 24050001 */  addiu      $a1, $zero, 0x1
/* BEC24 8015E1E4 1720000C */  bnez       $t9, .L8015E218_ovl3
/* BEC28 8015E1E8 00000000 */   nop
/* BEC2C 8015E1EC 0C02A08D */  jal        func_800A8234
/* BEC30 8015E1F0 2406004D */   addiu     $a2, $zero, 0x4D
.L8015E1F4_ovl5:
/* BEC34 8015E1F4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BEC38 8015E1F8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BEC3C 8015E1FC 3C01800F */  lui        $at, %hi(D_800EB6A0)
/* BEC40 8015E200 8C6A0000 */  lw         $t2, 0x0($v1)
/* BEC44 8015E204 000A5880 */  sll        $t3, $t2, 2
/* BEC48 8015E208 002B0821 */  addu       $at, $at, $t3
/* BEC4C 8015E20C AC22B6A0 */  sw         $v0, %lo(D_800EB6A0)($at)
/* BEC50 8015E210 8C680000 */  lw         $t0, 0x0($v1)
/* BEC54 8015E214 00084080 */  sll        $t0, $t0, 2
.L8015E218_ovl3:
/* BEC58 8015E218 3C07800F */  lui        $a3, %hi(D_800EA520)
/* BEC5C 8015E21C 00E83821 */  addu       $a3, $a3, $t0
/* BEC60 8015E220 8CE7A520 */  lw         $a3, %lo(D_800EA520)($a3)
/* BEC64 8015E224 10E0006A */  beqz       $a3, .L8015E3D0_ovl3
/* BEC68 8015E228 3C0C800E */   lui       $t4, %hi(D_800DFBD0)
/* BEC6C 8015E22C 01886021 */  addu       $t4, $t4, $t0
/* BEC70 8015E230 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* BEC74 8015E234 3C02800F */  lui        $v0, %hi(D_800EB4E0)
/* BEC78 8015E238 00481021 */  addu       $v0, $v0, $t0
/* BEC7C 8015E23C 8C42B4E0 */  lw         $v0, %lo(D_800EB4E0)($v0)
/* BEC80 8015E240 8D850004 */  lw         $a1, 0x4($t4)
/* BEC84 8015E244 AFA70038 */  sw         $a3, 0x38($sp)
/* BEC88 8015E248 27A4003C */  addiu      $a0, $sp, 0x3C
/* BEC8C 8015E24C 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* BEC90 8015E250 0C02C8D0 */  jal        func_800B2340
/* BEC94 8015E254 AFA20034 */   sw        $v0, 0x34($sp)
/* BEC98 8015E258 8FA20034 */  lw         $v0, 0x34($sp)
/* BEC9C 8015E25C C7A8003C */  lwc1       $f8, 0x3C($sp)
/* BECA0 8015E260 8FA30038 */  lw         $v1, 0x38($sp)
/* BECA4 8015E264 8C4D004C */  lw         $t5, 0x4C($v0)
/* BECA8 8015E268 27A4003C */  addiu      $a0, $sp, 0x3C
/* BECAC 8015E26C 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* BECB0 8015E270 E5A80004 */  swc1       $f8, 0x4($t5)
/* BECB4 8015E274 8C4E004C */  lw         $t6, 0x4C($v0)
/* BECB8 8015E278 8C6F004C */  lw         $t7, 0x4C($v1)
/* BECBC 8015E27C C5CA0004 */  lwc1       $f10, 0x4($t6)
/* BECC0 8015E280 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* BECC4 8015E284 E5EA0004 */  swc1       $f10, 0x4($t7)
/* BECC8 8015E288 C7B00040 */  lwc1       $f16, 0x40($sp)
.L8015E28C_ovl5:
/* BECCC 8015E28C 8C58004C */  lw         $t8, 0x4C($v0)
.L8015E290_ovl5:
/* BECD0 8015E290 E7100008 */  swc1       $f16, 0x8($t8)
/* BECD4 8015E294 8C59004C */  lw         $t9, 0x4C($v0)
/* BECD8 8015E298 8C6A004C */  lw         $t2, 0x4C($v1)
/* BECDC 8015E29C C7320008 */  lwc1       $f18, 0x8($t9)
/* BECE0 8015E2A0 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* BECE4 8015E2A4 E5520008 */  swc1       $f18, 0x8($t2)
/* BECE8 8015E2A8 C7A40044 */  lwc1       $f4, 0x44($sp)
/* BECEC 8015E2AC 8C4B004C */  lw         $t3, 0x4C($v0)
/* BECF0 8015E2B0 E564000C */  swc1       $f4, 0xC($t3)
/* BECF4 8015E2B4 8C4C004C */  lw         $t4, 0x4C($v0)
/* BECF8 8015E2B8 8C6D004C */  lw         $t5, 0x4C($v1)
.L8015E2BC_ovl5:
/* BECFC 8015E2BC C586000C */  lwc1       $f6, 0xC($t4)
/* BED00 8015E2C0 E5A6000C */  swc1       $f6, 0xC($t5)
/* BED04 8015E2C4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* BED08 8015E2C8 8DCF0000 */  lw         $t7, 0x0($t6)
/* BED0C 8015E2CC 000FC080 */  sll        $t8, $t7, 2
/* BED10 8015E2D0 0338C821 */  addu       $t9, $t9, $t8
/* BED14 8015E2D4 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* BED18 8015E2D8 0C02C9B6 */  jal        func_800B26D8
/* BED1C 8015E2DC 8F250004 */   lw        $a1, 0x4($t9)
/* BED20 8015E2E0 8FA20034 */  lw         $v0, 0x34($sp)
/* BED24 8015E2E4 C7A8003C */  lwc1       $f8, 0x3C($sp)
/* BED28 8015E2E8 8FA30038 */  lw         $v1, 0x38($sp)
/* BED2C 8015E2EC 8C4A004C */  lw         $t2, 0x4C($v0)
/* BED30 8015E2F0 3C04800F */  lui        $a0, %hi(D_800EB6A0)
/* BED34 8015E2F4 E5480010 */  swc1       $f8, 0x10($t2)
/* BED38 8015E2F8 8C4B004C */  lw         $t3, 0x4C($v0)
/* BED3C 8015E2FC 8C6C004C */  lw         $t4, 0x4C($v1)
/* BED40 8015E300 C56A0010 */  lwc1       $f10, 0x10($t3)
/* BED44 8015E304 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* BED48 8015E308 E58A0010 */  swc1       $f10, 0x10($t4)
/* BED4C 8015E30C C7B00040 */  lwc1       $f16, 0x40($sp)
/* BED50 8015E310 8C4D004C */  lw         $t5, 0x4C($v0)
/* BED54 8015E314 E5B00014 */  swc1       $f16, 0x14($t5)
/* BED58 8015E318 8C4E004C */  lw         $t6, 0x4C($v0)
/* BED5C 8015E31C 8C6F004C */  lw         $t7, 0x4C($v1)
/* BED60 8015E320 C5D20014 */  lwc1       $f18, 0x14($t6)
/* BED64 8015E324 E5F20014 */  swc1       $f18, 0x14($t7)
/* BED68 8015E328 C7A40044 */  lwc1       $f4, 0x44($sp)
/* BED6C 8015E32C 8C58004C */  lw         $t8, 0x4C($v0)
/* BED70 8015E330 E7040018 */  swc1       $f4, 0x18($t8)
/* BED74 8015E334 8C59004C */  lw         $t9, 0x4C($v0)
/* BED78 8015E338 8C6A004C */  lw         $t2, 0x4C($v1)
/* BED7C 8015E33C C7260018 */  lwc1       $f6, 0x18($t9)
/* BED80 8015E340 E5460018 */  swc1       $f6, 0x18($t2)
/* BED84 8015E344 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* BED88 8015E348 8D680000 */  lw         $t0, 0x0($t3)
/* BED8C 8015E34C 00084080 */  sll        $t0, $t0, 2
/* BED90 8015E350 00882021 */  addu       $a0, $a0, $t0
/* BED94 8015E354 8C84B6A0 */  lw         $a0, %lo(D_800EB6A0)($a0)
/* BED98 8015E358 1080001D */  beqz       $a0, .L8015E3D0_ovl3
/* BED9C 8015E35C 00000000 */   nop
/* BEDA0 8015E360 8C6C004C */  lw         $t4, 0x4C($v1)
/* BEDA4 8015E364 8C8D004C */  lw         $t5, 0x4C($a0)
/* BEDA8 8015E368 C5880004 */  lwc1       $f8, 0x4($t4)
/* BEDAC 8015E36C E5A80004 */  swc1       $f8, 0x4($t5)
/* BEDB0 8015E370 8C6E004C */  lw         $t6, 0x4C($v1)
/* BEDB4 8015E374 8C8F004C */  lw         $t7, 0x4C($a0)
/* BEDB8 8015E378 C5CA0008 */  lwc1       $f10, 0x8($t6)
/* BEDBC 8015E37C E5EA0008 */  swc1       $f10, 0x8($t7)
/* BEDC0 8015E380 8C78004C */  lw         $t8, 0x4C($v1)
/* BEDC4 8015E384 8C99004C */  lw         $t9, 0x4C($a0)
/* BEDC8 8015E388 C710000C */  lwc1       $f16, 0xC($t8)
/* BEDCC 8015E38C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
.L8015E390_ovl5:
/* BEDD0 8015E390 E730000C */  swc1       $f16, 0xC($t9)
/* BEDD4 8015E394 8C6A004C */  lw         $t2, 0x4C($v1)
/* BEDD8 8015E398 8C8B004C */  lw         $t3, 0x4C($a0)
/* BEDDC 8015E39C C5520010 */  lwc1       $f18, 0x10($t2)
/* BEDE0 8015E3A0 E5720010 */  swc1       $f18, 0x10($t3)
/* BEDE4 8015E3A4 8C6C004C */  lw         $t4, 0x4C($v1)
/* BEDE8 8015E3A8 8C8D004C */  lw         $t5, 0x4C($a0)
/* BEDEC 8015E3AC C5840014 */  lwc1       $f4, 0x14($t4)
/* BEDF0 8015E3B0 E5A40014 */  swc1       $f4, 0x14($t5)
/* BEDF4 8015E3B4 8C6E004C */  lw         $t6, 0x4C($v1)
/* BEDF8 8015E3B8 8C8F004C */  lw         $t7, 0x4C($a0)
/* BEDFC 8015E3BC C5C60018 */  lwc1       $f6, 0x18($t6)
/* BEE00 8015E3C0 E5E60018 */  swc1       $f6, 0x18($t7)
/* BEE04 8015E3C4 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* BEE08 8015E3C8 8F080000 */  lw         $t0, 0x0($t8)
/* BEE0C 8015E3CC 00084080 */  sll        $t0, $t0, 2
.L8015E3D0_ovl3:
/* BEE10 8015E3D0 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* BEE14 8015E3D4 0328C821 */  addu       $t9, $t9, $t0
/* BEE18 8015E3D8 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* BEE1C 8015E3DC 332A0004 */  andi       $t2, $t9, 0x4
/* BEE20 8015E3E0 1140000A */  beqz       $t2, .L8015E40C_ovl3
/* BEE24 8015E3E4 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* BEE28 8015E3E8 44816000 */  mtc1       $at, $f12
/* BEE2C 8015E3EC 0C02BB30 */  jal        func_800AECC0
/* BEE30 8015E3F0 00000000 */   nop
/* BEE34 8015E3F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BEE38 8015E3F8 44816000 */  mtc1       $at, $f12
/* BEE3C 8015E3FC 0C02BB48 */  jal        func_800AED20
/* BEE40 8015E400 00000000 */   nop
/* BEE44 8015E404 1000000A */  b          .L8015E430_ovl3
/* BEE48 8015E408 8FBF0014 */   lw        $ra, 0x14($sp)
.L8015E40C_ovl3:
/* BEE4C 8015E40C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* BEE50 8015E410 44816000 */  mtc1       $at, $f12
/* BEE54 8015E414 0C02BB30 */  jal        func_800AECC0
/* BEE58 8015E418 00000000 */   nop
/* BEE5C 8015E41C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* BEE60 8015E420 44816000 */  mtc1       $at, $f12
/* BEE64 8015E424 0C02BB48 */  jal        func_800AED20
/* BEE68 8015E428 00000000 */   nop
.L8015E42C_ovl3:
/* BEE6C 8015E42C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8015E430_ovl3:
/* BEE70 8015E430 27BD0048 */  addiu      $sp, $sp, 0x48
/* BEE74 8015E434 03E00008 */  jr         $ra
/* BEE78 8015E438 00000000 */   nop
