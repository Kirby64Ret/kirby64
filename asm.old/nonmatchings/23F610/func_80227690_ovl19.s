glabel func_80227690_ovl19
/* 247DA0 80227690 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 247DA4 80227694 AFB10018 */  sw         $s1, 0x18($sp)
/* 247DA8 80227698 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 247DAC 8022769C 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 247DB0 802276A0 8E270000 */  lw         $a3, 0x0($s1)
/* 247DB4 802276A4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 247DB8 802276A8 AFB30020 */  sw         $s3, 0x20($sp)
/* 247DBC 802276AC AFB2001C */  sw         $s2, 0x1C($sp)
/* 247DC0 802276B0 AFB00014 */  sw         $s0, 0x14($sp)
/* 247DC4 802276B4 AFA40028 */  sw         $a0, 0x28($sp)
/* 247DC8 802276B8 8CEF0000 */  lw         $t7, 0x0($a3)
/* 247DCC 802276BC 3C018023 */  lui        $at, %hi(D_8022F940_ovl19)
/* 247DD0 802276C0 C420F940 */  lwc1       $f0, %lo(D_8022F940_ovl19)($at)
/* 247DD4 802276C4 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 247DD8 802276C8 3C0E800B */  lui        $t6, %hi(func_800B5094)
/* 247DDC 802276CC 000FC080 */  sll        $t8, $t7, 2
/* 247DE0 802276D0 00380821 */  addu       $at, $at, $t8
/* 247DE4 802276D4 25CE5094 */  addiu      $t6, $t6, %lo(func_800B5094)
/* 247DE8 802276D8 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 247DEC 802276DC 8CF90000 */  lw         $t9, 0x0($a3)
/* 247DF0 802276E0 3C03800E */  lui        $v1, %hi(D_800E6A10)
/* 247DF4 802276E4 24636A10 */  addiu      $v1, $v1, %lo(D_800E6A10)
/* 247DF8 802276E8 C4640000 */  lwc1       $f4, 0x0($v1)
/* 247DFC 802276EC 00194080 */  sll        $t0, $t9, 2
/* 247E00 802276F0 00684821 */  addu       $t1, $v1, $t0
/* 247E04 802276F4 E5240000 */  swc1       $f4, 0x0($t1)
/* 247E08 802276F8 8CEA0000 */  lw         $t2, 0x0($a3)
/* 247E0C 802276FC 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 247E10 80227700 3C18800F */  lui        $t8, %hi(D_800E8220)
/* 247E14 80227704 000A5880 */  sll        $t3, $t2, 2
/* 247E18 80227708 002B0821 */  addu       $at, $at, $t3
/* 247E1C 8022770C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 247E20 80227710 8CEC0000 */  lw         $t4, 0x0($a3)
/* 247E24 80227714 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 247E28 80227718 3C088023 */  lui        $t0, %hi(D_8022F50C_ovl19)
/* 247E2C 8022771C 000C6880 */  sll        $t5, $t4, 2
/* 247E30 80227720 002D0821 */  addu       $at, $at, $t5
/* 247E34 80227724 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 247E38 80227728 8CEF0000 */  lw         $t7, 0x0($a3)
/* 247E3C 8022772C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 247E40 80227730 3C040002 */  lui        $a0, (0x20007 >> 16)
/* 247E44 80227734 000F7080 */  sll        $t6, $t7, 2
/* 247E48 80227738 002E0821 */  addu       $at, $at, $t6
/* 247E4C 8022773C E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* 247E50 80227740 8CE20000 */  lw         $v0, 0x0($a3)
/* 247E54 80227744 3C01800E */  lui        $at, %hi(D_800E0F10)
/* 247E58 80227748 34840007 */  ori        $a0, $a0, (0x20007 & 0xFFFF)
/* 247E5C 8022774C 00021080 */  sll        $v0, $v0, 2
/* 247E60 80227750 0302C021 */  addu       $t8, $t8, $v0
/* 247E64 80227754 8F188220 */  lw         $t8, %lo(D_800E8220)($t8)
/* 247E68 80227758 00220821 */  addu       $at, $at, $v0
/* 247E6C 8022775C 24050020 */  addiu      $a1, $zero, 0x20
/* 247E70 80227760 0018C880 */  sll        $t9, $t8, 2
/* 247E74 80227764 01194021 */  addu       $t0, $t0, $t9
/* 247E78 80227768 8D08F50C */  lw         $t0, %lo(D_8022F50C_ovl19)($t0)
/* 247E7C 8022776C 24060010 */  addiu      $a2, $zero, 0x10
/* 247E80 80227770 0C02A619 */  jal        func_800A9864
/* 247E84 80227774 AC280F10 */   sw        $t0, %lo(D_800E0F10)($at)
/* 247E88 80227778 3C13800F */  lui        $s3, %hi(D_800EC4A0)
/* 247E8C 8022777C 3C10800F */  lui        $s0, %hi(D_800EC2E0)
/* 247E90 80227780 2610C2E0 */  addiu      $s0, $s0, %lo(D_800EC2E0)
/* 247E94 80227784 2673C4A0 */  addiu      $s3, $s3, %lo(D_800EC4A0)
/* 247E98 80227788 2412FFFF */  addiu      $s2, $zero, -0x1
/* 247E9C 8022778C 8E270000 */  lw         $a3, 0x0($s1)
.L80227790_ovl19:
/* 247EA0 80227790 8CE90000 */  lw         $t1, 0x0($a3)
/* 247EA4 80227794 00095080 */  sll        $t2, $t1, 2
/* 247EA8 80227798 020A5821 */  addu       $t3, $s0, $t2
/* 247EAC 8022779C 8D620000 */  lw         $v0, 0x0($t3)
/* 247EB0 802277A0 1242001D */  beq        $s2, $v0, .L80227818_ovl19
/* 247EB4 802277A4 00000000 */   nop
/* 247EB8 802277A8 10400019 */  beqz       $v0, .L80227810_ovl19
/* 247EBC 802277AC 00002025 */   or        $a0, $zero, $zero
/* 247EC0 802277B0 24040001 */  addiu      $a0, $zero, 0x1
/* 247EC4 802277B4 0C02BEED */  jal        func_800AFBB4
/* 247EC8 802277B8 00E02825 */   or        $a1, $a3, $zero
/* 247ECC 802277BC 8E2C0000 */  lw         $t4, 0x0($s1)
/* 247ED0 802277C0 8D820000 */  lw         $v0, 0x0($t4)
/* 247ED4 802277C4 00021080 */  sll        $v0, $v0, 2
/* 247ED8 802277C8 02626821 */  addu       $t5, $s3, $v0
/* 247EDC 802277CC 8DA30000 */  lw         $v1, 0x0($t5)
/* 247EE0 802277D0 50600007 */  beql       $v1, $zero, .L802277F0_ovl19
/* 247EE4 802277D4 02027021 */   addu      $t6, $s0, $v0
/* 247EE8 802277D8 0C02A806 */  jal        func_800AA018
/* 247EEC 802277DC 00602025 */   or        $a0, $v1, $zero
/* 247EF0 802277E0 8E2F0000 */  lw         $t7, 0x0($s1)
/* 247EF4 802277E4 8DE20000 */  lw         $v0, 0x0($t7)
/* 247EF8 802277E8 00021080 */  sll        $v0, $v0, 2
/* 247EFC 802277EC 02027021 */  addu       $t6, $s0, $v0
.L802277F0_ovl19:
/* 247F00 802277F0 0C02A806 */  jal        func_800AA018
/* 247F04 802277F4 8DC40000 */   lw        $a0, 0x0($t6)
/* 247F08 802277F8 8E380000 */  lw         $t8, 0x0($s1)
/* 247F0C 802277FC 8F190000 */  lw         $t9, 0x0($t8)
/* 247F10 80227800 00194080 */  sll        $t0, $t9, 2
/* 247F14 80227804 02084821 */  addu       $t1, $s0, $t0
/* 247F18 80227808 10000003 */  b          .L80227818_ovl19
/* 247F1C 8022780C AD320000 */   sw        $s2, 0x0($t1)
.L80227810_ovl19:
/* 247F20 80227810 0C02BEED */  jal        func_800AFBB4
/* 247F24 80227814 00E02825 */   or        $a1, $a3, $zero
.L80227818_ovl19:
/* 247F28 80227818 0C002DAF */  jal        finish_current_thread
/* 247F2C 8022781C 24040001 */   addiu     $a0, $zero, 0x1
/* 247F30 80227820 1000FFDB */  b          .L80227790_ovl19
/* 247F34 80227824 8E270000 */   lw        $a3, 0x0($s1)
/* 247F38 80227828 00000000 */  nop
/* 247F3C 8022782C 00000000 */  nop
/* 247F40 80227830 00000000 */  nop
/* 247F44 80227834 00000000 */  nop
/* 247F48 80227838 00000000 */  nop
/* 247F4C 8022783C 00000000 */  nop
/* 247F50 80227840 8FBF0024 */  lw         $ra, 0x24($sp)
/* 247F54 80227844 8FB00014 */  lw         $s0, 0x14($sp)
/* 247F58 80227848 8FB10018 */  lw         $s1, 0x18($sp)
/* 247F5C 8022784C 8FB2001C */  lw         $s2, 0x1C($sp)
/* 247F60 80227850 8FB30020 */  lw         $s3, 0x20($sp)
/* 247F64 80227854 03E00008 */  jr         $ra
/* 247F68 80227858 27BD0028 */   addiu     $sp, $sp, 0x28
