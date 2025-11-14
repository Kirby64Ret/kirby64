glabel func_801DC45C_ovl11
/* 1E6D1C 801DC45C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1E6D20 801DC460 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1E6D24 801DC464 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E6D28 801DC468 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E6D2C 801DC46C 8C830000 */  lw    $v1, ($a0)
/* 1E6D30 801DC470 3C0E800E */  lui   $t6, %hi(gEntityVtableIndexArray) # $t6, 0x800e
/* 1E6D34 801DC474 3C02800F */ lui $v0, %hi(D_800EA520)
/* 1E6D38 801DC478 00031880 */  sll   $v1, $v1, 2
/* 1E6D3C 801DC47C 25CEDC50 */  addiu $t6, %lo(gEntityVtableIndexArray) # addiu $t6, $t6, -0x23b0
/* 1E6D40 801DC480 00431021 */  addu  $v0, $v0, $v1
/* 1E6D44 801DC484 8C42A520 */ lw $v0, %lo(D_800EA520)($v0)
/* 1E6D48 801DC488 006E2821 */  addu  $a1, $v1, $t6
/* 1E6D4C 801DC48C 8CA60000 */  lw    $a2, ($a1)
/* 1E6D50 801DC490 24080001 */  li    $t0, 1
/* 1E6D54 801DC494 10400009 */  beqz  $v0, .L801DC4BC_ovl11
/* 1E6D58 801DC498 00C03825 */   move  $a3, $a2
/* 1E6D5C 801DC49C 24080001 */  li    $t0, 1
/* 1E6D60 801DC4A0 1048000F */  beq   $v0, $t0, .L801DC4E0_ovl11
/* 1E6D64 801DC4A4 24090002 */   li    $t1, 2
/* 1E6D68 801DC4A8 24090002 */  li    $t1, 2
/* 1E6D6C 801DC4AC 10490015 */  beq   $v0, $t1, .L801DC504_ovl11
/* 1E6D70 801DC4B0 00000000 */   nop   
/* 1E6D74 801DC4B4 10000033 */  b     .L801DC584_ovl11
/* 1E6D78 801DC4B8 00000000 */   nop   
.L801DC4BC_ovl11:
/* 1E6D7C 801DC4BC 10E80031 */  beq   $a3, $t0, .L801DC584_ovl11
/* 1E6D80 801DC4C0 00000000 */   nop   
/* 1E6D84 801DC4C4 ACA80000 */  sw    $t0, ($a1)
/* 1E6D88 801DC4C8 8C830000 */  lw    $v1, ($a0)
/* 1E6D8C 801DC4CC 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6D90 801DC4D0 00031880 */  sll   $v1, $v1, 2
/* 1E6D94 801DC4D4 00C33021 */  addu  $a2, $a2, $v1
/* 1E6D98 801DC4D8 1000002A */  b     .L801DC584_ovl11
/* 1E6D9C 801DC4DC 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
.L801DC4E0_ovl11:
/* 1E6DA0 801DC4E0 10E90028 */  beq   $a3, $t1, .L801DC584_ovl11
/* 1E6DA4 801DC4E4 00000000 */   nop   
/* 1E6DA8 801DC4E8 ACA90000 */  sw    $t1, ($a1)
/* 1E6DAC 801DC4EC 8C830000 */  lw    $v1, ($a0)
/* 1E6DB0 801DC4F0 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6DB4 801DC4F4 00031880 */  sll   $v1, $v1, 2
/* 1E6DB8 801DC4F8 00C33021 */  addu  $a2, $a2, $v1
/* 1E6DBC 801DC4FC 10000021 */  b     .L801DC584_ovl11
/* 1E6DC0 801DC500 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
.L801DC504_ovl11:
/* 1E6DC4 801DC504 3C02800F */ lui $v0, %hi(D_800E9560)
/* 1E6DC8 801DC508 00431021 */  addu  $v0, $v0, $v1
/* 1E6DCC 801DC50C 8C429560 */ lw $v0, %lo(D_800E9560)($v0)
/* 1E6DD0 801DC510 240F0007 */  li    $t7, 7
/* 1E6DD4 801DC514 50400008 */  beql  $v0, $zero, .L801DC538_ovl11
/* 1E6DD8 801DC518 ACAF0000 */   sw    $t7, ($a1)
/* 1E6DDC 801DC51C 1048000C */  beq   $v0, $t0, .L801DC550_ovl11
/* 1E6DE0 801DC520 24180005 */   li    $t8, 5
/* 1E6DE4 801DC524 10490011 */  beq   $v0, $t1, .L801DC56C_ovl11
/* 1E6DE8 801DC528 24190003 */   li    $t9, 3
/* 1E6DEC 801DC52C 10000015 */  b     .L801DC584_ovl11
/* 1E6DF0 801DC530 00000000 */   nop   
/* 1E6DF4 801DC534 ACAF0000 */  sw    $t7, ($a1)
.L801DC538_ovl11:
/* 1E6DF8 801DC538 8C830000 */  lw    $v1, ($a0)
/* 1E6DFC 801DC53C 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6E00 801DC540 00031880 */  sll   $v1, $v1, 2
/* 1E6E04 801DC544 00C33021 */  addu  $a2, $a2, $v1
/* 1E6E08 801DC548 1000000E */  b     .L801DC584_ovl11
/* 1E6E0C 801DC54C 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
.L801DC550_ovl11:
/* 1E6E10 801DC550 ACB80000 */  sw    $t8, ($a1)
/* 1E6E14 801DC554 8C830000 */  lw    $v1, ($a0)
/* 1E6E18 801DC558 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6E1C 801DC55C 00031880 */  sll   $v1, $v1, 2
/* 1E6E20 801DC560 00C33021 */  addu  $a2, $a2, $v1
/* 1E6E24 801DC564 10000007 */  b     .L801DC584_ovl11
/* 1E6E28 801DC568 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
.L801DC56C_ovl11:
/* 1E6E2C 801DC56C ACB90000 */  sw    $t9, ($a1)
/* 1E6E30 801DC570 8C830000 */  lw    $v1, ($a0)
/* 1E6E34 801DC574 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6E38 801DC578 00031880 */  sll   $v1, $v1, 2
/* 1E6E3C 801DC57C 00C33021 */  addu  $a2, $a2, $v1
/* 1E6E40 801DC580 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
.L801DC584_ovl11:
/* 1E6E44 801DC584 10E60006 */  beq   $a3, $a2, .L801DC5A0_ovl11
/* 1E6E48 801DC588 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E6E4C 801DC58C 00832021 */  addu  $a0, $a0, $v1
/* 1E6E50 801DC590 3C05801E */  lui   $a1, %hi(D_801DC258) # $a1, 0x801e
/* 1E6E54 801DC594 24A5C258 */  addiu $a1, %lo(D_801DC258) # addiu $a1, $a1, -0x3da8
/* 1E6E58 801DC598 0C02C7B2 */  jal   assign_new_process_entry
/* 1E6E5C 801DC59C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DC5A0_ovl11:
/* 1E6E60 801DC5A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E6E64 801DC5A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E6E68 801DC5A8 03E00008 */  jr    $ra
/* 1E6E6C 801DC5AC 00000000 */   nop   
.type func_801DC45C_ovl11, @function
.size func_801DC45C_ovl11, . - func_801DC45C_ovl11
