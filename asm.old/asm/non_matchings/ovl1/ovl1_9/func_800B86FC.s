glabel func_800B86FC
/* 060950 800B8700 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060954 800B8704 AFBF0014 */  sw    $ra, 0x14($sp)
/* 060958 800B8708 3C05800F */  lui   $a1, %hi(gSaveBuffer1) # $a1, 0x800f
/* 06095C 800B870C 24A5C9F8 */  addiu $a1, %lo(gSaveBuffer1) # addiu $a1, $a1, -0x3608
/* 060960 800B8710 00002025 */  move  $a0, $zero
/* 060964 800B8714 0C001340 */  jal   func_80004D00_ovl1
/* 060968 800B8718 24060118 */   li    $a2, 280
/* 06096C 800B871C 0C02E41A */  jal   calc_save_header_checksum
/* 060970 800B8720 00000000 */   nop   
/* 060974 800B8724 3C0E800F */  lui   $t6, %hi(D_800ECA04) # $t6, 0x800f
/* 060978 800B8728 8DCECA04 */  lw    $t6, %lo(D_800ECA04)($t6)
/* 06097C 800B872C 104E0003 */  beq   $v0, $t6, .L800B873C_ovl1
/* 060980 800B8730 00000000 */   nop   
/* 060984 800B8734 0C02E402 */  jal   func_800B9008
/* 060988 800B8738 00000000 */   nop   
.L800B873C_ovl1:
/* 06098C 800B873C 3C02800F */  lui   $v0, %hi(gSaveBuffer1) # $v0, 0x800f
/* 060990 800B8740 3C05800F */  lui   $a1, %hi(D_800ECB00) # $a1, 0x800f
/* 060994 800B8744 3C049999 */  lui   $a0, (0x99999999 >> 16) # lui $a0, 0x9999
/* 060998 800B8748 34849999 */  ori   $a0, (0x99999999 & 0xFFFF) # ori $a0, $a0, 0x9999
/* 06099C 800B874C 24A5CB00 */  addiu $a1, %lo(D_800ECB00) # addiu $a1, $a1, -0x3500
/* 0609A0 800B8750 2442C9F8 */  addiu $v0, %lo(gSaveBuffer1) # addiu $v0, $v0, -0x3608
/* 0609A4 800B8754 00001825 */  move  $v1, $zero
/* 0609A8 800B8758 8C4F0014 */  lw    $t7, 0x14($v0)
.L800B875C_ovl1:
/* 0609AC 800B875C 24420058 */  addiu $v0, $v0, 0x58
/* 0609B0 800B8760 108F0002 */  beq   $a0, $t7, .L800B876C_ovl1
/* 0609B4 800B8764 00000000 */   nop   
/* 0609B8 800B8768 24630001 */  addiu $v1, $v1, 1
.L800B876C_ovl1:
/* 0609BC 800B876C 5445FFFB */  bnel  $v0, $a1, .L800B875C_ovl1
/* 0609C0 800B8770 8C4F0014 */   lw    $t7, 0x14($v0)
/* 0609C4 800B8774 3C01800F */  lui   $at, %hi(D_800ECA00) # $at, 0x800f
/* 0609C8 800B8778 0C02E438 */  jal   calc_header_checksum
/* 0609CC 800B877C AC23CA00 */   sw    $v1, %lo(D_800ECA00)($at)
/* 0609D0 800B8780 0C02E2F7 */  jal   func_800B8BDC
/* 0609D4 800B8784 00000000 */   nop   
/* 0609D8 800B8788 3C19800F */  lui   $t9, %hi(gSaveBuffer1) # $t9, 0x800f
/* 0609DC 800B878C 2739C9F8 */  addiu $t9, %lo(gSaveBuffer1) # addiu $t9, $t9, -0x3608
/* 0609E0 800B8790 3C18800F */  lui   $t8, %hi(gSaveBuffer2) # $t8, 0x800f
/* 0609E4 800B8794 2718CBB0 */  addiu $t8, %lo(gSaveBuffer2) # addiu $t8, $t8, -0x3450
/* 0609E8 800B8798 272A01B0 */  addiu $t2, $t9, 0x1b0
.L800B879C_ovl1:
/* 0609EC 800B879C 8F290000 */  lw    $t1, ($t9)
/* 0609F0 800B87A0 2739000C */  addiu $t9, $t9, 0xc
/* 0609F4 800B87A4 2718000C */  addiu $t8, $t8, 0xc
/* 0609F8 800B87A8 AF09FFF4 */  sw    $t1, -0xc($t8)
/* 0609FC 800B87AC 8F28FFF8 */  lw    $t0, -8($t9)
/* 060A00 800B87B0 AF08FFF8 */  sw    $t0, -8($t8)
/* 060A04 800B87B4 8F29FFFC */  lw    $t1, -4($t9)
/* 060A08 800B87B8 172AFFF8 */  bne   $t9, $t2, .L800B879C_ovl1
/* 060A0C 800B87BC AF09FFFC */   sw    $t1, -4($t8)
/* 060A10 800B87C0 8F290000 */  lw    $t1, ($t9)
/* 060A14 800B87C4 8F280004 */  lw    $t0, 4($t9)
/* 060A18 800B87C8 AF090000 */  sw    $t1, ($t8)
/* 060A1C 800B87CC AF080004 */  sw    $t0, 4($t8)
/* 060A20 800B87D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060A24 800B87D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 060A28 800B87D8 03E00008 */  jr    $ra
/* 060A2C 800B87DC 00000000 */   nop   
.type func_800B86FC, @function
.size func_800B86FC, . - func_800B86FC
