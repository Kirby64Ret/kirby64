glabel func_80153A18_ovl3
/* 0B4458 80153A18 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0B445C 80153A1C 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 0B4460 80153A20 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0B4464 80153A24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B4468 80153A28 8C830000 */  lw    $v1, ($a0)
/* 0B446C 80153A2C 3C0E800E */  lui   $t6, 0x800e
/* 0B4470 80153A30 3C05800F */  lui   $a1, %hi(D_800E8AE0) # $a1, 0x800f
/* 0B4474 80153A34 00031880 */  sll   $v1, $v1, 2
/* 0B4478 80153A38 01C37021 */  addu  $t6, $t6, $v1
/* 0B447C 80153A3C 8DCE0490 */  lw    $t6, 0x0490($t6)
/* 0B4480 80153A40 24A58AE0 */  addiu $a1, %lo(D_800E8AE0) # addiu $a1, $a1, -0x7520
/* 0B4484 80153A44 00A37821 */  addu  $t7, $a1, $v1
/* 0B4488 80153A48 15C0000B */  bnez  $t6, .L80153A78_ovl3
/* 0B448C 80153A4C 00000000 */   nop   
/* 0B4490 80153A50 ADE00000 */  sw    $zero, ($t7)
/* 0B4494 80153A54 8C830000 */  lw    $v1, ($a0)
/* 0B4498 80153A58 3C01800F */  lui   $at, 0x800f
/* 0B449C 80153A5C 00001025 */  move  $v0, $zero
/* 0B44A0 80153A60 00031880 */  sll   $v1, $v1, 2
/* 0B44A4 80153A64 00A3C021 */  addu  $t8, $a1, $v1
/* 0B44A8 80153A68 8F190000 */  lw    $t9, ($t8)
/* 0B44AC 80153A6C 00230821 */  addu  $at, $at, $v1
/* 0B44B0 80153A70 10000014 */  b     .L80153AC4_ovl3
/* 0B44B4 80153A74 AC398920 */   sw    $t9, -0x76e0($at)
.L80153A78_ovl3:
/* 0B44B8 80153A78 3C01800E */  lui   $at, 0x800e
/* 0B44BC 80153A7C 00230821 */  addu  $at, $at, $v1
/* 0B44C0 80153A80 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 0B44C4 80153A84 3C01800E */  lui   $at, 0x800e
/* 0B44C8 80153A88 E7A40020 */  swc1  $f4, 0x20($sp)
/* 0B44CC 80153A8C 8C880000 */  lw    $t0, ($a0)
/* 0B44D0 80153A90 00084880 */  sll   $t1, $t0, 2
/* 0B44D4 80153A94 00290821 */  addu  $at, $at, $t1
/* 0B44D8 80153A98 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0B44DC 80153A9C 3C01800E */  lui   $at, 0x800e
/* 0B44E0 80153AA0 E7A60024 */  swc1  $f6, 0x24($sp)
/* 0B44E4 80153AA4 8C8A0000 */  lw    $t2, ($a0)
/* 0B44E8 80153AA8 000A5880 */  sll   $t3, $t2, 2
/* 0B44EC 80153AAC 002B0821 */  addu  $at, $at, $t3
/* 0B44F0 80153AB0 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0B44F4 80153AB4 0C054A70 */  jal   func_801529C0_ovl3
/* 0B44F8 80153AB8 E7A80028 */   swc1  $f8, 0x28($sp)
/* 0B44FC 80153ABC 0C05510A */  jal   func_80154428_ovl3
/* 0B4500 80153AC0 27A40020 */   addiu $a0, $sp, 0x20
.L80153AC4_ovl3:
/* 0B4504 80153AC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B4508 80153AC8 27BD0030 */  addiu $sp, $sp, 0x30
/* 0B450C 80153ACC 03E00008 */  jr    $ra
/* 0B4510 80153AD0 00000000 */   nop   
.type func_80153A18_ovl3, @function
.size func_80153A18_ovl3, . - func_80153A18_ovl3
