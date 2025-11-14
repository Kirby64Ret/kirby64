glabel func_801D1094_ovl8
/* 174B74 801D1094 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174B78 801D1098 AFBF0014 */  sw    $ra, 0x14($sp)
/* 174B7C 801D109C 0C0743EC */  jal   func_801D0FB0_ovl8
/* 174B80 801D10A0 00000000 */   nop   
/* 174B84 801D10A4 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 174B88 801D10A8 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 174B8C 801D10AC 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 174B90 801D10B0 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 174B94 801D10B4 8C830000 */  lw    $v1, ($a0)
/* 174B98 801D10B8 3C01801E */  lui   $at, %hi(D_801DB068_ovl8) # $at, 0x801e
/* 174B9C 801D10BC C422B068 */  lwc1  $f2, %lo(D_801DB068_ovl8)($at)
/* 174BA0 801D10C0 00031880 */  sll   $v1, $v1, 2
/* 174BA4 801D10C4 00A31021 */  addu  $v0, $a1, $v1
/* 174BA8 801D10C8 C4400000 */  lwc1  $f0, ($v0)
/* 174BAC 801D10CC 44806000 */  mtc1  $zero, $f12
/* 174BB0 801D10D0 3C01800E */ lui $at, %hi(D_800E17D0)
/* 174BB4 801D10D4 4600103E */  c.le.s $f2, $f0
/* 174BB8 801D10D8 00000000 */  nop   
/* 174BBC 801D10DC 4502000C */  bc1fl .L801D1110_ovl8
/* 174BC0 801D10E0 460C003C */   c.lt.s $f0, $f12
/* 174BC4 801D10E4 46020101 */  sub.s $f4, $f0, $f2
.L801D10E8_ovl8:
/* 174BC8 801D10E8 E4440000 */  swc1  $f4, ($v0)
/* 174BCC 801D10EC 8C830000 */  lw    $v1, ($a0)
/* 174BD0 801D10F0 00031880 */  sll   $v1, $v1, 2
/* 174BD4 801D10F4 00A31021 */  addu  $v0, $a1, $v1
/* 174BD8 801D10F8 C4400000 */  lwc1  $f0, ($v0)
/* 174BDC 801D10FC 4600103E */  c.le.s $f2, $f0
/* 174BE0 801D1100 00000000 */  nop   
/* 174BE4 801D1104 4503FFF8 */  bc1tl .L801D10E8_ovl8
/* 174BE8 801D1108 46020101 */   sub.s $f4, $f0, $f2
/* 174BEC 801D110C 460C003C */  c.lt.s $f0, $f12
.L801D1110_ovl8:
/* 174BF0 801D1110 00000000 */  nop   
/* 174BF4 801D1114 4502000C */  bc1fl .L801D1148_ovl8
/* 174BF8 801D1118 00230821 */   addu  $at, $at, $v1
/* 174BFC 801D111C 46020180 */  add.s $f6, $f0, $f2
.L801D1120_ovl8:
/* 174C00 801D1120 E4460000 */  swc1  $f6, ($v0)
/* 174C04 801D1124 8C830000 */  lw    $v1, ($a0)
/* 174C08 801D1128 00031880 */  sll   $v1, $v1, 2
/* 174C0C 801D112C 00A31021 */  addu  $v0, $a1, $v1
/* 174C10 801D1130 C4400000 */  lwc1  $f0, ($v0)
/* 174C14 801D1134 460C003C */  c.lt.s $f0, $f12
/* 174C18 801D1138 00000000 */  nop   
/* 174C1C 801D113C 4503FFF8 */  bc1tl .L801D1120_ovl8
/* 174C20 801D1140 46020180 */   add.s $f6, $f0, $f2
/* 174C24 801D1144 00230821 */  addu  $at, $at, $v1
.L801D1148_ovl8:
/* 174C28 801D1148 0C02CC6D */  jal   func_800B31B4
/* 174C2C 801D114C E42017D0 */ swc1 $f0, %lo(D_800E17D0)($at)
/* 174C30 801D1150 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174C34 801D1154 27BD0018 */  addiu $sp, $sp, 0x18
/* 174C38 801D1158 03E00008 */  jr    $ra
/* 174C3C 801D115C 00000000 */   nop   
.type func_801D1094_ovl8, @function
.size func_801D1094_ovl8, . - func_801D1094_ovl8
