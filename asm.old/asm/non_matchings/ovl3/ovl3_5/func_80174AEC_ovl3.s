glabel func_80174AEC_ovl3
/* 0D552C 80174AEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D5530 80174AF0 44866000 */  mtc1  $a2, $f12
/* 0D5534 80174AF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D5538 80174AF8 14A0001C */  bnez  $a1, .L80174B6C_ovl3
/* 0D553C 80174AFC AFA40018 */   sw    $a0, 0x18($sp)
/* 0D5540 80174B00 44802000 */  mtc1  $zero, $f4
/* 0D5544 80174B04 00000000 */  nop   
/* 0D5548 80174B08 46046032 */  c.eq.s $f12, $f4
/* 0D554C 80174B0C 00000000 */  nop   
/* 0D5550 80174B10 45030017 */  bc1tl .L80174B70_ovl3
/* 0D5554 80174B14 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D5558 80174B18 0C006291 */  jal   random_soft_s32_range
/* 0D555C 80174B1C 24040003 */   li    $a0, 3
/* 0D5560 80174B20 304E0002 */  andi  $t6, $v0, 2
/* 0D5564 80174B24 11C00005 */  beqz  $t6, .L80174B3C_ovl3
/* 0D5568 80174B28 00000000 */   nop   
/* 0D556C 80174B2C 0C029D9E */  jal   play_sound
/* 0D5570 80174B30 240400DE */   li    $a0, 222
/* 0D5574 80174B34 10000003 */  b     .L80174B44_ovl3
/* 0D5578 80174B38 00000000 */   nop   
.L80174B3C_ovl3:
/* 0D557C 80174B3C 0C029D9E */  jal   play_sound
/* 0D5580 80174B40 240400DF */   li    $a0, 223
.L80174B44_ovl3:
/* 0D5584 80174B44 0C029D9E */  jal   play_sound
/* 0D5588 80174B48 240400E7 */   li    $a0, 231
/* 0D558C 80174B4C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0D5590 80174B50 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0D5594 80174B54 804F000D */  lb    $t7, 0xd($v0)
/* 0D5598 80174B58 2401FFFE */  li    $at, -2
/* 0D559C 80174B5C A0400004 */  sb    $zero, 4($v0)
/* 0D55A0 80174B60 11E10002 */  beq   $t7, $at, .L80174B6C_ovl3
/* 0D55A4 80174B64 24180008 */   li    $t8, 8
/* 0D55A8 80174B68 A058000D */  sb    $t8, 0xd($v0)
.L80174B6C_ovl3:
/* 0D55AC 80174B6C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80174B70_ovl3:
/* 0D55B0 80174B70 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D55B4 80174B74 03E00008 */  jr    $ra
/* 0D55B8 80174B78 00000000 */   nop   
.type func_80174AEC_ovl3, @function
.size func_80174AEC_ovl3, . - func_80174AEC_ovl3
