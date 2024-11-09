glabel func_800F8E6C
/* 0818DC 800F8E6C 27BDFF80 */  addiu $sp, $sp, -0x80
/* 0818E0 800F8E70 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0818E4 800F8E74 AFB00018 */  sw    $s0, 0x18($sp)
/* 0818E8 800F8E78 8C860000 */  lw    $a2, ($a0)
/* 0818EC 800F8E7C 3C0E800E */  lui   $t6, %hi(D_800E5F90) # $t6, 0x800e
/* 0818F0 800F8E80 25CE5F90 */  addiu $t6, %lo(D_800E5F90) # addiu $t6, $t6, 0x5f90
/* 0818F4 800F8E84 00068080 */  sll   $s0, $a2, 2
/* 0818F8 800F8E88 020E4021 */  addu  $t0, $s0, $t6
/* 0818FC 800F8E8C 8D090000 */  lw    $t1, ($t0)
/* 081900 800F8E90 2401FFFF */  li    $at, -1
/* 081904 800F8E94 3C038013 */  lui   $v1, %hi(D_80129114) # $v1, 0x8013
/* 081908 800F8E98 1121005C */  beq   $t1, $at, .L800F900C_ovl2
/* 08190C 800F8E9C 3C01800E */   lui   $at, 0x800e
/* 081910 800F8EA0 8C639114 */  lw    $v1, %lo(D_80129114)($v1)
/* 081914 800F8EA4 00300821 */  addu  $at, $at, $s0
/* 081918 800F8EA8 C42464D0 */  lwc1  $f4, 0x64d0($at)
/* 08191C 800F8EAC 3C018013 */  lui   $at, %hi(D_801287B0) # $at, 0x8013
/* 081920 800F8EB0 C42687B0 */  lwc1  $f6, %lo(D_801287B0)($at)
/* 081924 800F8EB4 8C780004 */  lw    $t8, 4($v1)
/* 081928 800F8EB8 00093900 */  sll   $a3, $t1, 4
/* 08192C 800F8EBC 46062202 */  mul.s $f8, $f4, $f6
/* 081930 800F8EC0 0307C821 */  addu  $t9, $t8, $a3
/* 081934 800F8EC4 8F250004 */  lw    $a1, 4($t9)
/* 081938 800F8EC8 3C0F800E */  lui   $t7, %hi(D_800E6BD0) # $t7, 0x800e
/* 08193C 800F8ECC 25EF6BD0 */  addiu $t7, %lo(D_800E6BD0) # addiu $t7, $t7, 0x6bd0
/* 081940 800F8ED0 C4AA000C */  lwc1  $f10, 0xc($a1)
/* 081944 800F8ED4 020F1021 */  addu  $v0, $s0, $t7
/* 081948 800F8ED8 C4400000 */  lwc1  $f0, ($v0)
/* 08194C 800F8EDC 460A4403 */  div.s $f16, $f8, $f10
/* 081950 800F8EE0 3C01800E */  lui   $at, 0x800e
/* 081954 800F8EE4 46000086 */  mov.s $f2, $f0
/* 081958 800F8EE8 00300821 */  addu  $at, $at, $s0
/* 08195C 800F8EEC 00C02025 */  move  $a0, $a2
/* 081960 800F8EF0 46100480 */  add.s $f18, $f0, $f16
/* 081964 800F8EF4 E4520000 */  swc1  $f18, ($v0)
/* 081968 800F8EF8 C4400000 */  lwc1  $f0, ($v0)
/* 08196C 800F8EFC 46001032 */  c.eq.s $f2, $f0
/* 081970 800F8F00 00000000 */  nop   
/* 081974 800F8F04 45010010 */  bc1t  .L800F8F48_ovl2
/* 081978 800F8F08 00000000 */   nop   
/* 08197C 800F8F0C E4226D90 */  swc1  $f2, 0x6d90($at)
/* 081980 800F8F10 AFA2002C */  sw    $v0, 0x2c($sp)
/* 081984 800F8F14 AFA60074 */  sw    $a2, 0x74($sp)
/* 081988 800F8F18 0C03E2C7 */  jal   func_800F8B1C
/* 08198C 800F8F1C AFA80034 */   sw    $t0, 0x34($sp)
/* 081990 800F8F20 0C03E289 */  jal   func_800F8A24
/* 081994 800F8F24 8FA40074 */   lw    $a0, 0x74($sp)
/* 081998 800F8F28 8FA80034 */  lw    $t0, 0x34($sp)
/* 08199C 800F8F2C 8FA2002C */  lw    $v0, 0x2c($sp)
/* 0819A0 800F8F30 3C038013 */  lui   $v1, %hi(D_80129114) # $v1, 0x8013
/* 0819A4 800F8F34 8D070000 */  lw    $a3, ($t0)
/* 0819A8 800F8F38 8C639114 */  lw    $v1, %lo(D_80129114)($v1)
/* 0819AC 800F8F3C C4400000 */  lwc1  $f0, ($v0)
/* 0819B0 800F8F40 10000004 */  b     .L800F8F54_ovl2
/* 0819B4 800F8F44 00073900 */   sll   $a3, $a3, 4
.L800F8F48_ovl2:
/* 0819B8 800F8F48 3C01800E */  lui   $at, 0x800e
/* 0819BC 800F8F4C 00300821 */  addu  $at, $at, $s0
/* 0819C0 800F8F50 E4206D90 */  swc1  $f0, 0x6d90($at)
.L800F8F54_ovl2:
/* 0819C4 800F8F54 8C6A0004 */  lw    $t2, 4($v1)
/* 0819C8 800F8F58 44060000 */  mfc1  $a2, $f0
/* 0819CC 800F8F5C 27A40064 */  addiu $a0, $sp, 0x64
/* 0819D0 800F8F60 01475821 */  addu  $t3, $t2, $a3
/* 0819D4 800F8F64 8D650004 */  lw    $a1, 4($t3)
/* 0819D8 800F8F68 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0819DC 800F8F6C 0C0078C0 */  jal   func_8001E300_ovl2
/* 0819E0 800F8F70 AFA50078 */   sw    $a1, 0x78($sp)
/* 0819E4 800F8F74 C7A40064 */  lwc1  $f4, 0x64($sp)
/* 0819E8 800F8F78 3C01800E */  lui   $at, 0x800e
/* 0819EC 800F8F7C 00300821 */  addu  $at, $at, $s0
/* 0819F0 800F8F80 C7A6006C */  lwc1  $f6, 0x6c($sp)
/* 0819F4 800F8F84 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 0819F8 800F8F88 3C01800E */  lui   $at, 0x800e
/* 0819FC 800F8F8C 00300821 */  addu  $at, $at, $s0
/* 081A00 800F8F90 E4262950 */  swc1  $f6, 0x2950($at)
/* 081A04 800F8F94 3C01800E */  lui   $at, 0x800e
/* 081A08 800F8F98 44800000 */  mtc1  $zero, $f0
/* 081A0C 800F8F9C 00300821 */  addu  $at, $at, $s0
/* 081A10 800F8FA0 8FA2002C */  lw    $v0, 0x2c($sp)
/* 081A14 800F8FA4 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 081A18 800F8FA8 8FA50078 */  lw    $a1, 0x78($sp)
/* 081A1C 800F8FAC 27A40058 */  addiu $a0, $sp, 0x58
/* 081A20 800F8FB0 E7A0004C */  swc1  $f0, 0x4c($sp)
/* 081A24 800F8FB4 E7A00050 */  swc1  $f0, 0x50($sp)
/* 081A28 800F8FB8 8C460000 */  lw    $a2, ($v0)
/* 081A2C 800F8FBC 0C0078D1 */  jal   func_8001E344_ovl2
/* 081A30 800F8FC0 E7A80054 */   swc1  $f8, 0x54($sp)
/* 081A34 800F8FC4 44805000 */  mtc1  $zero, $f10
/* 081A38 800F8FC8 27A4004C */  addiu $a0, $sp, 0x4c
/* 081A3C 800F8FCC 27A50058 */  addiu $a1, $sp, 0x58
/* 081A40 800F8FD0 0C03E270 */  jal   vec3_abs_angle_diff
/* 081A44 800F8FD4 E7AA005C */   swc1  $f10, 0x5c($sp)
/* 081A48 800F8FD8 44808000 */  mtc1  $zero, $f16
/* 081A4C 800F8FDC 3C0C800E */  lui   $t4, %hi(D_800E17D0) # $t4, 0x800e
/* 081A50 800F8FE0 258C17D0 */  addiu $t4, %lo(D_800E17D0) # addiu $t4, $t4, 0x17d0
/* 081A54 800F8FE4 4610003C */  c.lt.s $f0, $f16
/* 081A58 800F8FE8 020C1021 */  addu  $v0, $s0, $t4
/* 081A5C 800F8FEC E4400000 */  swc1  $f0, ($v0)
/* 081A60 800F8FF0 3C018013 */  lui   $at, %hi(D_801287B4) # $at, 0x8013
/* 081A64 800F8FF4 45020006 */  bc1fl .L800F9010_ovl2
/* 081A68 800F8FF8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 081A6C 800F8FFC C4520000 */  lwc1  $f18, ($v0)
/* 081A70 800F9000 C42487B4 */  lwc1  $f4, %lo(D_801287B4)($at)
/* 081A74 800F9004 46049180 */  add.s $f6, $f18, $f4
/* 081A78 800F9008 E4460000 */  swc1  $f6, ($v0)
.L800F900C_ovl2:
/* 081A7C 800F900C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800F9010_ovl2:
/* 081A80 800F9010 8FB00018 */  lw    $s0, 0x18($sp)
/* 081A84 800F9014 27BD0080 */  addiu $sp, $sp, 0x80
/* 081A88 800F9018 03E00008 */  jr    $ra
/* 081A8C 800F901C 00000000 */   nop   
.type func_800F8E6C, @function
.size func_800F8E6C, . - func_800F8E6C
