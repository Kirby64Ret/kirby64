glabel func_800B9008
/* 061258 800B9008 3C05800F */  lui   $a1, %hi(gSaveBuffer1) # $a1, 0x800f
/* 06125C 800B900C 3C06800F */  lui   $a2, %hi(D_800ECA04) # $a2, 0x800f
/* 061260 800B9010 24C6CA04 */  addiu $a2, %lo(D_800ECA04) # addiu $a2, $a2, -0x35fc
/* 061264 800B9014 24A5C9F8 */  addiu $a1, %lo(gSaveBuffer1) # addiu $a1, $a1, -0x3608
/* 061268 800B9018 00A01025 */  move  $v0, $a1
/* 06126C 800B901C 10C5000E */  beq   $a2, $a1, .L800B9058_ovl1
/* 061270 800B9020 00C01825 */   move  $v1, $a2
/* 061274 800B9024 2404000C */  li    $a0, 12
/* 061278 800B9028 10800005 */  beqz  $a0, .L800B9040_ovl1
/* 06127C 800B902C 24A4000C */   addiu $a0, $a1, 0xc
.L800B9030_ovl1:
/* 061280 800B9030 24420004 */  addiu $v0, $v0, 4
/* 061284 800B9034 1482FFFE */  bne   $a0, $v0, .L800B9030_ovl1
/* 061288 800B9038 AC40FFFC */   sw    $zero, -4($v0)
/* 06128C 800B903C 10460006 */  beq   $v0, $a2, .L800B9058_ovl1
.L800B9040_ovl1:
/* 061290 800B9040 24420010 */   addiu $v0, $v0, 0x10
/* 061294 800B9044 AC40FFF0 */  sw    $zero, -0x10($v0)
/* 061298 800B9048 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 06129C 800B904C AC40FFF8 */  sw    $zero, -8($v0)
/* 0612A0 800B9050 1443FFFB */  bne   $v0, $v1, .L800B9040_ovl1
/* 0612A4 800B9054 AC40FFFC */   sw    $zero, -4($v0)
.L800B9058_ovl1:
/* 0612A8 800B9058 ACA00000 */  sw    $zero, ($a1)
/* 0612AC 800B905C ACA00004 */  sw    $zero, 4($a1)
/* 0612B0 800B9060 03E00008 */  jr    $ra
/* 0612B4 800B9064 ACA00008 */   sw    $zero, 8($a1)
.type func_800B9008, @function
.size func_800B9008, . - func_800B9008
