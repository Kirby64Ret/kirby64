glabel func_800AC688
/* 0548D8 800AC688 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0548DC 800AC68C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0548E0 800AC690 A4800000 */  sh    $zero, ($a0)
/* 0548E4 800AC694 A4800008 */  sh    $zero, 8($a0)
/* 0548E8 800AC698 94A20004 */  lhu   $v0, 4($a1)
/* 0548EC 800AC69C 3419FFF4 */  li    $t9, 65524
/* 0548F0 800AC6A0 00021080 */  sll   $v0, $v0, 2
/* 0548F4 800AC6A4 A4820002 */  sh    $v0, 2($a0)
/* 0548F8 800AC6A8 A4820006 */  sh    $v0, 6($a0)
/* 0548FC 800AC6AC 94A20006 */  lhu   $v0, 6($a1)
/* 054900 800AC6B0 A480000C */  sh    $zero, 0xc($a0)
/* 054904 800AC6B4 848F000C */  lh    $t7, 0xc($a0)
/* 054908 800AC6B8 00021080 */  sll   $v0, $v0, 2
/* 05490C 800AC6BC A482000A */  sh    $v0, 0xa($a0)
/* 054910 800AC6C0 A482000E */  sh    $v0, 0xe($a0)
/* 054914 800AC6C4 A48F0004 */  sh    $t7, 4($a0)
/* 054918 800AC6C8 8CB80008 */  lw    $t8, 8($a1)
/* 05491C 800AC6CC A4990014 */  sh    $t9, 0x14($a0)
/* 054920 800AC6D0 AC980010 */  sw    $t8, 0x10($a0)
/* 054924 800AC6D4 90A80000 */  lbu   $t0, ($a1)
/* 054928 800AC6D8 A0880016 */  sb    $t0, 0x16($a0)
/* 05492C 800AC6DC 90A90001 */  lbu   $t1, 1($a1)
/* 054930 800AC6E0 A4800018 */  sh    $zero, 0x18($a0)
/* 054934 800AC6E4 A480001A */  sh    $zero, 0x1a($a0)
/* 054938 800AC6E8 0C00D6C8 */  jal   func_80035B20_ovl1
/* 05493C 800AC6EC A0890017 */   sb    $t1, 0x17($a0)
/* 054940 800AC6F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 054944 800AC6F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 054948 800AC6F8 03E00008 */  jr    $ra
/* 05494C 800AC6FC 00000000 */   nop   
.type func_800AC688, @function
.size func_800AC688, . - func_800AC688
