nonmatching func_8002D120, 0x58

glabel func_8002D120
    /* 2DD20 8002D120 3C0E8004 */  lui        $t6, %hi(n_syn)
    /* 2DD24 8002D124 8DCEFB14 */  lw         $t6, %lo(n_syn)($t6)
    /* 2DD28 8002D128 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 2DD2C 8002D12C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2DD30 8002D130 AFA40020 */  sw         $a0, 0x20($sp)
    /* 2DD34 8002D134 8DCF0040 */  lw         $t7, 0x40($t6)
    /* 2DD38 8002D138 00043C00 */  sll        $a3, $a0, 16
    /* 2DD3C 8002D13C 00073C03 */  sra        $a3, $a3, 16
    /* 2DD40 8002D140 00071880 */  sll        $v1, $a3, 2
    /* 2DD44 8002D144 01E32021 */  addu       $a0, $t7, $v1
    /* 2DD48 8002D148 24840024 */  addiu      $a0, $a0, 0x24
    /* 2DD4C 8002D14C 0C00A942 */  jal        func_8002A508
    /* 2DD50 8002D150 AFA3001C */   sw        $v1, 0x1C($sp)
    /* 2DD54 8002D154 3C188004 */  lui        $t8, %hi(n_syn)
    /* 2DD58 8002D158 8F18FB14 */  lw         $t8, %lo(n_syn)($t8)
    /* 2DD5C 8002D15C 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 2DD60 8002D160 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2DD64 8002D164 8F190040 */  lw         $t9, 0x40($t8)
    /* 2DD68 8002D168 03234021 */  addu       $t0, $t9, $v1
    /* 2DD6C 8002D16C 8D020024 */  lw         $v0, 0x24($t0)
    /* 2DD70 8002D170 03E00008 */  jr         $ra
    /* 2DD74 8002D174 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_8002D120
.size func_8002D120, . - func_8002D120
    /* 2DD78 8002D178 00000000 */  nop
    /* 2DD7C 8002D17C 00000000 */  nop
