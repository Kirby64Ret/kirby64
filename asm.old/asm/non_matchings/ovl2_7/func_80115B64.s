glabel func_80115B64
/* 09E5D4 80115B64 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09E5D8 80115B68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09E5DC 80115B6C 8C830000 */  lw    $v1, ($a0)
/* 09E5E0 80115B70 3C0E800F */ lui $t6, %hi(D_800E98E0)
/* 09E5E4 80115B74 AFA40030 */  sw    $a0, 0x30($sp)
/* 09E5E8 80115B78 00031080 */  sll   $v0, $v1, 2
/* 09E5EC 80115B7C 01C27021 */  addu  $t6, $t6, $v0
/* 09E5F0 80115B80 8DCE98E0 */ lw $t6, %lo(D_800E98E0)($t6)
/* 09E5F4 80115B84 AFA2001C */  sw    $v0, 0x1c($sp)
/* 09E5F8 80115B88 0C044AD3 */  jal   func_80112B4C
/* 09E5FC 80115B8C AFAE0024 */   sw    $t6, 0x24($sp)
/* 09E600 80115B90 8FA2001C */  lw    $v0, 0x1c($sp)
/* 09E604 80115B94 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 09E608 80115B98 8FA30024 */  lw    $v1, 0x24($sp)
/* 09E60C 80115B9C 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 09E610 80115BA0 00827821 */  addu  $t7, $a0, $v0
/* 09E614 80115BA4 C5E40000 */  lwc1  $f4, ($t7)
/* 09E618 80115BA8 3C05800E */  lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 09E61C 80115BAC 00031880 */  sll   $v1, $v1, 2
/* 09E620 80115BB0 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 09E624 80115BB4 0083C021 */  addu  $t8, $a0, $v1
/* 09E628 80115BB8 3C01435C */  li    $at, 0x435C0000 # 220.000000
/* 09E62C 80115BBC 00A2C821 */  addu  $t9, $a1, $v0
/* 09E630 80115BC0 E7040000 */  swc1  $f4, ($t8)
/* 09E634 80115BC4 C7260000 */  lwc1  $f6, ($t9)
/* 09E638 80115BC8 44814000 */  mtc1  $at, $f8
/* 09E63C 80115BCC 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 09E640 80115BD0 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 09E644 80115BD4 46083280 */  add.s $f10, $f6, $f8
/* 09E648 80115BD8 00A34021 */  addu  $t0, $a1, $v1
/* 09E64C 80115BDC 00C24821 */  addu  $t1, $a2, $v0
/* 09E650 80115BE0 00C35021 */  addu  $t2, $a2, $v1
/* 09E654 80115BE4 E50A0000 */  swc1  $f10, ($t0)
/* 09E658 80115BE8 C5300000 */  lwc1  $f16, ($t1)
/* 09E65C 80115BEC 3C0B800E */ lui $t3, %hi(D_800DD8D0)
/* 09E660 80115BF0 01625821 */  addu  $t3, $t3, $v0
/* 09E664 80115BF4 E5500000 */  swc1  $f16, ($t2)
/* 09E668 80115BF8 8D6BD8D0 */ lw $t3, %lo(D_800DD8D0)($t3)
/* 09E66C 80115BFC 3C0D800E */ lui $t5, %hi(D_800DE350)
/* 09E670 80115C00 01A36821 */  addu  $t5, $t5, $v1
/* 09E674 80115C04 000B6040 */  sll   $t4, $t3, 1
/* 09E678 80115C08 0581000C */  bgez  $t4, .L80115C3C_ovl2
/* 09E67C 80115C0C 3C018005 */   lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 09E680 80115C10 8DADE350 */ lw $t5, %lo(D_800DE350)($t5)
/* 09E684 80115C14 3C040002 */  lui   $a0, (0x000202E7 >> 16) # lui $a0, 2
/* 09E688 80115C18 348402E7 */  ori   $a0, (0x000202E7 & 0xFFFF) # ori $a0, $a0, 0x2e7
/* 09E68C 80115C1C 0C02A806 */  jal   func_800AA018
/* 09E690 80115C20 AC2DA7C4 */   sw    $t5, %lo(D_8004A7C4)($at)
/* 09E694 80115C24 3C040002 */  lui   $a0, (0x000202E8 >> 16) # lui $a0, 2
/* 09E698 80115C28 0C02A806 */  jal   func_800AA018
/* 09E69C 80115C2C 348402E8 */   ori   $a0, (0x000202E8 & 0xFFFF) # ori $a0, $a0, 0x2e8
/* 09E6A0 80115C30 8FAE0030 */  lw    $t6, 0x30($sp)
/* 09E6A4 80115C34 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 09E6A8 80115C38 AC2EA7C4 */  sw    $t6, %lo(D_8004A7C4)($at)
.L80115C3C_ovl2:
/* 09E6AC 80115C3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09E6B0 80115C40 27BD0030 */  addiu $sp, $sp, 0x30
/* 09E6B4 80115C44 03E00008 */  jr    $ra
/* 09E6B8 80115C48 00000000 */   nop   
.type func_80115B64, @function
.size func_80115B64, . - func_80115B64
