glabel func_8016AAA4_ovl3
/* CB4E4 8016AAA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CB4E8 8016AAA8 AFB00014 */  sw         $s0, 0x14($sp)
/* CB4EC 8016AAAC 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* CB4F0 8016AAB0 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* CB4F4 8016AAB4 8E020000 */  lw         $v0, 0x0($s0)
/* CB4F8 8016AAB8 AFBF001C */  sw         $ra, 0x1C($sp)
/* CB4FC 8016AABC AFB10018 */  sw         $s1, 0x18($sp)
.L8016AAC0_ovl5:
/* CB500 8016AAC0 AFA40020 */  sw         $a0, 0x20($sp)
/* CB504 8016AAC4 8C430000 */  lw         $v1, 0x0($v0)
/* CB508 8016AAC8 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* CB50C 8016AACC 3C040002 */  lui        $a0, (0x20007 >> 16)
.L8016AAD0_ovl5:
/* CB510 8016AAD0 00031880 */  sll        $v1, $v1, 2
/* CB514 8016AAD4 01C37021 */  addu       $t6, $t6, $v1
/* CB518 8016AAD8 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* CB51C 8016AADC 31CF00FF */  andi       $t7, $t6, 0xFF
/* CB520 8016AAE0 15E00006 */  bnez       $t7, .L8016AAFC_ovl3
/* CB524 8016AAE4 00000000 */   nop
/* CB528 8016AAE8 0C02A5D8 */  jal        func_800A9760
/* CB52C 8016AAEC 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
/* CB530 8016AAF0 8E020000 */  lw         $v0, 0x0($s0)
/* CB534 8016AAF4 8C430000 */  lw         $v1, 0x0($v0)
/* CB538 8016AAF8 00031880 */  sll        $v1, $v1, 2
.L8016AAFC_ovl3:
/* CB53C 8016AAFC 3C188017 */  lui        $t8, %hi(func_8016B410_ovl3)
/* CB540 8016AB00 3C01800E */  lui        $at, %hi(D_800DF150)
/* CB544 8016AB04 00230821 */  addu       $at, $at, $v1
/* CB548 8016AB08 2718B410 */  addiu      $t8, $t8, %lo(func_8016B410_ovl3)
/* CB54C 8016AB0C AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* CB550 8016AB10 8C4C0000 */  lw         $t4, 0x0($v0)
/* CB554 8016AB14 3C01800E */  lui        $at, %hi(D_800DEF90)
/* CB558 8016AB18 3C19800B */  lui        $t9, %hi(func_800B4924)
/* CB55C 8016AB1C 000C6880 */  sll        $t5, $t4, 2
/* CB560 8016AB20 002D0821 */  addu       $at, $at, $t5
/* CB564 8016AB24 27394924 */  addiu      $t9, $t9, %lo(func_800B4924)
/* CB568 8016AB28 AC39EF90 */  sw         $t9, %lo(D_800DEF90)($at)
/* CB56C 8016AB2C 8C4E0000 */  lw         $t6, 0x0($v0)
/* CB570 8016AB30 3C01800F */  lui        $at, %hi(D_800E8920)
/* CB574 8016AB34 3C11800F */  lui        $s1, %hi(D_800E98E0)
/* CB578 8016AB38 000E7880 */  sll        $t7, $t6, 2
/* CB57C 8016AB3C 002F0821 */  addu       $at, $at, $t7
/* CB580 8016AB40 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* CB584 8016AB44 8C580000 */  lw         $t8, 0x0($v0)
/* CB588 8016AB48 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
/* CB58C 8016AB4C 00186080 */  sll        $t4, $t8, 2
/* CB590 8016AB50 022CC821 */  addu       $t9, $s1, $t4
/* CB594 8016AB54 0C05AEF4 */  jal        func_8016BBD0_ovl3
/* CB598 8016AB58 AF200000 */   sw        $zero, 0x0($t9)
/* CB59C 8016AB5C 8E020000 */  lw         $v0, 0x0($s0)
/* CB5A0 8016AB60 3C08800E */  lui        $t0, %hi(D_800E0D50)
/* CB5A4 8016AB64 25080D50 */  addiu      $t0, $t0, %lo(D_800E0D50)
/* CB5A8 8016AB68 8C430000 */  lw         $v1, 0x0($v0)
/* CB5AC 8016AB6C 3C05800E */  lui        $a1, %hi(gEntitiesNextPosXArray)
/* CB5B0 8016AB70 24A525D0 */  addiu      $a1, $a1, %lo(gEntitiesNextPosXArray)
/* CB5B4 8016AB74 00031880 */  sll        $v1, $v1, 2
/* CB5B8 8016AB78 01036821 */  addu       $t5, $t0, $v1
/* CB5BC 8016AB7C 8DAE0000 */  lw         $t6, 0x0($t5)
/* CB5C0 8016AB80 00A36021 */  addu       $t4, $a1, $v1
/* CB5C4 8016AB84 C5860000 */  lwc1       $f6, 0x0($t4)
/* CB5C8 8016AB88 000E7880 */  sll        $t7, $t6, 2
/* CB5CC 8016AB8C 00AFC021 */  addu       $t8, $a1, $t7
/* CB5D0 8016AB90 C7040000 */  lwc1       $f4, 0x0($t8)
/* CB5D4 8016AB94 3C018019 */  lui        $at, %hi(D_80197228_ovl3)
/* CB5D8 8016AB98 C42C7228 */  lwc1       $f12, %lo(D_80197228_ovl3)($at)
/* CB5DC 8016AB9C 46062201 */  sub.s      $f8, $f4, $f6
/* CB5E0 8016ABA0 3C018019 */  lui        $at, %hi(D_8019722C_ovl3)
/* CB5E4 8016ABA4 C430722C */  lwc1       $f16, %lo(D_8019722C_ovl3)($at)
/* CB5E8 8016ABA8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* CB5EC 8016ABAC 460C4282 */  mul.s      $f10, $f8, $f12
/* CB5F0 8016ABB0 00230821 */  addu       $at, $at, $v1
/* CB5F4 8016ABB4 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* CB5F8 8016ABB8 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* CB5FC 8016ABBC 3C07800E */  lui        $a3, %hi(gEntitiesNextPosZArray)
.L8016ABC0_ovl5:
/* CB600 8016ABC0 24E72950 */  addiu      $a3, $a3, %lo(gEntitiesNextPosZArray)
.L8016ABC4_ovl5:
/* CB604 8016ABC4 44807000 */  mtc1       $zero, $f14
/* CB608 8016ABC8 E42AA6E0 */  swc1       $f10, %lo(D_800EA6E0)($at)
/* CB60C 8016ABCC 8C430000 */  lw         $v1, 0x0($v0)
/* CB610 8016ABD0 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* CB614 8016ABD4 44812000 */  mtc1       $at, $f4
/* CB618 8016ABD8 00031880 */  sll        $v1, $v1, 2
/* CB61C 8016ABDC 0103C821 */  addu       $t9, $t0, $v1
/* CB620 8016ABE0 8F2D0000 */  lw         $t5, 0x0($t9)
/* CB624 8016ABE4 00C3C021 */  addu       $t8, $a2, $v1
/* CB628 8016ABE8 C7080000 */  lwc1       $f8, 0x0($t8)
/* CB62C 8016ABEC 000D7080 */  sll        $t6, $t5, 2
/* CB630 8016ABF0 00CE7821 */  addu       $t7, $a2, $t6
/* CB634 8016ABF4 C5F20000 */  lwc1       $f18, 0x0($t7)
/* CB638 8016ABF8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* CB63C 8016ABFC 00230821 */  addu       $at, $at, $v1
/* CB640 8016AC00 46049181 */  sub.s      $f6, $f18, $f4
/* CB644 8016AC04 3C09800E */  lui        $t1, %hi(D_800E3910)
/* CB648 8016AC08 25293910 */  addiu      $t1, $t1, %lo(D_800E3910)
/* CB64C 8016AC0C 3C0A800E */  lui        $t2, %hi(D_800E3E50)
/* CB650 8016AC10 46083281 */  sub.s      $f10, $f6, $f8
/* CB654 8016AC14 254A3E50 */  addiu      $t2, $t2, %lo(D_800E3E50)
/* CB658 8016AC18 3C0B800E */  lui        $t3, %hi(D_800E6690)
/* CB65C 8016AC1C 256B6690 */  addiu      $t3, $t3, %lo(D_800E6690)
/* CB660 8016AC20 460C5482 */  mul.s      $f18, $f10, $f12
/* CB664 8016AC24 24040005 */  addiu      $a0, $zero, 0x5
/* CB668 8016AC28 E432A8A0 */  swc1       $f18, %lo(D_800EA8A0)($at)
/* CB66C 8016AC2C 8C430000 */  lw         $v1, 0x0($v0)
/* CB670 8016AC30 3C01800F */  lui        $at, %hi(D_800EAA60)
/* CB674 8016AC34 00031880 */  sll        $v1, $v1, 2
/* CB678 8016AC38 01036021 */  addu       $t4, $t0, $v1
/* CB67C 8016AC3C 8D990000 */  lw         $t9, 0x0($t4)
/* CB680 8016AC40 00E37821 */  addu       $t7, $a3, $v1
/* CB684 8016AC44 C5E60000 */  lwc1       $f6, 0x0($t7)
/* CB688 8016AC48 00196880 */  sll        $t5, $t9, 2
/* CB68C 8016AC4C 00ED7021 */  addu       $t6, $a3, $t5
/* CB690 8016AC50 C5C40000 */  lwc1       $f4, 0x0($t6)
/* CB694 8016AC54 00230821 */  addu       $at, $at, $v1
/* CB698 8016AC58 46062201 */  sub.s      $f8, $f4, $f6
/* CB69C 8016AC5C 460C4282 */  mul.s      $f10, $f8, $f12
/* CB6A0 8016AC60 E42AAA60 */  swc1       $f10, %lo(D_800EAA60)($at)
/* CB6A4 8016AC64 8C580000 */  lw         $t8, 0x0($v0)
/* CB6A8 8016AC68 3C01800E */  lui        $at, %hi(D_800E3750)
/* CB6AC 8016AC6C 00186080 */  sll        $t4, $t8, 2
/* CB6B0 8016AC70 012CC821 */  addu       $t9, $t1, $t4
/* CB6B4 8016AC74 E72E0000 */  swc1       $f14, 0x0($t9)
.L8016AC78_ovl5:
/* CB6B8 8016AC78 8C430000 */  lw         $v1, 0x0($v0)
/* CB6BC 8016AC7C 00031880 */  sll        $v1, $v1, 2
/* CB6C0 8016AC80 01236821 */  addu       $t5, $t1, $v1
/* CB6C4 8016AC84 C5A00000 */  lwc1       $f0, 0x0($t5)
/* CB6C8 8016AC88 00230821 */  addu       $at, $at, $v1
/* CB6CC 8016AC8C E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* CB6D0 8016AC90 8C4E0000 */  lw         $t6, 0x0($v0)
/* CB6D4 8016AC94 3C01800E */  lui        $at, %hi(D_800E3590)
/* CB6D8 8016AC98 000E7880 */  sll        $t7, $t6, 2
/* CB6DC 8016AC9C 002F0821 */  addu       $at, $at, $t7
.L8016ACA0_ovl5:
/* CB6E0 8016ACA0 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* CB6E4 8016ACA4 8C580000 */  lw         $t8, 0x0($v0)
/* CB6E8 8016ACA8 3C01800E */  lui        $at, %hi(D_800E33D0)
/* CB6EC 8016ACAC 00186080 */  sll        $t4, $t8, 2
/* CB6F0 8016ACB0 002C0821 */  addu       $at, $at, $t4
/* CB6F4 8016ACB4 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* CB6F8 8016ACB8 8C590000 */  lw         $t9, 0x0($v0)
/* CB6FC 8016ACBC 3C01800E */  lui        $at, %hi(D_800E3210)
/* CB700 8016ACC0 00196880 */  sll        $t5, $t9, 2
/* CB704 8016ACC4 002D0821 */  addu       $at, $at, $t5
/* CB708 8016ACC8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* CB70C 8016ACCC 8C4E0000 */  lw         $t6, 0x0($v0)
/* CB710 8016ACD0 3C01800E */  lui        $at, %hi(D_800E3050)
/* CB714 8016ACD4 000E7880 */  sll        $t7, $t6, 2
/* CB718 8016ACD8 002F0821 */  addu       $at, $at, $t7
/* CB71C 8016ACDC E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* CB720 8016ACE0 8C580000 */  lw         $t8, 0x0($v0)
/* CB724 8016ACE4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CB728 8016ACE8 00186080 */  sll        $t4, $t8, 2
/* CB72C 8016ACEC 014CC821 */  addu       $t9, $t2, $t4
/* CB730 8016ACF0 E7300000 */  swc1       $f16, 0x0($t9)
/* CB734 8016ACF4 8C430000 */  lw         $v1, 0x0($v0)
/* CB738 8016ACF8 00031880 */  sll        $v1, $v1, 2
/* CB73C 8016ACFC 01436821 */  addu       $t5, $t2, $v1
/* CB740 8016AD00 C5A20000 */  lwc1       $f2, 0x0($t5)
/* CB744 8016AD04 00230821 */  addu       $at, $at, $v1
/* CB748 8016AD08 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* CB74C 8016AD0C 8C4E0000 */  lw         $t6, 0x0($v0)
/* CB750 8016AD10 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* CB754 8016AD14 000E7880 */  sll        $t7, $t6, 2
/* CB758 8016AD18 002F0821 */  addu       $at, $at, $t7
/* CB75C 8016AD1C E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
/* CB760 8016AD20 8C580000 */  lw         $t8, 0x0($v0)
/* CB764 8016AD24 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CB768 8016AD28 00186080 */  sll        $t4, $t8, 2
/* CB76C 8016AD2C 016CC821 */  addu       $t9, $t3, $t4
/* CB770 8016AD30 E72E0000 */  swc1       $f14, 0x0($t9)
/* CB774 8016AD34 8C430000 */  lw         $v1, 0x0($v0)
/* CB778 8016AD38 00031880 */  sll        $v1, $v1, 2
/* CB77C 8016AD3C 01636821 */  addu       $t5, $t3, $v1
/* CB780 8016AD40 C5B20000 */  lwc1       $f18, 0x0($t5)
/* CB784 8016AD44 00230821 */  addu       $at, $at, $v1
/* CB788 8016AD48 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
/* CB78C 8016AD4C 8C4E0000 */  lw         $t6, 0x0($v0)
/* CB790 8016AD50 3C01800E */  lui        $at, %hi(D_800E6850)
/* CB794 8016AD54 000E7880 */  sll        $t7, $t6, 2
/* CB798 8016AD58 002F0821 */  addu       $at, $at, $t7
/* CB79C 8016AD5C 0C002DAF */  jal        finish_current_thread
/* CB7A0 8016AD60 E4306850 */   swc1      $f16, %lo(D_800E6850)($at)
/* CB7A4 8016AD64 8E020000 */  lw         $v0, 0x0($s0)
/* CB7A8 8016AD68 3C08800E */  lui        $t0, %hi(D_800E0D50)
.L8016AD6C_ovl5:
/* CB7AC 8016AD6C 25080D50 */  addiu      $t0, $t0, %lo(D_800E0D50)
/* CB7B0 8016AD70 8C430000 */  lw         $v1, 0x0($v0)
/* CB7B4 8016AD74 3C05800E */  lui        $a1, %hi(gEntitiesNextPosXArray)
/* CB7B8 8016AD78 24A525D0 */  addiu      $a1, $a1, %lo(gEntitiesNextPosXArray)
/* CB7BC 8016AD7C 00031880 */  sll        $v1, $v1, 2
/* CB7C0 8016AD80 0103C021 */  addu       $t8, $t0, $v1
/* CB7C4 8016AD84 8F0C0000 */  lw         $t4, 0x0($t8)
/* CB7C8 8016AD88 00A37021 */  addu       $t6, $a1, $v1
/* CB7CC 8016AD8C 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* CB7D0 8016AD90 000CC880 */  sll        $t9, $t4, 2
/* CB7D4 8016AD94 00B96821 */  addu       $t5, $a1, $t9
/* CB7D8 8016AD98 C5A40000 */  lwc1       $f4, 0x0($t5)
.L8016AD9C_ovl5:
/* CB7DC 8016AD9C 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* CB7E0 8016ADA0 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* CB7E4 8016ADA4 E5C40000 */  swc1       $f4, 0x0($t6)
/* CB7E8 8016ADA8 8C430000 */  lw         $v1, 0x0($v0)
.L8016ADAC_ovl5:
/* CB7EC 8016ADAC 44814000 */  mtc1       $at, $f8
/* CB7F0 8016ADB0 3C07800E */  lui        $a3, %hi(gEntitiesNextPosZArray)
/* CB7F4 8016ADB4 00031880 */  sll        $v1, $v1, 2
/* CB7F8 8016ADB8 01037821 */  addu       $t7, $t0, $v1
/* CB7FC 8016ADBC 8DF80000 */  lw         $t8, 0x0($t7)
/* CB800 8016ADC0 00C36821 */  addu       $t5, $a2, $v1
/* CB804 8016ADC4 24E72950 */  addiu      $a3, $a3, %lo(gEntitiesNextPosZArray)
/* CB808 8016ADC8 00186080 */  sll        $t4, $t8, 2
/* CB80C 8016ADCC 00CCC821 */  addu       $t9, $a2, $t4
/* CB810 8016ADD0 C7260000 */  lwc1       $f6, 0x0($t9)
/* CB814 8016ADD4 46083281 */  sub.s      $f10, $f6, $f8
/* CB818 8016ADD8 E5AA0000 */  swc1       $f10, 0x0($t5)
/* CB81C 8016ADDC 8C430000 */  lw         $v1, 0x0($v0)
/* CB820 8016ADE0 240D0001 */  addiu      $t5, $zero, 0x1
/* CB824 8016ADE4 00031880 */  sll        $v1, $v1, 2
/* CB828 8016ADE8 01037021 */  addu       $t6, $t0, $v1
/* CB82C 8016ADEC 8DCF0000 */  lw         $t7, 0x0($t6)
/* CB830 8016ADF0 00E3C821 */  addu       $t9, $a3, $v1
/* CB834 8016ADF4 000FC080 */  sll        $t8, $t7, 2
/* CB838 8016ADF8 00F86021 */  addu       $t4, $a3, $t8
/* CB83C 8016ADFC C5920000 */  lwc1       $f18, 0x0($t4)
/* CB840 8016AE00 E7320000 */  swc1       $f18, 0x0($t9)
/* CB844 8016AE04 8C4E0000 */  lw         $t6, 0x0($v0)
/* CB848 8016AE08 3C19800E */  lui        $t9, %hi(D_800E7880)
/* CB84C 8016AE0C 000E7880 */  sll        $t7, $t6, 2
/* CB850 8016AE10 022FC021 */  addu       $t8, $s1, $t7
/* CB854 8016AE14 AF0D0000 */  sw         $t5, 0x0($t8)
/* CB858 8016AE18 8C430000 */  lw         $v1, 0x0($v0)
/* CB85C 8016AE1C 00031880 */  sll        $v1, $v1, 2
/* CB860 8016AE20 01036021 */  addu       $t4, $t0, $v1
/* CB864 8016AE24 8D840000 */  lw         $a0, 0x0($t4)
/* CB868 8016AE28 0324C821 */  addu       $t9, $t9, $a0
/* CB86C 8016AE2C 93397880 */  lbu        $t9, %lo(D_800E7880)($t9)
/* CB870 8016AE30 1320000F */  beqz       $t9, .L8016AE70_ovl3
.L8016AE34_ovl3:
/* CB874 8016AE34 00047080 */   sll       $t6, $a0, 2
/* CB878 8016AE38 3C0F800E */  lui        $t7, %hi(gEntityVtableIndexArray)
/* CB87C 8016AE3C 01EE7821 */  addu       $t7, $t7, $t6
/* CB880 8016AE40 8DEFDC50 */  lw         $t7, %lo(gEntityVtableIndexArray)($t7)
/* CB884 8016AE44 11E0000A */  beqz       $t7, .L8016AE70_ovl3
/* CB888 8016AE48 00000000 */   nop
/* CB88C 8016AE4C 0C002DAF */  jal        finish_current_thread
/* CB890 8016AE50 24040001 */   addiu     $a0, $zero, 0x1
/* CB894 8016AE54 8E0D0000 */  lw         $t5, 0x0($s0)
/* CB898 8016AE58 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* CB89C 8016AE5C 8DA30000 */  lw         $v1, 0x0($t5)
/* CB8A0 8016AE60 00031880 */  sll        $v1, $v1, 2
/* CB8A4 8016AE64 00832021 */  addu       $a0, $a0, $v1
/* CB8A8 8016AE68 1000FFF2 */  b          .L8016AE34_ovl3
/* CB8AC 8016AE6C 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
.L8016AE70_ovl3:
/* CB8B0 8016AE70 3C18800C */  lui        $t8, %hi(D_800BE500)
/* CB8B4 8016AE74 8F18E500 */  lw         $t8, %lo(D_800BE500)($t8)
/* CB8B8 8016AE78 24010004 */  addiu      $at, $zero, 0x4
/* CB8BC 8016AE7C 3C0C800C */  lui        $t4, %hi(D_800BE504)
/* CB8C0 8016AE80 57010014 */  bnel       $t8, $at, .L8016AED4_ovl3
/* CB8C4 8016AE84 240F0002 */   addiu     $t7, $zero, 0x2
/* CB8C8 8016AE88 8D8CE504 */  lw         $t4, %lo(D_800BE504)($t4)
/* CB8CC 8016AE8C 24010001 */  addiu      $at, $zero, 0x1
/* CB8D0 8016AE90 3C19800C */  lui        $t9, %hi(D_800BE508)
/* CB8D4 8016AE94 5581000F */  bnel       $t4, $at, .L8016AED4_ovl3
/* CB8D8 8016AE98 240F0002 */   addiu     $t7, $zero, 0x2
/* CB8DC 8016AE9C 8F39E508 */  lw         $t9, %lo(D_800BE508)($t9)
.L8016AEA0_ovl5:
/* CB8E0 8016AEA0 5720000C */  bnel       $t9, $zero, .L8016AED4_ovl3
/* CB8E4 8016AEA4 240F0002 */   addiu     $t7, $zero, 0x2
/* CB8E8 8016AEA8 0C03EFC6 */  jal        func_800FBF18
/* CB8EC 8016AEAC 24040003 */   addiu     $a0, $zero, 0x3
/* CB8F0 8016AEB0 0C03EF87 */  jal        func_800FBE1C
/* CB8F4 8016AEB4 00000000 */   nop
/* CB8F8 8016AEB8 3C048000 */  lui        $a0, (0x80000004 >> 16)
/* CB8FC 8016AEBC 0C03E905 */  jal        func_800FA414
/* CB900 8016AEC0 34840004 */   ori       $a0, $a0, (0x80000004 & 0xFFFF)
/* CB904 8016AEC4 8E0E0000 */  lw         $t6, 0x0($s0)
/* CB908 8016AEC8 8DC30000 */  lw         $v1, 0x0($t6)
/* CB90C 8016AECC 00031880 */  sll        $v1, $v1, 2
/* CB910 8016AED0 240F0002 */  addiu      $t7, $zero, 0x2
.L8016AED4_ovl3:
/* CB914 8016AED4 02236821 */  addu       $t5, $s1, $v1
/* CB918 8016AED8 ADAF0000 */  sw         $t7, 0x0($t5)
/* CB91C 8016AEDC 0C002DAF */  jal        finish_current_thread
/* CB920 8016AEE0 2404000F */   addiu     $a0, $zero, 0xF
/* CB924 8016AEE4 3C18800C */  lui        $t8, %hi(D_800BE500)
/* CB928 8016AEE8 8F18E500 */  lw         $t8, %lo(D_800BE500)($t8)
/* CB92C 8016AEEC 24010004 */  addiu      $at, $zero, 0x4
/* CB930 8016AEF0 3C0C800C */  lui        $t4, %hi(D_800BE504)
/* CB934 8016AEF4 5701000C */  bnel       $t8, $at, .L8016AF28_ovl3
/* CB938 8016AEF8 8E0F0000 */   lw        $t7, 0x0($s0)
/* CB93C 8016AEFC 8D8CE504 */  lw         $t4, %lo(D_800BE504)($t4)
/* CB940 8016AF00 24010001 */  addiu      $at, $zero, 0x1
/* CB944 8016AF04 3C19800C */  lui        $t9, %hi(D_800BE508)
/* CB948 8016AF08 55810007 */  bnel       $t4, $at, .L8016AF28_ovl3
/* CB94C 8016AF0C 8E0F0000 */   lw        $t7, 0x0($s0)
/* CB950 8016AF10 8F39E508 */  lw         $t9, %lo(D_800BE508)($t9)
/* CB954 8016AF14 57200004 */  bnel       $t9, $zero, .L8016AF28_ovl3
/* CB958 8016AF18 8E0F0000 */   lw        $t7, 0x0($s0)
/* CB95C 8016AF1C 0C002DAF */  jal        finish_current_thread
/* CB960 8016AF20 2404001E */   addiu     $a0, $zero, 0x1E
/* CB964 8016AF24 8E0F0000 */  lw         $t7, 0x0($s0)
.L8016AF28_ovl3:
/* CB968 8016AF28 240E0003 */  addiu      $t6, $zero, 0x3
/* CB96C 8016AF2C 24040004 */  addiu      $a0, $zero, 0x4
/* CB970 8016AF30 8DED0000 */  lw         $t5, 0x0($t7)
/* CB974 8016AF34 000DC080 */  sll        $t8, $t5, 2
/* CB978 8016AF38 02386021 */  addu       $t4, $s1, $t8
/* CB97C 8016AF3C 0C002DAF */  jal        finish_current_thread
/* CB980 8016AF40 AD8E0000 */   sw        $t6, 0x0($t4)
/* CB984 8016AF44 8E020000 */  lw         $v0, 0x0($s0)
/* CB988 8016AF48 24190004 */  addiu      $t9, $zero, 0x4
/* CB98C 8016AF4C 3C01800E */  lui        $at, %hi(D_800DDA90)
/* CB990 8016AF50 8C4F0000 */  lw         $t7, 0x0($v0)
/* CB994 8016AF54 240E0023 */  addiu      $t6, $zero, 0x23
/* CB998 8016AF58 3C04801D */  lui        $a0, %hi(D_801CA980)
/* CB99C 8016AF5C 000F6880 */  sll        $t5, $t7, 2
/* CB9A0 8016AF60 022DC021 */  addu       $t8, $s1, $t5
/* CB9A4 8016AF64 AF190000 */  sw         $t9, 0x0($t8)
/* CB9A8 8016AF68 8C4C0000 */  lw         $t4, 0x0($v0)
.L8016AF6C_ovl5:
/* CB9AC 8016AF6C 3C0D800B */  lui        $t5, %hi(func_800B4954)
/* CB9B0 8016AF70 25AD4954 */  addiu      $t5, $t5, %lo(func_800B4954)
/* CB9B4 8016AF74 000C7880 */  sll        $t7, $t4, 2
/* CB9B8 8016AF78 002F0821 */  addu       $at, $at, $t7
/* CB9BC 8016AF7C AC2EDA90 */  sw         $t6, %lo(D_800DDA90)($at)
.L8016AF80_ovl5:
/* CB9C0 8016AF80 8C590000 */  lw         $t9, 0x0($v0)
/* CB9C4 8016AF84 3C01800E */  lui        $at, %hi(D_800DEF90)
/* CB9C8 8016AF88 2484A980 */  addiu      $a0, $a0, %lo(D_801CA980)
/* CB9CC 8016AF8C 0019C080 */  sll        $t8, $t9, 2
/* CB9D0 8016AF90 00380821 */  addu       $at, $at, $t8
/* CB9D4 8016AF94 AC2DEF90 */  sw         $t5, %lo(D_800DEF90)($at)
/* CB9D8 8016AF98 8C4C0000 */  lw         $t4, 0x0($v0)
/* CB9DC 8016AF9C 3C01800F */  lui        $at, %hi(D_800E8920)
/* CB9E0 8016AFA0 000C7080 */  sll        $t6, $t4, 2
/* CB9E4 8016AFA4 002E0821 */  addu       $at, $at, $t6
/* CB9E8 8016AFA8 0C068CBB */  jal        func_801A32EC
/* CB9EC 8016AFAC AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* CB9F0 8016AFB0 8E020000 */  lw         $v0, 0x0($s0)
/* CB9F4 8016AFB4 3C0F800E */  lui        $t7, %hi(D_800E0D50)
/* CB9F8 8016AFB8 3C07800E */  lui        $a3, %hi(D_800E5F90)
/* CB9FC 8016AFBC 8C430000 */  lw         $v1, 0x0($v0)
/* CBA00 8016AFC0 24E75F90 */  addiu      $a3, $a3, %lo(D_800E5F90)
/* CBA04 8016AFC4 3C01800E */  lui        $at, %hi(D_800E6150)
/* CBA08 8016AFC8 00031880 */  sll        $v1, $v1, 2
/* CBA0C 8016AFCC 01E37821 */  addu       $t7, $t7, $v1
/* CBA10 8016AFD0 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
/* CBA14 8016AFD4 00230821 */  addu       $at, $at, $v1
/* CBA18 8016AFD8 3C08800E */  lui        $t0, %hi(D_800E6BD0)
/* CBA1C 8016AFDC 000FC880 */  sll        $t9, $t7, 2
/* CBA20 8016AFE0 00F96821 */  addu       $t5, $a3, $t9
/* CBA24 8016AFE4 8DA60000 */  lw         $a2, 0x0($t5)
/* CBA28 8016AFE8 3C0F800E */  lui        $t7, %hi(D_800E0D50)
/* CBA2C 8016AFEC 25086BD0 */  addiu      $t0, $t0, %lo(D_800E6BD0)
/* CBA30 8016AFF0 AC266150 */  sw         $a2, %lo(D_800E6150)($at)
/* CBA34 8016AFF4 8C580000 */  lw         $t8, 0x0($v0)
/* CBA38 8016AFF8 3C01800E */  lui        $at, %hi(D_800E6D90)
/* CBA3C 8016AFFC 24040007 */  addiu      $a0, $zero, 0x7
/* CBA40 8016B000 00186080 */  sll        $t4, $t8, 2
/* CBA44 8016B004 00EC7021 */  addu       $t6, $a3, $t4
/* CBA48 8016B008 ADC60000 */  sw         $a2, 0x0($t6)
/* CBA4C 8016B00C 8C430000 */  lw         $v1, 0x0($v0)
/* CBA50 8016B010 00002825 */  or         $a1, $zero, $zero
/* CBA54 8016B014 00031880 */  sll        $v1, $v1, 2
/* CBA58 8016B018 01E37821 */  addu       $t7, $t7, $v1
/* CBA5C 8016B01C 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
/* CBA60 8016B020 00230821 */  addu       $at, $at, $v1
/* CBA64 8016B024 000FC880 */  sll        $t9, $t7, 2
/* CBA68 8016B028 01196821 */  addu       $t5, $t0, $t9
/* CBA6C 8016B02C C5A00000 */  lwc1       $f0, 0x0($t5)
/* CBA70 8016B030 E4206D90 */  swc1       $f0, %lo(D_800E6D90)($at)
/* CBA74 8016B034 8C580000 */  lw         $t8, 0x0($v0)
/* CBA78 8016B038 00186080 */  sll        $t4, $t8, 2
/* CBA7C 8016B03C 010C7021 */  addu       $t6, $t0, $t4
/* CBA80 8016B040 0C02ED1A */  jal        func_800BB468
/* CBA84 8016B044 E5C00000 */   swc1      $f0, 0x0($t6)
/* CBA88 8016B048 8E020000 */  lw         $v0, 0x0($s0)
.L8016B04C_ovl5:
/* CBA8C 8016B04C 3C0F800E */  lui        $t7, %hi(D_800E0D50)
/* CBA90 8016B050 8C430000 */  lw         $v1, 0x0($v0)
/* CBA94 8016B054 00031880 */  sll        $v1, $v1, 2
/* CBA98 8016B058 01E37821 */  addu       $t7, $t7, $v1
/* CBA9C 8016B05C 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
/* CBAA0 8016B060 000FC880 */  sll        $t9, $t7, 2
/* CBAA4 8016B064 02396821 */  addu       $t5, $s1, $t9
/* CBAA8 8016B068 8DB80000 */  lw         $t8, 0x0($t5)
/* CBAAC 8016B06C 2F010008 */  sltiu      $at, $t8, 0x8
/* CBAB0 8016B070 102000B7 */  beqz       $at, .L8016B350_ovl3
/* CBAB4 8016B074 0018C080 */   sll       $t8, $t8, 2
/* CBAB8 8016B078 3C018019 */  lui        $at, %hi(jtbl_80197230_ovl3)
.L8016B07C_ovl5:
/* CBABC 8016B07C 00380821 */  addu       $at, $at, $t8
/* CBAC0 8016B080 8C387230 */  lw         $t8, %lo(jtbl_80197230_ovl3)($at)
/* CBAC4 8016B084 03000008 */  jr         $t8
/* CBAC8 8016B088 00000000 */   nop
.L8016B08C_ovl5:
/* CBACC 8016B08C 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBAD0 8016B090 44812000 */  mtc1       $at, $f4
/* CBAD4 8016B094 3C01800E */  lui        $at, %hi(D_800E3210)
/* CBAD8 8016B098 00230821 */  addu       $at, $at, $v1
/* CBADC 8016B09C 100000AC */  b          .L8016B350_ovl3
/* CBAE0 8016B0A0 E4243210 */   swc1      $f4, %lo(D_800E3210)($at)
/* CBAE4 8016B0A4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBAE8 8016B0A8 44816000 */  mtc1       $at, $f12
/* CBAEC 8016B0AC 0C00CAC8 */  jal        sqrtf
/* CBAF0 8016B0B0 00000000 */   nop
/* CBAF4 8016B0B4 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBAF8 8016B0B8 44813000 */  mtc1       $at, $f6
/* CBAFC 8016B0BC 8E0C0000 */  lw         $t4, 0x0($s0)
/* CBB00 8016B0C0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CBB04 8016B0C4 46003203 */  div.s      $f8, $f6, $f0
/* CBB08 8016B0C8 8D8E0000 */  lw         $t6, 0x0($t4)
/* CBB0C 8016B0CC 000E7880 */  sll        $t7, $t6, 2
/* CBB10 8016B0D0 002F0821 */  addu       $at, $at, $t7
/* CBB14 8016B0D4 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* CBB18 8016B0D8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBB1C 8016B0DC 44816000 */  mtc1       $at, $f12
/* CBB20 8016B0E0 0C00CAC8 */  jal        sqrtf
/* CBB24 8016B0E4 00000000 */   nop
/* CBB28 8016B0E8 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBB2C 8016B0EC 44815000 */  mtc1       $at, $f10
/* CBB30 8016B0F0 8E020000 */  lw         $v0, 0x0($s0)
/* CBB34 8016B0F4 3C01800E */  lui        $at, %hi(D_800E3210)
/* CBB38 8016B0F8 46005483 */  div.s      $f18, $f10, $f0
/* CBB3C 8016B0FC 8C590000 */  lw         $t9, 0x0($v0)
/* CBB40 8016B100 00196880 */  sll        $t5, $t9, 2
/* CBB44 8016B104 002D0821 */  addu       $at, $at, $t5
/* CBB48 8016B108 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
/* CBB4C 8016B10C 8C580000 */  lw         $t8, 0x0($v0)
/* CBB50 8016B110 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CBB54 8016B114 44812000 */  mtc1       $at, $f4
/* CBB58 8016B118 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CBB5C 8016B11C 00186080 */  sll        $t4, $t8, 2
/* CBB60 8016B120 002C0821 */  addu       $at, $at, $t4
/* CBB64 8016B124 1000008A */  b          .L8016B350_ovl3
/* CBB68 8016B128 E4246A10 */   swc1      $f4, %lo(D_800E6A10)($at)
/* CBB6C 8016B12C 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBB70 8016B130 44813000 */  mtc1       $at, $f6
/* CBB74 8016B134 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CBB78 8016B138 00230821 */  addu       $at, $at, $v1
/* CBB7C 8016B13C E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* CBB80 8016B140 8C4E0000 */  lw         $t6, 0x0($v0)
/* CBB84 8016B144 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CBB88 8016B148 44814000 */  mtc1       $at, $f8
/* CBB8C 8016B14C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CBB90 8016B150 000E7880 */  sll        $t7, $t6, 2
/* CBB94 8016B154 002F0821 */  addu       $at, $at, $t7
/* CBB98 8016B158 1000007D */  b          .L8016B350_ovl3
/* CBB9C 8016B15C E4286A10 */   swc1      $f8, %lo(D_800E6A10)($at)
/* CBBA0 8016B160 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBBA4 8016B164 44816000 */  mtc1       $at, $f12
/* CBBA8 8016B168 0C00CAC8 */  jal        sqrtf
/* CBBAC 8016B16C 00000000 */   nop
/* CBBB0 8016B170 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBBB4 8016B174 44815000 */  mtc1       $at, $f10
/* CBBB8 8016B178 8E190000 */  lw         $t9, 0x0($s0)
/* CBBBC 8016B17C 3C01800E */  lui        $at, %hi(D_800E64D0)
.L8016B180_ovl5:
/* CBBC0 8016B180 46005483 */  div.s      $f18, $f10, $f0
/* CBBC4 8016B184 8F2D0000 */  lw         $t5, 0x0($t9)
/* CBBC8 8016B188 000DC080 */  sll        $t8, $t5, 2
/* CBBCC 8016B18C 00380821 */  addu       $at, $at, $t8
/* CBBD0 8016B190 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
/* CBBD4 8016B194 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBBD8 8016B198 44816000 */  mtc1       $at, $f12
/* CBBDC 8016B19C 0C00CAC8 */  jal        sqrtf
/* CBBE0 8016B1A0 00000000 */   nop
/* CBBE4 8016B1A4 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBBE8 8016B1A8 44812000 */  mtc1       $at, $f4
/* CBBEC 8016B1AC 8E020000 */  lw         $v0, 0x0($s0)
/* CBBF0 8016B1B0 3C01800E */  lui        $at, %hi(D_800E3210)
/* CBBF4 8016B1B4 46002183 */  div.s      $f6, $f4, $f0
/* CBBF8 8016B1B8 8C4C0000 */  lw         $t4, 0x0($v0)
/* CBBFC 8016B1BC 000C7080 */  sll        $t6, $t4, 2
/* CBC00 8016B1C0 002E0821 */  addu       $at, $at, $t6
/* CBC04 8016B1C4 46003207 */  neg.s      $f8, $f6
/* CBC08 8016B1C8 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* CBC0C 8016B1CC 8C4F0000 */  lw         $t7, 0x0($v0)
/* CBC10 8016B1D0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CBC14 8016B1D4 44815000 */  mtc1       $at, $f10
/* CBC18 8016B1D8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CBC1C 8016B1DC 000FC880 */  sll        $t9, $t7, 2
/* CBC20 8016B1E0 00390821 */  addu       $at, $at, $t9
/* CBC24 8016B1E4 1000005A */  b          .L8016B350_ovl3
/* CBC28 8016B1E8 E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
/* CBC2C 8016B1EC 3C01C170 */  lui        $at, (0xC1700000 >> 16)
/* CBC30 8016B1F0 44819000 */  mtc1       $at, $f18
/* CBC34 8016B1F4 3C01800E */  lui        $at, %hi(D_800E3210)
/* CBC38 8016B1F8 00230821 */  addu       $at, $at, $v1
/* CBC3C 8016B1FC 10000054 */  b          .L8016B350_ovl3
/* CBC40 8016B200 E4323210 */   swc1      $f18, %lo(D_800E3210)($at)
/* CBC44 8016B204 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBC48 8016B208 44816000 */  mtc1       $at, $f12
/* CBC4C 8016B20C 0C00CAC8 */  jal        sqrtf
/* CBC50 8016B210 00000000 */   nop
/* CBC54 8016B214 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBC58 8016B218 44812000 */  mtc1       $at, $f4
/* CBC5C 8016B21C 8E0D0000 */  lw         $t5, 0x0($s0)
/* CBC60 8016B220 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CBC64 8016B224 46002183 */  div.s      $f6, $f4, $f0
/* CBC68 8016B228 8DB80000 */  lw         $t8, 0x0($t5)
/* CBC6C 8016B22C 00186080 */  sll        $t4, $t8, 2
/* CBC70 8016B230 002C0821 */  addu       $at, $at, $t4
/* CBC74 8016B234 46003207 */  neg.s      $f8, $f6
/* CBC78 8016B238 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* CBC7C 8016B23C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBC80 8016B240 44816000 */  mtc1       $at, $f12
/* CBC84 8016B244 0C00CAC8 */  jal        sqrtf
/* CBC88 8016B248 00000000 */   nop
.L8016B24C_ovl5:
/* CBC8C 8016B24C 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBC90 8016B250 44815000 */  mtc1       $at, $f10
/* CBC94 8016B254 8E020000 */  lw         $v0, 0x0($s0)
/* CBC98 8016B258 3C01800E */  lui        $at, %hi(D_800E3210)
/* CBC9C 8016B25C 46005483 */  div.s      $f18, $f10, $f0
.L8016B260_ovl5:
/* CBCA0 8016B260 8C4E0000 */  lw         $t6, 0x0($v0)
/* CBCA4 8016B264 000E7880 */  sll        $t7, $t6, 2
/* CBCA8 8016B268 002F0821 */  addu       $at, $at, $t7
/* CBCAC 8016B26C 46009107 */  neg.s      $f4, $f18
/* CBCB0 8016B270 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* CBCB4 8016B274 8C590000 */  lw         $t9, 0x0($v0)
/* CBCB8 8016B278 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CBCBC 8016B27C 44813000 */  mtc1       $at, $f6
/* CBCC0 8016B280 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CBCC4 8016B284 00196880 */  sll        $t5, $t9, 2
/* CBCC8 8016B288 002D0821 */  addu       $at, $at, $t5
/* CBCCC 8016B28C 10000030 */  b          .L8016B350_ovl3
/* CBCD0 8016B290 E4266A10 */   swc1      $f6, %lo(D_800E6A10)($at)
/* CBCD4 8016B294 3C01C170 */  lui        $at, (0xC1700000 >> 16)
/* CBCD8 8016B298 44814000 */  mtc1       $at, $f8
/* CBCDC 8016B29C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CBCE0 8016B2A0 00230821 */  addu       $at, $at, $v1
/* CBCE4 8016B2A4 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* CBCE8 8016B2A8 8C580000 */  lw         $t8, 0x0($v0)
/* CBCEC 8016B2AC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CBCF0 8016B2B0 44815000 */  mtc1       $at, $f10
/* CBCF4 8016B2B4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CBCF8 8016B2B8 00186080 */  sll        $t4, $t8, 2
/* CBCFC 8016B2BC 002C0821 */  addu       $at, $at, $t4
/* CBD00 8016B2C0 10000023 */  b          .L8016B350_ovl3
/* CBD04 8016B2C4 E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
/* CBD08 8016B2C8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBD0C 8016B2CC 44816000 */  mtc1       $at, $f12
/* CBD10 8016B2D0 0C00CAC8 */  jal        sqrtf
/* CBD14 8016B2D4 00000000 */   nop
/* CBD18 8016B2D8 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBD1C 8016B2DC 44819000 */  mtc1       $at, $f18
/* CBD20 8016B2E0 8E0E0000 */  lw         $t6, 0x0($s0)
/* CBD24 8016B2E4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CBD28 8016B2E8 46009103 */  div.s      $f4, $f18, $f0
/* CBD2C 8016B2EC 8DCF0000 */  lw         $t7, 0x0($t6)
/* CBD30 8016B2F0 000FC880 */  sll        $t9, $t7, 2
/* CBD34 8016B2F4 00390821 */  addu       $at, $at, $t9
/* CBD38 8016B2F8 46002187 */  neg.s      $f6, $f4
/* CBD3C 8016B2FC E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* CBD40 8016B300 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CBD44 8016B304 44816000 */  mtc1       $at, $f12
/* CBD48 8016B308 0C00CAC8 */  jal        sqrtf
/* CBD4C 8016B30C 00000000 */   nop
/* CBD50 8016B310 3C014170 */  lui        $at, (0x41700000 >> 16)
/* CBD54 8016B314 44814000 */  mtc1       $at, $f8
/* CBD58 8016B318 8E020000 */  lw         $v0, 0x0($s0)
/* CBD5C 8016B31C 3C01800E */  lui        $at, %hi(D_800E3210)
/* CBD60 8016B320 46004283 */  div.s      $f10, $f8, $f0
/* CBD64 8016B324 8C4D0000 */  lw         $t5, 0x0($v0)
/* CBD68 8016B328 000DC080 */  sll        $t8, $t5, 2
.L8016B32C_ovl5:
/* CBD6C 8016B32C 00380821 */  addu       $at, $at, $t8
/* CBD70 8016B330 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* CBD74 8016B334 8C4C0000 */  lw         $t4, 0x0($v0)
/* CBD78 8016B338 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CBD7C 8016B33C 44819000 */  mtc1       $at, $f18
/* CBD80 8016B340 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CBD84 8016B344 000C7080 */  sll        $t6, $t4, 2
/* CBD88 8016B348 002E0821 */  addu       $at, $at, $t6
/* CBD8C 8016B34C E4326A10 */  swc1       $f18, %lo(D_800E6A10)($at)
.L8016B350_ovl3:
/* CBD90 8016B350 0C05AF00 */  jal        func_8016BC00_ovl3
/* CBD94 8016B354 00000000 */   nop
/* CBD98 8016B358 8E020000 */  lw         $v0, 0x0($s0)
.L8016B35C_ovl5:
/* CBD9C 8016B35C 24010004 */  addiu      $at, $zero, 0x4
/* CBDA0 8016B360 8C4F0000 */  lw         $t7, 0x0($v0)
/* CBDA4 8016B364 000FC880 */  sll        $t9, $t7, 2
/* CBDA8 8016B368 02391821 */  addu       $v1, $s1, $t9
.L8016B36C_ovl5:
/* CBDAC 8016B36C 8C640000 */  lw         $a0, 0x0($v1)
/* CBDB0 8016B370 5481000C */  bnel       $a0, $at, .L8016B3A4_ovl3
/* CBDB4 8016B374 24010006 */   addiu     $at, $zero, 0x6
.L8016B378_ovl3:
/* CBDB8 8016B378 0C002DAF */  jal        finish_current_thread
/* CBDBC 8016B37C 24040001 */   addiu     $a0, $zero, 0x1
/* CBDC0 8016B380 8E020000 */  lw         $v0, 0x0($s0)
/* CBDC4 8016B384 24010004 */  addiu      $at, $zero, 0x4
/* CBDC8 8016B388 8C4D0000 */  lw         $t5, 0x0($v0)
/* CBDCC 8016B38C 000DC080 */  sll        $t8, $t5, 2
/* CBDD0 8016B390 02381821 */  addu       $v1, $s1, $t8
/* CBDD4 8016B394 8C640000 */  lw         $a0, 0x0($v1)
/* CBDD8 8016B398 1081FFF7 */  beq        $a0, $at, .L8016B378_ovl3
/* CBDDC 8016B39C 00000000 */   nop
/* CBDE0 8016B3A0 24010006 */  addiu      $at, $zero, 0x6
.L8016B3A4_ovl3:
/* CBDE4 8016B3A4 10810012 */  beq        $a0, $at, .L8016B3F0_ovl3
/* CBDE8 8016B3A8 240C0002 */   addiu     $t4, $zero, 0x2
/* CBDEC 8016B3AC 240C0005 */  addiu      $t4, $zero, 0x5
/* CBDF0 8016B3B0 AC6C0000 */  sw         $t4, 0x0($v1)
/* CBDF4 8016B3B4 8C4F0000 */  lw         $t7, 0x0($v0)
/* CBDF8 8016B3B8 3C0E800B */  lui        $t6, %hi(func_800B531C)
/* CBDFC 8016B3BC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* CBE00 8016B3C0 000FC880 */  sll        $t9, $t7, 2
/* CBE04 8016B3C4 00390821 */  addu       $at, $at, $t9
/* CBE08 8016B3C8 25CE531C */  addiu      $t6, $t6, %lo(func_800B531C)
/* CBE0C 8016B3CC AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* CBE10 8016B3D0 8C4D0000 */  lw         $t5, 0x0($v0)
/* CBE14 8016B3D4 3C01800F */  lui        $at, %hi(D_800E8920)
/* CBE18 8016B3D8 000DC080 */  sll        $t8, $t5, 2
/* CBE1C 8016B3DC 00380821 */  addu       $at, $at, $t8
/* CBE20 8016B3E0 0C02BE85 */  jal        func_800AFA14
/* CBE24 8016B3E4 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* CBE28 8016B3E8 10000005 */  b          .L8016B400_ovl3
/* CBE2C 8016B3EC 8FBF001C */   lw        $ra, 0x1C($sp)
.L8016B3F0_ovl3:
/* CBE30 8016B3F0 3C01800C */  lui        $at, %hi(D_800BE4F8)
/* CBE34 8016B3F4 0C02BE85 */  jal        func_800AFA14
/* CBE38 8016B3F8 AC2CE4F8 */   sw        $t4, %lo(D_800BE4F8)($at)
/* CBE3C 8016B3FC 8FBF001C */  lw         $ra, 0x1C($sp)
.L8016B400_ovl3:
/* CBE40 8016B400 8FB00014 */  lw         $s0, 0x14($sp)
/* CBE44 8016B404 8FB10018 */  lw         $s1, 0x18($sp)
/* CBE48 8016B408 03E00008 */  jr         $ra
/* CBE4C 8016B40C 27BD0020 */   addiu     $sp, $sp, 0x20
