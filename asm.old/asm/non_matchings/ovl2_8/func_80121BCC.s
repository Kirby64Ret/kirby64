glabel func_80121BCC
/* 0AA63C 80121BCC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0AA640 80121BD0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0AA644 80121BD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AA648 80121BD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AA64C 80121BDC 8DC20000 */  lw    $v0, ($t6)
/* 0AA650 80121BE0 3C03800F */ lui $v1, %hi(D_800E8AE0)
/* 0AA654 80121BE4 00021080 */  sll   $v0, $v0, 2
/* 0AA658 80121BE8 00621821 */  addu  $v1, $v1, $v0
/* 0AA65C 80121BEC 8C638AE0 */ lw $v1, %lo(D_800E8AE0)($v1)
/* 0AA660 80121BF0 306F0080 */  andi  $t7, $v1, 0x80
/* 0AA664 80121BF4 11E00022 */  beqz  $t7, .L80121C80_ovl2
/* 0AA668 80121BF8 30780006 */   andi  $t8, $v1, 6
/* 0AA66C 80121BFC 13000020 */  beqz  $t8, .L80121C80_ovl2
/* 0AA670 80121C00 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0AA674 80121C04 00220821 */  addu  $at, $at, $v0
/* 0AA678 80121C08 C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 0AA67C 80121C0C 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 0AA680 80121C10 00220821 */  addu  $at, $at, $v0
/* 0AA684 80121C14 C4262CD0 */ lwc1 $f6, %lo(gEntitiesPosYArray)($at)
/* 0AA688 80121C18 3C018013 */  lui   $at, %hi(D_80129090) # $at, 0x8013
/* 0AA68C 80121C1C C42A9090 */  lwc1  $f10, %lo(D_80129090)($at)
/* 0AA690 80121C20 46062201 */  sub.s $f8, $f4, $f6
/* 0AA694 80121C24 3C018013 */  lui   $at, %hi(D_8012E7DC) # $at, 0x8013
/* 0AA698 80121C28 241900F0 */  li    $t9, 240
/* 0AA69C 80121C2C 460A403C */  c.lt.s $f8, $f10
/* 0AA6A0 80121C30 00000000 */  nop   
/* 0AA6A4 80121C34 45020013 */  bc1fl .L80121C84_ovl2
/* 0AA6A8 80121C38 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AA6AC 80121C3C 0C029D9E */  jal   play_sound
/* 0AA6B0 80121C40 AC39E7DC */   sw    $t9, %lo(D_8012E7DC)($at)
/* 0AA6B4 80121C44 24040005 */  li    $a0, 5
/* 0AA6B8 80121C48 24050001 */  li    $a1, 1
/* 0AA6BC 80121C4C 24060016 */  li    $a2, 22
/* 0AA6C0 80121C50 0C02A040 */  jal   func_800A8100
/* 0AA6C4 80121C54 00003825 */   move  $a3, $zero
/* 0AA6C8 80121C58 24040005 */  li    $a0, 5
/* 0AA6CC 80121C5C 24050001 */  li    $a1, 1
/* 0AA6D0 80121C60 2406001A */  li    $a2, 26
/* 0AA6D4 80121C64 0C02A040 */  jal   func_800A8100
/* 0AA6D8 80121C68 00003825 */   move  $a3, $zero
/* 0AA6DC 80121C6C 24040005 */  li    $a0, 5
/* 0AA6E0 80121C70 24050001 */  li    $a1, 1
/* 0AA6E4 80121C74 2406001D */  li    $a2, 29
/* 0AA6E8 80121C78 0C02A040 */  jal   func_800A8100
/* 0AA6EC 80121C7C 00003825 */   move  $a3, $zero
.L80121C80_ovl2:
/* 0AA6F0 80121C80 8FBF0014 */  lw    $ra, 0x14($sp)
.L80121C84_ovl2:
/* 0AA6F4 80121C84 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AA6F8 80121C88 03E00008 */  jr    $ra
/* 0AA6FC 80121C8C 00000000 */   nop   
.type func_80121BCC, @function
.size func_80121BCC, . - func_80121BCC
