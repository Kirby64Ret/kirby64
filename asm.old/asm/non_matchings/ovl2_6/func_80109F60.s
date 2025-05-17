glabel func_80109F60
/* 0929D0 80109F60 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 0929D4 80109F64 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 0929D8 80109F68 906F0000 */  lbu   $t7, ($v1)
/* 0929DC 80109F6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0929E0 80109F70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0929E4 80109F74 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 0929E8 80109F78 35F80080 */  ori   $t8, $t7, 0x80
/* 0929EC 80109F7C A0780000 */  sb    $t8, ($v1)
/* 0929F0 80109F80 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 0929F4 80109F84 0C0426FC */  jal   func_80109BF0
/* 0929F8 80109F88 24060008 */   li    $a2, 8
/* 0929FC 80109F8C 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 092A00 80109F90 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 092A04 80109F94 90790000 */  lbu   $t9, ($v1)
/* 092A08 80109F98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 092A0C 80109F9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 092A10 80109FA0 3328FF7F */  andi  $t0, $t9, 0xff7f
/* 092A14 80109FA4 03E00008 */  jr    $ra
/* 092A18 80109FA8 A0680000 */   sb    $t0, ($v1)
.type func_80109F60, @function
.size func_80109F60, . - func_80109F60
