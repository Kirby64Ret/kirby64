glabel func_800AB680
/* 0538D0 800AB680 00047880 */  sll   $t7, $a0, 2
/* 0538D4 800AB684 3C01800D */  lui   $at, %hi(D_800D4E64) # $at, 0x800d
/* 0538D8 800AB688 A42F4E64 */  sh    $t7, %lo(D_800D4E64)($at)
/* 0538DC 800AB68C 3C01800D */  lui   $at, %hi(D_800D4E68) # $at, 0x800d
/* 0538E0 800AB690 0005C880 */  sll   $t9, $a1, 2
/* 0538E4 800AB694 A4394E68 */  sh    $t9, %lo(D_800D4E68)($at)
/* 0538E8 800AB698 93AC0013 */  lbu   $t4, 0x13($sp)
/* 0538EC 800AB69C 3C01800D */  lui   $at, %hi(D_800D4E6C) # $at, 0x800d
/* 0538F0 800AB6A0 00064880 */  sll   $t1, $a2, 2
/* 0538F4 800AB6A4 A4294E6C */  sh    $t1, %lo(D_800D4E6C)($at)
/* 0538F8 800AB6A8 3C01800D */  lui   $at, %hi(D_800D4E70) # $at, 0x800d
/* 0538FC 800AB6AC 00075880 */  sll   $t3, $a3, 2
/* 053900 800AB6B0 11800005 */  beqz  $t4, .L800AB6C8_ovl1
/* 053904 800AB6B4 A42B4E70 */   sh    $t3, %lo(D_800D4E70)($at)
/* 053908 800AB6B8 240D0001 */  li    $t5, 1
/* 05390C 800AB6BC 3C01800D */ lui $at, %hi(D_800D4E74)
/* 053910 800AB6C0 03E00008 */  jr    $ra
/* 053914 800AB6C4 A02D4E74 */ sb $t5, %lo(D_800D4E74)($at)
.type func_800AB680, @function

.L800AB6C8_ovl1:
/* 053918 800AB6C8 3C01800D */  lui   $at, %hi(D_800D4E74) # $at, 0x800d
/* 05391C 800AB6CC A0204E74 */  sb    $zero, %lo(D_800D4E74)($at)
/* 053920 800AB6D0 03E00008 */  jr    $ra
/* 053924 800AB6D4 00000000 */   nop   
.type func_800AB680, @function
.size func_800AB680, . - func_800AB680
