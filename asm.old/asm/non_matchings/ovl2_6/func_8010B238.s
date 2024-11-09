glabel func_8010B238
/* 093CA8 8010B238 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 093CAC 8010B23C 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 093CB0 8010B240 906F0000 */  lbu   $t7, ($v1)
/* 093CB4 8010B244 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 093CB8 8010B248 AFBF0014 */  sw    $ra, 0x14($sp)
/* 093CBC 8010B24C 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 093CC0 8010B250 35F80080 */  ori   $t8, $t7, 0x80
/* 093CC4 8010B254 A0780000 */  sb    $t8, ($v1)
/* 093CC8 8010B258 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 093CCC 8010B25C 0C042BBC */  jal   func_8010AEF0
/* 093CD0 8010B260 24060008 */   li    $a2, 8
/* 093CD4 8010B264 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 093CD8 8010B268 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 093CDC 8010B26C 90790000 */  lbu   $t9, ($v1)
/* 093CE0 8010B270 8FBF0014 */  lw    $ra, 0x14($sp)
/* 093CE4 8010B274 27BD0018 */  addiu $sp, $sp, 0x18
/* 093CE8 8010B278 3328FF7F */  andi  $t0, $t9, 0xff7f
/* 093CEC 8010B27C 03E00008 */  jr    $ra
/* 093CF0 8010B280 A0680000 */   sb    $t0, ($v1)
.type func_8010B238, @function
.size func_8010B238, . - func_8010B238
