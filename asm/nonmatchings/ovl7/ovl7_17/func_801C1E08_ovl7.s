nonmatching func_801C1E08_ovl7, 0x13C

glabel func_801C1E08_ovl7
    /* 167E78 801C1E08 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 167E7C 801C1E0C 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* 167E80 801C1E10 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 167E84 801C1E14 3C18800E */  lui        $t8, %hi(D_800E77A0)
    /* 167E88 801C1E18 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* 167E8C 801C1E1C 8DC30000 */  lw         $v1, 0x0($t6)
    /* 167E90 801C1E20 254AFBD0 */  addiu      $t2, $t2, %lo(D_800DFBD0)
    /* 167E94 801C1E24 3C0C801D */  lui        $t4, %hi(D_801CD978_ovl7)
    /* 167E98 801C1E28 00037840 */  sll        $t7, $v1, 1
    /* 167E9C 801C1E2C 030FC021 */  addu       $t8, $t8, $t7
    /* 167EA0 801C1E30 00037080 */  sll        $t6, $v1, 2
    /* 167EA4 801C1E34 971977A0 */  lhu        $t9, %lo(D_800E77A0)($t8)
    /* 167EA8 801C1E38 014E7821 */  addu       $t7, $t2, $t6
    /* 167EAC 801C1E3C 8DF80000 */  lw         $t8, 0x0($t7)
    /* 167EB0 801C1E40 258CD978 */  addiu      $t4, $t4, %lo(D_801CD978_ovl7)
    /* 167EB4 801C1E44 001958C0 */  sll        $t3, $t9, 3
    /* 167EB8 801C1E48 8F06000C */  lw         $a2, 0xC($t8)
    /* 167EBC 801C1E4C 016C2021 */  addu       $a0, $t3, $t4
    /* 167EC0 801C1E50 8C82FFC0 */  lw         $v0, -0x40($a0)
    /* 167EC4 801C1E54 8CC70080 */  lw         $a3, 0x80($a2)
    /* 167EC8 801C1E58 3C09801D */  lui        $t1, %hi(D_801CD914_ovl7)
    /* 167ECC 801C1E5C 2529D914 */  addiu      $t1, $t1, %lo(D_801CD914_ovl7)
    /* 167ED0 801C1E60 00026880 */  sll        $t5, $v0, 2
    /* 167ED4 801C1E64 012D2821 */  addu       $a1, $t1, $t5
    /* 167ED8 801C1E68 10E00012 */  beqz       $a3, .L801C1EB4_ovl7
    /* 167EDC 801C1E6C 8C82FFC4 */   lw        $v0, -0x3C($a0)
    /* 167EE0 801C1E70 90B90000 */  lbu        $t9, 0x0($a1)
    /* 167EE4 801C1E74 00026880 */  sll        $t5, $v0, 2
    /* 167EE8 801C1E78 012D1821 */  addu       $v1, $t1, $t5
    /* 167EEC 801C1E7C A0F90058 */  sb         $t9, 0x58($a3)
    /* 167EF0 801C1E80 90AB0001 */  lbu        $t3, 0x1($a1)
    /* 167EF4 801C1E84 A0EB0059 */  sb         $t3, 0x59($a3)
    /* 167EF8 801C1E88 90AC0002 */  lbu        $t4, 0x2($a1)
    /* 167EFC 801C1E8C A0EC005A */  sb         $t4, 0x5A($a3)
    /* 167F00 801C1E90 8CE70000 */  lw         $a3, 0x0($a3)
    /* 167F04 801C1E94 50E00008 */  beql       $a3, $zero, .L801C1EB8_ovl7
    /* 167F08 801C1E98 8D190000 */   lw        $t9, 0x0($t0)
    /* 167F0C 801C1E9C 906E0000 */  lbu        $t6, 0x0($v1)
    /* 167F10 801C1EA0 A0EE0058 */  sb         $t6, 0x58($a3)
    /* 167F14 801C1EA4 906F0001 */  lbu        $t7, 0x1($v1)
    /* 167F18 801C1EA8 A0EF0059 */  sb         $t7, 0x59($a3)
    /* 167F1C 801C1EAC 90780002 */  lbu        $t8, 0x2($v1)
    /* 167F20 801C1EB0 A0F8005A */  sb         $t8, 0x5A($a3)
  .L801C1EB4_ovl7:
    /* 167F24 801C1EB4 8D190000 */  lw         $t9, 0x0($t0)
  .L801C1EB8_ovl7:
    /* 167F28 801C1EB8 8F2B0000 */  lw         $t3, 0x0($t9)
    /* 167F2C 801C1EBC 000B6080 */  sll        $t4, $t3, 2
    /* 167F30 801C1EC0 014C6821 */  addu       $t5, $t2, $t4
    /* 167F34 801C1EC4 8DA30000 */  lw         $v1, 0x0($t5)
    /* 167F38 801C1EC8 00026880 */  sll        $t5, $v0, 2
    /* 167F3C 801C1ECC 8C660004 */  lw         $a2, 0x4($v1)
    /* 167F40 801C1ED0 8CC70080 */  lw         $a3, 0x80($a2)
    /* 167F44 801C1ED4 50E0000F */  beql       $a3, $zero, .L801C1F14_ovl7
    /* 167F48 801C1ED8 8C660008 */   lw        $a2, 0x8($v1)
    /* 167F4C 801C1EDC 90AE0000 */  lbu        $t6, 0x0($a1)
    /* 167F50 801C1EE0 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 167F54 801C1EE4 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* 167F58 801C1EE8 A0EE0058 */  sb         $t6, 0x58($a3)
    /* 167F5C 801C1EEC 90AF0001 */  lbu        $t7, 0x1($a1)
    /* 167F60 801C1EF0 A0EF0059 */  sb         $t7, 0x59($a3)
    /* 167F64 801C1EF4 90B80002 */  lbu        $t8, 0x2($a1)
    /* 167F68 801C1EF8 A0F8005A */  sb         $t8, 0x5A($a3)
    /* 167F6C 801C1EFC 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 167F70 801C1F00 8F2B0000 */  lw         $t3, 0x0($t9)
    /* 167F74 801C1F04 000B6080 */  sll        $t4, $t3, 2
    /* 167F78 801C1F08 006C1821 */  addu       $v1, $v1, $t4
    /* 167F7C 801C1F0C 8C63FBD0 */  lw         $v1, %lo(D_800DFBD0)($v1)
    /* 167F80 801C1F10 8C660008 */  lw         $a2, 0x8($v1)
  .L801C1F14_ovl7:
    /* 167F84 801C1F14 012D1821 */  addu       $v1, $t1, $t5
    /* 167F88 801C1F18 8CC70080 */  lw         $a3, 0x80($a2)
    /* 167F8C 801C1F1C 10E00007 */  beqz       $a3, .L801C1F3C_ovl7
    /* 167F90 801C1F20 00000000 */   nop
    /* 167F94 801C1F24 906E0000 */  lbu        $t6, 0x0($v1)
    /* 167F98 801C1F28 A0EE0058 */  sb         $t6, 0x58($a3)
    /* 167F9C 801C1F2C 906F0001 */  lbu        $t7, 0x1($v1)
    /* 167FA0 801C1F30 A0EF0059 */  sb         $t7, 0x59($a3)
    /* 167FA4 801C1F34 90780002 */  lbu        $t8, 0x2($v1)
    /* 167FA8 801C1F38 A0F8005A */  sb         $t8, 0x5A($a3)
  .L801C1F3C_ovl7:
    /* 167FAC 801C1F3C 03E00008 */  jr         $ra
    /* 167FB0 801C1F40 00000000 */   nop
endlabel func_801C1E08_ovl7
.size func_801C1E08_ovl7, . - func_801C1E08_ovl7
