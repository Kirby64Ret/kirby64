glabel func_80115D38
/* 09E7A8 80115D38 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09E7AC 80115D3C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09E7B0 80115D40 AFA40028 */  sw    $a0, 0x28($sp)
/* 09E7B4 80115D44 8C8F0000 */  lw    $t7, ($a0)
/* 09E7B8 80115D48 2404001E */  li    $a0, 30
/* 09E7BC 80115D4C 2405001E */  li    $a1, 30
/* 09E7C0 80115D50 2406003C */  li    $a2, 60
/* 09E7C4 80115D54 0C02BB02 */  jal   request_track_general
/* 09E7C8 80115D58 AFAF0024 */   sw    $t7, 0x24($sp)
/* 09E7CC 80115D5C 00021880 */  sll   $v1, $v0, 2
/* 09E7D0 80115D60 3C18800E */ lui $t8, %hi(D_800DE350)
/* 09E7D4 80115D64 0303C021 */  addu  $t8, $t8, $v1
/* 09E7D8 80115D68 8F18E350 */ lw $t8, %lo(D_800DE350)($t8)
/* 09E7DC 80115D6C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 09E7E0 80115D70 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 09E7E4 80115D74 00832021 */  addu  $a0, $a0, $v1
/* 09E7E8 80115D78 AFA20020 */  sw    $v0, 0x20($sp)
/* 09E7EC 80115D7C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 09E7F0 80115D80 0C00236A */  jal   func_80008DA8
/* 09E7F4 80115D84 AC38A7C4 */   sw    $t8, %lo(D_8004A7C4)($at)
/* 09E7F8 80115D88 0C02BE60 */  jal   func_800AF980
/* 09E7FC 80115D8C 24040017 */   li    $a0, 23
/* 09E800 80115D90 3C040002 */  lui   $a0, (0x00020060 >> 16) # lui $a0, 2
/* 09E804 80115D94 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 09E808 80115D98 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 09E80C 80115D9C 34840060 */  ori   $a0, (0x00020060 & 0xFFFF) # ori $a0, $a0, 0x60
/* 09E810 80115DA0 0C02A619 */  jal   func_800A9864
/* 09E814 80115DA4 24060010 */   li    $a2, 16
/* 09E818 80115DA8 8FA50024 */  lw    $a1, 0x24($sp)
/* 09E81C 80115DAC 3C06800E */  lui   $a2, %hi(gEntitiesNextPosXArray) # $a2, 0x800e
/* 09E820 80115DB0 8FA30020 */  lw    $v1, 0x20($sp)
/* 09E824 80115DB4 24C625D0 */  addiu $a2, %lo(gEntitiesNextPosXArray) # addiu $a2, $a2, 0x25d0
/* 09E828 80115DB8 00052880 */  sll   $a1, $a1, 2
/* 09E82C 80115DBC 00C5C821 */  addu  $t9, $a2, $a1
/* 09E830 80115DC0 C7240000 */  lwc1  $f4, ($t9)
/* 09E834 80115DC4 3C018013 */  lui   $at, %hi(D_80128CF0) # $at, 0x8013
/* 09E838 80115DC8 C4208CF0 */  lwc1  $f0, %lo(D_80128CF0)($at)
/* 09E83C 80115DCC 3C07800E */  lui   $a3, %hi(gEntitiesNextPosYArray) # $a3, 0x800e
/* 09E840 80115DD0 00031880 */  sll   $v1, $v1, 2
/* 09E844 80115DD4 24E72790 */  addiu $a3, %lo(gEntitiesNextPosYArray) # addiu $a3, $a3, 0x2790
/* 09E848 80115DD8 00C34821 */  addu  $t1, $a2, $v1
/* 09E84C 80115DDC 00E55021 */  addu  $t2, $a3, $a1
/* 09E850 80115DE0 3C01435C */  li    $at, 0x435C0000 # 220.000000
/* 09E854 80115DE4 E5240000 */  swc1  $f4, ($t1)
/* 09E858 80115DE8 C5460000 */  lwc1  $f6, ($t2)
/* 09E85C 80115DEC 44814000 */  mtc1  $at, $f8
/* 09E860 80115DF0 3C08800E */  lui   $t0, %hi(gEntitiesNextPosZArray) # $t0, 0x800e
/* 09E864 80115DF4 25082950 */  addiu $t0, %lo(gEntitiesNextPosZArray) # addiu $t0, $t0, 0x2950
/* 09E868 80115DF8 46083280 */  add.s $f10, $f6, $f8
/* 09E86C 80115DFC 00E35821 */  addu  $t3, $a3, $v1
/* 09E870 80115E00 01056021 */  addu  $t4, $t0, $a1
/* 09E874 80115E04 01036821 */  addu  $t5, $t0, $v1
/* 09E878 80115E08 E56A0000 */  swc1  $f10, ($t3)
/* 09E87C 80115E0C C5900000 */  lwc1  $f16, ($t4)
/* 09E880 80115E10 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 09E884 80115E14 00230821 */  addu  $at, $at, $v1
/* 09E888 80115E18 E5B00000 */  swc1  $f16, ($t5)
/* 09E88C 80115E1C E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 09E890 80115E20 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 09E894 80115E24 00230821 */  addu  $at, $at, $v1
/* 09E898 80115E28 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 09E89C 80115E2C 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 09E8A0 80115E30 00230821 */  addu  $at, $at, $v1
/* 09E8A4 80115E34 3C040002 */  lui   $a0, (0x000202E5 >> 16) # lui $a0, 2
/* 09E8A8 80115E38 348402E5 */  ori   $a0, (0x000202E5 & 0xFFFF) # ori $a0, $a0, 0x2e5
/* 09E8AC 80115E3C AFA50018 */  sw    $a1, 0x18($sp)
/* 09E8B0 80115E40 0C02A806 */  jal   func_800AA018
/* 09E8B4 80115E44 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 09E8B8 80115E48 3C040002 */  lui   $a0, (0x000202E6 >> 16) # lui $a0, 2
/* 09E8BC 80115E4C 0C02A806 */  jal   func_800AA018
/* 09E8C0 80115E50 348402E6 */   ori   $a0, (0x000202E6 & 0xFFFF) # ori $a0, $a0, 0x2e6
/* 09E8C4 80115E54 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 09E8C8 80115E58 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 09E8CC 80115E5C 8C4F0000 */  lw    $t7, ($v0)
/* 09E8D0 80115E60 3C0E8011 */  lui   $t6, %hi(D_80115ACC) # $t6, 0x8011
/* 09E8D4 80115E64 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09E8D8 80115E68 8DF80000 */  lw    $t8, ($t7)
/* 09E8DC 80115E6C 8FA50018 */  lw    $a1, 0x18($sp)
/* 09E8E0 80115E70 25CE5ACC */  addiu $t6, %lo(D_80115ACC) # addiu $t6, $t6, 0x5acc
/* 09E8E4 80115E74 0018C880 */  sll   $t9, $t8, 2
/* 09E8E8 80115E78 00390821 */  addu  $at, $at, $t9
/* 09E8EC 80115E7C 8FA90020 */  lw    $t1, 0x20($sp)
/* 09E8F0 80115E80 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 09E8F4 80115E84 3C01800F */ lui $at, %hi(D_800E98E0)
/* 09E8F8 80115E88 8FA40028 */  lw    $a0, 0x28($sp)
/* 09E8FC 80115E8C 00250821 */  addu  $at, $at, $a1
/* 09E900 80115E90 AC2998E0 */ sw $t1, %lo(D_800E98E0)($at)
/* 09E904 80115E94 0C0454EE */  jal   func_801153B8
/* 09E908 80115E98 AC440000 */   sw    $a0, ($v0)
/* 09E90C 80115E9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09E910 80115EA0 27BD0028 */  addiu $sp, $sp, 0x28
/* 09E914 80115EA4 03E00008 */  jr    $ra
/* 09E918 80115EA8 00000000 */   nop   
.type func_80115D38, @function
.size func_80115D38, . - func_80115D38
