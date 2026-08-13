nonmatching func_8001479C, 0x2C

glabel func_8001479C
    /* 1539C 8001479C 3C028005 */  lui        $v0, %hi(D_8004ABB8)
    /* 153A0 800147A0 2442ABB8 */  addiu      $v0, $v0, %lo(D_8004ABB8)
    /* 153A4 800147A4 3C018005 */  lui        $at, %hi(D_8004ABA0)
    /* 153A8 800147A8 AC22ABA0 */  sw         $v0, %lo(D_8004ABA0)($at)
    /* 153AC 800147AC 3C018005 */  lui        $at, %hi(D_8004ABA8)
    /* 153B0 800147B0 AC22ABA8 */  sw         $v0, %lo(D_8004ABA8)($at)
    /* 153B4 800147B4 AC22ABAC */  sw         $v0, %lo(D_8004ABAC)($at)
    /* 153B8 800147B8 3C018005 */  lui        $at, %hi(D_8004ABB0)
    /* 153BC 800147BC AC22ABB0 */  sw         $v0, %lo(D_8004ABB0)($at)
    /* 153C0 800147C0 03E00008 */  jr         $ra
    /* 153C4 800147C4 AC22ABB4 */   sw        $v0, %lo(D_8004ABB4)($at)
endlabel func_8001479C
.size func_8001479C, . - func_8001479C
