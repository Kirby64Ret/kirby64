glabel func_800BD208
/* 065458 800BD208 3C0E800D */  lui   $t6, %hi(gHudDisplayMode) # $t6, 0x800d
/* 06545C 800BD20C 8DCF6BB0 */  lw    $t7, %lo(gHudDisplayMode)($t6)
/* 065460 800BD210 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 065464 800BD214 AFA40018 */  sw    $a0, 0x18($sp)
/* 065468 800BD218 0005C880 */  sll   $t9, $a1, 2
/* 06546C 800BD21C 000FC0C0 */  sll   $t8, $t7, 3
/* 065470 800BD220 03194021 */  addu  $t0, $t8, $t9
/* 065474 800BD224 3C04800D */ lui $a0, %hi(D_800D5408)
/* 065478 800BD228 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06547C 800BD22C 00882021 */  addu  $a0, $a0, $t0
/* 065480 800BD230 0C02A2EB */  jal   func_800A8BAC
/* 065484 800BD234 8C845408 */ lw $a0, %lo(D_800D5408)($a0)
/* 065488 800BD238 8FAA0018 */  lw    $t2, 0x18($sp)
/* 06548C 800BD23C 00401825 */  move  $v1, $v0
/* 065490 800BD240 8C6E0010 */  lw    $t6, 0x10($v1)
/* 065494 800BD244 3C0D800F */  lui   $t5, %hi(D_800ED510) # $t5, 0x800f
/* 065498 800BD248 000A58C0 */  sll   $t3, $t2, 3
/* 06549C 800BD24C 256C4E34 */  addiu $t4, $t3, 0x4e34
/* 0654A0 800BD250 25ADD510 */  addiu $t5, %lo(D_800ED510) # addiu $t5, $t5, -0x2af0
/* 0654A4 800BD254 018D2021 */  addu  $a0, $t4, $t5
/* 0654A8 800BD258 AC8E0000 */  sw    $t6, ($a0)
/* 0654AC 800BD25C 8C6F0014 */  lw    $t7, 0x14($v1)
/* 0654B0 800BD260 24840780 */  addiu $a0, $a0, 0x780
/* 0654B4 800BD264 24630028 */  addiu $v1, $v1, 0x28
/* 0654B8 800BD268 AC8FF884 */  sw    $t7, -0x77c($a0)
/* 0654BC 800BD26C 8C78FFF0 */  lw    $t8, -0x10($v1)
/* 0654C0 800BD270 24020003 */  li    $v0, 3
/* 0654C4 800BD274 2405000B */  li    $a1, 11
/* 0654C8 800BD278 AC98FB00 */  sw    $t8, -0x500($a0)
/* 0654CC 800BD27C 8C79FFF4 */  lw    $t9, -0xc($v1)
/* 0654D0 800BD280 AC99FB04 */  sw    $t9, -0x4fc($a0)
/* 0654D4 800BD284 8C68FFF8 */  lw    $t0, -8($v1)
/* 0654D8 800BD288 AC88FD80 */  sw    $t0, -0x280($a0)
/* 0654DC 800BD28C 8C69FFFC */  lw    $t1, -4($v1)
/* 0654E0 800BD290 AC89FD84 */  sw    $t1, -0x27c($a0)
.L800BD294_ovl1:
/* 0654E4 800BD294 8C6A0000 */  lw    $t2, ($v1)
/* 0654E8 800BD298 24420004 */  addiu $v0, $v0, 4
/* 0654EC 800BD29C 24630020 */  addiu $v1, $v1, 0x20
/* 0654F0 800BD2A0 AC8A0000 */  sw    $t2, ($a0)
/* 0654F4 800BD2A4 8C6BFFE4 */  lw    $t3, -0x1c($v1)
/* 0654F8 800BD2A8 24840A00 */  addiu $a0, $a0, 0xa00
/* 0654FC 800BD2AC AC8BF604 */  sw    $t3, -0x9fc($a0)
/* 065500 800BD2B0 8C6CFFE8 */  lw    $t4, -0x18($v1)
/* 065504 800BD2B4 AC8CF880 */  sw    $t4, -0x780($a0)
/* 065508 800BD2B8 8C6DFFEC */  lw    $t5, -0x14($v1)
/* 06550C 800BD2BC AC8DF884 */  sw    $t5, -0x77c($a0)
/* 065510 800BD2C0 8C6EFFF0 */  lw    $t6, -0x10($v1)
/* 065514 800BD2C4 AC8EFB00 */  sw    $t6, -0x500($a0)
/* 065518 800BD2C8 8C6FFFF4 */  lw    $t7, -0xc($v1)
/* 06551C 800BD2CC AC8FFB04 */  sw    $t7, -0x4fc($a0)
/* 065520 800BD2D0 8C78FFF8 */  lw    $t8, -8($v1)
/* 065524 800BD2D4 AC98FD80 */  sw    $t8, -0x280($a0)
/* 065528 800BD2D8 8C79FFFC */  lw    $t9, -4($v1)
/* 06552C 800BD2DC 1445FFED */  bne   $v0, $a1, .L800BD294_ovl1
/* 065530 800BD2E0 AC99FD84 */   sw    $t9, -0x27c($a0)
/* 065534 800BD2E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 065538 800BD2E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 06553C 800BD2EC 03E00008 */  jr    $ra
/* 065540 800BD2F0 00000000 */   nop   
.type func_800BD208, @function
.size func_800BD208, . - func_800BD208
