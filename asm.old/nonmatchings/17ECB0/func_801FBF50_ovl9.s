glabel func_801FBF50_ovl9
/* 1A9FA0 801FBF50 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 1A9FA4 801FBF54 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 1A9FA8 801FBF58 8CE20000 */  lw         $v0, 0x0($a3)
/* 1A9FAC 801FBF5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A9FB0 801FBF60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A9FB4 801FBF64 AFA40020 */  sw         $a0, 0x20($sp)
/* 1A9FB8 801FBF68 8C430000 */  lw         $v1, 0x0($v0)
/* 1A9FBC 801FBF6C 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 1A9FC0 801FBF70 25CE9AA0 */  addiu      $t6, $t6, %lo(D_800E9AA0)
/* 1A9FC4 801FBF74 00031880 */  sll        $v1, $v1, 2
/* 1A9FC8 801FBF78 006E2021 */  addu       $a0, $v1, $t6
/* 1A9FCC 801FBF7C 8C850000 */  lw         $a1, 0x0($a0)
/* 1A9FD0 801FBF80 3C06800E */  lui        $a2, %hi(D_800E1B50)
/* 1A9FD4 801FBF84 00C33021 */  addu       $a2, $a2, $v1
/* 1A9FD8 801FBF88 14A00034 */  bnez       $a1, .L801FC05C_ovl9
/* 1A9FDC 801FBF8C 8CC61B50 */   lw        $a2, %lo(D_800E1B50)($a2)
/* 1A9FE0 801FBF90 3C0F800E */  lui        $t7, %hi(D_800DD8D0)
/* 1A9FE4 801FBF94 01E37821 */  addu       $t7, $t7, $v1
/* 1A9FE8 801FBF98 8DEFD8D0 */  lw         $t7, %lo(D_800DD8D0)($t7)
/* 1A9FEC 801FBF9C 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 1A9FF0 801FBFA0 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 1A9FF4 801FBFA4 000FC782 */  srl        $t8, $t7, 30
/* 1A9FF8 801FBFA8 13000076 */  beqz       $t8, .L801FC184_ovl9
/* 1A9FFC 801FBFAC 00230821 */   addu      $at, $at, $v1
/* 1AA000 801FBFB0 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* 1AA004 801FBFB4 8C490000 */  lw         $t1, 0x0($v0)
/* 1AA008 801FBFB8 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 1AA00C 801FBFBC 2419FFFF */  addiu      $t9, $zero, -0x1
/* 1AA010 801FBFC0 00095080 */  sll        $t2, $t1, 2
/* 1AA014 801FBFC4 002A0821 */  addu       $at, $at, $t2
/* 1AA018 801FBFC8 AC39A1A0 */  sw         $t9, %lo(D_800EA1A0)($at)
/* 1AA01C 801FBFCC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1AA020 801FBFD0 44802000 */  mtc1       $zero, $f4
/* 1AA024 801FBFD4 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 1AA028 801FBFD8 000B6080 */  sll        $t4, $t3, 2
/* 1AA02C 801FBFDC 00CC6821 */  addu       $t5, $a2, $t4
/* 1AA030 801FBFE0 E5A40000 */  swc1       $f4, 0x0($t5)
/* 1AA034 801FBFE4 8C430000 */  lw         $v1, 0x0($v0)
/* 1AA038 801FBFE8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1AA03C 801FBFEC 24090002 */  addiu      $t1, $zero, 0x2
/* 1AA040 801FBFF0 00031880 */  sll        $v1, $v1, 2
/* 1AA044 801FBFF4 00C37021 */  addu       $t6, $a2, $v1
/* 1AA048 801FBFF8 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 1AA04C 801FBFFC 00230821 */  addu       $at, $at, $v1
/* 1AA050 801FC000 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1AA054 801FC004 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 1AA058 801FC008 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1AA05C 801FC00C 3C018022 */  lui        $at, %hi(D_8021D994_ovl9)
/* 1AA060 801FC010 C428D994 */  lwc1       $f8, %lo(D_8021D994_ovl9)($at)
/* 1AA064 801FC014 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1AA068 801FC018 000FC080 */  sll        $t8, $t7, 2
/* 1AA06C 801FC01C 00380821 */  addu       $at, $at, $t8
/* 1AA070 801FC020 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* 1AA074 801FC024 8C590000 */  lw         $t9, 0x0($v0)
/* 1AA078 801FC028 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1AA07C 801FC02C 3C058020 */  lui        $a1, %hi(func_801FBB00_ovl9)
/* 1AA080 801FC030 00195080 */  sll        $t2, $t9, 2
/* 1AA084 801FC034 002A0821 */  addu       $at, $at, $t2
/* 1AA088 801FC038 AC29DC50 */  sw         $t1, %lo(gEntityVtableIndexArray)($at)
/* 1AA08C 801FC03C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1AA090 801FC040 24A5BB00 */  addiu      $a1, $a1, %lo(func_801FBB00_ovl9)
/* 1AA094 801FC044 000B6080 */  sll        $t4, $t3, 2
/* 1AA098 801FC048 008C2021 */  addu       $a0, $a0, $t4
/* 1AA09C 801FC04C 0C02C7B2 */  jal        assign_new_process_entry
/* 1AA0A0 801FC050 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1AA0A4 801FC054 1000004C */  b          .L801FC188_ovl9
/* 1AA0A8 801FC058 8FBF0014 */   lw        $ra, 0x14($sp)
.L801FC05C_ovl9:
/* 1AA0AC 801FC05C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1AA0B0 801FC060 44816000 */  mtc1       $at, $f12
/* 1AA0B4 801FC064 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 1AA0B8 801FC068 24ADFFFF */  addiu      $t5, $a1, -0x1
/* 1AA0BC 801FC06C 44817000 */  mtc1       $at, $f14
/* 1AA0C0 801FC070 AC8D0000 */  sw         $t5, 0x0($a0)
/* 1AA0C4 801FC074 0C066A6B */  jal        func_8019A9AC_ovl7
/* 1AA0C8 801FC078 AFA6001C */   sw        $a2, 0x1C($sp)
/* 1AA0CC 801FC07C 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 1AA0D0 801FC080 24080003 */  addiu      $t0, $zero, 0x3
/* 1AA0D4 801FC084 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 1AA0D8 801FC088 14480022 */  bne        $v0, $t0, .L801FC114_ovl9
/* 1AA0DC 801FC08C 8FA6001C */   lw        $a2, 0x1C($sp)
/* 1AA0E0 801FC090 8CE20000 */  lw         $v0, 0x0($a3)
/* 1AA0E4 801FC094 3C0E800E */  lui        $t6, %hi(D_800DD8D0)
/* 1AA0E8 801FC098 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 1AA0EC 801FC09C 8C430000 */  lw         $v1, 0x0($v0)
/* 1AA0F0 801FC0A0 00031880 */  sll        $v1, $v1, 2
/* 1AA0F4 801FC0A4 01C37021 */  addu       $t6, $t6, $v1
/* 1AA0F8 801FC0A8 8DCED8D0 */  lw         $t6, %lo(D_800DD8D0)($t6)
/* 1AA0FC 801FC0AC 00230821 */  addu       $at, $at, $v1
/* 1AA100 801FC0B0 000E7F82 */  srl        $t7, $t6, 30
/* 1AA104 801FC0B4 51E00034 */  beql       $t7, $zero, .L801FC188_ovl9
/* 1AA108 801FC0B8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1AA10C 801FC0BC AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* 1AA110 801FC0C0 8C590000 */  lw         $t9, 0x0($v0)
/* 1AA114 801FC0C4 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 1AA118 801FC0C8 2418FFFF */  addiu      $t8, $zero, -0x1
/* 1AA11C 801FC0CC 00194880 */  sll        $t1, $t9, 2
/* 1AA120 801FC0D0 00290821 */  addu       $at, $at, $t1
/* 1AA124 801FC0D4 AC38A1A0 */  sw         $t8, %lo(D_800EA1A0)($at)
/* 1AA128 801FC0D8 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1AA12C 801FC0DC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1AA130 801FC0E0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1AA134 801FC0E4 000A5880 */  sll        $t3, $t2, 2
/* 1AA138 801FC0E8 002B0821 */  addu       $at, $at, $t3
/* 1AA13C 801FC0EC AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
/* 1AA140 801FC0F0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1AA144 801FC0F4 3C058020 */  lui        $a1, %hi(func_801FBB00_ovl9)
/* 1AA148 801FC0F8 24A5BB00 */  addiu      $a1, $a1, %lo(func_801FBB00_ovl9)
/* 1AA14C 801FC0FC 000C6880 */  sll        $t5, $t4, 2
/* 1AA150 801FC100 008D2021 */  addu       $a0, $a0, $t5
/* 1AA154 801FC104 0C02C7B2 */  jal        assign_new_process_entry
/* 1AA158 801FC108 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1AA15C 801FC10C 1000001E */  b          .L801FC188_ovl9
/* 1AA160 801FC110 8FBF0014 */   lw        $ra, 0x14($sp)
.L801FC114_ovl9:
/* 1AA164 801FC114 8CE20000 */  lw         $v0, 0x0($a3)
/* 1AA168 801FC118 3C0E800F */  lui        $t6, %hi(D_800E9FE0)
/* 1AA16C 801FC11C 8C430000 */  lw         $v1, 0x0($v0)
/* 1AA170 801FC120 00031880 */  sll        $v1, $v1, 2
/* 1AA174 801FC124 01C37021 */  addu       $t6, $t6, $v1
/* 1AA178 801FC128 8DCE9FE0 */  lw         $t6, %lo(D_800E9FE0)($t6)
/* 1AA17C 801FC12C 51C00016 */  beql       $t6, $zero, .L801FC188_ovl9
/* 1AA180 801FC130 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1AA184 801FC134 90CF003C */  lbu        $t7, 0x3C($a2)
/* 1AA188 801FC138 3C19800E */  lui        $t9, %hi(D_800DD8D0)
/* 1AA18C 801FC13C 0323C821 */  addu       $t9, $t9, $v1
/* 1AA190 801FC140 55E00011 */  bnel       $t7, $zero, .L801FC188_ovl9
/* 1AA194 801FC144 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1AA198 801FC148 8F39D8D0 */  lw         $t9, %lo(D_800DD8D0)($t9)
/* 1AA19C 801FC14C 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1AA1A0 801FC150 00230821 */  addu       $at, $at, $v1
/* 1AA1A4 801FC154 0019C782 */  srl        $t8, $t9, 30
/* 1AA1A8 801FC158 1300000A */  beqz       $t8, .L801FC184_ovl9
/* 1AA1AC 801FC15C 24090005 */   addiu     $t1, $zero, 0x5
/* 1AA1B0 801FC160 AC29DC50 */  sw         $t1, %lo(gEntityVtableIndexArray)($at)
/* 1AA1B4 801FC164 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1AA1B8 801FC168 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1AA1BC 801FC16C 3C058020 */  lui        $a1, %hi(func_801FBB00_ovl9)
/* 1AA1C0 801FC170 000A5880 */  sll        $t3, $t2, 2
/* 1AA1C4 801FC174 008B2021 */  addu       $a0, $a0, $t3
/* 1AA1C8 801FC178 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1AA1CC 801FC17C 0C02C7B2 */  jal        assign_new_process_entry
/* 1AA1D0 801FC180 24A5BB00 */   addiu     $a1, $a1, %lo(func_801FBB00_ovl9)
.L801FC184_ovl9:
/* 1AA1D4 801FC184 8FBF0014 */  lw         $ra, 0x14($sp)
.L801FC188_ovl9:
/* 1AA1D8 801FC188 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AA1DC 801FC18C 03E00008 */  jr         $ra
/* 1AA1E0 801FC190 00000000 */   nop
