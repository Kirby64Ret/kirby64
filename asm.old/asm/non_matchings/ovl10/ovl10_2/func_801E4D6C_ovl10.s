glabel func_801E4D6C_ovl10
/* 1D5ADC 801E4D6C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1D5AE0 801E4D70 AFB30024 */  sw    $s3, 0x24($sp)
/* 1D5AE4 801E4D74 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1D5AE8 801E4D78 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1D5AEC 801E4D7C 8E620000 */  lw    $v0, ($s3)
/* 1D5AF0 801E4D80 AFBF002C */  sw    $ra, 0x2c($sp)
/* 1D5AF4 801E4D84 AFB40028 */  sw    $s4, 0x28($sp)
/* 1D5AF8 801E4D88 AFB20020 */  sw    $s2, 0x20($sp)
/* 1D5AFC 801E4D8C AFB1001C */  sw    $s1, 0x1c($sp)
/* 1D5B00 801E4D90 AFB00018 */  sw    $s0, 0x18($sp)
/* 1D5B04 801E4D94 AFA40058 */  sw    $a0, 0x58($sp)
/* 1D5B08 801E4D98 8C4E0000 */  lw    $t6, ($v0)
/* 1D5B0C 801E4D9C 3C18800E */ lui $t8, %hi(D_800E1B50)
/* 1D5B10 801E4DA0 3C19801F */  lui   $t9, %hi(D_801F44FC_ovl10) # $t9, 0x801f
/* 1D5B14 801E4DA4 000E7880 */  sll   $t7, $t6, 2
/* 1D5B18 801E4DA8 030FC021 */  addu  $t8, $t8, $t7
/* 1D5B1C 801E4DAC 8F181B50 */ lw $t8, %lo(D_800E1B50)($t8)
/* 1D5B20 801E4DB0 273944FC */  addiu $t9, %lo(D_801F44FC_ovl10) # addiu $t9, $t9, 0x44fc
/* 1D5B24 801E4DB4 27B10044 */  addiu $s1, $sp, 0x44
/* 1D5B28 801E4DB8 AFB80054 */  sw    $t8, 0x54($sp)
/* 1D5B2C 801E4DBC 8F290000 */  lw    $t1, ($t9)
/* 1D5B30 801E4DC0 3C14800F */  lui   $s4, %hi(D_800E9E20) # $s4, 0x800f
/* 1D5B34 801E4DC4 26949E20 */  addiu $s4, %lo(D_800E9E20) # addiu $s4, $s4, -0x61e0
/* 1D5B38 801E4DC8 AE290000 */  sw    $t1, ($s1)
/* 1D5B3C 801E4DCC 8F280004 */  lw    $t0, 4($t9)
/* 1D5B40 801E4DD0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1D5B44 801E4DD4 44812000 */  mtc1  $at, $f4
/* 1D5B48 801E4DD8 AE280004 */  sw    $t0, 4($s1)
/* 1D5B4C 801E4DDC 8F290008 */  lw    $t1, 8($t9)
/* 1D5B50 801E4DE0 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1D5B54 801E4DE4 240F0004 */  li    $t7, 4
/* 1D5B58 801E4DE8 AE290008 */  sw    $t1, 8($s1)
/* 1D5B5C 801E4DEC 8C4A0000 */  lw    $t2, ($v0)
/* 1D5B60 801E4DF0 3C03800F */  lui   $v1, %hi(D_800EA6E0) # $v1, 0x800f
/* 1D5B64 801E4DF4 2463A6E0 */  addiu $v1, %lo(D_800EA6E0) # addiu $v1, $v1, -0x5920
/* 1D5B68 801E4DF8 000A5880 */  sll   $t3, $t2, 2
/* 1D5B6C 801E4DFC 028B6021 */  addu  $t4, $s4, $t3
/* 1D5B70 801E4E00 AD800000 */  sw    $zero, ($t4)
/* 1D5B74 801E4E04 8C4D0000 */  lw    $t5, ($v0)
/* 1D5B78 801E4E08 24100014 */  li    $s0, 20
/* 1D5B7C 801E4E0C 000D7080 */  sll   $t6, $t5, 2
/* 1D5B80 801E4E10 002E0821 */  addu  $at, $at, $t6
/* 1D5B84 801E4E14 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1D5B88 801E4E18 8C580000 */  lw    $t8, ($v0)
/* 1D5B8C 801E4E1C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D5B90 801E4E20 0018C880 */  sll   $t9, $t8, 2
/* 1D5B94 801E4E24 00390821 */  addu  $at, $at, $t9
/* 1D5B98 801E4E28 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1D5B9C 801E4E2C 8C480000 */  lw    $t0, ($v0)
/* 1D5BA0 801E4E30 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1D5BA4 801E4E34 44813000 */  mtc1  $at, $f6
/* 1D5BA8 801E4E38 00084880 */  sll   $t1, $t0, 2
/* 1D5BAC 801E4E3C 00695021 */  addu  $t2, $v1, $t1
/* 1D5BB0 801E4E40 E5460000 */  swc1  $f6, ($t2)
/* 1D5BB4 801E4E44 8C4B0000 */  lw    $t3, ($v0)
/* 1D5BB8 801E4E48 000B6080 */  sll   $t4, $t3, 2
/* 1D5BBC 801E4E4C 006C6821 */  addu  $t5, $v1, $t4
/* 1D5BC0 801E4E50 C5A80000 */  lwc1  $f8, ($t5)
/* 1D5BC4 801E4E54 4600428D */  trunc.w.s $f10, $f8
/* 1D5BC8 801E4E58 44045000 */  mfc1  $a0, $f10
/* 1D5BCC 801E4E5C 0C02F07F */  jal   func_800BC1FC
/* 1D5BD0 801E4E60 00000000 */   nop   
/* 1D5BD4 801E4E64 3C040001 */  lui   $a0, (0x00010321 >> 16) # lui $a0, 1
/* 1D5BD8 801E4E68 0C02A7A9 */  jal   func_800A9EA4
/* 1D5BDC 801E4E6C 34840321 */   ori   $a0, (0x00010321 & 0xFFFF) # ori $a0, $a0, 0x321
/* 1D5BE0 801E4E70 3C040001 */  lui   $a0, (0x00010320 >> 16) # lui $a0, 1
/* 1D5BE4 801E4E74 34840320 */  ori   $a0, (0x00010320 & 0xFFFF) # ori $a0, $a0, 0x320
/* 1D5BE8 801E4E78 0C02AA19 */  jal   func_800AA864
/* 1D5BEC 801E4E7C 24050001 */   li    $a1, 1
/* 1D5BF0 801E4E80 3C040001 */  lui   $a0, (0x00010323 >> 16) # lui $a0, 1
/* 1D5BF4 801E4E84 0C02A7A9 */  jal   func_800A9EA4
/* 1D5BF8 801E4E88 34840323 */   ori   $a0, (0x00010323 & 0xFFFF) # ori $a0, $a0, 0x323
/* 1D5BFC 801E4E8C 3C040001 */  lui   $a0, (0x00010322 >> 16) # lui $a0, 1
/* 1D5C00 801E4E90 0C02A7A9 */  jal   func_800A9EA4
/* 1D5C04 801E4E94 34840322 */   ori   $a0, (0x00010322 & 0xFFFF) # ori $a0, $a0, 0x322
/* 1D5C08 801E4E98 3C06BECC */  lui   $a2, (0xBECCCCCD >> 16) # lui $a2, 0xbecc
/* 1D5C0C 801E4E9C 34C6CCCD */  ori   $a2, (0xBECCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 1D5C10 801E4EA0 02202025 */  move  $a0, $s1
/* 1D5C14 801E4EA4 0C0796C2 */  jal   func_801E5B08_ovl10
/* 1D5C18 801E4EA8 24050014 */   li    $a1, 20
/* 1D5C1C 801E4EAC 8E780000 */  lw    $t8, ($s3)
/* 1D5C20 801E4EB0 8F0F0000 */  lw    $t7, ($t8)
/* 1D5C24 801E4EB4 000FC880 */  sll   $t9, $t7, 2
/* 1D5C28 801E4EB8 02994021 */  addu  $t0, $s4, $t9
/* 1D5C2C 801E4EBC 8D090000 */  lw    $t1, ($t0)
/* 1D5C30 801E4EC0 5520000C */  bnezl $t1, .L801E4EF4_ovl10
/* 1D5C34 801E4EC4 3C040001 */   lui   $a0, 1
.L801E4EC8_ovl10:
/* 1D5C38 801E4EC8 0C002DAF */  jal   finish_current_thread
/* 1D5C3C 801E4ECC 24040001 */   li    $a0, 1
/* 1D5C40 801E4ED0 8E6A0000 */  lw    $t2, ($s3)
/* 1D5C44 801E4ED4 2610FFFF */  addiu $s0, $s0, -1
/* 1D5C48 801E4ED8 8D4B0000 */  lw    $t3, ($t2)
/* 1D5C4C 801E4EDC 000B6080 */  sll   $t4, $t3, 2
/* 1D5C50 801E4EE0 028C6821 */  addu  $t5, $s4, $t4
/* 1D5C54 801E4EE4 8DAE0000 */  lw    $t6, ($t5)
/* 1D5C58 801E4EE8 11C0FFF7 */  beqz  $t6, .L801E4EC8_ovl10
/* 1D5C5C 801E4EEC 00000000 */   nop   
/* 1D5C60 801E4EF0 3C040001 */  lui   $a0, (0x00010325 >> 16) # lui $a0, 1
.L801E4EF4_ovl10:
/* 1D5C64 801E4EF4 0C02A7A9 */  jal   func_800A9EA4
/* 1D5C68 801E4EF8 34840325 */   ori   $a0, (0x00010325 & 0xFFFF) # ori $a0, $a0, 0x325
/* 1D5C6C 801E4EFC 3C040001 */  lui   $a0, (0x00010324 >> 16) # lui $a0, 1
/* 1D5C70 801E4F00 0C02A7A9 */  jal   func_800A9EA4
/* 1D5C74 801E4F04 34840324 */   ori   $a0, (0x00010324 & 0xFFFF) # ori $a0, $a0, 0x324
/* 1D5C78 801E4F08 8E780000 */  lw    $t8, ($s3)
/* 1D5C7C 801E4F0C 3C11800E */  lui   $s1, %hi(D_800DD8D0) # $s1, 0x800e
/* 1D5C80 801E4F10 2631D8D0 */  addiu $s1, %lo(D_800DD8D0) # addiu $s1, $s1, -0x2730
/* 1D5C84 801E4F14 8F0F0000 */  lw    $t7, ($t8)
/* 1D5C88 801E4F18 3C12C000 */  lui   $s2, 0xc000
/* 1D5C8C 801E4F1C 000FC880 */  sll   $t9, $t7, 2
/* 1D5C90 801E4F20 02394021 */  addu  $t0, $s1, $t9
/* 1D5C94 801E4F24 8D090000 */  lw    $t1, ($t0)
/* 1D5C98 801E4F28 00095782 */  srl   $t2, $t1, 0x1e
/* 1D5C9C 801E4F2C 5540000D */  bnezl $t2, .L801E4F64_ovl10
/* 1D5CA0 801E4F30 3C040001 */   lui   $a0, 1
/* 1D5CA4 801E4F34 2610FFFF */  addiu $s0, $s0, -1
.L801E4F38_ovl10:
/* 1D5CA8 801E4F38 0C002DAF */  jal   finish_current_thread
/* 1D5CAC 801E4F3C 24040001 */   li    $a0, 1
/* 1D5CB0 801E4F40 8E6B0000 */  lw    $t3, ($s3)
/* 1D5CB4 801E4F44 8D6C0000 */  lw    $t4, ($t3)
/* 1D5CB8 801E4F48 000C6880 */  sll   $t5, $t4, 2
/* 1D5CBC 801E4F4C 022D7021 */  addu  $t6, $s1, $t5
/* 1D5CC0 801E4F50 8DD80000 */  lw    $t8, ($t6)
/* 1D5CC4 801E4F54 03127824 */  and   $t7, $t8, $s2
/* 1D5CC8 801E4F58 51E0FFF7 */  beql  $t7, $zero, .L801E4F38_ovl10
/* 1D5CCC 801E4F5C 2610FFFF */   addiu $s0, $s0, -1
/* 1D5CD0 801E4F60 3C040001 */  lui   $a0, (0x00010327 >> 16) # lui $a0, 1
.L801E4F64_ovl10:
/* 1D5CD4 801E4F64 0C02A7A9 */  jal   func_800A9EA4
/* 1D5CD8 801E4F68 34840327 */   ori   $a0, (0x00010327 & 0xFFFF) # ori $a0, $a0, 0x327
/* 1D5CDC 801E4F6C 3C040001 */  lui   $a0, (0x00010326 >> 16) # lui $a0, 1
/* 1D5CE0 801E4F70 0C02A7A9 */  jal   func_800A9EA4
/* 1D5CE4 801E4F74 34840326 */   ori   $a0, (0x00010326 & 0xFFFF) # ori $a0, $a0, 0x326
/* 1D5CE8 801E4F78 0C002DAF */  jal   finish_current_thread
/* 1D5CEC 801E4F7C 02002025 */   move  $a0, $s0
/* 1D5CF0 801E4F80 8E620000 */  lw    $v0, ($s3)
/* 1D5CF4 801E4F84 44808000 */  mtc1  $zero, $f16
/* 1D5CF8 801E4F88 3C05800E */  lui   $a1, %hi(D_800E3910) # $a1, 0x800e
/* 1D5CFC 801E4F8C 8C590000 */  lw    $t9, ($v0)
/* 1D5D00 801E4F90 24A53910 */  addiu $a1, %lo(D_800E3910) # addiu $a1, $a1, 0x3910
/* 1D5D04 801E4F94 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D5D08 801E4F98 00194080 */  sll   $t0, $t9, 2
/* 1D5D0C 801E4F9C 00A84821 */  addu  $t1, $a1, $t0
/* 1D5D10 801E4FA0 E5300000 */  swc1  $f16, ($t1)
/* 1D5D14 801E4FA4 8C430000 */  lw    $v1, ($v0)
/* 1D5D18 801E4FA8 3C06800E */  lui   $a2, %hi(D_800E3E50) # $a2, 0x800e
/* 1D5D1C 801E4FAC 24C63E50 */  addiu $a2, %lo(D_800E3E50) # addiu $a2, $a2, 0x3e50
/* 1D5D20 801E4FB0 00031880 */  sll   $v1, $v1, 2
/* 1D5D24 801E4FB4 00A35021 */  addu  $t2, $a1, $v1
/* 1D5D28 801E4FB8 C5400000 */  lwc1  $f0, ($t2)
/* 1D5D2C 801E4FBC 00230821 */  addu  $at, $at, $v1
/* 1D5D30 801E4FC0 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1D5D34 801E4FC4 8C4B0000 */  lw    $t3, ($v0)
/* 1D5D38 801E4FC8 3C01800E */ lui $at, %hi(D_800E3590)
/* 1D5D3C 801E4FCC 000B6080 */  sll   $t4, $t3, 2
/* 1D5D40 801E4FD0 002C0821 */  addu  $at, $at, $t4
/* 1D5D44 801E4FD4 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1D5D48 801E4FD8 8C4D0000 */  lw    $t5, ($v0)
/* 1D5D4C 801E4FDC 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1D5D50 801E4FE0 000D7080 */  sll   $t6, $t5, 2
/* 1D5D54 801E4FE4 002E0821 */  addu  $at, $at, $t6
/* 1D5D58 801E4FE8 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1D5D5C 801E4FEC 8C580000 */  lw    $t8, ($v0)
/* 1D5D60 801E4FF0 3C01800E */ lui $at, %hi(D_800E3210)
/* 1D5D64 801E4FF4 00187880 */  sll   $t7, $t8, 2
/* 1D5D68 801E4FF8 002F0821 */  addu  $at, $at, $t7
/* 1D5D6C 801E4FFC E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1D5D70 801E5000 8C590000 */  lw    $t9, ($v0)
/* 1D5D74 801E5004 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D5D78 801E5008 00194080 */  sll   $t0, $t9, 2
/* 1D5D7C 801E500C 00280821 */  addu  $at, $at, $t0
/* 1D5D80 801E5010 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1D5D84 801E5014 8C490000 */  lw    $t1, ($v0)
/* 1D5D88 801E5018 3C01801F */  lui   $at, %hi(D_801F4B28_ovl10) # $at, 0x801f
/* 1D5D8C 801E501C C4324B28 */  lwc1  $f18, %lo(D_801F4B28_ovl10)($at)
/* 1D5D90 801E5020 00095080 */  sll   $t2, $t1, 2
/* 1D5D94 801E5024 00CA5821 */  addu  $t3, $a2, $t2
/* 1D5D98 801E5028 E5720000 */  swc1  $f18, ($t3)
/* 1D5D9C 801E502C 8C430000 */  lw    $v1, ($v0)
/* 1D5DA0 801E5030 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1D5DA4 801E5034 8FB80054 */  lw    $t8, 0x54($sp)
/* 1D5DA8 801E5038 00031880 */  sll   $v1, $v1, 2
/* 1D5DAC 801E503C 00C36021 */  addu  $t4, $a2, $v1
/* 1D5DB0 801E5040 C5820000 */  lwc1  $f2, ($t4)
/* 1D5DB4 801E5044 00230821 */  addu  $at, $at, $v1
/* 1D5DB8 801E5048 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1D5DBC 801E504C 8C4D0000 */  lw    $t5, ($v0)
/* 1D5DC0 801E5050 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1D5DC4 801E5054 000D7080 */  sll   $t6, $t5, 2
/* 1D5DC8 801E5058 002E0821 */  addu  $at, $at, $t6
/* 1D5DCC 801E505C E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1D5DD0 801E5060 0C03FC31 */  jal   func_800FF0C4
/* 1D5DD4 801E5064 8F040080 */   lw    $a0, 0x80($t8)
/* 1D5DD8 801E5068 8E790000 */  lw    $t9, ($s3)
/* 1D5DDC 801E506C 240F0002 */  li    $t7, 2
/* 1D5DE0 801E5070 8F280000 */  lw    $t0, ($t9)
/* 1D5DE4 801E5074 00084880 */  sll   $t1, $t0, 2
/* 1D5DE8 801E5078 02895021 */  addu  $t2, $s4, $t1
/* 1D5DEC 801E507C 0C02BE85 */  jal   func_800AFA14
/* 1D5DF0 801E5080 AD4F0000 */   sw    $t7, ($t2)
/* 1D5DF4 801E5084 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1D5DF8 801E5088 8FB00018 */  lw    $s0, 0x18($sp)
/* 1D5DFC 801E508C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1D5E00 801E5090 8FB20020 */  lw    $s2, 0x20($sp)
/* 1D5E04 801E5094 8FB30024 */  lw    $s3, 0x24($sp)
/* 1D5E08 801E5098 8FB40028 */  lw    $s4, 0x28($sp)
/* 1D5E0C 801E509C 03E00008 */  jr    $ra
/* 1D5E10 801E50A0 27BD0058 */   addiu $sp, $sp, 0x58
.type func_801E4D6C_ovl10, @function
.size func_801E4D6C_ovl10, . - func_801E4D6C_ovl10
