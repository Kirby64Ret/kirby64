glabel func_801E89D0_ovl10
/* 1D9740 801E89D0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D9744 801E89D4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D9748 801E89D8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1D974C 801E89DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9750 801E89E0 AFA40020 */  sw    $a0, 0x20($sp)
/* 1D9754 801E89E4 8DC20000 */  lw    $v0, ($t6)
/* 1D9758 801E89E8 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 1D975C 801E89EC 3C18801F */  lui   $t8, %hi(D_801E8AF8) # $t8, 0x801f
/* 1D9760 801E89F0 00021080 */  sll   $v0, $v0, 2
/* 1D9764 801E89F4 01E27821 */  addu  $t7, $t7, $v0
/* 1D9768 801E89F8 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 1D976C 801E89FC 3C01800E */ lui $at, %hi(D_800DF150)
/* 1D9770 801E8A00 00220821 */  addu  $at, $at, $v0
/* 1D9774 801E8A04 27188AF8 */  addiu $t8, %lo(D_801E8AF8) # addiu $t8, $t8, -0x7508
/* 1D9778 801E8A08 3C04801F */  lui   $a0, %hi(D_801F351C_ovl10) # $a0, 0x801f
/* 1D977C 801E8A0C AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1D9780 801E8A10 2484351C */  addiu $a0, %lo(D_801F351C_ovl10) # addiu $a0, $a0, 0x351c
/* 1D9784 801E8A14 0C066220 */  jal   func_80198880_ovl10
/* 1D9788 801E8A18 AFAF001C */   sw    $t7, 0x1c($sp)
/* 1D978C 801E8A1C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1D9790 801E8A20 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 1D9794 801E8A24 8CA30000 */  lw    $v1, ($a1)
/* 1D9798 801E8A28 3C19800E */ lui $t9, %hi(D_800D9E20)
/* 1D979C 801E8A2C 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D97A0 801E8A30 8C620000 */  lw    $v0, ($v1)
/* 1D97A4 801E8A34 8FAB001C */  lw    $t3, 0x1c($sp)
/* 1D97A8 801E8A38 3C0A801F */  lui   $t2, %hi(D_801F4100_ovl10) # $t2, 0x801f
/* 1D97AC 801E8A3C 00021080 */  sll   $v0, $v0, 2
/* 1D97B0 801E8A40 0322C821 */  addu  $t9, $t9, $v0
/* 1D97B4 801E8A44 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1D97B8 801E8A48 00220821 */  addu  $at, $at, $v0
/* 1D97BC 801E8A4C 254A4100 */  addiu $t2, %lo(D_801F4100_ovl10) # addiu $t2, $t2, 0x4100
/* 1D97C0 801E8A50 AC39A520 */ sw $t9, %lo(D_800EA520)($at)
/* 1D97C4 801E8A54 8C680000 */  lw    $t0, ($v1)
/* 1D97C8 801E8A58 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D97CC 801E8A5C 3C040001 */  lui   $a0, (0x00010061 >> 16) # lui $a0, 1
/* 1D97D0 801E8A60 00084880 */  sll   $t1, $t0, 2
/* 1D97D4 801E8A64 00290821 */  addu  $at, $at, $t1
/* 1D97D8 801E8A68 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D97DC 801E8A6C 8C620000 */  lw    $v0, ($v1)
/* 1D97E0 801E8A70 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1D97E4 801E8A74 34840061 */  ori   $a0, (0x00010061 & 0xFFFF) # ori $a0, $a0, 0x61
/* 1D97E8 801E8A78 00021080 */  sll   $v0, $v0, 2
/* 1D97EC 801E8A7C 00220821 */  addu  $at, $at, $v0
/* 1D97F0 801E8A80 C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 1D97F4 801E8A84 3C01800F */ lui $at, %hi(D_800EB160)
/* 1D97F8 801E8A88 00220821 */  addu  $at, $at, $v0
/* 1D97FC 801E8A8C E424B160 */ swc1 $f4, %lo(D_800EB160)($at)
/* 1D9800 801E8A90 AD6A0098 */  sw    $t2, 0x98($t3)
/* 1D9804 801E8A94 8CAC0000 */  lw    $t4, ($a1)
/* 1D9808 801E8A98 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D980C 801E8A9C 8D8D0000 */  lw    $t5, ($t4)
/* 1D9810 801E8AA0 000D7080 */  sll   $t6, $t5, 2
/* 1D9814 801E8AA4 002E0821 */  addu  $at, $at, $t6
/* 1D9818 801E8AA8 0C02A5D8 */  jal   func_800A9760
/* 1D981C 801E8AAC AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1D9820 801E8AB0 3C04801F */  lui   $a0, %hi(D_801E8988) # $a0, 0x801f
/* 1D9824 801E8AB4 0C068354 */  jal   func_801A0D50
/* 1D9828 801E8AB8 24848988 */   addiu $a0, %lo(D_801E8988) # addiu $a0, $a0, -0x7678
/* 1D982C 801E8ABC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1D9830 801E8AC0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1D9834 801E8AC4 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D9838 801E8AC8 3C06801F */  lui   $a2, %hi(D_801F4570_ovl10) # $a2, 0x801f
/* 1D983C 801E8ACC 8DF80000 */  lw    $t8, ($t7)
/* 1D9840 801E8AD0 24C64570 */  addiu $a2, %lo(D_801F4570_ovl10) # addiu $a2, $a2, 0x4570
/* 1D9844 801E8AD4 24050003 */  li    $a1, 3
/* 1D9848 801E8AD8 0018C880 */  sll   $t9, $t8, 2
/* 1D984C 801E8ADC 00992021 */  addu  $a0, $a0, $t9
/* 1D9850 801E8AE0 0C02911F */  jal   call_virtual_function
/* 1D9854 801E8AE4 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D9858 801E8AE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D985C 801E8AEC 27BD0020 */  addiu $sp, $sp, 0x20
/* 1D9860 801E8AF0 03E00008 */  jr    $ra
/* 1D9864 801E8AF4 00000000 */   nop   
.type func_801E89D0_ovl10, @function
.size func_801E89D0_ovl10, . - func_801E89D0_ovl10
