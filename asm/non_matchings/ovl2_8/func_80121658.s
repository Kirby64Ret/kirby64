glabel func_80121658
/* 0AA0C8 80121658 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0AA0CC 8012165C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0AA0D0 80121660 3C0E800F */ lui $t6, %hi(D_800E8920)
/* 0AA0D4 80121664 3C05800E */  lui   $a1, %hi(D_800E3210) # $a1, 0x800e
/* 0AA0D8 80121668 8C640000 */  lw    $a0, ($v1)
/* 0AA0DC 8012166C 24A53210 */  addiu $a1, %lo(D_800E3210) # addiu $a1, $a1, 0x3210
/* 0AA0E0 80121670 00042080 */  sll   $a0, $a0, 2
/* 0AA0E4 80121674 01C47021 */  addu  $t6, $t6, $a0
/* 0AA0E8 80121678 8DCE8920 */ lw $t6, %lo(D_800E8920)($t6)
/* 0AA0EC 8012167C 00A47821 */  addu  $t7, $a1, $a0
/* 0AA0F0 80121680 11C0001C */  beqz  $t6, .L801216F4_ovl2
/* 0AA0F4 80121684 00000000 */   nop   
/* 0AA0F8 80121688 44802000 */  mtc1  $zero, $f4
/* 0AA0FC 8012168C C5E60000 */  lwc1  $f6, ($t7)
/* 0AA100 80121690 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0AA104 80121694 46062032 */  c.eq.s $f4, $f6
/* 0AA108 80121698 00000000 */  nop   
/* 0AA10C 8012169C 45030044 */  bc1tl .L801217B0_ovl2
/* 0AA110 801216A0 00001025 */   move  $v0, $zero
/* 0AA114 801216A4 44804000 */  mtc1  $zero, $f8
/* 0AA118 801216A8 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0AA11C 801216AC 00C4C021 */  addu  $t8, $a2, $a0
/* 0AA120 801216B0 E7080000 */  swc1  $f8, ($t8)
/* 0AA124 801216B4 8C640000 */  lw    $a0, ($v1)
/* 0AA128 801216B8 3C07800E */  lui   $a3, %hi(D_800E3C90) # $a3, 0x800e
/* 0AA12C 801216BC 3C018013 */  lui   $at, %hi(D_80129078) # $at, 0x8013
/* 0AA130 801216C0 00042080 */  sll   $a0, $a0, 2
/* 0AA134 801216C4 00C4C821 */  addu  $t9, $a2, $a0
/* 0AA138 801216C8 C72A0000 */  lwc1  $f10, ($t9)
/* 0AA13C 801216CC 00A44021 */  addu  $t0, $a1, $a0
/* 0AA140 801216D0 24E73C90 */  addiu $a3, %lo(D_800E3C90) # addiu $a3, $a3, 0x3c90
/* 0AA144 801216D4 E50A0000 */  swc1  $f10, ($t0)
/* 0AA148 801216D8 8C690000 */  lw    $t1, ($v1)
/* 0AA14C 801216DC C4309078 */  lwc1  $f16, %lo(D_80129078)($at)
/* 0AA150 801216E0 24020001 */  li    $v0, 1
/* 0AA154 801216E4 00095080 */  sll   $t2, $t1, 2
/* 0AA158 801216E8 00EA5821 */  addu  $t3, $a3, $t2
/* 0AA15C 801216EC 03E00008 */  jr    $ra
/* 0AA160 801216F0 E5700000 */   swc1  $f16, ($t3)
.type func_80121658, @function

.L801216F4_ovl2:
/* 0AA164 801216F4 3C0C800F */ lui $t4, %hi(D_800E8AE0)
/* 0AA168 801216F8 01846021 */  addu  $t4, $t4, $a0
/* 0AA16C 801216FC 8D8C8AE0 */ lw $t4, %lo(D_800E8AE0)($t4)
/* 0AA170 80121700 318D0006 */  andi  $t5, $t4, 6
/* 0AA174 80121704 11A00015 */  beqz  $t5, .L8012175C_ovl2
/* 0AA178 80121708 3C07800E */   lui   $a3, %hi(D_800E3C90) # $a3, 0x800e
/* 0AA17C 8012170C 24E73C90 */  addiu $a3, %lo(D_800E3C90) # addiu $a3, $a3, 0x3c90
/* 0AA180 80121710 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0AA184 80121714 00E47021 */  addu  $t6, $a3, $a0
/* 0AA188 80121718 44810000 */  mtc1  $at, $f0
/* 0AA18C 8012171C C5D20000 */  lwc1  $f18, ($t6)
/* 0AA190 80121720 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0AA194 80121724 3C018013 */  lui   $at, %hi(D_8012907C) # $at, 0x8013
/* 0AA198 80121728 46120032 */  c.eq.s $f0, $f18
/* 0AA19C 8012172C 00000000 */  nop   
/* 0AA1A0 80121730 4503001F */  bc1tl .L801217B0_ovl2
/* 0AA1A4 80121734 00001025 */   move  $v0, $zero
/* 0AA1A8 80121738 C424907C */  lwc1  $f4, %lo(D_8012907C)($at)
/* 0AA1AC 8012173C 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0AA1B0 80121740 00C47821 */  addu  $t7, $a2, $a0
/* 0AA1B4 80121744 E5E40000 */  swc1  $f4, ($t7)
/* 0AA1B8 80121748 8C780000 */  lw    $t8, ($v1)
/* 0AA1BC 8012174C 0018C880 */  sll   $t9, $t8, 2
/* 0AA1C0 80121750 00F94021 */  addu  $t0, $a3, $t9
/* 0AA1C4 80121754 10000015 */  b     .L801217AC_ovl2
/* 0AA1C8 80121758 E5000000 */   swc1  $f0, ($t0)
.L8012175C_ovl2:
/* 0AA1CC 8012175C 3C07800E */  lui   $a3, %hi(D_800E3C90) # $a3, 0x800e
/* 0AA1D0 80121760 24E73C90 */  addiu $a3, %lo(D_800E3C90) # addiu $a3, $a3, 0x3c90
/* 0AA1D4 80121764 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0AA1D8 80121768 00E44821 */  addu  $t1, $a3, $a0
/* 0AA1DC 8012176C 44810000 */  mtc1  $at, $f0
/* 0AA1E0 80121770 C5260000 */  lwc1  $f6, ($t1)
/* 0AA1E4 80121774 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0AA1E8 80121778 3C018013 */  lui   $at, %hi(D_80129080) # $at, 0x8013
/* 0AA1EC 8012177C 46060032 */  c.eq.s $f0, $f6
/* 0AA1F0 80121780 00000000 */  nop   
/* 0AA1F4 80121784 4503000A */  bc1tl .L801217B0_ovl2
/* 0AA1F8 80121788 00001025 */   move  $v0, $zero
/* 0AA1FC 8012178C C4289080 */  lwc1  $f8, %lo(D_80129080)($at)
/* 0AA200 80121790 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0AA204 80121794 00C45021 */  addu  $t2, $a2, $a0
/* 0AA208 80121798 E5480000 */  swc1  $f8, ($t2)
/* 0AA20C 8012179C 8C6B0000 */  lw    $t3, ($v1)
/* 0AA210 801217A0 000B6080 */  sll   $t4, $t3, 2
/* 0AA214 801217A4 00EC6821 */  addu  $t5, $a3, $t4
/* 0AA218 801217A8 E5A00000 */  swc1  $f0, ($t5)
.L801217AC_ovl2:
/* 0AA21C 801217AC 00001025 */  move  $v0, $zero
.L801217B0_ovl2:
/* 0AA220 801217B0 03E00008 */  jr    $ra
/* 0AA224 801217B4 00000000 */   nop   
.type func_80121658, @function
.size func_80121658, . - func_80121658
