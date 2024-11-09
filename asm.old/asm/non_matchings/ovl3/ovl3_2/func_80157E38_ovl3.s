glabel func_80157E38_ovl3
/* 0B8878 80157E38 3C028013 */  lui   $v0, %hi(D_8012E7C4) # $v0, 0x8013
/* 0B887C 80157E3C 9042E7C4 */  lbu   $v0, %lo(D_8012E7C4)($v0)
/* 0B8880 80157E40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B8884 80157E44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B8888 80157E48 10400009 */  beqz  $v0, .L80157E70_ovl3
/* 0B888C 80157E4C AFA40018 */   sw    $a0, 0x18($sp)
/* 0B8890 80157E50 24010001 */  li    $at, 1
/* 0B8894 80157E54 10410014 */  beq   $v0, $at, .L80157EA8_ovl3
/* 0B8898 80157E58 3C040002 */   lui   $a0, 2
/* 0B889C 80157E5C 24010002 */  li    $at, 2
/* 0B88A0 80157E60 1041001E */  beq   $v0, $at, .L80157EDC_ovl3
/* 0B88A4 80157E64 3C040002 */   lui   $a0, 2
/* 0B88A8 80157E68 10000028 */  b     .L80157F0C_ovl3
/* 0B88AC 80157E6C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80157E70_ovl3:
/* 0B88B0 80157E70 3C040002 */  lui   $a0, (0x0002009B >> 16) # lui $a0, 2
/* 0B88B4 80157E74 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0B88B8 80157E78 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0B88BC 80157E7C 3484009B */  ori   $a0, (0x0002009B & 0xFFFF) # ori $a0, $a0, 0x9b
/* 0B88C0 80157E80 0C02A9E3 */  jal   func_800AA78C
/* 0B88C4 80157E84 3C0640C0 */   lui   $a2, 0x40c0
/* 0B88C8 80157E88 3C040002 */  lui   $a0, (0x00020169 >> 16) # lui $a0, 2
/* 0B88CC 80157E8C 3C050002 */  lui   $a1, (0x0002009C >> 16) # lui $a1, 2
/* 0B88D0 80157E90 34A5009C */  ori   $a1, (0x0002009C & 0xFFFF) # ori $a1, $a1, 0x9c
/* 0B88D4 80157E94 3484009B */  ori   $a0, (0x0002009B & 0xFFFF) # ori $a0, $a0, 0x9b
/* 0B88D8 80157E98 0C048C3A */  jal   func_801230E8
/* 0B88DC 80157E9C 00003025 */   move  $a2, $zero
/* 0B88E0 80157EA0 1000001A */  b     .L80157F0C_ovl3
/* 0B88E4 80157EA4 8FBF0014 */   lw    $ra, 0x14($sp)
.L80157EA8_ovl3:
/* 0B88E8 80157EA8 3C050002 */  lui   $a1, (0x00020009 >> 16) # lui $a1, 2
/* 0B88EC 80157EAC 34A50009 */  ori   $a1, (0x00020009 & 0xFFFF) # ori $a1, $a1, 9
/* 0B88F0 80157EB0 34840169 */  ori   $a0, (0x00020169 & 0xFFFF) # ori $a0, $a0, 0x169
/* 0B88F4 80157EB4 0C02A9E3 */  jal   func_800AA78C
/* 0B88F8 80157EB8 3C0640C0 */   lui   $a2, 0x40c0
/* 0B88FC 80157EBC 3C040002 */  lui   $a0, (0x000200C3 >> 16) # lui $a0, 2
/* 0B8900 80157EC0 3C050002 */  lui   $a1, (0x0002016A >> 16) # lui $a1, 2
/* 0B8904 80157EC4 34A5016A */  ori   $a1, (0x0002016A & 0xFFFF) # ori $a1, $a1, 0x16a
/* 0B8908 80157EC8 34840169 */  ori   $a0, (0x00020169 & 0xFFFF) # ori $a0, $a0, 0x169
/* 0B890C 80157ECC 0C048C3A */  jal   func_801230E8
/* 0B8910 80157ED0 00003025 */   move  $a2, $zero
/* 0B8914 80157ED4 1000000D */  b     .L80157F0C_ovl3
/* 0B8918 80157ED8 8FBF0014 */   lw    $ra, 0x14($sp)
.L80157EDC_ovl3:
/* 0B891C 80157EDC 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0B8920 80157EE0 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0B8924 80157EE4 348400C3 */  ori   $a0, (0x000200C3 & 0xFFFF) # ori $a0, $a0, 0xc3
/* 0B8928 80157EE8 0C02A9E3 */  jal   func_800AA78C
/* 0B892C 80157EEC 3C0640C0 */   lui   $a2, 0x40c0
/* 0B8930 80157EF0 3C040002 */  lui   $a0, (0x000200C3 >> 16) # lui $a0, 2
/* 0B8934 80157EF4 3C050002 */  lui   $a1, (0x000200C4 >> 16) # lui $a1, 2
/* 0B8938 80157EF8 34A500C4 */  ori   $a1, (0x000200C4 & 0xFFFF) # ori $a1, $a1, 0xc4
/* 0B893C 80157EFC 348400C3 */  ori   $a0, (0x000200C3 & 0xFFFF) # ori $a0, $a0, 0xc3
/* 0B8940 80157F00 0C048C3A */  jal   func_801230E8
/* 0B8944 80157F04 00003025 */   move  $a2, $zero
/* 0B8948 80157F08 8FBF0014 */  lw    $ra, 0x14($sp)
.L80157F0C_ovl3:
/* 0B894C 80157F0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B8950 80157F10 03E00008 */  jr    $ra
/* 0B8954 80157F14 00000000 */   nop   
.type func_80157E38_ovl3, @function
.size func_80157E38_ovl3, . - func_80157E38_ovl3
