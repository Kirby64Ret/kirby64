glabel func_80165E98_ovl5
/* 10D308 80165E98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10D30C 80165E9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 10D310 80165EA0 AFA40028 */  sw         $a0, 0x28($sp)
/* 10D314 80165EA4 0C059631 */  jal        func_801658C4_ovl5
/* 10D318 80165EA8 AFA5002C */   sw        $a1, 0x2C($sp)
/* 10D31C 80165EAC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 10D320 80165EB0 3C068019 */  lui        $a2, %hi(func_8018E164_ovl5 + 0x13C)
/* 10D324 80165EB4 27A4001C */  addiu      $a0, $sp, 0x1C
/* 10D328 80165EB8 000E7880 */  sll        $t7, $t6, 2
/* 10D32C 80165EBC 00CF3021 */  addu       $a2, $a2, $t7
/* 10D330 80165EC0 8CC6E2A0 */  lw         $a2, %lo(func_8018E164_ovl5 + 0x13C)($a2)
/* 10D334 80165EC4 0C02C8D0 */  jal        func_800B2340
/* 10D338 80165EC8 00402825 */   or        $a1, $v0, $zero
/* 10D33C 80165ECC 3C014316 */  lui        $at, (0x43160000 >> 16)
/* 10D340 80165ED0 44811000 */  mtc1       $at, $f2
/* 10D344 80165ED4 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 10D348 80165ED8 C7AC002C */  lwc1       $f12, 0x2C($sp)
/* 10D34C 80165EDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10D350 80165EE0 46020101 */  sub.s      $f4, $f0, $f2
/* 10D354 80165EE4 00001025 */  or         $v0, $zero, $zero
/* 10D358 80165EE8 460C203E */  c.le.s     $f4, $f12
/* 10D35C 80165EEC 00000000 */  nop
/* 10D360 80165EF0 45000008 */  bc1f       .L80165F14_ovl5
/* 10D364 80165EF4 00000000 */   nop
/* 10D368 80165EF8 46020180 */  add.s      $f6, $f0, $f2
/* 10D36C 80165EFC 4606603E */  c.le.s     $f12, $f6
/* 10D370 80165F00 00000000 */  nop
/* 10D374 80165F04 45000003 */  bc1f       .L80165F14_ovl5
/* 10D378 80165F08 00000000 */   nop
/* 10D37C 80165F0C 10000001 */  b          .L80165F14_ovl5
/* 10D380 80165F10 24020001 */   addiu     $v0, $zero, 0x1
.L80165F14_ovl5:
/* 10D384 80165F14 03E00008 */  jr         $ra
/* 10D388 80165F18 27BD0028 */   addiu     $sp, $sp, 0x28
