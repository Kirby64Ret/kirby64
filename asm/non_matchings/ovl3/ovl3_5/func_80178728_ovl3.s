glabel func_80178728_ovl3
/* 0D9168 80178728 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D916C 8017872C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D9170 80178730 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D9174 80178734 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D9178 80178738 240E0001 */  li    $t6, 1
/* 0D917C 8017873C AFA40018 */  sw    $a0, 0x18($sp)
/* 0D9180 80178740 0C0473D6 */  jal   func_8011CF58_ovl3
/* 0D9184 80178744 A46E00BA */   sh    $t6, 0xba($v1)
/* 0D9188 80178748 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D918C 8017874C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D9190 80178750 3C01800E */  lui   $at, 0x800e
/* 0D9194 80178754 240F001F */  li    $t7, 31
/* 0D9198 80178758 8C580000 */  lw    $t8, ($v0)
/* 0D919C 8017875C 3C088019 */  lui   $t0, %hi(D_801926E8) # $t0, 0x8019
/* 0D91A0 80178760 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D91A4 80178764 0018C880 */  sll   $t9, $t8, 2
/* 0D91A8 80178768 00390821 */  addu  $at, $at, $t9
/* 0D91AC 8017876C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 0D91B0 80178770 8C490000 */  lw    $t1, ($v0)
/* 0D91B4 80178774 3C01800E */  lui   $at, 0x800e
/* 0D91B8 80178778 250826E8 */  addiu $t0, %lo(D_801926E8) # addiu $t0, $t0, 0x26e8
/* 0D91BC 8017877C 00095080 */  sll   $t2, $t1, 2
/* 0D91C0 80178780 002A0821 */  addu  $at, $at, $t2
/* 0D91C4 80178784 3C0B8019 */  lui   $t3, %hi(D_80190358) # $t3, 0x8019
/* 0D91C8 80178788 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D91CC 8017878C AC280490 */  sw    $t0, 0x490($at)
/* 0D91D0 80178790 256B0358 */  addiu $t3, %lo(D_80190358) # addiu $t3, $t3, 0x358
/* 0D91D4 80178794 AC6B015C */  sw    $t3, 0x15c($v1)
/* 0D91D8 80178798 8C4C0000 */  lw    $t4, ($v0)
/* 0D91DC 8017879C 44802000 */  mtc1  $zero, $f4
/* 0D91E0 801787A0 3C01800E */  lui   $at, 0x800e
/* 0D91E4 801787A4 000C6880 */  sll   $t5, $t4, 2
/* 0D91E8 801787A8 002D0821 */  addu  $at, $at, $t5
/* 0D91EC 801787AC E4243210 */  swc1  $f4, 0x3210($at)
/* 0D91F0 801787B0 8C4E0000 */  lw    $t6, ($v0)
/* 0D91F4 801787B4 C46600C4 */  lwc1  $f6, 0xc4($v1)
/* 0D91F8 801787B8 3C01800E */  lui   $at, 0x800e
/* 0D91FC 801787BC 000EC080 */  sll   $t8, $t6, 2
/* 0D9200 801787C0 00380821 */  addu  $at, $at, $t8
/* 0D9204 801787C4 E4263750 */  swc1  $f6, 0x3750($at)
/* 0D9208 801787C8 C46000C8 */  lwc1  $f0, 0xc8($v1)
/* 0D920C 801787CC 44804000 */  mtc1  $zero, $f8
/* 0D9210 801787D0 3C040002 */  lui   $a0, (0x00020087 >> 16) # lui $a0, 2
/* 0D9214 801787D4 3C050002 */  lui   $a1, (0x00020088 >> 16) # lui $a1, 2
/* 0D9218 801787D8 4608003C */  c.lt.s $f0, $f8
/* 0D921C 801787DC 34A50088 */  ori   $a1, (0x00020088 & 0xFFFF) # ori $a1, $a1, 0x88
/* 0D9220 801787E0 34840087 */  ori   $a0, (0x00020087 & 0xFFFF) # ori $a0, $a0, 0x87
/* 0D9224 801787E4 45020009 */  bc1fl .L8017880C_ovl3
/* 0D9228 801787E8 8C490000 */   lw    $t1, ($v0)
/* 0D922C 801787EC 8C4F0000 */  lw    $t7, ($v0)
/* 0D9230 801787F0 3C01800E */  lui   $at, 0x800e
/* 0D9234 801787F4 46000287 */  neg.s $f10, $f0
/* 0D9238 801787F8 000FC880 */  sll   $t9, $t7, 2
/* 0D923C 801787FC 00390821 */  addu  $at, $at, $t9
/* 0D9240 80178800 10000006 */  b     .L8017881C_ovl3
/* 0D9244 80178804 E42A3C90 */   swc1  $f10, 0x3c90($at)
/* 0D9248 80178808 8C490000 */  lw    $t1, ($v0)
.L8017880C_ovl3:
/* 0D924C 8017880C 3C01800E */  lui   $at, 0x800e
/* 0D9250 80178810 00094080 */  sll   $t0, $t1, 2
/* 0D9254 80178814 00280821 */  addu  $at, $at, $t0
/* 0D9258 80178818 E4203C90 */  swc1  $f0, 0x3c90($at)
.L8017881C_ovl3:
/* 0D925C 8017881C 0C048C3A */  jal   func_801230E8_ovl3
/* 0D9260 80178820 00003025 */   move  $a2, $zero
/* 0D9264 80178824 0C02BE85 */  jal   func_800AFA14_ovl3
/* 0D9268 80178828 00000000 */   nop   
/* 0D926C 8017882C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D9270 80178830 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D9274 80178834 03E00008 */  jr    $ra
/* 0D9278 80178838 00000000 */   nop   
