glabel func_80020998
/* 021598 80020998 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 02159C 8002099C 2CA17801 */  sltiu $at, $a1, 0x7801
/* 0215A0 800209A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0215A4 800209A4 00803825 */  move  $a3, $a0
/* 0215A8 800209A8 14200002 */  bnez  $at, .L800209B4_ovl0
/* 0215AC 800209AC 00A03025 */   move  $a2, $a1
/* 0215B0 800209B0 24067800 */  li    $a2, 30720
.L800209B4_ovl0:
/* 0215B4 800209B4 00071080 */  sll   $v0, $a3, 2
/* 0215B8 800209B8 3C048009 */ lui $a0, %hi(D_80096478)
/* 0215BC 800209BC 00822021 */  addu  $a0, $a0, $v0
/* 0215C0 800209C0 00062C00 */  sll   $a1, $a2, 0x10
/* 0215C4 800209C4 00052C03 */  sra   $a1, $a1, 0x10
/* 0215C8 800209C8 8C846478 */ lw $a0, %lo(D_80096478)($a0)
/* 0215CC 800209CC AFA2001C */  sw    $v0, 0x1c($sp)
/* 0215D0 800209D0 0C00B3C0 */  jal   func_8002CF00
/* 0215D4 800209D4 AFA60024 */   sw    $a2, 0x24($sp)
/* 0215D8 800209D8 8FA60024 */  lw    $a2, 0x24($sp)
/* 0215DC 800209DC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 0215E0 800209E0 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0215E4 800209E4 44862000 */  mtc1  $a2, $f4
/* 0215E8 800209E8 04C10004 */  bgez  $a2, .L800209FC_ovl0
/* 0215EC 800209EC 468021A0 */   cvt.s.w $f6, $f4
/* 0215F0 800209F0 44814000 */  mtc1  $at, $f8
/* 0215F4 800209F4 00000000 */  nop   
/* 0215F8 800209F8 46083180 */  add.s $f6, $f6, $f8
.L800209FC_ovl0:
/* 0215FC 800209FC 3C018009 */ lui $at, %hi(D_80096494)
/* 021600 80020A00 00220821 */  addu  $at, $at, $v0
/* 021604 80020A04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 021608 80020A08 E4266494 */ swc1 $f6, %lo(D_80096494)($at)
/* 02160C 80020A0C 3C018009 */ lui $at, %hi(D_80096490)
/* 021610 80020A10 00220821 */  addu  $at, $at, $v0
/* 021614 80020A14 AC206490 */ sw $zero, %lo(D_80096490)($at)
/* 021618 80020A18 03E00008 */  jr    $ra
/* 02161C 80020A1C 27BD0020 */   addiu $sp, $sp, 0x20
.type func_80020998, @function
.size func_80020998, . - func_80020998