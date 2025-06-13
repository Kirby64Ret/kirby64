glabel func_800BB588
/* 0637D8 800BB588 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0637DC 800BB58C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0637E0 800BB590 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0637E4 800BB594 AFB70034 */  sw    $s7, 0x34($sp)
/* 0637E8 800BB598 AFB60030 */  sw    $s6, 0x30($sp)
/* 0637EC 800BB59C AFB5002C */  sw    $s5, 0x2c($sp)
/* 0637F0 800BB5A0 AFB40028 */  sw    $s4, 0x28($sp)
/* 0637F4 800BB5A4 AFB30024 */  sw    $s3, 0x24($sp)
/* 0637F8 800BB5A8 AFB20020 */  sw    $s2, 0x20($sp)
/* 0637FC 800BB5AC AFB1001C */  sw    $s1, 0x1c($sp)
/* 063800 800BB5B0 AFB00018 */  sw    $s0, 0x18($sp)
/* 063804 800BB5B4 8C930000 */  lw    $s3, ($a0)
/* 063808 800BB5B8 3C0F800E */  lui   $t7, %hi(D_800DD8D0) # $t7, 0x800e
/* 06380C 800BB5BC 25EFD8D0 */  addiu $t7, %lo(D_800DD8D0) # addiu $t7, $t7, -0x2730
/* 063810 800BB5C0 3C11800D */  lui   $s1, %hi(D_800D6B24) # $s1, 0x800d
/* 063814 800BB5C4 3C12800D */  lui   $s2, %hi(D_800D6B30) # $s2, 0x800d
/* 063818 800BB5C8 3C17800D */  lui   $s7, %hi(D_800D6B2B) # $s7, 0x800d
/* 06381C 800BB5CC 00137080 */  sll   $t6, $s3, 2
/* 063820 800BB5D0 0080A025 */  move  $s4, $a0
/* 063824 800BB5D4 01CFA821 */  addu  $s5, $t6, $t7
/* 063828 800BB5D8 26F76B2B */  addiu $s7, %lo(D_800D6B2B) # addiu $s7, $s7, 0x6b2b
/* 06382C 800BB5DC 26526B30 */  addiu $s2, %lo(D_800D6B30) # addiu $s2, $s2, 0x6b30
/* 063830 800BB5E0 26316B24 */  addiu $s1, %lo(D_800D6B24) # addiu $s1, $s1, 0x6b24
/* 063834 800BB5E4 3C164000 */  lui   $s6, 0x4000
/* 063838 800BB5E8 241E0002 */  li    $fp, 2
/* 06383C 800BB5EC 8EB80000 */  lw    $t8, ($s5)
.L800BB5F0_ovl1:
/* 063840 800BB5F0 0316C824 */  and   $t9, $t8, $s6
/* 063844 800BB5F4 13200016 */  beqz  $t9, .L800BB650_ovl1
/* 063848 800BB5F8 00000000 */   nop   
/* 06384C 800BB5FC 86480000 */  lh    $t0, ($s2)
/* 063850 800BB600 92E20000 */  lbu   $v0, ($s7)
/* 063854 800BB604 8E240000 */  lw    $a0, ($s1)
/* 063858 800BB608 25090001 */  addiu $t1, $t0, 1
/* 06385C 800BB60C 10400005 */  beqz  $v0, .L800BB624_ovl1
/* 063860 800BB610 A6490000 */   sh    $t1, ($s2)
/* 063864 800BB614 105E000A */  beq   $v0, $fp, .L800BB640_ovl1
/* 063868 800BB618 00000000 */   nop   
/* 06386C 800BB61C 1000000E */  b     .L800BB658_ovl1
/* 063870 800BB620 00000000 */   nop   
.L800BB624_ovl1:
/* 063874 800BB624 AE200000 */  sw    $zero, ($s1)
/* 063878 800BB628 0C0028A7 */  jal   func_8000A29C_ovl1
/* 06387C 800BB62C 3270FFFF */   andi  $s0, $s3, 0xffff
/* 063880 800BB630 0C02C640 */  jal   func_800B1900
/* 063884 800BB634 3204FFFF */   andi  $a0, $s0, 0xffff
/* 063888 800BB638 10000007 */  b     .L800BB658_ovl1
/* 06388C 800BB63C 00000000 */   nop   
.L800BB640_ovl1:
/* 063890 800BB640 0C0019EE */  jal   func_800067B8_ovl1
/* 063894 800BB644 AE200000 */   sw    $zero, ($s1)
/* 063898 800BB648 10000003 */  b     .L800BB658_ovl1
/* 06389C 800BB64C 00000000 */   nop   
.L800BB650_ovl1:
/* 0638A0 800BB650 0C0038C9 */  jal   func_8000E324_ovl1
/* 0638A4 800BB654 02802025 */   move  $a0, $s4
.L800BB658_ovl1:
/* 0638A8 800BB658 0C002DAF */  jal   finish_current_thread
/* 0638AC 800BB65C 24040001 */   li    $a0, 1
/* 0638B0 800BB660 1000FFE3 */  b     .L800BB5F0_ovl1
/* 0638B4 800BB664 8EB80000 */   lw    $t8, ($s5)
/* 0638B8 800BB668 00000000 */  nop   
/* 0638BC 800BB66C 00000000 */  nop   
/* 0638C0 800BB670 00000000 */  nop   
/* 0638C4 800BB674 00000000 */  nop   
/* 0638C8 800BB678 00000000 */  nop   
/* 0638CC 800BB67C 00000000 */  nop   
/* 0638D0 800BB680 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0638D4 800BB684 8FB00018 */  lw    $s0, 0x18($sp)
/* 0638D8 800BB688 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0638DC 800BB68C 8FB20020 */  lw    $s2, 0x20($sp)
/* 0638E0 800BB690 8FB30024 */  lw    $s3, 0x24($sp)
/* 0638E4 800BB694 8FB40028 */  lw    $s4, 0x28($sp)
/* 0638E8 800BB698 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0638EC 800BB69C 8FB60030 */  lw    $s6, 0x30($sp)
/* 0638F0 800BB6A0 8FB70034 */  lw    $s7, 0x34($sp)
/* 0638F4 800BB6A4 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0638F8 800BB6A8 03E00008 */  jr    $ra
/* 0638FC 800BB6AC 27BD0040 */   addiu $sp, $sp, 0x40
.type func_800BB588, @function
.size func_800BB588, . - func_800BB588
