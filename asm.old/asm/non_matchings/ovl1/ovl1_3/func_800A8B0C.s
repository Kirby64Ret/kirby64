glabel func_800A8B0C
/* 050D5C 800A8B0C 00047402 */  srl   $t6, $a0, 0x10
/* 050D60 800A8B10 000E7880 */  sll   $t7, $t6, 2
/* 050D64 800A8B14 3C02800D */  lui   $v0, 0x800d
/* 050D68 800A8B18 004F1021 */  addu  $v0, $v0, $t7
/* 050D6C 800A8B1C 8C420184 */  lw    $v0, 0x184($v0)
/* 050D70 800A8B20 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 050D74 800A8B24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 050D78 800A8B28 8C430008 */  lw    $v1, 8($v0)
/* 050D7C 800A8B2C 8C58000C */  lw    $t8, 0xc($v0)
/* 050D80 800A8B30 3086FFFF */  andi  $a2, $a0, 0xffff
/* 050D84 800A8B34 0006C880 */  sll   $t9, $a2, 2
/* 050D88 800A8B38 00791821 */  addu  $v1, $v1, $t9
/* 050D8C 800A8B3C AFB80018 */  sw    $t8, 0x18($sp)
/* 050D90 800A8B40 8C690000 */  lw    $t1, ($v1)
/* 050D94 800A8B44 8C680004 */  lw    $t0, 4($v1)
/* 050D98 800A8B48 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 050D9C 800A8B4C 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 050DA0 800A8B50 01093823 */  subu  $a3, $t0, $t1
/* 050DA4 800A8B54 24E70003 */  addiu $a3, $a3, 3
/* 050DA8 800A8B58 00E13824 */  and   $a3, $a3, $at
/* 050DAC 800A8B5C 00E52025 */  or    $a0, $a3, $a1
/* 050DB0 800A8B60 AFA70024 */  sw    $a3, 0x24($sp)
/* 050DB4 800A8B64 0C02A0D6 */  jal   func_800A8358
/* 050DB8 800A8B68 AFA3001C */   sw    $v1, 0x1c($sp)
/* 050DBC 800A8B6C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 050DC0 800A8B70 AFA20020 */  sw    $v0, 0x20($sp)
/* 050DC4 800A8B74 8FA70024 */  lw    $a3, 0x24($sp)
/* 050DC8 800A8B78 8FAB0018 */  lw    $t3, 0x18($sp)
/* 050DCC 800A8B7C 8C6A0000 */  lw    $t2, ($v1)
/* 050DD0 800A8B80 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 050DD4 800A8B84 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 050DD8 800A8B88 00402825 */  move  $a1, $v0
/* 050DDC 800A8B8C 00E13024 */  and   $a2, $a3, $at
/* 050DE0 800A8B90 0C000B92 */  jal   dma_read
/* 050DE4 800A8B94 014B2021 */   addu  $a0, $t2, $t3
/* 050DE8 800A8B98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050DEC 800A8B9C 8FA20020 */  lw    $v0, 0x20($sp)
/* 050DF0 800A8BA0 27BD0028 */  addiu $sp, $sp, 0x28
/* 050DF4 800A8BA4 03E00008 */  jr    $ra
/* 050DF8 800A8BA8 00000000 */   nop   
.type func_800A8B0C, @function
.size func_800A8B0C, . - func_800A8B0C
