glabel func_801E4B34_ovl9
/* 192B84 801E4B34 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 192B88 801E4B38 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 192B8C 801E4B3C 8C620000 */  lw         $v0, 0x0($v1)
/* 192B90 801E4B40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 192B94 801E4B44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 192B98 801E4B48 AFA40018 */  sw         $a0, 0x18($sp)
/* 192B9C 801E4B4C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 192BA0 801E4B50 3C0E800B */  lui        $t6, %hi(func_800B6B8C)
/* 192BA4 801E4B54 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 192BA8 801E4B58 000FC080 */  sll        $t8, $t7, 2
/* 192BAC 801E4B5C 00380821 */  addu       $at, $at, $t8
.L801E4B60_ovl10:
/* 192BB0 801E4B60 25CE6B8C */  addiu      $t6, $t6, %lo(func_800B6B8C)
/* 192BB4 801E4B64 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 192BB8 801E4B68 8C480000 */  lw         $t0, 0x0($v0)
/* 192BBC 801E4B6C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 192BC0 801E4B70 24190002 */  addiu      $t9, $zero, 0x2
/* 192BC4 801E4B74 00084880 */  sll        $t1, $t0, 2
/* 192BC8 801E4B78 00290821 */  addu       $at, $at, $t1
/* 192BCC 801E4B7C AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
/* 192BD0 801E4B80 8C4B0000 */  lw         $t3, 0x0($v0)
/* 192BD4 801E4B84 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 192BD8 801E4B88 24A51B50 */  addiu      $a1, $a1, %lo(D_800E1B50)
.L801E4B8C_ovl15:
/* 192BDC 801E4B8C 000B6080 */  sll        $t4, $t3, 2
/* 192BE0 801E4B90 00AC6821 */  addu       $t5, $a1, $t4
/* 192BE4 801E4B94 8DAF0000 */  lw         $t7, 0x0($t5)
/* 192BE8 801E4B98 3C0A801D */  lui        $t2, %hi(D_801C86AC)
/* 192BEC 801E4B9C 254A86AC */  addiu      $t2, $t2, %lo(D_801C86AC)
.L801E4BA0_ovl10:
/* 192BF0 801E4BA0 ADEA008C */  sw         $t2, 0x8C($t7)
/* 192BF4 801E4BA4 8C780000 */  lw         $t8, 0x0($v1)
.L801E4BA8_ovl13:
/* 192BF8 801E4BA8 3C0E801D */  lui        $t6, %hi(D_801CBAE8)
/* 192BFC 801E4BAC 25CEBAE8 */  addiu      $t6, $t6, %lo(D_801CBAE8)
/* 192C00 801E4BB0 8F080000 */  lw         $t0, 0x0($t8)
/* 192C04 801E4BB4 3C01800F */  lui        $at, %hi(D_800E8920)
/* 192C08 801E4BB8 44802000 */  mtc1       $zero, $f4
.L801E4BBC_ovl10:
/* 192C0C 801E4BBC 0008C880 */  sll        $t9, $t0, 2
/* 192C10 801E4BC0 00B94821 */  addu       $t1, $a1, $t9
/* 192C14 801E4BC4 8D2B0000 */  lw         $t3, 0x0($t1)
glabel func_801E4BC8_ovl10
/* 192C18 801E4BC8 3C06800F */  lui        $a2, %hi(D_800E8AE0)
/* 192C1C 801E4BCC 24C68AE0 */  addiu      $a2, $a2, %lo(D_800E8AE0)
/* 192C20 801E4BD0 AD6E0098 */  sw         $t6, 0x98($t3)
/* 192C24 801E4BD4 8C620000 */  lw         $v0, 0x0($v1)
/* 192C28 801E4BD8 44805000 */  mtc1       $zero, $f10
/* 192C2C 801E4BDC 8C4C0000 */  lw         $t4, 0x0($v0)
/* 192C30 801E4BE0 000C6880 */  sll        $t5, $t4, 2
/* 192C34 801E4BE4 002D0821 */  addu       $at, $at, $t5
/* 192C38 801E4BE8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 192C3C 801E4BEC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 192C40 801E4BF0 3C01800E */  lui        $at, %hi(D_800E6690)
/* 192C44 801E4BF4 000A7880 */  sll        $t7, $t2, 2
/* 192C48 801E4BF8 002F0821 */  addu       $at, $at, $t7
/* 192C4C 801E4BFC E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
/* 192C50 801E4C00 8C440000 */  lw         $a0, 0x0($v0)
/* 192C54 801E4C04 3C018022 */  lui        $at, %hi(D_8021D010_ovl9)
/* 192C58 801E4C08 00042080 */  sll        $a0, $a0, 2
/* 192C5C 801E4C0C 00C4C021 */  addu       $t8, $a2, $a0
.L801E4C10_ovl16:
/* 192C60 801E4C10 8F080000 */  lw         $t0, 0x0($t8)
/* 192C64 801E4C14 31190001 */  andi       $t9, $t0, 0x1
/* 192C68 801E4C18 13200007 */  beqz       $t9, .L801E4C38_ovl9
/* 192C6C 801E4C1C 00000000 */   nop
/* 192C70 801E4C20 3C018022 */  lui        $at, %hi(D_8021D00C_ovl9)
/* 192C74 801E4C24 C426D00C */  lwc1       $f6, %lo(D_8021D00C_ovl9)($at)
.L801E4C28_ovl16:
/* 192C78 801E4C28 3C01800E */  lui        $at, %hi(D_800E3750)
/* 192C7C 801E4C2C 00240821 */  addu       $at, $at, $a0
/* 192C80 801E4C30 10000005 */  b          .L801E4C48_ovl9
/* 192C84 801E4C34 E4263750 */   swc1      $f6, %lo(D_800E3750)($at)
.L801E4C38_ovl9:
/* 192C88 801E4C38 C428D010 */  lwc1       $f8, %lo(D_8021D010_ovl9)($at)
/* 192C8C 801E4C3C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 192C90 801E4C40 00240821 */  addu       $at, $at, $a0
.L801E4C44_ovl13:
/* 192C94 801E4C44 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
.L801E4C48_ovl9:
/* 192C98 801E4C48 8C440000 */  lw         $a0, 0x0($v0)
.L801E4C4C_ovl15:
/* 192C9C 801E4C4C 3C014120 */  lui        $at, (0x41200000 >> 16)
glabel func_801E4C50_ovl13
/* 192CA0 801E4C50 00042080 */  sll        $a0, $a0, 2
/* 192CA4 801E4C54 00C44821 */  addu       $t1, $a2, $a0
/* 192CA8 801E4C58 8D230000 */  lw         $v1, 0x0($t1)
/* 192CAC 801E4C5C 30630001 */  andi       $v1, $v1, 0x1
/* 192CB0 801E4C60 50600008 */  beql       $v1, $zero, .L801E4C84_ovl9
/* 192CB4 801E4C64 44816000 */   mtc1      $at, $f12
/* 192CB8 801E4C68 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 192CBC 801E4C6C 44811000 */  mtc1       $at, $f2
/* 192CC0 801E4C70 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 192CC4 801E4C74 44816000 */  mtc1       $at, $f12
.L801E4C78_ovl15:
/* 192CC8 801E4C78 10000005 */  b          .L801E4C90_ovl9
glabel func_801E4C7C_ovl10
/* 192CCC 801E4C7C 46001006 */   mov.s     $f0, $f2
/* 192CD0 801E4C80 44816000 */  mtc1       $at, $f12
.L801E4C84_ovl9:
/* 192CD4 801E4C84 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 192CD8 801E4C88 44811000 */  mtc1       $at, $f2
/* 192CDC 801E4C8C 46006006 */  mov.s      $f0, $f12
.L801E4C90_ovl9:
/* 192CE0 801E4C90 460A003C */  c.lt.s     $f0, $f10
.L801E4C94_ovl16:
/* 192CE4 801E4C94 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 192CE8 801E4C98 00240821 */  addu       $at, $at, $a0
/* 192CEC 801E4C9C 4500000A */  bc1f       .L801E4CC8_ovl15
/* 192CF0 801E4CA0 00000000 */   nop
/* 192CF4 801E4CA4 10600003 */  beqz       $v1, .L801E4CB4_ovl9
.L801E4CA8_ovl17:
/* 192CF8 801E4CA8 3C01800E */   lui       $at, %hi(D_800E3C90)
/* 192CFC 801E4CAC 10000002 */  b          .L801E4CB8_ovl17
/* 192D00 801E4CB0 46001006 */   mov.s     $f0, $f2
.L801E4CB4_ovl9:
/* 192D04 801E4CB4 46006006 */  mov.s      $f0, $f12
.L801E4CB8_ovl17:
/* 192D08 801E4CB8 46000407 */  neg.s      $f16, $f0
/* 192D0C 801E4CBC 00240821 */  addu       $at, $at, $a0
/* 192D10 801E4CC0 10000007 */  b          .L801E4CE0_ovl9
glabel func_801E4CC4_ovl13
/* 192D14 801E4CC4 E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
.L801E4CC8_ovl15:
/* 192D18 801E4CC8 50600004 */  beql       $v1, $zero, .L801E4CDC_ovl9
/* 192D1C 801E4CCC 46006006 */   mov.s     $f0, $f12
/* 192D20 801E4CD0 10000002 */  b          .L801E4CDC_ovl9
/* 192D24 801E4CD4 46001006 */   mov.s     $f0, $f2
/* 192D28 801E4CD8 46006006 */  mov.s      $f0, $f12
.L801E4CDC_ovl9:
/* 192D2C 801E4CDC E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L801E4CE0_ovl9:
/* 192D30 801E4CE0 0C02BE85 */  jal        func_800AFA14
/* 192D34 801E4CE4 00000000 */   nop
/* 192D38 801E4CE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 192D3C 801E4CEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 192D40 801E4CF0 03E00008 */  jr         $ra
/* 192D44 801E4CF4 00000000 */   nop
