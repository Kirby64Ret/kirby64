glabel func_8021FF90_ovl19
/* 2406A0 8021FF90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 2406A4 8021FF94 AFB10018 */  sw    $s1, 0x18($sp)
/* 2406A8 8021FF98 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 2406AC 8021FF9C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 2406B0 8021FFA0 8E2E0000 */  lw    $t6, ($s1)
/* 2406B4 8021FFA4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 2406B8 8021FFA8 AFB00014 */  sw    $s0, 0x14($sp)
/* 2406BC 8021FFAC AFA40020 */  sw    $a0, 0x20($sp)
/* 2406C0 8021FFB0 8DCF0000 */  lw    $t7, ($t6)
/* 2406C4 8021FFB4 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 2406C8 8021FFB8 000FC080 */  sll   $t8, $t7, 2
/* 2406CC 8021FFBC 00380821 */  addu  $at, $at, $t8
/* 2406D0 8021FFC0 0C0877F4 */  jal   func_8021DFD0_ovl19
/* 2406D4 8021FFC4 AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 2406D8 8021FFC8 8E220000 */  lw    $v0, ($s1)
/* 2406DC 8021FFCC 3C018023 */  lui   $at, %hi(D_8022F768) # $at, 0x8023
/* 2406E0 8021FFD0 C420F768 */  lwc1  $f0, %lo(D_8022F768)($at)
/* 2406E4 8021FFD4 8C480000 */  lw    $t0, ($v0)
/* 2406E8 8021FFD8 3C01800E */ lui $at, %hi(D_800DF150)
/* 2406EC 8021FFDC 3C198022 */  lui   $t9, %hi(func_80220138_ovl19) # $t9, 0x8022
/* 2406F0 8021FFE0 00084880 */  sll   $t1, $t0, 2
/* 2406F4 8021FFE4 00290821 */  addu  $at, $at, $t1
/* 2406F8 8021FFE8 27390138 */  addiu $t9, %lo(func_80220138_ovl19) # addiu $t9, $t9, 0x138
/* 2406FC 8021FFEC AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 240700 8021FFF0 8C4A0000 */  lw    $t2, ($v0)
/* 240704 8021FFF4 44802000 */  mtc1  $zero, $f4
/* 240708 8021FFF8 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 24070C 8021FFFC 000A5880 */  sll   $t3, $t2, 2
/* 240710 80220000 002B0821 */  addu  $at, $at, $t3
/* 240714 80220004 E42441D0 */ swc1 $f4, %lo(gEntitiesAngleYArray)($at)
/* 240718 80220008 8C4C0000 */  lw    $t4, ($v0)
/* 24071C 8022000C 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 240720 80220010 3C040002 */  lui   $a0, (0x00020060 >> 16) # lui $a0, 2
/* 240724 80220014 000C6880 */  sll   $t5, $t4, 2
/* 240728 80220018 002D0821 */  addu  $at, $at, $t5
/* 24072C 8022001C E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 240730 80220020 8C4E0000 */  lw    $t6, ($v0)
/* 240734 80220024 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 240738 80220028 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 24073C 8022002C 000E7880 */  sll   $t7, $t6, 2
/* 240740 80220030 002F0821 */  addu  $at, $at, $t7
/* 240744 80220034 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 240748 80220038 8C580000 */  lw    $t8, ($v0)
/* 24074C 8022003C 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 240750 80220040 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 240754 80220044 00184080 */  sll   $t0, $t8, 2
/* 240758 80220048 00280821 */  addu  $at, $at, $t0
/* 24075C 8022004C 34840060 */  ori   $a0, (0x00020060 & 0xFFFF) # ori $a0, $a0, 0x60
/* 240760 80220050 24060010 */  li    $a2, 16
/* 240764 80220054 0C02A619 */  jal   func_800A9864
/* 240768 80220058 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 24076C 8022005C 8E390000 */  lw    $t9, ($s1)
/* 240770 80220060 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 240774 80220064 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 240778 80220068 8F290000 */  lw    $t1, ($t9)
/* 24077C 8022006C 3C040002 */  lui   $a0, (0x000202EF >> 16) # lui $a0, 2
/* 240780 80220070 3C050002 */  lui   $a1, (0x000202F0 >> 16) # lui $a1, 2
/* 240784 80220074 00095080 */  sll   $t2, $t1, 2
/* 240788 80220078 020A5821 */  addu  $t3, $s0, $t2
/* 24078C 8022007C AD600000 */  sw    $zero, ($t3)
/* 240790 80220080 34A502F0 */  ori   $a1, (0x000202F0 & 0xFFFF) # ori $a1, $a1, 0x2f0
/* 240794 80220084 348402EF */  ori   $a0, (0x000202EF & 0xFFFF) # ori $a0, $a0, 0x2ef
/* 240798 80220088 0C048C3A */  jal   func_801230E8
/* 24079C 8022008C 00003025 */   move  $a2, $zero
/* 2407A0 80220090 8E2C0000 */  lw    $t4, ($s1)
/* 2407A4 80220094 8D820000 */  lw    $v0, ($t4)
/* 2407A8 80220098 00021080 */  sll   $v0, $v0, 2
/* 2407AC 8022009C 02026821 */  addu  $t5, $s0, $v0
/* 2407B0 802200A0 8DAE0000 */  lw    $t6, ($t5)
/* 2407B4 802200A4 15C0000A */  bnez  $t6, .L802200D0_ovl19
/* 2407B8 802200A8 00000000 */   nop   
.L802200AC_ovl19:
/* 2407BC 802200AC 0C002DAF */  jal   finish_current_thread
/* 2407C0 802200B0 24040001 */   li    $a0, 1
/* 2407C4 802200B4 8E2F0000 */  lw    $t7, ($s1)
/* 2407C8 802200B8 8DE20000 */  lw    $v0, ($t7)
/* 2407CC 802200BC 00021080 */  sll   $v0, $v0, 2
/* 2407D0 802200C0 0202C021 */  addu  $t8, $s0, $v0
/* 2407D4 802200C4 8F080000 */  lw    $t0, ($t8)
/* 2407D8 802200C8 1100FFF8 */  beqz  $t0, .L802200AC_ovl19
/* 2407DC 802200CC 00000000 */   nop   
.L802200D0_ovl19:
/* 2407E0 802200D0 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 2407E4 802200D4 00220821 */  addu  $at, $at, $v0
/* 2407E8 802200D8 24190001 */  li    $t9, 1
/* 2407EC 802200DC 3C040002 */  lui   $a0, (0x000202ED >> 16) # lui $a0, 2
/* 2407F0 802200E0 3C050002 */  lui   $a1, (0x000202EE >> 16) # lui $a1, 2
/* 2407F4 802200E4 AC399AA0 */ sw $t9, %lo(D_800E9AA0)($at)
/* 2407F8 802200E8 34A502EE */  ori   $a1, (0x000202EE & 0xFFFF) # ori $a1, $a1, 0x2ee
/* 2407FC 802200EC 348402ED */  ori   $a0, (0x000202ED & 0xFFFF) # ori $a0, $a0, 0x2ed
/* 240800 802200F0 0C048C3A */  jal   func_801230E8
/* 240804 802200F4 24060001 */   li    $a2, 1
/* 240808 802200F8 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 24080C 802200FC 8E290000 */  lw    $t1, ($s1)
/* 240810 80220100 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 240814 80220104 A0400017 */  sb    $zero, 0x17($v0)
/* 240818 80220108 A4400068 */  sh    $zero, 0x68($v0)
/* 24081C 8022010C 8D2A0000 */  lw    $t2, ($t1)
/* 240820 80220110 3C01800F */ lui $at, %hi(D_800E8760)
/* 240824 80220114 000A5880 */  sll   $t3, $t2, 2
/* 240828 80220118 002B0821 */  addu  $at, $at, $t3
/* 24082C 8022011C 0C02BE85 */  jal   func_800AFA14
/* 240830 80220120 AC208760 */ sw $zero, %lo(D_800E8760)($at)
/* 240834 80220124 8FBF001C */  lw    $ra, 0x1c($sp)
/* 240838 80220128 8FB00014 */  lw    $s0, 0x14($sp)
/* 24083C 8022012C 8FB10018 */  lw    $s1, 0x18($sp)
/* 240840 80220130 03E00008 */  jr    $ra
/* 240844 80220134 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8021FF90_ovl19, @function
.size func_8021FF90_ovl19, . - func_8021FF90_ovl19
