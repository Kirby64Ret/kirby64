glabel func_801AB5A4_ovl7
/* 151614 801AB5A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 151618 801AB5A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15161C 801AB5AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 151620 801AB5B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 151624 801AB5B4 AFA40028 */  sw    $a0, 0x28($sp)
/* 151628 801AB5B8 8C430000 */  lw    $v1, ($v0)
/* 15162C 801AB5BC 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 151630 801AB5C0 44800000 */  mtc1  $zero, $f0
/* 151634 801AB5C4 00031880 */  sll   $v1, $v1, 2
/* 151638 801AB5C8 00A32821 */  addu  $a1, $a1, $v1
/* 15163C 801AB5CC 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 151640 801AB5D0 3C01800F */ lui $at, %hi(D_800EC660)
/* 151644 801AB5D4 00230821 */  addu  $at, $at, $v1
/* 151648 801AB5D8 8CAE0088 */  lw    $t6, 0x88($a1)
/* 15164C 801AB5DC 8DC7000C */  lw    $a3, 0xc($t6)
/* 151650 801AB5E0 8CE60004 */  lw    $a2, 4($a3)
/* 151654 801AB5E4 E420C660 */ swc1 $f0, %lo(D_800EC660)($at)
/* 151658 801AB5E8 8C4F0000 */  lw    $t7, ($v0)
/* 15165C 801AB5EC 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 151660 801AB5F0 44812000 */  mtc1  $at, $f4
/* 151664 801AB5F4 3C01800F */ lui $at, %hi(D_800EC820)
/* 151668 801AB5F8 000FC080 */  sll   $t8, $t7, 2
/* 15166C 801AB5FC 00380821 */  addu  $at, $at, $t8
/* 151670 801AB600 AFA50024 */  sw    $a1, 0x24($sp)
/* 151674 801AB604 AFA6001C */  sw    $a2, 0x1c($sp)
/* 151678 801AB608 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15167C 801AB60C E424C820 */ swc1 $f4, %lo(D_800EC820)($at)
/* 151680 801AB610 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 151684 801AB614 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 151688 801AB618 8CE80000 */  lw    $t0, ($a3)
/* 15168C 801AB61C 8FA50024 */  lw    $a1, 0x24($sp)
/* 151690 801AB620 3C19801B */  lui   $t9, %hi(D_801AB884) # $t9, 0x801b
/* 151694 801AB624 8D090000 */  lw    $t1, ($t0)
/* 151698 801AB628 3C01800E */ lui $at, %hi(D_800DF150)
/* 15169C 801AB62C 2739B884 */  addiu $t9, %lo(D_801AB884) # addiu $t9, $t9, -0x477c
/* 1516A0 801AB630 00095080 */  sll   $t2, $t1, 2
/* 1516A4 801AB634 002A0821 */  addu  $at, $at, $t2
/* 1516A8 801AB638 8FA4001C */  lw    $a0, 0x1c($sp)
/* 1516AC 801AB63C AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 1516B0 801AB640 2403FFFF */  li    $v1, -1
/* 1516B4 801AB644 3C0B801D */  lui   $t3, %hi(D_801CB4DC) # $t3, 0x801d
/* 1516B8 801AB648 256BB4DC */  addiu $t3, %lo(D_801CB4DC) # addiu $t3, $t3, -0x4b24
/* 1516BC 801AB64C 240C0001 */  li    $t4, 1
/* 1516C0 801AB650 ACA00048 */  sw    $zero, 0x48($a1)
/* 1516C4 801AB654 ACAB0098 */  sw    $t3, 0x98($a1)
/* 1516C8 801AB658 A0AC0042 */  sb    $t4, 0x42($a1)
/* 1516CC 801AB65C A0A30038 */  sb    $v1, 0x38($a1)
/* 1516D0 801AB660 A0A30039 */  sb    $v1, 0x39($a1)
/* 1516D4 801AB664 8CE20000 */  lw    $v0, ($a3)
/* 1516D8 801AB668 3C01800F */ lui $at, %hi(D_800E8920)
/* 1516DC 801AB66C 44800000 */  mtc1  $zero, $f0
/* 1516E0 801AB670 8C4D0000 */  lw    $t5, ($v0)
/* 1516E4 801AB674 000D7080 */  sll   $t6, $t5, 2
/* 1516E8 801AB678 002E0821 */  addu  $at, $at, $t6
/* 1516EC 801AB67C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1516F0 801AB680 8C4F0000 */  lw    $t7, ($v0)
/* 1516F4 801AB684 3C01801D */  lui   $at, %hi(D_801CE150) # $at, 0x801d
/* 1516F8 801AB688 C426E150 */  lwc1  $f6, %lo(D_801CE150)($at)
/* 1516FC 801AB68C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 151700 801AB690 000FC080 */  sll   $t8, $t7, 2
/* 151704 801AB694 00380821 */  addu  $at, $at, $t8
/* 151708 801AB698 E426A6E0 */ swc1 $f6, %lo(D_800EA6E0)($at)
/* 15170C 801AB69C 8C480000 */  lw    $t0, ($v0)
/* 151710 801AB6A0 3C01800E */ lui $at, %hi(D_800E4C50)
/* 151714 801AB6A4 00084880 */  sll   $t1, $t0, 2
/* 151718 801AB6A8 00290821 */  addu  $at, $at, $t1
/* 15171C 801AB6AC 0C06B1B4 */  jal   func_801AC6D0_ovl7
/* 151720 801AB6B0 E4204C50 */ swc1 $f0, %lo(D_800E4C50)($at)
/* 151724 801AB6B4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 151728 801AB6B8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15172C 801AB6BC 8FA6001C */  lw    $a2, 0x1c($sp)
/* 151730 801AB6C0 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 151734 801AB6C4 8C590000 */  lw    $t9, ($v0)
/* 151738 801AB6C8 C4C80010 */  lwc1  $f8, 0x10($a2)
/* 15173C 801AB6CC 3C0F800E */ lui $t7, %hi(D_800E7730)
/* 151740 801AB6D0 00195080 */  sll   $t2, $t9, 2
/* 151744 801AB6D4 002A0821 */  addu  $at, $at, $t2
/* 151748 801AB6D8 E4284550 */ swc1 $f8, %lo(gEntitiesScaleXArray)($at)
/* 15174C 801AB6DC 8C4B0000 */  lw    $t3, ($v0)
/* 151750 801AB6E0 C4CA0010 */  lwc1  $f10, 0x10($a2)
/* 151754 801AB6E4 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 151758 801AB6E8 000B6080 */  sll   $t4, $t3, 2
/* 15175C 801AB6EC 002C0821 */  addu  $at, $at, $t4
/* 151760 801AB6F0 E42A4710 */ swc1 $f10, %lo(gEntitiesScaleYArray)($at)
/* 151764 801AB6F4 8C4D0000 */  lw    $t5, ($v0)
/* 151768 801AB6F8 C4D00010 */  lwc1  $f16, 0x10($a2)
/* 15176C 801AB6FC 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 151770 801AB700 000D7080 */  sll   $t6, $t5, 2
/* 151774 801AB704 002E0821 */  addu  $at, $at, $t6
/* 151778 801AB708 E43048D0 */ swc1 $f16, %lo(gEntitiesScaleZArray)($at)
/* 15177C 801AB70C 8C430000 */  lw    $v1, ($v0)
/* 151780 801AB710 3C08800F */ lui $t0, %hi(D_800E8AE0)
/* 151784 801AB714 3C05800E */  lui   $a1, %hi(D_800E6690) # $a1, 0x800e
/* 151788 801AB718 00031880 */  sll   $v1, $v1, 2
/* 15178C 801AB71C 01E37821 */  addu  $t7, $t7, $v1
/* 151790 801AB720 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 151794 801AB724 44800000 */  mtc1  $zero, $f0
/* 151798 801AB728 24A56690 */  addiu $a1, %lo(D_800E6690) # addiu $a1, $a1, 0x6690
/* 15179C 801AB72C 000FC080 */  sll   $t8, $t7, 2
/* 1517A0 801AB730 01184021 */  addu  $t0, $t0, $t8
/* 1517A4 801AB734 8D088AE0 */ lw $t0, %lo(D_800E8AE0)($t0)
/* 1517A8 801AB738 00A3C821 */  addu  $t9, $a1, $v1
/* 1517AC 801AB73C 31090006 */  andi  $t1, $t0, 6
/* 1517B0 801AB740 51200029 */  beql  $t1, $zero, .L801AB7E8_ovl7
/* 1517B4 801AB744 E7200000 */   swc1  $f0, ($t9)
/* 1517B8 801AB748 3C05800E */  lui   $a1, %hi(D_800E6690) # $a1, 0x800e
/* 1517BC 801AB74C 24A56690 */  addiu $a1, %lo(D_800E6690) # addiu $a1, $a1, 0x6690
/* 1517C0 801AB750 00A3C821 */  addu  $t9, $a1, $v1
/* 1517C4 801AB754 E7200000 */  swc1  $f0, ($t9)
/* 1517C8 801AB758 8C430000 */  lw    $v1, ($v0)
/* 1517CC 801AB75C 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 1517D0 801AB760 44811000 */  mtc1  $at, $f2
/* 1517D4 801AB764 00031880 */  sll   $v1, $v1, 2
/* 1517D8 801AB768 00A35021 */  addu  $t2, $a1, $v1
/* 1517DC 801AB76C C5520000 */  lwc1  $f18, ($t2)
/* 1517E0 801AB770 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1517E4 801AB774 00230821 */  addu  $at, $at, $v1
/* 1517E8 801AB778 E43264D0 */ swc1 $f18, %lo(D_800E64D0)($at)
/* 1517EC 801AB77C 8C4B0000 */  lw    $t3, ($v0)
/* 1517F0 801AB780 3C01801D */  lui   $at, %hi(D_801CE154) # $at, 0x801d
/* 1517F4 801AB784 C424E154 */  lwc1  $f4, %lo(D_801CE154)($at)
/* 1517F8 801AB788 3C01800E */ lui $at, %hi(D_800E6850)
/* 1517FC 801AB78C 000B6080 */  sll   $t4, $t3, 2
/* 151800 801AB790 002C0821 */  addu  $at, $at, $t4
/* 151804 801AB794 E4246850 */ swc1 $f4, %lo(D_800E6850)($at)
/* 151808 801AB798 8C4D0000 */  lw    $t5, ($v0)
/* 15180C 801AB79C 3C01800E */ lui $at, %hi(D_800E3210)
/* 151810 801AB7A0 2404003C */  li    $a0, 60
/* 151814 801AB7A4 000D7080 */  sll   $t6, $t5, 2
/* 151818 801AB7A8 002E0821 */  addu  $at, $at, $t6
/* 15181C 801AB7AC E4223210 */ swc1 $f2, %lo(D_800E3210)($at)
/* 151820 801AB7B0 8C4F0000 */  lw    $t7, ($v0)
/* 151824 801AB7B4 3C01800E */ lui $at, %hi(D_800E3750)
/* 151828 801AB7B8 000FC080 */  sll   $t8, $t7, 2
/* 15182C 801AB7BC 00380821 */  addu  $at, $at, $t8
/* 151830 801AB7C0 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 151834 801AB7C4 8C480000 */  lw    $t0, ($v0)
/* 151838 801AB7C8 3C01800E */ lui $at, %hi(D_800E3C90)
/* 15183C 801AB7CC 00084880 */  sll   $t1, $t0, 2
/* 151840 801AB7D0 00290821 */  addu  $at, $at, $t1
/* 151844 801AB7D4 0C002DAF */  jal   finish_current_thread
/* 151848 801AB7D8 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 15184C 801AB7DC 10000023 */  b     .L801AB86C_ovl7
/* 151850 801AB7E0 00000000 */   nop   
/* 151854 801AB7E4 E7200000 */  swc1  $f0, ($t9)
.L801AB7E8_ovl7:
/* 151858 801AB7E8 8C430000 */  lw    $v1, ($v0)
/* 15185C 801AB7EC 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 151860 801AB7F0 44811000 */  mtc1  $at, $f2
/* 151864 801AB7F4 00031880 */  sll   $v1, $v1, 2
/* 151868 801AB7F8 00A35021 */  addu  $t2, $a1, $v1
/* 15186C 801AB7FC C5460000 */  lwc1  $f6, ($t2)
/* 151870 801AB800 3C01800E */ lui $at, %hi(D_800E64D0)
/* 151874 801AB804 00230821 */  addu  $at, $at, $v1
/* 151878 801AB808 E42664D0 */ swc1 $f6, %lo(D_800E64D0)($at)
/* 15187C 801AB80C 8C4B0000 */  lw    $t3, ($v0)
/* 151880 801AB810 3C01801D */  lui   $at, %hi(D_801CE158) # $at, 0x801d
/* 151884 801AB814 C428E158 */  lwc1  $f8, %lo(D_801CE158)($at)
/* 151888 801AB818 3C01800E */ lui $at, %hi(D_800E6850)
/* 15188C 801AB81C 000B6080 */  sll   $t4, $t3, 2
/* 151890 801AB820 002C0821 */  addu  $at, $at, $t4
/* 151894 801AB824 E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
/* 151898 801AB828 8C4D0000 */  lw    $t5, ($v0)
/* 15189C 801AB82C 3C01800E */ lui $at, %hi(D_800E3210)
/* 1518A0 801AB830 2404001E */  li    $a0, 30
/* 1518A4 801AB834 000D7080 */  sll   $t6, $t5, 2
/* 1518A8 801AB838 002E0821 */  addu  $at, $at, $t6
/* 1518AC 801AB83C E4223210 */ swc1 $f2, %lo(D_800E3210)($at)
/* 1518B0 801AB840 8C4F0000 */  lw    $t7, ($v0)
/* 1518B4 801AB844 3C01800E */ lui $at, %hi(D_800E3750)
/* 1518B8 801AB848 000FC080 */  sll   $t8, $t7, 2
/* 1518BC 801AB84C 00380821 */  addu  $at, $at, $t8
/* 1518C0 801AB850 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1518C4 801AB854 8C480000 */  lw    $t0, ($v0)
/* 1518C8 801AB858 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1518CC 801AB85C 00084880 */  sll   $t1, $t0, 2
/* 1518D0 801AB860 00290821 */  addu  $at, $at, $t1
/* 1518D4 801AB864 0C002DAF */  jal   finish_current_thread
/* 1518D8 801AB868 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
.L801AB86C_ovl7:
/* 1518DC 801AB86C 0C06B047 */  jal   func_801AC11C_ovl7
/* 1518E0 801AB870 8FA40028 */   lw    $a0, 0x28($sp)
/* 1518E4 801AB874 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1518E8 801AB878 27BD0028 */  addiu $sp, $sp, 0x28
/* 1518EC 801AB87C 03E00008 */  jr    $ra
/* 1518F0 801AB880 00000000 */   nop   
.type func_801AB5A4_ovl7, @function
.size func_801AB5A4_ovl7, . - func_801AB5A4_ovl7
