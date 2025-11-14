glabel func_80155D50_ovl3
/* 0B6790 80155D50 00071080 */  sll   $v0, $a3, 2
/* 0B6794 80155D54 3C01800E */  lui   $at, 0x800e
/* 0B6798 80155D58 00220821 */  addu  $at, $at, $v0
/* 0B679C 80155D5C C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 0B67A0 80155D60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B67A4 80155D64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B67A8 80155D68 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0B67AC 80155D6C 3C01800E */  lui   $at, 0x800e
/* 0B67B0 80155D70 00220821 */  addu  $at, $at, $v0
/* 0B67B4 80155D74 E4840000 */  swc1  $f4, ($a0)
/* 0B67B8 80155D78 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0B67BC 80155D7C 3C01800E */  lui   $at, 0x800e
/* 0B67C0 80155D80 00220821 */  addu  $at, $at, $v0
/* 0B67C4 80155D84 E4860004 */  swc1  $f6, 4($a0)
/* 0B67C8 80155D88 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0B67CC 80155D8C 3C01800E */  lui   $at, 0x800e
/* 0B67D0 80155D90 00220821 */  addu  $at, $at, $v0
/* 0B67D4 80155D94 E4880008 */  swc1  $f8, 8($a0)
/* 0B67D8 80155D98 C42A2B10 */  lwc1  $f10, 0x2b10($at)
/* 0B67DC 80155D9C 3C01800E */  lui   $at, 0x800e
/* 0B67E0 80155DA0 00220821 */  addu  $at, $at, $v0
/* 0B67E4 80155DA4 E48A000C */  swc1  $f10, 0xc($a0)
/* 0B67E8 80155DA8 C4302CD0 */  lwc1  $f16, 0x2cd0($at)
/* 0B67EC 80155DAC 3C01800E */  lui   $at, 0x800e
/* 0B67F0 80155DB0 00220821 */  addu  $at, $at, $v0
/* 0B67F4 80155DB4 E4900010 */  swc1  $f16, 0x10($a0)
/* 0B67F8 80155DB8 C4322E90 */  lwc1  $f18, 0x2e90($at)
/* 0B67FC 80155DBC 3C01800E */  lui   $at, 0x800e
/* 0B6800 80155DC0 00220821 */  addu  $at, $at, $v0
/* 0B6804 80155DC4 E4920014 */  swc1  $f18, 0x14($a0)
/* 0B6808 80155DC8 C42441D0 */  lwc1  $f4, 0x41d0($at)
/* 0B680C 80155DCC 00C02825 */  move  $a1, $a2
/* 0B6810 80155DD0 E4840018 */  swc1  $f4, 0x18($a0)
/* 0B6814 80155DD4 8FAE001C */  lw    $t6, 0x1c($sp)
/* 0B6818 80155DD8 0C046FD3 */  jal   func_8011BF4C
/* 0B681C 80155DDC AC8E001C */   sw    $t6, 0x1c($a0)
/* 0B6820 80155DE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B6824 80155DE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B6828 80155DE8 03E00008 */  jr    $ra
/* 0B682C 80155DEC 00000000 */   nop   
.type func_80155D50_ovl3, @function
.size func_80155D50_ovl3, . - func_80155D50_ovl3
