glabel func_800B7D88
/* 05FFD8 800B7D88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05FFDC 800B7D8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 05FFE0 800B7D90 0C02D8F0 */  jal   func_800B63C0
/* 05FFE4 800B7D94 00000000 */   nop   
/* 05FFE8 800B7D98 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 05FFEC 800B7D9C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 05FFF0 800B7DA0 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 05FFF4 800B7DA4 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 05FFF8 800B7DA8 8C6E0000 */  lw    $t6, ($v1)
/* 05FFFC 800B7DAC 3C01800D */  lui   $at, %hi(D_800D68C4) # $at, 0x800d
/* 060000 800B7DB0 C42268C4 */  lwc1  $f2, %lo(D_800D68C4)($at)
/* 060004 800B7DB4 000E7880 */  sll   $t7, $t6, 2
/* 060008 800B7DB8 008F1021 */  addu  $v0, $a0, $t7
/* 06000C 800B7DBC C4400000 */  lwc1  $f0, ($v0)
/* 060010 800B7DC0 44806000 */  mtc1  $zero, $f12
/* 060014 800B7DC4 4600103E */  c.le.s $f2, $f0
/* 060018 800B7DC8 00000000 */  nop   
/* 06001C 800B7DCC 4502000C */  bc1fl .L800B7E00_ovl1
/* 060020 800B7DD0 460C003C */   c.lt.s $f0, $f12
/* 060024 800B7DD4 46020101 */  sub.s $f4, $f0, $f2
.L800B7DD8_ovl1:
/* 060028 800B7DD8 E4440000 */  swc1  $f4, ($v0)
/* 06002C 800B7DDC 8C780000 */  lw    $t8, ($v1)
/* 060030 800B7DE0 0018C880 */  sll   $t9, $t8, 2
/* 060034 800B7DE4 00991021 */  addu  $v0, $a0, $t9
/* 060038 800B7DE8 C4400000 */  lwc1  $f0, ($v0)
/* 06003C 800B7DEC 4600103E */  c.le.s $f2, $f0
/* 060040 800B7DF0 00000000 */  nop   
/* 060044 800B7DF4 4503FFF8 */  bc1tl .L800B7DD8_ovl1
/* 060048 800B7DF8 46020101 */   sub.s $f4, $f0, $f2
/* 06004C 800B7DFC 460C003C */  c.lt.s $f0, $f12
.L800B7E00_ovl1:
/* 060050 800B7E00 00000000 */  nop   
/* 060054 800B7E04 4502000C */  bc1fl .L800B7E38_ovl1
/* 060058 800B7E08 8FBF0014 */   lw    $ra, 0x14($sp)
/* 06005C 800B7E0C 46020180 */  add.s $f6, $f0, $f2
.L800B7E10_ovl1:
/* 060060 800B7E10 E4460000 */  swc1  $f6, ($v0)
/* 060064 800B7E14 8C680000 */  lw    $t0, ($v1)
/* 060068 800B7E18 00084880 */  sll   $t1, $t0, 2
/* 06006C 800B7E1C 00891021 */  addu  $v0, $a0, $t1
/* 060070 800B7E20 C4400000 */  lwc1  $f0, ($v0)
/* 060074 800B7E24 460C003C */  c.lt.s $f0, $f12
/* 060078 800B7E28 00000000 */  nop   
/* 06007C 800B7E2C 4503FFF8 */  bc1tl .L800B7E10_ovl1
/* 060080 800B7E30 46020180 */   add.s $f6, $f0, $f2
/* 060084 800B7E34 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B7E38_ovl1:
/* 060088 800B7E38 27BD0018 */  addiu $sp, $sp, 0x18
/* 06008C 800B7E3C 03E00008 */  jr    $ra
/* 060090 800B7E40 00000000 */   nop   
