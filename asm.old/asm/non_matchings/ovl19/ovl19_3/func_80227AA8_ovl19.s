glabel func_80227AA8_ovl19
/* 2481B8 80227AA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2481BC 80227AAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 2481C0 80227AB0 0C04839D */  jal   func_80120E74
/* 2481C4 80227AB4 00000000 */   nop   
/* 2481C8 80227AB8 3C0E800D */  lui   $t6, %hi(D_800D6B54) # $t6, 0x800d
/* 2481CC 80227ABC 8DCE6B54 */  lw    $t6, %lo(D_800D6B54)($t6)
/* 2481D0 80227AC0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 2481D4 80227AC4 55C00013 */  bnezl $t6, .L80227B14_ovl19
/* 2481D8 80227AC8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 2481DC 80227ACC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 2481E0 80227AD0 3C01800E */ lui $at, %hi(D_800E7B20)
/* 2481E4 80227AD4 44802000 */  mtc1  $zero, $f4
/* 2481E8 80227AD8 8DE20000 */  lw    $v0, ($t7)
/* 2481EC 80227ADC 3C04800E */ lui $a0, %hi(D_800DE190)
/* 2481F0 80227AE0 3C068023 */  lui   $a2, %hi(D_8022F53C) # $a2, 0x8023
/* 2481F4 80227AE4 00021080 */  sll   $v0, $v0, 2
/* 2481F8 80227AE8 00220821 */  addu  $at, $at, $v0
/* 2481FC 80227AEC C4267B20 */ lwc1 $f6, %lo(D_800E7B20)($at)
/* 248200 80227AF0 00822021 */  addu  $a0, $a0, $v0
/* 248204 80227AF4 24C6F53C */  addiu $a2, %lo(D_8022F53C) # addiu $a2, $a2, -0xac4
/* 248208 80227AF8 46062032 */  c.eq.s $f4, $f6
/* 24820C 80227AFC 24050003 */  li    $a1, 3
/* 248210 80227B00 45030004 */  bc1tl .L80227B14_ovl19
/* 248214 80227B04 8FBF0014 */   lw    $ra, 0x14($sp)
/* 248218 80227B08 0C02911F */  jal   call_virtual_function
/* 24821C 80227B0C 8C84E190 */ lw $a0, %lo(D_800DE190)($a0)
/* 248220 80227B10 8FBF0014 */  lw    $ra, 0x14($sp)
.L80227B14_ovl19:
/* 248224 80227B14 27BD0018 */  addiu $sp, $sp, 0x18
/* 248228 80227B18 03E00008 */  jr    $ra
/* 24822C 80227B1C 00000000 */   nop   
.type func_80227AA8_ovl19, @function
.size func_80227AA8_ovl19, . - func_80227AA8_ovl19
