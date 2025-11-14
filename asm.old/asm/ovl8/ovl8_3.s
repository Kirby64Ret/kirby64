.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801D2B90_ovl8
/* 176670 801D2B90 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 176674 801D2B94 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 176678 801D2B98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 17667C 801D2B9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 176680 801D2BA0 8DC20000 */  lw    $v0, ($t6)
/* 176684 801D2BA4 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 176688 801D2BA8 3C18800E */ lui $t8, %hi(D_800DFBD0)
/* 17668C 801D2BAC 00023880 */  sll   $a3, $v0, 2
/* 176690 801D2BB0 01E77821 */  addu  $t7, $t7, $a3
/* 176694 801D2BB4 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 176698 801D2BB8 0307C021 */  addu  $t8, $t8, $a3
/* 17669C 801D2BBC 8F18FBD0 */ lw $t8, %lo(D_800DFBD0)($t8)
/* 1766A0 801D2BC0 3C08800C */  lui   $t0, %hi(gGameState) # $t0, 0x800c
/* 1766A4 801D2BC4 8D08E4F0 */  lw    $t0, %lo(gGameState)($t0)
/* 1766A8 801D2BC8 AFAF001C */  sw    $t7, 0x1c($sp)
/* 1766AC 801D2BCC 8F190004 */  lw    $t9, 4($t8)
/* 1766B0 801D2BD0 24010021 */  li    $at, 33
/* 1766B4 801D2BD4 15010006 */  bne   $t0, $at, .L801D2BF0_ovl8
/* 1766B8 801D2BD8 AFB90018 */   sw    $t9, 0x18($sp)
/* 1766BC 801D2BDC 0C07511F */  jal   func_801D447C_ovl8
/* 1766C0 801D2BE0 00000000 */   nop   
/* 1766C4 801D2BE4 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1766C8 801D2BE8 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1766CC 801D2BEC 8D220000 */  lw    $v0, ($t1)
.L801D2BF0_ovl8:
/* 1766D0 801D2BF0 3C0A800E */ lui $t2, %hi(D_800E7880)
/* 1766D4 801D2BF4 01425021 */  addu  $t2, $t2, $v0
/* 1766D8 801D2BF8 914A7880 */ lbu $t2, %lo(D_800E7880)($t2)
/* 1766DC 801D2BFC 00002025 */  move  $a0, $zero
/* 1766E0 801D2C00 29410006 */  slti  $at, $t2, 6
/* 1766E4 801D2C04 1020000C */  beqz  $at, .L801D2C38_ovl8
/* 1766E8 801D2C08 00000000 */   nop   
/* 1766EC 801D2C0C 0C008266 */  jal   func_80020998_ovl8
/* 1766F0 801D2C10 24057800 */   li    $a1, 30720
/* 1766F4 801D2C14 3C0B800D */  lui   $t3, %hi(D_800D6B54) # $t3, 0x800d
/* 1766F8 801D2C18 8D6B6B54 */  lw    $t3, %lo(D_800D6B54)($t3)
/* 1766FC 801D2C1C 00002025 */  move  $a0, $zero
/* 176700 801D2C20 15600007 */  bnez  $t3, .L801D2C40_ovl8
/* 176704 801D2C24 00000000 */   nop   
/* 176708 801D2C28 0C029D6C */  jal   play_music
/* 17670C 801D2C2C 24050018 */   li    $a1, 24
/* 176710 801D2C30 10000003 */  b     .L801D2C40_ovl8
/* 176714 801D2C34 00000000 */   nop   
.L801D2C38_ovl8:
/* 176718 801D2C38 0C029D9E */  jal   play_sound
/* 17671C 801D2C3C 24040226 */   li    $a0, 550
.L801D2C40_ovl8:
/* 176720 801D2C40 3C0C800C */  lui   $t4, %hi(D_800BE500) # $t4, 0x800c
/* 176724 801D2C44 8D8CE500 */  lw    $t4, %lo(D_800BE500)($t4)
/* 176728 801D2C48 3C0D800D */ lui $t5, %hi(D_800D6BC0)
/* 17672C 801D2C4C 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 176730 801D2C50 01AC6821 */  addu  $t5, $t5, $t4
/* 176734 801D2C54 91AD6BC0 */ lbu $t5, %lo(D_800D6BC0)($t5)
/* 176738 801D2C58 3C038005 */ lui $v1, %hi(D_8004A7C4)
/* 17673C 801D2C5C 24050002 */  li    $a1, 2
/* 176740 801D2C60 11A0001C */  beqz  $t5, .L801D2CD4_ovl8
/* 176744 801D2C64 24060033 */   li    $a2, 51
/* 176748 801D2C68 44812000 */  mtc1  $at, $f4
/* 17674C 801D2C6C 3C01800E */  lui   $at, %hi(D_800E7B20) # $at, 0x800e
/* 176750 801D2C70 C4267B20 */  lwc1  $f6, %lo(D_800E7B20)($at)
/* 176754 801D2C74 3C038005 */ lui $v1, %hi(D_8004A7C4)
/* 176758 801D2C78 46062032 */  c.eq.s $f4, $f6
/* 17675C 801D2C7C 00000000 */  nop   
/* 176760 801D2C80 4500000B */  bc1f  .L801D2CB0_ovl8
/* 176764 801D2C84 00000000 */   nop   
/* 176768 801D2C88 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 17676C 801D2C8C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 176770 801D2C90 3C04800F */  lui   $a0, %hi(D_800EA520) # $a0, 0x800f
/* 176774 801D2C94 2484A520 */  addiu $a0, %lo(D_800EA520) # addiu $a0, $a0, -0x5ae0
/* 176778 801D2C98 8C6F0000 */  lw    $t7, ($v1)
/* 17677C 801D2C9C 240E0001 */  li    $t6, 1
/* 176780 801D2CA0 000FC080 */  sll   $t8, $t7, 2
/* 176784 801D2CA4 0098C821 */  addu  $t9, $a0, $t8
/* 176788 801D2CA8 10000011 */  b     .L801D2CF0_ovl8
/* 17678C 801D2CAC AF2E0000 */   sw    $t6, ($t9)
.L801D2CB0_ovl8:
/* 176790 801D2CB0 8C63A7C4 */ lw $v1, %lo(D_8004A7C4)($v1)
/* 176794 801D2CB4 3C04800F */  lui   $a0, %hi(D_800EA520) # $a0, 0x800f
/* 176798 801D2CB8 2484A520 */  addiu $a0, %lo(D_800EA520) # addiu $a0, $a0, -0x5ae0
/* 17679C 801D2CBC 8C690000 */  lw    $t1, ($v1)
/* 1767A0 801D2CC0 24080002 */  li    $t0, 2
/* 1767A4 801D2CC4 00095080 */  sll   $t2, $t1, 2
/* 1767A8 801D2CC8 008A5821 */  addu  $t3, $a0, $t2
/* 1767AC 801D2CCC 10000008 */  b     .L801D2CF0_ovl8
/* 1767B0 801D2CD0 AD680000 */   sw    $t0, ($t3)
.L801D2CD4_ovl8:
/* 1767B4 801D2CD4 8C63A7C4 */  lw    $v1, -0x583c($v1)
/* 1767B8 801D2CD8 3C04800F */  lui   $a0, %hi(D_800EA520) # $a0, 0x800f
/* 1767BC 801D2CDC 2484A520 */  addiu $a0, %lo(D_800EA520) # addiu $a0, $a0, -0x5ae0
/* 1767C0 801D2CE0 8C6C0000 */  lw    $t4, ($v1)
/* 1767C4 801D2CE4 000C6880 */  sll   $t5, $t4, 2
/* 1767C8 801D2CE8 008D7821 */  addu  $t7, $a0, $t5
/* 1767CC 801D2CEC ADE00000 */  sw    $zero, ($t7)
.L801D2CF0_ovl8:
/* 1767D0 801D2CF0 8C670000 */  lw    $a3, ($v1)
/* 1767D4 801D2CF4 24010001 */  li    $at, 1
/* 1767D8 801D2CF8 00073880 */  sll   $a3, $a3, 2
/* 1767DC 801D2CFC 0087C021 */  addu  $t8, $a0, $a3
/* 1767E0 801D2D00 8F020000 */  lw    $v0, ($t8)
/* 1767E4 801D2D04 00002025 */  move  $a0, $zero
/* 1767E8 801D2D08 10400008 */  beqz  $v0, .L801D2D2C_ovl8
/* 1767EC 801D2D0C 00000000 */   nop   
/* 1767F0 801D2D10 1041000F */  beq   $v0, $at, .L801D2D50_ovl8
/* 1767F4 801D2D14 3C040001 */   lui   $a0, 1
/* 1767F8 801D2D18 24010002 */  li    $at, 2
/* 1767FC 801D2D1C 10410017 */  beq   $v0, $at, .L801D2D7C_ovl8
/* 176800 801D2D20 3C040001 */   lui   $a0, (0x000100C5 >> 16) # lui $a0, 1
/* 176804 801D2D24 1000001F */  b     .L801D2DA4_ovl8
/* 176808 801D2D28 00000000 */   nop   
.L801D2D2C_ovl8:
/* 17680C 801D2D2C 0C02A040 */  jal   func_800A8100
/* 176810 801D2D30 8FA70018 */   lw    $a3, 0x18($sp)
/* 176814 801D2D34 8FAE001C */  lw    $t6, 0x1c($sp)
/* 176818 801D2D38 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 17681C 801D2D3C ADC20034 */  sw    $v0, 0x34($t6)
/* 176820 801D2D40 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 176824 801D2D44 8C670000 */  lw    $a3, ($v1)
/* 176828 801D2D48 10000016 */  b     .L801D2DA4_ovl8
/* 17682C 801D2D4C 00073880 */   sll   $a3, $a3, 2
.L801D2D50_ovl8:
/* 176830 801D2D50 0C02A5D8 */  jal   func_800A9760
/* 176834 801D2D54 348400D1 */   ori   $a0, (0x000100D1 & 0xFFFF) # ori $a0, $a0, 0xd1
/* 176838 801D2D58 8FA9001C */  lw    $t1, 0x1c($sp)
/* 17683C 801D2D5C 3C19801D */  lui   $t9, %hi(D_801C9F2C) # $t9, 0x801d
/* 176840 801D2D60 27399F2C */  addiu $t9, %lo(D_801C9F2C) # addiu $t9, $t9, -0x60d4
/* 176844 801D2D64 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 176848 801D2D68 AD39008C */  sw    $t9, 0x8c($t1)
/* 17684C 801D2D6C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 176850 801D2D70 8C670000 */  lw    $a3, ($v1)
/* 176854 801D2D74 1000000B */  b     .L801D2DA4_ovl8
/* 176858 801D2D78 00073880 */   sll   $a3, $a3, 2
.L801D2D7C_ovl8:
/* 17685C 801D2D7C 0C02A5D8 */  jal   func_800A9760
/* 176860 801D2D80 348400C5 */   ori   $a0, (0x000100C5 & 0xFFFF) # ori $a0, $a0, 0xc5
/* 176864 801D2D84 8FA8001C */  lw    $t0, 0x1c($sp)
/* 176868 801D2D88 3C0A801D */  lui   $t2, %hi(D_801CA100) # $t2, 0x801d
/* 17686C 801D2D8C 254AA100 */  addiu $t2, %lo(D_801CA100) # addiu $t2, $t2, -0x5f00
/* 176870 801D2D90 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 176874 801D2D94 AD0A008C */  sw    $t2, 0x8c($t0)
/* 176878 801D2D98 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 17687C 801D2D9C 8C670000 */  lw    $a3, ($v1)
/* 176880 801D2DA0 00073880 */  sll   $a3, $a3, 2
.L801D2DA4_ovl8:
/* 176884 801D2DA4 3C01800F */ lui $at, %hi(D_800E8920)
/* 176888 801D2DA8 00270821 */  addu  $at, $at, $a3
/* 17688C 801D2DAC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 176890 801D2DB0 8C6B0000 */  lw    $t3, ($v1)
/* 176894 801D2DB4 3C04800E */ lui $a0, %hi(D_800E7880)
/* 176898 801D2DB8 3C06801E */  lui   $a2, %hi(D_801DB020_ovl8) # $a2, 0x801e
/* 17689C 801D2DBC 008B2021 */  addu  $a0, $a0, $t3
/* 1768A0 801D2DC0 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 1768A4 801D2DC4 24C6B020 */  addiu $a2, %lo(D_801DB020_ovl8) # addiu $a2, $a2, -0x4fe0
/* 1768A8 801D2DC8 0C02911F */  jal   call_virtual_function
/* 1768AC 801D2DCC 24050009 */   li    $a1, 9
/* 1768B0 801D2DD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1768B4 801D2DD4 27BD0020 */  addiu $sp, $sp, 0x20
/* 1768B8 801D2DD8 03E00008 */  jr    $ra
/* 1768BC 801D2DDC 00000000 */   nop   
.size func_801D2B90_ovl8, . - func_801D2B90_ovl8

glabel func_801D2DE0_ovl8
/* 1768C0 801D2DE0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1768C4 801D2DE4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1768C8 801D2DE8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 1768CC 801D2DEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1768D0 801D2DF0 AFA40050 */  sw    $a0, 0x50($sp)
/* 1768D4 801D2DF4 8C4F0000 */  lw    $t7, ($v0)
/* 1768D8 801D2DF8 3C0E801D */  lui   $t6, %hi(D_801D307C) # $t6, 0x801d
/* 1768DC 801D2DFC 3C01800E */ lui $at, %hi(D_800DF150)
/* 1768E0 801D2E00 000FC080 */  sll   $t8, $t7, 2
/* 1768E4 801D2E04 00380821 */  addu  $at, $at, $t8
/* 1768E8 801D2E08 25CE307C */  addiu $t6, %lo(D_801D307C) # addiu $t6, $t6, 0x307c
/* 1768EC 801D2E0C AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 1768F0 801D2E10 8C480000 */  lw    $t0, ($v0)
/* 1768F4 801D2E14 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1768F8 801D2E18 3C19800C */  lui   $t9, %hi(D_800B8208) # $t9, 0x800c
/* 1768FC 801D2E1C 00084880 */  sll   $t1, $t0, 2
/* 176900 801D2E20 00290821 */  addu  $at, $at, $t1
/* 176904 801D2E24 27398208 */  addiu $t9, %lo(D_800B8208) # addiu $t9, $t9, -0x7df8
/* 176908 801D2E28 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 17690C 801D2E2C 8C4A0000 */  lw    $t2, ($v0)
/* 176910 801D2E30 3C01800F */ lui $at, %hi(D_800E8E60)
/* 176914 801D2E34 24040001 */  li    $a0, 1
/* 176918 801D2E38 000A5880 */  sll   $t3, $t2, 2
/* 17691C 801D2E3C 002B0821 */  addu  $at, $at, $t3
/* 176920 801D2E40 AC248E60 */ sw $a0, %lo(D_800E8E60)($at)
/* 176924 801D2E44 8C4C0000 */  lw    $t4, ($v0)
/* 176928 801D2E48 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 17692C 801D2E4C 44812000 */  mtc1  $at, $f4
/* 176930 801D2E50 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 176934 801D2E54 000C6880 */  sll   $t5, $t4, 2
/* 176938 801D2E58 002D0821 */  addu  $at, $at, $t5
/* 17693C 801D2E5C E4242790 */  swc1  $f4, 0x2790($at)
/* 176940 801D2E60 8C450000 */  lw    $a1, ($v0)
/* 176944 801D2E64 3C03800F */ lui $v1, %hi(D_800EA520)
/* 176948 801D2E68 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 17694C 801D2E6C 00052880 */  sll   $a1, $a1, 2
/* 176950 801D2E70 00651821 */  addu  $v1, $v1, $a1
/* 176954 801D2E74 8C63A520 */ lw $v1, %lo(D_800EA520)($v1)
/* 176958 801D2E78 50600008 */  beql  $v1, $zero, .L801D2E9C_ovl8
/* 17695C 801D2E7C 44810000 */   mtc1  $at, $f0
/* 176960 801D2E80 1064001C */  beq   $v1, $a0, .L801D2EF4_ovl8
/* 176964 801D2E84 24010002 */   li    $at, 2
/* 176968 801D2E88 10610020 */  beq   $v1, $at, .L801D2F0C_ovl8
/* 17696C 801D2E8C 3C040001 */   lui   $a0, 1
/* 176970 801D2E90 10000023 */  b     .L801D2F20_ovl8
/* 176974 801D2E94 44800000 */   mtc1  $zero, $f0
/* 176978 801D2E98 44810000 */  mtc1  $at, $f0
.L801D2E9C_ovl8:
/* 17697C 801D2E9C 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 176980 801D2EA0 00250821 */  addu  $at, $at, $a1
/* 176984 801D2EA4 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 176988 801D2EA8 8C4F0000 */  lw    $t7, ($v0)
/* 17698C 801D2EAC 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 176990 801D2EB0 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
/* 176994 801D2EB4 000F7080 */  sll   $t6, $t7, 2
/* 176998 801D2EB8 002E0821 */  addu  $at, $at, $t6
/* 17699C 801D2EBC E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 1769A0 801D2EC0 8C580000 */  lw    $t8, ($v0)
/* 1769A4 801D2EC4 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 1769A8 801D2EC8 348405F9 */  ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 1769AC 801D2ECC 00184080 */  sll   $t0, $t8, 2
/* 1769B0 801D2ED0 00280821 */  addu  $at, $at, $t0
/* 1769B4 801D2ED4 0C02A806 */  jal   func_800AA018
/* 1769B8 801D2ED8 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 1769BC 801D2EDC 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 1769C0 801D2EE0 0C02A806 */  jal   func_800AA018
/* 1769C4 801D2EE4 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 1769C8 801D2EE8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1769CC 801D2EEC 1000000B */  b     .L801D2F1C_ovl8
/* 1769D0 801D2EF0 8C42A7C4 */   lw    $v0, %lo(D_8004A7C4)($v0)
.L801D2EF4_ovl8:
/* 1769D4 801D2EF4 3C040001 */  lui   $a0, (0x000105EF >> 16) # lui $a0, 1
/* 1769D8 801D2EF8 0C02A806 */  jal   func_800AA018
/* 1769DC 801D2EFC 34840601 */   ori   $a0, (0x00010601 & 0xFFFF) # ori $a0, $a0, 0x601
/* 1769E0 801D2F00 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1769E4 801D2F04 10000005 */  b     .L801D2F1C_ovl8
/* 1769E8 801D2F08 8C42A7C4 */   lw    $v0, %lo(D_8004A7C4)($v0)
.L801D2F0C_ovl8:
/* 1769EC 801D2F0C 0C02A806 */  jal   func_800AA018
/* 1769F0 801D2F10 348405EF */   ori   $a0, (0x000105EF & 0xFFFF) # ori $a0, $a0, 0x5ef
/* 1769F4 801D2F14 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1769F8 801D2F18 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
.L801D2F1C_ovl8:
/* 1769FC 801D2F1C 44800000 */  mtc1  $zero, $f0
.L801D2F20_ovl8:
/* 176A00 801D2F20 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 176A04 801D2F24 44813000 */  mtc1  $at, $f6
/* 176A08 801D2F28 E7A0003C */  swc1  $f0, 0x3c($sp)
/* 176A0C 801D2F2C E7A00038 */  swc1  $f0, 0x38($sp)
/* 176A10 801D2F30 E7A60040 */  swc1  $f6, 0x40($sp)
/* 176A14 801D2F34 8C590000 */  lw    $t9, ($v0)
/* 176A18 801D2F38 3C06800E */ lui $a2, %hi(gEntitiesAngleYArray)
/* 176A1C 801D2F3C 27A40038 */  addiu $a0, $sp, 0x38
/* 176A20 801D2F40 00194880 */  sll   $t1, $t9, 2
/* 176A24 801D2F44 00C93021 */  addu  $a2, $a2, $t1
/* 176A28 801D2F48 8CC641D0 */ lw $a2, %lo(gEntitiesAngleYArray)($a2)
/* 176A2C 801D2F4C 0C006424 */  jal   lbvector_Rotate
/* 176A30 801D2F50 24050002 */   li    $a1, 2
/* 176A34 801D2F54 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 176A38 801D2F58 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 176A3C 801D2F5C 3C03800E */  lui   $v1, %hi(gEntitiesNextPosXArray) # $v1, 0x800e
/* 176A40 801D2F60 246325D0 */  addiu $v1, %lo(gEntitiesNextPosXArray) # addiu $v1, $v1, 0x25d0
/* 176A44 801D2F64 8C4A0000 */  lw    $t2, ($v0)
/* 176A48 801D2F68 C4680000 */  lwc1  $f8, ($v1)
/* 176A4C 801D2F6C 44809000 */  mtc1  $zero, $f18
/* 176A50 801D2F70 000A5880 */  sll   $t3, $t2, 2
/* 176A54 801D2F74 006B6021 */  addu  $t4, $v1, $t3
/* 176A58 801D2F78 C58A0000 */  lwc1  $f10, ($t4)
/* 176A5C 801D2F7C E7B20030 */  swc1  $f18, 0x30($sp)
/* 176A60 801D2F80 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 176A64 801D2F84 460A4401 */  sub.s $f16, $f8, $f10
/* 176A68 801D2F88 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 176A6C 801D2F8C C4C40000 */  lwc1  $f4, ($a2)
/* 176A70 801D2F90 27A40038 */  addiu $a0, $sp, 0x38
/* 176A74 801D2F94 E7B0002C */  swc1  $f16, 0x2c($sp)
/* 176A78 801D2F98 8C4D0000 */  lw    $t5, ($v0)
/* 176A7C 801D2F9C 27A5002C */  addiu $a1, $sp, 0x2c
/* 176A80 801D2FA0 000D7880 */  sll   $t7, $t5, 2
/* 176A84 801D2FA4 00CF7021 */  addu  $t6, $a2, $t7
/* 176A88 801D2FA8 C5C60000 */  lwc1  $f6, ($t6)
/* 176A8C 801D2FAC 46062201 */  sub.s $f8, $f4, $f6
/* 176A90 801D2FB0 0C03E270 */  jal   vec3_abs_angle_diff
/* 176A94 801D2FB4 E7A80034 */   swc1  $f8, 0x34($sp)
/* 176A98 801D2FB8 E7A00028 */  swc1  $f0, 0x28($sp)
/* 176A9C 801D2FBC 0C006328 */  jal   lbvector_Normalize
/* 176AA0 801D2FC0 27A40038 */   addiu $a0, $sp, 0x38
/* 176AA4 801D2FC4 27A40038 */  addiu $a0, $sp, 0x38
/* 176AA8 801D2FC8 24050002 */  li    $a1, 2
/* 176AAC 801D2FCC 0C006424 */  jal   lbvector_Rotate
/* 176AB0 801D2FD0 8FA60028 */   lw    $a2, 0x28($sp)
/* 176AB4 801D2FD4 3C01801E */  lui   $at, %hi(D_801DB140_ovl8) # $at, 0x801e
/* 176AB8 801D2FD8 C420B140 */  lwc1  $f0, %lo(D_801DB140_ovl8)($at)
/* 176ABC 801D2FDC C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 176AC0 801D2FE0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 176AC4 801D2FE4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 176AC8 801D2FE8 460A0402 */  mul.s $f16, $f0, $f10
/* 176ACC 801D2FEC C7B20040 */  lwc1  $f18, 0x40($sp)
/* 176AD0 801D2FF0 8C580000 */  lw    $t8, ($v0)
/* 176AD4 801D2FF4 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 176AD8 801D2FF8 44811000 */  mtc1  $at, $f2
/* 176ADC 801D2FFC 3C01800E */ lui $at, %hi(D_800E3050)
/* 176AE0 801D3000 00184080 */  sll   $t0, $t8, 2
/* 176AE4 801D3004 46120102 */  mul.s $f4, $f0, $f18
/* 176AE8 801D3008 00280821 */  addu  $at, $at, $t0
/* 176AEC 801D300C E4303050 */ swc1 $f16, %lo(D_800E3050)($at)
/* 176AF0 801D3010 8C590000 */  lw    $t9, ($v0)
/* 176AF4 801D3014 3C01800E */ lui $at, %hi(D_800E33D0)
/* 176AF8 801D3018 00194880 */  sll   $t1, $t9, 2
/* 176AFC 801D301C 00290821 */  addu  $at, $at, $t1
/* 176B00 801D3020 E42433D0 */ swc1 $f4, %lo(D_800E33D0)($at)
/* 176B04 801D3024 8C4A0000 */  lw    $t2, ($v0)
/* 176B08 801D3028 3C01800E */ lui $at, %hi(D_800E3210)
/* 176B0C 801D302C 000A5880 */  sll   $t3, $t2, 2
/* 176B10 801D3030 002B0821 */  addu  $at, $at, $t3
/* 176B14 801D3034 E4223210 */ swc1 $f2, %lo(D_800E3210)($at)
/* 176B18 801D3038 8C4C0000 */  lw    $t4, ($v0)
/* 176B1C 801D303C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 176B20 801D3040 44813000 */  mtc1  $at, $f6
/* 176B24 801D3044 3C01800E */ lui $at, %hi(D_800E3750)
/* 176B28 801D3048 000C6880 */  sll   $t5, $t4, 2
/* 176B2C 801D304C 002D0821 */  addu  $at, $at, $t5
/* 176B30 801D3050 E4263750 */ swc1 $f6, %lo(D_800E3750)($at)
/* 176B34 801D3054 8C4F0000 */  lw    $t7, ($v0)
/* 176B38 801D3058 3C01800E */ lui $at, %hi(D_800E3C90)
/* 176B3C 801D305C 000F7080 */  sll   $t6, $t7, 2
/* 176B40 801D3060 002E0821 */  addu  $at, $at, $t6
/* 176B44 801D3064 0C02BE85 */  jal   func_800AFA14
/* 176B48 801D3068 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 176B4C 801D306C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 176B50 801D3070 27BD0050 */  addiu $sp, $sp, 0x50
/* 176B54 801D3074 03E00008 */  jr    $ra
/* 176B58 801D3078 00000000 */   nop   
.size func_801D2DE0_ovl8, . - func_801D2DE0_ovl8

glabel func_801D307C_ovl8
/* 176B5C 801D307C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 176B60 801D3080 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 176B64 801D3084 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 176B68 801D3088 AFBF0014 */  sw    $ra, 0x14($sp)
/* 176B6C 801D308C AFA40018 */  sw    $a0, 0x18($sp)
/* 176B70 801D3090 8C620000 */  lw    $v0, ($v1)
/* 176B74 801D3094 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 176B78 801D3098 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 176B7C 801D309C 00021080 */  sll   $v0, $v0, 2
/* 176B80 801D30A0 00C27021 */  addu  $t6, $a2, $v0
/* 176B84 801D30A4 44806000 */  mtc1  $zero, $f12
/* 176B88 801D30A8 C5C40000 */  lwc1  $f4, ($t6)
/* 176B8C 801D30AC 3C04800E */  lui   $a0, %hi(gEntitiesNextPosYArray) # $a0, 0x800e
/* 176B90 801D30B0 3C18800E */ lui $t8, %hi(D_800E0D50)
/* 176B94 801D30B4 460C203C */  c.lt.s $f4, $f12
/* 176B98 801D30B8 24842790 */  addiu $a0, %lo(gEntitiesNextPosYArray) # addiu $a0, $a0, 0x2790
/* 176B9C 801D30BC 0302C021 */  addu  $t8, $t8, $v0
/* 176BA0 801D30C0 45000059 */  bc1f  .L801D3228_ovl8
/* 176BA4 801D30C4 00000000 */   nop   
/* 176BA8 801D30C8 8F180D50 */ lw $t8, %lo(D_800E0D50)($t8)
/* 176BAC 801D30CC 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 176BB0 801D30D0 44813000 */  mtc1  $at, $f6
/* 176BB4 801D30D4 0018C880 */  sll   $t9, $t8, 2
/* 176BB8 801D30D8 00994021 */  addu  $t0, $a0, $t9
/* 176BBC 801D30DC C5020000 */  lwc1  $f2, ($t0)
/* 176BC0 801D30E0 00827821 */  addu  $t7, $a0, $v0
/* 176BC4 801D30E4 C5E00000 */  lwc1  $f0, ($t7)
/* 176BC8 801D30E8 46061200 */  add.s $f8, $f2, $f6
/* 176BCC 801D30EC 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 176BD0 801D30F0 3C013F00 */  lui   $at, 0x3f00
/* 176BD4 801D30F4 3C09800E */  lui   $t1, %hi(gEntitiesNextPosYArray) # $t1, 0x800e
/* 176BD8 801D30F8 4608003C */  c.lt.s $f0, $f8
/* 176BDC 801D30FC 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 176BE0 801D3100 45020011 */  bc1fl .L801D3148_ovl8
/* 176BE4 801D3104 3C0142F0 */   li    $at, 0x42F00000 # 120.000000
/* 176BE8 801D3108 44815000 */  mtc1  $at, $f10
/* 176BEC 801D310C 3C01800E */ lui $at, %hi(D_800E3750)
/* 176BF0 801D3110 00220821 */  addu  $at, $at, $v0
/* 176BF4 801D3114 E42A3750 */ swc1 $f10, %lo(D_800E3750)($at)
/* 176BF8 801D3118 8C620000 */  lw    $v0, ($v1)
/* 176BFC 801D311C 3C0B800E */ lui $t3, %hi(D_800E0D50)
/* 176C00 801D3120 25292790 */  addiu $t1, %lo(gEntitiesNextPosYArray) # addiu $t1, $t1, 0x2790
/* 176C04 801D3124 00021080 */  sll   $v0, $v0, 2
/* 176C08 801D3128 01625821 */  addu  $t3, $t3, $v0
/* 176C0C 801D312C 8D6B0D50 */ lw $t3, %lo(D_800E0D50)($t3)
/* 176C10 801D3130 00495021 */  addu  $t2, $v0, $t1
/* 176C14 801D3134 C5400000 */  lwc1  $f0, ($t2)
/* 176C18 801D3138 000B6080 */  sll   $t4, $t3, 2
/* 176C1C 801D313C 01896821 */  addu  $t5, $t4, $t1
/* 176C20 801D3140 C5A20000 */  lwc1  $f2, ($t5)
/* 176C24 801D3144 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
.L801D3148_ovl8:
/* 176C28 801D3148 44818000 */  mtc1  $at, $f16
/* 176C2C 801D314C 00827021 */  addu  $t6, $a0, $v0
/* 176C30 801D3150 46101480 */  add.s $f18, $f2, $f16
/* 176C34 801D3154 4612003C */  c.lt.s $f0, $f18
/* 176C38 801D3158 00000000 */  nop   
/* 176C3C 801D315C 45000032 */  bc1f  .L801D3228_ovl8
/* 176C40 801D3160 00000000 */   nop   
/* 176C44 801D3164 E5CC0000 */  swc1  $f12, ($t6)
/* 176C48 801D3168 8C620000 */  lw    $v0, ($v1)
/* 176C4C 801D316C 3C01800E */ lui $at, %hi(D_800E3750)
/* 176C50 801D3170 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 176C54 801D3174 00021080 */  sll   $v0, $v0, 2
/* 176C58 801D3178 00827821 */  addu  $t7, $a0, $v0
/* 176C5C 801D317C C5E00000 */  lwc1  $f0, ($t7)
/* 176C60 801D3180 00220821 */  addu  $at, $at, $v0
/* 176C64 801D3184 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 176C68 801D3188 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 176C6C 801D318C 8C780000 */  lw    $t8, ($v1)
/* 176C70 801D3190 3C01800E */ lui $at, %hi(D_800E3590)
/* 176C74 801D3194 0018C880 */  sll   $t9, $t8, 2
/* 176C78 801D3198 00390821 */  addu  $at, $at, $t9
/* 176C7C 801D319C E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 176C80 801D31A0 8C680000 */  lw    $t0, ($v1)
/* 176C84 801D31A4 3C01800E */ lui $at, %hi(D_800E33D0)
/* 176C88 801D31A8 00085080 */  sll   $t2, $t0, 2
/* 176C8C 801D31AC 002A0821 */  addu  $at, $at, $t2
/* 176C90 801D31B0 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 176C94 801D31B4 8C6B0000 */  lw    $t3, ($v1)
/* 176C98 801D31B8 3C01800E */ lui $at, %hi(D_800E3050)
/* 176C9C 801D31BC 000B6080 */  sll   $t4, $t3, 2
/* 176CA0 801D31C0 00CC4821 */  addu  $t1, $a2, $t4
/* 176CA4 801D31C4 E5200000 */  swc1  $f0, ($t1)
/* 176CA8 801D31C8 8C6D0000 */  lw    $t5, ($v1)
/* 176CAC 801D31CC 000D7080 */  sll   $t6, $t5, 2
/* 176CB0 801D31D0 002E0821 */  addu  $at, $at, $t6
/* 176CB4 801D31D4 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 176CB8 801D31D8 8C6F0000 */  lw    $t7, ($v1)
/* 176CBC 801D31DC 3C01801E */  lui   $at, %hi(D_801DB144_ovl8) # $at, 0x801e
/* 176CC0 801D31E0 C424B144 */  lwc1  $f4, %lo(D_801DB144_ovl8)($at)
/* 176CC4 801D31E4 000FC080 */  sll   $t8, $t7, 2
/* 176CC8 801D31E8 00B8C821 */  addu  $t9, $a1, $t8
/* 176CCC 801D31EC E7240000 */  swc1  $f4, ($t9)
/* 176CD0 801D31F0 8C620000 */  lw    $v0, ($v1)
/* 176CD4 801D31F4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 176CD8 801D31F8 00021080 */  sll   $v0, $v0, 2
/* 176CDC 801D31FC 00A24021 */  addu  $t0, $a1, $v0
/* 176CE0 801D3200 C5020000 */  lwc1  $f2, ($t0)
/* 176CE4 801D3204 00220821 */  addu  $at, $at, $v0
/* 176CE8 801D3208 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 176CEC 801D320C 8C6A0000 */  lw    $t2, ($v1)
/* 176CF0 801D3210 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 176CF4 801D3214 000A5880 */  sll   $t3, $t2, 2
/* 176CF8 801D3218 002B0821 */  addu  $at, $at, $t3
/* 176CFC 801D321C E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 176D00 801D3220 8C620000 */  lw    $v0, ($v1)
/* 176D04 801D3224 00021080 */  sll   $v0, $v0, 2
.L801D3228_ovl8:
/* 176D08 801D3228 3C01800F */ lui $at, %hi(D_800EB320)
/* 176D0C 801D322C 00220821 */  addu  $at, $at, $v0
/* 176D10 801D3230 C426B320 */ lwc1 $f6, %lo(D_800EB320)($at)
/* 176D14 801D3234 460C303E */  c.le.s $f6, $f12
/* 176D18 801D3238 00000000 */  nop   
/* 176D1C 801D323C 45020014 */  bc1fl .L801D3290_ovl8
/* 176D20 801D3240 8FBF0014 */   lw    $ra, 0x14($sp)
/* 176D24 801D3244 0C068220 */  jal   func_801A0880_ovl8
/* 176D28 801D3248 00000000 */   nop   
/* 176D2C 801D324C 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 176D30 801D3250 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 176D34 801D3254 3C09800F */ lui $t1, %hi(D_800E83E0)
/* 176D38 801D3258 24010001 */  li    $at, 1
/* 176D3C 801D325C 8D820000 */  lw    $v0, ($t4)
/* 176D40 801D3260 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 176D44 801D3264 3C05801D */  lui   $a1, %hi(D_801D4440) # $a1, 0x801d
/* 176D48 801D3268 00021080 */  sll   $v0, $v0, 2
/* 176D4C 801D326C 01224821 */  addu  $t1, $t1, $v0
/* 176D50 801D3270 8D2983E0 */ lw $t1, %lo(D_800E83E0)($t1)
/* 176D54 801D3274 00822021 */  addu  $a0, $a0, $v0
/* 176D58 801D3278 24A54440 */  addiu $a1, %lo(D_801D4440) # addiu $a1, $a1, 0x4440
/* 176D5C 801D327C 55210004 */  bnel  $t1, $at, .L801D3290_ovl8
/* 176D60 801D3280 8FBF0014 */   lw    $ra, 0x14($sp)
/* 176D64 801D3284 0C02C7B2 */  jal   assign_new_process_entry
/* 176D68 801D3288 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 176D6C 801D328C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801D3290_ovl8:
/* 176D70 801D3290 27BD0018 */  addiu $sp, $sp, 0x18
/* 176D74 801D3294 03E00008 */  jr    $ra
/* 176D78 801D3298 00000000 */   nop   
.size func_801D307C_ovl8, . - func_801D307C_ovl8

glabel func_801D329C_ovl8
/* 176D7C 801D329C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 176D80 801D32A0 AFB10028 */  sw    $s1, 0x28($sp)
/* 176D84 801D32A4 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 176D88 801D32A8 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 176D8C 801D32AC 8E230000 */  lw    $v1, ($s1)
/* 176D90 801D32B0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 176D94 801D32B4 AFB00024 */  sw    $s0, 0x24($sp)
/* 176D98 801D32B8 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 176D9C 801D32BC F7B40010 */  sdc1  $f20, 0x10($sp)
/* 176DA0 801D32C0 AFA40030 */  sw    $a0, 0x30($sp)
/* 176DA4 801D32C4 8C6F0000 */  lw    $t7, ($v1)
/* 176DA8 801D32C8 3C0E801D */  lui   $t6, %hi(D_801D34C0) # $t6, 0x801d
/* 176DAC 801D32CC 3C01800E */ lui $at, %hi(D_800DF150)
/* 176DB0 801D32D0 000FC080 */  sll   $t8, $t7, 2
/* 176DB4 801D32D4 00380821 */  addu  $at, $at, $t8
/* 176DB8 801D32D8 25CE34C0 */  addiu $t6, %lo(D_801D34C0) # addiu $t6, $t6, 0x34c0
/* 176DBC 801D32DC AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 176DC0 801D32E0 8C680000 */  lw    $t0, ($v1)
/* 176DC4 801D32E4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 176DC8 801D32E8 3C19800C */  lui   $t9, %hi(D_800B8020) # $t9, 0x800c
/* 176DCC 801D32EC 00084880 */  sll   $t1, $t0, 2
/* 176DD0 801D32F0 00290821 */  addu  $at, $at, $t1
/* 176DD4 801D32F4 27398020 */  addiu $t9, %lo(D_800B8020) # addiu $t9, $t9, -0x7fe0
/* 176DD8 801D32F8 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 176DDC 801D32FC 8C6B0000 */  lw    $t3, ($v1)
/* 176DE0 801D3300 3C05800E */  lui   $a1, %hi(D_800E5F90) # $a1, 0x800e
/* 176DE4 801D3304 24A55F90 */  addiu $a1, %lo(D_800E5F90) # addiu $a1, $a1, 0x5f90
/* 176DE8 801D3308 8CAA0000 */  lw    $t2, ($a1)
/* 176DEC 801D330C 000B6080 */  sll   $t4, $t3, 2
/* 176DF0 801D3310 00AC6821 */  addu  $t5, $a1, $t4
/* 176DF4 801D3314 ADAA0000 */  sw    $t2, ($t5)
/* 176DF8 801D3318 8C6F0000 */  lw    $t7, ($v1)
/* 176DFC 801D331C 3C06800E */  lui   $a2, %hi(D_800E6BD0) # $a2, 0x800e
/* 176E00 801D3320 24C66BD0 */  addiu $a2, %lo(D_800E6BD0) # addiu $a2, $a2, 0x6bd0
/* 176E04 801D3324 C4C40000 */  lwc1  $f4, ($a2)
/* 176E08 801D3328 000F7080 */  sll   $t6, $t7, 2
/* 176E0C 801D332C 00CEC021 */  addu  $t8, $a2, $t6
/* 176E10 801D3330 E7040000 */  swc1  $f4, ($t8)
/* 176E14 801D3334 8C680000 */  lw    $t0, ($v1)
/* 176E18 801D3338 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 176E1C 801D333C 44813000 */  mtc1  $at, $f6
/* 176E20 801D3340 3C10800F */  lui   $s0, %hi(D_800EB320) # $s0, 0x800f
/* 176E24 801D3344 2610B320 */  addiu $s0, %lo(D_800EB320) # addiu $s0, $s0, -0x4ce0
/* 176E28 801D3348 0008C880 */  sll   $t9, $t0, 2
/* 176E2C 801D334C 02194821 */  addu  $t1, $s0, $t9
/* 176E30 801D3350 E5260000 */  swc1  $f6, ($t1)
/* 176E34 801D3354 8C640000 */  lw    $a0, ($v1)
/* 176E38 801D3358 3C02800F */ lui $v0, %hi(D_800EA520)
/* 176E3C 801D335C 24010001 */  li    $at, 1
/* 176E40 801D3360 00042080 */  sll   $a0, $a0, 2
/* 176E44 801D3364 00441021 */  addu  $v0, $v0, $a0
/* 176E48 801D3368 8C42A520 */ lw $v0, %lo(D_800EA520)($v0)
/* 176E4C 801D336C 50400008 */  beql  $v0, $zero, .L801D3390_ovl8
/* 176E50 801D3370 3C040001 */   lui   $a0, 1
/* 176E54 801D3374 1041000F */  beq   $v0, $at, .L801D33B4_ovl8
/* 176E58 801D3378 24010002 */   li    $at, 2
/* 176E5C 801D337C 50410015 */  beql  $v0, $at, .L801D33D4_ovl8
/* 176E60 801D3380 3C040001 */   lui   $a0, 1
/* 176E64 801D3384 10000019 */  b     .L801D33EC_ovl8
/* 176E68 801D3388 3C014120 */   lui   $at, 0x4120
/* 176E6C 801D338C 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
.L801D3390_ovl8:
/* 176E70 801D3390 0C02A806 */  jal   func_800AA018
/* 176E74 801D3394 348405F9 */   ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 176E78 801D3398 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 176E7C 801D339C 0C02A806 */  jal   func_800AA018
/* 176E80 801D33A0 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 176E84 801D33A4 8E230000 */  lw    $v1, ($s1)
/* 176E88 801D33A8 8C640000 */  lw    $a0, ($v1)
/* 176E8C 801D33AC 1000000E */  b     .L801D33E8_ovl8
/* 176E90 801D33B0 00042080 */   sll   $a0, $a0, 2
.L801D33B4_ovl8:
/* 176E94 801D33B4 3C040001 */  lui   $a0, (0x00010601 >> 16) # lui $a0, 1
/* 176E98 801D33B8 0C02A806 */  jal   func_800AA018
/* 176E9C 801D33BC 34840601 */   ori   $a0, (0x00010601 & 0xFFFF) # ori $a0, $a0, 0x601
/* 176EA0 801D33C0 8E230000 */  lw    $v1, ($s1)
/* 176EA4 801D33C4 8C640000 */  lw    $a0, ($v1)
/* 176EA8 801D33C8 10000007 */  b     .L801D33E8_ovl8
/* 176EAC 801D33CC 00042080 */   sll   $a0, $a0, 2
/* 176EB0 801D33D0 3C040001 */  lui   $a0, (0x000105EF >> 16) # lui $a0, 1
.L801D33D4_ovl8:
/* 176EB4 801D33D4 0C02A806 */  jal   func_800AA018
/* 176EB8 801D33D8 348405EF */   ori   $a0, (0x000105EF & 0xFFFF) # ori $a0, $a0, 0x5ef
/* 176EBC 801D33DC 8E230000 */  lw    $v1, ($s1)
/* 176EC0 801D33E0 8C640000 */  lw    $a0, ($v1)
/* 176EC4 801D33E4 00042080 */  sll   $a0, $a0, 2
.L801D33E8_ovl8:
/* 176EC8 801D33E8 3C014120 */  li    $at, 0x41200000 # 10.000000
.L801D33EC_ovl8:
/* 176ECC 801D33EC 44810000 */  mtc1  $at, $f0
/* 176ED0 801D33F0 3C01800E */ lui $at, %hi(D_800E3210)
/* 176ED4 801D33F4 00240821 */  addu  $at, $at, $a0
/* 176ED8 801D33F8 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 176EDC 801D33FC 8C6B0000 */  lw    $t3, ($v1)
/* 176EE0 801D3400 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 176EE4 801D3404 44814000 */  mtc1  $at, $f8
/* 176EE8 801D3408 3C01800E */ lui $at, %hi(D_800E3750)
/* 176EEC 801D340C 000B6080 */  sll   $t4, $t3, 2
/* 176EF0 801D3410 002C0821 */  addu  $at, $at, $t4
/* 176EF4 801D3414 E4283750 */ swc1 $f8, %lo(D_800E3750)($at)
/* 176EF8 801D3418 8C6A0000 */  lw    $t2, ($v1)
/* 176EFC 801D341C 3C01800E */ lui $at, %hi(D_800E3C90)
/* 176F00 801D3420 4480B000 */  mtc1  $zero, $f22
/* 176F04 801D3424 000A6880 */  sll   $t5, $t2, 2
/* 176F08 801D3428 002D0821 */  addu  $at, $at, $t5
/* 176F0C 801D342C E4203C90 */ swc1 $f0, %lo(D_800E3C90)($at)
/* 176F10 801D3430 8C6F0000 */  lw    $t7, ($v1)
/* 176F14 801D3434 3C01801E */  lui   $at, %hi(D_801DB148_ovl8) # $at, 0x801e
/* 176F18 801D3438 000F7080 */  sll   $t6, $t7, 2
/* 176F1C 801D343C 020E1021 */  addu  $v0, $s0, $t6
/* 176F20 801D3440 C44A0000 */  lwc1  $f10, ($v0)
/* 176F24 801D3444 460AB03C */  c.lt.s $f22, $f10
/* 176F28 801D3448 00000000 */  nop   
/* 176F2C 801D344C 45000013 */  bc1f  .L801D349C_ovl8
/* 176F30 801D3450 00000000 */   nop   
/* 176F34 801D3454 C434B148 */  lwc1  $f20, %lo(D_801DB148_ovl8)($at)
.L801D3458_ovl8:
/* 176F38 801D3458 0C002DAF */  jal   finish_current_thread
/* 176F3C 801D345C 24040001 */   li    $a0, 1
/* 176F40 801D3460 8E230000 */  lw    $v1, ($s1)
/* 176F44 801D3464 8C780000 */  lw    $t8, ($v1)
/* 176F48 801D3468 00184080 */  sll   $t0, $t8, 2
/* 176F4C 801D346C 02081021 */  addu  $v0, $s0, $t0
/* 176F50 801D3470 C4500000 */  lwc1  $f16, ($v0)
/* 176F54 801D3474 46148481 */  sub.s $f18, $f16, $f20
/* 176F58 801D3478 E4520000 */  swc1  $f18, ($v0)
/* 176F5C 801D347C 8C790000 */  lw    $t9, ($v1)
/* 176F60 801D3480 00194880 */  sll   $t1, $t9, 2
/* 176F64 801D3484 02091021 */  addu  $v0, $s0, $t1
/* 176F68 801D3488 C4440000 */  lwc1  $f4, ($v0)
/* 176F6C 801D348C 4604B03C */  c.lt.s $f22, $f4
/* 176F70 801D3490 00000000 */  nop   
/* 176F74 801D3494 4501FFF0 */  bc1t  .L801D3458_ovl8
/* 176F78 801D3498 00000000 */   nop   
.L801D349C_ovl8:
/* 176F7C 801D349C 0C02BE85 */  jal   func_800AFA14
/* 176F80 801D34A0 E4560000 */   swc1  $f22, ($v0)
/* 176F84 801D34A4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 176F88 801D34A8 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 176F8C 801D34AC D7B60018 */  ldc1  $f22, 0x18($sp)
/* 176F90 801D34B0 8FB00024 */  lw    $s0, 0x24($sp)
/* 176F94 801D34B4 8FB10028 */  lw    $s1, 0x28($sp)
/* 176F98 801D34B8 03E00008 */  jr    $ra
/* 176F9C 801D34BC 27BD0030 */   addiu $sp, $sp, 0x30
.size func_801D329C_ovl8, . - func_801D329C_ovl8

glabel func_801D34C0_ovl8
/* 176FA0 801D34C0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 176FA4 801D34C4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 176FA8 801D34C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 176FAC 801D34CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 176FB0 801D34D0 AFA40018 */  sw    $a0, 0x18($sp)
/* 176FB4 801D34D4 8C620000 */  lw    $v0, ($v1)
/* 176FB8 801D34D8 3C05800E */  lui   $a1, %hi(D_800E3210) # $a1, 0x800e
/* 176FBC 801D34DC 24A53210 */  addiu $a1, %lo(D_800E3210) # addiu $a1, $a1, 0x3210
/* 176FC0 801D34E0 00021080 */  sll   $v0, $v0, 2
/* 176FC4 801D34E4 00A27021 */  addu  $t6, $a1, $v0
/* 176FC8 801D34E8 44806000 */  mtc1  $zero, $f12
/* 176FCC 801D34EC C5C40000 */  lwc1  $f4, ($t6)
/* 176FD0 801D34F0 3C04800E */  lui   $a0, %hi(gEntitiesNextPosYArray) # $a0, 0x800e
/* 176FD4 801D34F4 24842790 */  addiu $a0, %lo(gEntitiesNextPosYArray) # addiu $a0, $a0, 0x2790
/* 176FD8 801D34F8 460C203C */  c.lt.s $f4, $f12
/* 176FDC 801D34FC 3C18800D */  lui   $t8, %hi(D_800D7098) # $t8, 0x800d
/* 176FE0 801D3500 45000033 */  bc1f  .L801D35D0_ovl8
/* 176FE4 801D3504 00000000 */   nop   
/* 176FE8 801D3508 8F187098 */  lw    $t8, %lo(D_800D7098)($t8)
/* 176FEC 801D350C 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 176FF0 801D3510 44813000 */  mtc1  $at, $f6
/* 176FF4 801D3514 0018C880 */  sll   $t9, $t8, 2
/* 176FF8 801D3518 00994021 */  addu  $t0, $a0, $t9
/* 176FFC 801D351C C5020000 */  lwc1  $f2, ($t0)
/* 177000 801D3520 00827821 */  addu  $t7, $a0, $v0
/* 177004 801D3524 C5E00000 */  lwc1  $f0, ($t7)
/* 177008 801D3528 46061200 */  add.s $f8, $f2, $f6
/* 17700C 801D352C 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 177010 801D3530 3C013E80 */  lui   $at, 0x3e80
/* 177014 801D3534 4608003C */  c.lt.s $f0, $f8
/* 177018 801D3538 00000000 */  nop   
/* 17701C 801D353C 4502000B */  bc1fl .L801D356C_ovl8
/* 177020 801D3540 3C0142F0 */   li    $at, 0x42F00000 # 120.000000
/* 177024 801D3544 44815000 */  mtc1  $at, $f10
/* 177028 801D3548 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 17702C 801D354C 00824821 */  addu  $t1, $a0, $v0
/* 177030 801D3550 E52A0000 */  swc1  $f10, ($t1)
/* 177034 801D3554 8C620000 */  lw    $v0, ($v1)
/* 177038 801D3558 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 17703C 801D355C 00021080 */  sll   $v0, $v0, 2
/* 177040 801D3560 00220821 */  addu  $at, $at, $v0
/* 177044 801D3564 C4202790 */ lwc1 $f0, %lo(gEntitiesNextPosYArray)($at)
/* 177048 801D3568 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
.L801D356C_ovl8:
/* 17704C 801D356C 44818000 */  mtc1  $at, $f16
/* 177050 801D3570 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 177054 801D3574 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 177058 801D3578 46101480 */  add.s $f18, $f2, $f16
/* 17705C 801D357C 00825021 */  addu  $t2, $a0, $v0
/* 177060 801D3580 4612003C */  c.lt.s $f0, $f18
/* 177064 801D3584 00000000 */  nop   
/* 177068 801D3588 45000011 */  bc1f  .L801D35D0_ovl8
/* 17706C 801D358C 00000000 */   nop   
/* 177070 801D3590 E54C0000 */  swc1  $f12, ($t2)
/* 177074 801D3594 8C620000 */  lw    $v0, ($v1)
/* 177078 801D3598 3C01801E */  lui   $at, %hi(D_801DB14C_ovl8) # $at, 0x801e
/* 17707C 801D359C 00021080 */  sll   $v0, $v0, 2
/* 177080 801D35A0 00825821 */  addu  $t3, $a0, $v0
/* 177084 801D35A4 C5640000 */  lwc1  $f4, ($t3)
/* 177088 801D35A8 00A26021 */  addu  $t4, $a1, $v0
/* 17708C 801D35AC E5840000 */  swc1  $f4, ($t4)
/* 177090 801D35B0 8C6D0000 */  lw    $t5, ($v1)
/* 177094 801D35B4 C426B14C */  lwc1  $f6, %lo(D_801DB14C_ovl8)($at)
/* 177098 801D35B8 3C01800E */ lui $at, %hi(D_800E3C90)
/* 17709C 801D35BC 000D7080 */  sll   $t6, $t5, 2
/* 1770A0 801D35C0 002E0821 */  addu  $at, $at, $t6
/* 1770A4 801D35C4 E4263C90 */ swc1 $f6, %lo(D_800E3C90)($at)
/* 1770A8 801D35C8 8C620000 */  lw    $v0, ($v1)
/* 1770AC 801D35CC 00021080 */  sll   $v0, $v0, 2
.L801D35D0_ovl8:
/* 1770B0 801D35D0 3C01800F */ lui $at, %hi(D_800EB320)
/* 1770B4 801D35D4 00220821 */  addu  $at, $at, $v0
/* 1770B8 801D35D8 C428B320 */ lwc1 $f8, %lo(D_800EB320)($at)
/* 1770BC 801D35DC 460C403E */  c.le.s $f8, $f12
/* 1770C0 801D35E0 00000000 */  nop   
/* 1770C4 801D35E4 45020014 */  bc1fl .L801D3638_ovl8
/* 1770C8 801D35E8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1770CC 801D35EC 0C068220 */  jal   func_801A0880_ovl8
/* 1770D0 801D35F0 00000000 */   nop   
/* 1770D4 801D35F4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1770D8 801D35F8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1770DC 801D35FC 3C18800F */ lui $t8, %hi(D_800E83E0)
/* 1770E0 801D3600 24010001 */  li    $at, 1
/* 1770E4 801D3604 8DE20000 */  lw    $v0, ($t7)
/* 1770E8 801D3608 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1770EC 801D360C 3C05801D */  lui   $a1, %hi(D_801D4440) # $a1, 0x801d
/* 1770F0 801D3610 00021080 */  sll   $v0, $v0, 2
/* 1770F4 801D3614 0302C021 */  addu  $t8, $t8, $v0
/* 1770F8 801D3618 8F1883E0 */ lw $t8, %lo(D_800E83E0)($t8)
/* 1770FC 801D361C 00822021 */  addu  $a0, $a0, $v0
/* 177100 801D3620 24A54440 */  addiu $a1, %lo(D_801D4440) # addiu $a1, $a1, 0x4440
/* 177104 801D3624 57010004 */  bnel  $t8, $at, .L801D3638_ovl8
/* 177108 801D3628 8FBF0014 */   lw    $ra, 0x14($sp)
/* 17710C 801D362C 0C02C7B2 */  jal   assign_new_process_entry
/* 177110 801D3630 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 177114 801D3634 8FBF0014 */  lw    $ra, 0x14($sp)
.L801D3638_ovl8:
/* 177118 801D3638 27BD0018 */  addiu $sp, $sp, 0x18
/* 17711C 801D363C 03E00008 */  jr    $ra
/* 177120 801D3640 00000000 */   nop   
.size func_801D34C0_ovl8, . - func_801D34C0_ovl8

glabel func_801D3644_ovl8
/* 177124 801D3644 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 177128 801D3648 AFB20028 */  sw    $s2, 0x28($sp)
/* 17712C 801D364C 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 177130 801D3650 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 177134 801D3654 8E430000 */  lw    $v1, ($s2)
/* 177138 801D3658 AFBF002C */  sw    $ra, 0x2c($sp)
/* 17713C 801D365C AFB10024 */  sw    $s1, 0x24($sp)
/* 177140 801D3660 AFB00020 */  sw    $s0, 0x20($sp)
/* 177144 801D3664 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 177148 801D3668 AFA40038 */  sw    $a0, 0x38($sp)
/* 17714C 801D366C 8C6F0000 */  lw    $t7, ($v1)
/* 177150 801D3670 3C01801E */  lui   $at, %hi(D_801DB150_ovl8) # $at, 0x801e
/* 177154 801D3674 C422B150 */  lwc1  $f2, %lo(D_801DB150_ovl8)($at)
/* 177158 801D3678 3C01800E */ lui $at, %hi(D_800DEF90)
/* 17715C 801D367C 3C0E800B */  lui   $t6, %hi(D_800B7790) # $t6, 0x800b
/* 177160 801D3680 000FC080 */  sll   $t8, $t7, 2
/* 177164 801D3684 00380821 */  addu  $at, $at, $t8
/* 177168 801D3688 25CE7790 */  addiu $t6, %lo(D_800B7790) # addiu $t6, $t6, 0x7790
/* 17716C 801D368C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 177170 801D3690 8C680000 */  lw    $t0, ($v1)
/* 177174 801D3694 3C01800E */ lui $at, %hi(D_800DF150)
/* 177178 801D3698 3C19801D */  lui   $t9, %hi(D_801D3B14) # $t9, 0x801d
/* 17717C 801D369C 00084880 */  sll   $t1, $t0, 2
/* 177180 801D36A0 00290821 */  addu  $at, $at, $t1
/* 177184 801D36A4 27393B14 */  addiu $t9, %lo(D_801D3B14) # addiu $t9, $t9, 0x3b14
/* 177188 801D36A8 AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 17718C 801D36AC 8C6A0000 */  lw    $t2, ($v1)
/* 177190 801D36B0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 177194 801D36B4 44812000 */  mtc1  $at, $f4
/* 177198 801D36B8 3C01800E */ lui $at, %hi(D_800E6A10)
/* 17719C 801D36BC 000A5880 */  sll   $t3, $t2, 2
/* 1771A0 801D36C0 002B0821 */  addu  $at, $at, $t3
/* 1771A4 801D36C4 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1771A8 801D36C8 8C650000 */  lw    $a1, ($v1)
/* 1771AC 801D36CC 3C0C800E */ lui $t4, %hi(D_800E5F90)
/* 1771B0 801D36D0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 1771B4 801D36D4 00052880 */  sll   $a1, $a1, 2
/* 1771B8 801D36D8 01856021 */  addu  $t4, $t4, $a1
/* 1771BC 801D36DC 8D8C5F90 */ lw $t4, %lo(D_800E5F90)($t4)
/* 1771C0 801D36E0 00250821 */  addu  $at, $at, $a1
/* 1771C4 801D36E4 24100001 */  li    $s0, 1
/* 1771C8 801D36E8 AC2C98E0 */ sw $t4, %lo(D_800E98E0)($at)
/* 1771CC 801D36EC 8C650000 */  lw    $a1, ($v1)
/* 1771D0 801D36F0 3C01800E */ lui $at, %hi(D_800E6BD0)
/* 1771D4 801D36F4 3C08800F */  lui   $t0, %hi(D_800E8AE0) # $t0, 0x800f
/* 1771D8 801D36F8 00052880 */  sll   $a1, $a1, 2
/* 1771DC 801D36FC 00250821 */  addu  $at, $at, $a1
/* 1771E0 801D3700 C4266BD0 */ lwc1 $f6, %lo(D_800E6BD0)($at)
/* 1771E4 801D3704 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1771E8 801D3708 00250821 */  addu  $at, $at, $a1
/* 1771EC 801D370C E426A6E0 */ swc1 $f6, %lo(D_800EA6E0)($at)
/* 1771F0 801D3710 8C6D0000 */  lw    $t5, ($v1)
/* 1771F4 801D3714 3C01800F */ lui $at, %hi(D_800E8E60)
/* 1771F8 801D3718 25088AE0 */  addiu $t0, %lo(D_800E8AE0) # addiu $t0, $t0, -0x7520
/* 1771FC 801D371C 000D7880 */  sll   $t7, $t5, 2
/* 177200 801D3720 002F0821 */  addu  $at, $at, $t7
/* 177204 801D3724 AC308E60 */ sw $s0, %lo(D_800E8E60)($at)
/* 177208 801D3728 8C6E0000 */  lw    $t6, ($v1)
/* 17720C 801D372C 3C0A800E */ lui $t2, %hi(D_800E0D50)
/* 177210 801D3730 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 177214 801D3734 000EC080 */  sll   $t8, $t6, 2
/* 177218 801D3738 03083021 */  addu  $a2, $t8, $t0
/* 17721C 801D373C 8CD90000 */  lw    $t9, ($a2)
/* 177220 801D3740 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 177224 801D3744 4480A000 */  mtc1  $zero, $f20
/* 177228 801D3748 37290001 */  ori   $t1, $t9, 1
/* 17722C 801D374C ACC90000 */  sw    $t1, ($a2)
/* 177230 801D3750 8C650000 */  lw    $a1, ($v1)
/* 177234 801D3754 3C01801E */  lui   $at, %hi(D_801DB154_ovl8) # $at, 0x801e
/* 177238 801D3758 00052880 */  sll   $a1, $a1, 2
/* 17723C 801D375C 01455021 */  addu  $t2, $t2, $a1
/* 177240 801D3760 8D4A0D50 */ lw $t2, %lo(D_800E0D50)($t2)
/* 177244 801D3764 00856821 */  addu  $t5, $a0, $a1
/* 177248 801D3768 000A5880 */  sll   $t3, $t2, 2
/* 17724C 801D376C 008B6021 */  addu  $t4, $a0, $t3
/* 177250 801D3770 C5880000 */  lwc1  $f8, ($t4)
/* 177254 801D3774 E5A80000 */  swc1  $f8, ($t5)
/* 177258 801D3778 8C6F0000 */  lw    $t7, ($v1)
/* 17725C 801D377C 000F7080 */  sll   $t6, $t7, 2
/* 177260 801D3780 008E1021 */  addu  $v0, $a0, $t6
/* 177264 801D3784 C4400000 */  lwc1  $f0, ($v0)
/* 177268 801D3788 4600103E */  c.le.s $f2, $f0
/* 17726C 801D378C 00000000 */  nop   
/* 177270 801D3790 4502000C */  bc1fl .L801D37C4_ovl8
/* 177274 801D3794 4614003C */   c.lt.s $f0, $f20
/* 177278 801D3798 46020281 */  sub.s $f10, $f0, $f2
.L801D379C_ovl8:
/* 17727C 801D379C E44A0000 */  swc1  $f10, ($v0)
/* 177280 801D37A0 8C780000 */  lw    $t8, ($v1)
/* 177284 801D37A4 00184080 */  sll   $t0, $t8, 2
/* 177288 801D37A8 00881021 */  addu  $v0, $a0, $t0
/* 17728C 801D37AC C4400000 */  lwc1  $f0, ($v0)
/* 177290 801D37B0 4600103E */  c.le.s $f2, $f0
/* 177294 801D37B4 00000000 */  nop   
/* 177298 801D37B8 4503FFF8 */  bc1tl .L801D379C_ovl8
/* 17729C 801D37BC 46020281 */   sub.s $f10, $f0, $f2
/* 1772A0 801D37C0 4614003C */  c.lt.s $f0, $f20
.L801D37C4_ovl8:
/* 1772A4 801D37C4 00000000 */  nop   
/* 1772A8 801D37C8 4500000B */  bc1f  .L801D37F8_ovl8
/* 1772AC 801D37CC 00000000 */   nop   
/* 1772B0 801D37D0 46020400 */  add.s $f16, $f0, $f2
.L801D37D4_ovl8:
/* 1772B4 801D37D4 E4500000 */  swc1  $f16, ($v0)
/* 1772B8 801D37D8 8C790000 */  lw    $t9, ($v1)
/* 1772BC 801D37DC 00194880 */  sll   $t1, $t9, 2
/* 1772C0 801D37E0 00891021 */  addu  $v0, $a0, $t1
/* 1772C4 801D37E4 C4400000 */  lwc1  $f0, ($v0)
/* 1772C8 801D37E8 4614003C */  c.lt.s $f0, $f20
/* 1772CC 801D37EC 00000000 */  nop   
/* 1772D0 801D37F0 4503FFF8 */  bc1tl .L801D37D4_ovl8
/* 1772D4 801D37F4 46020400 */   add.s $f16, $f0, $f2
.L801D37F8_ovl8:
/* 1772D8 801D37F8 C432B154 */  lwc1  $f18, %lo(D_801DB154_ovl8)($at)
/* 1772DC 801D37FC 46120300 */  add.s $f12, $f0, $f18
/* 1772E0 801D3800 0C00D604 */  jal   cosf
/* 1772E4 801D3804 E7AC0034 */   swc1  $f12, 0x34($sp)
/* 1772E8 801D3808 3C01C3A0 */  li    $at, 0xC3A00000 # -320.000000
/* 1772EC 801D380C 44812000 */  mtc1  $at, $f4
/* 1772F0 801D3810 C7AC0034 */  lwc1  $f12, 0x34($sp)
/* 1772F4 801D3814 46002183 */  div.s $f6, $f4, $f0
/* 1772F8 801D3818 0C00B5B8 */  jal   sinf
/* 1772FC 801D381C E7A60030 */   swc1  $f6, 0x30($sp)
/* 177300 801D3820 8E4A0000 */  lw    $t2, ($s2)
/* 177304 801D3824 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 177308 801D3828 3C0D800E */  lui   $t5, %hi(gEntitiesNextPosXArray) # $t5, 0x800e
/* 17730C 801D382C 8D4B0000 */  lw    $t3, ($t2)
/* 177310 801D3830 46080282 */  mul.s $f10, $f0, $f8
/* 177314 801D3834 25AD25D0 */  addiu $t5, %lo(gEntitiesNextPosXArray) # addiu $t5, $t5, 0x25d0
/* 177318 801D3838 000B6080 */  sll   $t4, $t3, 2
/* 17731C 801D383C 018D1021 */  addu  $v0, $t4, $t5
/* 177320 801D3840 C4500000 */  lwc1  $f16, ($v0)
/* 177324 801D3844 C7AC0034 */  lwc1  $f12, 0x34($sp)
/* 177328 801D3848 46105480 */  add.s $f18, $f10, $f16
/* 17732C 801D384C 0C00D604 */  jal   cosf
/* 177330 801D3850 E4520000 */   swc1  $f18, ($v0)
/* 177334 801D3854 8E430000 */  lw    $v1, ($s2)
/* 177338 801D3858 C7A40030 */  lwc1  $f4, 0x30($sp)
/* 17733C 801D385C 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 177340 801D3860 8C6F0000 */  lw    $t7, ($v1)
/* 177344 801D3864 46040182 */  mul.s $f6, $f0, $f4
/* 177348 801D3868 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 17734C 801D386C 000F7080 */  sll   $t6, $t7, 2
/* 177350 801D3870 01D81021 */  addu  $v0, $t6, $t8
/* 177354 801D3874 C4480000 */  lwc1  $f8, ($v0)
/* 177358 801D3878 3C11800E */  lui   $s1, %hi(gEntitiesNextPosYArray) # $s1, 0x800e
/* 17735C 801D387C 26312790 */  addiu $s1, %lo(gEntitiesNextPosYArray) # addiu $s1, $s1, 0x2790
/* 177360 801D3880 46083280 */  add.s $f10, $f6, $f8
/* 177364 801D3884 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 177368 801D3888 44819000 */  mtc1  $at, $f18
/* 17736C 801D388C 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 177370 801D3890 E44A0000 */  swc1  $f10, ($v0)
/* 177374 801D3894 8C680000 */  lw    $t0, ($v1)
/* 177378 801D3898 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 17737C 801D389C 3C01801E */  lui   $at, %hi(D_801DB158_ovl8) # $at, 0x801e
/* 177380 801D38A0 0008C880 */  sll   $t9, $t0, 2
/* 177384 801D38A4 02393021 */  addu  $a2, $s1, $t9
/* 177388 801D38A8 C4D00000 */  lwc1  $f16, ($a2)
/* 17738C 801D38AC 3C07800F */ lui $a3, %hi(D_800EA520)
/* 177390 801D38B0 46128101 */  sub.s $f4, $f16, $f18
/* 177394 801D38B4 E4C40000 */  swc1  $f4, ($a2)
/* 177398 801D38B8 8C650000 */  lw    $a1, ($v1)
/* 17739C 801D38BC C428B158 */  lwc1  $f8, %lo(D_801DB158_ovl8)($at)
/* 1773A0 801D38C0 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 1773A4 801D38C4 00052880 */  sll   $a1, $a1, 2
/* 1773A8 801D38C8 00854821 */  addu  $t1, $a0, $a1
/* 1773AC 801D38CC C5260000 */  lwc1  $f6, ($t1)
/* 1773B0 801D38D0 00250821 */  addu  $at, $at, $a1
/* 1773B4 801D38D4 46083281 */  sub.s $f10, $f6, $f8
/* 1773B8 801D38D8 E42A41D0 */ swc1 $f10, %lo(gEntitiesAngleYArray)($at)
/* 1773BC 801D38DC 8C650000 */  lw    $a1, ($v1)
/* 1773C0 801D38E0 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 1773C4 801D38E4 00052880 */  sll   $a1, $a1, 2
/* 1773C8 801D38E8 00E53821 */  addu  $a3, $a3, $a1
/* 1773CC 801D38EC 8CE7A520 */ lw $a3, %lo(D_800EA520)($a3)
/* 1773D0 801D38F0 50E00009 */  beql  $a3, $zero, .L801D3918_ovl8
/* 1773D4 801D38F4 44810000 */   mtc1  $at, $f0
/* 1773D8 801D38F8 10F0001E */  beq   $a3, $s0, .L801D3974_ovl8
/* 1773DC 801D38FC 3C040001 */   lui   $a0, 1
/* 1773E0 801D3900 24010002 */  li    $at, 2
/* 1773E4 801D3904 10E10021 */  beq   $a3, $at, .L801D398C_ovl8
/* 1773E8 801D3908 3C040001 */   lui   $a0, 1
/* 1773EC 801D390C 10000025 */  b     .L801D39A4_ovl8
/* 1773F0 801D3910 3C0141A0 */   li    $at, 0x41A00000 # 20.000000
/* 1773F4 801D3914 44810000 */  mtc1  $at, $f0
.L801D3918_ovl8:
/* 1773F8 801D3918 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 1773FC 801D391C 00250821 */  addu  $at, $at, $a1
/* 177400 801D3920 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 177404 801D3924 8C6A0000 */  lw    $t2, ($v1)
/* 177408 801D3928 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 17740C 801D392C 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
/* 177410 801D3930 000A5880 */  sll   $t3, $t2, 2
/* 177414 801D3934 002B0821 */  addu  $at, $at, $t3
/* 177418 801D3938 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 17741C 801D393C 8C6C0000 */  lw    $t4, ($v1)
/* 177420 801D3940 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 177424 801D3944 348405F9 */  ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 177428 801D3948 000C6880 */  sll   $t5, $t4, 2
/* 17742C 801D394C 002D0821 */  addu  $at, $at, $t5
/* 177430 801D3950 0C02A806 */  jal   func_800AA018
/* 177434 801D3954 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 177438 801D3958 3C040001 */  lui   $a0, (0x000105EF >> 16) # lui $a0, 1
/* 17743C 801D395C 0C02A806 */  jal   func_800AA018
/* 177440 801D3960 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 177444 801D3964 8E430000 */  lw    $v1, ($s2)
/* 177448 801D3968 8C650000 */  lw    $a1, ($v1)
/* 17744C 801D396C 1000000C */  b     .L801D39A0_ovl8
/* 177450 801D3970 00052880 */   sll   $a1, $a1, 2
.L801D3974_ovl8:
/* 177454 801D3974 0C02A806 */  jal   func_800AA018
/* 177458 801D3978 34840601 */   ori   $a0, (0x00010601 & 0xFFFF) # ori $a0, $a0, 0x601
/* 17745C 801D397C 8E430000 */  lw    $v1, ($s2)
/* 177460 801D3980 8C650000 */  lw    $a1, ($v1)
/* 177464 801D3984 10000006 */  b     .L801D39A0_ovl8
/* 177468 801D3988 00052880 */   sll   $a1, $a1, 2
.L801D398C_ovl8:
/* 17746C 801D398C 0C02A806 */  jal   func_800AA018
/* 177470 801D3990 348405EF */   ori   $a0, (0x000105EF & 0xFFFF) # ori $a0, $a0, 0x5ef
/* 177474 801D3994 8E430000 */  lw    $v1, ($s2)
/* 177478 801D3998 8C650000 */  lw    $a1, ($v1)
/* 17747C 801D399C 00052880 */  sll   $a1, $a1, 2
.L801D39A0_ovl8:
/* 177480 801D39A0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
.L801D39A4_ovl8:
/* 177484 801D39A4 44818000 */  mtc1  $at, $f16
/* 177488 801D39A8 3C01800E */ lui $at, %hi(D_800E3210)
/* 17748C 801D39AC 00250821 */  addu  $at, $at, $a1
/* 177490 801D39B0 E4303210 */ swc1 $f16, %lo(D_800E3210)($at)
/* 177494 801D39B4 8C650000 */  lw    $a1, ($v1)
/* 177498 801D39B8 3C10800D */  lui   $s0, %hi(D_800D70D8) # $s0, 0x800d
/* 17749C 801D39BC 261070D8 */  addiu $s0, %lo(D_800D70D8) # addiu $s0, $s0, 0x70d8
/* 1774A0 801D39C0 00052880 */  sll   $a1, $a1, 2
/* 1774A4 801D39C4 02257821 */  addu  $t7, $s1, $a1
/* 1774A8 801D39C8 C5F20000 */  lwc1  $f18, ($t7)
/* 1774AC 801D39CC C6040000 */  lwc1  $f4, ($s0)
/* 1774B0 801D39D0 4604903C */  c.lt.s $f18, $f4
/* 1774B4 801D39D4 00000000 */  nop   
/* 1774B8 801D39D8 4500000D */  bc1f  .L801D3A10_ovl8
/* 1774BC 801D39DC 00000000 */   nop   
.L801D39E0_ovl8:
/* 1774C0 801D39E0 0C002DAF */  jal   finish_current_thread
/* 1774C4 801D39E4 24040001 */   li    $a0, 1
/* 1774C8 801D39E8 8E4E0000 */  lw    $t6, ($s2)
/* 1774CC 801D39EC C6080000 */  lwc1  $f8, ($s0)
/* 1774D0 801D39F0 8DC50000 */  lw    $a1, ($t6)
/* 1774D4 801D39F4 00052880 */  sll   $a1, $a1, 2
/* 1774D8 801D39F8 0225C021 */  addu  $t8, $s1, $a1
/* 1774DC 801D39FC C7060000 */  lwc1  $f6, ($t8)
/* 1774E0 801D3A00 4608303C */  c.lt.s $f6, $f8
/* 1774E4 801D3A04 00000000 */  nop   
/* 1774E8 801D3A08 4501FFF5 */  bc1t  .L801D39E0_ovl8
/* 1774EC 801D3A0C 00000000 */   nop   
.L801D3A10_ovl8:
/* 1774F0 801D3A10 3C10800E */  lui   $s0, %hi(D_800E3750) # $s0, 0x800e
/* 1774F4 801D3A14 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1774F8 801D3A18 44815000 */  mtc1  $at, $f10
/* 1774FC 801D3A1C 26103750 */  addiu $s0, %lo(D_800E3750) # addiu $s0, $s0, 0x3750
/* 177500 801D3A20 02054021 */  addu  $t0, $s0, $a1
/* 177504 801D3A24 24040014 */  li    $a0, 20
/* 177508 801D3A28 0C002DAF */  jal   finish_current_thread
/* 17750C 801D3A2C E50A0000 */   swc1  $f10, ($t0)
/* 177510 801D3A30 8E430000 */  lw    $v1, ($s2)
/* 177514 801D3A34 3C01800E */ lui $at, %hi(D_800E3210)
/* 177518 801D3A38 3C18800B */  lui   $t8, %hi(D_800B72AC) # $t8, 0x800b
/* 17751C 801D3A3C 8C790000 */  lw    $t9, ($v1)
/* 177520 801D3A40 271872AC */  addiu $t8, %lo(D_800B72AC) # addiu $t8, $t8, 0x72ac
/* 177524 801D3A44 00194880 */  sll   $t1, $t9, 2
/* 177528 801D3A48 02095021 */  addu  $t2, $s0, $t1
/* 17752C 801D3A4C E5540000 */  swc1  $f20, ($t2)
/* 177530 801D3A50 8C650000 */  lw    $a1, ($v1)
/* 177534 801D3A54 3C09800F */ lui $t1, %hi(D_800E98E0)
/* 177538 801D3A58 00052880 */  sll   $a1, $a1, 2
/* 17753C 801D3A5C 02055821 */  addu  $t3, $s0, $a1
/* 177540 801D3A60 C5700000 */  lwc1  $f16, ($t3)
/* 177544 801D3A64 00250821 */  addu  $at, $at, $a1
/* 177548 801D3A68 E4303210 */ swc1 $f16, %lo(D_800E3210)($at)
/* 17754C 801D3A6C 8C6C0000 */  lw    $t4, ($v1)
/* 177550 801D3A70 3C01801E */  lui   $at, %hi(D_801DB15C_ovl8) # $at, 0x801e
/* 177554 801D3A74 C432B15C */  lwc1  $f18, %lo(D_801DB15C_ovl8)($at)
/* 177558 801D3A78 3C01800E */ lui $at, %hi(D_800E3C90)
/* 17755C 801D3A7C 000C6880 */  sll   $t5, $t4, 2
/* 177560 801D3A80 002D0821 */  addu  $at, $at, $t5
/* 177564 801D3A84 E4323C90 */ swc1 $f18, %lo(D_800E3C90)($at)
/* 177568 801D3A88 8C6F0000 */  lw    $t7, ($v1)
/* 17756C 801D3A8C 3C01800F */ lui $at, %hi(D_800E8E60)
/* 177570 801D3A90 000F7080 */  sll   $t6, $t7, 2
/* 177574 801D3A94 002E0821 */  addu  $at, $at, $t6
/* 177578 801D3A98 AC208E60 */ sw $zero, %lo(D_800E8E60)($at)
/* 17757C 801D3A9C 8C680000 */  lw    $t0, ($v1)
/* 177580 801D3AA0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 177584 801D3AA4 0008C880 */  sll   $t9, $t0, 2
/* 177588 801D3AA8 00390821 */  addu  $at, $at, $t9
/* 17758C 801D3AAC AC38EF90 */ sw $t8, %lo(D_800DEF90)($at)
/* 177590 801D3AB0 8C650000 */  lw    $a1, ($v1)
/* 177594 801D3AB4 3C01800E */ lui $at, %hi(D_800E5F90)
/* 177598 801D3AB8 00052880 */  sll   $a1, $a1, 2
/* 17759C 801D3ABC 01254821 */  addu  $t1, $t1, $a1
/* 1775A0 801D3AC0 8D2998E0 */ lw $t1, %lo(D_800E98E0)($t1)
/* 1775A4 801D3AC4 00250821 */  addu  $at, $at, $a1
/* 1775A8 801D3AC8 AC295F90 */ sw $t1, %lo(D_800E5F90)($at)
/* 1775AC 801D3ACC 8C650000 */  lw    $a1, ($v1)
/* 1775B0 801D3AD0 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1775B4 801D3AD4 00052880 */  sll   $a1, $a1, 2
/* 1775B8 801D3AD8 00250821 */  addu  $at, $at, $a1
/* 1775BC 801D3ADC C424A6E0 */ lwc1 $f4, %lo(D_800EA6E0)($at)
/* 1775C0 801D3AE0 3C01800E */ lui $at, %hi(D_800E6BD0)
/* 1775C4 801D3AE4 00250821 */  addu  $at, $at, $a1
/* 1775C8 801D3AE8 0C02CCFD */  jal   func_800B33F4
/* 1775CC 801D3AEC E4246BD0 */ swc1 $f4, %lo(D_800E6BD0)($at)
/* 1775D0 801D3AF0 0C02BE85 */  jal   func_800AFA14
/* 1775D4 801D3AF4 00000000 */   nop   
/* 1775D8 801D3AF8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1775DC 801D3AFC D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1775E0 801D3B00 8FB00020 */  lw    $s0, 0x20($sp)
/* 1775E4 801D3B04 8FB10024 */  lw    $s1, 0x24($sp)
/* 1775E8 801D3B08 8FB20028 */  lw    $s2, 0x28($sp)
/* 1775EC 801D3B0C 03E00008 */  jr    $ra
/* 1775F0 801D3B10 27BD0038 */   addiu $sp, $sp, 0x38
.size func_801D3644_ovl8, . - func_801D3644_ovl8

glabel func_801D3B14_ovl8
/* 1775F4 801D3B14 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1775F8 801D3B18 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1775FC 801D3B1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 177600 801D3B20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 177604 801D3B24 AFA40018 */  sw    $a0, 0x18($sp)
/* 177608 801D3B28 8DCF0000 */  lw    $t7, ($t6)
/* 17760C 801D3B2C 3C01800E */ lui $at, %hi(D_800E3210)
/* 177610 801D3B30 44802000 */  mtc1  $zero, $f4
/* 177614 801D3B34 000FC080 */  sll   $t8, $t7, 2
/* 177618 801D3B38 00380821 */  addu  $at, $at, $t8
/* 17761C 801D3B3C C4263210 */ lwc1 $f6, %lo(D_800E3210)($at)
/* 177620 801D3B40 46062032 */  c.eq.s $f4, $f6
/* 177624 801D3B44 00000000 */  nop   
/* 177628 801D3B48 45020014 */  bc1fl .L801D3B9C_ovl8
/* 17762C 801D3B4C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177630 801D3B50 0C068220 */  jal   func_801A0880_ovl8
/* 177634 801D3B54 00000000 */   nop   
/* 177638 801D3B58 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 17763C 801D3B5C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 177640 801D3B60 3C08800F */ lui $t0, %hi(D_800E83E0)
/* 177644 801D3B64 24010001 */  li    $at, 1
/* 177648 801D3B68 8F220000 */  lw    $v0, ($t9)
/* 17764C 801D3B6C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 177650 801D3B70 3C05801D */  lui   $a1, %hi(D_801D4440) # $a1, 0x801d
/* 177654 801D3B74 00021080 */  sll   $v0, $v0, 2
/* 177658 801D3B78 01024021 */  addu  $t0, $t0, $v0
/* 17765C 801D3B7C 8D0883E0 */ lw $t0, %lo(D_800E83E0)($t0)
/* 177660 801D3B80 00822021 */  addu  $a0, $a0, $v0
/* 177664 801D3B84 24A54440 */  addiu $a1, %lo(D_801D4440) # addiu $a1, $a1, 0x4440
/* 177668 801D3B88 55010004 */  bnel  $t0, $at, .L801D3B9C_ovl8
/* 17766C 801D3B8C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177670 801D3B90 0C02C7B2 */  jal   assign_new_process_entry
/* 177674 801D3B94 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 177678 801D3B98 8FBF0014 */  lw    $ra, 0x14($sp)
.L801D3B9C_ovl8:
/* 17767C 801D3B9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 177680 801D3BA0 03E00008 */  jr    $ra
/* 177684 801D3BA4 00000000 */   nop   
.size func_801D3B14_ovl8, . - func_801D3B14_ovl8

glabel func_801D3BA8_ovl8
/* 177688 801D3BA8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 17768C 801D3BAC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 177690 801D3BB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 177694 801D3BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 177698 801D3BB8 AFA40018 */  sw    $a0, 0x18($sp)
/* 17769C 801D3BBC 8C4F0000 */  lw    $t7, ($v0)
/* 1776A0 801D3BC0 3C0E801D */  lui   $t6, %hi(D_801D3DB4) # $t6, 0x801d
/* 1776A4 801D3BC4 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 1776A8 801D3BC8 000FC080 */  sll   $t8, $t7, 2
/* 1776AC 801D3BCC 00380821 */  addu  $at, $at, $t8
/* 1776B0 801D3BD0 25CE3DB4 */  addiu $t6, %lo(D_801D3DB4) # addiu $t6, $t6, 0x3db4
/* 1776B4 801D3BD4 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 1776B8 801D3BD8 8C430000 */  lw    $v1, ($v0)
/* 1776BC 801D3BDC 3C04800F */ lui $a0, %hi(D_800EA520)
/* 1776C0 801D3BE0 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 1776C4 801D3BE4 00031880 */  sll   $v1, $v1, 2
/* 1776C8 801D3BE8 00832021 */  addu  $a0, $a0, $v1
/* 1776CC 801D3BEC 8C84A520 */ lw $a0, %lo(D_800EA520)($a0)
/* 1776D0 801D3BF0 50800009 */  beql  $a0, $zero, .L801D3C18_ovl8
/* 1776D4 801D3BF4 44810000 */   mtc1  $at, $f0
/* 1776D8 801D3BF8 24010001 */  li    $at, 1
/* 1776DC 801D3BFC 1081001E */  beq   $a0, $at, .L801D3C78_ovl8
/* 1776E0 801D3C00 24010002 */   li    $at, 2
/* 1776E4 801D3C04 50810025 */  beql  $a0, $at, .L801D3C9C_ovl8
/* 1776E8 801D3C08 3C040001 */   lui   $a0, 1
/* 1776EC 801D3C0C 10000029 */  b     .L801D3CB4_ovl8
/* 1776F0 801D3C10 00000000 */   nop   
/* 1776F4 801D3C14 44810000 */  mtc1  $at, $f0
.L801D3C18_ovl8:
/* 1776F8 801D3C18 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 1776FC 801D3C1C 00230821 */  addu  $at, $at, $v1
/* 177700 801D3C20 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 177704 801D3C24 8C590000 */  lw    $t9, ($v0)
/* 177708 801D3C28 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 17770C 801D3C2C 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
/* 177710 801D3C30 00194080 */  sll   $t0, $t9, 2
/* 177714 801D3C34 00280821 */  addu  $at, $at, $t0
/* 177718 801D3C38 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 17771C 801D3C3C 8C490000 */  lw    $t1, ($v0)
/* 177720 801D3C40 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 177724 801D3C44 348405F9 */  ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 177728 801D3C48 00095080 */  sll   $t2, $t1, 2
/* 17772C 801D3C4C 002A0821 */  addu  $at, $at, $t2
/* 177730 801D3C50 0C02A806 */  jal   func_800AA018
/* 177734 801D3C54 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 177738 801D3C58 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 17773C 801D3C5C 0C02A806 */  jal   func_800AA018
/* 177740 801D3C60 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 177744 801D3C64 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177748 801D3C68 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 17774C 801D3C6C 8C430000 */  lw    $v1, ($v0)
/* 177750 801D3C70 10000010 */  b     .L801D3CB4_ovl8
/* 177754 801D3C74 00031880 */   sll   $v1, $v1, 2
.L801D3C78_ovl8:
/* 177758 801D3C78 3C040001 */  lui   $a0, (0x00010601 >> 16) # lui $a0, 1
/* 17775C 801D3C7C 0C02A806 */  jal   func_800AA018
/* 177760 801D3C80 34840601 */   ori   $a0, (0x00010601 & 0xFFFF) # ori $a0, $a0, 0x601
/* 177764 801D3C84 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177768 801D3C88 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 17776C 801D3C8C 8C430000 */  lw    $v1, ($v0)
/* 177770 801D3C90 10000008 */  b     .L801D3CB4_ovl8
/* 177774 801D3C94 00031880 */   sll   $v1, $v1, 2
/* 177778 801D3C98 3C040001 */  lui   $a0, (0x000105EF >> 16) # lui $a0, 1
.L801D3C9C_ovl8:
/* 17777C 801D3C9C 0C02A806 */  jal   func_800AA018
/* 177780 801D3CA0 348405EF */   ori   $a0, (0x000105EF & 0xFFFF) # ori $a0, $a0, 0x5ef
/* 177784 801D3CA4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177788 801D3CA8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 17778C 801D3CAC 8C430000 */  lw    $v1, ($v0)
/* 177790 801D3CB0 00031880 */  sll   $v1, $v1, 2
.L801D3CB4_ovl8:
/* 177794 801D3CB4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 177798 801D3CB8 00230821 */  addu  $at, $at, $v1
/* 17779C 801D3CBC AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 1777A0 801D3CC0 8C430000 */  lw    $v1, ($v0)
/* 1777A4 801D3CC4 3C0B800E */ lui $t3, %hi(D_800E0D50)
/* 1777A8 801D3CC8 3C05800F */  lui   $a1, %hi(D_800EC120) # $a1, 0x800f
/* 1777AC 801D3CCC 00031880 */  sll   $v1, $v1, 2
/* 1777B0 801D3CD0 01635821 */  addu  $t3, $t3, $v1
/* 1777B4 801D3CD4 8D6B0D50 */ lw $t3, %lo(D_800E0D50)($t3)
/* 1777B8 801D3CD8 24A5C120 */  addiu $a1, %lo(D_800EC120) # addiu $a1, $a1, -0x3ee0
/* 1777BC 801D3CDC 00A37021 */  addu  $t6, $a1, $v1
/* 1777C0 801D3CE0 000B6080 */  sll   $t4, $t3, 2
/* 1777C4 801D3CE4 00AC6821 */  addu  $t5, $a1, $t4
/* 1777C8 801D3CE8 8DAF0000 */  lw    $t7, ($t5)
/* 1777CC 801D3CEC 3C014158 */  li    $at, 0x41580000 # 13.500000
/* 1777D0 801D3CF0 44812000 */  mtc1  $at, $f4
/* 1777D4 801D3CF4 ADCF0000 */  sw    $t7, ($t6)
/* 1777D8 801D3CF8 8C580000 */  lw    $t8, ($v0)
/* 1777DC 801D3CFC 3C01800E */ lui $at, %hi(D_800E3210)
/* 1777E0 801D3D00 3C06800E */  lui   $a2, %hi(gEntitiesNextPosXArray) # $a2, 0x800e
/* 1777E4 801D3D04 0018C880 */  sll   $t9, $t8, 2
/* 1777E8 801D3D08 00390821 */  addu  $at, $at, $t9
/* 1777EC 801D3D0C E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 1777F0 801D3D10 8C480000 */  lw    $t0, ($v0)
/* 1777F4 801D3D14 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 1777F8 801D3D18 44813000 */  mtc1  $at, $f6
/* 1777FC 801D3D1C 3C01800E */ lui $at, %hi(D_800E3750)
/* 177800 801D3D20 00084880 */  sll   $t1, $t0, 2
/* 177804 801D3D24 00290821 */  addu  $at, $at, $t1
/* 177808 801D3D28 E4263750 */ swc1 $f6, %lo(D_800E3750)($at)
/* 17780C 801D3D2C 8C430000 */  lw    $v1, ($v0)
/* 177810 801D3D30 24C625D0 */  addiu $a2, %lo(gEntitiesNextPosXArray) # addiu $a2, $a2, 0x25d0
/* 177814 801D3D34 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 177818 801D3D38 00031880 */  sll   $v1, $v1, 2
/* 17781C 801D3D3C 00A35021 */  addu  $t2, $a1, $v1
/* 177820 801D3D40 8D4B0000 */  lw    $t3, ($t2)
/* 177824 801D3D44 00C37821 */  addu  $t7, $a2, $v1
/* 177828 801D3D48 C5EA0000 */  lwc1  $f10, ($t7)
/* 17782C 801D3D4C 000B6080 */  sll   $t4, $t3, 2
/* 177830 801D3D50 00CC6821 */  addu  $t5, $a2, $t4
/* 177834 801D3D54 C5A80000 */  lwc1  $f8, ($t5)
/* 177838 801D3D58 44819000 */  mtc1  $at, $f18
/* 17783C 801D3D5C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 177840 801D3D60 460A4401 */  sub.s $f16, $f8, $f10
/* 177844 801D3D64 00230821 */  addu  $at, $at, $v1
/* 177848 801D3D68 24040028 */  li    $a0, 40
/* 17784C 801D3D6C 46128103 */  div.s $f4, $f16, $f18
/* 177850 801D3D70 0C002DAF */  jal   finish_current_thread
/* 177854 801D3D74 E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 177858 801D3D78 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 17785C 801D3D7C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 177860 801D3D80 3C01800F */ lui $at, %hi(D_800E98E0)
/* 177864 801D3D84 240E0001 */  li    $t6, 1
/* 177868 801D3D88 8F190000 */  lw    $t9, ($t8)
/* 17786C 801D3D8C 00194080 */  sll   $t0, $t9, 2
/* 177870 801D3D90 00280821 */  addu  $at, $at, $t0
/* 177874 801D3D94 0C02CD48 */  jal   func_800B3520
/* 177878 801D3D98 AC2E98E0 */ sw $t6, %lo(D_800E98E0)($at)
/* 17787C 801D3D9C 0C02BE85 */  jal   func_800AFA14
/* 177880 801D3DA0 00000000 */   nop   
/* 177884 801D3DA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 177888 801D3DA8 27BD0018 */  addiu $sp, $sp, 0x18
/* 17788C 801D3DAC 03E00008 */  jr    $ra
/* 177890 801D3DB0 00000000 */   nop   
.size func_801D3BA8_ovl8, . - func_801D3BA8_ovl8

glabel func_801D3DB4_ovl8
/* 177894 801D3DB4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 177898 801D3DB8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 17789C 801D3DBC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1778A0 801D3DC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1778A4 801D3DC4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1778A8 801D3DC8 8DCF0000 */  lw    $t7, ($t6)
/* 1778AC 801D3DCC 3C19800F */ lui $t9, %hi(D_800E98E0)
/* 1778B0 801D3DD0 000FC080 */  sll   $t8, $t7, 2
/* 1778B4 801D3DD4 0338C821 */  addu  $t9, $t9, $t8
/* 1778B8 801D3DD8 8F3998E0 */ lw $t9, %lo(D_800E98E0)($t9)
/* 1778BC 801D3DDC 53200014 */  beql  $t9, $zero, .L801D3E30_ovl8
/* 1778C0 801D3DE0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1778C4 801D3DE4 0C068220 */  jal   func_801A0880_ovl8
/* 1778C8 801D3DE8 00000000 */   nop   
/* 1778CC 801D3DEC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1778D0 801D3DF0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1778D4 801D3DF4 3C09800F */ lui $t1, %hi(D_800E83E0)
/* 1778D8 801D3DF8 24010001 */  li    $at, 1
/* 1778DC 801D3DFC 8D020000 */  lw    $v0, ($t0)
/* 1778E0 801D3E00 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1778E4 801D3E04 3C05801D */  lui   $a1, %hi(D_801D4440) # $a1, 0x801d
/* 1778E8 801D3E08 00021080 */  sll   $v0, $v0, 2
/* 1778EC 801D3E0C 01224821 */  addu  $t1, $t1, $v0
/* 1778F0 801D3E10 8D2983E0 */ lw $t1, %lo(D_800E83E0)($t1)
/* 1778F4 801D3E14 00822021 */  addu  $a0, $a0, $v0
/* 1778F8 801D3E18 24A54440 */  addiu $a1, %lo(D_801D4440) # addiu $a1, $a1, 0x4440
/* 1778FC 801D3E1C 55210004 */  bnel  $t1, $at, .L801D3E30_ovl8
/* 177900 801D3E20 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177904 801D3E24 0C02C7B2 */  jal   assign_new_process_entry
/* 177908 801D3E28 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 17790C 801D3E2C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801D3E30_ovl8:
/* 177910 801D3E30 27BD0018 */  addiu $sp, $sp, 0x18
/* 177914 801D3E34 03E00008 */  jr    $ra
/* 177918 801D3E38 00000000 */   nop   
.size func_801D3DB4_ovl8, . - func_801D3DB4_ovl8

glabel func_801D3E3C_ovl8
/* 17791C 801D3E3C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177920 801D3E40 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 177924 801D3E44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 177928 801D3E48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17792C 801D3E4C AFA40018 */  sw    $a0, 0x18($sp)
/* 177930 801D3E50 8C4F0000 */  lw    $t7, ($v0)
/* 177934 801D3E54 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 177938 801D3E58 3C01800E */ lui $at, %hi(D_800DEF90)
/* 17793C 801D3E5C 000FC080 */  sll   $t8, $t7, 2
/* 177940 801D3E60 00380821 */  addu  $at, $at, $t8
/* 177944 801D3E64 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 177948 801D3E68 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 17794C 801D3E6C 8C590000 */  lw    $t9, ($v0)
/* 177950 801D3E70 3C01800F */ lui $at, %hi(D_800E8E60)
/* 177954 801D3E74 24060001 */  li    $a2, 1
/* 177958 801D3E78 00194080 */  sll   $t0, $t9, 2
/* 17795C 801D3E7C 00280821 */  addu  $at, $at, $t0
/* 177960 801D3E80 AC268E60 */ sw $a2, %lo(D_800E8E60)($at)
/* 177964 801D3E84 8C4A0000 */  lw    $t2, ($v0)
/* 177968 801D3E88 3C01800E */ lui $at, %hi(D_800DF150)
/* 17796C 801D3E8C 3C09801D */  lui   $t1, %hi(D_801D4038) # $t1, 0x801d
/* 177970 801D3E90 000A5880 */  sll   $t3, $t2, 2
/* 177974 801D3E94 002B0821 */  addu  $at, $at, $t3
/* 177978 801D3E98 25294038 */  addiu $t1, %lo(D_801D4038) # addiu $t1, $t1, 0x4038
/* 17797C 801D3E9C AC29F150 */ sw $t1, %lo(D_800DF150)($at)
/* 177980 801D3EA0 8C4C0000 */  lw    $t4, ($v0)
/* 177984 801D3EA4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 177988 801D3EA8 44812000 */  mtc1  $at, $f4
/* 17798C 801D3EAC 3C01800E */ lui $at, %hi(D_800E6A10)
/* 177990 801D3EB0 000C6880 */  sll   $t5, $t4, 2
/* 177994 801D3EB4 002D0821 */  addu  $at, $at, $t5
/* 177998 801D3EB8 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 17799C 801D3EBC 8C430000 */  lw    $v1, ($v0)
/* 1779A0 801D3EC0 3C0F800E */ lui $t7, %hi(D_800E0D50)
/* 1779A4 801D3EC4 3C05800E */  lui   $a1, %hi(D_800E17D0) # $a1, 0x800e
/* 1779A8 801D3EC8 00031880 */  sll   $v1, $v1, 2
/* 1779AC 801D3ECC 01E37821 */  addu  $t7, $t7, $v1
/* 1779B0 801D3ED0 8DEF0D50 */ lw $t7, %lo(D_800E0D50)($t7)
/* 1779B4 801D3ED4 24A517D0 */  addiu $a1, %lo(D_800E17D0) # addiu $a1, $a1, 0x17d0
/* 1779B8 801D3ED8 00A3C821 */  addu  $t9, $a1, $v1
/* 1779BC 801D3EDC 000F7080 */  sll   $t6, $t7, 2
/* 1779C0 801D3EE0 00AEC021 */  addu  $t8, $a1, $t6
/* 1779C4 801D3EE4 C7060000 */  lwc1  $f6, ($t8)
/* 1779C8 801D3EE8 3C04800F */ lui $a0, %hi(D_800EA520)
/* 1779CC 801D3EEC 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 1779D0 801D3EF0 E7260000 */  swc1  $f6, ($t9)
/* 1779D4 801D3EF4 8C430000 */  lw    $v1, ($v0)
/* 1779D8 801D3EF8 00031880 */  sll   $v1, $v1, 2
/* 1779DC 801D3EFC 00832021 */  addu  $a0, $a0, $v1
/* 1779E0 801D3F00 8C84A520 */ lw $a0, %lo(D_800EA520)($a0)
/* 1779E4 801D3F04 50800008 */  beql  $a0, $zero, .L801D3F28_ovl8
/* 1779E8 801D3F08 44810000 */   mtc1  $at, $f0
/* 1779EC 801D3F0C 1086001E */  beq   $a0, $a2, .L801D3F88_ovl8
/* 1779F0 801D3F10 24010002 */   li    $at, 2
/* 1779F4 801D3F14 50810025 */  beql  $a0, $at, .L801D3FAC_ovl8
/* 1779F8 801D3F18 3C040001 */   lui   $a0, 1
/* 1779FC 801D3F1C 1000002A */  b     .L801D3FC8_ovl8
/* 177A00 801D3F20 3C01C120 */   li    $at, 0xC1200000 # -10.000000
/* 177A04 801D3F24 44810000 */  mtc1  $at, $f0
.L801D3F28_ovl8:
/* 177A08 801D3F28 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 177A0C 801D3F2C 00230821 */  addu  $at, $at, $v1
/* 177A10 801D3F30 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 177A14 801D3F34 8C480000 */  lw    $t0, ($v0)
/* 177A18 801D3F38 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 177A1C 801D3F3C 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
/* 177A20 801D3F40 00085080 */  sll   $t2, $t0, 2
/* 177A24 801D3F44 002A0821 */  addu  $at, $at, $t2
/* 177A28 801D3F48 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 177A2C 801D3F4C 8C490000 */  lw    $t1, ($v0)
/* 177A30 801D3F50 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 177A34 801D3F54 348405F9 */  ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 177A38 801D3F58 00095880 */  sll   $t3, $t1, 2
/* 177A3C 801D3F5C 002B0821 */  addu  $at, $at, $t3
/* 177A40 801D3F60 0C02A806 */  jal   func_800AA018
/* 177A44 801D3F64 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 177A48 801D3F68 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 177A4C 801D3F6C 0C02A806 */  jal   func_800AA018
/* 177A50 801D3F70 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 177A54 801D3F74 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177A58 801D3F78 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 177A5C 801D3F7C 8C430000 */  lw    $v1, ($v0)
/* 177A60 801D3F80 10000010 */  b     .L801D3FC4_ovl8
/* 177A64 801D3F84 00031880 */   sll   $v1, $v1, 2
.L801D3F88_ovl8:
/* 177A68 801D3F88 3C040001 */  lui   $a0, (0x00010601 >> 16) # lui $a0, 1
/* 177A6C 801D3F8C 0C02A806 */  jal   func_800AA018
/* 177A70 801D3F90 34840601 */   ori   $a0, (0x00010601 & 0xFFFF) # ori $a0, $a0, 0x601
/* 177A74 801D3F94 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177A78 801D3F98 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 177A7C 801D3F9C 8C430000 */  lw    $v1, ($v0)
/* 177A80 801D3FA0 10000008 */  b     .L801D3FC4_ovl8
/* 177A84 801D3FA4 00031880 */   sll   $v1, $v1, 2
/* 177A88 801D3FA8 3C040001 */  lui   $a0, (0x000105EF >> 16) # lui $a0, 1
.L801D3FAC_ovl8:
/* 177A8C 801D3FAC 0C02A806 */  jal   func_800AA018
/* 177A90 801D3FB0 348405EF */   ori   $a0, (0x000105EF & 0xFFFF) # ori $a0, $a0, 0x5ef
/* 177A94 801D3FB4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177A98 801D3FB8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 177A9C 801D3FBC 8C430000 */  lw    $v1, ($v0)
/* 177AA0 801D3FC0 00031880 */  sll   $v1, $v1, 2
.L801D3FC4_ovl8:
/* 177AA4 801D3FC4 3C01C120 */  li    $at, 0xC1200000 # -10.000000
.L801D3FC8_ovl8:
/* 177AA8 801D3FC8 44814000 */  mtc1  $at, $f8
/* 177AAC 801D3FCC 3C01800E */ lui $at, %hi(D_800E3050)
/* 177AB0 801D3FD0 00230821 */  addu  $at, $at, $v1
/* 177AB4 801D3FD4 E4283050 */ swc1 $f8, %lo(D_800E3050)($at)
/* 177AB8 801D3FD8 8C4C0000 */  lw    $t4, ($v0)
/* 177ABC 801D3FDC 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 177AC0 801D3FE0 44815000 */  mtc1  $at, $f10
/* 177AC4 801D3FE4 3C01800E */ lui $at, %hi(D_800E3210)
/* 177AC8 801D3FE8 000C6880 */  sll   $t5, $t4, 2
/* 177ACC 801D3FEC 002D0821 */  addu  $at, $at, $t5
/* 177AD0 801D3FF0 E42A3210 */ swc1 $f10, %lo(D_800E3210)($at)
/* 177AD4 801D3FF4 8C4F0000 */  lw    $t7, ($v0)
/* 177AD8 801D3FF8 3C01801E */  lui   $at, %hi(D_801DB160_ovl8) # $at, 0x801e
/* 177ADC 801D3FFC C430B160 */  lwc1  $f16, %lo(D_801DB160_ovl8)($at)
/* 177AE0 801D4000 3C01800E */ lui $at, %hi(D_800E3750)
/* 177AE4 801D4004 000F7080 */  sll   $t6, $t7, 2
/* 177AE8 801D4008 002E0821 */  addu  $at, $at, $t6
/* 177AEC 801D400C 24040055 */  li    $a0, 85
/* 177AF0 801D4010 0C002DAF */  jal   finish_current_thread
/* 177AF4 801D4014 E4303750 */ swc1 $f16, %lo(D_800E3750)($at)
/* 177AF8 801D4018 0C02CCFD */  jal   func_800B33F4
/* 177AFC 801D401C 00000000 */   nop   
/* 177B00 801D4020 0C02BE85 */  jal   func_800AFA14
/* 177B04 801D4024 00000000 */   nop   
/* 177B08 801D4028 8FBF0014 */  lw    $ra, 0x14($sp)
/* 177B0C 801D402C 27BD0018 */  addiu $sp, $sp, 0x18
/* 177B10 801D4030 03E00008 */  jr    $ra
/* 177B14 801D4034 00000000 */   nop   
.size func_801D3E3C_ovl8, . - func_801D3E3C_ovl8

glabel func_801D4038_ovl8
/* 177B18 801D4038 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 177B1C 801D403C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 177B20 801D4040 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 177B24 801D4044 AFBF0014 */  sw    $ra, 0x14($sp)
/* 177B28 801D4048 AFA40018 */  sw    $a0, 0x18($sp)
/* 177B2C 801D404C 8DC20000 */  lw    $v0, ($t6)
/* 177B30 801D4050 3C01800E */ lui $at, %hi(D_800E3210)
/* 177B34 801D4054 44800000 */  mtc1  $zero, $f0
/* 177B38 801D4058 00021080 */  sll   $v0, $v0, 2
/* 177B3C 801D405C 00220821 */  addu  $at, $at, $v0
/* 177B40 801D4060 C4243210 */ lwc1 $f4, %lo(D_800E3210)($at)
/* 177B44 801D4064 3C01800E */ lui $at, %hi(D_800E3050)
/* 177B48 801D4068 00220821 */  addu  $at, $at, $v0
/* 177B4C 801D406C 46040032 */  c.eq.s $f0, $f4
/* 177B50 801D4070 00000000 */  nop   
/* 177B54 801D4074 45020019 */  bc1fl .L801D40DC_ovl8
/* 177B58 801D4078 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177B5C 801D407C C4263050 */ lwc1 $f6, %lo(D_800E3050)($at)
/* 177B60 801D4080 46060032 */  c.eq.s $f0, $f6
/* 177B64 801D4084 00000000 */  nop   
/* 177B68 801D4088 45020014 */  bc1fl .L801D40DC_ovl8
/* 177B6C 801D408C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177B70 801D4090 0C068220 */  jal   func_801A0880_ovl8
/* 177B74 801D4094 00000000 */   nop   
/* 177B78 801D4098 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 177B7C 801D409C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 177B80 801D40A0 3C18800F */ lui $t8, %hi(D_800E83E0)
/* 177B84 801D40A4 24010001 */  li    $at, 1
/* 177B88 801D40A8 8DE20000 */  lw    $v0, ($t7)
/* 177B8C 801D40AC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 177B90 801D40B0 3C05801D */  lui   $a1, %hi(D_801D4440) # $a1, 0x801d
/* 177B94 801D40B4 00021080 */  sll   $v0, $v0, 2
/* 177B98 801D40B8 0302C021 */  addu  $t8, $t8, $v0
/* 177B9C 801D40BC 8F1883E0 */ lw $t8, %lo(D_800E83E0)($t8)
/* 177BA0 801D40C0 00822021 */  addu  $a0, $a0, $v0
/* 177BA4 801D40C4 24A54440 */  addiu $a1, %lo(D_801D4440) # addiu $a1, $a1, 0x4440
/* 177BA8 801D40C8 57010004 */  bnel  $t8, $at, .L801D40DC_ovl8
/* 177BAC 801D40CC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177BB0 801D40D0 0C02C7B2 */  jal   assign_new_process_entry
/* 177BB4 801D40D4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 177BB8 801D40D8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801D40DC_ovl8:
/* 177BBC 801D40DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 177BC0 801D40E0 03E00008 */  jr    $ra
/* 177BC4 801D40E4 00000000 */   nop   
.size func_801D4038_ovl8, . - func_801D4038_ovl8

glabel func_801D40E8_ovl8
/* 177BC8 801D40E8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 177BCC 801D40EC AFB30038 */  sw    $s3, 0x38($sp)
/* 177BD0 801D40F0 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 177BD4 801D40F4 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 177BD8 801D40F8 8E620000 */  lw    $v0, ($s3)
/* 177BDC 801D40FC AFBF003C */  sw    $ra, 0x3c($sp)
/* 177BE0 801D4100 AFB20034 */  sw    $s2, 0x34($sp)
/* 177BE4 801D4104 AFB10030 */  sw    $s1, 0x30($sp)
/* 177BE8 801D4108 AFB0002C */  sw    $s0, 0x2c($sp)
/* 177BEC 801D410C F7B80020 */  sdc1  $f24, 0x20($sp)
/* 177BF0 801D4110 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 177BF4 801D4114 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 177BF8 801D4118 AFA40040 */  sw    $a0, 0x40($sp)
/* 177BFC 801D411C 8C4F0000 */  lw    $t7, ($v0)
/* 177C00 801D4120 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 177C04 801D4124 3C01800E */ lui $at, %hi(D_800DEF90)
/* 177C08 801D4128 000FC080 */  sll   $t8, $t7, 2
/* 177C0C 801D412C 00380821 */  addu  $at, $at, $t8
/* 177C10 801D4130 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 177C14 801D4134 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 177C18 801D4138 8C480000 */  lw    $t0, ($v0)
/* 177C1C 801D413C 3C01800F */ lui $at, %hi(D_800E8E60)
/* 177C20 801D4140 24190001 */  li    $t9, 1
/* 177C24 801D4144 00084880 */  sll   $t1, $t0, 2
/* 177C28 801D4148 00290821 */  addu  $at, $at, $t1
/* 177C2C 801D414C AC398E60 */ sw $t9, %lo(D_800E8E60)($at)
/* 177C30 801D4150 8C4B0000 */  lw    $t3, ($v0)
/* 177C34 801D4154 3C01800E */ lui $at, %hi(D_800DF150)
/* 177C38 801D4158 3C0A801D */  lui   $t2, %hi(D_801D43B8) # $t2, 0x801d
/* 177C3C 801D415C 000B6080 */  sll   $t4, $t3, 2
/* 177C40 801D4160 002C0821 */  addu  $at, $at, $t4
/* 177C44 801D4164 254A43B8 */  addiu $t2, %lo(D_801D43B8) # addiu $t2, $t2, 0x43b8
/* 177C48 801D4168 AC2AF150 */ sw $t2, %lo(D_800DF150)($at)
/* 177C4C 801D416C 8C4D0000 */  lw    $t5, ($v0)
/* 177C50 801D4170 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 177C54 801D4174 44812000 */  mtc1  $at, $f4
/* 177C58 801D4178 3C01800E */ lui $at, %hi(D_800E6A10)
/* 177C5C 801D417C 000D7880 */  sll   $t7, $t5, 2
/* 177C60 801D4180 002F0821 */  addu  $at, $at, $t7
/* 177C64 801D4184 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 177C68 801D4188 8C430000 */  lw    $v1, ($v0)
/* 177C6C 801D418C 3C0E800E */ lui $t6, %hi(D_800E0D50)
/* 177C70 801D4190 3C05800E */  lui   $a1, %hi(D_800E17D0) # $a1, 0x800e
/* 177C74 801D4194 00031880 */  sll   $v1, $v1, 2
/* 177C78 801D4198 01C37021 */  addu  $t6, $t6, $v1
/* 177C7C 801D419C 8DCE0D50 */ lw $t6, %lo(D_800E0D50)($t6)
/* 177C80 801D41A0 24A517D0 */  addiu $a1, %lo(D_800E17D0) # addiu $a1, $a1, 0x17d0
/* 177C84 801D41A4 00A3C821 */  addu  $t9, $a1, $v1
/* 177C88 801D41A8 000EC080 */  sll   $t8, $t6, 2
/* 177C8C 801D41AC 00B84021 */  addu  $t0, $a1, $t8
/* 177C90 801D41B0 C5060000 */  lwc1  $f6, ($t0)
/* 177C94 801D41B4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 177C98 801D41B8 3C04800F */ lui $a0, %hi(D_800EA520)
/* 177C9C 801D41BC E7260000 */  swc1  $f6, ($t9)
/* 177CA0 801D41C0 8C490000 */  lw    $t1, ($v0)
/* 177CA4 801D41C4 00095880 */  sll   $t3, $t1, 2
/* 177CA8 801D41C8 002B0821 */  addu  $at, $at, $t3
/* 177CAC 801D41CC AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 177CB0 801D41D0 8C430000 */  lw    $v1, ($v0)
/* 177CB4 801D41D4 24010001 */  li    $at, 1
/* 177CB8 801D41D8 00031880 */  sll   $v1, $v1, 2
/* 177CBC 801D41DC 00832021 */  addu  $a0, $a0, $v1
/* 177CC0 801D41E0 8C84A520 */ lw $a0, %lo(D_800EA520)($a0)
/* 177CC4 801D41E4 50800008 */  beql  $a0, $zero, .L801D4208_ovl8
/* 177CC8 801D41E8 3C040001 */   lui   $a0, 1
/* 177CCC 801D41EC 10810043 */  beq   $a0, $at, .L801D42FC_ovl8
/* 177CD0 801D41F0 24010002 */   li    $at, 2
/* 177CD4 801D41F4 50810049 */  beql  $a0, $at, .L801D431C_ovl8
/* 177CD8 801D41F8 3C040001 */   lui   $a0, 1
/* 177CDC 801D41FC 1000004D */  b     .L801D4334_ovl8
/* 177CE0 801D4200 3C014100 */   lui   $at, 0x4100
/* 177CE4 801D4204 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
.L801D4208_ovl8:
/* 177CE8 801D4208 0C02A806 */  jal   func_800AA018
/* 177CEC 801D420C 348405F9 */   ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 177CF0 801D4210 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 177CF4 801D4214 0C02A806 */  jal   func_800AA018
/* 177CF8 801D4218 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 177CFC 801D421C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 177D00 801D4220 4481A000 */  mtc1  $at, $f20
/* 177D04 801D4224 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 177D08 801D4228 4481C000 */  mtc1  $at, $f24
/* 177D0C 801D422C 3C12800E */  lui   $s2, %hi(gEntitiesScaleZArray) # $s2, 0x800e
/* 177D10 801D4230 3C11800E */  lui   $s1, %hi(gEntitiesScaleYArray) # $s1, 0x800e
/* 177D14 801D4234 4618A03C */  c.lt.s $f20, $f24
/* 177D18 801D4238 26314710 */  addiu $s1, %lo(gEntitiesScaleYArray) # addiu $s1, $s1, 0x4710
/* 177D1C 801D423C 265248D0 */  addiu $s2, %lo(gEntitiesScaleZArray) # addiu $s2, $s2, 0x48d0
/* 177D20 801D4240 3C01801E */  lui   $at, %hi(D_801DB164_ovl8) # $at, 0x801e
/* 177D24 801D4244 45000017 */  bc1f  .L801D42A4_ovl8
/* 177D28 801D4248 3C10800E */   lui   $s0, %hi(gEntitiesScaleXArray) # $s0, 0x800e
/* 177D2C 801D424C C436B164 */  lwc1  $f22, %lo(D_801DB164_ovl8)($at)
/* 177D30 801D4250 26104550 */  addiu $s0, %lo(gEntitiesScaleXArray) # addiu $s0, $s0, 0x4550
/* 177D34 801D4254 8E620000 */  lw    $v0, ($s3)
.L801D4258_ovl8:
/* 177D38 801D4258 24040001 */  li    $a0, 1
/* 177D3C 801D425C 8C4A0000 */  lw    $t2, ($v0)
/* 177D40 801D4260 000A6080 */  sll   $t4, $t2, 2
/* 177D44 801D4264 020C6821 */  addu  $t5, $s0, $t4
/* 177D48 801D4268 E5B40000 */  swc1  $f20, ($t5)
/* 177D4C 801D426C 8C4F0000 */  lw    $t7, ($v0)
/* 177D50 801D4270 000F7080 */  sll   $t6, $t7, 2
/* 177D54 801D4274 022EC021 */  addu  $t8, $s1, $t6
/* 177D58 801D4278 E7140000 */  swc1  $f20, ($t8)
/* 177D5C 801D427C 8C480000 */  lw    $t0, ($v0)
/* 177D60 801D4280 0008C880 */  sll   $t9, $t0, 2
/* 177D64 801D4284 02594821 */  addu  $t1, $s2, $t9
/* 177D68 801D4288 0C002DAF */  jal   finish_current_thread
/* 177D6C 801D428C E5340000 */   swc1  $f20, ($t1)
/* 177D70 801D4290 4616A500 */  add.s $f20, $f20, $f22
/* 177D74 801D4294 4618A03C */  c.lt.s $f20, $f24
/* 177D78 801D4298 00000000 */  nop   
/* 177D7C 801D429C 4503FFEE */  bc1tl .L801D4258_ovl8
/* 177D80 801D42A0 8E620000 */   lw    $v0, ($s3)
.L801D42A4_ovl8:
/* 177D84 801D42A4 8E620000 */  lw    $v0, ($s3)
/* 177D88 801D42A8 3C10800E */  lui   $s0, %hi(gEntitiesScaleXArray) # $s0, 0x800e
/* 177D8C 801D42AC 26104550 */  addiu $s0, %lo(gEntitiesScaleXArray) # addiu $s0, $s0, 0x4550
/* 177D90 801D42B0 8C4B0000 */  lw    $t3, ($v0)
/* 177D94 801D42B4 3C11800E */  lui   $s1, %hi(gEntitiesScaleYArray) # $s1, 0x800e
/* 177D98 801D42B8 26314710 */  addiu $s1, %lo(gEntitiesScaleYArray) # addiu $s1, $s1, 0x4710
/* 177D9C 801D42BC 000B5080 */  sll   $t2, $t3, 2
/* 177DA0 801D42C0 020A6021 */  addu  $t4, $s0, $t2
/* 177DA4 801D42C4 E5980000 */  swc1  $f24, ($t4)
/* 177DA8 801D42C8 8C4D0000 */  lw    $t5, ($v0)
/* 177DAC 801D42CC 3C12800E */  lui   $s2, %hi(gEntitiesScaleZArray) # $s2, 0x800e
/* 177DB0 801D42D0 265248D0 */  addiu $s2, %lo(gEntitiesScaleZArray) # addiu $s2, $s2, 0x48d0
/* 177DB4 801D42D4 000D7880 */  sll   $t7, $t5, 2
/* 177DB8 801D42D8 022F7021 */  addu  $t6, $s1, $t7
/* 177DBC 801D42DC E5D80000 */  swc1  $f24, ($t6)
/* 177DC0 801D42E0 8C580000 */  lw    $t8, ($v0)
/* 177DC4 801D42E4 00184080 */  sll   $t0, $t8, 2
/* 177DC8 801D42E8 0248C821 */  addu  $t9, $s2, $t0
/* 177DCC 801D42EC E7380000 */  swc1  $f24, ($t9)
/* 177DD0 801D42F0 8C430000 */  lw    $v1, ($v0)
/* 177DD4 801D42F4 1000000E */  b     .L801D4330_ovl8
/* 177DD8 801D42F8 00031880 */   sll   $v1, $v1, 2
.L801D42FC_ovl8:
/* 177DDC 801D42FC 3C040001 */  lui   $a0, (0x00010601 >> 16) # lui $a0, 1
/* 177DE0 801D4300 0C02A806 */  jal   func_800AA018
/* 177DE4 801D4304 34840601 */   ori   $a0, (0x00010601 & 0xFFFF) # ori $a0, $a0, 0x601
/* 177DE8 801D4308 8E620000 */  lw    $v0, ($s3)
/* 177DEC 801D430C 8C430000 */  lw    $v1, ($v0)
/* 177DF0 801D4310 10000007 */  b     .L801D4330_ovl8
/* 177DF4 801D4314 00031880 */   sll   $v1, $v1, 2
/* 177DF8 801D4318 3C040001 */  lui   $a0, (0x000105EF >> 16) # lui $a0, 1
.L801D431C_ovl8:
/* 177DFC 801D431C 0C02A806 */  jal   func_800AA018
/* 177E00 801D4320 348405EF */   ori   $a0, (0x000105EF & 0xFFFF) # ori $a0, $a0, 0x5ef
/* 177E04 801D4324 8E620000 */  lw    $v0, ($s3)
/* 177E08 801D4328 8C430000 */  lw    $v1, ($v0)
/* 177E0C 801D432C 00031880 */  sll   $v1, $v1, 2
.L801D4330_ovl8:
/* 177E10 801D4330 3C014100 */  li    $at, 0x41000000 # 8.000000
.L801D4334_ovl8:
/* 177E14 801D4334 44814000 */  mtc1  $at, $f8
/* 177E18 801D4338 3C01800E */ lui $at, %hi(D_800E3210)
/* 177E1C 801D433C 00230821 */  addu  $at, $at, $v1
/* 177E20 801D4340 E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 177E24 801D4344 8C490000 */  lw    $t1, ($v0)
/* 177E28 801D4348 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 177E2C 801D434C 44815000 */  mtc1  $at, $f10
/* 177E30 801D4350 3C01800E */ lui $at, %hi(D_800E3750)
/* 177E34 801D4354 00095880 */  sll   $t3, $t1, 2
/* 177E38 801D4358 002B0821 */  addu  $at, $at, $t3
/* 177E3C 801D435C 24040028 */  li    $a0, 40
/* 177E40 801D4360 0C002DAF */  jal   finish_current_thread
/* 177E44 801D4364 E42A3750 */ swc1 $f10, %lo(D_800E3750)($at)
/* 177E48 801D4368 8E6C0000 */  lw    $t4, ($s3)
/* 177E4C 801D436C 3C01800F */ lui $at, %hi(D_800E98E0)
/* 177E50 801D4370 240A0001 */  li    $t2, 1
/* 177E54 801D4374 8D8D0000 */  lw    $t5, ($t4)
/* 177E58 801D4378 000D7880 */  sll   $t7, $t5, 2
/* 177E5C 801D437C 002F0821 */  addu  $at, $at, $t7
/* 177E60 801D4380 0C02CCFD */  jal   func_800B33F4
/* 177E64 801D4384 AC2A98E0 */ sw $t2, %lo(D_800E98E0)($at)
/* 177E68 801D4388 0C02BE85 */  jal   func_800AFA14
/* 177E6C 801D438C 00000000 */   nop   
/* 177E70 801D4390 8FBF003C */  lw    $ra, 0x3c($sp)
/* 177E74 801D4394 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 177E78 801D4398 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 177E7C 801D439C D7B80020 */  ldc1  $f24, 0x20($sp)
/* 177E80 801D43A0 8FB0002C */  lw    $s0, 0x2c($sp)
/* 177E84 801D43A4 8FB10030 */  lw    $s1, 0x30($sp)
/* 177E88 801D43A8 8FB20034 */  lw    $s2, 0x34($sp)
/* 177E8C 801D43AC 8FB30038 */  lw    $s3, 0x38($sp)
/* 177E90 801D43B0 03E00008 */  jr    $ra
/* 177E94 801D43B4 27BD0040 */   addiu $sp, $sp, 0x40
.size func_801D40E8_ovl8, . - func_801D40E8_ovl8

glabel func_801D43B8_ovl8
/* 177E98 801D43B8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 177E9C 801D43BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 177EA0 801D43C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 177EA4 801D43C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 177EA8 801D43C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 177EAC 801D43CC 8DCF0000 */  lw    $t7, ($t6)
/* 177EB0 801D43D0 3C19800F */ lui $t9, %hi(D_800E98E0)
/* 177EB4 801D43D4 000FC080 */  sll   $t8, $t7, 2
/* 177EB8 801D43D8 0338C821 */  addu  $t9, $t9, $t8
/* 177EBC 801D43DC 8F3998E0 */ lw $t9, %lo(D_800E98E0)($t9)
/* 177EC0 801D43E0 53200014 */  beql  $t9, $zero, .L801D4434_ovl8
/* 177EC4 801D43E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177EC8 801D43E8 0C068220 */  jal   func_801A0880_ovl8
/* 177ECC 801D43EC 00000000 */   nop   
/* 177ED0 801D43F0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 177ED4 801D43F4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 177ED8 801D43F8 3C09800F */ lui $t1, %hi(D_800E83E0)
/* 177EDC 801D43FC 24010001 */  li    $at, 1
/* 177EE0 801D4400 8D020000 */  lw    $v0, ($t0)
/* 177EE4 801D4404 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 177EE8 801D4408 3C05801D */  lui   $a1, %hi(D_801D4440) # $a1, 0x801d
/* 177EEC 801D440C 00021080 */  sll   $v0, $v0, 2
/* 177EF0 801D4410 01224821 */  addu  $t1, $t1, $v0
/* 177EF4 801D4414 8D2983E0 */ lw $t1, %lo(D_800E83E0)($t1)
/* 177EF8 801D4418 00822021 */  addu  $a0, $a0, $v0
/* 177EFC 801D441C 24A54440 */  addiu $a1, %lo(D_801D4440) # addiu $a1, $a1, 0x4440
/* 177F00 801D4420 55210004 */  bnel  $t1, $at, .L801D4434_ovl8
/* 177F04 801D4424 8FBF0014 */   lw    $ra, 0x14($sp)
/* 177F08 801D4428 0C02C7B2 */  jal   assign_new_process_entry
/* 177F0C 801D442C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 177F10 801D4430 8FBF0014 */  lw    $ra, 0x14($sp)
.L801D4434_ovl8:
/* 177F14 801D4434 27BD0018 */  addiu $sp, $sp, 0x18
/* 177F18 801D4438 03E00008 */  jr    $ra
/* 177F1C 801D443C 00000000 */   nop   
.size func_801D43B8_ovl8, . - func_801D43B8_ovl8

glabel func_801D4440_ovl8
/* 177F20 801D4440 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 177F24 801D4444 AFBF0014 */  sw    $ra, 0x14($sp)
/* 177F28 801D4448 0C04790E */  jal   func_8011E438
/* 177F2C 801D444C AFA40018 */   sw    $a0, 0x18($sp)
/* 177F30 801D4450 240E0001 */  li    $t6, 1
/* 177F34 801D4454 3C018013 */  lui   $at, %hi(D_8012E7D4) # $at, 0x8013
/* 177F38 801D4458 A02EE7D4 */  sb    $t6, %lo(D_8012E7D4)($at)
/* 177F3C 801D445C 0C06F9E7 */  jal   D_801BE79C_ovl8
/* 177F40 801D4460 8FA40018 */   lw    $a0, 0x18($sp)
/* 177F44 801D4464 0C02BE85 */  jal   func_800AFA14
/* 177F48 801D4468 00000000 */   nop   
/* 177F4C 801D446C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 177F50 801D4470 27BD0018 */  addiu $sp, $sp, 0x18
/* 177F54 801D4474 03E00008 */  jr    $ra
/* 177F58 801D4478 00000000 */   nop   
.size func_801D4440_ovl8, . - func_801D4440_ovl8

glabel func_801D447C_ovl8
/* 177F5C 801D447C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 177F60 801D4480 AFBF0014 */  sw    $ra, 0x14($sp)
/* 177F64 801D4484 0C066ED6 */  jal   func_8019BB58_ovl8
/* 177F68 801D4488 AFA40018 */   sw    $a0, 0x18($sp)
/* 177F6C 801D448C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 177F70 801D4490 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 177F74 801D4494 3C01800E */ lui $at, %hi(D_800DEDD0)
/* 177F78 801D4498 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 177F7C 801D449C 8C4E0000 */  lw    $t6, ($v0)
/* 177F80 801D44A0 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 177F84 801D44A4 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 177F88 801D44A8 000E7880 */  sll   $t7, $t6, 2
/* 177F8C 801D44AC 002F0821 */  addu  $at, $at, $t7
/* 177F90 801D44B0 AC20EDD0 */ sw $zero, %lo(D_800DEDD0)($at)
/* 177F94 801D44B4 8C580000 */  lw    $t8, ($v0)
/* 177F98 801D44B8 3C01800E */ lui $at, %hi(D_800DF150)
/* 177F9C 801D44BC 0018C880 */  sll   $t9, $t8, 2
/* 177FA0 801D44C0 00390821 */  addu  $at, $at, $t9
/* 177FA4 801D44C4 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 177FA8 801D44C8 8C480000 */  lw    $t0, ($v0)
/* 177FAC 801D44CC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 177FB0 801D44D0 00084880 */  sll   $t1, $t0, 2
/* 177FB4 801D44D4 00290821 */  addu  $at, $at, $t1
/* 177FB8 801D44D8 AC20EF90 */ sw $zero, %lo(D_800DEF90)($at)
/* 177FBC 801D44DC 8C4A0000 */  lw    $t2, ($v0)
/* 177FC0 801D44E0 000A5880 */  sll   $t3, $t2, 2
/* 177FC4 801D44E4 008B2021 */  addu  $a0, $a0, $t3
/* 177FC8 801D44E8 0C02C7DA */  jal   func_800B1F68
/* 177FCC 801D44EC 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 177FD0 801D44F0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 177FD4 801D44F4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 177FD8 801D44F8 0C02BEED */  jal   func_800AFBB4
/* 177FDC 801D44FC 00002025 */   move  $a0, $zero
/* 177FE0 801D4500 3C0C800D */  lui   $t4, %hi(D_800D6B54) # $t4, 0x800d
/* 177FE4 801D4504 8D8C6B54 */  lw    $t4, %lo(D_800D6B54)($t4)
/* 177FE8 801D4508 00002025 */  move  $a0, $zero
/* 177FEC 801D450C 3C059999 */  lui   $a1, (0x99999999 >> 16) # lui $a1, 0x9999
/* 177FF0 801D4510 15800006 */  bnez  $t4, .L801D452C_ovl8
/* 177FF4 801D4514 00000000 */   nop   
/* 177FF8 801D4518 0C029D6C */  jal   play_music
/* 177FFC 801D451C 34A59999 */   ori   $a1, (0x99999999 & 0xFFFF) # ori $a1, $a1, 0x9999
/* 178000 801D4520 00002025 */  move  $a0, $zero
/* 178004 801D4524 0C008266 */  jal   func_80020998_ovl8
/* 178008 801D4528 24057800 */   li    $a1, 30720
.L801D452C_ovl8:
/* 17800C 801D452C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 178010 801D4530 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 178014 801D4534 3C0F800E */ lui $t7, %hi(D_800E7880)
/* 178018 801D4538 8DAE0000 */  lw    $t6, ($t5)
/* 17801C 801D453C 01EE7821 */  addu  $t7, $t7, $t6
/* 178020 801D4540 91EF7880 */ lbu $t7, %lo(D_800E7880)($t7)
/* 178024 801D4544 2DE10006 */  sltiu $at, $t7, 6
/* 178028 801D4548 10200012 */  beqz  $at, .L801D4594_ovl8
/* 17802C 801D454C 000F7880 */   sll   $t7, $t7, 2
/* 178030 801D4550 3C01801E */ lui $at, %hi(jtbl_801DB168_ovl8)
/* 178034 801D4554 002F0821 */  addu  $at, $at, $t7
/* 178038 801D4558 8C2FB168 */ lw $t7, %lo(jtbl_801DB168_ovl8)($at)
/* 17803C 801D455C 01E00008 */  jr    $t7
/* 178040 801D4560 00000000 */   nop
glabel L801D4564_ovl8
/* 178044 801D4564 0C002DAF */  jal   finish_current_thread
/* 178048 801D4568 2404005A */   li    $a0, 90
/* 17804C 801D456C 3C18800C */  lui   $t8, %hi(D_800BE4F8) # $t8, 0x800c
/* 178050 801D4570 8F18E4F8 */  lw    $t8, %lo(D_800BE4F8)($t8)
/* 178054 801D4574 24010001 */  li    $at, 1
/* 178058 801D4578 3C04800C */  lui   $a0, %hi(D_800BE508) # $a0, 0x800c
/* 17805C 801D457C 17010005 */  bne   $t8, $at, .L801D4594_ovl8
/* 178060 801D4580 00000000 */   nop   
/* 178064 801D4584 8C84E508 */  lw    $a0, %lo(D_800BE508)($a0)
/* 178068 801D4588 00002825 */  move  $a1, $zero
/* 17806C 801D458C 0C03DB10 */  jal   func_800F6C40
/* 178070 801D4590 24840001 */   addiu $a0, $a0, 1
.L801D4594_ovl8:
/* 178074 801D4594 0C02BE85 */  jal   func_800AFA14
/* 178078 801D4598 00000000 */   nop   
/* 17807C 801D459C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 178080 801D45A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 178084 801D45A4 03E00008 */  jr    $ra
/* 178088 801D45A8 00000000 */   nop   

/* 17808C 801D45AC 00000000 */  nop

.size func_801D447C_ovl8, . - func_801D447C_ovl8
