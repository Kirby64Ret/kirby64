glabel func_8021AD88_ovl9
/* 1C8DD8 8021AD88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1C8DDC 8021AD8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1C8DE0 8021AD90 0C06738A */  jal   func_8019CE28_ovl9
/* 1C8DE4 8021AD94 AFA40018 */   sw    $a0, 0x18($sp)
/* 1C8DE8 8021AD98 10400049 */  beqz  $v0, .L8021AEC0_ovl9
/* 1C8DEC 8021AD9C 3C198005 */ lui $t9, %hi(D_8004A7C4)
/* 1C8DF0 8021ADA0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1C8DF4 8021ADA4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1C8DF8 8021ADA8 44802000 */  mtc1  $zero, $f4
/* 1C8DFC 8021ADAC 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 1C8E00 8021ADB0 8C4E0000 */  lw    $t6, ($v0)
/* 1C8E04 8021ADB4 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 1C8E08 8021ADB8 3C01800E */ lui $at, %hi(D_800E3750)
/* 1C8E0C 8021ADBC 000E7880 */  sll   $t7, $t6, 2
/* 1C8E10 8021ADC0 00CFC021 */  addu  $t8, $a2, $t7
/* 1C8E14 8021ADC4 E7040000 */  swc1  $f4, ($t8)
/* 1C8E18 8021ADC8 8C430000 */  lw    $v1, ($v0)
/* 1C8E1C 8021ADCC 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 1C8E20 8021ADD0 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 1C8E24 8021ADD4 00031880 */  sll   $v1, $v1, 2
/* 1C8E28 8021ADD8 00C3C821 */  addu  $t9, $a2, $v1
/* 1C8E2C 8021ADDC C7200000 */  lwc1  $f0, ($t9)
/* 1C8E30 8021ADE0 00230821 */  addu  $at, $at, $v1
/* 1C8E34 8021ADE4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1C8E38 8021ADE8 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1C8E3C 8021ADEC 8C480000 */  lw    $t0, ($v0)
/* 1C8E40 8021ADF0 3C01800E */ lui $at, %hi(D_800E3590)
/* 1C8E44 8021ADF4 3C058022 */  lui   $a1, %hi(D_8021ABB4) # $a1, 0x8022
/* 1C8E48 8021ADF8 00084880 */  sll   $t1, $t0, 2
/* 1C8E4C 8021ADFC 00290821 */  addu  $at, $at, $t1
/* 1C8E50 8021AE00 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1C8E54 8021AE04 8C4A0000 */  lw    $t2, ($v0)
/* 1C8E58 8021AE08 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1C8E5C 8021AE0C 24A5ABB4 */  addiu $a1, %lo(D_8021ABB4) # addiu $a1, $a1, -0x544c
/* 1C8E60 8021AE10 000A5880 */  sll   $t3, $t2, 2
/* 1C8E64 8021AE14 002B0821 */  addu  $at, $at, $t3
/* 1C8E68 8021AE18 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1C8E6C 8021AE1C 8C4C0000 */  lw    $t4, ($v0)
/* 1C8E70 8021AE20 3C01800E */ lui $at, %hi(D_800E3210)
/* 1C8E74 8021AE24 000C6880 */  sll   $t5, $t4, 2
/* 1C8E78 8021AE28 002D0821 */  addu  $at, $at, $t5
/* 1C8E7C 8021AE2C E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1C8E80 8021AE30 8C4E0000 */  lw    $t6, ($v0)
/* 1C8E84 8021AE34 3C01800E */ lui $at, %hi(D_800E3050)
/* 1C8E88 8021AE38 240C0001 */  li    $t4, 1
/* 1C8E8C 8021AE3C 000E7880 */  sll   $t7, $t6, 2
/* 1C8E90 8021AE40 002F0821 */  addu  $at, $at, $t7
/* 1C8E94 8021AE44 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1C8E98 8021AE48 8C580000 */  lw    $t8, ($v0)
/* 1C8E9C 8021AE4C 3C018022 */  lui   $at, %hi(D_8021DEE0_ovl9) # $at, 0x8022
/* 1C8EA0 8021AE50 C426DEE0 */  lwc1  $f6, %lo(D_8021DEE0_ovl9)($at)
/* 1C8EA4 8021AE54 0018C880 */  sll   $t9, $t8, 2
/* 1C8EA8 8021AE58 00F94021 */  addu  $t0, $a3, $t9
/* 1C8EAC 8021AE5C E5060000 */  swc1  $f6, ($t0)
/* 1C8EB0 8021AE60 8C430000 */  lw    $v1, ($v0)
/* 1C8EB4 8021AE64 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1C8EB8 8021AE68 00031880 */  sll   $v1, $v1, 2
/* 1C8EBC 8021AE6C 00E34821 */  addu  $t1, $a3, $v1
/* 1C8EC0 8021AE70 C5220000 */  lwc1  $f2, ($t1)
/* 1C8EC4 8021AE74 00230821 */  addu  $at, $at, $v1
/* 1C8EC8 8021AE78 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1C8ECC 8021AE7C 8C4A0000 */  lw    $t2, ($v0)
/* 1C8ED0 8021AE80 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1C8ED4 8021AE84 000A5880 */  sll   $t3, $t2, 2
/* 1C8ED8 8021AE88 002B0821 */  addu  $at, $at, $t3
/* 1C8EDC 8021AE8C E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1C8EE0 8021AE90 8C4D0000 */  lw    $t5, ($v0)
/* 1C8EE4 8021AE94 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1C8EE8 8021AE98 000D7080 */  sll   $t6, $t5, 2
/* 1C8EEC 8021AE9C 002E0821 */  addu  $at, $at, $t6
/* 1C8EF0 8021AEA0 AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
/* 1C8EF4 8021AEA4 8C4F0000 */  lw    $t7, ($v0)
/* 1C8EF8 8021AEA8 000FC080 */  sll   $t8, $t7, 2
/* 1C8EFC 8021AEAC 00982021 */  addu  $a0, $a0, $t8
/* 1C8F00 8021AEB0 0C02C7B2 */  jal   assign_new_process_entry
/* 1C8F04 8021AEB4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1C8F08 8021AEB8 10000058 */  b     .L8021B01C_ovl9
/* 1C8F0C 8021AEBC 8FBF0014 */   lw    $ra, 0x14($sp)
.L8021AEC0_ovl9:
/* 1C8F10 8021AEC0 8F39A7C4 */ lw $t9, %lo(D_8004A7C4)($t9)
/* 1C8F14 8021AEC4 3C0A800F */  lui   $t2, %hi(D_800E9720) # $t2, 0x800f
/* 1C8F18 8021AEC8 254A9720 */  addiu $t2, %lo(D_800E9720) # addiu $t2, $t2, -0x68e0
/* 1C8F1C 8021AECC 8F280000 */  lw    $t0, ($t9)
/* 1C8F20 8021AED0 00084880 */  sll   $t1, $t0, 2
/* 1C8F24 8021AED4 012A1021 */  addu  $v0, $t1, $t2
/* 1C8F28 8021AED8 8C430000 */  lw    $v1, ($v0)
/* 1C8F2C 8021AEDC 10600003 */  beqz  $v1, .L8021AEEC_ovl9
/* 1C8F30 8021AEE0 246BFFFF */   addiu $t3, $v1, -1
/* 1C8F34 8021AEE4 1000004C */  b     .L8021B018_ovl9
/* 1C8F38 8021AEE8 AC4B0000 */   sw    $t3, ($v0)
.L8021AEEC_ovl9:
/* 1C8F3C 8021AEEC 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 1C8F40 8021AEF0 44816000 */  mtc1  $at, $f12
/* 1C8F44 8021AEF4 0C0669FA */  jal   func_8019A7E8_ovl9
/* 1C8F48 8021AEF8 00000000 */   nop   
/* 1C8F4C 8021AEFC 10400046 */  beqz  $v0, .L8021B018_ovl9
/* 1C8F50 8021AF00 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1C8F54 8021AF04 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1C8F58 8021AF08 44804000 */  mtc1  $zero, $f8
/* 1C8F5C 8021AF0C 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 1C8F60 8021AF10 8C4D0000 */  lw    $t5, ($v0)
/* 1C8F64 8021AF14 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 1C8F68 8021AF18 3C01800E */ lui $at, %hi(D_800E3750)
/* 1C8F6C 8021AF1C 000D6080 */  sll   $t4, $t5, 2
/* 1C8F70 8021AF20 00CC7021 */  addu  $t6, $a2, $t4
/* 1C8F74 8021AF24 E5C80000 */  swc1  $f8, ($t6)
/* 1C8F78 8021AF28 8C430000 */  lw    $v1, ($v0)
/* 1C8F7C 8021AF2C 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 1C8F80 8021AF30 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 1C8F84 8021AF34 00031880 */  sll   $v1, $v1, 2
/* 1C8F88 8021AF38 00C37821 */  addu  $t7, $a2, $v1
/* 1C8F8C 8021AF3C C5E00000 */  lwc1  $f0, ($t7)
/* 1C8F90 8021AF40 00230821 */  addu  $at, $at, $v1
/* 1C8F94 8021AF44 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1C8F98 8021AF48 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1C8F9C 8021AF4C 8C580000 */  lw    $t8, ($v0)
/* 1C8FA0 8021AF50 3C01800E */ lui $at, %hi(D_800E3590)
/* 1C8FA4 8021AF54 3C058022 */  lui   $a1, %hi(D_8021ABB4) # $a1, 0x8022
/* 1C8FA8 8021AF58 0018C880 */  sll   $t9, $t8, 2
/* 1C8FAC 8021AF5C 00390821 */  addu  $at, $at, $t9
/* 1C8FB0 8021AF60 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1C8FB4 8021AF64 8C480000 */  lw    $t0, ($v0)
/* 1C8FB8 8021AF68 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1C8FBC 8021AF6C 24A5ABB4 */  addiu $a1, %lo(D_8021ABB4) # addiu $a1, $a1, -0x544c
/* 1C8FC0 8021AF70 00084880 */  sll   $t1, $t0, 2
/* 1C8FC4 8021AF74 00290821 */  addu  $at, $at, $t1
/* 1C8FC8 8021AF78 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1C8FCC 8021AF7C 8C4A0000 */  lw    $t2, ($v0)
/* 1C8FD0 8021AF80 3C01800E */ lui $at, %hi(D_800E3210)
/* 1C8FD4 8021AF84 000A5880 */  sll   $t3, $t2, 2
/* 1C8FD8 8021AF88 002B0821 */  addu  $at, $at, $t3
/* 1C8FDC 8021AF8C E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1C8FE0 8021AF90 8C4D0000 */  lw    $t5, ($v0)
/* 1C8FE4 8021AF94 3C01800E */ lui $at, %hi(D_800E3050)
/* 1C8FE8 8021AF98 240A0002 */  li    $t2, 2
/* 1C8FEC 8021AF9C 000D6080 */  sll   $t4, $t5, 2
/* 1C8FF0 8021AFA0 002C0821 */  addu  $at, $at, $t4
/* 1C8FF4 8021AFA4 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1C8FF8 8021AFA8 8C4E0000 */  lw    $t6, ($v0)
/* 1C8FFC 8021AFAC 3C018022 */  lui   $at, %hi(D_8021DEE4_ovl9) # $at, 0x8022
/* 1C9000 8021AFB0 C42ADEE4 */  lwc1  $f10, %lo(D_8021DEE4_ovl9)($at)
/* 1C9004 8021AFB4 000E7880 */  sll   $t7, $t6, 2
/* 1C9008 8021AFB8 00EFC021 */  addu  $t8, $a3, $t7
/* 1C900C 8021AFBC E70A0000 */  swc1  $f10, ($t8)
/* 1C9010 8021AFC0 8C430000 */  lw    $v1, ($v0)
/* 1C9014 8021AFC4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1C9018 8021AFC8 00031880 */  sll   $v1, $v1, 2
/* 1C901C 8021AFCC 00E3C821 */  addu  $t9, $a3, $v1
/* 1C9020 8021AFD0 C7220000 */  lwc1  $f2, ($t9)
/* 1C9024 8021AFD4 00230821 */  addu  $at, $at, $v1
/* 1C9028 8021AFD8 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1C902C 8021AFDC 8C480000 */  lw    $t0, ($v0)
/* 1C9030 8021AFE0 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1C9034 8021AFE4 00084880 */  sll   $t1, $t0, 2
/* 1C9038 8021AFE8 00290821 */  addu  $at, $at, $t1
/* 1C903C 8021AFEC E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1C9040 8021AFF0 8C4B0000 */  lw    $t3, ($v0)
/* 1C9044 8021AFF4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1C9048 8021AFF8 000B6880 */  sll   $t5, $t3, 2
/* 1C904C 8021AFFC 002D0821 */  addu  $at, $at, $t5
/* 1C9050 8021B000 AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
/* 1C9054 8021B004 8C4C0000 */  lw    $t4, ($v0)
/* 1C9058 8021B008 000C7080 */  sll   $t6, $t4, 2
/* 1C905C 8021B00C 008E2021 */  addu  $a0, $a0, $t6
/* 1C9060 8021B010 0C02C7B2 */  jal   assign_new_process_entry
/* 1C9064 8021B014 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L8021B018_ovl9:
/* 1C9068 8021B018 8FBF0014 */  lw    $ra, 0x14($sp)
.L8021B01C_ovl9:
/* 1C906C 8021B01C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1C9070 8021B020 03E00008 */  jr    $ra
/* 1C9074 8021B024 00000000 */   nop   
.type func_8021AD88_ovl9, @function
.size func_8021AD88_ovl9, . - func_8021AD88_ovl9
