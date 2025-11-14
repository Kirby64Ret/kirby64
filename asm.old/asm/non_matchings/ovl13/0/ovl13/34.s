glabel func_801E1680_ovl13 # 34
/* 1F9600 801E1680 3C058005 */  lui         $a1, %hi(D_8004A7C4)
/* 1F9604 801E1684 24A5A7C4 */  addiu       $a1, $a1, %lo(D_8004A7C4)
/* 1F9608 801E1688 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F960C 801E168C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F9610 801E1690 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F9614 801E1694 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F9618 801E1698 8C620000 */  lw          $v0, 0x0($v1)
/* 1F961C 801E169C 3C07800E */  lui         $a3, %hi(D_800E0D50)
/* 1F9620 801E16A0 24E70D50 */  addiu       $a3, $a3, %lo(D_800E0D50)
/* 1F9624 801E16A4 00021080 */  sll         $v0, $v0, 2
/* 1F9628 801E16A8 00E27021 */  addu        $t6, $a3, $v0
/* 1F962C 801E16AC 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F9630 801E16B0 3C06800E */  lui         $a2, %hi(D_800E6BD0)
/* 1F9634 801E16B4 24C66BD0 */  addiu       $a2, $a2, %lo(D_800E6BD0)
/* 1F9638 801E16B8 000FC080 */  sll         $t8, $t7, 2
/* 1F963C 801E16BC 00D8C821 */  addu        $t9, $a2, $t8
/* 1F9640 801E16C0 C7240000 */  lwc1        $f4, 0x0($t9)
/* 1F9644 801E16C4 00C24821 */  addu        $t1, $a2, $v0
/* 1F9648 801E16C8 3C08800E */  lui         $t0, %hi(D_800E5F90)
/* 1F964C 801E16CC E5240000 */  swc1        $f4, 0x0($t1)
/* 1F9650 801E16D0 8C620000 */  lw          $v0, 0x0($v1)
/* 1F9654 801E16D4 25085F90 */  addiu       $t0, $t0, %lo(D_800E5F90)
/* 1F9658 801E16D8 24040002 */  addiu       $a0, $zero, 0x2
/* 1F965C 801E16DC 00021080 */  sll         $v0, $v0, 2
/* 1F9660 801E16E0 00E25021 */  addu        $t2, $a3, $v0
/* 1F9664 801E16E4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F9668 801E16E8 01027821 */  addu        $t7, $t0, $v0
/* 1F966C 801E16EC 000B6080 */  sll         $t4, $t3, 2
/* 1F9670 801E16F0 010C6821 */  addu        $t5, $t0, $t4
/* 1F9674 801E16F4 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F9678 801E16F8 0C006291 */  jal         random_soft_s32_range
/* 1F967C 801E16FC ADEE0000 */   sw         $t6, 0x0($t7)
/* 1F9680 801E1700 3C058005 */  lui         $a1, %hi(D_8004A7C4)
/* 1F9684 801E1704 1040000B */  beqz        $v0, L801E1734_ovl13
/* 1F9688 801E1708 24A5A7C4 */   addiu      $a1, $a1, %lo(D_8004A7C4)
/* 1F968C 801E170C 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F9690 801E1710 3C06800E */  lui         $a2, %hi(D_800E6A10)
/* 1F9694 801E1714 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F9698 801E1718 8C780000 */  lw          $t8, 0x0($v1)
/* 1F969C 801E171C 44813000 */  mtc1        $at, $f6
/* 1F96A0 801E1720 24C66A10 */  addiu       $a2, $a2, %lo(D_800E6A10)
/* 1F96A4 801E1724 0018C880 */  sll         $t9, $t8, 2
/* 1F96A8 801E1728 00D94821 */  addu        $t1, $a2, $t9
/* 1F96AC 801E172C 1000000A */  b           L801E1758_ovl13
/* 1F96B0 801E1730 E5260000 */   swc1       $f6, 0x0($t1)
glabel L801E1734_ovl13
/* 1F96B4 801E1734 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F96B8 801E1738 3C01BF80 */  lui         $at, (0xBF800000 >> 16)
/* 1F96BC 801E173C 44814000 */  mtc1        $at, $f8
/* 1F96C0 801E1740 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1F96C4 801E1744 3C06800E */  lui         $a2, %hi(D_800E6A10)
/* 1F96C8 801E1748 24C66A10 */  addiu       $a2, $a2, %lo(D_800E6A10)
/* 1F96CC 801E174C 000A5880 */  sll         $t3, $t2, 2
/* 1F96D0 801E1750 00CB6021 */  addu        $t4, $a2, $t3
/* 1F96D4 801E1754 E5880000 */  swc1        $f8, 0x0($t4)
glabel L801E1758_ovl13
/* 1F96D8 801E1758 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F96DC 801E175C 44805000 */  mtc1        $zero, $f10
/* 1F96E0 801E1760 3C07800F */  lui         $a3, %hi(D_800EAC20)
/* 1F96E4 801E1764 24E7AC20 */  addiu       $a3, $a3, %lo(D_800EAC20)
/* 1F96E8 801E1768 000D7080 */  sll         $t6, $t5, 2
/* 1F96EC 801E176C 00EE7821 */  addu        $t7, $a3, $t6
/* 1F96F0 801E1770 E5EA0000 */  swc1        $f10, 0x0($t7)
/* 1F96F4 801E1774 8C620000 */  lw          $v0, 0x0($v1)
/* 1F96F8 801E1778 3C04800E */  lui         $a0, %hi(D_800DFBD0)
/* 1F96FC 801E177C 2484FBD0 */  addiu       $a0, $a0, %lo(D_800DFBD0)
/* 1F9700 801E1780 00021080 */  sll         $v0, $v0, 2
/* 1F9704 801E1784 0082C821 */  addu        $t9, $a0, $v0
/* 1F9708 801E1788 8F290000 */  lw          $t1, 0x0($t9)
/* 1F970C 801E178C 00E2C021 */  addu        $t8, $a3, $v0
/* 1F9710 801E1790 C7100000 */  lwc1        $f16, 0x0($t8)
/* 1F9714 801E1794 8D2A0004 */  lw          $t2, 0x4($t1)
/* 1F9718 801E1798 3C01801E */  lui         $at, %hi(D_801E5D84_ovl13)
/* 1F971C 801E179C E5500024 */  swc1        $f16, 0x24($t2)
/* 1F9720 801E17A0 8CAB0000 */  lw          $t3, 0x0($a1)
/* 1F9724 801E17A4 C4325D84 */  lwc1        $f18, %lo(D_801E5D84_ovl13)($at)
/* 1F9728 801E17A8 3C01801E */  lui         $at, %hi(D_801E5D88_ovl13)
/* 1F972C 801E17AC 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F9730 801E17B0 000C6880 */  sll         $t5, $t4, 2
/* 1F9734 801E17B4 008D7021 */  addu        $t6, $a0, $t5
/* 1F9738 801E17B8 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F973C 801E17BC 8DF80004 */  lw          $t8, 0x4($t7)
/* 1F9740 801E17C0 E7120034 */  swc1        $f18, 0x34($t8)
/* 1F9744 801E17C4 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F9748 801E17C8 C4245D88 */  lwc1        $f4, %lo(D_801E5D88_ovl13)($at)
/* 1F974C 801E17CC 3C014080 */  lui         $at, (0x40800000 >> 16)
/* 1F9750 801E17D0 8F290000 */  lw          $t1, 0x0($t9)
/* 1F9754 801E17D4 44814000 */  mtc1        $at, $f8
/* 1F9758 801E17D8 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F975C 801E17DC 00095080 */  sll         $t2, $t1, 2
/* 1F9760 801E17E0 008A5821 */  addu        $t3, $a0, $t2
/* 1F9764 801E17E4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F9768 801E17E8 2418000A */  addiu       $t8, $zero, 0xA
/* 1F976C 801E17EC 8D8D0008 */  lw          $t5, 0x8($t4)
/* 1F9770 801E17F0 E5A40030 */  swc1        $f4, 0x30($t5)
/* 1F9774 801E17F4 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F9778 801E17F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F977C 801E17FC 8C620000 */  lw          $v0, 0x0($v1)
/* 1F9780 801E1800 00021080 */  sll         $v0, $v0, 2
/* 1F9784 801E1804 00C27021 */  addu        $t6, $a2, $v0
/* 1F9788 801E1808 C5C60000 */  lwc1        $f6, 0x0($t6)
/* 1F978C 801E180C 00220821 */  addu        $at, $at, $v0
/* 1F9790 801E1810 46083282 */  mul.s       $f10, $f6, $f8
/* 1F9794 801E1814 E42A64D0 */  swc1        $f10, %lo(D_800E64D0)($at)
/* 1F9798 801E1818 8C620000 */  lw          $v0, 0x0($v1)
/* 1F979C 801E181C 3C01801E */  lui         $at, %hi(D_801E5D8C_ovl13)
/* 1F97A0 801E1820 C4325D8C */  lwc1        $f18, %lo(D_801E5D8C_ovl13)($at)
/* 1F97A4 801E1824 00021080 */  sll         $v0, $v0, 2
/* 1F97A8 801E1828 00C27821 */  addu        $t7, $a2, $v0
/* 1F97AC 801E182C C5F00000 */  lwc1        $f16, 0x0($t7)
/* 1F97B0 801E1830 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F97B4 801E1834 00220821 */  addu        $at, $at, $v0
/* 1F97B8 801E1838 46128102 */  mul.s       $f4, $f16, $f18
/* 1F97BC 801E183C E4246690 */  swc1        $f4, %lo(D_800E6690)($at)
/* 1F97C0 801E1840 8C790000 */  lw          $t9, 0x0($v1)
/* 1F97C4 801E1844 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F97C8 801E1848 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F97CC 801E184C 00194880 */  sll         $t1, $t9, 2
/* 1F97D0 801E1850 00290821 */  addu        $at, $at, $t1
/* 1F97D4 801E1854 03E00008 */  jr          $ra
/* 1F97D8 801E1858 AC38DC50 */   sw         $t8, %lo(gEntityVtableIndexArray)($at)
.type func_801E1680_ovl13, @function

.size func_801E1680_ovl13, . - func_801E1680_ovl13
.section .late_rodata
glabel D_801E5D84_ovl13
/* 1FDD04 801E5D84 */ .word 0x40490FDB

glabel D_801E5D88_ovl13
/* 1FDD08 801E5D88 */ .word 0xBFC90FDB

glabel D_801E5D8C_ovl13
/* 1FDD0C 801E5D8C */ .word 0xBDCCCCCD

