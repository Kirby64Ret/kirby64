glabel func_800A77E8
/* 04FA38 800A77E8 00047040 */  sll   $t6, $a0, 1
/* 04FA3C 800A77EC 3C02800C */ lui $v0, %hi(D_800C0040)
/* 04FA40 800A77F0 004E1021 */  addu  $v0, $v0, $t6
/* 04FA44 800A77F4 84420040 */ lh $v0, %lo(D_800C0040)($v0)
/* 04FA48 800A77F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04FA4C 800A77FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04FA50 800A7800 AFA5001C */  sw    $a1, 0x1c($sp)
/* 04FA54 800A7804 0440000D */  bltz  $v0, .L800A783C_ovl1
/* 04FA58 800A7808 00803825 */   move  $a3, $a0
/* 04FA5C 800A780C 3044FFFF */  andi  $a0, $v0, 0xffff
/* 04FA60 800A7810 0C008F2C */  jal   func_80023CB0_ovl1
/* 04FA64 800A7814 AFA60020 */   sw    $a2, 0x20($sp)
/* 04FA68 800A7818 8FA3001C */  lw    $v1, 0x1c($sp)
/* 04FA6C 800A781C 8FA60020 */  lw    $a2, 0x20($sp)
/* 04FA70 800A7820 10400004 */  beqz  $v0, .L800A7834_ovl1
/* 04FA74 800A7824 AC620000 */   sw    $v0, ($v1)
/* 04FA78 800A7828 94580026 */  lhu   $t8, 0x26($v0)
/* 04FA7C 800A782C 1000000C */  b     .L800A7860_ovl1
/* 04FA80 800A7830 A4D80000 */   sh    $t8, ($a2)
.L800A7834_ovl1:
/* 04FA84 800A7834 1000000A */  b     .L800A7860_ovl1
/* 04FA88 800A7838 A4C00000 */   sh    $zero, ($a2)
.L800A783C_ovl1:
/* 04FA8C 800A783C 3C04800D */  lui   $a0, %hi(D_800D5D34) # $a0, 0x800d
/* 04FA90 800A7840 24845D34 */  addiu $a0, %lo(D_800D5D34) # addiu $a0, $a0, 0x5d34
/* 04FA94 800A7844 00E02825 */  move  $a1, $a3
/* 04FA98 800A7848 0C02909C */  jal   print_error_stub
/* 04FA9C 800A784C AFA60020 */   sw    $a2, 0x20($sp)
/* 04FAA0 800A7850 8FA3001C */  lw    $v1, 0x1c($sp)
/* 04FAA4 800A7854 8FA60020 */  lw    $a2, 0x20($sp)
/* 04FAA8 800A7858 AC600000 */  sw    $zero, ($v1)
/* 04FAAC 800A785C A4C00000 */  sh    $zero, ($a2)
.L800A7860_ovl1:
/* 04FAB0 800A7860 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04FAB4 800A7864 27BD0018 */  addiu $sp, $sp, 0x18
/* 04FAB8 800A7868 03E00008 */  jr    $ra
/* 04FABC 800A786C 00000000 */   nop   
.type func_800A77E8, @function
.size func_800A77E8, . - func_800A77E8
