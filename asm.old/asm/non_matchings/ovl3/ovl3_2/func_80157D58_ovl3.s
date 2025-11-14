glabel func_80157D58_ovl3
/* 0B8798 80157D58 3C028013 */  lui   $v0, %hi(D_8012E7C4) # $v0, 0x8013
/* 0B879C 80157D5C 9042E7C4 */  lbu   $v0, %lo(D_8012E7C4)($v0)
/* 0B87A0 80157D60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B87A4 80157D64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B87A8 80157D68 10400009 */  beqz  $v0, .L80157D90_ovl3
/* 0B87AC 80157D6C AFA40018 */   sw    $a0, 0x18($sp)
/* 0B87B0 80157D70 24010001 */  li    $at, 1
/* 0B87B4 80157D74 10410014 */  beq   $v0, $at, .L80157DC8_ovl3
/* 0B87B8 80157D78 3C040002 */   lui   $a0, 2
/* 0B87BC 80157D7C 24010002 */  li    $at, 2
/* 0B87C0 80157D80 1041001E */  beq   $v0, $at, .L80157DFC_ovl3
/* 0B87C4 80157D84 3C040002 */   lui   $a0, 2
/* 0B87C8 80157D88 10000028 */  b     .L80157E2C_ovl3
/* 0B87CC 80157D8C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80157D90_ovl3:
/* 0B87D0 80157D90 3C040002 */  lui   $a0, (0x00020141 >> 16) # lui $a0, 2
/* 0B87D4 80157D94 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0B87D8 80157D98 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0B87DC 80157D9C 34840141 */  ori   $a0, (0x00020141 & 0xFFFF) # ori $a0, $a0, 0x141
/* 0B87E0 80157DA0 0C02A9E3 */  jal   func_800AA78C
/* 0B87E4 80157DA4 3C0640C0 */   lui   $a2, 0x40c0
/* 0B87E8 80157DA8 3C040002 */  lui   $a0, (0x0002017F >> 16) # lui $a0, 2
/* 0B87EC 80157DAC 3C050002 */  lui   $a1, (0x00020142 >> 16) # lui $a1, 2
/* 0B87F0 80157DB0 34A50142 */  ori   $a1, (0x00020142 & 0xFFFF) # ori $a1, $a1, 0x142
/* 0B87F4 80157DB4 34840141 */  ori   $a0, (0x00020141 & 0xFFFF) # ori $a0, $a0, 0x141
/* 0B87F8 80157DB8 0C048C3A */  jal   func_801230E8
/* 0B87FC 80157DBC 00003025 */   move  $a2, $zero
/* 0B8800 80157DC0 1000001A */  b     .L80157E2C_ovl3
/* 0B8804 80157DC4 8FBF0014 */   lw    $ra, 0x14($sp)
.L80157DC8_ovl3:
/* 0B8808 80157DC8 3C050002 */  lui   $a1, (0x00020009 >> 16) # lui $a1, 2
/* 0B880C 80157DCC 34A50009 */  ori   $a1, (0x00020009 & 0xFFFF) # ori $a1, $a1, 9
/* 0B8810 80157DD0 3484017F */  ori   $a0, (0x0002017F & 0xFFFF) # ori $a0, $a0, 0x17f
/* 0B8814 80157DD4 0C02A9E3 */  jal   func_800AA78C
/* 0B8818 80157DD8 3C0640C0 */   lui   $a2, 0x40c0
/* 0B881C 80157DDC 3C040002 */  lui   $a0, (0x000200D1 >> 16) # lui $a0, 2
/* 0B8820 80157DE0 3C050002 */  lui   $a1, (0x00020180 >> 16) # lui $a1, 2
/* 0B8824 80157DE4 34A50180 */  ori   $a1, (0x00020180 & 0xFFFF) # ori $a1, $a1, 0x180
/* 0B8828 80157DE8 3484017F */  ori   $a0, (0x0002017F & 0xFFFF) # ori $a0, $a0, 0x17f
/* 0B882C 80157DEC 0C048C3A */  jal   func_801230E8
/* 0B8830 80157DF0 00003025 */   move  $a2, $zero
/* 0B8834 80157DF4 1000000D */  b     .L80157E2C_ovl3
/* 0B8838 80157DF8 8FBF0014 */   lw    $ra, 0x14($sp)
.L80157DFC_ovl3:
/* 0B883C 80157DFC 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0B8840 80157E00 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0B8844 80157E04 348400D1 */  ori   $a0, (0x000200D1 & 0xFFFF) # ori $a0, $a0, 0xd1
/* 0B8848 80157E08 0C02A9E3 */  jal   func_800AA78C
/* 0B884C 80157E0C 3C0640C0 */   lui   $a2, 0x40c0
/* 0B8850 80157E10 3C040002 */  lui   $a0, (0x000200D1 >> 16) # lui $a0, 2
/* 0B8854 80157E14 3C050002 */  lui   $a1, (0x000200D2 >> 16) # lui $a1, 2
/* 0B8858 80157E18 34A500D2 */  ori   $a1, (0x000200D2 & 0xFFFF) # ori $a1, $a1, 0xd2
/* 0B885C 80157E1C 348400D1 */  ori   $a0, (0x000200D1 & 0xFFFF) # ori $a0, $a0, 0xd1
/* 0B8860 80157E20 0C048C3A */  jal   func_801230E8
/* 0B8864 80157E24 00003025 */   move  $a2, $zero
/* 0B8868 80157E28 8FBF0014 */  lw    $ra, 0x14($sp)
.L80157E2C_ovl3:
/* 0B886C 80157E2C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B8870 80157E30 03E00008 */  jr    $ra
/* 0B8874 80157E34 00000000 */   nop   
.type func_80157D58_ovl3, @function
.size func_80157D58_ovl3, . - func_80157D58_ovl3
