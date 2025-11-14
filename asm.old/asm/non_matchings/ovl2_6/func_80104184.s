glabel func_80104184
/* 08CBF4 80104184 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CBF8 80104188 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CBFC 8010418C 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CC00 80104190 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CC04 80104194 AFA40070 */  sw    $a0, 0x70($sp)
/* 08CC08 80104198 AFA50074 */  sw    $a1, 0x74($sp)
/* 08CC0C 8010419C AFA60078 */  sw    $a2, 0x78($sp)
/* 08CC10 801041A0 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CC14 801041A4 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CC18 801041A8 8C880000 */  lw    $t0, ($a0)
/* 08CC1C 801041AC 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CC20 801041B0 27A90034 */  addiu $t1, $sp, 0x34
/* 08CC24 801041B4 ADE80000 */  sw    $t0, ($t7)
/* 08CC28 801041B8 8C990004 */  lw    $t9, 4($a0)
/* 08CC2C 801041BC 3C0D8010 */  lui   $t5, %hi(func_80102364) # $t5, 0x8010
/* 08CC30 801041C0 3C0E8010 */  lui   $t6, %hi(func_80101E14) # $t6, 0x8010
/* 08CC34 801041C4 ADF90004 */  sw    $t9, 4($t7)
/* 08CC38 801041C8 8C880008 */  lw    $t0, 8($a0)
/* 08CC3C 801041CC 25AD2364 */  addiu $t5, %lo(func_80102364) # addiu $t5, $t5, 0x2364
/* 08CC40 801041D0 25CE1E14 */  addiu $t6, %lo(func_80101E14) # addiu $t6, $t6, 0x1e14
/* 08CC44 801041D4 ADE80008 */  sw    $t0, 8($t7)
/* 08CC48 801041D8 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CC4C 801041DC 8D4C0000 */  lw    $t4, ($t2)
/* 08CC50 801041E0 AD2C0000 */  sw    $t4, ($t1)
/* 08CC54 801041E4 8D4B0004 */  lw    $t3, 4($t2)
/* 08CC58 801041E8 AD2B0004 */  sw    $t3, 4($t1)
/* 08CC5C 801041EC 8D4C0008 */  lw    $t4, 8($t2)
/* 08CC60 801041F0 AD2C0008 */  sw    $t4, 8($t1)
/* 08CC64 801041F4 8FAF0078 */  lw    $t7, 0x78($sp)
/* 08CC68 801041F8 8FB8008C */  lw    $t8, 0x8c($sp)
/* 08CC6C 801041FC AFA0004C */  sw    $zero, 0x4c($sp)
/* 08CC70 80104200 AFAD0064 */  sw    $t5, 0x64($sp)
/* 08CC74 80104204 AFAE0060 */  sw    $t6, 0x60($sp)
/* 08CC78 80104208 AFA00054 */  sw    $zero, 0x54($sp)
/* 08CC7C 8010420C AFA00058 */  sw    $zero, 0x58($sp)
/* 08CC80 80104210 8FA70088 */  lw    $a3, 0x88($sp)
/* 08CC84 80104214 8FA60084 */  lw    $a2, 0x84($sp)
/* 08CC88 80104218 8FA50080 */  lw    $a1, 0x80($sp)
/* 08CC8C 8010421C 8FA4007C */  lw    $a0, 0x7c($sp)
/* 08CC90 80104220 AFAF005C */  sw    $t7, 0x5c($sp)
/* 08CC94 80104224 0C040ED6 */  jal   func_80103B58
/* 08CC98 80104228 AFB80010 */   sw    $t8, 0x10($sp)
/* 08CC9C 8010422C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08CCA0 80104230 27BD0070 */  addiu $sp, $sp, 0x70
/* 08CCA4 80104234 03E00008 */  jr    $ra
/* 08CCA8 80104238 00000000 */   nop   
.type func_80104184, @function
.size func_80104184, . - func_80104184
