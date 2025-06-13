glabel func_800A89E0
/* 050C30 800A89E0 00047402 */  srl   $t6, $a0, 0x10
/* 050C34 800A89E4 000E7880 */  sll   $t7, $t6, 2
/* 050C38 800A89E8 3C02800D */  lui   $v0, 0x800d
/* 050C3C 800A89EC 004F1021 */  addu  $v0, $v0, $t7
/* 050C40 800A89F0 8C420184 */  lw    $v0, 0x184($v0)
/* 050C44 800A89F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 050C48 800A89F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 050C4C 800A89FC 8C430008 */  lw    $v1, 8($v0)
/* 050C50 800A8A00 8C58000C */  lw    $t8, 0xc($v0)
/* 050C54 800A8A04 3085FFFF */  andi  $a1, $a0, 0xffff
/* 050C58 800A8A08 0005C880 */  sll   $t9, $a1, 2
/* 050C5C 800A8A0C 00791821 */  addu  $v1, $v1, $t9
/* 050C60 800A8A10 AFB80018 */  sw    $t8, 0x18($sp)
/* 050C64 800A8A14 8C690000 */  lw    $t1, ($v1)
/* 050C68 800A8A18 8C680004 */  lw    $t0, 4($v1)
/* 050C6C 800A8A1C 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 050C70 800A8A20 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 050C74 800A8A24 01093823 */  subu  $a3, $t0, $t1
/* 050C78 800A8A28 24E70003 */  addiu $a3, $a3, 3
/* 050C7C 800A8A2C 00E12024 */  and   $a0, $a3, $at
/* 050C80 800A8A30 AFA40024 */  sw    $a0, 0x24($sp)
/* 050C84 800A8A34 0C02A13C */  jal   func_800A84F0
/* 050C88 800A8A38 AFA3001C */   sw    $v1, 0x1c($sp)
/* 050C8C 800A8A3C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 050C90 800A8A40 AFA20020 */  sw    $v0, 0x20($sp)
/* 050C94 800A8A44 8FA70024 */  lw    $a3, 0x24($sp)
/* 050C98 800A8A48 8FAB0018 */  lw    $t3, 0x18($sp)
/* 050C9C 800A8A4C 8C6A0000 */  lw    $t2, ($v1)
/* 050CA0 800A8A50 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 050CA4 800A8A54 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 050CA8 800A8A58 00402825 */  move  $a1, $v0
/* 050CAC 800A8A5C 00E13024 */  and   $a2, $a3, $at
/* 050CB0 800A8A60 0C000B92 */  jal   dma_read
/* 050CB4 800A8A64 014B2021 */   addu  $a0, $t2, $t3
/* 050CB8 800A8A68 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050CBC 800A8A6C 8FA20020 */  lw    $v0, 0x20($sp)
/* 050CC0 800A8A70 27BD0028 */  addiu $sp, $sp, 0x28
/* 050CC4 800A8A74 03E00008 */  jr    $ra
/* 050CC8 800A8A78 00000000 */   nop   
.type func_800A89E0, @function
.size func_800A89E0, . - func_800A89E0
