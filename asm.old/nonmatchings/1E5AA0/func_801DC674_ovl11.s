glabel func_801DC674_ovl14
/* 1E6F34 801DC674 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1E6F38 801DC678 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E6F3C 801DC67C 27BDFFD0 */  addiu      $sp, $sp, -0x30
glabel func_801DC680_ovl16
/* 1E6F40 801DC680 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1E6F44 801DC684 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E6F48 801DC688 8DC20000 */  lw         $v0, 0x0($t6)
.L801DC68C_ovl17:
/* 1E6F4C 801DC68C 3C03800E */  lui        $v1, %hi(D_800DFBD0)
/* 1E6F50 801DC690 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 1E6F54 801DC694 00021080 */  sll        $v0, $v0, 2
/* 1E6F58 801DC698 00621821 */  addu       $v1, $v1, $v0
.L801DC69C_ovl12:
/* 1E6F5C 801DC69C 8C63FBD0 */  lw         $v1, %lo(D_800DFBD0)($v1)
/* 1E6F60 801DC6A0 02028021 */  addu       $s0, $s0, $v0
/* 1E6F64 801DC6A4 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
/* 1E6F68 801DC6A8 8C6F006C */  lw         $t7, 0x6C($v1)
.L801DC6AC_ovl10:
/* 1E6F6C 801DC6AC 3C04800E */  lui        $a0, %hi(D_800DE350)
/* 1E6F70 801DC6B0 00822021 */  addu       $a0, $a0, $v0
/* 1E6F74 801DC6B4 AFAF0024 */  sw         $t7, 0x24($sp)
.L801DC6B8_ovl14:
/* 1E6F78 801DC6B8 8C780074 */  lw         $t8, 0x74($v1)
/* 1E6F7C 801DC6BC 8C84E350 */  lw         $a0, %lo(D_800DE350)($a0)
/* 1E6F80 801DC6C0 AFB80020 */  sw         $t8, 0x20($sp)
/* 1E6F84 801DC6C4 8E190070 */  lw         $t9, 0x70($s0)
/* 1E6F88 801DC6C8 2728FFFF */  addiu      $t0, $t9, -0x1
/* 1E6F8C 801DC6CC 15000035 */  bnez       $t0, .L801DC7A4_ovl11
.L801DC6D0_ovl16:
/* 1E6F90 801DC6D0 AE080070 */   sw        $t0, 0x70($s0)
/* 1E6F94 801DC6D4 8E0B006C */  lw         $t3, 0x6C($s0)
.L801DC6D8_ovl14:
/* 1E6F98 801DC6D8 240A0002 */  addiu      $t2, $zero, 0x2
.L801DC6DC_ovl17:
/* 1E6F9C 801DC6DC AE0A0070 */  sw         $t2, 0x70($s0)
/* 1E6FA0 801DC6E0 396C0001 */  xori       $t4, $t3, 0x1
glabel func_801DC6E4_ovl16
/* 1E6FA4 801DC6E4 1180000E */  beqz       $t4, .L801DC720_ovl11
.L801DC6E8_ovl15:
/* 1E6FA8 801DC6E8 AE0C006C */   sw        $t4, 0x6C($s0)
/* 1E6FAC 801DC6EC 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 1E6FB0 801DC6F0 0C076CAF */  jal        func_801DB2BC_ovl11
/* 1E6FB4 801DC6F4 AFA40028 */   sw        $a0, 0x28($sp)
.L801DC6F8_ovl13:
/* 1E6FB8 801DC6F8 3C05801E */  lui        $a1, %hi(.L801E0B14_ovl11)
/* 1E6FBC 801DC6FC 24A50B14 */  addiu      $a1, $a1, %lo(.L801E0B14_ovl11)
/* 1E6FC0 801DC700 0C076CC7 */  jal        func_801DB31C_ovl11
.L801DC704_ovl15:
/* 1E6FC4 801DC704 8FA40024 */   lw        $a0, 0x24($sp)
/* 1E6FC8 801DC708 3C05801E */  lui        $a1, %hi(D_801E0B20_ovl11)
/* 1E6FCC 801DC70C 24A50B20 */  addiu      $a1, $a1, %lo(D_801E0B20_ovl11)
.L801DC710_ovl12:
/* 1E6FD0 801DC710 0C076CC7 */  jal        func_801DB31C_ovl11
/* 1E6FD4 801DC714 8FA40020 */   lw        $a0, 0x20($sp)
/* 1E6FD8 801DC718 1000000D */  b          func_801DC750_ovl12
glabel func_801DC71C_ovl17
/* 1E6FDC 801DC71C 8E0E0068 */   lw        $t6, 0x68($s0)
.L801DC720_ovl11:
/* 1E6FE0 801DC720 24050000 */  addiu      $a1, $zero, 0x0
glabel func_801DC724_ovl17
/* 1E6FE4 801DC724 0C076CAF */  jal        func_801DB2BC_ovl11
/* 1E6FE8 801DC728 AFA40028 */   sw        $a0, 0x28($sp)
/* 1E6FEC 801DC72C 3C05801E */  lui        $a1, %hi(.L801E0B10_ovl16)
/* 1E6FF0 801DC730 24A50B10 */  addiu      $a1, $a1, %lo(.L801E0B10_ovl16)
/* 1E6FF4 801DC734 0C076CC7 */  jal        func_801DB31C_ovl11
/* 1E6FF8 801DC738 8FA40024 */   lw        $a0, 0x24($sp)
/* 1E6FFC 801DC73C 3C05801E */  lui        $a1, %hi(.L801E0B1C_ovl14)
/* 1E7000 801DC740 24A50B1C */  addiu      $a1, $a1, %lo(.L801E0B1C_ovl14)
.L801DC744_ovl12:
/* 1E7004 801DC744 0C076CC7 */  jal        func_801DB31C_ovl11
/* 1E7008 801DC748 8FA40020 */   lw        $a0, 0x20($sp)
/* 1E700C 801DC74C 8E0E0068 */  lw         $t6, 0x68($s0)
glabel func_801DC750_ovl12
/* 1E7010 801DC750 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1E7014 801DC754 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 1E7018 801DC758 15E00012 */  bnez       $t7, .L801DC7A4_ovl11
/* 1E701C 801DC75C AE0F0068 */   sw        $t7, 0x68($s0)
/* 1E7020 801DC760 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1E7024 801DC764 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 1E7028 801DC768 8FA40028 */  lw         $a0, 0x28($sp)
/* 1E702C 801DC76C 8F280000 */  lw         $t0, 0x0($t9)
/* 1E7030 801DC770 3C054000 */  lui        $a1, (0x40000000 >> 16)
/* 1E7034 801DC774 00084880 */  sll        $t1, $t0, 2
/* 1E7038 801DC778 00290821 */  addu       $at, $at, $t1
.L801DC77C_ovl9:
/* 1E703C 801DC77C 0C076CAF */  jal        func_801DB2BC_ovl11
/* 1E7040 801DC780 AC20A1A0 */   sw        $zero, %lo(D_800EA1A0)($at)
/* 1E7044 801DC784 3C05801E */  lui        $a1, %hi(D_801E0B18_ovl11)
glabel func_801DC788_ovl13
/* 1E7048 801DC788 24A50B18 */  addiu      $a1, $a1, %lo(D_801E0B18_ovl11)
/* 1E704C 801DC78C 0C076CC7 */  jal        func_801DB31C_ovl11
/* 1E7050 801DC790 8FA40024 */   lw        $a0, 0x24($sp)
/* 1E7054 801DC794 3C05801E */  lui        $a1, %hi(.L801E0B1C_ovl14)
/* 1E7058 801DC798 24A50B1C */  addiu      $a1, $a1, %lo(.L801E0B1C_ovl14)
/* 1E705C 801DC79C 0C076CC7 */  jal        func_801DB31C_ovl11
/* 1E7060 801DC7A0 8FA40020 */   lw        $a0, 0x20($sp)
.L801DC7A4_ovl11:
/* 1E7064 801DC7A4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1E7068 801DC7A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E706C 801DC7AC 27BD0030 */  addiu      $sp, $sp, 0x30
.L801DC7B0_ovl16:
/* 1E7070 801DC7B0 03E00008 */  jr         $ra
/* 1E7074 801DC7B4 00000000 */   nop
