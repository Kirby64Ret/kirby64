glabel func_801EA048_ovl10
/* 1DADB8 801EA048 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DADBC 801EA04C AFB00014 */  sw    $s0, 0x14($sp)
/* 1DADC0 801EA050 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1DADC4 801EA054 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1DADC8 801EA058 8E020000 */  lw    $v0, ($s0)
/* 1DADCC 801EA05C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DADD0 801EA060 AFB10018 */  sw    $s1, 0x18($sp)
/* 1DADD4 801EA064 AFA40020 */  sw    $a0, 0x20($sp)
/* 1DADD8 801EA068 8C4E0000 */  lw    $t6, ($v0)
/* 1DADDC 801EA06C 3C01800F */ lui $at, %hi(D_800E98E0)
/* 1DADE0 801EA070 24180001 */  li    $t8, 1
/* 1DADE4 801EA074 000E7880 */  sll   $t7, $t6, 2
/* 1DADE8 801EA078 002F0821 */  addu  $at, $at, $t7
/* 1DADEC 801EA07C AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 1DADF0 801EA080 8C590000 */  lw    $t9, ($v0)
/* 1DADF4 801EA084 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DADF8 801EA088 3C11800F */  lui   $s1, %hi(D_800E9E20) # $s1, 0x800f
/* 1DADFC 801EA08C 00194080 */  sll   $t0, $t9, 2
/* 1DAE00 801EA090 00280821 */  addu  $at, $at, $t0
/* 1DAE04 801EA094 AC389C60 */ sw $t8, %lo(D_800E9C60)($at)
/* 1DAE08 801EA098 8C490000 */  lw    $t1, ($v0)
/* 1DAE0C 801EA09C 26319E20 */  addiu $s1, %lo(D_800E9E20) # addiu $s1, $s1, -0x61e0
/* 1DAE10 801EA0A0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DAE14 801EA0A4 00095080 */  sll   $t2, $t1, 2
/* 1DAE18 801EA0A8 022A5821 */  addu  $t3, $s1, $t2
/* 1DAE1C 801EA0AC AD600000 */  sw    $zero, ($t3)
/* 1DAE20 801EA0B0 8C4D0000 */  lw    $t5, ($v0)
/* 1DAE24 801EA0B4 240C0004 */  li    $t4, 4
/* 1DAE28 801EA0B8 000D7080 */  sll   $t6, $t5, 2
/* 1DAE2C 801EA0BC 002E0821 */  addu  $at, $at, $t6
/* 1DAE30 801EA0C0 0C07A7B3 */  jal   func_801E9ECC_ovl10
/* 1DAE34 801EA0C4 AC2CDFD0 */ sw $t4, %lo(D_800DDFD0)($at)
/* 1DAE38 801EA0C8 8E0F0000 */  lw    $t7, ($s0)
/* 1DAE3C 801EA0CC 8DF90000 */  lw    $t9, ($t7)
/* 1DAE40 801EA0D0 0019C080 */  sll   $t8, $t9, 2
/* 1DAE44 801EA0D4 02384021 */  addu  $t0, $s1, $t8
/* 1DAE48 801EA0D8 8D090000 */  lw    $t1, ($t0)
/* 1DAE4C 801EA0DC 1520000A */  bnez  $t1, .L801EA108_ovl10
/* 1DAE50 801EA0E0 00000000 */   nop   
.L801EA0E4_ovl10:
/* 1DAE54 801EA0E4 0C002DAF */  jal   finish_current_thread
/* 1DAE58 801EA0E8 24040001 */   li    $a0, 1
/* 1DAE5C 801EA0EC 8E0A0000 */  lw    $t2, ($s0)
/* 1DAE60 801EA0F0 8D4B0000 */  lw    $t3, ($t2)
/* 1DAE64 801EA0F4 000B6880 */  sll   $t5, $t3, 2
/* 1DAE68 801EA0F8 022D6021 */  addu  $t4, $s1, $t5
/* 1DAE6C 801EA0FC 8D8E0000 */  lw    $t6, ($t4)
/* 1DAE70 801EA100 11C0FFF8 */  beqz  $t6, .L801EA0E4_ovl10
/* 1DAE74 801EA104 00000000 */   nop   
.L801EA108_ovl10:
/* 1DAE78 801EA108 0C02CD48 */  jal   func_800B3520
/* 1DAE7C 801EA10C 00000000 */   nop   
/* 1DAE80 801EA110 8E190000 */  lw    $t9, ($s0)
/* 1DAE84 801EA114 240F0001 */  li    $t7, 1
/* 1DAE88 801EA118 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1DAE8C 801EA11C 8F380000 */  lw    $t8, ($t9)
/* 1DAE90 801EA120 00184080 */  sll   $t0, $t8, 2
/* 1DAE94 801EA124 02284821 */  addu  $t1, $s1, $t0
/* 1DAE98 801EA128 AD2F0000 */  sw    $t7, ($t1)
/* 1DAE9C 801EA12C C4206B10 */  lwc1  $f0, %lo(D_800D6B10)($at)
/* 1DAEA0 801EA130 0C02BB30 */  jal   func_800AECC0
/* 1DAEA4 801EA134 46000300 */   add.s $f12, $f0, $f0
/* 1DAEA8 801EA138 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1DAEAC 801EA13C C4206B10 */  lwc1  $f0, %lo(D_800D6B10)($at)
/* 1DAEB0 801EA140 0C02BB48 */  jal   func_800AED20
/* 1DAEB4 801EA144 46000300 */   add.s $f12, $f0, $f0
/* 1DAEB8 801EA148 3C040001 */  lui   $a0, (0x0001036D >> 16) # lui $a0, 1
/* 1DAEBC 801EA14C 0C02A7A9 */  jal   func_800A9EA4
/* 1DAEC0 801EA150 3484036D */   ori   $a0, (0x0001036D & 0xFFFF) # ori $a0, $a0, 0x36d
/* 1DAEC4 801EA154 3C040001 */  lui   $a0, (0x0001036C >> 16) # lui $a0, 1
/* 1DAEC8 801EA158 3484036C */  ori   $a0, (0x0001036C & 0xFFFF) # ori $a0, $a0, 0x36c
/* 1DAECC 801EA15C 0C02AA19 */  jal   func_800AA864
/* 1DAED0 801EA160 24050003 */   li    $a1, 3
/* 1DAED4 801EA164 8E0B0000 */  lw    $t3, ($s0)
/* 1DAED8 801EA168 240A0002 */  li    $t2, 2
/* 1DAEDC 801EA16C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1DAEE0 801EA170 8D6D0000 */  lw    $t5, ($t3)
/* 1DAEE4 801EA174 000D6080 */  sll   $t4, $t5, 2
/* 1DAEE8 801EA178 022C7021 */  addu  $t6, $s1, $t4
/* 1DAEEC 801EA17C ADCA0000 */  sw    $t2, ($t6)
/* 1DAEF0 801EA180 0C02BB30 */  jal   func_800AECC0
/* 1DAEF4 801EA184 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1DAEF8 801EA188 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1DAEFC 801EA18C 0C02BB48 */  jal   func_800AED20
/* 1DAF00 801EA190 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1DAF04 801EA194 0C029D9E */  jal   play_sound
/* 1DAF08 801EA198 240401D3 */   li    $a0, 467
/* 1DAF0C 801EA19C 0C07A8D9 */  jal   func_801EA364_ovl10
/* 1DAF10 801EA1A0 00000000 */   nop   
/* 1DAF14 801EA1A4 0C002DAF */  jal   finish_current_thread
/* 1DAF18 801EA1A8 24040096 */   li    $a0, 150
/* 1DAF1C 801EA1AC 0C02CD48 */  jal   func_800B3520
/* 1DAF20 801EA1B0 00000000 */   nop   
/* 1DAF24 801EA1B4 8E180000 */  lw    $t8, ($s0)
/* 1DAF28 801EA1B8 24190003 */  li    $t9, 3
/* 1DAF2C 801EA1BC 8F080000 */  lw    $t0, ($t8)
/* 1DAF30 801EA1C0 00087880 */  sll   $t7, $t0, 2
/* 1DAF34 801EA1C4 022F4821 */  addu  $t1, $s1, $t7
/* 1DAF38 801EA1C8 0C02BE85 */  jal   func_800AFA14
/* 1DAF3C 801EA1CC AD390000 */   sw    $t9, ($t1)
/* 1DAF40 801EA1D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DAF44 801EA1D4 8FB00014 */  lw    $s0, 0x14($sp)
/* 1DAF48 801EA1D8 8FB10018 */  lw    $s1, 0x18($sp)
/* 1DAF4C 801EA1DC 03E00008 */  jr    $ra
/* 1DAF50 801EA1E0 27BD0020 */   addiu $sp, $sp, 0x20
.type func_801EA048_ovl10, @function
.size func_801EA048_ovl10, . - func_801EA048_ovl10
