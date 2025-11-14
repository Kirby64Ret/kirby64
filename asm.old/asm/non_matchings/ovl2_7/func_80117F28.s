glabel func_80117F28
/* 0A0998 80117F28 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A099C 80117F2C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A09A0 80117F30 AFB10020 */  sw    $s1, 0x20($sp)
/* 0A09A4 80117F34 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0A09A8 80117F38 0C045E0D */  jal   func_80117834
/* 0A09AC 80117F3C F7B40010 */   sdc1  $f20, 0x10($sp)
/* 0A09B0 80117F40 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 0A09B4 80117F44 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 0A09B8 80117F48 8E0E0008 */  lw    $t6, 8($s0)
/* 0A09BC 80117F4C 15C00006 */  bnez  $t6, .L80117F68_ovl2
/* 0A09C0 80117F50 00000000 */   nop   
.L80117F54_ovl2:
/* 0A09C4 80117F54 0C002DAF */  jal   finish_current_thread
/* 0A09C8 80117F58 24040001 */   li    $a0, 1
/* 0A09CC 80117F5C 8E0F0008 */  lw    $t7, 8($s0)
/* 0A09D0 80117F60 11E0FFFC */  beqz  $t7, .L80117F54_ovl2
/* 0A09D4 80117F64 00000000 */   nop   
.L80117F68_ovl2:
/* 0A09D8 80117F68 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0A09DC 80117F6C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0A09E0 80117F70 8E020000 */  lw    $v0, ($s0)
/* 0A09E4 80117F74 3C01C47A */  li    $at, 0xC47A0000 # -1000.000000
/* 0A09E8 80117F78 4481A000 */  mtc1  $at, $f20
/* 0A09EC 80117F7C 8C580000 */  lw    $t8, ($v0)
/* 0A09F0 80117F80 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 0A09F4 80117F84 44812000 */  mtc1  $at, $f4
/* 0A09F8 80117F88 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0A09FC 80117F8C 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0A0A00 80117F90 0018C880 */  sll   $t9, $t8, 2
/* 0A0A04 80117F94 00D94021 */  addu  $t0, $a2, $t9
/* 0A0A08 80117F98 E5040000 */  swc1  $f4, ($t0)
/* 0A0A0C 80117F9C 8C490000 */  lw    $t1, ($v0)
/* 0A0A10 80117FA0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0A0A14 80117FA4 44813000 */  mtc1  $at, $f6
/* 0A0A18 80117FA8 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0A0A1C 80117FAC 00095080 */  sll   $t2, $t1, 2
/* 0A0A20 80117FB0 002A0821 */  addu  $at, $at, $t2
/* 0A0A24 80117FB4 E4263C90 */ swc1 $f6, %lo(D_800E3C90)($at)
/* 0A0A28 80117FB8 8C430000 */  lw    $v1, ($v0)
/* 0A0A2C 80117FBC 3C11800E */  lui   $s1, %hi(gEntitiesNextPosYArray) # $s1, 0x800e
/* 0A0A30 80117FC0 26312790 */  addiu $s1, %lo(gEntitiesNextPosYArray) # addiu $s1, $s1, 0x2790
/* 0A0A34 80117FC4 00031880 */  sll   $v1, $v1, 2
/* 0A0A38 80117FC8 02235821 */  addu  $t3, $s1, $v1
/* 0A0A3C 80117FCC C5680000 */  lwc1  $f8, ($t3)
/* 0A0A40 80117FD0 4608A03C */  c.lt.s $f20, $f8
/* 0A0A44 80117FD4 00000000 */  nop   
/* 0A0A48 80117FD8 4502000F */  bc1fl .L80118018_ovl2
/* 0A0A4C 80117FDC 44808000 */   mtc1  $zero, $f16
.L80117FE0_ovl2:
/* 0A0A50 80117FE0 0C002DAF */  jal   finish_current_thread
/* 0A0A54 80117FE4 24040001 */   li    $a0, 1
/* 0A0A58 80117FE8 8E020000 */  lw    $v0, ($s0)
/* 0A0A5C 80117FEC 8C430000 */  lw    $v1, ($v0)
/* 0A0A60 80117FF0 00031880 */  sll   $v1, $v1, 2
/* 0A0A64 80117FF4 02236021 */  addu  $t4, $s1, $v1
/* 0A0A68 80117FF8 C58A0000 */  lwc1  $f10, ($t4)
/* 0A0A6C 80117FFC 460AA03C */  c.lt.s $f20, $f10
/* 0A0A70 80118000 00000000 */  nop   
/* 0A0A74 80118004 4501FFF6 */  bc1t  .L80117FE0_ovl2
/* 0A0A78 80118008 00000000 */   nop   
/* 0A0A7C 8011800C 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0A0A80 80118010 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0A0A84 80118014 44808000 */  mtc1  $zero, $f16
.L80118018_ovl2:
/* 0A0A88 80118018 00C36821 */  addu  $t5, $a2, $v1
/* 0A0A8C 8011801C 3C01800E */ lui $at, %hi(D_800E3210)
/* 0A0A90 80118020 E5B00000 */  swc1  $f16, ($t5)
/* 0A0A94 80118024 8C430000 */  lw    $v1, ($v0)
/* 0A0A98 80118028 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 0A0A9C 8011802C 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 0A0AA0 80118030 00031880 */  sll   $v1, $v1, 2
/* 0A0AA4 80118034 00C37021 */  addu  $t6, $a2, $v1
/* 0A0AA8 80118038 C5D20000 */  lwc1  $f18, ($t6)
/* 0A0AAC 8011803C 00230821 */  addu  $at, $at, $v1
/* 0A0AB0 80118040 00002025 */  move  $a0, $zero
/* 0A0AB4 80118044 E4323210 */ swc1 $f18, %lo(D_800E3210)($at)
/* 0A0AB8 80118048 8C4F0000 */  lw    $t7, ($v0)
/* 0A0ABC 8011804C 3C018013 */  lui   $at, %hi(D_80128D50) # $at, 0x8013
/* 0A0AC0 80118050 C4248D50 */  lwc1  $f4, %lo(D_80128D50)($at)
/* 0A0AC4 80118054 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0A0AC8 80118058 000FC080 */  sll   $t8, $t7, 2
/* 0A0ACC 8011805C 00380821 */  addu  $at, $at, $t8
/* 0A0AD0 80118060 E4243C90 */ swc1 $f4, %lo(D_800E3C90)($at)
/* 0A0AD4 80118064 8C590000 */  lw    $t9, ($v0)
/* 0A0AD8 80118068 3C018013 */  lui   $at, %hi(D_80128D54) # $at, 0x8013
/* 0A0ADC 8011806C C4288D54 */  lwc1  $f8, %lo(D_80128D54)($at)
/* 0A0AE0 80118070 00194080 */  sll   $t0, $t9, 2
/* 0A0AE4 80118074 01092821 */  addu  $a1, $t0, $t1
/* 0A0AE8 80118078 C4A60000 */  lwc1  $f6, ($a1)
/* 0A0AEC 8011807C 3C018013 */  lui   $at, %hi(D_80128D58) # $at, 0x8013
/* 0A0AF0 80118080 46083280 */  add.s $f10, $f6, $f8
/* 0A0AF4 80118084 E4AA0000 */  swc1  $f10, ($a1)
/* 0A0AF8 80118088 8C4A0000 */  lw    $t2, ($v0)
/* 0A0AFC 8011808C C4308D58 */  lwc1  $f16, %lo(D_80128D58)($at)
/* 0A0B00 80118090 000A5880 */  sll   $t3, $t2, 2
/* 0A0B04 80118094 022B6021 */  addu  $t4, $s1, $t3
/* 0A0B08 80118098 0C00236A */  jal   func_80008DA8
/* 0A0B0C 8011809C E5900000 */   swc1  $f16, ($t4)
/* 0A0B10 801180A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A0B14 801180A4 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 0A0B18 801180A8 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0A0B1C 801180AC 8FB10020 */  lw    $s1, 0x20($sp)
/* 0A0B20 801180B0 03E00008 */  jr    $ra
/* 0A0B24 801180B4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_80117F28, @function
.size func_80117F28, . - func_80117F28
