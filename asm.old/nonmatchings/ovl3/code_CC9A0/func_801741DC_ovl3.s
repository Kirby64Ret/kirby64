glabel func_801741DC_ovl3
/* D4C1C 801741DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D4C20 801741E0 AFB00018 */  sw         $s0, 0x18($sp)
/* D4C24 801741E4 3C108013 */  lui        $s0, %hi(gKirbyState)
/* D4C28 801741E8 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* D4C2C 801741EC AFBF001C */  sw         $ra, 0x1C($sp)
.L801741F0_ovl5:
/* D4C30 801741F0 AFA40020 */  sw         $a0, 0x20($sp)
/* D4C34 801741F4 0C0473D6 */  jal        func_8011CF58
/* D4C38 801741F8 AE000030 */   sw        $zero, 0x30($s0)
/* D4C3C 801741FC 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* D4C40 80174200 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* D4C44 80174204 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* D4C48 80174208 240E000F */  addiu      $t6, $zero, 0xF
/* D4C4C 8017420C 8DF80000 */  lw         $t8, 0x0($t7)
/* D4C50 80174210 2408FFFF */  addiu      $t0, $zero, -0x1
/* D4C54 80174214 3C040002 */  lui        $a0, (0x20007 >> 16)
/* D4C58 80174218 0018C880 */  sll        $t9, $t8, 2
/* D4C5C 8017421C 00390821 */  addu       $at, $at, $t9
/* D4C60 80174220 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* D4C64 80174224 A2000004 */  sb         $zero, 0x4($s0)
/* D4C68 80174228 A6000068 */  sh         $zero, 0x68($s0)
/* D4C6C 8017422C A208000D */  sb         $t0, 0xD($s0)
/* D4C70 80174230 0C02AA22 */  jal        func_800AA888
/* D4C74 80174234 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
/* D4C78 80174238 14400003 */  bnez       $v0, .L80174248_ovl3
/* D4C7C 8017423C 3C040002 */   lui       $a0, (0x20007 >> 16)
/* D4C80 80174240 0C048BC2 */  jal        func_80122F08
/* D4C84 80174244 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
.L80174248_ovl3:
/* D4C88 80174248 3C040002 */  lui        $a0, (0x2010F >> 16)
/* D4C8C 8017424C 3C050002 */  lui        $a1, (0x20110 >> 16)
/* D4C90 80174250 34A50110 */  ori        $a1, $a1, (0x20110 & 0xFFFF)
/* D4C94 80174254 3484010F */  ori        $a0, $a0, (0x2010F & 0xFFFF)
.L80174258_ovl5:
/* D4C98 80174258 0C048C3A */  jal        func_801230E8
/* D4C9C 8017425C 24060001 */   addiu     $a2, $zero, 0x1
/* D4CA0 80174260 8E090030 */  lw         $t1, 0x30($s0)
/* D4CA4 80174264 252A0001 */  addiu      $t2, $t1, 0x1
/* D4CA8 80174268 0C02BE85 */  jal        func_800AFA14
/* D4CAC 8017426C AE0A0030 */   sw        $t2, 0x30($s0)
/* D4CB0 80174270 8FBF001C */  lw         $ra, 0x1C($sp)
/* D4CB4 80174274 8FB00018 */  lw         $s0, 0x18($sp)
/* D4CB8 80174278 27BD0020 */  addiu      $sp, $sp, 0x20
/* D4CBC 8017427C 03E00008 */  jr         $ra
/* D4CC0 80174280 00000000 */   nop
