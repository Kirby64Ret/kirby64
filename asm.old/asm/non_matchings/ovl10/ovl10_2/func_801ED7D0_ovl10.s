glabel func_801ED7D0_ovl10
/* 1DE540 801ED7D0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1DE544 801ED7D4 AFB30030 */  sw    $s3, 0x30($sp)
/* 1DE548 801ED7D8 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1DE54C 801ED7DC 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1DE550 801ED7E0 8E630000 */  lw    $v1, ($s3)
/* 1DE554 801ED7E4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 1DE558 801ED7E8 AFB50038 */  sw    $s5, 0x38($sp)
/* 1DE55C 801ED7EC AFB40034 */  sw    $s4, 0x34($sp)
/* 1DE560 801ED7F0 AFB2002C */  sw    $s2, 0x2c($sp)
/* 1DE564 801ED7F4 AFB10028 */  sw    $s1, 0x28($sp)
/* 1DE568 801ED7F8 AFB00024 */  sw    $s0, 0x24($sp)
/* 1DE56C 801ED7FC F7B60018 */  sdc1  $f22, 0x18($sp)
/* 1DE570 801ED800 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1DE574 801ED804 AFA40040 */  sw    $a0, 0x40($sp)
/* 1DE578 801ED808 8C710000 */  lw    $s1, ($v1)
/* 1DE57C 801ED80C 3C15800E */  lui   $s5, %hi(D_800E6A10) # $s5, 0x800e
/* 1DE580 801ED810 26B56A10 */  addiu $s5, %lo(D_800E6A10) # addiu $s5, $s5, 0x6a10
/* 1DE584 801ED814 00118880 */  sll   $s1, $s1, 2
/* 1DE588 801ED818 02B17021 */  addu  $t6, $s5, $s1
/* 1DE58C 801ED81C 3C01801F */  lui   $at, %hi(D_801F4BC0_ovl10) # $at, 0x801f
/* 1DE590 801ED820 C4264BC0 */  lwc1  $f6, %lo(D_801F4BC0_ovl10)($at)
/* 1DE594 801ED824 C5C40000 */  lwc1  $f4, ($t6)
/* 1DE598 801ED828 3C14800E */  lui   $s4, %hi(D_800E4C50) # $s4, 0x800e
/* 1DE59C 801ED82C 26944C50 */  addiu $s4, %lo(D_800E4C50) # addiu $s4, $s4, 0x4c50
/* 1DE5A0 801ED830 46062202 */  mul.s $f8, $f4, $f6
/* 1DE5A4 801ED834 02917821 */  addu  $t7, $s4, $s1
/* 1DE5A8 801ED838 3C12800F */  lui   $s2, %hi(D_800E9560) # $s2, 0x800f
/* 1DE5AC 801ED83C 26529560 */  addiu $s2, %lo(D_800E9560) # addiu $s2, $s2, -0x6aa0
/* 1DE5B0 801ED840 24180001 */  li    $t8, 1
/* 1DE5B4 801ED844 E5E80000 */  swc1  $f8, ($t7)
/* 1DE5B8 801ED848 8C790000 */  lw    $t9, ($v1)
/* 1DE5BC 801ED84C 00194080 */  sll   $t0, $t9, 2
/* 1DE5C0 801ED850 02484821 */  addu  $t1, $s2, $t0
/* 1DE5C4 801ED854 AD380000 */  sw    $t8, ($t1)
/* 1DE5C8 801ED858 8C710000 */  lw    $s1, ($v1)
/* 1DE5CC 801ED85C 00118880 */  sll   $s1, $s1, 2
/* 1DE5D0 801ED860 02515021 */  addu  $t2, $s2, $s1
/* 1DE5D4 801ED864 8D500000 */  lw    $s0, ($t2)
/* 1DE5D8 801ED868 2A010005 */  slti  $at, $s0, 5
/* 1DE5DC 801ED86C 1020001E */  beqz  $at, .L801ED8E8_ovl10
/* 1DE5E0 801ED870 3C01801F */   lui   $at, %hi(D_801F4BC4_ovl10) # $at, 0x801f
/* 1DE5E4 801ED874 C4364BC4 */  lwc1  $f22, %lo(D_801F4BC4_ovl10)($at)
/* 1DE5E8 801ED878 3C01801F */  lui   $at, %hi(D_801F4BC8_ovl10) # $at, 0x801f
/* 1DE5EC 801ED87C C4344BC8 */  lwc1  $f20, %lo(D_801F4BC8_ovl10)($at)
/* 1DE5F0 801ED880 44908000 */  mtc1  $s0, $f16
.L801ED884_ovl10:
/* 1DE5F4 801ED884 02B15821 */  addu  $t3, $s5, $s1
/* 1DE5F8 801ED888 C56A0000 */  lwc1  $f10, ($t3)
/* 1DE5FC 801ED88C 468084A0 */  cvt.s.w $f18, $f16
/* 1DE600 801ED890 02916021 */  addu  $t4, $s4, $s1
/* 1DE604 801ED894 24040001 */  li    $a0, 1
/* 1DE608 801ED898 4612B102 */  mul.s $f4, $f22, $f18
/* 1DE60C 801ED89C 4604A180 */  add.s $f6, $f20, $f4
/* 1DE610 801ED8A0 46003207 */  neg.s $f8, $f6
/* 1DE614 801ED8A4 46085402 */  mul.s $f16, $f10, $f8
/* 1DE618 801ED8A8 0C002DAF */  jal   finish_current_thread
/* 1DE61C 801ED8AC E5900000 */   swc1  $f16, ($t4)
/* 1DE620 801ED8B0 8E630000 */  lw    $v1, ($s3)
/* 1DE624 801ED8B4 8C6D0000 */  lw    $t5, ($v1)
/* 1DE628 801ED8B8 000D7080 */  sll   $t6, $t5, 2
/* 1DE62C 801ED8BC 024E1021 */  addu  $v0, $s2, $t6
/* 1DE630 801ED8C0 8C4F0000 */  lw    $t7, ($v0)
/* 1DE634 801ED8C4 25F90001 */  addiu $t9, $t7, 1
/* 1DE638 801ED8C8 AC590000 */  sw    $t9, ($v0)
/* 1DE63C 801ED8CC 8C710000 */  lw    $s1, ($v1)
/* 1DE640 801ED8D0 00118880 */  sll   $s1, $s1, 2
/* 1DE644 801ED8D4 02514021 */  addu  $t0, $s2, $s1
/* 1DE648 801ED8D8 8D100000 */  lw    $s0, ($t0)
/* 1DE64C 801ED8DC 2A010005 */  slti  $at, $s0, 5
/* 1DE650 801ED8E0 5420FFE8 */  bnezl $at, .L801ED884_ovl10
/* 1DE654 801ED8E4 44908000 */   mtc1  $s0, $f16
.L801ED8E8_ovl10:
/* 1DE658 801ED8E8 02B1C021 */  addu  $t8, $s5, $s1
/* 1DE65C 801ED8EC 3C01801F */  lui   $at, %hi(D_801F4BCC_ovl10) # $at, 0x801f
/* 1DE660 801ED8F0 C4244BCC */  lwc1  $f4, %lo(D_801F4BCC_ovl10)($at)
/* 1DE664 801ED8F4 C7120000 */  lwc1  $f18, ($t8)
/* 1DE668 801ED8F8 02914821 */  addu  $t1, $s4, $s1
/* 1DE66C 801ED8FC 46049182 */  mul.s $f6, $f18, $f4
/* 1DE670 801ED900 E5260000 */  swc1  $f6, ($t1)
/* 1DE674 801ED904 8FBF003C */  lw    $ra, 0x3c($sp)
/* 1DE678 801ED908 8FB50038 */  lw    $s5, 0x38($sp)
/* 1DE67C 801ED90C 8FB40034 */  lw    $s4, 0x34($sp)
/* 1DE680 801ED910 8FB30030 */  lw    $s3, 0x30($sp)
/* 1DE684 801ED914 8FB2002C */  lw    $s2, 0x2c($sp)
/* 1DE688 801ED918 8FB10028 */  lw    $s1, 0x28($sp)
/* 1DE68C 801ED91C 8FB00024 */  lw    $s0, 0x24($sp)
/* 1DE690 801ED920 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 1DE694 801ED924 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1DE698 801ED928 03E00008 */  jr    $ra
/* 1DE69C 801ED92C 27BD0040 */   addiu $sp, $sp, 0x40
.type func_801ED7D0_ovl10, @function
.size func_801ED7D0_ovl10, . - func_801ED7D0_ovl10
