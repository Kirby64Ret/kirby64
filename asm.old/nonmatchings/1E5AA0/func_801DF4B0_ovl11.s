glabel func_801DF4B0_ovl11
/* 1E9D70 801DF4B0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801DF4B4_ovl12:
/* 1E9D74 801DF4B4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E9D78 801DF4B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E9D7C 801DF4BC AFBF0014 */  sw         $ra, 0x14($sp)
.L801DF4C0_ovl16:
/* 1E9D80 801DF4C0 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E9D84 801DF4C4 8C4E0000 */  lw         $t6, 0x0($v0)
.L801DF4C8_ovl17:
/* 1E9D88 801DF4C8 3C01800F */  lui        $at, %hi(D_800E9E20)
glabel func_801DF4CC_ovl10
/* 1E9D8C 801DF4CC 24180002 */  addiu      $t8, $zero, 0x2
/* 1E9D90 801DF4D0 000E7880 */  sll        $t7, $t6, 2
/* 1E9D94 801DF4D4 002F0821 */  addu       $at, $at, $t7
/* 1E9D98 801DF4D8 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1E9D9C 801DF4DC 8C590000 */  lw         $t9, 0x0($v0)
.L801DF4E0_ovl14:
/* 1E9DA0 801DF4E0 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L801DF4E4_ovl9:
/* 1E9DA4 801DF4E4 240401CD */  addiu      $a0, $zero, 0x1CD
/* 1E9DA8 801DF4E8 00194080 */  sll        $t0, $t9, 2
/* 1E9DAC 801DF4EC 00280821 */  addu       $at, $at, $t0
/* 1E9DB0 801DF4F0 0C029D9E */  jal        play_sound
.L801DF4F4_ovl17:
/* 1E9DB4 801DF4F4 AC38DFD0 */   sw        $t8, %lo(D_800DDFD0)($at)
/* 1E9DB8 801DF4F8 3C040001 */  lui        $a0, (0x10556 >> 16)
.L801DF4FC_ovl16:
/* 1E9DBC 801DF4FC 0C02A806 */  jal        func_800AA018
.L801DF500_ovl14:
/* 1E9DC0 801DF500 34840556 */   ori       $a0, $a0, (0x10556 & 0xFFFF)
/* 1E9DC4 801DF504 3C040001 */  lui        $a0, (0x10555 >> 16)
/* 1E9DC8 801DF508 34840555 */  ori        $a0, $a0, (0x10555 & 0xFFFF)
glabel func_801DF50C_ovl10
/* 1E9DCC 801DF50C 0C02AA19 */  jal        func_800AA864
/* 1E9DD0 801DF510 24050001 */   addiu     $a1, $zero, 0x1
glabel func_801DF514_ovl14
/* 1E9DD4 801DF514 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 1E9DD8 801DF518 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
.L801DF51C_ovl9:
/* 1E9DDC 801DF51C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1E9DE0 801DF520 24090001 */  addiu      $t1, $zero, 0x1
.L801DF524_ovl17:
/* 1E9DE4 801DF524 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1E9DE8 801DF528 000B6080 */  sll        $t4, $t3, 2
glabel func_801DF52C_ovl15
/* 1E9DEC 801DF52C 002C0821 */  addu       $at, $at, $t4
.L801DF530_ovl16:
/* 1E9DF0 801DF530 0C02BE85 */  jal        func_800AFA14
/* 1E9DF4 801DF534 AC299E20 */   sw        $t1, %lo(D_800E9E20)($at)
/* 1E9DF8 801DF538 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E9DFC 801DF53C 27BD0018 */  addiu      $sp, $sp, 0x18
.L801DF540_ovl16:
/* 1E9E00 801DF540 03E00008 */  jr         $ra
.L801DF544_ovl13:
/* 1E9E04 801DF544 00000000 */   nop
