glabel func_801D152C_ovl8
/* 17500C 801D152C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 175010 801D1530 AFBF0014 */  sw    $ra, 0x14($sp)
/* 175014 801D1534 0C0744CD */  jal   func_801D1334_ovl8
/* 175018 801D1538 00000000 */   nop   
/* 17501C 801D153C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 175020 801D1540 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 175024 801D1544 3C01801E */  lui   $at, %hi(D_801DB070_ovl8) # $at, 0x801e
/* 175028 801D1548 C422B070 */  lwc1  $f2, %lo(D_801DB070_ovl8)($at)
/* 17502C 801D154C 8C830000 */  lw    $v1, ($a0)
/* 175030 801D1550 3C01800E */ lui $at, %hi(D_800E6A10)
/* 175034 801D1554 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 175038 801D1558 00031880 */  sll   $v1, $v1, 2
/* 17503C 801D155C 00230821 */  addu  $at, $at, $v1
/* 175040 801D1560 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 175044 801D1564 3C01801E */  lui   $at, %hi(D_801DB074_ovl8) # $at, 0x801e
/* 175048 801D1568 C426B074 */  lwc1  $f6, %lo(D_801DB074_ovl8)($at)
/* 17504C 801D156C 3C01800E */ lui $at, %hi(D_800E17D0)
/* 175050 801D1570 00230821 */  addu  $at, $at, $v1
/* 175054 801D1574 46062202 */  mul.s $f8, $f4, $f6
/* 175058 801D1578 C42A17D0 */ lwc1 $f10, %lo(D_800E17D0)($at)
/* 17505C 801D157C 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 175060 801D1580 00A37021 */  addu  $t6, $a1, $v1
/* 175064 801D1584 44806000 */  mtc1  $zero, $f12
/* 175068 801D1588 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 17506C 801D158C 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 175070 801D1590 460A4400 */  add.s $f16, $f8, $f10
/* 175074 801D1594 E5D00000 */  swc1  $f16, ($t6)
/* 175078 801D1598 8C830000 */  lw    $v1, ($a0)
/* 17507C 801D159C 00031880 */  sll   $v1, $v1, 2
/* 175080 801D15A0 00A31021 */  addu  $v0, $a1, $v1
/* 175084 801D15A4 C4400000 */  lwc1  $f0, ($v0)
/* 175088 801D15A8 4600103E */  c.le.s $f2, $f0
/* 17508C 801D15AC 00000000 */  nop   
/* 175090 801D15B0 4502000C */  bc1fl .L801D15E4_ovl8
/* 175094 801D15B4 460C003C */   c.lt.s $f0, $f12
/* 175098 801D15B8 46020481 */  sub.s $f18, $f0, $f2
.L801D15BC_ovl8:
/* 17509C 801D15BC E4520000 */  swc1  $f18, ($v0)
/* 1750A0 801D15C0 8C830000 */  lw    $v1, ($a0)
/* 1750A4 801D15C4 00031880 */  sll   $v1, $v1, 2
/* 1750A8 801D15C8 00A31021 */  addu  $v0, $a1, $v1
/* 1750AC 801D15CC C4400000 */  lwc1  $f0, ($v0)
/* 1750B0 801D15D0 4600103E */  c.le.s $f2, $f0
/* 1750B4 801D15D4 00000000 */  nop   
/* 1750B8 801D15D8 4503FFF8 */  bc1tl .L801D15BC_ovl8
/* 1750BC 801D15DC 46020481 */   sub.s $f18, $f0, $f2
/* 1750C0 801D15E0 460C003C */  c.lt.s $f0, $f12
.L801D15E4_ovl8:
/* 1750C4 801D15E4 00000000 */  nop   
/* 1750C8 801D15E8 4502000C */  bc1fl .L801D161C_ovl8
/* 1750CC 801D15EC 00230821 */   addu  $at, $at, $v1
/* 1750D0 801D15F0 46020100 */  add.s $f4, $f0, $f2
.L801D15F4_ovl8:
/* 1750D4 801D15F4 E4440000 */  swc1  $f4, ($v0)
/* 1750D8 801D15F8 8C830000 */  lw    $v1, ($a0)
/* 1750DC 801D15FC 00031880 */  sll   $v1, $v1, 2
/* 1750E0 801D1600 00A31021 */  addu  $v0, $a1, $v1
/* 1750E4 801D1604 C4400000 */  lwc1  $f0, ($v0)
/* 1750E8 801D1608 460C003C */  c.lt.s $f0, $f12
/* 1750EC 801D160C 00000000 */  nop   
/* 1750F0 801D1610 4503FFF8 */  bc1tl .L801D15F4_ovl8
/* 1750F4 801D1614 46020100 */   add.s $f4, $f0, $f2
/* 1750F8 801D1618 00230821 */  addu  $at, $at, $v1
.L801D161C_ovl8:
/* 1750FC 801D161C C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 175100 801D1620 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175104 801D1624 00230821 */  addu  $at, $at, $v1
/* 175108 801D1628 00C33021 */  addu  $a2, $a2, $v1
/* 17510C 801D162C 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 175110 801D1630 0C02CC8D */  jal   func_800B3234
/* 175114 801D1634 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 175118 801D1638 8FBF0014 */  lw    $ra, 0x14($sp)
/* 17511C 801D163C 27BD0018 */  addiu $sp, $sp, 0x18
/* 175120 801D1640 03E00008 */  jr    $ra
/* 175124 801D1644 00000000 */   nop   
.type func_801D152C_ovl8, @function
.size func_801D152C_ovl8, . - func_801D152C_ovl8
