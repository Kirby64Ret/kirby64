glabel func_80153DC8_ovl6
/* 138158 80153DC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13815C 80153DCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 138160 80153DD0 0C054E4B */  jal        func_8015392C_ovl6
/* 138164 80153DD4 AFA40018 */   sw        $a0, 0x18($sp)
.L80153DD8_ovl4:
/* 138168 80153DD8 8FAE0018 */  lw         $t6, 0x18($sp)
/* 13816C 80153DDC 3C018016 */  lui        $at, %hi(D_8015A55C_ovl6)
/* 138170 80153DE0 C424A55C */  lwc1       $f4, %lo(D_8015A55C_ovl6)($at)
/* 138174 80153DE4 8DCF003C */  lw         $t7, 0x3C($t6)
/* 138178 80153DE8 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x1C)
/* 13817C 80153DEC 24190001 */  addiu      $t9, $zero, 0x1
/* 138180 80153DF0 8DF80080 */  lw         $t8, 0x80($t7)
.L80153DF4_ovl3:
/* 138184 80153DF4 C7060098 */  lwc1       $f6, 0x98($t8)
/* 138188 80153DF8 46062032 */  c.eq.s     $f4, $f6
/* 13818C 80153DFC 00000000 */  nop
/* 138190 80153E00 45020003 */  bc1fl      .L80153E10_ovl6
.L80153E04_ovl4:
/* 138194 80153E04 8FBF0014 */   lw        $ra, 0x14($sp)
/* 138198 80153E08 AC39A694 */  sw         $t9, %lo(gFrameBuffers + 0x1C)($at)
/* 13819C 80153E0C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80153E10_ovl6:
/* 1381A0 80153E10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1381A4 80153E14 03E00008 */  jr         $ra
/* 1381A8 80153E18 00000000 */   nop
