glabel func_80208758_ovl9
/* 1B67A8 80208758 3C0E8005 */ lui $t6, %hi(D_8004A7C4)
/* 1B67AC 8020875C 8DCEA7C4 */ lw $t6, %lo(D_8004A7C4)($t6)
/* 1B67B0 80208760 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1B67B4 80208764 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1B67B8 80208768 AFA40020 */  sw    $a0, 0x20($sp)
/* 1B67BC 8020876C 8DCF0000 */  lw    $t7, ($t6)
/* 1B67C0 80208770 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 1B67C4 80208774 000FC080 */  sll   $t8, $t7, 2
/* 1B67C8 80208778 00581021 */  addu  $v0, $v0, $t8
/* 1B67CC 8020877C 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 1B67D0 80208780 8C430034 */  lw    $v1, 0x34($v0)
/* 1B67D4 80208784 10600005 */  beqz  $v1, .L8020879C_ovl9
/* 1B67D8 80208788 00602025 */   move  $a0, $v1
/* 1B67DC 8020878C 0C0288B5 */  jal   func_800A22D4
/* 1B67E0 80208790 AFA2001C */   sw    $v0, 0x1c($sp)
/* 1B67E4 80208794 8FA2001C */  lw    $v0, 0x1c($sp)
/* 1B67E8 80208798 AC400034 */  sw    $zero, 0x34($v0)
.L8020879C_ovl9:
/* 1B67EC 8020879C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1B67F0 802087A0 27BD0020 */  addiu $sp, $sp, 0x20
/* 1B67F4 802087A4 03E00008 */  jr    $ra
/* 1B67F8 802087A8 00000000 */   nop   
.type func_80208758_ovl9, @function
.size func_80208758_ovl9, . - func_80208758_ovl9
