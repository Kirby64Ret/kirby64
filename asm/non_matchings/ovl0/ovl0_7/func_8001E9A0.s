glabel func_8001E9A0
/* 01F5A0 8001E9A0 3C018004 */  lui   $at, %hi(D_80040CF8) # $at, 0x8004
/* 01F5A4 8001E9A4 C4200CF8 */  lwc1  $f0, %lo(D_80040CF8)($at)
/* 01F5A8 8001E9A8 AFA40000 */  sw    $a0, ($sp)
/* 01F5AC 8001E9AC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01F5B0 8001E9B0 308400FF */  andi  $a0, $a0, 0xff
/* 01F5B4 8001E9B4 44811000 */  mtc1  $at, $f2
/* 01F5B8 8001E9B8 1080000A */  beqz  $a0, .L8001E9E4_ovl0
/* 01F5BC 8001E9BC 308E0001 */   andi  $t6, $a0, 1
.L8001E9C0_ovl0:
/* 01F5C0 8001E9C0 11C00003 */  beqz  $t6, .L8001E9D0_ovl0
/* 01F5C4 8001E9C4 00801025 */   move  $v0, $a0
/* 01F5C8 8001E9C8 46001082 */  mul.s $f2, $f2, $f0
/* 01F5CC 8001E9CC 00000000 */  nop   
.L8001E9D0_ovl0:
/* 01F5D0 8001E9D0 00022042 */  srl   $a0, $v0, 1
/* 01F5D4 8001E9D4 46000002 */  mul.s $f0, $f0, $f0
/* 01F5D8 8001E9D8 308400FF */  andi  $a0, $a0, 0xff
/* 01F5DC 8001E9DC 5480FFF8 */  bnezl $a0, .L8001E9C0_ovl0
/* 01F5E0 8001E9E0 308E0001 */   andi  $t6, $a0, 1
.L8001E9E4_ovl0:
/* 01F5E4 8001E9E4 03E00008 */  jr    $ra
/* 01F5E8 8001E9E8 46001006 */   mov.s $f0, $f2
