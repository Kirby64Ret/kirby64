nonmatching n_alSavePull, 0x4C

glabel n_alSavePull
    /* 2A5AC 800299AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2A5B0 800299B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2A5B4 800299B4 0C00A64E */  jal        n_alMainBusPull
    /* 2A5B8 800299B8 00000000 */   nop
    /* 2A5BC 800299BC 3C0E0D00 */  lui        $t6, (0xD000000 >> 16)
    /* 2A5C0 800299C0 3C0F062E */  lui        $t7, (0x62E0000 >> 16)
    /* 2A5C4 800299C4 AC4F0008 */  sw         $t7, 0x8($v0)
    /* 2A5C8 800299C8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 2A5CC 800299CC 3C188004 */  lui        $t8, %hi(n_syn)
    /* 2A5D0 800299D0 8F18FB14 */  lw         $t8, %lo(n_syn)($t8)
    /* 2A5D4 800299D4 24420010 */  addiu      $v0, $v0, 0x10
    /* 2A5D8 800299D8 8F190054 */  lw         $t9, 0x54($t8)
    /* 2A5DC 800299DC AC59FFFC */  sw         $t9, -0x4($v0)
    /* 2A5E0 800299E0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2A5E4 800299E4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2A5E8 800299E8 03E00008 */  jr         $ra
    /* 2A5EC 800299EC 00000000 */   nop
    /* 2A5F0 800299F0 03E00008 */  jr         $ra
    /* 2A5F4 800299F4 00000000 */   nop
endlabel n_alSavePull
.size n_alSavePull, . - n_alSavePull
