glabel func_80114CF4
/* 09D764 80114CF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09D768 80114CF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09D76C 80114CFC 8C8E004C */  lw    $t6, 0x4c($a0)
/* 09D770 80114D00 3C188012 */  lui   $t8, %hi(D_80126CD0) # $t8, 0x8012
/* 09D774 80114D04 27186CD0 */  addiu $t8, %lo(D_80126CD0) # addiu $t8, $t8, 0x6cd0
/* 09D778 80114D08 000E7880 */  sll   $t7, $t6, 2
/* 09D77C 80114D0C 01EE7823 */  subu  $t7, $t7, $t6
/* 09D780 80114D10 000F7880 */  sll   $t7, $t7, 2
/* 09D784 80114D14 01F8C821 */  addu  $t9, $t7, $t8
/* 09D788 80114D18 AFB9001C */  sw    $t9, 0x1c($sp)
/* 09D78C 80114D1C 0C02BE60 */  jal   func_800AF980
/* 09D790 80114D20 24040017 */   li    $a0, 23
/* 09D794 80114D24 8FA8001C */  lw    $t0, 0x1c($sp)
/* 09D798 80114D28 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 09D79C 80114D2C 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 09D7A0 80114D30 24060010 */  li    $a2, 16
/* 09D7A4 80114D34 0C02A619 */  jal   func_800A9864
/* 09D7A8 80114D38 8D040000 */   lw    $a0, ($t0)
/* 09D7AC 80114D3C 0C00236A */  jal   func_80008DA8
/* 09D7B0 80114D40 00002025 */   move  $a0, $zero
/* 09D7B4 80114D44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09D7B8 80114D48 27BD0020 */  addiu $sp, $sp, 0x20
/* 09D7BC 80114D4C 03E00008 */  jr    $ra
/* 09D7C0 80114D50 00000000 */   nop   
.type func_80114CF4, @function
.size func_80114CF4, . - func_80114CF4
