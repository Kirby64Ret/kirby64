glabel func_800FBE1C
/* 08488C 800FBE1C 3C0E800D */  lui   $t6, %hi(D_800D799C) # $t6, 0x800d
/* 084890 800FBE20 8DCE799C */  lw    $t6, %lo(D_800D799C)($t6)
/* 084894 800FBE24 44802000 */  mtc1  $zero, $f4
/* 084898 800FBE28 3C038013 */  lui   $v1, %hi(D_801293F0) # $v1, 0x8013
/* 08489C 800FBE2C 8DC2003C */  lw    $v0, 0x3c($t6)
/* 0848A0 800FBE30 246393F0 */  addiu $v1, %lo(D_801293F0) # addiu $v1, $v1, -0x6c10
/* 0848A4 800FBE34 E4640000 */  swc1  $f4, ($v1)
/* 0848A8 800FBE38 C4660000 */  lwc1  $f6, ($v1)
/* 0848AC 800FBE3C 3C048013 */  lui   $a0, %hi(D_801293EC) # $a0, 0x8013
/* 0848B0 800FBE40 248493EC */  addiu $a0, %lo(D_801293EC) # addiu $a0, $a0, -0x6c14
/* 0848B4 800FBE44 E4860000 */  swc1  $f6, ($a0)
/* 0848B8 800FBE48 C4880000 */  lwc1  $f8, ($a0)
/* 0848BC 800FBE4C 3C058013 */  lui   $a1, %hi(D_801293E8) # $a1, 0x8013
/* 0848C0 800FBE50 24A593E8 */  addiu $a1, %lo(D_801293E8) # addiu $a1, $a1, -0x6c18
/* 0848C4 800FBE54 E4A80000 */  swc1  $f8, ($a1)
/* 0848C8 800FBE58 C4AA0000 */  lwc1  $f10, ($a1)
/* 0848CC 800FBE5C 3C068013 */  lui   $a2, %hi(D_801293E4) # $a2, 0x8013
/* 0848D0 800FBE60 24C693E4 */  addiu $a2, %lo(D_801293E4) # addiu $a2, $a2, -0x6c1c
/* 0848D4 800FBE64 E4CA0000 */  swc1  $f10, ($a2)
/* 0848D8 800FBE68 C4D00000 */  lwc1  $f16, ($a2)
/* 0848DC 800FBE6C 3C078013 */  lui   $a3, %hi(D_801293E0) # $a3, 0x8013
/* 0848E0 800FBE70 24E793E0 */  addiu $a3, %lo(D_801293E0) # addiu $a3, $a3, -0x6c20
/* 0848E4 800FBE74 E4F00000 */  swc1  $f16, ($a3)
/* 0848E8 800FBE78 C4F20000 */  lwc1  $f18, ($a3)
/* 0848EC 800FBE7C 3C018013 */  lui   $at, %hi(D_801293DC) # $at, 0x8013
/* 0848F0 800FBE80 3C0F8013 */  lui   $t7, %hi(D_80129370) # $t7, 0x8013
/* 0848F4 800FBE84 E43293DC */  swc1  $f18, %lo(D_801293DC)($at)
/* 0848F8 800FBE88 8C590048 */  lw    $t9, 0x48($v0)
/* 0848FC 800FBE8C 25EF9370 */  addiu $t7, %lo(D_80129370) # addiu $t7, $t7, -0x6c90
/* 084900 800FBE90 3C088013 */  lui   $t0, %hi(D_8012937C) # $t0, 0x8013
/* 084904 800FBE94 ADF90000 */  sw    $t9, ($t7)
/* 084908 800FBE98 8C58004C */  lw    $t8, 0x4c($v0)
/* 08490C 800FBE9C 2508937C */  addiu $t0, %lo(D_8012937C) # addiu $t0, $t0, -0x6c84
/* 084910 800FBEA0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 084914 800FBEA4 ADF80004 */  sw    $t8, 4($t7)
/* 084918 800FBEA8 8C590050 */  lw    $t9, 0x50($v0)
/* 08491C 800FBEAC 44812000 */  mtc1  $at, $f4
/* 084920 800FBEB0 3C018013 */  lui   $at, %hi(D_801293F4) # $at, 0x8013
/* 084924 800FBEB4 ADF90008 */  sw    $t9, 8($t7)
/* 084928 800FBEB8 8C4A003C */  lw    $t2, 0x3c($v0)
/* 08492C 800FBEBC 3C0C800D */  lui   $t4, %hi(D_800D7B20) # $t4, 0x800d
/* 084930 800FBEC0 258C7B20 */  addiu $t4, %lo(D_800D7B20) # addiu $t4, $t4, 0x7b20
/* 084934 800FBEC4 AD0A0000 */  sw    $t2, ($t0)
/* 084938 800FBEC8 8C490040 */  lw    $t1, 0x40($v0)
/* 08493C 800FBECC 3C0B800D */  lui   $t3, %hi(D_800D7B38) # $t3, 0x800d
/* 084940 800FBED0 256B7B38 */  addiu $t3, %lo(D_800D7B38) # addiu $t3, $t3, 0x7b38
/* 084944 800FBED4 AD090004 */  sw    $t1, 4($t0)
/* 084948 800FBED8 8C4A0044 */  lw    $t2, 0x44($v0)
/* 08494C 800FBEDC AD0A0008 */  sw    $t2, 8($t0)
/* 084950 800FBEE0 E42493F4 */  swc1  $f4, %lo(D_801293F4)($at)
/* 084954 800FBEE4 8D8D0004 */  lw    $t5, 4($t4)
/* 084958 800FBEE8 8D8E0000 */  lw    $t6, ($t4)
/* 08495C 800FBEEC AD6D0004 */  sw    $t5, 4($t3)
/* 084960 800FBEF0 AD6E0000 */  sw    $t6, ($t3)
/* 084964 800FBEF4 8D8E0008 */  lw    $t6, 8($t4)
/* 084968 800FBEF8 8D8D000C */  lw    $t5, 0xc($t4)
/* 08496C 800FBEFC AD6E0008 */  sw    $t6, 8($t3)
/* 084970 800FBF00 AD6D000C */  sw    $t5, 0xc($t3)
/* 084974 800FBF04 8D8D0014 */  lw    $t5, 0x14($t4)
/* 084978 800FBF08 8D8E0010 */  lw    $t6, 0x10($t4)
/* 08497C 800FBF0C AD6D0014 */  sw    $t5, 0x14($t3)
/* 084980 800FBF10 03E00008 */  jr    $ra
/* 084984 800FBF14 AD6E0010 */   sw    $t6, 0x10($t3)
.type func_800FBE1C, @function
.size func_800FBE1C, . - func_800FBE1C
