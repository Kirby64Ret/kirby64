glabel func_800A8934
/* 050B84 800A8934 00047402 */  srl   $t6, $a0, 0x10
/* 050B88 800A8938 000E7880 */  sll   $t7, $t6, 2
/* 050B8C 800A893C 3C03800D */  lui   $v1, 0x800d
/* 050B90 800A8940 006F1821 */  addu  $v1, $v1, $t7
/* 050B94 800A8944 8C630184 */  lw    $v1, 0x184($v1)
/* 050B98 800A8948 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 050B9C 800A894C AFBF0014 */  sw    $ra, 0x14($sp)
/* 050BA0 800A8950 AFA5001C */  sw    $a1, 0x1c($sp)
/* 050BA4 800A8954 8C620008 */  lw    $v0, 8($v1)
/* 050BA8 800A8958 3084FFFF */  andi  $a0, $a0, 0xffff
/* 050BAC 800A895C 0004C080 */  sll   $t8, $a0, 2
/* 050BB0 800A8960 8C68000C */  lw    $t0, 0xc($v1)
/* 050BB4 800A8964 14C0000E */  bnez  $a2, .L800A89A0_ovl1
/* 050BB8 800A8968 00581021 */   addu  $v0, $v0, $t8
/* 050BBC 800A896C 8C430000 */  lw    $v1, ($v0)
/* 050BC0 800A8970 8C590004 */  lw    $t9, 4($v0)
/* 050BC4 800A8974 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 050BC8 800A8978 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 050BCC 800A897C 03233023 */  subu  $a2, $t9, $v1
/* 050BD0 800A8980 24C60003 */  addiu $a2, $a2, 3
/* 050BD4 800A8984 00C13024 */  and   $a2, $a2, $at
/* 050BD8 800A8988 00C53023 */  subu  $a2, $a2, $a1
/* 050BDC 800A898C 28C10010 */  slti  $at, $a2, 0x10
/* 050BE0 800A8990 50200009 */  beql  $at, $zero, .L800A89B8_ovl1
/* 050BE4 800A8994 8FAB001C */   lw    $t3, 0x1c($sp)
/* 050BE8 800A8998 1000000D */  b     .L800A89D0_ovl1
/* 050BEC 800A899C 2402FFFF */   li    $v0, -1
.L800A89A0_ovl1:
/* 050BF0 800A89A0 3C0100FF */  lui   $at, (0x00FFFFFC >> 16) # lui $at, 0xff
/* 050BF4 800A89A4 3421FFFC */  ori   $at, (0x00FFFFFC & 0xFFFF) # ori $at, $at, 0xfffc
/* 050BF8 800A89A8 24C60003 */  addiu $a2, $a2, 3
/* 050BFC 800A89AC 00C13024 */  and   $a2, $a2, $at
/* 050C00 800A89B0 8C430000 */  lw    $v1, ($v0)
/* 050C04 800A89B4 8FAB001C */  lw    $t3, 0x1c($sp)
.L800A89B8_ovl1:
/* 050C08 800A89B8 00685021 */  addu  $t2, $v1, $t0
/* 050C0C 800A89BC 00E02825 */  move  $a1, $a3
/* 050C10 800A89C0 AFA60020 */  sw    $a2, 0x20($sp)
/* 050C14 800A89C4 0C000B92 */  jal   dma_read
/* 050C18 800A89C8 014B2021 */   addu  $a0, $t2, $t3
/* 050C1C 800A89CC 8FA20020 */  lw    $v0, 0x20($sp)
.L800A89D0_ovl1:
/* 050C20 800A89D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050C24 800A89D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 050C28 800A89D8 03E00008 */  jr    $ra
/* 050C2C 800A89DC 00000000 */   nop   
.type func_800A8934, @function
.size func_800A8934, . - func_800A8934
