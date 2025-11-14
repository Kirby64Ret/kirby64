glabel func_801E679C_ovl10
/* 1D750C 801E679C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 1D7510 801E67A0 AFB30024 */  sw    $s3, 0x24($sp)
/* 1D7514 801E67A4 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1D7518 801E67A8 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1D751C 801E67AC 8E620000 */  lw    $v0, ($s3)
/* 1D7520 801E67B0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 1D7524 801E67B4 AFB40028 */  sw    $s4, 0x28($sp)
/* 1D7528 801E67B8 AFB20020 */  sw    $s2, 0x20($sp)
/* 1D752C 801E67BC AFB1001C */  sw    $s1, 0x1c($sp)
/* 1D7530 801E67C0 AFB00018 */  sw    $s0, 0x18($sp)
/* 1D7534 801E67C4 AFA40060 */  sw    $a0, 0x60($sp)
/* 1D7538 801E67C8 8C4E0000 */  lw    $t6, ($v0)
/* 1D753C 801E67CC 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D7540 801E67D0 3C14800F */  lui   $s4, %hi(D_800E9E20) # $s4, 0x800f
/* 1D7544 801E67D4 000E7880 */  sll   $t7, $t6, 2
/* 1D7548 801E67D8 002F0821 */  addu  $at, $at, $t7
/* 1D754C 801E67DC AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D7550 801E67E0 8C580000 */  lw    $t8, ($v0)
/* 1D7554 801E67E4 26949E20 */  addiu $s4, %lo(D_800E9E20) # addiu $s4, $s4, -0x61e0
/* 1D7558 801E67E8 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D755C 801E67EC 0018C880 */  sll   $t9, $t8, 2
/* 1D7560 801E67F0 02994021 */  addu  $t0, $s4, $t9
/* 1D7564 801E67F4 AD000000 */  sw    $zero, ($t0)
/* 1D7568 801E67F8 8C4A0000 */  lw    $t2, ($v0)
/* 1D756C 801E67FC 24090001 */  li    $t1, 1
/* 1D7570 801E6800 3C040001 */  lui   $a0, (0x0001034E >> 16) # lui $a0, 1
/* 1D7574 801E6804 000A5880 */  sll   $t3, $t2, 2
/* 1D7578 801E6808 002B0821 */  addu  $at, $at, $t3
/* 1D757C 801E680C AC29DFD0 */ sw $t1, %lo(D_800DDFD0)($at)
/* 1D7580 801E6810 8C4C0000 */  lw    $t4, ($v0)
/* 1D7584 801E6814 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1D7588 801E6818 44812000 */  mtc1  $at, $f4
/* 1D758C 801E681C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1D7590 801E6820 000C6880 */  sll   $t5, $t4, 2
/* 1D7594 801E6824 002D0821 */  addu  $at, $at, $t5
/* 1D7598 801E6828 3484034E */  ori   $a0, (0x0001034E & 0xFFFF) # ori $a0, $a0, 0x34e
/* 1D759C 801E682C 0C02A7A9 */  jal   func_800A9EA4
/* 1D75A0 801E6830 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1D75A4 801E6834 3C040001 */  lui   $a0, (0x0001034D >> 16) # lui $a0, 1
/* 1D75A8 801E6838 3484034D */  ori   $a0, (0x0001034D & 0xFFFF) # ori $a0, $a0, 0x34d
/* 1D75AC 801E683C 0C02AA19 */  jal   func_800AA864
/* 1D75B0 801E6840 24050002 */   li    $a1, 2
/* 1D75B4 801E6844 3C040001 */  lui   $a0, (0x00010342 >> 16) # lui $a0, 1
/* 1D75B8 801E6848 0C02A7A9 */  jal   func_800A9EA4
/* 1D75BC 801E684C 34840342 */   ori   $a0, (0x00010342 & 0xFFFF) # ori $a0, $a0, 0x342
/* 1D75C0 801E6850 3C040001 */  lui   $a0, (0x00010341 >> 16) # lui $a0, 1
/* 1D75C4 801E6854 0C02A7A9 */  jal   func_800A9EA4
/* 1D75C8 801E6858 34840341 */   ori   $a0, (0x00010341 & 0xFFFF) # ori $a0, $a0, 0x341
/* 1D75CC 801E685C 0C0798F9 */  jal   func_801E63E4_ovl10
/* 1D75D0 801E6860 27A40058 */   addiu $a0, $sp, 0x58
/* 1D75D4 801E6864 8E620000 */  lw    $v0, ($s3)
/* 1D75D8 801E6868 C7A60058 */  lwc1  $f6, 0x58($sp)
/* 1D75DC 801E686C 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 1D75E0 801E6870 8C4E0000 */  lw    $t6, ($v0)
/* 1D75E4 801E6874 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 1D75E8 801E6878 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 1D75EC 801E687C 000E7880 */  sll   $t7, $t6, 2
/* 1D75F0 801E6880 006FC021 */  addu  $t8, $v1, $t7
/* 1D75F4 801E6884 E7060000 */  swc1  $f6, ($t8)
/* 1D75F8 801E6888 8C480000 */  lw    $t0, ($v0)
/* 1D75FC 801E688C 93A5005C */  lbu   $a1, 0x5c($sp)
/* 1D7600 801E6890 44815000 */  mtc1  $at, $f10
/* 1D7604 801E6894 00085080 */  sll   $t2, $t0, 2
/* 1D7608 801E6898 006A4821 */  addu  $t1, $v1, $t2
/* 1D760C 801E689C C5280000 */  lwc1  $f8, ($t1)
/* 1D7610 801E68A0 44808000 */  mtc1  $zero, $f16
/* 1D7614 801E68A4 3C06BECC */  lui   $a2, (0xBECCCCCD >> 16) # lui $a2, 0xbecc
/* 1D7618 801E68A8 34C6CCCD */  ori   $a2, (0xBECCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 1D761C 801E68AC 27A40048 */  addiu $a0, $sp, 0x48
/* 1D7620 801E68B0 00A08025 */  move  $s0, $a1
/* 1D7624 801E68B4 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 1D7628 801E68B8 E7A80048 */  swc1  $f8, 0x48($sp)
/* 1D762C 801E68BC 0C0796C2 */  jal   func_801E5B08_ovl10
/* 1D7630 801E68C0 E7B00050 */   swc1  $f16, 0x50($sp)
/* 1D7634 801E68C4 8E6B0000 */  lw    $t3, ($s3)
/* 1D7638 801E68C8 8D6C0000 */  lw    $t4, ($t3)
/* 1D763C 801E68CC 000C6880 */  sll   $t5, $t4, 2
/* 1D7640 801E68D0 028D7021 */  addu  $t6, $s4, $t5
/* 1D7644 801E68D4 8DCF0000 */  lw    $t7, ($t6)
/* 1D7648 801E68D8 55E0000D */  bnezl $t7, .L801E6910_ovl10
/* 1D764C 801E68DC 3C040001 */   lui   $a0, 1
/* 1D7650 801E68E0 2610FFFF */  addiu $s0, $s0, -1
.L801E68E4_ovl10:
/* 1D7654 801E68E4 321000FF */  andi  $s0, $s0, 0xff
/* 1D7658 801E68E8 0C002DAF */  jal   finish_current_thread
/* 1D765C 801E68EC 24040001 */   li    $a0, 1
/* 1D7660 801E68F0 8E780000 */  lw    $t8, ($s3)
/* 1D7664 801E68F4 8F080000 */  lw    $t0, ($t8)
/* 1D7668 801E68F8 00085080 */  sll   $t2, $t0, 2
/* 1D766C 801E68FC 028A4821 */  addu  $t1, $s4, $t2
/* 1D7670 801E6900 8D390000 */  lw    $t9, ($t1)
/* 1D7674 801E6904 5320FFF7 */  beql  $t9, $zero, .L801E68E4_ovl10
/* 1D7678 801E6908 2610FFFF */   addiu $s0, $s0, -1
/* 1D767C 801E690C 3C040001 */  lui   $a0, (0x00010344 >> 16) # lui $a0, 1
.L801E6910_ovl10:
/* 1D7680 801E6910 0C02A7A9 */  jal   func_800A9EA4
/* 1D7684 801E6914 34840344 */   ori   $a0, (0x00010344 & 0xFFFF) # ori $a0, $a0, 0x344
/* 1D7688 801E6918 3C040001 */  lui   $a0, (0x00010343 >> 16) # lui $a0, 1
/* 1D768C 801E691C 0C02A7A9 */  jal   func_800A9EA4
/* 1D7690 801E6920 34840343 */   ori   $a0, (0x00010343 & 0xFFFF) # ori $a0, $a0, 0x343
/* 1D7694 801E6924 8E6B0000 */  lw    $t3, ($s3)
/* 1D7698 801E6928 3C11800E */  lui   $s1, %hi(D_800DD8D0) # $s1, 0x800e
/* 1D769C 801E692C 2631D8D0 */  addiu $s1, %lo(D_800DD8D0) # addiu $s1, $s1, -0x2730
/* 1D76A0 801E6930 8D6C0000 */  lw    $t4, ($t3)
/* 1D76A4 801E6934 3C12C000 */  lui   $s2, 0xc000
/* 1D76A8 801E6938 000C6880 */  sll   $t5, $t4, 2
/* 1D76AC 801E693C 022D7021 */  addu  $t6, $s1, $t5
/* 1D76B0 801E6940 8DCF0000 */  lw    $t7, ($t6)
/* 1D76B4 801E6944 000FC782 */  srl   $t8, $t7, 0x1e
/* 1D76B8 801E6948 5700000E */  bnezl $t8, .L801E6984_ovl10
/* 1D76BC 801E694C 3C040001 */   lui   $a0, 1
/* 1D76C0 801E6950 2610FFFF */  addiu $s0, $s0, -1
.L801E6954_ovl10:
/* 1D76C4 801E6954 321000FF */  andi  $s0, $s0, 0xff
/* 1D76C8 801E6958 0C002DAF */  jal   finish_current_thread
/* 1D76CC 801E695C 24040001 */   li    $a0, 1
/* 1D76D0 801E6960 8E680000 */  lw    $t0, ($s3)
/* 1D76D4 801E6964 8D0A0000 */  lw    $t2, ($t0)
/* 1D76D8 801E6968 000A4880 */  sll   $t1, $t2, 2
/* 1D76DC 801E696C 0229C821 */  addu  $t9, $s1, $t1
/* 1D76E0 801E6970 8F2B0000 */  lw    $t3, ($t9)
/* 1D76E4 801E6974 01726024 */  and   $t4, $t3, $s2
/* 1D76E8 801E6978 5180FFF6 */  beql  $t4, $zero, .L801E6954_ovl10
/* 1D76EC 801E697C 2610FFFF */   addiu $s0, $s0, -1
/* 1D76F0 801E6980 3C040001 */  lui   $a0, (0x00010346 >> 16) # lui $a0, 1
.L801E6984_ovl10:
/* 1D76F4 801E6984 0C02A7A9 */  jal   func_800A9EA4
/* 1D76F8 801E6988 34840346 */   ori   $a0, (0x00010346 & 0xFFFF) # ori $a0, $a0, 0x346
/* 1D76FC 801E698C 3C040001 */  lui   $a0, (0x00010345 >> 16) # lui $a0, 1
/* 1D7700 801E6990 0C02A7A9 */  jal   func_800A9EA4
/* 1D7704 801E6994 34840345 */   ori   $a0, (0x00010345 & 0xFFFF) # ori $a0, $a0, 0x345
/* 1D7708 801E6998 0C002DAF */  jal   finish_current_thread
/* 1D770C 801E699C 02002025 */   move  $a0, $s0
/* 1D7710 801E69A0 8E620000 */  lw    $v0, ($s3)
/* 1D7714 801E69A4 44809000 */  mtc1  $zero, $f18
/* 1D7718 801E69A8 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 1D771C 801E69AC 8C4D0000 */  lw    $t5, ($v0)
/* 1D7720 801E69B0 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 1D7724 801E69B4 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D7728 801E69B8 000D7080 */  sll   $t6, $t5, 2
/* 1D772C 801E69BC 008E7821 */  addu  $t7, $a0, $t6
/* 1D7730 801E69C0 E5F20000 */  swc1  $f18, ($t7)
/* 1D7734 801E69C4 8C430000 */  lw    $v1, ($v0)
/* 1D7738 801E69C8 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 1D773C 801E69CC 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 1D7740 801E69D0 00031880 */  sll   $v1, $v1, 2
/* 1D7744 801E69D4 0083C021 */  addu  $t8, $a0, $v1
/* 1D7748 801E69D8 C7000000 */  lwc1  $f0, ($t8)
/* 1D774C 801E69DC 00230821 */  addu  $at, $at, $v1
/* 1D7750 801E69E0 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1D7754 801E69E4 8C480000 */  lw    $t0, ($v0)
/* 1D7758 801E69E8 3C01800E */ lui $at, %hi(D_800E3590)
/* 1D775C 801E69EC 00085080 */  sll   $t2, $t0, 2
/* 1D7760 801E69F0 002A0821 */  addu  $at, $at, $t2
/* 1D7764 801E69F4 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1D7768 801E69F8 8C490000 */  lw    $t1, ($v0)
/* 1D776C 801E69FC 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1D7770 801E6A00 0009C880 */  sll   $t9, $t1, 2
/* 1D7774 801E6A04 00390821 */  addu  $at, $at, $t9
/* 1D7778 801E6A08 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1D777C 801E6A0C 8C4B0000 */  lw    $t3, ($v0)
/* 1D7780 801E6A10 3C01800E */ lui $at, %hi(D_800E3210)
/* 1D7784 801E6A14 000B6080 */  sll   $t4, $t3, 2
/* 1D7788 801E6A18 002C0821 */  addu  $at, $at, $t4
/* 1D778C 801E6A1C E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1D7790 801E6A20 8C4D0000 */  lw    $t5, ($v0)
/* 1D7794 801E6A24 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D7798 801E6A28 240B0002 */  li    $t3, 2
/* 1D779C 801E6A2C 000D7080 */  sll   $t6, $t5, 2
/* 1D77A0 801E6A30 002E0821 */  addu  $at, $at, $t6
/* 1D77A4 801E6A34 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1D77A8 801E6A38 8C4F0000 */  lw    $t7, ($v0)
/* 1D77AC 801E6A3C 3C01801F */  lui   $at, %hi(D_801F4B34_ovl10) # $at, 0x801f
/* 1D77B0 801E6A40 C4244B34 */  lwc1  $f4, %lo(D_801F4B34_ovl10)($at)
/* 1D77B4 801E6A44 000FC080 */  sll   $t8, $t7, 2
/* 1D77B8 801E6A48 00B84021 */  addu  $t0, $a1, $t8
/* 1D77BC 801E6A4C E5040000 */  swc1  $f4, ($t0)
/* 1D77C0 801E6A50 8C430000 */  lw    $v1, ($v0)
/* 1D77C4 801E6A54 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1D77C8 801E6A58 00031880 */  sll   $v1, $v1, 2
/* 1D77CC 801E6A5C 00A35021 */  addu  $t2, $a1, $v1
/* 1D77D0 801E6A60 C5420000 */  lwc1  $f2, ($t2)
/* 1D77D4 801E6A64 00230821 */  addu  $at, $at, $v1
/* 1D77D8 801E6A68 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1D77DC 801E6A6C 8C490000 */  lw    $t1, ($v0)
/* 1D77E0 801E6A70 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1D77E4 801E6A74 0009C880 */  sll   $t9, $t1, 2
/* 1D77E8 801E6A78 00390821 */  addu  $at, $at, $t9
/* 1D77EC 801E6A7C E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1D77F0 801E6A80 8C4C0000 */  lw    $t4, ($v0)
/* 1D77F4 801E6A84 000C6880 */  sll   $t5, $t4, 2
/* 1D77F8 801E6A88 028D7021 */  addu  $t6, $s4, $t5
/* 1D77FC 801E6A8C 0C02BE85 */  jal   func_800AFA14
/* 1D7800 801E6A90 ADCB0000 */   sw    $t3, ($t6)
/* 1D7804 801E6A94 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1D7808 801E6A98 8FB00018 */  lw    $s0, 0x18($sp)
/* 1D780C 801E6A9C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1D7810 801E6AA0 8FB20020 */  lw    $s2, 0x20($sp)
/* 1D7814 801E6AA4 8FB30024 */  lw    $s3, 0x24($sp)
/* 1D7818 801E6AA8 8FB40028 */  lw    $s4, 0x28($sp)
/* 1D781C 801E6AAC 03E00008 */  jr    $ra
/* 1D7820 801E6AB0 27BD0060 */   addiu $sp, $sp, 0x60
.type func_801E679C_ovl10, @function
.size func_801E679C_ovl10, . - func_801E679C_ovl10
