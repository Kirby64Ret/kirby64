glabel func_802252A4_ovl18
/* 237C44 802252A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 237C48 802252A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 237C4C 802252AC 0C06835D */  jal        func_801A0D74_ovl7
/* 237C50 802252B0 00000000 */   nop
/* 237C54 802252B4 1440000B */  bnez       $v0, .L802252E4_ovl18
/* 237C58 802252B8 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 237C5C 802252BC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 237C60 802252C0 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 237C64 802252C4 3C068023 */  lui        $a2, %hi(D_8022ACA0_ovl18)
/* 237C68 802252C8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 237C6C 802252CC 24C6ACA0 */  addiu      $a2, $a2, %lo(D_8022ACA0_ovl18)
/* 237C70 802252D0 24050001 */  addiu      $a1, $zero, 0x1
/* 237C74 802252D4 000FC080 */  sll        $t8, $t7, 2
/* 237C78 802252D8 00982021 */  addu       $a0, $a0, $t8
/* 237C7C 802252DC 0C02911F */  jal        call_virtual_function
/* 237C80 802252E0 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
.L802252E4_ovl18:
/* 237C84 802252E4 0C066FA7 */  jal        func_8019BE9C_ovl7
/* 237C88 802252E8 24040006 */   addiu     $a0, $zero, 0x6
/* 237C8C 802252EC 0C087D73 */  jal        func_8021F5CC_ovl19
/* 237C90 802252F0 00000000 */   nop
/* 237C94 802252F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 237C98 802252F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 237C9C 802252FC 03E00008 */  jr         $ra
/* 237CA0 80225300 00000000 */   nop
