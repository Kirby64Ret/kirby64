glabel func_800A9B48
/* 051D98 800A9B48 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 051D9C 800A9B4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 051DA0 800A9B50 0C02A53D */  jal   func_800A94F4
/* 051DA4 800A9B54 AFA40028 */   sw    $a0, 0x28($sp)
/* 051DA8 800A9B58 8C460004 */  lw    $a2, 4($v0)
/* 051DAC 800A9B5C 00402825 */  move  $a1, $v0
/* 051DB0 800A9B60 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 051DB4 800A9B64 10C00020 */  beqz  $a2, .L800A9BE8_ovl1
/* 051DB8 800A9B68 00000000 */   nop   
/* 051DBC 800A9B6C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 051DC0 800A9B70 3C18800E */  lui   $t8, %hi(D_800DF850) # $t8, 0x800e
/* 051DC4 800A9B74 2718F850 */  addiu $t8, %lo(D_800DF850) # addiu $t8, $t8, -0x7b0
/* 051DC8 800A9B78 8C6E0000 */  lw    $t6, ($v1)
/* 051DCC 800A9B7C 2401FFFF */  li    $at, -1
/* 051DD0 800A9B80 000E7880 */  sll   $t7, $t6, 2
/* 051DD4 800A9B84 01F82021 */  addu  $a0, $t7, $t8
/* 051DD8 800A9B88 8C820000 */  lw    $v0, ($a0)
/* 051DDC 800A9B8C 5041000F */  beql  $v0, $at, .L800A9BCC_ovl1
/* 051DE0 800A9B90 AC850000 */   sw    $a1, ($a0)
/* 051DE4 800A9B94 34440002 */  ori   $a0, $v0, 2
/* 051DE8 800A9B98 AFA5001C */  sw    $a1, 0x1c($sp)
/* 051DEC 800A9B9C 0C02A15E */  jal   func_800A8578
/* 051DF0 800A9BA0 AFA60024 */   sw    $a2, 0x24($sp)
/* 051DF4 800A9BA4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 051DF8 800A9BA8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 051DFC 800A9BAC 3C09800E */  lui   $t1, %hi(D_800DF850) # $t1, 0x800e
/* 051E00 800A9BB0 2529F850 */  addiu $t1, %lo(D_800DF850) # addiu $t1, $t1, -0x7b0
/* 051E04 800A9BB4 8C790000 */  lw    $t9, ($v1)
/* 051E08 800A9BB8 8FA5001C */  lw    $a1, 0x1c($sp)
/* 051E0C 800A9BBC 8FA60024 */  lw    $a2, 0x24($sp)
/* 051E10 800A9BC0 00194080 */  sll   $t0, $t9, 2
/* 051E14 800A9BC4 01092021 */  addu  $a0, $t0, $t1
/* 051E18 800A9BC8 AC850000 */  sw    $a1, ($a0)
.L800A9BCC_ovl1:
/* 051E1C 800A9BCC 8C6B0000 */  lw    $t3, ($v1)
/* 051E20 800A9BD0 8FAA0028 */  lw    $t2, 0x28($sp)
/* 051E24 800A9BD4 3C01800E */  lui   $at, 0x800e
/* 051E28 800A9BD8 000B6080 */  sll   $t4, $t3, 2
/* 051E2C 800A9BDC 002C0821 */  addu  $at, $at, $t4
/* 051E30 800A9BE0 10000020 */  b     .L800A9C64_ovl1
/* 051E34 800A9BE4 AC2A0110 */   sw    $t2, 0x110($at)
.L800A9BE8_ovl1:
/* 051E38 800A9BE8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 051E3C 800A9BEC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 051E40 800A9BF0 3C0F800E */  lui   $t7, %hi(D_800DF690) # $t7, 0x800e
/* 051E44 800A9BF4 25EFF690 */  addiu $t7, %lo(D_800DF690) # addiu $t7, $t7, -0x970
/* 051E48 800A9BF8 8C6D0000 */  lw    $t5, ($v1)
/* 051E4C 800A9BFC 2401FFFF */  li    $at, -1
/* 051E50 800A9C00 000D7080 */  sll   $t6, $t5, 2
/* 051E54 800A9C04 01CF2021 */  addu  $a0, $t6, $t7
/* 051E58 800A9C08 8C820000 */  lw    $v0, ($a0)
/* 051E5C 800A9C0C 5041000F */  beql  $v0, $at, .L800A9C4C_ovl1
/* 051E60 800A9C10 AC850000 */   sw    $a1, ($a0)
/* 051E64 800A9C14 34440002 */  ori   $a0, $v0, 2
/* 051E68 800A9C18 AFA5001C */  sw    $a1, 0x1c($sp)
/* 051E6C 800A9C1C 0C02A15E */  jal   func_800A8578
/* 051E70 800A9C20 AFA60024 */   sw    $a2, 0x24($sp)
/* 051E74 800A9C24 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 051E78 800A9C28 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 051E7C 800A9C2C 3C08800E */  lui   $t0, %hi(D_800DF690) # $t0, 0x800e
/* 051E80 800A9C30 2508F690 */  addiu $t0, %lo(D_800DF690) # addiu $t0, $t0, -0x970
/* 051E84 800A9C34 8C780000 */  lw    $t8, ($v1)
/* 051E88 800A9C38 8FA5001C */  lw    $a1, 0x1c($sp)
/* 051E8C 800A9C3C 8FA60024 */  lw    $a2, 0x24($sp)
/* 051E90 800A9C40 0018C880 */  sll   $t9, $t8, 2
/* 051E94 800A9C44 03282021 */  addu  $a0, $t9, $t0
/* 051E98 800A9C48 AC850000 */  sw    $a1, ($a0)
.L800A9C4C_ovl1:
/* 051E9C 800A9C4C 8C6B0000 */  lw    $t3, ($v1)
/* 051EA0 800A9C50 8FA90028 */  lw    $t1, 0x28($sp)
/* 051EA4 800A9C54 3C01800E */  lui   $at, 0x800e
/* 051EA8 800A9C58 000B5080 */  sll   $t2, $t3, 2
/* 051EAC 800A9C5C 002A0821 */  addu  $at, $at, $t2
/* 051EB0 800A9C60 AC29FF50 */  sw    $t1, -0xb0($at)
.L800A9C64_ovl1:
/* 051EB4 800A9C64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 051EB8 800A9C68 27BD0028 */  addiu $sp, $sp, 0x28
/* 051EBC 800A9C6C 00C01025 */  move  $v0, $a2
/* 051EC0 800A9C70 03E00008 */  jr    $ra
/* 051EC4 800A9C74 00000000 */   nop   
.type func_800A9B48, @function
.size func_800A9B48, . - func_800A9B48
