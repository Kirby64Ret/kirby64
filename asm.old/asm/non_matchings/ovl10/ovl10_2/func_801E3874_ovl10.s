glabel func_801E3874_ovl10
/* 1D45E4 801E3874 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1D45E8 801E3878 AFB10018 */  sw    $s1, 0x18($sp)
/* 1D45EC 801E387C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1D45F0 801E3880 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1D45F4 801E3884 8E2E0000 */  lw    $t6, ($s1)
/* 1D45F8 801E3888 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1D45FC 801E388C AFB00014 */  sw    $s0, 0x14($sp)
/* 1D4600 801E3890 8DC20000 */  lw    $v0, ($t6)
/* 1D4604 801E3894 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1D4608 801E3898 00027880 */  sll   $t7, $v0, 2
/* 1D460C 801E389C 020F8021 */  addu  $s0, $s0, $t7
/* 1D4610 801E38A0 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1D4614 801E38A4 8E18008C */  lw    $t8, 0x8c($s0)
/* 1D4618 801E38A8 17000003 */  bnez  $t8, .L801E38B8_ovl10
/* 1D461C 801E38AC 00000000 */   nop   
/* 1D4620 801E38B0 10000067 */  b     .L801E3A50_ovl10
/* 1D4624 801E38B4 00001025 */   move  $v0, $zero
.L801E38B8_ovl10:
/* 1D4628 801E38B8 0C044554 */  jal   func_80111550
/* 1D462C 801E38BC 00402025 */   move  $a0, $v0
/* 1D4630 801E38C0 8E390000 */  lw    $t9, ($s1)
/* 1D4634 801E38C4 8E04008C */  lw    $a0, 0x8c($s0)
/* 1D4638 801E38C8 0C044722 */  jal   func_80111C88
/* 1D463C 801E38CC 8F250000 */   lw    $a1, ($t9)
/* 1D4640 801E38D0 0C0447B3 */  jal   func_80111ECC
/* 1D4644 801E38D4 00402025 */   move  $a0, $v0
/* 1D4648 801E38D8 0C0442C0 */  jal   func_80110B00
/* 1D464C 801E38DC 27A40038 */   addiu $a0, $sp, 0x38
/* 1D4650 801E38E0 1040000C */  beqz  $v0, .L801E3914_ovl10
/* 1D4654 801E38E4 00000000 */   nop   
/* 1D4658 801E38E8 8E290000 */  lw    $t1, ($s1)
/* 1D465C 801E38EC 93A8003A */  lbu   $t0, 0x3a($sp)
/* 1D4660 801E38F0 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 1D4664 801E38F4 8D2A0000 */  lw    $t2, ($t1)
/* 1D4668 801E38F8 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 1D466C 801E38FC 000A5880 */  sll   $t3, $t2, 2
/* 1D4670 801E3900 008B6021 */  addu  $t4, $a0, $t3
/* 1D4674 801E3904 AD880000 */  sw    $t0, ($t4)
/* 1D4678 801E3908 93AD003B */  lbu   $t5, 0x3b($sp)
/* 1D467C 801E390C 10000027 */  b     .L801E39AC_ovl10
/* 1D4680 801E3910 A20D0043 */   sb    $t5, 0x43($s0)
.L801E3914_ovl10:
/* 1D4684 801E3914 0C0443F5 */  jal   func_80110FD4
/* 1D4688 801E3918 27A40038 */   addiu $a0, $sp, 0x38
/* 1D468C 801E391C 1040000C */  beqz  $v0, .L801E3950_ovl10
/* 1D4690 801E3920 00000000 */   nop   
/* 1D4694 801E3924 8E2F0000 */  lw    $t7, ($s1)
/* 1D4698 801E3928 93AE003A */  lbu   $t6, 0x3a($sp)
/* 1D469C 801E392C 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 1D46A0 801E3930 8DF80000 */  lw    $t8, ($t7)
/* 1D46A4 801E3934 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 1D46A8 801E3938 0018C880 */  sll   $t9, $t8, 2
/* 1D46AC 801E393C 00994821 */  addu  $t1, $a0, $t9
/* 1D46B0 801E3940 AD2E0000 */  sw    $t6, ($t1)
/* 1D46B4 801E3944 93AA003B */  lbu   $t2, 0x3b($sp)
/* 1D46B8 801E3948 10000018 */  b     .L801E39AC_ovl10
/* 1D46BC 801E394C A20A0043 */   sb    $t2, 0x43($s0)
.L801E3950_ovl10:
/* 1D46C0 801E3950 0C044054 */  jal   func_80110150
/* 1D46C4 801E3954 27A40038 */   addiu $a0, $sp, 0x38
/* 1D46C8 801E3958 5040000D */  beql  $v0, $zero, .L801E3990_ovl10
/* 1D46CC 801E395C 8E390000 */   lw    $t9, ($s1)
/* 1D46D0 801E3960 8E280000 */  lw    $t0, ($s1)
/* 1D46D4 801E3964 93AB003A */  lbu   $t3, 0x3a($sp)
/* 1D46D8 801E3968 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 1D46DC 801E396C 8D0C0000 */  lw    $t4, ($t0)
/* 1D46E0 801E3970 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 1D46E4 801E3974 000C6880 */  sll   $t5, $t4, 2
/* 1D46E8 801E3978 008D7821 */  addu  $t7, $a0, $t5
/* 1D46EC 801E397C ADEB0000 */  sw    $t3, ($t7)
/* 1D46F0 801E3980 93B8003B */  lbu   $t8, 0x3b($sp)
/* 1D46F4 801E3984 10000009 */  b     .L801E39AC_ovl10
/* 1D46F8 801E3988 A2180043 */   sb    $t8, 0x43($s0)
/* 1D46FC 801E398C 8E390000 */  lw    $t9, ($s1)
.L801E3990_ovl10:
/* 1D4700 801E3990 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 1D4704 801E3994 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 1D4708 801E3998 8F2E0000 */  lw    $t6, ($t9)
/* 1D470C 801E399C 000E4880 */  sll   $t1, $t6, 2
/* 1D4710 801E39A0 00895021 */  addu  $t2, $a0, $t1
/* 1D4714 801E39A4 AD400000 */  sw    $zero, ($t2)
/* 1D4718 801E39A8 A2000043 */  sb    $zero, 0x43($s0)
.L801E39AC_ovl10:
/* 1D471C 801E39AC 8E220000 */  lw    $v0, ($s1)
/* 1D4720 801E39B0 24010001 */  li    $at, 1
/* 1D4724 801E39B4 8C450000 */  lw    $a1, ($v0)
/* 1D4728 801E39B8 00052880 */  sll   $a1, $a1, 2
/* 1D472C 801E39BC 00854021 */  addu  $t0, $a0, $a1
/* 1D4730 801E39C0 8D030000 */  lw    $v1, ($t0)
/* 1D4734 801E39C4 10610002 */  beq   $v1, $at, .L801E39D0_ovl10
/* 1D4738 801E39C8 24010002 */   li    $at, 2
/* 1D473C 801E39CC 1461001F */  bne   $v1, $at, .L801E3A4C_ovl10
.L801E39D0_ovl10:
/* 1D4740 801E39D0 3C0C800F */   lui   $t4, %hi(D_800EA6E0) # $t4, 0x800f
/* 1D4744 801E39D4 258CA6E0 */  addiu $t4, %lo(D_800EA6E0) # addiu $t4, $t4, -0x5920
/* 1D4748 801E39D8 00AC1821 */  addu  $v1, $a1, $t4
/* 1D474C 801E39DC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1D4750 801E39E0 44813000 */  mtc1  $at, $f6
/* 1D4754 801E39E4 C4640000 */  lwc1  $f4, ($v1)
/* 1D4758 801E39E8 3C04800E */ lui $a0, %hi(D_800DE350)
/* 1D475C 801E39EC 46062201 */  sub.s $f8, $f4, $f6
/* 1D4760 801E39F0 E4680000 */  swc1  $f8, ($v1)
/* 1D4764 801E39F4 8C4D0000 */  lw    $t5, ($v0)
/* 1D4768 801E39F8 000D5880 */  sll   $t3, $t5, 2
/* 1D476C 801E39FC 008B2021 */  addu  $a0, $a0, $t3
/* 1D4770 801E3A00 0C067AF3 */  jal   func_8019EBCC_ovl10
/* 1D4774 801E3A04 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1D4778 801E3A08 8E220000 */  lw    $v0, ($s1)
/* 1D477C 801E3A0C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D4780 801E3A10 240F0007 */  li    $t7, 7
/* 1D4784 801E3A14 8C580000 */  lw    $t8, ($v0)
/* 1D4788 801E3A18 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D478C 801E3A1C 3C05801E */  lui   $a1, %hi(D_801E5754) # $a1, 0x801e
/* 1D4790 801E3A20 0018C880 */  sll   $t9, $t8, 2
/* 1D4794 801E3A24 00390821 */  addu  $at, $at, $t9
/* 1D4798 801E3A28 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1D479C 801E3A2C 8C4E0000 */  lw    $t6, ($v0)
/* 1D47A0 801E3A30 24A55754 */  addiu $a1, %lo(D_801E5754) # addiu $a1, $a1, 0x5754
/* 1D47A4 801E3A34 000E4880 */  sll   $t1, $t6, 2
/* 1D47A8 801E3A38 00892021 */  addu  $a0, $a0, $t1
/* 1D47AC 801E3A3C 0C02C7B2 */  jal   assign_new_process_entry
/* 1D47B0 801E3A40 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D47B4 801E3A44 10000002 */  b     .L801E3A50_ovl10
/* 1D47B8 801E3A48 24020001 */   li    $v0, 1
.L801E3A4C_ovl10:
/* 1D47BC 801E3A4C 00001025 */  move  $v0, $zero
.L801E3A50_ovl10:
/* 1D47C0 801E3A50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1D47C4 801E3A54 8FB00014 */  lw    $s0, 0x14($sp)
/* 1D47C8 801E3A58 8FB10018 */  lw    $s1, 0x18($sp)
/* 1D47CC 801E3A5C 03E00008 */  jr    $ra
/* 1D47D0 801E3A60 27BD0058 */   addiu $sp, $sp, 0x58
.type func_801E3874_ovl10, @function
.size func_801E3874_ovl10, . - func_801E3874_ovl10
