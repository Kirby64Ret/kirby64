glabel func_801580C4_ovl3
/* 0B8B04 801580C4 44856000 */  mtc1  $a1, $f12
/* 0B8B08 801580C8 44802000 */  mtc1  $zero, $f4
/* 0B8B0C 801580CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B8B10 801580D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B8B14 801580D4 46046032 */  c.eq.s $f12, $f4
/* 0B8B18 801580D8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0B8B1C 801580DC 8C820000 */  lw    $v0, ($a0)
/* 0B8B20 801580E0 3C01800E */  lui   $at, 0x800e
/* 0B8B24 801580E4 45010014 */  bc1t  .L80158138_ovl3
/* 0B8B28 801580E8 00027080 */   sll   $t6, $v0, 2
/* 0B8B2C 801580EC 002E0821 */  addu  $at, $at, $t6
/* 0B8B30 801580F0 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 0B8B34 801580F4 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0B8B38 801580F8 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0B8B3C 801580FC 46066032 */  c.eq.s $f12, $f6
/* 0B8B40 80158100 00000000 */  nop   
/* 0B8B44 80158104 4503000D */  bc1tl .L8015813C_ovl3
/* 0B8B48 80158108 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B8B4C 8015810C 8E0F0034 */  lw    $t7, 0x34($s0)
/* 0B8B50 80158110 35F80001 */  ori   $t8, $t7, 1
/* 0B8B54 80158114 33080001 */  andi  $t0, $t8, 1
/* 0B8B58 80158118 11000007 */  beqz  $t0, .L80158138_ovl3
/* 0B8B5C 8015811C AE180034 */   sw    $t8, 0x34($s0)
.L80158120_ovl3:
/* 0B8B60 80158120 0C002DAF */  jal   finish_current_thread
/* 0B8B64 80158124 24040001 */   li    $a0, 1
/* 0B8B68 80158128 8E090034 */  lw    $t1, 0x34($s0)
/* 0B8B6C 8015812C 312A0001 */  andi  $t2, $t1, 1
/* 0B8B70 80158130 1540FFFB */  bnez  $t2, .L80158120_ovl3
/* 0B8B74 80158134 00000000 */   nop   
.L80158138_ovl3:
/* 0B8B78 80158138 8FBF001C */  lw    $ra, 0x1c($sp)
.L8015813C_ovl3:
/* 0B8B7C 8015813C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B8B80 80158140 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B8B84 80158144 03E00008 */  jr    $ra
/* 0B8B88 80158148 00000000 */   nop   
.type func_801580C4_ovl3, @function
.size func_801580C4_ovl3, . - func_801580C4_ovl3
