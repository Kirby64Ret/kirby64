nonmatching func_801765EC_ovl5, 0x270

glabel func_801765EC_ovl5
    /* 11DA5C 801765EC 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 11DA60 801765F0 3C048019 */  lui        $a0, %hi(D_8018E9A8_ovl5)
    /* 11DA64 801765F4 2484E9A8 */  addiu      $a0, $a0, %lo(D_8018E9A8_ovl5)
    /* 11DA68 801765F8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 11DA6C 801765FC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 11DA70 80176600 AFB20020 */  sw         $s2, 0x20($sp)
    /* 11DA74 80176604 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 11DA78 80176608 AFB00018 */  sw         $s0, 0x18($sp)
    /* 11DA7C 8017660C A0800000 */  sb         $zero, 0x0($a0)
    /* 11DA80 80176610 A08E0051 */  sb         $t6, 0x51($a0)
    /* 11DA84 80176614 27A2004C */  addiu      $v0, $sp, 0x4C
    /* 11DA88 80176618 27A30064 */  addiu      $v1, $sp, 0x64
  .L8017661C_ovl5:
    /* 11DA8C 8017661C 24420004 */  addiu      $v0, $v0, 0x4
    /* 11DA90 80176620 0043082B */  sltu       $at, $v0, $v1
    /* 11DA94 80176624 1420FFFD */  bnez       $at, .L8017661C_ovl5
    /* 11DA98 80176628 AC40FFFC */   sw        $zero, -0x4($v0)
    /* 11DA9C 8017662C 27B10074 */  addiu      $s1, $sp, 0x74
    /* 11DAA0 80176630 24120001 */  addiu      $s2, $zero, 0x1
    /* 11DAA4 80176634 27B0004C */  addiu      $s0, $sp, 0x4C
  .L80176638_ovl5:
    /* 11DAA8 80176638 0C006291 */  jal        random_soft_s32_range
    /* 11DAAC 8017663C 24040006 */   addiu     $a0, $zero, 0x6
    /* 11DAB0 80176640 00027880 */  sll        $t7, $v0, 2
    /* 11DAB4 80176644 020FC021 */  addu       $t8, $s0, $t7
    /* 11DAB8 80176648 8F190000 */  lw         $t9, 0x0($t8)
    /* 11DABC 8017664C AE220000 */  sw         $v0, 0x0($s1)
    /* 11DAC0 80176650 5320000A */  beql       $t9, $zero, .L8017667C_ovl5
    /* 11DAC4 80176654 8E380000 */   lw        $t8, 0x0($s1)
  .L80176658_ovl5:
    /* 11DAC8 80176658 0C006291 */  jal        random_soft_s32_range
    /* 11DACC 8017665C 24040006 */   addiu     $a0, $zero, 0x6
    /* 11DAD0 80176660 00026880 */  sll        $t5, $v0, 2
    /* 11DAD4 80176664 020D7021 */  addu       $t6, $s0, $t5
    /* 11DAD8 80176668 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 11DADC 8017666C AE220000 */  sw         $v0, 0x0($s1)
    /* 11DAE0 80176670 15E0FFF9 */  bnez       $t7, .L80176658_ovl5
    /* 11DAE4 80176674 00000000 */   nop
    /* 11DAE8 80176678 8E380000 */  lw         $t8, 0x0($s1)
  .L8017667C_ovl5:
    /* 11DAEC 8017667C 26310004 */  addiu      $s1, $s1, 0x4
    /* 11DAF0 80176680 27AE0084 */  addiu      $t6, $sp, 0x84
    /* 11DAF4 80176684 0018C880 */  sll        $t9, $t8, 2
    /* 11DAF8 80176688 022E082B */  sltu       $at, $s1, $t6
    /* 11DAFC 8017668C 02196821 */  addu       $t5, $s0, $t9
    /* 11DB00 80176690 1420FFE9 */  bnez       $at, .L80176638_ovl5
    /* 11DB04 80176694 ADB20000 */   sw        $s2, 0x0($t5)
    /* 11DB08 80176698 27A2004C */  addiu      $v0, $sp, 0x4C
    /* 11DB0C 8017669C 27A30064 */  addiu      $v1, $sp, 0x64
  .L801766A0_ovl5:
    /* 11DB10 801766A0 24420004 */  addiu      $v0, $v0, 0x4
    /* 11DB14 801766A4 0043082B */  sltu       $at, $v0, $v1
    /* 11DB18 801766A8 1420FFFD */  bnez       $at, .L801766A0_ovl5
    /* 11DB1C 801766AC AC40FFFC */   sw        $zero, -0x4($v0)
    /* 11DB20 801766B0 27B10064 */  addiu      $s1, $sp, 0x64
  .L801766B4_ovl5:
    /* 11DB24 801766B4 0C006291 */  jal        random_soft_s32_range
    /* 11DB28 801766B8 24040006 */   addiu     $a0, $zero, 0x6
    /* 11DB2C 801766BC 00027880 */  sll        $t7, $v0, 2
    /* 11DB30 801766C0 020FC021 */  addu       $t8, $s0, $t7
    /* 11DB34 801766C4 8F190000 */  lw         $t9, 0x0($t8)
    /* 11DB38 801766C8 AE220000 */  sw         $v0, 0x0($s1)
    /* 11DB3C 801766CC 5320000A */  beql       $t9, $zero, .L801766F8_ovl5
    /* 11DB40 801766D0 8E380000 */   lw        $t8, 0x0($s1)
  .L801766D4_ovl5:
    /* 11DB44 801766D4 0C006291 */  jal        random_soft_s32_range
    /* 11DB48 801766D8 24040006 */   addiu     $a0, $zero, 0x6
    /* 11DB4C 801766DC 00026880 */  sll        $t5, $v0, 2
    /* 11DB50 801766E0 020D7021 */  addu       $t6, $s0, $t5
    /* 11DB54 801766E4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 11DB58 801766E8 AE220000 */  sw         $v0, 0x0($s1)
    /* 11DB5C 801766EC 15E0FFF9 */  bnez       $t7, .L801766D4_ovl5
    /* 11DB60 801766F0 00000000 */   nop
    /* 11DB64 801766F4 8E380000 */  lw         $t8, 0x0($s1)
  .L801766F8_ovl5:
    /* 11DB68 801766F8 26310004 */  addiu      $s1, $s1, 0x4
    /* 11DB6C 801766FC 27AE0074 */  addiu      $t6, $sp, 0x74
    /* 11DB70 80176700 0018C880 */  sll        $t9, $t8, 2
    /* 11DB74 80176704 022E082B */  sltu       $at, $s1, $t6
    /* 11DB78 80176708 02196821 */  addu       $t5, $s0, $t9
    /* 11DB7C 8017670C 1420FFE9 */  bnez       $at, .L801766B4_ovl5
    /* 11DB80 80176710 ADB20000 */   sw        $s2, 0x0($t5)
    /* 11DB84 80176714 3C188019 */  lui        $t8, %hi(D_8018ECD8_ovl5)
    /* 11DB88 80176718 9318ECD8 */  lbu        $t8, %lo(D_8018ECD8_ovl5)($t8)
    /* 11DB8C 8017671C 3C0F8019 */  lui        $t7, %hi(D_8018E9A8_ovl5)
    /* 11DB90 80176720 3C0D8018 */  lui        $t5, %hi(D_80187EB4_ovl5)
    /* 11DB94 80176724 0018C880 */  sll        $t9, $t8, 2
    /* 11DB98 80176728 0338C823 */  subu       $t9, $t9, $t8
    /* 11DB9C 8017672C 0019C900 */  sll        $t9, $t9, 4
    /* 11DBA0 80176730 25AD7EB4 */  addiu      $t5, $t5, %lo(D_80187EB4_ovl5)
    /* 11DBA4 80176734 25E8E9A8 */  addiu      $t0, $t7, %lo(D_8018E9A8_ovl5)
    /* 11DBA8 80176738 3C0C8019 */  lui        $t4, %hi(D_8018E9D0_ovl5)
    /* 11DBAC 8017673C 258CE9D0 */  addiu      $t4, $t4, %lo(D_8018E9D0_ovl5)
    /* 11DBB0 80176740 01005025 */  or         $t2, $t0, $zero
    /* 11DBB4 80176744 032D5821 */  addu       $t3, $t9, $t5
    /* 11DBB8 80176748 27B10074 */  addiu      $s1, $sp, 0x74
    /* 11DBBC 8017674C 2405000A */  addiu      $a1, $zero, 0xA
  .L80176750_ovl5:
    /* 11DBC0 80176750 8E290000 */  lw         $t1, 0x0($s1)
    /* 11DBC4 80176754 2508000A */  addiu      $t0, $t0, 0xA
    /* 11DBC8 80176758 010C082B */  sltu       $at, $t0, $t4
    /* 11DBCC 8017675C 00097080 */  sll        $t6, $t1, 2
    /* 11DBD0 80176760 016EC021 */  addu       $t8, $t3, $t6
    /* 11DBD4 80176764 8F060000 */  lw         $a2, 0x0($t8)
    /* 11DBD8 80176768 26310004 */  addiu      $s1, $s1, 0x4
    /* 11DBDC 8017676C 24030002 */  addiu      $v1, $zero, 0x2
    /* 11DBE0 80176770 90D90000 */  lbu        $t9, 0x0($a2)
    /* 11DBE4 80176774 25420002 */  addiu      $v0, $t2, 0x2
    /* 11DBE8 80176778 24C40002 */  addiu      $a0, $a2, 0x2
    /* 11DBEC 8017677C A119FFF7 */  sb         $t9, -0x9($t0)
    /* 11DBF0 80176780 90CD0001 */  lbu        $t5, 0x1($a2)
    /* 11DBF4 80176784 A10DFFF8 */  sb         $t5, -0x8($t0)
  .L80176788_ovl5:
    /* 11DBF8 80176788 908F0000 */  lbu        $t7, 0x0($a0)
    /* 11DBFC 8017678C 24630004 */  addiu      $v1, $v1, 0x4
    /* 11DC00 80176790 24420004 */  addiu      $v0, $v0, 0x4
    /* 11DC04 80176794 A04FFFFD */  sb         $t7, -0x3($v0)
    /* 11DC08 80176798 908E0001 */  lbu        $t6, 0x1($a0)
    /* 11DC0C 8017679C 24840004 */  addiu      $a0, $a0, 0x4
    /* 11DC10 801767A0 A04EFFFE */  sb         $t6, -0x2($v0)
    /* 11DC14 801767A4 9098FFFE */  lbu        $t8, -0x2($a0)
    /* 11DC18 801767A8 A058FFFF */  sb         $t8, -0x1($v0)
    /* 11DC1C 801767AC 9099FFFF */  lbu        $t9, -0x1($a0)
    /* 11DC20 801767B0 1465FFF5 */  bne        $v1, $a1, .L80176788_ovl5
    /* 11DC24 801767B4 A0590000 */   sb        $t9, 0x0($v0)
    /* 11DC28 801767B8 1420FFE5 */  bnez       $at, .L80176750_ovl5
    /* 11DC2C 801767BC 254A000A */   addiu     $t2, $t2, 0xA
    /* 11DC30 801767C0 3C0D8019 */  lui        $t5, %hi(D_8018E9A8_ovl5)
    /* 11DC34 801767C4 25A8E9A8 */  addiu      $t0, $t5, %lo(D_8018E9A8_ovl5)
    /* 11DC38 801767C8 3C0C8019 */  lui        $t4, %hi(D_8018E9D0_ovl5)
    /* 11DC3C 801767CC 258CE9D0 */  addiu      $t4, $t4, %lo(D_8018E9D0_ovl5)
    /* 11DC40 801767D0 01005025 */  or         $t2, $t0, $zero
    /* 11DC44 801767D4 27B10064 */  addiu      $s1, $sp, 0x64
  .L801767D8_ovl5:
    /* 11DC48 801767D8 8E290000 */  lw         $t1, 0x0($s1)
    /* 11DC4C 801767DC 26310004 */  addiu      $s1, $s1, 0x4
    /* 11DC50 801767E0 2508000A */  addiu      $t0, $t0, 0xA
    /* 11DC54 801767E4 00097880 */  sll        $t7, $t1, 2
    /* 11DC58 801767E8 016F7021 */  addu       $t6, $t3, $t7
    /* 11DC5C 801767EC 8DC60018 */  lw         $a2, 0x18($t6)
    /* 11DC60 801767F0 24030002 */  addiu      $v1, $zero, 0x2
    /* 11DC64 801767F4 25420002 */  addiu      $v0, $t2, 0x2
    /* 11DC68 801767F8 90D80000 */  lbu        $t8, 0x0($a2)
    /* 11DC6C 801767FC 24C40002 */  addiu      $a0, $a2, 0x2
    /* 11DC70 80176800 A118001F */  sb         $t8, 0x1F($t0)
    /* 11DC74 80176804 90D90001 */  lbu        $t9, 0x1($a2)
    /* 11DC78 80176808 A1190020 */  sb         $t9, 0x20($t0)
  .L8017680C_ovl5:
    /* 11DC7C 8017680C 908D0000 */  lbu        $t5, 0x0($a0)
    /* 11DC80 80176810 24630004 */  addiu      $v1, $v1, 0x4
    /* 11DC84 80176814 24420004 */  addiu      $v0, $v0, 0x4
    /* 11DC88 80176818 A04D0025 */  sb         $t5, 0x25($v0)
    /* 11DC8C 8017681C 908F0001 */  lbu        $t7, 0x1($a0)
    /* 11DC90 80176820 24840004 */  addiu      $a0, $a0, 0x4
    /* 11DC94 80176824 A04F0026 */  sb         $t7, 0x26($v0)
    /* 11DC98 80176828 908EFFFE */  lbu        $t6, -0x2($a0)
    /* 11DC9C 8017682C A04E0027 */  sb         $t6, 0x27($v0)
    /* 11DCA0 80176830 9098FFFF */  lbu        $t8, -0x1($a0)
    /* 11DCA4 80176834 1465FFF5 */  bne        $v1, $a1, .L8017680C_ovl5
    /* 11DCA8 80176838 A0580028 */   sb        $t8, 0x28($v0)
    /* 11DCAC 8017683C 150CFFE6 */  bne        $t0, $t4, .L801767D8_ovl5
    /* 11DCB0 80176840 254A000A */   addiu     $t2, $t2, 0xA
    /* 11DCB4 80176844 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 11DCB8 80176848 8FB00018 */  lw         $s0, 0x18($sp)
    /* 11DCBC 8017684C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 11DCC0 80176850 8FB20020 */  lw         $s2, 0x20($sp)
    /* 11DCC4 80176854 03E00008 */  jr         $ra
    /* 11DCC8 80176858 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_801765EC_ovl5
.size func_801765EC_ovl5, . - func_801765EC_ovl5
