glabel func_80122B40
/* 0AB5B0 80122B40 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0AB5B4 80122B44 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0AB5B8 80122B48 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AB5BC 80122B4C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0AB5C0 80122B50 8DC20000 */  lw    $v0, ($t6)
/* 0AB5C4 80122B54 3C03800F */ lui $v1, %hi(D_800E8AE0)
/* 0AB5C8 80122B58 3C07800E */ lui $a3, %hi(gEntitiesNextPosXArray)
/* 0AB5CC 80122B5C 00021080 */  sll   $v0, $v0, 2
/* 0AB5D0 80122B60 00621821 */  addu  $v1, $v1, $v0
/* 0AB5D4 80122B64 8C638AE0 */ lw $v1, %lo(D_800E8AE0)($v1)
/* 0AB5D8 80122B68 00E23821 */  addu  $a3, $a3, $v0
/* 0AB5DC 80122B6C 24040005 */  li    $a0, 5
/* 0AB5E0 80122B70 306F0007 */  andi  $t7, $v1, 7
/* 0AB5E4 80122B74 11E00008 */  beqz  $t7, .L80122B98_ovl2
/* 0AB5E8 80122B78 24050001 */   li    $a1, 1
/* 0AB5EC 80122B7C 30780006 */  andi  $t8, $v1, 6
/* 0AB5F0 80122B80 13000003 */  beqz  $t8, .L80122B90_ovl2
/* 0AB5F4 80122B84 00000000 */   nop   
/* 0AB5F8 80122B88 1000001B */  b     .L80122BF8_ovl2
/* 0AB5FC 80122B8C 24060013 */   li    $a2, 19
.L80122B90_ovl2:
/* 0AB600 80122B90 10000019 */  b     .L80122BF8_ovl2
/* 0AB604 80122B94 2406000E */   li    $a2, 14
.L80122B98_ovl2:
/* 0AB608 80122B98 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0AB60C 80122B9C 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0AB610 80122BA0 3C01C148 */  li    $at, 0xC1480000 # -12.500000
/* 0AB614 80122BA4 44813000 */  mtc1  $at, $f6
/* 0AB618 80122BA8 C464017C */  lwc1  $f4, 0x17c($v1)
/* 0AB61C 80122BAC 4606203C */  c.lt.s $f4, $f6
/* 0AB620 80122BB0 00000000 */  nop   
/* 0AB624 80122BB4 4502000A */  bc1fl .L80122BE0_ovl2
/* 0AB628 80122BB8 9469010A */   lhu   $t1, 0x10a($v1)
/* 0AB62C 80122BBC 9479010A */  lhu   $t9, 0x10a($v1)
/* 0AB630 80122BC0 3C068013 */ lui $a2, %hi(D_8012844E)
/* 0AB634 80122BC4 001940C0 */  sll   $t0, $t9, 3
/* 0AB638 80122BC8 01194023 */  subu  $t0, $t0, $t9
/* 0AB63C 80122BCC 00084080 */  sll   $t0, $t0, 2
/* 0AB640 80122BD0 00C83021 */  addu  $a2, $a2, $t0
/* 0AB644 80122BD4 10000008 */  b     .L80122BF8_ovl2
/* 0AB648 80122BD8 94C6844E */ lhu $a2, %lo(D_8012844E)($a2)
/* 0AB64C 80122BDC 9469010A */  lhu   $t1, 0x10a($v1)
.L80122BE0_ovl2:
/* 0AB650 80122BE0 3C068013 */ lui $a2, %hi(D_8012844C)
/* 0AB654 80122BE4 000950C0 */  sll   $t2, $t1, 3
/* 0AB658 80122BE8 01495023 */  subu  $t2, $t2, $t1
/* 0AB65C 80122BEC 000A5080 */  sll   $t2, $t2, 2
/* 0AB660 80122BF0 00CA3021 */  addu  $a2, $a2, $t2
/* 0AB664 80122BF4 94C6844C */ lhu $a2, %lo(D_8012844C)($a2)
.L80122BF8_ovl2:
/* 0AB668 80122BF8 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0AB66C 80122BFC 00220821 */  addu  $at, $at, $v0
/* 0AB670 80122C00 C4282790 */ lwc1 $f8, %lo(gEntitiesNextPosYArray)($at)
/* 0AB674 80122C04 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0AB678 80122C08 00220821 */  addu  $at, $at, $v0
/* 0AB67C 80122C0C C42A2950 */ lwc1 $f10, %lo(gEntitiesNextPosZArray)($at)
/* 0AB680 80122C10 8CE725D0 */ lw $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 0AB684 80122C14 E7A80010 */  swc1  $f8, 0x10($sp)
/* 0AB688 80122C18 0C029FDD */  jal   func_800A7F74
/* 0AB68C 80122C1C E7AA0014 */   swc1  $f10, 0x14($sp)
/* 0AB690 80122C20 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0AB694 80122C24 27BD0020 */  addiu $sp, $sp, 0x20
/* 0AB698 80122C28 03E00008 */  jr    $ra
/* 0AB69C 80122C2C 00000000 */   nop   
.type func_80122B40, @function
.size func_80122B40, . - func_80122B40
