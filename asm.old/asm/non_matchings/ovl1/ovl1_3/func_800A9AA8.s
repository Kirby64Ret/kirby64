glabel func_800A9AA8
/* 051CF8 800A9AA8 00047402 */  srl   $t6, $a0, 0x10
/* 051CFC 800A9AAC 000E7880 */  sll   $t7, $t6, 2
/* 051D00 800A9AB0 3C02800D */ lui $v0, %hi(D_800D0184)
/* 051D04 800A9AB4 004F1021 */  addu  $v0, $v0, $t7
/* 051D08 800A9AB8 8C420184 */ lw $v0, %lo(D_800D0184)($v0)
/* 051D0C 800A9ABC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 051D10 800A9AC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 051D14 800A9AC4 8C430018 */  lw    $v1, 0x18($v0)
/* 051D18 800A9AC8 8C58001C */  lw    $t8, 0x1c($v0)
/* 051D1C 800A9ACC 3086FFFF */  andi  $a2, $a0, 0xffff
/* 051D20 800A9AD0 0006C880 */  sll   $t9, $a2, 2
/* 051D24 800A9AD4 00791821 */  addu  $v1, $v1, $t9
/* 051D28 800A9AD8 AFB80018 */  sw    $t8, 0x18($sp)
/* 051D2C 800A9ADC 8C690000 */  lw    $t1, ($v1)
/* 051D30 800A9AE0 8C680004 */  lw    $t0, 4($v1)
/* 051D34 800A9AE4 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 051D38 800A9AE8 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 051D3C 800A9AEC 01093823 */  subu  $a3, $t0, $t1
/* 051D40 800A9AF0 24E70003 */  addiu $a3, $a3, 3
/* 051D44 800A9AF4 00E13824 */  and   $a3, $a3, $at
/* 051D48 800A9AF8 00E52025 */  or    $a0, $a3, $a1
/* 051D4C 800A9AFC AFA70024 */  sw    $a3, 0x24($sp)
/* 051D50 800A9B00 0C02A0D6 */  jal   func_800A8358
/* 051D54 800A9B04 AFA3001C */   sw    $v1, 0x1c($sp)
/* 051D58 800A9B08 8FA3001C */  lw    $v1, 0x1c($sp)
/* 051D5C 800A9B0C AFA20020 */  sw    $v0, 0x20($sp)
/* 051D60 800A9B10 8FA70024 */  lw    $a3, 0x24($sp)
/* 051D64 800A9B14 8FAB0018 */  lw    $t3, 0x18($sp)
/* 051D68 800A9B18 8C6A0000 */  lw    $t2, ($v1)
/* 051D6C 800A9B1C 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 051D70 800A9B20 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 051D74 800A9B24 00402825 */  move  $a1, $v0
/* 051D78 800A9B28 00E13024 */  and   $a2, $a3, $at
/* 051D7C 800A9B2C 0C000B92 */  jal   dma_read
/* 051D80 800A9B30 014B2021 */   addu  $a0, $t2, $t3
/* 051D84 800A9B34 8FBF0014 */  lw    $ra, 0x14($sp)
/* 051D88 800A9B38 8FA20020 */  lw    $v0, 0x20($sp)
/* 051D8C 800A9B3C 27BD0028 */  addiu $sp, $sp, 0x28
/* 051D90 800A9B40 03E00008 */  jr    $ra
/* 051D94 800A9B44 00000000 */   nop   
.type func_800A9AA8, @function
.size func_800A9AA8, . - func_800A9AA8
