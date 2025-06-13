glabel func_801DF758_ovl12 # 93
/* 004558 801DF758 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 00455C 801DF75C 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 004560 801DF760 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 004564 801DF764 AFBF001C */  sw          $ra, 0x1C($sp)
/* 004568 801DF768 AFB00018 */  sw          $s0, 0x18($sp)
/* 00456C 801DF76C 8C620000 */  lw          $v0, 0x0($v1)
/* 004570 801DF770 3C10800E */  lui         $s0, %hi(D_800E1B50)
/* 004574 801DF774 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 004578 801DF778 00021080 */  sll         $v0, $v0, 2
/* 00457C 801DF77C 02028021 */  addu        $s0, $s0, $v0
/* 004580 801DF780 8E101B50 */  lw          $s0, %lo(D_800E1B50)($s0)
/* 004584 801DF784 00220821 */  addu        $at, $at, $v0
/* 004588 801DF788 8E0E008C */  lw          $t6, 0x8C($s0)
/* 00458C 801DF78C 15C00003 */  bnez        $t6, .L801DF79C
/* 004590 801DF790 00000000 */   nop
/* 004594 801DF794 10000059 */  b           .L801DF8FC
/* 004598 801DF798 00001025 */   move       $v0, $zero
.L801DF79C:
/* 00459C 801DF79C C4247B20 */  lwc1        $f4, %lo(D_800E7B20)($at)
/* 0045A0 801DF7A0 3C01800F */  lui         $at, %hi(D_800EB160)
/* 0045A4 801DF7A4 00220821 */  addu        $at, $at, $v0
/* 0045A8 801DF7A8 E424B160 */  swc1        $f4, %lo(D_800EB160)($at)
/* 0045AC 801DF7AC 0C044554 */  jal         func_80111550
/* 0045B0 801DF7B0 8C640000 */   lw         $a0, 0x0($v1)
/* 0045B4 801DF7B4 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 0045B8 801DF7B8 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 0045BC 801DF7BC 8E04008C */  lw          $a0, 0x8C($s0)
/* 0045C0 801DF7C0 0C044722 */  jal         func_80111C88
/* 0045C4 801DF7C4 8DE50000 */   lw         $a1, 0x0($t7)
/* 0045C8 801DF7C8 0C0447B3 */  jal         func_80111ECC
/* 0045CC 801DF7CC 00402025 */   move       $a0, $v0
/* 0045D0 801DF7D0 0C0442C0 */  jal         func_80110B00
/* 0045D4 801DF7D4 27A40038 */   addiu      $a0, $sp, 0x38
/* 0045D8 801DF7D8 1040000C */  beqz        $v0, .L801DF80C
/* 0045DC 801DF7DC 3C198005 */   lui        $t9, %hi(D_8004A7C4)
/* 0045E0 801DF7E0 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 0045E4 801DF7E4 93B8003A */  lbu         $t8, 0x3A($sp)
/* 0045E8 801DF7E8 3C03800F */  lui         $v1, %hi(D_800E83E0)
/* 0045EC 801DF7EC 8F280000 */  lw          $t0, 0x0($t9)
/* 0045F0 801DF7F0 246383E0 */  addiu       $v1, $v1, %lo(D_800E83E0)
/* 0045F4 801DF7F4 00084880 */  sll         $t1, $t0, 2
/* 0045F8 801DF7F8 00695021 */  addu        $t2, $v1, $t1
/* 0045FC 801DF7FC AD580000 */  sw          $t8, 0x0($t2)
/* 004600 801DF800 93AB003B */  lbu         $t3, 0x3B($sp)
/* 004604 801DF804 10000028 */  b           .L801DF8A8
/* 004608 801DF808 A20B0043 */   sb         $t3, 0x43($s0)
.L801DF80C:
/* 00460C 801DF80C 0C0443F5 */  jal         func_80110FD4
/* 004610 801DF810 27A40038 */   addiu      $a0, $sp, 0x38
/* 004614 801DF814 1040000C */  beqz        $v0, .L801DF848
/* 004618 801DF818 3C0D8005 */   lui        $t5, %hi(D_8004A7C4)
/* 00461C 801DF81C 8DADA7C4 */  lw          $t5, %lo(D_8004A7C4)($t5)
/* 004620 801DF820 93AC003A */  lbu         $t4, 0x3A($sp)
/* 004624 801DF824 3C03800F */  lui         $v1, %hi(D_800E83E0)
/* 004628 801DF828 8DAE0000 */  lw          $t6, 0x0($t5)
/* 00462C 801DF82C 246383E0 */  addiu       $v1, $v1, %lo(D_800E83E0)
/* 004630 801DF830 000E7880 */  sll         $t7, $t6, 2
/* 004634 801DF834 006FC821 */  addu        $t9, $v1, $t7
/* 004638 801DF838 AF2C0000 */  sw          $t4, 0x0($t9)
/* 00463C 801DF83C 93A8003B */  lbu         $t0, 0x3B($sp)
/* 004640 801DF840 10000019 */  b           .L801DF8A8
/* 004644 801DF844 A2080043 */   sb         $t0, 0x43($s0)
.L801DF848:
/* 004648 801DF848 0C044054 */  jal         func_80110150
/* 00464C 801DF84C 27A40038 */   addiu      $a0, $sp, 0x38
/* 004650 801DF850 1040000C */  beqz        $v0, .L801DF884
/* 004654 801DF854 3C188005 */   lui        $t8, %hi(D_8004A7C4)
/* 004658 801DF858 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 00465C 801DF85C 93A9003A */  lbu         $t1, 0x3A($sp)
/* 004660 801DF860 3C03800F */  lui         $v1, %hi(D_800E83E0)
/* 004664 801DF864 8F0A0000 */  lw          $t2, 0x0($t8)
/* 004668 801DF868 246383E0 */  addiu       $v1, $v1, %lo(D_800E83E0)
/* 00466C 801DF86C 000A5880 */  sll         $t3, $t2, 2
/* 004670 801DF870 006B6821 */  addu        $t5, $v1, $t3
/* 004674 801DF874 ADA90000 */  sw          $t1, 0x0($t5)
/* 004678 801DF878 93AE003B */  lbu         $t6, 0x3B($sp)
/* 00467C 801DF87C 1000000A */  b           .L801DF8A8
/* 004680 801DF880 A20E0043 */   sb         $t6, 0x43($s0)
.L801DF884:
/* 004684 801DF884 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 004688 801DF888 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 00468C 801DF88C 3C03800F */  lui         $v1, %hi(D_800E83E0)
/* 004690 801DF890 246383E0 */  addiu       $v1, $v1, %lo(D_800E83E0)
/* 004694 801DF894 8DEC0000 */  lw          $t4, 0x0($t7)
/* 004698 801DF898 000CC880 */  sll         $t9, $t4, 2
/* 00469C 801DF89C 00794021 */  addu        $t0, $v1, $t9
/* 0046A0 801DF8A0 AD000000 */  sw          $zero, 0x0($t0)
/* 0046A4 801DF8A4 A2000043 */  sb          $zero, 0x43($s0)
.L801DF8A8:
/* 0046A8 801DF8A8 3C188005 */  lui         $t8, %hi(D_8004A7C4)
/* 0046AC 801DF8AC 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 0046B0 801DF8B0 24010001 */  addiu       $at, $zero, 0x1
/* 0046B4 801DF8B4 8F0A0000 */  lw          $t2, 0x0($t8)
/* 0046B8 801DF8B8 000A5880 */  sll         $t3, $t2, 2
/* 0046BC 801DF8BC 006B4821 */  addu        $t1, $v1, $t3
/* 0046C0 801DF8C0 8D220000 */  lw          $v0, 0x0($t1)
/* 0046C4 801DF8C4 10410005 */  beq         $v0, $at, .L801DF8DC
/* 0046C8 801DF8C8 24010002 */   addiu      $at, $zero, 0x2
/* 0046CC 801DF8CC 10410007 */  beq         $v0, $at, .L801DF8EC
/* 0046D0 801DF8D0 00000000 */   nop
/* 0046D4 801DF8D4 10000009 */  b           .L801DF8FC
/* 0046D8 801DF8D8 00001025 */   move       $v0, $zero
.L801DF8DC:
/* 0046DC 801DF8DC 0C077CE5 */  jal         func_801DF394_ovl12
/* 0046E0 801DF8E0 00000000 */   nop
/* 0046E4 801DF8E4 10000005 */  b           .L801DF8FC
/* 0046E8 801DF8E8 24020001 */   addiu      $v0, $zero, 0x1
.L801DF8EC:
/* 0046EC 801DF8EC 0C077D7C */  jal         func_801DF5F0_ovl12
/* 0046F0 801DF8F0 27A40038 */   addiu      $a0, $sp, 0x38
/* 0046F4 801DF8F4 10000001 */  b           .L801DF8FC
/* 0046F8 801DF8F8 24020001 */   addiu      $v0, $zero, 0x1
.L801DF8FC:
/* 0046FC 801DF8FC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 004700 801DF900 8FB00018 */  lw          $s0, 0x18($sp)
/* 004704 801DF904 27BD0058 */  addiu       $sp, $sp, 0x58
/* 004708 801DF908 03E00008 */  jr          $ra
/* 00470C 801DF90C 00000000 */   nop
.type func_801DF758_ovl12, @function
.size func_801DF758_ovl12, . - func_801DF758_ovl12
