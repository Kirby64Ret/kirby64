glabel func_801AC6D0_ovl7
/* 152740 801AC6D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 152744 801AC6D4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 152748 801AC6D8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 15274C 801AC6DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 152750 801AC6E0 AFA40020 */  sw         $a0, 0x20($sp)
/* 152754 801AC6E4 AFA0001C */  sw         $zero, 0x1C($sp)
/* 152758 801AC6E8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 15275C 801AC6EC 3C01800E */  lui        $at, %hi(D_800DF310)
/* 152760 801AC6F0 3C19800E */  lui        $t9, %hi(D_800DD710)
/* 152764 801AC6F4 000E7880 */  sll        $t7, $t6, 2
/* 152768 801AC6F8 002F0821 */  addu       $at, $at, $t7
/* 15276C 801AC6FC AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
/* 152770 801AC700 8C430000 */  lw         $v1, 0x0($v0)
/* 152774 801AC704 2401001A */  addiu      $at, $zero, 0x1A
/* 152778 801AC708 3C09800E */  lui        $t1, %hi(D_800E77A0)
/* 15277C 801AC70C 0003C080 */  sll        $t8, $v1, 2
/* 152780 801AC710 0338C821 */  addu       $t9, $t9, $t8
/* 152784 801AC714 8F39D710 */  lw         $t9, %lo(D_800DD710)($t9)
/* 152788 801AC718 00034040 */  sll        $t0, $v1, 1
/* 15278C 801AC71C 01284821 */  addu       $t1, $t1, $t0
/* 152790 801AC720 17210009 */  bne        $t9, $at, .L801AC748_ovl7
/* 152794 801AC724 8FAA0020 */   lw        $t2, 0x20($sp)
/* 152798 801AC728 952977A0 */  lhu        $t1, %lo(D_800E77A0)($t1)
/* 15279C 801AC72C 24010039 */  addiu      $at, $zero, 0x39
/* 1527A0 801AC730 15210005 */  bne        $t1, $at, .L801AC748_ovl7
/* 1527A4 801AC734 00000000 */   nop
/* 1527A8 801AC738 0C06BBFF */  jal        func_801AEFFC_ovl7
/* 1527AC 801AC73C 00000000 */   nop
/* 1527B0 801AC740 1000003C */  b          .L801AC834_ovl7
/* 1527B4 801AC744 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AC748_ovl7:
/* 1527B8 801AC748 0C02A5D8 */  jal        func_800A9760
/* 1527BC 801AC74C 8D440000 */   lw        $a0, 0x0($t2)
/* 1527C0 801AC750 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 1527C4 801AC754 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 1527C8 801AC758 3C0C800E */  lui        $t4, %hi(D_800E7730)
/* 1527CC 801AC75C 24010006 */  addiu      $at, $zero, 0x6
/* 1527D0 801AC760 8D630000 */  lw         $v1, 0x0($t3)
/* 1527D4 801AC764 3C02800E */  lui        $v0, %hi(D_800E77A0)
/* 1527D8 801AC768 01836021 */  addu       $t4, $t4, $v1
/* 1527DC 801AC76C 918C7730 */  lbu        $t4, %lo(D_800E7730)($t4)
/* 1527E0 801AC770 00036840 */  sll        $t5, $v1, 1
/* 1527E4 801AC774 004D1021 */  addu       $v0, $v0, $t5
/* 1527E8 801AC778 55810017 */  bnel       $t4, $at, .L801AC7D8_ovl7
/* 1527EC 801AC77C 8FB90020 */   lw        $t9, 0x20($sp)
/* 1527F0 801AC780 944277A0 */  lhu        $v0, %lo(D_800E77A0)($v0)
/* 1527F4 801AC784 1840000C */  blez       $v0, .L801AC7B8_ovl7
/* 1527F8 801AC788 28410008 */   slti      $at, $v0, 0x8
/* 1527FC 801AC78C 5020000B */  beql       $at, $zero, .L801AC7BC_ovl7
/* 152800 801AC790 28410008 */   slti      $at, $v0, 0x8
/* 152804 801AC794 0C0701BF */  jal        func_801C06FC_ovl7
/* 152808 801AC798 00000000 */   nop
/* 15280C 801AC79C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 152810 801AC7A0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 152814 801AC7A4 3C02800E */  lui        $v0, %hi(D_800E77A0)
/* 152818 801AC7A8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 15281C 801AC7AC 000FC040 */  sll        $t8, $t7, 1
/* 152820 801AC7B0 00581021 */  addu       $v0, $v0, $t8
/* 152824 801AC7B4 944277A0 */  lhu        $v0, %lo(D_800E77A0)($v0)
.L801AC7B8_ovl7:
/* 152828 801AC7B8 28410008 */  slti       $at, $v0, 0x8
.L801AC7BC_ovl7:
/* 15282C 801AC7BC 14200005 */  bnez       $at, .L801AC7D4_ovl7
/* 152830 801AC7C0 28410024 */   slti      $at, $v0, 0x24
/* 152834 801AC7C4 50200004 */  beql       $at, $zero, .L801AC7D8_ovl7
/* 152838 801AC7C8 8FB90020 */   lw        $t9, 0x20($sp)
/* 15283C 801AC7CC 0C070782 */  jal        func_801C1E08_ovl7
/* 152840 801AC7D0 00000000 */   nop
.L801AC7D4_ovl7:
/* 152844 801AC7D4 8FB90020 */  lw         $t9, 0x20($sp)
.L801AC7D8_ovl7:
/* 152848 801AC7D8 2401FFFF */  addiu      $at, $zero, -0x1
/* 15284C 801AC7DC 8F240004 */  lw         $a0, 0x4($t9)
/* 152850 801AC7E0 50810009 */  beql       $a0, $at, .L801AC808_ovl7
/* 152854 801AC7E4 8FAA0020 */   lw        $t2, 0x20($sp)
/* 152858 801AC7E8 0C02A7E6 */  jal        func_800A9F98
/* 15285C 801AC7EC 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 152860 801AC7F0 8FA80020 */  lw         $t0, 0x20($sp)
/* 152864 801AC7F4 0C02BB30 */  jal        func_800AECC0
/* 152868 801AC7F8 C50C000C */   lwc1      $f12, 0xC($t0)
/* 15286C 801AC7FC 24090001 */  addiu      $t1, $zero, 0x1
/* 152870 801AC800 AFA9001C */  sw         $t1, 0x1C($sp)
/* 152874 801AC804 8FAA0020 */  lw         $t2, 0x20($sp)
.L801AC808_ovl7:
/* 152878 801AC808 2401FFFF */  addiu      $at, $zero, -0x1
/* 15287C 801AC80C 8D440008 */  lw         $a0, 0x8($t2)
/* 152880 801AC810 50810007 */  beql       $a0, $at, .L801AC830_ovl7
/* 152884 801AC814 8FA2001C */   lw        $v0, 0x1C($sp)
/* 152888 801AC818 0C02A7E6 */  jal        func_800A9F98
/* 15288C 801AC81C 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 152890 801AC820 8FAB0020 */  lw         $t3, 0x20($sp)
/* 152894 801AC824 0C02BB48 */  jal        func_800AED20
/* 152898 801AC828 C56C000C */   lwc1      $f12, 0xC($t3)
/* 15289C 801AC82C 8FA2001C */  lw         $v0, 0x1C($sp)
.L801AC830_ovl7:
/* 1528A0 801AC830 8FBF0014 */  lw         $ra, 0x14($sp)
.L801AC834_ovl7:
/* 1528A4 801AC834 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1528A8 801AC838 03E00008 */  jr         $ra
/* 1528AC 801AC83C 00000000 */   nop
