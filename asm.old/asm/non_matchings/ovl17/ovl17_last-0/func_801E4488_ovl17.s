glabel func_801E4488_ovl17
/* 22F678 801E4488 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22F67C 801E448C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22F680 801E4490 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 22F684 801E4494 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F688 801E4498 8DCF0000 */  lw    $t7, ($t6)
/* 22F68C 801E449C 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 22F690 801E44A0 000FC080 */  sll   $t8, $t7, 2
/* 22F694 801E44A4 0338C821 */  addu  $t9, $t9, $t8
/* 22F698 801E44A8 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 22F69C 801E44AC 0C068119 */  jal   func_801A0464_ovl17
/* 22F6A0 801E44B0 AFB90048 */   sw    $t9, 0x48($sp)
/* 22F6A4 801E44B4 0C0447B3 */  jal   func_80111ECC
/* 22F6A8 801E44B8 00402025 */   move  $a0, $v0
/* 22F6AC 801E44BC 8FA80048 */  lw    $t0, 0x48($sp)
/* 22F6B0 801E44C0 8D09008C */  lw    $t1, 0x8c($t0)
/* 22F6B4 801E44C4 15200003 */  bnez  $t1, .L801E44D4_ovl17
/* 22F6B8 801E44C8 00000000 */   nop   
/* 22F6BC 801E44CC 10000062 */  b     .L801E4658_ovl17
/* 22F6C0 801E44D0 00001025 */   move  $v0, $zero
.L801E44D4_ovl17:
/* 22F6C4 801E44D4 0C0442C0 */  jal   func_80110B00
/* 22F6C8 801E44D8 27A40028 */   addiu $a0, $sp, 0x28
/* 22F6CC 801E44DC 1040000E */  beqz  $v0, .L801E4518_ovl17
/* 22F6D0 801E44E0 3C198005 */   lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22F6D4 801E44E4 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 22F6D8 801E44E8 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 22F6DC 801E44EC 93AA002A */  lbu   $t2, 0x2a($sp)
/* 22F6E0 801E44F0 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 22F6E4 801E44F4 8D6C0000 */  lw    $t4, ($t3)
/* 22F6E8 801E44F8 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 22F6EC 801E44FC 000C6880 */  sll   $t5, $t4, 2
/* 22F6F0 801E4500 00AD7021 */  addu  $t6, $a1, $t5
/* 22F6F4 801E4504 ADCA0000 */  sw    $t2, ($t6)
/* 22F6F8 801E4508 8FB80048 */  lw    $t8, 0x48($sp)
/* 22F6FC 801E450C 93AF002B */  lbu   $t7, 0x2b($sp)
/* 22F700 801E4510 1000000A */  b     .L801E453C_ovl17
/* 22F704 801E4514 A30F0043 */   sb    $t7, 0x43($t8)
.L801E4518_ovl17:
/* 22F708 801E4518 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22F70C 801E451C 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 22F710 801E4520 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 22F714 801E4524 8F280000 */  lw    $t0, ($t9)
/* 22F718 801E4528 00084880 */  sll   $t1, $t0, 2
/* 22F71C 801E452C 00A95821 */  addu  $t3, $a1, $t1
/* 22F720 801E4530 AD600000 */  sw    $zero, ($t3)
/* 22F724 801E4534 8FAC0048 */  lw    $t4, 0x48($sp)
/* 22F728 801E4538 A1800043 */  sb    $zero, 0x43($t4)
.L801E453C_ovl17:
/* 22F72C 801E453C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22F730 801E4540 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22F734 801E4544 24010001 */  li    $at, 1
/* 22F738 801E4548 24060002 */  li    $a2, 2
/* 22F73C 801E454C 8C430000 */  lw    $v1, ($v0)
/* 22F740 801E4550 240C0276 */  li    $t4, 630
/* 22F744 801E4554 00031880 */  sll   $v1, $v1, 2
/* 22F748 801E4558 00A36821 */  addu  $t5, $a1, $v1
/* 22F74C 801E455C 8DA40000 */  lw    $a0, ($t5)
/* 22F750 801E4560 240D0003 */  li    $t5, 3
/* 22F754 801E4564 10810020 */  beq   $a0, $at, .L801E45E8_ovl17
/* 22F758 801E4568 00000000 */   nop   
/* 22F75C 801E456C 14860039 */  bne   $a0, $a2, .L801E4654_ovl17
/* 22F760 801E4570 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22F764 801E4574 00230821 */  addu  $at, $at, $v1
/* 22F768 801E4578 AC26DC50 */ sw $a2, %lo(gEntityVtableIndexArray)($at)
/* 22F76C 801E457C 8C4A0000 */  lw    $t2, ($v0)
/* 22F770 801E4580 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22F774 801E4584 3C05801E */  lui   $a1, %hi(func_801E40F4) # $a1, 0x801e
/* 22F778 801E4588 000A7080 */  sll   $t6, $t2, 2
/* 22F77C 801E458C 008E2021 */  addu  $a0, $a0, $t6
/* 22F780 801E4590 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22F784 801E4594 0C02C7B2 */  jal   assign_new_process_entry
/* 22F788 801E4598 24A540F4 */   addiu $a1, %lo(func_801E40F4) # addiu $a1, $a1, 0x40f4
/* 22F78C 801E459C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 22F790 801E45A0 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 22F794 801E45A4 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22F798 801E45A8 240F0001 */  li    $t7, 1
/* 22F79C 801E45AC 8F190000 */  lw    $t9, ($t8)
/* 22F7A0 801E45B0 240401BE */  li    $a0, 446
/* 22F7A4 801E45B4 00194080 */  sll   $t0, $t9, 2
/* 22F7A8 801E45B8 00280821 */  addu  $at, $at, $t0
/* 22F7AC 801E45BC 0C029D9E */  jal   play_sound
/* 22F7B0 801E45C0 AC2F7CE0 */ sw $t7, %lo(D_800E7CE0)($at)
/* 22F7B4 801E45C4 8FA20034 */  lw    $v0, 0x34($sp)
/* 22F7B8 801E45C8 24090001 */  li    $t1, 1
/* 22F7BC 801E45CC 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22F7C0 801E45D0 10400003 */  beqz  $v0, .L801E45E0_ovl17
/* 22F7C4 801E45D4 00025880 */   sll   $t3, $v0, 2
/* 22F7C8 801E45D8 002B0821 */  addu  $at, $at, $t3
/* 22F7CC 801E45DC AC2998E0 */ sw $t1, %lo(D_800E98E0)($at)
.L801E45E0_ovl17:
/* 22F7D0 801E45E0 1000001D */  b     .L801E4658_ovl17
/* 22F7D4 801E45E4 24020001 */   li    $v0, 1
.L801E45E8_ovl17:
/* 22F7D8 801E45E8 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22F7DC 801E45EC 00230821 */  addu  $at, $at, $v1
/* 22F7E0 801E45F0 AC2C7CE0 */ sw $t4, %lo(D_800E7CE0)($at)
/* 22F7E4 801E45F4 8C4A0000 */  lw    $t2, ($v0)
/* 22F7E8 801E45F8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22F7EC 801E45FC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22F7F0 801E4600 000A7080 */  sll   $t6, $t2, 2
/* 22F7F4 801E4604 002E0821 */  addu  $at, $at, $t6
/* 22F7F8 801E4608 AC2DDC50 */ sw $t5, %lo(gEntityVtableIndexArray)($at)
/* 22F7FC 801E460C 8C580000 */  lw    $t8, ($v0)
/* 22F800 801E4610 3C05801E */  lui   $a1, %hi(func_801E40F4) # $a1, 0x801e
/* 22F804 801E4614 24A540F4 */  addiu $a1, %lo(func_801E40F4) # addiu $a1, $a1, 0x40f4
/* 22F808 801E4618 0018C880 */  sll   $t9, $t8, 2
/* 22F80C 801E461C 00992021 */  addu  $a0, $a0, $t9
/* 22F810 801E4620 0C02C7B2 */  jal   assign_new_process_entry
/* 22F814 801E4624 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22F818 801E4628 0C029D9E */  jal   play_sound
/* 22F81C 801E462C 240401C3 */   li    $a0, 451
/* 22F820 801E4630 8FA20034 */  lw    $v0, 0x34($sp)
/* 22F824 801E4634 240F0001 */  li    $t7, 1
/* 22F828 801E4638 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22F82C 801E463C 10400003 */  beqz  $v0, .L801E464C_ovl17
/* 22F830 801E4640 00024080 */   sll   $t0, $v0, 2
/* 22F834 801E4644 00280821 */  addu  $at, $at, $t0
/* 22F838 801E4648 AC2F98E0 */ sw $t7, %lo(D_800E98E0)($at)
.L801E464C_ovl17:
/* 22F83C 801E464C 10000002 */  b     .L801E4658_ovl17
/* 22F840 801E4650 24020001 */   li    $v0, 1
.L801E4654_ovl17:
/* 22F844 801E4654 00001025 */  move  $v0, $zero
.L801E4658_ovl17:
/* 22F848 801E4658 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F84C 801E465C 27BD0050 */  addiu $sp, $sp, 0x50
/* 22F850 801E4660 03E00008 */  jr    $ra
/* 22F854 801E4664 00000000 */   nop   
.type func_801E4488_ovl17, @function
.size func_801E4488_ovl17, . - func_801E4488_ovl17
