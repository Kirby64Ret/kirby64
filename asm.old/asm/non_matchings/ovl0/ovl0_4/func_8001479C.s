glabel func_8001479C
/* 01539C 8001479C 3C028005 */  lui   $v0, %hi(D_8004ABB8) # $v0, 0x8005
/* 0153A0 800147A0 2442ABB8 */  addiu $v0, %lo(D_8004ABB8) # addiu $v0, $v0, -0x5448
/* 0153A4 800147A4 3C018005 */  lui   $at, %hi(D_8004ABA0) # $at, 0x8005
/* 0153A8 800147A8 AC22ABA0 */  sw    $v0, %lo(D_8004ABA0)($at)
/* 0153AC 800147AC 3C018005 */  lui   $at, %hi(D_8004ABAC) # $at, 0x8005
/* 0153B0 800147B0 AC22ABA8 */  sw    $v0, %lo(D_8004ABA8)($at)
/* 0153B4 800147B4 AC22ABAC */  sw    $v0, %lo(D_8004ABAC)($at)
/* 0153B8 800147B8 3C018005 */  lui   $at, %hi(D_8004ABB0) # $at, 0x8005
/* 0153BC 800147BC AC22ABB0 */  sw    $v0, %lo(D_8004ABB0)($at)
/* 0153C0 800147C0 03E00008 */  jr    $ra
/* 0153C4 800147C4 AC22ABB4 */   sw    $v0, -0x544c($at)
.type func_8001479C, @function
.size func_8001479C, . - func_8001479C
