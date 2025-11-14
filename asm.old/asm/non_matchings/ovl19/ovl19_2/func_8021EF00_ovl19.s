glabel func_8021EF00_ovl19
/* 23F610 8021EF00 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 23F614 8021EF04 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 23F618 8021EF08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 23F61C 8021EF0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 23F620 8021EF10 AFA40018 */  sw    $a0, 0x18($sp)
/* 23F624 8021EF14 8DCF0000 */  lw    $t7, ($t6)
/* 23F628 8021EF18 3C04800E */ lui $a0, %hi(D_800E7880)
/* 23F62C 8021EF1C 3C068023 */  lui   $a2, %hi(D_8022F080) # $a2, 0x8023
/* 23F630 8021EF20 008F2021 */  addu  $a0, $a0, $t7
/* 23F634 8021EF24 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 23F638 8021EF28 24C6F080 */  addiu $a2, %lo(D_8022F080) # addiu $a2, $a2, -0xf80
/* 23F63C 8021EF2C 0C02911F */  jal   call_virtual_function
/* 23F640 8021EF30 24050002 */   li    $a1, 2
/* 23F644 8021EF34 8FBF0014 */  lw    $ra, 0x14($sp)
/* 23F648 8021EF38 27BD0018 */  addiu $sp, $sp, 0x18
/* 23F64C 8021EF3C 03E00008 */  jr    $ra
/* 23F650 8021EF40 00000000 */   nop   
.type func_8021EF00_ovl19, @function
.size func_8021EF00_ovl19, . - func_8021EF00_ovl19
