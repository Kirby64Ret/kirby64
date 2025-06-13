glabel func_801EE050_ovl10
/* 1DEDC0 801EE050 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DEDC4 801EE054 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DEDC8 801EE058 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DEDCC 801EE05C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DEDD0 801EE060 AFA40020 */  sw    $a0, 0x20($sp)
/* 1DEDD4 801EE064 8C620000 */  lw    $v0, ($v1)
/* 1DEDD8 801EE068 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DEDDC 801EE06C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DEDE0 801EE070 00021080 */  sll   $v0, $v0, 2
/* 1DEDE4 801EE074 00220821 */  addu  $at, $at, $v0
/* 1DEDE8 801EE078 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DEDEC 801EE07C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DEDF0 801EE080 8C780000 */  lw    $t8, ($v1)
/* 1DEDF4 801EE084 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 1DEDF8 801EE088 00A22821 */  addu  $a1, $a1, $v0
/* 1DEDFC 801EE08C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DEE00 801EE090 0018C880 */  sll   $t9, $t8, 2
/* 1DEE04 801EE094 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 1DEE08 801EE098 00390821 */  addu  $at, $at, $t9
/* 1DEE0C 801EE09C 240F000B */  li    $t7, 11
/* 1DEE10 801EE0A0 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DEE14 801EE0A4 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DEE18 801EE0A8 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DEE1C 801EE0AC 3C040001 */  lui   $a0, (0x0001026E >> 16) # lui $a0, 1
/* 1DEE20 801EE0B0 3484026E */  ori   $a0, (0x0001026E & 0xFFFF) # ori $a0, $a0, 0x26e
/* 1DEE24 801EE0B4 0C02A806 */  jal   func_800AA018
/* 1DEE28 801EE0B8 ACA80098 */   sw    $t0, 0x98($a1)
/* 1DEE2C 801EE0BC 3C040001 */  lui   $a0, (0x0001026F >> 16) # lui $a0, 1
/* 1DEE30 801EE0C0 0C02A806 */  jal   func_800AA018
/* 1DEE34 801EE0C4 3484026F */   ori   $a0, (0x0001026F & 0xFFFF) # ori $a0, $a0, 0x26f
/* 1DEE38 801EE0C8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DEE3C 801EE0CC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DEE40 801EE0D0 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DEE44 801EE0D4 44808000 */  mtc1  $zero, $f16
/* 1DEE48 801EE0D8 8C620000 */  lw    $v0, ($v1)
/* 1DEE4C 801EE0DC 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 1DEE50 801EE0E0 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 1DEE54 801EE0E4 00021080 */  sll   $v0, $v0, 2
/* 1DEE58 801EE0E8 00220821 */  addu  $at, $at, $v0
/* 1DEE5C 801EE0EC C42464D0 */ lwc1 $f4, %lo(D_800E64D0)($at)
/* 1DEE60 801EE0F0 3C01801F */  lui   $at, %hi(D_801F4BD4_ovl10) # $at, 0x801f
/* 1DEE64 801EE0F4 C4284BD4 */  lwc1  $f8, %lo(D_801F4BD4_ovl10)($at)
/* 1DEE68 801EE0F8 46002187 */  neg.s $f6, $f4
/* 1DEE6C 801EE0FC 3C01800E */ lui $at, %hi(D_800E6690)
/* 1DEE70 801EE100 46083282 */  mul.s $f10, $f6, $f8
/* 1DEE74 801EE104 00220821 */  addu  $at, $at, $v0
/* 1DEE78 801EE108 240401F2 */  li    $a0, 498
/* 1DEE7C 801EE10C E42A6690 */ swc1 $f10, %lo(D_800E6690)($at)
/* 1DEE80 801EE110 8C690000 */  lw    $t1, ($v1)
/* 1DEE84 801EE114 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DEE88 801EE118 00095080 */  sll   $t2, $t1, 2
/* 1DEE8C 801EE11C 00AA5821 */  addu  $t3, $a1, $t2
/* 1DEE90 801EE120 E5700000 */  swc1  $f16, ($t3)
/* 1DEE94 801EE124 8C620000 */  lw    $v0, ($v1)
/* 1DEE98 801EE128 00021080 */  sll   $v0, $v0, 2
/* 1DEE9C 801EE12C 00A26021 */  addu  $t4, $a1, $v0
/* 1DEEA0 801EE130 C5920000 */  lwc1  $f18, ($t4)
/* 1DEEA4 801EE134 00220821 */  addu  $at, $at, $v0
/* 1DEEA8 801EE138 E4323210 */ swc1 $f18, %lo(D_800E3210)($at)
/* 1DEEAC 801EE13C 8C6D0000 */  lw    $t5, ($v1)
/* 1DEEB0 801EE140 3C01801F */  lui   $at, %hi(D_801F4BD8_ovl10) # $at, 0x801f
/* 1DEEB4 801EE144 C4244BD8 */  lwc1  $f4, %lo(D_801F4BD8_ovl10)($at)
/* 1DEEB8 801EE148 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DEEBC 801EE14C 000D7080 */  sll   $t6, $t5, 2
/* 1DEEC0 801EE150 002E0821 */  addu  $at, $at, $t6
/* 1DEEC4 801EE154 0C029D9E */  jal   play_sound
/* 1DEEC8 801EE158 E4243C90 */ swc1 $f4, %lo(D_800E3C90)($at)
/* 1DEECC 801EE15C 0C03EE45 */  jal   func_800FB914
/* 1DEED0 801EE160 24040001 */   li    $a0, 1
/* 1DEED4 801EE164 0C002DAF */  jal   finish_current_thread
/* 1DEED8 801EE168 24040005 */   li    $a0, 5
/* 1DEEDC 801EE16C 0C07BC86 */  jal   func_801EF218_ovl10
/* 1DEEE0 801EE170 24040002 */   li    $a0, 2
/* 1DEEE4 801EE174 0C002DAF */  jal   finish_current_thread
/* 1DEEE8 801EE178 24040019 */   li    $a0, 25
/* 1DEEEC 801EE17C 0C02CD48 */  jal   func_800B3520
/* 1DEEF0 801EE180 00000000 */   nop   
/* 1DEEF4 801EE184 0C02BC9F */  jal   func_800AF27C
/* 1DEEF8 801EE188 00000000 */   nop   
/* 1DEEFC 801EE18C 3C040001 */  lui   $a0, (0x00010270 >> 16) # lui $a0, 1
/* 1DEF00 801EE190 0C02A806 */  jal   func_800AA018
/* 1DEF04 801EE194 34840270 */   ori   $a0, (0x00010270 & 0xFFFF) # ori $a0, $a0, 0x270
/* 1DEF08 801EE198 3C040001 */  lui   $a0, (0x00010271 >> 16) # lui $a0, 1
/* 1DEF0C 801EE19C 0C02A806 */  jal   func_800AA018
/* 1DEF10 801EE1A0 34840271 */   ori   $a0, (0x00010271 & 0xFFFF) # ori $a0, $a0, 0x271
/* 1DEF14 801EE1A4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1DEF18 801EE1A8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1DEF1C 801EE1AC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1DEF20 801EE1B0 3C07800E */ lui $a3, %hi(gEntitiesNextPosXArray)
/* 1DEF24 801EE1B4 8F020000 */  lw    $v0, ($t8)
/* 1DEF28 801EE1B8 24040006 */  li    $a0, 6
/* 1DEF2C 801EE1BC 24050003 */  li    $a1, 3
/* 1DEF30 801EE1C0 00021080 */  sll   $v0, $v0, 2
/* 1DEF34 801EE1C4 00220821 */  addu  $at, $at, $v0
/* 1DEF38 801EE1C8 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1DEF3C 801EE1CC 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1DEF40 801EE1D0 44814000 */  mtc1  $at, $f8
/* 1DEF44 801EE1D4 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1DEF48 801EE1D8 00220821 */  addu  $at, $at, $v0
/* 1DEF4C 801EE1DC C4302950 */ lwc1 $f16, %lo(gEntitiesNextPosZArray)($at)
/* 1DEF50 801EE1E0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1DEF54 801EE1E4 44819000 */  mtc1  $at, $f18
/* 1DEF58 801EE1E8 46083281 */  sub.s $f10, $f6, $f8
/* 1DEF5C 801EE1EC 00E23821 */  addu  $a3, $a3, $v0
/* 1DEF60 801EE1F0 8CE725D0 */ lw $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 1DEF64 801EE1F4 46128100 */  add.s $f4, $f16, $f18
/* 1DEF68 801EE1F8 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 1DEF6C 801EE1FC 24060003 */  li    $a2, 3
/* 1DEF70 801EE200 0C029FDD */  jal   func_800A7F74
/* 1DEF74 801EE204 E7A40014 */   swc1  $f4, 0x14($sp)
/* 1DEF78 801EE208 0C07B5F4 */  jal   func_801ED7D0_ovl10
/* 1DEF7C 801EE20C 8FA40020 */   lw    $a0, 0x20($sp)
/* 1DEF80 801EE210 0C02BC9F */  jal   func_800AF27C
/* 1DEF84 801EE214 00000000 */   nop   
/* 1DEF88 801EE218 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1DEF8C 801EE21C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1DEF90 801EE220 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DEF94 801EE224 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DEF98 801EE228 8F280000 */  lw    $t0, ($t9)
/* 1DEF9C 801EE22C 240F0001 */  li    $t7, 1
/* 1DEFA0 801EE230 27BD0020 */  addiu $sp, $sp, 0x20
/* 1DEFA4 801EE234 00084880 */  sll   $t1, $t0, 2
/* 1DEFA8 801EE238 00290821 */  addu  $at, $at, $t1
/* 1DEFAC 801EE23C 03E00008 */  jr    $ra
/* 1DEFB0 801EE240 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
.type func_801EE050_ovl10, @function
.size func_801EE050_ovl10, . - func_801EE050_ovl10
