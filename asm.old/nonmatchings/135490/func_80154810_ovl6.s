glabel func_80154810_ovl6
/* 138BA0 80154810 3C0E8016 */  lui        $t6, %hi(gFrameBuffers + 0xC)
/* 138BA4 80154814 8DCEA684 */  lw         $t6, %lo(gFrameBuffers + 0xC)($t6)
/* 138BA8 80154818 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 138BAC 8015481C AFBF0014 */  sw         $ra, 0x14($sp)
/* 138BB0 80154820 55C0000A */  bnel       $t6, $zero, .L8015484C_ovl6
/* 138BB4 80154824 8FBF0014 */   lw        $ra, 0x14($sp)
/* 138BB8 80154828 8C82004C */  lw         $v0, 0x4C($a0)
/* 138BBC 8015482C 00002025 */  or         $a0, $zero, $zero
/* 138BC0 80154830 904F0013 */  lbu        $t7, 0x13($v0)
/* 138BC4 80154834 35F80008 */  ori        $t8, $t7, 0x8
/* 138BC8 80154838 0C00236A */  jal        func_80008DA8
/* 138BCC 8015483C A0580013 */   sb        $t8, 0x13($v0)
/* 138BD0 80154840 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x10)
/* 138BD4 80154844 AC20A688 */  sw         $zero, %lo(gFrameBuffers + 0x10)($at)
/* 138BD8 80154848 8FBF0014 */  lw         $ra, 0x14($sp)
.L8015484C_ovl6:
/* 138BDC 8015484C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 138BE0 80154850 03E00008 */  jr         $ra
/* 138BE4 80154854 00000000 */   nop
