glabel func_800A194C
/* 049B9C 800A194C 3C04800D */  lui   $a0, %hi(D_800D6A08) # $a0, 0x800d
/* 049BA0 800A1950 24846A08 */  addiu $a0, %lo(D_800D6A08) # addiu $a0, $a0, 0x6a08
/* 049BA4 800A1954 8C830000 */  lw    $v1, ($a0)
/* 049BA8 800A1958 3C05800D */  lui   $a1, %hi(D_800D6AE2) # $a1, 0x800d
/* 049BAC 800A195C 24A56AE2 */  addiu $a1, %lo(D_800D6AE2) # addiu $a1, $a1, 0x6ae2
/* 049BB0 800A1960 14600003 */  bnez  $v1, .L800A1970_ovl1
/* 049BB4 800A1964 3C06800D */   lui   $a2, %hi(D_800D6AE8)
/* 049BB8 800A1968 03E00008 */  jr    $ra
/* 049BBC 800A196C 00001025 */   move  $v0, $zero
.type func_800A194C, @function

.L800A1970_ovl1:
/* 049BC0 800A1970 94AE0000 */  lhu   $t6, ($a1)
/* 049BC4 800A1974 24C66AE8 */  addiu $a2, $a2, %lo(D_800D6AE8)
/* 049BC8 800A1978 94D80000 */  lhu   $t8, ($a2)
/* 049BCC 800A197C 25CF0001 */  addiu $t7, $t6, 1
/* 049BD0 800A1980 31E2FFFF */  andi  $v0, $t7, 0xffff
/* 049BD4 800A1984 0302082A */  slt   $at, $t8, $v0
/* 049BD8 800A1988 10200002 */  beqz  $at, .L800A1994_ovl1
/* 049BDC 800A198C A4AF0000 */   sh    $t7, ($a1)
/* 049BE0 800A1990 A4C20000 */  sh    $v0, ($a2)
.L800A1994_ovl1:
/* 049BE4 800A1994 3C02800D */  lui   $v0, %hi(D_800D6A0C) # $v0, 0x800d
/* 049BE8 800A1998 8C790000 */  lw    $t9, ($v1)
/* 049BEC 800A199C 24426A0C */  addiu $v0, %lo(D_800D6A0C) # addiu $v0, $v0, 0x6a0c
/* 049BF0 800A19A0 8C480000 */  lw    $t0, ($v0)
/* 049BF4 800A19A4 3C05800D */  lui   $a1, %hi(D_800D6AF0) # $a1, 0x800d
/* 049BF8 800A19A8 AC990000 */  sw    $t9, ($a0)
/* 049BFC 800A19AC 24A56AF0 */  addiu $a1, %lo(D_800D6AF0) # addiu $a1, $a1, 0x6af0
/* 049C00 800A19B0 AC680000 */  sw    $t0, ($v1)
/* 049C04 800A19B4 8CA90000 */  lw    $t1, ($a1)
/* 049C08 800A19B8 3C04800C */  lui   $a0, %hi(D_800BE3E8) # $a0, 0x800c
/* 049C0C 800A19BC AC430000 */  sw    $v1, ($v0)
/* 049C10 800A19C0 15200002 */  bnez  $t1, .L800A19CC_ovl1
/* 049C14 800A19C4 2484E3E8 */   addiu $a0, %lo(D_800BE3E8) # addiu $a0, $a0, -0x1c18
/* 049C18 800A19C8 ACA30000 */  sw    $v1, ($a1)
.L800A19CC_ovl1:
/* 049C1C 800A19CC 948A0000 */  lhu   $t2, ($a0)
/* 049C20 800A19D0 00601025 */  move  $v0, $v1
/* 049C24 800A19D4 254C0001 */  addiu $t4, $t2, 1
/* 049C28 800A19D8 A48C0000 */  sh    $t4, ($a0)
/* 049C2C 800A19DC A46C0004 */  sh    $t4, 4($v1)
/* 049C30 800A19E0 AC60004C */  sw    $zero, 0x4c($v1)
/* 049C34 800A19E4 03E00008 */  jr    $ra
/* 049C38 800A19E8 00000000 */   nop   
.type func_800A194C, @function
.size func_800A194C, . - func_800A194C
