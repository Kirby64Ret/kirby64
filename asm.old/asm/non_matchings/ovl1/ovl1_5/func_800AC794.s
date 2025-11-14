glabel func_800AC794
/* 0549E4 800AC794 90AE0001 */  lbu   $t6, 1($a1)
/* 0549E8 800AC798 3C03800D */ lui $v1, %hi(D_800D4E60)
/* 0549EC 800AC79C 94B80004 */  lhu   $t8, 4($a1)
/* 0549F0 800AC7A0 006E1821 */  addu  $v1, $v1, $t6
/* 0549F4 800AC7A4 90634E60 */ lbu $v1, %lo(D_800D4E60)($v1)
/* 0549F8 800AC7A8 A4800008 */  sh    $zero, 8($a0)
/* 0549FC 800AC7AC 84880008 */  lh    $t0, 8($a0)
/* 054A00 800AC7B0 240A0400 */  li    $t2, 1024
/* 054A04 800AC7B4 A48A000A */  sh    $t2, 0xa($a0)
/* 054A08 800AC7B8 A48A0002 */  sh    $t2, 2($a0)
/* 054A0C 800AC7BC A4880000 */  sh    $t0, ($a0)
/* 054A10 800AC7C0 94AB0004 */  lhu   $t3, 4($a1)
/* 054A14 800AC7C4 00607827 */  not   $t7, $v1
/* 054A18 800AC7C8 0303C821 */  addu  $t9, $t8, $v1
/* 054A1C 800AC7CC 000B6140 */  sll   $t4, $t3, 5
/* 054A20 800AC7D0 A48C0004 */  sh    $t4, 4($a0)
/* 054A24 800AC7D4 94AD0006 */  lhu   $t5, 6($a1)
/* 054A28 800AC7D8 01F91024 */  and   $v0, $t7, $t9
/* 054A2C 800AC7DC A4800006 */  sh    $zero, 6($a0)
/* 054A30 800AC7E0 000D7140 */  sll   $t6, $t5, 5
/* 054A34 800AC7E4 A48E000C */  sh    $t6, 0xc($a0)
/* 054A38 800AC7E8 A480000E */  sh    $zero, 0xe($a0)
/* 054A3C 800AC7EC 90AF0001 */  lbu   $t7, 1($a1)
/* 054A40 800AC7F0 24190004 */  li    $t9, 4
/* 054A44 800AC7F4 A4800012 */  sh    $zero, 0x12($a0)
/* 054A48 800AC7F8 032F4023 */  subu  $t0, $t9, $t7
/* 054A4C 800AC7FC 01024807 */  srav  $t1, $v0, $t0
/* 054A50 800AC800 A4890010 */  sh    $t1, 0x10($a0)
/* 054A54 800AC804 90AA0000 */  lbu   $t2, ($a1)
/* 054A58 800AC808 A08A0014 */  sb    $t2, 0x14($a0)
/* 054A5C 800AC80C 90AB0001 */  lbu   $t3, 1($a1)
/* 054A60 800AC810 A0800016 */  sb    $zero, 0x16($a0)
/* 054A64 800AC814 A0800017 */  sb    $zero, 0x17($a0)
/* 054A68 800AC818 03E00008 */  jr    $ra
/* 054A6C 800AC81C A08B0015 */   sb    $t3, 0x15($a0)
.type func_800AC794, @function
.size func_800AC794, . - func_800AC794
