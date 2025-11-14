glabel func_800BCEEC
/* 06513C 800BCEEC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 065140 800BCEF0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 065144 800BCEF4 3C06800F */  lui   $a2, %hi(D_800ED500) # $a2, 0x800f
/* 065148 800BCEF8 AFA40020 */  sw    $a0, 0x20($sp)
/* 06514C 800BCEFC 24C6D500 */  addiu $a2, %lo(D_800ED500) # addiu $a2, $a2, -0x2b00
/* 065150 800BCF00 0C02B255 */  jal   func_800AC954
/* 065154 800BCF04 00002825 */   move  $a1, $zero
/* 065158 800BCF08 904E0013 */  lbu   $t6, 0x13($v0)
/* 06515C 800BCF0C 3C05800B */  lui   $a1, %hi(D_800AD1A0) # $a1, 0x800b
/* 065160 800BCF10 2418000A */  li    $t8, 10
/* 065164 800BCF14 35CF0004 */  ori   $t7, $t6, 4
/* 065168 800BCF18 A04F0013 */  sb    $t7, 0x13($v0)
/* 06516C 800BCF1C AFB80010 */  sw    $t8, 0x10($sp)
/* 065170 800BCF20 8FA40020 */  lw    $a0, 0x20($sp)
/* 065174 800BCF24 24A5D1A0 */  addiu $a1, %lo(D_800AD1A0) # addiu $a1, $a1, -0x2e60
/* 065178 800BCF28 2406000A */  li    $a2, 10
/* 06517C 800BCF2C 0C00297F */  jal   func_8000A5FC
/* 065180 800BCF30 3C078000 */   lui   $a3, 0x8000
/* 065184 800BCF34 0C02BE5B */  jal   func_800AF96C
/* 065188 800BCF38 24040001 */   li    $a0, 1
/* 06518C 800BCF3C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 065190 800BCF40 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 065194 800BCF44 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 065198 800BCF48 44812000 */  mtc1  $at, $f4
/* 06519C 800BCF4C 8C590000 */  lw    $t9, ($v0)
/* 0651A0 800BCF50 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0651A4 800BCF54 3C05800F */  lui   $a1, %hi(D_800E9FE0) # $a1, 0x800f
/* 0651A8 800BCF58 00194080 */  sll   $t0, $t9, 2
/* 0651AC 800BCF5C 00280821 */  addu  $at, $at, $t0
/* 0651B0 800BCF60 E42425D0 */ swc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 0651B4 800BCF64 8C490000 */  lw    $t1, ($v0)
/* 0651B8 800BCF68 3C014336 */  li    $at, 0x43360000 # 182.000000
/* 0651BC 800BCF6C 44813000 */  mtc1  $at, $f6
/* 0651C0 800BCF70 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0651C4 800BCF74 00095080 */  sll   $t2, $t1, 2
/* 0651C8 800BCF78 002A0821 */  addu  $at, $at, $t2
/* 0651CC 800BCF7C E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 0651D0 800BCF80 8C4B0000 */  lw    $t3, ($v0)
/* 0651D4 800BCF84 24A59FE0 */  addiu $a1, %lo(D_800E9FE0) # addiu $a1, $a1, -0x6020
/* 0651D8 800BCF88 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 0651DC 800BCF8C 000B6080 */  sll   $t4, $t3, 2
/* 0651E0 800BCF90 00AC6821 */  addu  $t5, $a1, $t4
/* 0651E4 800BCF94 ADA00000 */  sw    $zero, ($t5)
/* 0651E8 800BCF98 8C430000 */  lw    $v1, ($v0)
/* 0651EC 800BCF9C 00031880 */  sll   $v1, $v1, 2
/* 0651F0 800BCFA0 00A37021 */  addu  $t6, $a1, $v1
/* 0651F4 800BCFA4 8DC40000 */  lw    $a0, ($t6)
/* 0651F8 800BCFA8 00230821 */  addu  $at, $at, $v1
/* 0651FC 800BCFAC AC249AA0 */ sw $a0, %lo(D_800E9AA0)($at)
/* 065200 800BCFB0 8C4F0000 */  lw    $t7, ($v0)
/* 065204 800BCFB4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 065208 800BCFB8 000FC080 */  sll   $t8, $t7, 2
/* 06520C 800BCFBC 00380821 */  addu  $at, $at, $t8
/* 065210 800BCFC0 0C02BE85 */  jal   func_800AFA14
/* 065214 800BCFC4 AC2498E0 */ sw $a0, %lo(D_800E98E0)($at)
/* 065218 800BCFC8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 06521C 800BCFCC 27BD0020 */  addiu $sp, $sp, 0x20
/* 065220 800BCFD0 03E00008 */  jr    $ra
/* 065224 800BCFD4 00000000 */   nop   
.type func_800BCEEC, @function
.size func_800BCEEC, . - func_800BCEEC
