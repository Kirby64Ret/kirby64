glabel func_801EC6D8_ovl10
/* 1DD448 801EC6D8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1DD44C 801EC6DC AFB50038 */  sw    $s5, 0x38($sp)
/* 1DD450 801EC6E0 3C158005 */  lui   $s5, %hi(D_8004A7C4) # $s5, 0x8005
/* 1DD454 801EC6E4 26B5A7C4 */  addiu $s5, %lo(D_8004A7C4) # addiu $s5, $s5, -0x583c
/* 1DD458 801EC6E8 8EA30000 */  lw    $v1, ($s5)
/* 1DD45C 801EC6EC AFBF003C */  sw    $ra, 0x3c($sp)
/* 1DD460 801EC6F0 AFB40034 */  sw    $s4, 0x34($sp)
/* 1DD464 801EC6F4 AFB30030 */  sw    $s3, 0x30($sp)
/* 1DD468 801EC6F8 AFB2002C */  sw    $s2, 0x2c($sp)
/* 1DD46C 801EC6FC AFB10028 */  sw    $s1, 0x28($sp)
/* 1DD470 801EC700 AFB00024 */  sw    $s0, 0x24($sp)
/* 1DD474 801EC704 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 1DD478 801EC708 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1DD47C 801EC70C AFA40040 */  sw    $a0, 0x40($sp)
/* 1DD480 801EC710 8C700000 */  lw    $s0, ($v1)
/* 1DD484 801EC714 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DD488 801EC718 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DD48C 801EC71C 00108080 */  sll   $s0, $s0, 2
/* 1DD490 801EC720 00300821 */  addu  $at, $at, $s0
/* 1DD494 801EC724 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DD498 801EC728 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DD49C 801EC72C 8C6F0000 */  lw    $t7, ($v1)
/* 1DD4A0 801EC730 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 1DD4A4 801EC734 00501021 */  addu  $v0, $v0, $s0
/* 1DD4A8 801EC738 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DD4AC 801EC73C 000FC080 */  sll   $t8, $t7, 2
/* 1DD4B0 801EC740 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 1DD4B4 801EC744 00380821 */  addu  $at, $at, $t8
/* 1DD4B8 801EC748 3C19801F */  lui   $t9, %hi(D_801F4148_ovl10) # $t9, 0x801f
/* 1DD4BC 801EC74C AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 1DD4C0 801EC750 27394148 */  addiu $t9, %lo(D_801F4148_ovl10) # addiu $t9, $t9, 0x4148
/* 1DD4C4 801EC754 3C040001 */  lui   $a0, (0x000102B4 >> 16) # lui $a0, 1
/* 1DD4C8 801EC758 348402B4 */  ori   $a0, (0x000102B4 & 0xFFFF) # ori $a0, $a0, 0x2b4
/* 1DD4CC 801EC75C 0C02A806 */  jal   func_800AA018
/* 1DD4D0 801EC760 AC590098 */   sw    $t9, 0x98($v0)
/* 1DD4D4 801EC764 3C040001 */  lui   $a0, (0x000102B5 >> 16) # lui $a0, 1
/* 1DD4D8 801EC768 0C02A806 */  jal   func_800AA018
/* 1DD4DC 801EC76C 348402B5 */   ori   $a0, (0x000102B5 & 0xFFFF) # ori $a0, $a0, 0x2b5
/* 1DD4E0 801EC770 0C02CD48 */  jal   func_800B3520
/* 1DD4E4 801EC774 00000000 */   nop   
/* 1DD4E8 801EC778 8EA30000 */  lw    $v1, ($s5)
/* 1DD4EC 801EC77C 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 1DD4F0 801EC780 2408004E */  li    $t0, 78
/* 1DD4F4 801EC784 8C690000 */  lw    $t1, ($v1)
/* 1DD4F8 801EC788 3C14800E */  lui   $s4, %hi(D_800E6A10) # $s4, 0x800e
/* 1DD4FC 801EC78C 26946A10 */  addiu $s4, %lo(D_800E6A10) # addiu $s4, $s4, 0x6a10
/* 1DD500 801EC790 00095080 */  sll   $t2, $t1, 2
/* 1DD504 801EC794 002A0821 */  addu  $at, $at, $t2
/* 1DD508 801EC798 AC287CE0 */ sw $t0, %lo(D_800E7CE0)($at)
/* 1DD50C 801EC79C 8C700000 */  lw    $s0, ($v1)
/* 1DD510 801EC7A0 3C01801F */  lui   $at, %hi(D_801F4B90_ovl10) # $at, 0x801f
/* 1DD514 801EC7A4 C4264B90 */  lwc1  $f6, %lo(D_801F4B90_ovl10)($at)
/* 1DD518 801EC7A8 00108080 */  sll   $s0, $s0, 2
/* 1DD51C 801EC7AC 02905821 */  addu  $t3, $s4, $s0
/* 1DD520 801EC7B0 C5640000 */  lwc1  $f4, ($t3)
/* 1DD524 801EC7B4 3C13800E */  lui   $s3, %hi(D_800E4C50) # $s3, 0x800e
/* 1DD528 801EC7B8 26734C50 */  addiu $s3, %lo(D_800E4C50) # addiu $s3, $s3, 0x4c50
/* 1DD52C 801EC7BC 46062202 */  mul.s $f8, $f4, $f6
/* 1DD530 801EC7C0 02706021 */  addu  $t4, $s3, $s0
/* 1DD534 801EC7C4 2404001E */  li    $a0, 30
/* 1DD538 801EC7C8 0C002DAF */  jal   finish_current_thread
/* 1DD53C 801EC7CC E5880000 */   swc1  $f8, ($t4)
/* 1DD540 801EC7D0 8EAD0000 */  lw    $t5, ($s5)
/* 1DD544 801EC7D4 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1DD548 801EC7D8 8DAE0000 */  lw    $t6, ($t5)
/* 1DD54C 801EC7DC 000E7880 */  sll   $t7, $t6, 2
/* 1DD550 801EC7E0 002F0821 */  addu  $at, $at, $t7
/* 1DD554 801EC7E4 C42A7B20 */ lwc1 $f10, %lo(D_800E7B20)($at)
/* 1DD558 801EC7E8 4600540D */  trunc.w.s $f16, $f10
/* 1DD55C 801EC7EC 44048000 */  mfc1  $a0, $f16
/* 1DD560 801EC7F0 0C02F07F */  jal   func_800BC1FC
/* 1DD564 801EC7F4 00000000 */   nop   
/* 1DD568 801EC7F8 0C002DAF */  jal   finish_current_thread
/* 1DD56C 801EC7FC 24040030 */   li    $a0, 48
/* 1DD570 801EC800 8EA30000 */  lw    $v1, ($s5)
/* 1DD574 801EC804 3C12800F */  lui   $s2, %hi(D_800E9560) # $s2, 0x800f
/* 1DD578 801EC808 26529560 */  addiu $s2, %lo(D_800E9560) # addiu $s2, $s2, -0x6aa0
/* 1DD57C 801EC80C 8C690000 */  lw    $t1, ($v1)
/* 1DD580 801EC810 24190001 */  li    $t9, 1
/* 1DD584 801EC814 00094080 */  sll   $t0, $t1, 2
/* 1DD588 801EC818 02485021 */  addu  $t2, $s2, $t0
/* 1DD58C 801EC81C AD590000 */  sw    $t9, ($t2)
/* 1DD590 801EC820 8C700000 */  lw    $s0, ($v1)
/* 1DD594 801EC824 00108080 */  sll   $s0, $s0, 2
/* 1DD598 801EC828 02505821 */  addu  $t3, $s2, $s0
/* 1DD59C 801EC82C 8D710000 */  lw    $s1, ($t3)
/* 1DD5A0 801EC830 2A210005 */  slti  $at, $s1, 5
/* 1DD5A4 801EC834 1020001E */  beqz  $at, .L801EC8B0_ovl10
/* 1DD5A8 801EC838 3C01801F */   lui   $at, %hi(D_801F4B94_ovl10) # $at, 0x801f
/* 1DD5AC 801EC83C C4364B94 */  lwc1  $f22, %lo(D_801F4B94_ovl10)($at)
/* 1DD5B0 801EC840 3C01801F */  lui   $at, %hi(D_801F4B98_ovl10) # $at, 0x801f
/* 1DD5B4 801EC844 C4344B98 */  lwc1  $f20, %lo(D_801F4B98_ovl10)($at)
/* 1DD5B8 801EC848 44912000 */  mtc1  $s1, $f4
.L801EC84C_ovl10:
/* 1DD5BC 801EC84C 02906021 */  addu  $t4, $s4, $s0
/* 1DD5C0 801EC850 C5920000 */  lwc1  $f18, ($t4)
/* 1DD5C4 801EC854 468021A0 */  cvt.s.w $f6, $f4
/* 1DD5C8 801EC858 02706821 */  addu  $t5, $s3, $s0
/* 1DD5CC 801EC85C 24040001 */  li    $a0, 1
/* 1DD5D0 801EC860 4606B202 */  mul.s $f8, $f22, $f6
/* 1DD5D4 801EC864 4608A281 */  sub.s $f10, $f20, $f8
/* 1DD5D8 801EC868 46005407 */  neg.s $f16, $f10
/* 1DD5DC 801EC86C 46109102 */  mul.s $f4, $f18, $f16
/* 1DD5E0 801EC870 0C002DAF */  jal   finish_current_thread
/* 1DD5E4 801EC874 E5A40000 */   swc1  $f4, ($t5)
/* 1DD5E8 801EC878 8EA30000 */  lw    $v1, ($s5)
/* 1DD5EC 801EC87C 8C6E0000 */  lw    $t6, ($v1)
/* 1DD5F0 801EC880 000E7880 */  sll   $t7, $t6, 2
/* 1DD5F4 801EC884 024F1021 */  addu  $v0, $s2, $t7
/* 1DD5F8 801EC888 8C580000 */  lw    $t8, ($v0)
/* 1DD5FC 801EC88C 27090001 */  addiu $t1, $t8, 1
/* 1DD600 801EC890 AC490000 */  sw    $t1, ($v0)
/* 1DD604 801EC894 8C700000 */  lw    $s0, ($v1)
/* 1DD608 801EC898 00108080 */  sll   $s0, $s0, 2
/* 1DD60C 801EC89C 02504021 */  addu  $t0, $s2, $s0
/* 1DD610 801EC8A0 8D110000 */  lw    $s1, ($t0)
/* 1DD614 801EC8A4 2A210005 */  slti  $at, $s1, 5
/* 1DD618 801EC8A8 5420FFE8 */  bnezl $at, .L801EC84C_ovl10
/* 1DD61C 801EC8AC 44912000 */   mtc1  $s1, $f4
.L801EC8B0_ovl10:
/* 1DD620 801EC8B0 0290C821 */  addu  $t9, $s4, $s0
/* 1DD624 801EC8B4 3C01801F */  lui   $at, %hi(D_801F4B9C_ovl10) # $at, 0x801f
/* 1DD628 801EC8B8 C4284B9C */  lwc1  $f8, %lo(D_801F4B9C_ovl10)($at)
/* 1DD62C 801EC8BC C7260000 */  lwc1  $f6, ($t9)
/* 1DD630 801EC8C0 02705021 */  addu  $t2, $s3, $s0
/* 1DD634 801EC8C4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 1DD638 801EC8C8 46083282 */  mul.s $f10, $f6, $f8
/* 1DD63C 801EC8CC 240B0002 */  li    $t3, 2
/* 1DD640 801EC8D0 240E0008 */  li    $t6, 8
/* 1DD644 801EC8D4 E54A0000 */  swc1  $f10, ($t2)
/* 1DD648 801EC8D8 8C6C0000 */  lw    $t4, ($v1)
/* 1DD64C 801EC8DC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 1DD650 801EC8E0 8FB50038 */  lw    $s5, 0x38($sp)
/* 1DD654 801EC8E4 000C6880 */  sll   $t5, $t4, 2
/* 1DD658 801EC8E8 002D0821 */  addu  $at, $at, $t5
/* 1DD65C 801EC8EC AC2B98E0 */ sw $t3, %lo(D_800E98E0)($at)
/* 1DD660 801EC8F0 8C6F0000 */  lw    $t7, ($v1)
/* 1DD664 801EC8F4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DD668 801EC8F8 8FB40034 */  lw    $s4, 0x34($sp)
/* 1DD66C 801EC8FC 000FC080 */  sll   $t8, $t7, 2
/* 1DD670 801EC900 00380821 */  addu  $at, $at, $t8
/* 1DD674 801EC904 8FB30030 */  lw    $s3, 0x30($sp)
/* 1DD678 801EC908 8FB2002C */  lw    $s2, 0x2c($sp)
/* 1DD67C 801EC90C 8FB10028 */  lw    $s1, 0x28($sp)
/* 1DD680 801EC910 8FB00024 */  lw    $s0, 0x24($sp)
/* 1DD684 801EC914 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 1DD688 801EC918 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1DD68C 801EC91C AC2EDC50 */ sw $t6, %lo(gEntityVtableIndexArray)($at)
/* 1DD690 801EC920 03E00008 */  jr    $ra
/* 1DD694 801EC924 27BD0040 */   addiu $sp, $sp, 0x40
.type func_801EC6D8_ovl10, @function
.size func_801EC6D8_ovl10, . - func_801EC6D8_ovl10
