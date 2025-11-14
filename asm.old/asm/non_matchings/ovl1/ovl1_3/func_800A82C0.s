glabel func_800A82C0
/* 050510 800A82C0 3C038005 */  lui   $v1, %hi(gDynamicBuffer2) # $v1, 0x8005
/* 050514 800A82C4 2463A408 */  addiu $v1, %lo(gDynamicBuffer2) # addiu $v1, $v1, -0x5bf8
/* 050518 800A82C8 8C6E000C */  lw    $t6, 0xc($v1)
/* 05051C 800A82CC 2401FF00 */  li    $at, -256
/* 050520 800A82D0 8C680008 */  lw    $t0, 8($v1)
/* 050524 800A82D4 25CF00FF */  addiu $t7, $t6, 0xff
/* 050528 800A82D8 01E1C024 */  and   $t8, $t7, $at
/* 05052C 800A82DC 3C02800D */  lui   $v0, %hi(D_800D7BB4) # $v0, 0x800d
/* 050530 800A82E0 3C04800D */  lui   $a0, %hi(D_800D7BB0) # $a0, 0x800d
/* 050534 800A82E4 24847BB0 */  addiu $a0, %lo(D_800D7BB0) # addiu $a0, $a0, 0x7bb0
/* 050538 800A82E8 24427BB4 */  addiu $v0, %lo(D_800D7BB4) # addiu $v0, $v0, 0x7bb4
/* 05053C 800A82EC AC580000 */  sw    $t8, ($v0)
/* 050540 800A82F0 AC980000 */  sw    $t8, ($a0)
/* 050544 800A82F4 3C01800D */  lui   $at, %hi(D_800D7BB8) # $at, 0x800d
/* 050548 800A82F8 01185023 */  subu  $t2, $t0, $t8
/* 05054C 800A82FC AC2A7BB8 */  sw    $t2, %lo(D_800D7BB8)($at)
/* 050550 800A8300 3C01800D */  lui   $at, 0x800d
/* 050554 800A8304 3C0B8040 */  lui   $t3, 0x8040
/* 050558 800A8308 03E00008 */  jr    $ra
/* 05055C 800A830C AC2B7C10 */   sw    $t3, 0x7c10($at)
.type func_800A82C0, @function
.size func_800A82C0, . - func_800A82C0
