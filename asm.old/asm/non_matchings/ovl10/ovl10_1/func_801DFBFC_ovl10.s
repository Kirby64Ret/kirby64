glabel func_801DFBFC_ovl10
/* 1D096C 801DFBFC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D0970 801DFC00 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D0974 801DFC04 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D0978 801DFC08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D097C 801DFC0C 8C4E0000 */  lw    $t6, ($v0)
/* 1D0980 801DFC10 3C18800F */  lui   $t8, %hi(D_800E9E20) # $t8, 0x800f
/* 1D0984 801DFC14 27189E20 */  addiu $t8, %lo(D_800E9E20) # addiu $t8, $t8, -0x61e0
/* 1D0988 801DFC18 000E7880 */  sll   $t7, $t6, 2
/* 1D098C 801DFC1C 01F81821 */  addu  $v1, $t7, $t8
/* 1D0990 801DFC20 8C650000 */  lw    $a1, ($v1)
/* 1D0994 801DFC24 00803825 */  move  $a3, $a0
/* 1D0998 801DFC28 3C04800F */  lui   $a0, %hi(D_800EA8A0) # $a0, 0x800f
/* 1D099C 801DFC2C 28A60079 */  slti  $a2, $a1, 0x79
/* 1D09A0 801DFC30 38C60001 */  xori  $a2, $a2, 1
/* 1D09A4 801DFC34 24B90001 */  addiu $t9, $a1, 1
/* 1D09A8 801DFC38 10C00014 */  beqz  $a2, .L801DFC8C_ovl10
/* 1D09AC 801DFC3C AC790000 */   sw    $t9, ($v1)
/* 1D09B0 801DFC40 8C490000 */  lw    $t1, ($v0)
/* 1D09B4 801DFC44 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D09B8 801DFC48 240803E8 */  li    $t0, 1000
/* 1D09BC 801DFC4C 00095080 */  sll   $t2, $t1, 2
/* 1D09C0 801DFC50 002A0821 */  addu  $at, $at, $t2
/* 1D09C4 801DFC54 AC28A520 */ sw $t0, %lo(D_800EA520)($at)
/* 1D09C8 801DFC58 8C4B0000 */  lw    $t3, ($v0)
/* 1D09CC 801DFC5C 44802000 */  mtc1  $zero, $f4
/* 1D09D0 801DFC60 2484A8A0 */  addiu $a0, %lo(D_800EA8A0) # addiu $a0, $a0, -0x5760
/* 1D09D4 801DFC64 000B6080 */  sll   $t4, $t3, 2
/* 1D09D8 801DFC68 008C6821 */  addu  $t5, $a0, $t4
/* 1D09DC 801DFC6C E5A40000 */  swc1  $f4, ($t5)
/* 1D09E0 801DFC70 8C430000 */  lw    $v1, ($v0)
/* 1D09E4 801DFC74 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1D09E8 801DFC78 00031880 */  sll   $v1, $v1, 2
/* 1D09EC 801DFC7C 00837021 */  addu  $t6, $a0, $v1
/* 1D09F0 801DFC80 C5C60000 */  lwc1  $f6, ($t6)
/* 1D09F4 801DFC84 00230821 */  addu  $at, $at, $v1
/* 1D09F8 801DFC88 E426A6E0 */ swc1 $f6, %lo(D_800EA6E0)($at)
.L801DFC8C_ovl10:
/* 1D09FC 801DFC8C 8C4F0000 */  lw    $t7, ($v0)
/* 1D0A00 801DFC90 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D0A04 801DFC94 00E02025 */  move  $a0, $a3
/* 1D0A08 801DFC98 000FC080 */  sll   $t8, $t7, 2
/* 1D0A0C 801DFC9C 00380821 */  addu  $at, $at, $t8
/* 1D0A10 801DFCA0 0C06835D */  jal   func_801A0D74_ovl10
/* 1D0A14 801DFCA4 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D0A18 801DFCA8 0C078A32 */  jal   func_801E28C8_ovl10
/* 1D0A1C 801DFCAC 00002025 */   move  $a0, $zero
/* 1D0A20 801DFCB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D0A24 801DFCB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D0A28 801DFCB8 03E00008 */  jr    $ra
/* 1D0A2C 801DFCBC 00000000 */   nop   
.type func_801DFBFC_ovl10, @function
.size func_801DFBFC_ovl10, . - func_801DFBFC_ovl10
