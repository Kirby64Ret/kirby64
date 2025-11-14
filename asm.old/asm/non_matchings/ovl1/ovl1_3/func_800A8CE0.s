glabel func_800A8CE0
/* 050F30 800A8CE0 00047402 */  srl   $t6, $a0, 0x10
/* 050F34 800A8CE4 000E7880 */  sll   $t7, $t6, 2
/* 050F38 800A8CE8 3C18800D */  lui   $t8, 0x800d
/* 050F3C 800A8CEC 030FC021 */  addu  $t8, $t8, $t7
/* 050F40 800A8CF0 8F180184 */  lw    $t8, 0x184($t8)
/* 050F44 800A8CF4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 050F48 800A8CF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 050F4C 800A8CFC 8F020000 */  lw    $v0, ($t8)
/* 050F50 800A8D00 3086FFFF */  andi  $a2, $a0, 0xffff
/* 050F54 800A8D04 00063040 */  sll   $a2, $a2, 1
/* 050F58 800A8D08 0006C880 */  sll   $t9, $a2, 2
/* 050F5C 800A8D0C 00591821 */  addu  $v1, $v0, $t9
/* 050F60 800A8D10 8C680004 */  lw    $t0, 4($v1)
/* 050F64 800A8D14 8C690000 */  lw    $t1, ($v1)
/* 050F68 800A8D18 AFA3001C */  sw    $v1, 0x1c($sp)
/* 050F6C 800A8D1C 01095023 */  subu  $t2, $t0, $t1
/* 050F70 800A8D20 01452025 */  or    $a0, $t2, $a1
/* 050F74 800A8D24 0C02A0D6 */  jal   func_800A8358
/* 050F78 800A8D28 AFA4002C */   sw    $a0, 0x2c($sp)
/* 050F7C 800A8D2C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 050F80 800A8D30 8FA7002C */  lw    $a3, 0x2c($sp)
/* 050F84 800A8D34 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 050F88 800A8D38 AFA20020 */  sw    $v0, 0x20($sp)
/* 050F8C 800A8D3C 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 050F90 800A8D40 00402825 */  move  $a1, $v0
/* 050F94 800A8D44 8C640000 */  lw    $a0, ($v1)
/* 050F98 800A8D48 0C000B92 */  jal   dma_read
/* 050F9C 800A8D4C 00E13024 */   and   $a2, $a3, $at
/* 050FA0 800A8D50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050FA4 800A8D54 8FA20020 */  lw    $v0, 0x20($sp)
/* 050FA8 800A8D58 27BD0030 */  addiu $sp, $sp, 0x30
/* 050FAC 800A8D5C 03E00008 */  jr    $ra
/* 050FB0 800A8D60 00000000 */   nop   
.type func_800A8CE0, @function
.size func_800A8CE0, . - func_800A8CE0
