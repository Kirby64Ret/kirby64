glabel func_801EB9DC_ovl10
/* 1DC74C 801EB9DC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DC750 801EB9E0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DC754 801EB9E4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1DC758 801EB9E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DC75C 801EB9EC AFA40028 */  sw    $a0, 0x28($sp)
/* 1DC760 801EB9F0 8DCF0000 */  lw    $t7, ($t6)
/* 1DC764 801EB9F4 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 1DC768 801EB9F8 3C018000 */  lui   $at, 0x8000
/* 1DC76C 801EB9FC 000FC080 */  sll   $t8, $t7, 2
/* 1DC770 801EBA00 00581021 */  addu  $v0, $v0, $t8
/* 1DC774 801EBA04 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 1DC778 801EBA08 8C430094 */  lw    $v1, 0x94($v0)
/* 1DC77C 801EBA0C 8C65001C */  lw    $a1, 0x1c($v1)
/* 1DC780 801EBA10 10A10005 */  beq   $a1, $at, .L801EBA28_ovl10
/* 1DC784 801EBA14 00A02025 */   move  $a0, $a1
/* 1DC788 801EBA18 0C029D9E */  jal   play_sound
/* 1DC78C 801EBA1C AFA20024 */   sw    $v0, 0x24($sp)
/* 1DC790 801EBA20 8FA20024 */  lw    $v0, 0x24($sp)
/* 1DC794 801EBA24 8C430094 */  lw    $v1, 0x94($v0)
.L801EBA28_ovl10:
/* 1DC798 801EBA28 8C590088 */  lw    $t9, 0x88($v0)
/* 1DC79C 801EBA2C 44800000 */  mtc1  $zero, $f0
/* 1DC7A0 801EBA30 8C650018 */  lw    $a1, 0x18($v1)
/* 1DC7A4 801EBA34 8F280010 */  lw    $t0, 0x10($t9)
/* 1DC7A8 801EBA38 44060000 */  mfc1  $a2, $f0
/* 1DC7AC 801EBA3C 00002025 */  move  $a0, $zero
/* 1DC7B0 801EBA40 8D070000 */  lw    $a3, ($t0)
/* 1DC7B4 801EBA44 AFA20024 */  sw    $v0, 0x24($sp)
/* 1DC7B8 801EBA48 0C03F55C */  jal   func_800FD570
/* 1DC7BC 801EBA4C E7A00010 */   swc1  $f0, 0x10($sp)
/* 1DC7C0 801EBA50 8FA20024 */  lw    $v0, 0x24($sp)
/* 1DC7C4 801EBA54 24090001 */  li    $t1, 1
/* 1DC7C8 801EBA58 A0490040 */  sb    $t1, 0x40($v0)
/* 1DC7CC 801EBA5C 0C068FA0 */  jal   D_801A3E80_ovl10
/* 1DC7D0 801EBA60 8FA40028 */   lw    $a0, 0x28($sp)
/* 1DC7D4 801EBA64 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DC7D8 801EBA68 27BD0028 */  addiu $sp, $sp, 0x28
/* 1DC7DC 801EBA6C 03E00008 */  jr    $ra
/* 1DC7E0 801EBA70 00000000 */   nop   
.type func_801EB9DC_ovl10, @function
.size func_801EB9DC_ovl10, . - func_801EB9DC_ovl10
