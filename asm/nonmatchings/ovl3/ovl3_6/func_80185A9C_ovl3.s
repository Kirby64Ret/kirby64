nonmatching func_80185A9C_ovl3, 0x7AC

glabel func_80185A9C_ovl3
    /* E64DC 80185A9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* E64E0 80185AA0 AFB00018 */  sw         $s0, 0x18($sp)
    /* E64E4 80185AA4 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* E64E8 80185AA8 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* E64EC 80185AAC 8E0E00A0 */  lw         $t6, 0xA0($s0)
    /* E64F0 80185AB0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E64F4 80185AB4 AFA40020 */  sw         $a0, 0x20($sp)
    /* E64F8 80185AB8 55C00071 */  bnel       $t6, $zero, .L80185C80_ovl3
    /* E64FC 80185ABC 8E0A0044 */   lw        $t2, 0x44($s0)
    /* E6500 80185AC0 AE000030 */  sw         $zero, 0x30($s0)
    /* E6504 80185AC4 A2000007 */  sb         $zero, 0x7($s0)
    /* E6508 80185AC8 A60000D2 */  sh         $zero, 0xD2($s0)
    /* E650C 80185ACC A60000D0 */  sh         $zero, 0xD0($s0)
    /* E6510 80185AD0 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* E6514 80185AD4 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* E6518 80185AD8 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* E651C 80185ADC 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E6520 80185AE0 8F190000 */  lw         $t9, 0x0($t8)
    /* E6524 80185AE4 00194080 */  sll        $t0, $t9, 2
    /* E6528 80185AE8 01284821 */  addu       $t1, $t1, $t0
    /* E652C 80185AEC 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
    /* E6530 80185AF0 312A0006 */  andi       $t2, $t1, 0x6
    /* E6534 80185AF4 55400006 */  bnel       $t2, $zero, .L80185B10_ovl3
    /* E6538 80185AF8 44816000 */   mtc1      $at, $f12
    /* E653C 80185AFC 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E6540 80185B00 44816000 */  mtc1       $at, $f12
    /* E6544 80185B04 10000003 */  b          .L80185B14_ovl3
    /* E6548 80185B08 00000000 */   nop
    /* E654C 80185B0C 44816000 */  mtc1       $at, $f12
  .L80185B10_ovl3:
    /* E6550 80185B10 00000000 */  nop
  .L80185B14_ovl3:
    /* E6554 80185B14 0C02BB30 */  jal        func_800AECC0
    /* E6558 80185B18 00000000 */   nop
    /* E655C 80185B1C 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* E6560 80185B20 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* E6564 80185B24 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* E6568 80185B28 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E656C 80185B2C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* E6570 80185B30 000C6880 */  sll        $t5, $t4, 2
    /* E6574 80185B34 01CD7021 */  addu       $t6, $t6, $t5
    /* E6578 80185B38 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* E657C 80185B3C 31CF0006 */  andi       $t7, $t6, 0x6
    /* E6580 80185B40 55E00006 */  bnel       $t7, $zero, .L80185B5C_ovl3
    /* E6584 80185B44 44816000 */   mtc1      $at, $f12
    /* E6588 80185B48 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E658C 80185B4C 44816000 */  mtc1       $at, $f12
    /* E6590 80185B50 10000003 */  b          .L80185B60_ovl3
    /* E6594 80185B54 00000000 */   nop
    /* E6598 80185B58 44816000 */  mtc1       $at, $f12
  .L80185B5C_ovl3:
    /* E659C 80185B5C 00000000 */  nop
  .L80185B60_ovl3:
    /* E65A0 80185B60 0C02BB48 */  jal        func_800AED20
    /* E65A4 80185B64 00000000 */   nop
    /* E65A8 80185B68 8E180090 */  lw         $t8, 0x90($s0)
    /* E65AC 80185B6C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E65B0 80185B70 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* E65B4 80185B74 AE1800A0 */  sw         $t8, 0xA0($s0)
    /* E65B8 80185B78 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E65BC 80185B7C 2419003B */  addiu      $t9, $zero, 0x3B
    /* E65C0 80185B80 44802000 */  mtc1       $zero, $f4
    /* E65C4 80185B84 8C480000 */  lw         $t0, 0x0($v0)
    /* E65C8 80185B88 3C05800E */  lui        $a1, %hi(D_800E6690)
    /* E65CC 80185B8C 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
    /* E65D0 80185B90 00084880 */  sll        $t1, $t0, 2
    /* E65D4 80185B94 00290821 */  addu       $at, $at, $t1
    /* E65D8 80185B98 AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
    /* E65DC 80185B9C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* E65E0 80185BA0 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E65E4 80185BA4 24190014 */  addiu      $t9, $zero, 0x14
    /* E65E8 80185BA8 000A5880 */  sll        $t3, $t2, 2
    /* E65EC 80185BAC 00AB6021 */  addu       $t4, $a1, $t3
    /* E65F0 80185BB0 E5840000 */  swc1       $f4, 0x0($t4)
    /* E65F4 80185BB4 8C430000 */  lw         $v1, 0x0($v0)
    /* E65F8 80185BB8 3C0B8019 */  lui        $t3, %hi(D_80190358_ovl3)
    /* E65FC 80185BBC 256B0358 */  addiu      $t3, $t3, %lo(D_80190358_ovl3)
    /* E6600 80185BC0 00031880 */  sll        $v1, $v1, 2
    /* E6604 80185BC4 00A36821 */  addu       $t5, $a1, $v1
    /* E6608 80185BC8 C5A60000 */  lwc1       $f6, 0x0($t5)
    /* E660C 80185BCC 00230821 */  addu       $at, $at, $v1
    /* E6610 80185BD0 3C040002 */  lui        $a0, (0x2001F >> 16)
    /* E6614 80185BD4 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
    /* E6618 80185BD8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E661C 80185BDC 3C018019 */  lui        $at, %hi(D_801977F8_ovl3)
    /* E6620 80185BE0 C42877F8 */  lwc1       $f8, %lo(D_801977F8_ovl3)($at)
    /* E6624 80185BE4 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E6628 80185BE8 000E7880 */  sll        $t7, $t6, 2
    /* E662C 80185BEC 002F0821 */  addu       $at, $at, $t7
    /* E6630 80185BF0 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
    /* E6634 80185BF4 8C580000 */  lw         $t8, 0x0($v0)
    /* E6638 80185BF8 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* E663C 80185BFC 3484001F */  ori        $a0, $a0, (0x2001F & 0xFFFF)
    /* E6640 80185C00 00184080 */  sll        $t0, $t8, 2
    /* E6644 80185C04 00280821 */  addu       $at, $at, $t0
    /* E6648 80185C08 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* E664C 80185C0C 8C490000 */  lw         $t1, 0x0($v0)
    /* E6650 80185C10 3C01800F */  lui        $at, %hi(D_800E9720)
    /* E6654 80185C14 00095080 */  sll        $t2, $t1, 2
    /* E6658 80185C18 002A0821 */  addu       $at, $at, $t2
    /* E665C 80185C1C AC399720 */  sw         $t9, %lo(D_800E9720)($at)
    /* E6660 80185C20 0C048BC2 */  jal        func_80122F08
    /* E6664 80185C24 AE0B015C */   sw        $t3, 0x15C($s0)
    /* E6668 80185C28 240C0001 */  addiu      $t4, $zero, 0x1
    /* E666C 80185C2C AE0C0154 */  sw         $t4, 0x154($s0)
    /* E6670 80185C30 0C05A4F1 */  jal        func_801693C4_ovl3
    /* E6674 80185C34 24040010 */   addiu     $a0, $zero, 0x10
    /* E6678 80185C38 0C047701 */  jal        func_8011DC04
    /* E667C 80185C3C 24040015 */   addiu     $a0, $zero, 0x15
    /* E6680 80185C40 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* E6684 80185C44 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* E6688 80185C48 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* E668C 80185C4C 24090003 */  addiu      $t1, $zero, 0x3
    /* E6690 80185C50 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E6694 80185C54 000E7880 */  sll        $t7, $t6, 2
    /* E6698 80185C58 030FC021 */  addu       $t8, $t8, $t7
    /* E669C 80185C5C 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* E66A0 80185C60 53000005 */  beql       $t8, $zero, .L80185C78_ovl3
    /* E66A4 80185C64 AE09003C */   sw        $t1, 0x3C($s0)
    /* E66A8 80185C68 AE00003C */  sw         $zero, 0x3C($s0)
    /* E66AC 80185C6C 10000003 */  b          .L80185C7C_ovl3
    /* E66B0 80185C70 AE000044 */   sw        $zero, 0x44($s0)
    /* E66B4 80185C74 AE09003C */  sw         $t1, 0x3C($s0)
  .L80185C78_ovl3:
    /* E66B8 80185C78 AE090044 */  sw         $t1, 0x44($s0)
  .L80185C7C_ovl3:
    /* E66BC 80185C7C 8E0A0044 */  lw         $t2, 0x44($s0)
  .L80185C80_ovl3:
    /* E66C0 80185C80 2D410006 */  sltiu      $at, $t2, 0x6
    /* E66C4 80185C84 10200132 */  beqz       $at, .L80186150_ovl3
    /* E66C8 80185C88 000A5080 */   sll       $t2, $t2, 2
    /* E66CC 80185C8C 3C018019 */  lui        $at, %hi(jtbl_801977FC_ovl3)
    /* E66D0 80185C90 002A0821 */  addu       $at, $at, $t2
    /* E66D4 80185C94 8C2A77FC */  lw         $t2, %lo(jtbl_801977FC_ovl3)($at)
    /* E66D8 80185C98 01400008 */  jr         $t2
    /* E66DC 80185C9C 00000000 */   nop
  jlabel .L80185CA0_ovl3
    /* E66E0 80185CA0 3C040002 */  lui        $a0, (0x20204 >> 16)
    /* E66E4 80185CA4 3C050002 */  lui        $a1, (0x2001F >> 16)
    /* E66E8 80185CA8 34A5001F */  ori        $a1, $a1, (0x2001F & 0xFFFF)
    /* E66EC 80185CAC 34840204 */  ori        $a0, $a0, (0x20204 & 0xFFFF)
    /* E66F0 80185CB0 0C02A9E3 */  jal        func_800AA78C
    /* E66F4 80185CB4 3C064040 */   lui       $a2, (0x40400000 >> 16)
    /* E66F8 80185CB8 3C040002 */  lui        $a0, (0x20204 >> 16)
    /* E66FC 80185CBC 0C02A806 */  jal        func_800AA018
    /* E6700 80185CC0 34840204 */   ori       $a0, $a0, (0x20204 & 0xFFFF)
    /* E6704 80185CC4 0C02BE85 */  jal        curObjSleepForever
    /* E6708 80185CC8 00000000 */   nop
  jlabel .L80185CCC_ovl3
    /* E670C 80185CCC 0C04842D */  jal        func_801210B4
    /* E6710 80185CD0 00000000 */   nop
    /* E6714 80185CD4 24010001 */  addiu      $at, $zero, 0x1
    /* E6718 80185CD8 14410033 */  bne        $v0, $at, .L80185DA8_ovl3
    /* E671C 80185CDC 3C050002 */   lui       $a1, (0x2001F >> 16)
    /* E6720 80185CE0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E6724 80185CE4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E6728 80185CE8 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* E672C 80185CEC 44815000 */  mtc1       $at, $f10
    /* E6730 80185CF0 8C4B0000 */  lw         $t3, 0x0($v0)
    /* E6734 80185CF4 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E6738 80185CF8 3C04800F */  lui        $a0, %hi(D_800E8AE0)
    /* E673C 80185CFC 000B6080 */  sll        $t4, $t3, 2
    /* E6740 80185D00 002C0821 */  addu       $at, $at, $t4
    /* E6744 80185D04 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
    /* E6748 80185D08 8C430000 */  lw         $v1, 0x0($v0)
    /* E674C 80185D0C 44808000 */  mtc1       $zero, $f16
    /* E6750 80185D10 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E6754 80185D14 00031880 */  sll        $v1, $v1, 2
    /* E6758 80185D18 00832021 */  addu       $a0, $a0, $v1
    /* E675C 80185D1C 8C848AE0 */  lw         $a0, %lo(D_800E8AE0)($a0)
    /* E6760 80185D20 30840006 */  andi       $a0, $a0, 0x6
    /* E6764 80185D24 54800008 */  bnel       $a0, $zero, .L80185D48_ovl3
    /* E6768 80185D28 44817000 */   mtc1      $at, $f14
    /* E676C 80185D2C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E6770 80185D30 44811000 */  mtc1       $at, $f2
    /* E6774 80185D34 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E6778 80185D38 44817000 */  mtc1       $at, $f14
    /* E677C 80185D3C 10000005 */  b          .L80185D54_ovl3
    /* E6780 80185D40 46001306 */   mov.s     $f12, $f2
    /* E6784 80185D44 44817000 */  mtc1       $at, $f14
  .L80185D48_ovl3:
    /* E6788 80185D48 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E678C 80185D4C 44811000 */  mtc1       $at, $f2
    /* E6790 80185D50 46007306 */  mov.s      $f12, $f14
  .L80185D54_ovl3:
    /* E6794 80185D54 4610603C */  c.lt.s     $f12, $f16
    /* E6798 80185D58 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E679C 80185D5C 00230821 */  addu       $at, $at, $v1
    /* E67A0 80185D60 4500000A */  bc1f       .L80185D8C_ovl3
    /* E67A4 80185D64 00000000 */   nop
    /* E67A8 80185D68 14800003 */  bnez       $a0, .L80185D78_ovl3
    /* E67AC 80185D6C 3C01800E */   lui       $at, %hi(D_800E6850)
    /* E67B0 80185D70 10000002 */  b          .L80185D7C_ovl3
    /* E67B4 80185D74 46001306 */   mov.s     $f12, $f2
  .L80185D78_ovl3:
    /* E67B8 80185D78 46007306 */  mov.s      $f12, $f14
  .L80185D7C_ovl3:
    /* E67BC 80185D7C 46006487 */  neg.s      $f18, $f12
    /* E67C0 80185D80 00230821 */  addu       $at, $at, $v1
    /* E67C4 80185D84 10000039 */  b          .L80185E6C_ovl3
    /* E67C8 80185D88 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
  .L80185D8C_ovl3:
    /* E67CC 80185D8C 54800004 */  bnel       $a0, $zero, .L80185DA0_ovl3
    /* E67D0 80185D90 46007006 */   mov.s     $f0, $f14
    /* E67D4 80185D94 10000002 */  b          .L80185DA0_ovl3
    /* E67D8 80185D98 46001006 */   mov.s     $f0, $f2
    /* E67DC 80185D9C 46007006 */  mov.s      $f0, $f14
  .L80185DA0_ovl3:
    /* E67E0 80185DA0 10000032 */  b          .L80185E6C_ovl3
    /* E67E4 80185DA4 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
  .L80185DA8_ovl3:
    /* E67E8 80185DA8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E67EC 80185DAC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E67F0 80185DB0 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
    /* E67F4 80185DB4 44812000 */  mtc1       $at, $f4
    /* E67F8 80185DB8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* E67FC 80185DBC 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E6800 80185DC0 3C04800F */  lui        $a0, %hi(D_800E8AE0)
    /* E6804 80185DC4 000D7080 */  sll        $t6, $t5, 2
    /* E6808 80185DC8 002E0821 */  addu       $at, $at, $t6
    /* E680C 80185DCC E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
    /* E6810 80185DD0 8C430000 */  lw         $v1, 0x0($v0)
    /* E6814 80185DD4 44803000 */  mtc1       $zero, $f6
    /* E6818 80185DD8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E681C 80185DDC 00031880 */  sll        $v1, $v1, 2
    /* E6820 80185DE0 00832021 */  addu       $a0, $a0, $v1
    /* E6824 80185DE4 8C848AE0 */  lw         $a0, %lo(D_800E8AE0)($a0)
    /* E6828 80185DE8 30840006 */  andi       $a0, $a0, 0x6
    /* E682C 80185DEC 54800008 */  bnel       $a0, $zero, .L80185E10_ovl3
    /* E6830 80185DF0 44817000 */   mtc1      $at, $f14
    /* E6834 80185DF4 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E6838 80185DF8 44811000 */  mtc1       $at, $f2
    /* E683C 80185DFC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E6840 80185E00 44817000 */  mtc1       $at, $f14
    /* E6844 80185E04 10000005 */  b          .L80185E1C_ovl3
    /* E6848 80185E08 46001306 */   mov.s     $f12, $f2
    /* E684C 80185E0C 44817000 */  mtc1       $at, $f14
  .L80185E10_ovl3:
    /* E6850 80185E10 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E6854 80185E14 44811000 */  mtc1       $at, $f2
    /* E6858 80185E18 46007306 */  mov.s      $f12, $f14
  .L80185E1C_ovl3:
    /* E685C 80185E1C 4606603C */  c.lt.s     $f12, $f6
    /* E6860 80185E20 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E6864 80185E24 00230821 */  addu       $at, $at, $v1
    /* E6868 80185E28 4500000A */  bc1f       .L80185E54_ovl3
    /* E686C 80185E2C 00000000 */   nop
    /* E6870 80185E30 14800003 */  bnez       $a0, .L80185E40_ovl3
    /* E6874 80185E34 3C01800E */   lui       $at, %hi(D_800E6850)
    /* E6878 80185E38 10000002 */  b          .L80185E44_ovl3
    /* E687C 80185E3C 46001306 */   mov.s     $f12, $f2
  .L80185E40_ovl3:
    /* E6880 80185E40 46007306 */  mov.s      $f12, $f14
  .L80185E44_ovl3:
    /* E6884 80185E44 46006207 */  neg.s      $f8, $f12
    /* E6888 80185E48 00230821 */  addu       $at, $at, $v1
    /* E688C 80185E4C 10000007 */  b          .L80185E6C_ovl3
    /* E6890 80185E50 E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
  .L80185E54_ovl3:
    /* E6894 80185E54 54800004 */  bnel       $a0, $zero, .L80185E68_ovl3
    /* E6898 80185E58 46007006 */   mov.s     $f0, $f14
    /* E689C 80185E5C 10000002 */  b          .L80185E68_ovl3
    /* E68A0 80185E60 46001006 */   mov.s     $f0, $f2
    /* E68A4 80185E64 46007006 */  mov.s      $f0, $f14
  .L80185E68_ovl3:
    /* E68A8 80185E68 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L80185E6C_ovl3:
    /* E68AC 80185E6C 3C040002 */  lui        $a0, (0x20208 >> 16)
    /* E68B0 80185E70 34840208 */  ori        $a0, $a0, (0x20208 & 0xFFFF)
    /* E68B4 80185E74 34A5001F */  ori        $a1, $a1, (0x2001F & 0xFFFF)
    /* E68B8 80185E78 0C02A9E3 */  jal        func_800AA78C
    /* E68BC 80185E7C 3C064040 */   lui       $a2, (0x40400000 >> 16)
    /* E68C0 80185E80 3C040002 */  lui        $a0, (0x20208 >> 16)
    /* E68C4 80185E84 0C02A806 */  jal        func_800AA018
    /* E68C8 80185E88 34840208 */   ori       $a0, $a0, (0x20208 & 0xFFFF)
    /* E68CC 80185E8C 0C02BE85 */  jal        curObjSleepForever
    /* E68D0 80185E90 00000000 */   nop
  jlabel .L80185E94_ovl3
    /* E68D4 80185E94 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E68D8 80185E98 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E68DC 80185E9C 3C01800F */  lui        $at, %hi(D_800E8920)
    /* E68E0 80185EA0 3C19800F */  lui        $t9, %hi(D_800E8AE0)
    /* E68E4 80185EA4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E68E8 80185EA8 000FC080 */  sll        $t8, $t7, 2
    /* E68EC 80185EAC 00380821 */  addu       $at, $at, $t8
    /* E68F0 80185EB0 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* E68F4 80185EB4 8C480000 */  lw         $t0, 0x0($v0)
    /* E68F8 80185EB8 24010006 */  addiu      $at, $zero, 0x6
    /* E68FC 80185EBC 00001025 */  or         $v0, $zero, $zero
    /* E6900 80185EC0 00084880 */  sll        $t1, $t0, 2
    /* E6904 80185EC4 0329C821 */  addu       $t9, $t9, $t1
    /* E6908 80185EC8 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
    /* E690C 80185ECC 332A0006 */  andi       $t2, $t9, 0x6
    /* E6910 80185ED0 15410003 */  bne        $t2, $at, .L80185EE0_ovl3
    /* E6914 80185ED4 00000000 */   nop
    /* E6918 80185ED8 10000001 */  b          .L80185EE0_ovl3
    /* E691C 80185EDC 24020001 */   addiu     $v0, $zero, 0x1
  .L80185EE0_ovl3:
    /* E6920 80185EE0 1040001C */  beqz       $v0, .L80185F54_ovl3
    /* E6924 80185EE4 00000000 */   nop
    /* E6928 80185EE8 0C029D9E */  jal        play_sound
    /* E692C 80185EEC 2404010B */   addiu     $a0, $zero, 0x10B
    /* E6930 80185EF0 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* E6934 80185EF4 44810000 */  mtc1       $at, $f0
    /* E6938 80185EF8 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* E693C 80185EFC 44815000 */  mtc1       $at, $f10
    /* E6940 80185F00 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E6944 80185F04 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E6948 80185F08 E60A00CC */  swc1       $f10, 0xCC($s0)
    /* E694C 80185F0C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E6950 80185F10 8C4B0000 */  lw         $t3, 0x0($v0)
    /* E6954 80185F14 000B6080 */  sll        $t4, $t3, 2
    /* E6958 80185F18 002C0821 */  addu       $at, $at, $t4
    /* E695C 80185F1C E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* E6960 80185F20 8C4D0000 */  lw         $t5, 0x0($v0)
    /* E6964 80185F24 3C018019 */  lui        $at, %hi(D_80197814_ovl3)
    /* E6968 80185F28 C4307814 */  lwc1       $f16, %lo(D_80197814_ovl3)($at)
    /* E696C 80185F2C 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E6970 80185F30 000D7080 */  sll        $t6, $t5, 2
    /* E6974 80185F34 002E0821 */  addu       $at, $at, $t6
    /* E6978 80185F38 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
    /* E697C 80185F3C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6980 80185F40 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E6984 80185F44 000FC080 */  sll        $t8, $t7, 2
    /* E6988 80185F48 00380821 */  addu       $at, $at, $t8
    /* E698C 80185F4C 1000001E */  b          .L80185FC8_ovl3
    /* E6990 80185F50 E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
  .L80185F54_ovl3:
    /* E6994 80185F54 0C029D9E */  jal        play_sound
    /* E6998 80185F58 240400F7 */   addiu     $a0, $zero, 0xF7
    /* E699C 80185F5C 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* E69A0 80185F60 44819000 */  mtc1       $at, $f18
    /* E69A4 80185F64 3C014188 */  lui        $at, (0x41880000 >> 16)
    /* E69A8 80185F68 44816000 */  mtc1       $at, $f12
    /* E69AC 80185F6C 0C048C51 */  jal        func_80123144
    /* E69B0 80185F70 E61200CC */   swc1      $f18, 0xCC($s0)
    /* E69B4 80185F74 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E69B8 80185F78 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E69BC 80185F7C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E69C0 80185F80 8C480000 */  lw         $t0, 0x0($v0)
    /* E69C4 80185F84 00084880 */  sll        $t1, $t0, 2
    /* E69C8 80185F88 00290821 */  addu       $at, $at, $t1
    /* E69CC 80185F8C E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* E69D0 80185F90 8C590000 */  lw         $t9, 0x0($v0)
    /* E69D4 80185F94 3C018019 */  lui        $at, %hi(D_80197818_ovl3)
    /* E69D8 80185F98 C4247818 */  lwc1       $f4, %lo(D_80197818_ovl3)($at)
    /* E69DC 80185F9C 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E69E0 80185FA0 00195080 */  sll        $t2, $t9, 2
    /* E69E4 80185FA4 002A0821 */  addu       $at, $at, $t2
    /* E69E8 80185FA8 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
    /* E69EC 80185FAC 8C4B0000 */  lw         $t3, 0x0($v0)
    /* E69F0 80185FB0 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* E69F4 80185FB4 44813000 */  mtc1       $at, $f6
    /* E69F8 80185FB8 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E69FC 80185FBC 000B6080 */  sll        $t4, $t3, 2
    /* E6A00 80185FC0 002C0821 */  addu       $at, $at, $t4
    /* E6A04 80185FC4 E4263C90 */  swc1       $f6, %lo(D_800E3C90)($at)
  .L80185FC8_ovl3:
    /* E6A08 80185FC8 3C040002 */  lui        $a0, (0x20205 >> 16)
    /* E6A0C 80185FCC 0C02A806 */  jal        func_800AA018
    /* E6A10 80185FD0 34840205 */   ori       $a0, $a0, (0x20205 & 0xFFFF)
    /* E6A14 80185FD4 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* E6A18 80185FD8 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* E6A1C 80185FDC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E6A20 80185FE0 C60800CC */  lwc1       $f8, 0xCC($s0)
    /* E6A24 80185FE4 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E6A28 80185FE8 000E7880 */  sll        $t7, $t6, 2
    /* E6A2C 80185FEC 002F0821 */  addu       $at, $at, $t7
    /* E6A30 80185FF0 C42A3210 */  lwc1       $f10, %lo(D_800E3210)($at)
    /* E6A34 80185FF4 460A403C */  c.lt.s     $f8, $f10
    /* E6A38 80185FF8 00000000 */  nop
    /* E6A3C 80185FFC 45020010 */  bc1fl      .L80186040_ovl3
    /* E6A40 80186000 961900D2 */   lhu       $t9, 0xD2($s0)
  .L80186004_ovl3:
    /* E6A44 80186004 0C002DAF */  jal        ohSleep
    /* E6A48 80186008 24040001 */   addiu     $a0, $zero, 0x1
    /* E6A4C 8018600C 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* E6A50 80186010 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* E6A54 80186014 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E6A58 80186018 C61000CC */  lwc1       $f16, 0xCC($s0)
    /* E6A5C 8018601C 8F080000 */  lw         $t0, 0x0($t8)
    /* E6A60 80186020 00084880 */  sll        $t1, $t0, 2
    /* E6A64 80186024 00290821 */  addu       $at, $at, $t1
    /* E6A68 80186028 C4323210 */  lwc1       $f18, %lo(D_800E3210)($at)
    /* E6A6C 8018602C 4612803C */  c.lt.s     $f16, $f18
    /* E6A70 80186030 00000000 */  nop
    /* E6A74 80186034 4501FFF3 */  bc1t       .L80186004_ovl3
    /* E6A78 80186038 00000000 */   nop
    /* E6A7C 8018603C 961900D2 */  lhu        $t9, 0xD2($s0)
  .L80186040_ovl3:
    /* E6A80 80186040 3C040002 */  lui        $a0, (0x20206 >> 16)
    /* E6A84 80186044 34840206 */  ori        $a0, $a0, (0x20206 & 0xFFFF)
    /* E6A88 80186048 272A0001 */  addiu      $t2, $t9, 0x1
    /* E6A8C 8018604C 0C02A855 */  jal        func_800AA154
    /* E6A90 80186050 A60A00D2 */   sh        $t2, 0xD2($s0)
    /* E6A94 80186054 240B0003 */  addiu      $t3, $zero, 0x3
    /* E6A98 80186058 AE0B003C */  sw         $t3, 0x3C($s0)
    /* E6A9C 8018605C AE0B0044 */  sw         $t3, 0x44($s0)
    /* E6AA0 80186060 A60000D2 */  sh         $zero, 0xD2($s0)
    /* E6AA4 80186064 A60000D0 */  sh         $zero, 0xD0($s0)
  jlabel .L80186068_ovl3
    /* E6AA8 80186068 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E6AAC 8018606C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E6AB0 80186070 3C01800F */  lui        $at, %hi(D_800E8920)
    /* E6AB4 80186074 3C18800F */  lui        $t8, %hi(D_800E8AE0)
    /* E6AB8 80186078 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6ABC 8018607C 3C040002 */  lui        $a0, (0x20203 >> 16)
    /* E6AC0 80186080 3C050002 */  lui        $a1, (0x2001F >> 16)
    /* E6AC4 80186084 000E7880 */  sll        $t7, $t6, 2
    /* E6AC8 80186088 002F0821 */  addu       $at, $at, $t7
    /* E6ACC 8018608C AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* E6AD0 80186090 8C430000 */  lw         $v1, 0x0($v0)
    /* E6AD4 80186094 34A5001F */  ori        $a1, $a1, (0x2001F & 0xFFFF)
    /* E6AD8 80186098 34840203 */  ori        $a0, $a0, (0x20203 & 0xFFFF)
    /* E6ADC 8018609C 00031880 */  sll        $v1, $v1, 2
    /* E6AE0 801860A0 0303C021 */  addu       $t8, $t8, $v1
    /* E6AE4 801860A4 8F188AE0 */  lw         $t8, %lo(D_800E8AE0)($t8)
    /* E6AE8 801860A8 33080006 */  andi       $t0, $t8, 0x6
    /* E6AEC 801860AC 1100000D */  beqz       $t0, .L801860E4_ovl3
    /* E6AF0 801860B0 3C018019 */   lui       $at, %hi(D_8019781C_ovl3)
    /* E6AF4 801860B4 C424781C */  lwc1       $f4, %lo(D_8019781C_ovl3)($at)
    /* E6AF8 801860B8 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E6AFC 801860BC 00230821 */  addu       $at, $at, $v1
    /* E6B00 801860C0 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
    /* E6B04 801860C4 8C490000 */  lw         $t1, 0x0($v0)
    /* E6B08 801860C8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E6B0C 801860CC 44813000 */  mtc1       $at, $f6
    /* E6B10 801860D0 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E6B14 801860D4 0009C880 */  sll        $t9, $t1, 2
    /* E6B18 801860D8 00390821 */  addu       $at, $at, $t9
    /* E6B1C 801860DC 1000000D */  b          .L80186114_ovl3
    /* E6B20 801860E0 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
  .L801860E4_ovl3:
    /* E6B24 801860E4 3C018019 */  lui        $at, %hi(D_80197820_ovl3)
    /* E6B28 801860E8 C4287820 */  lwc1       $f8, %lo(D_80197820_ovl3)($at)
    /* E6B2C 801860EC 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E6B30 801860F0 00230821 */  addu       $at, $at, $v1
    /* E6B34 801860F4 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
    /* E6B38 801860F8 8C4A0000 */  lw         $t2, 0x0($v0)
    /* E6B3C 801860FC 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* E6B40 80186100 44815000 */  mtc1       $at, $f10
    /* E6B44 80186104 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E6B48 80186108 000A5880 */  sll        $t3, $t2, 2
    /* E6B4C 8018610C 002B0821 */  addu       $at, $at, $t3
    /* E6B50 80186110 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
  .L80186114_ovl3:
    /* E6B54 80186114 0C02A9E3 */  jal        func_800AA78C
    /* E6B58 80186118 3C064040 */   lui       $a2, (0x40400000 >> 16)
    /* E6B5C 8018611C 3C040002 */  lui        $a0, (0x20203 >> 16)
    /* E6B60 80186120 0C02A806 */  jal        func_800AA018
    /* E6B64 80186124 34840203 */   ori       $a0, $a0, (0x20203 & 0xFFFF)
    /* E6B68 80186128 0C02BE85 */  jal        curObjSleepForever
    /* E6B6C 8018612C 00000000 */   nop
  jlabel .L80186130_ovl3
    /* E6B70 80186130 3C040002 */  lui        $a0, (0x20207 >> 16)
    /* E6B74 80186134 0C02A806 */  jal        func_800AA018
    /* E6B78 80186138 34840207 */   ori       $a0, $a0, (0x20207 & 0xFFFF)
    /* E6B7C 8018613C 0C02BE85 */  jal        curObjSleepForever
    /* E6B80 80186140 00000000 */   nop
  jlabel .L80186144_ovl3
    /* E6B84 80186144 24040006 */  addiu      $a0, $zero, 0x6
    /* E6B88 80186148 0C02ED1A */  jal        func_800BB468
    /* E6B8C 8018614C 24050010 */   addiu     $a1, $zero, 0x10
  .L80186150_ovl3:
    /* E6B90 80186150 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E6B94 80186154 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E6B98 80186158 44808000 */  mtc1       $zero, $f16
    /* E6B9C 8018615C 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E6BA0 80186160 8C4C0000 */  lw         $t4, 0x0($v0)
    /* E6BA4 80186164 44803000 */  mtc1       $zero, $f6
    /* E6BA8 80186168 000C6880 */  sll        $t5, $t4, 2
    /* E6BAC 8018616C 002D0821 */  addu       $at, $at, $t5
    /* E6BB0 80186170 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
    /* E6BB4 80186174 8C430000 */  lw         $v1, 0x0($v0)
    /* E6BB8 80186178 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E6BBC 8018617C 00031880 */  sll        $v1, $v1, 2
    /* E6BC0 80186180 00230821 */  addu       $at, $at, $v1
    /* E6BC4 80186184 C4323750 */  lwc1       $f18, %lo(D_800E3750)($at)
    /* E6BC8 80186188 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E6BCC 8018618C 00230821 */  addu       $at, $at, $v1
    /* E6BD0 80186190 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
    /* E6BD4 80186194 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6BD8 80186198 3C018019 */  lui        $at, %hi(D_80197824_ovl3)
    /* E6BDC 8018619C C4247824 */  lwc1       $f4, %lo(D_80197824_ovl3)($at)
    /* E6BE0 801861A0 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E6BE4 801861A4 000E7880 */  sll        $t7, $t6, 2
    /* E6BE8 801861A8 002F0821 */  addu       $at, $at, $t7
    /* E6BEC 801861AC E4243C90 */  swc1       $f4, %lo(D_800E3C90)($at)
    /* E6BF0 801861B0 8C580000 */  lw         $t8, 0x0($v0)
    /* E6BF4 801861B4 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E6BF8 801861B8 00184080 */  sll        $t0, $t8, 2
    /* E6BFC 801861BC 00280821 */  addu       $at, $at, $t0
    /* E6C00 801861C0 E4266690 */  swc1       $f6, %lo(D_800E6690)($at)
    /* E6C04 801861C4 8C430000 */  lw         $v1, 0x0($v0)
    /* E6C08 801861C8 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E6C0C 801861CC 00031880 */  sll        $v1, $v1, 2
    /* E6C10 801861D0 00230821 */  addu       $at, $at, $v1
    /* E6C14 801861D4 C4286690 */  lwc1       $f8, %lo(D_800E6690)($at)
    /* E6C18 801861D8 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E6C1C 801861DC 00230821 */  addu       $at, $at, $v1
    /* E6C20 801861E0 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
    /* E6C24 801861E4 8C490000 */  lw         $t1, 0x0($v0)
    /* E6C28 801861E8 3C018019 */  lui        $at, %hi(D_80197828_ovl3)
    /* E6C2C 801861EC C42A7828 */  lwc1       $f10, %lo(D_80197828_ovl3)($at)
    /* E6C30 801861F0 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E6C34 801861F4 0009C880 */  sll        $t9, $t1, 2
    /* E6C38 801861F8 00390821 */  addu       $at, $at, $t9
    /* E6C3C 801861FC 0C047717 */  jal        func_8011DC5C
    /* E6C40 80186200 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
    /* E6C44 80186204 0C029D9E */  jal        play_sound
    /* E6C48 80186208 24040016 */   addiu     $a0, $zero, 0x16
    /* E6C4C 8018620C 0C0473D6 */  jal        func_8011CF58
    /* E6C50 80186210 00000000 */   nop
    /* E6C54 80186214 3C040002 */  lui        $a0, (0x20202 >> 16)
    /* E6C58 80186218 0C02A855 */  jal        func_800AA154
    /* E6C5C 8018621C 34840202 */   ori       $a0, $a0, (0x20202 & 0xFFFF)
    /* E6C60 80186220 8E0A0030 */  lw         $t2, 0x30($s0)
    /* E6C64 80186224 AE0000A0 */  sw         $zero, 0xA0($s0)
    /* E6C68 80186228 254B0001 */  addiu      $t3, $t2, 0x1
    /* E6C6C 8018622C 0C02BE85 */  jal        curObjSleepForever
    /* E6C70 80186230 AE0B0030 */   sw        $t3, 0x30($s0)
    /* E6C74 80186234 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E6C78 80186238 8FB00018 */  lw         $s0, 0x18($sp)
    /* E6C7C 8018623C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* E6C80 80186240 03E00008 */  jr         $ra
    /* E6C84 80186244 00000000 */   nop
endlabel func_80185A9C_ovl3
.size func_80185A9C_ovl3, . - func_80185A9C_ovl3
