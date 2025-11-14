glabel func_801741DC_ovl3
/* 0D4C1C 801741DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0D4C20 801741E0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0D4C24 801741E4 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0D4C28 801741E8 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0D4C2C 801741EC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D4C30 801741F0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0D4C34 801741F4 0C0473D6 */  jal   func_8011CF58
/* 0D4C38 801741F8 AE000030 */   sw    $zero, 0x30($s0)
/* 0D4C3C 801741FC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D4C40 80174200 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D4C44 80174204 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0D4C48 80174208 240E000F */  li    $t6, 15
/* 0D4C4C 8017420C 8DF80000 */  lw    $t8, ($t7)
/* 0D4C50 80174210 2408FFFF */  li    $t0, -1
/* 0D4C54 80174214 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0D4C58 80174218 0018C880 */  sll   $t9, $t8, 2
/* 0D4C5C 8017421C 00390821 */  addu  $at, $at, $t9
/* 0D4C60 80174220 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 0D4C64 80174224 A2000004 */  sb    $zero, 4($s0)
/* 0D4C68 80174228 A6000068 */  sh    $zero, 0x68($s0)
/* 0D4C6C 8017422C A208000D */  sb    $t0, 0xd($s0)
/* 0D4C70 80174230 0C02AA22 */  jal   func_800AA888
/* 0D4C74 80174234 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0D4C78 80174238 14400003 */  bnez  $v0, .L80174248_ovl3
/* 0D4C7C 8017423C 3C040002 */   lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0D4C80 80174240 0C048BC2 */  jal   func_80122F08
/* 0D4C84 80174244 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
.L80174248_ovl3:
/* 0D4C88 80174248 3C040002 */  lui   $a0, (0x0002010F >> 16) # lui $a0, 2
/* 0D4C8C 8017424C 3C050002 */  lui   $a1, (0x00020110 >> 16) # lui $a1, 2
/* 0D4C90 80174250 34A50110 */  ori   $a1, (0x00020110 & 0xFFFF) # ori $a1, $a1, 0x110
/* 0D4C94 80174254 3484010F */  ori   $a0, (0x0002010F & 0xFFFF) # ori $a0, $a0, 0x10f
/* 0D4C98 80174258 0C048C3A */  jal   func_801230E8
/* 0D4C9C 8017425C 24060001 */   li    $a2, 1
/* 0D4CA0 80174260 8E090030 */  lw    $t1, 0x30($s0)
/* 0D4CA4 80174264 252A0001 */  addiu $t2, $t1, 1
/* 0D4CA8 80174268 0C02BE85 */  jal   func_800AFA14
/* 0D4CAC 8017426C AE0A0030 */   sw    $t2, 0x30($s0)
/* 0D4CB0 80174270 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D4CB4 80174274 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D4CB8 80174278 27BD0020 */  addiu $sp, $sp, 0x20
/* 0D4CBC 8017427C 03E00008 */  jr    $ra
/* 0D4CC0 80174280 00000000 */   nop   
.type func_801741DC_ovl3, @function
.size func_801741DC_ovl3, . - func_801741DC_ovl3
