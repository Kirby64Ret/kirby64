glabel func_80219CE8_ovl9
/* 1C7D38 80219CE8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C7D3C 80219CEC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C7D40 80219CF0 3C0F800E */  lui        $t7, %hi(D_800E0D50)
/* 1C7D44 80219CF4 3C19800E */  lui        $t9, %hi(D_800DD710)
/* 1C7D48 80219CF8 8DC20000 */  lw         $v0, 0x0($t6)
/* 1C7D4C 80219CFC 2401FFFF */  addiu      $at, $zero, -0x1
/* 1C7D50 80219D00 00021080 */  sll        $v0, $v0, 2
/* 1C7D54 80219D04 01E27821 */  addu       $t7, $t7, $v0
/* 1C7D58 80219D08 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
/* 1C7D5C 80219D0C 000FC080 */  sll        $t8, $t7, 2
/* 1C7D60 80219D10 0338C821 */  addu       $t9, $t9, $t8
/* 1C7D64 80219D14 8F39D710 */  lw         $t9, %lo(D_800DD710)($t9)
/* 1C7D68 80219D18 17210003 */  bne        $t9, $at, .L80219D28_ovl9
/* 1C7D6C 80219D1C 00000000 */   nop
/* 1C7D70 80219D20 03E00008 */  jr         $ra
/* 1C7D74 80219D24 00001025 */   or        $v0, $zero, $zero
.L80219D28_ovl9:
/* 1C7D78 80219D28 3C018022 */  lui        $at, %hi(D_8021DEC4_ovl9)
/* 1C7D7C 80219D2C C422DEC4 */  lwc1       $f2, %lo(D_8021DEC4_ovl9)($at)
/* 1C7D80 80219D30 3C01800F */  lui        $at, %hi(D_800EC660)
/* 1C7D84 80219D34 00220821 */  addu       $at, $at, $v0
/* 1C7D88 80219D38 C420C660 */  lwc1       $f0, %lo(D_800EC660)($at)
/* 1C7D8C 80219D3C 3C018022 */  lui        $at, %hi(D_8021DEC8_ovl9)
/* 1C7D90 80219D40 4602003E */  c.le.s     $f0, $f2
/* 1C7D94 80219D44 00000000 */  nop
/* 1C7D98 80219D48 45010007 */  bc1t       .L80219D68_ovl9
/* 1C7D9C 80219D4C 00000000 */   nop
/* 1C7DA0 80219D50 C42CDEC8 */  lwc1       $f12, %lo(D_8021DEC8_ovl9)($at)
/* 1C7DA4 80219D54 3C018022 */  lui        $at, %hi(D_8021DECC_ovl9)
/* 1C7DA8 80219D58 4600603E */  c.le.s     $f12, $f0
/* 1C7DAC 80219D5C 00000000 */  nop
/* 1C7DB0 80219D60 45000003 */  bc1f       .L80219D70_ovl9
/* 1C7DB4 80219D64 00000000 */   nop
.L80219D68_ovl9:
/* 1C7DB8 80219D68 03E00008 */  jr         $ra
/* 1C7DBC 80219D6C 24020001 */   addiu     $v0, $zero, 0x1
.L80219D70_ovl9:
/* 1C7DC0 80219D70 C424DECC */  lwc1       $f4, %lo(D_8021DECC_ovl9)($at)
/* 1C7DC4 80219D74 3C018022 */  lui        $at, %hi(D_8021DED0_ovl9)
/* 1C7DC8 80219D78 4604003E */  c.le.s     $f0, $f4
/* 1C7DCC 80219D7C 00000000 */  nop
/* 1C7DD0 80219D80 45000008 */  bc1f       .L80219DA4_ovl9
/* 1C7DD4 80219D84 00000000 */   nop
/* 1C7DD8 80219D88 C426DED0 */  lwc1       $f6, %lo(D_8021DED0_ovl9)($at)
/* 1C7DDC 80219D8C 4600303E */  c.le.s     $f6, $f0
/* 1C7DE0 80219D90 00000000 */  nop
/* 1C7DE4 80219D94 45000003 */  bc1f       .L80219DA4_ovl9
/* 1C7DE8 80219D98 00000000 */   nop
/* 1C7DEC 80219D9C 03E00008 */  jr         $ra
/* 1C7DF0 80219DA0 24020002 */   addiu     $v0, $zero, 0x2
.L80219DA4_ovl9:
/* 1C7DF4 80219DA4 3C018022 */  lui        $at, %hi(D_8021DED4_ovl9)
/* 1C7DF8 80219DA8 C428DED4 */  lwc1       $f8, %lo(D_8021DED4_ovl9)($at)
/* 1C7DFC 80219DAC 4608003E */  c.le.s     $f0, $f8
/* 1C7E00 80219DB0 00000000 */  nop
/* 1C7E04 80219DB4 45020008 */  bc1fl      .L80219DD8_ovl9
/* 1C7E08 80219DB8 460C003E */   c.le.s    $f0, $f12
/* 1C7E0C 80219DBC 4600103E */  c.le.s     $f2, $f0
/* 1C7E10 80219DC0 00000000 */  nop
/* 1C7E14 80219DC4 45020004 */  bc1fl      .L80219DD8_ovl9
/* 1C7E18 80219DC8 460C003E */   c.le.s    $f0, $f12
/* 1C7E1C 80219DCC 03E00008 */  jr         $ra
/* 1C7E20 80219DD0 24020003 */   addiu     $v0, $zero, 0x3
/* 1C7E24 80219DD4 460C003E */  c.le.s     $f0, $f12
.L80219DD8_ovl9:
/* 1C7E28 80219DD8 3C018022 */  lui        $at, %hi(D_8021DED8_ovl9)
/* 1C7E2C 80219DDC 00001025 */  or         $v0, $zero, $zero
/* 1C7E30 80219DE0 45000008 */  bc1f       .L80219E04_ovl9
/* 1C7E34 80219DE4 00000000 */   nop
/* 1C7E38 80219DE8 C42ADED8 */  lwc1       $f10, %lo(D_8021DED8_ovl9)($at)
/* 1C7E3C 80219DEC 4600503E */  c.le.s     $f10, $f0
/* 1C7E40 80219DF0 00000000 */  nop
/* 1C7E44 80219DF4 45000003 */  bc1f       .L80219E04_ovl9
/* 1C7E48 80219DF8 00000000 */   nop
/* 1C7E4C 80219DFC 03E00008 */  jr         $ra
/* 1C7E50 80219E00 24020004 */   addiu     $v0, $zero, 0x4
.L80219E04_ovl9:
/* 1C7E54 80219E04 03E00008 */  jr         $ra
/* 1C7E58 80219E08 00000000 */   nop
