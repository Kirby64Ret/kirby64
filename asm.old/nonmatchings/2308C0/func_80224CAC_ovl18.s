glabel func_80224CAC_ovl18
/* 23764C 80224CAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 237650 80224CB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 237654 80224CB4 0C06835D */  jal        func_801A0D74_ovl7
/* 237658 80224CB8 00000000 */   nop
/* 23765C 80224CBC 1440000B */  bnez       $v0, .L80224CEC_ovl18
/* 237660 80224CC0 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 237664 80224CC4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 237668 80224CC8 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 23766C 80224CCC 3C068023 */  lui        $a2, %hi(D_8022AC90_ovl18)
/* 237670 80224CD0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 237674 80224CD4 24C6AC90 */  addiu      $a2, $a2, %lo(D_8022AC90_ovl18)
/* 237678 80224CD8 24050002 */  addiu      $a1, $zero, 0x2
/* 23767C 80224CDC 000FC080 */  sll        $t8, $t7, 2
/* 237680 80224CE0 00982021 */  addu       $a0, $a0, $t8
.L80224CE4_ovl19:
/* 237684 80224CE4 0C02911F */  jal        call_virtual_function
/* 237688 80224CE8 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
.L80224CEC_ovl18:
/* 23768C 80224CEC 0C087D73 */  jal        func_8021F5CC_ovl19
.L80224CF0_ovl19:
/* 237690 80224CF0 00000000 */   nop
/* 237694 80224CF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 237698 80224CF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 23769C 80224CFC 03E00008 */  jr         $ra
/* 2376A0 80224D00 00000000 */   nop
