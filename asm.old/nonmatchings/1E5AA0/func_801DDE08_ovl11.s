glabel func_801DDE08_ovl11
/* 1E86C8 801DDE08 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1E86CC 801DDE0C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801DDE10_ovl12:
/* 1E86D0 801DDE10 27BDFFE0 */  addiu      $sp, $sp, -0x20
.L801DDE14_ovl16:
/* 1E86D4 801DDE14 AFBF0014 */  sw         $ra, 0x14($sp)
.L801DDE18_ovl16:
/* 1E86D8 801DDE18 8DC30000 */  lw         $v1, 0x0($t6)
/* 1E86DC 801DDE1C 3C02800E */  lui        $v0, %hi(D_800E1B50)
.L801DDE20_ovl17:
/* 1E86E0 801DDE20 3C04800E */  lui        $a0, %hi(D_800DE350)
/* 1E86E4 801DDE24 00031880 */  sll        $v1, $v1, 2
/* 1E86E8 801DDE28 00431021 */  addu       $v0, $v0, $v1
/* 1E86EC 801DDE2C 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1E86F0 801DDE30 00832021 */  addu       $a0, $a0, $v1
/* 1E86F4 801DDE34 8C84E350 */  lw         $a0, %lo(D_800DE350)($a0)
/* 1E86F8 801DDE38 8C4F0070 */  lw         $t7, 0x70($v0)
.L801DDE3C_ovl13:
/* 1E86FC 801DDE3C 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 1E8700 801DDE40 1700001B */  bnez       $t8, func_801DDEB0_ovl16
/* 1E8704 801DDE44 AC580070 */   sw        $t8, 0x70($v0)
/* 1E8708 801DDE48 8C49006C */  lw         $t1, 0x6C($v0)
/* 1E870C 801DDE4C 24080002 */  addiu      $t0, $zero, 0x2
/* 1E8710 801DDE50 AC480070 */  sw         $t0, 0x70($v0)
glabel func_801DDE54_ovl16
/* 1E8714 801DDE54 392A0001 */  xori       $t2, $t1, 0x1
glabel func_801DDE58_ovl14
/* 1E8718 801DDE58 11400006 */  beqz       $t2, .L801DDE74_ovl11
/* 1E871C 801DDE5C AC4A006C */   sw        $t2, 0x6C($v0)
glabel func_801DDE60_ovl14
/* 1E8720 801DDE60 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 1E8724 801DDE64 0C076CAF */  jal        func_801DB2BC_ovl11
/* 1E8728 801DDE68 AFA2001C */   sw        $v0, 0x1C($sp)
/* 1E872C 801DDE6C 10000005 */  b          .L801DDE84_ovl11
/* 1E8730 801DDE70 8FA2001C */   lw        $v0, 0x1C($sp)
.L801DDE74_ovl11:
/* 1E8734 801DDE74 24050000 */  addiu      $a1, $zero, 0x0
/* 1E8738 801DDE78 0C076CAF */  jal        func_801DB2BC_ovl11
/* 1E873C 801DDE7C AFA2001C */   sw        $v0, 0x1C($sp)
/* 1E8740 801DDE80 8FA2001C */  lw         $v0, 0x1C($sp)
.L801DDE84_ovl11:
/* 1E8744 801DDE84 8C4C0068 */  lw         $t4, 0x68($v0)
/* 1E8748 801DDE88 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1E874C 801DDE8C 258DFFFF */  addiu      $t5, $t4, -0x1
glabel func_801DDE90_ovl15
/* 1E8750 801DDE90 15A00007 */  bnez       $t5, func_801DDEB0_ovl16
/* 1E8754 801DDE94 AC4D0068 */   sw        $t5, 0x68($v0)
/* 1E8758 801DDE98 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1E875C 801DDE9C 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 1E8760 801DDEA0 8DF80000 */  lw         $t8, 0x0($t7)
/* 1E8764 801DDEA4 0018C880 */  sll        $t9, $t8, 2
/* 1E8768 801DDEA8 00390821 */  addu       $at, $at, $t9
/* 1E876C 801DDEAC AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
glabel func_801DDEB0_ovl16
/* 1E8770 801DDEB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E8774 801DDEB4 27BD0020 */  addiu      $sp, $sp, 0x20
glabel func_801DDEB8_ovl10
/* 1E8778 801DDEB8 03E00008 */  jr         $ra
/* 1E877C 801DDEBC 00000000 */   nop
