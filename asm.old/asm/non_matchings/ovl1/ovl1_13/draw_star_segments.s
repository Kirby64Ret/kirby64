glabel draw_star_segments
/* 0655C4 800BD374 3C0E800D */  lui   $t6, %hi(gHudDisplayMode) # $t6, 0x800d
/* 0655C8 800BD378 8DCF6BB0 */  lw    $t7, %lo(gHudDisplayMode)($t6)
/* 0655CC 800BD37C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0655D0 800BD380 AFA40018 */  sw    $a0, 0x18($sp)
/* 0655D4 800BD384 0005C880 */  sll   $t9, $a1, 2
/* 0655D8 800BD388 000FC0C0 */  sll   $t8, $t7, 3
/* 0655DC 800BD38C 03194021 */  addu  $t0, $t8, $t9
/* 0655E0 800BD390 3C04800D */ lui $a0, %hi(D_800D5434)
/* 0655E4 800BD394 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0655E8 800BD398 00882021 */  addu  $a0, $a0, $t0
/* 0655EC 800BD39C 0C02A2EB */  jal   func_800A8BAC
/* 0655F0 800BD3A0 8C845434 */ lw $a0, %lo(D_800D5434)($a0)
/* 0655F4 800BD3A4 8FAA0018 */  lw    $t2, 0x18($sp)
/* 0655F8 800BD3A8 00401825 */  move  $v1, $v0
/* 0655FC 800BD3AC 8C6E0010 */  lw    $t6, 0x10($v1)
/* 065600 800BD3B0 3C0D800F */  lui   $t5, %hi(D_800ED510) # $t5, 0x800f
/* 065604 800BD3B4 000A58C0 */  sll   $t3, $t2, 3
/* 065608 800BD3B8 256C4E34 */  addiu $t4, $t3, 0x4e34
/* 06560C 800BD3BC 25ADD510 */  addiu $t5, %lo(D_800ED510) # addiu $t5, $t5, -0x2af0
/* 065610 800BD3C0 018D2021 */  addu  $a0, $t4, $t5
/* 065614 800BD3C4 AC8E0000 */  sw    $t6, ($a0)
/* 065618 800BD3C8 8C6F0014 */  lw    $t7, 0x14($v1)
/* 06561C 800BD3CC 24840780 */  addiu $a0, $a0, 0x780
/* 065620 800BD3D0 24630028 */  addiu $v1, $v1, 0x28
/* 065624 800BD3D4 AC8FF884 */  sw    $t7, -0x77c($a0)
/* 065628 800BD3D8 8C78FFF0 */  lw    $t8, -0x10($v1)
/* 06562C 800BD3DC 24020003 */  li    $v0, 3
/* 065630 800BD3E0 2405000B */  li    $a1, 11
/* 065634 800BD3E4 AC98FB00 */  sw    $t8, -0x500($a0)
/* 065638 800BD3E8 8C79FFF4 */  lw    $t9, -0xc($v1)
/* 06563C 800BD3EC AC99FB04 */  sw    $t9, -0x4fc($a0)
/* 065640 800BD3F0 8C68FFF8 */  lw    $t0, -8($v1)
/* 065644 800BD3F4 AC88FD80 */  sw    $t0, -0x280($a0)
/* 065648 800BD3F8 8C69FFFC */  lw    $t1, -4($v1)
/* 06564C 800BD3FC AC89FD84 */  sw    $t1, -0x27c($a0)
.L800BD400_ovl1:
/* 065650 800BD400 8C6A0000 */  lw    $t2, ($v1)
/* 065654 800BD404 24420004 */  addiu $v0, $v0, 4
/* 065658 800BD408 24630020 */  addiu $v1, $v1, 0x20
/* 06565C 800BD40C AC8A0000 */  sw    $t2, ($a0)
/* 065660 800BD410 8C6BFFE4 */  lw    $t3, -0x1c($v1)
/* 065664 800BD414 24840A00 */  addiu $a0, $a0, 0xa00
/* 065668 800BD418 AC8BF604 */  sw    $t3, -0x9fc($a0)
/* 06566C 800BD41C 8C6CFFE8 */  lw    $t4, -0x18($v1)
/* 065670 800BD420 AC8CF880 */  sw    $t4, -0x780($a0)
/* 065674 800BD424 8C6DFFEC */  lw    $t5, -0x14($v1)
/* 065678 800BD428 AC8DF884 */  sw    $t5, -0x77c($a0)
/* 06567C 800BD42C 8C6EFFF0 */  lw    $t6, -0x10($v1)
/* 065680 800BD430 AC8EFB00 */  sw    $t6, -0x500($a0)
/* 065684 800BD434 8C6FFFF4 */  lw    $t7, -0xc($v1)
/* 065688 800BD438 AC8FFB04 */  sw    $t7, -0x4fc($a0)
/* 06568C 800BD43C 8C78FFF8 */  lw    $t8, -8($v1)
/* 065690 800BD440 AC98FD80 */  sw    $t8, -0x280($a0)
/* 065694 800BD444 8C79FFFC */  lw    $t9, -4($v1)
/* 065698 800BD448 1445FFED */  bne   $v0, $a1, .L800BD400_ovl1
/* 06569C 800BD44C AC99FD84 */   sw    $t9, -0x27c($a0)
/* 0656A0 800BD450 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0656A4 800BD454 27BD0018 */  addiu $sp, $sp, 0x18
/* 0656A8 800BD458 03E00008 */  jr    $ra
/* 0656AC 800BD45C 00000000 */   nop   
.size draw_star_segments, . - draw_star_segments
