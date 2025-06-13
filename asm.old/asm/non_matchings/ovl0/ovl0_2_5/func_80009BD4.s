glabel func_80009BD4
/* 00A7D4 80009BD4 24020001 */  li    $v0, 1
/* 00A7D8 80009BD8 00027080 */  sll   $t6, $v0, 2
/* 00A7DC 80009BDC AC80004C */  sw    $zero, 0x4c($a0)
/* 00A7E0 80009BE0 A0800054 */  sb    $zero, 0x54($a0)
/* 00A7E4 80009BE4 A0800055 */  sb    $zero, 0x55($a0)
/* 00A7E8 80009BE8 A0800056 */  sb    $zero, 0x56($a0)
/* 00A7EC 80009BEC AC800058 */  sw    $zero, 0x58($a0)
/* 00A7F0 80009BF0 008E1821 */  addu  $v1, $a0, $t6
/* 00A7F4 80009BF4 AC60005C */  sw    $zero, 0x5c($v1)
/* 00A7F8 80009BF8 AC600060 */  sw    $zero, 0x60($v1)
/* 00A7FC 80009BFC AC600064 */  sw    $zero, 0x64($v1)
/* 00A800 80009C00 AC600058 */  sw    $zero, 0x58($v1)
/* 00A804 80009C04 AC80006C */  sw    $zero, 0x6c($a0)
/* 00A808 80009C08 AC800070 */  sw    $zero, 0x70($a0)
/* 00A80C 80009C0C 3C018004 */  lui   $at, %hi(D_8004065C) # $at, 0x8004
/* 00A810 80009C10 C424065C */  lwc1  $f4, %lo(D_8004065C)($at)
/* 00A814 80009C14 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00A818 80009C18 44813000 */  mtc1  $at, $f6
/* 00A81C 80009C1C 44804000 */  mtc1  $zero, $f8
/* 00A820 80009C20 AC800080 */  sw    $zero, 0x80($a0)
/* 00A824 80009C24 AC800084 */  sw    $zero, 0x84($a0)
/* 00A828 80009C28 E4840074 */  swc1  $f4, 0x74($a0)
/* 00A82C 80009C2C E4860078 */  swc1  $f6, 0x78($a0)
/* 00A830 80009C30 03E00008 */  jr    $ra
/* 00A834 80009C34 E488007C */   swc1  $f8, 0x7c($a0)
.type func_80009BD4, @function
.size func_80009BD4, . - func_80009BD4
