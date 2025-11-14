glabel func_8011BD30
/* 0A47A0 8011BD30 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0A47A4 8011BD34 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0A47A8 8011BD38 24060014 */  li    $a2, 20
/* 0A47AC 8011BD3C 00808025 */  move  $s0, $a0
/* 0A47B0 8011BD40 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A47B4 8011BD44 AFB10020 */  sw    $s1, 0x20($sp)
/* 0A47B8 8011BD48 10A6000C */  beq   $a1, $a2, .L8011BD7C_ovl2
/* 0A47BC 8011BD4C F7B40010 */   sdc1  $f20, 0x10($sp)
/* 0A47C0 8011BD50 00057080 */  sll   $t6, $a1, 2
/* 0A47C4 8011BD54 01C57023 */  subu  $t6, $t6, $a1
/* 0A47C8 8011BD58 000E70C0 */  sll   $t6, $t6, 3
/* 0A47CC 8011BD5C 01C57023 */  subu  $t6, $t6, $a1
/* 0A47D0 8011BD60 3C0F8013 */  lui   $t7, %hi(D_8012D948) # $t7, 0x8013
/* 0A47D4 8011BD64 25EFD948 */  addiu $t7, %lo(D_8012D948) # addiu $t7, $t7, -0x26b8
/* 0A47D8 8011BD68 000E70C0 */  sll   $t6, $t6, 3
/* 0A47DC 8011BD6C 01CF1021 */  addu  $v0, $t6, $t7
/* 0A47E0 8011BD70 8C440004 */  lw    $a0, 4($v0)
/* 0A47E4 8011BD74 10000005 */  b     .L8011BD8C_ovl2
/* 0A47E8 8011BD78 90470001 */   lbu   $a3, 1($v0)
.L8011BD7C_ovl2:
/* 0A47EC 8011BD7C 3C048013 */  lui   $a0, %hi(D_80129410) # $a0, 0x8013
/* 0A47F0 8011BD80 3C078013 */  lui   $a3, %hi(D_801290D0) # $a3, 0x8013
/* 0A47F4 8011BD84 8C849410 */  lw    $a0, %lo(D_80129410)($a0)
/* 0A47F8 8011BD88 8CE790D0 */  lw    $a3, %lo(D_801290D0)($a3)
.L8011BD8C_ovl2:
/* 0A47FC 8011BD8C 9619000A */  lhu   $t9, 0xa($s0)
/* 0A4800 8011BD90 8C980030 */  lw    $t8, 0x30($a0)
/* 0A4804 8011BD94 8C890034 */  lw    $t1, 0x34($a0)
/* 0A4808 8011BD98 00194080 */  sll   $t0, $t9, 2
/* 0A480C 8011BD9C 01194023 */  subu  $t0, $t0, $t9
/* 0A4810 8011BDA0 00084040 */  sll   $t0, $t0, 1
/* 0A4814 8011BDA4 03082821 */  addu  $a1, $t8, $t0
/* 0A4818 8011BDA8 94AA0002 */  lhu   $t2, 2($a1)
/* 0A481C 8011BDAC 94AC0000 */  lhu   $t4, ($a1)
/* 0A4820 8011BDB0 00001825 */  move  $v1, $zero
/* 0A4824 8011BDB4 000A5840 */  sll   $t3, $t2, 1
/* 0A4828 8011BDB8 1180000D */  beqz  $t4, .L8011BDF0_ovl2
/* 0A482C 8011BDBC 012B1021 */   addu  $v0, $t1, $t3
/* 0A4830 8011BDC0 944E0000 */  lhu   $t6, ($v0)
.L8011BDC4_ovl2:
/* 0A4834 8011BDC4 8C8D0004 */  lw    $t5, 4($a0)
/* 0A4838 8011BDC8 24630001 */  addiu $v1, $v1, 1
/* 0A483C 8011BDCC 01C60019 */  multu $t6, $a2
/* 0A4840 8011BDD0 24420002 */  addiu $v0, $v0, 2
/* 0A4844 8011BDD4 00007812 */  mflo  $t7
/* 0A4848 8011BDD8 01AFC821 */  addu  $t9, $t5, $t7
/* 0A484C 8011BDDC A7200010 */  sh    $zero, 0x10($t9)
/* 0A4850 8011BDE0 94B80000 */  lhu   $t8, ($a1)
/* 0A4854 8011BDE4 0078082B */  sltu  $at, $v1, $t8
/* 0A4858 8011BDE8 5420FFF6 */  bnezl $at, .L8011BDC4_ovl2
/* 0A485C 8011BDEC 944E0000 */   lhu   $t6, ($v0)
.L8011BDF0_ovl2:
/* 0A4860 8011BDF0 00074080 */  sll   $t0, $a3, 2
/* 0A4864 8011BDF4 3C0A800E */ lui $t2, %hi(D_800DFBD0)
/* 0A4868 8011BDF8 94A20004 */  lhu   $v0, 4($a1)
/* 0A486C 8011BDFC 01485021 */  addu  $t2, $t2, $t0
/* 0A4870 8011BE00 8D4AFBD0 */ lw $t2, %lo(D_800DFBD0)($t2)
/* 0A4874 8011BE04 3C118013 */  lui   $s1, %hi(D_8012E7B0) # $s1, 0x8013
/* 0A4878 8011BE08 2631E7B0 */  addiu $s1, %lo(D_8012E7B0) # addiu $s1, $s1, -0x1850
/* 0A487C 8011BE0C 00028080 */  sll   $s0, $v0, 2
/* 0A4880 8011BE10 8E230000 */  lw    $v1, ($s1)
/* 0A4884 8011BE14 01504821 */  addu  $t1, $t2, $s0
/* 0A4888 8011BE18 8D2B0000 */  lw    $t3, ($t1)
/* 0A488C 8011BE1C 1060000B */  beqz  $v1, .L8011BE4C_ovl2
/* 0A4890 8011BE20 AFAB002C */   sw    $t3, 0x2c($sp)
/* 0A4894 8011BE24 8C6C0000 */  lw    $t4, ($v1)
/* 0A4898 8011BE28 01907021 */  addu  $t6, $t4, $s0
/* 0A489C 8011BE2C 8DC50000 */  lw    $a1, ($t6)
/* 0A48A0 8011BE30 50A00007 */  beql  $a1, $zero, .L8011BE50_ovl2
/* 0A48A4 8011BE34 8E220004 */   lw    $v0, 4($s1)
/* 0A48A8 8011BE38 4480A000 */  mtc1  $zero, $f20
/* 0A48AC 8011BE3C 01602025 */  move  $a0, $t3
/* 0A48B0 8011BE40 4406A000 */  mfc1  $a2, $f20
/* 0A48B4 8011BE44 0C003043 */  jal   func_8000C10C_ovl2
/* 0A48B8 8011BE48 00000000 */   nop   
.L8011BE4C_ovl2:
/* 0A48BC 8011BE4C 8E220004 */  lw    $v0, 4($s1)
.L8011BE50_ovl2:
/* 0A48C0 8011BE50 4480A000 */  mtc1  $zero, $f20
/* 0A48C4 8011BE54 50400018 */  beql  $v0, $zero, .L8011BEB8_ovl2
/* 0A48C8 8011BE58 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0A48CC 8011BE5C 8C4D0000 */  lw    $t5, ($v0)
/* 0A48D0 8011BE60 01B07821 */  addu  $t7, $t5, $s0
/* 0A48D4 8011BE64 8DF10000 */  lw    $s1, ($t7)
/* 0A48D8 8011BE68 52200013 */  beql  $s1, $zero, .L8011BEB8_ovl2
/* 0A48DC 8011BE6C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0A48E0 8011BE70 8E390000 */  lw    $t9, ($s1)
/* 0A48E4 8011BE74 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0A48E8 8011BE78 5320000F */  beql  $t9, $zero, .L8011BEB8_ovl2
/* 0A48EC 8011BE7C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0A48F0 8011BE80 8F100080 */  lw    $s0, 0x80($t8)
/* 0A48F4 8011BE84 5200000C */  beql  $s0, $zero, .L8011BEB8_ovl2
/* 0A48F8 8011BE88 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0A48FC 8011BE8C 8E250000 */  lw    $a1, ($s1)
.L8011BE90_ovl2:
/* 0A4900 8011BE90 50A00005 */  beql  $a1, $zero, .L8011BEA8_ovl2
/* 0A4904 8011BE94 8E100000 */   lw    $s0, ($s0)
/* 0A4908 8011BE98 4406A000 */  mfc1  $a2, $f20
/* 0A490C 8011BE9C 0C003051 */  jal   func_8000C144_ovl2
/* 0A4910 8011BEA0 02002025 */   move  $a0, $s0
/* 0A4914 8011BEA4 8E100000 */  lw    $s0, ($s0)
.L8011BEA8_ovl2:
/* 0A4918 8011BEA8 26310004 */  addiu $s1, $s1, 4
/* 0A491C 8011BEAC 5600FFF8 */  bnezl $s0, .L8011BE90_ovl2
/* 0A4920 8011BEB0 8E250000 */   lw    $a1, ($s1)
/* 0A4924 8011BEB4 8FBF0024 */  lw    $ra, 0x24($sp)
.L8011BEB8_ovl2:
/* 0A4928 8011BEB8 8FA2002C */  lw    $v0, 0x2c($sp)
/* 0A492C 8011BEBC D7B40010 */  ldc1  $f20, 0x10($sp)
/* 0A4930 8011BEC0 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0A4934 8011BEC4 8FB10020 */  lw    $s1, 0x20($sp)
/* 0A4938 8011BEC8 03E00008 */  jr    $ra
/* 0A493C 8011BECC 27BD0048 */   addiu $sp, $sp, 0x48
.type func_8011BD30, @function
.size func_8011BD30, . - func_8011BD30
