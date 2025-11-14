.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801D0C60_ovl8
/* 174740 801D0C60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174744 801D0C64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 174748 801D0C68 0C02D70A */  jal   func_800B5C28
/* 17474C 801D0C6C AFA40018 */   sw    $a0, 0x18($sp)
/* 174750 801D0C70 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174754 801D0C74 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174758 801D0C78 3C01800E */ lui $at, %hi(D_800E2090)
/* 17475C 801D0C7C 3C0E800E */  lui   $t6, %hi(gEntitiesNextPosXArray) # $t6, 0x800e
/* 174760 801D0C80 8C620000 */  lw    $v0, ($v1)
/* 174764 801D0C84 25CE25D0 */  addiu $t6, %lo(gEntitiesNextPosXArray) # addiu $t6, $t6, 0x25d0
/* 174768 801D0C88 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 17476C 801D0C8C 00021080 */  sll   $v0, $v0, 2
/* 174770 801D0C90 00220821 */  addu  $at, $at, $v0
/* 174774 801D0C94 C4242090 */ lwc1 $f4, %lo(D_800E2090)($at)
/* 174778 801D0C98 3C01800E */ lui $at, %hi(D_800E3050)
/* 17477C 801D0C9C 00220821 */  addu  $at, $at, $v0
/* 174780 801D0CA0 C4263050 */ lwc1 $f6, %lo(D_800E3050)($at)
/* 174784 801D0CA4 004E2821 */  addu  $a1, $v0, $t6
/* 174788 801D0CA8 C4AA0000 */  lwc1  $f10, ($a1)
/* 17478C 801D0CAC 46062200 */  add.s $f8, $f4, $f6
/* 174790 801D0CB0 3C01800E */ lui $at, %hi(D_800E2250)
/* 174794 801D0CB4 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 174798 801D0CB8 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 17479C 801D0CBC 46085400 */  add.s $f16, $f10, $f8
/* 1747A0 801D0CC0 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 1747A4 801D0CC4 8FA40018 */  lw    $a0, 0x18($sp)
/* 1747A8 801D0CC8 E4B00000 */  swc1  $f16, ($a1)
/* 1747AC 801D0CCC 8C620000 */  lw    $v0, ($v1)
/* 1747B0 801D0CD0 00021080 */  sll   $v0, $v0, 2
/* 1747B4 801D0CD4 00220821 */  addu  $at, $at, $v0
/* 1747B8 801D0CD8 C4322250 */ lwc1 $f18, %lo(D_800E2250)($at)
/* 1747BC 801D0CDC 3C01800E */ lui $at, %hi(D_800E3210)
/* 1747C0 801D0CE0 00220821 */  addu  $at, $at, $v0
/* 1747C4 801D0CE4 C4243210 */ lwc1 $f4, %lo(D_800E3210)($at)
/* 1747C8 801D0CE8 004F3021 */  addu  $a2, $v0, $t7
/* 1747CC 801D0CEC C4CA0000 */  lwc1  $f10, ($a2)
/* 1747D0 801D0CF0 46049180 */  add.s $f6, $f18, $f4
/* 1747D4 801D0CF4 3C01800E */ lui $at, %hi(D_800E2410)
/* 1747D8 801D0CF8 46065200 */  add.s $f8, $f10, $f6
/* 1747DC 801D0CFC E4C80000 */  swc1  $f8, ($a2)
/* 1747E0 801D0D00 8C620000 */  lw    $v0, ($v1)
/* 1747E4 801D0D04 00021080 */  sll   $v0, $v0, 2
/* 1747E8 801D0D08 00220821 */  addu  $at, $at, $v0
/* 1747EC 801D0D0C C4302410 */ lwc1 $f16, %lo(D_800E2410)($at)
/* 1747F0 801D0D10 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1747F4 801D0D14 00220821 */  addu  $at, $at, $v0
/* 1747F8 801D0D18 C43233D0 */ lwc1 $f18, %lo(D_800E33D0)($at)
/* 1747FC 801D0D1C 00583821 */  addu  $a3, $v0, $t8
/* 174800 801D0D20 C4EA0000 */  lwc1  $f10, ($a3)
/* 174804 801D0D24 46128100 */  add.s $f4, $f16, $f18
/* 174808 801D0D28 46045180 */  add.s $f6, $f10, $f4
/* 17480C 801D0D2C 0C02D7EF */  jal   func_800B5FBC
/* 174810 801D0D30 E4E60000 */   swc1  $f6, ($a3)
/* 174814 801D0D34 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174818 801D0D38 27BD0018 */  addiu $sp, $sp, 0x18
/* 17481C 801D0D3C 03E00008 */  jr    $ra
/* 174820 801D0D40 00000000 */   nop   

.type func_801D0C60_ovl8, @function
.size func_801D0C60_ovl8, . - func_801D0C60_ovl8

glabel func_801D0D44_ovl8
/* 174824 801D0D44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174828 801D0D48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17482C 801D0D4C 0C074318 */  jal   func_801D0C60_ovl8
/* 174830 801D0D50 00000000 */   nop   
/* 174834 801D0D54 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 174838 801D0D58 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 17483C 801D0D5C 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 174840 801D0D60 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 174844 801D0D64 8C830000 */  lw    $v1, ($a0)
/* 174848 801D0D68 3C01801E */  lui   $at, %hi(D_801DB060_ovl8) # $at, 0x801e
/* 17484C 801D0D6C C422B060 */  lwc1  $f2, %lo(D_801DB060_ovl8)($at)
/* 174850 801D0D70 00031880 */  sll   $v1, $v1, 2
/* 174854 801D0D74 00A31021 */  addu  $v0, $a1, $v1
/* 174858 801D0D78 C4400000 */  lwc1  $f0, ($v0)
/* 17485C 801D0D7C 44806000 */  mtc1  $zero, $f12
/* 174860 801D0D80 3C01800E */ lui $at, %hi(D_800E17D0)
/* 174864 801D0D84 4600103E */  c.le.s $f2, $f0
/* 174868 801D0D88 00000000 */  nop   
/* 17486C 801D0D8C 4502000C */  bc1fl .L801D0DC0_ovl8
/* 174870 801D0D90 460C003C */   c.lt.s $f0, $f12
/* 174874 801D0D94 46020101 */  sub.s $f4, $f0, $f2
.L801D0D98_ovl8:
/* 174878 801D0D98 E4440000 */  swc1  $f4, ($v0)
/* 17487C 801D0D9C 8C830000 */  lw    $v1, ($a0)
/* 174880 801D0DA0 00031880 */  sll   $v1, $v1, 2
/* 174884 801D0DA4 00A31021 */  addu  $v0, $a1, $v1
/* 174888 801D0DA8 C4400000 */  lwc1  $f0, ($v0)
/* 17488C 801D0DAC 4600103E */  c.le.s $f2, $f0
/* 174890 801D0DB0 00000000 */  nop   
/* 174894 801D0DB4 4503FFF8 */  bc1tl .L801D0D98_ovl8
/* 174898 801D0DB8 46020101 */   sub.s $f4, $f0, $f2
/* 17489C 801D0DBC 460C003C */  c.lt.s $f0, $f12
.L801D0DC0_ovl8:
/* 1748A0 801D0DC0 00000000 */  nop   
/* 1748A4 801D0DC4 4502000C */  bc1fl .L801D0DF8_ovl8
/* 1748A8 801D0DC8 00230821 */   addu  $at, $at, $v1
/* 1748AC 801D0DCC 46020180 */  add.s $f6, $f0, $f2
.L801D0DD0_ovl8:
/* 1748B0 801D0DD0 E4460000 */  swc1  $f6, ($v0)
/* 1748B4 801D0DD4 8C830000 */  lw    $v1, ($a0)
/* 1748B8 801D0DD8 00031880 */  sll   $v1, $v1, 2
/* 1748BC 801D0DDC 00A31021 */  addu  $v0, $a1, $v1
/* 1748C0 801D0DE0 C4400000 */  lwc1  $f0, ($v0)
/* 1748C4 801D0DE4 460C003C */  c.lt.s $f0, $f12
/* 1748C8 801D0DE8 00000000 */  nop   
/* 1748CC 801D0DEC 4503FFF8 */  bc1tl .L801D0DD0_ovl8
/* 1748D0 801D0DF0 46020180 */   add.s $f6, $f0, $f2
/* 1748D4 801D0DF4 00230821 */  addu  $at, $at, $v1
.L801D0DF8_ovl8:
/* 1748D8 801D0DF8 E42017D0 */ swc1 $f0, %lo(D_800E17D0)($at)
/* 1748DC 801D0DFC 8C830000 */  lw    $v1, ($a0)
/* 1748E0 801D0E00 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1748E4 801D0E04 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1748E8 801D0E08 00031880 */  sll   $v1, $v1, 2
/* 1748EC 801D0E0C 00230821 */  addu  $at, $at, $v1
/* 1748F0 801D0E10 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 1748F4 801D0E14 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1748F8 801D0E18 00230821 */  addu  $at, $at, $v1
/* 1748FC 801D0E1C 00C33021 */  addu  $a2, $a2, $v1
/* 174900 801D0E20 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 174904 801D0E24 0C02CC8D */  jal   func_800B3234
/* 174908 801D0E28 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 17490C 801D0E2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174910 801D0E30 27BD0018 */  addiu $sp, $sp, 0x18
/* 174914 801D0E34 03E00008 */  jr    $ra
/* 174918 801D0E38 00000000 */   nop   

.type func_801D0D44_ovl8, @function
.size func_801D0D44_ovl8, . - func_801D0D44_ovl8

glabel func_801D0E3C_ovl8
/* 17491C 801D0E3C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174920 801D0E40 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174924 801D0E44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174928 801D0E48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17492C 801D0E4C 8CAE0000 */  lw    $t6, ($a1)
/* 174930 801D0E50 44806000 */  mtc1  $zero, $f12
/* 174934 801D0E54 3C02800E */  lui   $v0, %hi(D_800E5890) # $v0, 0x800e
/* 174938 801D0E58 24425890 */  addiu $v0, %lo(D_800E5890) # addiu $v0, $v0, 0x5890
/* 17493C 801D0E5C 000E7880 */  sll   $t7, $t6, 2
/* 174940 801D0E60 004FC021 */  addu  $t8, $v0, $t7
/* 174944 801D0E64 E70C0000 */  swc1  $f12, ($t8)
/* 174948 801D0E68 8CA30000 */  lw    $v1, ($a1)
/* 17494C 801D0E6C 3C01800E */ lui $at, %hi(D_800E5C10)
/* 174950 801D0E70 00031880 */  sll   $v1, $v1, 2
/* 174954 801D0E74 0043C821 */  addu  $t9, $v0, $v1
/* 174958 801D0E78 C7200000 */  lwc1  $f0, ($t9)
/* 17495C 801D0E7C 00230821 */  addu  $at, $at, $v1
/* 174960 801D0E80 E4205C10 */ swc1 $f0, %lo(D_800E5C10)($at)
/* 174964 801D0E84 8CA80000 */  lw    $t0, ($a1)
/* 174968 801D0E88 3C01800E */ lui $at, %hi(D_800E56D0)
/* 17496C 801D0E8C 00084880 */  sll   $t1, $t0, 2
/* 174970 801D0E90 00290821 */  addu  $at, $at, $t1
/* 174974 801D0E94 E42056D0 */ swc1 $f0, %lo(D_800E56D0)($at)
/* 174978 801D0E98 8CAA0000 */  lw    $t2, ($a1)
/* 17497C 801D0E9C 3C01800E */ lui $at, %hi(D_800E5510)
/* 174980 801D0EA0 000A5880 */  sll   $t3, $t2, 2
/* 174984 801D0EA4 002B0821 */  addu  $at, $at, $t3
/* 174988 801D0EA8 0C02D8AB */  jal   func_800B62AC
/* 17498C 801D0EAC E4205510 */ swc1 $f0, %lo(D_800E5510)($at)
/* 174990 801D0EB0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174994 801D0EB4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174998 801D0EB8 3C01801E */  lui   $at, %hi(D_801DB064_ovl8) # $at, 0x801e
/* 17499C 801D0EBC C422B064 */  lwc1  $f2, %lo(D_801DB064_ovl8)($at)
/* 1749A0 801D0EC0 8CA30000 */  lw    $v1, ($a1)
/* 1749A4 801D0EC4 3C01800E */ lui $at, %hi(D_800E17D0)
/* 1749A8 801D0EC8 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 1749AC 801D0ECC 00031880 */  sll   $v1, $v1, 2
/* 1749B0 801D0ED0 00230821 */  addu  $at, $at, $v1
/* 1749B4 801D0ED4 C42417D0 */ lwc1 $f4, %lo(D_800E17D0)($at)
/* 1749B8 801D0ED8 3C01800F */ lui $at, %hi(D_800E9020)
/* 1749BC 801D0EDC 00230821 */  addu  $at, $at, $v1
/* 1749C0 801D0EE0 C4269020 */ lwc1 $f6, %lo(D_800E9020)($at)
/* 1749C4 801D0EE4 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 1749C8 801D0EE8 00836021 */  addu  $t4, $a0, $v1
/* 1749CC 801D0EEC 46062200 */  add.s $f8, $f4, $f6
/* 1749D0 801D0EF0 44806000 */  mtc1  $zero, $f12
/* 1749D4 801D0EF4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1749D8 801D0EF8 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1749DC 801D0EFC E5880000 */  swc1  $f8, ($t4)
/* 1749E0 801D0F00 8CA30000 */  lw    $v1, ($a1)
/* 1749E4 801D0F04 00031880 */  sll   $v1, $v1, 2
/* 1749E8 801D0F08 00831021 */  addu  $v0, $a0, $v1
/* 1749EC 801D0F0C C4400000 */  lwc1  $f0, ($v0)
/* 1749F0 801D0F10 4600103E */  c.le.s $f2, $f0
/* 1749F4 801D0F14 00000000 */  nop   
/* 1749F8 801D0F18 4502000C */  bc1fl .L801D0F4C_ovl8
/* 1749FC 801D0F1C 460C003C */   c.lt.s $f0, $f12
/* 174A00 801D0F20 46020281 */  sub.s $f10, $f0, $f2
.L801D0F24_ovl8:
/* 174A04 801D0F24 E44A0000 */  swc1  $f10, ($v0)
/* 174A08 801D0F28 8CA30000 */  lw    $v1, ($a1)
/* 174A0C 801D0F2C 00031880 */  sll   $v1, $v1, 2
/* 174A10 801D0F30 00831021 */  addu  $v0, $a0, $v1
/* 174A14 801D0F34 C4400000 */  lwc1  $f0, ($v0)
/* 174A18 801D0F38 4600103E */  c.le.s $f2, $f0
/* 174A1C 801D0F3C 00000000 */  nop   
/* 174A20 801D0F40 4503FFF8 */  bc1tl .L801D0F24_ovl8
/* 174A24 801D0F44 46020281 */   sub.s $f10, $f0, $f2
/* 174A28 801D0F48 460C003C */  c.lt.s $f0, $f12
.L801D0F4C_ovl8:
/* 174A2C 801D0F4C 00000000 */  nop   
/* 174A30 801D0F50 4502000C */  bc1fl .L801D0F84_ovl8
/* 174A34 801D0F54 00230821 */   addu  $at, $at, $v1
/* 174A38 801D0F58 46020400 */  add.s $f16, $f0, $f2
.L801D0F5C_ovl8:
/* 174A3C 801D0F5C E4500000 */  swc1  $f16, ($v0)
/* 174A40 801D0F60 8CA30000 */  lw    $v1, ($a1)
/* 174A44 801D0F64 00031880 */  sll   $v1, $v1, 2
/* 174A48 801D0F68 00831021 */  addu  $v0, $a0, $v1
/* 174A4C 801D0F6C C4400000 */  lwc1  $f0, ($v0)
/* 174A50 801D0F70 460C003C */  c.lt.s $f0, $f12
/* 174A54 801D0F74 00000000 */  nop   
/* 174A58 801D0F78 4503FFF8 */  bc1tl .L801D0F5C_ovl8
/* 174A5C 801D0F7C 46020400 */   add.s $f16, $f0, $f2
/* 174A60 801D0F80 00230821 */  addu  $at, $at, $v1
.L801D0F84_ovl8:
/* 174A64 801D0F84 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 174A68 801D0F88 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 174A6C 801D0F8C 00230821 */  addu  $at, $at, $v1
/* 174A70 801D0F90 00C33021 */  addu  $a2, $a2, $v1
/* 174A74 801D0F94 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 174A78 801D0F98 0C02CC8D */  jal   func_800B3234
/* 174A7C 801D0F9C C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 174A80 801D0FA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174A84 801D0FA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 174A88 801D0FA8 03E00008 */  jr    $ra
/* 174A8C 801D0FAC 00000000 */   nop   

.type func_801D0E3C_ovl8, @function
.size func_801D0E3C_ovl8, . - func_801D0E3C_ovl8

glabel func_801D0FB0_ovl8
/* 174A90 801D0FB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174A94 801D0FB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 174A98 801D0FB8 0C02D70A */  jal   func_800B5C28
/* 174A9C 801D0FBC AFA40018 */   sw    $a0, 0x18($sp)
/* 174AA0 801D0FC0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174AA4 801D0FC4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174AA8 801D0FC8 3C01800E */ lui $at, %hi(D_800E2090)
/* 174AAC 801D0FCC 3C0E800E */  lui   $t6, %hi(gEntitiesNextPosXArray) # $t6, 0x800e
/* 174AB0 801D0FD0 8C620000 */  lw    $v0, ($v1)
/* 174AB4 801D0FD4 25CE25D0 */  addiu $t6, %lo(gEntitiesNextPosXArray) # addiu $t6, $t6, 0x25d0
/* 174AB8 801D0FD8 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 174ABC 801D0FDC 00021080 */  sll   $v0, $v0, 2
/* 174AC0 801D0FE0 00220821 */  addu  $at, $at, $v0
/* 174AC4 801D0FE4 C4242090 */ lwc1 $f4, %lo(D_800E2090)($at)
/* 174AC8 801D0FE8 3C01800E */ lui $at, %hi(D_800E3050)
/* 174ACC 801D0FEC 00220821 */  addu  $at, $at, $v0
/* 174AD0 801D0FF0 C4263050 */ lwc1 $f6, %lo(D_800E3050)($at)
/* 174AD4 801D0FF4 004E2821 */  addu  $a1, $v0, $t6
/* 174AD8 801D0FF8 C4AA0000 */  lwc1  $f10, ($a1)
/* 174ADC 801D0FFC 46062200 */  add.s $f8, $f4, $f6
/* 174AE0 801D1000 3C01800E */ lui $at, %hi(D_800E2250)
/* 174AE4 801D1004 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 174AE8 801D1008 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 174AEC 801D100C 46085400 */  add.s $f16, $f10, $f8
/* 174AF0 801D1010 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 174AF4 801D1014 8FA40018 */  lw    $a0, 0x18($sp)
/* 174AF8 801D1018 E4B00000 */  swc1  $f16, ($a1)
/* 174AFC 801D101C 8C620000 */  lw    $v0, ($v1)
/* 174B00 801D1020 00021080 */  sll   $v0, $v0, 2
/* 174B04 801D1024 00220821 */  addu  $at, $at, $v0
/* 174B08 801D1028 C4322250 */ lwc1 $f18, %lo(D_800E2250)($at)
/* 174B0C 801D102C 3C01800E */ lui $at, %hi(D_800E3210)
/* 174B10 801D1030 00220821 */  addu  $at, $at, $v0
/* 174B14 801D1034 C4243210 */ lwc1 $f4, %lo(D_800E3210)($at)
/* 174B18 801D1038 004F3021 */  addu  $a2, $v0, $t7
/* 174B1C 801D103C C4CA0000 */  lwc1  $f10, ($a2)
/* 174B20 801D1040 46049180 */  add.s $f6, $f18, $f4
/* 174B24 801D1044 3C01800E */ lui $at, %hi(D_800E2410)
/* 174B28 801D1048 46065200 */  add.s $f8, $f10, $f6
/* 174B2C 801D104C E4C80000 */  swc1  $f8, ($a2)
/* 174B30 801D1050 8C620000 */  lw    $v0, ($v1)
/* 174B34 801D1054 00021080 */  sll   $v0, $v0, 2
/* 174B38 801D1058 00220821 */  addu  $at, $at, $v0
/* 174B3C 801D105C C4302410 */ lwc1 $f16, %lo(D_800E2410)($at)
/* 174B40 801D1060 3C01800E */ lui $at, %hi(D_800E33D0)
/* 174B44 801D1064 00220821 */  addu  $at, $at, $v0
/* 174B48 801D1068 C43233D0 */ lwc1 $f18, %lo(D_800E33D0)($at)
/* 174B4C 801D106C 00583821 */  addu  $a3, $v0, $t8
/* 174B50 801D1070 C4EA0000 */  lwc1  $f10, ($a3)
/* 174B54 801D1074 46128100 */  add.s $f4, $f16, $f18
/* 174B58 801D1078 46045180 */  add.s $f6, $f10, $f4
/* 174B5C 801D107C 0C02D7EF */  jal   func_800B5FBC
/* 174B60 801D1080 E4E60000 */   swc1  $f6, ($a3)
/* 174B64 801D1084 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174B68 801D1088 27BD0018 */  addiu $sp, $sp, 0x18
/* 174B6C 801D108C 03E00008 */  jr    $ra
/* 174B70 801D1090 00000000 */   nop   

.type func_801D0FB0_ovl8, @function
.size func_801D0FB0_ovl8, . - func_801D0FB0_ovl8

glabel func_801D1094_ovl8
/* 174B74 801D1094 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174B78 801D1098 AFBF0014 */  sw    $ra, 0x14($sp)
/* 174B7C 801D109C 0C0743EC */  jal   func_801D0FB0_ovl8
/* 174B80 801D10A0 00000000 */   nop   
/* 174B84 801D10A4 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 174B88 801D10A8 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 174B8C 801D10AC 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 174B90 801D10B0 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 174B94 801D10B4 8C830000 */  lw    $v1, ($a0)
/* 174B98 801D10B8 3C01801E */  lui   $at, %hi(D_801DB068_ovl8) # $at, 0x801e
/* 174B9C 801D10BC C422B068 */  lwc1  $f2, %lo(D_801DB068_ovl8)($at)
/* 174BA0 801D10C0 00031880 */  sll   $v1, $v1, 2
/* 174BA4 801D10C4 00A31021 */  addu  $v0, $a1, $v1
/* 174BA8 801D10C8 C4400000 */  lwc1  $f0, ($v0)
/* 174BAC 801D10CC 44806000 */  mtc1  $zero, $f12
/* 174BB0 801D10D0 3C01800E */ lui $at, %hi(D_800E17D0)
/* 174BB4 801D10D4 4600103E */  c.le.s $f2, $f0
/* 174BB8 801D10D8 00000000 */  nop   
/* 174BBC 801D10DC 4502000C */  bc1fl .L801D1110_ovl8
/* 174BC0 801D10E0 460C003C */   c.lt.s $f0, $f12
/* 174BC4 801D10E4 46020101 */  sub.s $f4, $f0, $f2
.L801D10E8_ovl8:
/* 174BC8 801D10E8 E4440000 */  swc1  $f4, ($v0)
/* 174BCC 801D10EC 8C830000 */  lw    $v1, ($a0)
/* 174BD0 801D10F0 00031880 */  sll   $v1, $v1, 2
/* 174BD4 801D10F4 00A31021 */  addu  $v0, $a1, $v1
/* 174BD8 801D10F8 C4400000 */  lwc1  $f0, ($v0)
/* 174BDC 801D10FC 4600103E */  c.le.s $f2, $f0
/* 174BE0 801D1100 00000000 */  nop   
/* 174BE4 801D1104 4503FFF8 */  bc1tl .L801D10E8_ovl8
/* 174BE8 801D1108 46020101 */   sub.s $f4, $f0, $f2
/* 174BEC 801D110C 460C003C */  c.lt.s $f0, $f12
.L801D1110_ovl8:
/* 174BF0 801D1110 00000000 */  nop   
/* 174BF4 801D1114 4502000C */  bc1fl .L801D1148_ovl8
/* 174BF8 801D1118 00230821 */   addu  $at, $at, $v1
/* 174BFC 801D111C 46020180 */  add.s $f6, $f0, $f2
.L801D1120_ovl8:
/* 174C00 801D1120 E4460000 */  swc1  $f6, ($v0)
/* 174C04 801D1124 8C830000 */  lw    $v1, ($a0)
/* 174C08 801D1128 00031880 */  sll   $v1, $v1, 2
/* 174C0C 801D112C 00A31021 */  addu  $v0, $a1, $v1
/* 174C10 801D1130 C4400000 */  lwc1  $f0, ($v0)
/* 174C14 801D1134 460C003C */  c.lt.s $f0, $f12
/* 174C18 801D1138 00000000 */  nop   
/* 174C1C 801D113C 4503FFF8 */  bc1tl .L801D1120_ovl8
/* 174C20 801D1140 46020180 */   add.s $f6, $f0, $f2
/* 174C24 801D1144 00230821 */  addu  $at, $at, $v1
.L801D1148_ovl8:
/* 174C28 801D1148 0C02CC6D */  jal   func_800B31B4
/* 174C2C 801D114C E42017D0 */ swc1 $f0, %lo(D_800E17D0)($at)
/* 174C30 801D1150 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174C34 801D1154 27BD0018 */  addiu $sp, $sp, 0x18
/* 174C38 801D1158 03E00008 */  jr    $ra
/* 174C3C 801D115C 00000000 */   nop   

.type func_801D1094_ovl8, @function
.size func_801D1094_ovl8, . - func_801D1094_ovl8

glabel func_801D1160_ovl8
/* 174C40 801D1160 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174C44 801D1164 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174C48 801D1168 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174C4C 801D116C AFBF0014 */  sw    $ra, 0x14($sp)
/* 174C50 801D1170 8CAE0000 */  lw    $t6, ($a1)
/* 174C54 801D1174 44806000 */  mtc1  $zero, $f12
/* 174C58 801D1178 3C02800E */  lui   $v0, %hi(D_800E5890) # $v0, 0x800e
/* 174C5C 801D117C 24425890 */  addiu $v0, %lo(D_800E5890) # addiu $v0, $v0, 0x5890
/* 174C60 801D1180 000E7880 */  sll   $t7, $t6, 2
/* 174C64 801D1184 004FC021 */  addu  $t8, $v0, $t7
/* 174C68 801D1188 E70C0000 */  swc1  $f12, ($t8)
/* 174C6C 801D118C 8CA30000 */  lw    $v1, ($a1)
/* 174C70 801D1190 3C01800E */ lui $at, %hi(D_800E5C10)
/* 174C74 801D1194 00031880 */  sll   $v1, $v1, 2
/* 174C78 801D1198 0043C821 */  addu  $t9, $v0, $v1
/* 174C7C 801D119C C7200000 */  lwc1  $f0, ($t9)
/* 174C80 801D11A0 00230821 */  addu  $at, $at, $v1
/* 174C84 801D11A4 E4205C10 */ swc1 $f0, %lo(D_800E5C10)($at)
/* 174C88 801D11A8 8CA80000 */  lw    $t0, ($a1)
/* 174C8C 801D11AC 3C01800E */ lui $at, %hi(D_800E56D0)
/* 174C90 801D11B0 00084880 */  sll   $t1, $t0, 2
/* 174C94 801D11B4 00290821 */  addu  $at, $at, $t1
/* 174C98 801D11B8 E42056D0 */ swc1 $f0, %lo(D_800E56D0)($at)
/* 174C9C 801D11BC 8CAA0000 */  lw    $t2, ($a1)
/* 174CA0 801D11C0 3C01800E */ lui $at, %hi(D_800E5510)
/* 174CA4 801D11C4 000A5880 */  sll   $t3, $t2, 2
/* 174CA8 801D11C8 002B0821 */  addu  $at, $at, $t3
/* 174CAC 801D11CC 0C02D8AB */  jal   func_800B62AC
/* 174CB0 801D11D0 E4205510 */ swc1 $f0, %lo(D_800E5510)($at)
/* 174CB4 801D11D4 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174CB8 801D11D8 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174CBC 801D11DC 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 174CC0 801D11E0 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 174CC4 801D11E4 8CA30000 */  lw    $v1, ($a1)
/* 174CC8 801D11E8 3C01801E */  lui   $at, %hi(D_801DB06C_ovl8) # $at, 0x801e
/* 174CCC 801D11EC C422B06C */  lwc1  $f2, %lo(D_801DB06C_ovl8)($at)
/* 174CD0 801D11F0 00031880 */  sll   $v1, $v1, 2
/* 174CD4 801D11F4 00831021 */  addu  $v0, $a0, $v1
/* 174CD8 801D11F8 C4400000 */  lwc1  $f0, ($v0)
/* 174CDC 801D11FC 44806000 */  mtc1  $zero, $f12
/* 174CE0 801D1200 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 174CE4 801D1204 4600103E */  c.le.s $f2, $f0
/* 174CE8 801D1208 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 174CEC 801D120C 4502000C */  bc1fl .L801D1240_ovl8
/* 174CF0 801D1210 460C003C */   c.lt.s $f0, $f12
/* 174CF4 801D1214 46020101 */  sub.s $f4, $f0, $f2
.L801D1218_ovl8:
/* 174CF8 801D1218 E4440000 */  swc1  $f4, ($v0)
/* 174CFC 801D121C 8CA30000 */  lw    $v1, ($a1)
/* 174D00 801D1220 00031880 */  sll   $v1, $v1, 2
/* 174D04 801D1224 00831021 */  addu  $v0, $a0, $v1
/* 174D08 801D1228 C4400000 */  lwc1  $f0, ($v0)
/* 174D0C 801D122C 4600103E */  c.le.s $f2, $f0
/* 174D10 801D1230 00000000 */  nop   
/* 174D14 801D1234 4503FFF8 */  bc1tl .L801D1218_ovl8
/* 174D18 801D1238 46020101 */   sub.s $f4, $f0, $f2
/* 174D1C 801D123C 460C003C */  c.lt.s $f0, $f12
.L801D1240_ovl8:
/* 174D20 801D1240 00000000 */  nop   
/* 174D24 801D1244 4502000C */  bc1fl .L801D1278_ovl8
/* 174D28 801D1248 00230821 */   addu  $at, $at, $v1
/* 174D2C 801D124C 46020180 */  add.s $f6, $f0, $f2
.L801D1250_ovl8:
/* 174D30 801D1250 E4460000 */  swc1  $f6, ($v0)
/* 174D34 801D1254 8CA30000 */  lw    $v1, ($a1)
/* 174D38 801D1258 00031880 */  sll   $v1, $v1, 2
/* 174D3C 801D125C 00831021 */  addu  $v0, $a0, $v1
/* 174D40 801D1260 C4400000 */  lwc1  $f0, ($v0)
/* 174D44 801D1264 460C003C */  c.lt.s $f0, $f12
/* 174D48 801D1268 00000000 */  nop   
/* 174D4C 801D126C 4503FFF8 */  bc1tl .L801D1250_ovl8
/* 174D50 801D1270 46020180 */   add.s $f6, $f0, $f2
/* 174D54 801D1274 00230821 */  addu  $at, $at, $v1
.L801D1278_ovl8:
/* 174D58 801D1278 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 174D5C 801D127C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 174D60 801D1280 00230821 */  addu  $at, $at, $v1
/* 174D64 801D1284 00C33021 */  addu  $a2, $a2, $v1
/* 174D68 801D1288 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 174D6C 801D128C 0C02CC8D */  jal   func_800B3234
/* 174D70 801D1290 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 174D74 801D1294 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174D78 801D1298 27BD0018 */  addiu $sp, $sp, 0x18
/* 174D7C 801D129C 03E00008 */  jr    $ra
/* 174D80 801D12A0 00000000 */   nop   

.type func_801D1160_ovl8, @function
.size func_801D1160_ovl8, . - func_801D1160_ovl8

glabel func_801D12A4_ovl8
/* 174D84 801D12A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 174D88 801D12A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 174D8C 801D12AC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 174D90 801D12B0 44806000 */  mtc1  $zero, $f12
/* 174D94 801D12B4 8C430000 */  lw    $v1, ($v0)
/* 174D98 801D12B8 3C04800F */  lui   $a0, %hi(D_800EB320) # $a0, 0x800f
/* 174D9C 801D12BC 2484B320 */  addiu $a0, %lo(D_800EB320) # addiu $a0, $a0, -0x4ce0
/* 174DA0 801D12C0 00031880 */  sll   $v1, $v1, 2
/* 174DA4 801D12C4 00230821 */  addu  $at, $at, $v1
/* 174DA8 801D12C8 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 174DAC 801D12CC 00837021 */  addu  $t6, $a0, $v1
/* 174DB0 801D12D0 C5C80000 */  lwc1  $f8, ($t6)
/* 174DB4 801D12D4 46046001 */  sub.s $f0, $f12, $f4
/* 174DB8 801D12D8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 174DBC 801D12DC 00230821 */  addu  $at, $at, $v1
/* 174DC0 801D12E0 C4262950 */ lwc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 174DC4 801D12E4 46004282 */  mul.s $f10, $f8, $f0
/* 174DC8 801D12E8 3C01800E */ lui $at, %hi(D_800E2090)
/* 174DCC 801D12EC 00230821 */  addu  $at, $at, $v1
/* 174DD0 801D12F0 44802000 */  mtc1  $zero, $f4
/* 174DD4 801D12F4 46066081 */  sub.s $f2, $f12, $f6
/* 174DD8 801D12F8 E42A2090 */ swc1 $f10, %lo(D_800E2090)($at)
/* 174DDC 801D12FC 8C430000 */  lw    $v1, ($v0)
/* 174DE0 801D1300 3C01800E */ lui $at, %hi(D_800E2410)
/* 174DE4 801D1304 00031880 */  sll   $v1, $v1, 2
/* 174DE8 801D1308 00837821 */  addu  $t7, $a0, $v1
/* 174DEC 801D130C C5F00000 */  lwc1  $f16, ($t7)
/* 174DF0 801D1310 00230821 */  addu  $at, $at, $v1
/* 174DF4 801D1314 46028482 */  mul.s $f18, $f16, $f2
/* 174DF8 801D1318 E4322410 */ swc1 $f18, %lo(D_800E2410)($at)
/* 174DFC 801D131C 8C580000 */  lw    $t8, ($v0)
/* 174E00 801D1320 3C01800E */ lui $at, %hi(D_800E2250)
/* 174E04 801D1324 0018C880 */  sll   $t9, $t8, 2
/* 174E08 801D1328 00390821 */  addu  $at, $at, $t9
/* 174E0C 801D132C 03E00008 */  jr    $ra
/* 174E10 801D1330 E4242250 */ swc1 $f4, %lo(D_800E2250)($at)

.type func_801D12A4_ovl8, @function
.size func_801D12A4_ovl8, . - func_801D12A4_ovl8

glabel func_801D1334_ovl8
/* 174E14 801D1334 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174E18 801D1338 AFBF0014 */  sw    $ra, 0x14($sp)
/* 174E1C 801D133C 0C02D69F */  jal   func_800B5A7C
/* 174E20 801D1340 00000000 */   nop   
/* 174E24 801D1344 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174E28 801D1348 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174E2C 801D134C 3C01800E */ lui $at, %hi(D_800E5510)
/* 174E30 801D1350 3C0E800E */  lui   $t6, %hi(D_800E64D0) # $t6, 0x800e
/* 174E34 801D1354 8C620000 */  lw    $v0, ($v1)
/* 174E38 801D1358 25CE64D0 */  addiu $t6, %lo(D_800E64D0) # addiu $t6, $t6, 0x64d0
/* 174E3C 801D135C 3C04800E */ lui $a0, %hi(D_800DE350)
/* 174E40 801D1360 00021080 */  sll   $v0, $v0, 2
/* 174E44 801D1364 00220821 */  addu  $at, $at, $v0
/* 174E48 801D1368 C4245510 */ lwc1 $f4, %lo(D_800E5510)($at)
/* 174E4C 801D136C 3C01800E */ lui $at, %hi(D_800E56D0)
/* 174E50 801D1370 00220821 */  addu  $at, $at, $v0
/* 174E54 801D1374 C42656D0 */ lwc1 $f6, %lo(D_800E56D0)($at)
/* 174E58 801D1378 004E2821 */  addu  $a1, $v0, $t6
/* 174E5C 801D137C C4AA0000 */  lwc1  $f10, ($a1)
/* 174E60 801D1380 46062200 */  add.s $f8, $f4, $f6
/* 174E64 801D1384 46085400 */  add.s $f16, $f10, $f8
/* 174E68 801D1388 E4B00000 */  swc1  $f16, ($a1)
/* 174E6C 801D138C 8C6F0000 */  lw    $t7, ($v1)
/* 174E70 801D1390 000FC080 */  sll   $t8, $t7, 2
/* 174E74 801D1394 00982021 */  addu  $a0, $a0, $t8
/* 174E78 801D1398 0C03E39B */  jal   func_800F8E6C
/* 174E7C 801D139C 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 174E80 801D13A0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174E84 801D13A4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174E88 801D13A8 3C01800E */ lui $at, %hi(D_800E5510)
/* 174E8C 801D13AC 3C19800E */  lui   $t9, %hi(D_800E64D0) # $t9, 0x800e
/* 174E90 801D13B0 8C620000 */  lw    $v0, ($v1)
/* 174E94 801D13B4 273964D0 */  addiu $t9, %lo(D_800E64D0) # addiu $t9, $t9, 0x64d0
/* 174E98 801D13B8 3C08800F */ lui $t0, %hi(D_800E98E0)
/* 174E9C 801D13BC 00021080 */  sll   $v0, $v0, 2
/* 174EA0 801D13C0 00220821 */  addu  $at, $at, $v0
/* 174EA4 801D13C4 C4325510 */ lwc1 $f18, %lo(D_800E5510)($at)
/* 174EA8 801D13C8 3C01800E */ lui $at, %hi(D_800E56D0)
/* 174EAC 801D13CC 00220821 */  addu  $at, $at, $v0
/* 174EB0 801D13D0 C42456D0 */ lwc1 $f4, %lo(D_800E56D0)($at)
/* 174EB4 801D13D4 00592821 */  addu  $a1, $v0, $t9
/* 174EB8 801D13D8 C4AA0000 */  lwc1  $f10, ($a1)
/* 174EBC 801D13DC 46049180 */  add.s $f6, $f18, $f4
/* 174EC0 801D13E0 46065201 */  sub.s $f8, $f10, $f6
/* 174EC4 801D13E4 E4A80000 */  swc1  $f8, ($a1)
/* 174EC8 801D13E8 8C620000 */  lw    $v0, ($v1)
/* 174ECC 801D13EC 3C03800D */  lui   $v1, %hi(D_800D7098) # $v1, 0x800d
/* 174ED0 801D13F0 24637098 */  addiu $v1, %lo(D_800D7098) # addiu $v1, $v1, 0x7098
/* 174ED4 801D13F4 00021080 */  sll   $v0, $v0, 2
/* 174ED8 801D13F8 01024021 */  addu  $t0, $t0, $v0
/* 174EDC 801D13FC 8D0898E0 */ lw $t0, %lo(D_800E98E0)($t0)
/* 174EE0 801D1400 1100000D */  beqz  $t0, .L801D1438_ovl8
/* 174EE4 801D1404 00000000 */   nop   
/* 174EE8 801D1408 8C690010 */  lw    $t1, 0x10($v1)
/* 174EEC 801D140C 1120000A */  beqz  $t1, .L801D1438_ovl8
/* 174EF0 801D1410 00000000 */   nop   
/* 174EF4 801D1414 8C6A0000 */  lw    $t2, ($v1)
/* 174EF8 801D1418 3C0C800E */  lui   $t4, %hi(D_800E3210) # $t4, 0x800e
/* 174EFC 801D141C 258C3210 */  addiu $t4, %lo(D_800E3210) # addiu $t4, $t4, 0x3210
/* 174F00 801D1420 000A5880 */  sll   $t3, $t2, 2
/* 174F04 801D1424 016C6821 */  addu  $t5, $t3, $t4
/* 174F08 801D1428 C5B00000 */  lwc1  $f16, ($t5)
/* 174F0C 801D142C 004C7021 */  addu  $t6, $v0, $t4
/* 174F10 801D1430 1000000A */  b     .L801D145C_ovl8
/* 174F14 801D1434 E5D00000 */   swc1  $f16, ($t6)
.L801D1438_ovl8:
/* 174F18 801D1438 3C0F800F */ lui $t7, %hi(D_800E9C60)
/* 174F1C 801D143C 01E27821 */  addu  $t7, $t7, $v0
/* 174F20 801D1440 8DEF9C60 */ lw $t7, %lo(D_800E9C60)($t7)
/* 174F24 801D1444 15E00005 */  bnez  $t7, .L801D145C_ovl8
/* 174F28 801D1448 00000000 */   nop   
/* 174F2C 801D144C 44809000 */  mtc1  $zero, $f18
/* 174F30 801D1450 3C01800E */ lui $at, %hi(D_800E3210)
/* 174F34 801D1454 00220821 */  addu  $at, $at, $v0
/* 174F38 801D1458 E4323210 */ swc1 $f18, %lo(D_800E3210)($at)
.L801D145C_ovl8:
/* 174F3C 801D145C 0C0744A9 */  jal   func_801D12A4_ovl8
/* 174F40 801D1460 00000000 */   nop   
/* 174F44 801D1464 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174F48 801D1468 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174F4C 801D146C 3C18800E */  lui   $t8, %hi(gEntitiesNextPosXArray) # $t8, 0x800e
/* 174F50 801D1470 271825D0 */  addiu $t8, %lo(gEntitiesNextPosXArray) # addiu $t8, $t8, 0x25d0
/* 174F54 801D1474 8C620000 */  lw    $v0, ($v1)
/* 174F58 801D1478 3C01800E */ lui $at, %hi(D_800E2090)
/* 174F5C 801D147C 3C19800F */  lui   $t9, %hi(D_800EA6E0) # $t9, 0x800f
/* 174F60 801D1480 00021080 */  sll   $v0, $v0, 2
/* 174F64 801D1484 00582021 */  addu  $a0, $v0, $t8
/* 174F68 801D1488 00220821 */  addu  $at, $at, $v0
/* 174F6C 801D148C C42A2090 */ lwc1 $f10, %lo(D_800E2090)($at)
/* 174F70 801D1490 C4840000 */  lwc1  $f4, ($a0)
/* 174F74 801D1494 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 174F78 801D1498 2739A6E0 */  addiu $t9, %lo(D_800EA6E0) # addiu $t9, $t9, -0x5920
/* 174F7C 801D149C 460A2180 */  add.s $f6, $f4, $f10
/* 174F80 801D14A0 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 174F84 801D14A4 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 174F88 801D14A8 3C09800E */  lui   $t1, %hi(gEntitiesNextPosZArray) # $t1, 0x800e
/* 174F8C 801D14AC E4860000 */  swc1  $f6, ($a0)
/* 174F90 801D14B0 8C620000 */  lw    $v0, ($v1)
/* 174F94 801D14B4 25292950 */  addiu $t1, %lo(gEntitiesNextPosZArray) # addiu $t1, $t1, 0x2950
/* 174F98 801D14B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174F9C 801D14BC 00021080 */  sll   $v0, $v0, 2
/* 174FA0 801D14C0 00592821 */  addu  $a1, $v0, $t9
/* 174FA4 801D14C4 00220821 */  addu  $at, $at, $v0
/* 174FA8 801D14C8 C430A8A0 */ lwc1 $f16, %lo(D_800EA8A0)($at)
/* 174FAC 801D14CC C4A80000 */  lwc1  $f8, ($a1)
/* 174FB0 801D14D0 3C01800E */ lui $at, %hi(D_800E3210)
/* 174FB4 801D14D4 46104000 */  add.s $f0, $f8, $f16
/* 174FB8 801D14D8 E4A00000 */  swc1  $f0, ($a1)
/* 174FBC 801D14DC 8C620000 */  lw    $v0, ($v1)
/* 174FC0 801D14E0 00021080 */  sll   $v0, $v0, 2
/* 174FC4 801D14E4 00220821 */  addu  $at, $at, $v0
/* 174FC8 801D14E8 C4243210 */ lwc1 $f4, %lo(D_800E3210)($at)
/* 174FCC 801D14EC 00483021 */  addu  $a2, $v0, $t0
/* 174FD0 801D14F0 C4D20000 */  lwc1  $f18, ($a2)
/* 174FD4 801D14F4 46002280 */  add.s $f10, $f4, $f0
/* 174FD8 801D14F8 3C01800E */ lui $at, %hi(D_800E2410)
/* 174FDC 801D14FC 460A9180 */  add.s $f6, $f18, $f10
/* 174FE0 801D1500 E4C60000 */  swc1  $f6, ($a2)
/* 174FE4 801D1504 8C620000 */  lw    $v0, ($v1)
/* 174FE8 801D1508 00021080 */  sll   $v0, $v0, 2
/* 174FEC 801D150C 00493821 */  addu  $a3, $v0, $t1
/* 174FF0 801D1510 00220821 */  addu  $at, $at, $v0
/* 174FF4 801D1514 C4302410 */ lwc1 $f16, %lo(D_800E2410)($at)
/* 174FF8 801D1518 C4E80000 */  lwc1  $f8, ($a3)
/* 174FFC 801D151C 27BD0018 */  addiu $sp, $sp, 0x18
/* 175000 801D1520 46104100 */  add.s $f4, $f8, $f16
/* 175004 801D1524 03E00008 */  jr    $ra
/* 175008 801D1528 E4E40000 */   swc1  $f4, ($a3)

.type func_801D1334_ovl8, @function
.size func_801D1334_ovl8, . - func_801D1334_ovl8

glabel func_801D152C_ovl8
/* 17500C 801D152C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 175010 801D1530 AFBF0014 */  sw    $ra, 0x14($sp)
/* 175014 801D1534 0C0744CD */  jal   func_801D1334_ovl8
/* 175018 801D1538 00000000 */   nop   
/* 17501C 801D153C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 175020 801D1540 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 175024 801D1544 3C01801E */  lui   $at, %hi(D_801DB070_ovl8) # $at, 0x801e
/* 175028 801D1548 C422B070 */  lwc1  $f2, %lo(D_801DB070_ovl8)($at)
/* 17502C 801D154C 8C830000 */  lw    $v1, ($a0)
/* 175030 801D1550 3C01800E */ lui $at, %hi(D_800E6A10)
/* 175034 801D1554 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 175038 801D1558 00031880 */  sll   $v1, $v1, 2
/* 17503C 801D155C 00230821 */  addu  $at, $at, $v1
/* 175040 801D1560 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 175044 801D1564 3C01801E */  lui   $at, %hi(D_801DB074_ovl8) # $at, 0x801e
/* 175048 801D1568 C426B074 */  lwc1  $f6, %lo(D_801DB074_ovl8)($at)
/* 17504C 801D156C 3C01800E */ lui $at, %hi(D_800E17D0)
/* 175050 801D1570 00230821 */  addu  $at, $at, $v1
/* 175054 801D1574 46062202 */  mul.s $f8, $f4, $f6
/* 175058 801D1578 C42A17D0 */ lwc1 $f10, %lo(D_800E17D0)($at)
/* 17505C 801D157C 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 175060 801D1580 00A37021 */  addu  $t6, $a1, $v1
/* 175064 801D1584 44806000 */  mtc1  $zero, $f12
/* 175068 801D1588 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 17506C 801D158C 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 175070 801D1590 460A4400 */  add.s $f16, $f8, $f10
/* 175074 801D1594 E5D00000 */  swc1  $f16, ($t6)
/* 175078 801D1598 8C830000 */  lw    $v1, ($a0)
/* 17507C 801D159C 00031880 */  sll   $v1, $v1, 2
/* 175080 801D15A0 00A31021 */  addu  $v0, $a1, $v1
/* 175084 801D15A4 C4400000 */  lwc1  $f0, ($v0)
/* 175088 801D15A8 4600103E */  c.le.s $f2, $f0
/* 17508C 801D15AC 00000000 */  nop   
/* 175090 801D15B0 4502000C */  bc1fl .L801D15E4_ovl8
/* 175094 801D15B4 460C003C */   c.lt.s $f0, $f12
/* 175098 801D15B8 46020481 */  sub.s $f18, $f0, $f2
.L801D15BC_ovl8:
/* 17509C 801D15BC E4520000 */  swc1  $f18, ($v0)
/* 1750A0 801D15C0 8C830000 */  lw    $v1, ($a0)
/* 1750A4 801D15C4 00031880 */  sll   $v1, $v1, 2
/* 1750A8 801D15C8 00A31021 */  addu  $v0, $a1, $v1
/* 1750AC 801D15CC C4400000 */  lwc1  $f0, ($v0)
/* 1750B0 801D15D0 4600103E */  c.le.s $f2, $f0
/* 1750B4 801D15D4 00000000 */  nop   
/* 1750B8 801D15D8 4503FFF8 */  bc1tl .L801D15BC_ovl8
/* 1750BC 801D15DC 46020481 */   sub.s $f18, $f0, $f2
/* 1750C0 801D15E0 460C003C */  c.lt.s $f0, $f12
.L801D15E4_ovl8:
/* 1750C4 801D15E4 00000000 */  nop   
/* 1750C8 801D15E8 4502000C */  bc1fl .L801D161C_ovl8
/* 1750CC 801D15EC 00230821 */   addu  $at, $at, $v1
/* 1750D0 801D15F0 46020100 */  add.s $f4, $f0, $f2
.L801D15F4_ovl8:
/* 1750D4 801D15F4 E4440000 */  swc1  $f4, ($v0)
/* 1750D8 801D15F8 8C830000 */  lw    $v1, ($a0)
/* 1750DC 801D15FC 00031880 */  sll   $v1, $v1, 2
/* 1750E0 801D1600 00A31021 */  addu  $v0, $a1, $v1
/* 1750E4 801D1604 C4400000 */  lwc1  $f0, ($v0)
/* 1750E8 801D1608 460C003C */  c.lt.s $f0, $f12
/* 1750EC 801D160C 00000000 */  nop   
/* 1750F0 801D1610 4503FFF8 */  bc1tl .L801D15F4_ovl8
/* 1750F4 801D1614 46020100 */   add.s $f4, $f0, $f2
/* 1750F8 801D1618 00230821 */  addu  $at, $at, $v1
.L801D161C_ovl8:
/* 1750FC 801D161C C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 175100 801D1620 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175104 801D1624 00230821 */  addu  $at, $at, $v1
/* 175108 801D1628 00C33021 */  addu  $a2, $a2, $v1
/* 17510C 801D162C 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 175110 801D1630 0C02CC8D */  jal   func_800B3234
/* 175114 801D1634 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 175118 801D1638 8FBF0014 */  lw    $ra, 0x14($sp)
/* 17511C 801D163C 27BD0018 */  addiu $sp, $sp, 0x18
/* 175120 801D1640 03E00008 */  jr    $ra
/* 175124 801D1644 00000000 */   nop   

.type func_801D152C_ovl8, @function
.size func_801D152C_ovl8, . - func_801D152C_ovl8

glabel func_801D1648_ovl8
/* 175128 801D1648 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 17512C 801D164C AFB00018 */  sw    $s0, 0x18($sp)
/* 175130 801D1650 3C10800D */  lui   $s0, %hi(D_800D70C0) # $s0, 0x800d
/* 175134 801D1654 8E1070C0 */  lw    $s0, %lo(D_800D70C0)($s0)
/* 175138 801D1658 3C03800E */ lui $v1, %hi(D_800DFBD0)
/* 17513C 801D165C AFBF001C */  sw    $ra, 0x1c($sp)
/* 175140 801D1660 00107080 */  sll   $t6, $s0, 2
/* 175144 801D1664 006E1821 */  addu  $v1, $v1, $t6
/* 175148 801D1668 8C63FBD0 */ lw $v1, %lo(D_800DFBD0)($v1)
/* 17514C 801D166C AFA40060 */  sw    $a0, 0x60($sp)
/* 175150 801D1670 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 175154 801D1674 8C6F000C */  lw    $t7, 0xc($v1)
/* 175158 801D1678 8C670008 */  lw    $a3, 8($v1)
/* 17515C 801D167C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 175160 801D1680 AFAF004C */  sw    $t7, 0x4c($sp)
/* 175164 801D1684 8C780010 */  lw    $t8, 0x10($v1)
/* 175168 801D1688 3C04800F */ lui $a0, %hi(D_800EA360)
/* 17516C 801D168C 24010001 */  li    $at, 1
/* 175170 801D1690 AFB80048 */  sw    $t8, 0x48($sp)
/* 175174 801D1694 8C450000 */  lw    $a1, ($v0)
/* 175178 801D1698 02003025 */  move  $a2, $s0
/* 17517C 801D169C 00052880 */  sll   $a1, $a1, 2
/* 175180 801D16A0 00852021 */  addu  $a0, $a0, $a1
/* 175184 801D16A4 8C84A360 */ lw $a0, %lo(D_800EA360)($a0)
/* 175188 801D16A8 10810008 */  beq   $a0, $at, .L801D16CC_ovl8
/* 17518C 801D16AC 24010002 */   li    $at, 2
/* 175190 801D16B0 10810013 */  beq   $a0, $at, .L801D1700_ovl8
/* 175194 801D16B4 02003025 */   move  $a2, $s0
/* 175198 801D16B8 24010003 */  li    $at, 3
/* 17519C 801D16BC 1081001C */  beq   $a0, $at, .L801D1730_ovl8
/* 1751A0 801D16C0 02003025 */   move  $a2, $s0
/* 1751A4 801D16C4 10000026 */  b     .L801D1760_ovl8
/* 1751A8 801D16C8 C7A40030 */   lwc1  $f4, 0x30($sp)
.L801D16CC_ovl8:
/* 1751AC 801D16CC 27A40030 */  addiu $a0, $sp, 0x30
/* 1751B0 801D16D0 00E02825 */  move  $a1, $a3
/* 1751B4 801D16D4 0C02C8D0 */  jal   func_800B2340
/* 1751B8 801D16D8 AFA70050 */   sw    $a3, 0x50($sp)
/* 1751BC 801D16DC 8FA50050 */  lw    $a1, 0x50($sp)
/* 1751C0 801D16E0 27A4003C */  addiu $a0, $sp, 0x3c
/* 1751C4 801D16E4 0C02C9B6 */  jal   func_800B26D8
/* 1751C8 801D16E8 02003025 */   move  $a2, $s0
/* 1751CC 801D16EC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1751D0 801D16F0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1751D4 801D16F4 8C450000 */  lw    $a1, ($v0)
/* 1751D8 801D16F8 10000018 */  b     .L801D175C_ovl8
/* 1751DC 801D16FC 00052880 */   sll   $a1, $a1, 2
.L801D1700_ovl8:
/* 1751E0 801D1700 27A40030 */  addiu $a0, $sp, 0x30
/* 1751E4 801D1704 0C02C8D0 */  jal   func_800B2340
/* 1751E8 801D1708 8FA5004C */   lw    $a1, 0x4c($sp)
/* 1751EC 801D170C 27A4003C */  addiu $a0, $sp, 0x3c
/* 1751F0 801D1710 8FA5004C */  lw    $a1, 0x4c($sp)
/* 1751F4 801D1714 0C02C9B6 */  jal   func_800B26D8
/* 1751F8 801D1718 02003025 */   move  $a2, $s0
/* 1751FC 801D171C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 175200 801D1720 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 175204 801D1724 8C450000 */  lw    $a1, ($v0)
/* 175208 801D1728 1000000C */  b     .L801D175C_ovl8
/* 17520C 801D172C 00052880 */   sll   $a1, $a1, 2
.L801D1730_ovl8:
/* 175210 801D1730 27A40030 */  addiu $a0, $sp, 0x30
/* 175214 801D1734 0C02C8D0 */  jal   func_800B2340
/* 175218 801D1738 8FA50048 */   lw    $a1, 0x48($sp)
/* 17521C 801D173C 27A4003C */  addiu $a0, $sp, 0x3c
/* 175220 801D1740 8FA50048 */  lw    $a1, 0x48($sp)
/* 175224 801D1744 0C02C9B6 */  jal   func_800B26D8
/* 175228 801D1748 02003025 */   move  $a2, $s0
/* 17522C 801D174C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 175230 801D1750 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 175234 801D1754 8C450000 */  lw    $a1, ($v0)
/* 175238 801D1758 00052880 */  sll   $a1, $a1, 2
.L801D175C_ovl8:
/* 17523C 801D175C C7A40030 */  lwc1  $f4, 0x30($sp)
.L801D1760_ovl8:
/* 175240 801D1760 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 175244 801D1764 00250821 */  addu  $at, $at, $a1
/* 175248 801D1768 E42425D0 */ swc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 17524C 801D176C 8C590000 */  lw    $t9, ($v0)
/* 175250 801D1770 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 175254 801D1774 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175258 801D1778 00194080 */  sll   $t0, $t9, 2
/* 17525C 801D177C 00280821 */  addu  $at, $at, $t0
/* 175260 801D1780 E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 175264 801D1784 8C490000 */  lw    $t1, ($v0)
/* 175268 801D1788 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 17526C 801D178C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 175270 801D1790 00095080 */  sll   $t2, $t1, 2
/* 175274 801D1794 002A0821 */  addu  $at, $at, $t2
/* 175278 801D1798 E4282950 */ swc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 17527C 801D179C 8C4B0000 */  lw    $t3, ($v0)
/* 175280 801D17A0 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* 175284 801D17A4 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 175288 801D17A8 000B6080 */  sll   $t4, $t3, 2
/* 17528C 801D17AC 002C0821 */  addu  $at, $at, $t4
/* 175290 801D17B0 E42A4010 */ swc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 175294 801D17B4 8C4D0000 */  lw    $t5, ($v0)
/* 175298 801D17B8 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 17529C 801D17BC 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 1752A0 801D17C0 000D7080 */  sll   $t6, $t5, 2
/* 1752A4 801D17C4 002E0821 */  addu  $at, $at, $t6
/* 1752A8 801D17C8 E43041D0 */ swc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 1752AC 801D17CC 8C4F0000 */  lw    $t7, ($v0)
/* 1752B0 801D17D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1752B4 801D17D4 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 1752B8 801D17D8 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 1752BC 801D17DC 000FC080 */  sll   $t8, $t7, 2
/* 1752C0 801D17E0 00380821 */  addu  $at, $at, $t8
/* 1752C4 801D17E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 1752C8 801D17E8 27BD0060 */  addiu $sp, $sp, 0x60
/* 1752CC 801D17EC 03E00008 */  jr    $ra
/* 1752D0 801D17F0 E4324390 */ swc1 $f18, %lo(gEntitiesAngleZArray)($at)

.type func_801D1648_ovl8, @function
.size func_801D1648_ovl8, . - func_801D1648_ovl8

glabel func_801D17F4_ovl8
/* 1752D4 801D17F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1752D8 801D17F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1752DC 801D17FC 0C074592 */  jal   func_801D1648_ovl8
/* 1752E0 801D1800 00000000 */   nop   
/* 1752E4 801D1804 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1752E8 801D1808 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1752EC 801D180C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1752F0 801D1810 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1752F4 801D1814 8DC20000 */  lw    $v0, ($t6)
/* 1752F8 801D1818 00021080 */  sll   $v0, $v0, 2
/* 1752FC 801D181C 00220821 */  addu  $at, $at, $v0
/* 175300 801D1820 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 175304 801D1824 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175308 801D1828 00220821 */  addu  $at, $at, $v0
/* 17530C 801D182C 00C23021 */  addu  $a2, $a2, $v0
/* 175310 801D1830 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 175314 801D1834 0C02CC8D */  jal   func_800B3234
/* 175318 801D1838 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 17531C 801D183C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175320 801D1840 27BD0018 */  addiu $sp, $sp, 0x18
/* 175324 801D1844 03E00008 */  jr    $ra
/* 175328 801D1848 00000000 */   nop   

.type func_801D17F4_ovl8, @function
.size func_801D17F4_ovl8, . - func_801D17F4_ovl8

glabel func_801D184C_ovl8
/* 17532C 801D184C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 175330 801D1850 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 175334 801D1854 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 175338 801D1858 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17533C 801D185C AFA40038 */  sw    $a0, 0x38($sp)
/* 175340 801D1860 8C620000 */  lw    $v0, ($v1)
/* 175344 801D1864 3C08800E */  lui   $t0, %hi(D_800E0D50) # $t0, 0x800e
/* 175348 801D1868 25080D50 */  addiu $t0, %lo(D_800E0D50) # addiu $t0, $t0, 0x0d50
/* 17534C 801D186C 00021080 */  sll   $v0, $v0, 2
/* 175350 801D1870 01027021 */  addu  $t6, $t0, $v0
/* 175354 801D1874 8DC70000 */  lw    $a3, ($t6)
/* 175358 801D1878 3C0F800E */ lui $t7, %hi(D_800DE350)
/* 17535C 801D187C 3C19800F */ lui $t9, %hi(D_800EA520)
/* 175360 801D1880 00073880 */  sll   $a3, $a3, 2
/* 175364 801D1884 01E77821 */  addu  $t7, $t7, $a3
/* 175368 801D1888 8DEFE350 */ lw $t7, %lo(D_800DE350)($t7)
/* 17536C 801D188C 0322C821 */  addu  $t9, $t9, $v0
/* 175370 801D1890 8F39A520 */ lw $t9, %lo(D_800EA520)($t9)
/* 175374 801D1894 8DF8003C */  lw    $t8, 0x3c($t7)
/* 175378 801D1898 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 17537C 801D189C 13200042 */  beqz  $t9, .L801D19A8_ovl8
/* 175380 801D18A0 8F050010 */   lw    $a1, 0x10($t8)
/* 175384 801D18A4 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 175388 801D18A8 01276021 */  addu  $t4, $t1, $a3
/* 17538C 801D18AC C5840000 */  lwc1  $f4, ($t4)
/* 175390 801D18B0 01226821 */  addu  $t5, $t1, $v0
/* 175394 801D18B4 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosYArray) # $t2, 0x800e
/* 175398 801D18B8 E5A40000 */  swc1  $f4, ($t5)
/* 17539C 801D18BC 8C620000 */  lw    $v0, ($v1)
/* 1753A0 801D18C0 254A2790 */  addiu $t2, %lo(gEntitiesNextPosYArray) # addiu $t2, $t2, 0x2790
/* 1753A4 801D18C4 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosZArray) # $t3, 0x800e
/* 1753A8 801D18C8 00021080 */  sll   $v0, $v0, 2
/* 1753AC 801D18CC 01027021 */  addu  $t6, $t0, $v0
/* 1753B0 801D18D0 8DCF0000 */  lw    $t7, ($t6)
/* 1753B4 801D18D4 01426021 */  addu  $t4, $t2, $v0
/* 1753B8 801D18D8 256B2950 */  addiu $t3, %lo(gEntitiesNextPosZArray) # addiu $t3, $t3, 0x2950
/* 1753BC 801D18DC 000FC080 */  sll   $t8, $t7, 2
/* 1753C0 801D18E0 0158C821 */  addu  $t9, $t2, $t8
/* 1753C4 801D18E4 C7260000 */  lwc1  $f6, ($t9)
/* 1753C8 801D18E8 27A40028 */  addiu $a0, $sp, 0x28
/* 1753CC 801D18EC E5860000 */  swc1  $f6, ($t4)
/* 1753D0 801D18F0 8C620000 */  lw    $v0, ($v1)
/* 1753D4 801D18F4 00021080 */  sll   $v0, $v0, 2
/* 1753D8 801D18F8 01026821 */  addu  $t5, $t0, $v0
/* 1753DC 801D18FC 8DAE0000 */  lw    $t6, ($t5)
/* 1753E0 801D1900 0162C821 */  addu  $t9, $t3, $v0
/* 1753E4 801D1904 000E7880 */  sll   $t7, $t6, 2
/* 1753E8 801D1908 016FC021 */  addu  $t8, $t3, $t7
/* 1753EC 801D190C C7080000 */  lwc1  $f8, ($t8)
/* 1753F0 801D1910 E7280000 */  swc1  $f8, ($t9)
/* 1753F4 801D1914 8C6C0000 */  lw    $t4, ($v1)
/* 1753F8 801D1918 000C6880 */  sll   $t5, $t4, 2
/* 1753FC 801D191C 010D7021 */  addu  $t6, $t0, $t5
/* 175400 801D1920 0C02C9B6 */  jal   func_800B26D8
/* 175404 801D1924 8DC60000 */   lw    $a2, ($t6)
/* 175408 801D1928 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 17540C 801D192C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 175410 801D1930 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 175414 801D1934 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 175418 801D1938 8C6F0000 */  lw    $t7, ($v1)
/* 17541C 801D193C C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 175420 801D1940 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 175424 801D1944 000FC080 */  sll   $t8, $t7, 2
/* 175428 801D1948 00380821 */  addu  $at, $at, $t8
/* 17542C 801D194C E42A4010 */ swc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 175430 801D1950 8C790000 */  lw    $t9, ($v1)
/* 175434 801D1954 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 175438 801D1958 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 17543C 801D195C 00196080 */  sll   $t4, $t9, 2
/* 175440 801D1960 002C0821 */  addu  $at, $at, $t4
/* 175444 801D1964 E43041D0 */ swc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 175448 801D1968 8C6D0000 */  lw    $t5, ($v1)
/* 17544C 801D196C 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 175450 801D1970 000D7080 */  sll   $t6, $t5, 2
/* 175454 801D1974 002E0821 */  addu  $at, $at, $t6
/* 175458 801D1978 E4324390 */ swc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 17545C 801D197C 8C620000 */  lw    $v0, ($v1)
/* 175460 801D1980 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 175464 801D1984 00021080 */  sll   $v0, $v0, 2
/* 175468 801D1988 00220821 */  addu  $at, $at, $v0
/* 17546C 801D198C C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 175470 801D1990 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175474 801D1994 00220821 */  addu  $at, $at, $v0
/* 175478 801D1998 00C23021 */  addu  $a2, $a2, $v0
/* 17547C 801D199C 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 175480 801D19A0 0C02CC8D */  jal   func_800B3234
/* 175484 801D19A4 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
.L801D19A8_ovl8:
/* 175488 801D19A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 17548C 801D19AC 27BD0038 */  addiu $sp, $sp, 0x38
/* 175490 801D19B0 03E00008 */  jr    $ra
/* 175494 801D19B4 00000000 */   nop   

.type func_801D184C_ovl8, @function
.size func_801D184C_ovl8, . - func_801D184C_ovl8

glabel func_801D19B8_ovl8
/* 175498 801D19B8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 17549C 801D19BC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1754A0 801D19C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1754A4 801D19C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1754A8 801D19C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1754AC 801D19CC 8C620000 */  lw    $v0, ($v1)
/* 1754B0 801D19D0 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 1754B4 801D19D4 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0x0d50
/* 1754B8 801D19D8 00021080 */  sll   $v0, $v0, 2
/* 1754BC 801D19DC 00E27021 */  addu  $t6, $a3, $v0
/* 1754C0 801D19E0 8DCF0000 */  lw    $t7, ($t6)
/* 1754C4 801D19E4 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 1754C8 801D19E8 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 1754CC 801D19EC 000FC080 */  sll   $t8, $t7, 2
/* 1754D0 801D19F0 0098C821 */  addu  $t9, $a0, $t8
/* 1754D4 801D19F4 C7240000 */  lwc1  $f4, ($t9)
/* 1754D8 801D19F8 00824021 */  addu  $t0, $a0, $v0
/* 1754DC 801D19FC 3C05800E */  lui   $a1, %hi(gEntitiesNextPosZArray) # $a1, 0x800e
/* 1754E0 801D1A00 E5040000 */  swc1  $f4, ($t0)
/* 1754E4 801D1A04 8C620000 */  lw    $v0, ($v1)
/* 1754E8 801D1A08 24A52950 */  addiu $a1, %lo(gEntitiesNextPosZArray) # addiu $a1, $a1, 0x2950
/* 1754EC 801D1A0C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1754F0 801D1A10 00021080 */  sll   $v0, $v0, 2
/* 1754F4 801D1A14 00E24821 */  addu  $t1, $a3, $v0
/* 1754F8 801D1A18 8D2A0000 */  lw    $t2, ($t1)
/* 1754FC 801D1A1C 00A26821 */  addu  $t5, $a1, $v0
/* 175500 801D1A20 000A5880 */  sll   $t3, $t2, 2
/* 175504 801D1A24 00AB6021 */  addu  $t4, $a1, $t3
/* 175508 801D1A28 C5860000 */  lwc1  $f6, ($t4)
/* 17550C 801D1A2C E5A60000 */  swc1  $f6, ($t5)
/* 175510 801D1A30 8C620000 */  lw    $v0, ($v1)
/* 175514 801D1A34 00021080 */  sll   $v0, $v0, 2
/* 175518 801D1A38 00827021 */  addu  $t6, $a0, $v0
/* 17551C 801D1A3C 00220821 */  addu  $at, $at, $v0
/* 175520 801D1A40 00A27821 */  addu  $t7, $a1, $v0
/* 175524 801D1A44 8DE60000 */  lw    $a2, ($t7)
/* 175528 801D1A48 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 17552C 801D1A4C 0C02CC8D */  jal   func_800B3234
/* 175530 801D1A50 C5CC0000 */   lwc1  $f12, ($t6)
/* 175534 801D1A54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175538 801D1A58 27BD0018 */  addiu $sp, $sp, 0x18
/* 17553C 801D1A5C 03E00008 */  jr    $ra
/* 175540 801D1A60 00000000 */   nop   

.type func_801D19B8_ovl8, @function
.size func_801D19B8_ovl8, . - func_801D19B8_ovl8

glabel func_801D1A64_ovl8
/* 175544 801D1A64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 175548 801D1A68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17554C 801D1A6C 0C02D69F */  jal   func_800B5A7C
/* 175550 801D1A70 00000000 */   nop   
/* 175554 801D1A74 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 175558 801D1A78 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 17555C 801D1A7C 3C01800E */ lui $at, %hi(D_800E5510)
/* 175560 801D1A80 3C0E800E */  lui   $t6, %hi(D_800E64D0) # $t6, 0x800e
/* 175564 801D1A84 8C620000 */  lw    $v0, ($v1)
/* 175568 801D1A88 25CE64D0 */  addiu $t6, %lo(D_800E64D0) # addiu $t6, $t6, 0x64d0
/* 17556C 801D1A8C 3C04800E */ lui $a0, %hi(D_800DE350)
/* 175570 801D1A90 00021080 */  sll   $v0, $v0, 2
/* 175574 801D1A94 00220821 */  addu  $at, $at, $v0
/* 175578 801D1A98 C4245510 */ lwc1 $f4, %lo(D_800E5510)($at)
/* 17557C 801D1A9C 3C01800E */ lui $at, %hi(D_800E56D0)
/* 175580 801D1AA0 00220821 */  addu  $at, $at, $v0
/* 175584 801D1AA4 C42656D0 */ lwc1 $f6, %lo(D_800E56D0)($at)
/* 175588 801D1AA8 004E2821 */  addu  $a1, $v0, $t6
/* 17558C 801D1AAC C4AA0000 */  lwc1  $f10, ($a1)
/* 175590 801D1AB0 46062200 */  add.s $f8, $f4, $f6
/* 175594 801D1AB4 46085400 */  add.s $f16, $f10, $f8
/* 175598 801D1AB8 E4B00000 */  swc1  $f16, ($a1)
/* 17559C 801D1ABC 8C6F0000 */  lw    $t7, ($v1)
/* 1755A0 801D1AC0 000FC080 */  sll   $t8, $t7, 2
/* 1755A4 801D1AC4 00982021 */  addu  $a0, $a0, $t8
/* 1755A8 801D1AC8 0C03E39B */  jal   func_800F8E6C
/* 1755AC 801D1ACC 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1755B0 801D1AD0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1755B4 801D1AD4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1755B8 801D1AD8 3C01800E */ lui $at, %hi(D_800E5510)
/* 1755BC 801D1ADC 3C08800E */  lui   $t0, %hi(D_800E64D0) # $t0, 0x800e
/* 1755C0 801D1AE0 8F220000 */  lw    $v0, ($t9)
/* 1755C4 801D1AE4 250864D0 */  addiu $t0, %lo(D_800E64D0) # addiu $t0, $t0, 0x64d0
/* 1755C8 801D1AE8 00021080 */  sll   $v0, $v0, 2
/* 1755CC 801D1AEC 00220821 */  addu  $at, $at, $v0
/* 1755D0 801D1AF0 C4325510 */ lwc1 $f18, %lo(D_800E5510)($at)
/* 1755D4 801D1AF4 3C01800E */ lui $at, %hi(D_800E56D0)
/* 1755D8 801D1AF8 00220821 */  addu  $at, $at, $v0
/* 1755DC 801D1AFC C42456D0 */ lwc1 $f4, %lo(D_800E56D0)($at)
/* 1755E0 801D1B00 00482821 */  addu  $a1, $v0, $t0
/* 1755E4 801D1B04 C4AA0000 */  lwc1  $f10, ($a1)
/* 1755E8 801D1B08 46049180 */  add.s $f6, $f18, $f4
/* 1755EC 801D1B0C 46065201 */  sub.s $f8, $f10, $f6
/* 1755F0 801D1B10 0C0744A9 */  jal   func_801D12A4_ovl8
/* 1755F4 801D1B14 E4A80000 */   swc1  $f8, ($a1)
/* 1755F8 801D1B18 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1755FC 801D1B1C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 175600 801D1B20 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 175604 801D1B24 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 175608 801D1B28 8C620000 */  lw    $v0, ($v1)
/* 17560C 801D1B2C 3C01800E */ lui $at, %hi(D_800E2090)
/* 175610 801D1B30 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosYArray) # $t2, 0x800e
/* 175614 801D1B34 00021080 */  sll   $v0, $v0, 2
/* 175618 801D1B38 00492021 */  addu  $a0, $v0, $t1
/* 17561C 801D1B3C 00220821 */  addu  $at, $at, $v0
/* 175620 801D1B40 C4322090 */ lwc1 $f18, %lo(D_800E2090)($at)
/* 175624 801D1B44 C4900000 */  lwc1  $f16, ($a0)
/* 175628 801D1B48 3C01800E */ lui $at, %hi(D_800E3210)
/* 17562C 801D1B4C 254A2790 */  addiu $t2, %lo(gEntitiesNextPosYArray) # addiu $t2, $t2, 0x2790
/* 175630 801D1B50 46128100 */  add.s $f4, $f16, $f18
/* 175634 801D1B54 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosZArray) # $t3, 0x800e
/* 175638 801D1B58 256B2950 */  addiu $t3, %lo(gEntitiesNextPosZArray) # addiu $t3, $t3, 0x2950
/* 17563C 801D1B5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175640 801D1B60 E4840000 */  swc1  $f4, ($a0)
/* 175644 801D1B64 8C620000 */  lw    $v0, ($v1)
/* 175648 801D1B68 00021080 */  sll   $v0, $v0, 2
/* 17564C 801D1B6C 004A2821 */  addu  $a1, $v0, $t2
/* 175650 801D1B70 00220821 */  addu  $at, $at, $v0
/* 175654 801D1B74 C4263210 */ lwc1 $f6, %lo(D_800E3210)($at)
/* 175658 801D1B78 C4AA0000 */  lwc1  $f10, ($a1)
/* 17565C 801D1B7C 3C01800E */ lui $at, %hi(D_800E2410)
/* 175660 801D1B80 46065200 */  add.s $f8, $f10, $f6
/* 175664 801D1B84 E4A80000 */  swc1  $f8, ($a1)
/* 175668 801D1B88 8C620000 */  lw    $v0, ($v1)
/* 17566C 801D1B8C 00021080 */  sll   $v0, $v0, 2
/* 175670 801D1B90 004B3021 */  addu  $a2, $v0, $t3
/* 175674 801D1B94 00220821 */  addu  $at, $at, $v0
/* 175678 801D1B98 C4322410 */ lwc1 $f18, %lo(D_800E2410)($at)
/* 17567C 801D1B9C C4D00000 */  lwc1  $f16, ($a2)
/* 175680 801D1BA0 27BD0018 */  addiu $sp, $sp, 0x18
/* 175684 801D1BA4 46128100 */  add.s $f4, $f16, $f18
/* 175688 801D1BA8 03E00008 */  jr    $ra
/* 17568C 801D1BAC E4C40000 */   swc1  $f4, ($a2)

.type func_801D1A64_ovl8, @function
.size func_801D1A64_ovl8, . - func_801D1A64_ovl8

glabel func_801D1BB0_ovl8
/* 175690 801D1BB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 175694 801D1BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 175698 801D1BB8 0C074699 */  jal   func_801D1A64_ovl8
/* 17569C 801D1BBC 00000000 */   nop   
/* 1756A0 801D1BC0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1756A4 801D1BC4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1756A8 801D1BC8 3C01801E */  lui   $at, %hi(D_801DB078_ovl8) # $at, 0x801e
/* 1756AC 801D1BCC C422B078 */  lwc1  $f2, %lo(D_801DB078_ovl8)($at)
/* 1756B0 801D1BD0 8C650000 */  lw    $a1, ($v1)
/* 1756B4 801D1BD4 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1756B8 801D1BD8 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 1756BC 801D1BDC 00052880 */  sll   $a1, $a1, 2
/* 1756C0 801D1BE0 00250821 */  addu  $at, $at, $a1
/* 1756C4 801D1BE4 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1756C8 801D1BE8 3C01801E */  lui   $at, %hi(D_801DB07C_ovl8) # $at, 0x801e
/* 1756CC 801D1BEC C426B07C */  lwc1  $f6, %lo(D_801DB07C_ovl8)($at)
/* 1756D0 801D1BF0 3C01800E */ lui $at, %hi(D_800E17D0)
/* 1756D4 801D1BF4 00250821 */  addu  $at, $at, $a1
/* 1756D8 801D1BF8 46062202 */  mul.s $f8, $f4, $f6
/* 1756DC 801D1BFC C42A17D0 */ lwc1 $f10, %lo(D_800E17D0)($at)
/* 1756E0 801D1C00 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 1756E4 801D1C04 00857021 */  addu  $t6, $a0, $a1
/* 1756E8 801D1C08 44806000 */  mtc1  $zero, $f12
/* 1756EC 801D1C0C 460A4400 */  add.s $f16, $f8, $f10
/* 1756F0 801D1C10 E5D00000 */  swc1  $f16, ($t6)
/* 1756F4 801D1C14 8C6F0000 */  lw    $t7, ($v1)
/* 1756F8 801D1C18 000FC080 */  sll   $t8, $t7, 2
/* 1756FC 801D1C1C 00981021 */  addu  $v0, $a0, $t8
/* 175700 801D1C20 C4400000 */  lwc1  $f0, ($v0)
/* 175704 801D1C24 4600103E */  c.le.s $f2, $f0
/* 175708 801D1C28 00000000 */  nop   
/* 17570C 801D1C2C 4502000C */  bc1fl .L801D1C60_ovl8
/* 175710 801D1C30 460C003C */   c.lt.s $f0, $f12
/* 175714 801D1C34 46020481 */  sub.s $f18, $f0, $f2
.L801D1C38_ovl8:
/* 175718 801D1C38 E4520000 */  swc1  $f18, ($v0)
/* 17571C 801D1C3C 8C790000 */  lw    $t9, ($v1)
/* 175720 801D1C40 00194080 */  sll   $t0, $t9, 2
/* 175724 801D1C44 00881021 */  addu  $v0, $a0, $t0
/* 175728 801D1C48 C4400000 */  lwc1  $f0, ($v0)
/* 17572C 801D1C4C 4600103E */  c.le.s $f2, $f0
/* 175730 801D1C50 00000000 */  nop   
/* 175734 801D1C54 4503FFF8 */  bc1tl .L801D1C38_ovl8
/* 175738 801D1C58 46020481 */   sub.s $f18, $f0, $f2
/* 17573C 801D1C5C 460C003C */  c.lt.s $f0, $f12
.L801D1C60_ovl8:
/* 175740 801D1C60 00000000 */  nop   
/* 175744 801D1C64 4500000B */  bc1f  .L801D1C94_ovl8
/* 175748 801D1C68 00000000 */   nop   
/* 17574C 801D1C6C 46020100 */  add.s $f4, $f0, $f2
.L801D1C70_ovl8:
/* 175750 801D1C70 E4440000 */  swc1  $f4, ($v0)
/* 175754 801D1C74 8C690000 */  lw    $t1, ($v1)
/* 175758 801D1C78 00095080 */  sll   $t2, $t1, 2
/* 17575C 801D1C7C 008A1021 */  addu  $v0, $a0, $t2
/* 175760 801D1C80 C4400000 */  lwc1  $f0, ($v0)
/* 175764 801D1C84 460C003C */  c.lt.s $f0, $f12
/* 175768 801D1C88 00000000 */  nop   
/* 17576C 801D1C8C 4503FFF8 */  bc1tl .L801D1C70_ovl8
/* 175770 801D1C90 46020100 */   add.s $f4, $f0, $f2
.L801D1C94_ovl8:
/* 175774 801D1C94 0C02CC6D */  jal   func_800B31B4
/* 175778 801D1C98 00000000 */   nop   
/* 17577C 801D1C9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175780 801D1CA0 27BD0018 */  addiu $sp, $sp, 0x18
/* 175784 801D1CA4 03E00008 */  jr    $ra
/* 175788 801D1CA8 00000000 */   nop   

.type func_801D1BB0_ovl8, @function
.size func_801D1BB0_ovl8, . - func_801D1BB0_ovl8

glabel func_801D1CAC_ovl8
/* 17578C 801D1CAC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 175790 801D1CB0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 175794 801D1CB4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 175798 801D1CB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17579C 801D1CBC 8DC20000 */  lw    $v0, ($t6)
/* 1757A0 801D1CC0 3C04800E */ lui $a0, %hi(D_800E1B50)
/* 1757A4 801D1CC4 3C18800F */ lui $t8, %hi(D_800EA520)
/* 1757A8 801D1CC8 00021080 */  sll   $v0, $v0, 2
/* 1757AC 801D1CCC 00822021 */  addu  $a0, $a0, $v0
/* 1757B0 801D1CD0 8C841B50 */ lw $a0, %lo(D_800E1B50)($a0)
/* 1757B4 801D1CD4 0302C021 */  addu  $t8, $t8, $v0
/* 1757B8 801D1CD8 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 1757BC 801D1CDC 8F18A520 */ lw $t8, %lo(D_800EA520)($t8)
/* 1757C0 801D1CE0 01E27821 */  addu  $t7, $t7, $v0
/* 1757C4 801D1CE4 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 1757C8 801D1CE8 8C860080 */  lw    $a2, 0x80($a0)
/* 1757CC 801D1CEC 3C07800E */ lui $a3, %hi(D_800DE350)
/* 1757D0 801D1CF0 0018C880 */  sll   $t9, $t8, 2
/* 1757D4 801D1CF4 00E23821 */  addu  $a3, $a3, $v0
/* 1757D8 801D1CF8 01F94821 */  addu  $t1, $t7, $t9
/* 1757DC 801D1CFC 8CE7E350 */ lw $a3, %lo(D_800DE350)($a3)
/* 1757E0 801D1D00 10C00051 */  beqz  $a2, .L801D1E48_ovl8
/* 1757E4 801D1D04 8D230000 */   lw    $v1, ($t1)
/* 1757E8 801D1D08 8C6A0010 */  lw    $t2, 0x10($v1)
/* 1757EC 801D1D0C 27A40020 */  addiu $a0, $sp, 0x20
/* 1757F0 801D1D10 8D450010 */  lw    $a1, 0x10($t2)
/* 1757F4 801D1D14 AFA0002C */  sw    $zero, 0x2c($sp)
/* 1757F8 801D1D18 AFA70034 */  sw    $a3, 0x34($sp)
/* 1757FC 801D1D1C AFA60038 */  sw    $a2, 0x38($sp)
/* 175800 801D1D20 0C0291E5 */  jal   func_800A4794
/* 175804 801D1D24 AFA30030 */   sw    $v1, 0x30($sp)
/* 175808 801D1D28 8FA60038 */  lw    $a2, 0x38($sp)
/* 17580C 801D1D2C C7A40020 */  lwc1  $f4, 0x20($sp)
/* 175810 801D1D30 8FA30030 */  lw    $v1, 0x30($sp)
/* 175814 801D1D34 8FA70034 */  lw    $a3, 0x34($sp)
/* 175818 801D1D38 8FA8002C */  lw    $t0, 0x2c($sp)
/* 17581C 801D1D3C E4C40004 */  swc1  $f4, 4($a2)
/* 175820 801D1D40 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 175824 801D1D44 44800000 */  mtc1  $zero, $f0
/* 175828 801D1D48 E4C60008 */  swc1  $f6, 8($a2)
/* 17582C 801D1D4C C7A80028 */  lwc1  $f8, 0x28($sp)
/* 175830 801D1D50 E4C8000C */  swc1  $f8, 0xc($a2)
/* 175834 801D1D54 C46A0034 */  lwc1  $f10, 0x34($v1)
/* 175838 801D1D58 460A0032 */  c.eq.s $f0, $f10
/* 17583C 801D1D5C 00000000 */  nop   
/* 175840 801D1D60 45020017 */  bc1fl .L801D1DC0_ovl8
/* 175844 801D1D64 8C780010 */   lw    $t8, 0x10($v1)
/* 175848 801D1D68 8C620010 */  lw    $v0, 0x10($v1)
/* 17584C 801D1D6C C4500034 */  lwc1  $f16, 0x34($v0)
/* 175850 801D1D70 46100032 */  c.eq.s $f0, $f16
/* 175854 801D1D74 00000000 */  nop   
/* 175858 801D1D78 45020011 */  bc1fl .L801D1DC0_ovl8
/* 17585C 801D1D7C 8C780010 */   lw    $t8, 0x10($v1)
/* 175860 801D1D80 8C4B0010 */  lw    $t3, 0x10($v0)
/* 175864 801D1D84 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 175868 801D1D88 C5720034 */  lwc1  $f18, 0x34($t3)
/* 17586C 801D1D8C 46120032 */  c.eq.s $f0, $f18
/* 175870 801D1D90 00000000 */  nop   
/* 175874 801D1D94 4502000A */  bc1fl .L801D1DC0_ovl8
/* 175878 801D1D98 8C780010 */   lw    $t8, 0x10($v1)
/* 17587C 801D1D9C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 175880 801D1DA0 3C01800E */ lui $at, %hi(D_800E17D0)
/* 175884 801D1DA4 8D8D0000 */  lw    $t5, ($t4)
/* 175888 801D1DA8 000D7080 */  sll   $t6, $t5, 2
/* 17588C 801D1DAC 002E0821 */  addu  $at, $at, $t6
/* 175890 801D1DB0 C42417D0 */ lwc1 $f4, %lo(D_800E17D0)($at)
/* 175894 801D1DB4 1000000D */  b     .L801D1DEC_ovl8
/* 175898 801D1DB8 E4C4001C */   swc1  $f4, 0x1c($a2)
/* 17589C 801D1DBC 8C780010 */  lw    $t8, 0x10($v1)
.L801D1DC0_ovl8:
/* 1758A0 801D1DC0 27A40020 */  addiu $a0, $sp, 0x20
/* 1758A4 801D1DC4 8F050010 */  lw    $a1, 0x10($t8)
/* 1758A8 801D1DC8 AFA8002C */  sw    $t0, 0x2c($sp)
/* 1758AC 801D1DCC AFA70034 */  sw    $a3, 0x34($sp)
/* 1758B0 801D1DD0 0C02936E */  jal   func_800A4DB8
/* 1758B4 801D1DD4 AFA60038 */   sw    $a2, 0x38($sp)
/* 1758B8 801D1DD8 8FA60038 */  lw    $a2, 0x38($sp)
/* 1758BC 801D1DDC C7A60024 */  lwc1  $f6, 0x24($sp)
/* 1758C0 801D1DE0 8FA70034 */  lw    $a3, 0x34($sp)
/* 1758C4 801D1DE4 8FA8002C */  lw    $t0, 0x2c($sp)
/* 1758C8 801D1DE8 E4C6001C */  swc1  $f6, 0x1c($a2)
.L801D1DEC_ovl8:
/* 1758CC 801D1DEC 10E0000D */  beqz  $a3, .L801D1E24_ovl8
/* 1758D0 801D1DF0 00000000 */   nop   
/* 1758D4 801D1DF4 8CEF0044 */  lw    $t7, 0x44($a3)
/* 1758D8 801D1DF8 31F90001 */  andi  $t9, $t7, 1
/* 1758DC 801D1DFC 17200009 */  bnez  $t9, .L801D1E24_ovl8
/* 1758E0 801D1E00 00000000 */   nop   
/* 1758E4 801D1E04 8CE3003C */  lw    $v1, 0x3c($a3)
/* 1758E8 801D1E08 10600006 */  beqz  $v1, .L801D1E24_ovl8
/* 1758EC 801D1E0C 00000000 */   nop   
/* 1758F0 801D1E10 90690054 */  lbu   $t1, 0x54($v1)
/* 1758F4 801D1E14 312A0003 */  andi  $t2, $t1, 3
/* 1758F8 801D1E18 15400002 */  bnez  $t2, .L801D1E24_ovl8
/* 1758FC 801D1E1C 00000000 */   nop   
/* 175900 801D1E20 24080001 */  li    $t0, 1
.L801D1E24_ovl8:
/* 175904 801D1E24 51000006 */  beql  $t0, $zero, .L801D1E40_ovl8
/* 175908 801D1E28 90CD0020 */   lbu   $t5, 0x20($a2)
/* 17590C 801D1E2C 90CB0020 */  lbu   $t3, 0x20($a2)
/* 175910 801D1E30 316CFFFE */  andi  $t4, $t3, 0xfffe
/* 175914 801D1E34 10000004 */  b     .L801D1E48_ovl8
/* 175918 801D1E38 A0CC0020 */   sb    $t4, 0x20($a2)
/* 17591C 801D1E3C 90CD0020 */  lbu   $t5, 0x20($a2)
.L801D1E40_ovl8:
/* 175920 801D1E40 35AE0001 */  ori   $t6, $t5, 1
/* 175924 801D1E44 A0CE0020 */  sb    $t6, 0x20($a2)
.L801D1E48_ovl8:
/* 175928 801D1E48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 17592C 801D1E4C 27BD0040 */  addiu $sp, $sp, 0x40
/* 175930 801D1E50 03E00008 */  jr    $ra
/* 175934 801D1E54 00000000 */   nop   

.type func_801D1CAC_ovl8, @function
.size func_801D1CAC_ovl8, . - func_801D1CAC_ovl8

glabel func_801D1E58_ovl8
/* 175938 801D1E58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 17593C 801D1E5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 175940 801D1E60 0C02D2E7 */  jal   D_800B4B9C_ovl8
/* 175944 801D1E64 00000000 */   nop   
/* 175948 801D1E68 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 17594C 801D1E6C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 175950 801D1E70 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 175954 801D1E74 44812000 */  mtc1  $at, $f4
/* 175958 801D1E78 8DCF0000 */  lw    $t7, ($t6)
/* 17595C 801D1E7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175960 801D1E80 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175964 801D1E84 000FC080 */  sll   $t8, $t7, 2
/* 175968 801D1E88 00380821 */  addu  $at, $at, $t8
/* 17596C 801D1E8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 175970 801D1E90 03E00008 */  jr    $ra
/* 175974 801D1E94 E4242790 */ swc1 $f4, %lo(gEntitiesNextPosYArray)($at)

.type func_801D1E58_ovl8, @function
.size func_801D1E58_ovl8, . - func_801D1E58_ovl8

glabel func_801D1E98_ovl8
/* 175978 801D1E98 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 17597C 801D1E9C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 175980 801D1EA0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 175984 801D1EA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 175988 801D1EA8 8DC20000 */  lw    $v0, ($t6)
/* 17598C 801D1EAC 3C04800E */ lui $a0, %hi(D_800E1B50)
/* 175990 801D1EB0 3C18800F */ lui $t8, %hi(D_800EA520)
/* 175994 801D1EB4 00021080 */  sll   $v0, $v0, 2
/* 175998 801D1EB8 00822021 */  addu  $a0, $a0, $v0
/* 17599C 801D1EBC 8C841B50 */ lw $a0, %lo(D_800E1B50)($a0)
/* 1759A0 801D1EC0 0302C021 */  addu  $t8, $t8, $v0
/* 1759A4 801D1EC4 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 1759A8 801D1EC8 8F18A520 */ lw $t8, %lo(D_800EA520)($t8)
/* 1759AC 801D1ECC 01E27821 */  addu  $t7, $t7, $v0
/* 1759B0 801D1ED0 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 1759B4 801D1ED4 8C830080 */  lw    $v1, 0x80($a0)
/* 1759B8 801D1ED8 3C07800E */ lui $a3, %hi(D_800DE350)
/* 1759BC 801D1EDC 0018C880 */  sll   $t9, $t8, 2
/* 1759C0 801D1EE0 00E23821 */  addu  $a3, $a3, $v0
/* 1759C4 801D1EE4 01F94821 */  addu  $t1, $t7, $t9
/* 1759C8 801D1EE8 8CE7E350 */ lw $a3, %lo(D_800DE350)($a3)
/* 1759CC 801D1EEC 10600049 */  beqz  $v1, .L801D2014_ovl8
/* 1759D0 801D1EF0 8D260000 */   lw    $a2, ($t1)
/* 1759D4 801D1EF4 27A40020 */  addiu $a0, $sp, 0x20
/* 1759D8 801D1EF8 00C02825 */  move  $a1, $a2
/* 1759DC 801D1EFC AFA30038 */  sw    $v1, 0x38($sp)
/* 1759E0 801D1F00 AFA60030 */  sw    $a2, 0x30($sp)
/* 1759E4 801D1F04 AFA70034 */  sw    $a3, 0x34($sp)
/* 1759E8 801D1F08 0C0291E5 */  jal   func_800A4794
/* 1759EC 801D1F0C AFA0002C */   sw    $zero, 0x2c($sp)
/* 1759F0 801D1F10 8FA30038 */  lw    $v1, 0x38($sp)
/* 1759F4 801D1F14 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 1759F8 801D1F18 8FA60030 */  lw    $a2, 0x30($sp)
/* 1759FC 801D1F1C 8FA70034 */  lw    $a3, 0x34($sp)
/* 175A00 801D1F20 8FA8002C */  lw    $t0, 0x2c($sp)
/* 175A04 801D1F24 E4640004 */  swc1  $f4, 4($v1)
/* 175A08 801D1F28 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 175A0C 801D1F2C 44800000 */  mtc1  $zero, $f0
/* 175A10 801D1F30 27A40020 */  addiu $a0, $sp, 0x20
/* 175A14 801D1F34 E4660008 */  swc1  $f6, 8($v1)
/* 175A18 801D1F38 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 175A1C 801D1F3C E468000C */  swc1  $f8, 0xc($v1)
/* 175A20 801D1F40 C4CA0034 */  lwc1  $f10, 0x34($a2)
/* 175A24 801D1F44 460A0032 */  c.eq.s $f0, $f10
/* 175A28 801D1F48 00000000 */  nop   
/* 175A2C 801D1F4C 45020011 */  bc1fl .L801D1F94_ovl8
/* 175A30 801D1F50 8CC50010 */   lw    $a1, 0x10($a2)
/* 175A34 801D1F54 8CCA0010 */  lw    $t2, 0x10($a2)
/* 175A38 801D1F58 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 175A3C 801D1F5C C5500034 */  lwc1  $f16, 0x34($t2)
/* 175A40 801D1F60 46100032 */  c.eq.s $f0, $f16
/* 175A44 801D1F64 00000000 */  nop   
/* 175A48 801D1F68 4502000A */  bc1fl .L801D1F94_ovl8
/* 175A4C 801D1F6C 8CC50010 */   lw    $a1, 0x10($a2)
/* 175A50 801D1F70 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 175A54 801D1F74 3C01800E */ lui $at, %hi(D_800E17D0)
/* 175A58 801D1F78 8D6C0000 */  lw    $t4, ($t3)
/* 175A5C 801D1F7C 000C6880 */  sll   $t5, $t4, 2
/* 175A60 801D1F80 002D0821 */  addu  $at, $at, $t5
/* 175A64 801D1F84 C43217D0 */ lwc1 $f18, %lo(D_800E17D0)($at)
/* 175A68 801D1F88 1000000B */  b     .L801D1FB8_ovl8
/* 175A6C 801D1F8C E472001C */   swc1  $f18, 0x1c($v1)
/* 175A70 801D1F90 8CC50010 */  lw    $a1, 0x10($a2)
.L801D1F94_ovl8:
/* 175A74 801D1F94 AFA8002C */  sw    $t0, 0x2c($sp)
/* 175A78 801D1F98 AFA70034 */  sw    $a3, 0x34($sp)
/* 175A7C 801D1F9C 0C02936E */  jal   func_800A4DB8
/* 175A80 801D1FA0 AFA30038 */   sw    $v1, 0x38($sp)
/* 175A84 801D1FA4 8FA30038 */  lw    $v1, 0x38($sp)
/* 175A88 801D1FA8 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 175A8C 801D1FAC 8FA70034 */  lw    $a3, 0x34($sp)
/* 175A90 801D1FB0 8FA8002C */  lw    $t0, 0x2c($sp)
/* 175A94 801D1FB4 E464001C */  swc1  $f4, 0x1c($v1)
.L801D1FB8_ovl8:
/* 175A98 801D1FB8 10E0000D */  beqz  $a3, .L801D1FF0_ovl8
/* 175A9C 801D1FBC 00000000 */   nop   
/* 175AA0 801D1FC0 8CEE0044 */  lw    $t6, 0x44($a3)
/* 175AA4 801D1FC4 31D80001 */  andi  $t8, $t6, 1
/* 175AA8 801D1FC8 17000009 */  bnez  $t8, .L801D1FF0_ovl8
/* 175AAC 801D1FCC 00000000 */   nop   
/* 175AB0 801D1FD0 8CE6003C */  lw    $a2, 0x3c($a3)
/* 175AB4 801D1FD4 10C00006 */  beqz  $a2, .L801D1FF0_ovl8
/* 175AB8 801D1FD8 00000000 */   nop   
/* 175ABC 801D1FDC 90CF0054 */  lbu   $t7, 0x54($a2)
/* 175AC0 801D1FE0 31F90003 */  andi  $t9, $t7, 3
/* 175AC4 801D1FE4 17200002 */  bnez  $t9, .L801D1FF0_ovl8
/* 175AC8 801D1FE8 00000000 */   nop   
/* 175ACC 801D1FEC 24080001 */  li    $t0, 1
.L801D1FF0_ovl8:
/* 175AD0 801D1FF0 51000006 */  beql  $t0, $zero, .L801D200C_ovl8
/* 175AD4 801D1FF4 906B0020 */   lbu   $t3, 0x20($v1)
/* 175AD8 801D1FF8 90690020 */  lbu   $t1, 0x20($v1)
/* 175ADC 801D1FFC 312AFFFE */  andi  $t2, $t1, 0xfffe
/* 175AE0 801D2000 10000004 */  b     .L801D2014_ovl8
/* 175AE4 801D2004 A06A0020 */   sb    $t2, 0x20($v1)
/* 175AE8 801D2008 906B0020 */  lbu   $t3, 0x20($v1)
.L801D200C_ovl8:
/* 175AEC 801D200C 356C0001 */  ori   $t4, $t3, 1
/* 175AF0 801D2010 A06C0020 */  sb    $t4, 0x20($v1)
.L801D2014_ovl8:
/* 175AF4 801D2014 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175AF8 801D2018 27BD0040 */  addiu $sp, $sp, 0x40
/* 175AFC 801D201C 03E00008 */  jr    $ra
/* 175B00 801D2020 00000000 */   nop   

/* 175B04 801D2024 00000000 */  nop   
/* 175B08 801D2028 00000000 */  nop   
/* 175B0C 801D202C 00000000 */  nop   
/* 175B10 801D2030 00000000 */  nop   
/* 175B14 801D2034 00000000 */  nop   
/* 175B18 801D2038 00000000 */  nop   
/* 175B1C 801D203C 00000000 */  nop


.type func_801D1E98_ovl8, @function
.size func_801D1E98_ovl8, . - func_801D1E98_ovl8
