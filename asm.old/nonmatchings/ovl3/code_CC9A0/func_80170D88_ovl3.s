glabel func_80170D88_ovl3
/* D17C8 80170D88 3C0E8019 */  lui        $t6, %hi(D_80196C88_ovl3)
/* D17CC 80170D8C 95CE6C88 */  lhu        $t6, %lo(D_80196C88_ovl3)($t6)
/* D17D0 80170D90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D17D4 80170D94 AFBF0014 */  sw         $ra, 0x14($sp)
.L80170D98_ovl5:
/* D17D8 80170D98 AFA40028 */  sw         $a0, 0x28($sp)
/* D17DC 80170D9C 0C054E61 */  jal        func_80153984_ovl3
/* D17E0 80170DA0 A7AE0024 */   sh        $t6, 0x24($sp)
/* D17E4 80170DA4 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* D17E8 80170DA8 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* D17EC 80170DAC 3C01800E */  lui        $at, %hi(D_800E3210)
/* D17F0 80170DB0 44803000 */  mtc1       $zero, $f6
.L80170DB4_ovl5:
/* D17F4 80170DB4 8DE30000 */  lw         $v1, 0x0($t7)
/* D17F8 80170DB8 00031880 */  sll        $v1, $v1, 2
/* D17FC 80170DBC 00230821 */  addu       $at, $at, $v1
/* D1800 80170DC0 C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
/* D1804 80170DC4 3C01800F */  lui        $at, %hi(D_800E8920)
/* D1808 80170DC8 00230821 */  addu       $at, $at, $v1
/* D180C 80170DCC 4604303E */  c.le.s     $f6, $f4
/* D1810 80170DD0 00000000 */  nop
/* D1814 80170DD4 45000002 */  bc1f       .L80170DE0_ovl3
/* D1818 80170DD8 00000000 */   nop
/* D181C 80170DDC AC208920 */  sw         $zero, %lo(D_800E8920)($at)
.L80170DE0_ovl3:
/* D1820 80170DE0 0C0547A5 */  jal        ovl3_process_command_string
/* D1824 80170DE4 27A40024 */   addiu     $a0, $sp, 0x24
/* D1828 80170DE8 3C18800D */  lui        $t8, %hi(D_800D6B54)
/* D182C 80170DEC 8F186B54 */  lw         $t8, %lo(D_800D6B54)($t8)
/* D1830 80170DF0 3C088013 */  lui        $t0, %hi(gKirbyState)
/* D1834 80170DF4 24040006 */  addiu      $a0, $zero, 0x6
/* D1838 80170DF8 13000007 */  beqz       $t8, .L80170E18_ovl3
.L80170DFC_ovl5:
/* D183C 80170DFC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* D1840 80170E00 0C048BDB */  jal        set_kirby_action_1
/* D1844 80170E04 24050006 */   addiu     $a1, $zero, 0x6
/* D1848 80170E08 0C04783A */  jal        func_8011E0E8
/* D184C 80170E0C 00000000 */   nop
/* D1850 80170E10 10000136 */  b          .L801712EC_ovl3
/* D1854 80170E14 8FBF0014 */   lw        $ra, 0x14($sp)
.L80170E18_ovl3:
/* D1858 80170E18 91190017 */  lbu        $t9, 0x17($t0)
/* D185C 80170E1C 53200008 */  beql       $t9, $zero, .L80170E40_ovl3
/* D1860 80170E20 8D03001C */   lw        $v1, 0x1C($t0)
/* D1864 80170E24 9102000B */  lbu        $v0, 0xB($t0)
/* D1868 80170E28 24010001 */  addiu      $at, $zero, 0x1
.L80170E2C_ovl5:
/* D186C 80170E2C 1041012E */  beq        $v0, $at, .L801712E8_ovl5
/* D1870 80170E30 24010002 */   addiu     $at, $zero, 0x2
/* D1874 80170E34 5041012D */  beql       $v0, $at, .L801712EC_ovl3
/* D1878 80170E38 8FBF0014 */   lw        $ra, 0x14($sp)
/* D187C 80170E3C 8D03001C */  lw         $v1, 0x1C($t0)
.L80170E40_ovl3:
/* D1880 80170E40 5060002F */  beql       $v1, $zero, .L80170F00_ovl3
/* D1884 80170E44 8D0B0034 */   lw        $t3, 0x34($t0)
/* D1888 80170E48 8D090044 */  lw         $t1, 0x44($t0)
/* D188C 80170E4C 24010001 */  addiu      $at, $zero, 0x1
/* D1890 80170E50 55210029 */  bnel       $t1, $at, .L80170EF8_ovl3
/* D1894 80170E54 246AFFFF */   addiu     $t2, $v1, -0x1
/* D1898 80170E58 8D0A004C */  lw         $t2, 0x4C($t0)
/* D189C 80170E5C 2401003C */  addiu      $at, $zero, 0x3C
/* D18A0 80170E60 15400014 */  bnez       $t2, .L80170EB4_ovl3
/* D18A4 80170E64 00000000 */   nop
/* D18A8 80170E68 2861005B */  slti       $at, $v1, 0x5B
/* D18AC 80170E6C 10200021 */  beqz       $at, .L80170EF4_ovl3
/* D18B0 80170E70 3C0B8005 */   lui       $t3, %hi(D_8004A7C4)
/* D18B4 80170E74 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* D18B8 80170E78 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
/* D18BC 80170E7C 24040002 */  addiu      $a0, $zero, 0x2
/* D18C0 80170E80 8D6C0000 */  lw         $t4, 0x0($t3)
/* D18C4 80170E84 24050001 */  addiu      $a1, $zero, 0x1
/* D18C8 80170E88 2406000B */  addiu      $a2, $zero, 0xB
/* D18CC 80170E8C 000C6880 */  sll        $t5, $t4, 2
/* D18D0 80170E90 01CD7021 */  addu       $t6, $t6, $t5
/* D18D4 80170E94 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
/* D18D8 80170E98 0C02A040 */  jal        func_800A8100
/* D18DC 80170E9C 8DC70024 */   lw        $a3, 0x24($t6)
/* D18E0 80170EA0 3C088013 */  lui        $t0, %hi(gKirbyState)
/* D18E4 80170EA4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* D18E8 80170EA8 AD02004C */  sw         $v0, 0x4C($t0)
.L80170EAC_ovl5:
/* D18EC 80170EAC 10000011 */  b          .L80170EF4_ovl3
/* D18F0 80170EB0 8D03001C */   lw        $v1, 0x1C($t0)
.L80170EB4_ovl3:
/* D18F4 80170EB4 1461000F */  bne        $v1, $at, .L80170EF4_ovl3
/* D18F8 80170EB8 240F0002 */   addiu     $t7, $zero, 0x2
/* D18FC 80170EBC AD0F0044 */  sw         $t7, 0x44($t0)
/* D1900 80170EC0 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* D1904 80170EC4 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* D1908 80170EC8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* D190C 80170ECC 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
/* D1910 80170ED0 8F190000 */  lw         $t9, 0x0($t8)
/* D1914 80170ED4 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
/* D1918 80170ED8 00194880 */  sll        $t1, $t9, 2
/* D191C 80170EDC 00892021 */  addu       $a0, $a0, $t1
/* D1920 80170EE0 0C02C7B2 */  jal        assign_new_process_entry
/* D1924 80170EE4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* D1928 80170EE8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* D192C 80170EEC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L80170EF0_ovl5:
/* D1930 80170EF0 8D03001C */  lw         $v1, 0x1C($t0)
.L80170EF4_ovl3:
/* D1934 80170EF4 246AFFFF */  addiu      $t2, $v1, -0x1
.L80170EF8_ovl3:
/* D1938 80170EF8 AD0A001C */  sw         $t2, 0x1C($t0)
/* D193C 80170EFC 8D0B0034 */  lw         $t3, 0x34($t0)
.L80170F00_ovl3:
/* D1940 80170F00 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
/* D1944 80170F04 3C0E800D */  lui        $t6, %hi(gKirbyController + 0x2)
/* D1948 80170F08 316C0001 */  andi       $t4, $t3, 0x1
/* D194C 80170F0C 15800058 */  bnez       $t4, .L80171070_ovl3
/* D1950 80170F10 00000000 */   nop
/* D1954 80170F14 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
/* D1958 80170F18 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* D195C 80170F1C 31AE4000 */  andi       $t6, $t5, 0x4000
/* D1960 80170F20 15C0001A */  bnez       $t6, .L80170F8C_ovl3
/* D1964 80170F24 00000000 */   nop
/* D1968 80170F28 910F0017 */  lbu        $t7, 0x17($t0)
/* D196C 80170F2C 15E00017 */  bnez       $t7, .L80170F8C_ovl3
/* D1970 80170F30 00000000 */   nop
/* D1974 80170F34 8D18001C */  lw         $t8, 0x1C($t0)
/* D1978 80170F38 13000014 */  beqz       $t8, .L80170F8C_ovl3
/* D197C 80170F3C 00000000 */   nop
/* D1980 80170F40 9119000A */  lbu        $t9, 0xA($t0)
/* D1984 80170F44 24010001 */  addiu      $at, $zero, 0x1
/* D1988 80170F48 3C098005 */  lui        $t1, %hi(D_8004A7C4)
.L80170F4C_ovl5:
/* D198C 80170F4C 1321000F */  beq        $t9, $at, .L80170F8C_ovl3
/* D1990 80170F50 00000000 */   nop
/* D1994 80170F54 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* D1998 80170F58 3C0A800F */  lui        $t2, %hi(D_800E8920)
/* D199C 80170F5C 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
/* D19A0 80170F60 8D230000 */  lw         $v1, 0x0($t1)
/* D19A4 80170F64 00031880 */  sll        $v1, $v1, 2
/* D19A8 80170F68 01435021 */  addu       $t2, $t2, $v1
/* D19AC 80170F6C 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
/* D19B0 80170F70 01635821 */  addu       $t3, $t3, $v1
/* D19B4 80170F74 15400005 */  bnez       $t2, .L80170F8C_ovl3
/* D19B8 80170F78 00000000 */   nop
/* D19BC 80170F7C 8D6B8AE0 */  lw         $t3, %lo(D_800E8AE0)($t3)
/* D19C0 80170F80 316C0006 */  andi       $t4, $t3, 0x6
/* D19C4 80170F84 11800038 */  beqz       $t4, .L80171068_ovl3
.L80170F88_ovl5:
/* D19C8 80170F88 00000000 */   nop
.L80170F8C_ovl3:
/* D19CC 80170F8C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* D19D0 80170F90 3C0D800F */  lui        $t5, %hi(D_800E8920)
/* D19D4 80170F94 3C04800E */  lui        $a0, %hi(D_800E3750)
/* D19D8 80170F98 8C430000 */  lw         $v1, 0x0($v0)
/* D19DC 80170F9C 3C01800E */  lui        $at, %hi(D_800E3210)
/* D19E0 80170FA0 00031880 */  sll        $v1, $v1, 2
/* D19E4 80170FA4 01A36821 */  addu       $t5, $t5, $v1
/* D19E8 80170FA8 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
/* D19EC 80170FAC 55A00013 */  bnel       $t5, $zero, .L80170FFC_ovl3
/* D19F0 80170FB0 44805000 */   mtc1      $zero, $f10
/* D19F4 80170FB4 44800000 */  mtc1       $zero, $f0
/* D19F8 80170FB8 00230821 */  addu       $at, $at, $v1
/* D19FC 80170FBC 3C04800E */  lui        $a0, %hi(D_800E3750)
/* D1A00 80170FC0 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
.L80170FC4_ovl5:
/* D1A04 80170FC4 8C4E0000 */  lw         $t6, 0x0($v0)
/* D1A08 80170FC8 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* D1A0C 80170FCC 3C014180 */  lui        $at, (0x41800000 >> 16)
/* D1A10 80170FD0 000E7880 */  sll        $t7, $t6, 2
/* D1A14 80170FD4 008FC021 */  addu       $t8, $a0, $t7
/* D1A18 80170FD8 E7000000 */  swc1       $f0, 0x0($t8)
/* D1A1C 80170FDC 8C590000 */  lw         $t9, 0x0($v0)
/* D1A20 80170FE0 44814000 */  mtc1       $at, $f8
/* D1A24 80170FE4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D1A28 80170FE8 00194880 */  sll        $t1, $t9, 2
/* D1A2C 80170FEC 00290821 */  addu       $at, $at, $t1
/* D1A30 80170FF0 10000013 */  b          .L80171040_ovl3
/* D1A34 80170FF4 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
/* D1A38 80170FF8 44805000 */  mtc1       $zero, $f10
.L80170FFC_ovl3:
/* D1A3C 80170FFC 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* D1A40 80171000 00835021 */  addu       $t2, $a0, $v1
/* D1A44 80171004 E54A0000 */  swc1       $f10, 0x0($t2)
/* D1A48 80171008 8C430000 */  lw         $v1, 0x0($v0)
/* D1A4C 8017100C 3C01800E */  lui        $at, %hi(D_800E3210)
/* D1A50 80171010 00031880 */  sll        $v1, $v1, 2
/* D1A54 80171014 00835821 */  addu       $t3, $a0, $v1
/* D1A58 80171018 C5700000 */  lwc1       $f16, 0x0($t3)
/* D1A5C 8017101C 00230821 */  addu       $at, $at, $v1
/* D1A60 80171020 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* D1A64 80171024 8C4C0000 */  lw         $t4, 0x0($v0)
/* D1A68 80171028 3C018019 */  lui        $at, %hi(D_801973B0_ovl3)
/* D1A6C 8017102C C43273B0 */  lwc1       $f18, %lo(D_801973B0_ovl3)($at)
/* D1A70 80171030 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D1A74 80171034 000C6880 */  sll        $t5, $t4, 2
/* D1A78 80171038 002D0821 */  addu       $at, $at, $t5
/* D1A7C 8017103C E4323C90 */  swc1       $f18, %lo(D_800E3C90)($at)
.L80171040_ovl3:
/* D1A80 80171040 0C04783A */  jal        func_8011E0E8
/* D1A84 80171044 00000000 */   nop
/* D1A88 80171048 3C088013 */  lui        $t0, %hi(gKirbyState)
/* D1A8C 8017104C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* D1A90 80171050 A100000A */  sb         $zero, 0xA($t0)
/* D1A94 80171054 2404001A */  addiu      $a0, $zero, 0x1A
/* D1A98 80171058 0C048BDB */  jal        set_kirby_action_1
/* D1A9C 8017105C 24050019 */   addiu     $a1, $zero, 0x19
/* D1AA0 80171060 100000A2 */  b          .L801712EC_ovl3
/* D1AA4 80171064 8FBF0014 */   lw        $ra, 0x14($sp)
.L80171068_ovl3:
/* D1AA8 80171068 10000008 */  b          .L8017108C_ovl3
/* D1AAC 8017106C 8D020044 */   lw        $v0, 0x44($t0)
.L80171070_ovl3:
/* D1AB0 80171070 95CE6FEA */  lhu        $t6, %lo(gKirbyController + 0x2)($t6)
/* D1AB4 80171074 8D020044 */  lw         $v0, 0x44($t0)
/* D1AB8 80171078 24180001 */  addiu      $t8, $zero, 0x1
/* D1ABC 8017107C 31CF4000 */  andi       $t7, $t6, 0x4000
/* D1AC0 80171080 51E00003 */  beql       $t7, $zero, .L80171090_ovl3
/* D1AC4 80171084 24010001 */   addiu     $at, $zero, 0x1
/* D1AC8 80171088 A118000A */  sb         $t8, 0xA($t0)
.L8017108C_ovl3:
/* D1ACC 8017108C 24010001 */  addiu      $at, $zero, 0x1
.L80171090_ovl3:
/* D1AD0 80171090 14410056 */  bne        $v0, $at, .L801711EC_ovl3
.L80171094_ovl5:
/* D1AD4 80171094 00000000 */   nop
/* D1AD8 80171098 8D1900E4 */  lw         $t9, 0xE4($t0)
/* D1ADC 8017109C 5320003A */  beql       $t9, $zero, .L80171188_ovl3
/* D1AE0 801710A0 8D02002C */   lw        $v0, 0x2C($t0)
/* D1AE4 801710A4 0C048918 */  jal        func_80122460
/* D1AE8 801710A8 00000000 */   nop
/* D1AEC 801710AC 3C088013 */  lui        $t0, %hi(gKirbyState)
/* D1AF0 801710B0 10400034 */  beqz       $v0, .L80171184_ovl3
.L801710B4_ovl5:
/* D1AF4 801710B4 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* D1AF8 801710B8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* D1AFC 801710BC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* D1B00 801710C0 44800000 */  mtc1       $zero, $f0
/* D1B04 801710C4 3C06800E */  lui        $a2, %hi(D_800E6690)
/* D1B08 801710C8 8C490000 */  lw         $t1, 0x0($v0)
/* D1B0C 801710CC 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* D1B10 801710D0 3C018019 */  lui        $at, %hi(D_801973B4_ovl3)
.L801710D4_ovl5:
/* D1B14 801710D4 00095080 */  sll        $t2, $t1, 2
.L801710D8_ovl5:
/* D1B18 801710D8 C42273B4 */  lwc1       $f2, %lo(D_801973B4_ovl3)($at)
/* D1B1C 801710DC 00CA5821 */  addu       $t3, $a2, $t2
/* D1B20 801710E0 E5600000 */  swc1       $f0, 0x0($t3)
/* D1B24 801710E4 8C430000 */  lw         $v1, 0x0($v0)
/* D1B28 801710E8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D1B2C 801710EC 3C04800E */  lui        $a0, %hi(D_800E3750)
/* D1B30 801710F0 00031880 */  sll        $v1, $v1, 2
/* D1B34 801710F4 00C36021 */  addu       $t4, $a2, $v1
/* D1B38 801710F8 C5840000 */  lwc1       $f4, 0x0($t4)
/* D1B3C 801710FC 00230821 */  addu       $at, $at, $v1
/* D1B40 80171100 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* D1B44 80171104 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* D1B48 80171108 8C4D0000 */  lw         $t5, 0x0($v0)
/* D1B4C 8017110C 3C01800E */  lui        $at, %hi(D_800E6850)
/* D1B50 80171110 000D7080 */  sll        $t6, $t5, 2
/* D1B54 80171114 002E0821 */  addu       $at, $at, $t6
/* D1B58 80171118 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
/* D1B5C 8017111C 8C4F0000 */  lw         $t7, 0x0($v0)
/* D1B60 80171120 3C01800E */  lui        $at, %hi(D_800E3210)
/* D1B64 80171124 000FC080 */  sll        $t8, $t7, 2
/* D1B68 80171128 0098C821 */  addu       $t9, $a0, $t8
/* D1B6C 8017112C E7200000 */  swc1       $f0, 0x0($t9)
/* D1B70 80171130 8C430000 */  lw         $v1, 0x0($v0)
/* D1B74 80171134 00031880 */  sll        $v1, $v1, 2
/* D1B78 80171138 00834821 */  addu       $t1, $a0, $v1
glabel func_8017113C_ovl5
/* D1B7C 8017113C C5260000 */  lwc1       $f6, 0x0($t1)
/* D1B80 80171140 00230821 */  addu       $at, $at, $v1
/* D1B84 80171144 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* D1B88 80171148 8C4A0000 */  lw         $t2, 0x0($v0)
/* D1B8C 8017114C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D1B90 80171150 000A5880 */  sll        $t3, $t2, 2
/* D1B94 80171154 002B0821 */  addu       $at, $at, $t3
/* D1B98 80171158 0C04783A */  jal        func_8011E0E8
/* D1B9C 8017115C E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* D1BA0 80171160 2404000A */  addiu      $a0, $zero, 0xA
/* D1BA4 80171164 0C048BDB */  jal        set_kirby_action_1
/* D1BA8 80171168 2405000D */   addiu     $a1, $zero, 0xD
/* D1BAC 8017116C 3C088013 */  lui        $t0, %hi(gKirbyState)
/* D1BB0 80171170 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* D1BB4 80171174 3C06800E */  lui        $a2, %hi(D_800E6690)
/* D1BB8 80171178 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* D1BBC 8017117C 1000001E */  b          .L801711F8_ovl3
/* D1BC0 80171180 91020017 */   lbu       $v0, 0x17($t0)
.L80171184_ovl3:
/* D1BC4 80171184 8D02002C */  lw         $v0, 0x2C($t0)
.L80171188_ovl3:
/* D1BC8 80171188 54400017 */  bnel       $v0, $zero, .L801711E8_ovl3
/* D1BCC 8017118C 2449FFFF */   addiu     $t1, $v0, -0x1
/* D1BD0 80171190 8D0C00E4 */  lw         $t4, 0xE4($t0)
/* D1BD4 80171194 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
/* D1BD8 80171198 15800014 */  bnez       $t4, .L801711EC_ovl3
/* D1BDC 8017119C 00000000 */   nop
/* D1BE0 801711A0 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
.L801711A4_ovl5:
/* D1BE4 801711A4 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* D1BE8 801711A8 31AE8000 */  andi       $t6, $t5, 0x8000
/* D1BEC 801711AC 11C0000F */  beqz       $t6, .L801711EC_ovl3
/* D1BF0 801711B0 00000000 */   nop
/* D1BF4 801711B4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* D1BF8 801711B8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* D1BFC 801711BC 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
/* D1C00 801711C0 8DF80000 */  lw         $t8, 0x0($t7)
/* D1C04 801711C4 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
/* D1C08 801711C8 0018C880 */  sll        $t9, $t8, 2
/* D1C0C 801711CC 00992021 */  addu       $a0, $a0, $t9
/* D1C10 801711D0 0C02C7B2 */  jal        assign_new_process_entry
/* D1C14 801711D4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* D1C18 801711D8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* D1C1C 801711DC 10000003 */  b          .L801711EC_ovl3
/* D1C20 801711E0 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* D1C24 801711E4 2449FFFF */  addiu      $t1, $v0, -0x1
.L801711E8_ovl3:
/* D1C28 801711E8 AD09002C */  sw         $t1, 0x2C($t0)
.L801711EC_ovl3:
/* D1C2C 801711EC 3C06800E */  lui        $a2, %hi(D_800E6690)
/* D1C30 801711F0 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
.L801711F4_ovl5:
/* D1C34 801711F4 91020017 */  lbu        $v0, 0x17($t0)
.L801711F8_ovl3:
/* D1C38 801711F8 1440003B */  bnez       $v0, .L801712E8_ovl5
/* D1C3C 801711FC 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* D1C40 80171200 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* D1C44 80171204 8D0A00FC */  lw         $t2, 0xFC($t0)
/* D1C48 80171208 3C0B800D */  lui        $t3, %hi(gKirbyController)
/* D1C4C 8017120C 8C430000 */  lw         $v1, 0x0($v0)
/* D1C50 80171210 15400024 */  bnez       $t2, .L801712A4_ovl3
/* D1C54 80171214 00031880 */   sll       $v1, $v1, 2
/* D1C58 80171218 956B6FE8 */  lhu        $t3, %lo(gKirbyController)($t3)
/* D1C5C 8017121C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* D1C60 80171220 00230821 */  addu       $at, $at, $v1
/* D1C64 80171224 316C0300 */  andi       $t4, $t3, 0x300
/* D1C68 80171228 15800010 */  bnez       $t4, .L8017126C_ovl3
/* D1C6C 8017122C 00000000 */   nop
/* D1C70 80171230 3C01800E */  lui        $at, %hi(D_800E6A10)
/* D1C74 80171234 00230821 */  addu       $at, $at, $v1
/* D1C78 80171238 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* D1C7C 8017123C 3C018019 */  lui        $at, %hi(D_801973B8_ovl3)
/* D1C80 80171240 C42A73B8 */  lwc1       $f10, %lo(D_801973B8_ovl3)($at)
/* D1C84 80171244 00C36821 */  addu       $t5, $a2, $v1
/* D1C88 80171248 44809000 */  mtc1       $zero, $f18
/* D1C8C 8017124C 460A4402 */  mul.s      $f16, $f8, $f10
/* D1C90 80171250 3C01800E */  lui        $at, %hi(D_800E6850)
/* D1C94 80171254 E5B00000 */  swc1       $f16, 0x0($t5)
/* D1C98 80171258 8C4E0000 */  lw         $t6, 0x0($v0)
/* D1C9C 8017125C 000E7880 */  sll        $t7, $t6, 2
/* D1CA0 80171260 002F0821 */  addu       $at, $at, $t7
/* D1CA4 80171264 10000020 */  b          .L801712E8_ovl5
.L80171268_ovl5:
/* D1CA8 80171268 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
.L8017126C_ovl3:
/* D1CAC 8017126C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* D1CB0 80171270 3C018019 */  lui        $at, %hi(D_801973BC_ovl3)
/* D1CB4 80171274 C42673BC */  lwc1       $f6, %lo(D_801973BC_ovl3)($at)
/* D1CB8 80171278 00C3C021 */  addu       $t8, $a2, $v1
/* D1CBC 8017127C 3C014020 */  lui        $at, (0x40200000 >> 16)
.L80171280_ovl5:
/* D1CC0 80171280 46062202 */  mul.s      $f8, $f4, $f6
/* D1CC4 80171284 44815000 */  mtc1       $at, $f10
/* D1CC8 80171288 3C01800E */  lui        $at, %hi(D_800E6850)
/* D1CCC 8017128C E7080000 */  swc1       $f8, 0x0($t8)
/* D1CD0 80171290 8C590000 */  lw         $t9, 0x0($v0)
/* D1CD4 80171294 00194880 */  sll        $t1, $t9, 2
/* D1CD8 80171298 00290821 */  addu       $at, $at, $t1
/* D1CDC 8017129C 10000012 */  b          .L801712E8_ovl5
/* D1CE0 801712A0 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L801712A4_ovl3:
/* D1CE4 801712A4 44808000 */  mtc1       $zero, $f16
/* D1CE8 801712A8 00C35021 */  addu       $t2, $a2, $v1
/* D1CEC 801712AC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D1CF0 801712B0 E5500000 */  swc1       $f16, 0x0($t2)
/* D1CF4 801712B4 8C430000 */  lw         $v1, 0x0($v0)
/* D1CF8 801712B8 00031880 */  sll        $v1, $v1, 2
/* D1CFC 801712BC 00C35821 */  addu       $t3, $a2, $v1
/* D1D00 801712C0 C5720000 */  lwc1       $f18, 0x0($t3)
/* D1D04 801712C4 00230821 */  addu       $at, $at, $v1
/* D1D08 801712C8 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
/* D1D0C 801712CC 8C4C0000 */  lw         $t4, 0x0($v0)
/* D1D10 801712D0 3C018019 */  lui        $at, %hi(D_801973C0_ovl3)
/* D1D14 801712D4 C42473C0 */  lwc1       $f4, %lo(D_801973C0_ovl3)($at)
/* D1D18 801712D8 3C01800E */  lui        $at, %hi(D_800E6850)
/* D1D1C 801712DC 000C6880 */  sll        $t5, $t4, 2
/* D1D20 801712E0 002D0821 */  addu       $at, $at, $t5
.L801712E4_ovl5:
/* D1D24 801712E4 E4246850 */  swc1       $f4, %lo(D_800E6850)($at)
.L801712E8_ovl5:
/* D1D28 801712E8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801712EC_ovl3:
/* D1D2C 801712EC 27BD0028 */  addiu      $sp, $sp, 0x28
/* D1D30 801712F0 03E00008 */  jr         $ra
/* D1D34 801712F4 00000000 */   nop
