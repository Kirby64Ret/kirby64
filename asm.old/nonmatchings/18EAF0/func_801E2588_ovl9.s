glabel func_801E2588_ovl9
/* 1905D8 801E2588 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1905DC 801E258C 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 1905E0 801E2590 8CA20000 */  lw         $v0, 0x0($a1)
/* 1905E4 801E2594 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1905E8 801E2598 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1905EC 801E259C AFA40018 */  sw         $a0, 0x18($sp)
/* 1905F0 801E25A0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1905F4 801E25A4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1905F8 801E25A8 240E0004 */  addiu      $t6, $zero, 0x4
.L801E25AC_ovl14:
/* 1905FC 801E25AC 000FC080 */  sll        $t8, $t7, 2
/* 190600 801E25B0 00380821 */  addu       $at, $at, $t8
.L801E25B4_ovl10:
/* 190604 801E25B4 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 190608 801E25B8 8C480000 */  lw         $t0, 0x0($v0)
/* 19060C 801E25BC 3C0A800E */  lui        $t2, %hi(D_800E1B50)
.L801E25C0_ovl17:
/* 190610 801E25C0 3C19801D */  lui        $t9, %hi(D_801CBA10)
/* 190614 801E25C4 00084880 */  sll        $t1, $t0, 2
/* 190618 801E25C8 01495021 */  addu       $t2, $t2, $t1
/* 19061C 801E25CC 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
.L801E25D0_ovl15:
/* 190620 801E25D0 2739BA10 */  addiu      $t9, $t9, %lo(D_801CBA10)
.L801E25D4_ovl15:
/* 190624 801E25D4 44802000 */  mtc1       $zero, $f4
/* 190628 801E25D8 AD590098 */  sw         $t9, 0x98($t2)
/* 19062C 801E25DC 8CA20000 */  lw         $v0, 0x0($a1)
.L801E25E0_ovl10:
/* 190630 801E25E0 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 190634 801E25E4 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 190638 801E25E8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 19063C 801E25EC 3C01800E */  lui        $at, %hi(D_800E3910)
.L801E25F0_ovl14:
/* 190640 801E25F0 3C07800E */  lui        $a3, %hi(D_800E3750)
.L801E25F4_ovl16:
/* 190644 801E25F4 000B6080 */  sll        $t4, $t3, 2
/* 190648 801E25F8 00CC6821 */  addu       $t5, $a2, $t4
/* 19064C 801E25FC E5A40000 */  swc1       $f4, 0x0($t5)
/* 190650 801E2600 8C430000 */  lw         $v1, 0x0($v0)
/* 190654 801E2604 24E73750 */  addiu      $a3, $a3, %lo(D_800E3750)
/* 190658 801E2608 3C040001 */  lui        $a0, (0x101AF >> 16)
/* 19065C 801E260C 00031880 */  sll        $v1, $v1, 2
glabel func_801E2610_ovl14
/* 190660 801E2610 00C37821 */  addu       $t7, $a2, $v1
/* 190664 801E2614 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 190668 801E2618 00230821 */  addu       $at, $at, $v1
/* 19066C 801E261C 348401AF */  ori        $a0, $a0, (0x101AF & 0xFFFF)
/* 190670 801E2620 E4203910 */  swc1       $f0, %lo(D_800E3910)($at)
/* 190674 801E2624 8C4E0000 */  lw         $t6, 0x0($v0)
/* 190678 801E2628 3C01800E */  lui        $at, %hi(D_800E3590)
.L801E262C_ovl17:
/* 19067C 801E262C 000EC080 */  sll        $t8, $t6, 2
glabel func_801E2630_ovl13
/* 190680 801E2630 00F84021 */  addu       $t0, $a3, $t8
/* 190684 801E2634 E5000000 */  swc1       $f0, 0x0($t0)
/* 190688 801E2638 8C490000 */  lw         $t1, 0x0($v0)
/* 19068C 801E263C 0009C880 */  sll        $t9, $t1, 2
/* 190690 801E2640 00390821 */  addu       $at, $at, $t9
/* 190694 801E2644 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 190698 801E2648 8C4A0000 */  lw         $t2, 0x0($v0)
/* 19069C 801E264C 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 1906A0 801E2650 44813000 */  mtc1       $at, $f6
/* 1906A4 801E2654 000A5880 */  sll        $t3, $t2, 2
/* 1906A8 801E2658 00EB6021 */  addu       $t4, $a3, $t3
/* 1906AC 801E265C E5860000 */  swc1       $f6, 0x0($t4)
.L801E2660_ovl10:
/* 1906B0 801E2660 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1906B4 801E2664 3C014120 */  lui        $at, (0x41200000 >> 16)
.L801E2668_ovl17:
/* 1906B8 801E2668 44814000 */  mtc1       $at, $f8
/* 1906BC 801E266C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1906C0 801E2670 000D7880 */  sll        $t7, $t5, 2
/* 1906C4 801E2674 002F0821 */  addu       $at, $at, $t7
/* 1906C8 801E2678 0C02A7A9 */  jal        func_800A9EA4
/* 1906CC 801E267C E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
/* 1906D0 801E2680 0C02BE85 */  jal        func_800AFA14
.L801E2684_ovl10:
/* 1906D4 801E2684 00000000 */   nop
/* 1906D8 801E2688 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E268C_ovl17:
/* 1906DC 801E268C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1906E0 801E2690 03E00008 */  jr         $ra
/* 1906E4 801E2694 00000000 */   nop
