glabel func_80207794_ovl9
/* 1B57E4 80207794 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1B57E8 80207798 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 1B57EC 8020779C 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 1B57F0 802077A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1B57F4 802077A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1B57F8 802077A8 AFA40020 */  sw    $a0, 0x20($sp)
/* 1B57FC 802077AC 8C430000 */  lw    $v1, ($v0)
/* 1B5800 802077B0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1B5804 802077B4 240E0002 */  li    $t6, 2
/* 1B5808 802077B8 00031880 */  sll   $v1, $v1, 2
/* 1B580C 802077BC 00230821 */  addu  $at, $at, $v1
/* 1B5810 802077C0 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1B5814 802077C4 8C4F0000 */  lw    $t7, ($v0)
/* 1B5818 802077C8 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1B581C 802077CC 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1B5820 802077D0 000FC080 */  sll   $t8, $t7, 2
/* 1B5824 802077D4 02038021 */  addu  $s0, $s0, $v1
/* 1B5828 802077D8 00380821 */  addu  $at, $at, $t8
/* 1B582C 802077DC 3C040001 */  lui   $a0, (0x000101BB >> 16) # lui $a0, 1
/* 1B5830 802077E0 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1B5834 802077E4 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1B5838 802077E8 348401BB */  ori   $a0, (0x000101BB & 0xFFFF) # ori $a0, $a0, 0x1bb
/* 1B583C 802077EC 0C02AA19 */  jal   func_800AA864
/* 1B5840 802077F0 24050001 */   li    $a1, 1
/* 1B5844 802077F4 9219003C */  lbu   $t9, 0x3c($s0)
/* 1B5848 802077F8 13200006 */  beqz  $t9, .L80207814_ovl9
/* 1B584C 802077FC 00000000 */   nop   
.L80207800_ovl9:
/* 1B5850 80207800 0C002DAF */  jal   finish_current_thread
/* 1B5854 80207804 24040001 */   li    $a0, 1
/* 1B5858 80207808 9208003C */  lbu   $t0, 0x3c($s0)
/* 1B585C 8020780C 1500FFFC */  bnez  $t0, .L80207800_ovl9
/* 1B5860 80207810 00000000 */   nop   
.L80207814_ovl9:
/* 1B5864 80207814 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 1B5868 80207818 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 1B586C 8020781C 3C0B800E */ lui $t3, %hi(D_800E6A10)
/* 1B5870 80207820 256B6A10 */ addiu $t3, %lo(D_800E6A10)
/* 1B5874 80207824 8C490000 */  lw    $t1, ($v0)
/* 1B5878 80207828 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1B587C 8020782C 240C0001 */  li    $t4, 1
/* 1B5880 80207830 00095080 */  sll   $t2, $t1, 2
/* 1B5884 80207834 014B1821 */  addu  $v1, $t2, $t3
/* 1B5888 80207838 C4640000 */  lwc1  $f4, ($v1)
/* 1B588C 8020783C 46002187 */  neg.s $f6, $f4
/* 1B5890 80207840 E4660000 */  swc1  $f6, ($v1)
/* 1B5894 80207844 8C4D0000 */  lw    $t5, ($v0)
/* 1B5898 80207848 000D7080 */  sll   $t6, $t5, 2
/* 1B589C 8020784C 002E0821 */  addu  $at, $at, $t6
/* 1B58A0 80207850 0C02BE85 */  jal   func_800AFA14
/* 1B58A4 80207854 AC2C9E20 */ sw $t4, %lo(D_800E9E20)($at)
/* 1B58A8 80207858 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1B58AC 8020785C 8FB00018 */  lw    $s0, 0x18($sp)
/* 1B58B0 80207860 27BD0020 */  addiu $sp, $sp, 0x20
/* 1B58B4 80207864 03E00008 */  jr    $ra
/* 1B58B8 80207868 00000000 */   nop   
