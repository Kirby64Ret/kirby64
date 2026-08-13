nonmatching func_8010E324, 0x288

glabel func_8010E324
    /* 96D94 8010E324 27BDFF00 */  addiu      $sp, $sp, -0x100
    /* 96D98 8010E328 3C028005 */  lui        $v0, %hi(gDynamicBuffer1)
    /* 96D9C 8010E32C 2442A3F8 */  addiu      $v0, $v0, %lo(gDynamicBuffer1)
    /* 96DA0 8010E330 8C48000C */  lw         $t0, 0xC($v0)
    /* 96DA4 8010E334 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 96DA8 8010E338 AFB20038 */  sw         $s2, 0x38($sp)
    /* 96DAC 8010E33C 250E0040 */  addiu      $t6, $t0, 0x40
    /* 96DB0 8010E340 AFB10034 */  sw         $s1, 0x34($sp)
    /* 96DB4 8010E344 AFB00030 */  sw         $s0, 0x30($sp)
    /* 96DB8 8010E348 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* 96DBC 8010E34C AFA40100 */  sw         $a0, 0x100($sp)
    /* 96DC0 8010E350 AC4E000C */  sw         $t6, 0xC($v0)
    /* 96DC4 8010E354 AFA8007C */  sw         $t0, 0x7C($sp)
    /* 96DC8 8010E358 C4AE0020 */  lwc1       $f14, 0x20($a1)
    /* 96DCC 8010E35C C4AC001C */  lwc1       $f12, 0x1C($a1)
    /* 96DD0 8010E360 C4A20018 */  lwc1       $f2, 0x18($a1)
    /* 96DD4 8010E364 C4A00014 */  lwc1       $f0, 0x14($a1)
    /* 96DD8 8010E368 460E6201 */  sub.s      $f8, $f12, $f14
    /* 96DDC 8010E36C 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* 96DE0 8010E370 44815000 */  mtc1       $at, $f10
    /* 96DE4 8010E374 46020101 */  sub.s      $f4, $f0, $f2
    /* 96DE8 8010E378 44813000 */  mtc1       $at, $f6
    /* 96DEC 8010E37C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 96DF0 8010E380 460A4483 */  div.s      $f18, $f8, $f10
    /* 96DF4 8010E384 4480A000 */  mtc1       $zero, $f20
    /* 96DF8 8010E388 00A08825 */  or         $s1, $a1, $zero
    /* 96DFC 8010E38C 27A400C0 */  addiu      $a0, $sp, 0xC0
    /* 96E00 8010E390 460E6280 */  add.s      $f10, $f12, $f14
    /* 96E04 8010E394 4405A000 */  mfc1       $a1, $f20
    /* 96E08 8010E398 46062403 */  div.s      $f16, $f4, $f6
    /* 96E0C 8010E39C 44813000 */  mtc1       $at, $f6
    /* 96E10 8010E3A0 E7B20018 */  swc1       $f18, 0x18($sp)
    /* 96E14 8010E3A4 E7B20070 */  swc1       $f18, 0x70($sp)
    /* 96E18 8010E3A8 46020100 */  add.s      $f4, $f0, $f2
    /* 96E1C 8010E3AC 46062202 */  mul.s      $f8, $f4, $f6
    /* 96E20 8010E3B0 44812000 */  mtc1       $at, $f4
    /* 96E24 8010E3B4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 96E28 8010E3B8 44064000 */  mfc1       $a2, $f8
    /* 96E2C 8010E3BC 44814000 */  mtc1       $at, $f8
    /* 96E30 8010E3C0 00000000 */  nop
    /* 96E34 8010E3C4 E7A80010 */  swc1       $f8, 0x10($sp)
    /* 96E38 8010E3C8 46045182 */  mul.s      $f6, $f10, $f4
    /* 96E3C 8010E3CC E7B00014 */  swc1       $f16, 0x14($sp)
    /* 96E40 8010E3D0 44073000 */  mfc1       $a3, $f6
    /* 96E44 8010E3D4 0C0438AE */  jal        mtx_create_translate_scale
    /* 96E48 8010E3D8 00000000 */   nop
    /* 96E4C 8010E3DC 8E250004 */  lw         $a1, 0x4($s1)
    /* 96E50 8010E3E0 8E260008 */  lw         $a2, 0x8($s1)
    /* 96E54 8010E3E4 8E27000C */  lw         $a3, 0xC($s1)
    /* 96E58 8010E3E8 E7B40010 */  swc1       $f20, 0x10($sp)
    /* 96E5C 8010E3EC C62A0024 */  lwc1       $f10, 0x24($s1)
    /* 96E60 8010E3F0 27B20080 */  addiu      $s2, $sp, 0x80
    /* 96E64 8010E3F4 02402025 */  or         $a0, $s2, $zero
    /* 96E68 8010E3F8 E7B40018 */  swc1       $f20, 0x18($sp)
    /* 96E6C 8010E3FC 0C006FE2 */  jal        func_8001BF88
    /* 96E70 8010E400 E7AA0014 */   swc1      $f10, 0x14($sp)
    /* 96E74 8010E404 27A400C0 */  addiu      $a0, $sp, 0xC0
    /* 96E78 8010E408 02402825 */  or         $a1, $s2, $zero
    /* 96E7C 8010E40C 0C00D034 */  jal        guMtxCatF
    /* 96E80 8010E410 02403025 */   or        $a2, $s2, $zero
    /* 96E84 8010E414 02402025 */  or         $a0, $s2, $zero
    /* 96E88 8010E418 0C00668C */  jal        HS64_MtxF2L
    /* 96E8C 8010E41C 8FA5007C */   lw        $a1, 0x7C($sp)
    /* 96E90 8010E420 3C108005 */  lui        $s0, %hi(gDisplayListHeads)
    /* 96E94 8010E424 2610A3D0 */  addiu      $s0, $s0, %lo(gDisplayListHeads)
    /* 96E98 8010E428 8E020000 */  lw         $v0, 0x0($s0)
    /* 96E9C 8010E42C 3C1FDA38 */  lui        $ra, (0xDA380000 >> 16)
    /* 96EA0 8010E430 3C0EDE00 */  lui        $t6, (0xDE000000 >> 16)
    /* 96EA4 8010E434 244F0008 */  addiu      $t7, $v0, 0x8
    /* 96EA8 8010E438 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 96EAC 8010E43C AC5F0000 */  sw         $ra, 0x0($v0)
    /* 96EB0 8010E440 8FB8007C */  lw         $t8, 0x7C($sp)
    /* 96EB4 8010E444 3C0F8012 */  lui        $t7, %hi(D_801248B0)
    /* 96EB8 8010E448 25EF48B0 */  addiu      $t7, $t7, %lo(D_801248B0)
    /* 96EBC 8010E44C AC580004 */  sw         $t8, 0x4($v0)
    /* 96EC0 8010E450 8E020000 */  lw         $v0, 0x0($s0)
    /* 96EC4 8010E454 3C088005 */  lui        $t0, %hi(D_8004A404)
    /* 96EC8 8010E458 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 96ECC 8010E45C 24590008 */  addiu      $t9, $v0, 0x8
    /* 96ED0 8010E460 AE190000 */  sw         $t9, 0x0($s0)
    /* 96ED4 8010E464 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 96ED8 8010E468 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 96EDC 8010E46C 8E030008 */  lw         $v1, 0x8($s0)
    /* 96EE0 8010E470 3C0FDE00 */  lui        $t7, (0xDE000000 >> 16)
    /* 96EE4 8010E474 44810000 */  mtc1       $at, $f0
    /* 96EE8 8010E478 24780008 */  addiu      $t8, $v1, 0x8
    /* 96EEC 8010E47C AE180008 */  sw         $t8, 0x8($s0)
    /* 96EF0 8010E480 AC7F0000 */  sw         $ra, 0x0($v1)
    /* 96EF4 8010E484 8FB9007C */  lw         $t9, 0x7C($sp)
    /* 96EF8 8010E488 3C188012 */  lui        $t8, %hi(D_80124908)
    /* 96EFC 8010E48C 27184908 */  addiu      $t8, $t8, %lo(D_80124908)
    /* 96F00 8010E490 AC790004 */  sw         $t9, 0x4($v1)
    /* 96F04 8010E494 8E030008 */  lw         $v1, 0x8($s0)
    /* 96F08 8010E498 3C018005 */  lui        $at, %hi(D_8004A404)
    /* 96F0C 8010E49C 262D0010 */  addiu      $t5, $s1, 0x10
    /* 96F10 8010E4A0 246E0008 */  addiu      $t6, $v1, 0x8
    /* 96F14 8010E4A4 AE0E0008 */  sw         $t6, 0x8($s0)
    /* 96F18 8010E4A8 AC780004 */  sw         $t8, 0x4($v1)
    /* 96F1C 8010E4AC AC6F0000 */  sw         $t7, 0x0($v1)
    /* 96F20 8010E4B0 8D08A404 */  lw         $t0, %lo(D_8004A404)($t0)
    /* 96F24 8010E4B4 4405A000 */  mfc1       $a1, $f20
    /* 96F28 8010E4B8 4406A000 */  mfc1       $a2, $f20
    /* 96F2C 8010E4BC 25190040 */  addiu      $t9, $t0, 0x40
    /* 96F30 8010E4C0 AC39A404 */  sw         $t9, %lo(D_8004A404)($at)
    /* 96F34 8010E4C4 AFA80078 */  sw         $t0, 0x78($sp)
    /* 96F38 8010E4C8 C5A60010 */  lwc1       $f6, 0x10($t5)
    /* 96F3C 8010E4CC C5A4000C */  lwc1       $f4, 0xC($t5)
    /* 96F40 8010E4D0 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 96F44 8010E4D4 44815000 */  mtc1       $at, $f10
    /* 96F48 8010E4D8 46062200 */  add.s      $f8, $f4, $f6
    /* 96F4C 8010E4DC C7A60070 */  lwc1       $f6, 0x70($sp)
    /* 96F50 8010E4E0 AFAD0050 */  sw         $t5, 0x50($sp)
    /* 96F54 8010E4E4 27A400C0 */  addiu      $a0, $sp, 0xC0
    /* 96F58 8010E4E8 460A4102 */  mul.s      $f4, $f8, $f10
    /* 96F5C 8010E4EC E7A00014 */  swc1       $f0, 0x14($sp)
    /* 96F60 8010E4F0 E7A00010 */  swc1       $f0, 0x10($sp)
    /* 96F64 8010E4F4 E7A60018 */  swc1       $f6, 0x18($sp)
    /* 96F68 8010E4F8 44072000 */  mfc1       $a3, $f4
    /* 96F6C 8010E4FC 0C0438AE */  jal        mtx_create_translate_scale
    /* 96F70 8010E500 00000000 */   nop
    /* 96F74 8010E504 8FAD0050 */  lw         $t5, 0x50($sp)
    /* 96F78 8010E508 C6280008 */  lwc1       $f8, 0x8($s1)
    /* 96F7C 8010E50C 8E250004 */  lw         $a1, 0x4($s1)
    /* 96F80 8010E510 C5AA0000 */  lwc1       $f10, 0x0($t5)
    /* 96F84 8010E514 8E27000C */  lw         $a3, 0xC($s1)
    /* 96F88 8010E518 E7B40010 */  swc1       $f20, 0x10($sp)
    /* 96F8C 8010E51C 460A4100 */  add.s      $f4, $f8, $f10
    /* 96F90 8010E520 C6260024 */  lwc1       $f6, 0x24($s1)
    /* 96F94 8010E524 E7B40018 */  swc1       $f20, 0x18($sp)
    /* 96F98 8010E528 02402025 */  or         $a0, $s2, $zero
    /* 96F9C 8010E52C 44062000 */  mfc1       $a2, $f4
    /* 96FA0 8010E530 0C006FE2 */  jal        func_8001BF88
    /* 96FA4 8010E534 E7A60014 */   swc1      $f6, 0x14($sp)
    /* 96FA8 8010E538 27A400C0 */  addiu      $a0, $sp, 0xC0
    /* 96FAC 8010E53C 02402825 */  or         $a1, $s2, $zero
    /* 96FB0 8010E540 0C00D034 */  jal        guMtxCatF
    /* 96FB4 8010E544 02403025 */   or        $a2, $s2, $zero
    /* 96FB8 8010E548 02402025 */  or         $a0, $s2, $zero
    /* 96FBC 8010E54C 0C00668C */  jal        HS64_MtxF2L
    /* 96FC0 8010E550 8FA50078 */   lw        $a1, 0x78($sp)
    /* 96FC4 8010E554 8E030008 */  lw         $v1, 0x8($s0)
    /* 96FC8 8010E558 3C0FDA38 */  lui        $t7, (0xDA380000 >> 16)
    /* 96FCC 8010E55C 246E0008 */  addiu      $t6, $v1, 0x8
    /* 96FD0 8010E560 AE0E0008 */  sw         $t6, 0x8($s0)
    /* 96FD4 8010E564 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 96FD8 8010E568 8FB80078 */  lw         $t8, 0x78($sp)
    /* 96FDC 8010E56C 3C0F8012 */  lui        $t7, %hi(D_80124948)
    /* 96FE0 8010E570 25EF4948 */  addiu      $t7, $t7, %lo(D_80124948)
    /* 96FE4 8010E574 AC780004 */  sw         $t8, 0x4($v1)
    /* 96FE8 8010E578 8E030008 */  lw         $v1, 0x8($s0)
    /* 96FEC 8010E57C 3C0EDE00 */  lui        $t6, (0xDE000000 >> 16)
    /* 96FF0 8010E580 24790008 */  addiu      $t9, $v1, 0x8
    /* 96FF4 8010E584 AE190008 */  sw         $t9, 0x8($s0)
    /* 96FF8 8010E588 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 96FFC 8010E58C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 97000 8010E590 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 97004 8010E594 8FB20038 */  lw         $s2, 0x38($sp)
    /* 97008 8010E598 8FB10034 */  lw         $s1, 0x34($sp)
    /* 9700C 8010E59C 8FB00030 */  lw         $s0, 0x30($sp)
    /* 97010 8010E5A0 D7B40028 */  ldc1       $f20, 0x28($sp)
    /* 97014 8010E5A4 03E00008 */  jr         $ra
    /* 97018 8010E5A8 27BD0100 */   addiu     $sp, $sp, 0x100
endlabel func_8010E324
.size func_8010E324, . - func_8010E324
    /* 9701C 8010E5AC 00000000 */  nop
