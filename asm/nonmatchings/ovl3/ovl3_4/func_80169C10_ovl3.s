nonmatching func_80169C10_ovl3, 0x534

glabel func_80169C10_ovl3
    /* CA650 80169C10 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* CA654 80169C14 AFB10018 */  sw         $s1, 0x18($sp)
    /* CA658 80169C18 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* CA65C 80169C1C 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* CA660 80169C20 8E220000 */  lw         $v0, 0x0($s1)
    /* CA664 80169C24 AFBF002C */  sw         $ra, 0x2C($sp)
    /* CA668 80169C28 AFB50028 */  sw         $s5, 0x28($sp)
    /* CA66C 80169C2C AFB40024 */  sw         $s4, 0x24($sp)
    /* CA670 80169C30 AFB30020 */  sw         $s3, 0x20($sp)
    /* CA674 80169C34 AFB2001C */  sw         $s2, 0x1C($sp)
    /* CA678 80169C38 AFB00014 */  sw         $s0, 0x14($sp)
    /* CA67C 80169C3C AFA40038 */  sw         $a0, 0x38($sp)
    /* CA680 80169C40 8C500000 */  lw         $s0, 0x0($v0)
    /* CA684 80169C44 3C0E800F */  lui        $t6, %hi(D_800EA520)
    /* CA688 80169C48 00108080 */  sll        $s0, $s0, 2
    /* CA68C 80169C4C 01D07021 */  addu       $t6, $t6, $s0
    /* CA690 80169C50 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
    /* CA694 80169C54 31CF00FF */  andi       $t7, $t6, 0xFF
    /* CA698 80169C58 15E00006 */  bnez       $t7, .L80169C74_ovl3
    /* CA69C 80169C5C 3C040002 */   lui       $a0, (0x20007 >> 16)
    /* CA6A0 80169C60 0C02A5D8 */  jal        func_800A9760
    /* CA6A4 80169C64 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* CA6A8 80169C68 8E220000 */  lw         $v0, 0x0($s1)
    /* CA6AC 80169C6C 8C500000 */  lw         $s0, 0x0($v0)
    /* CA6B0 80169C70 00108080 */  sll        $s0, $s0, 2
  .L80169C74_ovl3:
    /* CA6B4 80169C74 3C188017 */  lui        $t8, %hi(func_8016A144_ovl3)
    /* CA6B8 80169C78 3C01800E */  lui        $at, %hi(D_800DF150)
    /* CA6BC 80169C7C 00300821 */  addu       $at, $at, $s0
    /* CA6C0 80169C80 2718A144 */  addiu      $t8, $t8, %lo(func_8016A144_ovl3)
    /* CA6C4 80169C84 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
    /* CA6C8 80169C88 8C480000 */  lw         $t0, 0x0($v0)
    /* CA6CC 80169C8C 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* CA6D0 80169C90 3C19800B */  lui        $t9, %hi(func_800B4954)
    /* CA6D4 80169C94 00084880 */  sll        $t1, $t0, 2
    /* CA6D8 80169C98 00290821 */  addu       $at, $at, $t1
    /* CA6DC 80169C9C 27394954 */  addiu      $t9, $t9, %lo(func_800B4954)
    /* CA6E0 80169CA0 AC39EF90 */  sw         $t9, %lo(D_800DEF90)($at)
    /* CA6E4 80169CA4 8C4A0000 */  lw         $t2, 0x0($v0)
    /* CA6E8 80169CA8 3C13800F */  lui        $s3, %hi(D_800E8920)
    /* CA6EC 80169CAC 26738920 */  addiu      $s3, $s3, %lo(D_800E8920)
    /* CA6F0 80169CB0 000A5880 */  sll        $t3, $t2, 2
    /* CA6F4 80169CB4 026B6021 */  addu       $t4, $s3, $t3
    /* CA6F8 80169CB8 AD800000 */  sw         $zero, 0x0($t4)
    /* CA6FC 80169CBC 8C4D0000 */  lw         $t5, 0x0($v0)
    /* CA700 80169CC0 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* CA704 80169CC4 3C15800F */  lui        $s5, %hi(D_800E98E0)
    /* CA708 80169CC8 000D7080 */  sll        $t6, $t5, 2
    /* CA70C 80169CCC 002E0821 */  addu       $at, $at, $t6
    /* CA710 80169CD0 AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
    /* CA714 80169CD4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* CA718 80169CD8 26B598E0 */  addiu      $s5, $s5, %lo(D_800E98E0)
    /* CA71C 80169CDC 000FC080 */  sll        $t8, $t7, 2
    /* CA720 80169CE0 02B84021 */  addu       $t0, $s5, $t8
    /* CA724 80169CE4 0C05AEF4 */  jal        func_8016BBD0_ovl3
    /* CA728 80169CE8 AD000000 */   sw        $zero, 0x0($t0)
    /* CA72C 80169CEC 0C02CCFD */  jal        func_800B33F4
    /* CA730 80169CF0 00000000 */   nop
    /* CA734 80169CF4 8E390000 */  lw         $t9, 0x0($s1)
    /* CA738 80169CF8 3C12800E */  lui        $s2, %hi(D_800E0D50)
    /* CA73C 80169CFC 26520D50 */  addiu      $s2, $s2, %lo(D_800E0D50)
    /* CA740 80169D00 8F220000 */  lw         $v0, 0x0($t9)
    /* CA744 80169D04 00024880 */  sll        $t1, $v0, 2
    /* CA748 80169D08 02495021 */  addu       $t2, $s2, $t1
    /* CA74C 80169D0C 8D450000 */  lw         $a1, 0x0($t2)
    /* CA750 80169D10 0C03E60A */  jal        func_800F9828
    /* CA754 80169D14 00402025 */   or        $a0, $v0, $zero
    /* CA758 80169D18 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* CA75C 80169D1C 44812000 */  mtc1       $at, $f4
    /* CA760 80169D20 8E220000 */  lw         $v0, 0x0($s1)
    /* CA764 80169D24 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* CA768 80169D28 46040182 */  mul.s      $f6, $f0, $f4
    /* CA76C 80169D2C 8C4B0000 */  lw         $t3, 0x0($v0)
    /* CA770 80169D30 3C03800E */  lui        $v1, %hi(gEntitiesNextPosYArray)
    /* CA774 80169D34 24632790 */  addiu      $v1, $v1, %lo(gEntitiesNextPosYArray)
    /* CA778 80169D38 000B6080 */  sll        $t4, $t3, 2
    /* CA77C 80169D3C 002C0821 */  addu       $at, $at, $t4
    /* CA780 80169D40 3C14800E */  lui        $s4, %hi(D_800E3210)
    /* CA784 80169D44 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
    /* CA788 80169D48 8C500000 */  lw         $s0, 0x0($v0)
    /* CA78C 80169D4C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* CA790 80169D50 44815000 */  mtc1       $at, $f10
    /* CA794 80169D54 00108080 */  sll        $s0, $s0, 2
    /* CA798 80169D58 02506821 */  addu       $t5, $s2, $s0
    /* CA79C 80169D5C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* CA7A0 80169D60 C4680000 */  lwc1       $f8, 0x0($v1)
    /* CA7A4 80169D64 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
    /* CA7A8 80169D68 000E7880 */  sll        $t7, $t6, 2
    /* CA7AC 80169D6C 460A4400 */  add.s      $f16, $f8, $f10
    /* CA7B0 80169D70 006FC021 */  addu       $t8, $v1, $t7
    /* CA7B4 80169D74 C7120000 */  lwc1       $f18, 0x0($t8)
    /* CA7B8 80169D78 44813000 */  mtc1       $at, $f6
    /* CA7BC 80169D7C 26943210 */  addiu      $s4, $s4, %lo(D_800E3210)
    /* CA7C0 80169D80 46128101 */  sub.s      $f4, $f16, $f18
    /* CA7C4 80169D84 02904021 */  addu       $t0, $s4, $s0
    /* CA7C8 80169D88 24040003 */  addiu      $a0, $zero, 0x3
    /* CA7CC 80169D8C 46062202 */  mul.s      $f8, $f4, $f6
    /* CA7D0 80169D90 0C002DAF */  jal        ohSleep
    /* CA7D4 80169D94 E5080000 */   swc1      $f8, 0x0($t0)
    /* CA7D8 80169D98 0C02CCFD */  jal        func_800B33F4
    /* CA7DC 80169D9C 00000000 */   nop
    /* CA7E0 80169DA0 00002025 */  or         $a0, $zero, $zero
    /* CA7E4 80169DA4 0C02ED1A */  jal        func_800BB468
    /* CA7E8 80169DA8 00002825 */   or        $a1, $zero, $zero
    /* CA7EC 80169DAC 8E290000 */  lw         $t1, 0x0($s1)
    /* CA7F0 80169DB0 8FA20038 */  lw         $v0, 0x38($sp)
    /* CA7F4 80169DB4 24190001 */  addiu      $t9, $zero, 0x1
    /* CA7F8 80169DB8 8D2A0000 */  lw         $t2, 0x0($t1)
    /* CA7FC 80169DBC 000A5880 */  sll        $t3, $t2, 2
    /* CA800 80169DC0 02AB6021 */  addu       $t4, $s5, $t3
    /* CA804 80169DC4 AD990000 */  sw         $t9, 0x0($t4)
    /* CA808 80169DC8 8C4D0044 */  lw         $t5, 0x44($v0)
    /* CA80C 80169DCC 35AE0001 */  ori        $t6, $t5, 0x1
    /* CA810 80169DD0 0C02CCFD */  jal        func_800B33F4
    /* CA814 80169DD4 AC4E0044 */   sw        $t6, 0x44($v0)
    /* CA818 80169DD8 0C03EF87 */  jal        func_800FBE1C
    /* CA81C 80169DDC 00000000 */   nop
    /* CA820 80169DE0 0C03E905 */  jal        func_800FA414
    /* CA824 80169DE4 24040005 */   addiu     $a0, $zero, 0x5
    /* CA828 80169DE8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CA82C 80169DEC 3C0A800F */  lui        $t2, %hi(D_800E9FE0)
    /* CA830 80169DF0 8DF00000 */  lw         $s0, 0x0($t7)
    /* CA834 80169DF4 00108080 */  sll        $s0, $s0, 2
    /* CA838 80169DF8 0250C021 */  addu       $t8, $s2, $s0
    /* CA83C 80169DFC 8F080000 */  lw         $t0, 0x0($t8)
    /* CA840 80169E00 00084880 */  sll        $t1, $t0, 2
    /* CA844 80169E04 01495021 */  addu       $t2, $t2, $t1
    /* CA848 80169E08 8D4A9FE0 */  lw         $t2, %lo(D_800E9FE0)($t2)
    /* CA84C 80169E0C 5540000F */  bnel       $t2, $zero, .L80169E4C_ovl3
    /* CA850 80169E10 240F0002 */   addiu     $t7, $zero, 0x2
  .L80169E14_ovl3:
    /* CA854 80169E14 0C002DAF */  jal        ohSleep
    /* CA858 80169E18 24040001 */   addiu     $a0, $zero, 0x1
    /* CA85C 80169E1C 8E2B0000 */  lw         $t3, 0x0($s1)
    /* CA860 80169E20 3C0E800F */  lui        $t6, %hi(D_800E9FE0)
    /* CA864 80169E24 8D700000 */  lw         $s0, 0x0($t3)
    /* CA868 80169E28 00108080 */  sll        $s0, $s0, 2
    /* CA86C 80169E2C 0250C821 */  addu       $t9, $s2, $s0
    /* CA870 80169E30 8F2C0000 */  lw         $t4, 0x0($t9)
    /* CA874 80169E34 000C6880 */  sll        $t5, $t4, 2
    /* CA878 80169E38 01CD7021 */  addu       $t6, $t6, $t5
    /* CA87C 80169E3C 8DCE9FE0 */  lw         $t6, %lo(D_800E9FE0)($t6)
    /* CA880 80169E40 11C0FFF4 */  beqz       $t6, .L80169E14_ovl3
    /* CA884 80169E44 00000000 */   nop
    /* CA888 80169E48 240F0002 */  addiu      $t7, $zero, 0x2
  .L80169E4C_ovl3:
    /* CA88C 80169E4C 02B0C021 */  addu       $t8, $s5, $s0
    /* CA890 80169E50 AF0F0000 */  sw         $t7, 0x0($t8)
    /* CA894 80169E54 8FA80038 */  lw         $t0, 0x38($sp)
    /* CA898 80169E58 24040003 */  addiu      $a0, $zero, 0x3
    /* CA89C 80169E5C 8D090044 */  lw         $t1, 0x44($t0)
    /* CA8A0 80169E60 392A0001 */  xori       $t2, $t1, 0x1
    /* CA8A4 80169E64 0C03E905 */  jal        func_800FA414
    /* CA8A8 80169E68 AD0A0044 */   sw        $t2, 0x44($t0)
    /* CA8AC 80169E6C 8E220000 */  lw         $v0, 0x0($s1)
    /* CA8B0 80169E70 3C05800E */  lui        $a1, %hi(D_800E5F90)
    /* CA8B4 80169E74 24A55F90 */  addiu      $a1, $a1, %lo(D_800E5F90)
    /* CA8B8 80169E78 8C500000 */  lw         $s0, 0x0($v0)
    /* CA8BC 80169E7C 3C01800E */  lui        $at, %hi(D_800E6150)
    /* CA8C0 80169E80 3C06800E */  lui        $a2, %hi(D_800E6BD0)
    /* CA8C4 80169E84 00108080 */  sll        $s0, $s0, 2
    /* CA8C8 80169E88 02505821 */  addu       $t3, $s2, $s0
    /* CA8CC 80169E8C 8D790000 */  lw         $t9, 0x0($t3)
    /* CA8D0 80169E90 00300821 */  addu       $at, $at, $s0
    /* CA8D4 80169E94 24C66BD0 */  addiu      $a2, $a2, %lo(D_800E6BD0)
    /* CA8D8 80169E98 00196080 */  sll        $t4, $t9, 2
    /* CA8DC 80169E9C 00AC6821 */  addu       $t5, $a1, $t4
    /* CA8E0 80169EA0 8DA30000 */  lw         $v1, 0x0($t5)
    /* CA8E4 80169EA4 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
    /* CA8E8 80169EA8 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
    /* CA8EC 80169EAC AC236150 */  sw         $v1, %lo(D_800E6150)($at)
    /* CA8F0 80169EB0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* CA8F4 80169EB4 3C01800E */  lui        $at, %hi(D_800E6D90)
    /* CA8F8 80169EB8 3C04801D */  lui        $a0, %hi(D_801CA980)
    /* CA8FC 80169EBC 000E7880 */  sll        $t7, $t6, 2
    /* CA900 80169EC0 00AFC021 */  addu       $t8, $a1, $t7
    /* CA904 80169EC4 AF030000 */  sw         $v1, 0x0($t8)
    /* CA908 80169EC8 8C500000 */  lw         $s0, 0x0($v0)
    /* CA90C 80169ECC 2484A980 */  addiu      $a0, $a0, %lo(D_801CA980)
    /* CA910 80169ED0 00108080 */  sll        $s0, $s0, 2
    /* CA914 80169ED4 02504821 */  addu       $t1, $s2, $s0
    /* CA918 80169ED8 8D2A0000 */  lw         $t2, 0x0($t1)
    /* CA91C 80169EDC 00300821 */  addu       $at, $at, $s0
    /* CA920 80169EE0 000A4080 */  sll        $t0, $t2, 2
    /* CA924 80169EE4 00C85821 */  addu       $t3, $a2, $t0
    /* CA928 80169EE8 C5600000 */  lwc1       $f0, 0x0($t3)
    /* CA92C 80169EEC E4206D90 */  swc1       $f0, %lo(D_800E6D90)($at)
    /* CA930 80169EF0 8C590000 */  lw         $t9, 0x0($v0)
    /* CA934 80169EF4 00196080 */  sll        $t4, $t9, 2
    /* CA938 80169EF8 00CC6821 */  addu       $t5, $a2, $t4
    /* CA93C 80169EFC E5A00000 */  swc1       $f0, 0x0($t5)
    /* CA940 80169F00 8C500000 */  lw         $s0, 0x0($v0)
    /* CA944 80169F04 00108080 */  sll        $s0, $s0, 2
    /* CA948 80169F08 02507021 */  addu       $t6, $s2, $s0
    /* CA94C 80169F0C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* CA950 80169F10 00F05021 */  addu       $t2, $a3, $s0
    /* CA954 80169F14 000FC080 */  sll        $t8, $t7, 2
    /* CA958 80169F18 00F84821 */  addu       $t1, $a3, $t8
    /* CA95C 80169F1C C52A0000 */  lwc1       $f10, 0x0($t1)
    /* CA960 80169F20 0C068CBB */  jal        func_801A32EC
    /* CA964 80169F24 E54A0000 */   swc1      $f10, 0x0($t2)
    /* CA968 80169F28 8E280000 */  lw         $t0, 0x0($s1)
    /* CA96C 80169F2C 3C0C800E */  lui        $t4, %hi(D_800E7880)
    /* CA970 80169F30 3C01C100 */  lui        $at, (0xC1000000 >> 16)
    /* CA974 80169F34 8D100000 */  lw         $s0, 0x0($t0)
    /* CA978 80169F38 00001025 */  or         $v0, $zero, $zero
    /* CA97C 80169F3C 00108080 */  sll        $s0, $s0, 2
    /* CA980 80169F40 02505821 */  addu       $t3, $s2, $s0
    /* CA984 80169F44 8D790000 */  lw         $t9, 0x0($t3)
    /* CA988 80169F48 01996021 */  addu       $t4, $t4, $t9
    /* CA98C 80169F4C 918C7880 */  lbu        $t4, %lo(D_800E7880)($t4)
    /* CA990 80169F50 318D0001 */  andi       $t5, $t4, 0x1
    /* CA994 80169F54 51A00007 */  beql       $t5, $zero, .L80169F74_ovl3
    /* CA998 80169F58 44819000 */   mtc1      $at, $f18
    /* CA99C 80169F5C 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* CA9A0 80169F60 44818000 */  mtc1       $at, $f16
    /* CA9A4 80169F64 02907021 */  addu       $t6, $s4, $s0
    /* CA9A8 80169F68 10000004 */  b          .L80169F7C_ovl3
    /* CA9AC 80169F6C E5D00000 */   swc1      $f16, 0x0($t6)
    /* CA9B0 80169F70 44819000 */  mtc1       $at, $f18
  .L80169F74_ovl3:
    /* CA9B4 80169F74 02907821 */  addu       $t7, $s4, $s0
    /* CA9B8 80169F78 E5F20000 */  swc1       $f18, 0x0($t7)
  .L80169F7C_ovl3:
    /* CA9BC 80169F7C 2410000A */  addiu      $s0, $zero, 0xA
    /* CA9C0 80169F80 8E380000 */  lw         $t8, 0x0($s1)
  .L80169F84_ovl3:
    /* CA9C4 80169F84 24040001 */  addiu      $a0, $zero, 0x1
    /* CA9C8 80169F88 8F090000 */  lw         $t1, 0x0($t8)
    /* CA9CC 80169F8C 00095080 */  sll        $t2, $t1, 2
    /* CA9D0 80169F90 026A4021 */  addu       $t0, $s3, $t2
    /* CA9D4 80169F94 AD000000 */  sw         $zero, 0x0($t0)
    /* CA9D8 80169F98 0C002DAF */  jal        ohSleep
    /* CA9DC 80169F9C AFA20030 */   sw        $v0, 0x30($sp)
    /* CA9E0 80169FA0 8FA20030 */  lw         $v0, 0x30($sp)
    /* CA9E4 80169FA4 24420001 */  addiu      $v0, $v0, 0x1
    /* CA9E8 80169FA8 5450FFF6 */  bnel       $v0, $s0, .L80169F84_ovl3
    /* CA9EC 80169FAC 8E380000 */   lw        $t8, 0x0($s1)
    /* CA9F0 80169FB0 8E220000 */  lw         $v0, 0x0($s1)
    /* CA9F4 80169FB4 3C0B800F */  lui        $t3, %hi(D_800EA1A0)
    /* CA9F8 80169FB8 8C500000 */  lw         $s0, 0x0($v0)
    /* CA9FC 80169FBC 00108080 */  sll        $s0, $s0, 2
    /* CAA00 80169FC0 01705821 */  addu       $t3, $t3, $s0
    /* CAA04 80169FC4 8D6BA1A0 */  lw         $t3, %lo(D_800EA1A0)($t3)
    /* CAA08 80169FC8 5560000D */  bnel       $t3, $zero, .L8016A000_ovl3
    /* CAA0C 80169FCC 02907021 */   addu      $t6, $s4, $s0
    /* CAA10 80169FD0 0C029D9E */  jal        play_sound
    /* CAA14 80169FD4 240400DB */   addiu     $a0, $zero, 0xDB
    /* CAA18 80169FD8 8E220000 */  lw         $v0, 0x0($s1)
    /* CAA1C 80169FDC 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* CAA20 80169FE0 24190001 */  addiu      $t9, $zero, 0x1
    /* CAA24 80169FE4 8C4C0000 */  lw         $t4, 0x0($v0)
    /* CAA28 80169FE8 000C6880 */  sll        $t5, $t4, 2
    /* CAA2C 80169FEC 002D0821 */  addu       $at, $at, $t5
    /* CAA30 80169FF0 AC39A1A0 */  sw         $t9, %lo(D_800EA1A0)($at)
    /* CAA34 80169FF4 8C500000 */  lw         $s0, 0x0($v0)
    /* CAA38 80169FF8 00108080 */  sll        $s0, $s0, 2
    /* CAA3C 80169FFC 02907021 */  addu       $t6, $s4, $s0
  .L8016A000_ovl3:
    /* CAA40 8016A000 44800000 */  mtc1       $zero, $f0
    /* CAA44 8016A004 C5CC0000 */  lwc1       $f12, 0x0($t6)
    /* CAA48 8016A008 3C013D80 */  lui        $at, (0x3D800000 >> 16)
    /* CAA4C 8016A00C 460C003C */  c.lt.s     $f0, $f12
    /* CAA50 8016A010 00000000 */  nop
    /* CAA54 8016A014 45020032 */  bc1fl      .L8016A0E0_ovl3
    /* CAA58 8016A018 0270C821 */   addu      $t9, $s3, $s0
    /* CAA5C 8016A01C 44812000 */  mtc1       $at, $f4
    /* CAA60 8016A020 44803000 */  mtc1       $zero, $f6
    /* CAA64 8016A024 3C01800E */  lui        $at, %hi(D_800E3750)
    /* CAA68 8016A028 46046082 */  mul.s      $f2, $f12, $f4
    /* CAA6C 8016A02C 4606103C */  c.lt.s     $f2, $f6
    /* CAA70 8016A030 00000000 */  nop
    /* CAA74 8016A034 45020008 */  bc1fl      .L8016A058_ovl3
    /* CAA78 8016A038 46001407 */   neg.s     $f16, $f2
    /* CAA7C 8016A03C 46001207 */  neg.s      $f8, $f2
    /* CAA80 8016A040 3C01800E */  lui        $at, %hi(D_800E3750)
    /* CAA84 8016A044 46004287 */  neg.s      $f10, $f8
    /* CAA88 8016A048 00300821 */  addu       $at, $at, $s0
    /* CAA8C 8016A04C 10000004 */  b          .L8016A060_ovl3
    /* CAA90 8016A050 E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
    /* CAA94 8016A054 46001407 */  neg.s      $f16, $f2
  .L8016A058_ovl3:
    /* CAA98 8016A058 00300821 */  addu       $at, $at, $s0
    /* CAA9C 8016A05C E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
  .L8016A060_ovl3:
    /* CAAA0 8016A060 8C500000 */  lw         $s0, 0x0($v0)
    /* CAAA4 8016A064 00108080 */  sll        $s0, $s0, 2
    /* CAAA8 8016A068 02907821 */  addu       $t7, $s4, $s0
    /* CAAAC 8016A06C C5F20000 */  lwc1       $f18, 0x0($t7)
    /* CAAB0 8016A070 02B0C021 */  addu       $t8, $s5, $s0
    /* CAAB4 8016A074 4612003C */  c.lt.s     $f0, $f18
    /* CAAB8 8016A078 00000000 */  nop
    /* CAABC 8016A07C 45020018 */  bc1fl      .L8016A0E0_ovl3
    /* CAAC0 8016A080 0270C821 */   addu      $t9, $s3, $s0
    /* CAAC4 8016A084 8F090000 */  lw         $t1, 0x0($t8)
    /* CAAC8 8016A088 29210003 */  slti       $at, $t1, 0x3
    /* CAACC 8016A08C 10200013 */  beqz       $at, .L8016A0DC_ovl3
    /* CAAD0 8016A090 02705021 */   addu      $t2, $s3, $s0
  .L8016A094_ovl3:
    /* CAAD4 8016A094 AD400000 */  sw         $zero, 0x0($t2)
    /* CAAD8 8016A098 0C002DAF */  jal        ohSleep
    /* CAADC 8016A09C 24040001 */   addiu     $a0, $zero, 0x1
    /* CAAE0 8016A0A0 8E220000 */  lw         $v0, 0x0($s1)
    /* CAAE4 8016A0A4 44800000 */  mtc1       $zero, $f0
    /* CAAE8 8016A0A8 8C500000 */  lw         $s0, 0x0($v0)
    /* CAAEC 8016A0AC 00108080 */  sll        $s0, $s0, 2
    /* CAAF0 8016A0B0 02904021 */  addu       $t0, $s4, $s0
    /* CAAF4 8016A0B4 C5040000 */  lwc1       $f4, 0x0($t0)
    /* CAAF8 8016A0B8 02B05821 */  addu       $t3, $s5, $s0
    /* CAAFC 8016A0BC 4604003C */  c.lt.s     $f0, $f4
    /* CAB00 8016A0C0 00000000 */  nop
    /* CAB04 8016A0C4 45020006 */  bc1fl      .L8016A0E0_ovl3
    /* CAB08 8016A0C8 0270C821 */   addu      $t9, $s3, $s0
    /* CAB0C 8016A0CC 8D6C0000 */  lw         $t4, 0x0($t3)
    /* CAB10 8016A0D0 29810003 */  slti       $at, $t4, 0x3
    /* CAB14 8016A0D4 5420FFEF */  bnel       $at, $zero, .L8016A094_ovl3
    /* CAB18 8016A0D8 02705021 */   addu      $t2, $s3, $s0
  .L8016A0DC_ovl3:
    /* CAB1C 8016A0DC 0270C821 */  addu       $t9, $s3, $s0
  .L8016A0E0_ovl3:
    /* CAB20 8016A0E0 AF200000 */  sw         $zero, 0x0($t9)
    /* CAB24 8016A0E4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* CAB28 8016A0E8 3C0D800B */  lui        $t5, %hi(func_800B531C)
    /* CAB2C 8016A0EC 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* CAB30 8016A0F0 000E7880 */  sll        $t7, $t6, 2
    /* CAB34 8016A0F4 002F0821 */  addu       $at, $at, $t7
    /* CAB38 8016A0F8 25AD531C */  addiu      $t5, $t5, %lo(func_800B531C)
    /* CAB3C 8016A0FC 0C02CCFD */  jal        func_800B33F4
    /* CAB40 8016A100 AC2DEF90 */   sw        $t5, %lo(D_800DEF90)($at)
    /* CAB44 8016A104 8E290000 */  lw         $t1, 0x0($s1)
    /* CAB48 8016A108 24180003 */  addiu      $t8, $zero, 0x3
    /* CAB4C 8016A10C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* CAB50 8016A110 000A4080 */  sll        $t0, $t2, 2
    /* CAB54 8016A114 02A85821 */  addu       $t3, $s5, $t0
    /* CAB58 8016A118 0C02BE85 */  jal        curObjSleepForever
    /* CAB5C 8016A11C AD780000 */   sw        $t8, 0x0($t3)
    /* CAB60 8016A120 8FBF002C */  lw         $ra, 0x2C($sp)
    /* CAB64 8016A124 8FB00014 */  lw         $s0, 0x14($sp)
    /* CAB68 8016A128 8FB10018 */  lw         $s1, 0x18($sp)
    /* CAB6C 8016A12C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* CAB70 8016A130 8FB30020 */  lw         $s3, 0x20($sp)
    /* CAB74 8016A134 8FB40024 */  lw         $s4, 0x24($sp)
    /* CAB78 8016A138 8FB50028 */  lw         $s5, 0x28($sp)
    /* CAB7C 8016A13C 03E00008 */  jr         $ra
    /* CAB80 8016A140 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_80169C10_ovl3
.size func_80169C10_ovl3, . - func_80169C10_ovl3
