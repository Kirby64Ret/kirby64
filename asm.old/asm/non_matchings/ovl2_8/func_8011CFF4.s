glabel func_8011CFF4
/* 0A5A64 8011CFF4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A5A68 8011CFF8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A5A6C 8011CFFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A5A70 8011D000 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A5A74 8011D004 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A5A78 8011D008 8C4E0000 */  lw    $t6, ($v0)
/* 0A5A7C 8011D00C 3C06800E */  lui   $a2, %hi(D_800E7CE0) # $a2, 0x800e
/* 0A5A80 8011D010 24C67CE0 */  addiu $a2, %lo(D_800E7CE0) # addiu $a2, $a2, 0x7ce0
/* 0A5A84 8011D014 000E7880 */  sll   $t7, $t6, 2
/* 0A5A88 8011D018 00CF2821 */  addu  $a1, $a2, $t7
/* 0A5A8C 8011D01C 8CA30000 */  lw    $v1, ($a1)
/* 0A5A90 8011D020 10600007 */  beqz  $v1, .L8011D040_ovl2
/* 0A5A94 8011D024 2478FFFF */   addiu $t8, $v1, -1
/* 0A5A98 8011D028 1C600005 */  bgtz  $v1, .L8011D040_ovl2
/* 0A5A9C 8011D02C ACB80000 */   sw    $t8, ($a1)
/* 0A5AA0 8011D030 8C590000 */  lw    $t9, ($v0)
/* 0A5AA4 8011D034 00194080 */  sll   $t0, $t9, 2
/* 0A5AA8 8011D038 00C84821 */  addu  $t1, $a2, $t0
/* 0A5AAC 8011D03C AD200000 */  sw    $zero, ($t1)
.L8011D040_ovl2:
/* 0A5AB0 8011D040 8C430000 */  lw    $v1, ($v0)
/* 0A5AB4 8011D044 14600003 */  bnez  $v1, .L8011D054_ovl2
/* 0A5AB8 8011D048 00000000 */   nop   
/* 0A5ABC 8011D04C 0C04454D */  jal   func_80111534
/* 0A5AC0 8011D050 00602025 */   move  $a0, $v1
.L8011D054_ovl2:
/* 0A5AC4 8011D054 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0A5AC8 8011D058 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0A5ACC 8011D05C 8C830000 */  lw    $v1, ($a0)
/* 0A5AD0 8011D060 2401FFFF */  li    $at, -1
/* 0A5AD4 8011D064 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A5AD8 8011D068 50610021 */  beql  $v1, $at, .L8011D0F0_ovl2
/* 0A5ADC 8011D06C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A5AE0 8011D070 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A5AE4 8011D074 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 0A5AE8 8011D078 240CFFFF */  li    $t4, -1
/* 0A5AEC 8011D07C 8C4A0000 */  lw    $t2, ($v0)
/* 0A5AF0 8011D080 3C0D800D */  lui   $t5, %hi(D_800D6FB2) # $t5, 0x800d
/* 0A5AF4 8011D084 3C058023 */  lui   $a1, %hi(D_8022947C) # $a1, 0x8023
/* 0A5AF8 8011D088 000A5880 */  sll   $t3, $t2, 2
/* 0A5AFC 8011D08C 002B0821 */  addu  $at, $at, $t3
/* 0A5B00 8011D090 AC23DC50 */ sw $v1, %lo(gEntityVtableIndexArray)($at)
/* 0A5B04 8011D094 AC8C0000 */  sw    $t4, ($a0)
/* 0A5B08 8011D098 95AD6FB2 */  lhu   $t5, %lo(D_800D6FB2)($t5)
/* 0A5B0C 8011D09C 24010002 */  li    $at, 2
/* 0A5B10 8011D0A0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 0A5B14 8011D0A4 55A1000B */  bnel  $t5, $at, .L8011D0D4_ovl2
/* 0A5B18 8011D0A8 8C580000 */   lw    $t8, ($v0)
/* 0A5B1C 8011D0AC 8C4E0000 */  lw    $t6, ($v0)
/* 0A5B20 8011D0B0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 0A5B24 8011D0B4 24A5947C */  addiu $a1, %lo(D_8022947C) # addiu $a1, $a1, -0x6b84
/* 0A5B28 8011D0B8 000E7880 */  sll   $t7, $t6, 2
/* 0A5B2C 8011D0BC 008F2021 */  addu  $a0, $a0, $t7
/* 0A5B30 8011D0C0 0C02C7B2 */  jal   assign_new_process_entry
/* 0A5B34 8011D0C4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 0A5B38 8011D0C8 10000009 */  b     .L8011D0F0_ovl2
/* 0A5B3C 8011D0CC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A5B40 8011D0D0 8C580000 */  lw    $t8, ($v0)
.L8011D0D4_ovl2:
/* 0A5B44 8011D0D4 3C058017 */  lui   $a1, %hi(D_8016C510) # $a1, 0x8017
/* 0A5B48 8011D0D8 24A5C510 */  addiu $a1, %lo(D_8016C510) # addiu $a1, $a1, -0x3af0
/* 0A5B4C 8011D0DC 0018C880 */  sll   $t9, $t8, 2
/* 0A5B50 8011D0E0 00992021 */  addu  $a0, $a0, $t9
/* 0A5B54 8011D0E4 0C02C7B2 */  jal   assign_new_process_entry
/* 0A5B58 8011D0E8 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 0A5B5C 8011D0EC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011D0F0_ovl2:
/* 0A5B60 8011D0F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A5B64 8011D0F4 03E00008 */  jr    $ra
/* 0A5B68 8011D0F8 00000000 */   nop   
.type func_8011CFF4, @function
.size func_8011CFF4, . - func_8011CFF4
