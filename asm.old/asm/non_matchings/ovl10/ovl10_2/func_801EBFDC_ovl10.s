glabel func_801EBFDC_ovl10
/* 1DCD4C 801EBFDC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1DCD50 801EBFE0 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1DCD54 801EBFE4 8D020000 */  lw    $v0, ($t0)
/* 1DCD58 801EBFE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DCD5C 801EBFEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DCD60 801EBFF0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DCD64 801EBFF4 8C430000 */  lw    $v1, ($v0)
/* 1DCD68 801EBFF8 3C0E801E */  lui   $t6, %hi(func_801DB1E0) # $t6, 0x801e
/* 1DCD6C 801EBFFC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DCD70 801EC000 00031880 */  sll   $v1, $v1, 2
/* 1DCD74 801EC004 00230821 */  addu  $at, $at, $v1
/* 1DCD78 801EC008 25CEB1E0 */  addiu $t6, %lo(func_801DB1E0) # addiu $t6, $t6, -0x4e20
/* 1DCD7C 801EC00C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DCD80 801EC010 8C580000 */  lw    $t8, ($v0)
/* 1DCD84 801EC014 3C01800E */ lui $at, %hi(D_800DF150)
/* 1DCD88 801EC018 3C0F801F */  lui   $t7, %hi(D_801EC120) # $t7, 0x801f
/* 1DCD8C 801EC01C 0018C880 */  sll   $t9, $t8, 2
/* 1DCD90 801EC020 00390821 */  addu  $at, $at, $t9
/* 1DCD94 801EC024 25EFC120 */  addiu $t7, %lo(D_801EC120) # addiu $t7, $t7, -0x3ee0
/* 1DCD98 801EC028 AC2FF150 */ sw $t7, %lo(D_800DF150)($at)
/* 1DCD9C 801EC02C 8C490000 */  lw    $t1, ($v0)
/* 1DCDA0 801EC030 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DCDA4 801EC034 3C07800E */ lui $a3, %hi(D_800E1B50)
/* 1DCDA8 801EC038 00095080 */  sll   $t2, $t1, 2
/* 1DCDAC 801EC03C 002A0821 */  addu  $at, $at, $t2
/* 1DCDB0 801EC040 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DCDB4 801EC044 8C4B0000 */  lw    $t3, ($v0)
/* 1DCDB8 801EC048 00E33821 */  addu  $a3, $a3, $v1
/* 1DCDBC 801EC04C 8CE71B50 */ lw $a3, %lo(D_800E1B50)($a3)
/* 1DCDC0 801EC050 3C01800F */ lui $at, %hi(D_800E9720)
/* 1DCDC4 801EC054 000B6080 */  sll   $t4, $t3, 2
/* 1DCDC8 801EC058 002C0821 */  addu  $at, $at, $t4
/* 1DCDCC 801EC05C 3C0D801F */  lui   $t5, %hi(D_801F41FC_ovl10) # $t5, 0x801f
/* 1DCDD0 801EC060 AC209720 */ sw $zero, %lo(D_800E9720)($at)
/* 1DCDD4 801EC064 25AD41FC */  addiu $t5, %lo(D_801F41FC_ovl10) # addiu $t5, $t5, 0x41fc
/* 1DCDD8 801EC068 ACED0098 */  sw    $t5, 0x98($a3)
/* 1DCDDC 801EC06C 8D0E0000 */  lw    $t6, ($t0)
/* 1DCDE0 801EC070 3C01800F */ lui $at, %hi(D_800E8920)
/* 1DCDE4 801EC074 3C040001 */  lui   $a0, (0x00010099 >> 16) # lui $a0, 1
/* 1DCDE8 801EC078 8DD80000 */  lw    $t8, ($t6)
/* 1DCDEC 801EC07C 34840099 */  ori   $a0, (0x00010099 & 0xFFFF) # ori $a0, $a0, 0x99
/* 1DCDF0 801EC080 24050023 */  li    $a1, 35
/* 1DCDF4 801EC084 00187880 */  sll   $t7, $t8, 2
/* 1DCDF8 801EC088 002F0821 */  addu  $at, $at, $t7
/* 1DCDFC 801EC08C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1DCE00 801EC090 0C02A619 */  jal   func_800A9864
/* 1DCE04 801EC094 24060010 */   li    $a2, 16
/* 1DCE08 801EC098 3C040001 */  lui   $a0, (0x00010548 >> 16) # lui $a0, 1
/* 1DCE0C 801EC09C 0C02A7A9 */  jal   func_800A9EA4
/* 1DCE10 801EC0A0 34840548 */   ori   $a0, (0x00010548 & 0xFFFF) # ori $a0, $a0, 0x548
/* 1DCE14 801EC0A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DCE18 801EC0A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DCE1C 801EC0AC 44802000 */  mtc1  $zero, $f4
/* 1DCE20 801EC0B0 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DCE24 801EC0B4 8C590000 */  lw    $t9, ($v0)
/* 1DCE28 801EC0B8 00194880 */  sll   $t1, $t9, 2
/* 1DCE2C 801EC0BC 00290821 */  addu  $at, $at, $t1
/* 1DCE30 801EC0C0 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 1DCE34 801EC0C4 8C4A0000 */  lw    $t2, ($v0)
/* 1DCE38 801EC0C8 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1DCE3C 801EC0CC 44813000 */  mtc1  $at, $f6
/* 1DCE40 801EC0D0 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DCE44 801EC0D4 000A5880 */  sll   $t3, $t2, 2
/* 1DCE48 801EC0D8 002B0821 */  addu  $at, $at, $t3
/* 1DCE4C 801EC0DC E4263750 */ swc1 $f6, %lo(D_800E3750)($at)
/* 1DCE50 801EC0E0 8C430000 */  lw    $v1, ($v0)
/* 1DCE54 801EC0E4 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DCE58 801EC0E8 00031880 */  sll   $v1, $v1, 2
/* 1DCE5C 801EC0EC 00230821 */  addu  $at, $at, $v1
/* 1DCE60 801EC0F0 C4286A10 */ lwc1 $f8, %lo(D_800E6A10)($at)
/* 1DCE64 801EC0F4 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 1DCE68 801EC0F8 44815000 */  mtc1  $at, $f10
/* 1DCE6C 801EC0FC 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DCE70 801EC100 00230821 */  addu  $at, $at, $v1
/* 1DCE74 801EC104 460A4402 */  mul.s $f16, $f8, $f10
/* 1DCE78 801EC108 0C02BE85 */  jal   func_800AFA14
/* 1DCE7C 801EC10C E43064D0 */ swc1 $f16, %lo(D_800E64D0)($at)
/* 1DCE80 801EC110 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DCE84 801EC114 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DCE88 801EC118 03E00008 */  jr    $ra
/* 1DCE8C 801EC11C 00000000 */   nop   
.type func_801EBFDC_ovl10, @function
.size func_801EBFDC_ovl10, . - func_801EBFDC_ovl10
