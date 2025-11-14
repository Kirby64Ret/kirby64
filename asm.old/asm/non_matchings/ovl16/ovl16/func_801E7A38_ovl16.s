glabel func_801E7A38_ovl16
/* 21DCE8 801E7A38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 21DCEC 801E7A3C AFB00018 */  sw    $s0, 0x18($sp)
/* 21DCF0 801E7A40 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 21DCF4 801E7A44 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 21DCF8 801E7A48 AFBF001C */  sw    $ra, 0x1c($sp)
/* 21DCFC 801E7A4C AFA40020 */  sw    $a0, 0x20($sp)
/* 21DD00 801E7A50 00002025 */  move  $a0, $zero
/* 21DD04 801E7A54 0C02BEED */  jal   func_800AFBB4
/* 21DD08 801E7A58 8E050000 */   lw    $a1, ($s0)
/* 21DD0C 801E7A5C 8E020000 */  lw    $v0, ($s0)
/* 21DD10 801E7A60 3C0E800B */  lui   $t6, %hi(D_800B4924) # $t6, 0x800b
/* 21DD14 801E7A64 3C01800E */ lui $at, %hi(D_800DEF90)
/* 21DD18 801E7A68 8C4F0000 */  lw    $t7, ($v0)
/* 21DD1C 801E7A6C 25CE4924 */  addiu $t6, %lo(D_800B4924) # addiu $t6, $t6, 0x4924
/* 21DD20 801E7A70 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 21DD24 801E7A74 000FC080 */  sll   $t8, $t7, 2
/* 21DD28 801E7A78 00380821 */  addu  $at, $at, $t8
/* 21DD2C 801E7A7C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 21DD30 801E7A80 8C590000 */  lw    $t9, ($v0)
/* 21DD34 801E7A84 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 21DD38 801E7A88 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 21DD3C 801E7A8C 00194080 */  sll   $t0, $t9, 2
/* 21DD40 801E7A90 00882021 */  addu  $a0, $a0, $t0
/* 21DD44 801E7A94 0C02C7DA */  jal   func_800B1F68
/* 21DD48 801E7A98 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 21DD4C 801E7A9C 8E020000 */  lw    $v0, ($s0)
/* 21DD50 801E7AA0 3C01800E */ lui $at, %hi(D_800DF150)
/* 21DD54 801E7AA4 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 21DD58 801E7AA8 8C490000 */  lw    $t1, ($v0)
/* 21DD5C 801E7AAC 3C0B801E */  lui   $t3, %hi(D_801D9480) # $t3, 0x801e
/* 21DD60 801E7AB0 256B9480 */  addiu $t3, %lo(D_801D9480) # addiu $t3, $t3, -0x6b80
/* 21DD64 801E7AB4 00095080 */  sll   $t2, $t1, 2
/* 21DD68 801E7AB8 002A0821 */  addu  $at, $at, $t2
/* 21DD6C 801E7ABC AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 21DD70 801E7AC0 8C4C0000 */  lw    $t4, ($v0)
/* 21DD74 801E7AC4 000C6880 */  sll   $t5, $t4, 2
/* 21DD78 801E7AC8 01ED7821 */  addu  $t7, $t7, $t5
/* 21DD7C 801E7ACC 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 21DD80 801E7AD0 0C02CCFD */  jal   func_800B33F4
/* 21DD84 801E7AD4 ADEB008C */   sw    $t3, 0x8c($t7)
/* 21DD88 801E7AD8 0C067C7B */  jal   func_8019F1EC_ovl16
/* 21DD8C 801E7ADC 00000000 */   nop   
/* 21DD90 801E7AE0 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 21DD94 801E7AE4 C4266E5C */  lwc1  $f6, %lo(D_800D6E5C)($at)
/* 21DD98 801E7AE8 44802000 */  mtc1  $zero, $f4
/* 21DD9C 801E7AEC 00000000 */  nop   
/* 21DDA0 801E7AF0 46062032 */  c.eq.s $f4, $f6
/* 21DDA4 801E7AF4 00000000 */  nop   
/* 21DDA8 801E7AF8 45010008 */  bc1t  .L801E7B1C_ovl16
/* 21DDAC 801E7AFC 00000000 */   nop   
/* 21DDB0 801E7B00 8E0E0000 */  lw    $t6, ($s0)
/* 21DDB4 801E7B04 3C01800E */ lui $at, %hi(D_800E7B20)
/* 21DDB8 801E7B08 8DD80000 */  lw    $t8, ($t6)
/* 21DDBC 801E7B0C 0018C880 */  sll   $t9, $t8, 2
/* 21DDC0 801E7B10 00390821 */  addu  $at, $at, $t9
/* 21DDC4 801E7B14 0C02F047 */  jal   func_800BC11C
/* 21DDC8 801E7B18 C42C7B20 */ lwc1 $f12, %lo(D_800E7B20)($at)
.L801E7B1C_ovl16:
/* 21DDCC 801E7B1C 0C029D9E */  jal   play_sound
/* 21DDD0 801E7B20 240401B8 */   li    $a0, 440
/* 21DDD4 801E7B24 24040003 */  li    $a0, 3
/* 21DDD8 801E7B28 0C02ED1A */  jal   func_800BB468
/* 21DDDC 801E7B2C 00002825 */   move  $a1, $zero
/* 21DDE0 801E7B30 8E080000 */  lw    $t0, ($s0)
/* 21DDE4 801E7B34 3C05800E */ lui $a1, %hi(gEntitiesNextPosXArray)
/* 21DDE8 801E7B38 3C06800E */ lui $a2, %hi(gEntitiesNextPosYArray)
/* 21DDEC 801E7B3C 8D020000 */  lw    $v0, ($t0)
/* 21DDF0 801E7B40 3C07800E */ lui $a3, %hi(gEntitiesNextPosZArray)
/* 21DDF4 801E7B44 24040002 */  li    $a0, 2
/* 21DDF8 801E7B48 00021080 */  sll   $v0, $v0, 2
/* 21DDFC 801E7B4C 00A22821 */  addu  $a1, $a1, $v0
/* 21DE00 801E7B50 00C23021 */  addu  $a2, $a2, $v0
/* 21DE04 801E7B54 00E23821 */  addu  $a3, $a3, $v0
/* 21DE08 801E7B58 8CE72950 */ lw $a3, %lo(gEntitiesNextPosZArray)($a3)
/* 21DE0C 801E7B5C 8CC62790 */ lw $a2, %lo(gEntitiesNextPosYArray)($a2)
/* 21DE10 801E7B60 0C03F5D5 */  jal   func_800FD754
/* 21DE14 801E7B64 8CA525D0 */ lw $a1, %lo(gEntitiesNextPosXArray)($a1)
/* 21DE18 801E7B68 0C076D4A */  jal   func_801DB528_ovl16
/* 21DE1C 801E7B6C 8FA40020 */   lw    $a0, 0x20($sp)
/* 21DE20 801E7B70 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 21DE24 801E7B74 AC207154 */  sw    $zero, %lo(D_800D7154)($at)
/* 21DE28 801E7B78 8E0A0000 */  lw    $t2, ($s0)
/* 21DE2C 801E7B7C 3C0B800F */ lui $t3, %hi(D_800EBBE0)
/* 21DE30 801E7B80 3C01800F */ lui $at, %hi(D_800E98E0)
/* 21DE34 801E7B84 8D4C0000 */  lw    $t4, ($t2)
/* 21DE38 801E7B88 24090004 */  li    $t1, 4
/* 21DE3C 801E7B8C 240E0002 */  li    $t6, 2
/* 21DE40 801E7B90 000C6880 */  sll   $t5, $t4, 2
/* 21DE44 801E7B94 016D5821 */  addu  $t3, $t3, $t5
/* 21DE48 801E7B98 8D6BBBE0 */ lw $t3, %lo(D_800EBBE0)($t3)
/* 21DE4C 801E7B9C 000B7880 */  sll   $t7, $t3, 2
/* 21DE50 801E7BA0 002F0821 */  addu  $at, $at, $t7
/* 21DE54 801E7BA4 AC2998E0 */ sw $t1, %lo(D_800E98E0)($at)
/* 21DE58 801E7BA8 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 21DE5C 801E7BAC 0C066ED6 */  jal   func_8019BB58_ovl16
/* 21DE60 801E7BB0 AC2E7098 */   sw    $t6, %lo(D_800D7098)($at)
/* 21DE64 801E7BB4 0C02BE85 */  jal   func_800AFA14
/* 21DE68 801E7BB8 00000000 */   nop   
/* 21DE6C 801E7BBC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 21DE70 801E7BC0 8FB00018 */  lw    $s0, 0x18($sp)
/* 21DE74 801E7BC4 27BD0020 */  addiu $sp, $sp, 0x20
/* 21DE78 801E7BC8 03E00008 */  jr    $ra
/* 21DE7C 801E7BCC 00000000 */   nop   
.type func_801E7A38_ovl16, @function
.size func_801E7A38_ovl16, . - func_801E7A38_ovl16
