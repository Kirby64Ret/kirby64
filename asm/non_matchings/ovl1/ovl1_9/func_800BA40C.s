glabel func_800BA40C
/* 06265C 800BA40C 3C18800D */  lui   $t8, %hi(D_800D6C13) # $t8, 0x800d
/* 062660 800BA410 93196C13 */  lbu   $t9, %lo(D_800D6C13)($t8)
/* 062664 800BA414 00047080 */  sll   $t6, $a0, 2
/* 062668 800BA418 01C47023 */  subu  $t6, $t6, $a0
/* 06266C 800BA41C 3C09800D */  lui   $t1, %hi(D_800D6C10) # $t1, 0x800d
/* 062670 800BA420 3C0C800D */  lui   $t4, %hi(D_800D6C11) # $t4, 0x800d
/* 062674 800BA424 918C6C11 */  lbu   $t4, %lo(D_800D6C11)($t4)
/* 062678 800BA428 91296C10 */  lbu   $t1, %lo(D_800D6C10)($t1)
/* 06267C 800BA42C 000E7080 */  sll   $t6, $t6, 2
/* 062680 800BA430 3C18800D */  lui   $t8, %hi(D_800D6C12) # $t8, 0x800d
/* 062684 800BA434 93186C12 */  lbu   $t8, %lo(D_800D6C12)($t8)
/* 062688 800BA438 01C47023 */  subu  $t6, $t6, $a0
/* 06268C 800BA43C 3C0F800F */  lui   $t7, %hi(gSaveBuffer1) # $t7, 0x800f
/* 062690 800BA440 25EFC9F8 */  addiu $t7, %lo(gSaveBuffer1) # addiu $t7, $t7, -0x3608
/* 062694 800BA444 000E70C0 */  sll   $t6, $t6, 3
/* 062698 800BA448 00194180 */  sll   $t0, $t9, 6
/* 06269C 800BA44C 01CF1821 */  addu  $v1, $t6, $t7
/* 0626A0 800BA450 318D0003 */  andi  $t5, $t4, 3
/* 0626A4 800BA454 312A0003 */  andi  $t2, $t1, 3
/* 0626A8 800BA458 010A5825 */  or    $t3, $t0, $t2
/* 0626AC 800BA45C 000D7080 */  sll   $t6, $t5, 2
/* 0626B0 800BA460 33190003 */  andi  $t9, $t8, 3
/* 0626B4 800BA464 00194900 */  sll   $t1, $t9, 4
/* 0626B8 800BA468 016E7825 */  or    $t7, $t3, $t6
/* 0626BC 800BA46C 01E94025 */  or    $t0, $t7, $t1
/* 0626C0 800BA470 A068002E */  sb    $t0, 0x2e($v1)
/* 0626C4 800BA474 3C0A800D */  lui   $t2, %hi(D_800D6C17) # $t2, 0x800d
/* 0626C8 800BA478 914C6C17 */  lbu   $t4, %lo(D_800D6C17)($t2)
/* 0626CC 800BA47C 3C0B800D */  lui   $t3, %hi(D_800D6C14) # $t3, 0x800d
/* 0626D0 800BA480 3C19800D */  lui   $t9, %hi(D_800D6C15) # $t9, 0x800d
/* 0626D4 800BA484 93396C15 */  lbu   $t9, %lo(D_800D6C15)($t9)
/* 0626D8 800BA488 916B6C14 */  lbu   $t3, %lo(D_800D6C14)($t3)
/* 0626DC 800BA48C 3C0A800D */  lui   $t2, %hi(D_800D6C16) # $t2, 0x800d
/* 0626E0 800BA490 914A6C16 */  lbu   $t2, %lo(D_800D6C16)($t2)
/* 0626E4 800BA494 000C6980 */  sll   $t5, $t4, 6
/* 0626E8 800BA498 332F0003 */  andi  $t7, $t9, 3
/* 0626EC 800BA49C 316E0003 */  andi  $t6, $t3, 3
/* 0626F0 800BA4A0 01AEC025 */  or    $t8, $t5, $t6
/* 0626F4 800BA4A4 000F4880 */  sll   $t1, $t7, 2
/* 0626F8 800BA4A8 314C0003 */  andi  $t4, $t2, 3
/* 0626FC 800BA4AC 000C5900 */  sll   $t3, $t4, 4
/* 062700 800BA4B0 03094025 */  or    $t0, $t8, $t1
/* 062704 800BA4B4 010B6825 */  or    $t5, $t0, $t3
/* 062708 800BA4B8 3C06800D */  lui   $a2, %hi(D_800D6C18) # $a2, 0x800d
/* 06270C 800BA4BC 3C02800D */  lui   $v0, %hi(D_800D6C68) # $v0, 0x800d
/* 062710 800BA4C0 24426C68 */  addiu $v0, %lo(D_800D6C68) # addiu $v0, $v0, 0x6c68
/* 062714 800BA4C4 24C66C18 */  addiu $a2, %lo(D_800D6C18) # addiu $a2, $a2, 0x6c18
/* 062718 800BA4C8 A06D002F */  sb    $t5, 0x2f($v1)
/* 06271C 800BA4CC 24650002 */  addiu $a1, $v1, 2
.L800BA4D0_ovl1:
/* 062720 800BA4D0 90D90003 */  lbu   $t9, 3($a2)
/* 062724 800BA4D4 90D80000 */  lbu   $t8, ($a2)
/* 062728 800BA4D8 90CC0001 */  lbu   $t4, 1($a2)
/* 06272C 800BA4DC 90CE0002 */  lbu   $t6, 2($a2)
/* 062730 800BA4E0 00197980 */  sll   $t7, $t9, 6
/* 062734 800BA4E4 33090003 */  andi  $t1, $t8, 3
/* 062738 800BA4E8 31880003 */  andi  $t0, $t4, 3
/* 06273C 800BA4EC 00085880 */  sll   $t3, $t0, 2
/* 062740 800BA4F0 01E95025 */  or    $t2, $t7, $t1
/* 062744 800BA4F4 31D90003 */  andi  $t9, $t6, 3
/* 062748 800BA4F8 0019C100 */  sll   $t8, $t9, 4
/* 06274C 800BA4FC 014B6825 */  or    $t5, $t2, $t3
/* 062750 800BA500 90CA0004 */  lbu   $t2, 4($a2)
/* 062754 800BA504 90D90005 */  lbu   $t9, 5($a2)
/* 062758 800BA508 90CC0007 */  lbu   $t4, 7($a2)
/* 06275C 800BA50C 01B87825 */  or    $t7, $t5, $t8
/* 062760 800BA510 90C90006 */  lbu   $t1, 6($a2)
/* 062764 800BA514 314B0003 */  andi  $t3, $t2, 3
/* 062768 800BA518 332D0003 */  andi  $t5, $t9, 3
/* 06276C 800BA51C 000C4180 */  sll   $t0, $t4, 6
/* 062770 800BA520 010B7025 */  or    $t6, $t0, $t3
/* 062774 800BA524 000DC080 */  sll   $t8, $t5, 2
/* 062778 800BA528 A0AF002E */  sb    $t7, 0x2e($a1)
/* 06277C 800BA52C 01D87825 */  or    $t7, $t6, $t8
/* 062780 800BA530 312C0003 */  andi  $t4, $t1, 3
/* 062784 800BA534 90CE0008 */  lbu   $t6, 8($a2)
/* 062788 800BA538 90D9000B */  lbu   $t9, 0xb($a2)
/* 06278C 800BA53C 000C5100 */  sll   $t2, $t4, 4
/* 062790 800BA540 90CC0009 */  lbu   $t4, 9($a2)
/* 062794 800BA544 90CB000A */  lbu   $t3, 0xa($a2)
/* 062798 800BA548 01EA4025 */  or    $t0, $t7, $t2
/* 06279C 800BA54C 31D80003 */  andi  $t8, $t6, 3
/* 0627A0 800BA550 00196980 */  sll   $t5, $t9, 6
/* 0627A4 800BA554 01B84825 */  or    $t1, $t5, $t8
/* 0627A8 800BA558 318F0003 */  andi  $t7, $t4, 3
/* 0627AC 800BA55C 000F5080 */  sll   $t2, $t7, 2
/* 0627B0 800BA560 A0A8002F */  sb    $t0, 0x2f($a1)
/* 0627B4 800BA564 31790003 */  andi  $t9, $t3, 3
/* 0627B8 800BA568 90CC000F */  lbu   $t4, 0xf($a2)
/* 0627BC 800BA56C 00197100 */  sll   $t6, $t9, 4
/* 0627C0 800BA570 012A4025 */  or    $t0, $t1, $t2
/* 0627C4 800BA574 90C9000C */  lbu   $t1, 0xc($a2)
/* 0627C8 800BA578 90D9000D */  lbu   $t9, 0xd($a2)
/* 0627CC 800BA57C 90D8000E */  lbu   $t8, 0xe($a2)
/* 0627D0 800BA580 010E6825 */  or    $t5, $t0, $t6
/* 0627D4 800BA584 000C7980 */  sll   $t7, $t4, 6
/* 0627D8 800BA588 312A0003 */  andi  $t2, $t1, 3
/* 0627DC 800BA58C 33280003 */  andi  $t0, $t9, 3
/* 0627E0 800BA590 00087080 */  sll   $t6, $t0, 2
/* 0627E4 800BA594 01EA5825 */  or    $t3, $t7, $t2
/* 0627E8 800BA598 A0AD0030 */  sb    $t5, 0x30($a1)
/* 0627EC 800BA59C 330C0003 */  andi  $t4, $t8, 3
/* 0627F0 800BA5A0 000C4900 */  sll   $t1, $t4, 4
/* 0627F4 800BA5A4 016E6825 */  or    $t5, $t3, $t6
/* 0627F8 800BA5A8 01A97825 */  or    $t7, $t5, $t1
/* 0627FC 800BA5AC 24C60010 */  addiu $a2, $a2, 0x10
/* 062800 800BA5B0 A0AF0031 */  sb    $t7, 0x31($a1)
/* 062804 800BA5B4 14C2FFC6 */  bne   $a2, $v0, .L800BA4D0_ovl1
/* 062808 800BA5B8 24A50004 */   addiu $a1, $a1, 4
/* 06280C 800BA5BC 03E00008 */  jr    $ra
/* 062810 800BA5C0 00000000 */   nop   
.type func_800BA40C, @function
.size func_800BA40C, . - func_800BA40C
