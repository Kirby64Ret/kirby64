glabel func_8022EE78_ovl19
/* 24F588 8022EE78 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 24F58C 8022EE7C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 24F590 8022EE80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 24F594 8022EE84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 24F598 8022EE88 AFA40028 */  sw    $a0, 0x28($sp)
/* 24F59C 8022EE8C 8DCF0000 */  lw    $t7, ($t6)
/* 24F5A0 8022EE90 3C02800E */ lui $v0, %hi(D_800E0D50)
/* 24F5A4 8022EE94 3C09800F */ lui $t1, %hi(D_800E9AA0)
/* 24F5A8 8022EE98 000FC080 */  sll   $t8, $t7, 2
/* 24F5AC 8022EE9C 00581021 */  addu  $v0, $v0, $t8
/* 24F5B0 8022EEA0 8C420D50 */ lw $v0, %lo(D_800E0D50)($v0)
/* 24F5B4 8022EEA4 0002C880 */  sll   $t9, $v0, 2
/* 24F5B8 8022EEA8 01394821 */  addu  $t1, $t1, $t9
/* 24F5BC 8022EEAC 8D299AA0 */ lw $t1, %lo(D_800E9AA0)($t1)
/* 24F5C0 8022EEB0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 24F5C4 8022EEB4 0C068220 */  jal   func_801A0880_ovl19
/* 24F5C8 8022EEB8 AFA90020 */   sw    $t1, 0x20($sp)
/* 24F5CC 8022EEBC 14400051 */  bnez  $v0, .L8022F004_ovl19
/* 24F5D0 8022EEC0 240E0001 */   li    $t6, 1
/* 24F5D4 8022EEC4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 24F5D8 8022EEC8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 24F5DC 8022EECC 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 24F5E0 8022EED0 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 24F5E4 8022EED4 8C430000 */  lw    $v1, ($v0)
/* 24F5E8 8022EED8 44802000 */  mtc1  $zero, $f4
/* 24F5EC 8022EEDC 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosYArray) # $t4, 0x800e
/* 24F5F0 8022EEE0 00031880 */  sll   $v1, $v1, 2
/* 24F5F4 8022EEE4 01035021 */  addu  $t2, $t0, $v1
/* 24F5F8 8022EEE8 C5460000 */  lwc1  $f6, ($t2)
/* 24F5FC 8022EEEC 258C2790 */  addiu $t4, %lo(gEntitiesNextPosYArray) # addiu $t4, $t4, 0x2790
/* 24F600 8022EEF0 006C2821 */  addu  $a1, $v1, $t4
/* 24F604 8022EEF4 46062032 */  c.eq.s $f4, $f6
/* 24F608 8022EEF8 8FAB0020 */  lw    $t3, 0x20($sp)
/* 24F60C 8022EEFC 4503004A */  bc1tl .L8022F028_ovl19
/* 24F610 8022EF00 8FBF0014 */   lw    $ra, 0x14($sp)
/* 24F614 8022EF04 C56C000C */  lwc1  $f12, 0xc($t3)
/* 24F618 8022EF08 C4A80000 */  lwc1  $f8, ($a1)
/* 24F61C 8022EF0C 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 24F620 8022EF10 460C403E */  c.le.s $f8, $f12
/* 24F624 8022EF14 00000000 */  nop   
/* 24F628 8022EF18 45020043 */  bc1fl .L8022F028_ovl19
/* 24F62C 8022EF1C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 24F630 8022EF20 E4AC0000 */  swc1  $f12, ($a1)
/* 24F634 8022EF24 8C4D0000 */  lw    $t5, ($v0)
/* 24F638 8022EF28 44805000 */  mtc1  $zero, $f10
/* 24F63C 8022EF2C 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 24F640 8022EF30 000D7080 */  sll   $t6, $t5, 2
/* 24F644 8022EF34 00CE7821 */  addu  $t7, $a2, $t6
/* 24F648 8022EF38 E5EA0000 */  swc1  $f10, ($t7)
/* 24F64C 8022EF3C 8C430000 */  lw    $v1, ($v0)
/* 24F650 8022EF40 3C01800E */ lui $at, %hi(D_800E3750)
/* 24F654 8022EF44 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 24F658 8022EF48 00031880 */  sll   $v1, $v1, 2
/* 24F65C 8022EF4C 00C3C021 */  addu  $t8, $a2, $v1
/* 24F660 8022EF50 C7000000 */  lwc1  $f0, ($t8)
/* 24F664 8022EF54 00230821 */  addu  $at, $at, $v1
/* 24F668 8022EF58 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 24F66C 8022EF5C E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 24F670 8022EF60 8C590000 */  lw    $t9, ($v0)
/* 24F674 8022EF64 3C01800E */ lui $at, %hi(D_800E3590)
/* 24F678 8022EF68 24040260 */  li    $a0, 608
/* 24F67C 8022EF6C 00194880 */  sll   $t1, $t9, 2
/* 24F680 8022EF70 00290821 */  addu  $at, $at, $t1
/* 24F684 8022EF74 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 24F688 8022EF78 8C4A0000 */  lw    $t2, ($v0)
/* 24F68C 8022EF7C 3C01800E */ lui $at, %hi(D_800E33D0)
/* 24F690 8022EF80 000A5880 */  sll   $t3, $t2, 2
/* 24F694 8022EF84 002B0821 */  addu  $at, $at, $t3
/* 24F698 8022EF88 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 24F69C 8022EF8C 8C4C0000 */  lw    $t4, ($v0)
/* 24F6A0 8022EF90 3C01800E */ lui $at, %hi(D_800E3050)
/* 24F6A4 8022EF94 000C6880 */  sll   $t5, $t4, 2
/* 24F6A8 8022EF98 010D7021 */  addu  $t6, $t0, $t5
/* 24F6AC 8022EF9C E5C00000 */  swc1  $f0, ($t6)
/* 24F6B0 8022EFA0 8C4F0000 */  lw    $t7, ($v0)
/* 24F6B4 8022EFA4 000FC080 */  sll   $t8, $t7, 2
/* 24F6B8 8022EFA8 00380821 */  addu  $at, $at, $t8
/* 24F6BC 8022EFAC E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 24F6C0 8022EFB0 8C590000 */  lw    $t9, ($v0)
/* 24F6C4 8022EFB4 3C018023 */  lui   $at, %hi(D_8022FAA4) # $at, 0x8023
/* 24F6C8 8022EFB8 C430FAA4 */  lwc1  $f16, %lo(D_8022FAA4)($at)
/* 24F6CC 8022EFBC 00194880 */  sll   $t1, $t9, 2
/* 24F6D0 8022EFC0 00E95021 */  addu  $t2, $a3, $t1
/* 24F6D4 8022EFC4 E5500000 */  swc1  $f16, ($t2)
/* 24F6D8 8022EFC8 8C430000 */  lw    $v1, ($v0)
/* 24F6DC 8022EFCC 3C01800E */ lui $at, %hi(D_800E3C90)
/* 24F6E0 8022EFD0 00031880 */  sll   $v1, $v1, 2
/* 24F6E4 8022EFD4 00E35821 */  addu  $t3, $a3, $v1
/* 24F6E8 8022EFD8 C5620000 */  lwc1  $f2, ($t3)
/* 24F6EC 8022EFDC 00230821 */  addu  $at, $at, $v1
/* 24F6F0 8022EFE0 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 24F6F4 8022EFE4 8C4C0000 */  lw    $t4, ($v0)
/* 24F6F8 8022EFE8 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 24F6FC 8022EFEC 000C6880 */  sll   $t5, $t4, 2
/* 24F700 8022EFF0 002D0821 */  addu  $at, $at, $t5
/* 24F704 8022EFF4 0C029D9E */  jal   play_sound
/* 24F708 8022EFF8 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 24F70C 8022EFFC 1000000A */  b     .L8022F028_ovl19
/* 24F710 8022F000 8FBF0014 */   lw    $ra, 0x14($sp)
.L8022F004_ovl19:
/* 24F714 8022F004 8FB8001C */  lw    $t8, 0x1c($sp)
/* 24F718 8022F008 3C01800D */  lui   $at, %hi(D_800D6E64) # $at, 0x800d
/* 24F71C 8022F00C AC2E6E64 */  sw    $t6, %lo(D_800D6E64)($at)
/* 24F720 8022F010 3C01800F */ lui $at, %hi(D_800EC120)
/* 24F724 8022F014 0018C880 */  sll   $t9, $t8, 2
/* 24F728 8022F018 00390821 */  addu  $at, $at, $t9
/* 24F72C 8022F01C 240FFFFF */  li    $t7, -1
/* 24F730 8022F020 AC2FC120 */ sw $t7, %lo(D_800EC120)($at)
/* 24F734 8022F024 8FBF0014 */  lw    $ra, 0x14($sp)
.L8022F028_ovl19:
/* 24F738 8022F028 27BD0028 */  addiu $sp, $sp, 0x28
/* 24F73C 8022F02C 03E00008 */  jr    $ra
/* 24F740 8022F030 00000000 */   nop   
.type func_8022EE78_ovl19, @function

/* 24F744 8022F034 00000000 */  nop   
/* 24F748 8022F038 00000000 */  nop   
/* 24F74C 8022F03C 00000000 */  nop   
# Unknown region 24F750-2501C0 [A70]
.type func_8022EE78_ovl19, @function

.size func_8022EE78_ovl19, . - func_8022EE78_ovl19
