glabel func_801EC930_ovl10
/* 1DD6A0 801EC930 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DD6A4 801EC934 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DD6A8 801EC938 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DD6AC 801EC93C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DD6B0 801EC940 AFB00018 */  sw    $s0, 0x18($sp)
/* 1DD6B4 801EC944 AFA40020 */  sw    $a0, 0x20($sp)
/* 1DD6B8 801EC948 8C430000 */  lw    $v1, ($v0)
/* 1DD6BC 801EC94C 3C0E800B */  lui   $t6, %hi(D_800B67A8) # $t6, 0x800b
/* 1DD6C0 801EC950 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DD6C4 801EC954 00031880 */  sll   $v1, $v1, 2
/* 1DD6C8 801EC958 00230821 */  addu  $at, $at, $v1
/* 1DD6CC 801EC95C 25CE67A8 */  addiu $t6, %lo(D_800B67A8) # addiu $t6, $t6, 0x67a8
/* 1DD6D0 801EC960 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DD6D4 801EC964 8C580000 */  lw    $t8, ($v0)
/* 1DD6D8 801EC968 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1DD6DC 801EC96C 02038021 */  addu  $s0, $s0, $v1
/* 1DD6E0 801EC970 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DD6E4 801EC974 0018C880 */  sll   $t9, $t8, 2
/* 1DD6E8 801EC978 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1DD6EC 801EC97C 00390821 */  addu  $at, $at, $t9
/* 1DD6F0 801EC980 240F0001 */  li    $t7, 1
/* 1DD6F4 801EC984 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DD6F8 801EC988 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DD6FC 801EC98C 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DD700 801EC990 3C040001 */  lui   $a0, (0x000102B4 >> 16) # lui $a0, 1
/* 1DD704 801EC994 348402B4 */  ori   $a0, (0x000102B4 & 0xFFFF) # ori $a0, $a0, 0x2b4
/* 1DD708 801EC998 0C02A806 */  jal   func_800AA018
/* 1DD70C 801EC99C AE080098 */   sw    $t0, 0x98($s0)
/* 1DD710 801EC9A0 3C040001 */  lui   $a0, (0x000102B5 >> 16) # lui $a0, 1
/* 1DD714 801EC9A4 0C02A806 */  jal   func_800AA018
/* 1DD718 801EC9A8 348402B5 */   ori   $a0, (0x000102B5 & 0xFFFF) # ori $a0, $a0, 0x2b5
/* 1DD71C 801EC9AC 0C02CD48 */  jal   func_800B3520
/* 1DD720 801EC9B0 00000000 */   nop   
/* 1DD724 801EC9B4 0C02BBFF */  jal   func_800AEFFC
/* 1DD728 801EC9B8 24040002 */   li    $a0, 2
/* 1DD72C 801EC9BC 9209003C */  lbu   $t1, 0x3c($s0)
/* 1DD730 801EC9C0 11200006 */  beqz  $t1, .L801EC9DC_ovl10
/* 1DD734 801EC9C4 00000000 */   nop   
.L801EC9C8_ovl10:
/* 1DD738 801EC9C8 0C002DAF */  jal   finish_current_thread
/* 1DD73C 801EC9CC 24040001 */   li    $a0, 1
/* 1DD740 801EC9D0 920A003C */  lbu   $t2, 0x3c($s0)
/* 1DD744 801EC9D4 1540FFFC */  bnez  $t2, .L801EC9C8_ovl10
/* 1DD748 801EC9D8 00000000 */   nop   
.L801EC9DC_ovl10:
/* 1DD74C 801EC9DC 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1DD750 801EC9E0 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1DD754 801EC9E4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DD758 801EC9E8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DD75C 801EC9EC 8D8D0000 */  lw    $t5, ($t4)
/* 1DD760 801EC9F0 240B0002 */  li    $t3, 2
/* 1DD764 801EC9F4 8FB00018 */  lw    $s0, 0x18($sp)
/* 1DD768 801EC9F8 000D7080 */  sll   $t6, $t5, 2
/* 1DD76C 801EC9FC 002E0821 */  addu  $at, $at, $t6
/* 1DD770 801ECA00 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1DD774 801ECA04 03E00008 */  jr    $ra
/* 1DD778 801ECA08 27BD0020 */   addiu $sp, $sp, 0x20
.type func_801EC930_ovl10, @function
.size func_801EC930_ovl10, . - func_801EC930_ovl10
