glabel func_80153D10
/* 1380A0 80153D10 3C0E8016 */  lui   $t6, %hi(D_8015A690) # $t6, 0x8016
/* 1380A4 80153D14 8DCEA690 */  lw    $t6, %lo(D_8015A690)($t6)
/* 1380A8 80153D18 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1380AC 80153D1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1380B0 80153D20 15C0000E */  bnez  $t6, .L80153D5C_ovl6
/* 1380B4 80153D24 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1380B8 80153D28 3C18800E */  lui   $t8, %hi(D_800DE44C) # $t8, 0x800e
/* 1380BC 80153D2C 8F18E44C */  lw    $t8, %lo(D_800DE44C)($t8)
/* 1380C0 80153D30 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 1380C4 80153D34 8C4F0000 */  lw    $t7, ($v0)
/* 1380C8 80153D38 3C198016 */  lui   $t9, %hi(D_8015A560) # $t9, 0x8016
/* 1380CC 80153D3C AC580000 */  sw    $t8, ($v0)
/* 1380D0 80153D40 8F39A560 */  lw    $t9, %lo(D_8015A560)($t9)
/* 1380D4 80153D44 AFAF001C */  sw    $t7, 0x1c($sp)
/* 1380D8 80153D48 0C02A806 */  jal   func_800AA018
/* 1380DC 80153D4C 8F240004 */   lw    $a0, 4($t9)
/* 1380E0 80153D50 8FA8001C */  lw    $t0, 0x1c($sp)
/* 1380E4 80153D54 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 1380E8 80153D58 AC28A7C4 */  sw    $t0, %lo(D_8004A7C4)($at)
.L80153D5C_ovl6:
/* 1380EC 80153D5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1380F0 80153D60 27BD0020 */  addiu $sp, $sp, 0x20
/* 1380F4 80153D64 03E00008 */  jr    $ra
/* 1380F8 80153D68 00000000 */   nop   
.type func_80153D10, @function
.size func_80153D10, . - func_80153D10
