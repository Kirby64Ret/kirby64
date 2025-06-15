glabel func_801DCAB0_ovl12 # 29
/* 0018B0 801DCAB0 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 0018B4 801DCAB4 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 0018B8 801DCAB8 3C04800F */  lui         $a0, %hi(D_800E98E0)
/* 0018BC 801DCABC 248498E0 */  addiu       $a0, $a0, %lo(D_800E98E0)
/* 0018C0 801DCAC0 8C4E0000 */  lw          $t6, 0x0($v0)
/* 0018C4 801DCAC4 3C05800E */  lui         $a1, %hi(gEntitiesNextPosYArray)
/* 0018C8 801DCAC8 3C06800D */  lui         $a2, %hi(D_800D7098)
/* 0018CC 801DCACC 000E7880 */  sll         $t7, $t6, 2
/* 0018D0 801DCAD0 008FC021 */  addu        $t8, $a0, $t7
/* 0018D4 801DCAD4 AF000000 */  sw          $zero, 0x0($t8)
/* 0018D8 801DCAD8 8C430000 */  lw          $v1, 0x0($v0)
/* 0018DC 801DCADC 24C67098 */  addiu       $a2, $a2, %lo(D_800D7098)
/* 0018E0 801DCAE0 24A52790 */  addiu       $a1, $a1, %lo(gEntitiesNextPosYArray)
/* 0018E4 801DCAE4 00031880 */  sll         $v1, $v1, 2
/* 0018E8 801DCAE8 8CD90000 */  lw          $t9, 0x0($a2)
/* 0018EC 801DCAEC 00A35021 */  addu        $t2, $a1, $v1
/* 0018F0 801DCAF0 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 0018F4 801DCAF4 44814000 */  mtc1        $at, $f8
/* 0018F8 801DCAF8 C5460000 */  lwc1        $f6, 0x0($t2)
/* 0018FC 801DCAFC 00194080 */  sll         $t0, $t9, 2
/* 001900 801DCB00 00A84821 */  addu        $t1, $a1, $t0
/* 001904 801DCB04 46083281 */  sub.s       $f10, $f6, $f8
/* 001908 801DCB08 C5240000 */  lwc1        $f4, 0x0($t1)
/* 00190C 801DCB0C 24050001 */  addiu       $a1, $zero, 0x1
/* 001910 801DCB10 3C07800E */  lui         $a3, %hi(D_800E6A10)
/* 001914 801DCB14 4604503E */  c.le.s      $f10, $f4
/* 001918 801DCB18 00835821 */  addu        $t3, $a0, $v1
/* 00191C 801DCB1C 45020027 */  bc1fl       .L801DCBBC
/* 001920 801DCB20 00836821 */   addu       $t5, $a0, $v1
/* 001924 801DCB24 AD650000 */  sw          $a1, 0x0($t3)
/* 001928 801DCB28 8CCC001C */  lw          $t4, 0x1C($a2)
/* 00192C 801DCB2C 8C4F0000 */  lw          $t7, 0x0($v0)
/* 001930 801DCB30 24E76A10 */  addiu       $a3, $a3, %lo(D_800E6A10)
/* 001934 801DCB34 000C6880 */  sll         $t5, $t4, 2
/* 001938 801DCB38 00ED7021 */  addu        $t6, $a3, $t5
/* 00193C 801DCB3C C5D00000 */  lwc1        $f16, 0x0($t6)
/* 001940 801DCB40 000FC080 */  sll         $t8, $t7, 2
/* 001944 801DCB44 00F8C821 */  addu        $t9, $a3, $t8
/* 001948 801DCB48 E7300000 */  swc1        $f16, 0x0($t9)
/* 00194C 801DCB4C 8C480000 */  lw          $t0, 0x0($v0)
/* 001950 801DCB50 44809000 */  mtc1        $zero, $f18
/* 001954 801DCB54 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 001958 801DCB58 00084880 */  sll         $t1, $t0, 2
/* 00195C 801DCB5C 00290821 */  addu        $at, $at, $t1
/* 001960 801DCB60 E43264D0 */  swc1        $f18, %lo(D_800E64D0)($at)
/* 001964 801DCB64 8C430000 */  lw          $v1, 0x0($v0)
/* 001968 801DCB68 3C013F00 */  lui         $at, (0x3F000000 >> 16)
/* 00196C 801DCB6C 44814000 */  mtc1        $at, $f8
/* 001970 801DCB70 00031880 */  sll         $v1, $v1, 2
/* 001974 801DCB74 00E35021 */  addu        $t2, $a3, $v1
/* 001978 801DCB78 C5460000 */  lwc1        $f6, 0x0($t2)
/* 00197C 801DCB7C 3C01800E */  lui         $at, %hi(D_800E6690)
/* 001980 801DCB80 00230821 */  addu        $at, $at, $v1
/* 001984 801DCB84 46083102 */  mul.s       $f4, $f6, $f8
/* 001988 801DCB88 E4246690 */  swc1        $f4, %lo(D_800E6690)($at)
/* 00198C 801DCB8C 8C4B0000 */  lw          $t3, 0x0($v0)
/* 001990 801DCB90 3C0140A0 */  lui         $at, (0x40A00000 >> 16)
/* 001994 801DCB94 44815000 */  mtc1        $at, $f10
/* 001998 801DCB98 3C01800E */  lui         $at, %hi(D_800E6850)
/* 00199C 801DCB9C 000B6080 */  sll         $t4, $t3, 2
/* 0019A0 801DCBA0 002C0821 */  addu        $at, $at, $t4
/* 0019A4 801DCBA4 E42A6850 */  swc1        $f10, %lo(D_800E6850)($at)
/* 0019A8 801DCBA8 ACC00008 */  sw          $zero, 0x8($a2)
/* 0019AC 801DCBAC ACC50010 */  sw          $a1, 0x10($a2)
/* 0019B0 801DCBB0 8C430000 */  lw          $v1, 0x0($v0)
/* 0019B4 801DCBB4 00031880 */  sll         $v1, $v1, 2
/* 0019B8 801DCBB8 00836821 */  addu        $t5, $a0, $v1
.L801DCBBC:
/* 0019BC 801DCBBC 03E00008 */  jr          $ra
/* 0019C0 801DCBC0 91A20003 */   lbu        $v0, 0x3($t5)
.type func_801DCAB0_ovl12, @function
.size func_801DCAB0_ovl12, . - func_801DCAB0_ovl12
