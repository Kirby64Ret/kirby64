glabel func_80207304_ovl9
/* 1B5354 80207304 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B5358 80207308 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 1B535C 8020730C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1B5360 80207310 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B5364 80207314 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B5368 80207318 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B536C 8020731C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1B5370 80207320 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1B5374 80207324 3C19801D */  lui        $t9, %hi(D_801CC550)
/* 1B5378 80207328 000FC080 */  sll        $t8, $t7, 2
/* 1B537C 8020732C 00581021 */  addu       $v0, $v0, $t8
/* 1B5380 80207330 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1B5384 80207334 2739C550 */  addiu      $t9, $t9, %lo(D_801CC550)
/* 1B5388 80207338 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 1B538C 8020733C AC590098 */  sw         $t9, 0x98($v0)
/* 1B5390 80207340 8C680000 */  lw         $t0, 0x0($v1)
/* 1B5394 80207344 3C068022 */  lui        $a2, %hi(D_8021C8D8_ovl9)
/* 1B5398 80207348 24C6C8D8 */  addiu      $a2, $a2, %lo(D_8021C8D8_ovl9)
/* 1B539C 8020734C 8D090000 */  lw         $t1, 0x0($t0)
/* 1B53A0 80207350 24050004 */  addiu      $a1, $zero, 0x4
/* 1B53A4 80207354 00095080 */  sll        $t2, $t1, 2
/* 1B53A8 80207358 008A2021 */  addu       $a0, $a0, $t2
/* 1B53AC 8020735C 0C02911F */  jal        call_virtual_function
/* 1B53B0 80207360 8C84DC50 */   lw        $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1B53B4 80207364 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B53B8 80207368 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B53BC 8020736C 03E00008 */  jr         $ra
/* 1B53C0 80207370 00000000 */   nop
