nonmatching func_800A2300, 0x8C

glabel func_800A2300
    /* 4A550 800A2300 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 4A554 800A2304 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 4A558 800A2308 AFB20020 */  sw         $s2, 0x20($sp)
    /* 4A55C 800A230C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 4A560 800A2310 AFB00018 */  sw         $s0, 0x18($sp)
    /* 4A564 800A2314 908E000F */  lbu        $t6, 0xF($a0)
    /* 4A568 800A2318 24010001 */  addiu      $at, $zero, 0x1
    /* 4A56C 800A231C 55C10016 */  bnel       $t6, $at, .L800A2378
    /* 4A570 800A2320 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 4A574 800A2324 8C91003C */  lw         $s1, 0x3C($a0)
    /* 4A578 800A2328 3C12800D */  lui        $s2, %hi(D_800D6A0C)
    /* 4A57C 800A232C 26526A0C */  addiu      $s2, $s2, %lo(D_800D6A0C)
    /* 4A580 800A2330 52200011 */  beql       $s1, $zero, .L800A2378
    /* 4A584 800A2334 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800A2338:
    /* 4A588 800A2338 8E440000 */  lw         $a0, 0x0($s2)
    /* 4A58C 800A233C 10800009 */  beqz       $a0, .L800A2364
    /* 4A590 800A2340 00000000 */   nop
  .L800A2344:
    /* 4A594 800A2344 8C8F0048 */  lw         $t7, 0x48($a0)
    /* 4A598 800A2348 8C900000 */  lw         $s0, 0x0($a0)
    /* 4A59C 800A234C 162F0003 */  bne        $s1, $t7, .L800A235C
    /* 4A5A0 800A2350 00000000 */   nop
    /* 4A5A4 800A2354 0C0287CC */  jal        func_800A1F30
    /* 4A5A8 800A2358 00000000 */   nop
  .L800A235C:
    /* 4A5AC 800A235C 1600FFF9 */  bnez       $s0, .L800A2344
    /* 4A5B0 800A2360 02002025 */   or        $a0, $s0, $zero
  .L800A2364:
    /* 4A5B4 800A2364 0C002FA4 */  jal        animModelTreeNextNode
    /* 4A5B8 800A2368 02202025 */   or        $a0, $s1, $zero
    /* 4A5BC 800A236C 1440FFF2 */  bnez       $v0, .L800A2338
    /* 4A5C0 800A2370 00408825 */   or        $s1, $v0, $zero
    /* 4A5C4 800A2374 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800A2378:
    /* 4A5C8 800A2378 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4A5CC 800A237C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 4A5D0 800A2380 8FB20020 */  lw         $s2, 0x20($sp)
    /* 4A5D4 800A2384 03E00008 */  jr         $ra
    /* 4A5D8 800A2388 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800A2300
.size func_800A2300, . - func_800A2300
