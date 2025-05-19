glabel func_801E2630_ovl13 # 40
/* 1FA5B0 801E2630 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1FA5B4 801E2634 2508A7C4 */  addiu       $t0, $t0, %lo(D_8004A7C4)
/* 1FA5B8 801E2638 8D060000 */  lw          $a2, 0x0($t0)
/* 1FA5BC 801E263C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FA5C0 801E2640 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FA5C4 801E2644 AFA40018 */  sw          $a0, 0x18($sp)
/* 1FA5C8 801E2648 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FA5CC 801E264C 3C0E800F */  lui         $t6, %hi(D_800EA360)
/* 1FA5D0 801E2650 3C04800E */  lui         $a0, %hi(D_800DFBD0)
/* 1FA5D4 801E2654 00031880 */  sll         $v1, $v1, 2
/* 1FA5D8 801E2658 01C37021 */  addu        $t6, $t6, $v1
/* 1FA5DC 801E265C 8DCEA360 */  lw          $t6, %lo(D_800EA360)($t6)
/* 1FA5E0 801E2660 2484FBD0 */  addiu       $a0, $a0, %lo(D_800DFBD0)
/* 1FA5E4 801E2664 00837821 */  addu        $t7, $a0, $v1
/* 1FA5E8 801E2668 51C00052 */  beql        $t6, $zero, L801E27B4_ovl13
/* 1FA5EC 801E266C 8DF80000 */   lw         $t8, 0x0($t7)
/* 1FA5F0 801E2670 3C04800E */  lui         $a0, %hi(D_800DFBD0)
/* 1FA5F4 801E2674 2484FBD0 */  addiu       $a0, $a0, %lo(D_800DFBD0)
/* 1FA5F8 801E2678 00837821 */  addu        $t7, $a0, $v1
/* 1FA5FC 801E267C 8DF80000 */  lw          $t8, 0x0($t7)
/* 1FA600 801E2680 3C01801E */  lui         $at, %hi(D_801E5DC0_ovl13)
/* 1FA604 801E2684 C4225DC0 */  lwc1        $f2, %lo(D_801E5DC0_ovl13)($at)
/* 1FA608 801E2688 8F190004 */  lw          $t9, 0x4($t8)
/* 1FA60C 801E268C 3C05800F */  lui         $a1, %hi(D_800EAC20)
/* 1FA610 801E2690 C7200034 */  lwc1        $f0, 0x34($t9)
/* 1FA614 801E2694 46001032 */  c.eq.s      $f2, $f0
/* 1FA618 801E2698 00000000 */  nop
/* 1FA61C 801E269C 45030012 */  bc1tl       L801E26E8_ovl13
/* 1FA620 801E26A0 44803000 */   mtc1       $zero, $f6
/* 1FA624 801E26A4 4600103C */  c.lt.s      $f2, $f0
/* 1FA628 801E26A8 3C014334 */  lui         $at, (0x43340000 >> 16)
/* 1FA62C 801E26AC 45020006 */  bc1fl       L801E26C8_ovl13
/* 1FA630 801E26B0 44810000 */   mtc1       $at, $f0
/* 1FA634 801E26B4 3C01C334 */  lui         $at, (0xC3340000 >> 16)
/* 1FA638 801E26B8 44810000 */  mtc1        $at, $f0
/* 1FA63C 801E26BC 10000004 */  b           L801E26D0_ovl13
/* 1FA640 801E26C0 46001103 */   div.s      $f4, $f2, $f0
/* 1FA644 801E26C4 44810000 */  mtc1        $at, $f0
glabel L801E26C8_ovl13
/* 1FA648 801E26C8 00000000 */  nop
/* 1FA64C 801E26CC 46001103 */  div.s       $f4, $f2, $f0
glabel L801E26D0_ovl13
/* 1FA650 801E26D0 3C05800F */  lui         $a1, %hi(D_800EAC20)
/* 1FA654 801E26D4 24A5AC20 */  addiu       $a1, $a1, %lo(D_800EAC20)
/* 1FA658 801E26D8 00A34821 */  addu        $t1, $a1, $v1
/* 1FA65C 801E26DC 10000005 */  b           L801E26F4_ovl13
/* 1FA660 801E26E0 E5240000 */   swc1       $f4, 0x0($t1)
/* 1FA664 801E26E4 44803000 */  mtc1        $zero, $f6
glabel L801E26E8_ovl13
/* 1FA668 801E26E8 24A5AC20 */  addiu       $a1, $a1, %lo(D_800EAC20)
/* 1FA66C 801E26EC 00A35021 */  addu        $t2, $a1, $v1
/* 1FA670 801E26F0 E5460000 */  swc1        $f6, 0x0($t2)
glabel L801E26F4_ovl13
/* 1FA674 801E26F4 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FA678 801E26F8 3C01801E */  lui         $at, %hi(D_801E5DC4_ovl13)
/* 1FA67C 801E26FC C4225DC4 */  lwc1        $f2, %lo(D_801E5DC4_ovl13)($at)
/* 1FA680 801E2700 00031880 */  sll         $v1, $v1, 2
/* 1FA684 801E2704 00835821 */  addu        $t3, $a0, $v1
/* 1FA688 801E2708 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FA68C 801E270C 00A36821 */  addu        $t5, $a1, $v1
/* 1FA690 801E2710 C5AA0000 */  lwc1        $f10, 0x0($t5)
/* 1FA694 801E2714 8D820004 */  lw          $v0, 0x4($t4)
/* 1FA698 801E2718 3C01801E */  lui         $at, %hi(D_801E5DC8_ovl13)
/* 1FA69C 801E271C C4480034 */  lwc1        $f8, 0x34($v0)
/* 1FA6A0 801E2720 460A4400 */  add.s       $f16, $f8, $f10
/* 1FA6A4 801E2724 E4500034 */  swc1        $f16, 0x34($v0)
/* 1FA6A8 801E2728 8D0E0000 */  lw          $t6, 0x0($t0)
/* 1FA6AC 801E272C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1FA6B0 801E2730 000FC080 */  sll         $t8, $t7, 2
/* 1FA6B4 801E2734 0098C821 */  addu        $t9, $a0, $t8
/* 1FA6B8 801E2738 8F270000 */  lw          $a3, 0x0($t9)
/* 1FA6BC 801E273C 8CE20004 */  lw          $v0, 0x4($a3)
/* 1FA6C0 801E2740 C4400034 */  lwc1        $f0, 0x34($v0)
/* 1FA6C4 801E2744 4600103C */  c.lt.s      $f2, $f0
/* 1FA6C8 801E2748 00000000 */  nop
/* 1FA6CC 801E274C 4500000A */  bc1f        L801E2778_ovl13
/* 1FA6D0 801E2750 00000000 */   nop
/* 1FA6D4 801E2754 E4420034 */  swc1        $f2, 0x34($v0)
/* 1FA6D8 801E2758 8D090000 */  lw          $t1, 0x0($t0)
/* 1FA6DC 801E275C 3C07800E */  lui         $a3, %hi(D_800DFBD0)
/* 1FA6E0 801E2760 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1FA6E4 801E2764 000A5880 */  sll         $t3, $t2, 2
/* 1FA6E8 801E2768 00EB3821 */  addu        $a3, $a3, $t3
/* 1FA6EC 801E276C 8CE7FBD0 */  lw          $a3, %lo(D_800DFBD0)($a3)
/* 1FA6F0 801E2770 8CE20004 */  lw          $v0, 0x4($a3)
/* 1FA6F4 801E2774 C4400034 */  lwc1        $f0, 0x34($v0)
glabel L801E2778_ovl13
/* 1FA6F8 801E2778 C4225DC8 */  lwc1        $f2, %lo(D_801E5DC8_ovl13)($at)
/* 1FA6FC 801E277C 4602003C */  c.lt.s      $f0, $f2
/* 1FA700 801E2780 00000000 */  nop
/* 1FA704 801E2784 4502001A */  bc1fl       L801E27F0_ovl13
/* 1FA708 801E2788 C4420024 */   lwc1       $f2, 0x24($v0)
/* 1FA70C 801E278C E4420034 */  swc1        $f2, 0x34($v0)
/* 1FA710 801E2790 8D0C0000 */  lw          $t4, 0x0($t0)
/* 1FA714 801E2794 3C07800E */  lui         $a3, %hi(D_800DFBD0)
/* 1FA718 801E2798 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FA71C 801E279C 000D7080 */  sll         $t6, $t5, 2
/* 1FA720 801E27A0 00EE3821 */  addu        $a3, $a3, $t6
/* 1FA724 801E27A4 8CE7FBD0 */  lw          $a3, %lo(D_800DFBD0)($a3)
/* 1FA728 801E27A8 10000010 */  b           L801E27EC_ovl13
/* 1FA72C 801E27AC 8CE20004 */   lw         $v0, 0x4($a3)
/* 1FA730 801E27B0 8DF80000 */  lw          $t8, 0x0($t7)
glabel L801E27B4_ovl13
/* 1FA734 801E27B4 3C05800F */  lui         $a1, %hi(D_800EAC20)
/* 1FA738 801E27B8 24A5AC20 */  addiu       $a1, $a1, %lo(D_800EAC20)
/* 1FA73C 801E27BC 8F020004 */  lw          $v0, 0x4($t8)
/* 1FA740 801E27C0 00A3C821 */  addu        $t9, $a1, $v1
/* 1FA744 801E27C4 C7240000 */  lwc1        $f4, 0x0($t9)
/* 1FA748 801E27C8 C4520034 */  lwc1        $f18, 0x34($v0)
/* 1FA74C 801E27CC 46049180 */  add.s       $f6, $f18, $f4
/* 1FA750 801E27D0 E4460034 */  swc1        $f6, 0x34($v0)
/* 1FA754 801E27D4 8D090000 */  lw          $t1, 0x0($t0)
/* 1FA758 801E27D8 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1FA75C 801E27DC 000A5880 */  sll         $t3, $t2, 2
/* 1FA760 801E27E0 008B6021 */  addu        $t4, $a0, $t3
/* 1FA764 801E27E4 8D870000 */  lw          $a3, 0x0($t4)
/* 1FA768 801E27E8 8CE20004 */  lw          $v0, 0x4($a3)
glabel L801E27EC_ovl13
/* 1FA76C 801E27EC C4420024 */  lwc1        $f2, 0x24($v0)
glabel L801E27F0_ovl13
/* 1FA770 801E27F0 44804000 */  mtc1        $zero, $f8
/* 1FA774 801E27F4 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 1FA778 801E27F8 44815000 */  mtc1        $at, $f10
/* 1FA77C 801E27FC 4608103C */  c.lt.s      $f2, $f8
/* 1FA780 801E2800 00000000 */  nop
/* 1FA784 801E2804 45020004 */  bc1fl       L801E2818_ovl13
/* 1FA788 801E2808 46001006 */   mov.s      $f0, $f2
/* 1FA78C 801E280C 10000002 */  b           L801E2818_ovl13
/* 1FA790 801E2810 46001007 */   neg.s      $f0, $f2
/* 1FA794 801E2814 46001006 */  mov.s       $f0, $f2
glabel L801E2818_ovl13
/* 1FA798 801E2818 460A003C */  c.lt.s      $f0, $f10
/* 1FA79C 801E281C 00000000 */  nop
/* 1FA7A0 801E2820 4500001B */  bc1f        L801E2890_ovl13
/* 1FA7A4 801E2824 00000000 */   nop
/* 1FA7A8 801E2828 8CE4005C */  lw          $a0, 0x5C($a3)
/* 1FA7AC 801E282C 8CE50010 */  lw          $a1, 0x10($a3)
/* 1FA7B0 801E2830 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1FA7B4 801E2834 8CE60018 */   lw         $a2, 0x18($a3)
/* 1FA7B8 801E2838 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1FA7BC 801E283C 2508A7C4 */  addiu       $t0, $t0, %lo(D_8004A7C4)
/* 1FA7C0 801E2840 8D060000 */  lw          $a2, 0x0($t0)
/* 1FA7C4 801E2844 3C0D800F */  lui         $t5, %hi(D_800E83E0)
/* 1FA7C8 801E2848 24010001 */  addiu       $at, $zero, 0x1
/* 1FA7CC 801E284C 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FA7D0 801E2850 240E000E */  addiu       $t6, $zero, 0xE
/* 1FA7D4 801E2854 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1FA7D8 801E2858 00031880 */  sll         $v1, $v1, 2
/* 1FA7DC 801E285C 01A36821 */  addu        $t5, $t5, $v1
/* 1FA7E0 801E2860 8DAD83E0 */  lw          $t5, %lo(D_800E83E0)($t5)
/* 1FA7E4 801E2864 15A1000A */  bne         $t5, $at, L801E2890_ovl13
/* 1FA7E8 801E2868 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1FA7EC 801E286C 00230821 */  addu        $at, $at, $v1
/* 1FA7F0 801E2870 AC2EDC50 */  sw          $t6, %lo(gEntityVtableIndexArray)($at)
/* 1FA7F4 801E2874 8CCF0000 */  lw          $t7, 0x0($a2)
/* 1FA7F8 801E2878 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1FA7FC 801E287C 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1FA800 801E2880 000FC080 */  sll         $t8, $t7, 2
/* 1FA804 801E2884 00982021 */  addu        $a0, $a0, $t8
/* 1FA808 801E2888 0C02C7B2 */  jal         assign_new_process_entry
/* 1FA80C 801E288C 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801E2890_ovl13
/* 1FA810 801E2890 0C078E56 */  jal         func_801E3958_ovl13
/* 1FA814 801E2894 8FA40018 */   lw         $a0, 0x18($sp)
/* 1FA818 801E2898 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FA81C 801E289C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FA820 801E28A0 03E00008 */  jr          $ra
/* 1FA824 801E28A4 00000000 */   nop
.type func_801E2630_ovl13, @function

.size func_801E2630_ovl13, . - func_801E2630_ovl13
.section .late_rodata
glabel D_801E5DC0_ovl13
/* 1FDD40 801E5DC0 */ .word 0x40490FDB

glabel D_801E5DC4_ovl13
/* 1FDD44 801E5DC4 */ .word 0x407B53D2

glabel D_801E5DC8_ovl13
/* 1FDD48 801E5DC8 */ .word 0x4016CBE4

