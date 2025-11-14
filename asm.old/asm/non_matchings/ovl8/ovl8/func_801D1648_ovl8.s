glabel func_801D1648_ovl8
/* 175128 801D1648 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 17512C 801D164C AFB00018 */  sw    $s0, 0x18($sp)
/* 175130 801D1650 3C10800D */  lui   $s0, %hi(D_800D70C0) # $s0, 0x800d
/* 175134 801D1654 8E1070C0 */  lw    $s0, %lo(D_800D70C0)($s0)
/* 175138 801D1658 3C03800E */ lui $v1, %hi(D_800DFBD0)
/* 17513C 801D165C AFBF001C */  sw    $ra, 0x1c($sp)
/* 175140 801D1660 00107080 */  sll   $t6, $s0, 2
/* 175144 801D1664 006E1821 */  addu  $v1, $v1, $t6
/* 175148 801D1668 8C63FBD0 */ lw $v1, %lo(D_800DFBD0)($v1)
/* 17514C 801D166C AFA40060 */  sw    $a0, 0x60($sp)
/* 175150 801D1670 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 175154 801D1674 8C6F000C */  lw    $t7, 0xc($v1)
/* 175158 801D1678 8C670008 */  lw    $a3, 8($v1)
/* 17515C 801D167C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 175160 801D1680 AFAF004C */  sw    $t7, 0x4c($sp)
/* 175164 801D1684 8C780010 */  lw    $t8, 0x10($v1)
/* 175168 801D1688 3C04800F */ lui $a0, %hi(D_800EA360)
/* 17516C 801D168C 24010001 */  li    $at, 1
/* 175170 801D1690 AFB80048 */  sw    $t8, 0x48($sp)
/* 175174 801D1694 8C450000 */  lw    $a1, ($v0)
/* 175178 801D1698 02003025 */  move  $a2, $s0
/* 17517C 801D169C 00052880 */  sll   $a1, $a1, 2
/* 175180 801D16A0 00852021 */  addu  $a0, $a0, $a1
/* 175184 801D16A4 8C84A360 */ lw $a0, %lo(D_800EA360)($a0)
/* 175188 801D16A8 10810008 */  beq   $a0, $at, .L801D16CC_ovl8
/* 17518C 801D16AC 24010002 */   li    $at, 2
/* 175190 801D16B0 10810013 */  beq   $a0, $at, .L801D1700_ovl8
/* 175194 801D16B4 02003025 */   move  $a2, $s0
/* 175198 801D16B8 24010003 */  li    $at, 3
/* 17519C 801D16BC 1081001C */  beq   $a0, $at, .L801D1730_ovl8
/* 1751A0 801D16C0 02003025 */   move  $a2, $s0
/* 1751A4 801D16C4 10000026 */  b     .L801D1760_ovl8
/* 1751A8 801D16C8 C7A40030 */   lwc1  $f4, 0x30($sp)
.L801D16CC_ovl8:
/* 1751AC 801D16CC 27A40030 */  addiu $a0, $sp, 0x30
/* 1751B0 801D16D0 00E02825 */  move  $a1, $a3
/* 1751B4 801D16D4 0C02C8D0 */  jal   func_800B2340
/* 1751B8 801D16D8 AFA70050 */   sw    $a3, 0x50($sp)
/* 1751BC 801D16DC 8FA50050 */  lw    $a1, 0x50($sp)
/* 1751C0 801D16E0 27A4003C */  addiu $a0, $sp, 0x3c
/* 1751C4 801D16E4 0C02C9B6 */  jal   func_800B26D8
/* 1751C8 801D16E8 02003025 */   move  $a2, $s0
/* 1751CC 801D16EC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1751D0 801D16F0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1751D4 801D16F4 8C450000 */  lw    $a1, ($v0)
/* 1751D8 801D16F8 10000018 */  b     .L801D175C_ovl8
/* 1751DC 801D16FC 00052880 */   sll   $a1, $a1, 2
.L801D1700_ovl8:
/* 1751E0 801D1700 27A40030 */  addiu $a0, $sp, 0x30
/* 1751E4 801D1704 0C02C8D0 */  jal   func_800B2340
/* 1751E8 801D1708 8FA5004C */   lw    $a1, 0x4c($sp)
/* 1751EC 801D170C 27A4003C */  addiu $a0, $sp, 0x3c
/* 1751F0 801D1710 8FA5004C */  lw    $a1, 0x4c($sp)
/* 1751F4 801D1714 0C02C9B6 */  jal   func_800B26D8
/* 1751F8 801D1718 02003025 */   move  $a2, $s0
/* 1751FC 801D171C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 175200 801D1720 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 175204 801D1724 8C450000 */  lw    $a1, ($v0)
/* 175208 801D1728 1000000C */  b     .L801D175C_ovl8
/* 17520C 801D172C 00052880 */   sll   $a1, $a1, 2
.L801D1730_ovl8:
/* 175210 801D1730 27A40030 */  addiu $a0, $sp, 0x30
/* 175214 801D1734 0C02C8D0 */  jal   func_800B2340
/* 175218 801D1738 8FA50048 */   lw    $a1, 0x48($sp)
/* 17521C 801D173C 27A4003C */  addiu $a0, $sp, 0x3c
/* 175220 801D1740 8FA50048 */  lw    $a1, 0x48($sp)
/* 175224 801D1744 0C02C9B6 */  jal   func_800B26D8
/* 175228 801D1748 02003025 */   move  $a2, $s0
/* 17522C 801D174C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 175230 801D1750 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 175234 801D1754 8C450000 */  lw    $a1, ($v0)
/* 175238 801D1758 00052880 */  sll   $a1, $a1, 2
.L801D175C_ovl8:
/* 17523C 801D175C C7A40030 */  lwc1  $f4, 0x30($sp)
.L801D1760_ovl8:
/* 175240 801D1760 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 175244 801D1764 00250821 */  addu  $at, $at, $a1
/* 175248 801D1768 E42425D0 */ swc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 17524C 801D176C 8C590000 */  lw    $t9, ($v0)
/* 175250 801D1770 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 175254 801D1774 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175258 801D1778 00194080 */  sll   $t0, $t9, 2
/* 17525C 801D177C 00280821 */  addu  $at, $at, $t0
/* 175260 801D1780 E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 175264 801D1784 8C490000 */  lw    $t1, ($v0)
/* 175268 801D1788 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 17526C 801D178C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 175270 801D1790 00095080 */  sll   $t2, $t1, 2
/* 175274 801D1794 002A0821 */  addu  $at, $at, $t2
/* 175278 801D1798 E4282950 */ swc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 17527C 801D179C 8C4B0000 */  lw    $t3, ($v0)
/* 175280 801D17A0 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* 175284 801D17A4 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 175288 801D17A8 000B6080 */  sll   $t4, $t3, 2
/* 17528C 801D17AC 002C0821 */  addu  $at, $at, $t4
/* 175290 801D17B0 E42A4010 */ swc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 175294 801D17B4 8C4D0000 */  lw    $t5, ($v0)
/* 175298 801D17B8 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 17529C 801D17BC 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 1752A0 801D17C0 000D7080 */  sll   $t6, $t5, 2
/* 1752A4 801D17C4 002E0821 */  addu  $at, $at, $t6
/* 1752A8 801D17C8 E43041D0 */ swc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 1752AC 801D17CC 8C4F0000 */  lw    $t7, ($v0)
/* 1752B0 801D17D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1752B4 801D17D4 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 1752B8 801D17D8 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 1752BC 801D17DC 000FC080 */  sll   $t8, $t7, 2
/* 1752C0 801D17E0 00380821 */  addu  $at, $at, $t8
/* 1752C4 801D17E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 1752C8 801D17E8 27BD0060 */  addiu $sp, $sp, 0x60
/* 1752CC 801D17EC 03E00008 */  jr    $ra
/* 1752D0 801D17F0 E4324390 */ swc1 $f18, %lo(gEntitiesAngleZArray)($at)
.type func_801D1648_ovl8, @function
.size func_801D1648_ovl8, . - func_801D1648_ovl8
