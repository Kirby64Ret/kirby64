glabel func_8016F6DC_ovl3
/* 0D011C 8016F6DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D0120 8016F6E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D0124 8016F6E4 3C018013 */  lui   $at, %hi(D_8012E7F0) # $at, 0x8013
/* 0D0128 8016F6E8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0D012C 8016F6EC 0C0473D6 */  jal   func_8011CF58
/* 0D0130 8016F6F0 AC20E7F0 */   sw    $zero, %lo(D_8012E7F0)($at)
/* 0D0134 8016F6F4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D0138 8016F6F8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D013C 8016F6FC 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0D0140 8016F700 240E0006 */  li    $t6, 6
/* 0D0144 8016F704 8DF80000 */  lw    $t8, ($t7)
/* 0D0148 8016F708 0018C880 */  sll   $t9, $t8, 2
/* 0D014C 8016F70C 00390821 */  addu  $at, $at, $t9
/* 0D0150 8016F710 0C048AD0 */  jal   func_80122B40
/* 0D0154 8016F714 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 0D0158 8016F718 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D015C 8016F71C 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D0160 8016F720 90620004 */  lbu   $v0, 4($v1)
/* 0D0164 8016F724 3C040002 */  lui   $a0, (0x000200B5 >> 16) # lui $a0, 2
/* 0D0168 8016F728 348400B5 */  ori   $a0, (0x000200B5 & 0xFFFF) # ori $a0, $a0, 0xb5
/* 0D016C 8016F72C 10400009 */  beqz  $v0, .L8016F754_ovl3
/* 0D0170 8016F730 3C050002 */   lui   $a1, (0x000200B6 >> 16) # lui $a1, 2
/* 0D0174 8016F734 24010001 */  li    $at, 1
/* 0D0178 8016F738 1041000C */  beq   $v0, $at, .L8016F76C_ovl3
/* 0D017C 8016F73C 3C040002 */   lui   $a0, 2
/* 0D0180 8016F740 24010002 */  li    $at, 2
/* 0D0184 8016F744 10410011 */  beq   $v0, $at, .L8016F78C_ovl3
/* 0D0188 8016F748 3C040002 */   lui   $a0, (0x000200CB >> 16) # lui $a0, 2
/* 0D018C 8016F74C 10000017 */  b     .L8016F7AC_ovl3
/* 0D0190 8016F750 8C680030 */   lw    $t0, 0x30($v1)
.L8016F754_ovl3:
/* 0D0194 8016F754 34A500B6 */  ori   $a1, (0x000200B6 & 0xFFFF) # ori $a1, $a1, 0xb6
/* 0D0198 8016F758 0C048C3A */  jal   func_801230E8
/* 0D019C 8016F75C 24060001 */   li    $a2, 1
/* 0D01A0 8016F760 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D01A4 8016F764 10000010 */  b     .L8016F7A8_ovl3
/* 0D01A8 8016F768 2463E7C0 */   addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
.L8016F76C_ovl3:
/* 0D01AC 8016F76C 3C050002 */  lui   $a1, (0x00020172 >> 16) # lui $a1, 2
/* 0D01B0 8016F770 34A50172 */  ori   $a1, (0x00020172 & 0xFFFF) # ori $a1, $a1, 0x172
/* 0D01B4 8016F774 34840171 */  ori   $a0, (0x00020171 & 0xFFFF) # ori $a0, $a0, 0x171
/* 0D01B8 8016F778 0C048C3A */  jal   func_801230E8
/* 0D01BC 8016F77C 24060001 */   li    $a2, 1
/* 0D01C0 8016F780 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D01C4 8016F784 10000008 */  b     .L8016F7A8_ovl3
/* 0D01C8 8016F788 2463E7C0 */   addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
.L8016F78C_ovl3:
/* 0D01CC 8016F78C 3C050002 */  lui   $a1, (0x000200CC >> 16) # lui $a1, 2
/* 0D01D0 8016F790 34A500CC */  ori   $a1, (0x000200CC & 0xFFFF) # ori $a1, $a1, 0xcc
/* 0D01D4 8016F794 348400CB */  ori   $a0, (0x000200CB & 0xFFFF) # ori $a0, $a0, 0xcb
/* 0D01D8 8016F798 0C048C3A */  jal   func_801230E8
/* 0D01DC 8016F79C 24060001 */   li    $a2, 1
/* 0D01E0 8016F7A0 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D01E4 8016F7A4 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
.L8016F7A8_ovl3:
/* 0D01E8 8016F7A8 8C680030 */  lw    $t0, 0x30($v1)
.L8016F7AC_ovl3:
/* 0D01EC 8016F7AC 25090001 */  addiu $t1, $t0, 1
/* 0D01F0 8016F7B0 0C02BE85 */  jal   func_800AFA14
/* 0D01F4 8016F7B4 AC690030 */   sw    $t1, 0x30($v1)
/* 0D01F8 8016F7B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D01FC 8016F7BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D0200 8016F7C0 03E00008 */  jr    $ra
/* 0D0204 8016F7C4 00000000 */   nop   
.type func_8016F6DC_ovl3, @function
.size func_8016F6DC_ovl3, . - func_8016F6DC_ovl3
