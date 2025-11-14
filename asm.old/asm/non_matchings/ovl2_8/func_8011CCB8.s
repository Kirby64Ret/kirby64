glabel func_8011CCB8
/* 0A5728 8011CCB8 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0A572C 8011CCBC 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0A5730 8011CCC0 8CEE00A8 */  lw    $t6, 0xa8($a3)
/* 0A5734 8011CCC4 3C01FF00 */  lui   $at, 0xff00
/* 0A5738 8011CCC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A573C 8011CCCC 01C13025 */  or    $a2, $t6, $at
/* 0A5740 8011CCD0 0006C402 */  srl   $t8, $a2, 0x10
/* 0A5744 8011CCD4 00061202 */  srl   $v0, $a2, 8
/* 0A5748 8011CCD8 331900FF */  andi  $t9, $t8, 0xff
/* 0A574C 8011CCDC 304200FF */  andi  $v0, $v0, 0xff
/* 0A5750 8011CCE0 2F210007 */  sltiu $at, $t9, 7
/* 0A5754 8011CCE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A5758 8011CCE8 00005025 */  move  $t2, $zero
/* 0A575C 8011CCEC ACE600A8 */  sw    $a2, 0xa8($a3)
/* 0A5760 8011CCF0 1020003A */  beqz  $at, .L8011CDDC_ovl2
/* 0A5764 8011CCF4 00401825 */   move  $v1, $v0
/* 0A5768 8011CCF8 0019C880 */  sll   $t9, $t9, 2
/* 0A576C 8011CCFC 3C018013 */ lui $at, %hi(D_80128E2C)
/* 0A5770 8011CD00 00390821 */  addu  $at, $at, $t9
/* 0A5774 8011CD04 8C398E2C */ lw $t9, %lo(D_80128E2C)($at)
/* 0A5778 8011CD08 03200008 */  jr    $t9
/* 0A577C 8011CD0C 00000000 */   nop   
/* 0A5780 8011CD10 8CEB00AC */  lw    $t3, 0xac($a3)
/* 0A5784 8011CD14 24010001 */  li    $at, 1
/* 0A5788 8011CD18 244CFFF5 */  addiu $t4, $v0, -0xb
/* 0A578C 8011CD1C 1561000D */  bne   $t3, $at, .L8011CD54_ovl2
/* 0A5790 8011CD20 2D81001A */   sltiu $at, $t4, 0x1a
/* 0A5794 8011CD24 1020000B */  beqz  $at, .L8011CD54_ovl2
/* 0A5798 8011CD28 000C6080 */   sll   $t4, $t4, 2
/* 0A579C 8011CD2C 3C018013 */ lui $at, %hi(D_80128E48)
/* 0A57A0 8011CD30 002C0821 */  addu  $at, $at, $t4
/* 0A57A4 8011CD34 8C2C8E48 */ lw $t4, %lo(D_80128E48)($at)
/* 0A57A8 8011CD38 01800008 */  jr    $t4
/* 0A57AC 8011CD3C 00000000 */   nop   
/* 0A57B0 8011CD40 ACE000A8 */  sw    $zero, 0xa8($a3)
/* 0A57B4 8011CD44 ACE000AC */  sw    $zero, 0xac($a3)
/* 0A57B8 8011CD48 A0E00004 */  sb    $zero, 4($a3)
/* 0A57BC 8011CD4C 1000007E */  b     .L8011CF48_ovl2
/* 0A57C0 8011CD50 00001025 */   move  $v0, $zero
.L8011CD54_ovl2:
/* 0A57C4 8011CD54 24040017 */  li    $a0, 23
/* 0A57C8 8011CD58 2405000E */  li    $a1, 14
/* 0A57CC 8011CD5C 2406001E */  li    $a2, 30
/* 0A57D0 8011CD60 0C02BB02 */  jal   request_track_general
/* 0A57D4 8011CD64 AFAA0024 */   sw    $t2, 0x24($sp)
/* 0A57D8 8011CD68 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0A57DC 8011CD6C 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0A57E0 8011CD70 8FAA0024 */  lw    $t2, 0x24($sp)
/* 0A57E4 8011CD74 1000001F */  b     .L8011CDF4_ovl2
/* 0A57E8 8011CD78 00404025 */   move  $t0, $v0
/* 0A57EC 8011CD7C 2404001A */  li    $a0, 26
/* 0A57F0 8011CD80 2405000E */  li    $a1, 14
/* 0A57F4 8011CD84 2406001E */  li    $a2, 30
/* 0A57F8 8011CD88 0C02BB02 */  jal   request_track_general
/* 0A57FC 8011CD8C AFAA0024 */   sw    $t2, 0x24($sp)
/* 0A5800 8011CD90 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0A5804 8011CD94 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0A5808 8011CD98 8FAA0024 */  lw    $t2, 0x24($sp)
/* 0A580C 8011CD9C 10000015 */  b     .L8011CDF4_ovl2
/* 0A5810 8011CDA0 00404025 */   move  $t0, $v0
/* 0A5814 8011CDA4 2404001F */  li    $a0, 31
/* 0A5818 8011CDA8 2405000E */  li    $a1, 14
/* 0A581C 8011CDAC 2406001E */  li    $a2, 30
/* 0A5820 8011CDB0 AFA3002C */  sw    $v1, 0x2c($sp)
/* 0A5824 8011CDB4 0C02BB02 */  jal   request_track_general
/* 0A5828 8011CDB8 AFAA0024 */   sw    $t2, 0x24($sp)
/* 0A582C 8011CDBC 8FA3002C */  lw    $v1, 0x2c($sp)
/* 0A5830 8011CDC0 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0A5834 8011CDC4 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0A5838 8011CDC8 8FAA0024 */  lw    $t2, 0x24($sp)
/* 0A583C 8011CDCC 14600009 */  bnez  $v1, .L8011CDF4_ovl2
/* 0A5840 8011CDD0 00404025 */   move  $t0, $v0
/* 0A5844 8011CDD4 10000007 */  b     .L8011CDF4_ovl2
/* 0A5848 8011CDD8 240A0001 */   li    $t2, 1
.L8011CDDC_ovl2:
/* 0A584C 8011CDDC 3C048013 */  lui   $a0, %hi(D_80128D70) # $a0, 0x8013
/* 0A5850 8011CDE0 24848D70 */  addiu $a0, %lo(D_80128D70) # addiu $a0, $a0, -0x7290
/* 0A5854 8011CDE4 0C02909C */  jal   print_error_stub
/* 0A5858 8011CDE8 00C02825 */   move  $a1, $a2
.L8011CDEC_ovl2:
/* 0A585C 8011CDEC 1000FFFF */  b     .L8011CDEC_ovl2
/* 0A5860 8011CDF0 00000000 */   nop   
.L8011CDF4_ovl2:
/* 0A5864 8011CDF4 8CED00AC */  lw    $t5, 0xac($a3)
/* 0A5868 8011CDF8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 0A586C 8011CDFC 3C05801B */  lui   $a1, %hi(func_801AC4EC_ovl7)
/* 0A5870 8011CE00 11A00006 */  beqz  $t5, .L8011CE1C_ovl2
/* 0A5874 8011CE04 AFAD0018 */   sw    $t5, 0x18($sp)
/* 0A5878 8011CE08 24010001 */  li    $at, 1
/* 0A587C 8011CE0C 11A10012 */  beq   $t5, $at, .L8011CE58_ovl2
/* 0A5880 8011CE10 3C098005 */ lui $t1, %hi(D_8004A7C4)
/* 0A5884 8011CE14 10000019 */  b     .L8011CE7C_ovl2
/* 0A5888 8011CE18 00000000 */   nop   
.L8011CE1C_ovl2:
/* 0A588C 8011CE1C A4E000B2 */  sh    $zero, 0xb2($a3)
/* 0A5890 8011CE20 84EF00B2 */  lh    $t7, 0xb2($a3)
/* 0A5894 8011CE24 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0A5898 8011CE28 3C01800F */ lui $at, %hi(D_800E8060)
/* 0A589C 8011CE2C A0EF00B1 */  sb    $t7, 0xb1($a3)
/* 0A58A0 8011CE30 A0EF00B0 */  sb    $t7, 0xb0($a3)
/* 0A58A4 8011CE34 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0A58A8 8011CE38 2418FFFE */  li    $t8, -2
/* 0A58AC 8011CE3C 240CFFFF */  li    $t4, -1
/* 0A58B0 8011CE40 8D390000 */  lw    $t9, ($t1)
/* 0A58B4 8011CE44 00195880 */  sll   $t3, $t9, 2
/* 0A58B8 8011CE48 002B0821 */  addu  $at, $at, $t3
/* 0A58BC 8011CE4C AC388060 */ sw $t8, %lo(D_800E8060)($at)
/* 0A58C0 8011CE50 10000010 */  b     .L8011CE94_ovl2
/* 0A58C4 8011CE54 A0EC000D */   sb    $t4, 0xd($a3)
.L8011CE58_ovl2:
/* 0A58C8 8011CE58 8CEE00AC */  lw    $t6, 0xac($a3)
/* 0A58CC 8011CE5C 240D0002 */  li    $t5, 2
/* 0A58D0 8011CE60 ACE0009C */  sw    $zero, 0x9c($a3)
/* 0A58D4 8011CE64 ACE00098 */  sw    $zero, 0x98($a3)
/* 0A58D8 8011CE68 ACE00094 */  sw    $zero, 0x94($a3)
/* 0A58DC 8011CE6C A0ED000D */  sb    $t5, 0xd($a3)
/* 0A58E0 8011CE70 8D29A7C4 */ lw $t1, %lo(D_8004A7C4)($t1)
/* 0A58E4 8011CE74 10000007 */  b     .L8011CE94_ovl2
/* 0A58E8 8011CE78 AFAE0018 */   sw    $t6, 0x18($sp)
.L8011CE7C_ovl2:
/* 0A58EC 8011CE7C 3C048013 */  lui   $a0, %hi(D_80128D98) # $a0, 0x8013
/* 0A58F0 8011CE80 24848D98 */  addiu $a0, %lo(D_80128D98) # addiu $a0, $a0, -0x7268
/* 0A58F4 8011CE84 0C02909C */  jal   print_error_stub
/* 0A58F8 8011CE88 8FA50018 */   lw    $a1, 0x18($sp)
.L8011CE8C_ovl2:
/* 0A58FC 8011CE8C 1000FFFF */  b     .L8011CE8C_ovl2
/* 0A5900 8011CE90 00000000 */   nop   
.L8011CE94_ovl2:
/* 0A5904 8011CE94 11400007 */  beqz  $t2, .L8011CEB4_ovl2
/* 0A5908 8011CE98 240B0001 */   li    $t3, 1
/* 0A590C 8011CE9C 3C0F800D */  lui   $t7, %hi(D_800D7058) # $t7, 0x800d
/* 0A5910 8011CEA0 0002C880 */  sll   $t9, $v0, 2
/* 0A5914 8011CEA4 3C01800E */ lui $at, %hi(D_800E0650)
/* 0A5918 8011CEA8 00390821 */  addu  $at, $at, $t9
/* 0A591C 8011CEAC 25EF7058 */  addiu $t7, %lo(D_800D7058) # addiu $t7, $t7, 0x7058
/* 0A5920 8011CEB0 AC2F0650 */  sw    $t7, %lo(D_800E0650)($at)
.L8011CEB4_ovl2:
/* 0A5924 8011CEB4 8D380000 */  lw    $t8, ($t1)
/* 0A5928 8011CEB8 00081080 */  sll   $v0, $t0, 2
/* 0A592C 8011CEBC 3C01800E */ lui $at, %hi(D_800E0D50)
/* 0A5930 8011CEC0 00220821 */  addu  $at, $at, $v0
/* 0A5934 8011CEC4 AC380D50 */  sw    $t8, %lo(D_800E0D50)($at)
/* 0A5938 8011CEC8 3C01800F */ lui $at, %hi(D_800E8E60)
/* 0A593C 8011CECC 00220821 */  addu  $at, $at, $v0
/* 0A5940 8011CED0 AC2B8E60 */ sw $t3, %lo(D_800E8E60)($at)
/* 0A5944 8011CED4 8CE600A8 */  lw    $a2, 0xa8($a3)
/* 0A5948 8011CED8 3C01800E */ lui $at, %hi(D_800E76C0)
/* 0A594C 8011CEDC 00280821 */  addu  $at, $at, $t0
/* 0A5950 8011CEE0 00066E02 */  srl   $t5, $a2, 0x18
/* 0A5954 8011CEE4 A02D76C0 */ sb $t5, %lo(D_800E76C0)($at)
/* 0A5958 8011CEE8 3C01800E */ lui $at, %hi(D_800E7730)
/* 0A595C 8011CEEC 00280821 */  addu  $at, $at, $t0
/* 0A5960 8011CEF0 00067C02 */  srl   $t7, $a2, 0x10
/* 0A5964 8011CEF4 A02F7730 */ sb $t7, %lo(D_800E7730)($at)
/* 0A5968 8011CEF8 3C01800E */ lui $at, %hi(D_800E77A0)
/* 0A596C 8011CEFC 00086040 */  sll   $t4, $t0, 1
/* 0A5970 8011CF00 0006C202 */  srl   $t8, $a2, 8
/* 0A5974 8011CF04 330B00FF */  andi  $t3, $t8, 0xff
/* 0A5978 8011CF08 002C0821 */  addu  $at, $at, $t4
/* 0A597C 8011CF0C A42B77A0 */ sh $t3, %lo(D_800E77A0)($at)
/* 0A5980 8011CF10 3C01800E */ lui $at, %hi(D_800E7880)
/* 0A5984 8011CF14 00280821 */  addu  $at, $at, $t0
/* 0A5988 8011CF18 240D00FF */  li    $t5, 255
/* 0A598C 8011CF1C A02D7880 */ sb $t5, %lo(D_800E7880)($at)
/* 0A5990 8011CF20 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0A5994 8011CF24 3C01800F */ lui $at, %hi(D_800E8220)
/* 0A5998 8011CF28 00220821 */  addu  $at, $at, $v0
/* 0A599C 8011CF2C 00822021 */  addu  $a0, $a0, $v0
/* 0A59A0 8011CF30 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 0A59A4 8011CF34 AFA80028 */  sw    $t0, 0x28($sp)
/* 0A59A8 8011CF38 24A5C4EC */  addiu $a1, $a1, %lo(func_801AC4EC_ovl7)
/* 0A59AC 8011CF3C 0C02C7B2 */  jal   assign_new_process_entry
/* 0A59B0 8011CF40 AC2E8220 */ sw $t6, %lo(D_800E8220)($at)
/* 0A59B4 8011CF44 8FA20028 */  lw    $v0, 0x28($sp)
.L8011CF48_ovl2:
/* 0A59B8 8011CF48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A59BC 8011CF4C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0A59C0 8011CF50 03E00008 */  jr    $ra
/* 0A59C4 8011CF54 00000000 */   nop   
.type func_8011CCB8, @function
.size func_8011CCB8, . - func_8011CCB8
