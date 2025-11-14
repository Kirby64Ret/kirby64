glabel func_80104A08
/* 08D478 80104A08 27BDFF98 */  addiu $sp, $sp, -0x68
/* 08D47C 80104A0C 27AE0018 */  addiu $t6, $sp, 0x18
/* 08D480 80104A10 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D484 80104A14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08D488 80104A18 AFA40068 */  sw    $a0, 0x68($sp)
/* 08D48C 80104A1C AFA5006C */  sw    $a1, 0x6c($sp)
/* 08D490 80104A20 AFA60070 */  sw    $a2, 0x70($sp)
/* 08D494 80104A24 AFA70074 */  sw    $a3, 0x74($sp)
/* 08D498 80104A28 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D49C 80104A2C 8C880000 */  lw    $t0, ($a0)
/* 08D4A0 80104A30 27AF0020 */  addiu $t7, $sp, 0x20
/* 08D4A4 80104A34 27A9002C */  addiu $t1, $sp, 0x2c
/* 08D4A8 80104A38 ADE80000 */  sw    $t0, ($t7)
/* 08D4AC 80104A3C 8C990004 */  lw    $t9, 4($a0)
/* 08D4B0 80104A40 3C0D8010 */  lui   $t5, %hi(func_80102364) # $t5, 0x8010
/* 08D4B4 80104A44 3C0E8010 */  lui   $t6, %hi(func_801021FC) # $t6, 0x8010
/* 08D4B8 80104A48 ADF90004 */  sw    $t9, 4($t7)
/* 08D4BC 80104A4C 8C880008 */  lw    $t0, 8($a0)
/* 08D4C0 80104A50 25AD2364 */  addiu $t5, %lo(func_80102364) # addiu $t5, $t5, 0x2364
/* 08D4C4 80104A54 25CE21FC */  addiu $t6, %lo(func_801021FC) # addiu $t6, $t6, 0x21fc
/* 08D4C8 80104A58 ADE80008 */  sw    $t0, 8($t7)
/* 08D4CC 80104A5C 8FAA006C */  lw    $t2, 0x6c($sp)
/* 08D4D0 80104A60 00002025 */  move  $a0, $zero
/* 08D4D4 80104A64 8D4C0000 */  lw    $t4, ($t2)
/* 08D4D8 80104A68 AD2C0000 */  sw    $t4, ($t1)
/* 08D4DC 80104A6C 8D4B0004 */  lw    $t3, 4($t2)
/* 08D4E0 80104A70 AD2B0004 */  sw    $t3, 4($t1)
/* 08D4E4 80104A74 8D4C0008 */  lw    $t4, 8($t2)
/* 08D4E8 80104A78 AD2C0008 */  sw    $t4, 8($t1)
/* 08D4EC 80104A7C AFA00044 */  sw    $zero, 0x44($sp)
/* 08D4F0 80104A80 AFAD005C */  sw    $t5, 0x5c($sp)
/* 08D4F4 80104A84 AFAE0058 */  sw    $t6, 0x58($sp)
/* 08D4F8 80104A88 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D4FC 80104A8C AFA00050 */  sw    $zero, 0x50($sp)
/* 08D500 80104A90 AFA00054 */  sw    $zero, 0x54($sp)
/* 08D504 80104A94 8FA70078 */  lw    $a3, 0x78($sp)
/* 08D508 80104A98 8FA60074 */  lw    $a2, 0x74($sp)
/* 08D50C 80104A9C 0C040F60 */  jal   func_80103D80
/* 08D510 80104AA0 8FA50070 */   lw    $a1, 0x70($sp)
/* 08D514 80104AA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08D518 80104AA8 27BD0068 */  addiu $sp, $sp, 0x68
/* 08D51C 80104AAC 03E00008 */  jr    $ra
/* 08D520 80104AB0 00000000 */   nop   
.type func_80104A08, @function
.size func_80104A08, . - func_80104A08
