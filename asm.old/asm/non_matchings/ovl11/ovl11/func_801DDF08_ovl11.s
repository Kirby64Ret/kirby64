glabel func_801DDF08_ovl11
/* 1E87C8 801DDF08 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E87CC 801DDF0C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E87D0 801DDF10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1E87D4 801DDF14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E87D8 801DDF18 AFA40020 */  sw    $a0, 0x20($sp)
/* 1E87DC 801DDF1C 8C430000 */  lw    $v1, ($v0)
/* 1E87E0 801DDF20 3C0E800E */ lui $t6, %hi(D_800E1B50)
/* 1E87E4 801DDF24 3C0F801D */  lui   $t7, %hi(D_801D0E3C) # $t7, 0x801d
/* 1E87E8 801DDF28 00031880 */  sll   $v1, $v1, 2
/* 1E87EC 801DDF2C 01C37021 */  addu  $t6, $t6, $v1
/* 1E87F0 801DDF30 8DCE1B50 */ lw $t6, %lo(D_800E1B50)($t6)
/* 1E87F4 801DDF34 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1E87F8 801DDF38 00230821 */  addu  $at, $at, $v1
/* 1E87FC 801DDF3C 25EF0E3C */  addiu $t7, %lo(D_801D0E3C) # addiu $t7, $t7, 0xe3c
/* 1E8800 801DDF40 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 1E8804 801DDF44 AFAE001C */  sw    $t6, 0x1c($sp)
/* 1E8808 801DDF48 8C590000 */  lw    $t9, ($v0)
/* 1E880C 801DDF4C 3C01800E */ lui $at, %hi(D_800DF150)
/* 1E8810 801DDF50 3C18801E */  lui   $t8, %hi(D_801DE038) # $t8, 0x801e
/* 1E8814 801DDF54 00194080 */  sll   $t0, $t9, 2
/* 1E8818 801DDF58 00280821 */  addu  $at, $at, $t0
/* 1E881C 801DDF5C 2718E038 */  addiu $t8, %lo(D_801DE038) # addiu $t8, $t8, -0x1fc8
/* 1E8820 801DDF60 3C04801D */  lui   $a0, %hi(D_801D79E8) # $a0, 0x801d
/* 1E8824 801DDF64 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1E8828 801DDF68 0C066220 */  jal   func_80198880_ovl11
/* 1E882C 801DDF6C 248479E8 */   addiu $a0, %lo(D_801D79E8) # addiu $a0, $a0, 0x79e8
/* 1E8830 801DDF70 8FA9001C */  lw    $t1, 0x1c($sp)
/* 1E8834 801DDF74 0C03FC31 */  jal   func_800FF0C4
/* 1E8838 801DDF78 8D240080 */   lw    $a0, 0x80($t1)
/* 1E883C 801DDF7C 3C040001 */  lui   $a0, (0x00010068 >> 16) # lui $a0, 1
/* 1E8840 801DDF80 0C02A5D8 */  jal   func_800A9760
/* 1E8844 801DDF84 34840068 */   ori   $a0, (0x00010068 & 0xFFFF) # ori $a0, $a0, 0x68
/* 1E8848 801DDF88 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1E884C 801DDF8C 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 1E8850 801DDF90 8C6A0000 */  lw    $t2, ($v1)
/* 1E8854 801DDF94 8FAE001C */  lw    $t6, 0x1c($sp)
/* 1E8858 801DDF98 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E885C 801DDF9C 8D4B0000 */  lw    $t3, ($t2)
/* 1E8860 801DDFA0 3C0D801E */  lui   $t5, %hi(D_801DAF18) # $t5, 0x801e
/* 1E8864 801DDFA4 25ADAF18 */  addiu $t5, %lo(D_801DAF18) # addiu $t5, $t5, -0x50e8
/* 1E8868 801DDFA8 000B6080 */  sll   $t4, $t3, 2
/* 1E886C 801DDFAC 002C0821 */  addu  $at, $at, $t4
/* 1E8870 801DDFB0 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1E8874 801DDFB4 ADCD0098 */  sw    $t5, 0x98($t6)
/* 1E8878 801DDFB8 8C620000 */  lw    $v0, ($v1)
/* 1E887C 801DDFBC 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 1E8880 801DDFC0 240F006C */  li    $t7, 108
/* 1E8884 801DDFC4 8C590000 */  lw    $t9, ($v0)
/* 1E8888 801DDFC8 3C04801E */  lui   $a0, %hi(D_801DDEC0) # $a0, 0x801e
/* 1E888C 801DDFCC 2484DEC0 */  addiu $a0, %lo(D_801DDEC0) # addiu $a0, $a0, -0x2140
/* 1E8890 801DDFD0 0019C080 */  sll   $t8, $t9, 2
/* 1E8894 801DDFD4 00380821 */  addu  $at, $at, $t8
/* 1E8898 801DDFD8 AC2F7CE0 */ sw $t7, %lo(D_800E7CE0)($at)
/* 1E889C 801DDFDC 8C480000 */  lw    $t0, ($v0)
/* 1E88A0 801DDFE0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1E88A4 801DDFE4 44812000 */  mtc1  $at, $f4
/* 1E88A8 801DDFE8 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1E88AC 801DDFEC 00084880 */  sll   $t1, $t0, 2
/* 1E88B0 801DDFF0 00290821 */  addu  $at, $at, $t1
/* 1E88B4 801DDFF4 0C068354 */  jal   func_801A0D50
/* 1E88B8 801DDFF8 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1E88BC 801DDFFC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1E88C0 801DE000 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1E88C4 801DE004 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1E88C8 801DE008 3C06801E */  lui   $a2, %hi(D_801E0B9C) # $a2, 0x801e
/* 1E88CC 801DE00C 8D4B0000 */  lw    $t3, ($t2)
/* 1E88D0 801DE010 24C60B9C */  addiu $a2, %lo(D_801E0B9C) # addiu $a2, $a2, 0xb9c
/* 1E88D4 801DE014 24050005 */  li    $a1, 5
/* 1E88D8 801DE018 000B6080 */  sll   $t4, $t3, 2
/* 1E88DC 801DE01C 008C2021 */  addu  $a0, $a0, $t4
/* 1E88E0 801DE020 0C02911F */  jal   call_virtual_function
/* 1E88E4 801DE024 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1E88E8 801DE028 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E88EC 801DE02C 27BD0020 */  addiu $sp, $sp, 0x20
/* 1E88F0 801DE030 03E00008 */  jr    $ra
/* 1E88F4 801DE034 00000000 */   nop   
.type func_801DDF08_ovl11, @function
.size func_801DDF08_ovl11, . - func_801DDF08_ovl11
