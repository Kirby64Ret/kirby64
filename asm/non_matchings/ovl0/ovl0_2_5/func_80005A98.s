glabel func_80005A98
/* 006698 80005A98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00669C 80005A9C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0066A0 80005AA0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0066A4 80005AA4 3C028005 */  lui   $v0, %hi(D_80049308) # $v0, 0x8005
/* 0066A8 80005AA8 240E0001 */  li    $t6, 1
/* 0066AC 80005AAC 240F0032 */  li    $t7, 50
/* 0066B0 80005AB0 24429308 */  addiu $v0, %lo(D_80049308) # addiu $v0, $v0, -0x6cf8
/* 0066B4 80005AB4 AC8E0000 */  sw    $t6, ($a0)
/* 0066B8 80005AB8 AC8F0004 */  sw    $t7, 4($a0)
/* 0066BC 80005ABC 8C580000 */  lw    $t8, ($v0)
/* 0066C0 80005AC0 00808025 */  move  $s0, $a0
/* 0066C4 80005AC4 3C198005 */  lui   $t9, %hi(D_8004A48C) # $t9, 0x8005
/* 0066C8 80005AC8 53000008 */  beql  $t8, $zero, .L80005AEC_ovl0
/* 0066CC 80005ACC AE000014 */   sw    $zero, 0x14($s0)
/* 0066D0 80005AD0 8F39A48C */  lw    $t9, %lo(D_8004A48C)($t9)
/* 0066D4 80005AD4 AC990014 */  sw    $t9, 0x14($a0)
/* 0066D8 80005AD8 8C480000 */  lw    $t0, ($v0)
/* 0066DC 80005ADC AC880068 */  sw    $t0, 0x68($a0)
/* 0066E0 80005AE0 10000003 */  b     .L80005AF0_ovl0
/* 0066E4 80005AE4 AC400000 */   sw    $zero, ($v0)
/* 0066E8 80005AE8 AE000014 */  sw    $zero, 0x14($s0)
.L80005AEC_ovl0:
/* 0066EC 80005AEC AE000068 */  sw    $zero, 0x68($s0)
.L80005AF0_ovl0:
/* 0066F0 80005AF0 AE05006C */  sw    $a1, 0x6c($s0)
/* 0066F4 80005AF4 3C098005 */  lui   $t1, %hi(D_8004A3F4) # $t1, 0x8005
/* 0066F8 80005AF8 8D29A3F4 */  lw    $t1, %lo(D_8004A3F4)($t1)
/* 0066FC 80005AFC 24040002 */  li    $a0, 2
/* 006700 80005B00 10A00006 */  beqz  $a1, .L80005B1C_ovl0
/* 006704 80005B04 AE090070 */   sw    $t1, 0x70($s0)
/* 006708 80005B08 3C0A8005 */  lui   $t2, %hi(D_80049320) # $t2, 0x8005
/* 00670C 80005B0C 254A9320 */  addiu $t2, %lo(D_80049320) # addiu $t2, $t2, -0x6ce0
/* 006710 80005B10 AE0A0020 */  sw    $t2, 0x20($s0)
/* 006714 80005B14 10000002 */  b     .L80005B20_ovl0
/* 006718 80005B18 AE07001C */   sw    $a3, 0x1c($s0)
.L80005B1C_ovl0:
/* 00671C 80005B1C AE000020 */  sw    $zero, 0x20($s0)
.L80005B20_ovl0:
/* 006720 80005B20 AE040018 */  sw    $a0, 0x18($s0)
/* 006724 80005B24 3C0B8005 */  lui   $t3, %hi(D_8004A450) # $t3, 0x8005
/* 006728 80005B28 8D6BA450 */  lw    $t3, %lo(D_8004A450)($t3)
/* 00672C 80005B2C 3C0E8005 */  lui   $t6, %hi(D_80048900) # $t6, 0x8005
/* 006730 80005B30 3C198004 */  lui   $t9, %hi(D_8003DCAC) # $t9, 0x8004
/* 006734 80005B34 240C0001 */  li    $t4, 1
/* 006738 80005B38 240D0004 */  li    $t5, 4
/* 00673C 80005B3C 25CE8900 */  addiu $t6, %lo(D_80048900) # addiu $t6, $t6, -0x7700
/* 006740 80005B40 240F0100 */  li    $t7, 256
/* 006744 80005B44 2739DCAC */  addiu $t9, %lo(D_8003DCAC) # addiu $t9, $t9, -0x2354
/* 006748 80005B48 0006C0C0 */  sll   $t8, $a2, 3
/* 00674C 80005B4C AE00007C */  sw    $zero, 0x7c($s0)
/* 006750 80005B50 AE0C0028 */  sw    $t4, 0x28($s0)
/* 006754 80005B54 AE0D002C */  sw    $t5, 0x2c($s0)
/* 006758 80005B58 AE0E0030 */  sw    $t6, 0x30($s0)
/* 00675C 80005B5C AE0F0034 */  sw    $t7, 0x34($s0)
/* 006760 80005B60 03191021 */  addu  $v0, $t8, $t9
/* 006764 80005B64 AE0B0080 */  sw    $t3, 0x80($s0)
/* 006768 80005B68 8C430000 */  lw    $v1, ($v0)
/* 00676C 80005B6C 24091000 */  li    $t1, 4096
/* 006770 80005B70 240A0800 */  li    $t2, 2048
/* 006774 80005B74 14600007 */  bnez  $v1, .L80005B94_ovl0
/* 006778 80005B78 3C0B8005 */   lui   $t3, %hi(D_80049358) # $t3, 0x8005
/* 00677C 80005B7C 3C048004 */  lui   $a0, %hi(D_800400C0) # $a0, 0x8004
/* 006780 80005B80 248400C0 */  addiu $a0, %lo(D_800400C0) # addiu $a0, $a0, 0xc0
/* 006784 80005B84 0C008C27 */  jal   fatal_printf
/* 006788 80005B88 00C02825 */   move  $a1, $a2
.L80005B8C_ovl0:
/* 00678C 80005B8C 1000FFFF */  b     .L80005B8C_ovl0
/* 006790 80005B90 00000000 */   nop   
.L80005B94_ovl0:
/* 006794 80005B94 AE030038 */  sw    $v1, 0x38($s0)
/* 006798 80005B98 8C480004 */  lw    $t0, 4($v0)
/* 00679C 80005B9C 256B9358 */  addiu $t3, %lo(D_80049358) # addiu $t3, $t3, -0x6ca8
/* 0067A0 80005BA0 256C000F */  addiu $t4, $t3, 0xf
/* 0067A4 80005BA4 000C6902 */  srl   $t5, $t4, 4
/* 0067A8 80005BA8 000D7100 */  sll   $t6, $t5, 4
/* 0067AC 80005BAC 240F0400 */  li    $t7, 1024
/* 0067B0 80005BB0 2CC10010 */  sltiu $at, $a2, 0x10
/* 0067B4 80005BB4 AE09003C */  sw    $t1, 0x3c($s0)
/* 0067B8 80005BB8 AE0A0044 */  sw    $t2, 0x44($s0)
/* 0067BC 80005BBC AE0E0048 */  sw    $t6, 0x48($s0)
/* 0067C0 80005BC0 AE0F004C */  sw    $t7, 0x4c($s0)
/* 0067C4 80005BC4 10200011 */  beqz  $at, .L80005C0C_ovl0
/* 0067C8 80005BC8 AE080040 */   sw    $t0, 0x40($s0)
/* 0067CC 80005BCC 0006C080 */  sll   $t8, $a2, 2
/* 0067D0 80005BD0 3C018004 */  lui   $at, 0x8004
/* 0067D4 80005BD4 00380821 */  addu  $at, $at, $t8
/* 0067D8 80005BD8 8C380108 */  lw    $t8, 0x108($at)
/* 0067DC 80005BDC 03000008 */  jr    $t8
/* 0067E0 80005BE0 00000000 */   nop   
/* 0067E4 80005BE4 8FA20034 */  lw    $v0, 0x34($sp)
/* 0067E8 80005BE8 AE020050 */  sw    $v0, 0x50($s0)
/* 0067EC 80005BEC 8FB90038 */  lw    $t9, 0x38($sp)
/* 0067F0 80005BF0 AE040074 */  sw    $a0, 0x74($s0)
/* 0067F4 80005BF4 00594021 */  addu  $t0, $v0, $t9
/* 0067F8 80005BF8 10000004 */  b     .L80005C0C_ovl0
/* 0067FC 80005BFC AE080054 */   sw    $t0, 0x54($s0)
/* 006800 80005C00 AE000050 */  sw    $zero, 0x50($s0)
/* 006804 80005C04 AE000054 */  sw    $zero, 0x54($s0)
/* 006808 80005C08 AE000074 */  sw    $zero, 0x74($s0)
.L80005C0C_ovl0:
/* 00680C 80005C0C 3C0A8005 */  lui   $t2, %hi(D_80049760) # $t2, 0x8005
/* 006810 80005C10 254A9760 */  addiu $t2, %lo(D_80049760) # addiu $t2, $t2, -0x68a0
/* 006814 80005C14 8FA90030 */  lw    $t1, 0x30($sp)
/* 006818 80005C18 254B000F */  addiu $t3, $t2, 0xf
/* 00681C 80005C1C 000B6102 */  srl   $t4, $t3, 4
/* 006820 80005C20 000C6900 */  sll   $t5, $t4, 4
/* 006824 80005C24 240E0C00 */  li    $t6, 3072
/* 006828 80005C28 AE00005C */  sw    $zero, 0x5c($s0)
/* 00682C 80005C2C AE0D0060 */  sw    $t5, 0x60($s0)
/* 006830 80005C30 AE0E0064 */  sw    $t6, 0x64($s0)
/* 006834 80005C34 0C00E328 */  jal   func_80038CA0_ovl0
/* 006838 80005C38 AE090058 */   sw    $t1, 0x58($s0)
/* 00683C 80005C3C 3C048005 */  lui   $a0, %hi(D_80048CB8) # $a0, 0x8005
/* 006840 80005C40 24848CB8 */  addiu $a0, %lo(D_80048CB8) # addiu $a0, $a0, -0x7348
/* 006844 80005C44 02002825 */  move  $a1, $s0
/* 006848 80005C48 0C00B4BC */  jal   func_8002D2F0_ovl0
/* 00684C 80005C4C 00003025 */   move  $a2, $zero
/* 006850 80005C50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 006854 80005C54 8FB00018 */  lw    $s0, 0x18($sp)
/* 006858 80005C58 27BD0020 */  addiu $sp, $sp, 0x20
/* 00685C 80005C5C 03E00008 */  jr    $ra
/* 006860 80005C60 00000000 */   nop   
