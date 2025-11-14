glabel func_801DCF70_ovl11
/* 1E7830 801DCF70 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E7834 801DCF74 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1E7838 801DCF78 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E783C 801DCF7C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E7840 801DCF80 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E7844 801DCF84 8CC20000 */  lw    $v0, ($a2)
/* 1E7848 801DCF88 3C05800F */  lui   $a1, %hi(D_800E9E20) # $a1, 0x800f
/* 1E784C 801DCF8C 24A59E20 */  addiu $a1, %lo(D_800E9E20) # addiu $a1, $a1, -0x61e0
/* 1E7850 801DCF90 00021080 */  sll   $v0, $v0, 2
/* 1E7854 801DCF94 00A27021 */  addu  $t6, $a1, $v0
/* 1E7858 801DCF98 8DC30000 */  lw    $v1, ($t6)
/* 1E785C 801DCF9C 24070004 */  li    $a3, 4
/* 1E7860 801DCFA0 50600041 */  beql  $v1, $zero, .L801DD0A8_ovl11
/* 1E7864 801DCFA4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E7868 801DCFA8 14E30012 */  bne   $a3, $v1, .L801DCFF4_ovl11
/* 1E786C 801DCFAC 3C04800F */ lui $a0, %hi(D_800E9C60)
/* 1E7870 801DCFB0 3C0F800F */ lui $t7, %hi(D_800E9AA0)
/* 1E7874 801DCFB4 01E27821 */  addu  $t7, $t7, $v0
/* 1E7878 801DCFB8 8DEF9AA0 */ lw $t7, %lo(D_800E9AA0)($t7)
/* 1E787C 801DCFBC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E7880 801DCFC0 00220821 */  addu  $at, $at, $v0
/* 1E7884 801DCFC4 14EF0037 */  bne   $a3, $t7, .L801DD0A4_ovl11
/* 1E7888 801DCFC8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E788C 801DCFCC AC27DC50 */ sw $a3, %lo(gEntityVtableIndexArray)($at)
/* 1E7890 801DCFD0 8CD80000 */  lw    $t8, ($a2)
/* 1E7894 801DCFD4 3C05801E */  lui   $a1, %hi(D_801DC258) # $a1, 0x801e
/* 1E7898 801DCFD8 24A5C258 */  addiu $a1, %lo(D_801DC258) # addiu $a1, $a1, -0x3da8
/* 1E789C 801DCFDC 0018C880 */  sll   $t9, $t8, 2
/* 1E78A0 801DCFE0 00992021 */  addu  $a0, $a0, $t9
/* 1E78A4 801DCFE4 0C02C7B2 */  jal   assign_new_process_entry
/* 1E78A8 801DCFE8 8C84E510 */ lw $a0, %lo(D_800EE510)($a0)
/* 1E78AC 801DCFEC 1000002E */  b     .L801DD0A8_ovl11
/* 1E78B0 801DCFF0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DCFF4_ovl11:
/* 1E78B4 801DCFF4 24849C60 */  addiu $a0, $a0, %lo(D_800E9C60)
/* 1E78B8 801DCFF8 00821821 */  addu  $v1, $a0, $v0
/* 1E78BC 801DCFFC 8C680000 */  lw    $t0, ($v1)
/* 1E78C0 801DD000 2509FFFF */  addiu $t1, $t0, -1
/* 1E78C4 801DD004 AC690000 */  sw    $t1, ($v1)
/* 1E78C8 801DD008 8CC20000 */  lw    $v0, ($a2)
/* 1E78CC 801DD00C 00021080 */  sll   $v0, $v0, 2
/* 1E78D0 801DD010 00825021 */  addu  $t2, $a0, $v0
/* 1E78D4 801DD014 8D4B0000 */  lw    $t3, ($t2)
/* 1E78D8 801DD018 00A26021 */  addu  $t4, $a1, $v0
/* 1E78DC 801DD01C 55600022 */  bnezl $t3, .L801DD0A8_ovl11
/* 1E78E0 801DD020 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E78E4 801DD024 8D8D0000 */  lw    $t5, ($t4)
/* 1E78E8 801DD028 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1E78EC 801DD02C 00220821 */  addu  $at, $at, $v0
/* 1E78F0 801DD030 448D3000 */  mtc1  $t5, $f6
/* 1E78F4 801DD034 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1E78F8 801DD038 3C01801E */  lui   $at, %hi(D_801E0C24) # $at, 0x801e
/* 1E78FC 801DD03C 46803220 */  cvt.s.w $f8, $f6
/* 1E7900 801DD040 C4300C24 */  lwc1  $f16, %lo(D_801E0C24)($at)
/* 1E7904 801DD044 3C01800F */ lui $at, %hi(D_800EAA60)
/* 1E7908 801DD048 00220821 */  addu  $at, $at, $v0
/* 1E790C 801DD04C 46082282 */  mul.s $f10, $f4, $f8
/* 1E7910 801DD050 00000000 */  nop   
/* 1E7914 801DD054 46105482 */  mul.s $f18, $f10, $f16
/* 1E7918 801DD058 0C077363 */  jal   func_801DCD8C_ovl11
/* 1E791C 801DD05C E432AA60 */ swc1 $f18, %lo(D_800EAA60)($at)
/* 1E7920 801DD060 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E7924 801DD064 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1E7928 801DD068 3C18800F */  lui   $t8, %hi(D_800E9E20) # $t8, 0x800f
/* 1E792C 801DD06C 27189E20 */  addiu $t8, %lo(D_800E9E20) # addiu $t8, $t8, -0x61e0
/* 1E7930 801DD070 8CCE0000 */  lw    $t6, ($a2)
/* 1E7934 801DD074 3C04800F */  lui   $a0, %hi(D_800E9C60) # $a0, 0x800f
/* 1E7938 801DD078 24849C60 */  addiu $a0, %lo(D_800E9C60) # addiu $a0, $a0, -0x63a0
/* 1E793C 801DD07C 000E7880 */  sll   $t7, $t6, 2
/* 1E7940 801DD080 01F81021 */  addu  $v0, $t7, $t8
/* 1E7944 801DD084 8C590000 */  lw    $t9, ($v0)
/* 1E7948 801DD088 2409000A */  li    $t1, 10
/* 1E794C 801DD08C 27280001 */  addiu $t0, $t9, 1
/* 1E7950 801DD090 AC480000 */  sw    $t0, ($v0)
/* 1E7954 801DD094 8CCA0000 */  lw    $t2, ($a2)
/* 1E7958 801DD098 000A5880 */  sll   $t3, $t2, 2
/* 1E795C 801DD09C 008B6021 */  addu  $t4, $a0, $t3
/* 1E7960 801DD0A0 AD890000 */  sw    $t1, ($t4)
.L801DD0A4_ovl11:
/* 1E7964 801DD0A4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DD0A8_ovl11:
/* 1E7968 801DD0A8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E796C 801DD0AC 03E00008 */  jr    $ra
/* 1E7970 801DD0B0 00000000 */   nop   
.type func_801DCF70_ovl11, @function
.size func_801DCF70_ovl11, . - func_801DCF70_ovl11
