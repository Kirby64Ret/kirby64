glabel func_801EA9CC_ovl10
/* 1DB73C 801EA9CC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1DB740 801EA9D0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DB744 801EA9D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801EA9D8_ovl16:
/* 1DB748 801EA9D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DB74C 801EA9DC AFA40018 */  sw         $a0, 0x18($sp)
/* 1DB750 801EA9E0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1DB754 801EA9E4 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1DB758 801EA9E8 3C040001 */  lui        $a0, (0x10390 >> 16)
/* 1DB75C 801EA9EC 000E7880 */  sll        $t7, $t6, 2
/* 1DB760 801EA9F0 002F0821 */  addu       $at, $at, $t7
/* 1DB764 801EA9F4 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 1DB768 801EA9F8 8C580000 */  lw         $t8, 0x0($v0)
/* 1DB76C 801EA9FC 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1DB770 801EAA00 34840390 */  ori        $a0, $a0, (0x10390 & 0xFFFF)
/* 1DB774 801EAA04 0018C880 */  sll        $t9, $t8, 2
/* 1DB778 801EAA08 00390821 */  addu       $at, $at, $t9
.L801EAA0C_ovl16:
/* 1DB77C 801EAA0C AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1DB780 801EAA10 8C480000 */  lw         $t0, 0x0($v0)
/* 1DB784 801EAA14 3C01800F */  lui        $at, %hi(D_800EA360)
/* 1DB788 801EAA18 00084880 */  sll        $t1, $t0, 2
/* 1DB78C 801EAA1C 00290821 */  addu       $at, $at, $t1
/* 1DB790 801EAA20 AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
/* 1DB794 801EAA24 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1DB798 801EAA28 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1DB79C 801EAA2C 000A5880 */  sll        $t3, $t2, 2
.L801EAA30_ovl16:
/* 1DB7A0 801EAA30 002B0821 */  addu       $at, $at, $t3
/* 1DB7A4 801EAA34 0C02A7A9 */  jal        func_800A9EA4
/* 1DB7A8 801EAA38 AC20DFD0 */   sw        $zero, %lo(D_800DDFD0)($at)
/* 1DB7AC 801EAA3C 3C040001 */  lui        $a0, (0x1038F >> 16)
/* 1DB7B0 801EAA40 3484038F */  ori        $a0, $a0, (0x1038F & 0xFFFF)
/* 1DB7B4 801EAA44 0C02AA19 */  jal        func_800AA864
/* 1DB7B8 801EAA48 24050001 */   addiu     $a1, $zero, 0x1
/* 1DB7BC 801EAA4C 44806000 */  mtc1       $zero, $f12
/* 1DB7C0 801EAA50 0C02BB30 */  jal        func_800AECC0
/* 1DB7C4 801EAA54 00000000 */   nop
/* 1DB7C8 801EAA58 44806000 */  mtc1       $zero, $f12
/* 1DB7CC 801EAA5C 0C02BB48 */  jal        func_800AED20
.L801EAA60_ovl16:
/* 1DB7D0 801EAA60 00000000 */   nop
/* 1DB7D4 801EAA64 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1DB7D8 801EAA68 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1DB7DC 801EAA6C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1DB7E0 801EAA70 240C0001 */  addiu      $t4, $zero, 0x1
/* 1DB7E4 801EAA74 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1DB7E8 801EAA78 000E7880 */  sll        $t7, $t6, 2
/* 1DB7EC 801EAA7C 002F0821 */  addu       $at, $at, $t7
/* 1DB7F0 801EAA80 0C02BE85 */  jal        func_800AFA14
/* 1DB7F4 801EAA84 AC2C9E20 */   sw        $t4, %lo(D_800E9E20)($at)
.L801EAA88_ovl9:
/* 1DB7F8 801EAA88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1DB7FC 801EAA8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1DB800 801EAA90 03E00008 */  jr         $ra
/* 1DB804 801EAA94 00000000 */   nop
