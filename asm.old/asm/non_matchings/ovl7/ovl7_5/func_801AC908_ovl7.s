glabel func_801AC908_ovl7
/* 152978 801AC908 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15297C 801AC90C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 152980 801AC910 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 152984 801AC914 AFBF0014 */  sw    $ra, 0x14($sp)
/* 152988 801AC918 8DC20000 */  lw    $v0, ($t6)
/* 15298C 801AC91C 3C03800F */ lui $v1, %hi(D_800E83E0)
/* 152990 801AC920 24010012 */  li    $at, 18
/* 152994 801AC924 00021080 */  sll   $v0, $v0, 2
/* 152998 801AC928 00621821 */  addu  $v1, $v1, $v0
/* 15299C 801AC92C 8C6383E0 */ lw $v1, %lo(D_800E83E0)($v1)
/* 1529A0 801AC930 10600012 */  beqz  $v1, .L801AC97C_ovl7
/* 1529A4 801AC934 00000000 */   nop   
/* 1529A8 801AC938 14610009 */  bne   $v1, $at, .L801AC960_ovl7
/* 1529AC 801AC93C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1529B0 801AC940 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1529B4 801AC944 00822021 */  addu  $a0, $a0, $v0
/* 1529B8 801AC948 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 1529BC 801AC94C 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 1529C0 801AC950 0C02C7B2 */  jal   assign_new_process_entry
/* 1529C4 801AC954 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1529C8 801AC958 1000001A */  b     .L801AC9C4_ovl7
/* 1529CC 801AC95C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AC960_ovl7:
/* 1529D0 801AC960 00822021 */  addu  $a0, $a0, $v0
/* 1529D4 801AC964 3C05801B */  lui   $a1, %hi(D_801AC364) # $a1, 0x801b
/* 1529D8 801AC968 24A5C364 */  addiu $a1, %lo(D_801AC364) # addiu $a1, $a1, -0x3c9c
/* 1529DC 801AC96C 0C02C7B2 */  jal   assign_new_process_entry
/* 1529E0 801AC970 8C84E510 */   lw    $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1529E4 801AC974 10000013 */  b     .L801AC9C4_ovl7
/* 1529E8 801AC978 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AC97C_ovl7:
/* 1529EC 801AC97C 0C06835D */  jal   func_801A0D74_ovl7
/* 1529F0 801AC980 00000000 */   nop   
/* 1529F4 801AC984 10400006 */  beqz  $v0, .L801AC9A0_ovl7
/* 1529F8 801AC988 3C04801D */   lui   $a0, %hi(D_801CB044) # $a0, 0x801d
/* 1529FC 801AC98C 0C068E4E */  jal   func_801A3938_ovl7
/* 152A00 801AC990 2484B044 */   addiu $a0, %lo(D_801CB044) # addiu $a0, $a0, -0x4fbc
/* 152A04 801AC994 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 152A08 801AC998 0C068DB3 */  jal   func_801A36CC_ovl7
/* 152A0C 801AC99C 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801AC9A0_ovl7:
/* 152A10 801AC9A0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 152A14 801AC9A4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 152A18 801AC9A8 3C04801D */  lui   $a0, %hi(D_801CA738) # $a0, 0x801d
/* 152A1C 801AC9AC 2484A738 */  addiu $a0, %lo(D_801CA738) # addiu $a0, $a0, -0x58c8
/* 152A20 801AC9B0 0C0445EF */  jal   func_801117BC
/* 152A24 801AC9B4 8DE50000 */   lw    $a1, ($t7)
/* 152A28 801AC9B8 0C044713 */  jal   func_80111C4C
/* 152A2C 801AC9BC 00402025 */   move  $a0, $v0
/* 152A30 801AC9C0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801AC9C4_ovl7:
/* 152A34 801AC9C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 152A38 801AC9C8 03E00008 */  jr    $ra
/* 152A3C 801AC9CC 00000000 */   nop   
.type func_801AC908_ovl7, @function
.size func_801AC908_ovl7, . - func_801AC908_ovl7
