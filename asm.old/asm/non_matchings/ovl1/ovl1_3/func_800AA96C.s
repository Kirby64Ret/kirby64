glabel func_800AA96C
/* 052BBC 800AA96C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 052BC0 800AA970 AFB70060 */  sw    $s7, 0x60($sp)
/* 052BC4 800AA974 3C178005 */  lui   $s7, %hi(D_8004A7C4) # $s7, 0x8005
/* 052BC8 800AA978 26F7A7C4 */  addiu $s7, %lo(D_8004A7C4) # addiu $s7, $s7, -0x583c
/* 052BCC 800AA97C 8EE20000 */  lw    $v0, ($s7)
/* 052BD0 800AA980 AFBF0064 */  sw    $ra, 0x64($sp)
/* 052BD4 800AA984 AFB6005C */  sw    $s6, 0x5c($sp)
/* 052BD8 800AA988 AFB50058 */  sw    $s5, 0x58($sp)
/* 052BDC 800AA98C AFB40054 */  sw    $s4, 0x54($sp)
/* 052BE0 800AA990 AFB30050 */  sw    $s3, 0x50($sp)
/* 052BE4 800AA994 AFB2004C */  sw    $s2, 0x4c($sp)
/* 052BE8 800AA998 AFB10048 */  sw    $s1, 0x48($sp)
/* 052BEC 800AA99C AFB00044 */  sw    $s0, 0x44($sp)
/* 052BF0 800AA9A0 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 052BF4 800AA9A4 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 052BF8 800AA9A8 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 052BFC 800AA9AC AFA5006C */  sw    $a1, 0x6c($sp)
/* 052C00 800AA9B0 0005C402 */  srl   $t8, $a1, 0x10
/* 052C04 800AA9B4 8C4E0000 */  lw    $t6, ($v0)
/* 052C08 800AA9B8 0018C880 */  sll   $t9, $t8, 2
/* 052C0C 800AA9BC 3C08800D */  lui   $t0, 0x800d
/* 052C10 800AA9C0 01194021 */  addu  $t0, $t0, $t9
/* 052C14 800AA9C4 8D0800C4 */  lw    $t0, 0xc4($t0)
/* 052C18 800AA9C8 3C01800E */  lui   $at, 0x800e
/* 052C1C 800AA9CC 30A9FFFF */  andi  $t1, $a1, 0xffff
/* 052C20 800AA9D0 000E7880 */  sll   $t7, $t6, 2
/* 052C24 800AA9D4 002F0821 */  addu  $at, $at, $t7
/* 052C28 800AA9D8 00095080 */  sll   $t2, $t1, 2
/* 052C2C 800AA9DC AC2502D0 */  sw    $a1, 0x2d0($at)
/* 052C30 800AA9E0 010A8021 */  addu  $s0, $t0, $t2
/* 052C34 800AA9E4 8E030000 */  lw    $v1, ($s0)
/* 052C38 800AA9E8 4487C000 */  mtc1  $a3, $f24
/* 052C3C 800AA9EC 00A03825 */  move  $a3, $a1
/* 052C40 800AA9F0 00C09025 */  move  $s2, $a2
/* 052C44 800AA9F4 1060000C */  beqz  $v1, .L800AAA28_ovl1
/* 052C48 800AA9F8 0080A825 */   move  $s5, $a0
/* 052C4C 800AA9FC 8C4B0000 */  lw    $t3, ($v0)
/* 052C50 800AAA00 3C11800E */  lui   $s1, %hi(D_800DFA10) # $s1, 0x800e
/* 052C54 800AAA04 2631FA10 */  addiu $s1, %lo(D_800DFA10) # addiu $s1, $s1, -0x5f0
/* 052C58 800AAA08 000B6080 */  sll   $t4, $t3, 2
/* 052C5C 800AAA0C 022C6821 */  addu  $t5, $s1, $t4
/* 052C60 800AAA10 ADA30000 */  sw    $v1, ($t5)
/* 052C64 800AAA14 8E040000 */  lw    $a0, ($s0)
/* 052C68 800AAA18 0C02A159 */  jal   func_800A8564
/* 052C6C 800AAA1C 24050001 */   li    $a1, 1
/* 052C70 800AAA20 1000000C */  b     .L800AAA54_ovl1
/* 052C74 800AAA24 00000000 */   nop   
.L800AAA28_ovl1:
/* 052C78 800AAA28 00E02025 */  move  $a0, $a3
/* 052C7C 800AAA2C 0C02A494 */  jal   func_800A9250
/* 052C80 800AAA30 24050003 */   li    $a1, 3
/* 052C84 800AAA34 AE020000 */  sw    $v0, ($s0)
/* 052C88 800AAA38 8EEE0000 */  lw    $t6, ($s7)
/* 052C8C 800AAA3C 3C11800E */  lui   $s1, %hi(D_800DFA10) # $s1, 0x800e
/* 052C90 800AAA40 2631FA10 */  addiu $s1, %lo(D_800DFA10) # addiu $s1, $s1, -0x5f0
/* 052C94 800AAA44 8DCF0000 */  lw    $t7, ($t6)
/* 052C98 800AAA48 000FC080 */  sll   $t8, $t7, 2
/* 052C9C 800AAA4C 0238C821 */  addu  $t9, $s1, $t8
/* 052CA0 800AAA50 AF220000 */  sw    $v0, ($t9)
.L800AAA54_ovl1:
/* 052CA4 800AAA54 0C02A6D2 */  jal   func_800A9B48
/* 052CA8 800AAA58 02402025 */   move  $a0, $s2
/* 052CAC 800AAA5C 8EE90000 */  lw    $t1, ($s7)
/* 052CB0 800AAA60 3C08800E */  lui   $t0, 0x800e
/* 052CB4 800AAA64 8EB00000 */  lw    $s0, ($s5)
/* 052CB8 800AAA68 8D230000 */  lw    $v1, ($t1)
/* 052CBC 800AAA6C 2414FFFF */  li    $s4, -1
/* 052CC0 800AAA70 C7B60078 */  lwc1  $f22, 0x78($sp)
/* 052CC4 800AAA74 00031880 */  sll   $v1, $v1, 2
/* 052CC8 800AAA78 01034021 */  addu  $t0, $t0, $v1
/* 052CCC 800AAA7C 02235021 */  addu  $t2, $s1, $v1
/* 052CD0 800AAA80 8D08F690 */  lw    $t0, -0x970($t0)
/* 052CD4 800AAA84 8D4B0000 */  lw    $t3, ($t2)
/* 052CD8 800AAA88 02A08825 */  move  $s1, $s5
/* 052CDC 800AAA8C 8D120000 */  lw    $s2, ($t0)
/* 052CE0 800AAA90 1214001C */  beq   $s0, $s4, .L800AAB04_ovl1
/* 052CE4 800AAA94 8D730000 */   lw    $s3, ($t3)
/* 052CE8 800AAA98 3C15800E */  lui   $s5, %hi(D_800DFBD0) # $s5, 0x800e
/* 052CEC 800AAA9C 4480A000 */  mtc1  $zero, $f20
/* 052CF0 800AAAA0 26B5FBD0 */  addiu $s5, %lo(D_800DFBD0) # addiu $s5, $s5, -0x430
/* 052CF4 800AAAA4 2416002C */  li    $s6, 44
/* 052CF8 800AAAA8 8EEC0000 */  lw    $t4, ($s7)
.L800AAAAC_ovl1:
/* 052CFC 800AAAAC 02160019 */  multu $s0, $s6
/* 052D00 800AAAB0 00101080 */  sll   $v0, $s0, 2
/* 052D04 800AAAB4 8D8D0000 */  lw    $t5, ($t4)
/* 052D08 800AAAB8 4406C000 */  mfc1  $a2, $f24
/* 052D0C 800AAABC 00522821 */  addu  $a1, $v0, $s2
/* 052D10 800AAAC0 000D7080 */  sll   $t6, $t5, 2
/* 052D14 800AAAC4 02AE7821 */  addu  $t7, $s5, $t6
/* 052D18 800AAAC8 8DF80000 */  lw    $t8, ($t7)
/* 052D1C 800AAACC 0302C821 */  addu  $t9, $t8, $v0
/* 052D20 800AAAD0 8F240000 */  lw    $a0, ($t9)
/* 052D24 800AAAD4 00004812 */  mflo  $t1
/* 052D28 800AAAD8 01333821 */  addu  $a3, $t1, $s3
/* 052D2C 800AAADC E7B40020 */  swc1  $f20, 0x20($sp)
/* 052D30 800AAAE0 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 052D34 800AAAE4 E7B40018 */  swc1  $f20, 0x18($sp)
/* 052D38 800AAAE8 E7B60014 */  swc1  $f22, 0x14($sp)
/* 052D3C 800AAAEC 0C003B26 */  jal   func_8000EC98_ovl1
/* 052D40 800AAAF0 AFA00010 */   sw    $zero, 0x10($sp)
/* 052D44 800AAAF4 8E300004 */  lw    $s0, 4($s1)
/* 052D48 800AAAF8 26310004 */  addiu $s1, $s1, 4
/* 052D4C 800AAAFC 5614FFEB */  bnel  $s0, $s4, .L800AAAAC_ovl1
/* 052D50 800AAB00 8EEC0000 */   lw    $t4, ($s7)
.L800AAB04_ovl1:
/* 052D54 800AAB04 8FBF0064 */  lw    $ra, 0x64($sp)
/* 052D58 800AAB08 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 052D5C 800AAB0C D7B60030 */  ldc1  $f22, 0x30($sp)
/* 052D60 800AAB10 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 052D64 800AAB14 8FB00044 */  lw    $s0, 0x44($sp)
/* 052D68 800AAB18 8FB10048 */  lw    $s1, 0x48($sp)
/* 052D6C 800AAB1C 8FB2004C */  lw    $s2, 0x4c($sp)
/* 052D70 800AAB20 8FB30050 */  lw    $s3, 0x50($sp)
/* 052D74 800AAB24 8FB40054 */  lw    $s4, 0x54($sp)
/* 052D78 800AAB28 8FB50058 */  lw    $s5, 0x58($sp)
/* 052D7C 800AAB2C 8FB6005C */  lw    $s6, 0x5c($sp)
/* 052D80 800AAB30 8FB70060 */  lw    $s7, 0x60($sp)
/* 052D84 800AAB34 03E00008 */  jr    $ra
/* 052D88 800AAB38 27BD0068 */   addiu $sp, $sp, 0x68
.type func_800AA96C, @function
.size func_800AA96C, . - func_800AA96C
