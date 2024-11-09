glabel func_800B91B8
/* 061408 800B91B8 3C05800F */  lui   $a1, %hi(gSaveBuffer1) # $a1, 0x800f
/* 06140C 800B91BC 3C06800F */  lui   $a2, %hi(D_800ECB10) # $a2, 0x800f
/* 061410 800B91C0 3C07800F */  lui   $a3, %hi(D_800ECBA8) # $a3, 0x800f
/* 061414 800B91C4 3C0E9753 */  lui   $t6, (0x97538642 >> 16) # lui $t6, 0x9753
/* 061418 800B91C8 24E7CBA8 */  addiu $a3, %lo(D_800ECBA8) # addiu $a3, $a3, -0x3458
/* 06141C 800B91CC 24C6CB10 */  addiu $a2, %lo(D_800ECB10) # addiu $a2, $a2, -0x34f0
/* 061420 800B91D0 24A5C9F8 */  addiu $a1, %lo(gSaveBuffer1) # addiu $a1, $a1, -0x3608
/* 061424 800B91D4 35CE8642 */  ori   $t6, (0x97538642 & 0xFFFF) # ori $t6, $t6, 0x8642
/* 061428 800B91D8 ACAE01B0 */  sw    $t6, 0x1b0($a1)
/* 06142C 800B91DC ACAE0118 */  sw    $t6, 0x118($a1)
/* 061430 800B91E0 00C01025 */  move  $v0, $a2
/* 061434 800B91E4 10E6000E */  beq   $a3, $a2, .L800B9220_ovl1
/* 061438 800B91E8 00E01825 */   move  $v1, $a3
/* 06143C 800B91EC 24040008 */  li    $a0, 8
/* 061440 800B91F0 10800005 */  beqz  $a0, .L800B9208_ovl1
/* 061444 800B91F4 24C40008 */   addiu $a0, $a2, 8
.L800B91F8_ovl1:
/* 061448 800B91F8 24420004 */  addiu $v0, $v0, 4
/* 06144C 800B91FC 1482FFFE */  bne   $a0, $v0, .L800B91F8_ovl1
/* 061450 800B9200 AC40FFFC */   sw    $zero, -4($v0)
/* 061454 800B9204 10470006 */  beq   $v0, $a3, .L800B9220_ovl1
.L800B9208_ovl1:
/* 061458 800B9208 24420010 */   addiu $v0, $v0, 0x10
/* 06145C 800B920C AC40FFF0 */  sw    $zero, -0x10($v0)
/* 061460 800B9210 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 061464 800B9214 AC40FFF8 */  sw    $zero, -8($v0)
/* 061468 800B9218 1443FFFB */  bne   $v0, $v1, .L800B9208_ovl1
/* 06146C 800B921C AC40FFFC */   sw    $zero, -4($v0)
.L800B9220_ovl1:
/* 061470 800B9220 24180003 */  li    $t8, 3
/* 061474 800B9224 03E00008 */  jr    $ra
/* 061478 800B9228 A4B80164 */   sh    $t8, 0x164($a1)
.type func_800B91B8, @function
.size func_800B91B8, . - func_800B91B8
