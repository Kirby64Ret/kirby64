glabel func_801736BC_ovl3
/* 0D40FC 801736BC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0D4100 801736C0 AFB00024 */  sw    $s0, 0x24($sp)
/* 0D4104 801736C4 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0D4108 801736C8 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0D410C 801736CC AFBF0034 */  sw    $ra, 0x34($sp)
/* 0D4110 801736D0 AFB30030 */  sw    $s3, 0x30($sp)
/* 0D4114 801736D4 AFB2002C */  sw    $s2, 0x2c($sp)
/* 0D4118 801736D8 AFB10028 */  sw    $s1, 0x28($sp)
/* 0D411C 801736DC F7B60018 */  sdc1  $f22, 0x18($sp)
/* 0D4120 801736E0 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 0D4124 801736E4 AFA40060 */  sw    $a0, 0x60($sp)
/* 0D4128 801736E8 AE000044 */  sw    $zero, 0x44($s0)
/* 0D412C 801736EC 0C0473D6 */  jal   func_8011CF58
/* 0D4130 801736F0 AE000030 */   sw    $zero, 0x30($s0)
/* 0D4134 801736F4 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0D4138 801736F8 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0D413C 801736FC 8E380000 */  lw    $t8, ($s1)
/* 0D4140 80173700 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0D4144 80173704 240F0017 */  li    $t7, 23
/* 0D4148 80173708 8F190000 */  lw    $t9, ($t8)
/* 0D414C 8017370C 27A40054 */  addiu $a0, $sp, 0x54
/* 0D4150 80173710 00194080 */  sll   $t0, $t9, 2
/* 0D4154 80173714 00280821 */  addu  $at, $at, $t0
/* 0D4158 80173718 0C0482BE */  jal   func_80120AF8
/* 0D415C 8017371C AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 0D4160 80173720 8E220000 */  lw    $v0, ($s1)
/* 0D4164 80173724 3C09800F */ lui $t1, %hi(D_800E8AE0)
/* 0D4168 80173728 4480A000 */  mtc1  $zero, $f20
/* 0D416C 8017372C 8C430000 */  lw    $v1, ($v0)
/* 0D4170 80173730 C7A40054 */  lwc1  $f4, 0x54($sp)
/* 0D4174 80173734 00031880 */  sll   $v1, $v1, 2
/* 0D4178 80173738 01234821 */  addu  $t1, $t1, $v1
/* 0D417C 8017373C 8D298AE0 */ lw $t1, %lo(D_800E8AE0)($t1)
/* 0D4180 80173740 312A0006 */  andi  $t2, $t1, 6
/* 0D4184 80173744 15400004 */  bnez  $t2, .L80173758_ovl3
/* 0D4188 80173748 3C014110 */   li    $at, 0x41100000 # 9.000000
/* 0D418C 8017374C 44811000 */  mtc1  $at, $f2
/* 0D4190 80173750 10000004 */  b     .L80173764_ovl3
/* 0D4194 80173754 00000000 */   nop   
.L80173758_ovl3:
/* 0D4198 80173758 3C014090 */  li    $at, 0x40900000 # 4.500000
/* 0D419C 8017375C 44811000 */  mtc1  $at, $f2
/* 0D41A0 80173760 00000000 */  nop   
.L80173764_ovl3:
/* 0D41A4 80173764 46041182 */  mul.s $f6, $f2, $f4
/* 0D41A8 80173768 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0D41AC 8017376C 00230821 */  addu  $at, $at, $v1
/* 0D41B0 80173770 C4286A10 */ lwc1 $f8, %lo(D_800E6A10)($at)
/* 0D41B4 80173774 3C12800E */  lui   $s2, %hi(D_800E64D0) # $s2, 0x800e
/* 0D41B8 80173778 265264D0 */  addiu $s2, %lo(D_800E64D0) # addiu $s2, $s2, 0x64d0
/* 0D41BC 8017377C 02435821 */  addu  $t3, $s2, $v1
/* 0D41C0 80173780 46083282 */  mul.s $f10, $f6, $f8
/* 0D41C4 80173784 3C014110 */  li    $at, 0x41100000 # 9.000000
/* 0D41C8 80173788 44818000 */  mtc1  $at, $f16
/* 0D41CC 8017378C 4480B000 */  mtc1  $zero, $f22
/* 0D41D0 80173790 E56A0000 */  swc1  $f10, ($t3)
/* 0D41D4 80173794 C7B20054 */  lwc1  $f18, 0x54($sp)
/* 0D41D8 80173798 46128002 */  mul.s $f0, $f16, $f18
/* 0D41DC 8017379C 4616003C */  c.lt.s $f0, $f22
/* 0D41E0 801737A0 00000000 */  nop   
/* 0D41E4 801737A4 4502000A */  bc1fl .L801737D0_ovl3
/* 0D41E8 801737A8 8C580000 */   lw    $t8, ($v0)
/* 0D41EC 801737AC 8C4C0000 */  lw    $t4, ($v0)
/* 0D41F0 801737B0 3C13800E */  lui   $s3, %hi(D_800E6850) # $s3, 0x800e
/* 0D41F4 801737B4 26736850 */  addiu $s3, %lo(D_800E6850) # addiu $s3, $s3, 0x6850
/* 0D41F8 801737B8 000C6880 */  sll   $t5, $t4, 2
/* 0D41FC 801737BC 46000107 */  neg.s $f4, $f0
/* 0D4200 801737C0 026D7021 */  addu  $t6, $s3, $t5
/* 0D4204 801737C4 10000007 */  b     .L801737E4_ovl3
/* 0D4208 801737C8 E5C40000 */   swc1  $f4, ($t6)
/* 0D420C 801737CC 8C580000 */  lw    $t8, ($v0)
.L801737D0_ovl3:
/* 0D4210 801737D0 3C13800E */  lui   $s3, %hi(D_800E6850) # $s3, 0x800e
/* 0D4214 801737D4 26736850 */  addiu $s3, %lo(D_800E6850) # addiu $s3, $s3, 0x6850
/* 0D4218 801737D8 0018C880 */  sll   $t9, $t8, 2
/* 0D421C 801737DC 02797821 */  addu  $t7, $s3, $t9
/* 0D4220 801737E0 E5E00000 */  swc1  $f0, ($t7)
.L801737E4_ovl3:
/* 0D4224 801737E4 E7B4005C */  swc1  $f20, 0x5c($sp)
/* 0D4228 801737E8 8C490000 */  lw    $t1, ($v0)
/* 0D422C 801737EC 3C01800F */ lui $at, %hi(D_800E9720)
/* 0D4230 801737F0 24080004 */  li    $t0, 4
/* 0D4234 801737F4 00095080 */  sll   $t2, $t1, 2
/* 0D4238 801737F8 002A0821 */  addu  $at, $at, $t2
/* 0D423C 801737FC AC289720 */ sw $t0, %lo(D_800E9720)($at)
/* 0D4240 80173800 8C4B0000 */  lw    $t3, ($v0)
/* 0D4244 80173804 3C01800F */ lui $at, %hi(D_800E83E0)
/* 0D4248 80173808 000B6080 */  sll   $t4, $t3, 2
/* 0D424C 8017380C 002C0821 */  addu  $at, $at, $t4
/* 0D4250 80173810 0C048B0C */  jal   func_80122C30
/* 0D4254 80173814 AC2083E0 */ sw $zero, %lo(D_800E83E0)($at)
/* 0D4258 80173818 3C040002 */  lui   $a0, (0x000200F5 >> 16) # lui $a0, 2
/* 0D425C 8017381C 3C050002 */  lui   $a1, (0x000200F6 >> 16) # lui $a1, 2
/* 0D4260 80173820 34A500F6 */  ori   $a1, (0x000200F6 & 0xFFFF) # ori $a1, $a1, 0xf6
/* 0D4264 80173824 348400F5 */  ori   $a0, (0x000200F5 & 0xFFFF) # ori $a0, $a0, 0xf5
/* 0D4268 80173828 0C048C3A */  jal   func_801230E8
/* 0D426C 8017382C 00003025 */   move  $a2, $zero
/* 0D4270 80173830 0C002DAF */  jal   finish_current_thread
/* 0D4274 80173834 24040001 */   li    $a0, 1
/* 0D4278 80173838 8E220000 */  lw    $v0, ($s1)
/* 0D427C 8017383C 8C430000 */  lw    $v1, ($v0)
/* 0D4280 80173840 00031880 */  sll   $v1, $v1, 2
/* 0D4284 80173844 02436821 */  addu  $t5, $s2, $v1
/* 0D4288 80173848 C5A00000 */  lwc1  $f0, ($t5)
/* 0D428C 8017384C 4600B032 */  c.eq.s $f22, $f0
/* 0D4290 80173850 00000000 */  nop   
/* 0D4294 80173854 45010048 */  bc1t  .L80173978_ovl3
.L80173858_ovl3:
/* 0D4298 80173858 3C0E800F */   lui   $t6, %hi(D_800E9720) # $t6, 0x800f
/* 0D429C 8017385C 25CE9720 */  addiu $t6, %lo(D_800E9720) # addiu $t6, $t6, -0x68e0
/* 0D42A0 80173860 006E2021 */  addu  $a0, $v1, $t6
/* 0D42A4 80173864 8C850000 */  lw    $a1, ($a0)
/* 0D42A8 80173868 C7A6005C */  lwc1  $f6, 0x5c($sp)
/* 0D42AC 8017386C 14A0001C */  bnez  $a1, .L801738E0_ovl3
/* 0D42B0 80173870 24A8FFFF */   addiu $t0, $a1, -1
/* 0D42B4 80173874 46163032 */  c.eq.s $f6, $f22
/* 0D42B8 80173878 00000000 */  nop   
/* 0D42BC 8017387C 4502001E */  bc1fl .L801738F8_ovl3
/* 0D42C0 80173880 4600A03C */   c.lt.s $f20, $f0
/* 0D42C4 80173884 0C0482BE */  jal   func_80120AF8
/* 0D42C8 80173888 27A40054 */   addiu $a0, $sp, 0x54
/* 0D42CC 8017388C 8E220000 */  lw    $v0, ($s1)
/* 0D42D0 80173890 C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 0D42D4 80173894 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0D42D8 80173898 8C430000 */  lw    $v1, ($v0)
/* 0D42DC 8017389C 46084280 */  add.s $f10, $f8, $f8
/* 0D42E0 801738A0 00031880 */  sll   $v1, $v1, 2
/* 0D42E4 801738A4 00230821 */  addu  $at, $at, $v1
/* 0D42E8 801738A8 C4306A10 */ lwc1 $f16, %lo(D_800E6A10)($at)
/* 0D42EC 801738AC 3C01800E */ lui $at, %hi(D_800E6690)
/* 0D42F0 801738B0 00230821 */  addu  $at, $at, $v1
/* 0D42F4 801738B4 460A8482 */  mul.s $f18, $f16, $f10
/* 0D42F8 801738B8 E4326690 */ swc1 $f18, %lo(D_800E6690)($at)
/* 0D42FC 801738BC 8C580000 */  lw    $t8, ($v0)
/* 0D4300 801738C0 0018C880 */  sll   $t9, $t8, 2
/* 0D4304 801738C4 02797821 */  addu  $t7, $s3, $t9
/* 0D4308 801738C8 E5F40000 */  swc1  $f20, ($t7)
/* 0D430C 801738CC 8C430000 */  lw    $v1, ($v0)
/* 0D4310 801738D0 00031880 */  sll   $v1, $v1, 2
/* 0D4314 801738D4 02434821 */  addu  $t1, $s2, $v1
/* 0D4318 801738D8 10000006 */  b     .L801738F4_ovl3
/* 0D431C 801738DC C5200000 */   lwc1  $f0, ($t1)
.L801738E0_ovl3:
/* 0D4320 801738E0 AC880000 */  sw    $t0, ($a0)
/* 0D4324 801738E4 8C430000 */  lw    $v1, ($v0)
/* 0D4328 801738E8 00031880 */  sll   $v1, $v1, 2
/* 0D432C 801738EC 02435021 */  addu  $t2, $s2, $v1
/* 0D4330 801738F0 C5400000 */  lwc1  $f0, ($t2)
.L801738F4_ovl3:
/* 0D4334 801738F4 4600A03C */  c.lt.s $f20, $f0
.L801738F8_ovl3:
/* 0D4338 801738F8 00000000 */  nop   
/* 0D433C 801738FC 45020006 */  bc1fl .L80173918_ovl3
/* 0D4340 80173900 4614003C */   c.lt.s $f0, $f20
/* 0D4344 80173904 8E0B00EC */  lw    $t3, 0xec($s0)
/* 0D4348 80173908 316C0001 */  andi  $t4, $t3, 1
/* 0D434C 8017390C 15800020 */  bnez  $t4, .L80173990_ovl3
/* 0D4350 80173910 00000000 */   nop   
/* 0D4354 80173914 4614003C */  c.lt.s $f0, $f20
.L80173918_ovl3:
/* 0D4358 80173918 3C18800F */  lui   $t8, %hi(D_800E83E0) # $t8, 0x800f
/* 0D435C 8017391C 271883E0 */  addiu $t8, %lo(D_800E83E0) # addiu $t8, $t8, -0x7c20
/* 0D4360 80173920 00781021 */  addu  $v0, $v1, $t8
/* 0D4364 80173924 45000005 */  bc1f  .L8017393C_ovl3
/* 0D4368 80173928 24040001 */   li    $a0, 1
/* 0D436C 8017392C 8E0D00F0 */  lw    $t5, 0xf0($s0)
/* 0D4370 80173930 31AE0008 */  andi  $t6, $t5, 8
/* 0D4374 80173934 15C00016 */  bnez  $t6, .L80173990_ovl3
/* 0D4378 80173938 00000000 */   nop   
.L8017393C_ovl3:
/* 0D437C 8017393C 8C590000 */  lw    $t9, ($v0)
/* 0D4380 80173940 24010006 */  li    $at, 6
/* 0D4384 80173944 13210012 */  beq   $t9, $at, .L80173990_ovl3
/* 0D4388 80173948 00000000 */   nop   
/* 0D438C 8017394C 0C002DAF */  jal   finish_current_thread
/* 0D4390 80173950 AC400000 */   sw    $zero, ($v0)
/* 0D4394 80173954 8E220000 */  lw    $v0, ($s1)
/* 0D4398 80173958 8C430000 */  lw    $v1, ($v0)
/* 0D439C 8017395C 00031880 */  sll   $v1, $v1, 2
/* 0D43A0 80173960 02437821 */  addu  $t7, $s2, $v1
/* 0D43A4 80173964 C5E00000 */  lwc1  $f0, ($t7)
/* 0D43A8 80173968 4600B032 */  c.eq.s $f22, $f0
/* 0D43AC 8017396C 00000000 */  nop   
/* 0D43B0 80173970 4500FFB9 */  bc1f  .L80173858_ovl3
/* 0D43B4 80173974 00000000 */   nop   
.L80173978_ovl3:
/* 0D43B8 80173978 0C04783A */  jal   func_8011E0E8
/* 0D43BC 8017397C 00000000 */   nop   
/* 0D43C0 80173980 8E090030 */  lw    $t1, 0x30($s0)
/* 0D43C4 80173984 25280001 */  addiu $t0, $t1, 1
/* 0D43C8 80173988 0C02BE85 */  jal   func_800AFA14
/* 0D43CC 8017398C AE080030 */   sw    $t0, 0x30($s0)
.L80173990_ovl3:
/* 0D43D0 80173990 0C04783A */  jal   func_8011E0E8
/* 0D43D4 80173994 00000000 */   nop   
/* 0D43D8 80173998 8E220000 */  lw    $v0, ($s1)
/* 0D43DC 8017399C 3C0A8019 */  lui   $t2, %hi(D_80190358) # $t2, 0x8019
/* 0D43E0 801739A0 254A0358 */  addiu $t2, %lo(D_80190358) # addiu $t2, $t2, 0x358
/* 0D43E4 801739A4 AE0A015C */  sw    $t2, 0x15c($s0)
/* 0D43E8 801739A8 8C4B0000 */  lw    $t3, ($v0)
/* 0D43EC 801739AC 3C01800F */ lui $at, %hi(D_800E8920)
/* 0D43F0 801739B0 3C04800E */ lui $a0, %hi(D_800DFA10)
/* 0D43F4 801739B4 000B6080 */  sll   $t4, $t3, 2
/* 0D43F8 801739B8 002C0821 */  addu  $at, $at, $t4
/* 0D43FC 801739BC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 0D4400 801739C0 8C4D0000 */  lw    $t5, ($v0)
/* 0D4404 801739C4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0D4408 801739C8 44812000 */  mtc1  $at, $f4
/* 0D440C 801739CC 3C01800E */ lui $at, %hi(D_800E3210)
/* 0D4410 801739D0 000D7080 */  sll   $t6, $t5, 2
/* 0D4414 801739D4 002E0821 */  addu  $at, $at, $t6
/* 0D4418 801739D8 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 0D441C 801739DC 8C580000 */  lw    $t8, ($v0)
/* 0D4420 801739E0 3C018019 */  lui   $at, %hi(D_8019742C) # $at, 0x8019
/* 0D4424 801739E4 C426742C */  lwc1  $f6, %lo(D_8019742C)($at)
/* 0D4428 801739E8 3C01800E */ lui $at, %hi(D_800E3750)
/* 0D442C 801739EC 0018C880 */  sll   $t9, $t8, 2
/* 0D4430 801739F0 00390821 */  addu  $at, $at, $t9
/* 0D4434 801739F4 E4263750 */ swc1 $f6, %lo(D_800E3750)($at)
/* 0D4438 801739F8 8C4F0000 */  lw    $t7, ($v0)
/* 0D443C 801739FC 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0D4440 80173A00 44814000 */  mtc1  $at, $f8
/* 0D4444 80173A04 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0D4448 80173A08 000F4880 */  sll   $t1, $t7, 2
/* 0D444C 80173A0C 00290821 */  addu  $at, $at, $t1
/* 0D4450 80173A10 E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
/* 0D4454 80173A14 8C480000 */  lw    $t0, ($v0)
/* 0D4458 80173A18 00085080 */  sll   $t2, $t0, 2
/* 0D445C 80173A1C 008A2021 */  addu  $a0, $a0, $t2
/* 0D4460 80173A20 0C02BE95 */  jal   func_800AFA54
/* 0D4464 80173A24 8C84FA10 */ lw $a0, %lo(D_800DFA10)($a0)
/* 0D4468 80173A28 3C040002 */  lui   $a0, (0x00020089 >> 16) # lui $a0, 2
/* 0D446C 80173A2C 3C050002 */  lui   $a1, (0x0002008A >> 16) # lui $a1, 2
/* 0D4470 80173A30 34A5008A */  ori   $a1, (0x0002008A & 0xFFFF) # ori $a1, $a1, 0x8a
/* 0D4474 80173A34 34840089 */  ori   $a0, (0x00020089 & 0xFFFF) # ori $a0, $a0, 0x89
/* 0D4478 80173A38 0C048C3A */  jal   func_801230E8
/* 0D447C 80173A3C 00003025 */   move  $a2, $zero
/* 0D4480 80173A40 8E220000 */  lw    $v0, ($s1)
/* 0D4484 80173A44 3C01800E */ lui $at, %hi(D_800E6690)
/* 0D4488 80173A48 8C4B0000 */  lw    $t3, ($v0)
/* 0D448C 80173A4C 000B6080 */  sll   $t4, $t3, 2
/* 0D4490 80173A50 024C2021 */  addu  $a0, $s2, $t4
/* 0D4494 80173A54 C4900000 */  lwc1  $f16, ($a0)
/* 0D4498 80173A58 46008287 */  neg.s $f10, $f16
/* 0D449C 80173A5C E48A0000 */  swc1  $f10, ($a0)
/* 0D44A0 80173A60 8C4D0000 */  lw    $t5, ($v0)
/* 0D44A4 80173A64 000D7080 */  sll   $t6, $t5, 2
/* 0D44A8 80173A68 002E0821 */  addu  $at, $at, $t6
/* 0D44AC 80173A6C E4346690 */ swc1 $f20, %lo(D_800E6690)($at)
/* 0D44B0 80173A70 8C430000 */  lw    $v1, ($v0)
/* 0D44B4 80173A74 00031880 */  sll   $v1, $v1, 2
/* 0D44B8 80173A78 0243C021 */  addu  $t8, $s2, $v1
/* 0D44BC 80173A7C C7000000 */  lwc1  $f0, ($t8)
/* 0D44C0 80173A80 02637821 */  addu  $t7, $s3, $v1
/* 0D44C4 80173A84 0263C821 */  addu  $t9, $s3, $v1
/* 0D44C8 80173A88 46000007 */  neg.s $f0, $f0
/* 0D44CC 80173A8C 4616003C */  c.lt.s $f0, $f22
/* 0D44D0 80173A90 00000000 */  nop   
/* 0D44D4 80173A94 45020005 */  bc1fl .L80173AAC_ovl3
/* 0D44D8 80173A98 E5E00000 */   swc1  $f0, ($t7)
/* 0D44DC 80173A9C 46000487 */  neg.s $f18, $f0
/* 0D44E0 80173AA0 10000002 */  b     .L80173AAC_ovl3
/* 0D44E4 80173AA4 E7320000 */   swc1  $f18, ($t9)
/* 0D44E8 80173AA8 E5E00000 */  swc1  $f0, ($t7)
.L80173AAC_ovl3:
/* 0D44EC 80173AAC 8E090044 */  lw    $t1, 0x44($s0)
/* 0D44F0 80173AB0 24040008 */  li    $a0, 8
/* 0D44F4 80173AB4 25280001 */  addiu $t0, $t1, 1
/* 0D44F8 80173AB8 0C002DAF */  jal   finish_current_thread
/* 0D44FC 80173ABC AE080044 */   sw    $t0, 0x44($s0)
/* 0D4500 80173AC0 8E0A0030 */  lw    $t2, 0x30($s0)
/* 0D4504 80173AC4 254B0001 */  addiu $t3, $t2, 1
/* 0D4508 80173AC8 0C02BE85 */  jal   func_800AFA14
/* 0D450C 80173ACC AE0B0030 */   sw    $t3, 0x30($s0)
/* 0D4510 80173AD0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0D4514 80173AD4 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 0D4518 80173AD8 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 0D451C 80173ADC 8FB00024 */  lw    $s0, 0x24($sp)
/* 0D4520 80173AE0 8FB10028 */  lw    $s1, 0x28($sp)
/* 0D4524 80173AE4 8FB2002C */  lw    $s2, 0x2c($sp)
/* 0D4528 80173AE8 8FB30030 */  lw    $s3, 0x30($sp)
/* 0D452C 80173AEC 03E00008 */  jr    $ra
/* 0D4530 80173AF0 27BD0060 */   addiu $sp, $sp, 0x60
