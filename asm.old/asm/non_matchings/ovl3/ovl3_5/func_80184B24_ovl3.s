glabel func_80184B24_ovl3
/* 0E5564 80184B24 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0E5568 80184B28 AFB00018 */  sw    $s0, 0x18($sp)
/* 0E556C 80184B2C 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0E5570 80184B30 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0E5574 80184B34 AE000030 */  sw    $zero, 0x30($s0)
/* 0E5578 80184B38 3C01801A */  lui   $at, %hi(D_8019883C) # $at, 0x801a
/* 0E557C 80184B3C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0E5580 80184B40 AC20883C */  sw    $zero, %lo(D_8019883C)($at)
/* 0E5584 80184B44 AFB20020 */  sw    $s2, 0x20($sp)
/* 0E5588 80184B48 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0E558C 80184B4C AFA40028 */  sw    $a0, 0x28($sp)
/* 0E5590 80184B50 0C0473D6 */  jal   func_8011CF58
/* 0E5594 80184B54 A2000007 */   sb    $zero, 7($s0)
/* 0E5598 80184B58 8E0E0090 */  lw    $t6, 0x90($s0)
/* 0E559C 80184B5C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0E55A0 80184B60 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0E55A4 80184B64 AE0E00A0 */  sw    $t6, 0xa0($s0)
/* 0E55A8 80184B68 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0E55AC 80184B6C 240F0037 */  li    $t7, 55
/* 0E55B0 80184B70 3C088019 */  lui   $t0, %hi(D_801926E8) # $t0, 0x8019
/* 0E55B4 80184B74 8C580000 */  lw    $t8, ($v0)
/* 0E55B8 80184B78 250826E8 */  addiu $t0, %lo(D_801926E8) # addiu $t0, $t0, 0x26e8
/* 0E55BC 80184B7C 3C0B8019 */  lui   $t3, %hi(D_80190358) # $t3, 0x8019
/* 0E55C0 80184B80 0018C880 */  sll   $t9, $t8, 2
/* 0E55C4 80184B84 00390821 */  addu  $at, $at, $t9
/* 0E55C8 80184B88 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 0E55CC 80184B8C 8C490000 */  lw    $t1, ($v0)
/* 0E55D0 80184B90 3C01800E */ lui $at, %hi(D_800E0490)
/* 0E55D4 80184B94 256B0358 */  addiu $t3, %lo(D_80190358) # addiu $t3, $t3, 0x358
/* 0E55D8 80184B98 00095080 */  sll   $t2, $t1, 2
/* 0E55DC 80184B9C 002A0821 */  addu  $at, $at, $t2
/* 0E55E0 80184BA0 AC280490 */ sw $t0, %lo(D_800E0490)($at)
/* 0E55E4 80184BA4 0C04828A */  jal   func_80120A28
/* 0E55E8 80184BA8 AE0B015C */   sw    $t3, 0x15c($s0)
/* 0E55EC 80184BAC 3C040002 */  lui   $a0, (0x0002001A >> 16) # lui $a0, 2
/* 0E55F0 80184BB0 0C048BC2 */  jal   func_80122F08
/* 0E55F4 80184BB4 3484001A */   ori   $a0, (0x0002001A & 0xFFFF) # ori $a0, $a0, 0x1a
/* 0E55F8 80184BB8 240C0002 */  li    $t4, 2
/* 0E55FC 80184BBC AE0C0154 */  sw    $t4, 0x154($s0)
/* 0E5600 80184BC0 0C05A4F1 */  jal   func_801693C4_ovl3
/* 0E5604 80184BC4 2404000C */   li    $a0, 12
/* 0E5608 80184BC8 28010003 */  slti  $at, $zero, 3
/* 0E560C 80184BCC 10200015 */  beqz  $at, .L80184C24_ovl3
/* 0E5610 80184BD0 AE000044 */   sw    $zero, 0x44($s0)
/* 0E5614 80184BD4 3C12800D */  lui   $s2, %hi(gKirbyController) # $s2, 0x800d
/* 0E5618 80184BD8 3C118019 */  lui   $s1, %hi(D_80196DA8) # $s1, 0x8019
/* 0E561C 80184BDC 26316DA8 */  addiu $s1, %lo(D_80196DA8) # addiu $s1, $s1, 0x6da8
/* 0E5620 80184BE0 26526FE8 */  addiu $s2, %lo(gKirbyController) # addiu $s2, $s2, 0x6fe8
.L80184BE4_ovl3:
/* 0E5624 80184BE4 0C029D9E */  jal   play_sound
/* 0E5628 80184BE8 240400BB */   li    $a0, 187
/* 0E562C 80184BEC 8E0E0044 */  lw    $t6, 0x44($s0)
/* 0E5630 80184BF0 000EC080 */  sll   $t8, $t6, 2
/* 0E5634 80184BF4 02387821 */  addu  $t7, $s1, $t8
/* 0E5638 80184BF8 0C02A855 */  jal   func_800AA154
/* 0E563C 80184BFC 8DE40000 */   lw    $a0, ($t7)
/* 0E5640 80184C00 96590000 */  lhu   $t9, ($s2)
/* 0E5644 80184C04 33294000 */  andi  $t1, $t9, 0x4000
/* 0E5648 80184C08 51200007 */  beql  $t1, $zero, .L80184C28_ovl3
/* 0E564C 80184C0C 240CFFFF */   li    $t4, -1
/* 0E5650 80184C10 8E080044 */  lw    $t0, 0x44($s0)
/* 0E5654 80184C14 250A0001 */  addiu $t2, $t0, 1
/* 0E5658 80184C18 29410003 */  slti  $at, $t2, 3
/* 0E565C 80184C1C 1420FFF1 */  bnez  $at, .L80184BE4_ovl3
/* 0E5660 80184C20 AE0A0044 */   sw    $t2, 0x44($s0)
.L80184C24_ovl3:
/* 0E5664 80184C24 240CFFFF */  li    $t4, -1
.L80184C28_ovl3:
/* 0E5668 80184C28 3C040002 */  lui   $a0, (0x000201E2 >> 16) # lui $a0, 2
/* 0E566C 80184C2C AE0C0044 */  sw    $t4, 0x44($s0)
/* 0E5670 80184C30 0C02A855 */  jal   func_800AA154
/* 0E5674 80184C34 348401E2 */   ori   $a0, (0x000201E2 & 0xFFFF) # ori $a0, $a0, 0x1e2
/* 0E5678 80184C38 8E0D0030 */  lw    $t5, 0x30($s0)
/* 0E567C 80184C3C AE0000A0 */  sw    $zero, 0xa0($s0)
/* 0E5680 80184C40 25AE0001 */  addiu $t6, $t5, 1
/* 0E5684 80184C44 0C02BE85 */  jal   func_800AFA14
/* 0E5688 80184C48 AE0E0030 */   sw    $t6, 0x30($s0)
/* 0E568C 80184C4C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0E5690 80184C50 8FB00018 */  lw    $s0, 0x18($sp)
/* 0E5694 80184C54 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0E5698 80184C58 8FB20020 */  lw    $s2, 0x20($sp)
/* 0E569C 80184C5C 03E00008 */  jr    $ra
/* 0E56A0 80184C60 27BD0028 */   addiu $sp, $sp, 0x28
.type func_80184B24_ovl3, @function
.size func_80184B24_ovl3, . - func_80184B24_ovl3
