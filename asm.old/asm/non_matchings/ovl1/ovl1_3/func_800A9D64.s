glabel func_800A9D64
/* 051FB4 800A9D64 3C0E800E */  lui   $t6, %hi(D_800DF690) # $t6, 0x800e
/* 051FB8 800A9D68 25CEF690 */  addiu $t6, %lo(D_800DF690) # addiu $t6, $t6, -0x970
/* 051FBC 800A9D6C 00041080 */  sll   $v0, $a0, 2
/* 051FC0 800A9D70 004E1821 */  addu  $v1, $v0, $t6
/* 051FC4 800A9D74 8C650000 */  lw    $a1, ($v1)
/* 051FC8 800A9D78 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 051FCC 800A9D7C 2406FFFF */  li    $a2, -1
/* 051FD0 800A9D80 10C50009 */  beq   $a2, $a1, .L800A9DA8_ovl1
/* 051FD4 800A9D84 AFBF0014 */   sw    $ra, 0x14($sp)
/* 051FD8 800A9D88 34A40002 */  ori   $a0, $a1, 2
/* 051FDC 800A9D8C AFA2001C */  sw    $v0, 0x1c($sp)
/* 051FE0 800A9D90 0C02A15E */  jal   func_800A8578
/* 051FE4 800A9D94 AFA30018 */   sw    $v1, 0x18($sp)
/* 051FE8 800A9D98 8FA30018 */  lw    $v1, 0x18($sp)
/* 051FEC 800A9D9C 2406FFFF */  li    $a2, -1
/* 051FF0 800A9DA0 8FA2001C */  lw    $v0, 0x1c($sp)
/* 051FF4 800A9DA4 AC660000 */  sw    $a2, ($v1)
.L800A9DA8_ovl1:
/* 051FF8 800A9DA8 3C0F800E */  lui   $t7, %hi(D_800DF850) # $t7, 0x800e
/* 051FFC 800A9DAC 25EFF850 */  addiu $t7, %lo(D_800DF850) # addiu $t7, $t7, -0x7b0
/* 052000 800A9DB0 004F1821 */  addu  $v1, $v0, $t7
/* 052004 800A9DB4 8C650000 */  lw    $a1, ($v1)
/* 052008 800A9DB8 10C50006 */  beq   $a2, $a1, .L800A9DD4_ovl1
/* 05200C 800A9DBC 34A40002 */   ori   $a0, $a1, 2
/* 052010 800A9DC0 0C02A15E */  jal   func_800A8578
/* 052014 800A9DC4 AFA30018 */   sw    $v1, 0x18($sp)
/* 052018 800A9DC8 8FA30018 */  lw    $v1, 0x18($sp)
/* 05201C 800A9DCC 2406FFFF */  li    $a2, -1
/* 052020 800A9DD0 AC660000 */  sw    $a2, ($v1)
.L800A9DD4_ovl1:
/* 052024 800A9DD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 052028 800A9DD8 27BD0020 */  addiu $sp, $sp, 0x20
/* 05202C 800A9DDC 03E00008 */  jr    $ra
/* 052030 800A9DE0 00000000 */   nop   
.type func_800A9D64, @function
.size func_800A9D64, . - func_800A9D64
