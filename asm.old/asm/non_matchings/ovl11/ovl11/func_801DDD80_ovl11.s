glabel func_801DDD80_ovl11
/* 1E8640 801DDD80 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E8644 801DDD84 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1E8648 801DDD88 8CCE0000 */  lw    $t6, ($a2)
/* 1E864C 801DDD8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E8650 801DDD90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E8654 801DDD94 8DC30000 */  lw    $v1, ($t6)
/* 1E8658 801DDD98 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 1E865C 801DDD9C 3C04800E */ lui $a0, %hi(D_800DE350)
/* 1E8660 801DDDA0 00031880 */  sll   $v1, $v1, 2
/* 1E8664 801DDDA4 00431021 */  addu  $v0, $v0, $v1
/* 1E8668 801DDDA8 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 1E866C 801DDDAC 00832021 */  addu  $a0, $a0, $v1
/* 1E8670 801DDDB0 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1E8674 801DDDB4 240F0002 */  li    $t7, 2
/* 1E8678 801DDDB8 24180015 */  li    $t8, 21
/* 1E867C 801DDDBC 24190001 */  li    $t9, 1
/* 1E8680 801DDDC0 AC4F0070 */  sw    $t7, 0x70($v0)
/* 1E8684 801DDDC4 AC580068 */  sw    $t8, 0x68($v0)
/* 1E8688 801DDDC8 AC59006C */  sw    $t9, 0x6c($v0)
/* 1E868C 801DDDCC 8CC90000 */  lw    $t1, ($a2)
/* 1E8690 801DDDD0 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 1E8694 801DDDD4 24080001 */  li    $t0, 1
/* 1E8698 801DDDD8 8D2A0000 */  lw    $t2, ($t1)
/* 1E869C 801DDDDC 3C053F80 */  lui   $a1, 0x3f80
/* 1E86A0 801DDDE0 000A5880 */  sll   $t3, $t2, 2
/* 1E86A4 801DDDE4 002B0821 */  addu  $at, $at, $t3
/* 1E86A8 801DDDE8 0C076CAF */  jal   func_801DB2BC_ovl11
/* 1E86AC 801DDDEC AC28A1A0 */ sw $t0, %lo(D_800EA1A0)($at)
/* 1E86B0 801DDDF0 0C029D9E */  jal   play_sound
/* 1E86B4 801DDDF4 240401C9 */   li    $a0, 457
/* 1E86B8 801DDDF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E86BC 801DDDFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E86C0 801DDE00 03E00008 */  jr    $ra
/* 1E86C4 801DDE04 00000000 */   nop   
.type func_801DDD80_ovl11, @function
.size func_801DDD80_ovl11, . - func_801DDD80_ovl11
