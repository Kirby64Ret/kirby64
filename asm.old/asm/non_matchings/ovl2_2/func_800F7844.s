glabel func_800F7844
/* 0802B4 800F7844 3C02800C */  lui   $v0, %hi(D_800BE4FC) # $v0, 0x800c
/* 0802B8 800F7848 8C42E4FC */  lw    $v0, %lo(D_800BE4FC)($v0)
/* 0802BC 800F784C 3C01800C */  lui   $at, 0x800c
/* 0802C0 800F7850 10400009 */  beqz  $v0, .L800F7878_ovl2
/* 0802C4 800F7854 00000000 */   nop   
/* 0802C8 800F7858 24010001 */  li    $at, 1
/* 0802CC 800F785C 1041000A */  beq   $v0, $at, .L800F7888_ovl2
/* 0802D0 800F7860 3C0E800C */   lui   $t6, 0x800c
/* 0802D4 800F7864 24010002 */  li    $at, 2
/* 0802D8 800F7868 1041000D */  beq   $v0, $at, .L800F78A0_ovl2
/* 0802DC 800F786C 3C0F800C */   lui   $t7, 0x800c
/* 0802E0 800F7870 03E00008 */  jr    $ra
/* 0802E4 800F7874 00000000 */   nop   
.type func_800F7844, @function

.L800F7878_ovl2:
/* 0802E8 800F7878 AC20E508 */  sw    $zero, -0x1af8($at)
/* 0802EC 800F787C 3C01800C */  lui   $at, 0x800c
/* 0802F0 800F7880 03E00008 */  jr    $ra
/* 0802F4 800F7884 AC20E50C */   sw    $zero, -0x1af4($at)
.type func_800F7844, @function

.L800F7888_ovl2:
/* 0802F8 800F7888 8DCEE534 */  lw    $t6, -0x1acc($t6)
/* 0802FC 800F788C 3C01800C */  lui   $at, %hi(D_800BE508) # $at, 0x800c
/* 080300 800F7890 AC2EE508 */  sw    $t6, %lo(D_800BE508)($at)
/* 080304 800F7894 3C01800C */  lui   $at, 0x800c
/* 080308 800F7898 03E00008 */  jr    $ra
/* 08030C 800F789C AC20E50C */   sw    $zero, -0x1af4($at)
.type func_800F7844, @function

.L800F78A0_ovl2:
/* 080310 800F78A0 8DEFE52C */  lw    $t7, -0x1ad4($t7)
/* 080314 800F78A4 3C18800C */  lui   $t8, %hi(D_800BE530) # $t8, 0x800c
/* 080318 800F78A8 8F18E530 */  lw    $t8, %lo(D_800BE530)($t8)
/* 08031C 800F78AC 3C01800C */  lui   $at, %hi(D_800BE500) # $at, 0x800c
/* 080320 800F78B0 3C19800C */  lui   $t9, %hi(D_800BE534) # $t9, 0x800c
/* 080324 800F78B4 AC2FE500 */  sw    $t7, %lo(D_800BE500)($at)
/* 080328 800F78B8 8F39E534 */  lw    $t9, %lo(D_800BE534)($t9)
/* 08032C 800F78BC 3C01800C */  lui   $at, %hi(D_800BE504) # $at, 0x800c
/* 080330 800F78C0 3C08800C */  lui   $t0, %hi(D_800BE538) # $t0, 0x800c
/* 080334 800F78C4 AC38E504 */  sw    $t8, %lo(D_800BE504)($at)
/* 080338 800F78C8 8D08E538 */  lw    $t0, %lo(D_800BE538)($t0)
/* 08033C 800F78CC 3C01800C */  lui   $at, %hi(D_800BE508) # $at, 0x800c
/* 080340 800F78D0 AC39E508 */  sw    $t9, %lo(D_800BE508)($at)
/* 080344 800F78D4 3C01800C */  lui   $at, %hi(D_800BE50C) # $at, 0x800c
/* 080348 800F78D8 AC28E50C */  sw    $t0, %lo(D_800BE50C)($at)
/* 08034C 800F78DC 03E00008 */  jr    $ra
/* 080350 800F78E0 00000000 */   nop   
.type func_800F7844, @function
.size func_800F7844, . - func_800F7844
