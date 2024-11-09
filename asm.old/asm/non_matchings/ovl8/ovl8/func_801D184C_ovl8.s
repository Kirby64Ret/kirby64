glabel func_801D184C_ovl8
/* 17532C 801D184C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 175330 801D1850 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 175334 801D1854 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 175338 801D1858 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17533C 801D185C AFA40038 */  sw    $a0, 0x38($sp)
/* 175340 801D1860 8C620000 */  lw    $v0, ($v1)
/* 175344 801D1864 3C08800E */  lui   $t0, %hi(D_800E0D50) # $t0, 0x800e
/* 175348 801D1868 25080D50 */  addiu $t0, %lo(D_800E0D50) # addiu $t0, $t0, 0x0d50
/* 17534C 801D186C 00021080 */  sll   $v0, $v0, 2
/* 175350 801D1870 01027021 */  addu  $t6, $t0, $v0
/* 175354 801D1874 8DC70000 */  lw    $a3, ($t6)
/* 175358 801D1878 3C0F800E */ lui $t7, %hi(D_800DE350)
/* 17535C 801D187C 3C19800F */ lui $t9, %hi(D_800EA520)
/* 175360 801D1880 00073880 */  sll   $a3, $a3, 2
/* 175364 801D1884 01E77821 */  addu  $t7, $t7, $a3
/* 175368 801D1888 8DEFE350 */ lw $t7, %lo(D_800DE350)($t7)
/* 17536C 801D188C 0322C821 */  addu  $t9, $t9, $v0
/* 175370 801D1890 8F39A520 */ lw $t9, %lo(D_800EA520)($t9)
/* 175374 801D1894 8DF8003C */  lw    $t8, 0x3c($t7)
/* 175378 801D1898 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 17537C 801D189C 13200042 */  beqz  $t9, .L801D19A8_ovl8
/* 175380 801D18A0 8F050010 */   lw    $a1, 0x10($t8)
/* 175384 801D18A4 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 175388 801D18A8 01276021 */  addu  $t4, $t1, $a3
/* 17538C 801D18AC C5840000 */  lwc1  $f4, ($t4)
/* 175390 801D18B0 01226821 */  addu  $t5, $t1, $v0
/* 175394 801D18B4 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosYArray) # $t2, 0x800e
/* 175398 801D18B8 E5A40000 */  swc1  $f4, ($t5)
/* 17539C 801D18BC 8C620000 */  lw    $v0, ($v1)
/* 1753A0 801D18C0 254A2790 */  addiu $t2, %lo(gEntitiesNextPosYArray) # addiu $t2, $t2, 0x2790
/* 1753A4 801D18C4 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosZArray) # $t3, 0x800e
/* 1753A8 801D18C8 00021080 */  sll   $v0, $v0, 2
/* 1753AC 801D18CC 01027021 */  addu  $t6, $t0, $v0
/* 1753B0 801D18D0 8DCF0000 */  lw    $t7, ($t6)
/* 1753B4 801D18D4 01426021 */  addu  $t4, $t2, $v0
/* 1753B8 801D18D8 256B2950 */  addiu $t3, %lo(gEntitiesNextPosZArray) # addiu $t3, $t3, 0x2950
/* 1753BC 801D18DC 000FC080 */  sll   $t8, $t7, 2
/* 1753C0 801D18E0 0158C821 */  addu  $t9, $t2, $t8
/* 1753C4 801D18E4 C7260000 */  lwc1  $f6, ($t9)
/* 1753C8 801D18E8 27A40028 */  addiu $a0, $sp, 0x28
/* 1753CC 801D18EC E5860000 */  swc1  $f6, ($t4)
/* 1753D0 801D18F0 8C620000 */  lw    $v0, ($v1)
/* 1753D4 801D18F4 00021080 */  sll   $v0, $v0, 2
/* 1753D8 801D18F8 01026821 */  addu  $t5, $t0, $v0
/* 1753DC 801D18FC 8DAE0000 */  lw    $t6, ($t5)
/* 1753E0 801D1900 0162C821 */  addu  $t9, $t3, $v0
/* 1753E4 801D1904 000E7880 */  sll   $t7, $t6, 2
/* 1753E8 801D1908 016FC021 */  addu  $t8, $t3, $t7
/* 1753EC 801D190C C7080000 */  lwc1  $f8, ($t8)
/* 1753F0 801D1910 E7280000 */  swc1  $f8, ($t9)
/* 1753F4 801D1914 8C6C0000 */  lw    $t4, ($v1)
/* 1753F8 801D1918 000C6880 */  sll   $t5, $t4, 2
/* 1753FC 801D191C 010D7021 */  addu  $t6, $t0, $t5
/* 175400 801D1920 0C02C9B6 */  jal   func_800B26D8
/* 175404 801D1924 8DC60000 */   lw    $a2, ($t6)
/* 175408 801D1928 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 17540C 801D192C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 175410 801D1930 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 175414 801D1934 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 175418 801D1938 8C6F0000 */  lw    $t7, ($v1)
/* 17541C 801D193C C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 175420 801D1940 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 175424 801D1944 000FC080 */  sll   $t8, $t7, 2
/* 175428 801D1948 00380821 */  addu  $at, $at, $t8
/* 17542C 801D194C E42A4010 */ swc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 175430 801D1950 8C790000 */  lw    $t9, ($v1)
/* 175434 801D1954 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 175438 801D1958 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 17543C 801D195C 00196080 */  sll   $t4, $t9, 2
/* 175440 801D1960 002C0821 */  addu  $at, $at, $t4
/* 175444 801D1964 E43041D0 */ swc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 175448 801D1968 8C6D0000 */  lw    $t5, ($v1)
/* 17544C 801D196C 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 175450 801D1970 000D7080 */  sll   $t6, $t5, 2
/* 175454 801D1974 002E0821 */  addu  $at, $at, $t6
/* 175458 801D1978 E4324390 */ swc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 17545C 801D197C 8C620000 */  lw    $v0, ($v1)
/* 175460 801D1980 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 175464 801D1984 00021080 */  sll   $v0, $v0, 2
/* 175468 801D1988 00220821 */  addu  $at, $at, $v0
/* 17546C 801D198C C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 175470 801D1990 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175474 801D1994 00220821 */  addu  $at, $at, $v0
/* 175478 801D1998 00C23021 */  addu  $a2, $a2, $v0
/* 17547C 801D199C 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 175480 801D19A0 0C02CC8D */  jal   func_800B3234
/* 175484 801D19A4 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
.L801D19A8_ovl8:
/* 175488 801D19A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 17548C 801D19AC 27BD0038 */  addiu $sp, $sp, 0x38
/* 175490 801D19B0 03E00008 */  jr    $ra
/* 175494 801D19B4 00000000 */   nop   
.type func_801D184C_ovl8, @function
.size func_801D184C_ovl8, . - func_801D184C_ovl8
