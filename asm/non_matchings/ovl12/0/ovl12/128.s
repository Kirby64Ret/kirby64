glabel func_801E1688_ovl12 # 128
/* 006488 801E1688 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 00648C 801E168C 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 006490 801E1690 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 006494 801E1694 AFBF0014 */  sw          $ra, 0x14($sp)
/* 006498 801E1698 AFA40018 */  sw          $a0, 0x18($sp)
/* 00649C 801E169C 8C4F0000 */  lw          $t7, 0x0($v0)
/* 0064A0 801E16A0 3C01800E */  lui         $at, %hi(D_800DDA90)
/* 0064A4 801E16A4 240E0025 */  addiu       $t6, $zero, 0x25
/* 0064A8 801E16A8 000FC080 */  sll         $t8, $t7, 2
/* 0064AC 801E16AC 00380821 */  addu        $at, $at, $t8
/* 0064B0 801E16B0 AC2EDA90 */  sw          $t6, %lo(D_800DDA90)($at)
/* 0064B4 801E16B4 8C480000 */  lw          $t0, 0x0($v0)
/* 0064B8 801E16B8 3C01800E */  lui         $at, %hi(D_800DF150)
/* 0064BC 801E16BC 3C19801E */  lui         $t9, %hi(func_801E1804_ovl12)
/* 0064C0 801E16C0 00084880 */  sll         $t1, $t0, 2
/* 0064C4 801E16C4 00290821 */  addu        $at, $at, $t1
/* 0064C8 801E16C8 27391804 */  addiu       $t9, $t9, %lo(func_801E1804_ovl12)
/* 0064CC 801E16CC AC39F150 */  sw          $t9, %lo(D_800DF150)($at)
/* 0064D0 801E16D0 8C4B0000 */  lw          $t3, 0x0($v0)
/* 0064D4 801E16D4 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 0064D8 801E16D8 3C0A801D */  lui         $t2, %hi(D_801D184C)
/* 0064DC 801E16DC 000B6080 */  sll         $t4, $t3, 2
/* 0064E0 801E16E0 002C0821 */  addu        $at, $at, $t4
/* 0064E4 801E16E4 254A184C */  addiu       $t2, $t2, %lo(D_801D184C)
/* 0064E8 801E16E8 AC2AEF90 */  sw          $t2, %lo(D_800DEF90)($at)
/* 0064EC 801E16EC 8C430000 */  lw          $v1, 0x0($v0)
/* 0064F0 801E16F0 3C04800F */  lui         $a0, %hi(D_800E98E0)
/* 0064F4 801E16F4 24010001 */  addiu       $at, $zero, 0x1
/* 0064F8 801E16F8 00031880 */  sll         $v1, $v1, 2
/* 0064FC 801E16FC 00832021 */  addu        $a0, $a0, $v1
/* 006500 801E1700 8C8498E0 */  lw          $a0, %lo(D_800E98E0)($a0)
/* 006504 801E1704 24050023 */  addiu       $a1, $zero, 0x23
/* 006508 801E1708 24060010 */  addiu       $a2, $zero, 0x10
/* 00650C 801E170C 10810007 */  beq         $a0, $at, .L801E172C
/* 006510 801E1710 24010002 */   addiu      $at, $zero, 0x2
/* 006514 801E1714 10810011 */  beq         $a0, $at, .L801E175C
/* 006518 801E1718 24010003 */   addiu      $at, $zero, 0x3
/* 00651C 801E171C 10810019 */  beq         $a0, $at, .L801E1784
/* 006520 801E1720 24050023 */   addiu      $a1, $zero, 0x23
/* 006524 801E1724 1000001F */  b           .L801E17A4
/* 006528 801E1728 00000000 */   nop
.L801E172C:
/* 00652C 801E172C 3C040001 */  lui         $a0, (0x100A9 >> 16)
/* 006530 801E1730 0C02A619 */  jal         func_800A9864
/* 006534 801E1734 348400A9 */   ori        $a0, $a0, (0x100A9 & 0xFFFF)
/* 006538 801E1738 3C04801E */  lui         $a0, %hi(D_801E2E20_ovl12)
/* 00653C 801E173C 24842E20 */  addiu       $a0, $a0, %lo(D_801E2E20_ovl12)
/* 006540 801E1740 AC800000 */  sw          $zero, 0x0($a0)
/* 006544 801E1744 A4800004 */  sh          $zero, 0x4($a0)
/* 006548 801E1748 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 00654C 801E174C 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 006550 801E1750 8C430000 */  lw          $v1, 0x0($v0)
/* 006554 801E1754 10000013 */  b           .L801E17A4
/* 006558 801E1758 00031880 */   sll        $v1, $v1, 2
.L801E175C:
/* 00655C 801E175C 3C040001 */  lui         $a0, (0x100AA >> 16)
/* 006560 801E1760 348400AA */  ori         $a0, $a0, (0x100AA & 0xFFFF)
/* 006564 801E1764 24050023 */  addiu       $a1, $zero, 0x23
/* 006568 801E1768 0C02A619 */  jal         func_800A9864
/* 00656C 801E176C 24060010 */   addiu      $a2, $zero, 0x10
/* 006570 801E1770 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 006574 801E1774 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 006578 801E1778 8C430000 */  lw          $v1, 0x0($v0)
/* 00657C 801E177C 10000009 */  b           .L801E17A4
/* 006580 801E1780 00031880 */   sll        $v1, $v1, 2
.L801E1784:
/* 006584 801E1784 3C040001 */  lui         $a0, (0x100AB >> 16)
/* 006588 801E1788 348400AB */  ori         $a0, $a0, (0x100AB & 0xFFFF)
/* 00658C 801E178C 0C02A619 */  jal         func_800A9864
/* 006590 801E1790 24060010 */   addiu      $a2, $zero, 0x10
/* 006594 801E1794 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 006598 801E1798 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 00659C 801E179C 8C430000 */  lw          $v1, 0x0($v0)
/* 0065A0 801E17A0 00031880 */  sll         $v1, $v1, 2
.L801E17A4:
/* 0065A4 801E17A4 3C01800F */  lui         $at, %hi(D_800E9C60)
/* 0065A8 801E17A8 00230821 */  addu        $at, $at, $v1
/* 0065AC 801E17AC AC209C60 */  sw          $zero, %lo(D_800E9C60)($at)
/* 0065B0 801E17B0 8C4F0000 */  lw          $t7, 0x0($v0)
/* 0065B4 801E17B4 3C07800E */  lui         $a3, %hi(gEntityVtableIndexArray)
/* 0065B8 801E17B8 24E7DC50 */  addiu       $a3, $a3, %lo(gEntityVtableIndexArray)
/* 0065BC 801E17BC 000F7080 */  sll         $t6, $t7, 2
/* 0065C0 801E17C0 00EEC021 */  addu        $t8, $a3, $t6
/* 0065C4 801E17C4 240D0001 */  addiu       $t5, $zero, 0x1
/* 0065C8 801E17C8 AF0D0000 */  sw          $t5, 0x0($t8)
/* 0065CC 801E17CC 8C480000 */  lw          $t0, 0x0($v0)
/* 0065D0 801E17D0 3C06801E */  lui         $a2, %hi(D_801E2CF0_ovl12)
/* 0065D4 801E17D4 24C62CF0 */  addiu       $a2, $a2, %lo(D_801E2CF0_ovl12)
/* 0065D8 801E17D8 0008C880 */  sll         $t9, $t0, 2
/* 0065DC 801E17DC 00F94821 */  addu        $t1, $a3, $t9
/* 0065E0 801E17E0 8D240000 */  lw          $a0, 0x0($t1)
/* 0065E4 801E17E4 0C02911F */  jal         call_virtual_function
/* 0065E8 801E17E8 24050002 */   addiu      $a1, $zero, 0x2
/* 0065EC 801E17EC 0C02BE85 */  jal         func_800AFA14
/* 0065F0 801E17F0 00000000 */   nop
/* 0065F4 801E17F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0065F8 801E17F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0065FC 801E17FC 03E00008 */  jr          $ra
/* 006600 801E1800 00000000 */   nop