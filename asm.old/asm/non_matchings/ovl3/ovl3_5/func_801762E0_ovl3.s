glabel func_801762E0_ovl3
/* 0D6D20 801762E0 3C088005 */  lui   $t0, %hi(gDisplayListHeads) # $t0, 0x8005
/* 0D6D24 801762E4 2508A3D0 */  addiu $t0, %lo(gDisplayListHeads) # addiu $t0, $t0, -0x5c30
/* 0D6D28 801762E8 8D030000 */  lw    $v1, ($t0)
/* 0D6D2C 801762EC AFA40000 */  sw    $a0, ($sp)
/* 0D6D30 801762F0 3C09E700 */  lui   $t1, 0xe700
/* 0D6D34 801762F4 24620008 */  addiu $v0, $v1, 8
/* 0D6D38 801762F8 3C0AE200 */  lui   $t2, (0xE200001C >> 16) # lui $t2, 0xe200
/* 0D6D3C 801762FC 3C0E0050 */  lui   $t6, (0x00504340 >> 16) # lui $t6, 0x50
/* 0D6D40 80176300 AC690000 */  sw    $t1, ($v1)
/* 0D6D44 80176304 AC600004 */  sw    $zero, 4($v1)
/* 0D6D48 80176308 354A001C */  ori   $t2, (0xE200001C & 0xFFFF) # ori $t2, $t2, 0x1c
/* 0D6D4C 8017630C 35CE4340 */  ori   $t6, (0x00504340 & 0xFFFF) # ori $t6, $t6, 0x4340
/* 0D6D50 80176310 AC4E0004 */  sw    $t6, 4($v0)
/* 0D6D54 80176314 AC4A0000 */  sw    $t2, ($v0)
/* 0D6D58 80176318 24450008 */  addiu $a1, $v0, 8
/* 0D6D5C 8017631C 3C0FFA00 */  lui   $t7, 0xfa00
/* 0D6D60 80176320 ACAF0000 */  sw    $t7, ($a1)
/* 0D6D64 80176324 3C18801A */  lui   $t8, %hi(D_80198825) # $t8, 0x801a
/* 0D6D68 80176328 93188825 */  lbu   $t8, %lo(D_80198825)($t8)
/* 0D6D6C 8017632C 24A60008 */  addiu $a2, $a1, 8
/* 0D6D70 80176330 3C0BFCFF */  lui   $t3, (0xFCFFFFFF >> 16) # lui $t3, 0xfcff
/* 0D6D74 80176334 331900FF */  andi  $t9, $t8, 0xff
/* 0D6D78 80176338 ACB90004 */  sw    $t9, 4($a1)
/* 0D6D7C 8017633C 3C0CFFFD */  lui   $t4, (0xFFFDF6FB >> 16) # lui $t4, 0xfffd
/* 0D6D80 80176340 358CF6FB */  ori   $t4, (0xFFFDF6FB & 0xFFFF) # ori $t4, $t4, 0xf6fb
/* 0D6D84 80176344 356BFFFF */  ori   $t3, (0xFCFFFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* 0D6D88 80176348 24C70008 */  addiu $a3, $a2, 8
/* 0D6D8C 8017634C ACCB0000 */  sw    $t3, ($a2)
/* 0D6D90 80176350 ACCC0004 */  sw    $t4, 4($a2)
/* 0D6D94 80176354 3C0E0002 */  lui   $t6, (0x00028028 >> 16) # lui $t6, 2
/* 0D6D98 80176358 3C0DF64D */  lui   $t5, (0xF64D8398 >> 16) # lui $t5, 0xf64d
/* 0D6D9C 8017635C 35AD8398 */  ori   $t5, (0xF64D8398 & 0xFFFF) # ori $t5, $t5, 0x8398
/* 0D6DA0 80176360 35CE8028 */  ori   $t6, (0x00028028 & 0xFFFF) # ori $t6, $t6, 0x8028
/* 0D6DA4 80176364 24E30008 */  addiu $v1, $a3, 8
/* 0D6DA8 80176368 ACEE0004 */  sw    $t6, 4($a3)
/* 0D6DAC 8017636C ACED0000 */  sw    $t5, ($a3)
/* 0D6DB0 80176370 24640008 */  addiu $a0, $v1, 8
/* 0D6DB4 80176374 AC600004 */  sw    $zero, 4($v1)
/* 0D6DB8 80176378 AC690000 */  sw    $t1, ($v1)
/* 0D6DBC 8017637C 3C0F0055 */  lui   $t7, (0x00552078 >> 16) # lui $t7, 0x55
/* 0D6DC0 80176380 35EF2078 */  ori   $t7, (0x00552078 & 0xFFFF) # ori $t7, $t7, 0x2078
/* 0D6DC4 80176384 AC8F0004 */  sw    $t7, 4($a0)
/* 0D6DC8 80176388 AC8A0000 */  sw    $t2, ($a0)
/* 0D6DCC 8017638C 24820008 */  addiu $v0, $a0, 8
/* 0D6DD0 80176390 03E00008 */  jr    $ra
/* 0D6DD4 80176394 AD020000 */   sw    $v0, ($t0)
.type func_801762E0_ovl3, @function
.size func_801762E0_ovl3, . - func_801762E0_ovl3
