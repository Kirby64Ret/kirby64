glabel func_801E185C_ovl13 # 35
/* 1F97DC 801E185C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 1F97E0 801E1860 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F97E4 801E1864 2442A7C4 */  addiu       $v0, $v0, %lo(D_8004A7C4)
/* 1F97E8 801E1868 AFB00018 */  sw          $s0, 0x18($sp)
/* 1F97EC 801E186C 8C500000 */  lw          $s0, 0x0($v0)
/* 1F97F0 801E1870 AFBF001C */  sw          $ra, 0x1C($sp)
/* 1F97F4 801E1874 AFA40020 */  sw          $a0, 0x20($sp)
/* 1F97F8 801E1878 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F97FC 801E187C 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F9800 801E1880 240E0009 */  addiu       $t6, $zero, 0x9
/* 1F9804 801E1884 000FC080 */  sll         $t8, $t7, 2
/* 1F9808 801E1888 00380821 */  addu        $at, $at, $t8
/* 1F980C 801E188C AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1F9810 801E1890 8E080000 */  lw          $t0, 0x0($s0)
/* 1F9814 801E1894 3C0A800E */  lui         $t2, %hi(D_800E1B50)
/* 1F9818 801E1898 3C19801E */  lui         $t9, %hi(D_801D93A8)
/* 1F981C 801E189C 00084880 */  sll         $t1, $t0, 2
/* 1F9820 801E18A0 01495021 */  addu        $t2, $t2, $t1
/* 1F9824 801E18A4 8D4A1B50 */  lw          $t2, %lo(D_800E1B50)($t2)
/* 1F9828 801E18A8 273993A8 */  addiu       $t9, $t9, %lo(D_801D93A8)
/* 1F982C 801E18AC 3C04801E */  lui         $a0, %hi(D_801DAB04)
/* 1F9830 801E18B0 AD59008C */  sw          $t9, 0x8C($t2)
/* 1F9834 801E18B4 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1F9838 801E18B8 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F983C 801E18BC 2484AB04 */  addiu       $a0, $a0, %lo(D_801DAB04)
/* 1F9840 801E18C0 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F9844 801E18C4 000C6880 */  sll         $t5, $t4, 2
/* 1F9848 801E18C8 002D0821 */  addu        $at, $at, $t5
/* 1F984C 801E18CC 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F9850 801E18D0 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F9854 801E18D4 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F9858 801E18D8 2442A7C4 */  addiu       $v0, $v0, %lo(D_8004A7C4)
/* 1F985C 801E18DC 8C4E0000 */  lw          $t6, 0x0($v0)
/* 1F9860 801E18E0 3C09800E */  lui         $t1, %hi(D_800E1B50)
/* 1F9864 801E18E4 3C0F801E */  lui         $t7, %hi(D_801DAE40)
/* 1F9868 801E18E8 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F986C 801E18EC 25EFAE40 */  addiu       $t7, $t7, %lo(D_801DAE40)
/* 1F9870 801E18F0 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 1F9874 801E18F4 00184080 */  sll         $t0, $t8, 2
/* 1F9878 801E18F8 01284821 */  addu        $t1, $t1, $t0
/* 1F987C 801E18FC 8D291B50 */  lw          $t1, %lo(D_800E1B50)($t1)
/* 1F9880 801E1900 3C040001 */  lui         $a0, (0x10426 >> 16)
/* 1F9884 801E1904 34840426 */  ori         $a0, $a0, (0x10426 & 0xFFFF)
/* 1F9888 801E1908 AD2F0098 */  sw          $t7, 0x98($t1)
/* 1F988C 801E190C 8C500000 */  lw          $s0, 0x0($v0)
/* 1F9890 801E1910 8E190000 */  lw          $t9, 0x0($s0)
/* 1F9894 801E1914 00195080 */  sll         $t2, $t9, 2
/* 1F9898 801E1918 002A0821 */  addu        $at, $at, $t2
/* 1F989C 801E191C AC209E20 */  sw          $zero, %lo(D_800E9E20)($at)
/* 1F98A0 801E1920 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F98A4 801E1924 3C014080 */  lui         $at, (0x40800000 >> 16)
/* 1F98A8 801E1928 44812000 */  mtc1        $at, $f4
/* 1F98AC 801E192C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F98B0 801E1930 000B6080 */  sll         $t4, $t3, 2
/* 1F98B4 801E1934 002C0821 */  addu        $at, $at, $t4
/* 1F98B8 801E1938 E4246850 */  swc1        $f4, %lo(D_800E6850)($at)
/* 1F98BC 801E193C 8E0D0000 */  lw          $t5, 0x0($s0)
/* 1F98C0 801E1940 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F98C4 801E1944 44813000 */  mtc1        $at, $f6
/* 1F98C8 801E1948 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F98CC 801E194C 000D7080 */  sll         $t6, $t5, 2
/* 1F98D0 801E1950 002E0821 */  addu        $at, $at, $t6
/* 1F98D4 801E1954 0C02A806 */  jal         func_800AA018
/* 1F98D8 801E1958 E4263C90 */   swc1       $f6, %lo(D_800E3C90)($at)
/* 1F98DC 801E195C 2410003C */  addiu       $s0, $zero, 0x3C
glabel L801E1960_ovl13
/* 1F98E0 801E1960 0C002DAF */  jal         finish_current_thread
/* 1F98E4 801E1964 24040001 */   addiu      $a0, $zero, 0x1
/* 1F98E8 801E1968 2610FFFF */  addiu       $s0, $s0, -0x1
/* 1F98EC 801E196C 1600FFFC */  bnez        $s0, L801E1960_ovl13
/* 1F98F0 801E1970 00000000 */   nop
/* 1F98F4 801E1974 0C02BC9F */  jal         func_800AF27C
/* 1F98F8 801E1978 00000000 */   nop
/* 1F98FC 801E197C 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F9900 801E1980 8D08A7C4 */  lw          $t0, %lo(D_8004A7C4)($t0)
/* 1F9904 801E1984 8FBF001C */  lw          $ra, 0x1C($sp)
/* 1F9908 801E1988 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F990C 801E198C 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1F9910 801E1990 2418000B */  addiu       $t8, $zero, 0xB
/* 1F9914 801E1994 8FB00018 */  lw          $s0, 0x18($sp)
/* 1F9918 801E1998 000F4880 */  sll         $t1, $t7, 2
/* 1F991C 801E199C 00290821 */  addu        $at, $at, $t1
/* 1F9920 801E19A0 AC38DC50 */  sw          $t8, %lo(gEntityVtableIndexArray)($at)
/* 1F9924 801E19A4 03E00008 */  jr          $ra
/* 1F9928 801E19A8 27BD0020 */   addiu      $sp, $sp, 0x20
.type func_801E185C_ovl13, @function

.size func_801E185C_ovl13, . - func_801E185C_ovl13
