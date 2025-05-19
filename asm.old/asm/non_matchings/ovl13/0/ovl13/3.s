glabel func_801DB3A0_ovl13 # 3
/* 1F3320 801DB3A0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 1F3324 801DB3A4 AFB00018 */  sw          $s0, 0x18($sp)
/* 1F3328 801DB3A8 3C108013 */  lui         $s0, %hi(D_801290D0)
/* 1F332C 801DB3AC 261090D0 */  addiu       $s0, $s0, %lo(D_801290D0)
/* 1F3330 801DB3B0 AFBF003C */  sw          $ra, 0x3C($sp)
/* 1F3334 801DB3B4 44806000 */  mtc1        $zero, $f12
/* 1F3338 801DB3B8 AFBE0038 */  sw          $fp, 0x38($sp)
/* 1F333C 801DB3BC AFB70034 */  sw          $s7, 0x34($sp)
/* 1F3340 801DB3C0 AFB60030 */  sw          $s6, 0x30($sp)
/* 1F3344 801DB3C4 AFB5002C */  sw          $s5, 0x2C($sp)
/* 1F3348 801DB3C8 AFB40028 */  sw          $s4, 0x28($sp)
/* 1F334C 801DB3CC AFB30024 */  sw          $s3, 0x24($sp)
/* 1F3350 801DB3D0 AFB20020 */  sw          $s2, 0x20($sp)
/* 1F3354 801DB3D4 AFB1001C */  sw          $s1, 0x1C($sp)
/* 1F3358 801DB3D8 AFA40040 */  sw          $a0, 0x40($sp)
/* 1F335C 801DB3DC 0C02BB60 */  jal         func_800AED80
/* 1F3360 801DB3E0 8E050000 */   lw         $a1, 0x0($s0)
/* 1F3364 801DB3E4 3C040007 */  lui         $a0, (0x70050 >> 16)
/* 1F3368 801DB3E8 34840050 */  ori         $a0, $a0, (0x70050 & 0xFFFF)
/* 1F336C 801DB3EC 24050000 */  addiu       $a1, $zero, 0x0
/* 1F3370 801DB3F0 0C02A80E */  jal         func_800AA038
/* 1F3374 801DB3F4 8E060000 */   lw         $a2, 0x0($s0)
/* 1F3378 801DB3F8 3C01800D */  lui         $at, %hi(D_800D7098)
/* 1F337C 801DB3FC 0C066ED6 */  jal         func_8019BB58_ovl7
/* 1F3380 801DB400 AC207098 */   sw         $zero, %lo(D_800D7098)($at)
/* 1F3384 801DB404 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1F3388 801DB408 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1F338C 801DB40C 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F3390 801DB410 24040079 */  addiu       $a0, $zero, 0x79
/* 1F3394 801DB414 0C02C67D */  jal         func_800B19F4
/* 1F3398 801DB418 8DC50000 */   lw         $a1, 0x0($t6)
/* 1F339C 801DB41C 00002025 */  move        $a0, $zero
/* 1F33A0 801DB420 0C02BEED */  jal         func_800AFBB4
/* 1F33A4 801DB424 8E250000 */   lw         $a1, 0x0($s1)
/* 1F33A8 801DB428 8E260000 */  lw          $a2, 0x0($s1)
/* 1F33AC 801DB42C 3C0F800B */  lui         $t7, %hi(D_800B7138)
/* 1F33B0 801DB430 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1F33B4 801DB434 8CD80000 */  lw          $t8, 0x0($a2)
/* 1F33B8 801DB438 25EF7138 */  addiu       $t7, $t7, %lo(D_800B7138)
/* 1F33BC 801DB43C 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray5)
/* 1F33C0 801DB440 0018C880 */  sll         $t9, $t8, 2
/* 1F33C4 801DB444 00390821 */  addu        $at, $at, $t9
/* 1F33C8 801DB448 AC2FEF90 */  sw          $t7, %lo(D_800DEF90)($at)
/* 1F33CC 801DB44C 8CC80000 */  lw          $t0, 0x0($a2)
/* 1F33D0 801DB450 3C05800B */  lui         $a1, %hi(D_800B1434)
/* 1F33D4 801DB454 24A51434 */  addiu       $a1, $a1, %lo(D_800B1434)
/* 1F33D8 801DB458 00084880 */  sll         $t1, $t0, 2
/* 1F33DC 801DB45C 00892021 */  addu        $a0, $a0, $t1
/* 1F33E0 801DB460 0C02C7DA */  jal         func_800B1F68
/* 1F33E4 801DB464 8C84EC10 */   lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1F33E8 801DB468 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F33EC 801DB46C 3C01800E */  lui         $at, %hi(D_800DF150)
/* 1F33F0 801DB470 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F33F4 801DB474 000B6080 */  sll         $t4, $t3, 2
/* 1F33F8 801DB478 002C0821 */  addu        $at, $at, $t4
/* 1F33FC 801DB47C 0C02CCFD */  jal         func_800B33F4
/* 1F3400 801DB480 AC20F150 */   sw         $zero, %lo(D_800DF150)($at)
/* 1F3404 801DB484 8E260000 */  lw          $a2, 0x0($s1)
/* 1F3408 801DB488 3C10800F */  lui         $s0, %hi(D_800E98E0)
/* 1F340C 801DB48C 261098E0 */  addiu       $s0, $s0, %lo(D_800E98E0)
/* 1F3410 801DB490 8CCD0000 */  lw          $t5, 0x0($a2)
/* 1F3414 801DB494 3C12800F */  lui         $s2, %hi(D_800EBBE0)
/* 1F3418 801DB498 2652BBE0 */  addiu       $s2, $s2, %lo(D_800EBBE0)
/* 1F341C 801DB49C 000D7080 */  sll         $t6, $t5, 2
/* 1F3420 801DB4A0 020EC021 */  addu        $t8, $s0, $t6
/* 1F3424 801DB4A4 AF000000 */  sw          $zero, 0x0($t8)
/* 1F3428 801DB4A8 8CC50000 */  lw          $a1, 0x0($a2)
/* 1F342C 801DB4AC 241E0001 */  addiu       $fp, $zero, 0x1
/* 1F3430 801DB4B0 24170002 */  addiu       $s7, $zero, 0x2
/* 1F3434 801DB4B4 00052880 */  sll         $a1, $a1, 2
/* 1F3438 801DB4B8 02057821 */  addu        $t7, $s0, $a1
/* 1F343C 801DB4BC 8DE30000 */  lw          $v1, 0x0($t7)
/* 1F3440 801DB4C0 24160005 */  addiu       $s6, $zero, 0x5
/* 1F3444 801DB4C4 24150006 */  addiu       $s5, $zero, 0x6
/* 1F3448 801DB4C8 24140007 */  addiu       $s4, $zero, 0x7
/* 1F344C 801DB4CC 24130004 */  addiu       $s3, $zero, 0x4
glabel L801DB4D0_ovl13
/* 1F3450 801DB4D0 2C610008 */  sltiu       $at, $v1, 0x8
glabel L801DB4D4_ovl13
/* 1F3454 801DB4D4 102000CD */  beqz        $at, L801DB80C_ovl13
/* 1F3458 801DB4D8 0003C880 */   sll        $t9, $v1, 2
glabel L801DB4DC_ovl13
/* 1F345C 801DB4DC 3C01801E */  lui         $at, %hi(jtbl_801E5C30_ovl13)
/* 1F3460 801DB4E0 00390821 */  addu        $at, $at, $t9
/* 1F3464 801DB4E4 8C395C30 */  lw          $t9, %lo(jtbl_801E5C30_ovl13)($at)
/* 1F3468 801DB4E8 03200008 */  jr          $t9
/* 1F346C 801DB4EC 00000000 */   nop
glabel L801DB4F0_ovl13
/* 1F3470 801DB4F0 24040002 */  addiu       $a0, $zero, 0x2
/* 1F3474 801DB4F4 0C06783A */  jal         func_8019E0E8_ovl7
/* 1F3478 801DB4F8 24050001 */   addiu      $a1, $zero, 0x1
/* 1F347C 801DB4FC 8E280000 */  lw          $t0, 0x0($s1)
/* 1F3480 801DB500 3C01800F */  lui         $at, %hi(D_800EC120)
/* 1F3484 801DB504 24040002 */  addiu       $a0, $zero, 0x2
/* 1F3488 801DB508 8D090000 */  lw          $t1, 0x0($t0)
/* 1F348C 801DB50C 24050003 */  addiu       $a1, $zero, 0x3
/* 1F3490 801DB510 00095080 */  sll         $t2, $t1, 2
/* 1F3494 801DB514 002A0821 */  addu        $at, $at, $t2
/* 1F3498 801DB518 0C06783A */  jal         func_8019E0E8_ovl7
/* 1F349C 801DB51C AC22C120 */   sw         $v0, %lo(D_800EC120)($at)
/* 1F34A0 801DB520 8E260000 */  lw          $a2, 0x0($s1)
/* 1F34A4 801DB524 3C0E800F */  lui         $t6, %hi(D_800EC120)
/* 1F34A8 801DB528 8CCB0000 */  lw          $t3, 0x0($a2)
/* 1F34AC 801DB52C 000B6080 */  sll         $t4, $t3, 2
/* 1F34B0 801DB530 024C6821 */  addu        $t5, $s2, $t4
/* 1F34B4 801DB534 ADA20000 */  sw          $v0, 0x0($t5)
/* 1F34B8 801DB538 8CC50000 */  lw          $a1, 0x0($a2)
/* 1F34BC 801DB53C 00052880 */  sll         $a1, $a1, 2
/* 1F34C0 801DB540 0245C021 */  addu        $t8, $s2, $a1
/* 1F34C4 801DB544 8F0F0000 */  lw          $t7, 0x0($t8)
/* 1F34C8 801DB548 01C57021 */  addu        $t6, $t6, $a1
/* 1F34CC 801DB54C 8DCEC120 */  lw          $t6, %lo(D_800EC120)($t6)
/* 1F34D0 801DB550 000FC880 */  sll         $t9, $t7, 2
/* 1F34D4 801DB554 02594021 */  addu        $t0, $s2, $t9
/* 1F34D8 801DB558 AD0E0000 */  sw          $t6, 0x0($t0)
/* 1F34DC 801DB55C 8CC50000 */  lw          $a1, 0x0($a2)
/* 1F34E0 801DB560 00052880 */  sll         $a1, $a1, 2
/* 1F34E4 801DB564 02054821 */  addu        $t1, $s0, $a1
/* 1F34E8 801DB568 8D230000 */  lw          $v1, 0x0($t1)
/* 1F34EC 801DB56C 5460FFD9 */  bnel        $v1, $zero, L801DB4D4_ovl13
/* 1F34F0 801DB570 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB574_ovl13
/* 1F34F4 801DB574 0C002DAF */  jal         finish_current_thread
/* 1F34F8 801DB578 03C02025 */   move       $a0, $fp
/* 1F34FC 801DB57C 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3500 801DB580 8D450000 */  lw          $a1, 0x0($t2)
/* 1F3504 801DB584 00052880 */  sll         $a1, $a1, 2
/* 1F3508 801DB588 02055821 */  addu        $t3, $s0, $a1
/* 1F350C 801DB58C 8D630000 */  lw          $v1, 0x0($t3)
/* 1F3510 801DB590 1060FFF8 */  beqz        $v1, L801DB574_ovl13
/* 1F3514 801DB594 00000000 */   nop
/* 1F3518 801DB598 1000FFCE */  b           L801DB4D4_ovl13
/* 1F351C 801DB59C 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB5A0_ovl13
/* 1F3520 801DB5A0 57C3FFCC */  bnel        $fp, $v1, L801DB4D4_ovl13
/* 1F3524 801DB5A4 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB5A8_ovl13
/* 1F3528 801DB5A8 0C002DAF */  jal         finish_current_thread
/* 1F352C 801DB5AC 03C02025 */   move       $a0, $fp
/* 1F3530 801DB5B0 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F3534 801DB5B4 8D850000 */  lw          $a1, 0x0($t4)
/* 1F3538 801DB5B8 00052880 */  sll         $a1, $a1, 2
/* 1F353C 801DB5BC 02056821 */  addu        $t5, $s0, $a1
/* 1F3540 801DB5C0 8DA30000 */  lw          $v1, 0x0($t5)
/* 1F3544 801DB5C4 13C3FFF8 */  beq         $fp, $v1, L801DB5A8_ovl13
/* 1F3548 801DB5C8 00000000 */   nop
/* 1F354C 801DB5CC 1000FFC1 */  b           L801DB4D4_ovl13
/* 1F3550 801DB5D0 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB5D4_ovl13
/* 1F3554 801DB5D4 56E3FFBF */  bnel        $s7, $v1, L801DB4D4_ovl13
/* 1F3558 801DB5D8 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB5DC_ovl13
/* 1F355C 801DB5DC 0C002DAF */  jal         finish_current_thread
/* 1F3560 801DB5E0 03C02025 */   move       $a0, $fp
/* 1F3564 801DB5E4 8E380000 */  lw          $t8, 0x0($s1)
/* 1F3568 801DB5E8 8F050000 */  lw          $a1, 0x0($t8)
/* 1F356C 801DB5EC 00052880 */  sll         $a1, $a1, 2
/* 1F3570 801DB5F0 02057821 */  addu        $t7, $s0, $a1
/* 1F3574 801DB5F4 8DE30000 */  lw          $v1, 0x0($t7)
/* 1F3578 801DB5F8 12E3FFF8 */  beq         $s7, $v1, L801DB5DC_ovl13
/* 1F357C 801DB5FC 00000000 */   nop
/* 1F3580 801DB600 1000FFB4 */  b           L801DB4D4_ovl13
/* 1F3584 801DB604 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB608_ovl13
/* 1F3588 801DB608 0245C821 */  addu        $t9, $s2, $a1
/* 1F358C 801DB60C 0C066EEA */  jal         func_8019BBA8_ovl7
/* 1F3590 801DB610 8F240000 */   lw         $a0, 0x0($t9)
/* 1F3594 801DB614 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F3598 801DB618 8DC80000 */  lw          $t0, 0x0($t6)
/* 1F359C 801DB61C 00084880 */  sll         $t1, $t0, 2
/* 1F35A0 801DB620 02495021 */  addu        $t2, $s2, $t1
/* 1F35A4 801DB624 0C02C640 */  jal         func_800B1900
/* 1F35A8 801DB628 95440002 */   lhu        $a0, 0x2($t2)
/* 1F35AC 801DB62C 24040002 */  addiu       $a0, $zero, 0x2
/* 1F35B0 801DB630 0C06783A */  jal         func_8019E0E8_ovl7
/* 1F35B4 801DB634 24050004 */   addiu      $a1, $zero, 0x4
/* 1F35B8 801DB638 8E260000 */  lw          $a2, 0x0($s1)
/* 1F35BC 801DB63C 3C18800F */  lui         $t8, %hi(D_800EC120)
/* 1F35C0 801DB640 3C09800F */  lui         $t1, %hi(D_800EC120)
/* 1F35C4 801DB644 8CCB0000 */  lw          $t3, 0x0($a2)
/* 1F35C8 801DB648 3C014370 */  lui         $at, (0x43700000 >> 16)
/* 1F35CC 801DB64C 44813000 */  mtc1        $at, $f6
/* 1F35D0 801DB650 000B6080 */  sll         $t4, $t3, 2
/* 1F35D4 801DB654 024C6821 */  addu        $t5, $s2, $t4
/* 1F35D8 801DB658 ADA20000 */  sw          $v0, 0x0($t5)
/* 1F35DC 801DB65C 8CC50000 */  lw          $a1, 0x0($a2)
/* 1F35E0 801DB660 3C0B800E */  lui         $t3, %hi(gEntitiesNextPosYArray)
/* 1F35E4 801DB664 256B2790 */  addiu       $t3, $t3, %lo(gEntitiesNextPosYArray)
/* 1F35E8 801DB668 00052880 */  sll         $a1, $a1, 2
/* 1F35EC 801DB66C 02457821 */  addu        $t7, $s2, $a1
/* 1F35F0 801DB670 8DF90000 */  lw          $t9, 0x0($t7)
/* 1F35F4 801DB674 0305C021 */  addu        $t8, $t8, $a1
/* 1F35F8 801DB678 8F18C120 */  lw          $t8, %lo(D_800EC120)($t8)
/* 1F35FC 801DB67C 00197080 */  sll         $t6, $t9, 2
/* 1F3600 801DB680 024E4021 */  addu        $t0, $s2, $t6
/* 1F3604 801DB684 AD180000 */  sw          $t8, 0x0($t0)
/* 1F3608 801DB688 8CC50000 */  lw          $a1, 0x0($a2)
/* 1F360C 801DB68C 3C01800E */  lui         $at, %hi(gEntitiesPosYArray)
/* 1F3610 801DB690 00052880 */  sll         $a1, $a1, 2
/* 1F3614 801DB694 01254821 */  addu        $t1, $t1, $a1
/* 1F3618 801DB698 8D29C120 */  lw          $t1, %lo(D_800EC120)($t1)
/* 1F361C 801DB69C 02456821 */  addu        $t5, $s2, $a1
/* 1F3620 801DB6A0 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F3624 801DB6A4 00095080 */  sll         $t2, $t1, 2
/* 1F3628 801DB6A8 014B6021 */  addu        $t4, $t2, $t3
/* 1F362C 801DB6AC C5840000 */  lwc1        $f4, 0x0($t4)
/* 1F3630 801DB6B0 000FC880 */  sll         $t9, $t7, 2
/* 1F3634 801DB6B4 032B7021 */  addu        $t6, $t9, $t3
/* 1F3638 801DB6B8 46062001 */  sub.s       $f0, $f4, $f6
/* 1F363C 801DB6BC E5C00000 */  swc1        $f0, 0x0($t6)
/* 1F3640 801DB6C0 8CD80000 */  lw          $t8, 0x0($a2)
/* 1F3644 801DB6C4 00184080 */  sll         $t0, $t8, 2
/* 1F3648 801DB6C8 02484821 */  addu        $t1, $s2, $t0
/* 1F364C 801DB6CC 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F3650 801DB6D0 000A6080 */  sll         $t4, $t2, 2
/* 1F3654 801DB6D4 002C0821 */  addu        $at, $at, $t4
/* 1F3658 801DB6D8 E4202CD0 */  swc1        $f0, %lo(gEntitiesPosYArray)($at)
/* 1F365C 801DB6DC 8CCD0000 */  lw          $t5, 0x0($a2)
/* 1F3660 801DB6E0 000D7880 */  sll         $t7, $t5, 2
/* 1F3664 801DB6E4 020FC821 */  addu        $t9, $s0, $t7
/* 1F3668 801DB6E8 AF330000 */  sw          $s3, 0x0($t9)
/* 1F366C 801DB6EC 8CC50000 */  lw          $a1, 0x0($a2)
/* 1F3670 801DB6F0 00052880 */  sll         $a1, $a1, 2
/* 1F3674 801DB6F4 02055821 */  addu        $t3, $s0, $a1
/* 1F3678 801DB6F8 1000FF75 */  b           L801DB4D0_ovl13
/* 1F367C 801DB6FC 8D630000 */   lw         $v1, 0x0($t3)
glabel L801DB700_ovl13
/* 1F3680 801DB700 5663FF74 */  bnel        $s3, $v1, L801DB4D4_ovl13
/* 1F3684 801DB704 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB708_ovl13
/* 1F3688 801DB708 0C002DAF */  jal         finish_current_thread
/* 1F368C 801DB70C 03C02025 */   move       $a0, $fp
/* 1F3690 801DB710 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F3694 801DB714 8DC50000 */  lw          $a1, 0x0($t6)
/* 1F3698 801DB718 00052880 */  sll         $a1, $a1, 2
/* 1F369C 801DB71C 0205C021 */  addu        $t8, $s0, $a1
/* 1F36A0 801DB720 8F030000 */  lw          $v1, 0x0($t8)
/* 1F36A4 801DB724 1263FFF8 */  beq         $s3, $v1, L801DB708_ovl13
/* 1F36A8 801DB728 00000000 */   nop
/* 1F36AC 801DB72C 1000FF69 */  b           L801DB4D4_ovl13
/* 1F36B0 801DB730 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB734_ovl13
/* 1F36B4 801DB734 56C3FF67 */  bnel        $s6, $v1, L801DB4D4_ovl13
/* 1F36B8 801DB738 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB73C_ovl13
/* 1F36BC 801DB73C 0C002DAF */  jal         finish_current_thread
/* 1F36C0 801DB740 03C02025 */   move       $a0, $fp
/* 1F36C4 801DB744 8E280000 */  lw          $t0, 0x0($s1)
/* 1F36C8 801DB748 8D050000 */  lw          $a1, 0x0($t0)
/* 1F36CC 801DB74C 00052880 */  sll         $a1, $a1, 2
/* 1F36D0 801DB750 02054821 */  addu        $t1, $s0, $a1
/* 1F36D4 801DB754 8D230000 */  lw          $v1, 0x0($t1)
/* 1F36D8 801DB758 12C3FFF8 */  beq         $s6, $v1, L801DB73C_ovl13
/* 1F36DC 801DB75C 00000000 */   nop
/* 1F36E0 801DB760 1000FF5C */  b           L801DB4D4_ovl13
/* 1F36E4 801DB764 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB768_ovl13
/* 1F36E8 801DB768 02455021 */  addu        $t2, $s2, $a1
/* 1F36EC 801DB76C 0C066EEA */  jal         func_8019BBA8_ovl7
/* 1F36F0 801DB770 8D440000 */   lw         $a0, 0x0($t2)
/* 1F36F4 801DB774 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F36F8 801DB778 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F36FC 801DB77C 000D7880 */  sll         $t7, $t5, 2
/* 1F3700 801DB780 024FC821 */  addu        $t9, $s2, $t7
/* 1F3704 801DB784 0C02C640 */  jal         func_800B1900
/* 1F3708 801DB788 97240002 */   lhu        $a0, 0x2($t9)
/* 1F370C 801DB78C 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F3710 801DB790 8D650000 */  lw          $a1, 0x0($t3)
/* 1F3714 801DB794 00052880 */  sll         $a1, $a1, 2
/* 1F3718 801DB798 02057021 */  addu        $t6, $s0, $a1
/* 1F371C 801DB79C 8DC30000 */  lw          $v1, 0x0($t6)
/* 1F3720 801DB7A0 56A3FF4C */  bnel        $s5, $v1, L801DB4D4_ovl13
/* 1F3724 801DB7A4 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB7A8_ovl13
/* 1F3728 801DB7A8 0C002DAF */  jal         finish_current_thread
/* 1F372C 801DB7AC 03C02025 */   move       $a0, $fp
/* 1F3730 801DB7B0 8E380000 */  lw          $t8, 0x0($s1)
/* 1F3734 801DB7B4 8F050000 */  lw          $a1, 0x0($t8)
/* 1F3738 801DB7B8 00052880 */  sll         $a1, $a1, 2
/* 1F373C 801DB7BC 02054021 */  addu        $t0, $s0, $a1
/* 1F3740 801DB7C0 8D030000 */  lw          $v1, 0x0($t0)
/* 1F3744 801DB7C4 12A3FFF8 */  beq         $s5, $v1, L801DB7A8_ovl13
/* 1F3748 801DB7C8 00000000 */   nop
/* 1F374C 801DB7CC 1000FF41 */  b           L801DB4D4_ovl13
/* 1F3750 801DB7D0 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB7D4_ovl13
/* 1F3754 801DB7D4 5683FF3F */  bnel        $s4, $v1, L801DB4D4_ovl13
/* 1F3758 801DB7D8 2C610008 */   sltiu      $at, $v1, 0x8
glabel L801DB7DC_ovl13
/* 1F375C 801DB7DC 0C002DAF */  jal         finish_current_thread
/* 1F3760 801DB7E0 03C02025 */   move       $a0, $fp
/* 1F3764 801DB7E4 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3768 801DB7E8 8D250000 */  lw          $a1, 0x0($t1)
/* 1F376C 801DB7EC 00052880 */  sll         $a1, $a1, 2
/* 1F3770 801DB7F0 02055021 */  addu        $t2, $s0, $a1
/* 1F3774 801DB7F4 8D430000 */  lw          $v1, 0x0($t2)
/* 1F3778 801DB7F8 1283FFF8 */  beq         $s4, $v1, L801DB7DC_ovl13
/* 1F377C 801DB7FC 00000000 */   nop
/* 1F3780 801DB800 2C610008 */  sltiu       $at, $v1, 0x8
/* 1F3784 801DB804 5420FF35 */  bnel        $at, $zero, L801DB4DC_ovl13
/* 1F3788 801DB808 0003C880 */   sll        $t9, $v1, 2
glabel L801DB80C_ovl13
/* 1F378C 801DB80C 0C02BE85 */  jal         func_800AFA14
/* 1F3790 801DB810 00000000 */   nop
/* 1F3794 801DB814 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F3798 801DB818 8D850000 */  lw          $a1, 0x0($t4)
/* 1F379C 801DB81C 00052880 */  sll         $a1, $a1, 2
/* 1F37A0 801DB820 02056821 */  addu        $t5, $s0, $a1
/* 1F37A4 801DB824 1000FF2A */  b           L801DB4D0_ovl13
/* 1F37A8 801DB828 8DA30000 */   lw         $v1, 0x0($t5)
/* 1F37AC 801DB82C 00000000 */  nop
/* 1F37B0 801DB830 00000000 */  nop
/* 1F37B4 801DB834 00000000 */  nop
/* 1F37B8 801DB838 00000000 */  nop
/* 1F37BC 801DB83C 00000000 */  nop
/* 1F37C0 801DB840 8FBF003C */  lw          $ra, 0x3C($sp)
/* 1F37C4 801DB844 8FB00018 */  lw          $s0, 0x18($sp)
/* 1F37C8 801DB848 8FB1001C */  lw          $s1, 0x1C($sp)
/* 1F37CC 801DB84C 8FB20020 */  lw          $s2, 0x20($sp)
/* 1F37D0 801DB850 8FB30024 */  lw          $s3, 0x24($sp)
/* 1F37D4 801DB854 8FB40028 */  lw          $s4, 0x28($sp)
/* 1F37D8 801DB858 8FB5002C */  lw          $s5, 0x2C($sp)
/* 1F37DC 801DB85C 8FB60030 */  lw          $s6, 0x30($sp)
/* 1F37E0 801DB860 8FB70034 */  lw          $s7, 0x34($sp)
/* 1F37E4 801DB864 8FBE0038 */  lw          $fp, 0x38($sp)
/* 1F37E8 801DB868 03E00008 */  jr          $ra
/* 1F37EC 801DB86C 27BD0040 */   addiu      $sp, $sp, 0x40
.type func_801DB3A0_ovl13, @function

.size func_801DB3A0_ovl13, . - func_801DB3A0_ovl13
.section .late_rodata
glabel jtbl_801E5C30_ovl13
/* 1FDBB0 801E5C30 */ .word L801DB4F0_ovl13
/* 1FDBB4 801E5C34 */ .word L801DB5A0_ovl13
/* 1FDBB8 801E5C38 */ .word L801DB5D4_ovl13
/* 1FDBBC 801E5C3C */ .word L801DB608_ovl13
/* 1FDBC0 801E5C40 */ .word L801DB700_ovl13
/* 1FDBC4 801E5C44 */ .word L801DB734_ovl13
/* 1FDBC8 801E5C48 */ .word L801DB768_ovl13
/* 1FDBCC 801E5C4C */ .word L801DB7D4_ovl13

