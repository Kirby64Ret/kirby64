glabel func_80110014
/* 098A84 80110014 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 098A88 80110018 44810000 */  mtc1  $at, $f0
/* 098A8C 8011001C C7A40010 */  lwc1  $f4, 0x10($sp)
/* 098A90 80110020 AFA7000C */  sw    $a3, 0xc($sp)
/* 098A94 80110024 3C09FFFF */  lui   $t1, 0xffff
/* 098A98 80110028 46002182 */  mul.s $f6, $f4, $f0
/* 098A9C 8011002C AC800004 */  sw    $zero, 4($a0)
/* 098AA0 80110030 AC800024 */  sw    $zero, 0x24($a0)
/* 098AA4 80110034 44857000 */  mtc1  $a1, $f14
/* 098AA8 80110038 44866000 */  mtc1  $a2, $f12
/* 098AAC 8011003C 4600320D */  trunc.w.s $f8, $f6
/* 098AB0 80110040 44024000 */  mfc1  $v0, $f8
/* 098AB4 80110044 00000000 */  nop   
/* 098AB8 80110048 0002C400 */  sll   $t8, $v0, 0x10
/* 098ABC 8011004C 0309C824 */  and   $t9, $t8, $t1
/* 098AC0 80110050 00497824 */  and   $t7, $v0, $t1
/* 098AC4 80110054 AC8F0000 */  sw    $t7, ($a0)
/* 098AC8 80110058 AC990020 */  sw    $t9, 0x20($a0)
/* 098ACC 8011005C C7AA0014 */  lwc1  $f10, 0x14($sp)
/* 098AD0 80110060 AC80000C */  sw    $zero, 0xc($a0)
/* 098AD4 80110064 AC80002C */  sw    $zero, 0x2c($a0)
/* 098AD8 80110068 46005402 */  mul.s $f16, $f10, $f0
/* 098ADC 8011006C AC800010 */  sw    $zero, 0x10($a0)
/* 098AE0 80110070 AC800030 */  sw    $zero, 0x30($a0)
/* 098AE4 80110074 4600848D */  trunc.w.s $f18, $f16
/* 098AE8 80110078 44039000 */  mfc1  $v1, $f18
/* 098AEC 8011007C 00000000 */  nop   
/* 098AF0 80110080 00035C03 */  sra   $t3, $v1, 0x10
/* 098AF4 80110084 316CFFFF */  andi  $t4, $t3, 0xffff
/* 098AF8 80110088 306DFFFF */  andi  $t5, $v1, 0xffff
/* 098AFC 8011008C AC8C0008 */  sw    $t4, 8($a0)
/* 098B00 80110090 AC8D0028 */  sw    $t5, 0x28($a0)
/* 098B04 80110094 C7A40018 */  lwc1  $f4, 0x18($sp)
/* 098B08 80110098 46002182 */  mul.s $f6, $f4, $f0
/* 098B0C 8011009C 00000000 */  nop   
/* 098B10 801100A0 46007282 */  mul.s $f10, $f14, $f0
/* 098B14 801100A4 00000000 */  nop   
/* 098B18 801100A8 46006482 */  mul.s $f18, $f12, $f0
/* 098B1C 801100AC 4600320D */  trunc.w.s $f8, $f6
/* 098B20 801100B0 4600910D */  trunc.w.s $f4, $f18
/* 098B24 801100B4 44054000 */  mfc1  $a1, $f8
/* 098B28 801100B8 4600540D */  trunc.w.s $f16, $f10
/* 098B2C 801100BC 44062000 */  mfc1  $a2, $f4
/* 098B30 801100C0 0005C400 */  sll   $t8, $a1, 0x10
/* 098B34 801100C4 0309C824 */  and   $t9, $t8, $t1
/* 098B38 801100C8 44078000 */  mfc1  $a3, $f16
/* 098B3C 801100CC AC990034 */  sw    $t9, 0x34($a0)
/* 098B40 801100D0 00A97824 */  and   $t7, $a1, $t1
/* 098B44 801100D4 00066C03 */  sra   $t5, $a2, 0x10
/* 098B48 801100D8 0007C400 */  sll   $t8, $a3, 0x10
/* 098B4C 801100DC AC8F0014 */  sw    $t7, 0x14($a0)
/* 098B50 801100E0 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 098B54 801100E4 0309C824 */  and   $t9, $t8, $t1
/* 098B58 801100E8 30CAFFFF */  andi  $t2, $a2, 0xffff
/* 098B5C 801100EC 00E96024 */  and   $t4, $a3, $t1
/* 098B60 801100F0 018E7825 */  or    $t7, $t4, $t6
/* 098B64 801100F4 032A5825 */  or    $t3, $t9, $t2
/* 098B68 801100F8 AC8F0018 */  sw    $t7, 0x18($a0)
/* 098B6C 801100FC AC8B0038 */  sw    $t3, 0x38($a0)
/* 098B70 80110100 C7A6000C */  lwc1  $f6, 0xc($sp)
/* 098B74 80110104 46003202 */  mul.s $f8, $f6, $f0
/* 098B78 80110108 4600428D */  trunc.w.s $f10, $f8
/* 098B7C 8011010C 44085000 */  mfc1  $t0, $f10
/* 098B80 80110110 00000000 */  nop   
/* 098B84 80110114 01096024 */  and   $t4, $t0, $t1
/* 098B88 80110118 00087C00 */  sll   $t7, $t0, 0x10
/* 098B8C 8011011C 358E0001 */  ori   $t6, $t4, 1
/* 098B90 80110120 01E9C024 */  and   $t8, $t7, $t1
/* 098B94 80110124 AC8E001C */  sw    $t6, 0x1c($a0)
/* 098B98 80110128 03E00008 */  jr    $ra
/* 098B9C 8011012C AC98003C */   sw    $t8, 0x3c($a0)
