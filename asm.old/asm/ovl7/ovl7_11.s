.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801B4D50
/* 15ADC0 801B4D50 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15ADC4 801B4D54 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15ADC8 801B4D58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15ADCC 801B4D5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15ADD0 801B4D60 AFA40018 */  sw    $a0, 0x18($sp)
/* 15ADD4 801B4D64 8C4F0000 */  lw    $t7, ($v0)
/* 15ADD8 801B4D68 3C0E800B */  lui   $t6, %hi(D_800B6B8C) # $t6, 0x800b
/* 15ADDC 801B4D6C 3C01800E */  lui   $at, 0x800e
/* 15ADE0 801B4D70 000FC080 */  sll   $t8, $t7, 2
/* 15ADE4 801B4D74 00380821 */  addu  $at, $at, $t8
/* 15ADE8 801B4D78 25CE6B8C */  addiu $t6, %lo(D_800B6B8C) # addiu $t6, $t6, 0x6b8c
/* 15ADEC 801B4D7C AC2EEF90 */  sw    $t6, -0x1070($at)
/* 15ADF0 801B4D80 8C590000 */  lw    $t9, ($v0)
/* 15ADF4 801B4D84 3C04800E */  lui   $a0, 0x800e
/* 15ADF8 801B4D88 3C06801D */  lui   $a2, %hi(D_801CD620) # $a2, 0x801d
/* 15ADFC 801B4D8C 00992021 */  addu  $a0, $a0, $t9
/* 15AE00 801B4D90 90847880 */  lbu   $a0, 0x7880($a0)
/* 15AE04 801B4D94 24C6D620 */  addiu $a2, %lo(D_801CD620) # addiu $a2, $a2, -0x29e0
/* 15AE08 801B4D98 0C02911F */  jal   call_virtual_function
/* 15AE0C 801B4D9C 24050002 */   li    $a1, 2
/* 15AE10 801B4DA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15AE14 801B4DA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 15AE18 801B4DA8 03E00008 */  jr    $ra
/* 15AE1C 801B4DAC 00000000 */   nop   
.size func_801B4D50, . - func_801B4D50

glabel func_801B4DB0_ovl7
/* 15AE20 801B4DB0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15AE24 801B4DB4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15AE28 801B4DB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15AE2C 801B4DBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 15AE30 801B4DC0 AFA40018 */  sw    $a0, 0x18($sp)
/* 15AE34 801B4DC4 8DCF0000 */  lw    $t7, ($t6)
/* 15AE38 801B4DC8 3C04800E */  lui   $a0, 0x800e
/* 15AE3C 801B4DCC 3C06801D */  lui   $a2, %hi(D_801CD628) # $a2, 0x801d
/* 15AE40 801B4DD0 000FC080 */  sll   $t8, $t7, 2
/* 15AE44 801B4DD4 00982021 */  addu  $a0, $a0, $t8
/* 15AE48 801B4DD8 8C84DC50 */  lw    $a0, -0x23b0($a0)
/* 15AE4C 801B4DDC 24C6D628 */  addiu $a2, %lo(D_801CD628) # addiu $a2, $a2, -0x29d8
/* 15AE50 801B4DE0 0C02911F */  jal   call_virtual_function
/* 15AE54 801B4DE4 24050004 */   li    $a1, 4
/* 15AE58 801B4DE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15AE5C 801B4DEC 27BD0018 */  addiu $sp, $sp, 0x18
/* 15AE60 801B4DF0 03E00008 */  jr    $ra
/* 15AE64 801B4DF4 00000000 */   nop   
.size func_801B4DB0_ovl7, . - func_801B4DB0_ovl7

glabel func_801B4DF8_ovl7
/* 15AE68 801B4DF8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15AE6C 801B4DFC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15AE70 801B4E00 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15AE74 801B4E04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15AE78 801B4E08 AFA40020 */  sw    $a0, 0x20($sp)
/* 15AE7C 801B4E0C 8DCF0000 */  lw    $t7, ($t6)
/* 15AE80 801B4E10 3C19800E */  lui   $t9, 0x800e
/* 15AE84 801B4E14 000FC080 */  sll   $t8, $t7, 2
/* 15AE88 801B4E18 0338C821 */  addu  $t9, $t9, $t8
/* 15AE8C 801B4E1C 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 15AE90 801B4E20 0C066ED6 */  jal   func_8019BB58_ovl7
/* 15AE94 801B4E24 AFB9001C */   sw    $t9, 0x1c($sp)
/* 15AE98 801B4E28 8FA9001C */  lw    $t1, 0x1c($sp)
/* 15AE9C 801B4E2C 3C08801D */  lui   $t0, %hi(D_801CC52C) # $t0, 0x801d
/* 15AEA0 801B4E30 2508C52C */  addiu $t0, %lo(D_801CC52C) # addiu $t0, $t0, -0x3ad4
/* 15AEA4 801B4E34 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15AEA8 801B4E38 AD280098 */  sw    $t0, 0x98($t1)
/* 15AEAC 801B4E3C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15AEB0 801B4E40 3C0A801B */  lui   $t2, %hi(D_801B4F60) # $t2, 0x801b
/* 15AEB4 801B4E44 3C01800E */  lui   $at, 0x800e
/* 15AEB8 801B4E48 8C4B0000 */  lw    $t3, ($v0)
/* 15AEBC 801B4E4C 254A4F60 */  addiu $t2, %lo(D_801B4F60) # addiu $t2, $t2, 0x4f60
/* 15AEC0 801B4E50 3C0F800E */  lui   $t7, 0x800e
/* 15AEC4 801B4E54 000B6080 */  sll   $t4, $t3, 2
/* 15AEC8 801B4E58 002C0821 */  addu  $at, $at, $t4
/* 15AECC 801B4E5C AC2AF150 */  sw    $t2, -0xeb0($at)
/* 15AED0 801B4E60 8C4D0000 */  lw    $t5, ($v0)
/* 15AED4 801B4E64 3C01800F */  lui   $at, 0x800f
/* 15AED8 801B4E68 3C18800F */  lui   $t8, 0x800f
/* 15AEDC 801B4E6C 000D7080 */  sll   $t6, $t5, 2
/* 15AEE0 801B4E70 002E0821 */  addu  $at, $at, $t6
/* 15AEE4 801B4E74 AC209720 */  sw    $zero, -0x68e0($at)
/* 15AEE8 801B4E78 8C430000 */  lw    $v1, ($v0)
/* 15AEEC 801B4E7C 3C01800E */  lui   $at, 0x800e
/* 15AEF0 801B4E80 00031880 */  sll   $v1, $v1, 2
/* 15AEF4 801B4E84 00230821 */  addu  $at, $at, $v1
/* 15AEF8 801B4E88 C4246BD0 */  lwc1  $f4, 0x6bd0($at)
/* 15AEFC 801B4E8C 3C01800F */  lui   $at, 0x800f
/* 15AF00 801B4E90 00230821 */  addu  $at, $at, $v1
/* 15AF04 801B4E94 E424B320 */  swc1  $f4, -0x4ce0($at)
/* 15AF08 801B4E98 8C430000 */  lw    $v1, ($v0)
/* 15AF0C 801B4E9C 3C01800F */  lui   $at, 0x800f
/* 15AF10 801B4EA0 00031880 */  sll   $v1, $v1, 2
/* 15AF14 801B4EA4 01E37821 */  addu  $t7, $t7, $v1
/* 15AF18 801B4EA8 8DEF5F90 */  lw    $t7, 0x5f90($t7)
/* 15AF1C 801B4EAC 00230821 */  addu  $at, $at, $v1
/* 15AF20 801B4EB0 AC2FA520 */  sw    $t7, -0x5ae0($at)
/* 15AF24 801B4EB4 8C440000 */  lw    $a0, ($v0)
/* 15AF28 801B4EB8 00041880 */  sll   $v1, $a0, 2
/* 15AF2C 801B4EBC 0303C021 */  addu  $t8, $t8, $v1
/* 15AF30 801B4EC0 8F188AE0 */  lw    $t8, -0x7520($t8)
/* 15AF34 801B4EC4 33190001 */  andi  $t9, $t8, 1
/* 15AF38 801B4EC8 13200007 */  beqz  $t9, .L801B4EE8_ovl7
/* 15AF3C 801B4ECC 00000000 */   nop   
/* 15AF40 801B4ED0 0C069B04 */  jal   D_801A6C10_ovl7
/* 15AF44 801B4ED4 8FA40020 */   lw    $a0, 0x20($sp)
/* 15AF48 801B4ED8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 15AF4C 801B4EDC 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 15AF50 801B4EE0 8D040000 */  lw    $a0, ($t0)
/* 15AF54 801B4EE4 00041880 */  sll   $v1, $a0, 2
.L801B4EE8_ovl7:
/* 15AF58 801B4EE8 3C09800E */  lui   $t1, 0x800e
/* 15AF5C 801B4EEC 01244821 */  addu  $t1, $t1, $a0
/* 15AF60 801B4EF0 91297880 */  lbu   $t1, 0x7880($t1)
/* 15AF64 801B4EF4 240B0001 */  li    $t3, 1
/* 15AF68 801B4EF8 3C01800E */  lui   $at, 0x800e
/* 15AF6C 801B4EFC 15200005 */  bnez  $t1, .L801B4F14_ovl7
/* 15AF70 801B4F00 3C04801B */   lui   $a0, %hi(D_801B4DB0) # $a0, 0x801b
/* 15AF74 801B4F04 3C01800E */  lui   $at, 0x800e
/* 15AF78 801B4F08 00230821 */  addu  $at, $at, $v1
/* 15AF7C 801B4F0C 10000003 */  b     .L801B4F1C_ovl7
/* 15AF80 801B4F10 AC20DC50 */   sw    $zero, -0x23b0($at)
.L801B4F14_ovl7:
/* 15AF84 801B4F14 00230821 */  addu  $at, $at, $v1
/* 15AF88 801B4F18 AC2BDC50 */  sw    $t3, -0x23b0($at)
.L801B4F1C_ovl7:
/* 15AF8C 801B4F1C 0C068354 */  jal   func_801A0D50
/* 15AF90 801B4F20 24844DB0 */   addiu $a0, %lo(D_801B4DB0) # addiu $a0, $a0, 0x4db0
/* 15AF94 801B4F24 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 15AF98 801B4F28 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15AF9C 801B4F2C 3C04800E */  lui   $a0, 0x800e
/* 15AFA0 801B4F30 3C06801D */  lui   $a2, %hi(D_801CD628) # $a2, 0x801d
/* 15AFA4 801B4F34 8D4C0000 */  lw    $t4, ($t2)
/* 15AFA8 801B4F38 24C6D628 */  addiu $a2, %lo(D_801CD628) # addiu $a2, $a2, -0x29d8
/* 15AFAC 801B4F3C 24050004 */  li    $a1, 4
/* 15AFB0 801B4F40 000C6880 */  sll   $t5, $t4, 2
/* 15AFB4 801B4F44 008D2021 */  addu  $a0, $a0, $t5
/* 15AFB8 801B4F48 0C02911F */  jal   call_virtual_function
/* 15AFBC 801B4F4C 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15AFC0 801B4F50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15AFC4 801B4F54 27BD0020 */  addiu $sp, $sp, 0x20
/* 15AFC8 801B4F58 03E00008 */  jr    $ra
/* 15AFCC 801B4F5C 00000000 */   nop   
.size func_801B4DF8_ovl7, . - func_801B4DF8_ovl7

glabel func_801B4F60_ovl7
/* 15AFD0 801B4F60 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15AFD4 801B4F64 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15AFD8 801B4F68 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 15AFDC 801B4F6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15AFE0 801B4F70 8C620000 */  lw    $v0, ($v1)
/* 15AFE4 801B4F74 3C0F800F */  lui   $t7, 0x800f
/* 15AFE8 801B4F78 3C0E800E */  lui   $t6, %hi(gEntitiesNextPosYArray) # $t6, 0x800e
/* 15AFEC 801B4F7C 00021080 */  sll   $v0, $v0, 2
/* 15AFF0 801B4F80 01E27821 */  addu  $t7, $t7, $v0
/* 15AFF4 801B4F84 8DEF9C60 */  lw    $t7, -0x63a0($t7)
/* 15AFF8 801B4F88 3C07800E */  lui   $a3, 0x800e
/* 15AFFC 801B4F8C 25CE2790 */  addiu $t6, %lo(gEntitiesNextPosYArray) # addiu $t6, $t6, 0x2790
/* 15B000 801B4F90 00E23821 */  addu  $a3, $a3, $v0
/* 15B004 801B4F94 004E2821 */  addu  $a1, $v0, $t6
/* 15B008 801B4F98 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 15B00C 801B4F9C 00003025 */  move  $a2, $zero
/* 15B010 801B4FA0 15E0000E */  bnez  $t7, .L801B4FDC_ovl7
/* 15B014 801B4FA4 C4A00000 */   lwc1  $f0, ($a1)
/* 15B018 801B4FA8 AFA70024 */  sw    $a3, 0x24($sp)
/* 15B01C 801B4FAC 0C06835D */  jal   func_801A0D74_ovl7
/* 15B020 801B4FB0 E7A0001C */   swc1  $f0, 0x1c($sp)
/* 15B024 801B4FB4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15B028 801B4FB8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15B02C 801B4FBC 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 15B030 801B4FC0 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 15B034 801B4FC4 8C780000 */  lw    $t8, ($v1)
/* 15B038 801B4FC8 8FA70024 */  lw    $a3, 0x24($sp)
/* 15B03C 801B4FCC C7A0001C */  lwc1  $f0, 0x1c($sp)
/* 15B040 801B4FD0 0018C880 */  sll   $t9, $t8, 2
/* 15B044 801B4FD4 03282821 */  addu  $a1, $t9, $t0
/* 15B048 801B4FD8 00403025 */  move  $a2, $v0
.L801B4FDC_ovl7:
/* 15B04C 801B4FDC E4A00000 */  swc1  $f0, ($a1)
/* 15B050 801B4FE0 8C620000 */  lw    $v0, ($v1)
/* 15B054 801B4FE4 3C09800E */  lui   $t1, 0x800e
/* 15B058 801B4FE8 24010001 */  li    $at, 1
/* 15B05C 801B4FEC 01224821 */  addu  $t1, $t1, $v0
/* 15B060 801B4FF0 91297880 */  lbu   $t1, 0x7880($t1)
/* 15B064 801B4FF4 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 15B068 801B4FF8 15210017 */  bne   $t1, $at, .L801B5058_ovl7
/* 15B06C 801B4FFC 00000000 */   nop   
/* 15B070 801B5000 8D4ABCA0 */  lw    $t2, %lo(D_8012BCA0)($t2)
/* 15B074 801B5004 240D0001 */  li    $t5, 1
/* 15B078 801B5008 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15B07C 801B500C 000A5CC2 */  srl   $t3, $t2, 0x13
/* 15B080 801B5010 316C0FFF */  andi  $t4, $t3, 0xfff
/* 15B084 801B5014 11800010 */  beqz  $t4, .L801B5058_ovl7
/* 15B088 801B5018 00000000 */   nop   
/* 15B08C 801B501C A0ED0040 */  sb    $t5, 0x40($a3)
/* 15B090 801B5020 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15B094 801B5024 3C04800E */  lui   $a0, 0x800e
/* 15B098 801B5028 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 15B09C 801B502C 8DCF0000 */  lw    $t7, ($t6)
/* 15B0A0 801B5030 AFA60020 */  sw    $a2, 0x20($sp)
/* 15B0A4 801B5034 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 15B0A8 801B5038 000FC080 */  sll   $t8, $t7, 2
/* 15B0AC 801B503C 00982021 */  addu  $a0, $a0, $t8
/* 15B0B0 801B5040 0C02C7B2 */  jal   assign_new_process_entry
/* 15B0B4 801B5044 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15B0B8 801B5048 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 15B0BC 801B504C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 15B0C0 801B5050 8FA60020 */  lw    $a2, 0x20($sp)
/* 15B0C4 801B5054 8F220000 */  lw    $v0, ($t9)
.L801B5058_ovl7:
/* 15B0C8 801B5058 14C0000B */  bnez  $a2, .L801B5088_ovl7
/* 15B0CC 801B505C 00024080 */   sll   $t0, $v0, 2
/* 15B0D0 801B5060 3C04800E */  lui   $a0, 0x800e
/* 15B0D4 801B5064 00882021 */  addu  $a0, $a0, $t0
/* 15B0D8 801B5068 3C06801D */  lui   $a2, %hi(D_801CD638) # $a2, 0x801d
/* 15B0DC 801B506C 24C6D638 */  addiu $a2, %lo(D_801CD638) # addiu $a2, $a2, -0x29c8
/* 15B0E0 801B5070 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 15B0E4 801B5074 0C02911F */  jal   call_virtual_function
/* 15B0E8 801B5078 24050004 */   li    $a1, 4
/* 15B0EC 801B507C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 15B0F0 801B5080 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 15B0F4 801B5084 8D220000 */  lw    $v0, ($t1)
.L801B5088_ovl7:
/* 15B0F8 801B5088 00025080 */  sll   $t2, $v0, 2
/* 15B0FC 801B508C 3C0B800F */  lui   $t3, 0x800f
/* 15B100 801B5090 016A5821 */  addu  $t3, $t3, $t2
/* 15B104 801B5094 8D6B9C60 */  lw    $t3, -0x63a0($t3)
/* 15B108 801B5098 55600004 */  bnezl $t3, .L801B50AC_ovl7
/* 15B10C 801B509C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15B110 801B50A0 0C067CEC */  jal   func_8019F3B0_ovl7
/* 15B114 801B50A4 00000000 */   nop   
/* 15B118 801B50A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B50AC_ovl7:
/* 15B11C 801B50AC 27BD0028 */  addiu $sp, $sp, 0x28
/* 15B120 801B50B0 03E00008 */  jr    $ra
/* 15B124 801B50B4 00000000 */   nop   
.size func_801B4F60_ovl7, . - func_801B4F60_ovl7

glabel func_801B50B8_ovl7
/* 15B128 801B50B8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B12C 801B50BC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B130 801B50C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B134 801B50C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B138 801B50C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 15B13C 801B50CC 8C4E0000 */  lw    $t6, ($v0)
/* 15B140 801B50D0 3C01800E */  lui   $at, 0x800e
/* 15B144 801B50D4 24180001 */  li    $t8, 1
/* 15B148 801B50D8 000E7880 */  sll   $t7, $t6, 2
/* 15B14C 801B50DC 002F0821 */  addu  $at, $at, $t7
/* 15B150 801B50E0 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 15B154 801B50E4 8C590000 */  lw    $t9, ($v0)
/* 15B158 801B50E8 3C01800F */  lui   $at, 0x800f
/* 15B15C 801B50EC 3C040001 */  lui   $a0, (0x00010205 >> 16) # lui $a0, 1
/* 15B160 801B50F0 00194080 */  sll   $t0, $t9, 2
/* 15B164 801B50F4 00280821 */  addu  $at, $at, $t0
/* 15B168 801B50F8 AC389C60 */  sw    $t8, -0x63a0($at)
/* 15B16C 801B50FC 8C490000 */  lw    $t1, ($v0)
/* 15B170 801B5100 3C01800F */  lui   $at, 0x800f
/* 15B174 801B5104 34840205 */  ori   $a0, (0x00010205 & 0xFFFF) # ori $a0, $a0, 0x205
/* 15B178 801B5108 00095080 */  sll   $t2, $t1, 2
/* 15B17C 801B510C 002A0821 */  addu  $at, $at, $t2
/* 15B180 801B5110 0C02A7A9 */  jal   func_800A9EA4
/* 15B184 801B5114 AC209E20 */   sw    $zero, -0x61e0($at)
/* 15B188 801B5118 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 15B18C 801B511C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 15B190 801B5120 3C01800F */  lui   $at, 0x800f
/* 15B194 801B5124 240B0001 */  li    $t3, 1
/* 15B198 801B5128 8D8D0000 */  lw    $t5, ($t4)
/* 15B19C 801B512C 000D7080 */  sll   $t6, $t5, 2
/* 15B1A0 801B5130 002E0821 */  addu  $at, $at, $t6
/* 15B1A4 801B5134 0C02BE85 */  jal   func_800AFA14
/* 15B1A8 801B5138 AC2B9E20 */   sw    $t3, -0x61e0($at)
/* 15B1AC 801B513C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B1B0 801B5140 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B1B4 801B5144 03E00008 */  jr    $ra
/* 15B1B8 801B5148 00000000 */   nop   
.size func_801B50B8_ovl7, . - func_801B50B8_ovl7

glabel func_801B514C_ovl7
/* 15B1BC 801B514C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15B1C0 801B5150 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15B1C4 801B5154 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B1C8 801B5158 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B1CC 801B515C AFA40018 */  sw    $a0, 0x18($sp)
/* 15B1D0 801B5160 8DCF0000 */  lw    $t7, ($t6)
/* 15B1D4 801B5164 3C19800F */  lui   $t9, %hi(D_800E9720) # $t9, 0x800f
/* 15B1D8 801B5168 27399720 */  addiu $t9, %lo(D_800E9720) # addiu $t9, $t9, -0x68e0
/* 15B1DC 801B516C 000FC080 */  sll   $t8, $t7, 2
/* 15B1E0 801B5170 03191021 */  addu  $v0, $t8, $t9
/* 15B1E4 801B5174 8C430000 */  lw    $v1, ($v0)
/* 15B1E8 801B5178 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 15B1EC 801B517C 14600017 */  bnez  $v1, .L801B51DC_ovl7
/* 15B1F0 801B5180 246DFFFF */   addiu $t5, $v1, -1
/* 15B1F4 801B5184 44816000 */  mtc1  $at, $f12
/* 15B1F8 801B5188 0C0669FA */  jal   func_8019A7E8_ovl7
/* 15B1FC 801B518C 00000000 */   nop   
/* 15B200 801B5190 10400013 */  beqz  $v0, .L801B51E0_ovl7
/* 15B204 801B5194 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B208 801B5198 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B20C 801B519C 3C01800E */  lui   $at, 0x800e
/* 15B210 801B51A0 24080001 */  li    $t0, 1
/* 15B214 801B51A4 8C490000 */  lw    $t1, ($v0)
/* 15B218 801B51A8 3C04800E */  lui   $a0, 0x800e
/* 15B21C 801B51AC 3C05801B */  lui   $a1, %hi(D_801B4DB0) # $a1, 0x801b
/* 15B220 801B51B0 00095080 */  sll   $t2, $t1, 2
/* 15B224 801B51B4 002A0821 */  addu  $at, $at, $t2
/* 15B228 801B51B8 AC28DC50 */  sw    $t0, -0x23b0($at)
/* 15B22C 801B51BC 8C4B0000 */  lw    $t3, ($v0)
/* 15B230 801B51C0 24A54DB0 */  addiu $a1, %lo(D_801B4DB0) # addiu $a1, $a1, 0x4db0
/* 15B234 801B51C4 000B6080 */  sll   $t4, $t3, 2
/* 15B238 801B51C8 008C2021 */  addu  $a0, $a0, $t4
/* 15B23C 801B51CC 0C02C7B2 */  jal   assign_new_process_entry
/* 15B240 801B51D0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15B244 801B51D4 10000003 */  b     .L801B51E4_ovl7
/* 15B248 801B51D8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801B51DC_ovl7:
/* 15B24C 801B51DC AC4D0000 */  sw    $t5, ($v0)
.L801B51E0_ovl7:
/* 15B250 801B51E0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B51E4_ovl7:
/* 15B254 801B51E4 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B258 801B51E8 03E00008 */  jr    $ra
/* 15B25C 801B51EC 00000000 */   nop   
.size func_801B514C_ovl7, . - func_801B514C_ovl7

glabel func_801B51F0_ovl7
/* 15B260 801B51F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B264 801B51F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B268 801B51F8 0C006291 */  jal   random_soft_s32_range
/* 15B26C 801B51FC 24040008 */   li    $a0, 8
/* 15B270 801B5200 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15B274 801B5204 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15B278 801B5208 3C0F801D */  lui   $t7, %hi(D_801CD648) # $t7, 0x801d
/* 15B27C 801B520C 25EFD648 */  addiu $t7, %lo(D_801CD648) # addiu $t7, $t7, -0x29b8
/* 15B280 801B5210 8C780000 */  lw    $t8, ($v1)
/* 15B284 801B5214 000270C0 */  sll   $t6, $v0, 3
/* 15B288 801B5218 01CF2021 */  addu  $a0, $t6, $t7
/* 15B28C 801B521C C4840000 */  lwc1  $f4, ($a0)
/* 15B290 801B5220 3C01800E */  lui   $at, 0x800e
/* 15B294 801B5224 0018C880 */  sll   $t9, $t8, 2
/* 15B298 801B5228 00390821 */  addu  $at, $at, $t9
/* 15B29C 801B522C E4243210 */  swc1  $f4, 0x3210($at)
/* 15B2A0 801B5230 8C680000 */  lw    $t0, ($v1)
/* 15B2A4 801B5234 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 15B2A8 801B5238 44813000 */  mtc1  $at, $f6
/* 15B2AC 801B523C 3C01800E */  lui   $at, 0x800e
/* 15B2B0 801B5240 00084880 */  sll   $t1, $t0, 2
/* 15B2B4 801B5244 00290821 */  addu  $at, $at, $t1
/* 15B2B8 801B5248 E4263750 */  swc1  $f6, 0x3750($at)
/* 15B2BC 801B524C 8C6B0000 */  lw    $t3, ($v1)
/* 15B2C0 801B5250 8C8A0004 */  lw    $t2, 4($a0)
/* 15B2C4 801B5254 3C01800F */  lui   $at, 0x800f
/* 15B2C8 801B5258 000B6080 */  sll   $t4, $t3, 2
/* 15B2CC 801B525C 002C0821 */  addu  $at, $at, $t4
/* 15B2D0 801B5260 AC2A9720 */  sw    $t2, -0x68e0($at)
/* 15B2D4 801B5264 8C6E0000 */  lw    $t6, ($v1)
/* 15B2D8 801B5268 3C01801D */  lui   $at, 0x801d
/* 15B2DC 801B526C 00026880 */  sll   $t5, $v0, 2
/* 15B2E0 801B5270 002D0821 */  addu  $at, $at, $t5
/* 15B2E4 801B5274 C428D688 */  lwc1  $f8, -0x2978($at)
/* 15B2E8 801B5278 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B2EC 801B527C 3C01800E */  lui   $at, 0x800e
/* 15B2F0 801B5280 000E7880 */  sll   $t7, $t6, 2
/* 15B2F4 801B5284 002F0821 */  addu  $at, $at, $t7
/* 15B2F8 801B5288 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B2FC 801B528C 03E00008 */  jr    $ra
/* 15B300 801B5290 E42864D0 */   swc1  $f8, 0x64d0($at)
.size func_801B51F0_ovl7, . - func_801B51F0_ovl7

glabel func_801B5294_ovl7
/* 15B304 801B5294 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B308 801B5298 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B30C 801B529C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B310 801B52A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B314 801B52A4 AFA40018 */  sw    $a0, 0x18($sp)
/* 15B318 801B52A8 8C4F0000 */  lw    $t7, ($v0)
/* 15B31C 801B52AC 3C01800E */  lui   $at, 0x800e
/* 15B320 801B52B0 240E0001 */  li    $t6, 1
/* 15B324 801B52B4 000FC080 */  sll   $t8, $t7, 2
/* 15B328 801B52B8 00380821 */  addu  $at, $at, $t8
/* 15B32C 801B52BC AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 15B330 801B52C0 8C590000 */  lw    $t9, ($v0)
/* 15B334 801B52C4 3C01800F */  lui   $at, 0x800f
/* 15B338 801B52C8 3C040001 */  lui   $a0, (0x00010201 >> 16) # lui $a0, 1
/* 15B33C 801B52CC 00194080 */  sll   $t0, $t9, 2
/* 15B340 801B52D0 00280821 */  addu  $at, $at, $t0
/* 15B344 801B52D4 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15B348 801B52D8 8C490000 */  lw    $t1, ($v0)
/* 15B34C 801B52DC 3C01800F */  lui   $at, 0x800f
/* 15B350 801B52E0 34840201 */  ori   $a0, (0x00010201 & 0xFFFF) # ori $a0, $a0, 0x201
/* 15B354 801B52E4 00095080 */  sll   $t2, $t1, 2
/* 15B358 801B52E8 002A0821 */  addu  $at, $at, $t2
/* 15B35C 801B52EC 0C02A7A9 */  jal   func_800A9EA4
/* 15B360 801B52F0 AC209E20 */   sw    $zero, -0x61e0($at)
/* 15B364 801B52F4 0C06D47C */  jal   func_801B51F0_ovl7
/* 15B368 801B52F8 00000000 */   nop   
/* 15B36C 801B52FC 0C02BE85 */  jal   func_800AFA14
/* 15B370 801B5300 00000000 */   nop   
/* 15B374 801B5304 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B378 801B5308 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B37C 801B530C 03E00008 */  jr    $ra
/* 15B380 801B5310 00000000 */   nop   
.size func_801B5294_ovl7, . - func_801B5294_ovl7

glabel func_801B5314_ovl7
/* 15B384 801B5314 03E00008 */  jr    $ra
/* 15B388 801B5318 AFA40000 */   sw    $a0, ($sp)
.size func_801B5314_ovl7, . - func_801B5314_ovl7

glabel func_801B531C_ovl7
/* 15B38C 801B531C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B390 801B5320 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B394 801B5324 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15B398 801B5328 AFBF001C */  sw    $ra, 0x1c($sp)
/* 15B39C 801B532C AFA40020 */  sw    $a0, 0x20($sp)
/* 15B3A0 801B5330 8C4F0000 */  lw    $t7, ($v0)
/* 15B3A4 801B5334 3C01800E */  lui   $at, 0x800e
/* 15B3A8 801B5338 240E0002 */  li    $t6, 2
/* 15B3AC 801B533C 000FC080 */  sll   $t8, $t7, 2
/* 15B3B0 801B5340 00380821 */  addu  $at, $at, $t8
/* 15B3B4 801B5344 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 15B3B8 801B5348 8C480000 */  lw    $t0, ($v0)
/* 15B3BC 801B534C 3C01800F */  lui   $at, 0x800f
/* 15B3C0 801B5350 24190001 */  li    $t9, 1
/* 15B3C4 801B5354 00084880 */  sll   $t1, $t0, 2
/* 15B3C8 801B5358 00290821 */  addu  $at, $at, $t1
/* 15B3CC 801B535C AC399C60 */  sw    $t9, -0x63a0($at)
/* 15B3D0 801B5360 8C4A0000 */  lw    $t2, ($v0)
/* 15B3D4 801B5364 3C01800F */  lui   $at, 0x800f
/* 15B3D8 801B5368 3C07800E */  lui   $a3, 0x800e
/* 15B3DC 801B536C 000A5880 */  sll   $t3, $t2, 2
/* 15B3E0 801B5370 002B0821 */  addu  $at, $at, $t3
/* 15B3E4 801B5374 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15B3E8 801B5378 8C430000 */  lw    $v1, ($v0)
/* 15B3EC 801B537C 3C01800E */  lui   $at, 0x800e
/* 15B3F0 801B5380 24040003 */  li    $a0, 3
/* 15B3F4 801B5384 00031880 */  sll   $v1, $v1, 2
/* 15B3F8 801B5388 00230821 */  addu  $at, $at, $v1
/* 15B3FC 801B538C C4242790 */  lwc1  $f4, 0x2790($at)
/* 15B400 801B5390 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 15B404 801B5394 44813000 */  mtc1  $at, $f6
/* 15B408 801B5398 3C01800E */  lui   $at, 0x800e
/* 15B40C 801B539C 00230821 */  addu  $at, $at, $v1
/* 15B410 801B53A0 46062201 */  sub.s $f8, $f4, $f6
/* 15B414 801B53A4 C42A2950 */  lwc1  $f10, 0x2950($at)
/* 15B418 801B53A8 00E33821 */  addu  $a3, $a3, $v1
/* 15B41C 801B53AC 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 15B420 801B53B0 E7A80010 */  swc1  $f8, 0x10($sp)
/* 15B424 801B53B4 24050002 */  li    $a1, 2
/* 15B428 801B53B8 2406009D */  li    $a2, 157
/* 15B42C 801B53BC 0C029FDD */  jal   func_800A7F74
/* 15B430 801B53C0 E7AA0014 */   swc1  $f10, 0x14($sp)
/* 15B434 801B53C4 3C040001 */  lui   $a0, (0x00010204 >> 16) # lui $a0, 1
/* 15B438 801B53C8 34840204 */  ori   $a0, (0x00010204 & 0xFFFF) # ori $a0, $a0, 0x204
/* 15B43C 801B53CC 0C02AA19 */  jal   func_800AA864
/* 15B440 801B53D0 24050001 */   li    $a1, 1
/* 15B444 801B53D4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 15B448 801B53D8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 15B44C 801B53DC 3C01800F */  lui   $at, 0x800f
/* 15B450 801B53E0 240C0001 */  li    $t4, 1
/* 15B454 801B53E4 8DAF0000 */  lw    $t7, ($t5)
/* 15B458 801B53E8 000F7080 */  sll   $t6, $t7, 2
/* 15B45C 801B53EC 002E0821 */  addu  $at, $at, $t6
/* 15B460 801B53F0 0C02BE85 */  jal   func_800AFA14
/* 15B464 801B53F4 AC2C9E20 */   sw    $t4, -0x61e0($at)
/* 15B468 801B53F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 15B46C 801B53FC 27BD0020 */  addiu $sp, $sp, 0x20
/* 15B470 801B5400 03E00008 */  jr    $ra
/* 15B474 801B5404 00000000 */   nop   
.size func_801B531C_ovl7, . - func_801B531C_ovl7

glabel func_801B5408_ovl7
/* 15B478 801B5408 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15B47C 801B540C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15B480 801B5410 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15B484 801B5414 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B488 801B5418 AFA40020 */  sw    $a0, 0x20($sp)
/* 15B48C 801B541C 8DC30000 */  lw    $v1, ($t6)
/* 15B490 801B5420 3C0F800F */  lui   $t7, 0x800f
/* 15B494 801B5424 3C05800E */  lui   $a1, 0x800e
/* 15B498 801B5428 00031880 */  sll   $v1, $v1, 2
/* 15B49C 801B542C 01E37821 */  addu  $t7, $t7, $v1
/* 15B4A0 801B5430 8DEF9E20 */  lw    $t7, -0x61e0($t7)
/* 15B4A4 801B5434 00A32821 */  addu  $a1, $a1, $v1
/* 15B4A8 801B5438 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15B4AC 801B543C 51E00040 */  beql  $t7, $zero, .L801B5540_ovl7
/* 15B4B0 801B5440 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15B4B4 801B5444 0C02CD48 */  jal   func_800B3520
/* 15B4B8 801B5448 AFA5001C */   sw    $a1, 0x1c($sp)
/* 15B4BC 801B544C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B4C0 801B5450 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B4C4 801B5454 3C01800F */  lui   $at, 0x800f
/* 15B4C8 801B5458 8FA5001C */  lw    $a1, 0x1c($sp)
/* 15B4CC 801B545C 8C580000 */  lw    $t8, ($v0)
/* 15B4D0 801B5460 3C0E800F */  lui   $t6, 0x800f
/* 15B4D4 801B5464 0018C880 */  sll   $t9, $t8, 2
/* 15B4D8 801B5468 00390821 */  addu  $at, $at, $t9
/* 15B4DC 801B546C AC208920 */  sw    $zero, -0x76e0($at)
/* 15B4E0 801B5470 8C480000 */  lw    $t0, ($v0)
/* 15B4E4 801B5474 C4A40000 */  lwc1  $f4, ($a1)
/* 15B4E8 801B5478 3C01800E */  lui   $at, 0x800e
/* 15B4EC 801B547C 00084880 */  sll   $t1, $t0, 2
/* 15B4F0 801B5480 00290821 */  addu  $at, $at, $t1
/* 15B4F4 801B5484 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 15B4F8 801B5488 8C4A0000 */  lw    $t2, ($v0)
/* 15B4FC 801B548C C4A60004 */  lwc1  $f6, 4($a1)
/* 15B500 801B5490 3C01800E */  lui   $at, 0x800e
/* 15B504 801B5494 000A5880 */  sll   $t3, $t2, 2
/* 15B508 801B5498 002B0821 */  addu  $at, $at, $t3
/* 15B50C 801B549C E4262790 */  swc1  $f6, 0x2790($at)
/* 15B510 801B54A0 8C4C0000 */  lw    $t4, ($v0)
/* 15B514 801B54A4 C4A80008 */  lwc1  $f8, 8($a1)
/* 15B518 801B54A8 3C01800E */  lui   $at, 0x800e
/* 15B51C 801B54AC 000C6880 */  sll   $t5, $t4, 2
/* 15B520 801B54B0 002D0821 */  addu  $at, $at, $t5
/* 15B524 801B54B4 E4282950 */  swc1  $f8, 0x2950($at)
/* 15B528 801B54B8 8C430000 */  lw    $v1, ($v0)
/* 15B52C 801B54BC 3C01800E */  lui   $at, 0x800e
/* 15B530 801B54C0 00031880 */  sll   $v1, $v1, 2
/* 15B534 801B54C4 01C37021 */  addu  $t6, $t6, $v1
/* 15B538 801B54C8 8DCEA520 */  lw    $t6, -0x5ae0($t6)
/* 15B53C 801B54CC 00230821 */  addu  $at, $at, $v1
/* 15B540 801B54D0 AC2E5F90 */  sw    $t6, 0x5f90($at)
/* 15B544 801B54D4 8C430000 */  lw    $v1, ($v0)
/* 15B548 801B54D8 3C01800F */  lui   $at, 0x800f
/* 15B54C 801B54DC 00031880 */  sll   $v1, $v1, 2
/* 15B550 801B54E0 00230821 */  addu  $at, $at, $v1
/* 15B554 801B54E4 C42AB320 */  lwc1  $f10, -0x4ce0($at)
/* 15B558 801B54E8 3C01800E */  lui   $at, 0x800e
/* 15B55C 801B54EC 00230821 */  addu  $at, $at, $v1
/* 15B560 801B54F0 E42A6BD0 */  swc1  $f10, 0x6bd0($at)
/* 15B564 801B54F4 8CAF0088 */  lw    $t7, 0x88($a1)
/* 15B568 801B54F8 0C068956 */  jal   func_801A2558_ovl7
/* 15B56C 801B54FC 8DE40010 */   lw    $a0, 0x10($t7)
/* 15B570 801B5500 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B574 801B5504 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B578 801B5508 3C01800E */  lui   $at, 0x800e
/* 15B57C 801B550C 3C04800E */  lui   $a0, 0x800e
/* 15B580 801B5510 8C580000 */  lw    $t8, ($v0)
/* 15B584 801B5514 3C05801B */  lui   $a1, %hi(D_801B4DB0) # $a1, 0x801b
/* 15B588 801B5518 24A54DB0 */  addiu $a1, %lo(D_801B4DB0) # addiu $a1, $a1, 0x4db0
/* 15B58C 801B551C 0018C880 */  sll   $t9, $t8, 2
/* 15B590 801B5520 00390821 */  addu  $at, $at, $t9
/* 15B594 801B5524 AC20DC50 */  sw    $zero, -0x23b0($at)
/* 15B598 801B5528 8C480000 */  lw    $t0, ($v0)
/* 15B59C 801B552C 00084880 */  sll   $t1, $t0, 2
/* 15B5A0 801B5530 00892021 */  addu  $a0, $a0, $t1
/* 15B5A4 801B5534 0C02C7B2 */  jal   assign_new_process_entry
/* 15B5A8 801B5538 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15B5AC 801B553C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B5540_ovl7:
/* 15B5B0 801B5540 27BD0020 */  addiu $sp, $sp, 0x20
/* 15B5B4 801B5544 03E00008 */  jr    $ra
/* 15B5B8 801B5548 00000000 */   nop   
.size func_801B5408_ovl7, . - func_801B5408_ovl7

glabel func_801B554C_ovl7
/* 15B5BC 801B554C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B5C0 801B5550 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B5C4 801B5554 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 15B5C8 801B5558 AFBF001C */  sw    $ra, 0x1c($sp)
/* 15B5CC 801B555C AFA40028 */  sw    $a0, 0x28($sp)
/* 15B5D0 801B5560 8C430000 */  lw    $v1, ($v0)
/* 15B5D4 801B5564 3C0E800E */  lui   $t6, 0x800e
/* 15B5D8 801B5568 3C01800E */  lui   $at, 0x800e
/* 15B5DC 801B556C 00031880 */  sll   $v1, $v1, 2
/* 15B5E0 801B5570 01C37021 */  addu  $t6, $t6, $v1
/* 15B5E4 801B5574 8DCE1B50 */  lw    $t6, 0x1b50($t6)
/* 15B5E8 801B5578 00230821 */  addu  $at, $at, $v1
/* 15B5EC 801B557C 240F0003 */  li    $t7, 3
/* 15B5F0 801B5580 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 15B5F4 801B5584 AFAE0024 */  sw    $t6, 0x24($sp)
/* 15B5F8 801B5588 8C590000 */  lw    $t9, ($v0)
/* 15B5FC 801B558C 3C01800F */  lui   $at, 0x800f
/* 15B600 801B5590 24180001 */  li    $t8, 1
/* 15B604 801B5594 00194080 */  sll   $t0, $t9, 2
/* 15B608 801B5598 00280821 */  addu  $at, $at, $t0
/* 15B60C 801B559C AC389C60 */  sw    $t8, -0x63a0($at)
/* 15B610 801B55A0 8C490000 */  lw    $t1, ($v0)
/* 15B614 801B55A4 3C01800F */  lui   $at, 0x800f
/* 15B618 801B55A8 00095080 */  sll   $t2, $t1, 2
/* 15B61C 801B55AC 002A0821 */  addu  $at, $at, $t2
/* 15B620 801B55B0 0C02CD48 */  jal   func_800B3520
/* 15B624 801B55B4 AC209E20 */   sw    $zero, -0x61e0($at)
/* 15B628 801B55B8 0C0288C0 */  jal   func_800A2300
/* 15B62C 801B55BC 8FA40028 */   lw    $a0, 0x28($sp)
/* 15B630 801B55C0 8FAB0024 */  lw    $t3, 0x24($sp)
/* 15B634 801B55C4 3C018000 */  lui   $at, 0x8000
/* 15B638 801B55C8 8D620094 */  lw    $v0, 0x94($t3)
/* 15B63C 801B55CC 8C44001C */  lw    $a0, 0x1c($v0)
/* 15B640 801B55D0 50810006 */  beql  $a0, $at, .L801B55EC_ovl7
/* 15B644 801B55D4 44800000 */   mtc1  $zero, $f0
/* 15B648 801B55D8 0C029D9E */  jal   play_sound
/* 15B64C 801B55DC 00000000 */   nop   
/* 15B650 801B55E0 8FAC0024 */  lw    $t4, 0x24($sp)
/* 15B654 801B55E4 8D820094 */  lw    $v0, 0x94($t4)
/* 15B658 801B55E8 44800000 */  mtc1  $zero, $f0
.L801B55EC_ovl7:
/* 15B65C 801B55EC 8C450018 */  lw    $a1, 0x18($v0)
/* 15B660 801B55F0 00002025 */  move  $a0, $zero
/* 15B664 801B55F4 44060000 */  mfc1  $a2, $f0
/* 15B668 801B55F8 44070000 */  mfc1  $a3, $f0
/* 15B66C 801B55FC 0C03F55C */  jal   func_800FD570
/* 15B670 801B5600 E7A00010 */   swc1  $f0, 0x10($sp)
/* 15B674 801B5604 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15B678 801B5608 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15B67C 801B560C 3C01800F */  lui   $at, 0x800f
/* 15B680 801B5610 240D0001 */  li    $t5, 1
/* 15B684 801B5614 8DCF0000 */  lw    $t7, ($t6)
/* 15B688 801B5618 000FC880 */  sll   $t9, $t7, 2
/* 15B68C 801B561C 00390821 */  addu  $at, $at, $t9
/* 15B690 801B5620 0C02BE85 */  jal   func_800AFA14
/* 15B694 801B5624 AC2D9E20 */   sw    $t5, -0x61e0($at)
/* 15B698 801B5628 8FBF001C */  lw    $ra, 0x1c($sp)
/* 15B69C 801B562C 27BD0028 */  addiu $sp, $sp, 0x28
/* 15B6A0 801B5630 03E00008 */  jr    $ra
/* 15B6A4 801B5634 00000000 */   nop   
.size func_801B554C_ovl7, . - func_801B554C_ovl7

glabel func_801B5638_ovl7
/* 15B6A8 801B5638 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B6AC 801B563C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B6B0 801B5640 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B6B4 801B5644 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B6B8 801B5648 AFA40018 */  sw    $a0, 0x18($sp)
/* 15B6BC 801B564C 8C430000 */  lw    $v1, ($v0)
/* 15B6C0 801B5650 3C0E800F */  lui   $t6, 0x800f
/* 15B6C4 801B5654 3C05800E */  lui   $a1, 0x800e
/* 15B6C8 801B5658 00031880 */  sll   $v1, $v1, 2
/* 15B6CC 801B565C 01C37021 */  addu  $t6, $t6, $v1
/* 15B6D0 801B5660 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 15B6D4 801B5664 00A32821 */  addu  $a1, $a1, $v1
/* 15B6D8 801B5668 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15B6DC 801B566C 11C00037 */  beqz  $t6, .L801B574C_ovl7
/* 15B6E0 801B5670 3C01800F */   lui   $at, 0x800f
/* 15B6E4 801B5674 00230821 */  addu  $at, $at, $v1
/* 15B6E8 801B5678 AC208920 */  sw    $zero, -0x76e0($at)
/* 15B6EC 801B567C 8C4F0000 */  lw    $t7, ($v0)
/* 15B6F0 801B5680 C4A40000 */  lwc1  $f4, ($a1)
/* 15B6F4 801B5684 3C01800E */  lui   $at, 0x800e
/* 15B6F8 801B5688 000FC080 */  sll   $t8, $t7, 2
/* 15B6FC 801B568C 00380821 */  addu  $at, $at, $t8
/* 15B700 801B5690 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 15B704 801B5694 8C590000 */  lw    $t9, ($v0)
/* 15B708 801B5698 C4A60004 */  lwc1  $f6, 4($a1)
/* 15B70C 801B569C 3C01800E */  lui   $at, 0x800e
/* 15B710 801B56A0 00194080 */  sll   $t0, $t9, 2
/* 15B714 801B56A4 00280821 */  addu  $at, $at, $t0
/* 15B718 801B56A8 E4262790 */  swc1  $f6, 0x2790($at)
/* 15B71C 801B56AC 8C490000 */  lw    $t1, ($v0)
/* 15B720 801B56B0 C4A80008 */  lwc1  $f8, 8($a1)
/* 15B724 801B56B4 3C01800E */  lui   $at, 0x800e
/* 15B728 801B56B8 00095080 */  sll   $t2, $t1, 2
/* 15B72C 801B56BC 002A0821 */  addu  $at, $at, $t2
/* 15B730 801B56C0 E4282950 */  swc1  $f8, 0x2950($at)
/* 15B734 801B56C4 8C430000 */  lw    $v1, ($v0)
/* 15B738 801B56C8 3C0B800F */  lui   $t3, 0x800f
/* 15B73C 801B56CC 3C01800E */  lui   $at, 0x800e
/* 15B740 801B56D0 00031880 */  sll   $v1, $v1, 2
/* 15B744 801B56D4 01635821 */  addu  $t3, $t3, $v1
/* 15B748 801B56D8 8D6BA520 */  lw    $t3, -0x5ae0($t3)
/* 15B74C 801B56DC 00230821 */  addu  $at, $at, $v1
/* 15B750 801B56E0 AC2B5F90 */  sw    $t3, 0x5f90($at)
/* 15B754 801B56E4 8C430000 */  lw    $v1, ($v0)
/* 15B758 801B56E8 3C01800F */  lui   $at, 0x800f
/* 15B75C 801B56EC 00031880 */  sll   $v1, $v1, 2
/* 15B760 801B56F0 00230821 */  addu  $at, $at, $v1
/* 15B764 801B56F4 C42AB320 */  lwc1  $f10, -0x4ce0($at)
/* 15B768 801B56F8 3C01800E */  lui   $at, 0x800e
/* 15B76C 801B56FC 00230821 */  addu  $at, $at, $v1
/* 15B770 801B5700 E42A6BD0 */  swc1  $f10, 0x6bd0($at)
/* 15B774 801B5704 8CAC0088 */  lw    $t4, 0x88($a1)
/* 15B778 801B5708 0C068956 */  jal   func_801A2558_ovl7
/* 15B77C 801B570C 8D840010 */   lw    $a0, 0x10($t4)
/* 15B780 801B5710 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B784 801B5714 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B788 801B5718 3C01800E */  lui   $at, 0x800e
/* 15B78C 801B571C 3C04800E */  lui   $a0, 0x800e
/* 15B790 801B5720 8C4D0000 */  lw    $t5, ($v0)
/* 15B794 801B5724 3C05801B */  lui   $a1, %hi(D_801B4DB0) # $a1, 0x801b
/* 15B798 801B5728 24A54DB0 */  addiu $a1, %lo(D_801B4DB0) # addiu $a1, $a1, 0x4db0
/* 15B79C 801B572C 000D7080 */  sll   $t6, $t5, 2
/* 15B7A0 801B5730 002E0821 */  addu  $at, $at, $t6
/* 15B7A4 801B5734 AC20DC50 */  sw    $zero, -0x23b0($at)
/* 15B7A8 801B5738 8C4F0000 */  lw    $t7, ($v0)
/* 15B7AC 801B573C 000FC080 */  sll   $t8, $t7, 2
/* 15B7B0 801B5740 00982021 */  addu  $a0, $a0, $t8
/* 15B7B4 801B5744 0C02C7B2 */  jal   assign_new_process_entry
/* 15B7B8 801B5748 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801B574C_ovl7:
/* 15B7BC 801B574C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B7C0 801B5750 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B7C4 801B5754 03E00008 */  jr    $ra
/* 15B7C8 801B5758 00000000 */   nop   
.size func_801B5638_ovl7, . - func_801B5638_ovl7

glabel func_801B575C_ovl7
/* 15B7CC 801B575C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15B7D0 801B5760 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15B7D4 801B5764 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B7D8 801B5768 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B7DC 801B576C AFA40018 */  sw    $a0, 0x18($sp)
/* 15B7E0 801B5770 8DCF0000 */  lw    $t7, ($t6)
/* 15B7E4 801B5774 3C04800E */  lui   $a0, 0x800e
/* 15B7E8 801B5778 3C06801D */  lui   $a2, %hi(D_801CD6A8) # $a2, 0x801d
/* 15B7EC 801B577C 008F2021 */  addu  $a0, $a0, $t7
/* 15B7F0 801B5780 90847880 */  lbu   $a0, 0x7880($a0)
/* 15B7F4 801B5784 24C6D6A8 */  addiu $a2, %lo(D_801CD6A8) # addiu $a2, $a2, -0x2958
/* 15B7F8 801B5788 0C02911F */  jal   call_virtual_function
/* 15B7FC 801B578C 24050004 */   li    $a1, 4
/* 15B800 801B5790 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B804 801B5794 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B808 801B5798 03E00008 */  jr    $ra
/* 15B80C 801B579C 00000000 */   nop   
.size func_801B575C_ovl7, . - func_801B575C_ovl7

glabel func_801B57A0_ovl7
/* 15B810 801B57A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B814 801B57A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B818 801B57A8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15B81C 801B57AC AFA40018 */  sw    $a0, 0x18($sp)
/* 15B820 801B57B0 0C02BB30 */  jal   func_800AECC0
/* 15B824 801B57B4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15B828 801B57B8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15B82C 801B57BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15B830 801B57C0 3C04800E */  lui   $a0, 0x800e
/* 15B834 801B57C4 3C06801D */  lui   $a2, %hi(D_801CD6B8) # $a2, 0x801d
/* 15B838 801B57C8 8DCF0000 */  lw    $t7, ($t6)
/* 15B83C 801B57CC 24C6D6B8 */  addiu $a2, %lo(D_801CD6B8) # addiu $a2, $a2, -0x2948
/* 15B840 801B57D0 24050006 */  li    $a1, 6
/* 15B844 801B57D4 000FC080 */  sll   $t8, $t7, 2
/* 15B848 801B57D8 00982021 */  addu  $a0, $a0, $t8
/* 15B84C 801B57DC 0C02911F */  jal   call_virtual_function
/* 15B850 801B57E0 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15B854 801B57E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B858 801B57E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B85C 801B57EC 03E00008 */  jr    $ra
/* 15B860 801B57F0 00000000 */   nop   
.size func_801B57A0_ovl7, . - func_801B57A0_ovl7

glabel func_801B57F4_ovl7
/* 15B864 801B57F4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15B868 801B57F8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15B86C 801B57FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B870 801B5800 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B874 801B5804 AFA40018 */  sw    $a0, 0x18($sp)
/* 15B878 801B5808 8C4F0000 */  lw    $t7, ($v0)
/* 15B87C 801B580C 3C0E801B */  lui   $t6, %hi(D_801B58A8) # $t6, 0x801b
/* 15B880 801B5810 3C01800E */  lui   $at, 0x800e
/* 15B884 801B5814 000FC080 */  sll   $t8, $t7, 2
/* 15B888 801B5818 00380821 */  addu  $at, $at, $t8
/* 15B88C 801B581C 25CE58A8 */  addiu $t6, %lo(D_801B58A8) # addiu $t6, $t6, 0x58a8
/* 15B890 801B5820 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 15B894 801B5824 8C430000 */  lw    $v1, ($v0)
/* 15B898 801B5828 3C19800F */  lui   $t9, 0x800f
/* 15B89C 801B582C 3C01800E */  lui   $at, 0x800e
/* 15B8A0 801B5830 00031880 */  sll   $v1, $v1, 2
/* 15B8A4 801B5834 0323C821 */  addu  $t9, $t9, $v1
/* 15B8A8 801B5838 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 15B8AC 801B583C 00230821 */  addu  $at, $at, $v1
/* 15B8B0 801B5840 24090002 */  li    $t1, 2
/* 15B8B4 801B5844 33280001 */  andi  $t0, $t9, 1
/* 15B8B8 801B5848 11000005 */  beqz  $t0, .L801B5860_ovl7
/* 15B8BC 801B584C 3C04801B */   lui   $a0, %hi(D_801B57A0) # $a0, 0x801b
/* 15B8C0 801B5850 3C01800E */  lui   $at, 0x800e
/* 15B8C4 801B5854 00230821 */  addu  $at, $at, $v1
/* 15B8C8 801B5858 10000002 */  b     .L801B5864_ovl7
/* 15B8CC 801B585C AC20DC50 */   sw    $zero, -0x23b0($at)
.L801B5860_ovl7:
/* 15B8D0 801B5860 AC29DC50 */  sw    $t1, -0x23b0($at)
.L801B5864_ovl7:
/* 15B8D4 801B5864 0C068354 */  jal   func_801A0D50
/* 15B8D8 801B5868 248457A0 */   addiu $a0, %lo(D_801B57A0) # addiu $a0, $a0, 0x57a0
/* 15B8DC 801B586C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 15B8E0 801B5870 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15B8E4 801B5874 3C04800E */  lui   $a0, 0x800e
/* 15B8E8 801B5878 3C06801D */  lui   $a2, %hi(D_801CD6B8) # $a2, 0x801d
/* 15B8EC 801B587C 8D4B0000 */  lw    $t3, ($t2)
/* 15B8F0 801B5880 24C6D6B8 */  addiu $a2, %lo(D_801CD6B8) # addiu $a2, $a2, -0x2948
/* 15B8F4 801B5884 24050006 */  li    $a1, 6
/* 15B8F8 801B5888 000B6080 */  sll   $t4, $t3, 2
/* 15B8FC 801B588C 008C2021 */  addu  $a0, $a0, $t4
/* 15B900 801B5890 0C02911F */  jal   call_virtual_function
/* 15B904 801B5894 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15B908 801B5898 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B90C 801B589C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15B910 801B58A0 03E00008 */  jr    $ra
/* 15B914 801B58A4 00000000 */   nop   
.size func_801B57F4_ovl7, . - func_801B57F4_ovl7

glabel func_801B58A8_ovl7
/* 15B918 801B58A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15B91C 801B58AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B920 801B58B0 0C06835D */  jal   func_801A0D74_ovl7
/* 15B924 801B58B4 AFA40020 */   sw    $a0, 0x20($sp)
/* 15B928 801B58B8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15B92C 801B58BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15B930 801B58C0 3C19800F */  lui   $t9, 0x800f
/* 15B934 801B58C4 00401825 */  move  $v1, $v0
/* 15B938 801B58C8 8DCF0000 */  lw    $t7, ($t6)
/* 15B93C 801B58CC 8FA40020 */  lw    $a0, 0x20($sp)
/* 15B940 801B58D0 000FC080 */  sll   $t8, $t7, 2
/* 15B944 801B58D4 0338C821 */  addu  $t9, $t9, $t8
/* 15B948 801B58D8 8F399C60 */  lw    $t9, -0x63a0($t9)
/* 15B94C 801B58DC 13200004 */  beqz  $t9, .L801B58F0_ovl7
/* 15B950 801B58E0 00000000 */   nop   
/* 15B954 801B58E4 0C066D09 */  jal   func_8019B424_ovl7
/* 15B958 801B58E8 AFA20018 */   sw    $v0, 0x18($sp)
/* 15B95C 801B58EC 8FA30018 */  lw    $v1, 0x18($sp)
.L801B58F0_ovl7:
/* 15B960 801B58F0 1460000B */  bnez  $v1, .L801B5920_ovl7
/* 15B964 801B58F4 3C088005 */   lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 15B968 801B58F8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 15B96C 801B58FC 3C04800E */  lui   $a0, 0x800e
/* 15B970 801B5900 3C06801D */  lui   $a2, %hi(D_801CD6D0) # $a2, 0x801d
/* 15B974 801B5904 8D090000 */  lw    $t1, ($t0)
/* 15B978 801B5908 24C6D6D0 */  addiu $a2, %lo(D_801CD6D0) # addiu $a2, $a2, -0x2930
/* 15B97C 801B590C 24050006 */  li    $a1, 6
/* 15B980 801B5910 00095080 */  sll   $t2, $t1, 2
/* 15B984 801B5914 008A2021 */  addu  $a0, $a0, $t2
/* 15B988 801B5918 0C02911F */  jal   call_virtual_function
/* 15B98C 801B591C 8C84DFD0 */   lw    $a0, -0x2030($a0)
.L801B5920_ovl7:
/* 15B990 801B5920 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 15B994 801B5924 24040006 */   li    $a0, 6
/* 15B998 801B5928 0C067CEC */  jal   func_8019F3B0_ovl7
/* 15B99C 801B592C 00000000 */   nop   
/* 15B9A0 801B5930 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15B9A4 801B5934 27BD0020 */  addiu $sp, $sp, 0x20
/* 15B9A8 801B5938 03E00008 */  jr    $ra
/* 15B9AC 801B593C 00000000 */   nop   
.size func_801B58A8_ovl7, . - func_801B58A8_ovl7

glabel func_801B5940_ovl7
/* 15B9B0 801B5940 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15B9B4 801B5944 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 15B9B8 801B5948 8CC20000 */  lw    $v0, ($a2)
/* 15B9BC 801B594C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15B9C0 801B5950 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15B9C4 801B5954 AFA40018 */  sw    $a0, 0x18($sp)
/* 15B9C8 801B5958 8C430000 */  lw    $v1, ($v0)
/* 15B9CC 801B595C 3C01800F */  lui   $at, 0x800f
/* 15B9D0 801B5960 240E0001 */  li    $t6, 1
/* 15B9D4 801B5964 00031880 */  sll   $v1, $v1, 2
/* 15B9D8 801B5968 00230821 */  addu  $at, $at, $v1
/* 15B9DC 801B596C AC2E9C60 */  sw    $t6, -0x63a0($at)
/* 15B9E0 801B5970 8C4F0000 */  lw    $t7, ($v0)
/* 15B9E4 801B5974 3C01800F */  lui   $at, 0x800f
/* 15B9E8 801B5978 3C05800E */  lui   $a1, 0x800e
/* 15B9EC 801B597C 000FC080 */  sll   $t8, $t7, 2
/* 15B9F0 801B5980 00380821 */  addu  $at, $at, $t8
/* 15B9F4 801B5984 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15B9F8 801B5988 8C590000 */  lw    $t9, ($v0)
/* 15B9FC 801B598C 00A32821 */  addu  $a1, $a1, $v1
/* 15BA00 801B5990 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15BA04 801B5994 3C01800E */  lui   $at, 0x800e
/* 15BA08 801B5998 00194080 */  sll   $t0, $t9, 2
/* 15BA0C 801B599C 00280821 */  addu  $at, $at, $t0
/* 15BA10 801B59A0 3C09801D */  lui   $t1, %hi(D_801CC064) # $t1, 0x801d
/* 15BA14 801B59A4 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 15BA18 801B59A8 2529C064 */  addiu $t1, %lo(D_801CC064) # addiu $t1, $t1, -0x3f9c
/* 15BA1C 801B59AC ACA90098 */  sw    $t1, 0x98($a1)
/* 15BA20 801B59B0 8CCA0000 */  lw    $t2, ($a2)
/* 15BA24 801B59B4 3C01800F */  lui   $at, 0x800f
/* 15BA28 801B59B8 3C040001 */  lui   $a0, (0x000100C4 >> 16) # lui $a0, 1
/* 15BA2C 801B59BC 8D4B0000 */  lw    $t3, ($t2)
/* 15BA30 801B59C0 348400C4 */  ori   $a0, (0x000100C4 & 0xFFFF) # ori $a0, $a0, 0xc4
/* 15BA34 801B59C4 000B6080 */  sll   $t4, $t3, 2
/* 15BA38 801B59C8 002C0821 */  addu  $at, $at, $t4
/* 15BA3C 801B59CC 0C02A7A9 */  jal   func_800A9EA4
/* 15BA40 801B59D0 AC208920 */   sw    $zero, -0x76e0($at)
/* 15BA44 801B59D4 0C02BE85 */  jal   func_800AFA14
/* 15BA48 801B59D8 00000000 */   nop   
/* 15BA4C 801B59DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15BA50 801B59E0 27BD0018 */  addiu $sp, $sp, 0x18
/* 15BA54 801B59E4 03E00008 */  jr    $ra
/* 15BA58 801B59E8 00000000 */   nop   
.size func_801B5940_ovl7, . - func_801B5940_ovl7

glabel func_801B59EC_ovl7
/* 15BA5C 801B59EC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15BA60 801B59F0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15BA64 801B59F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15BA68 801B59F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15BA6C 801B59FC AFA40018 */  sw    $a0, 0x18($sp)
/* 15BA70 801B5A00 8DCF0000 */  lw    $t7, ($t6)
/* 15BA74 801B5A04 3C02800E */  lui   $v0, 0x800e
/* 15BA78 801B5A08 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 15BA7C 801B5A0C 000FC080 */  sll   $t8, $t7, 2
/* 15BA80 801B5A10 00581021 */  addu  $v0, $v0, $t8
/* 15BA84 801B5A14 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 15BA88 801B5A18 9059003C */  lbu   $t9, 0x3c($v0)
/* 15BA8C 801B5A1C 57200016 */  bnezl $t9, .L801B5A78_ovl7
/* 15BA90 801B5A20 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15BA94 801B5A24 44816000 */  mtc1  $at, $f12
/* 15BA98 801B5A28 0C0669FA */  jal   func_8019A7E8_ovl7
/* 15BA9C 801B5A2C 00000000 */   nop   
/* 15BAA0 801B5A30 10400010 */  beqz  $v0, .L801B5A74_ovl7
/* 15BAA4 801B5A34 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15BAA8 801B5A38 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15BAAC 801B5A3C 3C01800E */  lui   $at, 0x800e
/* 15BAB0 801B5A40 24080001 */  li    $t0, 1
/* 15BAB4 801B5A44 8C490000 */  lw    $t1, ($v0)
/* 15BAB8 801B5A48 3C04800E */  lui   $a0, 0x800e
/* 15BABC 801B5A4C 3C05801B */  lui   $a1, %hi(D_801B57A0) # $a1, 0x801b
/* 15BAC0 801B5A50 00095080 */  sll   $t2, $t1, 2
/* 15BAC4 801B5A54 002A0821 */  addu  $at, $at, $t2
/* 15BAC8 801B5A58 AC28DC50 */  sw    $t0, -0x23b0($at)
/* 15BACC 801B5A5C 8C4B0000 */  lw    $t3, ($v0)
/* 15BAD0 801B5A60 24A557A0 */  addiu $a1, %lo(D_801B57A0) # addiu $a1, $a1, 0x57a0
/* 15BAD4 801B5A64 000B6080 */  sll   $t4, $t3, 2
/* 15BAD8 801B5A68 008C2021 */  addu  $a0, $a0, $t4
/* 15BADC 801B5A6C 0C02C7B2 */  jal   assign_new_process_entry
/* 15BAE0 801B5A70 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801B5A74_ovl7:
/* 15BAE4 801B5A74 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B5A78_ovl7:
/* 15BAE8 801B5A78 27BD0018 */  addiu $sp, $sp, 0x18
/* 15BAEC 801B5A7C 03E00008 */  jr    $ra
/* 15BAF0 801B5A80 00000000 */   nop   
.size func_801B59EC_ovl7, . - func_801B59EC_ovl7

glabel func_801B5A84_ovl7
/* 15BAF4 801B5A84 44866000 */  mtc1  $a2, $f12
/* 15BAF8 801B5A88 14A0001C */  bnez  $a1, .L801B5AFC_ovl7
/* 15BAFC 801B5A8C AFA40000 */   sw    $a0, ($sp)
/* 15BB00 801B5A90 4600610D */  trunc.w.s $f4, $f12
/* 15BB04 801B5A94 24010001 */  li    $at, 1
/* 15BB08 801B5A98 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15BB0C 801B5A9C 440F2000 */  mfc1  $t7, $f4
/* 15BB10 801B5AA0 00000000 */  nop   
/* 15BB14 801B5AA4 15E10015 */  bne   $t7, $at, .L801B5AFC_ovl7
/* 15BB18 801B5AA8 00000000 */   nop   
/* 15BB1C 801B5AAC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15BB20 801B5AB0 3C014150 */  li    $at, 0x41500000 # 13.000000
/* 15BB24 801B5AB4 44810000 */  mtc1  $at, $f0
/* 15BB28 801B5AB8 8C580000 */  lw    $t8, ($v0)
/* 15BB2C 801B5ABC 3C01800E */  lui   $at, 0x800e
/* 15BB30 801B5AC0 0018C880 */  sll   $t9, $t8, 2
/* 15BB34 801B5AC4 00390821 */  addu  $at, $at, $t9
/* 15BB38 801B5AC8 E4203210 */  swc1  $f0, 0x3210($at)
/* 15BB3C 801B5ACC 8C480000 */  lw    $t0, ($v0)
/* 15BB40 801B5AD0 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 15BB44 801B5AD4 44813000 */  mtc1  $at, $f6
/* 15BB48 801B5AD8 3C01800E */  lui   $at, 0x800e
/* 15BB4C 801B5ADC 00084880 */  sll   $t1, $t0, 2
/* 15BB50 801B5AE0 00290821 */  addu  $at, $at, $t1
/* 15BB54 801B5AE4 E4263750 */  swc1  $f6, 0x3750($at)
/* 15BB58 801B5AE8 8C4A0000 */  lw    $t2, ($v0)
/* 15BB5C 801B5AEC 3C01800E */  lui   $at, 0x800e
/* 15BB60 801B5AF0 000A5880 */  sll   $t3, $t2, 2
/* 15BB64 801B5AF4 002B0821 */  addu  $at, $at, $t3
/* 15BB68 801B5AF8 E4203C90 */  swc1  $f0, 0x3c90($at)
.L801B5AFC_ovl7:
/* 15BB6C 801B5AFC 03E00008 */  jr    $ra
/* 15BB70 801B5B00 00000000 */   nop   
.size func_801B5A84_ovl7, . - func_801B5A84_ovl7

glabel func_801B5B04_ovl7
/* 15BB74 801B5B04 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15BB78 801B5B08 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15BB7C 801B5B0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15BB80 801B5B10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15BB84 801B5B14 AFA40018 */  sw    $a0, 0x18($sp)
/* 15BB88 801B5B18 8C4E0000 */  lw    $t6, ($v0)
/* 15BB8C 801B5B1C 3C01800F */  lui   $at, 0x800f
/* 15BB90 801B5B20 24080001 */  li    $t0, 1
/* 15BB94 801B5B24 000E7880 */  sll   $t7, $t6, 2
/* 15BB98 801B5B28 002F0821 */  addu  $at, $at, $t7
/* 15BB9C 801B5B2C AC209C60 */  sw    $zero, -0x63a0($at)
/* 15BBA0 801B5B30 8C580000 */  lw    $t8, ($v0)
/* 15BBA4 801B5B34 3C01800F */  lui   $at, 0x800f
/* 15BBA8 801B5B38 3C040001 */  lui   $a0, (0x000100BF >> 16) # lui $a0, 1
/* 15BBAC 801B5B3C 0018C880 */  sll   $t9, $t8, 2
/* 15BBB0 801B5B40 00390821 */  addu  $at, $at, $t9
/* 15BBB4 801B5B44 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15BBB8 801B5B48 8C490000 */  lw    $t1, ($v0)
/* 15BBBC 801B5B4C 3C01800E */  lui   $at, 0x800e
/* 15BBC0 801B5B50 348400BF */  ori   $a0, (0x000100BF & 0xFFFF) # ori $a0, $a0, 0xbf
/* 15BBC4 801B5B54 00095080 */  sll   $t2, $t1, 2
/* 15BBC8 801B5B58 002A0821 */  addu  $at, $at, $t2
/* 15BBCC 801B5B5C AC28DFD0 */  sw    $t0, -0x2030($at)
/* 15BBD0 801B5B60 8C4B0000 */  lw    $t3, ($v0)
/* 15BBD4 801B5B64 3C01800F */  lui   $at, 0x800f
/* 15BBD8 801B5B68 000B6080 */  sll   $t4, $t3, 2
/* 15BBDC 801B5B6C 002C0821 */  addu  $at, $at, $t4
/* 15BBE0 801B5B70 0C02A806 */  jal   func_800AA018
/* 15BBE4 801B5B74 AC208920 */   sw    $zero, -0x76e0($at)
/* 15BBE8 801B5B78 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15BBEC 801B5B7C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15BBF0 801B5B80 3C0D801B */  lui   $t5, %hi(D_801B5A84) # $t5, 0x801b
/* 15BBF4 801B5B84 3C01800E */  lui   $at, 0x800e
/* 15BBF8 801B5B88 8DCF0000 */  lw    $t7, ($t6)
/* 15BBFC 801B5B8C 25AD5A84 */  addiu $t5, %lo(D_801B5A84) # addiu $t5, $t5, 0x5a84
/* 15BC00 801B5B90 000FC080 */  sll   $t8, $t7, 2
/* 15BC04 801B5B94 00380821 */  addu  $at, $at, $t8
/* 15BC08 801B5B98 0C02BE85 */  jal   func_800AFA14
/* 15BC0C 801B5B9C AC2DF310 */   sw    $t5, -0xcf0($at)
/* 15BC10 801B5BA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15BC14 801B5BA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 15BC18 801B5BA8 03E00008 */  jr    $ra
/* 15BC1C 801B5BAC 00000000 */   nop   
.size func_801B5B04_ovl7, . - func_801B5B04_ovl7

glabel func_801B5BB0_ovl7
/* 15BC20 801B5BB0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15BC24 801B5BB4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15BC28 801B5BB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15BC2C 801B5BBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 15BC30 801B5BC0 AFA40018 */  sw    $a0, 0x18($sp)
/* 15BC34 801B5BC4 8C620000 */  lw    $v0, ($v1)
/* 15BC38 801B5BC8 3C0E800F */  lui   $t6, 0x800f
/* 15BC3C 801B5BCC 00021080 */  sll   $v0, $v0, 2
/* 15BC40 801B5BD0 01C27021 */  addu  $t6, $t6, $v0
/* 15BC44 801B5BD4 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 15BC48 801B5BD8 31CF0002 */  andi  $t7, $t6, 2
/* 15BC4C 801B5BDC 11E00007 */  beqz  $t7, .L801B5BFC_ovl7
/* 15BC50 801B5BE0 00000000 */   nop   
/* 15BC54 801B5BE4 0C029D9E */  jal   play_sound
/* 15BC58 801B5BE8 2404016B */   li    $a0, 363
/* 15BC5C 801B5BEC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15BC60 801B5BF0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15BC64 801B5BF4 8C620000 */  lw    $v0, ($v1)
/* 15BC68 801B5BF8 00021080 */  sll   $v0, $v0, 2
.L801B5BFC_ovl7:
/* 15BC6C 801B5BFC 3C01800E */  lui   $at, 0x800e
/* 15BC70 801B5C00 00220821 */  addu  $at, $at, $v0
/* 15BC74 801B5C04 C4243210 */  lwc1  $f4, 0x3210($at)
/* 15BC78 801B5C08 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 15BC7C 801B5C0C 44813000 */  mtc1  $at, $f6
/* 15BC80 801B5C10 3C01800E */  lui   $at, 0x800e
/* 15BC84 801B5C14 00220821 */  addu  $at, $at, $v0
/* 15BC88 801B5C18 4606203C */  c.lt.s $f4, $f6
/* 15BC8C 801B5C1C 00000000 */  nop   
/* 15BC90 801B5C20 45020013 */  bc1fl .L801B5C70_ovl7
/* 15BC94 801B5C24 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15BC98 801B5C28 44804000 */  mtc1  $zero, $f8
/* 15BC9C 801B5C2C C42A3750 */  lwc1  $f10, 0x3750($at)
/* 15BCA0 801B5C30 3C01800E */  lui   $at, 0x800e
/* 15BCA4 801B5C34 00220821 */  addu  $at, $at, $v0
/* 15BCA8 801B5C38 460A4032 */  c.eq.s $f8, $f10
/* 15BCAC 801B5C3C 24180004 */  li    $t8, 4
/* 15BCB0 801B5C40 3C04800E */  lui   $a0, 0x800e
/* 15BCB4 801B5C44 4503000A */  bc1tl .L801B5C70_ovl7
/* 15BCB8 801B5C48 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15BCBC 801B5C4C AC38DC50 */  sw    $t8, -0x23b0($at)
/* 15BCC0 801B5C50 8C790000 */  lw    $t9, ($v1)
/* 15BCC4 801B5C54 3C05801B */  lui   $a1, %hi(D_801B57A0) # $a1, 0x801b
/* 15BCC8 801B5C58 24A557A0 */  addiu $a1, %lo(D_801B57A0) # addiu $a1, $a1, 0x57a0
/* 15BCCC 801B5C5C 00194080 */  sll   $t0, $t9, 2
/* 15BCD0 801B5C60 00882021 */  addu  $a0, $a0, $t0
/* 15BCD4 801B5C64 0C02C7B2 */  jal   assign_new_process_entry
/* 15BCD8 801B5C68 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15BCDC 801B5C6C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B5C70_ovl7:
/* 15BCE0 801B5C70 27BD0018 */  addiu $sp, $sp, 0x18
/* 15BCE4 801B5C74 03E00008 */  jr    $ra
/* 15BCE8 801B5C78 00000000 */   nop   
.size func_801B5BB0_ovl7, . - func_801B5BB0_ovl7

glabel func_801B5C7C_ovl7
/* 15BCEC 801B5C7C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15BCF0 801B5C80 AFB00014 */  sw    $s0, 0x14($sp)
/* 15BCF4 801B5C84 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 15BCF8 801B5C88 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 15BCFC 801B5C8C 8E020000 */  lw    $v0, ($s0)
/* 15BD00 801B5C90 AFBF001C */  sw    $ra, 0x1c($sp)
/* 15BD04 801B5C94 AFB10018 */  sw    $s1, 0x18($sp)
/* 15BD08 801B5C98 AFA40020 */  sw    $a0, 0x20($sp)
/* 15BD0C 801B5C9C 8C430000 */  lw    $v1, ($v0)
/* 15BD10 801B5CA0 3C01800F */  lui   $at, 0x800f
/* 15BD14 801B5CA4 3C11800F */  lui   $s1, %hi(D_800E9E20) # $s1, 0x800f
/* 15BD18 801B5CA8 00031880 */  sll   $v1, $v1, 2
/* 15BD1C 801B5CAC 00230821 */  addu  $at, $at, $v1
/* 15BD20 801B5CB0 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15BD24 801B5CB4 8C4E0000 */  lw    $t6, ($v0)
/* 15BD28 801B5CB8 3C06800E */  lui   $a2, 0x800e
/* 15BD2C 801B5CBC 26319E20 */  addiu $s1, %lo(D_800E9E20) # addiu $s1, $s1, -0x61e0
/* 15BD30 801B5CC0 00C33021 */  addu  $a2, $a2, $v1
/* 15BD34 801B5CC4 000E7880 */  sll   $t7, $t6, 2
/* 15BD38 801B5CC8 8CC61B50 */  lw    $a2, 0x1b50($a2)
/* 15BD3C 801B5CCC 022FC021 */  addu  $t8, $s1, $t7
/* 15BD40 801B5CD0 AF000000 */  sw    $zero, ($t8)
/* 15BD44 801B5CD4 8C480000 */  lw    $t0, ($v0)
/* 15BD48 801B5CD8 3C01800E */  lui   $at, 0x800e
/* 15BD4C 801B5CDC 24190004 */  li    $t9, 4
/* 15BD50 801B5CE0 00084880 */  sll   $t1, $t0, 2
/* 15BD54 801B5CE4 00290821 */  addu  $at, $at, $t1
/* 15BD58 801B5CE8 3C0A801D */  lui   $t2, %hi(D_801CC064) # $t2, 0x801d
/* 15BD5C 801B5CEC AC39DFD0 */  sw    $t9, -0x2030($at)
/* 15BD60 801B5CF0 254AC064 */  addiu $t2, %lo(D_801CC064) # addiu $t2, $t2, -0x3f9c
/* 15BD64 801B5CF4 3C040001 */  lui   $a0, (0x000100C0 >> 16) # lui $a0, 1
/* 15BD68 801B5CF8 348400C0 */  ori   $a0, (0x000100C0 & 0xFFFF) # ori $a0, $a0, 0xc0
/* 15BD6C 801B5CFC 24050001 */  li    $a1, 1
/* 15BD70 801B5D00 0C02AA19 */  jal   func_800AA864
/* 15BD74 801B5D04 ACCA0098 */   sw    $t2, 0x98($a2)
/* 15BD78 801B5D08 8E020000 */  lw    $v0, ($s0)
/* 15BD7C 801B5D0C 3C01C150 */  li    $at, 0xC1500000 # -13.000000
/* 15BD80 801B5D10 44812000 */  mtc1  $at, $f4
/* 15BD84 801B5D14 8C4B0000 */  lw    $t3, ($v0)
/* 15BD88 801B5D18 3C01800E */  lui   $at, 0x800e
/* 15BD8C 801B5D1C 3C040001 */  lui   $a0, (0x000100C1 >> 16) # lui $a0, 1
/* 15BD90 801B5D20 000B6080 */  sll   $t4, $t3, 2
/* 15BD94 801B5D24 002C0821 */  addu  $at, $at, $t4
/* 15BD98 801B5D28 E4243210 */  swc1  $f4, 0x3210($at)
/* 15BD9C 801B5D2C 8C4D0000 */  lw    $t5, ($v0)
/* 15BDA0 801B5D30 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 15BDA4 801B5D34 44813000 */  mtc1  $at, $f6
/* 15BDA8 801B5D38 3C01800E */  lui   $at, 0x800e
/* 15BDAC 801B5D3C 000D7080 */  sll   $t6, $t5, 2
/* 15BDB0 801B5D40 002E0821 */  addu  $at, $at, $t6
/* 15BDB4 801B5D44 E4263750 */  swc1  $f6, 0x3750($at)
/* 15BDB8 801B5D48 8C4F0000 */  lw    $t7, ($v0)
/* 15BDBC 801B5D4C 3C014150 */  li    $at, 0x41500000 # 13.000000
/* 15BDC0 801B5D50 44814000 */  mtc1  $at, $f8
/* 15BDC4 801B5D54 3C01800E */  lui   $at, 0x800e
/* 15BDC8 801B5D58 000FC080 */  sll   $t8, $t7, 2
/* 15BDCC 801B5D5C 00380821 */  addu  $at, $at, $t8
/* 15BDD0 801B5D60 348400C1 */  ori   $a0, (0x000100C1 & 0xFFFF) # ori $a0, $a0, 0xc1
/* 15BDD4 801B5D64 0C02A806 */  jal   func_800AA018
/* 15BDD8 801B5D68 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 15BDDC 801B5D6C 8E080000 */  lw    $t0, ($s0)
/* 15BDE0 801B5D70 8D190000 */  lw    $t9, ($t0)
/* 15BDE4 801B5D74 00194880 */  sll   $t1, $t9, 2
/* 15BDE8 801B5D78 02295021 */  addu  $t2, $s1, $t1
/* 15BDEC 801B5D7C 8D4B0000 */  lw    $t3, ($t2)
/* 15BDF0 801B5D80 5560000B */  bnezl $t3, .L801B5DB0_ovl7
/* 15BDF4 801B5D84 3C040001 */   lui   $a0, 1
.L801B5D88_ovl7:
/* 15BDF8 801B5D88 0C002DAF */  jal   finish_current_thread
/* 15BDFC 801B5D8C 24040001 */   li    $a0, 1
/* 15BE00 801B5D90 8E0C0000 */  lw    $t4, ($s0)
/* 15BE04 801B5D94 8D8D0000 */  lw    $t5, ($t4)
/* 15BE08 801B5D98 000D7080 */  sll   $t6, $t5, 2
/* 15BE0C 801B5D9C 022E7821 */  addu  $t7, $s1, $t6
/* 15BE10 801B5DA0 8DF80000 */  lw    $t8, ($t7)
/* 15BE14 801B5DA4 1300FFF8 */  beqz  $t8, .L801B5D88_ovl7
/* 15BE18 801B5DA8 00000000 */   nop   
/* 15BE1C 801B5DAC 3C040001 */  lui   $a0, (0x000100C2 >> 16) # lui $a0, 1
.L801B5DB0_ovl7:
/* 15BE20 801B5DB0 348400C2 */  ori   $a0, (0x000100C2 & 0xFFFF) # ori $a0, $a0, 0xc2
/* 15BE24 801B5DB4 0C02AA19 */  jal   func_800AA864
/* 15BE28 801B5DB8 24050001 */   li    $a1, 1
/* 15BE2C 801B5DBC 8E190000 */  lw    $t9, ($s0)
/* 15BE30 801B5DC0 24080002 */  li    $t0, 2
/* 15BE34 801B5DC4 8F290000 */  lw    $t1, ($t9)
/* 15BE38 801B5DC8 00095080 */  sll   $t2, $t1, 2
/* 15BE3C 801B5DCC 022A5821 */  addu  $t3, $s1, $t2
/* 15BE40 801B5DD0 0C02BE85 */  jal   func_800AFA14
/* 15BE44 801B5DD4 AD680000 */   sw    $t0, ($t3)
/* 15BE48 801B5DD8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 15BE4C 801B5DDC 8FB00014 */  lw    $s0, 0x14($sp)
/* 15BE50 801B5DE0 8FB10018 */  lw    $s1, 0x18($sp)
/* 15BE54 801B5DE4 03E00008 */  jr    $ra
/* 15BE58 801B5DE8 27BD0020 */   addiu $sp, $sp, 0x20
.size func_801B5C7C_ovl7, . - func_801B5C7C_ovl7

glabel func_801B5DEC_ovl7
/* 15BE5C 801B5DEC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15BE60 801B5DF0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15BE64 801B5DF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15BE68 801B5DF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15BE6C 801B5DFC AFA40020 */  sw    $a0, 0x20($sp)
/* 15BE70 801B5E00 8C620000 */  lw    $v0, ($v1)
/* 15BE74 801B5E04 3C0E800F */  lui   $t6, 0x800f
/* 15BE78 801B5E08 3C07800E */  lui   $a3, 0x800e
/* 15BE7C 801B5E0C 00021080 */  sll   $v0, $v0, 2
/* 15BE80 801B5E10 01C27021 */  addu  $t6, $t6, $v0
/* 15BE84 801B5E14 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 15BE88 801B5E18 00E23821 */  addu  $a3, $a3, $v0
/* 15BE8C 801B5E1C 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 15BE90 801B5E20 31CF0002 */  andi  $t7, $t6, 2
/* 15BE94 801B5E24 11E00008 */  beqz  $t7, .L801B5E48_ovl7
/* 15BE98 801B5E28 2404016C */   li    $a0, 364
/* 15BE9C 801B5E2C 0C029D9E */  jal   play_sound
/* 15BEA0 801B5E30 AFA7001C */   sw    $a3, 0x1c($sp)
/* 15BEA4 801B5E34 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15BEA8 801B5E38 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15BEAC 801B5E3C 8FA7001C */  lw    $a3, 0x1c($sp)
/* 15BEB0 801B5E40 8C620000 */  lw    $v0, ($v1)
/* 15BEB4 801B5E44 00021080 */  sll   $v0, $v0, 2
.L801B5E48_ovl7:
/* 15BEB8 801B5E48 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 15BEBC 801B5E4C 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 15BEC0 801B5E50 0102C021 */  addu  $t8, $t0, $v0
/* 15BEC4 801B5E54 44806000 */  mtc1  $zero, $f12
/* 15BEC8 801B5E58 C7000000 */  lwc1  $f0, ($t8)
/* 15BECC 801B5E5C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 15BED0 801B5E60 44817000 */  mtc1  $at, $f14
/* 15BED4 801B5E64 460C003C */  c.lt.s $f0, $f12
/* 15BED8 801B5E68 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 15BEDC 801B5E6C 45020004 */  bc1fl .L801B5E80_ovl7
/* 15BEE0 801B5E70 46000086 */   mov.s $f2, $f0
/* 15BEE4 801B5E74 10000002 */  b     .L801B5E80_ovl7
/* 15BEE8 801B5E78 46000087 */   neg.s $f2, $f0
/* 15BEEC 801B5E7C 46000086 */  mov.s $f2, $f0
.L801B5E80_ovl7:
/* 15BEF0 801B5E80 460E103C */  c.lt.s $f2, $f14
/* 15BEF4 801B5E84 00000000 */  nop   
/* 15BEF8 801B5E88 45020017 */  bc1fl .L801B5EE8_ovl7
/* 15BEFC 801B5E8C 460C003C */   c.lt.s $f0, $f12
/* 15BF00 801B5E90 44802000 */  mtc1  $zero, $f4
/* 15BF04 801B5E94 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 15BF08 801B5E98 00A2C821 */  addu  $t9, $a1, $v0
/* 15BF0C 801B5E9C E7240000 */  swc1  $f4, ($t9)
/* 15BF10 801B5EA0 8C620000 */  lw    $v0, ($v1)
/* 15BF14 801B5EA4 3C01801D */  lui   $at, %hi(D_801CE340) # $at, 0x801d
/* 15BF18 801B5EA8 00021080 */  sll   $v0, $v0, 2
/* 15BF1C 801B5EAC 00A24821 */  addu  $t1, $a1, $v0
/* 15BF20 801B5EB0 C5260000 */  lwc1  $f6, ($t1)
/* 15BF24 801B5EB4 01025021 */  addu  $t2, $t0, $v0
/* 15BF28 801B5EB8 E5460000 */  swc1  $f6, ($t2)
/* 15BF2C 801B5EBC 8C6B0000 */  lw    $t3, ($v1)
/* 15BF30 801B5EC0 C428E340 */  lwc1  $f8, %lo(D_801CE340)($at)
/* 15BF34 801B5EC4 3C01800E */  lui   $at, 0x800e
/* 15BF38 801B5EC8 000B6080 */  sll   $t4, $t3, 2
/* 15BF3C 801B5ECC 002C0821 */  addu  $at, $at, $t4
/* 15BF40 801B5ED0 E4283C90 */  swc1  $f8, 0x3c90($at)
/* 15BF44 801B5ED4 8C620000 */  lw    $v0, ($v1)
/* 15BF48 801B5ED8 00021080 */  sll   $v0, $v0, 2
/* 15BF4C 801B5EDC 01026821 */  addu  $t5, $t0, $v0
/* 15BF50 801B5EE0 C5A00000 */  lwc1  $f0, ($t5)
/* 15BF54 801B5EE4 460C003C */  c.lt.s $f0, $f12
.L801B5EE8_ovl7:
/* 15BF58 801B5EE8 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 15BF5C 801B5EEC 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 15BF60 801B5EF0 44815000 */  mtc1  $at, $f10
/* 15BF64 801B5EF4 45000003 */  bc1f  .L801B5F04_ovl7
/* 15BF68 801B5EF8 24A53750 */   addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 15BF6C 801B5EFC 10000002 */  b     .L801B5F08_ovl7
/* 15BF70 801B5F00 46000087 */   neg.s $f2, $f0
.L801B5F04_ovl7:
/* 15BF74 801B5F04 46000086 */  mov.s $f2, $f0
.L801B5F08_ovl7:
/* 15BF78 801B5F08 460A103C */  c.lt.s $f2, $f10
/* 15BF7C 801B5F0C 00A27021 */  addu  $t6, $a1, $v0
/* 15BF80 801B5F10 3C01800E */  lui   $at, 0x800e
/* 15BF84 801B5F14 4502000D */  bc1fl .L801B5F4C_ovl7
/* 15BF88 801B5F18 00220821 */   addu  $at, $at, $v0
/* 15BF8C 801B5F1C C5D00000 */  lwc1  $f16, ($t6)
/* 15BF90 801B5F20 3C06800F */  lui   $a2, %hi(D_800E9E20) # $a2, 0x800f
/* 15BF94 801B5F24 24C69E20 */  addiu $a2, %lo(D_800E9E20) # addiu $a2, $a2, -0x61e0
/* 15BF98 801B5F28 46107032 */  c.eq.s $f14, $f16
/* 15BF9C 801B5F2C 00C2C021 */  addu  $t8, $a2, $v0
/* 15BFA0 801B5F30 240F0001 */  li    $t7, 1
/* 15BFA4 801B5F34 45020005 */  bc1fl .L801B5F4C_ovl7
/* 15BFA8 801B5F38 00220821 */   addu  $at, $at, $v0
/* 15BFAC 801B5F3C AF0F0000 */  sw    $t7, ($t8)
/* 15BFB0 801B5F40 8C620000 */  lw    $v0, ($v1)
/* 15BFB4 801B5F44 00021080 */  sll   $v0, $v0, 2
/* 15BFB8 801B5F48 00220821 */  addu  $at, $at, $v0
.L801B5F4C_ovl7:
/* 15BFBC 801B5F4C C4242790 */  lwc1  $f4, 0x2790($at)
/* 15BFC0 801B5F50 C4F20004 */  lwc1  $f18, 4($a3)
/* 15BFC4 801B5F54 3C06800F */  lui   $a2, %hi(D_800E9E20) # $a2, 0x800f
/* 15BFC8 801B5F58 24C69E20 */  addiu $a2, %lo(D_800E9E20) # addiu $a2, $a2, -0x61e0
/* 15BFCC 801B5F5C 4612203E */  c.le.s $f4, $f18
/* 15BFD0 801B5F60 00C22021 */  addu  $a0, $a2, $v0
/* 15BFD4 801B5F64 4502001B */  bc1fl .L801B5FD4_ovl7
/* 15BFD8 801B5F68 00C2C821 */   addu  $t9, $a2, $v0
/* 15BFDC 801B5F6C 8C990000 */  lw    $t9, ($a0)
/* 15BFE0 801B5F70 24090001 */  li    $t1, 1
/* 15BFE4 801B5F74 57200017 */  bnezl $t9, .L801B5FD4_ovl7
/* 15BFE8 801B5F78 00C2C821 */   addu  $t9, $a2, $v0
/* 15BFEC 801B5F7C AC890000 */  sw    $t1, ($a0)
/* 15BFF0 801B5F80 8C6A0000 */  lw    $t2, ($v1)
/* 15BFF4 801B5F84 44803000 */  mtc1  $zero, $f6
/* 15BFF8 801B5F88 3C01801D */  lui   $at, %hi(D_801CE344) # $at, 0x801d
/* 15BFFC 801B5F8C 000A5880 */  sll   $t3, $t2, 2
/* 15C000 801B5F90 00AB6021 */  addu  $t4, $a1, $t3
/* 15C004 801B5F94 E5860000 */  swc1  $f6, ($t4)
/* 15C008 801B5F98 8C620000 */  lw    $v0, ($v1)
/* 15C00C 801B5F9C 00021080 */  sll   $v0, $v0, 2
/* 15C010 801B5FA0 00A26821 */  addu  $t5, $a1, $v0
/* 15C014 801B5FA4 C5A80000 */  lwc1  $f8, ($t5)
/* 15C018 801B5FA8 01027021 */  addu  $t6, $t0, $v0
/* 15C01C 801B5FAC E5C80000 */  swc1  $f8, ($t6)
/* 15C020 801B5FB0 8C6F0000 */  lw    $t7, ($v1)
/* 15C024 801B5FB4 C42AE344 */  lwc1  $f10, %lo(D_801CE344)($at)
/* 15C028 801B5FB8 3C01800E */  lui   $at, 0x800e
/* 15C02C 801B5FBC 000FC080 */  sll   $t8, $t7, 2
/* 15C030 801B5FC0 00380821 */  addu  $at, $at, $t8
/* 15C034 801B5FC4 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 15C038 801B5FC8 8C620000 */  lw    $v0, ($v1)
/* 15C03C 801B5FCC 00021080 */  sll   $v0, $v0, 2
/* 15C040 801B5FD0 00C2C821 */  addu  $t9, $a2, $v0
.L801B5FD4_ovl7:
/* 15C044 801B5FD4 8F290000 */  lw    $t1, ($t9)
/* 15C048 801B5FD8 24010002 */  li    $at, 2
/* 15C04C 801B5FDC 240A0003 */  li    $t2, 3
/* 15C050 801B5FE0 1521000B */  bne   $t1, $at, .L801B6010_ovl7
/* 15C054 801B5FE4 3C04800E */   lui   $a0, 0x800e
/* 15C058 801B5FE8 3C01800E */  lui   $at, 0x800e
/* 15C05C 801B5FEC 00220821 */  addu  $at, $at, $v0
/* 15C060 801B5FF0 AC2ADC50 */  sw    $t2, -0x23b0($at)
/* 15C064 801B5FF4 8C6B0000 */  lw    $t3, ($v1)
/* 15C068 801B5FF8 3C05801B */  lui   $a1, %hi(D_801B57A0) # $a1, 0x801b
/* 15C06C 801B5FFC 24A557A0 */  addiu $a1, %lo(D_801B57A0) # addiu $a1, $a1, 0x57a0
/* 15C070 801B6000 000B6080 */  sll   $t4, $t3, 2
/* 15C074 801B6004 008C2021 */  addu  $a0, $a0, $t4
/* 15C078 801B6008 0C02C7B2 */  jal   assign_new_process_entry
/* 15C07C 801B600C 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801B6010_ovl7:
/* 15C080 801B6010 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C084 801B6014 27BD0020 */  addiu $sp, $sp, 0x20
/* 15C088 801B6018 03E00008 */  jr    $ra
/* 15C08C 801B601C 00000000 */   nop   
.size func_801B5DEC_ovl7, . - func_801B5DEC_ovl7

glabel func_801B6020_ovl7
/* 15C090 801B6020 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 15C094 801B6024 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 15C098 801B6028 8CE20000 */  lw    $v0, ($a3)
/* 15C09C 801B602C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C0A0 801B6030 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C0A4 801B6034 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C0A8 801B6038 8C430000 */  lw    $v1, ($v0)
/* 15C0AC 801B603C 3C01800F */  lui   $at, 0x800f
/* 15C0B0 801B6040 240E0001 */  li    $t6, 1
/* 15C0B4 801B6044 00031880 */  sll   $v1, $v1, 2
/* 15C0B8 801B6048 00230821 */  addu  $at, $at, $v1
/* 15C0BC 801B604C AC2E9C60 */  sw    $t6, -0x63a0($at)
/* 15C0C0 801B6050 8C4F0000 */  lw    $t7, ($v0)
/* 15C0C4 801B6054 3C01800F */  lui   $at, 0x800f
/* 15C0C8 801B6058 3C06800E */  lui   $a2, 0x800e
/* 15C0CC 801B605C 000FC080 */  sll   $t8, $t7, 2
/* 15C0D0 801B6060 00380821 */  addu  $at, $at, $t8
/* 15C0D4 801B6064 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15C0D8 801B6068 8C490000 */  lw    $t1, ($v0)
/* 15C0DC 801B606C 00C33021 */  addu  $a2, $a2, $v1
/* 15C0E0 801B6070 8CC61B50 */  lw    $a2, 0x1b50($a2)
/* 15C0E4 801B6074 3C01800E */  lui   $at, 0x800e
/* 15C0E8 801B6078 00095080 */  sll   $t2, $t1, 2
/* 15C0EC 801B607C 002A0821 */  addu  $at, $at, $t2
/* 15C0F0 801B6080 24190003 */  li    $t9, 3
/* 15C0F4 801B6084 3C0B801D */  lui   $t3, %hi(D_801CC064) # $t3, 0x801d
/* 15C0F8 801B6088 AC39DFD0 */  sw    $t9, -0x2030($at)
/* 15C0FC 801B608C 256BC064 */  addiu $t3, %lo(D_801CC064) # addiu $t3, $t3, -0x3f9c
/* 15C100 801B6090 ACCB0098 */  sw    $t3, 0x98($a2)
/* 15C104 801B6094 8CE20000 */  lw    $v0, ($a3)
/* 15C108 801B6098 44802000 */  mtc1  $zero, $f4
/* 15C10C 801B609C 3C08800E */  lui   $t0, %hi(D_800E3750) # $t0, 0x800e
/* 15C110 801B60A0 8C4C0000 */  lw    $t4, ($v0)
/* 15C114 801B60A4 25083750 */  addiu $t0, %lo(D_800E3750) # addiu $t0, $t0, 0x3750
/* 15C118 801B60A8 3C01800E */  lui   $at, 0x800e
/* 15C11C 801B60AC 000C6880 */  sll   $t5, $t4, 2
/* 15C120 801B60B0 010D7021 */  addu  $t6, $t0, $t5
/* 15C124 801B60B4 E5C40000 */  swc1  $f4, ($t6)
/* 15C128 801B60B8 8C430000 */  lw    $v1, ($v0)
/* 15C12C 801B60BC 3C040001 */  lui   $a0, (0x000100C4 >> 16) # lui $a0, 1
/* 15C130 801B60C0 348400C4 */  ori   $a0, (0x000100C4 & 0xFFFF) # ori $a0, $a0, 0xc4
/* 15C134 801B60C4 00031880 */  sll   $v1, $v1, 2
/* 15C138 801B60C8 01037821 */  addu  $t7, $t0, $v1
/* 15C13C 801B60CC C5E60000 */  lwc1  $f6, ($t7)
/* 15C140 801B60D0 00230821 */  addu  $at, $at, $v1
/* 15C144 801B60D4 24050002 */  li    $a1, 2
/* 15C148 801B60D8 E4263210 */  swc1  $f6, 0x3210($at)
/* 15C14C 801B60DC 8C580000 */  lw    $t8, ($v0)
/* 15C150 801B60E0 3C01801D */  lui   $at, %hi(D_801CE348) # $at, 0x801d
/* 15C154 801B60E4 C428E348 */  lwc1  $f8, %lo(D_801CE348)($at)
/* 15C158 801B60E8 3C01800E */  lui   $at, 0x800e
/* 15C15C 801B60EC 00184880 */  sll   $t1, $t8, 2
/* 15C160 801B60F0 00290821 */  addu  $at, $at, $t1
/* 15C164 801B60F4 0C02AA19 */  jal   func_800AA864
/* 15C168 801B60F8 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 15C16C 801B60FC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 15C170 801B6100 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15C174 801B6104 3C01800F */  lui   $at, 0x800f
/* 15C178 801B6108 24190001 */  li    $t9, 1
/* 15C17C 801B610C 8D4B0000 */  lw    $t3, ($t2)
/* 15C180 801B6110 000B6080 */  sll   $t4, $t3, 2
/* 15C184 801B6114 002C0821 */  addu  $at, $at, $t4
/* 15C188 801B6118 0C02BE85 */  jal   func_800AFA14
/* 15C18C 801B611C AC399E20 */   sw    $t9, -0x61e0($at)
/* 15C190 801B6120 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C194 801B6124 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C198 801B6128 03E00008 */  jr    $ra
/* 15C19C 801B612C 00000000 */   nop   
.size func_801B6020_ovl7, . - func_801B6020_ovl7

glabel func_801B6130_ovl7
/* 15C1A0 801B6130 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15C1A4 801B6134 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 15C1A8 801B6138 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C1AC 801B613C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C1B0 801B6140 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C1B4 801B6144 8CC30000 */  lw    $v1, ($a2)
/* 15C1B8 801B6148 3C02800E */  lui   $v0, 0x800e
/* 15C1BC 801B614C 3C0F800F */  lui   $t7, 0x800f
/* 15C1C0 801B6150 00031880 */  sll   $v1, $v1, 2
/* 15C1C4 801B6154 00431021 */  addu  $v0, $v0, $v1
/* 15C1C8 801B6158 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 15C1CC 801B615C 01E37821 */  addu  $t7, $t7, $v1
/* 15C1D0 801B6160 904E003C */  lbu   $t6, 0x3c($v0)
/* 15C1D4 801B6164 55C0000F */  bnezl $t6, .L801B61A4_ovl7
/* 15C1D8 801B6168 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15C1DC 801B616C 8DEF9E20 */  lw    $t7, -0x61e0($t7)
/* 15C1E0 801B6170 3C01800E */  lui   $at, 0x800e
/* 15C1E4 801B6174 00230821 */  addu  $at, $at, $v1
/* 15C1E8 801B6178 11E00009 */  beqz  $t7, .L801B61A0_ovl7
/* 15C1EC 801B617C 3C04800E */   lui   $a0, 0x800e
/* 15C1F0 801B6180 AC20DC50 */  sw    $zero, -0x23b0($at)
/* 15C1F4 801B6184 8CD80000 */  lw    $t8, ($a2)
/* 15C1F8 801B6188 3C05801B */  lui   $a1, %hi(D_801B57A0) # $a1, 0x801b
/* 15C1FC 801B618C 24A557A0 */  addiu $a1, %lo(D_801B57A0) # addiu $a1, $a1, 0x57a0
/* 15C200 801B6190 0018C880 */  sll   $t9, $t8, 2
/* 15C204 801B6194 00992021 */  addu  $a0, $a0, $t9
/* 15C208 801B6198 0C02C7B2 */  jal   assign_new_process_entry
/* 15C20C 801B619C 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801B61A0_ovl7:
/* 15C210 801B61A0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B61A4_ovl7:
/* 15C214 801B61A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C218 801B61A8 03E00008 */  jr    $ra
/* 15C21C 801B61AC 00000000 */   nop   
.size func_801B6130_ovl7, . - func_801B6130_ovl7

glabel func_801B61B0_ovl7
/* 15C220 801B61B0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15C224 801B61B4 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 15C228 801B61B8 8CC20000 */  lw    $v0, ($a2)
/* 15C22C 801B61BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C230 801B61C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C234 801B61C4 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C238 801B61C8 8C430000 */  lw    $v1, ($v0)
/* 15C23C 801B61CC 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 15C240 801B61D0 44810000 */  mtc1  $at, $f0
/* 15C244 801B61D4 3C01800F */  lui   $at, 0x800f
/* 15C248 801B61D8 00031880 */  sll   $v1, $v1, 2
/* 15C24C 801B61DC 00230821 */  addu  $at, $at, $v1
/* 15C250 801B61E0 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15C254 801B61E4 8C4E0000 */  lw    $t6, ($v0)
/* 15C258 801B61E8 3C01800F */  lui   $at, 0x800f
/* 15C25C 801B61EC 3C05800E */  lui   $a1, 0x800e
/* 15C260 801B61F0 000E7880 */  sll   $t7, $t6, 2
/* 15C264 801B61F4 002F0821 */  addu  $at, $at, $t7
/* 15C268 801B61F8 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15C26C 801B61FC 8C590000 */  lw    $t9, ($v0)
/* 15C270 801B6200 00A32821 */  addu  $a1, $a1, $v1
/* 15C274 801B6204 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15C278 801B6208 3C01800E */  lui   $at, 0x800e
/* 15C27C 801B620C 00194080 */  sll   $t0, $t9, 2
/* 15C280 801B6210 00280821 */  addu  $at, $at, $t0
/* 15C284 801B6214 24180002 */  li    $t8, 2
/* 15C288 801B6218 3C09801D */  lui   $t1, %hi(D_801CC088) # $t1, 0x801d
/* 15C28C 801B621C AC38DFD0 */  sw    $t8, -0x2030($at)
/* 15C290 801B6220 2529C088 */  addiu $t1, %lo(D_801CC088) # addiu $t1, $t1, -0x3f78
/* 15C294 801B6224 ACA90098 */  sw    $t1, 0x98($a1)
/* 15C298 801B6228 8CC20000 */  lw    $v0, ($a2)
/* 15C29C 801B622C 3C01800F */  lui   $at, 0x800f
/* 15C2A0 801B6230 3C040001 */  lui   $a0, (0x000100C5 >> 16) # lui $a0, 1
/* 15C2A4 801B6234 8C4A0000 */  lw    $t2, ($v0)
/* 15C2A8 801B6238 348400C5 */  ori   $a0, (0x000100C5 & 0xFFFF) # ori $a0, $a0, 0xc5
/* 15C2AC 801B623C 000A5880 */  sll   $t3, $t2, 2
/* 15C2B0 801B6240 002B0821 */  addu  $at, $at, $t3
/* 15C2B4 801B6244 AC208920 */  sw    $zero, -0x76e0($at)
/* 15C2B8 801B6248 8C4C0000 */  lw    $t4, ($v0)
/* 15C2BC 801B624C 3C01800E */  lui   $at, 0x800e
/* 15C2C0 801B6250 000C6880 */  sll   $t5, $t4, 2
/* 15C2C4 801B6254 002D0821 */  addu  $at, $at, $t5
/* 15C2C8 801B6258 E4203210 */  swc1  $f0, 0x3210($at)
/* 15C2CC 801B625C 8C4E0000 */  lw    $t6, ($v0)
/* 15C2D0 801B6260 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 15C2D4 801B6264 44812000 */  mtc1  $at, $f4
/* 15C2D8 801B6268 3C01800E */  lui   $at, 0x800e
/* 15C2DC 801B626C 000E7880 */  sll   $t7, $t6, 2
/* 15C2E0 801B6270 002F0821 */  addu  $at, $at, $t7
/* 15C2E4 801B6274 E4243750 */  swc1  $f4, 0x3750($at)
/* 15C2E8 801B6278 8C590000 */  lw    $t9, ($v0)
/* 15C2EC 801B627C 3C01800E */  lui   $at, 0x800e
/* 15C2F0 801B6280 0019C080 */  sll   $t8, $t9, 2
/* 15C2F4 801B6284 00380821 */  addu  $at, $at, $t8
/* 15C2F8 801B6288 0C02A7A9 */  jal   func_800A9EA4
/* 15C2FC 801B628C E4203C90 */   swc1  $f0, 0x3c90($at)
/* 15C300 801B6290 0C02BE85 */  jal   func_800AFA14
/* 15C304 801B6294 00000000 */   nop   
/* 15C308 801B6298 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C30C 801B629C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C310 801B62A0 03E00008 */  jr    $ra
/* 15C314 801B62A4 00000000 */   nop   
.size func_801B61B0_ovl7, . - func_801B61B0_ovl7

glabel func_801B62A8_ovl7
/* 15C318 801B62A8 03E00008 */  jr    $ra
/* 15C31C 801B62AC AFA40000 */   sw    $a0, ($sp)
.size func_801B62A8_ovl7, . - func_801B62A8_ovl7

glabel func_801B62B0_ovl7
/* 15C320 801B62B0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 15C324 801B62B4 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 15C328 801B62B8 8CAE0000 */  lw    $t6, ($a1)
/* 15C32C 801B62BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C330 801B62C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C334 801B62C4 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C338 801B62C8 8DC30000 */  lw    $v1, ($t6)
/* 15C33C 801B62CC 3C04800E */  lui   $a0, 0x800e
/* 15C340 801B62D0 3C01800F */  lui   $at, 0x800f
/* 15C344 801B62D4 00031880 */  sll   $v1, $v1, 2
/* 15C348 801B62D8 00832021 */  addu  $a0, $a0, $v1
/* 15C34C 801B62DC 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 15C350 801B62E0 00230821 */  addu  $at, $at, $v1
/* 15C354 801B62E4 3C0F801D */  lui   $t7, %hi(D_801CC088) # $t7, 0x801d
/* 15C358 801B62E8 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15C35C 801B62EC 25EFC088 */  addiu $t7, %lo(D_801CC088) # addiu $t7, $t7, -0x3f78
/* 15C360 801B62F0 AC8F0098 */  sw    $t7, 0x98($a0)
/* 15C364 801B62F4 8CA20000 */  lw    $v0, ($a1)
/* 15C368 801B62F8 3C01800E */  lui   $at, 0x800e
/* 15C36C 801B62FC 24180005 */  li    $t8, 5
/* 15C370 801B6300 8C590000 */  lw    $t9, ($v0)
/* 15C374 801B6304 44802000 */  mtc1  $zero, $f4
/* 15C378 801B6308 00194080 */  sll   $t0, $t9, 2
/* 15C37C 801B630C 00280821 */  addu  $at, $at, $t0
/* 15C380 801B6310 AC38DFD0 */  sw    $t8, -0x2030($at)
/* 15C384 801B6314 8C490000 */  lw    $t1, ($v0)
/* 15C388 801B6318 3C01800E */  lui   $at, 0x800e
/* 15C38C 801B631C 00095080 */  sll   $t2, $t1, 2
/* 15C390 801B6320 002A0821 */  addu  $at, $at, $t2
/* 15C394 801B6324 E4243210 */  swc1  $f4, 0x3210($at)
/* 15C398 801B6328 8C4B0000 */  lw    $t3, ($v0)
/* 15C39C 801B632C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 15C3A0 801B6330 44813000 */  mtc1  $at, $f6
/* 15C3A4 801B6334 3C01800E */  lui   $at, 0x800e
/* 15C3A8 801B6338 000B6080 */  sll   $t4, $t3, 2
/* 15C3AC 801B633C 002C0821 */  addu  $at, $at, $t4
/* 15C3B0 801B6340 E4263750 */  swc1  $f6, 0x3750($at)
/* 15C3B4 801B6344 8C4D0000 */  lw    $t5, ($v0)
/* 15C3B8 801B6348 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 15C3BC 801B634C 44814000 */  mtc1  $at, $f8
/* 15C3C0 801B6350 3C01800E */  lui   $at, 0x800e
/* 15C3C4 801B6354 000D7080 */  sll   $t6, $t5, 2
/* 15C3C8 801B6358 002E0821 */  addu  $at, $at, $t6
/* 15C3CC 801B635C 0C02BE85 */  jal   func_800AFA14
/* 15C3D0 801B6360 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 15C3D4 801B6364 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C3D8 801B6368 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C3DC 801B636C 03E00008 */  jr    $ra
/* 15C3E0 801B6370 00000000 */   nop   
.size func_801B62B0_ovl7, . - func_801B62B0_ovl7

glabel func_801B6374_ovl7
/* 15C3E4 801B6374 03E00008 */  jr    $ra
/* 15C3E8 801B6378 AFA40000 */   sw    $a0, ($sp)
.size func_801B6374_ovl7, . - func_801B6374_ovl7

glabel func_801B637C_ovl7
/* 15C3EC 801B637C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15C3F0 801B6380 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15C3F4 801B6384 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C3F8 801B6388 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C3FC 801B638C 8DC20000 */  lw    $v0, ($t6)
/* 15C400 801B6390 3C0F800F */  lui   $t7, 0x800f
/* 15C404 801B6394 3C01800E */  lui   $at, 0x800e
/* 15C408 801B6398 00021080 */  sll   $v0, $v0, 2
/* 15C40C 801B639C 01E27821 */  addu  $t7, $t7, $v0
/* 15C410 801B63A0 8DEF8AE0 */  lw    $t7, -0x7520($t7)
/* 15C414 801B63A4 24190004 */  li    $t9, 4
/* 15C418 801B63A8 00220821 */  addu  $at, $at, $v0
/* 15C41C 801B63AC 31F80001 */  andi  $t8, $t7, 1
/* 15C420 801B63B0 13000005 */  beqz  $t8, .L801B63C8_ovl7
/* 15C424 801B63B4 24080002 */   li    $t0, 2
/* 15C428 801B63B8 3C01800E */  lui   $at, 0x800e
/* 15C42C 801B63BC 00220821 */  addu  $at, $at, $v0
/* 15C430 801B63C0 10000002 */  b     .L801B63CC_ovl7
/* 15C434 801B63C4 AC39DC50 */   sw    $t9, -0x23b0($at)
.L801B63C8_ovl7:
/* 15C438 801B63C8 AC28DC50 */  sw    $t0, -0x23b0($at)
.L801B63CC_ovl7:
/* 15C43C 801B63CC 0C06658A */  jal   func_80199628_ovl7
/* 15C440 801B63D0 00000000 */   nop   
/* 15C444 801B63D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C448 801B63D8 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C44C 801B63DC 03E00008 */  jr    $ra
/* 15C450 801B63E0 00000000 */   nop   
.size func_801B637C_ovl7, . - func_801B637C_ovl7

glabel func_801B63E4_ovl7
/* 15C454 801B63E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C458 801B63E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C45C 801B63EC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15C460 801B63F0 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C464 801B63F4 0C02BB30 */  jal   func_800AECC0
/* 15C468 801B63F8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15C46C 801B63FC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15C470 801B6400 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15C474 801B6404 3C04800E */  lui   $a0, 0x800e
/* 15C478 801B6408 3C06801D */  lui   $a2, %hi(D_801CD6E8) # $a2, 0x801d
/* 15C47C 801B640C 8DCF0000 */  lw    $t7, ($t6)
/* 15C480 801B6410 24C6D6E8 */  addiu $a2, %lo(D_801CD6E8) # addiu $a2, $a2, -0x2918
/* 15C484 801B6414 24050003 */  li    $a1, 3
/* 15C488 801B6418 000FC080 */  sll   $t8, $t7, 2
/* 15C48C 801B641C 00982021 */  addu  $a0, $a0, $t8
/* 15C490 801B6420 0C02911F */  jal   call_virtual_function
/* 15C494 801B6424 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15C498 801B6428 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C49C 801B642C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C4A0 801B6430 03E00008 */  jr    $ra
/* 15C4A4 801B6434 00000000 */   nop   
.size func_801B63E4_ovl7, . - func_801B63E4_ovl7

glabel func_801B6438_ovl7
/* 15C4A8 801B6438 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15C4AC 801B643C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15C4B0 801B6440 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C4B4 801B6444 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C4B8 801B6448 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C4BC 801B644C 8C4F0000 */  lw    $t7, ($v0)
/* 15C4C0 801B6450 3C0E801B */  lui   $t6, %hi(D_801B6588) # $t6, 0x801b
/* 15C4C4 801B6454 3C01800E */  lui   $at, 0x800e
/* 15C4C8 801B6458 000FC080 */  sll   $t8, $t7, 2
/* 15C4CC 801B645C 00380821 */  addu  $at, $at, $t8
/* 15C4D0 801B6460 25CE6588 */  addiu $t6, %lo(D_801B6588) # addiu $t6, $t6, 0x6588
/* 15C4D4 801B6464 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 15C4D8 801B6468 8C430000 */  lw    $v1, ($v0)
/* 15C4DC 801B646C 3C19800F */  lui   $t9, 0x800f
/* 15C4E0 801B6470 3C01800E */  lui   $at, 0x800e
/* 15C4E4 801B6474 00031880 */  sll   $v1, $v1, 2
/* 15C4E8 801B6478 0323C821 */  addu  $t9, $t9, $v1
/* 15C4EC 801B647C 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 15C4F0 801B6480 00230821 */  addu  $at, $at, $v1
/* 15C4F4 801B6484 24090002 */  li    $t1, 2
/* 15C4F8 801B6488 33280001 */  andi  $t0, $t9, 1
/* 15C4FC 801B648C 11000005 */  beqz  $t0, .L801B64A4_ovl7
/* 15C500 801B6490 3C04801B */   lui   $a0, %hi(D_801B63E4) # $a0, 0x801b
/* 15C504 801B6494 3C01800E */  lui   $at, 0x800e
/* 15C508 801B6498 00230821 */  addu  $at, $at, $v1
/* 15C50C 801B649C 10000002 */  b     .L801B64A8_ovl7
/* 15C510 801B64A0 AC20DC50 */   sw    $zero, -0x23b0($at)
.L801B64A4_ovl7:
/* 15C514 801B64A4 AC29DC50 */  sw    $t1, -0x23b0($at)
.L801B64A8_ovl7:
/* 15C518 801B64A8 0C068354 */  jal   func_801A0D50
/* 15C51C 801B64AC 248463E4 */   addiu $a0, %lo(D_801B63E4) # addiu $a0, $a0, 0x63e4
/* 15C520 801B64B0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15C524 801B64B4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15C528 801B64B8 3C014150 */  li    $at, 0x41500000 # 13.000000
/* 15C52C 801B64BC 44810000 */  mtc1  $at, $f0
/* 15C530 801B64C0 8C4B0000 */  lw    $t3, ($v0)
/* 15C534 801B64C4 3C01800F */  lui   $at, 0x800f
/* 15C538 801B64C8 240A0001 */  li    $t2, 1
/* 15C53C 801B64CC 000B6080 */  sll   $t4, $t3, 2
/* 15C540 801B64D0 002C0821 */  addu  $at, $at, $t4
/* 15C544 801B64D4 AC2AA360 */  sw    $t2, -0x5ca0($at)
/* 15C548 801B64D8 8C4F0000 */  lw    $t7, ($v0)
/* 15C54C 801B64DC 3C01800F */  lui   $at, 0x800f
/* 15C550 801B64E0 240DFFFF */  li    $t5, -1
/* 15C554 801B64E4 000F7080 */  sll   $t6, $t7, 2
/* 15C558 801B64E8 002E0821 */  addu  $at, $at, $t6
/* 15C55C 801B64EC AC2DA520 */  sw    $t5, -0x5ae0($at)
/* 15C560 801B64F0 8C430000 */  lw    $v1, ($v0)
/* 15C564 801B64F4 3C07800E */  lui   $a3, %hi(D_800E6A10) # $a3, 0x800e
/* 15C568 801B64F8 24E76A10 */  addiu $a3, %lo(D_800E6A10) # addiu $a3, $a3, 0x6a10
/* 15C56C 801B64FC 00031880 */  sll   $v1, $v1, 2
/* 15C570 801B6500 00E3C021 */  addu  $t8, $a3, $v1
/* 15C574 801B6504 C7040000 */  lwc1  $f4, ($t8)
/* 15C578 801B6508 3C01800E */  lui   $at, 0x800e
/* 15C57C 801B650C 00230821 */  addu  $at, $at, $v1
/* 15C580 801B6510 46002182 */  mul.s $f6, $f4, $f0
/* 15C584 801B6514 3C04800E */  lui   $a0, 0x800e
/* 15C588 801B6518 3C06801D */  lui   $a2, %hi(D_801CD6E8) # $a2, 0x801d
/* 15C58C 801B651C 24C6D6E8 */  addiu $a2, %lo(D_801CD6E8) # addiu $a2, $a2, -0x2918
/* 15C590 801B6520 24050003 */  li    $a1, 3
/* 15C594 801B6524 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 15C598 801B6528 8C430000 */  lw    $v1, ($v0)
/* 15C59C 801B652C 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 15C5A0 801B6530 44815000 */  mtc1  $at, $f10
/* 15C5A4 801B6534 00031880 */  sll   $v1, $v1, 2
/* 15C5A8 801B6538 00E3C821 */  addu  $t9, $a3, $v1
/* 15C5AC 801B653C C7280000 */  lwc1  $f8, ($t9)
/* 15C5B0 801B6540 3C01800E */  lui   $at, 0x800e
/* 15C5B4 801B6544 00230821 */  addu  $at, $at, $v1
/* 15C5B8 801B6548 460A4402 */  mul.s $f16, $f8, $f10
/* 15C5BC 801B654C E4306690 */  swc1  $f16, 0x6690($at)
/* 15C5C0 801B6550 8C480000 */  lw    $t0, ($v0)
/* 15C5C4 801B6554 3C01800E */  lui   $at, 0x800e
/* 15C5C8 801B6558 00084880 */  sll   $t1, $t0, 2
/* 15C5CC 801B655C 00290821 */  addu  $at, $at, $t1
/* 15C5D0 801B6560 E4206850 */  swc1  $f0, 0x6850($at)
/* 15C5D4 801B6564 8C4B0000 */  lw    $t3, ($v0)
/* 15C5D8 801B6568 000B5080 */  sll   $t2, $t3, 2
/* 15C5DC 801B656C 008A2021 */  addu  $a0, $a0, $t2
/* 15C5E0 801B6570 0C02911F */  jal   call_virtual_function
/* 15C5E4 801B6574 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15C5E8 801B6578 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C5EC 801B657C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C5F0 801B6580 03E00008 */  jr    $ra
/* 15C5F4 801B6584 00000000 */   nop   
.size func_801B6438_ovl7, . - func_801B6438_ovl7

glabel func_801B6588_ovl7
/* 15C5F8 801B6588 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C5FC 801B658C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C600 801B6590 0C06835D */  jal   func_801A0D74_ovl7
/* 15C604 801B6594 00000000 */   nop   
/* 15C608 801B6598 1440000B */  bnez  $v0, .L801B65C8_ovl7
/* 15C60C 801B659C 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15C610 801B65A0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15C614 801B65A4 3C04800E */  lui   $a0, 0x800e
/* 15C618 801B65A8 3C06801D */  lui   $a2, %hi(D_801CD6F4) # $a2, 0x801d
/* 15C61C 801B65AC 8DCF0000 */  lw    $t7, ($t6)
/* 15C620 801B65B0 24C6D6F4 */  addiu $a2, %lo(D_801CD6F4) # addiu $a2, $a2, -0x290c
/* 15C624 801B65B4 24050003 */  li    $a1, 3
/* 15C628 801B65B8 000FC080 */  sll   $t8, $t7, 2
/* 15C62C 801B65BC 00982021 */  addu  $a0, $a0, $t8
/* 15C630 801B65C0 0C02911F */  jal   call_virtual_function
/* 15C634 801B65C4 8C84DFD0 */   lw    $a0, -0x2030($a0)
.L801B65C8_ovl7:
/* 15C638 801B65C8 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 15C63C 801B65CC 24040006 */   li    $a0, 6
/* 15C640 801B65D0 0C067CEC */  jal   func_8019F3B0_ovl7
/* 15C644 801B65D4 00000000 */   nop   
/* 15C648 801B65D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C64C 801B65DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C650 801B65E0 03E00008 */  jr    $ra
/* 15C654 801B65E4 00000000 */   nop   
.size func_801B6588_ovl7, . - func_801B6588_ovl7

glabel func_801B65E8_ovl7
/* 15C658 801B65E8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15C65C 801B65EC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15C660 801B65F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C664 801B65F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C668 801B65F8 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C66C 801B65FC 8C430000 */  lw    $v1, ($v0)
/* 15C670 801B6600 3C01800F */  lui   $at, 0x800f
/* 15C674 801B6604 240E0001 */  li    $t6, 1
/* 15C678 801B6608 00031880 */  sll   $v1, $v1, 2
/* 15C67C 801B660C 00230821 */  addu  $at, $at, $v1
/* 15C680 801B6610 AC2E9C60 */  sw    $t6, -0x63a0($at)
/* 15C684 801B6614 8C4F0000 */  lw    $t7, ($v0)
/* 15C688 801B6618 3C01800F */  lui   $at, 0x800f
/* 15C68C 801B661C 3C05800E */  lui   $a1, 0x800e
/* 15C690 801B6620 000FC080 */  sll   $t8, $t7, 2
/* 15C694 801B6624 00380821 */  addu  $at, $at, $t8
/* 15C698 801B6628 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15C69C 801B662C 8C590000 */  lw    $t9, ($v0)
/* 15C6A0 801B6630 00A32821 */  addu  $a1, $a1, $v1
/* 15C6A4 801B6634 3C01800E */  lui   $at, 0x800e
/* 15C6A8 801B6638 00194080 */  sll   $t0, $t9, 2
/* 15C6AC 801B663C 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15C6B0 801B6640 00280821 */  addu  $at, $at, $t0
/* 15C6B4 801B6644 3C09801D */  lui   $t1, %hi(D_801CC0AC) # $t1, 0x801d
/* 15C6B8 801B6648 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 15C6BC 801B664C 2529C0AC */  addiu $t1, %lo(D_801CC0AC) # addiu $t1, $t1, -0x3f54
/* 15C6C0 801B6650 3C040001 */  lui   $a0, (0x000100C4 >> 16) # lui $a0, 1
/* 15C6C4 801B6654 348400C4 */  ori   $a0, (0x000100C4 & 0xFFFF) # ori $a0, $a0, 0xc4
/* 15C6C8 801B6658 0C02A7A9 */  jal   func_800A9EA4
/* 15C6CC 801B665C ACA90098 */   sw    $t1, 0x98($a1)
/* 15C6D0 801B6660 0C02BE85 */  jal   func_800AFA14
/* 15C6D4 801B6664 00000000 */   nop   
/* 15C6D8 801B6668 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C6DC 801B666C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C6E0 801B6670 03E00008 */  jr    $ra
/* 15C6E4 801B6674 00000000 */   nop   
.size func_801B65E8_ovl7, . - func_801B65E8_ovl7

glabel func_801B6678_ovl7
/* 15C6E8 801B6678 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15C6EC 801B667C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 15C6F0 801B6680 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C6F4 801B6684 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C6F8 801B6688 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C6FC 801B668C 8CC20000 */  lw    $v0, ($a2)
/* 15C700 801B6690 3C03800E */  lui   $v1, 0x800e
/* 15C704 801B6694 3C07800E */  lui   $a3, %hi(D_800E6690) # $a3, 0x800e
/* 15C708 801B6698 00021080 */  sll   $v0, $v0, 2
/* 15C70C 801B669C 00621821 */  addu  $v1, $v1, $v0
/* 15C710 801B66A0 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 15C714 801B66A4 24E76690 */  addiu $a3, %lo(D_800E6690) # addiu $a3, $a3, 0x6690
/* 15C718 801B66A8 3C01800E */  lui   $at, 0x800e
/* 15C71C 801B66AC 906E003C */  lbu   $t6, 0x3c($v1)
/* 15C720 801B66B0 00E21821 */  addu  $v1, $a3, $v0
/* 15C724 801B66B4 00220821 */  addu  $at, $at, $v0
/* 15C728 801B66B8 15C00024 */  bnez  $t6, .L801B674C_ovl7
/* 15C72C 801B66BC 00000000 */   nop   
/* 15C730 801B66C0 44801000 */  mtc1  $zero, $f2
/* 15C734 801B66C4 C42064D0 */  lwc1  $f0, 0x64d0($at)
/* 15C738 801B66C8 3C05800F */  lui   $a1, %hi(D_800EA520) # $a1, 0x800f
/* 15C73C 801B66CC 24A5A520 */  addiu $a1, %lo(D_800EA520) # addiu $a1, $a1, -0x5ae0
/* 15C740 801B66D0 4602003C */  c.lt.s $f0, $f2
/* 15C744 801B66D4 00A27821 */  addu  $t7, $a1, $v0
/* 15C748 801B66D8 45020004 */  bc1fl .L801B66EC_ovl7
/* 15C74C 801B66DC 46000306 */   mov.s $f12, $f0
/* 15C750 801B66E0 10000002 */  b     .L801B66EC_ovl7
/* 15C754 801B66E4 46000307 */   neg.s $f12, $f0
/* 15C758 801B66E8 46000306 */  mov.s $f12, $f0
.L801B66EC_ovl7:
/* 15C75C 801B66EC C4600000 */  lwc1  $f0, ($v1)
/* 15C760 801B66F0 4602003C */  c.lt.s $f0, $f2
/* 15C764 801B66F4 00000000 */  nop   
/* 15C768 801B66F8 45020004 */  bc1fl .L801B670C_ovl7
/* 15C76C 801B66FC 46000086 */   mov.s $f2, $f0
/* 15C770 801B6700 10000002 */  b     .L801B670C_ovl7
/* 15C774 801B6704 46000087 */   neg.s $f2, $f0
/* 15C778 801B6708 46000086 */  mov.s $f2, $f0
.L801B670C_ovl7:
/* 15C77C 801B670C 4602603E */  c.le.s $f12, $f2
/* 15C780 801B6710 00000000 */  nop   
/* 15C784 801B6714 4500000D */  bc1f  .L801B674C_ovl7
/* 15C788 801B6718 00000000 */   nop   
/* 15C78C 801B671C 8DF80000 */  lw    $t8, ($t7)
/* 15C790 801B6720 2401FFFF */  li    $at, -1
/* 15C794 801B6724 17010009 */  bne   $t8, $at, .L801B674C_ovl7
/* 15C798 801B6728 00000000 */   nop   
/* 15C79C 801B672C 44802000 */  mtc1  $zero, $f4
/* 15C7A0 801B6730 24190034 */  li    $t9, 52
/* 15C7A4 801B6734 E4640000 */  swc1  $f4, ($v1)
/* 15C7A8 801B6738 8CC80000 */  lw    $t0, ($a2)
/* 15C7AC 801B673C 00084880 */  sll   $t1, $t0, 2
/* 15C7B0 801B6740 00A95021 */  addu  $t2, $a1, $t1
/* 15C7B4 801B6744 1000002E */  b     .L801B6800_ovl7
/* 15C7B8 801B6748 AD590000 */   sw    $t9, ($t2)
.L801B674C_ovl7:
/* 15C7BC 801B674C 3C05800F */  lui   $a1, %hi(D_800EA520) # $a1, 0x800f
/* 15C7C0 801B6750 24A5A520 */  addiu $a1, %lo(D_800EA520) # addiu $a1, $a1, -0x5ae0
/* 15C7C4 801B6754 00A22021 */  addu  $a0, $a1, $v0
/* 15C7C8 801B6758 8C830000 */  lw    $v1, ($a0)
/* 15C7CC 801B675C 3C07800E */  lui   $a3, %hi(D_800E6690) # $a3, 0x800e
/* 15C7D0 801B6760 24E76690 */  addiu $a3, %lo(D_800E6690) # addiu $a3, $a3, 0x6690
/* 15C7D4 801B6764 54600023 */  bnezl $v1, .L801B67F4_ovl7
/* 15C7D8 801B6768 2401FFFF */   li    $at, -1
/* 15C7DC 801B676C 44803000 */  mtc1  $zero, $f6
/* 15C7E0 801B6770 00E25821 */  addu  $t3, $a3, $v0
/* 15C7E4 801B6774 3C01800E */  lui   $at, 0x800e
/* 15C7E8 801B6778 E5660000 */  swc1  $f6, ($t3)
/* 15C7EC 801B677C 8CC20000 */  lw    $v0, ($a2)
/* 15C7F0 801B6780 240F0001 */  li    $t7, 1
/* 15C7F4 801B6784 3C04800E */  lui   $a0, 0x800e
/* 15C7F8 801B6788 00021080 */  sll   $v0, $v0, 2
/* 15C7FC 801B678C 00E26021 */  addu  $t4, $a3, $v0
/* 15C800 801B6790 C5880000 */  lwc1  $f8, ($t4)
/* 15C804 801B6794 00220821 */  addu  $at, $at, $v0
/* 15C808 801B6798 3C05801B */  lui   $a1, %hi(D_801B63E4) # $a1, 0x801b
/* 15C80C 801B679C E42864D0 */  swc1  $f8, 0x64d0($at)
/* 15C810 801B67A0 8CCD0000 */  lw    $t5, ($a2)
/* 15C814 801B67A4 3C01801D */  lui   $at, %hi(D_801CE34C) # $at, 0x801d
/* 15C818 801B67A8 C42AE34C */  lwc1  $f10, %lo(D_801CE34C)($at)
/* 15C81C 801B67AC 3C01800E */  lui   $at, 0x800e
/* 15C820 801B67B0 000D7080 */  sll   $t6, $t5, 2
/* 15C824 801B67B4 002E0821 */  addu  $at, $at, $t6
/* 15C828 801B67B8 E42A6850 */  swc1  $f10, 0x6850($at)
/* 15C82C 801B67BC 8CD80000 */  lw    $t8, ($a2)
/* 15C830 801B67C0 3C01800E */  lui   $at, 0x800e
/* 15C834 801B67C4 24A563E4 */  addiu $a1, %lo(D_801B63E4) # addiu $a1, $a1, 0x63e4
/* 15C838 801B67C8 00184080 */  sll   $t0, $t8, 2
/* 15C83C 801B67CC 00280821 */  addu  $at, $at, $t0
/* 15C840 801B67D0 AC2FDC50 */  sw    $t7, -0x23b0($at)
/* 15C844 801B67D4 8CC90000 */  lw    $t1, ($a2)
/* 15C848 801B67D8 0009C880 */  sll   $t9, $t1, 2
/* 15C84C 801B67DC 00992021 */  addu  $a0, $a0, $t9
/* 15C850 801B67E0 0C02C7B2 */  jal   assign_new_process_entry
/* 15C854 801B67E4 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15C858 801B67E8 10000006 */  b     .L801B6804_ovl7
/* 15C85C 801B67EC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15C860 801B67F0 2401FFFF */  li    $at, -1
.L801B67F4_ovl7:
/* 15C864 801B67F4 10610002 */  beq   $v1, $at, .L801B6800_ovl7
/* 15C868 801B67F8 246AFFFF */   addiu $t2, $v1, -1
/* 15C86C 801B67FC AC8A0000 */  sw    $t2, ($a0)
.L801B6800_ovl7:
/* 15C870 801B6800 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B6804_ovl7:
/* 15C874 801B6804 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C878 801B6808 03E00008 */  jr    $ra
/* 15C87C 801B680C 00000000 */   nop   
.size func_801B6678_ovl7, . - func_801B6678_ovl7

glabel func_801B6810_ovl7
/* 15C880 801B6810 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15C884 801B6814 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15C888 801B6818 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C88C 801B681C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C890 801B6820 AFA40018 */  sw    $a0, 0x18($sp)
/* 15C894 801B6824 8C4E0000 */  lw    $t6, ($v0)
/* 15C898 801B6828 3C01800F */  lui   $at, 0x800f
/* 15C89C 801B682C 24180002 */  li    $t8, 2
/* 15C8A0 801B6830 000E7880 */  sll   $t7, $t6, 2
/* 15C8A4 801B6834 002F0821 */  addu  $at, $at, $t7
/* 15C8A8 801B6838 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15C8AC 801B683C 8C590000 */  lw    $t9, ($v0)
/* 15C8B0 801B6840 3C01800F */  lui   $at, 0x800f
/* 15C8B4 801B6844 2409FFFF */  li    $t1, -1
/* 15C8B8 801B6848 00194080 */  sll   $t0, $t9, 2
/* 15C8BC 801B684C 00280821 */  addu  $at, $at, $t0
/* 15C8C0 801B6850 AC38A360 */  sw    $t8, -0x5ca0($at)
/* 15C8C4 801B6854 8C4A0000 */  lw    $t2, ($v0)
/* 15C8C8 801B6858 3C01800F */  lui   $at, 0x800f
/* 15C8CC 801B685C 240C0001 */  li    $t4, 1
/* 15C8D0 801B6860 000A5880 */  sll   $t3, $t2, 2
/* 15C8D4 801B6864 002B0821 */  addu  $at, $at, $t3
/* 15C8D8 801B6868 AC29A520 */  sw    $t1, -0x5ae0($at)
/* 15C8DC 801B686C 8C4D0000 */  lw    $t5, ($v0)
/* 15C8E0 801B6870 3C01800E */  lui   $at, 0x800e
/* 15C8E4 801B6874 24040008 */  li    $a0, 8
/* 15C8E8 801B6878 000D7080 */  sll   $t6, $t5, 2
/* 15C8EC 801B687C 002E0821 */  addu  $at, $at, $t6
/* 15C8F0 801B6880 0C002DAF */  jal   finish_current_thread
/* 15C8F4 801B6884 AC2CDFD0 */   sw    $t4, -0x2030($at)
/* 15C8F8 801B6888 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 15C8FC 801B688C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 15C900 801B6890 3C01800F */  lui   $at, 0x800f
/* 15C904 801B6894 240F0001 */  li    $t7, 1
/* 15C908 801B6898 8F380000 */  lw    $t8, ($t9)
/* 15C90C 801B689C 00184080 */  sll   $t0, $t8, 2
/* 15C910 801B68A0 00280821 */  addu  $at, $at, $t0
/* 15C914 801B68A4 0C02BE85 */  jal   func_800AFA14
/* 15C918 801B68A8 AC2F9E20 */   sw    $t7, -0x61e0($at)
/* 15C91C 801B68AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15C920 801B68B0 27BD0018 */  addiu $sp, $sp, 0x18
/* 15C924 801B68B4 03E00008 */  jr    $ra
/* 15C928 801B68B8 00000000 */   nop   
.size func_801B6810_ovl7, . - func_801B6810_ovl7

glabel func_801B68BC_ovl7
/* 15C92C 801B68BC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15C930 801B68C0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15C934 801B68C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15C938 801B68C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15C93C 801B68CC 8C620000 */  lw    $v0, ($v1)
/* 15C940 801B68D0 3C0E800F */  lui   $t6, 0x800f
/* 15C944 801B68D4 00803025 */  move  $a2, $a0
/* 15C948 801B68D8 00021080 */  sll   $v0, $v0, 2
/* 15C94C 801B68DC 01C27021 */  addu  $t6, $t6, $v0
/* 15C950 801B68E0 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 15C954 801B68E4 3C04800F */  lui   $a0, %hi(D_800EA360) # $a0, 0x800f
/* 15C958 801B68E8 2484A360 */  addiu $a0, %lo(D_800EA360) # addiu $a0, $a0, -0x5ca0
/* 15C95C 801B68EC 11C00045 */  beqz  $t6, .L801B6A04_ovl7
/* 15C960 801B68F0 00827821 */   addu  $t7, $a0, $v0
/* 15C964 801B68F4 8DF80000 */  lw    $t8, ($t7)
/* 15C968 801B68F8 3C014150 */  li    $at, 0x41500000 # 13.000000
/* 15C96C 801B68FC 44811000 */  mtc1  $at, $f2
/* 15C970 801B6900 44982000 */  mtc1  $t8, $f4
/* 15C974 801B6904 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 15C978 801B6908 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 15C97C 801B690C 468021A0 */  cvt.s.w $f6, $f4
/* 15C980 801B6910 00A2C821 */  addu  $t9, $a1, $v0
/* 15C984 801B6914 C72A0000 */  lwc1  $f10, ($t9)
/* 15C988 801B6918 3C01800E */  lui   $at, 0x800e
/* 15C98C 801B691C 00220821 */  addu  $at, $at, $v0
/* 15C990 801B6920 46023202 */  mul.s $f8, $f6, $f2
/* 15C994 801B6924 00000000 */  nop   
/* 15C998 801B6928 460A4402 */  mul.s $f16, $f8, $f10
/* 15C99C 801B692C E43064D0 */  swc1  $f16, 0x64d0($at)
/* 15C9A0 801B6930 8C620000 */  lw    $v0, ($v1)
/* 15C9A4 801B6934 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 15C9A8 801B6938 44813000 */  mtc1  $at, $f6
/* 15C9AC 801B693C 00021080 */  sll   $v0, $v0, 2
/* 15C9B0 801B6940 00824021 */  addu  $t0, $a0, $v0
/* 15C9B4 801B6944 8D090000 */  lw    $t1, ($t0)
/* 15C9B8 801B6948 00A25021 */  addu  $t2, $a1, $v0
/* 15C9BC 801B694C C54A0000 */  lwc1  $f10, ($t2)
/* 15C9C0 801B6950 44899000 */  mtc1  $t1, $f18
/* 15C9C4 801B6954 3C01800E */  lui   $at, 0x800e
/* 15C9C8 801B6958 00220821 */  addu  $at, $at, $v0
/* 15C9CC 801B695C 46809120 */  cvt.s.w $f4, $f18
/* 15C9D0 801B6960 46062202 */  mul.s $f8, $f4, $f6
/* 15C9D4 801B6964 44803000 */  mtc1  $zero, $f6
/* 15C9D8 801B6968 460A4402 */  mul.s $f16, $f8, $f10
/* 15C9DC 801B696C E4306690 */  swc1  $f16, 0x6690($at)
/* 15C9E0 801B6970 8C620000 */  lw    $v0, ($v1)
/* 15C9E4 801B6974 3C01800E */  lui   $at, 0x800e
/* 15C9E8 801B6978 00021080 */  sll   $v0, $v0, 2
/* 15C9EC 801B697C 00825821 */  addu  $t3, $a0, $v0
/* 15C9F0 801B6980 8D6C0000 */  lw    $t4, ($t3)
/* 15C9F4 801B6984 00220821 */  addu  $at, $at, $v0
/* 15C9F8 801B6988 448C9000 */  mtc1  $t4, $f18
/* 15C9FC 801B698C 00000000 */  nop   
/* 15CA00 801B6990 46809120 */  cvt.s.w $f4, $f18
/* 15CA04 801B6994 46022002 */  mul.s $f0, $f4, $f2
/* 15CA08 801B6998 4606003C */  c.lt.s $f0, $f6
/* 15CA0C 801B699C 00000000 */  nop   
/* 15CA10 801B69A0 45000006 */  bc1f  .L801B69BC_ovl7
/* 15CA14 801B69A4 00000000 */   nop   
/* 15CA18 801B69A8 3C01800E */  lui   $at, 0x800e
/* 15CA1C 801B69AC 46000207 */  neg.s $f8, $f0
/* 15CA20 801B69B0 00220821 */  addu  $at, $at, $v0
/* 15CA24 801B69B4 10000002 */  b     .L801B69C0_ovl7
/* 15CA28 801B69B8 E4286850 */   swc1  $f8, 0x6850($at)
.L801B69BC_ovl7:
/* 15CA2C 801B69BC E4206850 */  swc1  $f0, 0x6850($at)
.L801B69C0_ovl7:
/* 15CA30 801B69C0 0C0667C7 */  jal   func_80199F1C_ovl7
/* 15CA34 801B69C4 00C02025 */   move  $a0, $a2
/* 15CA38 801B69C8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15CA3C 801B69CC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15CA40 801B69D0 3C01800E */  lui   $at, 0x800e
/* 15CA44 801B69D4 3C04800E */  lui   $a0, 0x800e
/* 15CA48 801B69D8 8C6D0000 */  lw    $t5, ($v1)
/* 15CA4C 801B69DC 3C05801B */  lui   $a1, %hi(D_801B63E4) # $a1, 0x801b
/* 15CA50 801B69E0 24A563E4 */  addiu $a1, %lo(D_801B63E4) # addiu $a1, $a1, 0x63e4
/* 15CA54 801B69E4 000D7080 */  sll   $t6, $t5, 2
/* 15CA58 801B69E8 002E0821 */  addu  $at, $at, $t6
/* 15CA5C 801B69EC AC20DC50 */  sw    $zero, -0x23b0($at)
/* 15CA60 801B69F0 8C6F0000 */  lw    $t7, ($v1)
/* 15CA64 801B69F4 000FC080 */  sll   $t8, $t7, 2
/* 15CA68 801B69F8 00982021 */  addu  $a0, $a0, $t8
/* 15CA6C 801B69FC 0C02C7B2 */  jal   assign_new_process_entry
/* 15CA70 801B6A00 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801B6A04_ovl7:
/* 15CA74 801B6A04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15CA78 801B6A08 27BD0018 */  addiu $sp, $sp, 0x18
/* 15CA7C 801B6A0C 03E00008 */  jr    $ra
/* 15CA80 801B6A10 00000000 */   nop   
.size func_801B68BC_ovl7, . - func_801B68BC_ovl7

glabel func_801B6A14_ovl7
/* 15CA84 801B6A14 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 15CA88 801B6A18 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 15CA8C 801B6A1C 8CA20000 */  lw    $v0, ($a1)
/* 15CA90 801B6A20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15CA94 801B6A24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15CA98 801B6A28 AFA40018 */  sw    $a0, 0x18($sp)
/* 15CA9C 801B6A2C 8C430000 */  lw    $v1, ($v0)
/* 15CAA0 801B6A30 3C01800F */  lui   $at, 0x800f
/* 15CAA4 801B6A34 3C04800E */  lui   $a0, 0x800e
/* 15CAA8 801B6A38 00031880 */  sll   $v1, $v1, 2
/* 15CAAC 801B6A3C 00230821 */  addu  $at, $at, $v1
/* 15CAB0 801B6A40 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15CAB4 801B6A44 8C4E0000 */  lw    $t6, ($v0)
/* 15CAB8 801B6A48 3C01800F */  lui   $at, 0x800f
/* 15CABC 801B6A4C 00832021 */  addu  $a0, $a0, $v1
/* 15CAC0 801B6A50 000E7880 */  sll   $t7, $t6, 2
/* 15CAC4 801B6A54 002F0821 */  addu  $at, $at, $t7
/* 15CAC8 801B6A58 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15CACC 801B6A5C 8C590000 */  lw    $t9, ($v0)
/* 15CAD0 801B6A60 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 15CAD4 801B6A64 3C01800E */  lui   $at, 0x800e
/* 15CAD8 801B6A68 00194080 */  sll   $t0, $t9, 2
/* 15CADC 801B6A6C 00280821 */  addu  $at, $at, $t0
/* 15CAE0 801B6A70 24180002 */  li    $t8, 2
/* 15CAE4 801B6A74 3C09801D */  lui   $t1, %hi(D_801CC0D0) # $t1, 0x801d
/* 15CAE8 801B6A78 AC38DFD0 */  sw    $t8, -0x2030($at)
/* 15CAEC 801B6A7C 2529C0D0 */  addiu $t1, %lo(D_801CC0D0) # addiu $t1, $t1, -0x3f30
/* 15CAF0 801B6A80 AC890098 */  sw    $t1, 0x98($a0)
/* 15CAF4 801B6A84 8CAA0000 */  lw    $t2, ($a1)
/* 15CAF8 801B6A88 3C01800F */  lui   $at, 0x800f
/* 15CAFC 801B6A8C 8D4B0000 */  lw    $t3, ($t2)
/* 15CB00 801B6A90 000B6080 */  sll   $t4, $t3, 2
/* 15CB04 801B6A94 002C0821 */  addu  $at, $at, $t4
/* 15CB08 801B6A98 0C02CD48 */  jal   func_800B3520
/* 15CB0C 801B6A9C AC208920 */   sw    $zero, -0x76e0($at)
/* 15CB10 801B6AA0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15CB14 801B6AA4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15CB18 801B6AA8 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 15CB1C 801B6AAC 44810000 */  mtc1  $at, $f0
/* 15CB20 801B6AB0 8C4D0000 */  lw    $t5, ($v0)
/* 15CB24 801B6AB4 3C01800E */  lui   $at, 0x800e
/* 15CB28 801B6AB8 3C040001 */  lui   $a0, (0x000100C5 >> 16) # lui $a0, 1
/* 15CB2C 801B6ABC 000D7080 */  sll   $t6, $t5, 2
/* 15CB30 801B6AC0 002E0821 */  addu  $at, $at, $t6
/* 15CB34 801B6AC4 E4203210 */  swc1  $f0, 0x3210($at)
/* 15CB38 801B6AC8 8C4F0000 */  lw    $t7, ($v0)
/* 15CB3C 801B6ACC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 15CB40 801B6AD0 44812000 */  mtc1  $at, $f4
/* 15CB44 801B6AD4 3C01800E */  lui   $at, 0x800e
/* 15CB48 801B6AD8 000FC880 */  sll   $t9, $t7, 2
/* 15CB4C 801B6ADC 00390821 */  addu  $at, $at, $t9
/* 15CB50 801B6AE0 E4243750 */  swc1  $f4, 0x3750($at)
/* 15CB54 801B6AE4 8C580000 */  lw    $t8, ($v0)
/* 15CB58 801B6AE8 3C01800E */  lui   $at, 0x800e
/* 15CB5C 801B6AEC 348400C5 */  ori   $a0, (0x000100C5 & 0xFFFF) # ori $a0, $a0, 0xc5
/* 15CB60 801B6AF0 00184080 */  sll   $t0, $t8, 2
/* 15CB64 801B6AF4 00280821 */  addu  $at, $at, $t0
/* 15CB68 801B6AF8 0C02A7A9 */  jal   func_800A9EA4
/* 15CB6C 801B6AFC E4203C90 */   swc1  $f0, 0x3c90($at)
/* 15CB70 801B6B00 0C02BE85 */  jal   func_800AFA14
/* 15CB74 801B6B04 00000000 */   nop   
/* 15CB78 801B6B08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15CB7C 801B6B0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15CB80 801B6B10 03E00008 */  jr    $ra
/* 15CB84 801B6B14 00000000 */   nop   
.size func_801B6A14_ovl7, . - func_801B6A14_ovl7

glabel func_801B6B18_ovl7
/* 15CB88 801B6B18 03E00008 */  jr    $ra
/* 15CB8C 801B6B1C AFA40000 */   sw    $a0, ($sp)
.size func_801B6B18_ovl7, . - func_801B6B18_ovl7

glabel func_801B6B20_ovl7
/* 15CB90 801B6B20 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15CB94 801B6B24 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15CB98 801B6B28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15CB9C 801B6B2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15CBA0 801B6B30 8DC20000 */  lw    $v0, ($t6)
/* 15CBA4 801B6B34 3C0F800F */  lui   $t7, 0x800f
/* 15CBA8 801B6B38 3C01800E */  lui   $at, 0x800e
/* 15CBAC 801B6B3C 00021080 */  sll   $v0, $v0, 2
/* 15CBB0 801B6B40 01E27821 */  addu  $t7, $t7, $v0
/* 15CBB4 801B6B44 8DEF8AE0 */  lw    $t7, -0x7520($t7)
/* 15CBB8 801B6B48 00220821 */  addu  $at, $at, $v0
/* 15CBBC 801B6B4C 24190002 */  li    $t9, 2
/* 15CBC0 801B6B50 31F80001 */  andi  $t8, $t7, 1
/* 15CBC4 801B6B54 13000005 */  beqz  $t8, .L801B6B6C_ovl7
/* 15CBC8 801B6B58 00000000 */   nop   
/* 15CBCC 801B6B5C 3C01800E */  lui   $at, 0x800e
/* 15CBD0 801B6B60 00220821 */  addu  $at, $at, $v0
/* 15CBD4 801B6B64 10000002 */  b     .L801B6B70_ovl7
/* 15CBD8 801B6B68 AC20DC50 */   sw    $zero, -0x23b0($at)
.L801B6B6C_ovl7:
/* 15CBDC 801B6B6C AC39DC50 */  sw    $t9, -0x23b0($at)
.L801B6B70_ovl7:
/* 15CBE0 801B6B70 0C06658A */  jal   func_80199628_ovl7
/* 15CBE4 801B6B74 00000000 */   nop   
/* 15CBE8 801B6B78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15CBEC 801B6B7C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15CBF0 801B6B80 03E00008 */  jr    $ra
/* 15CBF4 801B6B84 00000000 */   nop   
.size func_801B6B20_ovl7, . - func_801B6B20_ovl7

glabel func_801B6B88_ovl7
/* 15CBF8 801B6B88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15CBFC 801B6B8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15CC00 801B6B90 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15CC04 801B6B94 AFA40018 */  sw    $a0, 0x18($sp)
/* 15CC08 801B6B98 0C02BB30 */  jal   func_800AECC0
/* 15CC0C 801B6B9C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15CC10 801B6BA0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15CC14 801B6BA4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15CC18 801B6BA8 3C04800E */  lui   $a0, 0x800e
/* 15CC1C 801B6BAC 3C06801D */  lui   $a2, %hi(D_801CD700) # $a2, 0x801d
/* 15CC20 801B6BB0 8DCF0000 */  lw    $t7, ($t6)
/* 15CC24 801B6BB4 24C6D700 */  addiu $a2, %lo(D_801CD700) # addiu $a2, $a2, -0x2900
/* 15CC28 801B6BB8 24050003 */  li    $a1, 3
/* 15CC2C 801B6BBC 000FC080 */  sll   $t8, $t7, 2
/* 15CC30 801B6BC0 00982021 */  addu  $a0, $a0, $t8
/* 15CC34 801B6BC4 0C02911F */  jal   call_virtual_function
/* 15CC38 801B6BC8 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15CC3C 801B6BCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15CC40 801B6BD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 15CC44 801B6BD4 03E00008 */  jr    $ra
/* 15CC48 801B6BD8 00000000 */   nop   
.size func_801B6B88_ovl7, . - func_801B6B88_ovl7

glabel func_801B6BDC_ovl7
/* 15CC4C 801B6BDC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15CC50 801B6BE0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15CC54 801B6BE4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 15CC58 801B6BE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15CC5C 801B6BEC AFA40030 */  sw    $a0, 0x30($sp)
/* 15CC60 801B6BF0 8C4F0000 */  lw    $t7, ($v0)
/* 15CC64 801B6BF4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 15CC68 801B6BF8 44810000 */  mtc1  $at, $f0
/* 15CC6C 801B6BFC 3C01800E */  lui   $at, 0x800e
/* 15CC70 801B6C00 3C0E800B */  lui   $t6, %hi(D_800B78AC) # $t6, 0x800b
/* 15CC74 801B6C04 000FC080 */  sll   $t8, $t7, 2
/* 15CC78 801B6C08 00380821 */  addu  $at, $at, $t8
/* 15CC7C 801B6C0C 25CE78AC */  addiu $t6, %lo(D_800B78AC) # addiu $t6, $t6, 0x78ac
/* 15CC80 801B6C10 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 15CC84 801B6C14 8C480000 */  lw    $t0, ($v0)
/* 15CC88 801B6C18 3C01800E */  lui   $at, 0x800e
/* 15CC8C 801B6C1C 3C19801B */  lui   $t9, %hi(D_801B6E28) # $t9, 0x801b
/* 15CC90 801B6C20 00084880 */  sll   $t1, $t0, 2
/* 15CC94 801B6C24 00290821 */  addu  $at, $at, $t1
/* 15CC98 801B6C28 27396E28 */  addiu $t9, %lo(D_801B6E28) # addiu $t9, $t9, 0x6e28
/* 15CC9C 801B6C2C AC39F150 */  sw    $t9, -0xeb0($at)
/* 15CCA0 801B6C30 8C4A0000 */  lw    $t2, ($v0)
/* 15CCA4 801B6C34 44801000 */  mtc1  $zero, $f2
/* 15CCA8 801B6C38 3C01800E */  lui   $at, 0x800e
/* 15CCAC 801B6C3C 000A5880 */  sll   $t3, $t2, 2
/* 15CCB0 801B6C40 002B0821 */  addu  $at, $at, $t3
/* 15CCB4 801B6C44 E4206A10 */  swc1  $f0, 0x6a10($at)
/* 15CCB8 801B6C48 E7A00028 */  swc1  $f0, 0x28($sp)
/* 15CCBC 801B6C4C E7A20024 */  swc1  $f2, 0x24($sp)
/* 15CCC0 801B6C50 E7A20020 */  swc1  $f2, 0x20($sp)
/* 15CCC4 801B6C54 8C4C0000 */  lw    $t4, ($v0)
/* 15CCC8 801B6C58 3C06800E */  lui   $a2, 0x800e
/* 15CCCC 801B6C5C 27A40020 */  addiu $a0, $sp, 0x20
/* 15CCD0 801B6C60 000C6880 */  sll   $t5, $t4, 2
/* 15CCD4 801B6C64 00CD3021 */  addu  $a2, $a2, $t5
/* 15CCD8 801B6C68 8CC641D0 */  lw    $a2, 0x41d0($a2)
/* 15CCDC 801B6C6C 0C006424 */  jal   lbvector_Rotate
/* 15CCE0 801B6C70 24050002 */   li    $a1, 2
/* 15CCE4 801B6C74 3C014150 */  li    $at, 0x41500000 # 13.000000
/* 15CCE8 801B6C78 44811000 */  mtc1  $at, $f2
/* 15CCEC 801B6C7C C7A40020 */  lwc1  $f4, 0x20($sp)
/* 15CCF0 801B6C80 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15CCF4 801B6C84 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15CCF8 801B6C88 46022002 */  mul.s $f0, $f4, $f2
/* 15CCFC 801B6C8C 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 15CD00 801B6C90 8C4F0000 */  lw    $t7, ($v0)
/* 15CD04 801B6C94 44816000 */  mtc1  $at, $f12
/* 15CD08 801B6C98 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 15CD0C 801B6C9C 3C01800E */  lui   $at, 0x800e
/* 15CD10 801B6CA0 000F7080 */  sll   $t6, $t7, 2
/* 15CD14 801B6CA4 44807000 */  mtc1  $zero, $f14
/* 15CD18 801B6CA8 002E0821 */  addu  $at, $at, $t6
/* 15CD1C 801B6CAC 460C3202 */  mul.s $f8, $f6, $f12
/* 15CD20 801B6CB0 E4203050 */  swc1  $f0, 0x3050($at)
/* 15CD24 801B6CB4 8C580000 */  lw    $t8, ($v0)
/* 15CD28 801B6CB8 460E003C */  c.lt.s $f0, $f14
/* 15CD2C 801B6CBC 3C01800E */  lui   $at, 0x800e
/* 15CD30 801B6CC0 00184080 */  sll   $t0, $t8, 2
/* 15CD34 801B6CC4 00280821 */  addu  $at, $at, $t0
/* 15CD38 801B6CC8 45000008 */  bc1f  .L801B6CEC_ovl7
/* 15CD3C 801B6CCC E4283590 */   swc1  $f8, 0x3590($at)
/* 15CD40 801B6CD0 8C590000 */  lw    $t9, ($v0)
/* 15CD44 801B6CD4 3C01800E */  lui   $at, 0x800e
/* 15CD48 801B6CD8 46000287 */  neg.s $f10, $f0
/* 15CD4C 801B6CDC 00194880 */  sll   $t1, $t9, 2
/* 15CD50 801B6CE0 00290821 */  addu  $at, $at, $t1
/* 15CD54 801B6CE4 10000006 */  b     .L801B6D00_ovl7
/* 15CD58 801B6CE8 E42A3AD0 */   swc1  $f10, 0x3ad0($at)
.L801B6CEC_ovl7:
/* 15CD5C 801B6CEC 8C4A0000 */  lw    $t2, ($v0)
/* 15CD60 801B6CF0 3C01800E */  lui   $at, 0x800e
/* 15CD64 801B6CF4 000A5880 */  sll   $t3, $t2, 2
/* 15CD68 801B6CF8 002B0821 */  addu  $at, $at, $t3
/* 15CD6C 801B6CFC E4203AD0 */  swc1  $f0, 0x3ad0($at)
.L801B6D00_ovl7:
/* 15CD70 801B6D00 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 15CD74 801B6D04 8C4C0000 */  lw    $t4, ($v0)
/* 15CD78 801B6D08 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 15CD7C 801B6D0C 46028002 */  mul.s $f0, $f16, $f2
/* 15CD80 801B6D10 3C01800E */  lui   $at, 0x800e
/* 15CD84 801B6D14 000C6880 */  sll   $t5, $t4, 2
/* 15CD88 801B6D18 002D0821 */  addu  $at, $at, $t5
/* 15CD8C 801B6D1C 460C9102 */  mul.s $f4, $f18, $f12
/* 15CD90 801B6D20 3C04801B */  lui   $a0, %hi(D_801B6B88) # $a0, 0x801b
/* 15CD94 801B6D24 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 15CD98 801B6D28 8C4F0000 */  lw    $t7, ($v0)
/* 15CD9C 801B6D2C 460E003C */  c.lt.s $f0, $f14
/* 15CDA0 801B6D30 3C01800E */  lui   $at, 0x800e
/* 15CDA4 801B6D34 000F7080 */  sll   $t6, $t7, 2
/* 15CDA8 801B6D38 002E0821 */  addu  $at, $at, $t6
/* 15CDAC 801B6D3C 45000008 */  bc1f  .L801B6D60_ovl7
/* 15CDB0 801B6D40 E4243910 */   swc1  $f4, 0x3910($at)
/* 15CDB4 801B6D44 8C580000 */  lw    $t8, ($v0)
/* 15CDB8 801B6D48 3C01800E */  lui   $at, 0x800e
/* 15CDBC 801B6D4C 46000187 */  neg.s $f6, $f0
/* 15CDC0 801B6D50 00184080 */  sll   $t0, $t8, 2
/* 15CDC4 801B6D54 00280821 */  addu  $at, $at, $t0
/* 15CDC8 801B6D58 10000006 */  b     .L801B6D74_ovl7
/* 15CDCC 801B6D5C E4263E50 */   swc1  $f6, 0x3e50($at)
.L801B6D60_ovl7:
/* 15CDD0 801B6D60 8C590000 */  lw    $t9, ($v0)
/* 15CDD4 801B6D64 3C01800E */  lui   $at, 0x800e
/* 15CDD8 801B6D68 00194880 */  sll   $t1, $t9, 2
/* 15CDDC 801B6D6C 00290821 */  addu  $at, $at, $t1
/* 15CDE0 801B6D70 E4203E50 */  swc1  $f0, 0x3e50($at)
.L801B6D74_ovl7:
/* 15CDE4 801B6D74 8C4B0000 */  lw    $t3, ($v0)
/* 15CDE8 801B6D78 3C01800F */  lui   $at, 0x800f
/* 15CDEC 801B6D7C 240A0001 */  li    $t2, 1
/* 15CDF0 801B6D80 000B6080 */  sll   $t4, $t3, 2
/* 15CDF4 801B6D84 002C0821 */  addu  $at, $at, $t4
/* 15CDF8 801B6D88 AC2AA360 */  sw    $t2, -0x5ca0($at)
/* 15CDFC 801B6D8C 8C4F0000 */  lw    $t7, ($v0)
/* 15CE00 801B6D90 3C01800F */  lui   $at, 0x800f
/* 15CE04 801B6D94 240DFFFF */  li    $t5, -1
/* 15CE08 801B6D98 000F7080 */  sll   $t6, $t7, 2
/* 15CE0C 801B6D9C 002E0821 */  addu  $at, $at, $t6
/* 15CE10 801B6DA0 AC2DA520 */  sw    $t5, -0x5ae0($at)
/* 15CE14 801B6DA4 8C430000 */  lw    $v1, ($v0)
/* 15CE18 801B6DA8 3C18800F */  lui   $t8, 0x800f
/* 15CE1C 801B6DAC 3C01800E */  lui   $at, 0x800e
/* 15CE20 801B6DB0 00031880 */  sll   $v1, $v1, 2
/* 15CE24 801B6DB4 0303C021 */  addu  $t8, $t8, $v1
/* 15CE28 801B6DB8 8F188AE0 */  lw    $t8, -0x7520($t8)
/* 15CE2C 801B6DBC 00230821 */  addu  $at, $at, $v1
/* 15CE30 801B6DC0 24190002 */  li    $t9, 2
/* 15CE34 801B6DC4 33080001 */  andi  $t0, $t8, 1
/* 15CE38 801B6DC8 11000005 */  beqz  $t0, .L801B6DE0_ovl7
/* 15CE3C 801B6DCC 00000000 */   nop   
/* 15CE40 801B6DD0 3C01800E */  lui   $at, 0x800e
/* 15CE44 801B6DD4 00230821 */  addu  $at, $at, $v1
/* 15CE48 801B6DD8 10000002 */  b     .L801B6DE4_ovl7
/* 15CE4C 801B6DDC AC20DC50 */   sw    $zero, -0x23b0($at)
.L801B6DE0_ovl7:
/* 15CE50 801B6DE0 AC39DC50 */  sw    $t9, -0x23b0($at)
.L801B6DE4_ovl7:
/* 15CE54 801B6DE4 0C068354 */  jal   func_801A0D50
/* 15CE58 801B6DE8 24846B88 */   addiu $a0, %lo(D_801B6B88) # addiu $a0, $a0, 0x6b88
/* 15CE5C 801B6DEC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 15CE60 801B6DF0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 15CE64 801B6DF4 3C04800E */  lui   $a0, 0x800e
/* 15CE68 801B6DF8 3C06801D */  lui   $a2, %hi(D_801CD700) # $a2, 0x801d
/* 15CE6C 801B6DFC 8D2B0000 */  lw    $t3, ($t1)
/* 15CE70 801B6E00 24C6D700 */  addiu $a2, %lo(D_801CD700) # addiu $a2, $a2, -0x2900
/* 15CE74 801B6E04 24050003 */  li    $a1, 3
/* 15CE78 801B6E08 000B5080 */  sll   $t2, $t3, 2
/* 15CE7C 801B6E0C 008A2021 */  addu  $a0, $a0, $t2
/* 15CE80 801B6E10 0C02911F */  jal   call_virtual_function
/* 15CE84 801B6E14 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15CE88 801B6E18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15CE8C 801B6E1C 27BD0030 */  addiu $sp, $sp, 0x30
/* 15CE90 801B6E20 03E00008 */  jr    $ra
/* 15CE94 801B6E24 00000000 */   nop   
.size func_801B6BDC_ovl7, . - func_801B6BDC_ovl7

glabel func_801B6E28_ovl7
/* 15CE98 801B6E28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15CE9C 801B6E2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15CEA0 801B6E30 0C06835D */  jal   func_801A0D74_ovl7
/* 15CEA4 801B6E34 00000000 */   nop   
/* 15CEA8 801B6E38 1440000B */  bnez  $v0, .L801B6E68_ovl7
/* 15CEAC 801B6E3C 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15CEB0 801B6E40 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15CEB4 801B6E44 3C04800E */  lui   $a0, 0x800e
/* 15CEB8 801B6E48 3C06801D */  lui   $a2, %hi(D_801CD70C) # $a2, 0x801d
/* 15CEBC 801B6E4C 8DCF0000 */  lw    $t7, ($t6)
/* 15CEC0 801B6E50 24C6D70C */  addiu $a2, %lo(D_801CD70C) # addiu $a2, $a2, -0x28f4
/* 15CEC4 801B6E54 24050003 */  li    $a1, 3
/* 15CEC8 801B6E58 000FC080 */  sll   $t8, $t7, 2
/* 15CECC 801B6E5C 00982021 */  addu  $a0, $a0, $t8
/* 15CED0 801B6E60 0C02911F */  jal   call_virtual_function
/* 15CED4 801B6E64 8C84DFD0 */   lw    $a0, -0x2030($a0)
.L801B6E68_ovl7:
/* 15CED8 801B6E68 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 15CEDC 801B6E6C 44816000 */  mtc1  $at, $f12
/* 15CEE0 801B6E70 0C0674BF */  jal   func_8019D2FC_ovl7
/* 15CEE4 801B6E74 24050006 */   li    $a1, 6
/* 15CEE8 801B6E78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15CEEC 801B6E7C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15CEF0 801B6E80 03E00008 */  jr    $ra
/* 15CEF4 801B6E84 00000000 */   nop   
.size func_801B6E28_ovl7, . - func_801B6E28_ovl7

glabel func_801B6E88_ovl7
/* 15CEF8 801B6E88 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15CEFC 801B6E8C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15CF00 801B6E90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15CF04 801B6E94 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15CF08 801B6E98 AFA40018 */  sw    $a0, 0x18($sp)
/* 15CF0C 801B6E9C 8C430000 */  lw    $v1, ($v0)
/* 15CF10 801B6EA0 3C01800F */  lui   $at, 0x800f
/* 15CF14 801B6EA4 240E0001 */  li    $t6, 1
/* 15CF18 801B6EA8 00031880 */  sll   $v1, $v1, 2
/* 15CF1C 801B6EAC 00230821 */  addu  $at, $at, $v1
/* 15CF20 801B6EB0 AC2E9C60 */  sw    $t6, -0x63a0($at)
/* 15CF24 801B6EB4 8C4F0000 */  lw    $t7, ($v0)
/* 15CF28 801B6EB8 3C01800F */  lui   $at, 0x800f
/* 15CF2C 801B6EBC 3C05800E */  lui   $a1, 0x800e
/* 15CF30 801B6EC0 000FC080 */  sll   $t8, $t7, 2
/* 15CF34 801B6EC4 00380821 */  addu  $at, $at, $t8
/* 15CF38 801B6EC8 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15CF3C 801B6ECC 8C590000 */  lw    $t9, ($v0)
/* 15CF40 801B6ED0 00A32821 */  addu  $a1, $a1, $v1
/* 15CF44 801B6ED4 3C01800E */  lui   $at, 0x800e
/* 15CF48 801B6ED8 00194080 */  sll   $t0, $t9, 2
/* 15CF4C 801B6EDC 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15CF50 801B6EE0 00280821 */  addu  $at, $at, $t0
/* 15CF54 801B6EE4 3C09801D */  lui   $t1, %hi(D_801CC0F4) # $t1, 0x801d
/* 15CF58 801B6EE8 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 15CF5C 801B6EEC 2529C0F4 */  addiu $t1, %lo(D_801CC0F4) # addiu $t1, $t1, -0x3f0c
/* 15CF60 801B6EF0 3C040001 */  lui   $a0, (0x000100C4 >> 16) # lui $a0, 1
/* 15CF64 801B6EF4 348400C4 */  ori   $a0, (0x000100C4 & 0xFFFF) # ori $a0, $a0, 0xc4
/* 15CF68 801B6EF8 0C02A7A9 */  jal   func_800A9EA4
/* 15CF6C 801B6EFC ACA90098 */   sw    $t1, 0x98($a1)
/* 15CF70 801B6F00 0C02BE85 */  jal   func_800AFA14
/* 15CF74 801B6F04 00000000 */   nop   
/* 15CF78 801B6F08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15CF7C 801B6F0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15CF80 801B6F10 03E00008 */  jr    $ra
/* 15CF84 801B6F14 00000000 */   nop   
.size func_801B6E88_ovl7, . - func_801B6E88_ovl7

glabel func_801B6F18_ovl7
/* 15CF88 801B6F18 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15CF8C 801B6F1C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15CF90 801B6F20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15CF94 801B6F24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15CF98 801B6F28 AFA40018 */  sw    $a0, 0x18($sp)
/* 15CF9C 801B6F2C 8C620000 */  lw    $v0, ($v1)
/* 15CFA0 801B6F30 3C04800E */  lui   $a0, 0x800e
/* 15CFA4 801B6F34 3C08800E */  lui   $t0, %hi(D_800E3590) # $t0, 0x800e
/* 15CFA8 801B6F38 00021080 */  sll   $v0, $v0, 2
/* 15CFAC 801B6F3C 00822021 */  addu  $a0, $a0, $v0
/* 15CFB0 801B6F40 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 15CFB4 801B6F44 25083590 */  addiu $t0, %lo(D_800E3590) # addiu $t0, $t0, 0x3590
/* 15CFB8 801B6F48 3C01800E */  lui   $at, 0x800e
/* 15CFBC 801B6F4C 908E003C */  lbu   $t6, 0x3c($a0)
/* 15CFC0 801B6F50 00220821 */  addu  $at, $at, $v0
/* 15CFC4 801B6F54 01027821 */  addu  $t7, $t0, $v0
/* 15CFC8 801B6F58 15C00042 */  bnez  $t6, .L801B7064_ovl7
/* 15CFCC 801B6F5C 00000000 */   nop   
/* 15CFD0 801B6F60 44807000 */  mtc1  $zero, $f14
/* 15CFD4 801B6F64 C4203050 */  lwc1  $f0, 0x3050($at)
/* 15CFD8 801B6F68 3C07800E */  lui   $a3, %hi(D_800E3910) # $a3, 0x800e
/* 15CFDC 801B6F6C 24E73910 */  addiu $a3, %lo(D_800E3910) # addiu $a3, $a3, 0x3910
/* 15CFE0 801B6F70 460E003C */  c.lt.s $f0, $f14
/* 15CFE4 801B6F74 3C01800E */  lui   $at, 0x800e
/* 15CFE8 801B6F78 00220821 */  addu  $at, $at, $v0
/* 15CFEC 801B6F7C 00E22021 */  addu  $a0, $a3, $v0
/* 15CFF0 801B6F80 45020004 */  bc1fl .L801B6F94_ovl7
/* 15CFF4 801B6F84 46000306 */   mov.s $f12, $f0
/* 15CFF8 801B6F88 10000002 */  b     .L801B6F94_ovl7
/* 15CFFC 801B6F8C 46000307 */   neg.s $f12, $f0
/* 15D000 801B6F90 46000306 */  mov.s $f12, $f0
.L801B6F94_ovl7:
/* 15D004 801B6F94 C5E00000 */  lwc1  $f0, ($t7)
/* 15D008 801B6F98 460E003C */  c.lt.s $f0, $f14
/* 15D00C 801B6F9C 00000000 */  nop   
/* 15D010 801B6FA0 45020004 */  bc1fl .L801B6FB4_ovl7
/* 15D014 801B6FA4 46000086 */   mov.s $f2, $f0
/* 15D018 801B6FA8 10000002 */  b     .L801B6FB4_ovl7
/* 15D01C 801B6FAC 46000087 */   neg.s $f2, $f0
/* 15D020 801B6FB0 46000086 */  mov.s $f2, $f0
.L801B6FB4_ovl7:
/* 15D024 801B6FB4 4602603E */  c.le.s $f12, $f2
/* 15D028 801B6FB8 00000000 */  nop   
/* 15D02C 801B6FBC 45000029 */  bc1f  .L801B7064_ovl7
/* 15D030 801B6FC0 00000000 */   nop   
/* 15D034 801B6FC4 C42233D0 */  lwc1  $f2, 0x33d0($at)
/* 15D038 801B6FC8 3C06800F */  lui   $a2, %hi(D_800EA520) # $a2, 0x800f
/* 15D03C 801B6FCC 24C6A520 */  addiu $a2, %lo(D_800EA520) # addiu $a2, $a2, -0x5ae0
/* 15D040 801B6FD0 460E103C */  c.lt.s $f2, $f14
/* 15D044 801B6FD4 00C2C021 */  addu  $t8, $a2, $v0
/* 15D048 801B6FD8 45020004 */  bc1fl .L801B6FEC_ovl7
/* 15D04C 801B6FDC 46001006 */   mov.s $f0, $f2
/* 15D050 801B6FE0 10000002 */  b     .L801B6FEC_ovl7
/* 15D054 801B6FE4 46001007 */   neg.s $f0, $f2
/* 15D058 801B6FE8 46001006 */  mov.s $f0, $f2
.L801B6FEC_ovl7:
/* 15D05C 801B6FEC C4820000 */  lwc1  $f2, ($a0)
/* 15D060 801B6FF0 460E103C */  c.lt.s $f2, $f14
/* 15D064 801B6FF4 00000000 */  nop   
/* 15D068 801B6FF8 45020004 */  bc1fl .L801B700C_ovl7
/* 15D06C 801B6FFC 46001306 */   mov.s $f12, $f2
/* 15D070 801B7000 10000002 */  b     .L801B700C_ovl7
/* 15D074 801B7004 46001307 */   neg.s $f12, $f2
/* 15D078 801B7008 46001306 */  mov.s $f12, $f2
.L801B700C_ovl7:
/* 15D07C 801B700C 460C003E */  c.le.s $f0, $f12
/* 15D080 801B7010 00000000 */  nop   
/* 15D084 801B7014 45000013 */  bc1f  .L801B7064_ovl7
/* 15D088 801B7018 00000000 */   nop   
/* 15D08C 801B701C 8F190000 */  lw    $t9, ($t8)
/* 15D090 801B7020 2401FFFF */  li    $at, -1
/* 15D094 801B7024 1721000F */  bne   $t9, $at, .L801B7064_ovl7
/* 15D098 801B7028 00000000 */   nop   
/* 15D09C 801B702C 44802000 */  mtc1  $zero, $f4
/* 15D0A0 801B7030 240B002A */  li    $t3, 42
/* 15D0A4 801B7034 E4840000 */  swc1  $f4, ($a0)
/* 15D0A8 801B7038 8C620000 */  lw    $v0, ($v1)
/* 15D0AC 801B703C 00021080 */  sll   $v0, $v0, 2
/* 15D0B0 801B7040 00E24821 */  addu  $t1, $a3, $v0
/* 15D0B4 801B7044 C5260000 */  lwc1  $f6, ($t1)
/* 15D0B8 801B7048 01025021 */  addu  $t2, $t0, $v0
/* 15D0BC 801B704C E5460000 */  swc1  $f6, ($t2)
/* 15D0C0 801B7050 8C6C0000 */  lw    $t4, ($v1)
/* 15D0C4 801B7054 000C6880 */  sll   $t5, $t4, 2
/* 15D0C8 801B7058 00CD7021 */  addu  $t6, $a2, $t5
/* 15D0CC 801B705C 1000004F */  b     .L801B719C_ovl7
/* 15D0D0 801B7060 ADCB0000 */   sw    $t3, ($t6)
.L801B7064_ovl7:
/* 15D0D4 801B7064 3C06800F */  lui   $a2, %hi(D_800EA520) # $a2, 0x800f
/* 15D0D8 801B7068 24C6A520 */  addiu $a2, %lo(D_800EA520) # addiu $a2, $a2, -0x5ae0
/* 15D0DC 801B706C 00C22821 */  addu  $a1, $a2, $v0
/* 15D0E0 801B7070 8CA40000 */  lw    $a0, ($a1)
/* 15D0E4 801B7074 3C07800E */  lui   $a3, %hi(D_800E3910) # $a3, 0x800e
/* 15D0E8 801B7078 3C08800E */  lui   $t0, %hi(D_800E3590) # $t0, 0x800e
/* 15D0EC 801B707C 25083590 */  addiu $t0, %lo(D_800E3590) # addiu $t0, $t0, 0x3590
/* 15D0F0 801B7080 14800042 */  bnez  $a0, .L801B718C_ovl7
/* 15D0F4 801B7084 24E73910 */   addiu $a3, %lo(D_800E3910) # addiu $a3, $a3, 0x3910
/* 15D0F8 801B7088 44804000 */  mtc1  $zero, $f8
/* 15D0FC 801B708C 00E27821 */  addu  $t7, $a3, $v0
/* 15D100 801B7090 3C01800E */  lui   $at, 0x800e
/* 15D104 801B7094 E5E80000 */  swc1  $f8, ($t7)
/* 15D108 801B7098 8C620000 */  lw    $v0, ($v1)
/* 15D10C 801B709C 3C06800E */  lui   $a2, %hi(D_800E3E50) # $a2, 0x800e
/* 15D110 801B70A0 24C63E50 */  addiu $a2, %lo(D_800E3E50) # addiu $a2, $a2, 0x3e50
/* 15D114 801B70A4 00021080 */  sll   $v0, $v0, 2
/* 15D118 801B70A8 00E2C021 */  addu  $t8, $a3, $v0
/* 15D11C 801B70AC C7000000 */  lwc1  $f0, ($t8)
/* 15D120 801B70B0 00220821 */  addu  $at, $at, $v0
/* 15D124 801B70B4 3C04800E */  lui   $a0, 0x800e
/* 15D128 801B70B8 E4203750 */  swc1  $f0, 0x3750($at)
/* 15D12C 801B70BC 8C790000 */  lw    $t9, ($v1)
/* 15D130 801B70C0 3C01800E */  lui   $at, 0x800e
/* 15D134 801B70C4 3C05801B */  lui   $a1, %hi(D_801B6B88) # $a1, 0x801b
/* 15D138 801B70C8 00194880 */  sll   $t1, $t9, 2
/* 15D13C 801B70CC 01095021 */  addu  $t2, $t0, $t1
/* 15D140 801B70D0 E5400000 */  swc1  $f0, ($t2)
/* 15D144 801B70D4 8C6C0000 */  lw    $t4, ($v1)
/* 15D148 801B70D8 24A56B88 */  addiu $a1, %lo(D_801B6B88) # addiu $a1, $a1, 0x6b88
/* 15D14C 801B70DC 000C6880 */  sll   $t5, $t4, 2
/* 15D150 801B70E0 002D0821 */  addu  $at, $at, $t5
/* 15D154 801B70E4 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 15D158 801B70E8 8C6B0000 */  lw    $t3, ($v1)
/* 15D15C 801B70EC 3C01800E */  lui   $at, 0x800e
/* 15D160 801B70F0 000B7080 */  sll   $t6, $t3, 2
/* 15D164 801B70F4 002E0821 */  addu  $at, $at, $t6
/* 15D168 801B70F8 E4203210 */  swc1  $f0, 0x3210($at)
/* 15D16C 801B70FC 8C6F0000 */  lw    $t7, ($v1)
/* 15D170 801B7100 3C01800E */  lui   $at, 0x800e
/* 15D174 801B7104 240E0001 */  li    $t6, 1
/* 15D178 801B7108 000FC080 */  sll   $t8, $t7, 2
/* 15D17C 801B710C 00380821 */  addu  $at, $at, $t8
/* 15D180 801B7110 E4203050 */  swc1  $f0, 0x3050($at)
/* 15D184 801B7114 8C790000 */  lw    $t9, ($v1)
/* 15D188 801B7118 3C01801D */  lui   $at, %hi(D_801CE350) # $at, 0x801d
/* 15D18C 801B711C C42AE350 */  lwc1  $f10, %lo(D_801CE350)($at)
/* 15D190 801B7120 00194880 */  sll   $t1, $t9, 2
/* 15D194 801B7124 00C95021 */  addu  $t2, $a2, $t1
/* 15D198 801B7128 E54A0000 */  swc1  $f10, ($t2)
/* 15D19C 801B712C 8C620000 */  lw    $v0, ($v1)
/* 15D1A0 801B7130 3C01800E */  lui   $at, 0x800e
/* 15D1A4 801B7134 00021080 */  sll   $v0, $v0, 2
/* 15D1A8 801B7138 00C26021 */  addu  $t4, $a2, $v0
/* 15D1AC 801B713C C5820000 */  lwc1  $f2, ($t4)
/* 15D1B0 801B7140 00220821 */  addu  $at, $at, $v0
/* 15D1B4 801B7144 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 15D1B8 801B7148 8C6D0000 */  lw    $t5, ($v1)
/* 15D1BC 801B714C 3C01800E */  lui   $at, 0x800e
/* 15D1C0 801B7150 000D5880 */  sll   $t3, $t5, 2
/* 15D1C4 801B7154 002B0821 */  addu  $at, $at, $t3
/* 15D1C8 801B7158 E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 15D1CC 801B715C 8C6F0000 */  lw    $t7, ($v1)
/* 15D1D0 801B7160 3C01800E */  lui   $at, 0x800e
/* 15D1D4 801B7164 000FC080 */  sll   $t8, $t7, 2
/* 15D1D8 801B7168 00380821 */  addu  $at, $at, $t8
/* 15D1DC 801B716C AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 15D1E0 801B7170 8C790000 */  lw    $t9, ($v1)
/* 15D1E4 801B7174 00194880 */  sll   $t1, $t9, 2
/* 15D1E8 801B7178 00892021 */  addu  $a0, $a0, $t1
/* 15D1EC 801B717C 0C02C7B2 */  jal   assign_new_process_entry
/* 15D1F0 801B7180 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15D1F4 801B7184 10000006 */  b     .L801B71A0_ovl7
/* 15D1F8 801B7188 8FBF0014 */   lw    $ra, 0x14($sp)
.L801B718C_ovl7:
/* 15D1FC 801B718C 2401FFFF */  li    $at, -1
/* 15D200 801B7190 10810002 */  beq   $a0, $at, .L801B719C_ovl7
/* 15D204 801B7194 248AFFFF */   addiu $t2, $a0, -1
/* 15D208 801B7198 ACAA0000 */  sw    $t2, ($a1)
.L801B719C_ovl7:
/* 15D20C 801B719C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B71A0_ovl7:
/* 15D210 801B71A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D214 801B71A4 03E00008 */  jr    $ra
/* 15D218 801B71A8 00000000 */   nop   
.size func_801B6F18_ovl7, . - func_801B6F18_ovl7

glabel func_801B71AC_ovl7
/* 15D21C 801B71AC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15D220 801B71B0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15D224 801B71B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D228 801B71B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D22C 801B71BC AFA40018 */  sw    $a0, 0x18($sp)
/* 15D230 801B71C0 8C4E0000 */  lw    $t6, ($v0)
/* 15D234 801B71C4 3C01800F */  lui   $at, 0x800f
/* 15D238 801B71C8 24080002 */  li    $t0, 2
/* 15D23C 801B71CC 000E7880 */  sll   $t7, $t6, 2
/* 15D240 801B71D0 002F0821 */  addu  $at, $at, $t7
/* 15D244 801B71D4 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15D248 801B71D8 8C580000 */  lw    $t8, ($v0)
/* 15D24C 801B71DC 3C01800F */  lui   $at, 0x800f
/* 15D250 801B71E0 240BFFFF */  li    $t3, -1
/* 15D254 801B71E4 0018C880 */  sll   $t9, $t8, 2
/* 15D258 801B71E8 00390821 */  addu  $at, $at, $t9
/* 15D25C 801B71EC AC209E20 */  sw    $zero, -0x61e0($at)
/* 15D260 801B71F0 8C490000 */  lw    $t1, ($v0)
/* 15D264 801B71F4 3C01800F */  lui   $at, 0x800f
/* 15D268 801B71F8 240E0001 */  li    $t6, 1
/* 15D26C 801B71FC 00095080 */  sll   $t2, $t1, 2
/* 15D270 801B7200 002A0821 */  addu  $at, $at, $t2
/* 15D274 801B7204 AC28A360 */  sw    $t0, -0x5ca0($at)
/* 15D278 801B7208 8C4C0000 */  lw    $t4, ($v0)
/* 15D27C 801B720C 3C01800F */  lui   $at, 0x800f
/* 15D280 801B7210 24040008 */  li    $a0, 8
/* 15D284 801B7214 000C6880 */  sll   $t5, $t4, 2
/* 15D288 801B7218 002D0821 */  addu  $at, $at, $t5
/* 15D28C 801B721C AC2BA520 */  sw    $t3, -0x5ae0($at)
/* 15D290 801B7220 8C4F0000 */  lw    $t7, ($v0)
/* 15D294 801B7224 3C01800E */  lui   $at, 0x800e
/* 15D298 801B7228 000FC080 */  sll   $t8, $t7, 2
/* 15D29C 801B722C 00380821 */  addu  $at, $at, $t8
/* 15D2A0 801B7230 0C002DAF */  jal   finish_current_thread
/* 15D2A4 801B7234 AC2EDFD0 */   sw    $t6, -0x2030($at)
/* 15D2A8 801B7238 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 15D2AC 801B723C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 15D2B0 801B7240 3C01800F */  lui   $at, 0x800f
/* 15D2B4 801B7244 24190001 */  li    $t9, 1
/* 15D2B8 801B7248 8D280000 */  lw    $t0, ($t1)
/* 15D2BC 801B724C 00085080 */  sll   $t2, $t0, 2
/* 15D2C0 801B7250 002A0821 */  addu  $at, $at, $t2
/* 15D2C4 801B7254 0C02BE85 */  jal   func_800AFA14
/* 15D2C8 801B7258 AC399E20 */   sw    $t9, -0x61e0($at)
/* 15D2CC 801B725C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D2D0 801B7260 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D2D4 801B7264 03E00008 */  jr    $ra
/* 15D2D8 801B7268 00000000 */   nop   
.size func_801B71AC_ovl7, . - func_801B71AC_ovl7

glabel func_801B726C_ovl7
/* 15D2DC 801B726C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15D2E0 801B7270 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15D2E4 801B7274 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 15D2E8 801B7278 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D2EC 801B727C 8C430000 */  lw    $v1, ($v0)
/* 15D2F0 801B7280 3C0E800F */  lui   $t6, 0x800f
/* 15D2F4 801B7284 3C05800E */  lui   $a1, 0x800e
/* 15D2F8 801B7288 00031880 */  sll   $v1, $v1, 2
/* 15D2FC 801B728C 01C37021 */  addu  $t6, $t6, $v1
/* 15D300 801B7290 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 15D304 801B7294 00A32821 */  addu  $a1, $a1, $v1
/* 15D308 801B7298 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15D30C 801B729C 11C00044 */  beqz  $t6, .L801B73B0_ovl7
/* 15D310 801B72A0 3C0F800F */   lui   $t7, 0x800f
/* 15D314 801B72A4 01E37821 */  addu  $t7, $t7, $v1
/* 15D318 801B72A8 8DEF9C60 */  lw    $t7, -0x63a0($t7)
/* 15D31C 801B72AC 55E0000D */  bnezl $t7, .L801B72E4_ovl7
/* 15D320 801B72B0 90A9003C */   lbu   $t1, 0x3c($a1)
/* 15D324 801B72B4 0C0667C7 */  jal   func_80199F1C_ovl7
/* 15D328 801B72B8 AFA5002C */   sw    $a1, 0x2c($sp)
/* 15D32C 801B72BC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15D330 801B72C0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15D334 801B72C4 3C01800F */  lui   $at, 0x800f
/* 15D338 801B72C8 24180001 */  li    $t8, 1
/* 15D33C 801B72CC 8C590000 */  lw    $t9, ($v0)
/* 15D340 801B72D0 8FA5002C */  lw    $a1, 0x2c($sp)
/* 15D344 801B72D4 00194080 */  sll   $t0, $t9, 2
/* 15D348 801B72D8 00280821 */  addu  $at, $at, $t0
/* 15D34C 801B72DC AC389C60 */  sw    $t8, -0x63a0($at)
/* 15D350 801B72E0 90A9003C */  lbu   $t1, 0x3c($a1)
.L801B72E4_ovl7:
/* 15D354 801B72E4 55200033 */  bnezl $t1, .L801B73B4_ovl7
/* 15D358 801B72E8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15D35C 801B72EC 8C4A0000 */  lw    $t2, ($v0)
/* 15D360 801B72F0 3C03800F */  lui   $v1, %hi(D_800EA360) # $v1, 0x800f
/* 15D364 801B72F4 2463A360 */  addiu $v1, %lo(D_800EA360) # addiu $v1, $v1, -0x5ca0
/* 15D368 801B72F8 000A5880 */  sll   $t3, $t2, 2
/* 15D36C 801B72FC 006B6021 */  addu  $t4, $v1, $t3
/* 15D370 801B7300 8D8D0000 */  lw    $t5, ($t4)
/* 15D374 801B7304 3C014150 */  li    $at, 0x41500000 # 13.000000
/* 15D378 801B7308 44810000 */  mtc1  $at, $f0
/* 15D37C 801B730C 448D2000 */  mtc1  $t5, $f4
/* 15D380 801B7310 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 15D384 801B7314 44819000 */  mtc1  $at, $f18
/* 15D388 801B7318 468021A0 */  cvt.s.w $f6, $f4
/* 15D38C 801B731C 27A40020 */  addiu $a0, $sp, 0x20
/* 15D390 801B7320 46003202 */  mul.s $f8, $f6, $f0
/* 15D394 801B7324 E7A80020 */  swc1  $f8, 0x20($sp)
/* 15D398 801B7328 8C4E0000 */  lw    $t6, ($v0)
/* 15D39C 801B732C 000E7880 */  sll   $t7, $t6, 2
/* 15D3A0 801B7330 006FC821 */  addu  $t9, $v1, $t7
/* 15D3A4 801B7334 8F380000 */  lw    $t8, ($t9)
/* 15D3A8 801B7338 44985000 */  mtc1  $t8, $f10
/* 15D3AC 801B733C 00000000 */  nop   
/* 15D3B0 801B7340 46805420 */  cvt.s.w $f16, $f10
/* 15D3B4 801B7344 46128102 */  mul.s $f4, $f16, $f18
/* 15D3B8 801B7348 E7A40024 */  swc1  $f4, 0x24($sp)
/* 15D3BC 801B734C 8C480000 */  lw    $t0, ($v0)
/* 15D3C0 801B7350 00084880 */  sll   $t1, $t0, 2
/* 15D3C4 801B7354 00695021 */  addu  $t2, $v1, $t1
/* 15D3C8 801B7358 8D4B0000 */  lw    $t3, ($t2)
/* 15D3CC 801B735C 448B3000 */  mtc1  $t3, $f6
/* 15D3D0 801B7360 00000000 */  nop   
/* 15D3D4 801B7364 46803220 */  cvt.s.w $f8, $f6
/* 15D3D8 801B7368 46004282 */  mul.s $f10, $f8, $f0
/* 15D3DC 801B736C 0C0673F4 */  jal   func_8019CFD0_ovl7
/* 15D3E0 801B7370 E7AA0028 */   swc1  $f10, 0x28($sp)
/* 15D3E4 801B7374 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15D3E8 801B7378 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15D3EC 801B737C 3C01800E */  lui   $at, 0x800e
/* 15D3F0 801B7380 3C04800E */  lui   $a0, 0x800e
/* 15D3F4 801B7384 8C4C0000 */  lw    $t4, ($v0)
/* 15D3F8 801B7388 3C05801B */  lui   $a1, %hi(D_801B6B88) # $a1, 0x801b
/* 15D3FC 801B738C 24A56B88 */  addiu $a1, %lo(D_801B6B88) # addiu $a1, $a1, 0x6b88
/* 15D400 801B7390 000C6880 */  sll   $t5, $t4, 2
/* 15D404 801B7394 002D0821 */  addu  $at, $at, $t5
/* 15D408 801B7398 AC20DC50 */  sw    $zero, -0x23b0($at)
/* 15D40C 801B739C 8C4E0000 */  lw    $t6, ($v0)
/* 15D410 801B73A0 000E7880 */  sll   $t7, $t6, 2
/* 15D414 801B73A4 008F2021 */  addu  $a0, $a0, $t7
/* 15D418 801B73A8 0C02C7B2 */  jal   assign_new_process_entry
/* 15D41C 801B73AC 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801B73B0_ovl7:
/* 15D420 801B73B0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B73B4_ovl7:
/* 15D424 801B73B4 27BD0030 */  addiu $sp, $sp, 0x30
/* 15D428 801B73B8 03E00008 */  jr    $ra
/* 15D42C 801B73BC 00000000 */   nop   
.size func_801B726C_ovl7, . - func_801B726C_ovl7

glabel func_801B73C0_ovl7
/* 15D430 801B73C0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15D434 801B73C4 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 15D438 801B73C8 8CC20000 */  lw    $v0, ($a2)
/* 15D43C 801B73CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D440 801B73D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D444 801B73D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 15D448 801B73D8 8C430000 */  lw    $v1, ($v0)
/* 15D44C 801B73DC 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 15D450 801B73E0 44816000 */  mtc1  $at, $f12
/* 15D454 801B73E4 3C01800F */  lui   $at, 0x800f
/* 15D458 801B73E8 00031880 */  sll   $v1, $v1, 2
/* 15D45C 801B73EC 00230821 */  addu  $at, $at, $v1
/* 15D460 801B73F0 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15D464 801B73F4 8C4E0000 */  lw    $t6, ($v0)
/* 15D468 801B73F8 3C01800F */  lui   $at, 0x800f
/* 15D46C 801B73FC 3C05800E */  lui   $a1, 0x800e
/* 15D470 801B7400 000E7880 */  sll   $t7, $t6, 2
/* 15D474 801B7404 002F0821 */  addu  $at, $at, $t7
/* 15D478 801B7408 AC209E20 */  sw    $zero, -0x61e0($at)
/* 15D47C 801B740C 8C590000 */  lw    $t9, ($v0)
/* 15D480 801B7410 00A32821 */  addu  $a1, $a1, $v1
/* 15D484 801B7414 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15D488 801B7418 3C01800E */  lui   $at, 0x800e
/* 15D48C 801B741C 00196080 */  sll   $t4, $t9, 2
/* 15D490 801B7420 002C0821 */  addu  $at, $at, $t4
/* 15D494 801B7424 24180002 */  li    $t8, 2
/* 15D498 801B7428 3C0D801D */  lui   $t5, %hi(D_801CC118) # $t5, 0x801d
/* 15D49C 801B742C AC38DFD0 */  sw    $t8, -0x2030($at)
/* 15D4A0 801B7430 25ADC118 */  addiu $t5, %lo(D_801CC118) # addiu $t5, $t5, -0x3ee8
/* 15D4A4 801B7434 ACAD0098 */  sw    $t5, 0x98($a1)
/* 15D4A8 801B7438 8CC20000 */  lw    $v0, ($a2)
/* 15D4AC 801B743C 3C01800F */  lui   $at, 0x800f
/* 15D4B0 801B7440 44802000 */  mtc1  $zero, $f4
/* 15D4B4 801B7444 8C4E0000 */  lw    $t6, ($v0)
/* 15D4B8 801B7448 3C07800E */  lui   $a3, %hi(D_800E3910) # $a3, 0x800e
/* 15D4BC 801B744C 24E73910 */  addiu $a3, %lo(D_800E3910) # addiu $a3, $a3, 0x3910
/* 15D4C0 801B7450 000E7880 */  sll   $t7, $t6, 2
/* 15D4C4 801B7454 002F0821 */  addu  $at, $at, $t7
/* 15D4C8 801B7458 AC208920 */  sw    $zero, -0x76e0($at)
/* 15D4CC 801B745C 8C590000 */  lw    $t9, ($v0)
/* 15D4D0 801B7460 3C08800E */  lui   $t0, %hi(D_800E3750) # $t0, 0x800e
/* 15D4D4 801B7464 25083750 */  addiu $t0, %lo(D_800E3750) # addiu $t0, $t0, 0x3750
/* 15D4D8 801B7468 0019C080 */  sll   $t8, $t9, 2
/* 15D4DC 801B746C 00F86021 */  addu  $t4, $a3, $t8
/* 15D4E0 801B7470 E5840000 */  swc1  $f4, ($t4)
/* 15D4E4 801B7474 8C430000 */  lw    $v1, ($v0)
/* 15D4E8 801B7478 3C01800E */  lui   $at, 0x800e
/* 15D4EC 801B747C 3C09800E */  lui   $t1, %hi(D_800E3210) # $t1, 0x800e
/* 15D4F0 801B7480 00031880 */  sll   $v1, $v1, 2
/* 15D4F4 801B7484 00E36821 */  addu  $t5, $a3, $v1
/* 15D4F8 801B7488 C5A00000 */  lwc1  $f0, ($t5)
/* 15D4FC 801B748C 01037021 */  addu  $t6, $t0, $v1
/* 15D500 801B7490 25293210 */  addiu $t1, %lo(D_800E3210) # addiu $t1, $t1, 0x3210
/* 15D504 801B7494 E5C00000 */  swc1  $f0, ($t6)
/* 15D508 801B7498 8C4F0000 */  lw    $t7, ($v0)
/* 15D50C 801B749C 3C0A800E */  lui   $t2, %hi(D_800E3E50) # $t2, 0x800e
/* 15D510 801B74A0 254A3E50 */  addiu $t2, %lo(D_800E3E50) # addiu $t2, $t2, 0x3e50
/* 15D514 801B74A4 000FC880 */  sll   $t9, $t7, 2
/* 15D518 801B74A8 00390821 */  addu  $at, $at, $t9
/* 15D51C 801B74AC E4203590 */  swc1  $f0, 0x3590($at)
/* 15D520 801B74B0 8C580000 */  lw    $t8, ($v0)
/* 15D524 801B74B4 3C01800E */  lui   $at, 0x800e
/* 15D528 801B74B8 3C0B800E */  lui   $t3, %hi(D_800E3C90) # $t3, 0x800e
/* 15D52C 801B74BC 00186080 */  sll   $t4, $t8, 2
/* 15D530 801B74C0 002C0821 */  addu  $at, $at, $t4
/* 15D534 801B74C4 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 15D538 801B74C8 8C4D0000 */  lw    $t5, ($v0)
/* 15D53C 801B74CC 3C01800E */  lui   $at, 0x800e
/* 15D540 801B74D0 256B3C90 */  addiu $t3, %lo(D_800E3C90) # addiu $t3, $t3, 0x3c90
/* 15D544 801B74D4 000D7080 */  sll   $t6, $t5, 2
/* 15D548 801B74D8 012E7821 */  addu  $t7, $t1, $t6
/* 15D54C 801B74DC E5E00000 */  swc1  $f0, ($t7)
/* 15D550 801B74E0 8C590000 */  lw    $t9, ($v0)
/* 15D554 801B74E4 3C040001 */  lui   $a0, (0x000100C5 >> 16) # lui $a0, 1
/* 15D558 801B74E8 348400C5 */  ori   $a0, (0x000100C5 & 0xFFFF) # ori $a0, $a0, 0xc5
/* 15D55C 801B74EC 0019C080 */  sll   $t8, $t9, 2
/* 15D560 801B74F0 00380821 */  addu  $at, $at, $t8
/* 15D564 801B74F4 E4203050 */  swc1  $f0, 0x3050($at)
/* 15D568 801B74F8 8C4C0000 */  lw    $t4, ($v0)
/* 15D56C 801B74FC 3C01801D */  lui   $at, %hi(D_801CE354) # $at, 0x801d
/* 15D570 801B7500 C426E354 */  lwc1  $f6, %lo(D_801CE354)($at)
/* 15D574 801B7504 000C6880 */  sll   $t5, $t4, 2
/* 15D578 801B7508 014D7021 */  addu  $t6, $t2, $t5
/* 15D57C 801B750C E5C60000 */  swc1  $f6, ($t6)
/* 15D580 801B7510 8C430000 */  lw    $v1, ($v0)
/* 15D584 801B7514 3C01800E */  lui   $at, 0x800e
/* 15D588 801B7518 00031880 */  sll   $v1, $v1, 2
/* 15D58C 801B751C 01437821 */  addu  $t7, $t2, $v1
/* 15D590 801B7520 C5E20000 */  lwc1  $f2, ($t7)
/* 15D594 801B7524 0163C821 */  addu  $t9, $t3, $v1
/* 15D598 801B7528 E7220000 */  swc1  $f2, ($t9)
/* 15D59C 801B752C 8C580000 */  lw    $t8, ($v0)
/* 15D5A0 801B7530 00186080 */  sll   $t4, $t8, 2
/* 15D5A4 801B7534 002C0821 */  addu  $at, $at, $t4
/* 15D5A8 801B7538 E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 15D5AC 801B753C 8C4D0000 */  lw    $t5, ($v0)
/* 15D5B0 801B7540 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 15D5B4 801B7544 44814000 */  mtc1  $at, $f8
/* 15D5B8 801B7548 000D7080 */  sll   $t6, $t5, 2
/* 15D5BC 801B754C 012E7821 */  addu  $t7, $t1, $t6
/* 15D5C0 801B7550 E5EC0000 */  swc1  $f12, ($t7)
/* 15D5C4 801B7554 8C590000 */  lw    $t9, ($v0)
/* 15D5C8 801B7558 0019C080 */  sll   $t8, $t9, 2
/* 15D5CC 801B755C 01186021 */  addu  $t4, $t0, $t8
/* 15D5D0 801B7560 E5880000 */  swc1  $f8, ($t4)
/* 15D5D4 801B7564 8C4D0000 */  lw    $t5, ($v0)
/* 15D5D8 801B7568 000D7080 */  sll   $t6, $t5, 2
/* 15D5DC 801B756C 016E7821 */  addu  $t7, $t3, $t6
/* 15D5E0 801B7570 0C02A7A9 */  jal   func_800A9EA4
/* 15D5E4 801B7574 E5EC0000 */   swc1  $f12, ($t7)
/* 15D5E8 801B7578 0C02BE85 */  jal   func_800AFA14
/* 15D5EC 801B757C 00000000 */   nop   
/* 15D5F0 801B7580 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D5F4 801B7584 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D5F8 801B7588 03E00008 */  jr    $ra
/* 15D5FC 801B758C 00000000 */   nop   
.size func_801B73C0_ovl7, . - func_801B73C0_ovl7

glabel func_801B7590_ovl7
/* 15D600 801B7590 03E00008 */  jr    $ra
/* 15D604 801B7594 AFA40000 */   sw    $a0, ($sp)
.size func_801B7590_ovl7, . - func_801B7590_ovl7

glabel func_801B7598_ovl7
/* 15D608 801B7598 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15D60C 801B759C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15D610 801B75A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D614 801B75A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D618 801B75A8 8DC20000 */  lw    $v0, ($t6)
/* 15D61C 801B75AC 3C0F800F */  lui   $t7, 0x800f
/* 15D620 801B75B0 3C01800E */  lui   $at, 0x800e
/* 15D624 801B75B4 00021080 */  sll   $v0, $v0, 2
/* 15D628 801B75B8 01E27821 */  addu  $t7, $t7, $v0
/* 15D62C 801B75BC 8DEF8AE0 */  lw    $t7, -0x7520($t7)
/* 15D630 801B75C0 00220821 */  addu  $at, $at, $v0
/* 15D634 801B75C4 24190002 */  li    $t9, 2
/* 15D638 801B75C8 31F80001 */  andi  $t8, $t7, 1
/* 15D63C 801B75CC 13000005 */  beqz  $t8, .L801B75E4_ovl7
/* 15D640 801B75D0 00000000 */   nop   
/* 15D644 801B75D4 3C01800E */  lui   $at, 0x800e
/* 15D648 801B75D8 00220821 */  addu  $at, $at, $v0
/* 15D64C 801B75DC 10000002 */  b     .L801B75E8_ovl7
/* 15D650 801B75E0 AC20DC50 */   sw    $zero, -0x23b0($at)
.L801B75E4_ovl7:
/* 15D654 801B75E4 AC39DC50 */  sw    $t9, -0x23b0($at)
.L801B75E8_ovl7:
/* 15D658 801B75E8 0C06658A */  jal   func_80199628_ovl7
/* 15D65C 801B75EC 00000000 */   nop   
/* 15D660 801B75F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D664 801B75F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D668 801B75F8 03E00008 */  jr    $ra
/* 15D66C 801B75FC 00000000 */   nop   
.size func_801B7598_ovl7, . - func_801B7598_ovl7

glabel func_801B7600_ovl7
/* 15D670 801B7600 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15D674 801B7604 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15D678 801B7608 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D67C 801B760C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D680 801B7610 AFA40018 */  sw    $a0, 0x18($sp)
/* 15D684 801B7614 8DCF0000 */  lw    $t7, ($t6)
/* 15D688 801B7618 3C04800E */  lui   $a0, 0x800e
/* 15D68C 801B761C 3C06801D */  lui   $a2, %hi(D_801CD718) # $a2, 0x801d
/* 15D690 801B7620 000FC080 */  sll   $t8, $t7, 2
/* 15D694 801B7624 00982021 */  addu  $a0, $a0, $t8
/* 15D698 801B7628 8C84DC50 */  lw    $a0, -0x23b0($a0)
/* 15D69C 801B762C 24C6D718 */  addiu $a2, %lo(D_801CD718) # addiu $a2, $a2, -0x28e8
/* 15D6A0 801B7630 0C02911F */  jal   call_virtual_function
/* 15D6A4 801B7634 24050001 */   li    $a1, 1
/* 15D6A8 801B7638 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D6AC 801B763C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D6B0 801B7640 03E00008 */  jr    $ra
/* 15D6B4 801B7644 00000000 */   nop   
.size func_801B7600_ovl7, . - func_801B7600_ovl7

glabel func_801B7648_ovl7
/* 15D6B8 801B7648 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15D6BC 801B764C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15D6C0 801B7650 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D6C4 801B7654 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D6C8 801B7658 AFA40018 */  sw    $a0, 0x18($sp)
/* 15D6CC 801B765C 8C4F0000 */  lw    $t7, ($v0)
/* 15D6D0 801B7660 3C0E801B */  lui   $t6, %hi(D_801B76CC) # $t6, 0x801b
/* 15D6D4 801B7664 3C01800E */  lui   $at, 0x800e
/* 15D6D8 801B7668 000FC080 */  sll   $t8, $t7, 2
/* 15D6DC 801B766C 00380821 */  addu  $at, $at, $t8
/* 15D6E0 801B7670 25CE76CC */  addiu $t6, %lo(D_801B76CC) # addiu $t6, $t6, 0x76cc
/* 15D6E4 801B7674 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 15D6E8 801B7678 8C590000 */  lw    $t9, ($v0)
/* 15D6EC 801B767C 3C01800E */  lui   $at, 0x800e
/* 15D6F0 801B7680 00194080 */  sll   $t0, $t9, 2
/* 15D6F4 801B7684 00280821 */  addu  $at, $at, $t0
/* 15D6F8 801B7688 0C068CA0 */  jal   func_801A3280_ovl7
/* 15D6FC 801B768C AC20DC50 */   sw    $zero, -0x23b0($at)
/* 15D700 801B7690 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 15D704 801B7694 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 15D708 801B7698 3C04800E */  lui   $a0, 0x800e
/* 15D70C 801B769C 3C06801D */  lui   $a2, %hi(D_801CD718) # $a2, 0x801d
/* 15D710 801B76A0 8D2A0000 */  lw    $t2, ($t1)
/* 15D714 801B76A4 24C6D718 */  addiu $a2, %lo(D_801CD718) # addiu $a2, $a2, -0x28e8
/* 15D718 801B76A8 24050001 */  li    $a1, 1
/* 15D71C 801B76AC 000A5880 */  sll   $t3, $t2, 2
/* 15D720 801B76B0 008B2021 */  addu  $a0, $a0, $t3
/* 15D724 801B76B4 0C02911F */  jal   call_virtual_function
/* 15D728 801B76B8 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 15D72C 801B76BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D730 801B76C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D734 801B76C4 03E00008 */  jr    $ra
/* 15D738 801B76C8 00000000 */   nop   
.size func_801B7648_ovl7, . - func_801B7648_ovl7

glabel func_801B76CC_ovl7
/* 15D73C 801B76CC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15D740 801B76D0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15D744 801B76D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D748 801B76D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D74C 801B76DC AFA40018 */  sw    $a0, 0x18($sp)
/* 15D750 801B76E0 8DCF0000 */  lw    $t7, ($t6)
/* 15D754 801B76E4 3C04800E */  lui   $a0, 0x800e
/* 15D758 801B76E8 3C06801D */  lui   $a2, %hi(D_801CD71C) # $a2, 0x801d
/* 15D75C 801B76EC 000FC080 */  sll   $t8, $t7, 2
/* 15D760 801B76F0 00982021 */  addu  $a0, $a0, $t8
/* 15D764 801B76F4 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 15D768 801B76F8 24C6D71C */  addiu $a2, %lo(D_801CD71C) # addiu $a2, $a2, -0x28e4
/* 15D76C 801B76FC 0C02911F */  jal   call_virtual_function
/* 15D770 801B7700 24050001 */   li    $a1, 1
/* 15D774 801B7704 0C066D09 */  jal   func_8019B424_ovl7
/* 15D778 801B7708 8FA40018 */   lw    $a0, 0x18($sp)
/* 15D77C 801B770C 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 15D780 801B7710 24040006 */   li    $a0, 6
/* 15D784 801B7714 0C067CEC */  jal   func_8019F3B0_ovl7
/* 15D788 801B7718 00000000 */   nop   
/* 15D78C 801B771C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D790 801B7720 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D794 801B7724 03E00008 */  jr    $ra
/* 15D798 801B7728 00000000 */   nop   
.size func_801B76CC_ovl7, . - func_801B76CC_ovl7

glabel func_801B772C_ovl7
/* 15D79C 801B772C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15D7A0 801B7730 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15D7A4 801B7734 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D7A8 801B7738 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D7AC 801B773C AFA40018 */  sw    $a0, 0x18($sp)
/* 15D7B0 801B7740 8DCF0000 */  lw    $t7, ($t6)
/* 15D7B4 801B7744 3C01800E */  lui   $at, 0x800e
/* 15D7B8 801B7748 3C040001 */  lui   $a0, (0x000100C4 >> 16) # lui $a0, 1
/* 15D7BC 801B774C 000FC080 */  sll   $t8, $t7, 2
/* 15D7C0 801B7750 00380821 */  addu  $at, $at, $t8
/* 15D7C4 801B7754 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 15D7C8 801B7758 0C02A7A9 */  jal   func_800A9EA4
/* 15D7CC 801B775C 348400C4 */   ori   $a0, (0x000100C4 & 0xFFFF) # ori $a0, $a0, 0xc4
/* 15D7D0 801B7760 0C02BE85 */  jal   func_800AFA14
/* 15D7D4 801B7764 00000000 */   nop   
/* 15D7D8 801B7768 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D7DC 801B776C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D7E0 801B7770 03E00008 */  jr    $ra
/* 15D7E4 801B7774 00000000 */   nop   
.size func_801B772C_ovl7, . - func_801B772C_ovl7

glabel func_801B7778_ovl7
/* 15D7E8 801B7778 03E00008 */  jr    $ra
/* 15D7EC 801B777C AFA40000 */   sw    $a0, ($sp)
.size func_801B7778_ovl7, . - func_801B7778_ovl7

glabel func_801B7780_ovl7
/* 15D7F0 801B7780 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 15D7F4 801B7784 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 15D7F8 801B7788 8D020000 */  lw    $v0, ($t0)
/* 15D7FC 801B778C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D800 801B7790 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D804 801B7794 AFA40018 */  sw    $a0, 0x18($sp)
/* 15D808 801B7798 8C430000 */  lw    $v1, ($v0)
/* 15D80C 801B779C 3C01800F */  lui   $at, 0x800f
/* 15D810 801B77A0 240E0028 */  li    $t6, 40
/* 15D814 801B77A4 00031880 */  sll   $v1, $v1, 2
/* 15D818 801B77A8 00230821 */  addu  $at, $at, $v1
/* 15D81C 801B77AC AC2E98E0 */  sw    $t6, -0x6720($at)
/* 15D820 801B77B0 8C580000 */  lw    $t8, ($v0)
/* 15D824 801B77B4 3C07800E */  lui   $a3, 0x800e
/* 15D828 801B77B8 00E33821 */  addu  $a3, $a3, $v1
/* 15D82C 801B77BC 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 15D830 801B77C0 3C01800E */  lui   $at, 0x800e
/* 15D834 801B77C4 3C0F801B */  lui   $t7, %hi(D_801B793C) # $t7, 0x801b
/* 15D838 801B77C8 0018C880 */  sll   $t9, $t8, 2
/* 15D83C 801B77CC 00390821 */  addu  $at, $at, $t9
/* 15D840 801B77D0 25EF793C */  addiu $t7, %lo(D_801B793C) # addiu $t7, $t7, 0x793c
/* 15D844 801B77D4 3C09801D */  lui   $t1, %hi(D_801CB4DC) # $t1, 0x801d
/* 15D848 801B77D8 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 15D84C 801B77DC 2529B4DC */  addiu $t1, %lo(D_801CB4DC) # addiu $t1, $t1, -0x4b24
/* 15D850 801B77E0 ACE90098 */  sw    $t1, 0x98($a3)
/* 15D854 801B77E4 8D0A0000 */  lw    $t2, ($t0)
/* 15D858 801B77E8 3C01800F */  lui   $at, 0x800f
/* 15D85C 801B77EC 3C040001 */  lui   $a0, (0x00010094 >> 16) # lui $a0, 1
/* 15D860 801B77F0 8D4B0000 */  lw    $t3, ($t2)
/* 15D864 801B77F4 34840094 */  ori   $a0, (0x00010094 & 0xFFFF) # ori $a0, $a0, 0x94
/* 15D868 801B77F8 24050023 */  li    $a1, 35
/* 15D86C 801B77FC 000B6080 */  sll   $t4, $t3, 2
/* 15D870 801B7800 002C0821 */  addu  $at, $at, $t4
/* 15D874 801B7804 AC208920 */  sw    $zero, -0x76e0($at)
/* 15D878 801B7808 0C02A619 */  jal   func_800A9864
/* 15D87C 801B780C 24060010 */   li    $a2, 16
/* 15D880 801B7810 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 15D884 801B7814 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 15D888 801B7818 3C0F800F */  lui   $t7, 0x800f
/* 15D88C 801B781C 3C040001 */  lui   $a0, 1
/* 15D890 801B7820 8DAE0000 */  lw    $t6, ($t5)
/* 15D894 801B7824 000EC080 */  sll   $t8, $t6, 2
/* 15D898 801B7828 01F87821 */  addu  $t7, $t7, $t8
/* 15D89C 801B782C 8DEF8AE0 */  lw    $t7, -0x7520($t7)
/* 15D8A0 801B7830 31F90001 */  andi  $t9, $t7, 1
/* 15D8A4 801B7834 13200006 */  beqz  $t9, .L801B7850_ovl7
/* 15D8A8 801B7838 00000000 */   nop   
/* 15D8AC 801B783C 3C040001 */  lui   $a0, (0x0001053C >> 16) # lui $a0, 1
/* 15D8B0 801B7840 0C02A7A9 */  jal   func_800A9EA4
/* 15D8B4 801B7844 3484053B */   ori   $a0, (0x0001053B & 0xFFFF) # ori $a0, $a0, 0x53b
/* 15D8B8 801B7848 10000003 */  b     .L801B7858_ovl7
/* 15D8BC 801B784C 00000000 */   nop   
.L801B7850_ovl7:
/* 15D8C0 801B7850 0C02A7A9 */  jal   func_800A9EA4
/* 15D8C4 801B7854 3484053C */   ori   $a0, (0x0001053C & 0xFFFF) # ori $a0, $a0, 0x53c
.L801B7858_ovl7:
/* 15D8C8 801B7858 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15D8CC 801B785C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15D8D0 801B7860 3C09800E */  lui   $t1, 0x800e
/* 15D8D4 801B7864 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 15D8D8 801B7868 8C440000 */  lw    $a0, ($v0)
/* 15D8DC 801B786C 01244821 */  addu  $t1, $t1, $a0
/* 15D8E0 801B7870 91297880 */  lbu   $t1, 0x7880($t1)
/* 15D8E4 801B7874 00041880 */  sll   $v1, $a0, 2
/* 15D8E8 801B7878 55200018 */  bnezl $t1, .L801B78DC_ovl7
/* 15D8EC 801B787C 44810000 */   mtc1  $at, $f0
/* 15D8F0 801B7880 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 15D8F4 801B7884 44810000 */  mtc1  $at, $f0
/* 15D8F8 801B7888 3C01800E */  lui   $at, 0x800e
/* 15D8FC 801B788C 00041880 */  sll   $v1, $a0, 2
/* 15D900 801B7890 00230821 */  addu  $at, $at, $v1
/* 15D904 801B7894 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 15D908 801B7898 3C01800E */  lui   $at, 0x800e
/* 15D90C 801B789C 00230821 */  addu  $at, $at, $v1
/* 15D910 801B78A0 46002182 */  mul.s $f6, $f4, $f0
/* 15D914 801B78A4 44804000 */  mtc1  $zero, $f8
/* 15D918 801B78A8 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 15D91C 801B78AC 8C4A0000 */  lw    $t2, ($v0)
/* 15D920 801B78B0 3C01800E */  lui   $at, 0x800e
/* 15D924 801B78B4 000A5880 */  sll   $t3, $t2, 2
/* 15D928 801B78B8 002B0821 */  addu  $at, $at, $t3
/* 15D92C 801B78BC E4286690 */  swc1  $f8, 0x6690($at)
/* 15D930 801B78C0 8C4C0000 */  lw    $t4, ($v0)
/* 15D934 801B78C4 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 15D938 801B78C8 000C6880 */  sll   $t5, $t4, 2
/* 15D93C 801B78CC 002D0821 */  addu  $at, $at, $t5
/* 15D940 801B78D0 10000014 */  b     .L801B7924_ovl7
/* 15D944 801B78D4 E4206850 */   swc1  $f0, 0x6850($at)
/* 15D948 801B78D8 44810000 */  mtc1  $at, $f0
.L801B78DC_ovl7:
/* 15D94C 801B78DC 3C01800E */  lui   $at, 0x800e
/* 15D950 801B78E0 00230821 */  addu  $at, $at, $v1
/* 15D954 801B78E4 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 15D958 801B78E8 3C01800E */  lui   $at, 0x800e
/* 15D95C 801B78EC 00230821 */  addu  $at, $at, $v1
/* 15D960 801B78F0 46005402 */  mul.s $f16, $f10, $f0
/* 15D964 801B78F4 44809000 */  mtc1  $zero, $f18
/* 15D968 801B78F8 E43064D0 */  swc1  $f16, 0x64d0($at)
/* 15D96C 801B78FC 8C4E0000 */  lw    $t6, ($v0)
/* 15D970 801B7900 3C01800E */  lui   $at, 0x800e
/* 15D974 801B7904 000EC080 */  sll   $t8, $t6, 2
/* 15D978 801B7908 00380821 */  addu  $at, $at, $t8
/* 15D97C 801B790C E4326690 */  swc1  $f18, 0x6690($at)
/* 15D980 801B7910 8C4F0000 */  lw    $t7, ($v0)
/* 15D984 801B7914 3C01800E */  lui   $at, 0x800e
/* 15D988 801B7918 000FC880 */  sll   $t9, $t7, 2
/* 15D98C 801B791C 00390821 */  addu  $at, $at, $t9
/* 15D990 801B7920 E4206850 */  swc1  $f0, 0x6850($at)
.L801B7924_ovl7:
/* 15D994 801B7924 0C02BE85 */  jal   func_800AFA14
/* 15D998 801B7928 00000000 */   nop   
/* 15D99C 801B792C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15D9A0 801B7930 27BD0018 */  addiu $sp, $sp, 0x18
/* 15D9A4 801B7934 03E00008 */  jr    $ra
/* 15D9A8 801B7938 00000000 */   nop   
.size func_801B7780_ovl7, . - func_801B7780_ovl7

glabel func_801B793C_ovl7
/* 15D9AC 801B793C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15D9B0 801B7940 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15D9B4 801B7944 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15D9B8 801B7948 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15D9BC 801B794C 8DC20000 */  lw    $v0, ($t6)
/* 15D9C0 801B7950 3C0F800F */  lui   $t7, %hi(D_800E98E0) # $t7, 0x800f
/* 15D9C4 801B7954 25EF98E0 */  addiu $t7, %lo(D_800E98E0) # addiu $t7, $t7, -0x6720
/* 15D9C8 801B7958 00021080 */  sll   $v0, $v0, 2
/* 15D9CC 801B795C 004F1821 */  addu  $v1, $v0, $t7
/* 15D9D0 801B7960 8C650000 */  lw    $a1, ($v1)
/* 15D9D4 801B7964 14A00009 */  bnez  $a1, .L801B798C_ovl7
/* 15D9D8 801B7968 24B8FFFF */   addiu $t8, $a1, -1
/* 15D9DC 801B796C 3C04800E */  lui   $a0, 0x800e
/* 15D9E0 801B7970 00822021 */  addu  $a0, $a0, $v0
/* 15D9E4 801B7974 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 15D9E8 801B7978 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 15D9EC 801B797C 0C02C7B2 */  jal   assign_new_process_entry
/* 15D9F0 801B7980 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15D9F4 801B7984 10000006 */  b     .L801B79A0_ovl7
/* 15D9F8 801B7988 8FBF0014 */   lw    $ra, 0x14($sp)
.L801B798C_ovl7:
/* 15D9FC 801B798C 0C06835D */  jal   func_801A0D74_ovl7
/* 15DA00 801B7990 AC780000 */   sw    $t8, ($v1)
/* 15DA04 801B7994 0C0680ED */  jal   func_801A03B4_ovl7
/* 15DA08 801B7998 00000000 */   nop   
/* 15DA0C 801B799C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B79A0_ovl7:
/* 15DA10 801B79A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 15DA14 801B79A4 03E00008 */  jr    $ra
/* 15DA18 801B79A8 00000000 */   nop   
.size func_801B793C_ovl7, . - func_801B793C_ovl7

glabel func_801B79AC_ovl7
/* 15DA1C 801B79AC 00000000 */  nop   
.size func_801B79AC_ovl7, . - func_801B79AC_ovl7
