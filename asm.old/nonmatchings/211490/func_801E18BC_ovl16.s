glabel func_801E18BC_ovl16
/* 217B6C 801E18BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 217B70 801E18C0 AFB10018 */  sw         $s1, 0x18($sp)
.L801E18C4_ovl17:
/* 217B74 801E18C4 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 217B78 801E18C8 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 217B7C 801E18CC 8E230000 */  lw         $v1, 0x0($s1)
/* 217B80 801E18D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 217B84 801E18D4 AFB00014 */  sw         $s0, 0x14($sp)
.L801E18D8_ovl9:
/* 217B88 801E18D8 AFA40020 */  sw         $a0, 0x20($sp)
/* 217B8C 801E18DC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 217B90 801E18E0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 217B94 801E18E4 240E0007 */  addiu      $t6, $zero, 0x7
/* 217B98 801E18E8 000FC080 */  sll        $t8, $t7, 2
/* 217B9C 801E18EC 00380821 */  addu       $at, $at, $t8
/* 217BA0 801E18F0 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 217BA4 801E18F4 8C790000 */  lw         $t9, 0x0($v1)
/* 217BA8 801E18F8 44801000 */  mtc1       $zero, $f2
/* 217BAC 801E18FC 3C04800E */  lui        $a0, %hi(D_800E3750)
/* 217BB0 801E1900 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* 217BB4 801E1904 00194080 */  sll        $t0, $t9, 2
/* 217BB8 801E1908 00884821 */  addu       $t1, $a0, $t0
.L801E190C_ovl17:
/* 217BBC 801E190C E5220000 */  swc1       $f2, 0x0($t1)
/* 217BC0 801E1910 8C620000 */  lw         $v0, 0x0($v1)
/* 217BC4 801E1914 3C01800E */  lui        $at, %hi(D_800E3590)
/* 217BC8 801E1918 3C05800E */  lui        $a1, %hi(D_800E3C90)
/* 217BCC 801E191C 00021080 */  sll        $v0, $v0, 2
/* 217BD0 801E1920 00825021 */  addu       $t2, $a0, $v0
/* 217BD4 801E1924 C5400000 */  lwc1       $f0, 0x0($t2)
/* 217BD8 801E1928 00220821 */  addu       $at, $at, $v0
.L801E192C_ovl9:
/* 217BDC 801E192C 24A53C90 */  addiu      $a1, $a1, %lo(D_800E3C90)
/* 217BE0 801E1930 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 217BE4 801E1934 8C6B0000 */  lw         $t3, 0x0($v1)
.L801E1938_ovl17:
/* 217BE8 801E1938 3C01800E */  lui        $at, %hi(D_800E3210)
/* 217BEC 801E193C 3C06800F */  lui        $a2, %hi(D_800EA6E0)
/* 217BF0 801E1940 000B6080 */  sll        $t4, $t3, 2
/* 217BF4 801E1944 002C0821 */  addu       $at, $at, $t4
/* 217BF8 801E1948 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
.L801E194C_ovl15:
/* 217BFC 801E194C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 217C00 801E1950 3C01800E */  lui        $at, %hi(D_800E3050)
.L801E1954_ovl17:
/* 217C04 801E1954 24C6A6E0 */  addiu      $a2, $a2, %lo(D_800EA6E0)
.L801E1958_ovl9:
/* 217C08 801E1958 000D7880 */  sll        $t7, $t5, 2
/* 217C0C 801E195C 002F0821 */  addu       $at, $at, $t7
glabel func_801E1960_ovl17
/* 217C10 801E1960 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 217C14 801E1964 8C6E0000 */  lw         $t6, 0x0($v1)
/* 217C18 801E1968 3C01801F */  lui        $at, %hi(D_801EFF08_ovl16)
/* 217C1C 801E196C C424FF08 */  lwc1       $f4, %lo(D_801EFF08_ovl16)($at)
/* 217C20 801E1970 000EC080 */  sll        $t8, $t6, 2
/* 217C24 801E1974 00B8C821 */  addu       $t9, $a1, $t8
/* 217C28 801E1978 E7240000 */  swc1       $f4, 0x0($t9)
/* 217C2C 801E197C 8C620000 */  lw         $v0, 0x0($v1)
/* 217C30 801E1980 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 217C34 801E1984 3C10800F */  lui        $s0, %hi(D_800E9E20)
.L801E1988_ovl12:
/* 217C38 801E1988 00021080 */  sll        $v0, $v0, 2
/* 217C3C 801E198C 00A24021 */  addu       $t0, $a1, $v0
/* 217C40 801E1990 C5060000 */  lwc1       $f6, 0x0($t0)
glabel func_801E1994_ovl9
/* 217C44 801E1994 00220821 */  addu       $at, $at, $v0
/* 217C48 801E1998 26109E20 */  addiu      $s0, $s0, %lo(D_800E9E20)
.L801E199C_ovl15:
/* 217C4C 801E199C E4263AD0 */  swc1       $f6, %lo(D_800E3AD0)($at)
/* 217C50 801E19A0 8C620000 */  lw         $v0, 0x0($v1)
/* 217C54 801E19A4 00021080 */  sll        $v0, $v0, 2
/* 217C58 801E19A8 00C24821 */  addu       $t1, $a2, $v0
glabel func_801E19AC_ovl13
/* 217C5C 801E19AC C5280000 */  lwc1       $f8, 0x0($t1)
/* 217C60 801E19B0 02024021 */  addu       $t0, $s0, $v0
/* 217C64 801E19B4 46081032 */  c.eq.s     $f2, $f8
/* 217C68 801E19B8 00000000 */  nop
/* 217C6C 801E19BC 4503008C */  bc1tl      .L801E1BF0_ovl16
.L801E19C0_ovl15:
/* 217C70 801E19C0 AD000000 */   sw        $zero, 0x0($t0)
.L801E19C4_ovl10:
/* 217C74 801E19C4 3C10800F */  lui        $s0, %hi(D_800E9E20)
/* 217C78 801E19C8 26109E20 */  addiu      $s0, $s0, %lo(D_800E9E20)
/* 217C7C 801E19CC 02025021 */  addu       $t2, $s0, $v0
glabel func_801E19D0_ovl15
/* 217C80 801E19D0 AD400000 */  sw         $zero, 0x0($t2)
/* 217C84 801E19D4 8C620000 */  lw         $v0, 0x0($v1)
.L801E19D8_ovl12:
/* 217C88 801E19D8 3C05800E */  lui        $a1, %hi(D_800DFBD0)
/* 217C8C 801E19DC 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 217C90 801E19E0 00021080 */  sll        $v0, $v0, 2
/* 217C94 801E19E4 00A22821 */  addu       $a1, $a1, $v0
/* 217C98 801E19E8 8CA5FBD0 */  lw         $a1, %lo(D_800DFBD0)($a1)
.L801E19EC_ovl9:
/* 217C9C 801E19EC 44810000 */  mtc1       $at, $f0
.L801E19F0_ovl17:
/* 217CA0 801E19F0 02022021 */  addu       $a0, $s0, $v0
.L801E19F4_ovl12:
/* 217CA4 801E19F4 8CAB0014 */  lw         $t3, 0x14($a1)
/* 217CA8 801E19F8 C56A0020 */  lwc1       $f10, 0x20($t3)
.L801E19FC_ovl10:
/* 217CAC 801E19FC 460A003C */  c.lt.s     $f0, $f10
/* 217CB0 801E1A00 00000000 */  nop
/* 217CB4 801E1A04 4502000A */  bc1fl      .L801E1A30_ovl16
/* 217CB8 801E1A08 8CAF001C */   lw        $t7, 0x1C($a1)
/* 217CBC 801E1A0C 8C8C0000 */  lw         $t4, 0x0($a0)
/* 217CC0 801E1A10 3C05800E */  lui        $a1, %hi(D_800DFBD0)
/* 217CC4 801E1A14 358D0001 */  ori        $t5, $t4, 0x1
/* 217CC8 801E1A18 AC8D0000 */  sw         $t5, 0x0($a0)
/* 217CCC 801E1A1C 8C620000 */  lw         $v0, 0x0($v1)
/* 217CD0 801E1A20 00021080 */  sll        $v0, $v0, 2
.L801E1A24_ovl13:
/* 217CD4 801E1A24 00A22821 */  addu       $a1, $a1, $v0
.L801E1A28_ovl13:
/* 217CD8 801E1A28 8CA5FBD0 */  lw         $a1, %lo(D_800DFBD0)($a1)
/* 217CDC 801E1A2C 8CAF001C */  lw         $t7, 0x1C($a1)
.L801E1A30_ovl16:
/* 217CE0 801E1A30 02022021 */  addu       $a0, $s0, $v0
/* 217CE4 801E1A34 C5F0001C */  lwc1       $f16, 0x1C($t7)
.L801E1A38_ovl17:
/* 217CE8 801E1A38 4610003C */  c.lt.s     $f0, $f16
/* 217CEC 801E1A3C 00000000 */  nop
.L801E1A40_ovl15:
/* 217CF0 801E1A40 4502000A */  bc1fl      .L801E1A6C_ovl16
/* 217CF4 801E1A44 8CB90024 */   lw        $t9, 0x24($a1)
.L801E1A48_ovl17:
/* 217CF8 801E1A48 8C8E0000 */  lw         $t6, 0x0($a0)
.L801E1A4C_ovl13:
/* 217CFC 801E1A4C 3C05800E */  lui        $a1, %hi(D_800DFBD0)
/* 217D00 801E1A50 35D80008 */  ori        $t8, $t6, 0x8
.L801E1A54_ovl15:
/* 217D04 801E1A54 AC980000 */  sw         $t8, 0x0($a0)
.L801E1A58_ovl17:
/* 217D08 801E1A58 8C620000 */  lw         $v0, 0x0($v1)
.L801E1A5C_ovl17:
/* 217D0C 801E1A5C 00021080 */  sll        $v0, $v0, 2
glabel func_801E1A60_ovl12
/* 217D10 801E1A60 00A22821 */  addu       $a1, $a1, $v0
.L801E1A64_ovl15:
/* 217D14 801E1A64 8CA5FBD0 */  lw         $a1, %lo(D_800DFBD0)($a1)
/* 217D18 801E1A68 8CB90024 */  lw         $t9, 0x24($a1)
.L801E1A6C_ovl16:
/* 217D1C 801E1A6C 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* 217D20 801E1A70 44810000 */  mtc1       $at, $f0
/* 217D24 801E1A74 C7320020 */  lwc1       $f18, 0x20($t9)
.L801E1A78_ovl10:
/* 217D28 801E1A78 02022021 */  addu       $a0, $s0, $v0
/* 217D2C 801E1A7C 4600903C */  c.lt.s     $f18, $f0
/* 217D30 801E1A80 00000000 */  nop
/* 217D34 801E1A84 4502000A */  bc1fl      func_801E1AB0_ovl16
/* 217D38 801E1A88 8CAA000C */   lw        $t2, 0xC($a1)
/* 217D3C 801E1A8C 8C880000 */  lw         $t0, 0x0($a0)
/* 217D40 801E1A90 3C05800E */  lui        $a1, %hi(D_800DFBD0)
/* 217D44 801E1A94 35090002 */  ori        $t1, $t0, 0x2
.L801E1A98_ovl9:
/* 217D48 801E1A98 AC890000 */  sw         $t1, 0x0($a0)
/* 217D4C 801E1A9C 8C620000 */  lw         $v0, 0x0($v1)
.L801E1AA0_ovl10:
/* 217D50 801E1AA0 00021080 */  sll        $v0, $v0, 2
.L801E1AA4_ovl12:
/* 217D54 801E1AA4 00A22821 */  addu       $a1, $a1, $v0
/* 217D58 801E1AA8 8CA5FBD0 */  lw         $a1, %lo(D_800DFBD0)($a1)
.L801E1AAC_ovl10:
/* 217D5C 801E1AAC 8CAA000C */  lw         $t2, 0xC($a1)
glabel func_801E1AB0_ovl16
/* 217D60 801E1AB0 02022021 */  addu       $a0, $s0, $v0
/* 217D64 801E1AB4 C544001C */  lwc1       $f4, 0x1C($t2)
.L801E1AB8_ovl15:
/* 217D68 801E1AB8 4600203C */  c.lt.s     $f4, $f0
/* 217D6C 801E1ABC 00000000 */  nop
/* 217D70 801E1AC0 45020007 */  bc1fl      .L801E1AE0_ovl16
/* 217D74 801E1AC4 00C26821 */   addu      $t5, $a2, $v0
/* 217D78 801E1AC8 8C8B0000 */  lw         $t3, 0x0($a0)
.L801E1ACC_ovl13:
/* 217D7C 801E1ACC 356C0004 */  ori        $t4, $t3, 0x4
/* 217D80 801E1AD0 AC8C0000 */  sw         $t4, 0x0($a0)
/* 217D84 801E1AD4 8C620000 */  lw         $v0, 0x0($v1)
/* 217D88 801E1AD8 00021080 */  sll        $v0, $v0, 2
/* 217D8C 801E1ADC 00C26821 */  addu       $t5, $a2, $v0
.L801E1AE0_ovl16:
/* 217D90 801E1AE0 E5A00000 */  swc1       $f0, 0x0($t5)
/* 217D94 801E1AE4 0C029D9E */  jal        play_sound
.L801E1AE8_ovl12:
/* 217D98 801E1AE8 240401AA */   addiu     $a0, $zero, 0x1AA
/* 217D9C 801E1AEC 8E230000 */  lw         $v1, 0x0($s1)
.L801E1AF0_ovl17:
/* 217DA0 801E1AF0 8C620000 */  lw         $v0, 0x0($v1)
.L801E1AF4_ovl13:
/* 217DA4 801E1AF4 00021080 */  sll        $v0, $v0, 2
/* 217DA8 801E1AF8 02027821 */  addu       $t7, $s0, $v0
/* 217DAC 801E1AFC 8DEE0000 */  lw         $t6, 0x0($t7)
.L801E1B00_ovl17:
/* 217DB0 801E1B00 11C0000A */  beqz       $t6, .L801E1B2C_ovl16
.L801E1B04_ovl15:
/* 217DB4 801E1B04 00000000 */   nop
.L801E1B08_ovl16:
/* 217DB8 801E1B08 0C002DAF */  jal        finish_current_thread
/* 217DBC 801E1B0C 24040001 */   addiu     $a0, $zero, 0x1
/* 217DC0 801E1B10 8E230000 */  lw         $v1, 0x0($s1)
/* 217DC4 801E1B14 8C620000 */  lw         $v0, 0x0($v1)
/* 217DC8 801E1B18 00021080 */  sll        $v0, $v0, 2
/* 217DCC 801E1B1C 0202C021 */  addu       $t8, $s0, $v0
/* 217DD0 801E1B20 8F190000 */  lw         $t9, 0x0($t8)
/* 217DD4 801E1B24 1720FFF8 */  bnez       $t9, .L801E1B08_ovl16
.L801E1B28_ovl10:
/* 217DD8 801E1B28 00000000 */   nop
.L801E1B2C_ovl16:
/* 217DDC 801E1B2C 3C04800D */  lui        $a0, %hi(D_800D7098 + 0x8)
/* 217DE0 801E1B30 8C8470A0 */  lw         $a0, %lo(D_800D7098 + 0x8)($a0)
/* 217DE4 801E1B34 24010001 */  addiu      $at, $zero, 0x1
/* 217DE8 801E1B38 50800008 */  beql       $a0, $zero, .L801E1B5C_ovl16
/* 217DEC 801E1B3C 3C040001 */   lui       $a0, (0x1047D >> 16)
/* 217DF0 801E1B40 10810010 */  beq        $a0, $at, .L801E1B84_ovl16
/* 217DF4 801E1B44 24010002 */   addiu     $at, $zero, 0x2
/* 217DF8 801E1B48 5081001A */  beql       $a0, $at, .L801E1BB4_ovl16
/* 217DFC 801E1B4C 3C040001 */   lui       $a0, (0x10483 >> 16)
/* 217E00 801E1B50 10000022 */  b          .L801E1BDC_ovl16
.L801E1B54_ovl15:
/* 217E04 801E1B54 44803000 */   mtc1      $zero, $f6
.L801E1B58_ovl10:
/* 217E08 801E1B58 3C040001 */  lui        $a0, (0x1047D >> 16)
.L801E1B5C_ovl16:
/* 217E0C 801E1B5C 0C02A806 */  jal        func_800AA018
/* 217E10 801E1B60 3484047D */   ori       $a0, $a0, (0x1047D & 0xFFFF)
.L801E1B64_ovl13:
/* 217E14 801E1B64 3C040001 */  lui        $a0, (0x1047C >> 16)
/* 217E18 801E1B68 0C02A855 */  jal        func_800AA154
.L801E1B6C_ovl17:
/* 217E1C 801E1B6C 3484047C */   ori       $a0, $a0, (0x1047C & 0xFFFF)
.L801E1B70_ovl15:
/* 217E20 801E1B70 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801E1B74_ovl13:
/* 217E24 801E1B74 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 217E28 801E1B78 8C620000 */  lw         $v0, 0x0($v1)
.L801E1B7C_ovl17:
/* 217E2C 801E1B7C 10000016 */  b          .L801E1BD8_ovl16
/* 217E30 801E1B80 00021080 */   sll       $v0, $v0, 2
.L801E1B84_ovl16:
/* 217E34 801E1B84 3C040001 */  lui        $a0, (0x10477 >> 16)
/* 217E38 801E1B88 0C02A806 */  jal        func_800AA018
/* 217E3C 801E1B8C 34840477 */   ori       $a0, $a0, (0x10477 & 0xFFFF)
glabel func_801E1B90_ovl12
/* 217E40 801E1B90 3C040001 */  lui        $a0, (0x10476 >> 16)
/* 217E44 801E1B94 0C02A855 */  jal        func_800AA154
glabel func_801E1B98_ovl15
/* 217E48 801E1B98 34840476 */   ori       $a0, $a0, (0x10476 & 0xFFFF)
/* 217E4C 801E1B9C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 217E50 801E1BA0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 217E54 801E1BA4 8C620000 */  lw         $v0, 0x0($v1)
/* 217E58 801E1BA8 1000000B */  b          .L801E1BD8_ovl16
/* 217E5C 801E1BAC 00021080 */   sll       $v0, $v0, 2
/* 217E60 801E1BB0 3C040001 */  lui        $a0, (0x10483 >> 16)
.L801E1BB4_ovl16:
/* 217E64 801E1BB4 0C02A806 */  jal        func_800AA018
/* 217E68 801E1BB8 34840483 */   ori       $a0, $a0, (0x10483 & 0xFFFF)
/* 217E6C 801E1BBC 3C040001 */  lui        $a0, (0x10482 >> 16)
.L801E1BC0_ovl13:
/* 217E70 801E1BC0 0C02A855 */  jal        func_800AA154
/* 217E74 801E1BC4 34840482 */   ori       $a0, $a0, (0x10482 & 0xFFFF)
/* 217E78 801E1BC8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801E1BCC_ovl13:
/* 217E7C 801E1BCC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801E1BD0_ovl13:
/* 217E80 801E1BD0 8C620000 */  lw         $v0, 0x0($v1)
/* 217E84 801E1BD4 00021080 */  sll        $v0, $v0, 2
.L801E1BD8_ovl16:
/* 217E88 801E1BD8 44803000 */  mtc1       $zero, $f6
.L801E1BDC_ovl16:
/* 217E8C 801E1BDC 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 217E90 801E1BE0 00220821 */  addu       $at, $at, $v0
.L801E1BE4_ovl10:
/* 217E94 801E1BE4 10000002 */  b          .L801E1BF0_ovl16
.L801E1BE8_ovl17:
/* 217E98 801E1BE8 E426A6E0 */   swc1      $f6, %lo(D_800EA6E0)($at)
/* 217E9C 801E1BEC AD000000 */  sw         $zero, 0x0($t0)
.L801E1BF0_ovl16:
/* 217EA0 801E1BF0 8C6A0000 */  lw         $t2, 0x0($v1)
.L801E1BF4_ovl13:
/* 217EA4 801E1BF4 8FBF001C */  lw         $ra, 0x1C($sp)
.L801E1BF8_ovl17:
/* 217EA8 801E1BF8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 217EAC 801E1BFC 000A5880 */  sll        $t3, $t2, 2
.L801E1C00_ovl15:
/* 217EB0 801E1C00 002B0821 */  addu       $at, $at, $t3
/* 217EB4 801E1C04 24090007 */  addiu      $t1, $zero, 0x7
.L801E1C08_ovl15:
/* 217EB8 801E1C08 8FB00014 */  lw         $s0, 0x14($sp)
/* 217EBC 801E1C0C 8FB10018 */  lw         $s1, 0x18($sp)
/* 217EC0 801E1C10 AC29DC50 */  sw         $t1, %lo(gEntityVtableIndexArray)($at)
/* 217EC4 801E1C14 03E00008 */  jr         $ra
/* 217EC8 801E1C18 27BD0020 */   addiu     $sp, $sp, 0x20
