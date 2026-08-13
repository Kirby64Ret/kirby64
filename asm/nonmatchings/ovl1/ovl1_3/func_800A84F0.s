nonmatching func_800A84F0, 0x28

glabel func_800A84F0
    /* 50740 800A84F0 3C05800D */  lui        $a1, %hi(D_800D7C10)
    /* 50744 800A84F4 24A57C10 */  addiu      $a1, $a1, %lo(D_800D7C10)
    /* 50748 800A84F8 8CA20000 */  lw         $v0, 0x0($a1)
    /* 5074C 800A84FC 3C0100FF */  lui        $at, (0xFFFFF0 >> 16)
    /* 50750 800A8500 3421FFF0 */  ori        $at, $at, (0xFFFFF0 & 0xFFFF)
    /* 50754 800A8504 248F000F */  addiu      $t7, $a0, 0xF
    /* 50758 800A8508 01E1C024 */  and        $t8, $t7, $at
    /* 5075C 800A850C 0058C821 */  addu       $t9, $v0, $t8
    /* 50760 800A8510 03E00008 */  jr         $ra
    /* 50764 800A8514 ACB90000 */   sw        $t9, 0x0($a1)
endlabel func_800A84F0
.size func_800A84F0, . - func_800A84F0
