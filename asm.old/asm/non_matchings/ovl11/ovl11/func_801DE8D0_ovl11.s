glabel func_801DE8D0_ovl11
/* 1E9190 801DE8D0 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1E9194 801DE8D4 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1E9198 801DE8D8 8CE20000 */  lw    $v0, ($a3)
/* 1E919C 801DE8DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E91A0 801DE8E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E91A4 801DE8E4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E91A8 801DE8E8 8C430000 */  lw    $v1, ($v0)
/* 1E91AC 801DE8EC 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1E91B0 801DE8F0 3C06800E */ lui $a2, %hi(D_800E1B50)
/* 1E91B4 801DE8F4 00031880 */  sll   $v1, $v1, 2
/* 1E91B8 801DE8F8 01C37021 */  addu  $t6, $t6, $v1
/* 1E91BC 801DE8FC 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1E91C0 801DE900 00C33021 */  addu  $a2, $a2, $v1
/* 1E91C4 801DE904 8CC61B50 */ lw $a2, %lo(D_800E1B50)($a2)
/* 1E91C8 801DE908 11C0002B */  beqz  $t6, .L801DE9B8_ovl11
/* 1E91CC 801DE90C 3C05800F */   lui   $a1, %hi(D_800E9FE0) # $a1, 0x800f
/* 1E91D0 801DE910 24A59FE0 */  addiu $a1, %lo(D_800E9FE0) # addiu $a1, $a1, -0x6020
/* 1E91D4 801DE914 00A32021 */  addu  $a0, $a1, $v1
/* 1E91D8 801DE918 8C8F0000 */  lw    $t7, ($a0)
/* 1E91DC 801DE91C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E91E0 801DE920 24090001 */  li    $t1, 1
/* 1E91E4 801DE924 25F8FFFF */  addiu $t8, $t7, -1
/* 1E91E8 801DE928 AC980000 */  sw    $t8, ($a0)
/* 1E91EC 801DE92C 8C430000 */  lw    $v1, ($v0)
/* 1E91F0 801DE930 240F0002 */  li    $t7, 2
/* 1E91F4 801DE934 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1E91F8 801DE938 00031880 */  sll   $v1, $v1, 2
/* 1E91FC 801DE93C 00A3C821 */  addu  $t9, $a1, $v1
/* 1E9200 801DE940 8F280000 */  lw    $t0, ($t9)
/* 1E9204 801DE944 00230821 */  addu  $at, $at, $v1
/* 1E9208 801DE948 15000013 */  bnez  $t0, .L801DE998_ovl11
/* 1E920C 801DE94C 00000000 */   nop   
/* 1E9210 801DE950 A0C9003C */  sb    $t1, 0x3c($a2)
/* 1E9214 801DE954 8CE20000 */  lw    $v0, ($a3)
/* 1E9218 801DE958 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E921C 801DE95C 240A0001 */  li    $t2, 1
/* 1E9220 801DE960 8C4B0000 */  lw    $t3, ($v0)
/* 1E9224 801DE964 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E9228 801DE968 3C05801E */  lui   $a1, %hi(D_801DDEC0) # $a1, 0x801e
/* 1E922C 801DE96C 000B6080 */  sll   $t4, $t3, 2
/* 1E9230 801DE970 002C0821 */  addu  $at, $at, $t4
/* 1E9234 801DE974 AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
/* 1E9238 801DE978 8C4D0000 */  lw    $t5, ($v0)
/* 1E923C 801DE97C 24A5DEC0 */  addiu $a1, %lo(D_801DDEC0) # addiu $a1, $a1, -0x2140
/* 1E9240 801DE980 000D7080 */  sll   $t6, $t5, 2
/* 1E9244 801DE984 008E2021 */  addu  $a0, $a0, $t6
/* 1E9248 801DE988 0C02C7B2 */  jal   assign_new_process_entry
/* 1E924C 801DE98C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E9250 801DE990 1000000A */  b     .L801DE9BC_ovl11
/* 1E9254 801DE994 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DE998_ovl11:
/* 1E9258 801DE998 AC2FDC50 */  sw    $t7, %lo(gEntityVtableIndexArray)($at)
/* 1E925C 801DE99C 8C580000 */  lw    $t8, ($v0)
/* 1E9260 801DE9A0 3C05801E */  lui   $a1, %hi(D_801DDEC0) # $a1, 0x801e
/* 1E9264 801DE9A4 24A5DEC0 */  addiu $a1, %lo(D_801DDEC0) # addiu $a1, $a1, -0x2140
/* 1E9268 801DE9A8 0018C880 */  sll   $t9, $t8, 2
/* 1E926C 801DE9AC 00992021 */  addu  $a0, $a0, $t9
/* 1E9270 801DE9B0 0C02C7B2 */  jal   assign_new_process_entry
/* 1E9274 801DE9B4 8C84E510 */   lw    $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DE9B8_ovl11:
/* 1E9278 801DE9B8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DE9BC_ovl11:
/* 1E927C 801DE9BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9280 801DE9C0 03E00008 */  jr    $ra
/* 1E9284 801DE9C4 00000000 */   nop   
.type func_801DE8D0_ovl11, @function
.size func_801DE8D0_ovl11, . - func_801DE8D0_ovl11
