glabel func_800BC9A4
/* 064BF4 800BC9A4 8C8E0000 */  lw    $t6, ($a0)
/* 064BF8 800BC9A8 3C18800F */ lui $t8, %hi(D_800E9AA0)
/* 064BFC 800BC9AC 3C088005 */  lui   $t0, %hi(gDisplayListHeads) # $t0, 0x8005
/* 064C00 800BC9B0 000E7880 */  sll   $t7, $t6, 2
/* 064C04 800BC9B4 030FC021 */  addu  $t8, $t8, $t7
/* 064C08 800BC9B8 8F189AA0 */ lw $t8, %lo(D_800E9AA0)($t8)
/* 064C0C 800BC9BC 2508A3D0 */  addiu $t0, %lo(gDisplayListHeads) # addiu $t0, $t0, -0x5c30
/* 064C10 800BC9C0 8D020000 */  lw    $v0, ($t0)
/* 064C14 800BC9C4 13000023 */  beqz  $t8, .L800BCA54_ovl1
/* 064C18 800BC9C8 3C19E700 */   lui   $t9, 0xe700
/* 064C1C 800BC9CC 24440008 */  addiu $a0, $v0, 8
/* 064C20 800BC9D0 AC590000 */  sw    $t9, ($v0)
/* 064C24 800BC9D4 AC400004 */  sw    $zero, 4($v0)
/* 064C28 800BC9D8 3C09E300 */  lui   $t1, (0xE3000A01 >> 16) # lui $t1, 0xe300
/* 064C2C 800BC9DC 35290A01 */  ori   $t1, (0xE3000A01 & 0xFFFF) # ori $t1, $t1, 0xa01
/* 064C30 800BC9E0 24850008 */  addiu $a1, $a0, 8
/* 064C34 800BC9E4 AC890000 */  sw    $t1, ($a0)
/* 064C38 800BC9E8 AC800004 */  sw    $zero, 4($a0)
/* 064C3C 800BC9EC 3C0AE200 */  lui   $t2, (0xE200001C >> 16) # lui $t2, 0xe200
/* 064C40 800BC9F0 3C0B0C08 */  lui   $t3, (0x0C084000 >> 16) # lui $t3, 0xc08
/* 064C44 800BC9F4 356B4000 */  ori   $t3, (0x0C084000 & 0xFFFF) # ori $t3, $t3, 0x4000
/* 064C48 800BC9F8 354A001C */  ori   $t2, (0xE200001C & 0xFFFF) # ori $t2, $t2, 0x1c
/* 064C4C 800BC9FC 24A60008 */  addiu $a2, $a1, 8
/* 064C50 800BCA00 ACAA0000 */  sw    $t2, ($a1)
/* 064C54 800BCA04 ACAB0004 */  sw    $t3, 4($a1)
/* 064C58 800BCA08 3C0DF4D8 */  lui   $t5, (0xF4D8A2FF >> 16) # lui $t5, 0xf4d8
/* 064C5C 800BCA0C 35ADA2FF */  ori   $t5, (0xF4D8A2FF & 0xFFFF) # ori $t5, $t5, 0xa2ff
/* 064C60 800BCA10 24C70008 */  addiu $a3, $a2, 8
/* 064C64 800BCA14 3C0CFA00 */  lui   $t4, 0xfa00
/* 064C68 800BCA18 ACCC0000 */  sw    $t4, ($a2)
/* 064C6C 800BCA1C ACCD0004 */  sw    $t5, 4($a2)
/* 064C70 800BCA20 3C0EFCFF */  lui   $t6, (0xFCFFFFFF >> 16) # lui $t6, 0xfcff
/* 064C74 800BCA24 3C0FFFFD */  lui   $t7, (0xFFFDF6FB >> 16) # lui $t7, 0xfffd
/* 064C78 800BCA28 35EFF6FB */  ori   $t7, (0xFFFDF6FB & 0xFFFF) # ori $t7, $t7, 0xf6fb
/* 064C7C 800BCA2C 35CEFFFF */  ori   $t6, (0xFCFFFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 064C80 800BCA30 24E30008 */  addiu $v1, $a3, 8
/* 064C84 800BCA34 ACEE0000 */  sw    $t6, ($a3)
/* 064C88 800BCA38 ACEF0004 */  sw    $t7, 4($a3)
/* 064C8C 800BCA3C 3C18F650 */  lui   $t8, (0xF65002D8 >> 16) # lui $t8, 0xf650
/* 064C90 800BCA40 371802D8 */  ori   $t8, (0xF65002D8 & 0xFFFF) # ori $t8, $t8, 0x2d8
/* 064C94 800BCA44 AC780000 */  sw    $t8, ($v1)
/* 064C98 800BCA48 AC600004 */  sw    $zero, 4($v1)
/* 064C9C 800BCA4C 24620008 */  addiu $v0, $v1, 8
/* 064CA0 800BCA50 AD020000 */  sw    $v0, ($t0)
.L800BCA54_ovl1:
/* 064CA4 800BCA54 03E00008 */  jr    $ra
/* 064CA8 800BCA58 00000000 */   nop   
.type func_800BC9A4, @function
.size func_800BC9A4, . - func_800BC9A4
