glabel func_801585A0_ovl3
/* 0B8FE0 801585A0 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0B8FE4 801585A4 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0B8FE8 801585A8 240E0001 */  li    $t6, 1
/* 0B8FEC 801585AC AC4E003C */  sw    $t6, 0x3c($v0)
/* 0B8FF0 801585B0 3C018019 */  lui   $at, %hi(D_80196F64) # $at, 0x8019
/* 0B8FF4 801585B4 C4246F64 */  lwc1  $f4, %lo(D_80196F64)($at)
/* 0B8FF8 801585B8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0B8FFC 801585BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B9000 801585C0 E4440040 */  swc1  $f4, 0x40($v0)
/* 0B9004 801585C4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0B9008 801585C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B900C 801585CC 3C01800E */  lui   $at, 0x800e
/* 0B9010 801585D0 8F190000 */  lw    $t9, ($t8)
/* 0B9014 801585D4 240F004F */  li    $t7, 79
/* 0B9018 801585D8 3C058015 */  lui   $a1, %hi(D_80157F18) # $a1, 0x8015
/* 0B901C 801585DC 00194080 */  sll   $t0, $t9, 2
/* 0B9020 801585E0 00280821 */  addu  $at, $at, $t0
/* 0B9024 801585E4 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 0B9028 801585E8 24A57F18 */  addiu $a1, %lo(D_80157F18) # addiu $a1, $a1, 0x7f18
/* 0B902C 801585EC 0C056053 */  jal   func_8015814C_ovl3
/* 0B9030 801585F0 3C063F80 */   lui   $a2, 0x3f80
/* 0B9034 801585F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B9038 801585F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B903C 801585FC 03E00008 */  jr    $ra
/* 0B9040 80158600 00000000 */   nop   
.type func_801585A0_ovl3, @function
.size func_801585A0_ovl3, . - func_801585A0_ovl3
