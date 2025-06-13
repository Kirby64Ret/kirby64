glabel func_801DBA88_ovl12 # 12
/* 000888 801DBA88 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00088C 801DBA8C 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 000890 801DBA90 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 000894 801DBA94 AFBF0024 */  sw          $ra, 0x24($sp)
/* 000898 801DBA98 AFB20020 */  sw          $s2, 0x20($sp)
/* 00089C 801DBA9C AFB1001C */  sw          $s1, 0x1C($sp)
/* 0008A0 801DBAA0 AFB00018 */  sw          $s0, 0x18($sp)
/* 0008A4 801DBAA4 AFA40028 */  sw          $a0, 0x28($sp)
/* 0008A8 801DBAA8 8C4F0000 */  lw          $t7, 0x0($v0)
/* 0008AC 801DBAAC 3C0E801D */  lui         $t6, %hi(D_801D152C)
/* 0008B0 801DBAB0 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 0008B4 801DBAB4 000FC080 */  sll         $t8, $t7, 2
/* 0008B8 801DBAB8 00380821 */  addu        $at, $at, $t8
/* 0008BC 801DBABC 25CE152C */  addiu       $t6, $t6, %lo(D_801D152C)
/* 0008C0 801DBAC0 AC2EEF90 */  sw          $t6, %lo(D_800DEF90)($at)
/* 0008C4 801DBAC4 8C480000 */  lw          $t0, 0x0($v0)
/* 0008C8 801DBAC8 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 0008CC 801DBACC 24190003 */  addiu       $t9, $zero, 0x3
/* 0008D0 801DBAD0 00084880 */  sll         $t1, $t0, 2
/* 0008D4 801DBAD4 00290821 */  addu        $at, $at, $t1
/* 0008D8 801DBAD8 AC39DFD0 */  sw          $t9, %lo(D_800DDFD0)($at)
/* 0008DC 801DBADC 8C4A0000 */  lw          $t2, 0x0($v0)
/* 0008E0 801DBAE0 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 0008E4 801DBAE4 24120001 */  addiu       $s2, $zero, 0x1
/* 0008E8 801DBAE8 000A5880 */  sll         $t3, $t2, 2
/* 0008EC 801DBAEC 002B0821 */  addu        $at, $at, $t3
/* 0008F0 801DBAF0 AC329AA0 */  sw          $s2, %lo(D_800E9AA0)($at)
/* 0008F4 801DBAF4 8C4C0000 */  lw          $t4, 0x0($v0)
/* 0008F8 801DBAF8 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 0008FC 801DBAFC 44800000 */  mtc1        $zero, $f0
/* 000900 801DBB00 000C6880 */  sll         $t5, $t4, 2
/* 000904 801DBB04 002D0821 */  addu        $at, $at, $t5
/* 000908 801DBB08 AC209E20 */  sw          $zero, %lo(D_800E9E20)($at)
/* 00090C 801DBB0C 8C4F0000 */  lw          $t7, 0x0($v0)
/* 000910 801DBB10 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 000914 801DBB14 3C04800F */  lui         $a0, %hi(D_800EA8A0)
/* 000918 801DBB18 000F7080 */  sll         $t6, $t7, 2
/* 00091C 801DBB1C 002E0821 */  addu        $at, $at, $t6
/* 000920 801DBB20 AC20A1A0 */  sw          $zero, %lo(D_800EA1A0)($at)
/* 000924 801DBB24 8C580000 */  lw          $t8, 0x0($v0)
/* 000928 801DBB28 2484A8A0 */  addiu       $a0, $a0, %lo(D_800EA8A0)
/* 00092C 801DBB2C 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 000930 801DBB30 00184080 */  sll         $t0, $t8, 2
/* 000934 801DBB34 0088C821 */  addu        $t9, $a0, $t0
/* 000938 801DBB38 E7200000 */  swc1        $f0, 0x0($t9)
/* 00093C 801DBB3C 8C430000 */  lw          $v1, 0x0($v0)
/* 000940 801DBB40 3C05800E */  lui         $a1, %hi(D_800E6690)
/* 000944 801DBB44 24A56690 */  addiu       $a1, $a1, %lo(D_800E6690)
/* 000948 801DBB48 00031880 */  sll         $v1, $v1, 2
/* 00094C 801DBB4C 00834821 */  addu        $t1, $a0, $v1
/* 000950 801DBB50 C5240000 */  lwc1        $f4, 0x0($t1)
/* 000954 801DBB54 00230821 */  addu        $at, $at, $v1
/* 000958 801DBB58 3C11800D */  lui         $s1, %hi(D_800D7098)
/* 00095C 801DBB5C E424A6E0 */  swc1        $f4, %lo(D_800EA6E0)($at)
/* 000960 801DBB60 8C4A0000 */  lw          $t2, 0x0($v0)
/* 000964 801DBB64 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 000968 801DBB68 26317098 */  addiu       $s1, $s1, %lo(D_800D7098)
/* 00096C 801DBB6C 000A5880 */  sll         $t3, $t2, 2
/* 000970 801DBB70 00AB6021 */  addu        $t4, $a1, $t3
/* 000974 801DBB74 E5800000 */  swc1        $f0, 0x0($t4)
/* 000978 801DBB78 8C430000 */  lw          $v1, 0x0($v0)
/* 00097C 801DBB7C 3C10800F */  lui         $s0, %hi(D_800E9560)
/* 000980 801DBB80 26109560 */  addiu       $s0, $s0, %lo(D_800E9560)
/* 000984 801DBB84 00031880 */  sll         $v1, $v1, 2
/* 000988 801DBB88 00A36821 */  addu        $t5, $a1, $v1
/* 00098C 801DBB8C C5A60000 */  lwc1        $f6, 0x0($t5)
/* 000990 801DBB90 00230821 */  addu        $at, $at, $v1
/* 000994 801DBB94 E42664D0 */  swc1        $f6, %lo(D_800E64D0)($at)
/* 000998 801DBB98 8C4F0000 */  lw          $t7, 0x0($v0)
/* 00099C 801DBB9C 3C01801E */  lui         $at, %hi(D_801E2D28_ovl12)
/* 0009A0 801DBBA0 C4282D28 */  lwc1        $f8, %lo(D_801E2D28_ovl12)($at)
/* 0009A4 801DBBA4 3C01800E */  lui         $at, %hi(D_800E6850)
/* 0009A8 801DBBA8 000F7080 */  sll         $t6, $t7, 2
/* 0009AC 801DBBAC 002E0821 */  addu        $at, $at, $t6
/* 0009B0 801DBBB0 E4286850 */  swc1        $f8, %lo(D_800E6850)($at)
/* 0009B4 801DBBB4 8E38001C */  lw          $t8, 0x1C($s1)
/* 0009B8 801DBBB8 00184080 */  sll         $t0, $t8, 2
/* 0009BC 801DBBBC 0208C821 */  addu        $t9, $s0, $t0
/* 0009C0 801DBBC0 8F290000 */  lw          $t1, 0x0($t9)
/* 0009C4 801DBBC4 12490009 */  beq         $s2, $t1, .L801DBBEC
/* 0009C8 801DBBC8 00000000 */   nop
.L801DBBCC:
/* 0009CC 801DBBCC 0C002DAF */  jal         finish_current_thread
/* 0009D0 801DBBD0 02402025 */   move       $a0, $s2
/* 0009D4 801DBBD4 8E2A001C */  lw          $t2, 0x1C($s1)
/* 0009D8 801DBBD8 000A5880 */  sll         $t3, $t2, 2
/* 0009DC 801DBBDC 020B6021 */  addu        $t4, $s0, $t3
/* 0009E0 801DBBE0 8D8D0000 */  lw          $t5, 0x0($t4)
/* 0009E4 801DBBE4 164DFFF9 */  bne         $s2, $t5, .L801DBBCC
/* 0009E8 801DBBE8 00000000 */   nop
.L801DBBEC:
/* 0009EC 801DBBEC 0C076F6A */  jal         func_801DBDA8_ovl12
/* 0009F0 801DBBF0 00000000 */   nop
/* 0009F4 801DBBF4 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 0009F8 801DBBF8 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 0009FC 801DBBFC 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 000A00 801DBC00 8DEE0000 */  lw          $t6, 0x0($t7)
/* 000A04 801DBC04 000EC080 */  sll         $t8, $t6, 2
/* 000A08 801DBC08 00380821 */  addu        $at, $at, $t8
/* 000A0C 801DBC0C 0C02BE85 */  jal         func_800AFA14
/* 000A10 801DBC10 AC329E20 */   sw         $s2, %lo(D_800E9E20)($at)
/* 000A14 801DBC14 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000A18 801DBC18 8FB00018 */  lw          $s0, 0x18($sp)
/* 000A1C 801DBC1C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 000A20 801DBC20 8FB20020 */  lw          $s2, 0x20($sp)
/* 000A24 801DBC24 03E00008 */  jr          $ra
/* 000A28 801DBC28 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DBA88_ovl12, @function
.size func_801DBA88_ovl12, . - func_801DBA88_ovl12

.section .rodata
glabel D_801E2D28_ovl12
/* 007B28 801E2D28 */ .word 0x477FFF00
