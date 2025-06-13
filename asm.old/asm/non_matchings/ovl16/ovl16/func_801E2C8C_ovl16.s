glabel func_801E2C8C_ovl16
/* 218F3C 801E2C8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 218F40 801E2C90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 218F44 801E2C94 0C077CC5 */  jal   func_801DF314_ovl16
/* 218F48 801E2C98 AFA40018 */   sw    $a0, 0x18($sp)
/* 218F4C 801E2C9C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 218F50 801E2CA0 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 218F54 801E2CA4 8CE30000 */  lw    $v1, ($a3)
/* 218F58 801E2CA8 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 218F5C 801E2CAC 24A5A6E0 */  addiu $a1, %lo(D_800EA6E0) # addiu $a1, $a1, -0x5920
/* 218F60 801E2CB0 8C620000 */  lw    $v0, ($v1)
/* 218F64 801E2CB4 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 218F68 801E2CB8 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 218F6C 801E2CBC 00021080 */  sll   $v0, $v0, 2
/* 218F70 801E2CC0 00A22021 */  addu  $a0, $a1, $v0
/* 218F74 801E2CC4 00220821 */  addu  $at, $at, $v0
/* 218F78 801E2CC8 C426A8A0 */ lwc1 $f6, %lo(D_800EA8A0)($at)
/* 218F7C 801E2CCC C4840000 */  lwc1  $f4, ($a0)
/* 218F80 801E2CD0 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 218F84 801E2CD4 3C01800F */ lui $at, %hi(D_800E8920)
/* 218F88 801E2CD8 46062200 */  add.s $f8, $f4, $f6
/* 218F8C 801E2CDC E4880000 */  swc1  $f8, ($a0)
/* 218F90 801E2CE0 8C620000 */  lw    $v0, ($v1)
/* 218F94 801E2CE4 00021080 */  sll   $v0, $v0, 2
/* 218F98 801E2CE8 00C27821 */  addu  $t7, $a2, $v0
/* 218F9C 801E2CEC 8DF80000 */  lw    $t8, ($t7)
/* 218FA0 801E2CF0 00A27021 */  addu  $t6, $a1, $v0
/* 218FA4 801E2CF4 C5CA0000 */  lwc1  $f10, ($t6)
/* 218FA8 801E2CF8 8F190010 */  lw    $t9, 0x10($t8)
/* 218FAC 801E2CFC E72A0040 */  swc1  $f10, 0x40($t9)
/* 218FB0 801E2D00 8CE80000 */  lw    $t0, ($a3)
/* 218FB4 801E2D04 8D020000 */  lw    $v0, ($t0)
/* 218FB8 801E2D08 00021080 */  sll   $v0, $v0, 2
/* 218FBC 801E2D0C 00C25021 */  addu  $t2, $a2, $v0
/* 218FC0 801E2D10 8D4B0000 */  lw    $t3, ($t2)
/* 218FC4 801E2D14 00A24821 */  addu  $t1, $a1, $v0
/* 218FC8 801E2D18 C5300000 */  lwc1  $f16, ($t1)
/* 218FCC 801E2D1C 8D6C0010 */  lw    $t4, 0x10($t3)
/* 218FD0 801E2D20 E5900048 */  swc1  $f16, 0x48($t4)
/* 218FD4 801E2D24 8CED0000 */  lw    $t5, ($a3)
/* 218FD8 801E2D28 8DAE0000 */  lw    $t6, ($t5)
/* 218FDC 801E2D2C 000E7880 */  sll   $t7, $t6, 2
/* 218FE0 801E2D30 002F0821 */  addu  $at, $at, $t7
/* 218FE4 801E2D34 0C076D00 */  jal   func_801DB400_ovl16
/* 218FE8 801E2D38 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 218FEC 801E2D3C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 218FF0 801E2D40 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 218FF4 801E2D44 8CF90000 */  lw    $t9, ($a3)
/* 218FF8 801E2D48 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 218FFC 801E2D4C 3C18801E */  lui   $t8, %hi(D_801D972C) # $t8, 0x801e
/* 219000 801E2D50 8F280000 */  lw    $t0, ($t9)
/* 219004 801E2D54 2718972C */  addiu $t8, %lo(D_801D972C) # addiu $t8, $t8, -0x68d4
/* 219008 801E2D58 00002025 */  move  $a0, $zero
/* 21900C 801E2D5C 00084880 */  sll   $t1, $t0, 2
/* 219010 801E2D60 01495021 */  addu  $t2, $t2, $t1
/* 219014 801E2D64 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 219018 801E2D68 00002825 */  move  $a1, $zero
/* 21901C 801E2D6C 00003025 */  move  $a2, $zero
/* 219020 801E2D70 0C0770C5 */  jal   func_801DC314_ovl16
/* 219024 801E2D74 AD58008C */   sw    $t8, 0x8c($t2)
/* 219028 801E2D78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21902C 801E2D7C 27BD0018 */  addiu $sp, $sp, 0x18
/* 219030 801E2D80 03E00008 */  jr    $ra
/* 219034 801E2D84 00000000 */   nop   
.type func_801E2C8C_ovl16, @function
.size func_801E2C8C_ovl16, . - func_801E2C8C_ovl16
