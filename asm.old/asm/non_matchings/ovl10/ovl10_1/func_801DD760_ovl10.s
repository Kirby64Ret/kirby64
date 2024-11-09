glabel func_801DD760_ovl10
/* 1CE4D0 801DD760 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1CE4D4 801DD764 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1CE4D8 801DD768 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CE4DC 801DD76C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CE4E0 801DD770 AFA40018 */  sw    $a0, 0x18($sp)
/* 1CE4E4 801DD774 8DC20000 */  lw    $v0, ($t6)
/* 1CE4E8 801DD778 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1CE4EC 801DD77C 44812000 */  mtc1  $at, $f4
/* 1CE4F0 801DD780 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1CE4F4 801DD784 00021080 */  sll   $v0, $v0, 2
/* 1CE4F8 801DD788 00220821 */  addu  $at, $at, $v0
/* 1CE4FC 801DD78C C4266A10 */ lwc1 $f6, %lo(D_800E6A10)($at)
/* 1CE500 801DD790 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 1CE504 801DD794 25085F90 */  addiu $t0, %lo(D_800E5F90) # addiu $t0, $t0, 0x5f90
/* 1CE508 801DD798 46062032 */  c.eq.s $f4, $f6
/* 1CE50C 801DD79C 3C09800E */  lui   $t1, %hi(D_800E6BD0) # $t1, 0x800e
/* 1CE510 801DD7A0 25296BD0 */  addiu $t1, %lo(D_800E6BD0) # addiu $t1, $t1, 0x6bd0
/* 1CE514 801DD7A4 01027821 */  addu  $t7, $t0, $v0
/* 1CE518 801DD7A8 45000059 */  bc1f  .L801DD910_ovl10
/* 1CE51C 801DD7AC 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 1CE520 801DD7B0 0322C821 */  addu  $t9, $t9, $v0
/* 1CE524 801DD7B4 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1CE528 801DD7B8 3C03800F */ lui $v1, %hi(D_800E9AA0)
/* 1CE52C 801DD7BC 0122C021 */  addu  $t8, $t1, $v0
/* 1CE530 801DD7C0 00195880 */  sll   $t3, $t9, 2
/* 1CE534 801DD7C4 006B1821 */  addu  $v1, $v1, $t3
/* 1CE538 801DD7C8 8C639AA0 */ lw $v1, %lo(D_800E9AA0)($v1)
/* 1CE53C 801DD7CC 8F050000 */  lw    $a1, ($t8)
/* 1CE540 801DD7D0 8DE40000 */  lw    $a0, ($t7)
/* 1CE544 801DD7D4 00031880 */  sll   $v1, $v1, 2
/* 1CE548 801DD7D8 01036021 */  addu  $t4, $t0, $v1
/* 1CE54C 801DD7DC 01236821 */  addu  $t5, $t1, $v1
/* 1CE550 801DD7E0 8DA70000 */  lw    $a3, ($t5)
/* 1CE554 801DD7E4 0C03E547 */  jal   func_800F951C
/* 1CE558 801DD7E8 8D860000 */   lw    $a2, ($t4)
/* 1CE55C 801DD7EC 3C01801F */  lui   $at, %hi(D_801F49BC_ovl10) # $at, 0x801f
/* 1CE560 801DD7F0 C42849BC */  lwc1  $f8, %lo(D_801F49BC_ovl10)($at)
/* 1CE564 801DD7F4 3C05800F */  lui   $a1, %hi(D_800E9AA0) # $a1, 0x800f
/* 1CE568 801DD7F8 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 1CE56C 801DD7FC 46080032 */  c.eq.s $f0, $f8
/* 1CE570 801DD800 3C09800E */  lui   $t1, %hi(D_800E6BD0) # $t1, 0x800e
/* 1CE574 801DD804 3C0A800E */  lui   $t2, %hi(D_800E0D50) # $t2, 0x800e
/* 1CE578 801DD808 254A0D50 */  addiu $t2, %lo(D_800E0D50) # addiu $t2, $t2, 0xd50
/* 1CE57C 801DD80C 25296BD0 */  addiu $t1, %lo(D_800E6BD0) # addiu $t1, $t1, 0x6bd0
/* 1CE580 801DD810 25085F90 */  addiu $t0, %lo(D_800E5F90) # addiu $t0, $t0, 0x5f90
/* 1CE584 801DD814 45010006 */  bc1t  .L801DD830_ovl10
/* 1CE588 801DD818 24A59AA0 */   addiu $a1, %lo(D_800E9AA0) # addiu $a1, $a1, -0x6560
/* 1CE58C 801DD81C 44801000 */  mtc1  $zero, $f2
/* 1CE590 801DD820 00000000 */  nop   
/* 1CE594 801DD824 4602003C */  c.lt.s $f0, $f2
/* 1CE598 801DD828 00000000 */  nop   
/* 1CE59C 801DD82C 45000097 */  bc1f  .L801DDA8C_ovl10
.L801DD830_ovl10:
/* 1CE5A0 801DD830 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1CE5A4 801DD834 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1CE5A8 801DD838 3C01800E */ lui $at, %hi(D_800E6150)
/* 1CE5AC 801DD83C 8C620000 */  lw    $v0, ($v1)
/* 1CE5B0 801DD840 00021080 */  sll   $v0, $v0, 2
/* 1CE5B4 801DD844 01427021 */  addu  $t6, $t2, $v0
/* 1CE5B8 801DD848 8DCF0000 */  lw    $t7, ($t6)
/* 1CE5BC 801DD84C 00220821 */  addu  $at, $at, $v0
/* 1CE5C0 801DD850 000FC080 */  sll   $t8, $t7, 2
/* 1CE5C4 801DD854 00B8C821 */  addu  $t9, $a1, $t8
/* 1CE5C8 801DD858 8F2B0000 */  lw    $t3, ($t9)
/* 1CE5CC 801DD85C 000B6080 */  sll   $t4, $t3, 2
/* 1CE5D0 801DD860 010C6821 */  addu  $t5, $t0, $t4
/* 1CE5D4 801DD864 8DA40000 */  lw    $a0, ($t5)
/* 1CE5D8 801DD868 AC246150 */ sw $a0, %lo(D_800E6150)($at)
/* 1CE5DC 801DD86C 8C6E0000 */  lw    $t6, ($v1)
/* 1CE5E0 801DD870 3C01800E */ lui $at, %hi(D_800E6D90)
/* 1CE5E4 801DD874 000E7880 */  sll   $t7, $t6, 2
/* 1CE5E8 801DD878 010FC021 */  addu  $t8, $t0, $t7
/* 1CE5EC 801DD87C AF040000 */  sw    $a0, ($t8)
/* 1CE5F0 801DD880 8C620000 */  lw    $v0, ($v1)
/* 1CE5F4 801DD884 00021080 */  sll   $v0, $v0, 2
/* 1CE5F8 801DD888 0142C821 */  addu  $t9, $t2, $v0
/* 1CE5FC 801DD88C 8F2B0000 */  lw    $t3, ($t9)
/* 1CE600 801DD890 00220821 */  addu  $at, $at, $v0
/* 1CE604 801DD894 000B6080 */  sll   $t4, $t3, 2
/* 1CE608 801DD898 00AC6821 */  addu  $t5, $a1, $t4
/* 1CE60C 801DD89C 8DAE0000 */  lw    $t6, ($t5)
/* 1CE610 801DD8A0 000E7880 */  sll   $t7, $t6, 2
/* 1CE614 801DD8A4 012FC021 */  addu  $t8, $t1, $t7
/* 1CE618 801DD8A8 C7020000 */  lwc1  $f2, ($t8)
/* 1CE61C 801DD8AC E4226D90 */ swc1 $f2, %lo(D_800E6D90)($at)
/* 1CE620 801DD8B0 8C790000 */  lw    $t9, ($v1)
/* 1CE624 801DD8B4 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 1CE628 801DD8B8 00195880 */  sll   $t3, $t9, 2
/* 1CE62C 801DD8BC 012B6021 */  addu  $t4, $t1, $t3
/* 1CE630 801DD8C0 E5820000 */  swc1  $f2, ($t4)
/* 1CE634 801DD8C4 8C620000 */  lw    $v0, ($v1)
/* 1CE638 801DD8C8 00021080 */  sll   $v0, $v0, 2
/* 1CE63C 801DD8CC 00220821 */  addu  $at, $at, $v0
/* 1CE640 801DD8D0 C42A2B10 */ lwc1 $f10, %lo(gEntitiesPosXArray)($at)
/* 1CE644 801DD8D4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CE648 801DD8D8 00220821 */  addu  $at, $at, $v0
/* 1CE64C 801DD8DC E42A25D0 */ swc1 $f10, %lo(gEntitiesNextPosXArray)($at)
/* 1CE650 801DD8E0 8C620000 */  lw    $v0, ($v1)
/* 1CE654 801DD8E4 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 1CE658 801DD8E8 00021080 */  sll   $v0, $v0, 2
/* 1CE65C 801DD8EC 00220821 */  addu  $at, $at, $v0
/* 1CE660 801DD8F0 C4302E90 */ lwc1 $f16, %lo(gEntitiesPosZArray)($at)
/* 1CE664 801DD8F4 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1CE668 801DD8F8 00220821 */  addu  $at, $at, $v0
/* 1CE66C 801DD8FC E4302950 */ swc1 $f16, %lo(gEntitiesNextPosZArray)($at)
/* 1CE670 801DD900 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1CE674 801DD904 44810000 */  mtc1  $at, $f0
/* 1CE678 801DD908 10000062 */  b     .L801DDA94_ovl10
/* 1CE67C 801DD90C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DD910_ovl10:
/* 1CE680 801DD910 3C0A800E */  lui   $t2, %hi(D_800E0D50) # $t2, 0x800e
/* 1CE684 801DD914 254A0D50 */  addiu $t2, %lo(D_800E0D50) # addiu $t2, $t2, 0xd50
/* 1CE688 801DD918 01427821 */  addu  $t7, $t2, $v0
/* 1CE68C 801DD91C 8DF80000 */  lw    $t8, ($t7)
/* 1CE690 801DD920 3C03800F */ lui $v1, %hi(D_800E98E0)
/* 1CE694 801DD924 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 1CE698 801DD928 0018C880 */  sll   $t9, $t8, 2
/* 1CE69C 801DD92C 00791821 */  addu  $v1, $v1, $t9
/* 1CE6A0 801DD930 8C6398E0 */ lw $v1, %lo(D_800E98E0)($v1)
/* 1CE6A4 801DD934 3C09800E */  lui   $t1, %hi(D_800E6BD0) # $t1, 0x800e
/* 1CE6A8 801DD938 25296BD0 */  addiu $t1, %lo(D_800E6BD0) # addiu $t1, $t1, 0x6bd0
/* 1CE6AC 801DD93C 25085F90 */  addiu $t0, %lo(D_800E5F90) # addiu $t0, $t0, 0x5f90
/* 1CE6B0 801DD940 00031880 */  sll   $v1, $v1, 2
/* 1CE6B4 801DD944 01035821 */  addu  $t3, $t0, $v1
/* 1CE6B8 801DD948 01236021 */  addu  $t4, $t1, $v1
/* 1CE6BC 801DD94C 01026821 */  addu  $t5, $t0, $v0
/* 1CE6C0 801DD950 01227021 */  addu  $t6, $t1, $v0
/* 1CE6C4 801DD954 8DC50000 */  lw    $a1, ($t6)
/* 1CE6C8 801DD958 8DA40000 */  lw    $a0, ($t5)
/* 1CE6CC 801DD95C 8D870000 */  lw    $a3, ($t4)
/* 1CE6D0 801DD960 0C03E547 */  jal   func_800F951C
/* 1CE6D4 801DD964 8D660000 */   lw    $a2, ($t3)
/* 1CE6D8 801DD968 3C01801F */  lui   $at, %hi(D_801F49C0_ovl10) # $at, 0x801f
/* 1CE6DC 801DD96C C43249C0 */  lwc1  $f18, %lo(D_801F49C0_ovl10)($at)
/* 1CE6E0 801DD970 3C05800F */  lui   $a1, %hi(D_800E98E0) # $a1, 0x800f
/* 1CE6E4 801DD974 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 1CE6E8 801DD978 46120032 */  c.eq.s $f0, $f18
/* 1CE6EC 801DD97C 3C09800E */  lui   $t1, %hi(D_800E6BD0) # $t1, 0x800e
/* 1CE6F0 801DD980 3C0A800E */  lui   $t2, %hi(D_800E0D50) # $t2, 0x800e
/* 1CE6F4 801DD984 254A0D50 */  addiu $t2, %lo(D_800E0D50) # addiu $t2, $t2, 0xd50
/* 1CE6F8 801DD988 25296BD0 */  addiu $t1, %lo(D_800E6BD0) # addiu $t1, $t1, 0x6bd0
/* 1CE6FC 801DD98C 25085F90 */  addiu $t0, %lo(D_800E5F90) # addiu $t0, $t0, 0x5f90
/* 1CE700 801DD990 45010006 */  bc1t  .L801DD9AC_ovl10
/* 1CE704 801DD994 24A598E0 */   addiu $a1, %lo(D_800E98E0) # addiu $a1, $a1, -0x6720
/* 1CE708 801DD998 44801000 */  mtc1  $zero, $f2
/* 1CE70C 801DD99C 00000000 */  nop   
/* 1CE710 801DD9A0 4600103C */  c.lt.s $f2, $f0
/* 1CE714 801DD9A4 00000000 */  nop   
/* 1CE718 801DD9A8 45000038 */  bc1f  .L801DDA8C_ovl10
.L801DD9AC_ovl10:
/* 1CE71C 801DD9AC 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1CE720 801DD9B0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1CE724 801DD9B4 3C01800E */ lui $at, %hi(D_800E6150)
/* 1CE728 801DD9B8 8C620000 */  lw    $v0, ($v1)
/* 1CE72C 801DD9BC 00021080 */  sll   $v0, $v0, 2
/* 1CE730 801DD9C0 01426821 */  addu  $t5, $t2, $v0
/* 1CE734 801DD9C4 8DAE0000 */  lw    $t6, ($t5)
/* 1CE738 801DD9C8 00220821 */  addu  $at, $at, $v0
/* 1CE73C 801DD9CC 000E7880 */  sll   $t7, $t6, 2
/* 1CE740 801DD9D0 00AFC021 */  addu  $t8, $a1, $t7
/* 1CE744 801DD9D4 8F190000 */  lw    $t9, ($t8)
/* 1CE748 801DD9D8 00195880 */  sll   $t3, $t9, 2
/* 1CE74C 801DD9DC 010B6021 */  addu  $t4, $t0, $t3
/* 1CE750 801DD9E0 8D840000 */  lw    $a0, ($t4)
/* 1CE754 801DD9E4 AC246150 */ sw $a0, %lo(D_800E6150)($at)
/* 1CE758 801DD9E8 8C6D0000 */  lw    $t5, ($v1)
/* 1CE75C 801DD9EC 3C01800E */ lui $at, %hi(D_800E6D90)
/* 1CE760 801DD9F0 000D7080 */  sll   $t6, $t5, 2
/* 1CE764 801DD9F4 010E7821 */  addu  $t7, $t0, $t6
/* 1CE768 801DD9F8 ADE40000 */  sw    $a0, ($t7)
/* 1CE76C 801DD9FC 8C620000 */  lw    $v0, ($v1)
/* 1CE770 801DDA00 00021080 */  sll   $v0, $v0, 2
/* 1CE774 801DDA04 0142C021 */  addu  $t8, $t2, $v0
/* 1CE778 801DDA08 8F190000 */  lw    $t9, ($t8)
/* 1CE77C 801DDA0C 00220821 */  addu  $at, $at, $v0
/* 1CE780 801DDA10 00195880 */  sll   $t3, $t9, 2
/* 1CE784 801DDA14 00AB6021 */  addu  $t4, $a1, $t3
/* 1CE788 801DDA18 8D8D0000 */  lw    $t5, ($t4)
/* 1CE78C 801DDA1C 000D7080 */  sll   $t6, $t5, 2
/* 1CE790 801DDA20 012E7821 */  addu  $t7, $t1, $t6
/* 1CE794 801DDA24 C5E20000 */  lwc1  $f2, ($t7)
/* 1CE798 801DDA28 E4226D90 */ swc1 $f2, %lo(D_800E6D90)($at)
/* 1CE79C 801DDA2C 8C780000 */  lw    $t8, ($v1)
/* 1CE7A0 801DDA30 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 1CE7A4 801DDA34 0018C880 */  sll   $t9, $t8, 2
/* 1CE7A8 801DDA38 01395821 */  addu  $t3, $t1, $t9
/* 1CE7AC 801DDA3C E5620000 */  swc1  $f2, ($t3)
/* 1CE7B0 801DDA40 8C620000 */  lw    $v0, ($v1)
/* 1CE7B4 801DDA44 00021080 */  sll   $v0, $v0, 2
/* 1CE7B8 801DDA48 00220821 */  addu  $at, $at, $v0
/* 1CE7BC 801DDA4C C4242B10 */ lwc1 $f4, %lo(gEntitiesPosXArray)($at)
/* 1CE7C0 801DDA50 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CE7C4 801DDA54 00220821 */  addu  $at, $at, $v0
/* 1CE7C8 801DDA58 E42425D0 */ swc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1CE7CC 801DDA5C 8C620000 */  lw    $v0, ($v1)
/* 1CE7D0 801DDA60 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 1CE7D4 801DDA64 00021080 */  sll   $v0, $v0, 2
/* 1CE7D8 801DDA68 00220821 */  addu  $at, $at, $v0
/* 1CE7DC 801DDA6C C4262E90 */ lwc1 $f6, %lo(gEntitiesPosZArray)($at)
/* 1CE7E0 801DDA70 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1CE7E4 801DDA74 00220821 */  addu  $at, $at, $v0
/* 1CE7E8 801DDA78 E4262950 */ swc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 1CE7EC 801DDA7C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1CE7F0 801DDA80 44810000 */  mtc1  $at, $f0
/* 1CE7F4 801DDA84 10000003 */  b     .L801DDA94_ovl10
/* 1CE7F8 801DDA88 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DDA8C_ovl10:
/* 1CE7FC 801DDA8C 46001006 */  mov.s $f0, $f2
/* 1CE800 801DDA90 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DDA94_ovl10:
/* 1CE804 801DDA94 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CE808 801DDA98 03E00008 */  jr    $ra
/* 1CE80C 801DDA9C 00000000 */   nop   
.type func_801DD760_ovl10, @function
.size func_801DD760_ovl10, . - func_801DD760_ovl10
