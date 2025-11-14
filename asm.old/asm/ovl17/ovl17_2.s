.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801DD920_ovl17
/* 228B10 801DD920 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 228B14 801DD924 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 228B18 801DD928 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 228B1C 801DD92C AFBF0014 */  sw    $ra, 0x14($sp)
/* 228B20 801DD930 AFA40018 */  sw    $a0, 0x18($sp)
/* 228B24 801DD934 8DCF0000 */  lw    $t7, ($t6)
/* 228B28 801DD938 3C04800E */ lui $a0, %hi(D_800E7880)
/* 228B2C 801DD93C 3C06801E */  lui   $a2, %hi(D_801E5400) # $a2, 0x801e
/* 228B30 801DD940 008F2021 */  addu  $a0, $a0, $t7
/* 228B34 801DD944 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 228B38 801DD948 24C65400 */  addiu $a2, %lo(D_801E5400) # addiu $a2, $a2, 0x5400
/* 228B3C 801DD94C 0C02911F */  jal   call_virtual_function
/* 228B40 801DD950 24050001 */   li    $a1, 1
/* 228B44 801DD954 8FBF0014 */  lw    $ra, 0x14($sp)
/* 228B48 801DD958 27BD0018 */  addiu $sp, $sp, 0x18
/* 228B4C 801DD95C 03E00008 */  jr    $ra
/* 228B50 801DD960 00000000 */   nop   

.type func_801DD920_ovl17, @function
.size func_801DD920_ovl17, . - func_801DD920_ovl17

glabel func_801DD964_ovl17
/* 228B54 801DD964 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 228B58 801DD968 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 228B5C 801DD96C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 228B60 801DD970 AFBF0014 */  sw    $ra, 0x14($sp)
/* 228B64 801DD974 8C4F0000 */  lw    $t7, ($v0)
/* 228B68 801DD978 3C0E800B */  lui   $t6, %hi(D_800B4924) # $t6, 0x800b
/* 228B6C 801DD97C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 228B70 801DD980 000FC080 */  sll   $t8, $t7, 2
/* 228B74 801DD984 00380821 */  addu  $at, $at, $t8
/* 228B78 801DD988 25CE4924 */  addiu $t6, %lo(D_800B4924) # addiu $t6, $t6, 0x4924
/* 228B7C 801DD98C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 228B80 801DD990 8C480000 */  lw    $t0, ($v0)
/* 228B84 801DD994 3C01800F */ lui $at, %hi(D_800E8E60)
/* 228B88 801DD998 24190001 */  li    $t9, 1
/* 228B8C 801DD99C 00084880 */  sll   $t1, $t0, 2
/* 228B90 801DD9A0 00290821 */  addu  $at, $at, $t1
/* 228B94 801DD9A4 AC398E60 */ sw $t9, %lo(D_800E8E60)($at)
/* 228B98 801DD9A8 8C4A0000 */  lw    $t2, ($v0)
/* 228B9C 801DD9AC 44800000 */  mtc1  $zero, $f0
/* 228BA0 801DD9B0 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 228BA4 801DD9B4 24A5A6E0 */  addiu $a1, %lo(D_800EA6E0) # addiu $a1, $a1, -0x5920
/* 228BA8 801DD9B8 000A5880 */  sll   $t3, $t2, 2
/* 228BAC 801DD9BC 00AB6021 */  addu  $t4, $a1, $t3
/* 228BB0 801DD9C0 E5800000 */  swc1  $f0, ($t4)
/* 228BB4 801DD9C4 8C430000 */  lw    $v1, ($v0)
/* 228BB8 801DD9C8 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 228BBC 801DD9CC 3C06800F */  lui   $a2, %hi(D_800EA8A0) # $a2, 0x800f
/* 228BC0 801DD9D0 00031880 */  sll   $v1, $v1, 2
/* 228BC4 801DD9D4 00A36821 */  addu  $t5, $a1, $v1
/* 228BC8 801DD9D8 C5A40000 */  lwc1  $f4, ($t5)
/* 228BCC 801DD9DC 00230821 */  addu  $at, $at, $v1
/* 228BD0 801DD9E0 24C6A8A0 */  addiu $a2, %lo(D_800EA8A0) # addiu $a2, $a2, -0x5760
/* 228BD4 801DD9E4 E4244010 */ swc1 $f4, %lo(gEntitiesAngleXArray)($at)
/* 228BD8 801DD9E8 8C4F0000 */  lw    $t7, ($v0)
/* 228BDC 801DD9EC 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 228BE0 801DD9F0 3C07800F */  lui   $a3, %hi(D_800EAA60) # $a3, 0x800f
/* 228BE4 801DD9F4 000F7080 */  sll   $t6, $t7, 2
/* 228BE8 801DD9F8 00CEC021 */  addu  $t8, $a2, $t6
/* 228BEC 801DD9FC E7000000 */  swc1  $f0, ($t8)
/* 228BF0 801DDA00 8C430000 */  lw    $v1, ($v0)
/* 228BF4 801DDA04 24E7AA60 */  addiu $a3, %lo(D_800EAA60) # addiu $a3, $a3, -0x55a0
/* 228BF8 801DDA08 44801000 */  mtc1  $zero, $f2
/* 228BFC 801DDA0C 00031880 */  sll   $v1, $v1, 2
/* 228C00 801DDA10 00C34021 */  addu  $t0, $a2, $v1
/* 228C04 801DDA14 C5060000 */  lwc1  $f6, ($t0)
/* 228C08 801DDA18 00230821 */  addu  $at, $at, $v1
/* 228C0C 801DDA1C E42641D0 */ swc1 $f6, %lo(gEntitiesAngleYArray)($at)
/* 228C10 801DDA20 8C590000 */  lw    $t9, ($v0)
/* 228C14 801DDA24 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 228C18 801DDA28 00194880 */  sll   $t1, $t9, 2
/* 228C1C 801DDA2C 00E95021 */  addu  $t2, $a3, $t1
/* 228C20 801DDA30 E5400000 */  swc1  $f0, ($t2)
/* 228C24 801DDA34 8C430000 */  lw    $v1, ($v0)
/* 228C28 801DDA38 00031880 */  sll   $v1, $v1, 2
/* 228C2C 801DDA3C 00E35821 */  addu  $t3, $a3, $v1
/* 228C30 801DDA40 C5680000 */  lwc1  $f8, ($t3)
/* 228C34 801DDA44 00230821 */  addu  $at, $at, $v1
/* 228C38 801DDA48 E4284390 */ swc1 $f8, %lo(gEntitiesAngleZArray)($at)
/* 228C3C 801DDA4C 8C4C0000 */  lw    $t4, ($v0)
/* 228C40 801DDA50 3C01800F */ lui $at, %hi(D_800E98E0)
/* 228C44 801DDA54 000C6880 */  sll   $t5, $t4, 2
/* 228C48 801DDA58 002D0821 */  addu  $at, $at, $t5
/* 228C4C 801DDA5C AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 228C50 801DDA60 8C4F0000 */  lw    $t7, ($v0)
/* 228C54 801DDA64 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 228C58 801DDA68 000F7080 */  sll   $t6, $t7, 2
/* 228C5C 801DDA6C 002E0821 */  addu  $at, $at, $t6
/* 228C60 801DDA70 AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 228C64 801DDA74 8C580000 */  lw    $t8, ($v0)
/* 228C68 801DDA78 3C01800F */ lui $at, %hi(D_800E9C60)
/* 228C6C 801DDA7C 00184080 */  sll   $t0, $t8, 2
/* 228C70 801DDA80 00280821 */  addu  $at, $at, $t0
/* 228C74 801DDA84 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 228C78 801DDA88 8C590000 */  lw    $t9, ($v0)
/* 228C7C 801DDA8C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 228C80 801DDA90 00194880 */  sll   $t1, $t9, 2
/* 228C84 801DDA94 00290821 */  addu  $at, $at, $t1
/* 228C88 801DDA98 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 228C8C 801DDA9C 8C4A0000 */  lw    $t2, ($v0)
/* 228C90 801DDAA0 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 228C94 801DDAA4 000A5880 */  sll   $t3, $t2, 2
/* 228C98 801DDAA8 002B0821 */  addu  $at, $at, $t3
/* 228C9C 801DDAAC AC209FE0 */ sw $zero, %lo(D_800E9FE0)($at)
/* 228CA0 801DDAB0 8C4C0000 */  lw    $t4, ($v0)
/* 228CA4 801DDAB4 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 228CA8 801DDAB8 000C6880 */  sll   $t5, $t4, 2
/* 228CAC 801DDABC 002D0821 */  addu  $at, $at, $t5
/* 228CB0 801DDAC0 AC20A1A0 */ sw $zero, %lo(D_800EA1A0)($at)
/* 228CB4 801DDAC4 8C4F0000 */  lw    $t7, ($v0)
/* 228CB8 801DDAC8 3C01800F */ lui $at, %hi(D_800EA360)
/* 228CBC 801DDACC 000F7080 */  sll   $t6, $t7, 2
/* 228CC0 801DDAD0 002E0821 */  addu  $at, $at, $t6
/* 228CC4 801DDAD4 AC20A360 */ sw $zero, %lo(D_800EA360)($at)
/* 228CC8 801DDAD8 8C580000 */  lw    $t8, ($v0)
/* 228CCC 801DDADC 3C01800F */ lui $at, %hi(D_800EA520)
/* 228CD0 801DDAE0 00184080 */  sll   $t0, $t8, 2
/* 228CD4 801DDAE4 00280821 */  addu  $at, $at, $t0
/* 228CD8 801DDAE8 AC20A520 */ sw $zero, %lo(D_800EA520)($at)
/* 228CDC 801DDAEC 8C590000 */  lw    $t9, ($v0)
/* 228CE0 801DDAF0 3C01800F */ lui $at, %hi(D_800EAC20)
/* 228CE4 801DDAF4 2418FFFF */  li    $t8, -1
/* 228CE8 801DDAF8 00194880 */  sll   $t1, $t9, 2
/* 228CEC 801DDAFC 00290821 */  addu  $at, $at, $t1
/* 228CF0 801DDB00 E422AC20 */ swc1 $f2, %lo(D_800EAC20)($at)
/* 228CF4 801DDB04 8C4A0000 */  lw    $t2, ($v0)
/* 228CF8 801DDB08 3C01800F */ lui $at, %hi(D_800EADE0)
/* 228CFC 801DDB0C 000A5880 */  sll   $t3, $t2, 2
/* 228D00 801DDB10 002B0821 */  addu  $at, $at, $t3
/* 228D04 801DDB14 E422ADE0 */ swc1 $f2, %lo(D_800EADE0)($at)
/* 228D08 801DDB18 8C4C0000 */  lw    $t4, ($v0)
/* 228D0C 801DDB1C 3C01800F */ lui $at, %hi(D_800EAFA0)
/* 228D10 801DDB20 000C6880 */  sll   $t5, $t4, 2
/* 228D14 801DDB24 002D0821 */  addu  $at, $at, $t5
/* 228D18 801DDB28 E422AFA0 */ swc1 $f2, %lo(D_800EAFA0)($at)
/* 228D1C 801DDB2C 3C01800D */  lui   $at, %hi(D_800D709C) # $at, 0x800d
/* 228D20 801DDB30 AC20709C */  sw    $zero, %lo(D_800D709C)($at)
/* 228D24 801DDB34 8C4F0000 */  lw    $t7, ($v0)
/* 228D28 801DDB38 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 228D2C 801DDB3C 44815000 */  mtc1  $at, $f10
/* 228D30 801DDB40 3C01800E */ lui $at, %hi(D_800E7B20)
/* 228D34 801DDB44 000F7080 */  sll   $t6, $t7, 2
/* 228D38 801DDB48 002E0821 */  addu  $at, $at, $t6
/* 228D3C 801DDB4C E42A7B20 */ swc1 $f10, %lo(D_800E7B20)($at)
/* 228D40 801DDB50 8C480000 */  lw    $t0, ($v0)
/* 228D44 801DDB54 3C01800E */ lui $at, %hi(D_800E0D50)
/* 228D48 801DDB58 0008C880 */  sll   $t9, $t0, 2
/* 228D4C 801DDB5C 00390821 */  addu  $at, $at, $t9
/* 228D50 801DDB60 AC380D50 */ sw $t8, %lo(D_800E0D50)($at)
/* 228D54 801DDB64 8C490000 */  lw    $t1, ($v0)
/* 228D58 801DDB68 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 228D5C 801DDB6C 00095080 */  sll   $t2, $t1, 2
/* 228D60 801DDB70 002A0821 */  addu  $at, $at, $t2
/* 228D64 801DDB74 0C0776E3 */  jal   func_801DDB8C_ovl17
/* 228D68 801DDB78 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 228D6C 801DDB7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 228D70 801DDB80 27BD0018 */  addiu $sp, $sp, 0x18
/* 228D74 801DDB84 03E00008 */  jr    $ra
/* 228D78 801DDB88 00000000 */   nop   

.type func_801DD964_ovl17, @function
.size func_801DD964_ovl17, . - func_801DD964_ovl17

glabel func_801DDB8C_ovl17
/* 228D7C 801DDB8C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 228D80 801DDB90 AFB40028 */  sw    $s4, 0x28($sp)
/* 228D84 801DDB94 AFB30024 */  sw    $s3, 0x24($sp)
/* 228D88 801DDB98 AFB20020 */  sw    $s2, 0x20($sp)
/* 228D8C 801DDB9C AFB1001C */  sw    $s1, 0x1c($sp)
/* 228D90 801DDBA0 AFB00018 */  sw    $s0, 0x18($sp)
/* 228D94 801DDBA4 3C10801E */  lui   $s0, %hi(D_801DDC40) # $s0, 0x801e
/* 228D98 801DDBA8 3C11800E */  lui   $s1, %hi(D_800DF150) # $s1, 0x800e
/* 228D9C 801DDBAC 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 228DA0 801DDBB0 3C13800E */  lui   $s3, %hi(gEntityVtableIndexArray) # $s3, 0x800e
/* 228DA4 801DDBB4 3C14801E */  lui   $s4, %hi(D_801E5404) # $s4, 0x801e
/* 228DA8 801DDBB8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 228DAC 801DDBBC AFA40030 */  sw    $a0, 0x30($sp)
/* 228DB0 801DDBC0 26945404 */  addiu $s4, %lo(D_801E5404) # addiu $s4, $s4, 0x5404
/* 228DB4 801DDBC4 2673DC50 */  addiu $s3, %lo(gEntityVtableIndexArray) # addiu $s3, $s3, -0x23b0
/* 228DB8 801DDBC8 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 228DBC 801DDBCC 2631F150 */  addiu $s1, %lo(D_800DF150) # addiu $s1, $s1, -0xeb0
/* 228DC0 801DDBD0 2610DC40 */  addiu $s0, %lo(D_801DDC40) # addiu $s0, $s0, -0x23c0
/* 228DC4 801DDBD4 8E420000 */  lw    $v0, ($s2)
.L801DDBD8_ovl17:
/* 228DC8 801DDBD8 24050005 */  li    $a1, 5
/* 228DCC 801DDBDC 02803025 */  move  $a2, $s4
/* 228DD0 801DDBE0 8C4E0000 */  lw    $t6, ($v0)
/* 228DD4 801DDBE4 000E7880 */  sll   $t7, $t6, 2
/* 228DD8 801DDBE8 022FC021 */  addu  $t8, $s1, $t7
/* 228DDC 801DDBEC AF100000 */  sw    $s0, ($t8)
/* 228DE0 801DDBF0 8C590000 */  lw    $t9, ($v0)
/* 228DE4 801DDBF4 00194080 */  sll   $t0, $t9, 2
/* 228DE8 801DDBF8 02684821 */  addu  $t1, $s3, $t0
/* 228DEC 801DDBFC 0C02911F */  jal   call_virtual_function
/* 228DF0 801DDC00 8D240000 */   lw    $a0, ($t1)
/* 228DF4 801DDC04 1000FFF4 */  b     .L801DDBD8_ovl17
/* 228DF8 801DDC08 8E420000 */   lw    $v0, ($s2)
/* 228DFC 801DDC0C 00000000 */  nop   
/* 228E00 801DDC10 00000000 */  nop   
/* 228E04 801DDC14 00000000 */  nop   
/* 228E08 801DDC18 00000000 */  nop   
/* 228E0C 801DDC1C 00000000 */  nop   
/* 228E10 801DDC20 8FBF002C */  lw    $ra, 0x2c($sp)
/* 228E14 801DDC24 8FB00018 */  lw    $s0, 0x18($sp)
/* 228E18 801DDC28 8FB1001C */  lw    $s1, 0x1c($sp)
/* 228E1C 801DDC2C 8FB20020 */  lw    $s2, 0x20($sp)
/* 228E20 801DDC30 8FB30024 */  lw    $s3, 0x24($sp)
/* 228E24 801DDC34 8FB40028 */  lw    $s4, 0x28($sp)
/* 228E28 801DDC38 03E00008 */  jr    $ra
/* 228E2C 801DDC3C 27BD0030 */   addiu $sp, $sp, 0x30

.type func_801DDB8C_ovl17, @function
.size func_801DDB8C_ovl17, . - func_801DDB8C_ovl17

glabel func_801DDC40_ovl17
/* 228E30 801DDC40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 228E34 801DDC44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 228E38 801DDC48 0C077EAF */  jal   func_801DFABC_ovl17
/* 228E3C 801DDC4C AFA40018 */   sw    $a0, 0x18($sp)
/* 228E40 801DDC50 0C0781A7 */  jal   func_801E069C_ovl17
/* 228E44 801DDC54 00000000 */   nop   
/* 228E48 801DDC58 0C0781C1 */  jal   func_801E0704_ovl17
/* 228E4C 801DDC5C 00000000 */   nop   
/* 228E50 801DDC60 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 228E54 801DDC64 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 228E58 801DDC68 3C04800E */ lui $a0, %hi(D_800DDFD0)
/* 228E5C 801DDC6C 3C06801E */  lui   $a2, %hi(D_801E5418) # $a2, 0x801e
/* 228E60 801DDC70 8DCF0000 */  lw    $t7, ($t6)
/* 228E64 801DDC74 24C65418 */  addiu $a2, %lo(D_801E5418) # addiu $a2, $a2, 0x5418
/* 228E68 801DDC78 24050005 */  li    $a1, 5
/* 228E6C 801DDC7C 000FC080 */  sll   $t8, $t7, 2
/* 228E70 801DDC80 00982021 */  addu  $a0, $a0, $t8
/* 228E74 801DDC84 0C02911F */  jal   call_virtual_function
/* 228E78 801DDC88 8C84DFD0 */ lw $a0, %lo(D_800DDFD0)($a0)
/* 228E7C 801DDC8C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 228E80 801DDC90 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 228E84 801DDC94 3C06800F */  lui   $a2, %hi(D_800E9FE0) # $a2, 0x800f
/* 228E88 801DDC98 24C69FE0 */  addiu $a2, %lo(D_800E9FE0) # addiu $a2, $a2, -0x6020
/* 228E8C 801DDC9C 8C430000 */  lw    $v1, ($v0)
/* 228E90 801DDCA0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 228E94 801DDCA4 00031880 */  sll   $v1, $v1, 2
/* 228E98 801DDCA8 00C3C821 */  addu  $t9, $a2, $v1
/* 228E9C 801DDCAC 8F280000 */  lw    $t0, ($t9)
/* 228EA0 801DDCB0 00230821 */  addu  $at, $at, $v1
/* 228EA4 801DDCB4 1100001A */  beqz  $t0, .L801DDD20_ovl17
/* 228EA8 801DDCB8 00000000 */   nop   
/* 228EAC 801DDCBC AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 228EB0 801DDCC0 8C490000 */  lw    $t1, ($v0)
/* 228EB4 801DDCC4 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 228EB8 801DDCC8 240C000A */  li    $t4, 10
/* 228EBC 801DDCCC 00095080 */  sll   $t2, $t1, 2
/* 228EC0 801DDCD0 00CA5821 */  addu  $t3, $a2, $t2
/* 228EC4 801DDCD4 AD600000 */  sw    $zero, ($t3)
/* 228EC8 801DDCD8 8C4D0000 */  lw    $t5, ($v0)
/* 228ECC 801DDCDC 240F0003 */  li    $t7, 3
/* 228ED0 801DDCE0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 228ED4 801DDCE4 000D7080 */  sll   $t6, $t5, 2
/* 228ED8 801DDCE8 002E0821 */  addu  $at, $at, $t6
/* 228EDC 801DDCEC AC2CA1A0 */ sw $t4, %lo(D_800EA1A0)($at)
/* 228EE0 801DDCF0 8C580000 */  lw    $t8, ($v0)
/* 228EE4 801DDCF4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 228EE8 801DDCF8 3C05801E */  lui   $a1, %hi(func_801DDB8C) # $a1, 0x801e
/* 228EEC 801DDCFC 0018C880 */  sll   $t9, $t8, 2
/* 228EF0 801DDD00 00390821 */  addu  $at, $at, $t9
/* 228EF4 801DDD04 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 228EF8 801DDD08 8C480000 */  lw    $t0, ($v0)
/* 228EFC 801DDD0C 24A5DB8C */  addiu $a1, %lo(func_801DDB8C) # addiu $a1, $a1, -0x2474
/* 228F00 801DDD10 00084880 */  sll   $t1, $t0, 2
/* 228F04 801DDD14 00892021 */  addu  $a0, $a0, $t1
/* 228F08 801DDD18 0C02C7B2 */  jal   assign_new_process_entry
/* 228F0C 801DDD1C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DDD20_ovl17:
/* 228F10 801DDD20 0C0781CF */  jal   func_801E073C_ovl17
/* 228F14 801DDD24 00000000 */   nop   
/* 228F18 801DDD28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 228F1C 801DDD2C 27BD0018 */  addiu $sp, $sp, 0x18
/* 228F20 801DDD30 03E00008 */  jr    $ra
/* 228F24 801DDD34 00000000 */   nop   

.type func_801DDC40_ovl17, @function
.size func_801DDC40_ovl17, . - func_801DDC40_ovl17

glabel func_801DDD38_ovl17
/* 228F28 801DDD38 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 228F2C 801DDD3C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 228F30 801DDD40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 228F34 801DDD44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 228F38 801DDD48 AFA40018 */  sw    $a0, 0x18($sp)
/* 228F3C 801DDD4C 8DCF0000 */  lw    $t7, ($t6)
/* 228F40 801DDD50 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 228F44 801DDD54 24040041 */  li    $a0, 65
/* 228F48 801DDD58 000FC080 */  sll   $t8, $t7, 2
/* 228F4C 801DDD5C 00380821 */  addu  $at, $at, $t8
/* 228F50 801DDD60 AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 228F54 801DDD64 0C06B352 */  jal   func_801ACD48_ovl17
/* 228F58 801DDD68 00002825 */   move  $a1, $zero
/* 228F5C 801DDD6C 3C19800D */  lui   $t9, %hi(D_800D6E48) # $t9, 0x800d
/* 228F60 801DDD70 8F396E48 */  lw    $t9, %lo(D_800D6E48)($t9)
/* 228F64 801DDD74 3C040001 */  lui   $a0, (0x0001050B >> 16) # lui $a0, 1
/* 228F68 801DDD78 3484050B */  ori   $a0, (0x0001050B & 0xFFFF) # ori $a0, $a0, 0x50b
/* 228F6C 801DDD7C 17200020 */  bnez  $t9, .L801DDE00_ovl17
/* 228F70 801DDD80 00000000 */   nop   
/* 228F74 801DDD84 3C040001 */  lui   $a0, (0x000104FE >> 16) # lui $a0, 1
/* 228F78 801DDD88 0C02A806 */  jal   func_800AA018
/* 228F7C 801DDD8C 348404FE */   ori   $a0, (0x000104FE & 0xFFFF) # ori $a0, $a0, 0x4fe
/* 228F80 801DDD90 44806000 */  mtc1  $zero, $f12
/* 228F84 801DDD94 0C02BB30 */  jal   func_800AECC0
/* 228F88 801DDD98 00000000 */   nop   
/* 228F8C 801DDD9C 44806000 */  mtc1  $zero, $f12
/* 228F90 801DDDA0 0C02BB48 */  jal   func_800AED20
/* 228F94 801DDDA4 00000000 */   nop   
/* 228F98 801DDDA8 0C002DAF */  jal   finish_current_thread
/* 228F9C 801DDDAC 24040010 */   li    $a0, 16
/* 228FA0 801DDDB0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 228FA4 801DDDB4 44816000 */  mtc1  $at, $f12
/* 228FA8 801DDDB8 0C02BB30 */  jal   func_800AECC0
/* 228FAC 801DDDBC 00000000 */   nop   
/* 228FB0 801DDDC0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 228FB4 801DDDC4 44816000 */  mtc1  $at, $f12
/* 228FB8 801DDDC8 0C02BB48 */  jal   func_800AED20
/* 228FBC 801DDDCC 00000000 */   nop   
/* 228FC0 801DDDD0 3C040001 */  lui   $a0, (0x000104FE >> 16) # lui $a0, 1
/* 228FC4 801DDDD4 0C02A806 */  jal   func_800AA018
/* 228FC8 801DDDD8 348404FE */   ori   $a0, (0x000104FE & 0xFFFF) # ori $a0, $a0, 0x4fe
/* 228FCC 801DDDDC 3C040001 */  lui   $a0, (0x000104FF >> 16) # lui $a0, 1
/* 228FD0 801DDDE0 0C02A806 */  jal   func_800AA018
/* 228FD4 801DDDE4 348404FF */   ori   $a0, (0x000104FF & 0xFFFF) # ori $a0, $a0, 0x4ff
/* 228FD8 801DDDE8 0C002DAF */  jal   finish_current_thread
/* 228FDC 801DDDEC 24040080 */   li    $a0, 128
/* 228FE0 801DDDF0 0C002DAF */  jal   finish_current_thread
/* 228FE4 801DDDF4 2404001E */   li    $a0, 30
/* 228FE8 801DDDF8 10000009 */  b     .L801DDE20_ovl17
/* 228FEC 801DDDFC 00000000 */   nop   
.L801DDE00_ovl17:
/* 228FF0 801DDE00 0C02A7E6 */  jal   func_800A9F98
/* 228FF4 801DDE04 3C054280 */   lui   $a1, 0x4280
/* 228FF8 801DDE08 3C040001 */  lui   $a0, (0x0001050C >> 16) # lui $a0, 1
/* 228FFC 801DDE0C 3484050C */  ori   $a0, (0x0001050C & 0xFFFF) # ori $a0, $a0, 0x50c
/* 229000 801DDE10 0C02A7E6 */  jal   func_800A9F98
/* 229004 801DDE14 3C054280 */   lui   $a1, 0x4280
/* 229008 801DDE18 0C002DAF */  jal   finish_current_thread
/* 22900C 801DDE1C 2404001E */   li    $a0, 30
.L801DDE20_ovl17:
/* 229010 801DDE20 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 229014 801DDE24 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 229018 801DDE28 24080001 */  li    $t0, 1
/* 22901C 801DDE2C 3C01800D */  lui   $at, %hi(D_800D6E48) # $at, 0x800d
/* 229020 801DDE30 AC286E48 */  sw    $t0, %lo(D_800D6E48)($at)
/* 229024 801DDE34 8D2A0000 */  lw    $t2, ($t1)
/* 229028 801DDE38 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22902C 801DDE3C 000A5880 */  sll   $t3, $t2, 2
/* 229030 801DDE40 002B0821 */  addu  $at, $at, $t3
/* 229034 801DDE44 C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 229038 801DDE48 4600218D */  trunc.w.s $f6, $f4
/* 22903C 801DDE4C 44043000 */  mfc1  $a0, $f6
/* 229040 801DDE50 0C02F07F */  jal   func_800BC1FC
/* 229044 801DDE54 00000000 */   nop   
/* 229048 801DDE58 0C02BC9F */  jal   func_800AF27C
/* 22904C 801DDE5C 00000000 */   nop   
/* 229050 801DDE60 2404003E */  li    $a0, 62
/* 229054 801DDE64 0C0782CE */  jal   D_801E0B38_ovl17
/* 229058 801DDE68 00002825 */   move  $a1, $zero
/* 22905C 801DDE6C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 229060 801DDE70 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 229064 801DDE74 3C01800F */ lui $at, %hi(D_800EBBE0)
/* 229068 801DDE78 2404003F */  li    $a0, 63
/* 22906C 801DDE7C 8DAE0000 */  lw    $t6, ($t5)
/* 229070 801DDE80 00002825 */  move  $a1, $zero
/* 229074 801DDE84 000E7880 */  sll   $t7, $t6, 2
/* 229078 801DDE88 002F0821 */  addu  $at, $at, $t7
/* 22907C 801DDE8C 0C0782CE */  jal   D_801E0B38_ovl17
/* 229080 801DDE90 AC22BBE0 */ sw $v0, %lo(D_800EBBE0)($at)
/* 229084 801DDE94 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 229088 801DDE98 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 22908C 801DDE9C 3C01800F */ lui $at, %hi(D_800EBDA0)
/* 229090 801DDEA0 24040040 */  li    $a0, 64
/* 229094 801DDEA4 8F190000 */  lw    $t9, ($t8)
/* 229098 801DDEA8 00002825 */  move  $a1, $zero
/* 22909C 801DDEAC 00194080 */  sll   $t0, $t9, 2
/* 2290A0 801DDEB0 00280821 */  addu  $at, $at, $t0
/* 2290A4 801DDEB4 0C0782CE */  jal   D_801E0B38_ovl17
/* 2290A8 801DDEB8 AC22BDA0 */ sw $v0, %lo(D_800EBDA0)($at)
/* 2290AC 801DDEBC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 2290B0 801DDEC0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 2290B4 801DDEC4 3C01800F */ lui $at, %hi(D_800EBF60)
/* 2290B8 801DDEC8 24040040 */  li    $a0, 64
/* 2290BC 801DDECC 8D2A0000 */  lw    $t2, ($t1)
/* 2290C0 801DDED0 24050001 */  li    $a1, 1
/* 2290C4 801DDED4 000A5880 */  sll   $t3, $t2, 2
/* 2290C8 801DDED8 002B0821 */  addu  $at, $at, $t3
/* 2290CC 801DDEDC 0C0782CE */  jal   D_801E0B38_ovl17
/* 2290D0 801DDEE0 AC22BF60 */ sw $v0, %lo(D_800EBF60)($at)
/* 2290D4 801DDEE4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2290D8 801DDEE8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2290DC 801DDEEC 3C01800F */ lui $at, %hi(D_800EC120)
/* 2290E0 801DDEF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2290E4 801DDEF4 8C6C0000 */  lw    $t4, ($v1)
/* 2290E8 801DDEF8 240E0001 */  li    $t6, 1
/* 2290EC 801DDEFC 000C6880 */  sll   $t5, $t4, 2
/* 2290F0 801DDF00 002D0821 */  addu  $at, $at, $t5
/* 2290F4 801DDF04 AC22C120 */ sw $v0, %lo(D_800EC120)($at)
/* 2290F8 801DDF08 8C6F0000 */  lw    $t7, ($v1)
/* 2290FC 801DDF0C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 229100 801DDF10 27BD0018 */  addiu $sp, $sp, 0x18
/* 229104 801DDF14 000FC080 */  sll   $t8, $t7, 2
/* 229108 801DDF18 00380821 */  addu  $at, $at, $t8
/* 22910C 801DDF1C 03E00008 */  jr    $ra
/* 229110 801DDF20 AC2EDC50 */ sw $t6, %lo(gEntityVtableIndexArray)($at)

.type func_801DDD38_ovl17, @function
.size func_801DDD38_ovl17, . - func_801DDD38_ovl17

glabel func_801DDF24_ovl17
/* 229114 801DDF24 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 229118 801DDF28 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22911C 801DDF2C AFA40000 */  sw    $a0, ($sp)
/* 229120 801DDF30 3C18800F */ lui $t8, %hi(D_800E9AA0)
/* 229124 801DDF34 8DC30000 */  lw    $v1, ($t6)
/* 229128 801DDF38 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 22912C 801DDF3C 00031880 */  sll   $v1, $v1, 2
/* 229130 801DDF40 0303C021 */  addu  $t8, $t8, $v1
/* 229134 801DDF44 8F189AA0 */ lw $t8, %lo(D_800E9AA0)($t8)
/* 229138 801DDF48 01E37821 */  addu  $t7, $t7, $v1
/* 22913C 801DDF4C 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 229140 801DDF50 17000004 */  bnez  $t8, .L801DDF64_ovl17
/* 229144 801DDF54 8DE20064 */   lw    $v0, 0x64($t7)
/* 229148 801DDF58 10400002 */  beqz  $v0, .L801DDF64_ovl17
/* 22914C 801DDF5C 00000000 */   nop   
/* 229150 801DDF60 A0400054 */  sb    $zero, 0x54($v0)
.L801DDF64_ovl17:
/* 229154 801DDF64 03E00008 */  jr    $ra
/* 229158 801DDF68 00000000 */   nop   

.type func_801DDF24_ovl17, @function
.size func_801DDF24_ovl17, . - func_801DDF24_ovl17

glabel func_801DDF6C_ovl17
/* 22915C 801DDF6C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 229160 801DDF70 AFB30028 */  sw    $s3, 0x28($sp)
/* 229164 801DDF74 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 229168 801DDF78 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 22916C 801DDF7C 8E6E0000 */  lw    $t6, ($s3)
/* 229170 801DDF80 AFBF0034 */  sw    $ra, 0x34($sp)
/* 229174 801DDF84 AFB50030 */  sw    $s5, 0x30($sp)
/* 229178 801DDF88 AFB4002C */  sw    $s4, 0x2c($sp)
/* 22917C 801DDF8C AFB20024 */  sw    $s2, 0x24($sp)
/* 229180 801DDF90 AFB10020 */  sw    $s1, 0x20($sp)
/* 229184 801DDF94 AFB0001C */  sw    $s0, 0x1c($sp)
/* 229188 801DDF98 8DCF0000 */  lw    $t7, ($t6)
/* 22918C 801DDF9C 00808025 */  move  $s0, $a0
/* 229190 801DDFA0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 229194 801DDFA4 000FC080 */  sll   $t8, $t7, 2
/* 229198 801DDFA8 24140001 */  li    $s4, 1
/* 22919C 801DDFAC 00380821 */  addu  $at, $at, $t8
/* 2291A0 801DDFB0 3C040001 */  lui   $a0, (0x0001050C >> 16) # lui $a0, 1
/* 2291A4 801DDFB4 AC34DFD0 */ sw $s4, %lo(D_800DDFD0)($at)
/* 2291A8 801DDFB8 0C02A806 */  jal   func_800AA018
/* 2291AC 801DDFBC 3484050C */   ori   $a0, (0x0001050C & 0xFFFF) # ori $a0, $a0, 0x50c
/* 2291B0 801DDFC0 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 2291B4 801DDFC4 44810000 */  mtc1  $at, $f0
/* 2291B8 801DDFC8 8E19003C */  lw    $t9, 0x3c($s0)
/* 2291BC 801DDFCC 3C110001 */  lui   $s1, (0x0001050B >> 16) # lui $s1, 1
/* 2291C0 801DDFD0 3631050B */  ori   $s1, (0x0001050B & 0xFFFF) # ori $s1, $s1, 0x50b
/* 2291C4 801DDFD4 3C070001 */  lui   $a3, (0x00010083 >> 16) # lui $a3, 1
/* 2291C8 801DDFD8 8F240010 */  lw    $a0, 0x10($t9)
/* 2291CC 801DDFDC 44060000 */  mfc1  $a2, $f0
/* 2291D0 801DDFE0 34E70083 */  ori   $a3, (0x00010083 & 0xFFFF) # ori $a3, $a3, 0x83
/* 2291D4 801DDFE4 02202825 */  move  $a1, $s1
/* 2291D8 801DDFE8 0C02A982 */  jal   func_800AA608
/* 2291DC 801DDFEC E7A00010 */   swc1  $f0, 0x10($sp)
/* 2291E0 801DDFF0 02202025 */  move  $a0, $s1
/* 2291E4 801DDFF4 0C02A7E6 */  jal   func_800A9F98
/* 2291E8 801DDFF8 3C054100 */   lui   $a1, 0x4100
/* 2291EC 801DDFFC 3C12800F */  lui   $s2, %hi(D_800E98E0) # $s2, 0x800f
/* 2291F0 801DE000 3C11800F */  lui   $s1, %hi(D_800E9AA0) # $s1, 0x800f
/* 2291F4 801DE004 3C10800F */  lui   $s0, %hi(D_800E9560) # $s0, 0x800f
/* 2291F8 801DE008 26109560 */  addiu $s0, %lo(D_800E9560) # addiu $s0, $s0, -0x6aa0
/* 2291FC 801DE00C 26319AA0 */  addiu $s1, %lo(D_800E9AA0) # addiu $s1, $s1, -0x6560
/* 229200 801DE010 265298E0 */  addiu $s2, %lo(D_800E98E0) # addiu $s2, $s2, -0x6720
/* 229204 801DE014 24150002 */  li    $s5, 2
/* 229208 801DE018 8E680000 */  lw    $t0, ($s3)
.L801DE01C_ovl17:
/* 22920C 801DE01C 02802025 */  move  $a0, $s4
/* 229210 801DE020 8D090000 */  lw    $t1, ($t0)
/* 229214 801DE024 00095080 */  sll   $t2, $t1, 2
/* 229218 801DE028 022A5821 */  addu  $t3, $s1, $t2
/* 22921C 801DE02C 0C002DAF */  jal   finish_current_thread
/* 229220 801DE030 AD750000 */   sw    $s5, ($t3)
/* 229224 801DE034 8E630000 */  lw    $v1, ($s3)
/* 229228 801DE038 8C6C0000 */  lw    $t4, ($v1)
/* 22922C 801DE03C 000C6880 */  sll   $t5, $t4, 2
/* 229230 801DE040 020D7021 */  addu  $t6, $s0, $t5
/* 229234 801DE044 ADC00000 */  sw    $zero, ($t6)
/* 229238 801DE048 8C650000 */  lw    $a1, ($v1)
/* 22923C 801DE04C 00052880 */  sll   $a1, $a1, 2
/* 229240 801DE050 02057821 */  addu  $t7, $s0, $a1
/* 229244 801DE054 8DF80000 */  lw    $t8, ($t7)
/* 229248 801DE058 2B01000C */  slti  $at, $t8, 0xc
/* 22924C 801DE05C 10200018 */  beqz  $at, .L801DE0C0_ovl17
/* 229250 801DE060 0225C821 */   addu  $t9, $s1, $a1
.L801DE064_ovl17:
/* 229254 801DE064 AF340000 */  sw    $s4, ($t9)
/* 229258 801DE068 8C650000 */  lw    $a1, ($v1)
/* 22925C 801DE06C 00052880 */  sll   $a1, $a1, 2
/* 229260 801DE070 02454021 */  addu  $t0, $s2, $a1
/* 229264 801DE074 8D090000 */  lw    $t1, ($t0)
/* 229268 801DE078 55200012 */  bnezl $t1, .L801DE0C4_ovl17
/* 22926C 801DE07C 0225C021 */   addu  $t8, $s1, $a1
/* 229270 801DE080 0C002DAF */  jal   finish_current_thread
/* 229274 801DE084 02802025 */   move  $a0, $s4
/* 229278 801DE088 8E630000 */  lw    $v1, ($s3)
/* 22927C 801DE08C 8C6A0000 */  lw    $t2, ($v1)
/* 229280 801DE090 000A5880 */  sll   $t3, $t2, 2
/* 229284 801DE094 020B1021 */  addu  $v0, $s0, $t3
/* 229288 801DE098 8C4C0000 */  lw    $t4, ($v0)
/* 22928C 801DE09C 258D0001 */  addiu $t5, $t4, 1
/* 229290 801DE0A0 AC4D0000 */  sw    $t5, ($v0)
/* 229294 801DE0A4 8C650000 */  lw    $a1, ($v1)
/* 229298 801DE0A8 00052880 */  sll   $a1, $a1, 2
/* 22929C 801DE0AC 02057021 */  addu  $t6, $s0, $a1
/* 2292A0 801DE0B0 8DCF0000 */  lw    $t7, ($t6)
/* 2292A4 801DE0B4 29E1000C */  slti  $at, $t7, 0xc
/* 2292A8 801DE0B8 5420FFEA */  bnezl $at, .L801DE064_ovl17
/* 2292AC 801DE0BC 0225C821 */   addu  $t9, $s1, $a1
.L801DE0C0_ovl17:
/* 2292B0 801DE0C0 0225C021 */  addu  $t8, $s1, $a1
.L801DE0C4_ovl17:
/* 2292B4 801DE0C4 AF000000 */  sw    $zero, ($t8)
/* 2292B8 801DE0C8 0C002DAF */  jal   finish_current_thread
/* 2292BC 801DE0CC 2404001C */   li    $a0, 28
/* 2292C0 801DE0D0 1000FFD2 */  b     .L801DE01C_ovl17
/* 2292C4 801DE0D4 8E680000 */   lw    $t0, ($s3)
/* 2292C8 801DE0D8 00000000 */  nop   
/* 2292CC 801DE0DC 00000000 */  nop   
/* 2292D0 801DE0E0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 2292D4 801DE0E4 8FB0001C */  lw    $s0, 0x1c($sp)
/* 2292D8 801DE0E8 8FB10020 */  lw    $s1, 0x20($sp)
/* 2292DC 801DE0EC 8FB20024 */  lw    $s2, 0x24($sp)
/* 2292E0 801DE0F0 8FB30028 */  lw    $s3, 0x28($sp)
/* 2292E4 801DE0F4 8FB4002C */  lw    $s4, 0x2c($sp)
/* 2292E8 801DE0F8 8FB50030 */  lw    $s5, 0x30($sp)
/* 2292EC 801DE0FC 03E00008 */  jr    $ra
/* 2292F0 801DE100 27BD0038 */   addiu $sp, $sp, 0x38

.type func_801DDF6C_ovl17, @function
.size func_801DDF6C_ovl17, . - func_801DDF6C_ovl17

glabel func_801DE104_ovl17
/* 2292F4 801DE104 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2292F8 801DE108 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2292FC 801DE10C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 229300 801DE110 AFBF0014 */  sw    $ra, 0x14($sp)
/* 229304 801DE114 AFA40020 */  sw    $a0, 0x20($sp)
/* 229308 801DE118 8DCF0000 */  lw    $t7, ($t6)
/* 22930C 801DE11C 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 229310 801DE120 000FC080 */  sll   $t8, $t7, 2
/* 229314 801DE124 0338C821 */  addu  $t9, $t9, $t8
/* 229318 801DE128 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 22931C 801DE12C 8F220064 */  lw    $v0, 0x64($t9)
/* 229320 801DE130 0C077A97 */  jal   func_801DEA5C_ovl17
/* 229324 801DE134 AFA2001C */   sw    $v0, 0x1c($sp)
/* 229328 801DE138 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 22932C 801DE13C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 229330 801DE140 3C03800F */ lui $v1, %hi(D_800E98E0)
/* 229334 801DE144 3C09800F */ lui $t1, %hi(D_800E9AA0)
/* 229338 801DE148 8CC70000 */  lw    $a3, ($a2)
/* 22933C 801DE14C 8FA2001C */  lw    $v0, 0x1c($sp)
/* 229340 801DE150 24010001 */  li    $at, 1
/* 229344 801DE154 00073880 */  sll   $a3, $a3, 2
/* 229348 801DE158 00671821 */  addu  $v1, $v1, $a3
/* 22934C 801DE15C 8C6398E0 */ lw $v1, %lo(D_800E98E0)($v1)
/* 229350 801DE160 01274821 */  addu  $t1, $t1, $a3
/* 229354 801DE164 10600007 */  beqz  $v1, .L801DE184_ovl17
/* 229358 801DE168 00000000 */   nop   
/* 22935C 801DE16C 10610011 */  beq   $v1, $at, .L801DE1B4_ovl17
/* 229360 801DE170 24080002 */   li    $t0, 2
/* 229364 801DE174 10680013 */  beq   $v1, $t0, .L801DE1C4_ovl17
/* 229368 801DE178 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22936C 801DE17C 10000022 */  b     .L801DE208_ovl17
/* 229370 801DE180 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DE184_ovl17:
/* 229374 801DE184 8D299AA0 */ lw $t1, %lo(D_800E9AA0)($t1)
/* 229378 801DE188 24010001 */  li    $at, 1
/* 22937C 801DE18C 15210005 */  bne   $t1, $at, .L801DE1A4_ovl17
/* 229380 801DE190 00000000 */   nop   
/* 229384 801DE194 1040001B */  beqz  $v0, .L801DE204_ovl17
/* 229388 801DE198 240A0002 */   li    $t2, 2
/* 22938C 801DE19C 10000019 */  b     .L801DE204_ovl17
/* 229390 801DE1A0 A04A0054 */   sb    $t2, 0x54($v0)
.L801DE1A4_ovl17:
/* 229394 801DE1A4 50400018 */  beql  $v0, $zero, .L801DE208_ovl17
/* 229398 801DE1A8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 22939C 801DE1AC 10000015 */  b     .L801DE204_ovl17
/* 2293A0 801DE1B0 A0400054 */   sb    $zero, 0x54($v0)
.L801DE1B4_ovl17:
/* 2293A4 801DE1B4 10400013 */  beqz  $v0, .L801DE204_ovl17
/* 2293A8 801DE1B8 240B0002 */   li    $t3, 2
/* 2293AC 801DE1BC 10000011 */  b     .L801DE204_ovl17
/* 2293B0 801DE1C0 A04B0054 */   sb    $t3, 0x54($v0)
.L801DE1C4_ovl17:
/* 2293B4 801DE1C4 10400006 */  beqz  $v0, .L801DE1E0_ovl17
/* 2293B8 801DE1C8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 2293BC 801DE1CC A0400054 */  sb    $zero, 0x54($v0)
/* 2293C0 801DE1D0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 2293C4 801DE1D4 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 2293C8 801DE1D8 8CC70000 */  lw    $a3, ($a2)
/* 2293CC 801DE1DC 00073880 */  sll   $a3, $a3, 2
.L801DE1E0_ovl17:
/* 2293D0 801DE1E0 00270821 */  addu  $at, $at, $a3
/* 2293D4 801DE1E4 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 2293D8 801DE1E8 8CCC0000 */  lw    $t4, ($a2)
/* 2293DC 801DE1EC 3C05801E */  lui   $a1, %hi(func_801DDB8C) # $a1, 0x801e
/* 2293E0 801DE1F0 24A5DB8C */  addiu $a1, %lo(func_801DDB8C) # addiu $a1, $a1, -0x2474
/* 2293E4 801DE1F4 000C6880 */  sll   $t5, $t4, 2
/* 2293E8 801DE1F8 008D2021 */  addu  $a0, $a0, $t5
/* 2293EC 801DE1FC 0C02C7B2 */  jal   assign_new_process_entry
/* 2293F0 801DE200 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DE204_ovl17:
/* 2293F4 801DE204 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DE208_ovl17:
/* 2293F8 801DE208 27BD0020 */  addiu $sp, $sp, 0x20
/* 2293FC 801DE20C 03E00008 */  jr    $ra
/* 229400 801DE210 00000000 */   nop   

.type func_801DE104_ovl17, @function
.size func_801DE104_ovl17, . - func_801DE104_ovl17

glabel func_801DE214_ovl17
/* 229404 801DE214 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 229408 801DE218 AFB20038 */  sw    $s2, 0x38($sp)
/* 22940C 801DE21C 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 229410 801DE220 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 229414 801DE224 8E4F0000 */  lw    $t7, ($s2)
/* 229418 801DE228 AFBF003C */  sw    $ra, 0x3c($sp)
/* 22941C 801DE22C AFB10034 */  sw    $s1, 0x34($sp)
/* 229420 801DE230 AFB00030 */  sw    $s0, 0x30($sp)
/* 229424 801DE234 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 229428 801DE238 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 22942C 801DE23C 8DF80000 */  lw    $t8, ($t7)
/* 229430 801DE240 00808025 */  move  $s0, $a0
/* 229434 801DE244 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 229438 801DE248 0018C880 */  sll   $t9, $t8, 2
/* 22943C 801DE24C 00390821 */  addu  $at, $at, $t9
/* 229440 801DE250 240E0002 */  li    $t6, 2
/* 229444 801DE254 3C040001 */  lui   $a0, (0x0001050A >> 16) # lui $a0, 1
/* 229448 801DE258 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22944C 801DE25C 0C02A806 */  jal   func_800AA018
/* 229450 801DE260 3484050A */   ori   $a0, (0x0001050A & 0xFFFF) # ori $a0, $a0, 0x50a
/* 229454 801DE264 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 229458 801DE268 4481A000 */  mtc1  $at, $f20
/* 22945C 801DE26C 8E08003C */  lw    $t0, 0x3c($s0)
/* 229460 801DE270 3C110001 */  lui   $s1, (0x00010509 >> 16) # lui $s1, 1
/* 229464 801DE274 36310509 */  ori   $s1, (0x00010509 & 0xFFFF) # ori $s1, $s1, 0x509
/* 229468 801DE278 3C070001 */  lui   $a3, (0x00010083 >> 16) # lui $a3, 1
/* 22946C 801DE27C 8D040010 */  lw    $a0, 0x10($t0)
/* 229470 801DE280 4406A000 */  mfc1  $a2, $f20
/* 229474 801DE284 34E70083 */  ori   $a3, (0x00010083 & 0xFFFF) # ori $a3, $a3, 0x83
/* 229478 801DE288 02202825 */  move  $a1, $s1
/* 22947C 801DE28C 0C02A982 */  jal   func_800AA608
/* 229480 801DE290 E7B40010 */   swc1  $f20, 0x10($sp)
/* 229484 801DE294 4405A000 */  mfc1  $a1, $f20
/* 229488 801DE298 0C02A7E6 */  jal   func_800A9F98
/* 22948C 801DE29C 02202025 */   move  $a0, $s1
/* 229490 801DE2A0 0C02BC9F */  jal   func_800AF27C
/* 229494 801DE2A4 00000000 */   nop   
/* 229498 801DE2A8 3C040001 */  lui   $a0, (0x00010507 >> 16) # lui $a0, 1
/* 22949C 801DE2AC 0C02A806 */  jal   func_800AA018
/* 2294A0 801DE2B0 34840507 */   ori   $a0, (0x00010507 & 0xFFFF) # ori $a0, $a0, 0x507
/* 2294A4 801DE2B4 3C040001 */  lui   $a0, (0x00010508 >> 16) # lui $a0, 1
/* 2294A8 801DE2B8 0C02A806 */  jal   func_800AA018
/* 2294AC 801DE2BC 34840508 */   ori   $a0, (0x00010508 & 0xFFFF) # ori $a0, $a0, 0x508
/* 2294B0 801DE2C0 8E430000 */  lw    $v1, ($s2)
/* 2294B4 801DE2C4 3C10800F */  lui   $s0, %hi(D_800E9560) # $s0, 0x800f
/* 2294B8 801DE2C8 26109560 */  addiu $s0, %lo(D_800E9560) # addiu $s0, $s0, -0x6aa0
/* 2294BC 801DE2CC 8C690000 */  lw    $t1, ($v1)
/* 2294C0 801DE2D0 3C11800D */  lui   $s1, %hi(D_800D7170) # $s1, 0x800d
/* 2294C4 801DE2D4 26317170 */  addiu $s1, %lo(D_800D7170) # addiu $s1, $s1, 0x7170
/* 2294C8 801DE2D8 00095080 */  sll   $t2, $t1, 2
/* 2294CC 801DE2DC 020A5821 */  addu  $t3, $s0, $t2
/* 2294D0 801DE2E0 AD600000 */  sw    $zero, ($t3)
/* 2294D4 801DE2E4 8C6C0000 */  lw    $t4, ($v1)
/* 2294D8 801DE2E8 000C6880 */  sll   $t5, $t4, 2
/* 2294DC 801DE2EC 020D7821 */  addu  $t7, $s0, $t5
/* 2294E0 801DE2F0 8DF80000 */  lw    $t8, ($t7)
/* 2294E4 801DE2F4 2B010006 */  slti  $at, $t8, 6
/* 2294E8 801DE2F8 1020001A */  beqz  $at, .L801DE364_ovl17
/* 2294EC 801DE2FC 3C014040 */   li    $at, 0x40400000 # 3.000000
/* 2294F0 801DE300 4481B000 */  mtc1  $at, $f22
/* 2294F4 801DE304 3C01801E */  lui   $at, %hi(D_801E55E8) # $at, 0x801e
/* 2294F8 801DE308 C43455E8 */  lwc1  $f20, %lo(D_801E55E8)($at)
/* 2294FC 801DE30C C6240000 */  lwc1  $f4, ($s1)
.L801DE310_ovl17:
/* 229500 801DE310 46142182 */  mul.s $f6, $f4, $f20
/* 229504 801DE314 00000000 */  nop   
/* 229508 801DE318 46163302 */  mul.s $f12, $f6, $f22
/* 22950C 801DE31C 0C077DDA */  jal   func_801DF768_ovl17
/* 229510 801DE320 00000000 */   nop   
/* 229514 801DE324 0C002DAF */  jal   finish_current_thread
/* 229518 801DE328 24040001 */   li    $a0, 1
/* 22951C 801DE32C 8E430000 */  lw    $v1, ($s2)
/* 229520 801DE330 8C6E0000 */  lw    $t6, ($v1)
/* 229524 801DE334 000EC880 */  sll   $t9, $t6, 2
/* 229528 801DE338 02191021 */  addu  $v0, $s0, $t9
/* 22952C 801DE33C 8C480000 */  lw    $t0, ($v0)
/* 229530 801DE340 25090001 */  addiu $t1, $t0, 1
/* 229534 801DE344 AC490000 */  sw    $t1, ($v0)
/* 229538 801DE348 8C6A0000 */  lw    $t2, ($v1)
/* 22953C 801DE34C 000A5880 */  sll   $t3, $t2, 2
/* 229540 801DE350 020B6021 */  addu  $t4, $s0, $t3
/* 229544 801DE354 8D8D0000 */  lw    $t5, ($t4)
/* 229548 801DE358 29A10006 */  slti  $at, $t5, 6
/* 22954C 801DE35C 5420FFEC */  bnezl $at, .L801DE310_ovl17
/* 229550 801DE360 C6240000 */   lwc1  $f4, ($s1)
.L801DE364_ovl17:
/* 229554 801DE364 0C002DAF */  jal   finish_current_thread
/* 229558 801DE368 240400C2 */   li    $a0, 194
/* 22955C 801DE36C 8E430000 */  lw    $v1, ($s2)
/* 229560 801DE370 3C01800F */ lui $at, %hi(D_800E98E0)
/* 229564 801DE374 240E003C */  li    $t6, 60
/* 229568 801DE378 8C6F0000 */  lw    $t7, ($v1)
/* 22956C 801DE37C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 229570 801DE380 24090001 */  li    $t1, 1
/* 229574 801DE384 000FC080 */  sll   $t8, $t7, 2
/* 229578 801DE388 00380821 */  addu  $at, $at, $t8
/* 22957C 801DE38C AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 229580 801DE390 8C790000 */  lw    $t9, ($v1)
/* 229584 801DE394 3C01800F */ lui $at, %hi(D_800EA520)
/* 229588 801DE398 8FB20038 */  lw    $s2, 0x38($sp)
/* 22958C 801DE39C 00194080 */  sll   $t0, $t9, 2
/* 229590 801DE3A0 00280821 */  addu  $at, $at, $t0
/* 229594 801DE3A4 AC2EA520 */ sw $t6, %lo(D_800EA520)($at)
/* 229598 801DE3A8 8C6A0000 */  lw    $t2, ($v1)
/* 22959C 801DE3AC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 2295A0 801DE3B0 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 2295A4 801DE3B4 000A5880 */  sll   $t3, $t2, 2
/* 2295A8 801DE3B8 002B0821 */  addu  $at, $at, $t3
/* 2295AC 801DE3BC D7B60028 */  ldc1  $f22, 0x28($sp)
/* 2295B0 801DE3C0 8FB00030 */  lw    $s0, 0x30($sp)
/* 2295B4 801DE3C4 8FB10034 */  lw    $s1, 0x34($sp)
/* 2295B8 801DE3C8 AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
/* 2295BC 801DE3CC 03E00008 */  jr    $ra
/* 2295C0 801DE3D0 27BD0040 */   addiu $sp, $sp, 0x40

.type func_801DE214_ovl17, @function
.size func_801DE214_ovl17, . - func_801DE214_ovl17

glabel func_801DE3D4_ovl17
/* 2295C4 801DE3D4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2295C8 801DE3D8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2295CC 801DE3DC AFA40000 */  sw    $a0, ($sp)
/* 2295D0 801DE3E0 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 2295D4 801DE3E4 8DCF0000 */  lw    $t7, ($t6)
/* 2295D8 801DE3E8 000FC080 */  sll   $t8, $t7, 2
/* 2295DC 801DE3EC 0338C821 */  addu  $t9, $t9, $t8
/* 2295E0 801DE3F0 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 2295E4 801DE3F4 8F220064 */  lw    $v0, 0x64($t9)
/* 2295E8 801DE3F8 10400002 */  beqz  $v0, .L801DE404_ovl17
/* 2295EC 801DE3FC 00000000 */   nop   
/* 2295F0 801DE400 A0400054 */  sb    $zero, 0x54($v0)
.L801DE404_ovl17:
/* 2295F4 801DE404 03E00008 */  jr    $ra
/* 2295F8 801DE408 00000000 */   nop   

.type func_801DE3D4_ovl17, @function
.size func_801DE3D4_ovl17, . - func_801DE3D4_ovl17

glabel func_801DE40C_ovl17
/* 2295FC 801DE40C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 229600 801DE410 AFB4002C */  sw    $s4, 0x2c($sp)
/* 229604 801DE414 3C148005 */  lui   $s4, %hi(D_8004A7C4) # $s4, 0x8005
/* 229608 801DE418 2694A7C4 */  addiu $s4, %lo(D_8004A7C4) # addiu $s4, $s4, -0x583c
/* 22960C 801DE41C 8E830000 */  lw    $v1, ($s4)
/* 229610 801DE420 AFBF0034 */  sw    $ra, 0x34($sp)
/* 229614 801DE424 AFB50030 */  sw    $s5, 0x30($sp)
/* 229618 801DE428 AFB30028 */  sw    $s3, 0x28($sp)
/* 22961C 801DE42C AFB20024 */  sw    $s2, 0x24($sp)
/* 229620 801DE430 AFB10020 */  sw    $s1, 0x20($sp)
/* 229624 801DE434 AFB0001C */  sw    $s0, 0x1c($sp)
/* 229628 801DE438 8C650000 */  lw    $a1, ($v1)
/* 22962C 801DE43C 3C0E800E */ lui $t6, %hi(D_800DFBD0)
/* 229630 801DE440 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 229634 801DE444 00052880 */  sll   $a1, $a1, 2
/* 229638 801DE448 01C57021 */  addu  $t6, $t6, $a1
/* 22963C 801DE44C 8DCEFBD0 */ lw $t6, %lo(D_800DFBD0)($t6)
/* 229640 801DE450 00250821 */  addu  $at, $at, $a1
/* 229644 801DE454 240F0003 */  li    $t7, 3
/* 229648 801DE458 8DD3007C */  lw    $s3, 0x7c($t6)
/* 22964C 801DE45C AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 229650 801DE460 8C780000 */  lw    $t8, ($v1)
/* 229654 801DE464 00808025 */  move  $s0, $a0
/* 229658 801DE468 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 22965C 801DE46C 0018C880 */  sll   $t9, $t8, 2
/* 229660 801DE470 00390821 */  addu  $at, $at, $t9
/* 229664 801DE474 3C040001 */  lui   $a0, (0x00010501 >> 16) # lui $a0, 1
/* 229668 801DE478 AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 22966C 801DE47C 0C02A806 */  jal   func_800AA018
/* 229670 801DE480 34840501 */   ori   $a0, (0x00010501 & 0xFFFF) # ori $a0, $a0, 0x501
/* 229674 801DE484 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 229678 801DE488 44810000 */  mtc1  $at, $f0
/* 22967C 801DE48C 8E08003C */  lw    $t0, 0x3c($s0)
/* 229680 801DE490 3C110001 */  lui   $s1, (0x00010500 >> 16) # lui $s1, 1
/* 229684 801DE494 36310500 */  ori   $s1, (0x00010500 & 0xFFFF) # ori $s1, $s1, 0x500
/* 229688 801DE498 3C070001 */  lui   $a3, (0x00010083 >> 16) # lui $a3, 1
/* 22968C 801DE49C 8D040010 */  lw    $a0, 0x10($t0)
/* 229690 801DE4A0 44060000 */  mfc1  $a2, $f0
/* 229694 801DE4A4 34E70083 */  ori   $a3, (0x00010083 & 0xFFFF) # ori $a3, $a3, 0x83
/* 229698 801DE4A8 02202825 */  move  $a1, $s1
/* 22969C 801DE4AC 0C02A982 */  jal   func_800AA608
/* 2296A0 801DE4B0 E7A00010 */   swc1  $f0, 0x10($sp)
/* 2296A4 801DE4B4 02202025 */  move  $a0, $s1
/* 2296A8 801DE4B8 0C02A7E6 */  jal   func_800A9F98
/* 2296AC 801DE4BC 3C054080 */   lui   $a1, 0x4080
/* 2296B0 801DE4C0 8E8A0000 */  lw    $t2, ($s4)
/* 2296B4 801DE4C4 3C01800F */ lui $at, %hi(D_800E93A0)
/* 2296B8 801DE4C8 24090014 */  li    $t1, 20
/* 2296BC 801DE4CC 8D4B0000 */  lw    $t3, ($t2)
/* 2296C0 801DE4D0 24040008 */  li    $a0, 8
/* 2296C4 801DE4D4 000B6080 */  sll   $t4, $t3, 2
/* 2296C8 801DE4D8 002C0821 */  addu  $at, $at, $t4
/* 2296CC 801DE4DC 0C002DAF */  jal   finish_current_thread
/* 2296D0 801DE4E0 AC2993A0 */ sw $t1, %lo(D_800E93A0)($at)
/* 2296D4 801DE4E4 27B1005C */  addiu $s1, $sp, 0x5c
/* 2296D8 801DE4E8 02202025 */  move  $a0, $s1
/* 2296DC 801DE4EC 0C0291E5 */  jal   func_800A4794
/* 2296E0 801DE4F0 02602825 */   move  $a1, $s3
/* 2296E4 801DE4F4 2404003D */  li    $a0, 61
/* 2296E8 801DE4F8 24050001 */  li    $a1, 1
/* 2296EC 801DE4FC 0C06B364 */  jal   func_801ACD90_ovl17
/* 2296F0 801DE500 02203025 */   move  $a2, $s1
/* 2296F4 801DE504 0C029D9E */  jal   play_sound
/* 2296F8 801DE508 2404025E */   li    $a0, 606
/* 2296FC 801DE50C 8E830000 */  lw    $v1, ($s4)
/* 229700 801DE510 3C10800F */  lui   $s0, %hi(D_800E9560) # $s0, 0x800f
/* 229704 801DE514 26109560 */  addiu $s0, %lo(D_800E9560) # addiu $s0, $s0, -0x6aa0
/* 229708 801DE518 8C6D0000 */  lw    $t5, ($v1)
/* 22970C 801DE51C 24120007 */  li    $s2, 7
/* 229710 801DE520 000D7080 */  sll   $t6, $t5, 2
/* 229714 801DE524 020E7821 */  addu  $t7, $s0, $t6
/* 229718 801DE528 ADE00000 */  sw    $zero, ($t7)
/* 22971C 801DE52C 8C650000 */  lw    $a1, ($v1)
/* 229720 801DE530 00052880 */  sll   $a1, $a1, 2
/* 229724 801DE534 0205C021 */  addu  $t8, $s0, $a1
/* 229728 801DE538 8F190000 */  lw    $t9, ($t8)
/* 22972C 801DE53C 2B210002 */  slti  $at, $t9, 2
/* 229730 801DE540 1020001F */  beqz  $at, .L801DE5C0_ovl17
/* 229734 801DE544 00000000 */   nop   
.L801DE548_ovl17:
/* 229738 801DE548 0C006291 */  jal   random_soft_s32_range
/* 22973C 801DE54C 2404000A */   li    $a0, 10
/* 229740 801DE550 00520019 */  multu $v0, $s2
/* 229744 801DE554 00002012 */  mflo  $a0
/* 229748 801DE558 24840007 */  addiu $a0, $a0, 7
/* 22974C 801DE55C 0C002DAF */  jal   finish_current_thread
/* 229750 801DE560 00000000 */   nop   
/* 229754 801DE564 02202025 */  move  $a0, $s1
/* 229758 801DE568 0C0291E5 */  jal   func_800A4794
/* 22975C 801DE56C 02602825 */   move  $a1, $s3
/* 229760 801DE570 2404003D */  li    $a0, 61
/* 229764 801DE574 00002825 */  move  $a1, $zero
/* 229768 801DE578 0C06B364 */  jal   func_801ACD90_ovl17
/* 22976C 801DE57C 02203025 */   move  $a2, $s1
/* 229770 801DE580 0C029D9E */  jal   play_sound
/* 229774 801DE584 2404025E */   li    $a0, 606
/* 229778 801DE588 8E830000 */  lw    $v1, ($s4)
/* 22977C 801DE58C 8C680000 */  lw    $t0, ($v1)
/* 229780 801DE590 00085080 */  sll   $t2, $t0, 2
/* 229784 801DE594 020A1021 */  addu  $v0, $s0, $t2
/* 229788 801DE598 8C4B0000 */  lw    $t3, ($v0)
/* 22978C 801DE59C 25690001 */  addiu $t1, $t3, 1
/* 229790 801DE5A0 AC490000 */  sw    $t1, ($v0)
/* 229794 801DE5A4 8C650000 */  lw    $a1, ($v1)
/* 229798 801DE5A8 00052880 */  sll   $a1, $a1, 2
/* 22979C 801DE5AC 02056021 */  addu  $t4, $s0, $a1
/* 2297A0 801DE5B0 8D8D0000 */  lw    $t5, ($t4)
/* 2297A4 801DE5B4 29A10002 */  slti  $at, $t5, 2
/* 2297A8 801DE5B8 1420FFE3 */  bnez  $at, .L801DE548_ovl17
/* 2297AC 801DE5BC 00000000 */   nop   
.L801DE5C0_ovl17:
/* 2297B0 801DE5C0 3C15800F */  lui   $s5, %hi(D_800EA1A0) # $s5, 0x800f
/* 2297B4 801DE5C4 26B5A1A0 */  addiu $s5, %lo(D_800EA1A0) # addiu $s5, $s5, -0x5e60
/* 2297B8 801DE5C8 02A57821 */  addu  $t7, $s5, $a1
/* 2297BC 801DE5CC 240E0009 */  li    $t6, 9
/* 2297C0 801DE5D0 ADEE0000 */  sw    $t6, ($t7)
/* 2297C4 801DE5D4 8C650000 */  lw    $a1, ($v1)
/* 2297C8 801DE5D8 24120007 */  li    $s2, 7
/* 2297CC 801DE5DC 00052880 */  sll   $a1, $a1, 2
/* 2297D0 801DE5E0 02A51021 */  addu  $v0, $s5, $a1
/* 2297D4 801DE5E4 8C580000 */  lw    $t8, ($v0)
/* 2297D8 801DE5E8 2B010006 */  slti  $at, $t8, 6
/* 2297DC 801DE5EC 14200032 */  bnez  $at, .L801DE6B8_ovl17
/* 2297E0 801DE5F0 0205C821 */   addu  $t9, $s0, $a1
.L801DE5F4_ovl17:
/* 2297E4 801DE5F4 AF200000 */  sw    $zero, ($t9)
/* 2297E8 801DE5F8 8C650000 */  lw    $a1, ($v1)
/* 2297EC 801DE5FC 00052880 */  sll   $a1, $a1, 2
/* 2297F0 801DE600 02054021 */  addu  $t0, $s0, $a1
/* 2297F4 801DE604 8D0A0000 */  lw    $t2, ($t0)
/* 2297F8 801DE608 29410003 */  slti  $at, $t2, 3
/* 2297FC 801DE60C 50200020 */  beql  $at, $zero, .L801DE690_ovl17
/* 229800 801DE610 02A51021 */   addu  $v0, $s5, $a1
.L801DE614_ovl17:
/* 229804 801DE614 0C006291 */  jal   random_soft_s32_range
/* 229808 801DE618 24040008 */   li    $a0, 8
/* 22980C 801DE61C 00520019 */  multu $v0, $s2
/* 229810 801DE620 00002012 */  mflo  $a0
/* 229814 801DE624 2484000E */  addiu $a0, $a0, 0xe
/* 229818 801DE628 0C002DAF */  jal   finish_current_thread
/* 22981C 801DE62C 00000000 */   nop   
/* 229820 801DE630 02202025 */  move  $a0, $s1
/* 229824 801DE634 0C0291E5 */  jal   func_800A4794
/* 229828 801DE638 02602825 */   move  $a1, $s3
/* 22982C 801DE63C 2404003D */  li    $a0, 61
/* 229830 801DE640 00002825 */  move  $a1, $zero
/* 229834 801DE644 0C06B364 */  jal   func_801ACD90_ovl17
/* 229838 801DE648 02203025 */   move  $a2, $s1
/* 22983C 801DE64C 0C029D9E */  jal   play_sound
/* 229840 801DE650 2404025E */   li    $a0, 606
/* 229844 801DE654 8E830000 */  lw    $v1, ($s4)
/* 229848 801DE658 8C6B0000 */  lw    $t3, ($v1)
/* 22984C 801DE65C 000B4880 */  sll   $t1, $t3, 2
/* 229850 801DE660 02091021 */  addu  $v0, $s0, $t1
/* 229854 801DE664 8C4C0000 */  lw    $t4, ($v0)
/* 229858 801DE668 258D0001 */  addiu $t5, $t4, 1
/* 22985C 801DE66C AC4D0000 */  sw    $t5, ($v0)
/* 229860 801DE670 8C650000 */  lw    $a1, ($v1)
/* 229864 801DE674 00052880 */  sll   $a1, $a1, 2
/* 229868 801DE678 02057021 */  addu  $t6, $s0, $a1
/* 22986C 801DE67C 8DCF0000 */  lw    $t7, ($t6)
/* 229870 801DE680 29E10003 */  slti  $at, $t7, 3
/* 229874 801DE684 1420FFE3 */  bnez  $at, .L801DE614_ovl17
/* 229878 801DE688 00000000 */   nop   
/* 22987C 801DE68C 02A51021 */  addu  $v0, $s5, $a1
.L801DE690_ovl17:
/* 229880 801DE690 8C580000 */  lw    $t8, ($v0)
/* 229884 801DE694 2719FFFF */  addiu $t9, $t8, -1
/* 229888 801DE698 AC590000 */  sw    $t9, ($v0)
/* 22988C 801DE69C 8C650000 */  lw    $a1, ($v1)
/* 229890 801DE6A0 00052880 */  sll   $a1, $a1, 2
/* 229894 801DE6A4 02A51021 */  addu  $v0, $s5, $a1
/* 229898 801DE6A8 8C480000 */  lw    $t0, ($v0)
/* 22989C 801DE6AC 29010006 */  slti  $at, $t0, 6
/* 2298A0 801DE6B0 5020FFD0 */  beql  $at, $zero, .L801DE5F4_ovl17
/* 2298A4 801DE6B4 0205C821 */   addu  $t9, $s0, $a1
.L801DE6B8_ovl17:
/* 2298A8 801DE6B8 AC400000 */  sw    $zero, ($v0)
/* 2298AC 801DE6BC 0C002DAF */  jal   finish_current_thread
/* 2298B0 801DE6C0 24040009 */   li    $a0, 9
/* 2298B4 801DE6C4 3C01800D */  lui   $at, %hi(D_800D709C) # $at, 0x800d
/* 2298B8 801DE6C8 AC20709C */  sw    $zero, %lo(D_800D709C)($at)
/* 2298BC 801DE6CC 0C002DAF */  jal   finish_current_thread
/* 2298C0 801DE6D0 24040001 */   li    $a0, 1
/* 2298C4 801DE6D4 3C040001 */  lui   $a0, (0x00010504 >> 16) # lui $a0, 1
/* 2298C8 801DE6D8 0C02A806 */  jal   func_800AA018
/* 2298CC 801DE6DC 34840504 */   ori   $a0, (0x00010504 & 0xFFFF) # ori $a0, $a0, 0x504
/* 2298D0 801DE6E0 8E830000 */  lw    $v1, ($s4)
/* 2298D4 801DE6E4 3C01800F */ lui $at, %hi(D_800EA360)
/* 2298D8 801DE6E8 2409003C */  li    $t1, 60
/* 2298DC 801DE6EC 8C6A0000 */  lw    $t2, ($v1)
/* 2298E0 801DE6F0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 2298E4 801DE6F4 240E0001 */  li    $t6, 1
/* 2298E8 801DE6F8 000A5880 */  sll   $t3, $t2, 2
/* 2298EC 801DE6FC 002B0821 */  addu  $at, $at, $t3
/* 2298F0 801DE700 AC20A360 */ sw $zero, %lo(D_800EA360)($at)
/* 2298F4 801DE704 8C6C0000 */  lw    $t4, ($v1)
/* 2298F8 801DE708 3C01800F */ lui $at, %hi(D_800EA520)
/* 2298FC 801DE70C 8FB4002C */  lw    $s4, 0x2c($sp)
/* 229900 801DE710 000C6880 */  sll   $t5, $t4, 2
/* 229904 801DE714 002D0821 */  addu  $at, $at, $t5
/* 229908 801DE718 AC29A520 */ sw $t1, %lo(D_800EA520)($at)
/* 22990C 801DE71C 8C6F0000 */  lw    $t7, ($v1)
/* 229910 801DE720 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 229914 801DE724 8FB0001C */  lw    $s0, 0x1c($sp)
/* 229918 801DE728 000FC080 */  sll   $t8, $t7, 2
/* 22991C 801DE72C 00380821 */  addu  $at, $at, $t8
/* 229920 801DE730 8FB10020 */  lw    $s1, 0x20($sp)
/* 229924 801DE734 8FB20024 */  lw    $s2, 0x24($sp)
/* 229928 801DE738 8FB30028 */  lw    $s3, 0x28($sp)
/* 22992C 801DE73C 8FB50030 */  lw    $s5, 0x30($sp)
/* 229930 801DE740 AC2EDC50 */ sw $t6, %lo(gEntityVtableIndexArray)($at)
/* 229934 801DE744 03E00008 */  jr    $ra
/* 229938 801DE748 27BD0068 */   addiu $sp, $sp, 0x68

.type func_801DE40C_ovl17, @function
.size func_801DE40C_ovl17, . - func_801DE40C_ovl17

glabel func_801DE74C_ovl17
/* 22993C 801DE74C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 229940 801DE750 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 229944 801DE754 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 229948 801DE758 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22994C 801DE75C AFA40018 */  sw    $a0, 0x18($sp)
/* 229950 801DE760 8DC30000 */  lw    $v1, ($t6)
/* 229954 801DE764 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 229958 801DE768 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 22995C 801DE76C 00031880 */  sll   $v1, $v1, 2
/* 229960 801DE770 01E37821 */  addu  $t7, $t7, $v1
/* 229964 801DE774 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 229968 801DE778 3C19800F */ lui $t9, %hi(D_800E93A0)
/* 22996C 801DE77C 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 229970 801DE780 8DE20064 */  lw    $v0, 0x64($t7)
/* 229974 801DE784 50400006 */  beql  $v0, $zero, .L801DE7A0_ovl17
/* 229978 801DE788 0323C821 */   addu  $t9, $t9, $v1
/* 22997C 801DE78C A0400054 */  sb    $zero, 0x54($v0)
/* 229980 801DE790 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 229984 801DE794 8F030000 */  lw    $v1, ($t8)
/* 229988 801DE798 00031880 */  sll   $v1, $v1, 2
/* 22998C 801DE79C 0323C821 */  addu  $t9, $t9, $v1
.L801DE7A0_ovl17:
/* 229990 801DE7A0 8F3993A0 */ lw $t9, %lo(D_800E93A0)($t9)
/* 229994 801DE7A4 1B200017 */  blez  $t9, .L801DE804_ovl17
/* 229998 801DE7A8 00000000 */   nop   
/* 22999C 801DE7AC C4247170 */  lwc1  $f4, %lo(D_800D7170)($at)
/* 2299A0 801DE7B0 3C01801E */  lui   $at, %hi(D_801E55EC) # $at, 0x801e
/* 2299A4 801DE7B4 C42655EC */  lwc1  $f6, %lo(D_801E55EC)($at)
/* 2299A8 801DE7B8 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 2299AC 801DE7BC 44818000 */  mtc1  $at, $f16
/* 2299B0 801DE7C0 46062202 */  mul.s $f8, $f4, $f6
/* 2299B4 801DE7C4 46004287 */  neg.s $f10, $f8
/* 2299B8 801DE7C8 46105302 */  mul.s $f12, $f10, $f16
/* 2299BC 801DE7CC 0C077DDA */  jal   func_801DF768_ovl17
/* 2299C0 801DE7D0 00000000 */   nop   
/* 2299C4 801DE7D4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 2299C8 801DE7D8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 2299CC 801DE7DC 3C0A800F */  lui   $t2, %hi(D_800E93A0) # $t2, 0x800f
/* 2299D0 801DE7E0 254A93A0 */  addiu $t2, %lo(D_800E93A0) # addiu $t2, $t2, -0x6c60
/* 2299D4 801DE7E4 8C480000 */  lw    $t0, ($v0)
/* 2299D8 801DE7E8 00084880 */  sll   $t1, $t0, 2
/* 2299DC 801DE7EC 012A2021 */  addu  $a0, $t1, $t2
/* 2299E0 801DE7F0 8C8B0000 */  lw    $t3, ($a0)
/* 2299E4 801DE7F4 256CFFFF */  addiu $t4, $t3, -1
/* 2299E8 801DE7F8 AC8C0000 */  sw    $t4, ($a0)
/* 2299EC 801DE7FC 8C430000 */  lw    $v1, ($v0)
/* 2299F0 801DE800 00031880 */  sll   $v1, $v1, 2
.L801DE804_ovl17:
/* 2299F4 801DE804 3C0D800F */  lui   $t5, %hi(D_800EA360) # $t5, 0x800f
/* 2299F8 801DE808 25ADA360 */  addiu $t5, %lo(D_800EA360) # addiu $t5, $t5, -0x5ca0
/* 2299FC 801DE80C 006D1021 */  addu  $v0, $v1, $t5
/* 229A00 801DE810 8C450000 */  lw    $a1, ($v0)
/* 229A04 801DE814 3C040001 */  lui   $a0, 1
/* 229A08 801DE818 18A00007 */  blez  $a1, .L801DE838_ovl17
/* 229A0C 801DE81C 24AEFFFF */   addiu $t6, $a1, -1
/* 229A10 801DE820 3C040001 */  lui   $a0, (0x00010504 >> 16) # lui $a0, 1
/* 229A14 801DE824 AC4E0000 */  sw    $t6, ($v0)
/* 229A18 801DE828 0C02A7A9 */  jal   func_800A9EA4
/* 229A1C 801DE82C 34840502 */   ori   $a0, (0x00010502 & 0xFFFF) # ori $a0, $a0, 0x502
/* 229A20 801DE830 10000004 */  b     .L801DE844_ovl17
/* 229A24 801DE834 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DE838_ovl17:
/* 229A28 801DE838 0C02A7A9 */  jal   func_800A9EA4
/* 229A2C 801DE83C 34840504 */   ori   $a0, (0x00010504 & 0xFFFF) # ori $a0, $a0, 0x504
/* 229A30 801DE840 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DE844_ovl17:
/* 229A34 801DE844 27BD0018 */  addiu $sp, $sp, 0x18
/* 229A38 801DE848 03E00008 */  jr    $ra
/* 229A3C 801DE84C 00000000 */   nop   

.type func_801DE74C_ovl17, @function
.size func_801DE74C_ovl17, . - func_801DE74C_ovl17

glabel func_801DE850_ovl17
/* 229A40 801DE850 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 229A44 801DE854 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 229A48 801DE858 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 229A4C 801DE85C AFBF001C */  sw    $ra, 0x1c($sp)
/* 229A50 801DE860 AFA40020 */  sw    $a0, 0x20($sp)
/* 229A54 801DE864 8DF80000 */  lw    $t8, ($t7)
/* 229A58 801DE868 3C0E801E */  lui   $t6, %hi(D_801DE9A8) # $t6, 0x801e
/* 229A5C 801DE86C 3C01800E */ lui $at, %hi(D_800DF150)
/* 229A60 801DE870 0018C880 */  sll   $t9, $t8, 2
/* 229A64 801DE874 00390821 */  addu  $at, $at, $t9
/* 229A68 801DE878 25CEE9A8 */  addiu $t6, %lo(D_801DE9A8) # addiu $t6, $t6, -0x1658
/* 229A6C 801DE87C AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 229A70 801DE880 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 229A74 801DE884 24080001 */  li    $t0, 1
/* 229A78 801DE888 3C040001 */  lui   $a0, (0x00010506 >> 16) # lui $a0, 1
/* 229A7C 801DE88C AC287098 */  sw    $t0, %lo(D_800D7098)($at)
/* 229A80 801DE890 0C02A806 */  jal   func_800AA018
/* 229A84 801DE894 34840506 */   ori   $a0, (0x00010506 & 0xFFFF) # ori $a0, $a0, 0x506
/* 229A88 801DE898 0C029D9E */  jal   play_sound
/* 229A8C 801DE89C 2404002A */   li    $a0, 42
/* 229A90 801DE8A0 44800000 */  mtc1  $zero, $f0
/* 229A94 801DE8A4 00002025 */  move  $a0, $zero
/* 229A98 801DE8A8 24050002 */  li    $a1, 2
/* 229A9C 801DE8AC 44060000 */  mfc1  $a2, $f0
/* 229AA0 801DE8B0 44070000 */  mfc1  $a3, $f0
/* 229AA4 801DE8B4 0C03F55C */  jal   func_800FD570
/* 229AA8 801DE8B8 E7A00010 */   swc1  $f0, 0x10($sp)
/* 229AAC 801DE8BC 0C06B9F8 */  jal   func_801AE7E0_ovl17
/* 229AB0 801DE8C0 24040011 */   li    $a0, 17
/* 229AB4 801DE8C4 24040003 */  li    $a0, 3
/* 229AB8 801DE8C8 0C02ED1A */  jal   func_800BB468
/* 229ABC 801DE8CC 00002825 */   move  $a1, $zero
/* 229AC0 801DE8D0 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 229AC4 801DE8D4 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 229AC8 801DE8D8 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 229ACC 801DE8DC 8D2A0000 */  lw    $t2, ($t1)
/* 229AD0 801DE8E0 000A5880 */  sll   $t3, $t2, 2
/* 229AD4 801DE8E4 002B0821 */  addu  $at, $at, $t3
/* 229AD8 801DE8E8 0C067C7B */  jal   func_8019F1EC_ovl17
/* 229ADC 801DE8EC AC20A1A0 */ sw $zero, %lo(D_800EA1A0)($at)
/* 229AE0 801DE8F0 8FAC0020 */  lw    $t4, 0x20($sp)
/* 229AE4 801DE8F4 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 229AE8 801DE8F8 44810000 */  mtc1  $at, $f0
/* 229AEC 801DE8FC 8D8D003C */  lw    $t5, 0x3c($t4)
/* 229AF0 801DE900 3C050001 */  lui   $a1, (0x00010505 >> 16) # lui $a1, 1
/* 229AF4 801DE904 3C070001 */  lui   $a3, (0x00010083 >> 16) # lui $a3, 1
/* 229AF8 801DE908 8DA40010 */  lw    $a0, 0x10($t5)
/* 229AFC 801DE90C 44060000 */  mfc1  $a2, $f0
/* 229B00 801DE910 34E70083 */  ori   $a3, (0x00010083 & 0xFFFF) # ori $a3, $a3, 0x83
/* 229B04 801DE914 34A50505 */  ori   $a1, (0x00010505 & 0xFFFF) # ori $a1, $a1, 0x505
/* 229B08 801DE918 0C02A982 */  jal   func_800AA608
/* 229B0C 801DE91C E7A00010 */   swc1  $f0, 0x10($sp)
/* 229B10 801DE920 3C040001 */  lui   $a0, (0x00010505 >> 16) # lui $a0, 1
/* 229B14 801DE924 34840505 */  ori   $a0, (0x00010505 & 0xFFFF) # ori $a0, $a0, 0x505
/* 229B18 801DE928 0C02A7E6 */  jal   func_800A9F98
/* 229B1C 801DE92C 3C054080 */   lui   $a1, 0x4080
/* 229B20 801DE930 0C002DAF */  jal   finish_current_thread
/* 229B24 801DE934 24040012 */   li    $a0, 18
/* 229B28 801DE938 0C029D9E */  jal   play_sound
/* 229B2C 801DE93C 2404025D */   li    $a0, 605
/* 229B30 801DE940 0C002DAF */  jal   finish_current_thread
/* 229B34 801DE944 2404002D */   li    $a0, 45
/* 229B38 801DE948 0C03DB22 */  jal   func_800F6C88
/* 229B3C 801DE94C 00000000 */   nop   
/* 229B40 801DE950 3C059999 */  lui   $a1, (0x99999999 >> 16) # lui $a1, 0x9999
/* 229B44 801DE954 34A59999 */  ori   $a1, (0x99999999 & 0xFFFF) # ori $a1, $a1, 0x9999
/* 229B48 801DE958 0C029D6C */  jal   play_music
/* 229B4C 801DE95C 00002025 */   move  $a0, $zero
/* 229B50 801DE960 0C002DAF */  jal   finish_current_thread
/* 229B54 801DE964 240400FA */   li    $a0, 250
/* 229B58 801DE968 0C008322 */  jal   func_80020C88_ovl17
/* 229B5C 801DE96C 00000000 */   nop   
/* 229B60 801DE970 0C002DAF */  jal   finish_current_thread
/* 229B64 801DE974 2404FFEB */   li    $a0, -21
/* 229B68 801DE978 44806000 */  mtc1  $zero, $f12
/* 229B6C 801DE97C 0C02BB30 */  jal   func_800AECC0
/* 229B70 801DE980 00000000 */   nop   
/* 229B74 801DE984 44806000 */  mtc1  $zero, $f12
/* 229B78 801DE988 0C02BB48 */  jal   func_800AED20
/* 229B7C 801DE98C 00000000 */   nop   
/* 229B80 801DE990 0C02BE85 */  jal   func_800AFA14
/* 229B84 801DE994 00000000 */   nop   
/* 229B88 801DE998 8FBF001C */  lw    $ra, 0x1c($sp)
/* 229B8C 801DE99C 27BD0020 */  addiu $sp, $sp, 0x20
/* 229B90 801DE9A0 03E00008 */  jr    $ra
/* 229B94 801DE9A4 00000000 */   nop   

.type func_801DE850_ovl17, @function
.size func_801DE850_ovl17, . - func_801DE850_ovl17

glabel func_801DE9A8_ovl17
/* 229B98 801DE9A8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 229B9C 801DE9AC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 229BA0 801DE9B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 229BA4 801DE9B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 229BA8 801DE9B8 AFA40018 */  sw    $a0, 0x18($sp)
/* 229BAC 801DE9BC 8DCF0000 */  lw    $t7, ($t6)
/* 229BB0 801DE9C0 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 229BB4 801DE9C4 000FC080 */  sll   $t8, $t7, 2
/* 229BB8 801DE9C8 0338C821 */  addu  $t9, $t9, $t8
/* 229BBC 801DE9CC 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 229BC0 801DE9D0 8F220064 */  lw    $v0, 0x64($t9)
/* 229BC4 801DE9D4 10400002 */  beqz  $v0, .L801DE9E0_ovl17
/* 229BC8 801DE9D8 00000000 */   nop   
/* 229BCC 801DE9DC A0400054 */  sb    $zero, 0x54($v0)
.L801DE9E0_ovl17:
/* 229BD0 801DE9E0 0C077EAF */  jal   func_801DFABC_ovl17
/* 229BD4 801DE9E4 00000000 */   nop   
/* 229BD8 801DE9E8 0C0781A7 */  jal   func_801E069C_ovl17
/* 229BDC 801DE9EC 00000000 */   nop   
/* 229BE0 801DE9F0 0C0781C1 */  jal   func_801E0704_ovl17
/* 229BE4 801DE9F4 00000000 */   nop   
/* 229BE8 801DE9F8 3C01801E */  lui   $at, %hi(D_801E55F0) # $at, 0x801e
/* 229BEC 801DE9FC C42255F0 */  lwc1  $f2, %lo(D_801E55F0)($at)
/* 229BF0 801DEA00 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 229BF4 801DEA04 C4207170 */  lwc1  $f0, %lo(D_800D7170)($at)
/* 229BF8 801DEA08 3C01801E */  lui   $at, %hi(D_801E55F4) # $at, 0x801e
/* 229BFC 801DEA0C C42455F4 */  lwc1  $f4, %lo(D_801E55F4)($at)
/* 229C00 801DEA10 3C01801E */  lui   $at, %hi(D_801E5700) # $at, 0x801e
/* 229C04 801DEA14 46040182 */  mul.s $f6, $f0, $f4
/* 229C08 801DEA18 00000000 */  nop   
/* 229C0C 801DEA1C 46023202 */  mul.s $f8, $f6, $f2
/* 229C10 801DEA20 E4285700 */  swc1  $f8, %lo(D_801E5700)($at)
/* 229C14 801DEA24 3C01801E */  lui   $at, %hi(D_801E55F8) # $at, 0x801e
/* 229C18 801DEA28 C42A55F8 */  lwc1  $f10, %lo(D_801E55F8)($at)
/* 229C1C 801DEA2C 3C01801E */  lui   $at, %hi(D_801E5704) # $at, 0x801e
/* 229C20 801DEA30 460A0402 */  mul.s $f16, $f0, $f10
/* 229C24 801DEA34 00000000 */  nop   
/* 229C28 801DEA38 46028482 */  mul.s $f18, $f16, $f2
/* 229C2C 801DEA3C 0C077A97 */  jal   func_801DEA5C_ovl17
/* 229C30 801DEA40 E4325704 */   swc1  $f18, %lo(D_801E5704)($at)
/* 229C34 801DEA44 0C0781CF */  jal   func_801E073C_ovl17
/* 229C38 801DEA48 00000000 */   nop   
/* 229C3C 801DEA4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 229C40 801DEA50 27BD0018 */  addiu $sp, $sp, 0x18
/* 229C44 801DEA54 03E00008 */  jr    $ra
/* 229C48 801DEA58 00000000 */   nop   

.type func_801DE9A8_ovl17, @function
.size func_801DE9A8_ovl17, . - func_801DE9A8_ovl17

glabel func_801DEA5C_ovl17
/* 229C4C 801DEA5C 27BDFEC8 */  addiu $sp, $sp, -0x138
/* 229C50 801DEA60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 229C54 801DEA64 0C00C304 */  jal   guMtxIdentF
/* 229C58 801DEA68 27A400E0 */   addiu $a0, $sp, 0xe0
/* 229C5C 801DEA6C 44808000 */  mtc1  $zero, $f16
/* 229C60 801DEA70 3C064049 */  lui   $a2, (0x40490FDB >> 16) # lui $a2, 0x4049
/* 229C64 801DEA74 34C60FDB */  ori   $a2, (0x40490FDB & 0xFFFF) # ori $a2, $a2, 0xfdb
/* 229C68 801DEA78 44058000 */  mfc1  $a1, $f16
/* 229C6C 801DEA7C 44078000 */  mfc1  $a3, $f16
/* 229C70 801DEA80 0C006EEB */  jal   HS64_MkRotationMtxF
/* 229C74 801DEA84 27A400A0 */   addiu $a0, $sp, 0xa0
/* 229C78 801DEA88 27A400E0 */  addiu $a0, $sp, 0xe0
/* 229C7C 801DEA8C 00803025 */  move  $a2, $a0
/* 229C80 801DEA90 0C00D034 */  jal   guMtxCatF
/* 229C84 801DEA94 27A500A0 */   addiu $a1, $sp, 0xa0
/* 229C88 801DEA98 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 229C8C 801DEA9C 3C06800F */  lui   $a2, %hi(D_800EA8A0) # $a2, 0x800f
/* 229C90 801DEAA0 3C07800F */  lui   $a3, %hi(D_800EAA60) # $a3, 0x800f
/* 229C94 801DEAA4 8CE7AA60 */  lw    $a3, %lo(D_800EAA60)($a3)
/* 229C98 801DEAA8 8CC6A8A0 */  lw    $a2, %lo(D_800EA8A0)($a2)
/* 229C9C 801DEAAC 8CA5A6E0 */  lw    $a1, %lo(D_800EA6E0)($a1)
/* 229CA0 801DEAB0 0C006EEB */  jal   HS64_MkRotationMtxF
/* 229CA4 801DEAB4 27A400A0 */   addiu $a0, $sp, 0xa0
/* 229CA8 801DEAB8 27A400E0 */  addiu $a0, $sp, 0xe0
/* 229CAC 801DEABC 27A500A0 */  addiu $a1, $sp, 0xa0
/* 229CB0 801DEAC0 0C00D034 */  jal   guMtxCatF
/* 229CB4 801DEAC4 27A60060 */   addiu $a2, $sp, 0x60
/* 229CB8 801DEAC8 0C00C304 */  jal   guMtxIdentF
/* 229CBC 801DEACC 27A400E0 */   addiu $a0, $sp, 0xe0
/* 229CC0 801DEAD0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 229CC4 801DEAD4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 229CC8 801DEAD8 3C05800F */ lui $a1, %hi(D_800EA6E0)
/* 229CCC 801DEADC 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 229CD0 801DEAE0 8DC20000 */  lw    $v0, ($t6)
/* 229CD4 801DEAE4 3C07800F */ lui $a3, %hi(D_800EAA60)
/* 229CD8 801DEAE8 27A400A0 */  addiu $a0, $sp, 0xa0
/* 229CDC 801DEAEC 00021080 */  sll   $v0, $v0, 2
/* 229CE0 801DEAF0 00A22821 */  addu  $a1, $a1, $v0
/* 229CE4 801DEAF4 00C23021 */  addu  $a2, $a2, $v0
/* 229CE8 801DEAF8 00E23821 */  addu  $a3, $a3, $v0
/* 229CEC 801DEAFC 8CE7AA60 */ lw $a3, %lo(D_800EAA60)($a3)
/* 229CF0 801DEB00 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 229CF4 801DEB04 0C006EEB */  jal   HS64_MkRotationMtxF
/* 229CF8 801DEB08 8CA5A6E0 */ lw $a1, %lo(D_800EA6E0)($a1)
/* 229CFC 801DEB0C 27A600E0 */  addiu $a2, $sp, 0xe0
/* 229D00 801DEB10 00C02025 */  move  $a0, $a2
/* 229D04 801DEB14 0C00D034 */  jal   guMtxCatF
/* 229D08 801DEB18 27A500A0 */   addiu $a1, $sp, 0xa0
/* 229D0C 801DEB1C C7A40100 */  lwc1  $f4, 0x100($sp)
/* 229D10 801DEB20 C7A60104 */  lwc1  $f6, 0x104($sp)
/* 229D14 801DEB24 C7A80108 */  lwc1  $f8, 0x108($sp)
/* 229D18 801DEB28 E7A40054 */  swc1  $f4, 0x54($sp)
/* 229D1C 801DEB2C C7AA0080 */  lwc1  $f10, 0x80($sp)
/* 229D20 801DEB30 C7A40084 */  lwc1  $f4, 0x84($sp)
/* 229D24 801DEB34 44808000 */  mtc1  $zero, $f16
/* 229D28 801DEB38 E7A60058 */  swc1  $f6, 0x58($sp)
/* 229D2C 801DEB3C E7A8005C */  swc1  $f8, 0x5c($sp)
/* 229D30 801DEB40 E7AA003C */  swc1  $f10, 0x3c($sp)
/* 229D34 801DEB44 E7A40040 */  swc1  $f4, 0x40($sp)
/* 229D38 801DEB48 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 229D3C 801DEB4C C7A800F0 */  lwc1  $f8, 0xf0($sp)
/* 229D40 801DEB50 C7AA00F4 */  lwc1  $f10, 0xf4($sp)
/* 229D44 801DEB54 C7A400F8 */  lwc1  $f4, 0xf8($sp)
/* 229D48 801DEB58 27A40054 */  addiu $a0, $sp, 0x54
/* 229D4C 801DEB5C 27A5003C */  addiu $a1, $sp, 0x3c
/* 229D50 801DEB60 E7B00038 */  swc1  $f16, 0x38($sp)
/* 229D54 801DEB64 E7B00034 */  swc1  $f16, 0x34($sp)
/* 229D58 801DEB68 E7B00030 */  swc1  $f16, 0x30($sp)
/* 229D5C 801DEB6C E7A60044 */  swc1  $f6, 0x44($sp)
/* 229D60 801DEB70 E7A80048 */  swc1  $f8, 0x48($sp)
/* 229D64 801DEB74 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 229D68 801DEB78 0C0063EF */  jal   lbvector_Angle
/* 229D6C 801DEB7C E7A40050 */   swc1  $f4, 0x50($sp)
/* 229D70 801DEB80 3C01801E */  lui   $at, %hi(D_801E55FC) # $at, 0x801e
/* 229D74 801DEB84 C42655FC */  lwc1  $f6, %lo(D_801E55FC)($at)
/* 229D78 801DEB88 44808000 */  mtc1  $zero, $f16
/* 229D7C 801DEB8C E7A00134 */  swc1  $f0, 0x134($sp)
/* 229D80 801DEB90 4600303C */  c.lt.s $f6, $f0
/* 229D84 801DEB94 46008386 */  mov.s $f14, $f16
/* 229D88 801DEB98 45000030 */  bc1f  .L801DEC5C_ovl17
/* 229D8C 801DEB9C 27A40054 */   addiu $a0, $sp, 0x54
/* 229D90 801DEBA0 27A5003C */  addiu $a1, $sp, 0x3c
/* 229D94 801DEBA4 27A60030 */  addiu $a2, $sp, 0x30
/* 229D98 801DEBA8 0C0065D0 */  jal   vec3_normalized_cross_product
/* 229D9C 801DEBAC E7AE0130 */   swc1  $f14, 0x130($sp)
/* 229DA0 801DEBB0 44809000 */  mtc1  $zero, $f18
/* 229DA4 801DEBB4 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 229DA8 801DEBB8 44808000 */  mtc1  $zero, $f16
/* 229DAC 801DEBBC C7AE0130 */  lwc1  $f14, 0x130($sp)
/* 229DB0 801DEBC0 46124032 */  c.eq.s $f8, $f18
/* 229DB4 801DEBC4 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 229DB8 801DEBC8 27A40048 */  addiu $a0, $sp, 0x48
/* 229DBC 801DEBCC 45000009 */  bc1f  .L801DEBF4_ovl17
/* 229DC0 801DEBD0 00000000 */   nop   
/* 229DC4 801DEBD4 46125032 */  c.eq.s $f10, $f18
/* 229DC8 801DEBD8 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 229DCC 801DEBDC 45000005 */  bc1f  .L801DEBF4_ovl17
/* 229DD0 801DEBE0 00000000 */   nop   
/* 229DD4 801DEBE4 46122032 */  c.eq.s $f4, $f18
/* 229DD8 801DEBE8 00000000 */  nop   
/* 229DDC 801DEBEC 45010010 */  bc1t  .L801DEC30_ovl17
/* 229DE0 801DEBF0 00000000 */   nop   
.L801DEBF4_ovl17:
/* 229DE4 801DEBF4 0C0063EF */  jal   lbvector_Angle
/* 229DE8 801DEBF8 27A50030 */   addiu $a1, $sp, 0x30
/* 229DEC 801DEBFC 3C01801E */  lui   $at, %hi(D_801E5600) # $at, 0x801e
/* 229DF0 801DEC00 C4265600 */  lwc1  $f6, %lo(D_801E5600)($at)
/* 229DF4 801DEC04 44808000 */  mtc1  $zero, $f16
/* 229DF8 801DEC08 44809000 */  mtc1  $zero, $f18
/* 229DFC 801DEC0C 4606003C */  c.lt.s $f0, $f6
/* 229E00 801DEC10 3C01801E */ lui $at, %hi(D_801E5700)
/* 229E04 801DEC14 45000004 */  bc1f  .L801DEC28_ovl17
/* 229E08 801DEC18 00000000 */   nop   
/* 229E0C 801DEC1C 3C01801E */  lui   $at, %hi(D_801E5700) # $at, 0x801e
/* 229E10 801DEC20 10000003 */  b     .L801DEC30_ovl17
/* 229E14 801DEC24 C42E5700 */   lwc1  $f14, %lo(D_801E5700)($at)
.L801DEC28_ovl17:
/* 229E18 801DEC28 C42E5700 */  lwc1  $f14, %lo(D_801E5700)($at)
/* 229E1C 801DEC2C 46007387 */  neg.s $f14, $f14
.L801DEC30_ovl17:
/* 229E20 801DEC30 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 229E24 801DEC34 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 229E28 801DEC38 3C08800F */  lui   $t0, %hi(D_800EAC20) # $t0, 0x800f
/* 229E2C 801DEC3C 2508AC20 */  addiu $t0, %lo(D_800EAC20) # addiu $t0, $t0, -0x53e0
/* 229E30 801DEC40 8C980000 */  lw    $t8, ($a0)
/* 229E34 801DEC44 3C01801E */  lui   $at, %hi(D_801E5704) # $at, 0x801e
/* 229E38 801DEC48 C4225704 */  lwc1  $f2, %lo(D_801E5704)($at)
/* 229E3C 801DEC4C 0018C880 */  sll   $t9, $t8, 2
/* 229E40 801DEC50 03281821 */  addu  $v1, $t9, $t0
/* 229E44 801DEC54 1000001E */  b     .L801DECD0_ovl17
/* 229E48 801DEC58 C46C0000 */   lwc1  $f12, ($v1)
.L801DEC5C_ovl17:
/* 229E4C 801DEC5C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 229E50 801DEC60 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 229E54 801DEC64 3C0B800F */  lui   $t3, %hi(D_800EAC20) # $t3, 0x800f
/* 229E58 801DEC68 256BAC20 */  addiu $t3, %lo(D_800EAC20) # addiu $t3, $t3, -0x53e0
/* 229E5C 801DEC6C 8C890000 */  lw    $t1, ($a0)
/* 229E60 801DEC70 44809000 */  mtc1  $zero, $f18
/* 229E64 801DEC74 3C01801E */  lui   $at, %hi(D_801E5704) # $at, 0x801e
/* 229E68 801DEC78 00095080 */  sll   $t2, $t1, 2
/* 229E6C 801DEC7C 014B1821 */  addu  $v1, $t2, $t3
/* 229E70 801DEC80 C46C0000 */  lwc1  $f12, ($v1)
/* 229E74 801DEC84 4612603C */  c.lt.s $f12, $f18
/* 229E78 801DEC88 00000000 */  nop   
/* 229E7C 801DEC8C 45020004 */  bc1fl .L801DECA0_ovl17
/* 229E80 801DEC90 46006006 */   mov.s $f0, $f12
/* 229E84 801DEC94 10000002 */  b     .L801DECA0_ovl17
/* 229E88 801DEC98 46006007 */   neg.s $f0, $f12
/* 229E8C 801DEC9C 46006006 */  mov.s $f0, $f12
.L801DECA0_ovl17:
/* 229E90 801DECA0 C4225704 */  lwc1  $f2, %lo(D_801E5704)($at)
/* 229E94 801DECA4 4602003C */  c.lt.s $f0, $f2
/* 229E98 801DECA8 00000000 */  nop   
/* 229E9C 801DECAC 45020009 */  bc1fl .L801DECD4_ovl17
/* 229EA0 801DECB0 460C803C */   c.lt.s $f16, $f12
/* 229EA4 801DECB4 E4700000 */  swc1  $f16, ($v1)
/* 229EA8 801DECB8 8C8C0000 */  lw    $t4, ($a0)
/* 229EAC 801DECBC 3C0E800F */  lui   $t6, %hi(D_800EAC20) # $t6, 0x800f
/* 229EB0 801DECC0 25CEAC20 */  addiu $t6, %lo(D_800EAC20) # addiu $t6, $t6, -0x53e0
/* 229EB4 801DECC4 000C6880 */  sll   $t5, $t4, 2
/* 229EB8 801DECC8 01AE1821 */  addu  $v1, $t5, $t6
/* 229EBC 801DECCC C46C0000 */  lwc1  $f12, ($v1)
.L801DECD0_ovl17:
/* 229EC0 801DECD0 460C803C */  c.lt.s $f16, $f12
.L801DECD4_ovl17:
/* 229EC4 801DECD4 00000000 */  nop   
/* 229EC8 801DECD8 45020006 */  bc1fl .L801DECF4_ovl17
/* 229ECC 801DECDC 4610603C */   c.lt.s $f12, $f16
/* 229ED0 801DECE0 4610703C */  c.lt.s $f14, $f16
/* 229ED4 801DECE4 00000000 */  nop   
/* 229ED8 801DECE8 45010008 */  bc1t  .L801DED0C_ovl17
/* 229EDC 801DECEC 00000000 */   nop   
/* 229EE0 801DECF0 4610603C */  c.lt.s $f12, $f16
.L801DECF4_ovl17:
/* 229EE4 801DECF4 00000000 */  nop   
/* 229EE8 801DECF8 45020009 */  bc1fl .L801DED20_ovl17
/* 229EEC 801DECFC 460E6280 */   add.s $f10, $f12, $f14
/* 229EF0 801DED00 460E803C */  c.lt.s $f16, $f14
/* 229EF4 801DED04 00000000 */  nop   
/* 229EF8 801DED08 45000004 */  bc1f  .L801DED1C_ovl17
.L801DED0C_ovl17:
/* 229EFC 801DED0C 3C01801E */   lui   $at, %hi(D_801E5604) # $at, 0x801e
/* 229F00 801DED10 C4285604 */  lwc1  $f8, %lo(D_801E5604)($at)
/* 229F04 801DED14 46087382 */  mul.s $f14, $f14, $f8
/* 229F08 801DED18 00000000 */  nop   
.L801DED1C_ovl17:
/* 229F0C 801DED1C 460E6280 */  add.s $f10, $f12, $f14
.L801DED20_ovl17:
/* 229F10 801DED20 3C19800F */  lui   $t9, %hi(D_800EAC20) # $t9, 0x800f
/* 229F14 801DED24 2739AC20 */  addiu $t9, %lo(D_800EAC20) # addiu $t9, $t9, -0x53e0
/* 229F18 801DED28 E46A0000 */  swc1  $f10, ($v1)
/* 229F1C 801DED2C 8C8F0000 */  lw    $t7, ($a0)
/* 229F20 801DED30 C7A40134 */  lwc1  $f4, 0x134($sp)
/* 229F24 801DED34 000FC080 */  sll   $t8, $t7, 2
/* 229F28 801DED38 03191821 */  addu  $v1, $t8, $t9
/* 229F2C 801DED3C C46C0000 */  lwc1  $f12, ($v1)
/* 229F30 801DED40 4612603C */  c.lt.s $f12, $f18
/* 229F34 801DED44 00000000 */  nop   
/* 229F38 801DED48 45020004 */  bc1fl .L801DED5C_ovl17
/* 229F3C 801DED4C 46006006 */   mov.s $f0, $f12
/* 229F40 801DED50 10000002 */  b     .L801DED5C_ovl17
/* 229F44 801DED54 46006007 */   neg.s $f0, $f12
/* 229F48 801DED58 46006006 */  mov.s $f0, $f12
.L801DED5C_ovl17:
/* 229F4C 801DED5C 46002181 */  sub.s $f6, $f4, $f0
/* 229F50 801DED60 4606103C */  c.lt.s $f2, $f6
/* 229F54 801DED64 00000000 */  nop   
/* 229F58 801DED68 45000003 */  bc1f  .L801DED78_ovl17
/* 229F5C 801DED6C 00000000 */   nop   
/* 229F60 801DED70 10000015 */  b     .L801DEDC8_ovl17
/* 229F64 801DED74 46001006 */   mov.s $f0, $f2
.L801DED78_ovl17:
/* 229F68 801DED78 3C02800D */  lui   $v0, %hi(gKirbyController) # $v0, 0x800d
/* 229F6C 801DED7C 94426FE8 */  lhu   $v0, %lo(gKirbyController)($v0)
/* 229F70 801DED80 3C01800D */ lui $at, %hi(D_800D7170)
/* 229F74 801DED84 30480C00 */  andi  $t0, $v0, 0xc00
/* 229F78 801DED88 11000009 */  beqz  $t0, .L801DEDB0_ovl17
/* 229F7C 801DED8C 30490300 */   andi  $t1, $v0, 0x300
/* 229F80 801DED90 11200007 */  beqz  $t1, .L801DEDB0_ovl17
/* 229F84 801DED94 00000000 */   nop   
/* 229F88 801DED98 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 229F8C 801DED9C C4287170 */  lwc1  $f8, %lo(D_800D7170)($at)
/* 229F90 801DEDA0 3C01801E */  lui   $at, %hi(D_801E5608) # $at, 0x801e
/* 229F94 801DEDA4 C42A5608 */  lwc1  $f10, %lo(D_801E5608)($at)
/* 229F98 801DEDA8 10000002 */  b     .L801DEDB4_ovl17
/* 229F9C 801DEDAC 460A4003 */   div.s $f0, $f8, $f10
.L801DEDB0_ovl17:
/* 229FA0 801DEDB0 C4207170 */  lwc1  $f0, %lo(D_800D7170)($at)
.L801DEDB4_ovl17:
/* 229FA4 801DEDB4 4600103C */  c.lt.s $f2, $f0
/* 229FA8 801DEDB8 00000000 */  nop   
/* 229FAC 801DEDBC 45020003 */  bc1fl .L801DEDCC_ovl17
/* 229FB0 801DEDC0 460C003C */   c.lt.s $f0, $f12
/* 229FB4 801DEDC4 46001006 */  mov.s $f0, $f2
.L801DEDC8_ovl17:
/* 229FB8 801DEDC8 460C003C */  c.lt.s $f0, $f12
.L801DEDCC_ovl17:
/* 229FBC 801DEDCC 3C01801E */  lui   $at, %hi(D_801E560C) # $at, 0x801e
/* 229FC0 801DEDD0 4502000A */  bc1fl .L801DEDFC_ovl17
/* 229FC4 801DEDD4 46000087 */   neg.s $f2, $f0
/* 229FC8 801DEDD8 E4600000 */  swc1  $f0, ($v1)
/* 229FCC 801DEDDC 8C8A0000 */  lw    $t2, ($a0)
/* 229FD0 801DEDE0 3C0C800F */  lui   $t4, %hi(D_800EAC20) # $t4, 0x800f
/* 229FD4 801DEDE4 258CAC20 */  addiu $t4, %lo(D_800EAC20) # addiu $t4, $t4, -0x53e0
/* 229FD8 801DEDE8 000A5880 */  sll   $t3, $t2, 2
/* 229FDC 801DEDEC 016C1821 */  addu  $v1, $t3, $t4
/* 229FE0 801DEDF0 1000000D */  b     .L801DEE28_ovl17
/* 229FE4 801DEDF4 C46C0000 */   lwc1  $f12, ($v1)
/* 229FE8 801DEDF8 46000087 */  neg.s $f2, $f0
.L801DEDFC_ovl17:
/* 229FEC 801DEDFC 4602603C */  c.lt.s $f12, $f2
/* 229FF0 801DEE00 00000000 */  nop   
/* 229FF4 801DEE04 45000008 */  bc1f  .L801DEE28_ovl17
/* 229FF8 801DEE08 00000000 */   nop   
/* 229FFC 801DEE0C E4620000 */  swc1  $f2, ($v1)
/* 22A000 801DEE10 8C8D0000 */  lw    $t5, ($a0)
/* 22A004 801DEE14 3C0F800F */  lui   $t7, %hi(D_800EAC20) # $t7, 0x800f
/* 22A008 801DEE18 25EFAC20 */  addiu $t7, %lo(D_800EAC20) # addiu $t7, $t7, -0x53e0
/* 22A00C 801DEE1C 000D7080 */  sll   $t6, $t5, 2
/* 22A010 801DEE20 01CF1821 */  addu  $v1, $t6, $t7
/* 22A014 801DEE24 C46C0000 */  lwc1  $f12, ($v1)
.L801DEE28_ovl17:
/* 22A018 801DEE28 C424560C */  lwc1  $f4, %lo(D_801E560C)($at)
/* 22A01C 801DEE2C 460C203C */  c.lt.s $f4, $f12
/* 22A020 801DEE30 00000000 */  nop   
/* 22A024 801DEE34 45010006 */  bc1t  .L801DEE50_ovl17
/* 22A028 801DEE38 3C01801E */   lui   $at, %hi(D_801E5610) # $at, 0x801e
/* 22A02C 801DEE3C C4265610 */  lwc1  $f6, %lo(D_801E5610)($at)
/* 22A030 801DEE40 4606603C */  c.lt.s $f12, $f6
/* 22A034 801DEE44 00000000 */  nop   
/* 22A038 801DEE48 4502000F */  bc1fl .L801DEE88_ovl17
/* 22A03C 801DEE4C 46109032 */   c.eq.s $f18, $f16
.L801DEE50_ovl17:
/* 22A040 801DEE50 44066000 */  mfc1  $a2, $f12
/* 22A044 801DEE54 27A40054 */  addiu $a0, $sp, 0x54
/* 22A048 801DEE58 27A50048 */  addiu $a1, $sp, 0x48
/* 22A04C 801DEE5C 0C00647E */  jal   func_800191F8_ovl17
/* 22A050 801DEE60 E7AE0130 */   swc1  $f14, 0x130($sp)
/* 22A054 801DEE64 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 22A058 801DEE68 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* 22A05C 801DEE6C C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 22A060 801DEE70 C7AE0130 */  lwc1  $f14, 0x130($sp)
/* 22A064 801DEE74 E7A80100 */  swc1  $f8, 0x100($sp)
/* 22A068 801DEE78 E7AA0104 */  swc1  $f10, 0x104($sp)
/* 22A06C 801DEE7C 10000006 */  b     .L801DEE98_ovl17
/* 22A070 801DEE80 E7A40108 */   swc1  $f4, 0x108($sp)
/* 22A074 801DEE84 46109032 */  c.eq.s $f18, $f16
.L801DEE88_ovl17:
/* 22A078 801DEE88 46008386 */  mov.s $f14, $f16
/* 22A07C 801DEE8C 45030003 */  bc1tl .L801DEE9C_ovl17
/* 22A080 801DEE90 C7A600F0 */   lwc1  $f6, 0xf0($sp)
/* 22A084 801DEE94 E4700000 */  swc1  $f16, ($v1)
.L801DEE98_ovl17:
/* 22A088 801DEE98 C7A600F0 */  lwc1  $f6, 0xf0($sp)
.L801DEE9C_ovl17:
/* 22A08C 801DEE9C C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* 22A090 801DEEA0 C7AA00F8 */  lwc1  $f10, 0xf8($sp)
/* 22A094 801DEEA4 E7A60054 */  swc1  $f6, 0x54($sp)
/* 22A098 801DEEA8 E7A80058 */  swc1  $f8, 0x58($sp)
/* 22A09C 801DEEAC C7A40100 */  lwc1  $f4, 0x100($sp)
/* 22A0A0 801DEEB0 C7A60104 */  lwc1  $f6, 0x104($sp)
/* 22A0A4 801DEEB4 C7A80108 */  lwc1  $f8, 0x108($sp)
/* 22A0A8 801DEEB8 27A40054 */  addiu $a0, $sp, 0x54
/* 22A0AC 801DEEBC 27A5003C */  addiu $a1, $sp, 0x3c
/* 22A0B0 801DEEC0 27A60030 */  addiu $a2, $sp, 0x30
/* 22A0B4 801DEEC4 E7AE0130 */  swc1  $f14, 0x130($sp)
/* 22A0B8 801DEEC8 E7AA005C */  swc1  $f10, 0x5c($sp)
/* 22A0BC 801DEECC E7A4003C */  swc1  $f4, 0x3c($sp)
/* 22A0C0 801DEED0 E7A60040 */  swc1  $f6, 0x40($sp)
/* 22A0C4 801DEED4 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22A0C8 801DEED8 E7A80044 */   swc1  $f8, 0x44($sp)
/* 22A0CC 801DEEDC C7AA0100 */  lwc1  $f10, 0x100($sp)
/* 22A0D0 801DEEE0 C7A40104 */  lwc1  $f4, 0x104($sp)
/* 22A0D4 801DEEE4 44808000 */  mtc1  $zero, $f16
/* 22A0D8 801DEEE8 C7A00030 */  lwc1  $f0, 0x30($sp)
/* 22A0DC 801DEEEC C7AC0034 */  lwc1  $f12, 0x34($sp)
/* 22A0E0 801DEEF0 C7A20038 */  lwc1  $f2, 0x38($sp)
/* 22A0E4 801DEEF4 E7AA0054 */  swc1  $f10, 0x54($sp)
/* 22A0E8 801DEEF8 E7A40058 */  swc1  $f4, 0x58($sp)
/* 22A0EC 801DEEFC C7A60108 */  lwc1  $f6, 0x108($sp)
/* 22A0F0 801DEF00 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 22A0F4 801DEF04 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 22A0F8 801DEF08 C7A40088 */  lwc1  $f4, 0x88($sp)
/* 22A0FC 801DEF0C 27A40054 */  addiu $a0, $sp, 0x54
/* 22A100 801DEF10 27A5003C */  addiu $a1, $sp, 0x3c
/* 22A104 801DEF14 E7B00038 */  swc1  $f16, 0x38($sp)
/* 22A108 801DEF18 E7B00034 */  swc1  $f16, 0x34($sp)
/* 22A10C 801DEF1C E7B00030 */  swc1  $f16, 0x30($sp)
/* 22A110 801DEF20 E7A00048 */  swc1  $f0, 0x48($sp)
/* 22A114 801DEF24 E7A000E0 */  swc1  $f0, 0xe0($sp)
/* 22A118 801DEF28 E7AC004C */  swc1  $f12, 0x4c($sp)
/* 22A11C 801DEF2C E7AC00E4 */  swc1  $f12, 0xe4($sp)
/* 22A120 801DEF30 E7A20050 */  swc1  $f2, 0x50($sp)
/* 22A124 801DEF34 E7A200E8 */  swc1  $f2, 0xe8($sp)
/* 22A128 801DEF38 E7A6005C */  swc1  $f6, 0x5c($sp)
/* 22A12C 801DEF3C E7A8003C */  swc1  $f8, 0x3c($sp)
/* 22A130 801DEF40 E7AA0040 */  swc1  $f10, 0x40($sp)
/* 22A134 801DEF44 0C0063EF */  jal   lbvector_Angle
/* 22A138 801DEF48 E7A40044 */   swc1  $f4, 0x44($sp)
/* 22A13C 801DEF4C 3C01801E */  lui   $at, %hi(D_801E5614) # $at, 0x801e
/* 22A140 801DEF50 C4265614 */  lwc1  $f6, %lo(D_801E5614)($at)
/* 22A144 801DEF54 44808000 */  mtc1  $zero, $f16
/* 22A148 801DEF58 44809000 */  mtc1  $zero, $f18
/* 22A14C 801DEF5C 4600303C */  c.lt.s $f6, $f0
/* 22A150 801DEF60 C7AE0130 */  lwc1  $f14, 0x130($sp)
/* 22A154 801DEF64 E7A00134 */  swc1  $f0, 0x134($sp)
/* 22A158 801DEF68 4500002A */  bc1f  .L801DF014_ovl17
/* 22A15C 801DEF6C 27A40054 */   addiu $a0, $sp, 0x54
/* 22A160 801DEF70 27A5003C */  addiu $a1, $sp, 0x3c
/* 22A164 801DEF74 27A60030 */  addiu $a2, $sp, 0x30
/* 22A168 801DEF78 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22A16C 801DEF7C E7AE0130 */   swc1  $f14, 0x130($sp)
/* 22A170 801DEF80 44809000 */  mtc1  $zero, $f18
/* 22A174 801DEF84 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 22A178 801DEF88 44808000 */  mtc1  $zero, $f16
/* 22A17C 801DEF8C C7AE0130 */  lwc1  $f14, 0x130($sp)
/* 22A180 801DEF90 46124032 */  c.eq.s $f8, $f18
/* 22A184 801DEF94 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 22A188 801DEF98 27A40048 */  addiu $a0, $sp, 0x48
/* 22A18C 801DEF9C 45000009 */  bc1f  .L801DEFC4_ovl17
/* 22A190 801DEFA0 00000000 */   nop   
/* 22A194 801DEFA4 46125032 */  c.eq.s $f10, $f18
/* 22A198 801DEFA8 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 22A19C 801DEFAC 45000005 */  bc1f  .L801DEFC4_ovl17
/* 22A1A0 801DEFB0 00000000 */   nop   
/* 22A1A4 801DEFB4 46122032 */  c.eq.s $f4, $f18
/* 22A1A8 801DEFB8 00000000 */  nop   
/* 22A1AC 801DEFBC 45010010 */  bc1t  .L801DF000_ovl17
/* 22A1B0 801DEFC0 00000000 */   nop   
.L801DEFC4_ovl17:
/* 22A1B4 801DEFC4 0C0063EF */  jal   lbvector_Angle
/* 22A1B8 801DEFC8 27A50030 */   addiu $a1, $sp, 0x30
/* 22A1BC 801DEFCC 3C01801E */  lui   $at, %hi(D_801E5618) # $at, 0x801e
/* 22A1C0 801DEFD0 C4265618 */  lwc1  $f6, %lo(D_801E5618)($at)
/* 22A1C4 801DEFD4 44808000 */  mtc1  $zero, $f16
/* 22A1C8 801DEFD8 44809000 */  mtc1  $zero, $f18
/* 22A1CC 801DEFDC 4606003C */  c.lt.s $f0, $f6
/* 22A1D0 801DEFE0 3C01801E */ lui $at, %hi(D_801E5700)
/* 22A1D4 801DEFE4 45000004 */  bc1f  .L801DEFF8_ovl17
/* 22A1D8 801DEFE8 00000000 */   nop   
/* 22A1DC 801DEFEC 3C01801E */  lui   $at, %hi(D_801E5700) # $at, 0x801e
/* 22A1E0 801DEFF0 10000003 */  b     .L801DF000_ovl17
/* 22A1E4 801DEFF4 C42E5700 */   lwc1  $f14, %lo(D_801E5700)($at)
.L801DEFF8_ovl17:
/* 22A1E8 801DEFF8 C42E5700 */  lwc1  $f14, %lo(D_801E5700)($at)
/* 22A1EC 801DEFFC 46007387 */  neg.s $f14, $f14
.L801DF000_ovl17:
/* 22A1F0 801DF000 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 22A1F4 801DF004 3C02800F */  lui   $v0, %hi(D_800EADE0) # $v0, 0x800f
/* 22A1F8 801DF008 2442ADE0 */  addiu $v0, %lo(D_800EADE0) # addiu $v0, $v0, -0x5220
/* 22A1FC 801DF00C 1000000A */  b     .L801DF038_ovl17
/* 22A200 801DF010 8C84A7C4 */   lw    $a0, %lo(D_8004A7C4)($a0)
.L801DF014_ovl17:
/* 22A204 801DF014 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 22A208 801DF018 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 22A20C 801DF01C 3C02800F */  lui   $v0, %hi(D_800EADE0) # $v0, 0x800f
/* 22A210 801DF020 2442ADE0 */  addiu $v0, %lo(D_800EADE0) # addiu $v0, $v0, -0x5220
/* 22A214 801DF024 8C980000 */  lw    $t8, ($a0)
/* 22A218 801DF028 46008386 */  mov.s $f14, $f16
/* 22A21C 801DF02C 0018C880 */  sll   $t9, $t8, 2
/* 22A220 801DF030 00594021 */  addu  $t0, $v0, $t9
/* 22A224 801DF034 E5100000 */  swc1  $f16, ($t0)
.L801DF038_ovl17:
/* 22A228 801DF038 8C890000 */  lw    $t1, ($a0)
/* 22A22C 801DF03C 00095080 */  sll   $t2, $t1, 2
/* 22A230 801DF040 004A1821 */  addu  $v1, $v0, $t2
/* 22A234 801DF044 C46C0000 */  lwc1  $f12, ($v1)
/* 22A238 801DF048 460C803C */  c.lt.s $f16, $f12
/* 22A23C 801DF04C 00000000 */  nop   
/* 22A240 801DF050 45020006 */  bc1fl .L801DF06C_ovl17
/* 22A244 801DF054 4610603C */   c.lt.s $f12, $f16
/* 22A248 801DF058 4610703C */  c.lt.s $f14, $f16
/* 22A24C 801DF05C 00000000 */  nop   
/* 22A250 801DF060 45010008 */  bc1t  .L801DF084_ovl17
/* 22A254 801DF064 00000000 */   nop   
/* 22A258 801DF068 4610603C */  c.lt.s $f12, $f16
.L801DF06C_ovl17:
/* 22A25C 801DF06C 00000000 */  nop   
/* 22A260 801DF070 45020009 */  bc1fl .L801DF098_ovl17
/* 22A264 801DF074 460E6280 */   add.s $f10, $f12, $f14
/* 22A268 801DF078 460E803C */  c.lt.s $f16, $f14
/* 22A26C 801DF07C 00000000 */  nop   
/* 22A270 801DF080 45000004 */  bc1f  .L801DF094_ovl17
.L801DF084_ovl17:
/* 22A274 801DF084 3C01801E */   lui   $at, %hi(D_801E561C) # $at, 0x801e
/* 22A278 801DF088 C428561C */  lwc1  $f8, %lo(D_801E561C)($at)
/* 22A27C 801DF08C 46087382 */  mul.s $f14, $f14, $f8
/* 22A280 801DF090 00000000 */  nop   
.L801DF094_ovl17:
/* 22A284 801DF094 460E6280 */  add.s $f10, $f12, $f14
.L801DF098_ovl17:
/* 22A288 801DF098 E46A0000 */  swc1  $f10, ($v1)
/* 22A28C 801DF09C 8C8B0000 */  lw    $t3, ($a0)
/* 22A290 801DF0A0 C7A40134 */  lwc1  $f4, 0x134($sp)
/* 22A294 801DF0A4 000B6080 */  sll   $t4, $t3, 2
/* 22A298 801DF0A8 004C1821 */  addu  $v1, $v0, $t4
/* 22A29C 801DF0AC C46C0000 */  lwc1  $f12, ($v1)
/* 22A2A0 801DF0B0 4612603C */  c.lt.s $f12, $f18
/* 22A2A4 801DF0B4 00000000 */  nop   
/* 22A2A8 801DF0B8 45020004 */  bc1fl .L801DF0CC_ovl17
/* 22A2AC 801DF0BC 46006006 */   mov.s $f0, $f12
/* 22A2B0 801DF0C0 10000002 */  b     .L801DF0CC_ovl17
/* 22A2B4 801DF0C4 46006007 */   neg.s $f0, $f12
/* 22A2B8 801DF0C8 46006006 */  mov.s $f0, $f12
.L801DF0CC_ovl17:
/* 22A2BC 801DF0CC 46002181 */  sub.s $f6, $f4, $f0
/* 22A2C0 801DF0D0 3C01801E */  lui   $at, %hi(D_801E5704) # $at, 0x801e
/* 22A2C4 801DF0D4 C4225704 */  lwc1  $f2, %lo(D_801E5704)($at)
/* 22A2C8 801DF0D8 4606103C */  c.lt.s $f2, $f6
/* 22A2CC 801DF0DC 00000000 */  nop   
/* 22A2D0 801DF0E0 45000003 */  bc1f  .L801DF0F0_ovl17
/* 22A2D4 801DF0E4 00000000 */   nop   
/* 22A2D8 801DF0E8 10000015 */  b     .L801DF140_ovl17
/* 22A2DC 801DF0EC 46001006 */   mov.s $f0, $f2
.L801DF0F0_ovl17:
/* 22A2E0 801DF0F0 3C02800D */  lui   $v0, %hi(gKirbyController) # $v0, 0x800d
/* 22A2E4 801DF0F4 94426FE8 */  lhu   $v0, %lo(gKirbyController)($v0)
/* 22A2E8 801DF0F8 3C01800D */ lui $at, %hi(D_800D7170)
/* 22A2EC 801DF0FC 304D0C00 */  andi  $t5, $v0, 0xc00
/* 22A2F0 801DF100 11A00009 */  beqz  $t5, .L801DF128_ovl17
/* 22A2F4 801DF104 304E0300 */   andi  $t6, $v0, 0x300
/* 22A2F8 801DF108 11C00007 */  beqz  $t6, .L801DF128_ovl17
/* 22A2FC 801DF10C 00000000 */   nop   
/* 22A300 801DF110 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22A304 801DF114 C4287170 */  lwc1  $f8, %lo(D_800D7170)($at)
/* 22A308 801DF118 3C01801E */  lui   $at, %hi(D_801E5620) # $at, 0x801e
/* 22A30C 801DF11C C42A5620 */  lwc1  $f10, %lo(D_801E5620)($at)
/* 22A310 801DF120 10000002 */  b     .L801DF12C_ovl17
/* 22A314 801DF124 460A4003 */   div.s $f0, $f8, $f10
.L801DF128_ovl17:
/* 22A318 801DF128 C4207170 */  lwc1  $f0, %lo(D_800D7170)($at)
.L801DF12C_ovl17:
/* 22A31C 801DF12C 4600103C */  c.lt.s $f2, $f0
/* 22A320 801DF130 00000000 */  nop   
/* 22A324 801DF134 45020003 */  bc1fl .L801DF144_ovl17
/* 22A328 801DF138 460C003C */   c.lt.s $f0, $f12
/* 22A32C 801DF13C 46001006 */  mov.s $f0, $f2
.L801DF140_ovl17:
/* 22A330 801DF140 460C003C */  c.lt.s $f0, $f12
.L801DF144_ovl17:
/* 22A334 801DF144 3C01801E */  lui   $at, %hi(D_801E5624) # $at, 0x801e
/* 22A338 801DF148 4502000A */  bc1fl .L801DF174_ovl17
/* 22A33C 801DF14C 46000087 */   neg.s $f2, $f0
/* 22A340 801DF150 E4600000 */  swc1  $f0, ($v1)
/* 22A344 801DF154 8C8F0000 */  lw    $t7, ($a0)
/* 22A348 801DF158 3C19800F */  lui   $t9, %hi(D_800EADE0) # $t9, 0x800f
/* 22A34C 801DF15C 2739ADE0 */  addiu $t9, %lo(D_800EADE0) # addiu $t9, $t9, -0x5220
/* 22A350 801DF160 000FC080 */  sll   $t8, $t7, 2
/* 22A354 801DF164 03191821 */  addu  $v1, $t8, $t9
/* 22A358 801DF168 1000000D */  b     .L801DF1A0_ovl17
/* 22A35C 801DF16C C46C0000 */   lwc1  $f12, ($v1)
/* 22A360 801DF170 46000087 */  neg.s $f2, $f0
.L801DF174_ovl17:
/* 22A364 801DF174 4602603C */  c.lt.s $f12, $f2
/* 22A368 801DF178 00000000 */  nop   
/* 22A36C 801DF17C 45000008 */  bc1f  .L801DF1A0_ovl17
/* 22A370 801DF180 00000000 */   nop   
/* 22A374 801DF184 E4620000 */  swc1  $f2, ($v1)
/* 22A378 801DF188 8C880000 */  lw    $t0, ($a0)
/* 22A37C 801DF18C 3C0A800F */  lui   $t2, %hi(D_800EADE0) # $t2, 0x800f
/* 22A380 801DF190 254AADE0 */  addiu $t2, %lo(D_800EADE0) # addiu $t2, $t2, -0x5220
/* 22A384 801DF194 00084880 */  sll   $t1, $t0, 2
/* 22A388 801DF198 012A1821 */  addu  $v1, $t1, $t2
/* 22A38C 801DF19C C46C0000 */  lwc1  $f12, ($v1)
.L801DF1A0_ovl17:
/* 22A390 801DF1A0 C4245624 */  lwc1  $f4, %lo(D_801E5624)($at)
/* 22A394 801DF1A4 460C203C */  c.lt.s $f4, $f12
/* 22A398 801DF1A8 00000000 */  nop   
/* 22A39C 801DF1AC 45010006 */  bc1t  .L801DF1C8_ovl17
/* 22A3A0 801DF1B0 3C01801E */   lui   $at, %hi(D_801E5628) # $at, 0x801e
/* 22A3A4 801DF1B4 C4265628 */  lwc1  $f6, %lo(D_801E5628)($at)
/* 22A3A8 801DF1B8 4606603C */  c.lt.s $f12, $f6
/* 22A3AC 801DF1BC 00000000 */  nop   
/* 22A3B0 801DF1C0 45020010 */  bc1fl .L801DF204_ovl17
/* 22A3B4 801DF1C4 46109032 */   c.eq.s $f18, $f16
.L801DF1C8_ovl17:
/* 22A3B8 801DF1C8 44066000 */  mfc1  $a2, $f12
/* 22A3BC 801DF1CC 27A40054 */  addiu $a0, $sp, 0x54
/* 22A3C0 801DF1D0 27A50048 */  addiu $a1, $sp, 0x48
/* 22A3C4 801DF1D4 0C00647E */  jal   func_800191F8_ovl17
/* 22A3C8 801DF1D8 E7AE0130 */   swc1  $f14, 0x130($sp)
/* 22A3CC 801DF1DC C7A80054 */  lwc1  $f8, 0x54($sp)
/* 22A3D0 801DF1E0 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* 22A3D4 801DF1E4 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 22A3D8 801DF1E8 44808000 */  mtc1  $zero, $f16
/* 22A3DC 801DF1EC C7AE0130 */  lwc1  $f14, 0x130($sp)
/* 22A3E0 801DF1F0 E7A80100 */  swc1  $f8, 0x100($sp)
/* 22A3E4 801DF1F4 E7AA0104 */  swc1  $f10, 0x104($sp)
/* 22A3E8 801DF1F8 10000006 */  b     .L801DF214_ovl17
/* 22A3EC 801DF1FC E7A40108 */   swc1  $f4, 0x108($sp)
/* 22A3F0 801DF200 46109032 */  c.eq.s $f18, $f16
.L801DF204_ovl17:
/* 22A3F4 801DF204 46008386 */  mov.s $f14, $f16
/* 22A3F8 801DF208 45030003 */  bc1tl .L801DF218_ovl17
/* 22A3FC 801DF20C C7A600F0 */   lwc1  $f6, 0xf0($sp)
/* 22A400 801DF210 E4700000 */  swc1  $f16, ($v1)
.L801DF214_ovl17:
/* 22A404 801DF214 C7A600F0 */  lwc1  $f6, 0xf0($sp)
.L801DF218_ovl17:
/* 22A408 801DF218 C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* 22A40C 801DF21C C7AA00F8 */  lwc1  $f10, 0xf8($sp)
/* 22A410 801DF220 E7A60054 */  swc1  $f6, 0x54($sp)
/* 22A414 801DF224 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 22A418 801DF228 C7A60074 */  lwc1  $f6, 0x74($sp)
/* 22A41C 801DF22C E7A80058 */  swc1  $f8, 0x58($sp)
/* 22A420 801DF230 E7AA005C */  swc1  $f10, 0x5c($sp)
/* 22A424 801DF234 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 22A428 801DF238 E7A60040 */  swc1  $f6, 0x40($sp)
/* 22A42C 801DF23C C7A80078 */  lwc1  $f8, 0x78($sp)
/* 22A430 801DF240 C7AA0100 */  lwc1  $f10, 0x100($sp)
/* 22A434 801DF244 C7A40104 */  lwc1  $f4, 0x104($sp)
/* 22A438 801DF248 C7A60108 */  lwc1  $f6, 0x108($sp)
/* 22A43C 801DF24C E7B00038 */  swc1  $f16, 0x38($sp)
/* 22A440 801DF250 E7B00034 */  swc1  $f16, 0x34($sp)
/* 22A444 801DF254 E7B00030 */  swc1  $f16, 0x30($sp)
/* 22A448 801DF258 27A40054 */  addiu $a0, $sp, 0x54
/* 22A44C 801DF25C 27A5003C */  addiu $a1, $sp, 0x3c
/* 22A450 801DF260 E7AE0130 */  swc1  $f14, 0x130($sp)
/* 22A454 801DF264 E7A80044 */  swc1  $f8, 0x44($sp)
/* 22A458 801DF268 E7AA0048 */  swc1  $f10, 0x48($sp)
/* 22A45C 801DF26C E7A4004C */  swc1  $f4, 0x4c($sp)
/* 22A460 801DF270 0C0063EF */  jal   lbvector_Angle
/* 22A464 801DF274 E7A60050 */   swc1  $f6, 0x50($sp)
/* 22A468 801DF278 3C01801E */  lui   $at, %hi(D_801E562C) # $at, 0x801e
/* 22A46C 801DF27C C428562C */  lwc1  $f8, %lo(D_801E562C)($at)
/* 22A470 801DF280 44808000 */  mtc1  $zero, $f16
/* 22A474 801DF284 44809000 */  mtc1  $zero, $f18
/* 22A478 801DF288 4600403C */  c.lt.s $f8, $f0
/* 22A47C 801DF28C C7AE0130 */  lwc1  $f14, 0x130($sp)
/* 22A480 801DF290 E7A00134 */  swc1  $f0, 0x134($sp)
/* 22A484 801DF294 45000033 */  bc1f  .L801DF364_ovl17
/* 22A488 801DF298 27A40054 */   addiu $a0, $sp, 0x54
/* 22A48C 801DF29C 27A5003C */  addiu $a1, $sp, 0x3c
/* 22A490 801DF2A0 27A60030 */  addiu $a2, $sp, 0x30
/* 22A494 801DF2A4 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22A498 801DF2A8 E7AE0130 */   swc1  $f14, 0x130($sp)
/* 22A49C 801DF2AC 44809000 */  mtc1  $zero, $f18
/* 22A4A0 801DF2B0 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 22A4A4 801DF2B4 44808000 */  mtc1  $zero, $f16
/* 22A4A8 801DF2B8 C7AE0130 */  lwc1  $f14, 0x130($sp)
/* 22A4AC 801DF2BC 46125032 */  c.eq.s $f10, $f18
/* 22A4B0 801DF2C0 C7A40034 */  lwc1  $f4, 0x34($sp)
/* 22A4B4 801DF2C4 27A40048 */  addiu $a0, $sp, 0x48
/* 22A4B8 801DF2C8 45000009 */  bc1f  .L801DF2F0_ovl17
/* 22A4BC 801DF2CC 00000000 */   nop   
/* 22A4C0 801DF2D0 46122032 */  c.eq.s $f4, $f18
/* 22A4C4 801DF2D4 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 22A4C8 801DF2D8 45000005 */  bc1f  .L801DF2F0_ovl17
/* 22A4CC 801DF2DC 00000000 */   nop   
/* 22A4D0 801DF2E0 46123032 */  c.eq.s $f6, $f18
/* 22A4D4 801DF2E4 00000000 */  nop   
/* 22A4D8 801DF2E8 45010019 */  bc1t  .L801DF350_ovl17
/* 22A4DC 801DF2EC 00000000 */   nop   
.L801DF2F0_ovl17:
/* 22A4E0 801DF2F0 0C0063EF */  jal   lbvector_Angle
/* 22A4E4 801DF2F4 27A50030 */   addiu $a1, $sp, 0x30
/* 22A4E8 801DF2F8 3C01801E */  lui   $at, %hi(D_801E5630) # $at, 0x801e
/* 22A4EC 801DF2FC C4285630 */  lwc1  $f8, %lo(D_801E5630)($at)
/* 22A4F0 801DF300 44808000 */  mtc1  $zero, $f16
/* 22A4F4 801DF304 44809000 */  mtc1  $zero, $f18
/* 22A4F8 801DF308 4608003C */  c.lt.s $f0, $f8
/* 22A4FC 801DF30C 3C01801E */ lui $at, %hi(D_801E5700)
/* 22A500 801DF310 45000009 */  bc1f  .L801DF338_ovl17
/* 22A504 801DF314 00000000 */   nop   
/* 22A508 801DF318 3C01801E */  lui   $at, %hi(D_801E5700) # $at, 0x801e
/* 22A50C 801DF31C C42A5700 */  lwc1  $f10, %lo(D_801E5700)($at)
/* 22A510 801DF320 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 22A514 801DF324 44812000 */  mtc1  $at, $f4
/* 22A518 801DF328 00000000 */  nop   
/* 22A51C 801DF32C 46045382 */  mul.s $f14, $f10, $f4
/* 22A520 801DF330 10000007 */  b     .L801DF350_ovl17
/* 22A524 801DF334 00000000 */   nop   
.L801DF338_ovl17:
/* 22A528 801DF338 C4265700 */  lwc1  $f6, %lo(D_801E5700)($at)
/* 22A52C 801DF33C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 22A530 801DF340 44815000 */  mtc1  $at, $f10
/* 22A534 801DF344 46003207 */  neg.s $f8, $f6
/* 22A538 801DF348 460A4382 */  mul.s $f14, $f8, $f10
/* 22A53C 801DF34C 00000000 */  nop   
.L801DF350_ovl17:
/* 22A540 801DF350 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 22A544 801DF354 3C02800F */  lui   $v0, %hi(D_800EAFA0) # $v0, 0x800f
/* 22A548 801DF358 2442AFA0 */  addiu $v0, %lo(D_800EAFA0) # addiu $v0, $v0, -0x5060
/* 22A54C 801DF35C 1000000A */  b     .L801DF388_ovl17
/* 22A550 801DF360 8C84A7C4 */   lw    $a0, %lo(D_8004A7C4)($a0)
.L801DF364_ovl17:
/* 22A554 801DF364 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 22A558 801DF368 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 22A55C 801DF36C 3C02800F */  lui   $v0, %hi(D_800EAFA0) # $v0, 0x800f
/* 22A560 801DF370 2442AFA0 */  addiu $v0, %lo(D_800EAFA0) # addiu $v0, $v0, -0x5060
/* 22A564 801DF374 8C8B0000 */  lw    $t3, ($a0)
/* 22A568 801DF378 46008386 */  mov.s $f14, $f16
/* 22A56C 801DF37C 000B6080 */  sll   $t4, $t3, 2
/* 22A570 801DF380 004C6821 */  addu  $t5, $v0, $t4
/* 22A574 801DF384 E5B00000 */  swc1  $f16, ($t5)
.L801DF388_ovl17:
/* 22A578 801DF388 8C8E0000 */  lw    $t6, ($a0)
/* 22A57C 801DF38C 000E7880 */  sll   $t7, $t6, 2
/* 22A580 801DF390 004F1821 */  addu  $v1, $v0, $t7
/* 22A584 801DF394 C46C0000 */  lwc1  $f12, ($v1)
/* 22A588 801DF398 460C803C */  c.lt.s $f16, $f12
/* 22A58C 801DF39C 00000000 */  nop   
/* 22A590 801DF3A0 45020006 */  bc1fl .L801DF3BC_ovl17
/* 22A594 801DF3A4 4610603C */   c.lt.s $f12, $f16
/* 22A598 801DF3A8 4610703C */  c.lt.s $f14, $f16
/* 22A59C 801DF3AC 00000000 */  nop   
/* 22A5A0 801DF3B0 45010008 */  bc1t  .L801DF3D4_ovl17
/* 22A5A4 801DF3B4 00000000 */   nop   
/* 22A5A8 801DF3B8 4610603C */  c.lt.s $f12, $f16
.L801DF3BC_ovl17:
/* 22A5AC 801DF3BC 00000000 */  nop   
/* 22A5B0 801DF3C0 45020009 */  bc1fl .L801DF3E8_ovl17
/* 22A5B4 801DF3C4 460E6180 */   add.s $f6, $f12, $f14
/* 22A5B8 801DF3C8 460E803C */  c.lt.s $f16, $f14
/* 22A5BC 801DF3CC 00000000 */  nop   
/* 22A5C0 801DF3D0 45000004 */  bc1f  .L801DF3E4_ovl17
.L801DF3D4_ovl17:
/* 22A5C4 801DF3D4 3C01801E */   lui   $at, %hi(D_801E5634) # $at, 0x801e
/* 22A5C8 801DF3D8 C4245634 */  lwc1  $f4, %lo(D_801E5634)($at)
/* 22A5CC 801DF3DC 46047382 */  mul.s $f14, $f14, $f4
/* 22A5D0 801DF3E0 00000000 */  nop   
.L801DF3E4_ovl17:
/* 22A5D4 801DF3E4 460E6180 */  add.s $f6, $f12, $f14
.L801DF3E8_ovl17:
/* 22A5D8 801DF3E8 E4660000 */  swc1  $f6, ($v1)
/* 22A5DC 801DF3EC 8C980000 */  lw    $t8, ($a0)
/* 22A5E0 801DF3F0 C7A80134 */  lwc1  $f8, 0x134($sp)
/* 22A5E4 801DF3F4 0018C880 */  sll   $t9, $t8, 2
/* 22A5E8 801DF3F8 00591821 */  addu  $v1, $v0, $t9
/* 22A5EC 801DF3FC C46C0000 */  lwc1  $f12, ($v1)
/* 22A5F0 801DF400 4612603C */  c.lt.s $f12, $f18
/* 22A5F4 801DF404 00000000 */  nop   
/* 22A5F8 801DF408 45020004 */  bc1fl .L801DF41C_ovl17
/* 22A5FC 801DF40C 46006006 */   mov.s $f0, $f12
/* 22A600 801DF410 10000002 */  b     .L801DF41C_ovl17
/* 22A604 801DF414 46006007 */   neg.s $f0, $f12
/* 22A608 801DF418 46006006 */  mov.s $f0, $f12
.L801DF41C_ovl17:
/* 22A60C 801DF41C 46004281 */  sub.s $f10, $f8, $f0
/* 22A610 801DF420 3C01801E */  lui   $at, %hi(D_801E5704) # $at, 0x801e
/* 22A614 801DF424 C4225704 */  lwc1  $f2, %lo(D_801E5704)($at)
/* 22A618 801DF428 3C02800D */  lui   $v0, %hi(gKirbyController) # $v0, 0x800d
/* 22A61C 801DF42C 460A103C */  c.lt.s $f2, $f10
/* 22A620 801DF430 00000000 */  nop   
/* 22A624 801DF434 45000003 */  bc1f  .L801DF444_ovl17
/* 22A628 801DF438 00000000 */   nop   
/* 22A62C 801DF43C 10000014 */  b     .L801DF490_ovl17
/* 22A630 801DF440 46001006 */   mov.s $f0, $f2
.L801DF444_ovl17:
/* 22A634 801DF444 94426FE8 */  lhu   $v0, %lo(gKirbyController)($v0)
/* 22A638 801DF448 3C01800D */ lui $at, %hi(D_800D7170)
/* 22A63C 801DF44C 30480C00 */  andi  $t0, $v0, 0xc00
/* 22A640 801DF450 11000009 */  beqz  $t0, .L801DF478_ovl17
/* 22A644 801DF454 30490300 */   andi  $t1, $v0, 0x300
/* 22A648 801DF458 11200007 */  beqz  $t1, .L801DF478_ovl17
/* 22A64C 801DF45C 00000000 */   nop   
/* 22A650 801DF460 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22A654 801DF464 C4247170 */  lwc1  $f4, %lo(D_800D7170)($at)
/* 22A658 801DF468 3C01801E */  lui   $at, %hi(D_801E5638) # $at, 0x801e
/* 22A65C 801DF46C C4265638 */  lwc1  $f6, %lo(D_801E5638)($at)
/* 22A660 801DF470 10000002 */  b     .L801DF47C_ovl17
/* 22A664 801DF474 46062003 */   div.s $f0, $f4, $f6
.L801DF478_ovl17:
/* 22A668 801DF478 C4207170 */  lwc1  $f0, %lo(D_800D7170)($at)
.L801DF47C_ovl17:
/* 22A66C 801DF47C 4600103C */  c.lt.s $f2, $f0
/* 22A670 801DF480 00000000 */  nop   
/* 22A674 801DF484 45020003 */  bc1fl .L801DF494_ovl17
/* 22A678 801DF488 460C003C */   c.lt.s $f0, $f12
/* 22A67C 801DF48C 46001006 */  mov.s $f0, $f2
.L801DF490_ovl17:
/* 22A680 801DF490 460C003C */  c.lt.s $f0, $f12
.L801DF494_ovl17:
/* 22A684 801DF494 3C01801E */  lui   $at, %hi(D_801E563C) # $at, 0x801e
/* 22A688 801DF498 27A50048 */  addiu $a1, $sp, 0x48
/* 22A68C 801DF49C 4502000A */  bc1fl .L801DF4C8_ovl17
/* 22A690 801DF4A0 46000087 */   neg.s $f2, $f0
/* 22A694 801DF4A4 E4600000 */  swc1  $f0, ($v1)
/* 22A698 801DF4A8 8C8A0000 */  lw    $t2, ($a0)
/* 22A69C 801DF4AC 3C0C800F */  lui   $t4, %hi(D_800EAFA0) # $t4, 0x800f
/* 22A6A0 801DF4B0 258CAFA0 */  addiu $t4, %lo(D_800EAFA0) # addiu $t4, $t4, -0x5060
/* 22A6A4 801DF4B4 000A5880 */  sll   $t3, $t2, 2
/* 22A6A8 801DF4B8 016C1821 */  addu  $v1, $t3, $t4
/* 22A6AC 801DF4BC 1000000D */  b     .L801DF4F4_ovl17
/* 22A6B0 801DF4C0 C46C0000 */   lwc1  $f12, ($v1)
/* 22A6B4 801DF4C4 46000087 */  neg.s $f2, $f0
.L801DF4C8_ovl17:
/* 22A6B8 801DF4C8 4602603C */  c.lt.s $f12, $f2
/* 22A6BC 801DF4CC 00000000 */  nop   
/* 22A6C0 801DF4D0 45000008 */  bc1f  .L801DF4F4_ovl17
/* 22A6C4 801DF4D4 00000000 */   nop   
/* 22A6C8 801DF4D8 E4620000 */  swc1  $f2, ($v1)
/* 22A6CC 801DF4DC 8C8D0000 */  lw    $t5, ($a0)
/* 22A6D0 801DF4E0 3C0F800F */  lui   $t7, %hi(D_800EAFA0) # $t7, 0x800f
/* 22A6D4 801DF4E4 25EFAFA0 */  addiu $t7, %lo(D_800EAFA0) # addiu $t7, $t7, -0x5060
/* 22A6D8 801DF4E8 000D7080 */  sll   $t6, $t5, 2
/* 22A6DC 801DF4EC 01CF1821 */  addu  $v1, $t6, $t7
/* 22A6E0 801DF4F0 C46C0000 */  lwc1  $f12, ($v1)
.L801DF4F4_ovl17:
/* 22A6E4 801DF4F4 C428563C */  lwc1  $f8, %lo(D_801E563C)($at)
/* 22A6E8 801DF4F8 3C01801E */  lui   $at, %hi(D_801E5640) # $at, 0x801e
/* 22A6EC 801DF4FC 460C403C */  c.lt.s $f8, $f12
/* 22A6F0 801DF500 00000000 */  nop   
/* 22A6F4 801DF504 45030007 */  bc1tl .L801DF524_ovl17
/* 22A6F8 801DF508 44066000 */   mfc1  $a2, $f12
/* 22A6FC 801DF50C C42A5640 */  lwc1  $f10, %lo(D_801E5640)($at)
/* 22A700 801DF510 460A603C */  c.lt.s $f12, $f10
/* 22A704 801DF514 00000000 */  nop   
/* 22A708 801DF518 4502000C */  bc1fl .L801DF54C_ovl17
/* 22A70C 801DF51C 46109032 */   c.eq.s $f18, $f16
/* 22A710 801DF520 44066000 */  mfc1  $a2, $f12
.L801DF524_ovl17:
/* 22A714 801DF524 0C00647E */  jal   func_800191F8_ovl17
/* 22A718 801DF528 27A40054 */   addiu $a0, $sp, 0x54
/* 22A71C 801DF52C C7A40054 */  lwc1  $f4, 0x54($sp)
/* 22A720 801DF530 C7A60058 */  lwc1  $f6, 0x58($sp)
/* 22A724 801DF534 C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 22A728 801DF538 E7A400F0 */  swc1  $f4, 0xf0($sp)
/* 22A72C 801DF53C E7A600F4 */  swc1  $f6, 0xf4($sp)
/* 22A730 801DF540 10000006 */  b     .L801DF55C_ovl17
/* 22A734 801DF544 E7A800F8 */   swc1  $f8, 0xf8($sp)
/* 22A738 801DF548 46109032 */  c.eq.s $f18, $f16
.L801DF54C_ovl17:
/* 22A73C 801DF54C 00000000 */  nop   
/* 22A740 801DF550 45030003 */  bc1tl .L801DF560_ovl17
/* 22A744 801DF554 C7AA00F0 */   lwc1  $f10, 0xf0($sp)
/* 22A748 801DF558 E4700000 */  swc1  $f16, ($v1)
.L801DF55C_ovl17:
/* 22A74C 801DF55C C7AA00F0 */  lwc1  $f10, 0xf0($sp)
.L801DF560_ovl17:
/* 22A750 801DF560 C7A400F4 */  lwc1  $f4, 0xf4($sp)
/* 22A754 801DF564 C7A600F8 */  lwc1  $f6, 0xf8($sp)
/* 22A758 801DF568 E7AA0054 */  swc1  $f10, 0x54($sp)
/* 22A75C 801DF56C E7A40058 */  swc1  $f4, 0x58($sp)
/* 22A760 801DF570 C7A80100 */  lwc1  $f8, 0x100($sp)
/* 22A764 801DF574 C7AA0104 */  lwc1  $f10, 0x104($sp)
/* 22A768 801DF578 C7A40108 */  lwc1  $f4, 0x108($sp)
/* 22A76C 801DF57C 27A40054 */  addiu $a0, $sp, 0x54
/* 22A770 801DF580 27A5003C */  addiu $a1, $sp, 0x3c
/* 22A774 801DF584 27A60030 */  addiu $a2, $sp, 0x30
/* 22A778 801DF588 E7A6005C */  swc1  $f6, 0x5c($sp)
/* 22A77C 801DF58C E7A8003C */  swc1  $f8, 0x3c($sp)
/* 22A780 801DF590 E7AA0040 */  swc1  $f10, 0x40($sp)
/* 22A784 801DF594 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22A788 801DF598 E7A40044 */   swc1  $f4, 0x44($sp)
/* 22A78C 801DF59C C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 22A790 801DF5A0 C7AC0034 */  lwc1  $f12, 0x34($sp)
/* 22A794 801DF5A4 C7A20038 */  lwc1  $f2, 0x38($sp)
/* 22A798 801DF5A8 C7A60100 */  lwc1  $f6, 0x100($sp)
/* 22A79C 801DF5AC C7A80104 */  lwc1  $f8, 0x104($sp)
/* 22A7A0 801DF5B0 C7AA0108 */  lwc1  $f10, 0x108($sp)
/* 22A7A4 801DF5B4 27A40054 */  addiu $a0, $sp, 0x54
/* 22A7A8 801DF5B8 27A5003C */  addiu $a1, $sp, 0x3c
/* 22A7AC 801DF5BC 27A60030 */  addiu $a2, $sp, 0x30
/* 22A7B0 801DF5C0 E7AE003C */  swc1  $f14, 0x3c($sp)
/* 22A7B4 801DF5C4 E7AE00E0 */  swc1  $f14, 0xe0($sp)
/* 22A7B8 801DF5C8 E7AC0040 */  swc1  $f12, 0x40($sp)
/* 22A7BC 801DF5CC E7AC00E4 */  swc1  $f12, 0xe4($sp)
/* 22A7C0 801DF5D0 E7A20044 */  swc1  $f2, 0x44($sp)
/* 22A7C4 801DF5D4 E7A200E8 */  swc1  $f2, 0xe8($sp)
/* 22A7C8 801DF5D8 E7A60054 */  swc1  $f6, 0x54($sp)
/* 22A7CC 801DF5DC E7A80058 */  swc1  $f8, 0x58($sp)
/* 22A7D0 801DF5E0 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22A7D4 801DF5E4 E7AA005C */   swc1  $f10, 0x5c($sp)
/* 22A7D8 801DF5E8 C7A200E8 */  lwc1  $f2, 0xe8($sp)
/* 22A7DC 801DF5EC C7A40030 */  lwc1  $f4, 0x30($sp)
/* 22A7E0 801DF5F0 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 22A7E4 801DF5F4 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 22A7E8 801DF5F8 46001307 */  neg.s $f12, $f2
/* 22A7EC 801DF5FC E7A400F0 */  swc1  $f4, 0xf0($sp)
/* 22A7F0 801DF600 E7A600F4 */  swc1  $f6, 0xf4($sp)
/* 22A7F4 801DF604 0C006203 */  jal   asinf
/* 22A7F8 801DF608 E7A800F8 */   swc1  $f8, 0xf8($sp)
/* 22A7FC 801DF60C 3C01801E */  lui   $at, %hi(D_801E5644) # $at, 0x801e
/* 22A800 801DF610 C4225644 */  lwc1  $f2, %lo(D_801E5644)($at)
/* 22A804 801DF614 E7A00124 */  swc1  $f0, 0x124($sp)
/* 22A808 801DF618 3C01801E */  lui   $at, %hi(D_801E5648) # $at, 0x801e
/* 22A80C 801DF61C 46020032 */  c.eq.s $f0, $f2
/* 22A810 801DF620 00000000 */  nop   
/* 22A814 801DF624 45030008 */  bc1tl .L801DF648_ovl17
/* 22A818 801DF628 46020032 */   c.eq.s $f0, $f2
/* 22A81C 801DF62C C42A5648 */  lwc1  $f10, %lo(D_801E5648)($at)
/* 22A820 801DF630 C7AC00F8 */  lwc1  $f12, 0xf8($sp)
/* 22A824 801DF634 460A0032 */  c.eq.s $f0, $f10
/* 22A828 801DF638 00000000 */  nop   
/* 22A82C 801DF63C 45000012 */  bc1f  .L801DF688_ovl17
/* 22A830 801DF640 00000000 */   nop   
/* 22A834 801DF644 46020032 */  c.eq.s $f0, $f2
.L801DF648_ovl17:
/* 22A838 801DF648 C7AC00F0 */  lwc1  $f12, 0xf0($sp)
/* 22A83C 801DF64C C7AE00F4 */  lwc1  $f14, 0xf4($sp)
/* 22A840 801DF650 45000007 */  bc1f  .L801DF670_ovl17
/* 22A844 801DF654 00000000 */   nop   
/* 22A848 801DF658 C7AC00F0 */  lwc1  $f12, 0xf0($sp)
/* 22A84C 801DF65C 0C0061C3 */  jal   atan2f
/* 22A850 801DF660 C7AE00F4 */   lwc1  $f14, 0xf4($sp)
/* 22A854 801DF664 44808000 */  mtc1  $zero, $f16
/* 22A858 801DF668 10000005 */  b     .L801DF680_ovl17
/* 22A85C 801DF66C E7A00120 */   swc1  $f0, 0x120($sp)
.L801DF670_ovl17:
/* 22A860 801DF670 0C0061C3 */  jal   atan2f
/* 22A864 801DF674 46006307 */   neg.s $f12, $f12
/* 22A868 801DF678 44808000 */  mtc1  $zero, $f16
/* 22A86C 801DF67C E7A00120 */  swc1  $f0, 0x120($sp)
.L801DF680_ovl17:
/* 22A870 801DF680 10000008 */  b     .L801DF6A4_ovl17
/* 22A874 801DF684 E7B00128 */   swc1  $f16, 0x128($sp)
.L801DF688_ovl17:
/* 22A878 801DF688 0C0061C3 */  jal   atan2f
/* 22A87C 801DF68C C7AE0108 */   lwc1  $f14, 0x108($sp)
/* 22A880 801DF690 C7AC00E4 */  lwc1  $f12, 0xe4($sp)
/* 22A884 801DF694 C7AE00E0 */  lwc1  $f14, 0xe0($sp)
/* 22A888 801DF698 0C0061C3 */  jal   atan2f
/* 22A88C 801DF69C E7A00120 */   swc1  $f0, 0x120($sp)
/* 22A890 801DF6A0 E7A00128 */  swc1  $f0, 0x128($sp)
.L801DF6A4_ovl17:
/* 22A894 801DF6A4 0C029166 */  jal   func_800A4598
/* 22A898 801DF6A8 27A40120 */   addiu $a0, $sp, 0x120
/* 22A89C 801DF6AC 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 22A8A0 801DF6B0 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 22A8A4 801DF6B4 C7A40120 */  lwc1  $f4, 0x120($sp)
/* 22A8A8 801DF6B8 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 22A8AC 801DF6BC 8C980000 */  lw    $t8, ($a0)
/* 22A8B0 801DF6C0 C7A60124 */  lwc1  $f6, 0x124($sp)
/* 22A8B4 801DF6C4 C7A80128 */  lwc1  $f8, 0x128($sp)
/* 22A8B8 801DF6C8 0018C880 */  sll   $t9, $t8, 2
/* 22A8BC 801DF6CC 00390821 */  addu  $at, $at, $t9
/* 22A8C0 801DF6D0 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 22A8C4 801DF6D4 8C880000 */  lw    $t0, ($a0)
/* 22A8C8 801DF6D8 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 22A8CC 801DF6DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22A8D0 801DF6E0 00084880 */  sll   $t1, $t0, 2
/* 22A8D4 801DF6E4 00290821 */  addu  $at, $at, $t1
/* 22A8D8 801DF6E8 E426A8A0 */ swc1 $f6, %lo(D_800EA8A0)($at)
/* 22A8DC 801DF6EC 8C8A0000 */  lw    $t2, ($a0)
/* 22A8E0 801DF6F0 3C01800F */ lui $at, %hi(D_800EAA60)
/* 22A8E4 801DF6F4 000A5880 */  sll   $t3, $t2, 2
/* 22A8E8 801DF6F8 002B0821 */  addu  $at, $at, $t3
/* 22A8EC 801DF6FC E428AA60 */ swc1 $f8, %lo(D_800EAA60)($at)
/* 22A8F0 801DF700 8C820000 */  lw    $v0, ($a0)
/* 22A8F4 801DF704 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 22A8F8 801DF708 00021080 */  sll   $v0, $v0, 2
/* 22A8FC 801DF70C 00220821 */  addu  $at, $at, $v0
/* 22A900 801DF710 C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 22A904 801DF714 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 22A908 801DF718 00220821 */  addu  $at, $at, $v0
/* 22A90C 801DF71C E42A4010 */ swc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 22A910 801DF720 8C820000 */  lw    $v0, ($a0)
/* 22A914 801DF724 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 22A918 801DF728 00021080 */  sll   $v0, $v0, 2
/* 22A91C 801DF72C 00220821 */  addu  $at, $at, $v0
/* 22A920 801DF730 C424A8A0 */ lwc1 $f4, %lo(D_800EA8A0)($at)
/* 22A924 801DF734 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 22A928 801DF738 00220821 */  addu  $at, $at, $v0
/* 22A92C 801DF73C E42441D0 */ swc1 $f4, %lo(gEntitiesAngleYArray)($at)
/* 22A930 801DF740 8C820000 */  lw    $v0, ($a0)
/* 22A934 801DF744 3C01800F */ lui $at, %hi(D_800EAA60)
/* 22A938 801DF748 00021080 */  sll   $v0, $v0, 2
/* 22A93C 801DF74C 00220821 */  addu  $at, $at, $v0
/* 22A940 801DF750 C426AA60 */ lwc1 $f6, %lo(D_800EAA60)($at)
/* 22A944 801DF754 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 22A948 801DF758 00220821 */  addu  $at, $at, $v0
/* 22A94C 801DF75C 27BD0138 */  addiu $sp, $sp, 0x138
/* 22A950 801DF760 03E00008 */  jr    $ra
/* 22A954 801DF764 E4264390 */ swc1 $f6, %lo(gEntitiesAngleZArray)($at)

.type func_801DEA5C_ovl17, @function
.size func_801DEA5C_ovl17, . - func_801DEA5C_ovl17

glabel func_801DF768_ovl17
/* 22A958 801DF768 27BDFED8 */  addiu $sp, $sp, -0x128
/* 22A95C 801DF76C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22A960 801DF770 E7AC0128 */  swc1  $f12, 0x128($sp)
/* 22A964 801DF774 0C00C304 */  jal   guMtxIdentF
/* 22A968 801DF778 27A400D0 */   addiu $a0, $sp, 0xd0
/* 22A96C 801DF77C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22A970 801DF780 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22A974 801DF784 3C05800F */ lui $a1, %hi(D_800EA6E0)
/* 22A978 801DF788 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 22A97C 801DF78C 8DC30000 */  lw    $v1, ($t6)
/* 22A980 801DF790 3C07800F */ lui $a3, %hi(D_800EAA60)
/* 22A984 801DF794 27A40090 */  addiu $a0, $sp, 0x90
/* 22A988 801DF798 00031880 */  sll   $v1, $v1, 2
/* 22A98C 801DF79C 00A32821 */  addu  $a1, $a1, $v1
/* 22A990 801DF7A0 00C33021 */  addu  $a2, $a2, $v1
/* 22A994 801DF7A4 00E33821 */  addu  $a3, $a3, $v1
/* 22A998 801DF7A8 8CE7AA60 */ lw $a3, %lo(D_800EAA60)($a3)
/* 22A99C 801DF7AC 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 22A9A0 801DF7B0 0C006EEB */  jal   HS64_MkRotationMtxF
/* 22A9A4 801DF7B4 8CA5A6E0 */ lw $a1, %lo(D_800EA6E0)($a1)
/* 22A9A8 801DF7B8 27A400D0 */  addiu $a0, $sp, 0xd0
/* 22A9AC 801DF7BC 00803025 */  move  $a2, $a0
/* 22A9B0 801DF7C0 0C00D034 */  jal   guMtxCatF
/* 22A9B4 801DF7C4 27A50090 */   addiu $a1, $sp, 0x90
/* 22A9B8 801DF7C8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22A9BC 801DF7CC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22A9C0 801DF7D0 3C19800F */  lui   $t9, %hi(D_800EAC20) # $t9, 0x800f
/* 22A9C4 801DF7D4 2739AC20 */  addiu $t9, %lo(D_800EAC20) # addiu $t9, $t9, -0x53e0
/* 22A9C8 801DF7D8 8C4F0000 */  lw    $t7, ($v0)
/* 22A9CC 801DF7DC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 22A9D0 801DF7E0 44810000 */  mtc1  $at, $f0
/* 22A9D4 801DF7E4 000FC080 */  sll   $t8, $t7, 2
/* 22A9D8 801DF7E8 03191821 */  addu  $v1, $t8, $t9
/* 22A9DC 801DF7EC C4640000 */  lwc1  $f4, ($v1)
/* 22A9E0 801DF7F0 3C09800F */  lui   $t1, %hi(D_800EADE0) # $t1, 0x800f
/* 22A9E4 801DF7F4 2529ADE0 */  addiu $t1, %lo(D_800EADE0) # addiu $t1, $t1, -0x5220
/* 22A9E8 801DF7F8 46002182 */  mul.s $f6, $f4, $f0
/* 22A9EC 801DF7FC 3C0E800F */  lui   $t6, %hi(D_800EAFA0) # $t6, 0x800f
/* 22A9F0 801DF800 25CEAFA0 */  addiu $t6, %lo(D_800EAFA0) # addiu $t6, $t6, -0x5060
/* 22A9F4 801DF804 44801000 */  mtc1  $zero, $f2
/* 22A9F8 801DF808 27A40044 */  addiu $a0, $sp, 0x44
/* 22A9FC 801DF80C 27A50038 */  addiu $a1, $sp, 0x38
/* 22AA00 801DF810 E4660000 */  swc1  $f6, ($v1)
/* 22AA04 801DF814 8C4A0000 */  lw    $t2, ($v0)
/* 22AA08 801DF818 000A5880 */  sll   $t3, $t2, 2
/* 22AA0C 801DF81C 012B3821 */  addu  $a3, $t1, $t3
/* 22AA10 801DF820 C4E80000 */  lwc1  $f8, ($a3)
/* 22AA14 801DF824 46004282 */  mul.s $f10, $f8, $f0
/* 22AA18 801DF828 C7A800F0 */  lwc1  $f8, 0xf0($sp)
/* 22AA1C 801DF82C E4EA0000 */  swc1  $f10, ($a3)
/* 22AA20 801DF830 8C4C0000 */  lw    $t4, ($v0)
/* 22AA24 801DF834 C7AA00F4 */  lwc1  $f10, 0xf4($sp)
/* 22AA28 801DF838 E7A80044 */  swc1  $f8, 0x44($sp)
/* 22AA2C 801DF83C 000C6880 */  sll   $t5, $t4, 2
/* 22AA30 801DF840 01AE4021 */  addu  $t0, $t5, $t6
/* 22AA34 801DF844 C5040000 */  lwc1  $f4, ($t0)
/* 22AA38 801DF848 E7AA0048 */  swc1  $f10, 0x48($sp)
/* 22AA3C 801DF84C C7A800D4 */  lwc1  $f8, 0xd4($sp)
/* 22AA40 801DF850 46002182 */  mul.s $f6, $f4, $f0
/* 22AA44 801DF854 C7A400F8 */  lwc1  $f4, 0xf8($sp)
/* 22AA48 801DF858 C7AA00D8 */  lwc1  $f10, 0xd8($sp)
/* 22AA4C 801DF85C E7A20020 */  swc1  $f2, 0x20($sp)
/* 22AA50 801DF860 E7A20024 */  swc1  $f2, 0x24($sp)
/* 22AA54 801DF864 E7A20028 */  swc1  $f2, 0x28($sp)
/* 22AA58 801DF868 E7A8003C */  swc1  $f8, 0x3c($sp)
/* 22AA5C 801DF86C E5060000 */  swc1  $f6, ($t0)
/* 22AA60 801DF870 C7A600D0 */  lwc1  $f6, 0xd0($sp)
/* 22AA64 801DF874 E7A4004C */  swc1  $f4, 0x4c($sp)
/* 22AA68 801DF878 E7AA0040 */  swc1  $f10, 0x40($sp)
/* 22AA6C 801DF87C E7A60038 */  swc1  $f6, 0x38($sp)
/* 22AA70 801DF880 8C4F0000 */  lw    $t7, ($v0)
/* 22AA74 801DF884 C7A40128 */  lwc1  $f4, 0x128($sp)
/* 22AA78 801DF888 000FC080 */  sll   $t8, $t7, 2
/* 22AA7C 801DF88C 0138C821 */  addu  $t9, $t1, $t8
/* 22AA80 801DF890 E7240000 */  swc1  $f4, ($t9)
/* 22AA84 801DF894 8C4A0000 */  lw    $t2, ($v0)
/* 22AA88 801DF898 000A5880 */  sll   $t3, $t2, 2
/* 22AA8C 801DF89C 012B6021 */  addu  $t4, $t1, $t3
/* 22AA90 801DF8A0 0C00647E */  jal   func_800191F8_ovl17
/* 22AA94 801DF8A4 8D860000 */   lw    $a2, ($t4)
/* 22AA98 801DF8A8 C7A00044 */  lwc1  $f0, 0x44($sp)
/* 22AA9C 801DF8AC C7A20048 */  lwc1  $f2, 0x48($sp)
/* 22AAA0 801DF8B0 C7AE004C */  lwc1  $f14, 0x4c($sp)
/* 22AAA4 801DF8B4 C7A600E0 */  lwc1  $f6, 0xe0($sp)
/* 22AAA8 801DF8B8 C7A800E4 */  lwc1  $f8, 0xe4($sp)
/* 22AAAC 801DF8BC C7AA00E8 */  lwc1  $f10, 0xe8($sp)
/* 22AAB0 801DF8C0 27A40044 */  addiu $a0, $sp, 0x44
/* 22AAB4 801DF8C4 27A5002C */  addiu $a1, $sp, 0x2c
/* 22AAB8 801DF8C8 27A60020 */  addiu $a2, $sp, 0x20
/* 22AABC 801DF8CC E7A0002C */  swc1  $f0, 0x2c($sp)
/* 22AAC0 801DF8D0 E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 22AAC4 801DF8D4 E7A20030 */  swc1  $f2, 0x30($sp)
/* 22AAC8 801DF8D8 E7A200F4 */  swc1  $f2, 0xf4($sp)
/* 22AACC 801DF8DC E7AE0034 */  swc1  $f14, 0x34($sp)
/* 22AAD0 801DF8E0 E7AE00F8 */  swc1  $f14, 0xf8($sp)
/* 22AAD4 801DF8E4 E7A60044 */  swc1  $f6, 0x44($sp)
/* 22AAD8 801DF8E8 E7A80048 */  swc1  $f8, 0x48($sp)
/* 22AADC 801DF8EC 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22AAE0 801DF8F0 E7AA004C */   swc1  $f10, 0x4c($sp)
/* 22AAE4 801DF8F4 C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 22AAE8 801DF8F8 C7B00024 */  lwc1  $f16, 0x24($sp)
/* 22AAEC 801DF8FC C7B20028 */  lwc1  $f18, 0x28($sp)
/* 22AAF0 801DF900 C7A000F0 */  lwc1  $f0, 0xf0($sp)
/* 22AAF4 801DF904 C7A200F4 */  lwc1  $f2, 0xf4($sp)
/* 22AAF8 801DF908 C7AE00F8 */  lwc1  $f14, 0xf8($sp)
/* 22AAFC 801DF90C 27A40044 */  addiu $a0, $sp, 0x44
/* 22AB00 801DF910 27A5002C */  addiu $a1, $sp, 0x2c
/* 22AB04 801DF914 27A60020 */  addiu $a2, $sp, 0x20
/* 22AB08 801DF918 E7AC002C */  swc1  $f12, 0x2c($sp)
/* 22AB0C 801DF91C E7AC00D0 */  swc1  $f12, 0xd0($sp)
/* 22AB10 801DF920 E7B00030 */  swc1  $f16, 0x30($sp)
/* 22AB14 801DF924 E7B000D4 */  swc1  $f16, 0xd4($sp)
/* 22AB18 801DF928 E7B20034 */  swc1  $f18, 0x34($sp)
/* 22AB1C 801DF92C E7B200D8 */  swc1  $f18, 0xd8($sp)
/* 22AB20 801DF930 E7A00044 */  swc1  $f0, 0x44($sp)
/* 22AB24 801DF934 E7A20048 */  swc1  $f2, 0x48($sp)
/* 22AB28 801DF938 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22AB2C 801DF93C E7AE004C */   swc1  $f14, 0x4c($sp)
/* 22AB30 801DF940 C7B200D8 */  lwc1  $f18, 0xd8($sp)
/* 22AB34 801DF944 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 22AB38 801DF948 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 22AB3C 801DF94C C7A80028 */  lwc1  $f8, 0x28($sp)
/* 22AB40 801DF950 46009307 */  neg.s $f12, $f18
/* 22AB44 801DF954 E7A400E0 */  swc1  $f4, 0xe0($sp)
/* 22AB48 801DF958 E7A600E4 */  swc1  $f6, 0xe4($sp)
/* 22AB4C 801DF95C 0C006203 */  jal   asinf
/* 22AB50 801DF960 E7A800E8 */   swc1  $f8, 0xe8($sp)
/* 22AB54 801DF964 3C01801E */  lui   $at, %hi(D_801E564C) # $at, 0x801e
/* 22AB58 801DF968 C422564C */  lwc1  $f2, %lo(D_801E564C)($at)
/* 22AB5C 801DF96C E7A00114 */  swc1  $f0, 0x114($sp)
/* 22AB60 801DF970 3C01801E */  lui   $at, %hi(D_801E5650) # $at, 0x801e
/* 22AB64 801DF974 46020032 */  c.eq.s $f0, $f2
/* 22AB68 801DF978 00000000 */  nop   
/* 22AB6C 801DF97C 45030008 */  bc1tl .L801DF9A0_ovl17
/* 22AB70 801DF980 46020032 */   c.eq.s $f0, $f2
/* 22AB74 801DF984 C42A5650 */  lwc1  $f10, %lo(D_801E5650)($at)
/* 22AB78 801DF988 C7AE00F8 */  lwc1  $f14, 0xf8($sp)
/* 22AB7C 801DF98C 460A0032 */  c.eq.s $f0, $f10
/* 22AB80 801DF990 00000000 */  nop   
/* 22AB84 801DF994 45000011 */  bc1f  .L801DF9DC_ovl17
/* 22AB88 801DF998 00000000 */   nop   
/* 22AB8C 801DF99C 46020032 */  c.eq.s $f0, $f2
.L801DF9A0_ovl17:
/* 22AB90 801DF9A0 C7AC00E0 */  lwc1  $f12, 0xe0($sp)
/* 22AB94 801DF9A4 C7AE00E4 */  lwc1  $f14, 0xe4($sp)
/* 22AB98 801DF9A8 45000006 */  bc1f  .L801DF9C4_ovl17
/* 22AB9C 801DF9AC 00000000 */   nop   
/* 22ABA0 801DF9B0 C7AC00E0 */  lwc1  $f12, 0xe0($sp)
/* 22ABA4 801DF9B4 0C0061C3 */  jal   atan2f
/* 22ABA8 801DF9B8 C7AE00E4 */   lwc1  $f14, 0xe4($sp)
/* 22ABAC 801DF9BC 10000004 */  b     .L801DF9D0_ovl17
/* 22ABB0 801DF9C0 E7A00110 */   swc1  $f0, 0x110($sp)
.L801DF9C4_ovl17:
/* 22ABB4 801DF9C4 0C0061C3 */  jal   atan2f
/* 22ABB8 801DF9C8 46006307 */   neg.s $f12, $f12
/* 22ABBC 801DF9CC E7A00110 */  swc1  $f0, 0x110($sp)
.L801DF9D0_ovl17:
/* 22ABC0 801DF9D0 44802000 */  mtc1  $zero, $f4
/* 22ABC4 801DF9D4 10000008 */  b     .L801DF9F8_ovl17
/* 22ABC8 801DF9D8 E7A40118 */   swc1  $f4, 0x118($sp)
.L801DF9DC_ovl17:
/* 22ABCC 801DF9DC 0C0061C3 */  jal   atan2f
/* 22ABD0 801DF9E0 C7AC00E8 */   lwc1  $f12, 0xe8($sp)
/* 22ABD4 801DF9E4 E7A00110 */  swc1  $f0, 0x110($sp)
/* 22ABD8 801DF9E8 C7AC00D4 */  lwc1  $f12, 0xd4($sp)
/* 22ABDC 801DF9EC 0C0061C3 */  jal   atan2f
/* 22ABE0 801DF9F0 C7AE00D0 */   lwc1  $f14, 0xd0($sp)
/* 22ABE4 801DF9F4 E7A00118 */  swc1  $f0, 0x118($sp)
.L801DF9F8_ovl17:
/* 22ABE8 801DF9F8 0C029166 */  jal   func_800A4598
/* 22ABEC 801DF9FC 27A40110 */   addiu $a0, $sp, 0x110
/* 22ABF0 801DFA00 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22ABF4 801DFA04 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22ABF8 801DFA08 C7A60110 */  lwc1  $f6, 0x110($sp)
/* 22ABFC 801DFA0C 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 22AC00 801DFA10 8C4D0000 */  lw    $t5, ($v0)
/* 22AC04 801DFA14 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 22AC08 801DFA18 3C05800F */  lui   $a1, %hi(D_800EA8A0) # $a1, 0x800f
/* 22AC0C 801DFA1C 000D7080 */  sll   $t6, $t5, 2
/* 22AC10 801DFA20 008E7821 */  addu  $t7, $a0, $t6
/* 22AC14 801DFA24 E5E60000 */  swc1  $f6, ($t7)
/* 22AC18 801DFA28 8C580000 */  lw    $t8, ($v0)
/* 22AC1C 801DFA2C C7A80114 */  lwc1  $f8, 0x114($sp)
/* 22AC20 801DFA30 24A5A8A0 */  addiu $a1, %lo(D_800EA8A0) # addiu $a1, $a1, -0x5760
/* 22AC24 801DFA34 0018C880 */  sll   $t9, $t8, 2
/* 22AC28 801DFA38 00B95021 */  addu  $t2, $a1, $t9
/* 22AC2C 801DFA3C E5480000 */  swc1  $f8, ($t2)
/* 22AC30 801DFA40 8C4B0000 */  lw    $t3, ($v0)
/* 22AC34 801DFA44 C7AA0118 */  lwc1  $f10, 0x118($sp)
/* 22AC38 801DFA48 3C06800F */  lui   $a2, %hi(D_800EAA60) # $a2, 0x800f
/* 22AC3C 801DFA4C 24C6AA60 */  addiu $a2, %lo(D_800EAA60) # addiu $a2, $a2, -0x55a0
/* 22AC40 801DFA50 000B6080 */  sll   $t4, $t3, 2
/* 22AC44 801DFA54 00CC6821 */  addu  $t5, $a2, $t4
/* 22AC48 801DFA58 E5AA0000 */  swc1  $f10, ($t5)
/* 22AC4C 801DFA5C 8C430000 */  lw    $v1, ($v0)
/* 22AC50 801DFA60 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 22AC54 801DFA64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22AC58 801DFA68 00031880 */  sll   $v1, $v1, 2
/* 22AC5C 801DFA6C 00837021 */  addu  $t6, $a0, $v1
/* 22AC60 801DFA70 C5C40000 */  lwc1  $f4, ($t6)
/* 22AC64 801DFA74 00230821 */  addu  $at, $at, $v1
/* 22AC68 801DFA78 E4244010 */ swc1 $f4, %lo(gEntitiesAngleXArray)($at)
/* 22AC6C 801DFA7C 8C430000 */  lw    $v1, ($v0)
/* 22AC70 801DFA80 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 22AC74 801DFA84 00031880 */  sll   $v1, $v1, 2
/* 22AC78 801DFA88 00A37821 */  addu  $t7, $a1, $v1
/* 22AC7C 801DFA8C C5E60000 */  lwc1  $f6, ($t7)
/* 22AC80 801DFA90 00230821 */  addu  $at, $at, $v1
/* 22AC84 801DFA94 E42641D0 */ swc1 $f6, %lo(gEntitiesAngleYArray)($at)
/* 22AC88 801DFA98 8C430000 */  lw    $v1, ($v0)
/* 22AC8C 801DFA9C 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 22AC90 801DFAA0 00031880 */  sll   $v1, $v1, 2
/* 22AC94 801DFAA4 00C3C021 */  addu  $t8, $a2, $v1
/* 22AC98 801DFAA8 C7080000 */  lwc1  $f8, ($t8)
/* 22AC9C 801DFAAC 00230821 */  addu  $at, $at, $v1
/* 22ACA0 801DFAB0 27BD0128 */  addiu $sp, $sp, 0x128
/* 22ACA4 801DFAB4 03E00008 */  jr    $ra
/* 22ACA8 801DFAB8 E4284390 */ swc1 $f8, %lo(gEntitiesAngleZArray)($at)

.type func_801DF768_ovl17, @function
.size func_801DF768_ovl17, . - func_801DF768_ovl17

glabel func_801DFABC_ovl17
/* 22ACAC 801DFABC 3C0E800D */  lui   $t6, %hi(D_800D7098) # $t6, 0x800d
/* 22ACB0 801DFAC0 8DCE7098 */  lw    $t6, %lo(D_800D7098)($t6)
/* 22ACB4 801DFAC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22ACB8 801DFAC8 24010002 */  li    $at, 2
/* 22ACBC 801DFACC 11C102EF */  beq   $t6, $at, .L801E068C_ovl17
/* 22ACC0 801DFAD0 AFBF0014 */   sw    $ra, 0x14($sp)
/* 22ACC4 801DFAD4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22ACC8 801DFAD8 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 22ACCC 801DFADC 8C6F0000 */  lw    $t7, ($v1)
/* 22ACD0 801DFAE0 3C09800F */  lui   $t1, %hi(D_800E9C60) # $t1, 0x800f
/* 22ACD4 801DFAE4 25299C60 */  addiu $t1, %lo(D_800E9C60) # addiu $t1, $t1, -0x63a0
/* 22ACD8 801DFAE8 8DE40000 */  lw    $a0, ($t7)
/* 22ACDC 801DFAEC 24070001 */  li    $a3, 1
/* 22ACE0 801DFAF0 00042080 */  sll   $a0, $a0, 2
/* 22ACE4 801DFAF4 0124C021 */  addu  $t8, $t1, $a0
/* 22ACE8 801DFAF8 8F020000 */  lw    $v0, ($t8)
/* 22ACEC 801DFAFC 14E2005C */  bne   $a3, $v0, .L801DFC70_ovl17
/* 22ACF0 801DFB00 00000000 */   nop   
/* 22ACF4 801DFB04 3C02800E */  lui   $v0, %hi(D_800DFBD0) # $v0, 0x800e
/* 22ACF8 801DFB08 2442FBD0 */  addiu $v0, %lo(D_800DFBD0) # addiu $v0, $v0, -0x430
/* 22ACFC 801DFB0C 0044C821 */  addu  $t9, $v0, $a0
/* 22AD00 801DFB10 8F2C0000 */  lw    $t4, ($t9)
/* 22AD04 801DFB14 3C01801E */  lui   $at, %hi(D_801E5654) # $at, 0x801e
/* 22AD08 801DFB18 C4205654 */  lwc1  $f0, %lo(D_801E5654)($at)
/* 22AD0C 801DFB1C 8D8D0014 */  lw    $t5, 0x14($t4)
/* 22AD10 801DFB20 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 22AD14 801DFB24 44811000 */  mtc1  $at, $f2
/* 22AD18 801DFB28 E5A00044 */  swc1  $f0, 0x44($t5)
/* 22AD1C 801DFB2C 8C6E0000 */  lw    $t6, ($v1)
/* 22AD20 801DFB30 8DCF0000 */  lw    $t7, ($t6)
/* 22AD24 801DFB34 000FC080 */  sll   $t8, $t7, 2
/* 22AD28 801DFB38 0058C821 */  addu  $t9, $v0, $t8
/* 22AD2C 801DFB3C 8F2C0000 */  lw    $t4, ($t9)
/* 22AD30 801DFB40 8D8D0014 */  lw    $t5, 0x14($t4)
/* 22AD34 801DFB44 E5A00048 */  swc1  $f0, 0x48($t5)
/* 22AD38 801DFB48 8C6E0000 */  lw    $t6, ($v1)
/* 22AD3C 801DFB4C 8DCF0000 */  lw    $t7, ($t6)
/* 22AD40 801DFB50 000FC080 */  sll   $t8, $t7, 2
/* 22AD44 801DFB54 0058C821 */  addu  $t9, $v0, $t8
/* 22AD48 801DFB58 8F2C0000 */  lw    $t4, ($t9)
/* 22AD4C 801DFB5C 8D8D0018 */  lw    $t5, 0x18($t4)
/* 22AD50 801DFB60 E5A00044 */  swc1  $f0, 0x44($t5)
/* 22AD54 801DFB64 8C6E0000 */  lw    $t6, ($v1)
/* 22AD58 801DFB68 8DCF0000 */  lw    $t7, ($t6)
/* 22AD5C 801DFB6C 000FC080 */  sll   $t8, $t7, 2
/* 22AD60 801DFB70 0058C821 */  addu  $t9, $v0, $t8
/* 22AD64 801DFB74 8F2C0000 */  lw    $t4, ($t9)
/* 22AD68 801DFB78 8D8D0018 */  lw    $t5, 0x18($t4)
/* 22AD6C 801DFB7C E5A00048 */  swc1  $f0, 0x48($t5)
/* 22AD70 801DFB80 8C6E0000 */  lw    $t6, ($v1)
/* 22AD74 801DFB84 8DCF0000 */  lw    $t7, ($t6)
/* 22AD78 801DFB88 000FC080 */  sll   $t8, $t7, 2
/* 22AD7C 801DFB8C 0058C821 */  addu  $t9, $v0, $t8
/* 22AD80 801DFB90 8F2C0000 */  lw    $t4, ($t9)
/* 22AD84 801DFB94 8D8D0020 */  lw    $t5, 0x20($t4)
/* 22AD88 801DFB98 E5A00044 */  swc1  $f0, 0x44($t5)
/* 22AD8C 801DFB9C 8C6E0000 */  lw    $t6, ($v1)
/* 22AD90 801DFBA0 8DCF0000 */  lw    $t7, ($t6)
/* 22AD94 801DFBA4 000FC080 */  sll   $t8, $t7, 2
/* 22AD98 801DFBA8 0058C821 */  addu  $t9, $v0, $t8
/* 22AD9C 801DFBAC 8F2C0000 */  lw    $t4, ($t9)
/* 22ADA0 801DFBB0 8D8D0020 */  lw    $t5, 0x20($t4)
/* 22ADA4 801DFBB4 E5A00048 */  swc1  $f0, 0x48($t5)
/* 22ADA8 801DFBB8 8C6E0000 */  lw    $t6, ($v1)
/* 22ADAC 801DFBBC 8DCF0000 */  lw    $t7, ($t6)
/* 22ADB0 801DFBC0 000FC080 */  sll   $t8, $t7, 2
/* 22ADB4 801DFBC4 0058C821 */  addu  $t9, $v0, $t8
/* 22ADB8 801DFBC8 8F2C0000 */  lw    $t4, ($t9)
/* 22ADBC 801DFBCC 8D8D0024 */  lw    $t5, 0x24($t4)
/* 22ADC0 801DFBD0 E5A00044 */  swc1  $f0, 0x44($t5)
/* 22ADC4 801DFBD4 8C6E0000 */  lw    $t6, ($v1)
/* 22ADC8 801DFBD8 8DCF0000 */  lw    $t7, ($t6)
/* 22ADCC 801DFBDC 000FC080 */  sll   $t8, $t7, 2
/* 22ADD0 801DFBE0 0058C821 */  addu  $t9, $v0, $t8
/* 22ADD4 801DFBE4 8F2C0000 */  lw    $t4, ($t9)
/* 22ADD8 801DFBE8 8D8D0024 */  lw    $t5, 0x24($t4)
/* 22ADDC 801DFBEC E5A00048 */  swc1  $f0, 0x48($t5)
/* 22ADE0 801DFBF0 8C6E0000 */  lw    $t6, ($v1)
/* 22ADE4 801DFBF4 8DCF0000 */  lw    $t7, ($t6)
/* 22ADE8 801DFBF8 000FC080 */  sll   $t8, $t7, 2
/* 22ADEC 801DFBFC 0058C821 */  addu  $t9, $v0, $t8
/* 22ADF0 801DFC00 8F2C0000 */  lw    $t4, ($t9)
/* 22ADF4 801DFC04 8D8D002C */  lw    $t5, 0x2c($t4)
/* 22ADF8 801DFC08 E5A00044 */  swc1  $f0, 0x44($t5)
/* 22ADFC 801DFC0C 8C6E0000 */  lw    $t6, ($v1)
/* 22AE00 801DFC10 8DCF0000 */  lw    $t7, ($t6)
/* 22AE04 801DFC14 000FC080 */  sll   $t8, $t7, 2
/* 22AE08 801DFC18 0058C821 */  addu  $t9, $v0, $t8
/* 22AE0C 801DFC1C 8F2C0000 */  lw    $t4, ($t9)
/* 22AE10 801DFC20 8D8D002C */  lw    $t5, 0x2c($t4)
/* 22AE14 801DFC24 E5A00048 */  swc1  $f0, 0x48($t5)
/* 22AE18 801DFC28 8C6E0000 */  lw    $t6, ($v1)
/* 22AE1C 801DFC2C 8DCF0000 */  lw    $t7, ($t6)
/* 22AE20 801DFC30 000FC080 */  sll   $t8, $t7, 2
/* 22AE24 801DFC34 0058C821 */  addu  $t9, $v0, $t8
/* 22AE28 801DFC38 8F2C0000 */  lw    $t4, ($t9)
/* 22AE2C 801DFC3C 8D8D0030 */  lw    $t5, 0x30($t4)
/* 22AE30 801DFC40 E5A00044 */  swc1  $f0, 0x44($t5)
/* 22AE34 801DFC44 8C6E0000 */  lw    $t6, ($v1)
/* 22AE38 801DFC48 8DCF0000 */  lw    $t7, ($t6)
/* 22AE3C 801DFC4C 000FC080 */  sll   $t8, $t7, 2
/* 22AE40 801DFC50 0058C821 */  addu  $t9, $v0, $t8
/* 22AE44 801DFC54 8F2C0000 */  lw    $t4, ($t9)
/* 22AE48 801DFC58 8D8D0030 */  lw    $t5, 0x30($t4)
/* 22AE4C 801DFC5C E5A00048 */  swc1  $f0, 0x48($t5)
/* 22AE50 801DFC60 8C6E0000 */  lw    $t6, ($v1)
/* 22AE54 801DFC64 8DC40000 */  lw    $a0, ($t6)
/* 22AE58 801DFC68 100000C2 */  b     .L801DFF74_ovl17
/* 22AE5C 801DFC6C 00042080 */   sll   $a0, $a0, 2
.L801DFC70_ovl17:
/* 22AE60 801DFC70 1440005B */  bnez  $v0, .L801DFDE0_ovl17
/* 22AE64 801DFC74 3C02800E */   lui   $v0, %hi(D_800DFBD0) # $v0, 0x800e
/* 22AE68 801DFC78 2442FBD0 */  addiu $v0, %lo(D_800DFBD0) # addiu $v0, $v0, -0x430
/* 22AE6C 801DFC7C 00447821 */  addu  $t7, $v0, $a0
/* 22AE70 801DFC80 8DF80000 */  lw    $t8, ($t7)
/* 22AE74 801DFC84 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 22AE78 801DFC88 44817000 */  mtc1  $at, $f14
/* 22AE7C 801DFC8C 8F190014 */  lw    $t9, 0x14($t8)
/* 22AE80 801DFC90 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 22AE84 801DFC94 44811000 */  mtc1  $at, $f2
/* 22AE88 801DFC98 E72E0044 */  swc1  $f14, 0x44($t9)
/* 22AE8C 801DFC9C 8C6C0000 */  lw    $t4, ($v1)
/* 22AE90 801DFCA0 8D8D0000 */  lw    $t5, ($t4)
/* 22AE94 801DFCA4 000D7080 */  sll   $t6, $t5, 2
/* 22AE98 801DFCA8 004E7821 */  addu  $t7, $v0, $t6
/* 22AE9C 801DFCAC 8DF80000 */  lw    $t8, ($t7)
/* 22AEA0 801DFCB0 8F190014 */  lw    $t9, 0x14($t8)
/* 22AEA4 801DFCB4 E72E0048 */  swc1  $f14, 0x48($t9)
/* 22AEA8 801DFCB8 8C6C0000 */  lw    $t4, ($v1)
/* 22AEAC 801DFCBC 8D8D0000 */  lw    $t5, ($t4)
/* 22AEB0 801DFCC0 000D7080 */  sll   $t6, $t5, 2
/* 22AEB4 801DFCC4 004E7821 */  addu  $t7, $v0, $t6
/* 22AEB8 801DFCC8 8DF80000 */  lw    $t8, ($t7)
/* 22AEBC 801DFCCC 8F190018 */  lw    $t9, 0x18($t8)
/* 22AEC0 801DFCD0 E72E0044 */  swc1  $f14, 0x44($t9)
/* 22AEC4 801DFCD4 8C6C0000 */  lw    $t4, ($v1)
/* 22AEC8 801DFCD8 8D8D0000 */  lw    $t5, ($t4)
/* 22AECC 801DFCDC 000D7080 */  sll   $t6, $t5, 2
/* 22AED0 801DFCE0 004E7821 */  addu  $t7, $v0, $t6
/* 22AED4 801DFCE4 8DF80000 */  lw    $t8, ($t7)
/* 22AED8 801DFCE8 8F190018 */  lw    $t9, 0x18($t8)
/* 22AEDC 801DFCEC E72E0048 */  swc1  $f14, 0x48($t9)
/* 22AEE0 801DFCF0 8C6C0000 */  lw    $t4, ($v1)
/* 22AEE4 801DFCF4 8D8D0000 */  lw    $t5, ($t4)
/* 22AEE8 801DFCF8 000D7080 */  sll   $t6, $t5, 2
/* 22AEEC 801DFCFC 004E7821 */  addu  $t7, $v0, $t6
/* 22AEF0 801DFD00 8DF80000 */  lw    $t8, ($t7)
/* 22AEF4 801DFD04 8F190020 */  lw    $t9, 0x20($t8)
/* 22AEF8 801DFD08 E72E0044 */  swc1  $f14, 0x44($t9)
/* 22AEFC 801DFD0C 8C6C0000 */  lw    $t4, ($v1)
/* 22AF00 801DFD10 8D8D0000 */  lw    $t5, ($t4)
/* 22AF04 801DFD14 000D7080 */  sll   $t6, $t5, 2
/* 22AF08 801DFD18 004E7821 */  addu  $t7, $v0, $t6
/* 22AF0C 801DFD1C 8DF80000 */  lw    $t8, ($t7)
/* 22AF10 801DFD20 8F190020 */  lw    $t9, 0x20($t8)
/* 22AF14 801DFD24 E72E0048 */  swc1  $f14, 0x48($t9)
/* 22AF18 801DFD28 8C6C0000 */  lw    $t4, ($v1)
/* 22AF1C 801DFD2C 8D8D0000 */  lw    $t5, ($t4)
/* 22AF20 801DFD30 000D7080 */  sll   $t6, $t5, 2
/* 22AF24 801DFD34 004E7821 */  addu  $t7, $v0, $t6
/* 22AF28 801DFD38 8DF80000 */  lw    $t8, ($t7)
/* 22AF2C 801DFD3C 8F190024 */  lw    $t9, 0x24($t8)
/* 22AF30 801DFD40 E72E0044 */  swc1  $f14, 0x44($t9)
/* 22AF34 801DFD44 8C6C0000 */  lw    $t4, ($v1)
/* 22AF38 801DFD48 8D8D0000 */  lw    $t5, ($t4)
/* 22AF3C 801DFD4C 000D7080 */  sll   $t6, $t5, 2
/* 22AF40 801DFD50 004E7821 */  addu  $t7, $v0, $t6
/* 22AF44 801DFD54 8DF80000 */  lw    $t8, ($t7)
/* 22AF48 801DFD58 8F190024 */  lw    $t9, 0x24($t8)
/* 22AF4C 801DFD5C E72E0048 */  swc1  $f14, 0x48($t9)
/* 22AF50 801DFD60 8C6C0000 */  lw    $t4, ($v1)
/* 22AF54 801DFD64 8D8D0000 */  lw    $t5, ($t4)
/* 22AF58 801DFD68 000D7080 */  sll   $t6, $t5, 2
/* 22AF5C 801DFD6C 004E7821 */  addu  $t7, $v0, $t6
/* 22AF60 801DFD70 8DF80000 */  lw    $t8, ($t7)
/* 22AF64 801DFD74 8F19002C */  lw    $t9, 0x2c($t8)
/* 22AF68 801DFD78 E72E0044 */  swc1  $f14, 0x44($t9)
/* 22AF6C 801DFD7C 8C6C0000 */  lw    $t4, ($v1)
/* 22AF70 801DFD80 8D8D0000 */  lw    $t5, ($t4)
/* 22AF74 801DFD84 000D7080 */  sll   $t6, $t5, 2
/* 22AF78 801DFD88 004E7821 */  addu  $t7, $v0, $t6
/* 22AF7C 801DFD8C 8DF80000 */  lw    $t8, ($t7)
/* 22AF80 801DFD90 8F19002C */  lw    $t9, 0x2c($t8)
/* 22AF84 801DFD94 E72E0048 */  swc1  $f14, 0x48($t9)
/* 22AF88 801DFD98 8C6C0000 */  lw    $t4, ($v1)
/* 22AF8C 801DFD9C 8D8D0000 */  lw    $t5, ($t4)
/* 22AF90 801DFDA0 000D7080 */  sll   $t6, $t5, 2
/* 22AF94 801DFDA4 004E7821 */  addu  $t7, $v0, $t6
/* 22AF98 801DFDA8 8DF80000 */  lw    $t8, ($t7)
/* 22AF9C 801DFDAC 8F190030 */  lw    $t9, 0x30($t8)
/* 22AFA0 801DFDB0 E72E0044 */  swc1  $f14, 0x44($t9)
/* 22AFA4 801DFDB4 8C6C0000 */  lw    $t4, ($v1)
/* 22AFA8 801DFDB8 8D8D0000 */  lw    $t5, ($t4)
/* 22AFAC 801DFDBC 000D7080 */  sll   $t6, $t5, 2
/* 22AFB0 801DFDC0 004E7821 */  addu  $t7, $v0, $t6
/* 22AFB4 801DFDC4 8DF80000 */  lw    $t8, ($t7)
/* 22AFB8 801DFDC8 8F190030 */  lw    $t9, 0x30($t8)
/* 22AFBC 801DFDCC E72E0048 */  swc1  $f14, 0x48($t9)
/* 22AFC0 801DFDD0 8C6C0000 */  lw    $t4, ($v1)
/* 22AFC4 801DFDD4 8D840000 */  lw    $a0, ($t4)
/* 22AFC8 801DFDD8 10000066 */  b     .L801DFF74_ovl17
/* 22AFCC 801DFDDC 00042080 */   sll   $a0, $a0, 2
.L801DFDE0_ovl17:
/* 22AFD0 801DFDE0 3C02800E */  lui   $v0, %hi(D_800DFBD0) # $v0, 0x800e
/* 22AFD4 801DFDE4 2442FBD0 */  addiu $v0, %lo(D_800DFBD0) # addiu $v0, $v0, -0x430
/* 22AFD8 801DFDE8 00446821 */  addu  $t5, $v0, $a0
/* 22AFDC 801DFDEC 8DAE0000 */  lw    $t6, ($t5)
/* 22AFE0 801DFDF0 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 22AFE4 801DFDF4 44811000 */  mtc1  $at, $f2
/* 22AFE8 801DFDF8 8DCF0014 */  lw    $t7, 0x14($t6)
/* 22AFEC 801DFDFC E5E20044 */  swc1  $f2, 0x44($t7)
/* 22AFF0 801DFE00 8C780000 */  lw    $t8, ($v1)
/* 22AFF4 801DFE04 8F190000 */  lw    $t9, ($t8)
/* 22AFF8 801DFE08 00196080 */  sll   $t4, $t9, 2
/* 22AFFC 801DFE0C 004C6821 */  addu  $t5, $v0, $t4
/* 22B000 801DFE10 8DAE0000 */  lw    $t6, ($t5)
/* 22B004 801DFE14 8DCF0014 */  lw    $t7, 0x14($t6)
/* 22B008 801DFE18 E5E20048 */  swc1  $f2, 0x48($t7)
/* 22B00C 801DFE1C 8C780000 */  lw    $t8, ($v1)
/* 22B010 801DFE20 8F190000 */  lw    $t9, ($t8)
/* 22B014 801DFE24 00196080 */  sll   $t4, $t9, 2
/* 22B018 801DFE28 004C6821 */  addu  $t5, $v0, $t4
/* 22B01C 801DFE2C 8DAE0000 */  lw    $t6, ($t5)
/* 22B020 801DFE30 8DCF0018 */  lw    $t7, 0x18($t6)
/* 22B024 801DFE34 E5E20044 */  swc1  $f2, 0x44($t7)
/* 22B028 801DFE38 8C780000 */  lw    $t8, ($v1)
/* 22B02C 801DFE3C 8F190000 */  lw    $t9, ($t8)
/* 22B030 801DFE40 00196080 */  sll   $t4, $t9, 2
/* 22B034 801DFE44 004C6821 */  addu  $t5, $v0, $t4
/* 22B038 801DFE48 8DAE0000 */  lw    $t6, ($t5)
/* 22B03C 801DFE4C 8DCF0018 */  lw    $t7, 0x18($t6)
/* 22B040 801DFE50 E5E20048 */  swc1  $f2, 0x48($t7)
/* 22B044 801DFE54 8C780000 */  lw    $t8, ($v1)
/* 22B048 801DFE58 8F190000 */  lw    $t9, ($t8)
/* 22B04C 801DFE5C 00196080 */  sll   $t4, $t9, 2
/* 22B050 801DFE60 004C6821 */  addu  $t5, $v0, $t4
/* 22B054 801DFE64 8DAE0000 */  lw    $t6, ($t5)
/* 22B058 801DFE68 8DCF0020 */  lw    $t7, 0x20($t6)
/* 22B05C 801DFE6C E5E20044 */  swc1  $f2, 0x44($t7)
/* 22B060 801DFE70 8C780000 */  lw    $t8, ($v1)
/* 22B064 801DFE74 8F190000 */  lw    $t9, ($t8)
/* 22B068 801DFE78 00196080 */  sll   $t4, $t9, 2
/* 22B06C 801DFE7C 004C6821 */  addu  $t5, $v0, $t4
/* 22B070 801DFE80 8DAE0000 */  lw    $t6, ($t5)
/* 22B074 801DFE84 8DCF0020 */  lw    $t7, 0x20($t6)
/* 22B078 801DFE88 E5E20048 */  swc1  $f2, 0x48($t7)
/* 22B07C 801DFE8C 8C780000 */  lw    $t8, ($v1)
/* 22B080 801DFE90 8F190000 */  lw    $t9, ($t8)
/* 22B084 801DFE94 00196080 */  sll   $t4, $t9, 2
/* 22B088 801DFE98 004C6821 */  addu  $t5, $v0, $t4
/* 22B08C 801DFE9C 8DAE0000 */  lw    $t6, ($t5)
/* 22B090 801DFEA0 8DCF0024 */  lw    $t7, 0x24($t6)
/* 22B094 801DFEA4 E5E20044 */  swc1  $f2, 0x44($t7)
/* 22B098 801DFEA8 8C780000 */  lw    $t8, ($v1)
/* 22B09C 801DFEAC 8F190000 */  lw    $t9, ($t8)
/* 22B0A0 801DFEB0 00196080 */  sll   $t4, $t9, 2
/* 22B0A4 801DFEB4 004C6821 */  addu  $t5, $v0, $t4
/* 22B0A8 801DFEB8 8DAE0000 */  lw    $t6, ($t5)
/* 22B0AC 801DFEBC 8DCF0024 */  lw    $t7, 0x24($t6)
/* 22B0B0 801DFEC0 E5E20048 */  swc1  $f2, 0x48($t7)
/* 22B0B4 801DFEC4 8C780000 */  lw    $t8, ($v1)
/* 22B0B8 801DFEC8 8F190000 */  lw    $t9, ($t8)
/* 22B0BC 801DFECC 00196080 */  sll   $t4, $t9, 2
/* 22B0C0 801DFED0 004C6821 */  addu  $t5, $v0, $t4
/* 22B0C4 801DFED4 8DAE0000 */  lw    $t6, ($t5)
/* 22B0C8 801DFED8 8DCF002C */  lw    $t7, 0x2c($t6)
/* 22B0CC 801DFEDC E5E20044 */  swc1  $f2, 0x44($t7)
/* 22B0D0 801DFEE0 8C780000 */  lw    $t8, ($v1)
/* 22B0D4 801DFEE4 8F190000 */  lw    $t9, ($t8)
/* 22B0D8 801DFEE8 00196080 */  sll   $t4, $t9, 2
/* 22B0DC 801DFEEC 004C6821 */  addu  $t5, $v0, $t4
/* 22B0E0 801DFEF0 8DAE0000 */  lw    $t6, ($t5)
/* 22B0E4 801DFEF4 8DCF002C */  lw    $t7, 0x2c($t6)
/* 22B0E8 801DFEF8 E5E20048 */  swc1  $f2, 0x48($t7)
/* 22B0EC 801DFEFC 8C780000 */  lw    $t8, ($v1)
/* 22B0F0 801DFF00 8F190000 */  lw    $t9, ($t8)
/* 22B0F4 801DFF04 00196080 */  sll   $t4, $t9, 2
/* 22B0F8 801DFF08 004C6821 */  addu  $t5, $v0, $t4
/* 22B0FC 801DFF0C 8DAE0000 */  lw    $t6, ($t5)
/* 22B100 801DFF10 8DCF0030 */  lw    $t7, 0x30($t6)
/* 22B104 801DFF14 E5E20044 */  swc1  $f2, 0x44($t7)
/* 22B108 801DFF18 8C780000 */  lw    $t8, ($v1)
/* 22B10C 801DFF1C 8F190000 */  lw    $t9, ($t8)
/* 22B110 801DFF20 00196080 */  sll   $t4, $t9, 2
/* 22B114 801DFF24 004C6821 */  addu  $t5, $v0, $t4
/* 22B118 801DFF28 8DAE0000 */  lw    $t6, ($t5)
/* 22B11C 801DFF2C 8DCF0030 */  lw    $t7, 0x30($t6)
/* 22B120 801DFF30 E5E20048 */  swc1  $f2, 0x48($t7)
/* 22B124 801DFF34 8C660000 */  lw    $a2, ($v1)
/* 22B128 801DFF38 8CD80000 */  lw    $t8, ($a2)
/* 22B12C 801DFF3C 0018C880 */  sll   $t9, $t8, 2
/* 22B130 801DFF40 01392821 */  addu  $a1, $t1, $t9
/* 22B134 801DFF44 8CAC0000 */  lw    $t4, ($a1)
/* 22B138 801DFF48 258DFFFF */  addiu $t5, $t4, -1
/* 22B13C 801DFF4C ACAD0000 */  sw    $t5, ($a1)
/* 22B140 801DFF50 8CC40000 */  lw    $a0, ($a2)
/* 22B144 801DFF54 00042080 */  sll   $a0, $a0, 2
/* 22B148 801DFF58 01242821 */  addu  $a1, $t1, $a0
/* 22B14C 801DFF5C 8CAE0000 */  lw    $t6, ($a1)
/* 22B150 801DFF60 14EE0004 */  bne   $a3, $t6, .L801DFF74_ovl17
/* 22B154 801DFF64 00000000 */   nop   
/* 22B158 801DFF68 ACA00000 */  sw    $zero, ($a1)
/* 22B15C 801DFF6C 8CC40000 */  lw    $a0, ($a2)
/* 22B160 801DFF70 00042080 */  sll   $a0, $a0, 2
.L801DFF74_ovl17:
/* 22B164 801DFF74 3C08800F */  lui   $t0, %hi(D_800E9E20) # $t0, 0x800f
/* 22B168 801DFF78 25089E20 */  addiu $t0, %lo(D_800E9E20) # addiu $t0, $t0, -0x61e0
/* 22B16C 801DFF7C 3C01801E */  lui   $at, %hi(D_801E5658) # $at, 0x801e
/* 22B170 801DFF80 01047821 */  addu  $t7, $t0, $a0
/* 22B174 801DFF84 8DE50000 */  lw    $a1, ($t7)
/* 22B178 801DFF88 C4205658 */  lwc1  $f0, %lo(D_801E5658)($at)
/* 22B17C 801DFF8C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 22B180 801DFF90 44817000 */  mtc1  $at, $f14
/* 22B184 801DFF94 14E50055 */  bne   $a3, $a1, .L801E00EC_ovl17
/* 22B188 801DFF98 0044C021 */   addu  $t8, $v0, $a0
/* 22B18C 801DFF9C 8F190000 */  lw    $t9, ($t8)
/* 22B190 801DFFA0 8F2C0040 */  lw    $t4, 0x40($t9)
/* 22B194 801DFFA4 E5800044 */  swc1  $f0, 0x44($t4)
/* 22B198 801DFFA8 8C6D0000 */  lw    $t5, ($v1)
/* 22B19C 801DFFAC 8DAE0000 */  lw    $t6, ($t5)
/* 22B1A0 801DFFB0 000E7880 */  sll   $t7, $t6, 2
/* 22B1A4 801DFFB4 004FC021 */  addu  $t8, $v0, $t7
/* 22B1A8 801DFFB8 8F190000 */  lw    $t9, ($t8)
/* 22B1AC 801DFFBC 8F2C0040 */  lw    $t4, 0x40($t9)
/* 22B1B0 801DFFC0 E5800048 */  swc1  $f0, 0x48($t4)
/* 22B1B4 801DFFC4 8C6D0000 */  lw    $t5, ($v1)
/* 22B1B8 801DFFC8 8DAE0000 */  lw    $t6, ($t5)
/* 22B1BC 801DFFCC 000E7880 */  sll   $t7, $t6, 2
/* 22B1C0 801DFFD0 004FC021 */  addu  $t8, $v0, $t7
/* 22B1C4 801DFFD4 8F190000 */  lw    $t9, ($t8)
/* 22B1C8 801DFFD8 8F2C0044 */  lw    $t4, 0x44($t9)
/* 22B1CC 801DFFDC E5800044 */  swc1  $f0, 0x44($t4)
/* 22B1D0 801DFFE0 8C6D0000 */  lw    $t5, ($v1)
/* 22B1D4 801DFFE4 8DAE0000 */  lw    $t6, ($t5)
/* 22B1D8 801DFFE8 000E7880 */  sll   $t7, $t6, 2
/* 22B1DC 801DFFEC 004FC021 */  addu  $t8, $v0, $t7
/* 22B1E0 801DFFF0 8F190000 */  lw    $t9, ($t8)
/* 22B1E4 801DFFF4 8F2C0044 */  lw    $t4, 0x44($t9)
/* 22B1E8 801DFFF8 E5800048 */  swc1  $f0, 0x48($t4)
/* 22B1EC 801DFFFC 8C6D0000 */  lw    $t5, ($v1)
/* 22B1F0 801E0000 8DAE0000 */  lw    $t6, ($t5)
/* 22B1F4 801E0004 000E7880 */  sll   $t7, $t6, 2
/* 22B1F8 801E0008 004FC021 */  addu  $t8, $v0, $t7
/* 22B1FC 801E000C 8F190000 */  lw    $t9, ($t8)
/* 22B200 801E0010 8F2C004C */  lw    $t4, 0x4c($t9)
/* 22B204 801E0014 E5800044 */  swc1  $f0, 0x44($t4)
/* 22B208 801E0018 8C6D0000 */  lw    $t5, ($v1)
/* 22B20C 801E001C 8DAE0000 */  lw    $t6, ($t5)
/* 22B210 801E0020 000E7880 */  sll   $t7, $t6, 2
/* 22B214 801E0024 004FC021 */  addu  $t8, $v0, $t7
/* 22B218 801E0028 8F190000 */  lw    $t9, ($t8)
/* 22B21C 801E002C 8F2C004C */  lw    $t4, 0x4c($t9)
/* 22B220 801E0030 E5800048 */  swc1  $f0, 0x48($t4)
/* 22B224 801E0034 8C6D0000 */  lw    $t5, ($v1)
/* 22B228 801E0038 8DAE0000 */  lw    $t6, ($t5)
/* 22B22C 801E003C 000E7880 */  sll   $t7, $t6, 2
/* 22B230 801E0040 004FC021 */  addu  $t8, $v0, $t7
/* 22B234 801E0044 8F190000 */  lw    $t9, ($t8)
/* 22B238 801E0048 8F2C0050 */  lw    $t4, 0x50($t9)
/* 22B23C 801E004C E5800044 */  swc1  $f0, 0x44($t4)
/* 22B240 801E0050 8C6D0000 */  lw    $t5, ($v1)
/* 22B244 801E0054 8DAE0000 */  lw    $t6, ($t5)
/* 22B248 801E0058 000E7880 */  sll   $t7, $t6, 2
/* 22B24C 801E005C 004FC021 */  addu  $t8, $v0, $t7
/* 22B250 801E0060 8F190000 */  lw    $t9, ($t8)
/* 22B254 801E0064 8F2C0050 */  lw    $t4, 0x50($t9)
/* 22B258 801E0068 E5800048 */  swc1  $f0, 0x48($t4)
/* 22B25C 801E006C 8C6D0000 */  lw    $t5, ($v1)
/* 22B260 801E0070 8DAE0000 */  lw    $t6, ($t5)
/* 22B264 801E0074 000E7880 */  sll   $t7, $t6, 2
/* 22B268 801E0078 004FC021 */  addu  $t8, $v0, $t7
/* 22B26C 801E007C 8F190000 */  lw    $t9, ($t8)
/* 22B270 801E0080 8F2C0058 */  lw    $t4, 0x58($t9)
/* 22B274 801E0084 E5800044 */  swc1  $f0, 0x44($t4)
/* 22B278 801E0088 8C6D0000 */  lw    $t5, ($v1)
/* 22B27C 801E008C 8DAE0000 */  lw    $t6, ($t5)
/* 22B280 801E0090 000E7880 */  sll   $t7, $t6, 2
/* 22B284 801E0094 004FC021 */  addu  $t8, $v0, $t7
/* 22B288 801E0098 8F190000 */  lw    $t9, ($t8)
/* 22B28C 801E009C 8F2C0058 */  lw    $t4, 0x58($t9)
/* 22B290 801E00A0 E5800048 */  swc1  $f0, 0x48($t4)
/* 22B294 801E00A4 8C6D0000 */  lw    $t5, ($v1)
/* 22B298 801E00A8 8DAE0000 */  lw    $t6, ($t5)
/* 22B29C 801E00AC 000E7880 */  sll   $t7, $t6, 2
/* 22B2A0 801E00B0 004FC021 */  addu  $t8, $v0, $t7
/* 22B2A4 801E00B4 8F190000 */  lw    $t9, ($t8)
/* 22B2A8 801E00B8 8F2C005C */  lw    $t4, 0x5c($t9)
/* 22B2AC 801E00BC E5800044 */  swc1  $f0, 0x44($t4)
/* 22B2B0 801E00C0 8C6D0000 */  lw    $t5, ($v1)
/* 22B2B4 801E00C4 8DAE0000 */  lw    $t6, ($t5)
/* 22B2B8 801E00C8 000E7880 */  sll   $t7, $t6, 2
/* 22B2BC 801E00CC 004FC021 */  addu  $t8, $v0, $t7
/* 22B2C0 801E00D0 8F190000 */  lw    $t9, ($t8)
/* 22B2C4 801E00D4 8F2C005C */  lw    $t4, 0x5c($t9)
/* 22B2C8 801E00D8 E5800048 */  swc1  $f0, 0x48($t4)
/* 22B2CC 801E00DC 8C660000 */  lw    $a2, ($v1)
/* 22B2D0 801E00E0 8CC40000 */  lw    $a0, ($a2)
/* 22B2D4 801E00E4 100000B8 */  b     .L801E03C8_ovl17
/* 22B2D8 801E00E8 00042080 */   sll   $a0, $a0, 2
.L801E00EC_ovl17:
/* 22B2DC 801E00EC 14A00056 */  bnez  $a1, .L801E0248_ovl17
/* 22B2E0 801E00F0 0044C021 */   addu  $t8, $v0, $a0
/* 22B2E4 801E00F4 00446821 */  addu  $t5, $v0, $a0
/* 22B2E8 801E00F8 8DAE0000 */  lw    $t6, ($t5)
/* 22B2EC 801E00FC 8DCF0040 */  lw    $t7, 0x40($t6)
/* 22B2F0 801E0100 E5EE0044 */  swc1  $f14, 0x44($t7)
/* 22B2F4 801E0104 8C780000 */  lw    $t8, ($v1)
/* 22B2F8 801E0108 8F190000 */  lw    $t9, ($t8)
/* 22B2FC 801E010C 00196080 */  sll   $t4, $t9, 2
/* 22B300 801E0110 004C6821 */  addu  $t5, $v0, $t4
/* 22B304 801E0114 8DAE0000 */  lw    $t6, ($t5)
/* 22B308 801E0118 8DCF0040 */  lw    $t7, 0x40($t6)
/* 22B30C 801E011C E5EE0048 */  swc1  $f14, 0x48($t7)
/* 22B310 801E0120 8C780000 */  lw    $t8, ($v1)
/* 22B314 801E0124 8F190000 */  lw    $t9, ($t8)
/* 22B318 801E0128 00196080 */  sll   $t4, $t9, 2
/* 22B31C 801E012C 004C6821 */  addu  $t5, $v0, $t4
/* 22B320 801E0130 8DAE0000 */  lw    $t6, ($t5)
/* 22B324 801E0134 8DCF0044 */  lw    $t7, 0x44($t6)
/* 22B328 801E0138 E5EE0044 */  swc1  $f14, 0x44($t7)
/* 22B32C 801E013C 8C780000 */  lw    $t8, ($v1)
/* 22B330 801E0140 8F190000 */  lw    $t9, ($t8)
/* 22B334 801E0144 00196080 */  sll   $t4, $t9, 2
/* 22B338 801E0148 004C6821 */  addu  $t5, $v0, $t4
/* 22B33C 801E014C 8DAE0000 */  lw    $t6, ($t5)
/* 22B340 801E0150 8DCF0044 */  lw    $t7, 0x44($t6)
/* 22B344 801E0154 E5EE0048 */  swc1  $f14, 0x48($t7)
/* 22B348 801E0158 8C780000 */  lw    $t8, ($v1)
/* 22B34C 801E015C 8F190000 */  lw    $t9, ($t8)
/* 22B350 801E0160 00196080 */  sll   $t4, $t9, 2
/* 22B354 801E0164 004C6821 */  addu  $t5, $v0, $t4
/* 22B358 801E0168 8DAE0000 */  lw    $t6, ($t5)
/* 22B35C 801E016C 8DCF004C */  lw    $t7, 0x4c($t6)
/* 22B360 801E0170 E5EE0044 */  swc1  $f14, 0x44($t7)
/* 22B364 801E0174 8C780000 */  lw    $t8, ($v1)
/* 22B368 801E0178 8F190000 */  lw    $t9, ($t8)
/* 22B36C 801E017C 00196080 */  sll   $t4, $t9, 2
/* 22B370 801E0180 004C6821 */  addu  $t5, $v0, $t4
/* 22B374 801E0184 8DAE0000 */  lw    $t6, ($t5)
/* 22B378 801E0188 8DCF004C */  lw    $t7, 0x4c($t6)
/* 22B37C 801E018C E5EE0048 */  swc1  $f14, 0x48($t7)
/* 22B380 801E0190 8C780000 */  lw    $t8, ($v1)
/* 22B384 801E0194 8F190000 */  lw    $t9, ($t8)
/* 22B388 801E0198 00196080 */  sll   $t4, $t9, 2
/* 22B38C 801E019C 004C6821 */  addu  $t5, $v0, $t4
/* 22B390 801E01A0 8DAE0000 */  lw    $t6, ($t5)
/* 22B394 801E01A4 8DCF0050 */  lw    $t7, 0x50($t6)
/* 22B398 801E01A8 E5EE0044 */  swc1  $f14, 0x44($t7)
/* 22B39C 801E01AC 8C780000 */  lw    $t8, ($v1)
/* 22B3A0 801E01B0 8F190000 */  lw    $t9, ($t8)
/* 22B3A4 801E01B4 00196080 */  sll   $t4, $t9, 2
/* 22B3A8 801E01B8 004C6821 */  addu  $t5, $v0, $t4
/* 22B3AC 801E01BC 8DAE0000 */  lw    $t6, ($t5)
/* 22B3B0 801E01C0 8DCF0050 */  lw    $t7, 0x50($t6)
/* 22B3B4 801E01C4 E5EE0048 */  swc1  $f14, 0x48($t7)
/* 22B3B8 801E01C8 8C780000 */  lw    $t8, ($v1)
/* 22B3BC 801E01CC 8F190000 */  lw    $t9, ($t8)
/* 22B3C0 801E01D0 00196080 */  sll   $t4, $t9, 2
/* 22B3C4 801E01D4 004C6821 */  addu  $t5, $v0, $t4
/* 22B3C8 801E01D8 8DAE0000 */  lw    $t6, ($t5)
/* 22B3CC 801E01DC 8DCF0058 */  lw    $t7, 0x58($t6)
/* 22B3D0 801E01E0 E5EE0044 */  swc1  $f14, 0x44($t7)
/* 22B3D4 801E01E4 8C780000 */  lw    $t8, ($v1)
/* 22B3D8 801E01E8 8F190000 */  lw    $t9, ($t8)
/* 22B3DC 801E01EC 00196080 */  sll   $t4, $t9, 2
/* 22B3E0 801E01F0 004C6821 */  addu  $t5, $v0, $t4
/* 22B3E4 801E01F4 8DAE0000 */  lw    $t6, ($t5)
/* 22B3E8 801E01F8 8DCF0058 */  lw    $t7, 0x58($t6)
/* 22B3EC 801E01FC E5EE0048 */  swc1  $f14, 0x48($t7)
/* 22B3F0 801E0200 8C780000 */  lw    $t8, ($v1)
/* 22B3F4 801E0204 8F190000 */  lw    $t9, ($t8)
/* 22B3F8 801E0208 00196080 */  sll   $t4, $t9, 2
/* 22B3FC 801E020C 004C6821 */  addu  $t5, $v0, $t4
/* 22B400 801E0210 8DAE0000 */  lw    $t6, ($t5)
/* 22B404 801E0214 8DCF005C */  lw    $t7, 0x5c($t6)
/* 22B408 801E0218 E5EE0044 */  swc1  $f14, 0x44($t7)
/* 22B40C 801E021C 8C780000 */  lw    $t8, ($v1)
/* 22B410 801E0220 8F190000 */  lw    $t9, ($t8)
/* 22B414 801E0224 00196080 */  sll   $t4, $t9, 2
/* 22B418 801E0228 004C6821 */  addu  $t5, $v0, $t4
/* 22B41C 801E022C 8DAE0000 */  lw    $t6, ($t5)
/* 22B420 801E0230 8DCF005C */  lw    $t7, 0x5c($t6)
/* 22B424 801E0234 E5EE0048 */  swc1  $f14, 0x48($t7)
/* 22B428 801E0238 8C660000 */  lw    $a2, ($v1)
/* 22B42C 801E023C 8CC40000 */  lw    $a0, ($a2)
/* 22B430 801E0240 10000061 */  b     .L801E03C8_ovl17
/* 22B434 801E0244 00042080 */   sll   $a0, $a0, 2
.L801E0248_ovl17:
/* 22B438 801E0248 8F190000 */  lw    $t9, ($t8)
/* 22B43C 801E024C 8F2C0040 */  lw    $t4, 0x40($t9)
/* 22B440 801E0250 E5820044 */  swc1  $f2, 0x44($t4)
/* 22B444 801E0254 8C6D0000 */  lw    $t5, ($v1)
/* 22B448 801E0258 8DAE0000 */  lw    $t6, ($t5)
/* 22B44C 801E025C 000E7880 */  sll   $t7, $t6, 2
/* 22B450 801E0260 004FC021 */  addu  $t8, $v0, $t7
/* 22B454 801E0264 8F190000 */  lw    $t9, ($t8)
/* 22B458 801E0268 8F2C0040 */  lw    $t4, 0x40($t9)
/* 22B45C 801E026C E5820048 */  swc1  $f2, 0x48($t4)
/* 22B460 801E0270 8C6D0000 */  lw    $t5, ($v1)
/* 22B464 801E0274 8DAE0000 */  lw    $t6, ($t5)
/* 22B468 801E0278 000E7880 */  sll   $t7, $t6, 2
/* 22B46C 801E027C 004FC021 */  addu  $t8, $v0, $t7
/* 22B470 801E0280 8F190000 */  lw    $t9, ($t8)
/* 22B474 801E0284 8F2C0044 */  lw    $t4, 0x44($t9)
/* 22B478 801E0288 E5820044 */  swc1  $f2, 0x44($t4)
/* 22B47C 801E028C 8C6D0000 */  lw    $t5, ($v1)
/* 22B480 801E0290 8DAE0000 */  lw    $t6, ($t5)
/* 22B484 801E0294 000E7880 */  sll   $t7, $t6, 2
/* 22B488 801E0298 004FC021 */  addu  $t8, $v0, $t7
/* 22B48C 801E029C 8F190000 */  lw    $t9, ($t8)
/* 22B490 801E02A0 8F2C0044 */  lw    $t4, 0x44($t9)
/* 22B494 801E02A4 E5820048 */  swc1  $f2, 0x48($t4)
/* 22B498 801E02A8 8C6D0000 */  lw    $t5, ($v1)
/* 22B49C 801E02AC 8DAE0000 */  lw    $t6, ($t5)
/* 22B4A0 801E02B0 000E7880 */  sll   $t7, $t6, 2
/* 22B4A4 801E02B4 004FC021 */  addu  $t8, $v0, $t7
/* 22B4A8 801E02B8 8F190000 */  lw    $t9, ($t8)
/* 22B4AC 801E02BC 8F2C004C */  lw    $t4, 0x4c($t9)
/* 22B4B0 801E02C0 E5820044 */  swc1  $f2, 0x44($t4)
/* 22B4B4 801E02C4 8C6D0000 */  lw    $t5, ($v1)
/* 22B4B8 801E02C8 8DAE0000 */  lw    $t6, ($t5)
/* 22B4BC 801E02CC 000E7880 */  sll   $t7, $t6, 2
/* 22B4C0 801E02D0 004FC021 */  addu  $t8, $v0, $t7
/* 22B4C4 801E02D4 8F190000 */  lw    $t9, ($t8)
/* 22B4C8 801E02D8 8F2C004C */  lw    $t4, 0x4c($t9)
/* 22B4CC 801E02DC E5820048 */  swc1  $f2, 0x48($t4)
/* 22B4D0 801E02E0 8C6D0000 */  lw    $t5, ($v1)
/* 22B4D4 801E02E4 8DAE0000 */  lw    $t6, ($t5)
/* 22B4D8 801E02E8 000E7880 */  sll   $t7, $t6, 2
/* 22B4DC 801E02EC 004FC021 */  addu  $t8, $v0, $t7
/* 22B4E0 801E02F0 8F190000 */  lw    $t9, ($t8)
/* 22B4E4 801E02F4 8F2C0050 */  lw    $t4, 0x50($t9)
/* 22B4E8 801E02F8 E5820044 */  swc1  $f2, 0x44($t4)
/* 22B4EC 801E02FC 8C6D0000 */  lw    $t5, ($v1)
/* 22B4F0 801E0300 8DAE0000 */  lw    $t6, ($t5)
/* 22B4F4 801E0304 000E7880 */  sll   $t7, $t6, 2
/* 22B4F8 801E0308 004FC021 */  addu  $t8, $v0, $t7
/* 22B4FC 801E030C 8F190000 */  lw    $t9, ($t8)
/* 22B500 801E0310 8F2C0050 */  lw    $t4, 0x50($t9)
/* 22B504 801E0314 E5820048 */  swc1  $f2, 0x48($t4)
/* 22B508 801E0318 8C6D0000 */  lw    $t5, ($v1)
/* 22B50C 801E031C 8DAE0000 */  lw    $t6, ($t5)
/* 22B510 801E0320 000E7880 */  sll   $t7, $t6, 2
/* 22B514 801E0324 004FC021 */  addu  $t8, $v0, $t7
/* 22B518 801E0328 8F190000 */  lw    $t9, ($t8)
/* 22B51C 801E032C 8F2C0058 */  lw    $t4, 0x58($t9)
/* 22B520 801E0330 E5820044 */  swc1  $f2, 0x44($t4)
/* 22B524 801E0334 8C6D0000 */  lw    $t5, ($v1)
/* 22B528 801E0338 8DAE0000 */  lw    $t6, ($t5)
/* 22B52C 801E033C 000E7880 */  sll   $t7, $t6, 2
/* 22B530 801E0340 004FC021 */  addu  $t8, $v0, $t7
/* 22B534 801E0344 8F190000 */  lw    $t9, ($t8)
/* 22B538 801E0348 8F2C0058 */  lw    $t4, 0x58($t9)
/* 22B53C 801E034C E5820048 */  swc1  $f2, 0x48($t4)
/* 22B540 801E0350 8C6D0000 */  lw    $t5, ($v1)
/* 22B544 801E0354 8DAE0000 */  lw    $t6, ($t5)
/* 22B548 801E0358 000E7880 */  sll   $t7, $t6, 2
/* 22B54C 801E035C 004FC021 */  addu  $t8, $v0, $t7
/* 22B550 801E0360 8F190000 */  lw    $t9, ($t8)
/* 22B554 801E0364 8F2C005C */  lw    $t4, 0x5c($t9)
/* 22B558 801E0368 E5820044 */  swc1  $f2, 0x44($t4)
/* 22B55C 801E036C 8C6D0000 */  lw    $t5, ($v1)
/* 22B560 801E0370 8DAE0000 */  lw    $t6, ($t5)
/* 22B564 801E0374 000E7880 */  sll   $t7, $t6, 2
/* 22B568 801E0378 004FC021 */  addu  $t8, $v0, $t7
/* 22B56C 801E037C 8F190000 */  lw    $t9, ($t8)
/* 22B570 801E0380 8F2C005C */  lw    $t4, 0x5c($t9)
/* 22B574 801E0384 E5820048 */  swc1  $f2, 0x48($t4)
/* 22B578 801E0388 8C660000 */  lw    $a2, ($v1)
/* 22B57C 801E038C 8CCD0000 */  lw    $t5, ($a2)
/* 22B580 801E0390 000D7080 */  sll   $t6, $t5, 2
/* 22B584 801E0394 010E2821 */  addu  $a1, $t0, $t6
/* 22B588 801E0398 8CAF0000 */  lw    $t7, ($a1)
/* 22B58C 801E039C 25F8FFFF */  addiu $t8, $t7, -1
/* 22B590 801E03A0 ACB80000 */  sw    $t8, ($a1)
/* 22B594 801E03A4 8CC40000 */  lw    $a0, ($a2)
/* 22B598 801E03A8 00042080 */  sll   $a0, $a0, 2
/* 22B59C 801E03AC 01042821 */  addu  $a1, $t0, $a0
/* 22B5A0 801E03B0 8CB90000 */  lw    $t9, ($a1)
/* 22B5A4 801E03B4 54F90005 */  bnel  $a3, $t9, .L801E03CC_ovl17
/* 22B5A8 801E03B8 01246021 */   addu  $t4, $t1, $a0
/* 22B5AC 801E03BC ACA00000 */  sw    $zero, ($a1)
/* 22B5B0 801E03C0 8CC40000 */  lw    $a0, ($a2)
/* 22B5B4 801E03C4 00042080 */  sll   $a0, $a0, 2
.L801E03C8_ovl17:
/* 22B5B8 801E03C8 01246021 */  addu  $t4, $t1, $a0
.L801E03CC_ovl17:
/* 22B5BC 801E03CC 8D820000 */  lw    $v0, ($t4)
/* 22B5C0 801E03D0 10E20013 */  beq   $a3, $v0, .L801E0420_ovl17
/* 22B5C4 801E03D4 01046821 */   addu  $t5, $t0, $a0
/* 22B5C8 801E03D8 8DAE0000 */  lw    $t6, ($t5)
/* 22B5CC 801E03DC 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22B5D0 801E03E0 10EE000F */  beq   $a3, $t6, .L801E0420_ovl17
/* 22B5D4 801E03E4 00000000 */   nop   
/* 22B5D8 801E03E8 C4207170 */  lwc1  $f0, %lo(D_800D7170)($at)
/* 22B5DC 801E03EC 3C01801E */  lui   $at, %hi(D_801E565C) # $at, 0x801e
/* 22B5E0 801E03F0 C424565C */  lwc1  $f4, %lo(D_801E565C)($at)
/* 22B5E4 801E03F4 3C0A801E */  lui   $t2, %hi(D_801E5700) # $t2, 0x801e
/* 22B5E8 801E03F8 254A5700 */  addiu $t2, %lo(D_801E5700) # addiu $t2, $t2, 0x5700
/* 22B5EC 801E03FC 46040182 */  mul.s $f6, $f0, $f4
/* 22B5F0 801E0400 3C01801E */  lui   $at, %hi(func_801E5660) # $at, 0x801e
/* 22B5F4 801E0404 3C0B801E */  lui   $t3, %hi(D_801E5704) # $t3, 0x801e
/* 22B5F8 801E0408 256B5704 */  addiu $t3, %lo(D_801E5704) # addiu $t3, $t3, 0x5704
/* 22B5FC 801E040C E5460000 */  swc1  $f6, ($t2)
/* 22B600 801E0410 C4285660 */  lwc1  $f8, %lo(func_801E5660)($at)
/* 22B604 801E0414 46080282 */  mul.s $f10, $f0, $f8
/* 22B608 801E0418 1000002D */  b     .L801E04D0_ovl17
/* 22B60C 801E041C E56A0000 */   swc1  $f10, ($t3)
.L801E0420_ovl17:
/* 22B610 801E0420 14E20018 */  bne   $a3, $v0, .L801E0484_ovl17
/* 22B614 801E0424 01047821 */   addu  $t7, $t0, $a0
/* 22B618 801E0428 8DF80000 */  lw    $t8, ($t7)
/* 22B61C 801E042C 3C01801E */  lui   $at, %hi(D_801E5664) # $at, 0x801e
/* 22B620 801E0430 14F80014 */  bne   $a3, $t8, .L801E0484_ovl17
/* 22B624 801E0434 00000000 */   nop   
/* 22B628 801E0438 C4225664 */  lwc1  $f2, %lo(D_801E5664)($at)
/* 22B62C 801E043C 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22B630 801E0440 C4207170 */  lwc1  $f0, %lo(D_800D7170)($at)
/* 22B634 801E0444 3C01801E */  lui   $at, %hi(D_801E5668) # $at, 0x801e
/* 22B638 801E0448 C4305668 */  lwc1  $f16, %lo(D_801E5668)($at)
/* 22B63C 801E044C 3C0A801E */  lui   $t2, %hi(D_801E5700) # $t2, 0x801e
/* 22B640 801E0450 254A5700 */  addiu $t2, %lo(D_801E5700) # addiu $t2, $t2, 0x5700
/* 22B644 801E0454 46100482 */  mul.s $f18, $f0, $f16
/* 22B648 801E0458 3C01801E */  lui   $at, %hi(D_801E566C) # $at, 0x801e
/* 22B64C 801E045C 3C0B801E */  lui   $t3, %hi(D_801E5704) # $t3, 0x801e
/* 22B650 801E0460 256B5704 */  addiu $t3, %lo(D_801E5704) # addiu $t3, $t3, 0x5704
/* 22B654 801E0464 46029102 */  mul.s $f4, $f18, $f2
/* 22B658 801E0468 E5440000 */  swc1  $f4, ($t2)
/* 22B65C 801E046C C426566C */  lwc1  $f6, %lo(D_801E566C)($at)
/* 22B660 801E0470 46060202 */  mul.s $f8, $f0, $f6
/* 22B664 801E0474 00000000 */  nop   
/* 22B668 801E0478 46024282 */  mul.s $f10, $f8, $f2
/* 22B66C 801E047C 10000014 */  b     .L801E04D0_ovl17
/* 22B670 801E0480 E56A0000 */   swc1  $f10, ($t3)
.L801E0484_ovl17:
/* 22B674 801E0484 3C01801E */  lui   $at, %hi(D_801E5670) # $at, 0x801e
/* 22B678 801E0488 C4225670 */  lwc1  $f2, %lo(D_801E5670)($at)
/* 22B67C 801E048C 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22B680 801E0490 C4207170 */  lwc1  $f0, %lo(D_800D7170)($at)
/* 22B684 801E0494 3C01801E */  lui   $at, %hi(D_801E5674) # $at, 0x801e
/* 22B688 801E0498 C4305674 */  lwc1  $f16, %lo(D_801E5674)($at)
/* 22B68C 801E049C 3C0A801E */  lui   $t2, %hi(D_801E5700) # $t2, 0x801e
/* 22B690 801E04A0 254A5700 */  addiu $t2, %lo(D_801E5700) # addiu $t2, $t2, 0x5700
/* 22B694 801E04A4 46100482 */  mul.s $f18, $f0, $f16
/* 22B698 801E04A8 3C01801E */  lui   $at, %hi(D_801E5678) # $at, 0x801e
/* 22B69C 801E04AC 3C0B801E */  lui   $t3, %hi(D_801E5704) # $t3, 0x801e
/* 22B6A0 801E04B0 256B5704 */  addiu $t3, %lo(D_801E5704) # addiu $t3, $t3, 0x5704
/* 22B6A4 801E04B4 46029102 */  mul.s $f4, $f18, $f2
/* 22B6A8 801E04B8 E5440000 */  swc1  $f4, ($t2)
/* 22B6AC 801E04BC C4265678 */  lwc1  $f6, %lo(D_801E5678)($at)
/* 22B6B0 801E04C0 46060202 */  mul.s $f8, $f0, $f6
/* 22B6B4 801E04C4 00000000 */  nop   
/* 22B6B8 801E04C8 46024282 */  mul.s $f10, $f8, $f2
/* 22B6BC 801E04CC E56A0000 */  swc1  $f10, ($t3)
.L801E04D0_ovl17:
/* 22B6C0 801E04D0 8CC40000 */  lw    $a0, ($a2)
/* 22B6C4 801E04D4 3C02800E */ lui $v0, %hi(gEntityVtableIndexArray)
/* 22B6C8 801E04D8 3C05800F */  lui   $a1, %hi(D_800EA520) # $a1, 0x800f
/* 22B6CC 801E04DC 00042080 */  sll   $a0, $a0, 2
/* 22B6D0 801E04E0 00441021 */  addu  $v0, $v0, $a0
/* 22B6D4 801E04E4 8C42DC50 */ lw $v0, %lo(gEntityVtableIndexArray)($v0)
/* 22B6D8 801E04E8 24A5A520 */  addiu $a1, %lo(D_800EA520) # addiu $a1, $a1, -0x5ae0
/* 22B6DC 801E04EC 24010003 */  li    $at, 3
/* 22B6E0 801E04F0 10410004 */  beq   $v0, $at, .L801E0504_ovl17
/* 22B6E4 801E04F4 00A4C821 */   addu  $t9, $a1, $a0
/* 22B6E8 801E04F8 24010004 */  li    $at, 4
/* 22B6EC 801E04FC 14410004 */  bne   $v0, $at, .L801E0510_ovl17
/* 22B6F0 801E0500 00000000 */   nop   
.L801E0504_ovl17:
/* 22B6F4 801E0504 AF200000 */  sw    $zero, ($t9)
/* 22B6F8 801E0508 8CC40000 */  lw    $a0, ($a2)
/* 22B6FC 801E050C 00042080 */  sll   $a0, $a0, 2
.L801E0510_ovl17:
/* 22B700 801E0510 3C05800F */  lui   $a1, %hi(D_800EA520) # $a1, 0x800f
/* 22B704 801E0514 24A5A520 */  addiu $a1, %lo(D_800EA520) # addiu $a1, $a1, -0x5ae0
/* 22B708 801E0518 00A46021 */  addu  $t4, $a1, $a0
/* 22B70C 801E051C 8D820000 */  lw    $v0, ($t4)
/* 22B710 801E0520 01246821 */  addu  $t5, $t1, $a0
/* 22B714 801E0524 5840004A */  blezl $v0, .L801E0650_ovl17
/* 22B718 801E0528 3C014000 */   lui   $at, 0x4000
/* 22B71C 801E052C 8DAE0000 */  lw    $t6, ($t5)
/* 22B720 801E0530 01047821 */  addu  $t7, $t0, $a0
/* 22B724 801E0534 54EE0005 */  bnel  $a3, $t6, .L801E054C_ovl17
/* 22B728 801E0538 44829000 */   mtc1  $v0, $f18
/* 22B72C 801E053C 8DF80000 */  lw    $t8, ($t7)
/* 22B730 801E0540 50F80043 */  beql  $a3, $t8, .L801E0650_ovl17
/* 22B734 801E0544 3C014000 */   lui   $at, 0x4000
/* 22B738 801E0548 44829000 */  mtc1  $v0, $f18
.L801E054C_ovl17:
/* 22B73C 801E054C 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 22B740 801E0550 44810000 */  mtc1  $at, $f0
/* 22B744 801E0554 46809120 */  cvt.s.w $f4, $f18
/* 22B748 801E0558 C5500000 */  lwc1  $f16, ($t2)
/* 22B74C 801E055C C5720000 */  lwc1  $f18, ($t3)
/* 22B750 801E0560 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 22B754 801E0564 46002183 */  div.s $f6, $f4, $f0
/* 22B758 801E0568 46067200 */  add.s $f8, $f14, $f6
/* 22B75C 801E056C 46088282 */  mul.s $f10, $f16, $f8
/* 22B760 801E0570 E54A0000 */  swc1  $f10, ($t2)
/* 22B764 801E0574 8CD90000 */  lw    $t9, ($a2)
/* 22B768 801E0578 00196080 */  sll   $t4, $t9, 2
/* 22B76C 801E057C 00AC6821 */  addu  $t5, $a1, $t4
/* 22B770 801E0580 8DAE0000 */  lw    $t6, ($t5)
/* 22B774 801E0584 448E2000 */  mtc1  $t6, $f4
/* 22B778 801E0588 00000000 */  nop   
/* 22B77C 801E058C 468021A0 */  cvt.s.w $f6, $f4
/* 22B780 801E0590 46003403 */  div.s $f16, $f6, $f0
/* 22B784 801E0594 46107200 */  add.s $f8, $f14, $f16
/* 22B788 801E0598 44818000 */  mtc1  $at, $f16
/* 22B78C 801E059C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 22B790 801E05A0 46089282 */  mul.s $f10, $f18, $f8
/* 22B794 801E05A4 44814000 */  mtc1  $at, $f8
/* 22B798 801E05A8 E56A0000 */  swc1  $f10, ($t3)
/* 22B79C 801E05AC 8CCF0000 */  lw    $t7, ($a2)
/* 22B7A0 801E05B0 000FC080 */  sll   $t8, $t7, 2
/* 22B7A4 801E05B4 00B8C821 */  addu  $t9, $a1, $t8
/* 22B7A8 801E05B8 8F2C0000 */  lw    $t4, ($t9)
/* 22B7AC 801E05BC 448C2000 */  mtc1  $t4, $f4
/* 22B7B0 801E05C0 00000000 */  nop   
/* 22B7B4 801E05C4 468021A0 */  cvt.s.w $f6, $f4
/* 22B7B8 801E05C8 46103483 */  div.s $f18, $f6, $f16
/* 22B7BC 801E05CC 0C02BB30 */  jal   func_800AECC0
/* 22B7C0 801E05D0 46089300 */   add.s $f12, $f18, $f8
/* 22B7C4 801E05D4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22B7C8 801E05D8 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 22B7CC 801E05DC 8C6D0000 */  lw    $t5, ($v1)
/* 22B7D0 801E05E0 3C18800F */ lui $t8, %hi(D_800EA520)
/* 22B7D4 801E05E4 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 22B7D8 801E05E8 8DAE0000 */  lw    $t6, ($t5)
/* 22B7DC 801E05EC 44813000 */  mtc1  $at, $f6
/* 22B7E0 801E05F0 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 22B7E4 801E05F4 000E7880 */  sll   $t7, $t6, 2
/* 22B7E8 801E05F8 030FC021 */  addu  $t8, $t8, $t7
/* 22B7EC 801E05FC 8F18A520 */ lw $t8, %lo(D_800EA520)($t8)
/* 22B7F0 801E0600 44819000 */  mtc1  $at, $f18
/* 22B7F4 801E0604 44985000 */  mtc1  $t8, $f10
/* 22B7F8 801E0608 00000000 */  nop   
/* 22B7FC 801E060C 46805120 */  cvt.s.w $f4, $f10
/* 22B800 801E0610 46062403 */  div.s $f16, $f4, $f6
/* 22B804 801E0614 0C02BB48 */  jal   func_800AED20
/* 22B808 801E0618 46128300 */   add.s $f12, $f16, $f18
/* 22B80C 801E061C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22B810 801E0620 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 22B814 801E0624 8C790000 */  lw    $t9, ($v1)
/* 22B818 801E0628 3C0E800F */  lui   $t6, %hi(D_800EA520) # $t6, 0x800f
/* 22B81C 801E062C 25CEA520 */  addiu $t6, %lo(D_800EA520) # addiu $t6, $t6, -0x5ae0
/* 22B820 801E0630 8F2C0000 */  lw    $t4, ($t9)
/* 22B824 801E0634 000C6880 */  sll   $t5, $t4, 2
/* 22B828 801E0638 01AE1021 */  addu  $v0, $t5, $t6
/* 22B82C 801E063C 8C4F0000 */  lw    $t7, ($v0)
/* 22B830 801E0640 25F8FFFF */  addiu $t8, $t7, -1
/* 22B834 801E0644 10000011 */  b     .L801E068C_ovl17
/* 22B838 801E0648 AC580000 */   sw    $t8, ($v0)
/* 22B83C 801E064C 3C014000 */  li    $at, 0x40000000 # 2.000000
.L801E0650_ovl17:
/* 22B840 801E0650 44816000 */  mtc1  $at, $f12
/* 22B844 801E0654 0C02BB30 */  jal   func_800AECC0
/* 22B848 801E0658 00000000 */   nop   
/* 22B84C 801E065C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 22B850 801E0660 44816000 */  mtc1  $at, $f12
/* 22B854 801E0664 0C02BB48 */  jal   func_800AED20
/* 22B858 801E0668 00000000 */   nop   
/* 22B85C 801E066C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22B860 801E0670 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 22B864 801E0674 8C790000 */  lw    $t9, ($v1)
/* 22B868 801E0678 3C01800F */ lui $at, %hi(D_800EA520)
/* 22B86C 801E067C 8F2C0000 */  lw    $t4, ($t9)
/* 22B870 801E0680 000C6880 */  sll   $t5, $t4, 2
/* 22B874 801E0684 002D0821 */  addu  $at, $at, $t5
/* 22B878 801E0688 AC20A520 */ sw $zero, %lo(D_800EA520)($at)
.L801E068C_ovl17:
/* 22B87C 801E068C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22B880 801E0690 27BD0018 */  addiu $sp, $sp, 0x18
/* 22B884 801E0694 03E00008 */  jr    $ra
/* 22B888 801E0698 00000000 */   nop   

.type func_801DFABC_ovl17, @function
.size func_801DFABC_ovl17, . - func_801DFABC_ovl17

glabel func_801E069C_ovl17
/* 22B88C 801E069C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22B890 801E06A0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22B894 801E06A4 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 22B898 801E06A8 3C04800F */ lui $a0, %hi(D_800EA1A0)
/* 22B89C 801E06AC 8DC30000 */  lw    $v1, ($t6)
/* 22B8A0 801E06B0 00031880 */  sll   $v1, $v1, 2
/* 22B8A4 801E06B4 01E37821 */  addu  $t7, $t7, $v1
/* 22B8A8 801E06B8 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 22B8AC 801E06BC 00832021 */  addu  $a0, $a0, $v1
/* 22B8B0 801E06C0 8DE20078 */  lw    $v0, 0x78($t7)
/* 22B8B4 801E06C4 1040000D */  beqz  $v0, .L801E06FC_ovl17
/* 22B8B8 801E06C8 00000000 */   nop   
/* 22B8BC 801E06CC 8C84A1A0 */ lw $a0, %lo(D_800EA1A0)($a0)
/* 22B8C0 801E06D0 5C800005 */  bgtzl $a0, .L801E06E8_ovl17
/* 22B8C4 801E06D4 44843000 */   mtc1  $a0, $f6
/* 22B8C8 801E06D8 44802000 */  mtc1  $zero, $f4
/* 22B8CC 801E06DC 03E00008 */  jr    $ra
/* 22B8D0 801E06E0 E4440044 */   swc1  $f4, 0x44($v0)

/* 22B8D4 801E06E4 44843000 */  mtc1  $a0, $f6
.L801E06E8_ovl17:
/* 22B8D8 801E06E8 3C01801E */  lui   $at, %hi(D_801E567C) # $at, 0x801e
/* 22B8DC 801E06EC C42A567C */  lwc1  $f10, %lo(D_801E567C)($at)
/* 22B8E0 801E06F0 46803220 */  cvt.s.w $f8, $f6
/* 22B8E4 801E06F4 460A4402 */  mul.s $f16, $f8, $f10
/* 22B8E8 801E06F8 E4500044 */  swc1  $f16, 0x44($v0)
.L801E06FC_ovl17:
/* 22B8EC 801E06FC 03E00008 */  jr    $ra
/* 22B8F0 801E0700 00000000 */   nop   

.type func_801E069C_ovl17, @function
.size func_801E069C_ovl17, . - func_801E069C_ovl17

glabel func_801E0704_ovl17
/* 22B8F4 801E0704 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22B8F8 801E0708 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22B8FC 801E070C 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 22B900 801E0710 24080002 */  li    $t0, 2
/* 22B904 801E0714 8DCF0000 */  lw    $t7, ($t6)
/* 22B908 801E0718 000FC080 */  sll   $t8, $t7, 2
/* 22B90C 801E071C 0338C821 */  addu  $t9, $t9, $t8
/* 22B910 801E0720 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 22B914 801E0724 8F220074 */  lw    $v0, 0x74($t9)
/* 22B918 801E0728 10400002 */  beqz  $v0, .L801E0734_ovl17
/* 22B91C 801E072C 00000000 */   nop   
/* 22B920 801E0730 A0480054 */  sb    $t0, 0x54($v0)
.L801E0734_ovl17:
/* 22B924 801E0734 03E00008 */  jr    $ra
/* 22B928 801E0738 00000000 */   nop   

.type func_801E0704_ovl17, @function
.size func_801E0704_ovl17, . - func_801E0704_ovl17

glabel func_801E073C_ovl17
/* 22B92C 801E073C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22B930 801E0740 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22B934 801E0744 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 22B938 801E0748 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22B93C 801E074C 8DC30000 */  lw    $v1, ($t6)
/* 22B940 801E0750 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 22B944 801E0754 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 22B948 801E0758 00031080 */  sll   $v0, $v1, 2
/* 22B94C 801E075C 01E27821 */  addu  $t7, $t7, $v0
/* 22B950 801E0760 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 22B954 801E0764 00A22821 */  addu  $a1, $a1, $v0
/* 22B958 801E0768 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 22B95C 801E076C 8DF8007C */  lw    $t8, 0x7c($t7)
/* 22B960 801E0770 14A00003 */  bnez  $a1, .L801E0780_ovl17
/* 22B964 801E0774 AFB80048 */   sw    $t8, 0x48($sp)
/* 22B968 801E0778 100000BA */  b     .L801E0A64_ovl17
/* 22B96C 801E077C 00001025 */   move  $v0, $zero
.L801E0780_ovl17:
/* 22B970 801E0780 8CB9008C */  lw    $t9, 0x8c($a1)
/* 22B974 801E0784 00602025 */  move  $a0, $v1
/* 22B978 801E0788 17200003 */  bnez  $t9, .L801E0798_ovl17
/* 22B97C 801E078C 00000000 */   nop   
/* 22B980 801E0790 100000B4 */  b     .L801E0A64_ovl17
/* 22B984 801E0794 00001025 */   move  $v0, $zero
.L801E0798_ovl17:
/* 22B988 801E0798 0C044554 */  jal   func_80111550
/* 22B98C 801E079C AFA5004C */   sw    $a1, 0x4c($sp)
/* 22B990 801E07A0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 22B994 801E07A4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 22B998 801E07A8 3C04801E */  lui   $a0, %hi(D_801E510C) # $a0, 0x801e
/* 22B99C 801E07AC 2484510C */  addiu $a0, %lo(D_801E510C) # addiu $a0, $a0, 0x510c
/* 22B9A0 801E07B0 0C044722 */  jal   func_80111C88
/* 22B9A4 801E07B4 8D050000 */   lw    $a1, ($t0)
/* 22B9A8 801E07B8 0C0447B3 */  jal   func_80111ECC
/* 22B9AC 801E07BC 00402025 */   move  $a0, $v0
/* 22B9B0 801E07C0 0C0442C0 */  jal   func_80110B00
/* 22B9B4 801E07C4 27A40028 */   addiu $a0, $sp, 0x28
/* 22B9B8 801E07C8 10400014 */  beqz  $v0, .L801E081C_ovl17
/* 22B9BC 801E07CC 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22B9C0 801E07D0 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22B9C4 801E07D4 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22B9C8 801E07D8 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22B9CC 801E07DC 44802000 */  mtc1  $zero, $f4
/* 22B9D0 801E07E0 8D2A0000 */  lw    $t2, ($t1)
/* 22B9D4 801E07E4 8FA20034 */  lw    $v0, 0x34($sp)
/* 22B9D8 801E07E8 000A5880 */  sll   $t3, $t2, 2
/* 22B9DC 801E07EC 002B0821 */  addu  $at, $at, $t3
/* 22B9E0 801E07F0 C4267B20 */ lwc1 $f6, %lo(D_800E7B20)($at)
/* 22B9E4 801E07F4 4604303E */  c.le.s $f6, $f4
/* 22B9E8 801E07F8 00000000 */  nop   
/* 22B9EC 801E07FC 45000007 */  bc1f  .L801E081C_ovl17
/* 22B9F0 801E0800 00000000 */   nop   
/* 22B9F4 801E0804 10400005 */  beqz  $v0, .L801E081C_ovl17
/* 22B9F8 801E0808 240C0001 */   li    $t4, 1
/* 22B9FC 801E080C 00026880 */  sll   $t5, $v0, 2
/* 22BA00 801E0810 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22BA04 801E0814 002D0821 */  addu  $at, $at, $t5
/* 22BA08 801E0818 AC2C98E0 */ sw $t4, %lo(D_800E98E0)($at)
.L801E081C_ovl17:
/* 22BA0C 801E081C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22BA10 801E0820 3C18800F */ lui $t8, %hi(D_800EA1A0)
/* 22BA14 801E0824 8DC30000 */  lw    $v1, ($t6)
/* 22BA18 801E0828 00037880 */  sll   $t7, $v1, 2
/* 22BA1C 801E082C 030FC021 */  addu  $t8, $t8, $t7
/* 22BA20 801E0830 8F18A1A0 */ lw $t8, %lo(D_800EA1A0)($t8)
/* 22BA24 801E0834 2B010005 */  slti  $at, $t8, 5
/* 22BA28 801E0838 5420008A */  bnezl $at, .L801E0A64_ovl17
/* 22BA2C 801E083C 00001025 */   move  $v0, $zero
/* 22BA30 801E0840 0C044554 */  jal   func_80111550
/* 22BA34 801E0844 00602025 */   move  $a0, $v1
/* 22BA38 801E0848 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 22BA3C 801E084C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 22BA40 801E0850 8FB9004C */  lw    $t9, 0x4c($sp)
/* 22BA44 801E0854 8D050000 */  lw    $a1, ($t0)
/* 22BA48 801E0858 0C044722 */  jal   func_80111C88
/* 22BA4C 801E085C 8F24008C */   lw    $a0, 0x8c($t9)
/* 22BA50 801E0860 8FA9004C */  lw    $t1, 0x4c($sp)
/* 22BA54 801E0864 00402025 */  move  $a0, $v0
/* 22BA58 801E0868 8D2A008C */  lw    $t2, 0x8c($t1)
/* 22BA5C 801E086C 8D430008 */  lw    $v1, 8($t2)
/* 22BA60 801E0870 8C6B0004 */  lw    $t3, 4($v1)
/* 22BA64 801E0874 8FA30048 */  lw    $v1, 0x48($sp)
/* 22BA68 801E0878 15600017 */  bnez  $t3, .L801E08D8_ovl17
/* 22BA6C 801E087C 00000000 */   nop   
/* 22BA70 801E0880 10600015 */  beqz  $v1, .L801E08D8_ovl17
/* 22BA74 801E0884 00000000 */   nop   
/* 22BA78 801E0888 8C4C0024 */  lw    $t4, 0x24($v0)
/* 22BA7C 801E088C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 22BA80 801E0890 3C18800F */ lui $t8, %hi(D_800EA1A0)
/* 22BA84 801E0894 AD830008 */  sw    $v1, 8($t4)
/* 22BA88 801E0898 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 22BA8C 801E089C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 22BA90 801E08A0 44818000 */  mtc1  $at, $f16
/* 22BA94 801E08A4 8DAE0000 */  lw    $t6, ($t5)
/* 22BA98 801E08A8 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 22BA9C 801E08AC 44812000 */  mtc1  $at, $f4
/* 22BAA0 801E08B0 000E7880 */  sll   $t7, $t6, 2
/* 22BAA4 801E08B4 030FC021 */  addu  $t8, $t8, $t7
/* 22BAA8 801E08B8 8F18A1A0 */ lw $t8, %lo(D_800EA1A0)($t8)
/* 22BAAC 801E08BC 8C590024 */  lw    $t9, 0x24($v0)
/* 22BAB0 801E08C0 44984000 */  mtc1  $t8, $f8
/* 22BAB4 801E08C4 00000000 */  nop   
/* 22BAB8 801E08C8 468042A0 */  cvt.s.w $f10, $f8
/* 22BABC 801E08CC 46105482 */  mul.s $f18, $f10, $f16
/* 22BAC0 801E08D0 46049180 */  add.s $f6, $f18, $f4
/* 22BAC4 801E08D4 E7260018 */  swc1  $f6, 0x18($t9)
.L801E08D8_ovl17:
/* 22BAC8 801E08D8 0C0447B3 */  jal   func_80111ECC
/* 22BACC 801E08DC 00000000 */   nop   
/* 22BAD0 801E08E0 0C0442C0 */  jal   func_80110B00
/* 22BAD4 801E08E4 27A40028 */   addiu $a0, $sp, 0x28
/* 22BAD8 801E08E8 1040000D */  beqz  $v0, .L801E0920_ovl17
/* 22BADC 801E08EC 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22BAE0 801E08F0 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22BAE4 801E08F4 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22BAE8 801E08F8 93A8002A */  lbu   $t0, 0x2a($sp)
/* 22BAEC 801E08FC 3C01800F */ lui $at, %hi(D_800E83E0)
/* 22BAF0 801E0900 8D2A0000 */  lw    $t2, ($t1)
/* 22BAF4 801E0904 93AC002B */  lbu   $t4, 0x2b($sp)
/* 22BAF8 801E0908 8FAD004C */  lw    $t5, 0x4c($sp)
/* 22BAFC 801E090C 000A5880 */  sll   $t3, $t2, 2
/* 22BB00 801E0910 002B0821 */  addu  $at, $at, $t3
/* 22BB04 801E0914 AC2883E0 */ sw $t0, %lo(D_800E83E0)($at)
/* 22BB08 801E0918 10000009 */  b     .L801E0940_ovl17
/* 22BB0C 801E091C A1AC0043 */   sb    $t4, 0x43($t5)
.L801E0920_ovl17:
/* 22BB10 801E0920 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22BB14 801E0924 8FB9004C */  lw    $t9, 0x4c($sp)
/* 22BB18 801E0928 3C01800F */ lui $at, %hi(D_800E83E0)
/* 22BB1C 801E092C 8DCF0000 */  lw    $t7, ($t6)
/* 22BB20 801E0930 000FC080 */  sll   $t8, $t7, 2
/* 22BB24 801E0934 00380821 */  addu  $at, $at, $t8
/* 22BB28 801E0938 AC2083E0 */ sw $zero, %lo(D_800E83E0)($at)
/* 22BB2C 801E093C A3200043 */  sb    $zero, 0x43($t9)
.L801E0940_ovl17:
/* 22BB30 801E0940 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 22BB34 801E0944 C42A6E5C */  lwc1  $f10, %lo(D_800D6E5C)($at)
/* 22BB38 801E0948 44804000 */  mtc1  $zero, $f8
/* 22BB3C 801E094C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22BB40 801E0950 460A4032 */  c.eq.s $f8, $f10
/* 22BB44 801E0954 00000000 */  nop   
/* 22BB48 801E0958 45010008 */  bc1t  .L801E097C_ovl17
/* 22BB4C 801E095C 00000000 */   nop   
/* 22BB50 801E0960 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22BB54 801E0964 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22BB58 801E0968 8D2A0000 */  lw    $t2, ($t1)
/* 22BB5C 801E096C 000A4080 */  sll   $t0, $t2, 2
/* 22BB60 801E0970 00280821 */  addu  $at, $at, $t0
/* 22BB64 801E0974 0C02F047 */  jal   func_800BC11C
/* 22BB68 801E0978 C42C7B20 */ lwc1 $f12, %lo(D_800E7B20)($at)
.L801E097C_ovl17:
/* 22BB6C 801E097C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22BB70 801E0980 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22BB74 801E0984 3C04800F */ lui $a0, %hi(D_800E83E0)
/* 22BB78 801E0988 24060001 */  li    $a2, 1
/* 22BB7C 801E098C 8C620000 */  lw    $v0, ($v1)
/* 22BB80 801E0990 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22BB84 801E0994 240B0004 */  li    $t3, 4
/* 22BB88 801E0998 00021080 */  sll   $v0, $v0, 2
/* 22BB8C 801E099C 00822021 */  addu  $a0, $a0, $v0
/* 22BB90 801E09A0 8C8483E0 */ lw $a0, %lo(D_800E83E0)($a0)
/* 22BB94 801E09A4 00220821 */  addu  $at, $at, $v0
/* 22BB98 801E09A8 3C05801E */ lui $a1, %hi(func_801DDB8C_ovl17)
/* 22BB9C 801E09AC 10860006 */  beq   $a0, $a2, .L801E09C8_ovl17
/* 22BBA0 801E09B0 00000000 */   nop   
/* 22BBA4 801E09B4 24010002 */  li    $at, 2
/* 22BBA8 801E09B8 10810014 */  beq   $a0, $at, .L801E0A0C_ovl17
/* 22BBAC 801E09BC 3C05800E */   lui   $a1, %hi(D_800E7CE0) # $a1, 0x800e
/* 22BBB0 801E09C0 10000028 */  b     .L801E0A64_ovl17
/* 22BBB4 801E09C4 00001025 */   move  $v0, $zero
.L801E09C8_ovl17:
/* 22BBB8 801E09C8 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 22BBBC 801E09CC 8C6C0000 */  lw    $t4, ($v1)
/* 22BBC0 801E09D0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22BBC4 801E09D4 24A5DB8C */  addiu $a1, %lo(func_801DDB8C_ovl17) # addiu $a1, $a1, -0x2474
/* 22BBC8 801E09D8 000C6880 */  sll   $t5, $t4, 2
/* 22BBCC 801E09DC 008D2021 */  addu  $a0, $a0, $t5
/* 22BBD0 801E09E0 0C02C7B2 */  jal   assign_new_process_entry
/* 22BBD4 801E09E4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22BBD8 801E09E8 8FA20034 */  lw    $v0, 0x34($sp)
/* 22BBDC 801E09EC 240E0001 */  li    $t6, 1
/* 22BBE0 801E09F0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22BBE4 801E09F4 10400003 */  beqz  $v0, .L801E0A04_ovl17
/* 22BBE8 801E09F8 00027880 */   sll   $t7, $v0, 2
/* 22BBEC 801E09FC 002F0821 */  addu  $at, $at, $t7
/* 22BBF0 801E0A00 AC2E98E0 */ sw $t6, %lo(D_800E98E0)($at)
.L801E0A04_ovl17:
/* 22BBF4 801E0A04 10000017 */  b     .L801E0A64_ovl17
/* 22BBF8 801E0A08 24020001 */   li    $v0, 1
.L801E0A0C_ovl17:
/* 22BBFC 801E0A0C 24A57CE0 */  addiu $a1, $a1, %lo(D_800E7CE0)
/* 22BC00 801E0A10 00A2C021 */  addu  $t8, $a1, $v0
/* 22BC04 801E0A14 8F190000 */  lw    $t9, ($t8)
/* 22BC08 801E0A18 3C01800F */ lui $at, %hi(D_800EA360)
/* 22BC0C 801E0A1C 00220821 */  addu  $at, $at, $v0
/* 22BC10 801E0A20 AC39A360 */ sw $t9, %lo(D_800EA360)($at)
/* 22BC14 801E0A24 8C690000 */  lw    $t1, ($v1)
/* 22BC18 801E0A28 240401BF */  li    $a0, 447
/* 22BC1C 801E0A2C 00095080 */  sll   $t2, $t1, 2
/* 22BC20 801E0A30 00AA4021 */  addu  $t0, $a1, $t2
/* 22BC24 801E0A34 0C029D9E */  jal   play_sound
/* 22BC28 801E0A38 AD060000 */   sw    $a2, ($t0)
/* 22BC2C 801E0A3C 8FA20034 */  lw    $v0, 0x34($sp)
/* 22BC30 801E0A40 240B0001 */  li    $t3, 1
/* 22BC34 801E0A44 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22BC38 801E0A48 10400003 */  beqz  $v0, .L801E0A58_ovl17
/* 22BC3C 801E0A4C 00026080 */   sll   $t4, $v0, 2
/* 22BC40 801E0A50 002C0821 */  addu  $at, $at, $t4
/* 22BC44 801E0A54 AC2B98E0 */ sw $t3, %lo(D_800E98E0)($at)
.L801E0A58_ovl17:
/* 22BC48 801E0A58 10000002 */  b     .L801E0A64_ovl17
/* 22BC4C 801E0A5C 24020001 */   li    $v0, 1
/* 22BC50 801E0A60 00001025 */  move  $v0, $zero
.L801E0A64_ovl17:
/* 22BC54 801E0A64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22BC58 801E0A68 27BD0060 */  addiu $sp, $sp, 0x60
/* 22BC5C 801E0A6C 03E00008 */  jr    $ra
/* 22BC60 801E0A70 00000000 */   nop   

.type func_801E073C_ovl17, @function
.size func_801E073C_ovl17, . - func_801E073C_ovl17

glabel func_801E0A74_ovl17
/* 22BC64 801E0A74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22BC68 801E0A78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22BC6C 801E0A7C 24040019 */  li    $a0, 25
/* 22BC70 801E0A80 2405001E */  li    $a1, 30
/* 22BC74 801E0A84 0C02BB02 */  jal   request_track_general
/* 22BC78 801E0A88 24060050 */   li    $a2, 80
/* 22BC7C 801E0A8C 3C01800E */ lui $at, %hi(D_800E76C0)
/* 22BC80 801E0A90 00220821 */  addu  $at, $at, $v0
/* 22BC84 801E0A94 240E00FF */  li    $t6, 255
/* 22BC88 801E0A98 A02E76C0 */ sb $t6, %lo(D_800E76C0)($at)
/* 22BC8C 801E0A9C 3C01800E */ lui $at, %hi(D_800E7730)
/* 22BC90 801E0AA0 00220821 */  addu  $at, $at, $v0
/* 22BC94 801E0AA4 240F0002 */  li    $t7, 2
/* 22BC98 801E0AA8 A02F7730 */ sb $t7, %lo(D_800E7730)($at)
/* 22BC9C 801E0AAC 3C01800E */ lui $at, %hi(D_800E77A0)
/* 22BCA0 801E0AB0 0002C840 */  sll   $t9, $v0, 1
/* 22BCA4 801E0AB4 00390821 */  addu  $at, $at, $t9
/* 22BCA8 801E0AB8 24180006 */  li    $t8, 6
/* 22BCAC 801E0ABC A43877A0 */ sh $t8, %lo(D_800E77A0)($at)
/* 22BCB0 801E0AC0 3C01800E */ lui $at, %hi(D_800E7880)
/* 22BCB4 801E0AC4 00220821 */  addu  $at, $at, $v0
/* 22BCB8 801E0AC8 44800000 */  mtc1  $zero, $f0
/* 22BCBC 801E0ACC A0207880 */ sb $zero, %lo(D_800E7880)($at)
/* 22BCC0 801E0AD0 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 22BCC4 801E0AD4 00021880 */  sll   $v1, $v0, 2
/* 22BCC8 801E0AD8 00230821 */  addu  $at, $at, $v1
/* 22BCCC 801E0ADC E42025D0 */ swc1 $f0, %lo(gEntitiesNextPosXArray)($at)
/* 22BCD0 801E0AE0 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 22BCD4 801E0AE4 00230821 */  addu  $at, $at, $v1
/* 22BCD8 801E0AE8 E4202B10 */ swc1 $f0, %lo(gEntitiesPosXArray)($at)
/* 22BCDC 801E0AEC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 22BCE0 801E0AF0 00230821 */  addu  $at, $at, $v1
/* 22BCE4 801E0AF4 E4202790 */ swc1 $f0, %lo(gEntitiesNextPosYArray)($at)
/* 22BCE8 801E0AF8 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 22BCEC 801E0AFC 00230821 */  addu  $at, $at, $v1
/* 22BCF0 801E0B00 E4202CD0 */ swc1 $f0, %lo(gEntitiesPosYArray)($at)
/* 22BCF4 801E0B04 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 22BCF8 801E0B08 00230821 */  addu  $at, $at, $v1
/* 22BCFC 801E0B0C E4202950 */ swc1 $f0, %lo(gEntitiesNextPosZArray)($at)
/* 22BD00 801E0B10 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 22BD04 801E0B14 00230821 */  addu  $at, $at, $v1
/* 22BD08 801E0B18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22BD0C 801E0B1C E4202E90 */ swc1 $f0, %lo(gEntitiesPosZArray)($at)
/* 22BD10 801E0B20 3C01800F */ lui $at, %hi(D_800E8E60)
/* 22BD14 801E0B24 00230821 */  addu  $at, $at, $v1
/* 22BD18 801E0B28 24080001 */  li    $t0, 1
/* 22BD1C 801E0B2C AC288E60 */ sw $t0, %lo(D_800E8E60)($at)
/* 22BD20 801E0B30 03E00008 */  jr    $ra
/* 22BD24 801E0B34 27BD0018 */   addiu $sp, $sp, 0x18

.type func_801E0A74_ovl17, @function
.size func_801E0A74_ovl17, . - func_801E0A74_ovl17

glabel func_801E0B38_ovl17
/* 22BD28 801E0B38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 22BD2C 801E0B3C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22BD30 801E0B40 AFA40020 */  sw    $a0, 0x20($sp)
/* 22BD34 801E0B44 AFA50024 */  sw    $a1, 0x24($sp)
/* 22BD38 801E0B48 2405001E */  li    $a1, 30
/* 22BD3C 801E0B4C 2404001A */  li    $a0, 26
/* 22BD40 801E0B50 0C02BB02 */  jal   request_track_general
/* 22BD44 801E0B54 2406003C */   li    $a2, 60
/* 22BD48 801E0B58 2401FFFF */  li    $at, -1
/* 22BD4C 801E0B5C 8FAC0020 */  lw    $t4, 0x20($sp)
/* 22BD50 801E0B60 14410006 */  bne   $v0, $at, .L801E0B7C_ovl17
/* 22BD54 801E0B64 00402825 */   move  $a1, $v0
/* 22BD58 801E0B68 3C04801E */  lui   $a0, %hi(D_801E55B0) # $a0, 0x801e
/* 22BD5C 801E0B6C 0C02909C */  jal   print_error_stub
/* 22BD60 801E0B70 248455B0 */   addiu $a0, %lo(D_801E55B0) # addiu $a0, $a0, 0x55b0
/* 22BD64 801E0B74 10000058 */  b     .L801E0CD8_ovl17
/* 22BD68 801E0B78 00001025 */   move  $v0, $zero
.L801E0B7C_ovl17:
/* 22BD6C 801E0B7C 2841003C */  slti  $at, $v0, 0x3c
/* 22BD70 801E0B80 1420000A */  bnez  $at, .L801E0BAC_ovl17
/* 22BD74 801E0B84 00051880 */   sll   $v1, $a1, 2
/* 22BD78 801E0B88 3C04801E */  lui   $a0, %hi(D_801E55CC) # $a0, 0x801e
/* 22BD7C 801E0B8C 248455CC */  addiu $a0, %lo(D_801E55CC) # addiu $a0, $a0, 0x55cc
/* 22BD80 801E0B90 0C02909C */  jal   print_error_stub
/* 22BD84 801E0B94 AFA5001C */   sw    $a1, 0x1c($sp)
/* 22BD88 801E0B98 8FA5001C */  lw    $a1, 0x1c($sp)
/* 22BD8C 801E0B9C 0C02C640 */  jal   func_800B1900
/* 22BD90 801E0BA0 30A4FFFF */   andi  $a0, $a1, 0xffff
/* 22BD94 801E0BA4 1000004C */  b     .L801E0CD8_ovl17
/* 22BD98 801E0BA8 00001025 */   move  $v0, $zero
.L801E0BAC_ovl17:
/* 22BD9C 801E0BAC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22BDA0 801E0BB0 00230821 */  addu  $at, $at, $v1
/* 22BDA4 801E0BB4 AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
/* 22BDA8 801E0BB8 3C01800E */ lui $at, %hi(D_800E76C0)
/* 22BDAC 801E0BBC 00250821 */  addu  $at, $at, $a1
/* 22BDB0 801E0BC0 240E00FF */  li    $t6, 255
/* 22BDB4 801E0BC4 A02E76C0 */ sb $t6, %lo(D_800E76C0)($at)
/* 22BDB8 801E0BC8 3C01800E */ lui $at, %hi(D_800E7730)
/* 22BDBC 801E0BCC 00250821 */  addu  $at, $at, $a1
/* 22BDC0 801E0BD0 240F0004 */  li    $t7, 4
/* 22BDC4 801E0BD4 A02F7730 */ sb $t7, %lo(D_800E7730)($at)
/* 22BDC8 801E0BD8 3C01800E */ lui $at, %hi(D_800E77A0)
/* 22BDCC 801E0BDC 0005C840 */  sll   $t9, $a1, 1
/* 22BDD0 801E0BE0 00390821 */  addu  $at, $at, $t9
/* 22BDD4 801E0BE4 319800FF */  andi  $t8, $t4, 0xff
/* 22BDD8 801E0BE8 8FAD0024 */  lw    $t5, 0x24($sp)
/* 22BDDC 801E0BEC A43877A0 */ sh $t8, %lo(D_800E77A0)($at)
/* 22BDE0 801E0BF0 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 22BDE4 801E0BF4 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 22BDE8 801E0BF8 3C01800E */ lui $at, %hi(D_800E7880)
/* 22BDEC 801E0BFC 00250821 */  addu  $at, $at, $a1
/* 22BDF0 801E0C00 A02D7880 */ sb $t5, %lo(D_800E7880)($at)
/* 22BDF4 801E0C04 8C8E0000 */  lw    $t6, ($a0)
/* 22BDF8 801E0C08 3C06800E */  lui   $a2, %hi(gEntitiesNextPosXArray) # $a2, 0x800e
/* 22BDFC 801E0C0C 24C625D0 */  addiu $a2, %lo(gEntitiesNextPosXArray) # addiu $a2, $a2, 0x25d0
/* 22BE00 801E0C10 000E7880 */  sll   $t7, $t6, 2
/* 22BE04 801E0C14 00CFC021 */  addu  $t8, $a2, $t7
/* 22BE08 801E0C18 C7040000 */  lwc1  $f4, ($t8)
/* 22BE0C 801E0C1C 00C3C821 */  addu  $t9, $a2, $v1
/* 22BE10 801E0C20 3C07800E */  lui   $a3, %hi(gEntitiesPosXArray) # $a3, 0x800e
/* 22BE14 801E0C24 E7240000 */  swc1  $f4, ($t9)
/* 22BE18 801E0C28 8C8D0000 */  lw    $t5, ($a0)
/* 22BE1C 801E0C2C 24E72B10 */  addiu $a3, %lo(gEntitiesPosXArray) # addiu $a3, $a3, 0x2b10
/* 22BE20 801E0C30 00E3C021 */  addu  $t8, $a3, $v1
/* 22BE24 801E0C34 000D7080 */  sll   $t6, $t5, 2
/* 22BE28 801E0C38 00EE7821 */  addu  $t7, $a3, $t6
/* 22BE2C 801E0C3C C5E60000 */  lwc1  $f6, ($t7)
/* 22BE30 801E0C40 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 22BE34 801E0C44 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 22BE38 801E0C48 E7060000 */  swc1  $f6, ($t8)
/* 22BE3C 801E0C4C 8C990000 */  lw    $t9, ($a0)
/* 22BE40 801E0C50 01037821 */  addu  $t7, $t0, $v1
/* 22BE44 801E0C54 3C09800E */  lui   $t1, %hi(gEntitiesPosYArray) # $t1, 0x800e
/* 22BE48 801E0C58 00196880 */  sll   $t5, $t9, 2
/* 22BE4C 801E0C5C 010D7021 */  addu  $t6, $t0, $t5
/* 22BE50 801E0C60 C5C80000 */  lwc1  $f8, ($t6)
/* 22BE54 801E0C64 25292CD0 */  addiu $t1, %lo(gEntitiesPosYArray) # addiu $t1, $t1, 0x2cd0
/* 22BE58 801E0C68 01237021 */  addu  $t6, $t1, $v1
/* 22BE5C 801E0C6C E5E80000 */  swc1  $f8, ($t7)
/* 22BE60 801E0C70 8C980000 */  lw    $t8, ($a0)
/* 22BE64 801E0C74 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosZArray) # $t2, 0x800e
/* 22BE68 801E0C78 254A2950 */  addiu $t2, %lo(gEntitiesNextPosZArray) # addiu $t2, $t2, 0x2950
/* 22BE6C 801E0C7C 0018C880 */  sll   $t9, $t8, 2
/* 22BE70 801E0C80 01396821 */  addu  $t5, $t1, $t9
/* 22BE74 801E0C84 C5AA0000 */  lwc1  $f10, ($t5)
/* 22BE78 801E0C88 01436821 */  addu  $t5, $t2, $v1
/* 22BE7C 801E0C8C 3C0B800E */  lui   $t3, %hi(gEntitiesPosZArray) # $t3, 0x800e
/* 22BE80 801E0C90 E5CA0000 */  swc1  $f10, ($t6)
/* 22BE84 801E0C94 8C8F0000 */  lw    $t7, ($a0)
/* 22BE88 801E0C98 256B2E90 */  addiu $t3, %lo(gEntitiesPosZArray) # addiu $t3, $t3, 0x2e90
/* 22BE8C 801E0C9C 3C01800F */ lui $at, %hi(D_800E8E60)
/* 22BE90 801E0CA0 000FC080 */  sll   $t8, $t7, 2
/* 22BE94 801E0CA4 0158C821 */  addu  $t9, $t2, $t8
/* 22BE98 801E0CA8 C7300000 */  lwc1  $f16, ($t9)
/* 22BE9C 801E0CAC 0163C821 */  addu  $t9, $t3, $v1
/* 22BEA0 801E0CB0 00230821 */  addu  $at, $at, $v1
/* 22BEA4 801E0CB4 E5B00000 */  swc1  $f16, ($t5)
/* 22BEA8 801E0CB8 8C8E0000 */  lw    $t6, ($a0)
/* 22BEAC 801E0CBC 240D0001 */  li    $t5, 1
/* 22BEB0 801E0CC0 00A01025 */  move  $v0, $a1
/* 22BEB4 801E0CC4 000E7880 */  sll   $t7, $t6, 2
/* 22BEB8 801E0CC8 016FC021 */  addu  $t8, $t3, $t7
/* 22BEBC 801E0CCC C7120000 */  lwc1  $f18, ($t8)
/* 22BEC0 801E0CD0 E7320000 */  swc1  $f18, ($t9)
/* 22BEC4 801E0CD4 AC2D8E60 */ sw $t5, %lo(D_800E8E60)($at)
.L801E0CD8_ovl17:
/* 22BEC8 801E0CD8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22BECC 801E0CDC 27BD0020 */  addiu $sp, $sp, 0x20
/* 22BED0 801E0CE0 03E00008 */  jr    $ra
/* 22BED4 801E0CE4 00000000 */   nop   

/* 22BED8 801E0CE8 00000000 */  nop   
/* 22BEDC 801E0CEC 00000000 */  nop   
/* 22BEE0 801E0CF0 00000000 */  nop   
/* 22BEE4 801E0CF4 00000000 */  nop   
/* 22BEE8 801E0CF8 00000000 */  nop   
/* 22BEEC 801E0CFC 00000000 */  nop   


.type func_801E0B38_ovl17, @function
.size func_801E0B38_ovl17, . - func_801E0B38_ovl17
