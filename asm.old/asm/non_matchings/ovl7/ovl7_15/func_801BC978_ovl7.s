# .late_rodata
# glabel jtbl_801CE57C
# .word L801BC9E8_ovl7
# .word L801BCDF8_ovl7
# .word L801BCAEC_ovl7
# .word L801BCFB8_ovl7
# .word L801BCBF0_ovl7
# .word L801BD178_ovl7
# .word L801BCBF0_ovl7
# .word L801BD178_ovl7
# .word L801BCCF4_ovl7
# .word L801BD338_ovl7
# .word L801BCCF4_ovl7
# .word L801BD338_ovl7

# .text
glabel func_801BC978_ovl7
/* 1629E8 801BC978 27BDFE80 */  addiu $sp, $sp, -0x180
/* 1629EC 801BC97C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1629F0 801BC980 8C820000 */  lw    $v0, ($a0)
/* 1629F4 801BC984 3C0E800E */ lui $t6, %hi(D_800DD8D0)
/* 1629F8 801BC988 3C06800E */ lui $a2, %hi(D_800E0650)
/* 1629FC 801BC98C 00024880 */  sll   $t1, $v0, 2
/* 162A00 801BC990 01C97021 */  addu  $t6, $t6, $t1
/* 162A04 801BC994 8DCED8D0 */ lw $t6, %lo(D_800DD8D0)($t6)
/* 162A08 801BC998 00C93021 */  addu  $a2, $a2, $t1
/* 162A0C 801BC99C 31CF0040 */  andi  $t7, $t6, 0x40
/* 162A10 801BC9A0 55E002D5 */  bnezl $t7, .L801BD4F8_ovl7
/* 162A14 801BC9A4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 162A18 801BC9A8 8CC60650 */ lw $a2, %lo(D_800E0650)($a2)
/* 162A1C 801BC9AC AFA40180 */  sw    $a0, 0x180($sp)
/* 162A20 801BC9B0 AFA9001C */  sw    $t1, 0x1c($sp)
/* 162A24 801BC9B4 0C02AC3D */  jal   func_800AB0F4
/* 162A28 801BC9B8 AFA60178 */   sw    $a2, 0x178($sp)
/* 162A2C 801BC9BC 2458FFED */  addiu $t8, $v0, -0x13
/* 162A30 801BC9C0 2F01000C */  sltiu $at, $t8, 0xc
/* 162A34 801BC9C4 8FA60178 */  lw    $a2, 0x178($sp)
/* 162A38 801BC9C8 102002CA */  beqz  $at, .L801BD4F4_ovl7
/* 162A3C 801BC9CC 8FA9001C */   lw    $t1, 0x1c($sp)
/* 162A40 801BC9D0 0018C080 */  sll   $t8, $t8, 2
/* 162A44 801BC9D4 3C01801D */ lui $at, %hi(jtbl_801CE57C)
/* 162A48 801BC9D8 00380821 */  addu  $at, $at, $t8
/* 162A4C 801BC9DC 8C38E57C */ lw $t8, %lo(jtbl_801CE57C)($at)
/* 162A50 801BC9E0 03000008 */  jr    $t8
/* 162A54 801BC9E4 00000000 */   nop   
.L801BC9E8_ovl7:
/* 162A58 801BC9E8 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162A5C 801BC9EC 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162A60 801BC9F0 8CA20000 */  lw    $v0, ($a1)
/* 162A64 801BC9F4 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 162A68 801BC9F8 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 162A6C 801BC9FC 24590008 */  addiu $t9, $v0, 8
/* 162A70 801BCA00 ACB90000 */  sw    $t9, ($a1)
/* 162A74 801BCA04 3C0E800E */ lui $t6, %hi(gSegment4StartArray)
/* 162A78 801BCA08 01C97021 */  addu  $t6, $t6, $t1
/* 162A7C 801BCA0C AC4A0000 */  sw    $t2, ($v0)
/* 162A80 801BCA10 8DCEF4D0 */ lw $t6, %lo(gSegment4StartArray)($t6)
/* 162A84 801BCA14 10C00017 */  beqz  $a2, .L801BCA74_ovl7
/* 162A88 801BCA18 AC4E0004 */   sw    $t6, 4($v0)
/* 162A8C 801BCA1C 8CA20000 */  lw    $v0, ($a1)
/* 162A90 801BCA20 3C18DB02 */  lui   $t8, 0xdb02
/* 162A94 801BCA24 24190018 */  li    $t9, 24
/* 162A98 801BCA28 244F0008 */  addiu $t7, $v0, 8
/* 162A9C 801BCA2C ACAF0000 */  sw    $t7, ($a1)
/* 162AA0 801BCA30 AC590004 */  sw    $t9, 4($v0)
/* 162AA4 801BCA34 AC580000 */  sw    $t8, ($v0)
/* 162AA8 801BCA38 8CA20000 */  lw    $v0, ($a1)
/* 162AAC 801BCA3C 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 162AB0 801BCA40 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 162AB4 801BCA44 244E0008 */  addiu $t6, $v0, 8
/* 162AB8 801BCA48 ACAE0000 */  sw    $t6, ($a1)
/* 162ABC 801BCA4C 24D80008 */  addiu $t8, $a2, 8
/* 162AC0 801BCA50 AC580004 */  sw    $t8, 4($v0)
/* 162AC4 801BCA54 AC4F0000 */  sw    $t7, ($v0)
/* 162AC8 801BCA58 8CA20000 */  lw    $v0, ($a1)
/* 162ACC 801BCA5C 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 162AD0 801BCA60 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 162AD4 801BCA64 24590008 */  addiu $t9, $v0, 8
/* 162AD8 801BCA68 ACB90000 */  sw    $t9, ($a1)
/* 162ADC 801BCA6C AC460004 */  sw    $a2, 4($v0)
/* 162AE0 801BCA70 AC4E0000 */  sw    $t6, ($v0)
.L801BCA74_ovl7:
/* 162AE4 801BCA74 0C02AC48 */  jal   func_800AB120
/* 162AE8 801BCA78 8FA40180 */   lw    $a0, 0x180($sp)
/* 162AEC 801BCA7C 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162AF0 801BCA80 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162AF4 801BCA84 8CA20000 */  lw    $v0, ($a1)
/* 162AF8 801BCA88 3C18DB02 */  lui   $t8, 0xdb02
/* 162AFC 801BCA8C 24190018 */  li    $t9, 24
/* 162B00 801BCA90 244F0008 */  addiu $t7, $v0, 8
/* 162B04 801BCA94 ACAF0000 */  sw    $t7, ($a1)
/* 162B08 801BCA98 AC590004 */  sw    $t9, 4($v0)
/* 162B0C 801BCA9C AC580000 */  sw    $t8, ($v0)
/* 162B10 801BCAA0 8CA20000 */  lw    $v0, ($a1)
/* 162B14 801BCAA4 3C18800C */  lui   $t8, %hi(D_800BE550) # $t8, 0x800c
/* 162B18 801BCAA8 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 162B1C 801BCAAC 244E0008 */  addiu $t6, $v0, 8
/* 162B20 801BCAB0 ACAE0000 */  sw    $t6, ($a1)
/* 162B24 801BCAB4 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 162B28 801BCAB8 2718E550 */  addiu $t8, %lo(D_800BE550) # addiu $t8, $t8, -0x1ab0
/* 162B2C 801BCABC AC580004 */  sw    $t8, 4($v0)
/* 162B30 801BCAC0 AC4F0000 */  sw    $t7, ($v0)
/* 162B34 801BCAC4 8CA20000 */  lw    $v0, ($a1)
/* 162B38 801BCAC8 3C0F800C */  lui   $t7, %hi(D_800BE548) # $t7, 0x800c
/* 162B3C 801BCACC 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 162B40 801BCAD0 24590008 */  addiu $t9, $v0, 8
/* 162B44 801BCAD4 ACB90000 */  sw    $t9, ($a1)
/* 162B48 801BCAD8 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 162B4C 801BCADC 25EFE548 */  addiu $t7, %lo(D_800BE548) # addiu $t7, $t7, -0x1ab8
/* 162B50 801BCAE0 AC4F0004 */  sw    $t7, 4($v0)
/* 162B54 801BCAE4 10000283 */  b     .L801BD4F4_ovl7
/* 162B58 801BCAE8 AC4E0000 */   sw    $t6, ($v0)
.L801BCAEC_ovl7:
/* 162B5C 801BCAEC 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162B60 801BCAF0 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162B64 801BCAF4 8CA20000 */  lw    $v0, ($a1)
/* 162B68 801BCAF8 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 162B6C 801BCAFC 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 162B70 801BCB00 24580008 */  addiu $t8, $v0, 8
/* 162B74 801BCB04 ACB80000 */  sw    $t8, ($a1)
/* 162B78 801BCB08 3C19800E */ lui $t9, %hi(gSegment4StartArray)
/* 162B7C 801BCB0C 0329C821 */  addu  $t9, $t9, $t1
/* 162B80 801BCB10 AC4A0000 */  sw    $t2, ($v0)
/* 162B84 801BCB14 8F39F4D0 */ lw $t9, %lo(gSegment4StartArray)($t9)
/* 162B88 801BCB18 10C00017 */  beqz  $a2, .L801BCB78_ovl7
/* 162B8C 801BCB1C AC590004 */   sw    $t9, 4($v0)
/* 162B90 801BCB20 8CA20000 */  lw    $v0, ($a1)
/* 162B94 801BCB24 3C0FDB02 */  lui   $t7, 0xdb02
/* 162B98 801BCB28 24180018 */  li    $t8, 24
/* 162B9C 801BCB2C 244E0008 */  addiu $t6, $v0, 8
/* 162BA0 801BCB30 ACAE0000 */  sw    $t6, ($a1)
/* 162BA4 801BCB34 AC580004 */  sw    $t8, 4($v0)
/* 162BA8 801BCB38 AC4F0000 */  sw    $t7, ($v0)
/* 162BAC 801BCB3C 8CA20000 */  lw    $v0, ($a1)
/* 162BB0 801BCB40 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 162BB4 801BCB44 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 162BB8 801BCB48 24590008 */  addiu $t9, $v0, 8
/* 162BBC 801BCB4C ACB90000 */  sw    $t9, ($a1)
/* 162BC0 801BCB50 24CF0008 */  addiu $t7, $a2, 8
/* 162BC4 801BCB54 AC4F0004 */  sw    $t7, 4($v0)
/* 162BC8 801BCB58 AC4E0000 */  sw    $t6, ($v0)
/* 162BCC 801BCB5C 8CA20000 */  lw    $v0, ($a1)
/* 162BD0 801BCB60 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 162BD4 801BCB64 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 162BD8 801BCB68 24580008 */  addiu $t8, $v0, 8
/* 162BDC 801BCB6C ACB80000 */  sw    $t8, ($a1)
/* 162BE0 801BCB70 AC460004 */  sw    $a2, 4($v0)
/* 162BE4 801BCB74 AC590000 */  sw    $t9, ($v0)
.L801BCB78_ovl7:
/* 162BE8 801BCB78 0C02AC7C */  jal   func_800AB1F0
/* 162BEC 801BCB7C 8FA40180 */   lw    $a0, 0x180($sp)
/* 162BF0 801BCB80 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162BF4 801BCB84 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162BF8 801BCB88 8CA20000 */  lw    $v0, ($a1)
/* 162BFC 801BCB8C 3C0FDB02 */  lui   $t7, 0xdb02
/* 162C00 801BCB90 24180018 */  li    $t8, 24
/* 162C04 801BCB94 244E0008 */  addiu $t6, $v0, 8
/* 162C08 801BCB98 ACAE0000 */  sw    $t6, ($a1)
/* 162C0C 801BCB9C AC580004 */  sw    $t8, 4($v0)
/* 162C10 801BCBA0 AC4F0000 */  sw    $t7, ($v0)
/* 162C14 801BCBA4 8CA20000 */  lw    $v0, ($a1)
/* 162C18 801BCBA8 3C0F800C */  lui   $t7, %hi(D_800BE550) # $t7, 0x800c
/* 162C1C 801BCBAC 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 162C20 801BCBB0 24590008 */  addiu $t9, $v0, 8
/* 162C24 801BCBB4 ACB90000 */  sw    $t9, ($a1)
/* 162C28 801BCBB8 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 162C2C 801BCBBC 25EFE550 */  addiu $t7, %lo(D_800BE550) # addiu $t7, $t7, -0x1ab0
/* 162C30 801BCBC0 AC4F0004 */  sw    $t7, 4($v0)
/* 162C34 801BCBC4 AC4E0000 */  sw    $t6, ($v0)
/* 162C38 801BCBC8 8CA20000 */  lw    $v0, ($a1)
/* 162C3C 801BCBCC 3C0E800C */  lui   $t6, %hi(D_800BE548) # $t6, 0x800c
/* 162C40 801BCBD0 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 162C44 801BCBD4 24580008 */  addiu $t8, $v0, 8
/* 162C48 801BCBD8 ACB80000 */  sw    $t8, ($a1)
/* 162C4C 801BCBDC 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 162C50 801BCBE0 25CEE548 */  addiu $t6, %lo(D_800BE548) # addiu $t6, $t6, -0x1ab8
/* 162C54 801BCBE4 AC4E0004 */  sw    $t6, 4($v0)
/* 162C58 801BCBE8 10000242 */  b     .L801BD4F4_ovl7
/* 162C5C 801BCBEC AC590000 */   sw    $t9, ($v0)
.L801BCBF0_ovl7:
/* 162C60 801BCBF0 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162C64 801BCBF4 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162C68 801BCBF8 8CA20000 */  lw    $v0, ($a1)
/* 162C6C 801BCBFC 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 162C70 801BCC00 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 162C74 801BCC04 244F0008 */  addiu $t7, $v0, 8
/* 162C78 801BCC08 ACAF0000 */  sw    $t7, ($a1)
/* 162C7C 801BCC0C 3C18800E */ lui $t8, %hi(gSegment4StartArray)
/* 162C80 801BCC10 0309C021 */  addu  $t8, $t8, $t1
/* 162C84 801BCC14 AC4A0000 */  sw    $t2, ($v0)
/* 162C88 801BCC18 8F18F4D0 */ lw $t8, %lo(gSegment4StartArray)($t8)
/* 162C8C 801BCC1C 10C00017 */  beqz  $a2, .L801BCC7C_ovl7
/* 162C90 801BCC20 AC580004 */   sw    $t8, 4($v0)
/* 162C94 801BCC24 8CA20000 */  lw    $v0, ($a1)
/* 162C98 801BCC28 3C0EDB02 */  lui   $t6, 0xdb02
/* 162C9C 801BCC2C 240F0018 */  li    $t7, 24
/* 162CA0 801BCC30 24590008 */  addiu $t9, $v0, 8
/* 162CA4 801BCC34 ACB90000 */  sw    $t9, ($a1)
/* 162CA8 801BCC38 AC4F0004 */  sw    $t7, 4($v0)
/* 162CAC 801BCC3C AC4E0000 */  sw    $t6, ($v0)
/* 162CB0 801BCC40 8CA20000 */  lw    $v0, ($a1)
/* 162CB4 801BCC44 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 162CB8 801BCC48 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 162CBC 801BCC4C 24580008 */  addiu $t8, $v0, 8
/* 162CC0 801BCC50 ACB80000 */  sw    $t8, ($a1)
/* 162CC4 801BCC54 24CE0008 */  addiu $t6, $a2, 8
/* 162CC8 801BCC58 AC4E0004 */  sw    $t6, 4($v0)
/* 162CCC 801BCC5C AC590000 */  sw    $t9, ($v0)
/* 162CD0 801BCC60 8CA20000 */  lw    $v0, ($a1)
/* 162CD4 801BCC64 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 162CD8 801BCC68 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 162CDC 801BCC6C 244F0008 */  addiu $t7, $v0, 8
/* 162CE0 801BCC70 ACAF0000 */  sw    $t7, ($a1)
/* 162CE4 801BCC74 AC460004 */  sw    $a2, 4($v0)
/* 162CE8 801BCC78 AC580000 */  sw    $t8, ($v0)
.L801BCC7C_ovl7:
/* 162CEC 801BCC7C 0C02ACB0 */  jal   func_800AB2C0
/* 162CF0 801BCC80 8FA40180 */   lw    $a0, 0x180($sp)
/* 162CF4 801BCC84 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162CF8 801BCC88 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162CFC 801BCC8C 8CA20000 */  lw    $v0, ($a1)
/* 162D00 801BCC90 3C0EDB02 */  lui   $t6, 0xdb02
/* 162D04 801BCC94 240F0018 */  li    $t7, 24
/* 162D08 801BCC98 24590008 */  addiu $t9, $v0, 8
/* 162D0C 801BCC9C ACB90000 */  sw    $t9, ($a1)
/* 162D10 801BCCA0 AC4F0004 */  sw    $t7, 4($v0)
/* 162D14 801BCCA4 AC4E0000 */  sw    $t6, ($v0)
/* 162D18 801BCCA8 8CA20000 */  lw    $v0, ($a1)
/* 162D1C 801BCCAC 3C0E800C */  lui   $t6, %hi(D_800BE550) # $t6, 0x800c
/* 162D20 801BCCB0 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 162D24 801BCCB4 24580008 */  addiu $t8, $v0, 8
/* 162D28 801BCCB8 ACB80000 */  sw    $t8, ($a1)
/* 162D2C 801BCCBC 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 162D30 801BCCC0 25CEE550 */  addiu $t6, %lo(D_800BE550) # addiu $t6, $t6, -0x1ab0
/* 162D34 801BCCC4 AC4E0004 */  sw    $t6, 4($v0)
/* 162D38 801BCCC8 AC590000 */  sw    $t9, ($v0)
/* 162D3C 801BCCCC 8CA20000 */  lw    $v0, ($a1)
/* 162D40 801BCCD0 3C19800C */  lui   $t9, %hi(D_800BE548) # $t9, 0x800c
/* 162D44 801BCCD4 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 162D48 801BCCD8 244F0008 */  addiu $t7, $v0, 8
/* 162D4C 801BCCDC ACAF0000 */  sw    $t7, ($a1)
/* 162D50 801BCCE0 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 162D54 801BCCE4 2739E548 */  addiu $t9, %lo(D_800BE548) # addiu $t9, $t9, -0x1ab8
/* 162D58 801BCCE8 AC590004 */  sw    $t9, 4($v0)
/* 162D5C 801BCCEC 10000201 */  b     .L801BD4F4_ovl7
/* 162D60 801BCCF0 AC580000 */   sw    $t8, ($v0)
.L801BCCF4_ovl7:
/* 162D64 801BCCF4 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162D68 801BCCF8 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162D6C 801BCCFC 8CA20000 */  lw    $v0, ($a1)
/* 162D70 801BCD00 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 162D74 801BCD04 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 162D78 801BCD08 244E0008 */  addiu $t6, $v0, 8
/* 162D7C 801BCD0C ACAE0000 */  sw    $t6, ($a1)
/* 162D80 801BCD10 3C0F800E */ lui $t7, %hi(gSegment4StartArray)
/* 162D84 801BCD14 01E97821 */  addu  $t7, $t7, $t1
/* 162D88 801BCD18 AC4A0000 */  sw    $t2, ($v0)
/* 162D8C 801BCD1C 8DEFF4D0 */ lw $t7, %lo(gSegment4StartArray)($t7)
/* 162D90 801BCD20 10C00017 */  beqz  $a2, .L801BCD80_ovl7
/* 162D94 801BCD24 AC4F0004 */   sw    $t7, 4($v0)
/* 162D98 801BCD28 8CA20000 */  lw    $v0, ($a1)
/* 162D9C 801BCD2C 3C19DB02 */  lui   $t9, 0xdb02
/* 162DA0 801BCD30 240E0018 */  li    $t6, 24
/* 162DA4 801BCD34 24580008 */  addiu $t8, $v0, 8
/* 162DA8 801BCD38 ACB80000 */  sw    $t8, ($a1)
/* 162DAC 801BCD3C AC4E0004 */  sw    $t6, 4($v0)
/* 162DB0 801BCD40 AC590000 */  sw    $t9, ($v0)
/* 162DB4 801BCD44 8CA20000 */  lw    $v0, ($a1)
/* 162DB8 801BCD48 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 162DBC 801BCD4C 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 162DC0 801BCD50 244F0008 */  addiu $t7, $v0, 8
/* 162DC4 801BCD54 ACAF0000 */  sw    $t7, ($a1)
/* 162DC8 801BCD58 24D90008 */  addiu $t9, $a2, 8
/* 162DCC 801BCD5C AC590004 */  sw    $t9, 4($v0)
/* 162DD0 801BCD60 AC580000 */  sw    $t8, ($v0)
/* 162DD4 801BCD64 8CA20000 */  lw    $v0, ($a1)
/* 162DD8 801BCD68 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 162DDC 801BCD6C 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 162DE0 801BCD70 244E0008 */  addiu $t6, $v0, 8
/* 162DE4 801BCD74 ACAE0000 */  sw    $t6, ($a1)
/* 162DE8 801BCD78 AC460004 */  sw    $a2, 4($v0)
/* 162DEC 801BCD7C AC4F0000 */  sw    $t7, ($v0)
.L801BCD80_ovl7:
/* 162DF0 801BCD80 0C02ACE8 */  jal   func_800AB3A0
/* 162DF4 801BCD84 8FA40180 */   lw    $a0, 0x180($sp)
/* 162DF8 801BCD88 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162DFC 801BCD8C 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162E00 801BCD90 8CA20000 */  lw    $v0, ($a1)
/* 162E04 801BCD94 3C19DB02 */  lui   $t9, 0xdb02
/* 162E08 801BCD98 240E0018 */  li    $t6, 24
/* 162E0C 801BCD9C 24580008 */  addiu $t8, $v0, 8
/* 162E10 801BCDA0 ACB80000 */  sw    $t8, ($a1)
/* 162E14 801BCDA4 AC4E0004 */  sw    $t6, 4($v0)
/* 162E18 801BCDA8 AC590000 */  sw    $t9, ($v0)
/* 162E1C 801BCDAC 8CA20000 */  lw    $v0, ($a1)
/* 162E20 801BCDB0 3C19800C */  lui   $t9, %hi(D_800BE550) # $t9, 0x800c
/* 162E24 801BCDB4 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 162E28 801BCDB8 244F0008 */  addiu $t7, $v0, 8
/* 162E2C 801BCDBC ACAF0000 */  sw    $t7, ($a1)
/* 162E30 801BCDC0 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 162E34 801BCDC4 2739E550 */  addiu $t9, %lo(D_800BE550) # addiu $t9, $t9, -0x1ab0
/* 162E38 801BCDC8 AC590004 */  sw    $t9, 4($v0)
/* 162E3C 801BCDCC AC580000 */  sw    $t8, ($v0)
/* 162E40 801BCDD0 8CA20000 */  lw    $v0, ($a1)
/* 162E44 801BCDD4 3C18800C */  lui   $t8, %hi(D_800BE548) # $t8, 0x800c
/* 162E48 801BCDD8 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 162E4C 801BCDDC 244E0008 */  addiu $t6, $v0, 8
/* 162E50 801BCDE0 ACAE0000 */  sw    $t6, ($a1)
/* 162E54 801BCDE4 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 162E58 801BCDE8 2718E548 */  addiu $t8, %lo(D_800BE548) # addiu $t8, $t8, -0x1ab8
/* 162E5C 801BCDEC AC580004 */  sw    $t8, 4($v0)
/* 162E60 801BCDF0 100001C0 */  b     .L801BD4F4_ovl7
/* 162E64 801BCDF4 AC4F0000 */   sw    $t7, ($v0)
.L801BCDF8_ovl7:
/* 162E68 801BCDF8 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162E6C 801BCDFC 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162E70 801BCE00 8CA20000 */  lw    $v0, ($a1)
/* 162E74 801BCE04 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 162E78 801BCE08 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 162E7C 801BCE0C 24590008 */  addiu $t9, $v0, 8
/* 162E80 801BCE10 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 162E84 801BCE14 ACB90000 */  sw    $t9, ($a1)
/* 162E88 801BCE18 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 162E8C 801BCE1C 012E2021 */  addu  $a0, $t1, $t6
/* 162E90 801BCE20 AC4A0000 */  sw    $t2, ($v0)
/* 162E94 801BCE24 8C8F0000 */  lw    $t7, ($a0)
/* 162E98 801BCE28 AC4F0004 */  sw    $t7, 4($v0)
/* 162E9C 801BCE2C 8CA30004 */  lw    $v1, 4($a1)
/* 162EA0 801BCE30 3C0FDB02 */  lui   $t7, 0xdb02
/* 162EA4 801BCE34 24780008 */  addiu $t8, $v1, 8
/* 162EA8 801BCE38 ACB80004 */  sw    $t8, 4($a1)
/* 162EAC 801BCE3C AC6A0000 */  sw    $t2, ($v1)
/* 162EB0 801BCE40 8C990000 */  lw    $t9, ($a0)
/* 162EB4 801BCE44 10C0002B */  beqz  $a2, .L801BCEF4_ovl7
/* 162EB8 801BCE48 AC790004 */   sw    $t9, 4($v1)
/* 162EBC 801BCE4C 8CA20000 */  lw    $v0, ($a1)
/* 162EC0 801BCE50 24180018 */  li    $t8, 24
/* 162EC4 801BCE54 24C40008 */  addiu $a0, $a2, 8
/* 162EC8 801BCE58 244E0008 */  addiu $t6, $v0, 8
/* 162ECC 801BCE5C ACAE0000 */  sw    $t6, ($a1)
/* 162ED0 801BCE60 AC580004 */  sw    $t8, 4($v0)
/* 162ED4 801BCE64 AC4F0000 */  sw    $t7, ($v0)
/* 162ED8 801BCE68 8CA20000 */  lw    $v0, ($a1)
/* 162EDC 801BCE6C 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 162EE0 801BCE70 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 162EE4 801BCE74 24590008 */  addiu $t9, $v0, 8
/* 162EE8 801BCE78 ACB90000 */  sw    $t9, ($a1)
/* 162EEC 801BCE7C AC440004 */  sw    $a0, 4($v0)
/* 162EF0 801BCE80 AC4E0000 */  sw    $t6, ($v0)
/* 162EF4 801BCE84 8CA20000 */  lw    $v0, ($a1)
/* 162EF8 801BCE88 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 162EFC 801BCE8C 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 162F00 801BCE90 244F0008 */  addiu $t7, $v0, 8
/* 162F04 801BCE94 ACAF0000 */  sw    $t7, ($a1)
/* 162F08 801BCE98 AC460004 */  sw    $a2, 4($v0)
/* 162F0C 801BCE9C AC580000 */  sw    $t8, ($v0)
/* 162F10 801BCEA0 8CA30004 */  lw    $v1, 4($a1)
/* 162F14 801BCEA4 240F0018 */  li    $t7, 24
/* 162F18 801BCEA8 3C0EDB02 */  lui   $t6, 0xdb02
/* 162F1C 801BCEAC 24790008 */  addiu $t9, $v1, 8
/* 162F20 801BCEB0 ACB90004 */  sw    $t9, 4($a1)
/* 162F24 801BCEB4 AC6F0004 */  sw    $t7, 4($v1)
/* 162F28 801BCEB8 AC6E0000 */  sw    $t6, ($v1)
/* 162F2C 801BCEBC 8CA30004 */  lw    $v1, 4($a1)
/* 162F30 801BCEC0 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 162F34 801BCEC4 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 162F38 801BCEC8 24780008 */  addiu $t8, $v1, 8
/* 162F3C 801BCECC ACB80004 */  sw    $t8, 4($a1)
/* 162F40 801BCED0 AC640004 */  sw    $a0, 4($v1)
/* 162F44 801BCED4 AC790000 */  sw    $t9, ($v1)
/* 162F48 801BCED8 8CA30004 */  lw    $v1, 4($a1)
/* 162F4C 801BCEDC 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 162F50 801BCEE0 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 162F54 801BCEE4 246E0008 */  addiu $t6, $v1, 8
/* 162F58 801BCEE8 ACAE0004 */  sw    $t6, 4($a1)
/* 162F5C 801BCEEC AC660004 */  sw    $a2, 4($v1)
/* 162F60 801BCEF0 AC6F0000 */  sw    $t7, ($v1)
.L801BCEF4_ovl7:
/* 162F64 801BCEF4 0C02AC5D */  jal   func_800AB174
/* 162F68 801BCEF8 8FA40180 */   lw    $a0, 0x180($sp)
/* 162F6C 801BCEFC 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 162F70 801BCF00 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 162F74 801BCF04 8CA20000 */  lw    $v0, ($a1)
/* 162F78 801BCF08 3C0DDB02 */  lui   $t5, 0xdb02
/* 162F7C 801BCF0C 241F0018 */  li    $ra, 24
/* 162F80 801BCF10 24580008 */  addiu $t8, $v0, 8
/* 162F84 801BCF14 ACB80000 */  sw    $t8, ($a1)
/* 162F88 801BCF18 AC5F0004 */  sw    $ra, 4($v0)
/* 162F8C 801BCF1C AC4D0000 */  sw    $t5, ($v0)
/* 162F90 801BCF20 8CA20000 */  lw    $v0, ($a1)
/* 162F94 801BCF24 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 162F98 801BCF28 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 162F9C 801BCF2C 24590008 */  addiu $t9, $v0, 8
/* 162FA0 801BCF30 ACB90000 */  sw    $t9, ($a1)
/* 162FA4 801BCF34 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 162FA8 801BCF38 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 162FAC 801BCF3C AC4E0000 */  sw    $t6, ($v0)
/* 162FB0 801BCF40 AC440004 */  sw    $a0, 4($v0)
/* 162FB4 801BCF44 8CA20000 */  lw    $v0, ($a1)
/* 162FB8 801BCF48 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 162FBC 801BCF4C 3C06800C */  lui   $a2, %hi(D_800BE548) # $a2, 0x800c
/* 162FC0 801BCF50 244F0008 */  addiu $t7, $v0, 8
/* 162FC4 801BCF54 ACAF0000 */  sw    $t7, ($a1)
/* 162FC8 801BCF58 24C6E548 */  addiu $a2, %lo(D_800BE548) # addiu $a2, $a2, -0x1ab8
/* 162FCC 801BCF5C 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 162FD0 801BCF60 AC580000 */  sw    $t8, ($v0)
/* 162FD4 801BCF64 AC460004 */  sw    $a2, 4($v0)
/* 162FD8 801BCF68 8CA30004 */  lw    $v1, 4($a1)
/* 162FDC 801BCF6C 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 162FE0 801BCF70 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 162FE4 801BCF74 24790008 */  addiu $t9, $v1, 8
/* 162FE8 801BCF78 ACB90004 */  sw    $t9, 4($a1)
/* 162FEC 801BCF7C AC7F0004 */  sw    $ra, 4($v1)
/* 162FF0 801BCF80 AC6D0000 */  sw    $t5, ($v1)
/* 162FF4 801BCF84 8CA30004 */  lw    $v1, 4($a1)
/* 162FF8 801BCF88 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 162FFC 801BCF8C 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 163000 801BCF90 246E0008 */  addiu $t6, $v1, 8
/* 163004 801BCF94 ACAE0004 */  sw    $t6, 4($a1)
/* 163008 801BCF98 AC640004 */  sw    $a0, 4($v1)
/* 16300C 801BCF9C AC6F0000 */  sw    $t7, ($v1)
/* 163010 801BCFA0 8CA30004 */  lw    $v1, 4($a1)
/* 163014 801BCFA4 24780008 */  addiu $t8, $v1, 8
/* 163018 801BCFA8 ACB80004 */  sw    $t8, 4($a1)
/* 16301C 801BCFAC AC660004 */  sw    $a2, 4($v1)
/* 163020 801BCFB0 10000150 */  b     .L801BD4F4_ovl7
/* 163024 801BCFB4 AC790000 */   sw    $t9, ($v1)
.L801BCFB8_ovl7:
/* 163028 801BCFB8 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 16302C 801BCFBC 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 163030 801BCFC0 8CA20000 */  lw    $v0, ($a1)
/* 163034 801BCFC4 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 163038 801BCFC8 3C0F800E */  lui   $t7, %hi(gSegment4StartArray) # $t7, 0x800e
/* 16303C 801BCFCC 244E0008 */  addiu $t6, $v0, 8
/* 163040 801BCFD0 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 163044 801BCFD4 ACAE0000 */  sw    $t6, ($a1)
/* 163048 801BCFD8 25EFF4D0 */  addiu $t7, %lo(gSegment4StartArray) # addiu $t7, $t7, -0xb30
/* 16304C 801BCFDC 012F2021 */  addu  $a0, $t1, $t7
/* 163050 801BCFE0 AC4A0000 */  sw    $t2, ($v0)
/* 163054 801BCFE4 8C980000 */  lw    $t8, ($a0)
/* 163058 801BCFE8 AC580004 */  sw    $t8, 4($v0)
/* 16305C 801BCFEC 8CA30004 */  lw    $v1, 4($a1)
/* 163060 801BCFF0 3C18DB02 */  lui   $t8, 0xdb02
/* 163064 801BCFF4 24790008 */  addiu $t9, $v1, 8
/* 163068 801BCFF8 ACB90004 */  sw    $t9, 4($a1)
/* 16306C 801BCFFC AC6A0000 */  sw    $t2, ($v1)
/* 163070 801BD000 8C8E0000 */  lw    $t6, ($a0)
/* 163074 801BD004 10C0002B */  beqz  $a2, .L801BD0B4_ovl7
/* 163078 801BD008 AC6E0004 */   sw    $t6, 4($v1)
/* 16307C 801BD00C 8CA20000 */  lw    $v0, ($a1)
/* 163080 801BD010 24190018 */  li    $t9, 24
/* 163084 801BD014 24C40008 */  addiu $a0, $a2, 8
/* 163088 801BD018 244F0008 */  addiu $t7, $v0, 8
/* 16308C 801BD01C ACAF0000 */  sw    $t7, ($a1)
/* 163090 801BD020 AC590004 */  sw    $t9, 4($v0)
/* 163094 801BD024 AC580000 */  sw    $t8, ($v0)
/* 163098 801BD028 8CA20000 */  lw    $v0, ($a1)
/* 16309C 801BD02C 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 1630A0 801BD030 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 1630A4 801BD034 244E0008 */  addiu $t6, $v0, 8
/* 1630A8 801BD038 ACAE0000 */  sw    $t6, ($a1)
/* 1630AC 801BD03C AC440004 */  sw    $a0, 4($v0)
/* 1630B0 801BD040 AC4F0000 */  sw    $t7, ($v0)
/* 1630B4 801BD044 8CA20000 */  lw    $v0, ($a1)
/* 1630B8 801BD048 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 1630BC 801BD04C 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 1630C0 801BD050 24580008 */  addiu $t8, $v0, 8
/* 1630C4 801BD054 ACB80000 */  sw    $t8, ($a1)
/* 1630C8 801BD058 AC460004 */  sw    $a2, 4($v0)
/* 1630CC 801BD05C AC590000 */  sw    $t9, ($v0)
/* 1630D0 801BD060 8CA30004 */  lw    $v1, 4($a1)
/* 1630D4 801BD064 24180018 */  li    $t8, 24
/* 1630D8 801BD068 3C0FDB02 */  lui   $t7, 0xdb02
/* 1630DC 801BD06C 246E0008 */  addiu $t6, $v1, 8
/* 1630E0 801BD070 ACAE0004 */  sw    $t6, 4($a1)
/* 1630E4 801BD074 AC780004 */  sw    $t8, 4($v1)
/* 1630E8 801BD078 AC6F0000 */  sw    $t7, ($v1)
/* 1630EC 801BD07C 8CA30004 */  lw    $v1, 4($a1)
/* 1630F0 801BD080 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 1630F4 801BD084 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 1630F8 801BD088 24790008 */  addiu $t9, $v1, 8
/* 1630FC 801BD08C ACB90004 */  sw    $t9, 4($a1)
/* 163100 801BD090 AC640004 */  sw    $a0, 4($v1)
/* 163104 801BD094 AC6E0000 */  sw    $t6, ($v1)
/* 163108 801BD098 8CA30004 */  lw    $v1, 4($a1)
/* 16310C 801BD09C 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 163110 801BD0A0 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 163114 801BD0A4 246F0008 */  addiu $t7, $v1, 8
/* 163118 801BD0A8 ACAF0004 */  sw    $t7, 4($a1)
/* 16311C 801BD0AC AC660004 */  sw    $a2, 4($v1)
/* 163120 801BD0B0 AC780000 */  sw    $t8, ($v1)
.L801BD0B4_ovl7:
/* 163124 801BD0B4 0C02AC91 */  jal   func_800AB244
/* 163128 801BD0B8 8FA40180 */   lw    $a0, 0x180($sp)
/* 16312C 801BD0BC 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 163130 801BD0C0 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 163134 801BD0C4 8CA20000 */  lw    $v0, ($a1)
/* 163138 801BD0C8 3C0DDB02 */  lui   $t5, 0xdb02
/* 16313C 801BD0CC 241F0018 */  li    $ra, 24
/* 163140 801BD0D0 24590008 */  addiu $t9, $v0, 8
/* 163144 801BD0D4 ACB90000 */  sw    $t9, ($a1)
/* 163148 801BD0D8 AC5F0004 */  sw    $ra, 4($v0)
/* 16314C 801BD0DC AC4D0000 */  sw    $t5, ($v0)
/* 163150 801BD0E0 8CA20000 */  lw    $v0, ($a1)
/* 163154 801BD0E4 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 163158 801BD0E8 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 16315C 801BD0EC 244E0008 */  addiu $t6, $v0, 8
/* 163160 801BD0F0 ACAE0000 */  sw    $t6, ($a1)
/* 163164 801BD0F4 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 163168 801BD0F8 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 16316C 801BD0FC AC4F0000 */  sw    $t7, ($v0)
/* 163170 801BD100 AC440004 */  sw    $a0, 4($v0)
/* 163174 801BD104 8CA20000 */  lw    $v0, ($a1)
/* 163178 801BD108 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 16317C 801BD10C 3C06800C */  lui   $a2, %hi(D_800BE548) # $a2, 0x800c
/* 163180 801BD110 24580008 */  addiu $t8, $v0, 8
/* 163184 801BD114 ACB80000 */  sw    $t8, ($a1)
/* 163188 801BD118 24C6E548 */  addiu $a2, %lo(D_800BE548) # addiu $a2, $a2, -0x1ab8
/* 16318C 801BD11C 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 163190 801BD120 AC590000 */  sw    $t9, ($v0)
/* 163194 801BD124 AC460004 */  sw    $a2, 4($v0)
/* 163198 801BD128 8CA30004 */  lw    $v1, 4($a1)
/* 16319C 801BD12C 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 1631A0 801BD130 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 1631A4 801BD134 246E0008 */  addiu $t6, $v1, 8
/* 1631A8 801BD138 ACAE0004 */  sw    $t6, 4($a1)
/* 1631AC 801BD13C AC7F0004 */  sw    $ra, 4($v1)
/* 1631B0 801BD140 AC6D0000 */  sw    $t5, ($v1)
/* 1631B4 801BD144 8CA30004 */  lw    $v1, 4($a1)
/* 1631B8 801BD148 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 1631BC 801BD14C 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 1631C0 801BD150 246F0008 */  addiu $t7, $v1, 8
/* 1631C4 801BD154 ACAF0004 */  sw    $t7, 4($a1)
/* 1631C8 801BD158 AC640004 */  sw    $a0, 4($v1)
/* 1631CC 801BD15C AC780000 */  sw    $t8, ($v1)
/* 1631D0 801BD160 8CA30004 */  lw    $v1, 4($a1)
/* 1631D4 801BD164 24790008 */  addiu $t9, $v1, 8
/* 1631D8 801BD168 ACB90004 */  sw    $t9, 4($a1)
/* 1631DC 801BD16C AC660004 */  sw    $a2, 4($v1)
/* 1631E0 801BD170 100000E0 */  b     .L801BD4F4_ovl7
/* 1631E4 801BD174 AC6E0000 */   sw    $t6, ($v1)
.L801BD178_ovl7:
/* 1631E8 801BD178 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 1631EC 801BD17C 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 1631F0 801BD180 8CA20000 */  lw    $v0, ($a1)
/* 1631F4 801BD184 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 1631F8 801BD188 3C18800E */  lui   $t8, %hi(gSegment4StartArray) # $t8, 0x800e
/* 1631FC 801BD18C 244F0008 */  addiu $t7, $v0, 8
/* 163200 801BD190 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 163204 801BD194 ACAF0000 */  sw    $t7, ($a1)
/* 163208 801BD198 2718F4D0 */  addiu $t8, %lo(gSegment4StartArray) # addiu $t8, $t8, -0xb30
/* 16320C 801BD19C 01382021 */  addu  $a0, $t1, $t8
/* 163210 801BD1A0 AC4A0000 */  sw    $t2, ($v0)
/* 163214 801BD1A4 8C990000 */  lw    $t9, ($a0)
/* 163218 801BD1A8 AC590004 */  sw    $t9, 4($v0)
/* 16321C 801BD1AC 8CA30004 */  lw    $v1, 4($a1)
/* 163220 801BD1B0 246E0008 */  addiu $t6, $v1, 8
/* 163224 801BD1B4 ACAE0004 */  sw    $t6, 4($a1)
/* 163228 801BD1B8 AC6A0000 */  sw    $t2, ($v1)
/* 16322C 801BD1BC 8C8F0000 */  lw    $t7, ($a0)
/* 163230 801BD1C0 10C0002C */  beqz  $a2, .L801BD274_ovl7
/* 163234 801BD1C4 AC6F0004 */   sw    $t7, 4($v1)
/* 163238 801BD1C8 8CA20000 */  lw    $v0, ($a1)
/* 16323C 801BD1CC 3C19DB02 */  lui   $t9, 0xdb02
/* 163240 801BD1D0 240E0018 */  li    $t6, 24
/* 163244 801BD1D4 24580008 */  addiu $t8, $v0, 8
/* 163248 801BD1D8 ACB80000 */  sw    $t8, ($a1)
/* 16324C 801BD1DC AC4E0004 */  sw    $t6, 4($v0)
/* 163250 801BD1E0 AC590000 */  sw    $t9, ($v0)
/* 163254 801BD1E4 8CA20000 */  lw    $v0, ($a1)
/* 163258 801BD1E8 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 16325C 801BD1EC 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 163260 801BD1F0 244F0008 */  addiu $t7, $v0, 8
/* 163264 801BD1F4 ACAF0000 */  sw    $t7, ($a1)
/* 163268 801BD1F8 24C40008 */  addiu $a0, $a2, 8
/* 16326C 801BD1FC AC440004 */  sw    $a0, 4($v0)
/* 163270 801BD200 AC580000 */  sw    $t8, ($v0)
/* 163274 801BD204 8CA20000 */  lw    $v0, ($a1)
/* 163278 801BD208 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 16327C 801BD20C 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 163280 801BD210 24590008 */  addiu $t9, $v0, 8
/* 163284 801BD214 ACB90000 */  sw    $t9, ($a1)
/* 163288 801BD218 AC460004 */  sw    $a2, 4($v0)
/* 16328C 801BD21C AC4E0000 */  sw    $t6, ($v0)
/* 163290 801BD220 8CA30004 */  lw    $v1, 4($a1)
/* 163294 801BD224 24190018 */  li    $t9, 24
/* 163298 801BD228 3C18DB02 */  lui   $t8, 0xdb02
/* 16329C 801BD22C 246F0008 */  addiu $t7, $v1, 8
/* 1632A0 801BD230 ACAF0004 */  sw    $t7, 4($a1)
/* 1632A4 801BD234 AC790004 */  sw    $t9, 4($v1)
/* 1632A8 801BD238 AC780000 */  sw    $t8, ($v1)
/* 1632AC 801BD23C 8CA30004 */  lw    $v1, 4($a1)
/* 1632B0 801BD240 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 1632B4 801BD244 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 1632B8 801BD248 246E0008 */  addiu $t6, $v1, 8
/* 1632BC 801BD24C ACAE0004 */  sw    $t6, 4($a1)
/* 1632C0 801BD250 AC640004 */  sw    $a0, 4($v1)
/* 1632C4 801BD254 AC6F0000 */  sw    $t7, ($v1)
/* 1632C8 801BD258 8CA30004 */  lw    $v1, 4($a1)
/* 1632CC 801BD25C 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 1632D0 801BD260 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 1632D4 801BD264 24780008 */  addiu $t8, $v1, 8
/* 1632D8 801BD268 ACB80004 */  sw    $t8, 4($a1)
/* 1632DC 801BD26C AC660004 */  sw    $a2, 4($v1)
/* 1632E0 801BD270 AC790000 */  sw    $t9, ($v1)
.L801BD274_ovl7:
/* 1632E4 801BD274 0C02ACC5 */  jal   func_800AB314
/* 1632E8 801BD278 8FA40180 */   lw    $a0, 0x180($sp)
/* 1632EC 801BD27C 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 1632F0 801BD280 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 1632F4 801BD284 8CA20000 */  lw    $v0, ($a1)
/* 1632F8 801BD288 3C0DDB02 */  lui   $t5, 0xdb02
/* 1632FC 801BD28C 241F0018 */  li    $ra, 24
/* 163300 801BD290 244E0008 */  addiu $t6, $v0, 8
/* 163304 801BD294 ACAE0000 */  sw    $t6, ($a1)
/* 163308 801BD298 AC5F0004 */  sw    $ra, 4($v0)
/* 16330C 801BD29C AC4D0000 */  sw    $t5, ($v0)
/* 163310 801BD2A0 8CA20000 */  lw    $v0, ($a1)
/* 163314 801BD2A4 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 163318 801BD2A8 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 16331C 801BD2AC 244F0008 */  addiu $t7, $v0, 8
/* 163320 801BD2B0 ACAF0000 */  sw    $t7, ($a1)
/* 163324 801BD2B4 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 163328 801BD2B8 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 16332C 801BD2BC AC580000 */  sw    $t8, ($v0)
/* 163330 801BD2C0 AC440004 */  sw    $a0, 4($v0)
/* 163334 801BD2C4 8CA20000 */  lw    $v0, ($a1)
/* 163338 801BD2C8 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 16333C 801BD2CC 3C06800C */  lui   $a2, %hi(D_800BE548) # $a2, 0x800c
/* 163340 801BD2D0 24590008 */  addiu $t9, $v0, 8
/* 163344 801BD2D4 ACB90000 */  sw    $t9, ($a1)
/* 163348 801BD2D8 24C6E548 */  addiu $a2, %lo(D_800BE548) # addiu $a2, $a2, -0x1ab8
/* 16334C 801BD2DC 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 163350 801BD2E0 AC4E0000 */  sw    $t6, ($v0)
/* 163354 801BD2E4 AC460004 */  sw    $a2, 4($v0)
/* 163358 801BD2E8 8CA30004 */  lw    $v1, 4($a1)
/* 16335C 801BD2EC 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 163360 801BD2F0 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 163364 801BD2F4 246F0008 */  addiu $t7, $v1, 8
/* 163368 801BD2F8 ACAF0004 */  sw    $t7, 4($a1)
/* 16336C 801BD2FC AC7F0004 */  sw    $ra, 4($v1)
/* 163370 801BD300 AC6D0000 */  sw    $t5, ($v1)
/* 163374 801BD304 8CA30004 */  lw    $v1, 4($a1)
/* 163378 801BD308 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 16337C 801BD30C 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 163380 801BD310 24780008 */  addiu $t8, $v1, 8
/* 163384 801BD314 ACB80004 */  sw    $t8, 4($a1)
/* 163388 801BD318 AC640004 */  sw    $a0, 4($v1)
/* 16338C 801BD31C AC790000 */  sw    $t9, ($v1)
/* 163390 801BD320 8CA30004 */  lw    $v1, 4($a1)
/* 163394 801BD324 246E0008 */  addiu $t6, $v1, 8
/* 163398 801BD328 ACAE0004 */  sw    $t6, 4($a1)
/* 16339C 801BD32C AC660004 */  sw    $a2, 4($v1)
/* 1633A0 801BD330 10000070 */  b     .L801BD4F4_ovl7
/* 1633A4 801BD334 AC6F0000 */   sw    $t7, ($v1)
.L801BD338_ovl7:
/* 1633A8 801BD338 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 1633AC 801BD33C 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 1633B0 801BD340 8CA20000 */  lw    $v0, ($a1)
/* 1633B4 801BD344 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 1633B8 801BD348 3C19800E */  lui   $t9, %hi(gSegment4StartArray) # $t9, 0x800e
/* 1633BC 801BD34C 24580008 */  addiu $t8, $v0, 8
/* 1633C0 801BD350 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 1633C4 801BD354 ACB80000 */  sw    $t8, ($a1)
/* 1633C8 801BD358 2739F4D0 */  addiu $t9, %lo(gSegment4StartArray) # addiu $t9, $t9, -0xb30
/* 1633CC 801BD35C 01392021 */  addu  $a0, $t1, $t9
/* 1633D0 801BD360 AC4A0000 */  sw    $t2, ($v0)
/* 1633D4 801BD364 8C8E0000 */  lw    $t6, ($a0)
/* 1633D8 801BD368 AC4E0004 */  sw    $t6, 4($v0)
/* 1633DC 801BD36C 8CA30004 */  lw    $v1, 4($a1)
/* 1633E0 801BD370 246F0008 */  addiu $t7, $v1, 8
/* 1633E4 801BD374 ACAF0004 */  sw    $t7, 4($a1)
/* 1633E8 801BD378 AC6A0000 */  sw    $t2, ($v1)
/* 1633EC 801BD37C 8C980000 */  lw    $t8, ($a0)
/* 1633F0 801BD380 10C0002C */  beqz  $a2, .L801BD434_ovl7
/* 1633F4 801BD384 AC780004 */   sw    $t8, 4($v1)
/* 1633F8 801BD388 8CA20000 */  lw    $v0, ($a1)
/* 1633FC 801BD38C 3C0EDB02 */  lui   $t6, 0xdb02
/* 163400 801BD390 240F0018 */  li    $t7, 24
/* 163404 801BD394 24590008 */  addiu $t9, $v0, 8
/* 163408 801BD398 ACB90000 */  sw    $t9, ($a1)
/* 16340C 801BD39C AC4F0004 */  sw    $t7, 4($v0)
/* 163410 801BD3A0 AC4E0000 */  sw    $t6, ($v0)
/* 163414 801BD3A4 8CA20000 */  lw    $v0, ($a1)
/* 163418 801BD3A8 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 16341C 801BD3AC 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 163420 801BD3B0 24580008 */  addiu $t8, $v0, 8
/* 163424 801BD3B4 ACB80000 */  sw    $t8, ($a1)
/* 163428 801BD3B8 24C40008 */  addiu $a0, $a2, 8
/* 16342C 801BD3BC AC440004 */  sw    $a0, 4($v0)
/* 163430 801BD3C0 AC590000 */  sw    $t9, ($v0)
/* 163434 801BD3C4 8CA20000 */  lw    $v0, ($a1)
/* 163438 801BD3C8 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 16343C 801BD3CC 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 163440 801BD3D0 244E0008 */  addiu $t6, $v0, 8
/* 163444 801BD3D4 ACAE0000 */  sw    $t6, ($a1)
/* 163448 801BD3D8 AC460004 */  sw    $a2, 4($v0)
/* 16344C 801BD3DC AC4F0000 */  sw    $t7, ($v0)
/* 163450 801BD3E0 8CA30004 */  lw    $v1, 4($a1)
/* 163454 801BD3E4 240E0018 */  li    $t6, 24
/* 163458 801BD3E8 3C19DB02 */  lui   $t9, 0xdb02
/* 16345C 801BD3EC 24780008 */  addiu $t8, $v1, 8
/* 163460 801BD3F0 ACB80004 */  sw    $t8, 4($a1)
/* 163464 801BD3F4 AC6E0004 */  sw    $t6, 4($v1)
/* 163468 801BD3F8 AC790000 */  sw    $t9, ($v1)
/* 16346C 801BD3FC 8CA30004 */  lw    $v1, 4($a1)
/* 163470 801BD400 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 163474 801BD404 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 163478 801BD408 246F0008 */  addiu $t7, $v1, 8
/* 16347C 801BD40C ACAF0004 */  sw    $t7, 4($a1)
/* 163480 801BD410 AC640004 */  sw    $a0, 4($v1)
/* 163484 801BD414 AC780000 */  sw    $t8, ($v1)
/* 163488 801BD418 8CA30004 */  lw    $v1, 4($a1)
/* 16348C 801BD41C 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 163490 801BD420 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 163494 801BD424 24790008 */  addiu $t9, $v1, 8
/* 163498 801BD428 ACB90004 */  sw    $t9, 4($a1)
/* 16349C 801BD42C AC660004 */  sw    $a2, 4($v1)
/* 1634A0 801BD430 AC6E0000 */  sw    $t6, ($v1)
.L801BD434_ovl7:
/* 1634A4 801BD434 0C02ACFD */  jal   func_800AB3F4
/* 1634A8 801BD438 8FA40180 */   lw    $a0, 0x180($sp)
/* 1634AC 801BD43C 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 1634B0 801BD440 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 1634B4 801BD444 8CA20000 */  lw    $v0, ($a1)
/* 1634B8 801BD448 3C0DDB02 */  lui   $t5, 0xdb02
/* 1634BC 801BD44C 241F0018 */  li    $ra, 24
/* 1634C0 801BD450 244F0008 */  addiu $t7, $v0, 8
/* 1634C4 801BD454 ACAF0000 */  sw    $t7, ($a1)
/* 1634C8 801BD458 AC5F0004 */  sw    $ra, 4($v0)
/* 1634CC 801BD45C AC4D0000 */  sw    $t5, ($v0)
/* 1634D0 801BD460 8CA20000 */  lw    $v0, ($a1)
/* 1634D4 801BD464 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 1634D8 801BD468 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 1634DC 801BD46C 24580008 */  addiu $t8, $v0, 8
/* 1634E0 801BD470 ACB80000 */  sw    $t8, ($a1)
/* 1634E4 801BD474 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 1634E8 801BD478 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 1634EC 801BD47C AC590000 */  sw    $t9, ($v0)
/* 1634F0 801BD480 AC440004 */  sw    $a0, 4($v0)
/* 1634F4 801BD484 8CA20000 */  lw    $v0, ($a1)
/* 1634F8 801BD488 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 1634FC 801BD48C 3C06800C */  lui   $a2, %hi(D_800BE548) # $a2, 0x800c
/* 163500 801BD490 244E0008 */  addiu $t6, $v0, 8
/* 163504 801BD494 ACAE0000 */  sw    $t6, ($a1)
/* 163508 801BD498 24C6E548 */  addiu $a2, %lo(D_800BE548) # addiu $a2, $a2, -0x1ab8
/* 16350C 801BD49C 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 163510 801BD4A0 AC4F0000 */  sw    $t7, ($v0)
/* 163514 801BD4A4 AC460004 */  sw    $a2, 4($v0)
/* 163518 801BD4A8 8CA30004 */  lw    $v1, 4($a1)
/* 16351C 801BD4AC 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 163520 801BD4B0 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 163524 801BD4B4 24780008 */  addiu $t8, $v1, 8
/* 163528 801BD4B8 ACB80004 */  sw    $t8, 4($a1)
/* 16352C 801BD4BC AC7F0004 */  sw    $ra, 4($v1)
/* 163530 801BD4C0 AC6D0000 */  sw    $t5, ($v1)
/* 163534 801BD4C4 8CA30004 */  lw    $v1, 4($a1)
/* 163538 801BD4C8 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 16353C 801BD4CC 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 163540 801BD4D0 24790008 */  addiu $t9, $v1, 8
/* 163544 801BD4D4 ACB90004 */  sw    $t9, 4($a1)
/* 163548 801BD4D8 AC640004 */  sw    $a0, 4($v1)
/* 16354C 801BD4DC AC6E0000 */  sw    $t6, ($v1)
/* 163550 801BD4E0 8CA30004 */  lw    $v1, 4($a1)
/* 163554 801BD4E4 246F0008 */  addiu $t7, $v1, 8
/* 163558 801BD4E8 ACAF0004 */  sw    $t7, 4($a1)
/* 16355C 801BD4EC AC660004 */  sw    $a2, 4($v1)
/* 163560 801BD4F0 AC780000 */  sw    $t8, ($v1)
.L801BD4F4_ovl7:
/* 163564 801BD4F4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801BD4F8_ovl7:
/* 163568 801BD4F8 27BD0180 */  addiu $sp, $sp, 0x180
/* 16356C 801BD4FC 03E00008 */  jr    $ra
/* 163570 801BD500 00000000 */   nop   
.type func_801BC978_ovl7, @function

/* 163574 801BD504 00000000 */  nop   
/* 163578 801BD508 00000000 */  nop   
.type func_801BC978_ovl7, @function
.size func_801BC978_ovl7, . - func_801BC978_ovl7
