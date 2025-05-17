glabel func_8015849C_ovl3
/* 0B8EDC 8015849C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0B8EE0 801584A0 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0B8EE4 801584A4 240E00B4 */  li    $t6, 180
/* 0B8EE8 801584A8 240F0002 */  li    $t7, 2
/* 0B8EEC 801584AC AC4E002C */  sw    $t6, 0x2c($v0)
/* 0B8EF0 801584B0 AC4F003C */  sw    $t7, 0x3c($v0)
/* 0B8EF4 801584B4 3C018019 */  lui   $at, %hi(D_80196F60) # $at, 0x8019
/* 0B8EF8 801584B8 C4246F60 */  lwc1  $f4, %lo(D_80196F60)($at)
/* 0B8EFC 801584BC 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0B8F00 801584C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B8F04 801584C4 E4440040 */  swc1  $f4, 0x40($v0)
/* 0B8F08 801584C8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0B8F0C 801584CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B8F10 801584D0 3C01800E */  lui   $at, 0x800e
/* 0B8F14 801584D4 8F280000 */  lw    $t0, ($t9)
/* 0B8F18 801584D8 24180046 */  li    $t8, 70
/* 0B8F1C 801584DC 3C058015 */  lui   $a1, %hi(D_80157F18) # $a1, 0x8015
/* 0B8F20 801584E0 00084880 */  sll   $t1, $t0, 2
/* 0B8F24 801584E4 00290821 */  addu  $at, $at, $t1
/* 0B8F28 801584E8 AC38DFD0 */  sw    $t8, -0x2030($at)
/* 0B8F2C 801584EC 24A57F18 */  addiu $a1, %lo(D_80157F18) # addiu $a1, $a1, 0x7f18
/* 0B8F30 801584F0 0C056053 */  jal   func_8015814C_ovl3
/* 0B8F34 801584F4 3C06BF80 */   lui   $a2, 0xbf80
/* 0B8F38 801584F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B8F3C 801584FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B8F40 80158500 03E00008 */  jr    $ra
/* 0B8F44 80158504 00000000 */   nop   
.type func_8015849C_ovl3, @function
.size func_8015849C_ovl3, . - func_8015849C_ovl3
