glabel func_800BBDC4
/* 064014 800BBDC4 3C06800F */  lui   $a2, %hi(D_800ED4EC) # $a2, 0x800f
/* 064018 800BBDC8 24C6D4EC */  addiu $a2, %lo(D_800ED4EC) # addiu $a2, $a2, -0x2b14
/* 06401C 800BBDCC 8CC30000 */  lw    $v1, ($a2)
/* 064020 800BBDD0 3C098005 */  lui   $t1, %hi(gPlayerControllers) # $t1, 0x8005
/* 064024 800BBDD4 25298F20 */  addiu $t1, %lo(gPlayerControllers) # addiu $t1, $t1, -0x70e0
/* 064028 800BBDD8 A5200004 */  sh    $zero, 4($t1)
/* 06402C 800BBDDC A5200002 */  sh    $zero, 2($t1)
/* 064030 800BBDE0 04610007 */  bgez  $v1, .L800BBE00_ovl1
/* 064034 800BBDE4 A5200000 */   sh    $zero, ($t1)
/* 064038 800BBDE8 240E0002 */  li    $t6, 2
/* 06403C 800BBDEC 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 064040 800BBDF0 AC2EE4F8 */  sw    $t6, %lo(D_800BE4F8)($at)
/* 064044 800BBDF4 3C01800D */ lui $at, %hi(D_800D6F38)
/* 064048 800BBDF8 03E00008 */  jr    $ra
/* 06404C 800BBDFC AC206F38 */ sw $zero, %lo(D_800D6F38)($at)
.type func_800BBDC4, @function

.L800BBE00_ovl1:
/* 064050 800BBE00 3C07800F */  lui   $a3, %hi(D_800ED4F4) # $a3, 0x800f
/* 064054 800BBE04 24E7D4F4 */  addiu $a3, %lo(D_800ED4F4) # addiu $a3, $a3, -0x2b0c
/* 064058 800BBE08 8CEF0000 */  lw    $t7, ($a3)
/* 06405C 800BBE0C 3C04800F */  lui   $a0, %hi(D_800ED4E0) # $a0, 0x800f
/* 064060 800BBE10 25F8FFFF */  addiu $t8, $t7, -1
/* 064064 800BBE14 1F000021 */  bgtz  $t8, .L800BBE9C_ovl1
/* 064068 800BBE18 ACF80000 */   sw    $t8, ($a3)
/* 06406C 800BBE1C 8C84D4E0 */  lw    $a0, %lo(D_800ED4E0)($a0)
/* 064070 800BBE20 00035040 */  sll   $t2, $v1, 1
/* 064074 800BBE24 246C0001 */  addiu $t4, $v1, 1
/* 064078 800BBE28 008A5821 */  addu  $t3, $a0, $t2
/* 06407C 800BBE2C 95650100 */  lhu   $a1, 0x100($t3)
/* 064080 800BBE30 ACCC0000 */  sw    $t4, ($a2)
/* 064084 800BBE34 258F0001 */  addiu $t7, $t4, 1
/* 064088 800BBE38 30ADE000 */  andi  $t5, $a1, 0xe000
/* 06408C 800BBE3C 11A00002 */  beqz  $t5, .L800BBE48_ovl1
/* 064090 800BBE40 30B81C00 */   andi  $t8, $a1, 0x1c00
/* 064094 800BBE44 ACCF0000 */  sw    $t7, ($a2)
.L800BBE48_ovl1:
/* 064098 800BBE48 13000004 */  beqz  $t8, .L800BBE5C_ovl1
/* 06409C 800BBE4C 30AB0380 */   andi  $t3, $a1, 0x380
/* 0640A0 800BBE50 8CD90000 */  lw    $t9, ($a2)
/* 0640A4 800BBE54 272A0001 */  addiu $t2, $t9, 1
/* 0640A8 800BBE58 ACCA0000 */  sw    $t2, ($a2)
.L800BBE5C_ovl1:
/* 0640AC 800BBE5C 11600004 */  beqz  $t3, .L800BBE70_ovl1
/* 0640B0 800BBE60 2418FFFF */   li    $t8, -1
/* 0640B4 800BBE64 8CCC0000 */  lw    $t4, ($a2)
/* 0640B8 800BBE68 258D0001 */  addiu $t5, $t4, 1
/* 0640BC 800BBE6C ACCD0000 */  sw    $t5, ($a2)
.L800BBE70_ovl1:
/* 0640C0 800BBE70 8CC30000 */  lw    $v1, ($a2)
/* 0640C4 800BBE74 3401FFFF */  li    $at, 65535
/* 0640C8 800BBE78 00037040 */  sll   $t6, $v1, 1
/* 0640CC 800BBE7C 008E7821 */  addu  $t7, $a0, $t6
/* 0640D0 800BBE80 95E50100 */  lhu   $a1, 0x100($t7)
/* 0640D4 800BBE84 54A10004 */  bnel  $a1, $at, .L800BBE98_ovl1
/* 0640D8 800BBE88 30B9007F */   andi  $t9, $a1, 0x7f
/* 0640DC 800BBE8C 03E00008 */  jr    $ra
/* 0640E0 800BBE90 ACD80000 */   sw    $t8, ($a2)
.type func_800BBDC4, @function

/* 0640E4 800BBE94 30B9007F */  andi  $t9, $a1, 0x7f
.L800BBE98_ovl1:
/* 0640E8 800BBE98 ACF90000 */  sw    $t9, ($a3)
.L800BBE9C_ovl1:
/* 0640EC 800BBE9C 3C0A800F */  lui   $t2, %hi(D_800ED4E0) # $t2, 0x800f
/* 0640F0 800BBEA0 8D4AD4E0 */  lw    $t2, %lo(D_800ED4E0)($t2)
/* 0640F4 800BBEA4 00035840 */  sll   $t3, $v1, 1
/* 0640F8 800BBEA8 00003025 */  move  $a2, $zero
/* 0640FC 800BBEAC 014B2021 */  addu  $a0, $t2, $t3
/* 064100 800BBEB0 94850100 */  lhu   $a1, 0x100($a0)
/* 064104 800BBEB4 00003825 */  move  $a3, $zero
/* 064108 800BBEB8 00004025 */  move  $t0, $zero
/* 06410C 800BBEBC 30AC8000 */  andi  $t4, $a1, 0x8000
/* 064110 800BBEC0 11800002 */  beqz  $t4, .L800BBECC_ovl1
/* 064114 800BBEC4 30AD4000 */   andi  $t5, $a1, 0x4000
/* 064118 800BBEC8 94880102 */  lhu   $t0, 0x102($a0)
.L800BBECC_ovl1:
/* 06411C 800BBECC 11A00002 */  beqz  $t5, .L800BBED8_ovl1
/* 064120 800BBED0 30AE2000 */   andi  $t6, $a1, 0x2000
/* 064124 800BBED4 94870102 */  lhu   $a3, 0x102($a0)
.L800BBED8_ovl1:
/* 064128 800BBED8 11C00002 */  beqz  $t6, .L800BBEE4_ovl1
/* 06412C 800BBEDC 30AF1000 */   andi  $t7, $a1, 0x1000
/* 064130 800BBEE0 94860102 */  lhu   $a2, 0x102($a0)
.L800BBEE4_ovl1:
/* 064134 800BBEE4 11E00002 */  beqz  $t7, .L800BBEF0_ovl1
/* 064138 800BBEE8 30B80800 */   andi  $t8, $a1, 0x800
/* 06413C 800BBEEC 94880104 */  lhu   $t0, 0x104($a0)
.L800BBEF0_ovl1:
/* 064140 800BBEF0 13000002 */  beqz  $t8, .L800BBEFC_ovl1
/* 064144 800BBEF4 30B90400 */   andi  $t9, $a1, 0x400
/* 064148 800BBEF8 94870104 */  lhu   $a3, 0x104($a0)
.L800BBEFC_ovl1:
/* 06414C 800BBEFC 13200002 */  beqz  $t9, .L800BBF08_ovl1
/* 064150 800BBF00 30AA0200 */   andi  $t2, $a1, 0x200
/* 064154 800BBF04 94860104 */  lhu   $a2, 0x104($a0)
.L800BBF08_ovl1:
/* 064158 800BBF08 11400002 */  beqz  $t2, .L800BBF14_ovl1
/* 06415C 800BBF0C 30AB0100 */   andi  $t3, $a1, 0x100
/* 064160 800BBF10 94880106 */  lhu   $t0, 0x106($a0)
.L800BBF14_ovl1:
/* 064164 800BBF14 11600002 */  beqz  $t3, .L800BBF20_ovl1
/* 064168 800BBF18 30AC0080 */   andi  $t4, $a1, 0x80
/* 06416C 800BBF1C 94870106 */  lhu   $a3, 0x106($a0)
.L800BBF20_ovl1:
/* 064170 800BBF20 11800002 */  beqz  $t4, .L800BBF2C_ovl1
/* 064174 800BBF24 01001025 */   move  $v0, $t0
/* 064178 800BBF28 94860106 */  lhu   $a2, 0x106($a0)
.L800BBF2C_ovl1:
/* 06417C 800BBF2C 310D0080 */  andi  $t5, $t0, 0x80
/* 064180 800BBF30 A5280000 */  sh    $t0, ($t1)
/* 064184 800BBF34 A5270002 */  sh    $a3, 2($t1)
/* 064188 800BBF38 11A00003 */  beqz  $t5, .L800BBF48_ovl1
/* 06418C 800BBF3C A5260004 */   sh    $a2, 4($t1)
/* 064190 800BBF40 240E0040 */  li    $t6, 64
/* 064194 800BBF44 A12E0009 */  sb    $t6, 9($t1)
.L800BBF48_ovl1:
/* 064198 800BBF48 304F0040 */  andi  $t7, $v0, 0x40
/* 06419C 800BBF4C 11E00002 */  beqz  $t7, .L800BBF58_ovl1
/* 0641A0 800BBF50 2418FFC0 */   li    $t8, -64
/* 0641A4 800BBF54 A1380009 */  sb    $t8, 9($t1)
.L800BBF58_ovl1:
/* 0641A8 800BBF58 03E00008 */  jr    $ra
/* 0641AC 800BBF5C 00000000 */   nop   
.type func_800BBDC4, @function
.size func_800BBDC4, . - func_800BBDC4