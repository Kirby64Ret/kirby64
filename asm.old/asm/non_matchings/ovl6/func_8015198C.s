glabel func_8015198C
/* 135D1C 8015198C 3C038005 */  lui   $v1, %hi(gDisplayListHeads) # $v1, 0x8005
/* 135D20 80151990 2463A3D0 */  addiu $v1, %lo(gDisplayListHeads) # addiu $v1, $v1, -0x5c30
/* 135D24 80151994 8C620000 */  lw    $v0, ($v1)
/* 135D28 80151998 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 135D2C 8015199C AFBF0014 */  sw    $ra, 0x14($sp)
/* 135D30 801519A0 244E0008 */  addiu $t6, $v0, 8
/* 135D34 801519A4 AC6E0000 */  sw    $t6, ($v1)
/* 135D38 801519A8 3C0FE700 */  lui   $t7, 0xe700
/* 135D3C 801519AC AC4F0000 */  sw    $t7, ($v0)
/* 135D40 801519B0 AC400004 */  sw    $zero, 4($v0)
/* 135D44 801519B4 8C620000 */  lw    $v0, ($v1)
/* 135D48 801519B8 3C19DB06 */  lui   $t9, (0xDB060010 >> 16) # lui $t9, 0xdb06
/* 135D4C 801519BC 37390010 */  ori   $t9, (0xDB060010 & 0xFFFF) # ori $t9, $t9, 0x10
/* 135D50 801519C0 24580008 */  addiu $t8, $v0, 8
/* 135D54 801519C4 AC780000 */  sw    $t8, ($v1)
/* 135D58 801519C8 AC590000 */  sw    $t9, ($v0)
/* 135D5C 801519CC 8C8E0000 */  lw    $t6, ($a0)
/* 135D60 801519D0 3C18800E */  lui   $t8, 0x800e
/* 135D64 801519D4 3C0C8016 */  lui   $t4, %hi(D_8015A670) # $t4, 0x8016
/* 135D68 801519D8 000E7880 */  sll   $t7, $t6, 2
/* 135D6C 801519DC 030FC021 */  addu  $t8, $t8, $t7
/* 135D70 801519E0 8F18F4D0 */  lw    $t8, -0xb30($t8)
/* 135D74 801519E4 240F0018 */  li    $t7, 24
/* 135D78 801519E8 3C0EDB02 */  lui   $t6, 0xdb02
/* 135D7C 801519EC AC580004 */  sw    $t8, 4($v0)
/* 135D80 801519F0 8C620000 */  lw    $v0, ($v1)
/* 135D84 801519F4 258CA670 */  addiu $t4, %lo(D_8015A670) # addiu $t4, $t4, -0x5990
/* 135D88 801519F8 24590008 */  addiu $t9, $v0, 8
/* 135D8C 801519FC AC790000 */  sw    $t9, ($v1)
/* 135D90 80151A00 AC4F0004 */  sw    $t7, 4($v0)
/* 135D94 80151A04 AC4E0000 */  sw    $t6, ($v0)
/* 135D98 80151A08 8C620000 */  lw    $v0, ($v1)
/* 135D9C 80151A0C 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 135DA0 80151A10 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 135DA4 80151A14 24580008 */  addiu $t8, $v0, 8
/* 135DA8 80151A18 AC780000 */  sw    $t8, ($v1)
/* 135DAC 80151A1C AC590000 */  sw    $t9, ($v0)
/* 135DB0 80151A20 8D8E0000 */  lw    $t6, ($t4)
/* 135DB4 80151A24 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 135DB8 80151A28 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 135DBC 80151A2C 25CF0008 */  addiu $t7, $t6, 8
/* 135DC0 80151A30 AC4F0004 */  sw    $t7, 4($v0)
/* 135DC4 80151A34 8C620000 */  lw    $v0, ($v1)
/* 135DC8 80151A38 24580008 */  addiu $t8, $v0, 8
/* 135DCC 80151A3C AC780000 */  sw    $t8, ($v1)
/* 135DD0 80151A40 AC590000 */  sw    $t9, ($v0)
/* 135DD4 80151A44 8D8E0000 */  lw    $t6, ($t4)
/* 135DD8 80151A48 3C18FB00 */  lui   $t8, 0xfb00
/* 135DDC 80151A4C AC4E0004 */  sw    $t6, 4($v0)
/* 135DE0 80151A50 8C620000 */  lw    $v0, ($v1)
/* 135DE4 80151A54 244F0008 */  addiu $t7, $v0, 8
/* 135DE8 80151A58 AC6F0000 */  sw    $t7, ($v1)
/* 135DEC 80151A5C AC580000 */  sw    $t8, ($v0)
/* 135DF0 80151A60 8D850000 */  lw    $a1, ($t4)
/* 135DF4 80151A64 90AE000A */  lbu   $t6, 0xa($a1)
/* 135DF8 80151A68 90B90008 */  lbu   $t9, 8($a1)
/* 135DFC 80151A6C 000E7A00 */  sll   $t7, $t6, 8
/* 135E00 80151A70 00197600 */  sll   $t6, $t9, 0x18
/* 135E04 80151A74 01EEC025 */  or    $t8, $t7, $t6
/* 135E08 80151A78 90AF0009 */  lbu   $t7, 9($a1)
/* 135E0C 80151A7C 000F7400 */  sll   $t6, $t7, 0x10
/* 135E10 80151A80 030EC825 */  or    $t9, $t8, $t6
/* 135E14 80151A84 372F00FF */  ori   $t7, $t9, 0xff
/* 135E18 80151A88 AC4F0004 */  sw    $t7, 4($v0)
/* 135E1C 80151A8C 0C02AC3D */  jal   func_800AB0F4
/* 135E20 80151A90 AFA40018 */   sw    $a0, 0x18($sp)
/* 135E24 80151A94 2458FFED */  addiu $t8, $v0, -0x13
/* 135E28 80151A98 2F01000C */  sltiu $at, $t8, 0xc
/* 135E2C 80151A9C 3C038005 */  lui   $v1, %hi(gDisplayListHeads) # $v1, 0x8005
/* 135E30 80151AA0 3C0C8016 */  lui   $t4, %hi(D_8015A670) # $t4, 0x8016
/* 135E34 80151AA4 3C1FDB06 */  lui   $ra, (0xDB060010 >> 16) # lui $ra, 0xdb06
/* 135E38 80151AA8 37FF0010 */  ori   $ra, (0xDB060010 & 0xFFFF) # ori $ra, $ra, 0x10
/* 135E3C 80151AAC 258CA670 */  addiu $t4, %lo(D_8015A670) # addiu $t4, $t4, -0x5990
/* 135E40 80151AB0 2463A3D0 */  addiu $v1, %lo(gDisplayListHeads) # addiu $v1, $v1, -0x5c30
/* 135E44 80151AB4 8FA40018 */  lw    $a0, 0x18($sp)
/* 135E48 80151AB8 10200081 */  beqz  $at, .L80151CC0_ovl6
/* 135E4C 80151ABC 3C0DE700 */   lui   $t5, 0xe700
/* 135E50 80151AC0 0018C080 */  sll   $t8, $t8, 2
/* 135E54 80151AC4 3C018016 */  lui   $at, 0x8016
/* 135E58 80151AC8 00380821 */  addu  $at, $at, $t8
/* 135E5C 80151ACC 8C38A45C */  lw    $t8, -0x5ba4($at)
/* 135E60 80151AD0 03000008 */  jr    $t8
/* 135E64 80151AD4 00000000 */   nop   
/* 135E68 80151AD8 0C0050E9 */  jal   func_800143A4_ovl6
/* 135E6C 80151ADC 00000000 */   nop   
/* 135E70 80151AE0 10000078 */  b     .L80151CC4_ovl6
/* 135E74 80151AE4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 135E78 80151AE8 0C005617 */  jal   func_8001585C_ovl6
/* 135E7C 80151AEC 00000000 */   nop   
/* 135E80 80151AF0 10000074 */  b     .L80151CC4_ovl6
/* 135E84 80151AF4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 135E88 80151AF8 8C620004 */  lw    $v0, 4($v1)
/* 135E8C 80151AFC 244E0008 */  addiu $t6, $v0, 8
/* 135E90 80151B00 AC6E0004 */  sw    $t6, 4($v1)
/* 135E94 80151B04 AC400004 */  sw    $zero, 4($v0)
/* 135E98 80151B08 AC4D0000 */  sw    $t5, ($v0)
/* 135E9C 80151B0C 8C620004 */  lw    $v0, 4($v1)
/* 135EA0 80151B10 3C0E800E */  lui   $t6, 0x800e
/* 135EA4 80151B14 24590008 */  addiu $t9, $v0, 8
/* 135EA8 80151B18 AC790004 */  sw    $t9, 4($v1)
/* 135EAC 80151B1C AC5F0000 */  sw    $ra, ($v0)
/* 135EB0 80151B20 8C8F0000 */  lw    $t7, ($a0)
/* 135EB4 80151B24 000FC080 */  sll   $t8, $t7, 2
/* 135EB8 80151B28 01D87021 */  addu  $t6, $t6, $t8
/* 135EBC 80151B2C 8DCEF4D0 */  lw    $t6, -0xb30($t6)
/* 135EC0 80151B30 24180018 */  li    $t8, 24
/* 135EC4 80151B34 3C0FDB02 */  lui   $t7, 0xdb02
/* 135EC8 80151B38 AC4E0004 */  sw    $t6, 4($v0)
/* 135ECC 80151B3C 8C620004 */  lw    $v0, 4($v1)
/* 135ED0 80151B40 24590008 */  addiu $t9, $v0, 8
/* 135ED4 80151B44 AC790004 */  sw    $t9, 4($v1)
/* 135ED8 80151B48 AC580004 */  sw    $t8, 4($v0)
/* 135EDC 80151B4C AC4F0000 */  sw    $t7, ($v0)
/* 135EE0 80151B50 8C620004 */  lw    $v0, 4($v1)
/* 135EE4 80151B54 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 135EE8 80151B58 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 135EEC 80151B5C 244E0008 */  addiu $t6, $v0, 8
/* 135EF0 80151B60 AC6E0004 */  sw    $t6, 4($v1)
/* 135EF4 80151B64 AC590000 */  sw    $t9, ($v0)
/* 135EF8 80151B68 8D8F0000 */  lw    $t7, ($t4)
/* 135EFC 80151B6C 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 135F00 80151B70 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 135F04 80151B74 25F80008 */  addiu $t8, $t7, 8
/* 135F08 80151B78 AC580004 */  sw    $t8, 4($v0)
/* 135F0C 80151B7C 8C620004 */  lw    $v0, 4($v1)
/* 135F10 80151B80 244E0008 */  addiu $t6, $v0, 8
/* 135F14 80151B84 AC6E0004 */  sw    $t6, 4($v1)
/* 135F18 80151B88 AC590000 */  sw    $t9, ($v0)
/* 135F1C 80151B8C 8D8F0000 */  lw    $t7, ($t4)
/* 135F20 80151B90 3C0EFB00 */  lui   $t6, 0xfb00
/* 135F24 80151B94 AC4F0004 */  sw    $t7, 4($v0)
/* 135F28 80151B98 8C620004 */  lw    $v0, 4($v1)
/* 135F2C 80151B9C 24580008 */  addiu $t8, $v0, 8
/* 135F30 80151BA0 AC780004 */  sw    $t8, 4($v1)
/* 135F34 80151BA4 AC4E0000 */  sw    $t6, ($v0)
/* 135F38 80151BA8 8D850000 */  lw    $a1, ($t4)
/* 135F3C 80151BAC 90AF000A */  lbu   $t7, 0xa($a1)
/* 135F40 80151BB0 90B90008 */  lbu   $t9, 8($a1)
/* 135F44 80151BB4 000FC200 */  sll   $t8, $t7, 8
/* 135F48 80151BB8 00197E00 */  sll   $t7, $t9, 0x18
/* 135F4C 80151BBC 030F7025 */  or    $t6, $t8, $t7
/* 135F50 80151BC0 90B80009 */  lbu   $t8, 9($a1)
/* 135F54 80151BC4 00187C00 */  sll   $t7, $t8, 0x10
/* 135F58 80151BC8 01CFC825 */  or    $t9, $t6, $t7
/* 135F5C 80151BCC 373800FF */  ori   $t8, $t9, 0xff
/* 135F60 80151BD0 0C0052B5 */  jal   func_80014AD4_ovl6
/* 135F64 80151BD4 AC580004 */   sw    $t8, 4($v0)
/* 135F68 80151BD8 1000003A */  b     .L80151CC4_ovl6
/* 135F6C 80151BDC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 135F70 80151BE0 8C620004 */  lw    $v0, 4($v1)
/* 135F74 80151BE4 244E0008 */  addiu $t6, $v0, 8
/* 135F78 80151BE8 AC6E0004 */  sw    $t6, 4($v1)
/* 135F7C 80151BEC AC400004 */  sw    $zero, 4($v0)
/* 135F80 80151BF0 AC4D0000 */  sw    $t5, ($v0)
/* 135F84 80151BF4 8C620004 */  lw    $v0, 4($v1)
/* 135F88 80151BF8 3C0E800E */  lui   $t6, 0x800e
/* 135F8C 80151BFC 244F0008 */  addiu $t7, $v0, 8
/* 135F90 80151C00 AC6F0004 */  sw    $t7, 4($v1)
/* 135F94 80151C04 AC5F0000 */  sw    $ra, ($v0)
/* 135F98 80151C08 8C990000 */  lw    $t9, ($a0)
/* 135F9C 80151C0C 0019C080 */  sll   $t8, $t9, 2
/* 135FA0 80151C10 01D87021 */  addu  $t6, $t6, $t8
/* 135FA4 80151C14 8DCEF4D0 */  lw    $t6, -0xb30($t6)
/* 135FA8 80151C18 24180018 */  li    $t8, 24
/* 135FAC 80151C1C 3C19DB02 */  lui   $t9, 0xdb02
/* 135FB0 80151C20 AC4E0004 */  sw    $t6, 4($v0)
/* 135FB4 80151C24 8C620004 */  lw    $v0, 4($v1)
/* 135FB8 80151C28 244F0008 */  addiu $t7, $v0, 8
/* 135FBC 80151C2C AC6F0004 */  sw    $t7, 4($v1)
/* 135FC0 80151C30 AC580004 */  sw    $t8, 4($v0)
/* 135FC4 80151C34 AC590000 */  sw    $t9, ($v0)
/* 135FC8 80151C38 8C620004 */  lw    $v0, 4($v1)
/* 135FCC 80151C3C 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 135FD0 80151C40 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 135FD4 80151C44 244E0008 */  addiu $t6, $v0, 8
/* 135FD8 80151C48 AC6E0004 */  sw    $t6, 4($v1)
/* 135FDC 80151C4C AC4F0000 */  sw    $t7, ($v0)
/* 135FE0 80151C50 8D990000 */  lw    $t9, ($t4)
/* 135FE4 80151C54 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 135FE8 80151C58 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 135FEC 80151C5C 27380008 */  addiu $t8, $t9, 8
/* 135FF0 80151C60 AC580004 */  sw    $t8, 4($v0)
/* 135FF4 80151C64 8C620004 */  lw    $v0, 4($v1)
/* 135FF8 80151C68 244E0008 */  addiu $t6, $v0, 8
/* 135FFC 80151C6C AC6E0004 */  sw    $t6, 4($v1)
/* 136000 80151C70 AC4F0000 */  sw    $t7, ($v0)
/* 136004 80151C74 8D990000 */  lw    $t9, ($t4)
/* 136008 80151C78 3C0EFB00 */  lui   $t6, 0xfb00
/* 13600C 80151C7C AC590004 */  sw    $t9, 4($v0)
/* 136010 80151C80 8C620004 */  lw    $v0, 4($v1)
/* 136014 80151C84 24580008 */  addiu $t8, $v0, 8
/* 136018 80151C88 AC780004 */  sw    $t8, 4($v1)
/* 13601C 80151C8C AC4E0000 */  sw    $t6, ($v0)
/* 136020 80151C90 8D850000 */  lw    $a1, ($t4)
/* 136024 80151C94 90B9000A */  lbu   $t9, 0xa($a1)
/* 136028 80151C98 90AF0008 */  lbu   $t7, 8($a1)
/* 13602C 80151C9C 0019C200 */  sll   $t8, $t9, 8
/* 136030 80151CA0 000FCE00 */  sll   $t9, $t7, 0x18
/* 136034 80151CA4 03197025 */  or    $t6, $t8, $t9
/* 136038 80151CA8 90B80009 */  lbu   $t8, 9($a1)
/* 13603C 80151CAC 0018CC00 */  sll   $t9, $t8, 0x10
/* 136040 80151CB0 01D97825 */  or    $t7, $t6, $t9
/* 136044 80151CB4 35F800FF */  ori   $t8, $t7, 0xff
/* 136048 80151CB8 0C0056F3 */  jal   func_80015BCC_ovl6
/* 13604C 80151CBC AC580004 */   sw    $t8, 4($v0)
.L80151CC0_ovl6:
/* 136050 80151CC0 8FBF0014 */  lw    $ra, 0x14($sp)
.L80151CC4_ovl6:
/* 136054 80151CC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 136058 80151CC8 03E00008 */  jr    $ra
/* 13605C 80151CCC 00000000 */   nop   
.type func_8015198C, @function
.size func_8015198C, . - func_8015198C