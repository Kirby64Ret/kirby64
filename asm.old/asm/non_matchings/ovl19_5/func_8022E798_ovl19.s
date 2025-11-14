glabel func_8022E798_ovl19
/* 24EEA8 8022E798 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 24EEAC 8022E79C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 24EEB0 8022E7A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 24EEB4 8022E7A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 24EEB8 8022E7A8 AFA40028 */  sw    $a0, 0x28($sp)
/* 24EEBC 8022E7AC 8DCF0000 */  lw    $t7, ($t6)
/* 24EEC0 8022E7B0 3C02800E */ lui $v0, %hi(D_800E0D50)
/* 24EEC4 8022E7B4 3C09800F */ lui $t1, %hi(D_800E9AA0)
/* 24EEC8 8022E7B8 000FC080 */  sll   $t8, $t7, 2
/* 24EECC 8022E7BC 00581021 */  addu  $v0, $v0, $t8
/* 24EED0 8022E7C0 8C420D50 */ lw $v0, %lo(D_800E0D50)($v0)
/* 24EED4 8022E7C4 0002C880 */  sll   $t9, $v0, 2
/* 24EED8 8022E7C8 01394821 */  addu  $t1, $t1, $t9
/* 24EEDC 8022E7CC 8D299AA0 */ lw $t1, %lo(D_800E9AA0)($t1)
/* 24EEE0 8022E7D0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 24EEE4 8022E7D4 0C068220 */  jal   func_801A0880_ovl19
/* 24EEE8 8022E7D8 AFA90020 */   sw    $t1, 0x20($sp)
/* 24EEEC 8022E7DC 14400051 */  bnez  $v0, .L8022E924_ovl19
/* 24EEF0 8022E7E0 240E0001 */   li    $t6, 1
/* 24EEF4 8022E7E4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 24EEF8 8022E7E8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 24EEFC 8022E7EC 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 24EF00 8022E7F0 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 24EF04 8022E7F4 8C430000 */  lw    $v1, ($v0)
/* 24EF08 8022E7F8 44802000 */  mtc1  $zero, $f4
/* 24EF0C 8022E7FC 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosYArray) # $t4, 0x800e
/* 24EF10 8022E800 00031880 */  sll   $v1, $v1, 2
/* 24EF14 8022E804 01035021 */  addu  $t2, $t0, $v1
/* 24EF18 8022E808 C5460000 */  lwc1  $f6, ($t2)
/* 24EF1C 8022E80C 258C2790 */  addiu $t4, %lo(gEntitiesNextPosYArray) # addiu $t4, $t4, 0x2790
/* 24EF20 8022E810 006C2821 */  addu  $a1, $v1, $t4
/* 24EF24 8022E814 46062032 */  c.eq.s $f4, $f6
/* 24EF28 8022E818 8FAB0020 */  lw    $t3, 0x20($sp)
/* 24EF2C 8022E81C 4503004A */  bc1tl .L8022E948_ovl19
/* 24EF30 8022E820 8FBF0014 */   lw    $ra, 0x14($sp)
/* 24EF34 8022E824 C56C000C */  lwc1  $f12, 0xc($t3)
/* 24EF38 8022E828 C4A80000 */  lwc1  $f8, ($a1)
/* 24EF3C 8022E82C 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 24EF40 8022E830 460C403E */  c.le.s $f8, $f12
/* 24EF44 8022E834 00000000 */  nop   
/* 24EF48 8022E838 45020043 */  bc1fl .L8022E948_ovl19
/* 24EF4C 8022E83C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 24EF50 8022E840 E4AC0000 */  swc1  $f12, ($a1)
/* 24EF54 8022E844 8C4D0000 */  lw    $t5, ($v0)
/* 24EF58 8022E848 44805000 */  mtc1  $zero, $f10
/* 24EF5C 8022E84C 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 24EF60 8022E850 000D7080 */  sll   $t6, $t5, 2
/* 24EF64 8022E854 00CE7821 */  addu  $t7, $a2, $t6
/* 24EF68 8022E858 E5EA0000 */  swc1  $f10, ($t7)
/* 24EF6C 8022E85C 8C430000 */  lw    $v1, ($v0)
/* 24EF70 8022E860 3C01800E */ lui $at, %hi(D_800E3750)
/* 24EF74 8022E864 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 24EF78 8022E868 00031880 */  sll   $v1, $v1, 2
/* 24EF7C 8022E86C 00C3C021 */  addu  $t8, $a2, $v1
/* 24EF80 8022E870 C7000000 */  lwc1  $f0, ($t8)
/* 24EF84 8022E874 00230821 */  addu  $at, $at, $v1
/* 24EF88 8022E878 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 24EF8C 8022E87C E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 24EF90 8022E880 8C590000 */  lw    $t9, ($v0)
/* 24EF94 8022E884 3C01800E */ lui $at, %hi(D_800E3590)
/* 24EF98 8022E888 24040260 */  li    $a0, 608
/* 24EF9C 8022E88C 00194880 */  sll   $t1, $t9, 2
/* 24EFA0 8022E890 00290821 */  addu  $at, $at, $t1
/* 24EFA4 8022E894 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 24EFA8 8022E898 8C4A0000 */  lw    $t2, ($v0)
/* 24EFAC 8022E89C 3C01800E */ lui $at, %hi(D_800E33D0)
/* 24EFB0 8022E8A0 000A5880 */  sll   $t3, $t2, 2
/* 24EFB4 8022E8A4 002B0821 */  addu  $at, $at, $t3
/* 24EFB8 8022E8A8 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 24EFBC 8022E8AC 8C4C0000 */  lw    $t4, ($v0)
/* 24EFC0 8022E8B0 3C01800E */ lui $at, %hi(D_800E3050)
/* 24EFC4 8022E8B4 000C6880 */  sll   $t5, $t4, 2
/* 24EFC8 8022E8B8 010D7021 */  addu  $t6, $t0, $t5
/* 24EFCC 8022E8BC E5C00000 */  swc1  $f0, ($t6)
/* 24EFD0 8022E8C0 8C4F0000 */  lw    $t7, ($v0)
/* 24EFD4 8022E8C4 000FC080 */  sll   $t8, $t7, 2
/* 24EFD8 8022E8C8 00380821 */  addu  $at, $at, $t8
/* 24EFDC 8022E8CC E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 24EFE0 8022E8D0 8C590000 */  lw    $t9, ($v0)
/* 24EFE4 8022E8D4 3C018023 */  lui   $at, %hi(D_8022FA94) # $at, 0x8023
/* 24EFE8 8022E8D8 C430FA94 */  lwc1  $f16, %lo(D_8022FA94)($at)
/* 24EFEC 8022E8DC 00194880 */  sll   $t1, $t9, 2
/* 24EFF0 8022E8E0 00E95021 */  addu  $t2, $a3, $t1
/* 24EFF4 8022E8E4 E5500000 */  swc1  $f16, ($t2)
/* 24EFF8 8022E8E8 8C430000 */  lw    $v1, ($v0)
/* 24EFFC 8022E8EC 3C01800E */ lui $at, %hi(D_800E3C90)
/* 24F000 8022E8F0 00031880 */  sll   $v1, $v1, 2
/* 24F004 8022E8F4 00E35821 */  addu  $t3, $a3, $v1
/* 24F008 8022E8F8 C5620000 */  lwc1  $f2, ($t3)
/* 24F00C 8022E8FC 00230821 */  addu  $at, $at, $v1
/* 24F010 8022E900 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 24F014 8022E904 8C4C0000 */  lw    $t4, ($v0)
/* 24F018 8022E908 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 24F01C 8022E90C 000C6880 */  sll   $t5, $t4, 2
/* 24F020 8022E910 002D0821 */  addu  $at, $at, $t5
/* 24F024 8022E914 0C029D9E */  jal   play_sound
/* 24F028 8022E918 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 24F02C 8022E91C 1000000A */  b     .L8022E948_ovl19
/* 24F030 8022E920 8FBF0014 */   lw    $ra, 0x14($sp)
.L8022E924_ovl19:
/* 24F034 8022E924 8FB8001C */  lw    $t8, 0x1c($sp)
/* 24F038 8022E928 3C01800D */  lui   $at, %hi(D_800D6E64) # $at, 0x800d
/* 24F03C 8022E92C AC2E6E64 */  sw    $t6, %lo(D_800D6E64)($at)
/* 24F040 8022E930 3C01800F */ lui $at, %hi(D_800EC120)
/* 24F044 8022E934 0018C880 */  sll   $t9, $t8, 2
/* 24F048 8022E938 00390821 */  addu  $at, $at, $t9
/* 24F04C 8022E93C 240FFFFF */  li    $t7, -1
/* 24F050 8022E940 AC2FC120 */ sw $t7, %lo(D_800EC120)($at)
/* 24F054 8022E944 8FBF0014 */  lw    $ra, 0x14($sp)
.L8022E948_ovl19:
/* 24F058 8022E948 27BD0028 */  addiu $sp, $sp, 0x28
/* 24F05C 8022E94C 03E00008 */  jr    $ra
/* 24F060 8022E950 00000000 */   nop   
.type func_8022E798_ovl19, @function
.size func_8022E798_ovl19, . - func_8022E798_ovl19
