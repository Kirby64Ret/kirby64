glabel func_80104AB4
/* 08D524 80104AB4 27BDFF98 */  addiu $sp, $sp, -0x68
/* 08D528 80104AB8 27AE0018 */  addiu $t6, $sp, 0x18
/* 08D52C 80104ABC 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D530 80104AC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08D534 80104AC4 AFA40068 */  sw    $a0, 0x68($sp)
/* 08D538 80104AC8 AFA5006C */  sw    $a1, 0x6c($sp)
/* 08D53C 80104ACC AFA60070 */  sw    $a2, 0x70($sp)
/* 08D540 80104AD0 AFA70074 */  sw    $a3, 0x74($sp)
/* 08D544 80104AD4 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D548 80104AD8 8C880000 */  lw    $t0, ($a0)
/* 08D54C 80104ADC 27AF0020 */  addiu $t7, $sp, 0x20
/* 08D550 80104AE0 27A9002C */  addiu $t1, $sp, 0x2c
/* 08D554 80104AE4 ADE80000 */  sw    $t0, ($t7)
/* 08D558 80104AE8 8C990004 */  lw    $t9, 4($a0)
/* 08D55C 80104AEC 3C0D8010 */  lui   $t5, %hi(func_801024E8) # $t5, 0x8010
/* 08D560 80104AF0 3C0E8010 */  lui   $t6, %hi(func_8010221C) # $t6, 0x8010
/* 08D564 80104AF4 ADF90004 */  sw    $t9, 4($t7)
/* 08D568 80104AF8 8C880008 */  lw    $t0, 8($a0)
/* 08D56C 80104AFC 25AD24E8 */  addiu $t5, %lo(func_801024E8) # addiu $t5, $t5, 0x24e8
/* 08D570 80104B00 25CE221C */  addiu $t6, %lo(func_8010221C) # addiu $t6, $t6, 0x221c
/* 08D574 80104B04 ADE80008 */  sw    $t0, 8($t7)
/* 08D578 80104B08 8FAA006C */  lw    $t2, 0x6c($sp)
/* 08D57C 80104B0C 00002025 */  move  $a0, $zero
/* 08D580 80104B10 00003025 */  move  $a2, $zero
/* 08D584 80104B14 8D4C0000 */  lw    $t4, ($t2)
/* 08D588 80104B18 00002825 */  move  $a1, $zero
/* 08D58C 80104B1C AD2C0000 */  sw    $t4, ($t1)
/* 08D590 80104B20 8D4B0004 */  lw    $t3, 4($t2)
/* 08D594 80104B24 AD2B0004 */  sw    $t3, 4($t1)
/* 08D598 80104B28 8D4C0008 */  lw    $t4, 8($t2)
/* 08D59C 80104B2C AD2C0008 */  sw    $t4, 8($t1)
/* 08D5A0 80104B30 97AF0072 */  lhu   $t7, 0x72($sp)
/* 08D5A4 80104B34 97B80076 */  lhu   $t8, 0x76($sp)
/* 08D5A8 80104B38 AFA00044 */  sw    $zero, 0x44($sp)
/* 08D5AC 80104B3C AFA00054 */  sw    $zero, 0x54($sp)
/* 08D5B0 80104B40 AFAD005C */  sw    $t5, 0x5c($sp)
/* 08D5B4 80104B44 AFAE0058 */  sw    $t6, 0x58($sp)
/* 08D5B8 80104B48 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D5BC 80104B4C AFA00050 */  sw    $zero, 0x50($sp)
/* 08D5C0 80104B50 8FA70078 */  lw    $a3, 0x78($sp)
/* 08D5C4 80104B54 A7AF0060 */  sh    $t7, 0x60($sp)
/* 08D5C8 80104B58 0C040F60 */  jal   func_80103D80
/* 08D5CC 80104B5C A7B80062 */   sh    $t8, 0x62($sp)
/* 08D5D0 80104B60 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08D5D4 80104B64 27BD0068 */  addiu $sp, $sp, 0x68
/* 08D5D8 80104B68 03E00008 */  jr    $ra
/* 08D5DC 80104B6C 00000000 */   nop   
.type func_80104AB4, @function
.size func_80104AB4, . - func_80104AB4
