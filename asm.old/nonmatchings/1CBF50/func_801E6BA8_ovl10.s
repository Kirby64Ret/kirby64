glabel func_801E6BA8_ovl10
/* 1D7918 801E6BA8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D791C 801E6BAC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D7920 801E6BB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D7924 801E6BB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D7928 801E6BB8 AFA40018 */  sw         $a0, 0x18($sp)
/* 1D792C 801E6BBC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1D7930 801E6BC0 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D7934 801E6BC4 24180001 */  addiu      $t8, $zero, 0x1
/* 1D7938 801E6BC8 000E7880 */  sll        $t7, $t6, 2
/* 1D793C 801E6BCC 002F0821 */  addu       $at, $at, $t7
/* 1D7940 801E6BD0 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
glabel func_801E6BD4_ovl16
/* 1D7944 801E6BD4 8C590000 */  lw         $t9, 0x0($v0)
/* 1D7948 801E6BD8 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1D794C 801E6BDC 24090002 */  addiu      $t1, $zero, 0x2
/* 1D7950 801E6BE0 00194080 */  sll        $t0, $t9, 2
/* 1D7954 801E6BE4 00280821 */  addu       $at, $at, $t0
/* 1D7958 801E6BE8 AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
/* 1D795C 801E6BEC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1D7960 801E6BF0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D7964 801E6BF4 3C0C801E */  lui        $t4, %hi(func_801DB1E0_ovl17)
/* 1D7968 801E6BF8 000A5880 */  sll        $t3, $t2, 2
/* 1D796C 801E6BFC 002B0821 */  addu       $at, $at, $t3
/* 1D7970 801E6C00 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
/* 1D7974 801E6C04 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1D7978 801E6C08 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1D797C 801E6C0C 258CB1E0 */  addiu      $t4, $t4, %lo(func_801DB1E0_ovl17)
/* 1D7980 801E6C10 000D7080 */  sll        $t6, $t5, 2
/* 1D7984 801E6C14 002E0821 */  addu       $at, $at, $t6
/* 1D7988 801E6C18 AC2CEF90 */  sw         $t4, %lo(D_800DEF90)($at)
.L801E6C1C_ovl9:
/* 1D798C 801E6C1C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1D7990 801E6C20 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1D7994 801E6C24 000FC880 */  sll        $t9, $t7, 2
/* 1D7998 801E6C28 00390821 */  addu       $at, $at, $t9
/* 1D799C 801E6C2C 0C07973C */  jal        func_801E5CF0_ovl13
/* 1D79A0 801E6C30 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 1D79A4 801E6C34 3C040001 */  lui        $a0, (0x10348 >> 16)
/* 1D79A8 801E6C38 0C02A806 */  jal        func_800AA018
/* 1D79AC 801E6C3C 34840348 */   ori       $a0, $a0, (0x10348 & 0xFFFF)
/* 1D79B0 801E6C40 3C040001 */  lui        $a0, (0x10347 >> 16)
/* 1D79B4 801E6C44 0C02A806 */  jal        func_800AA018
/* 1D79B8 801E6C48 34840347 */   ori       $a0, $a0, (0x10347 & 0xFFFF)
/* 1D79BC 801E6C4C 0C066D09 */  jal        func_8019B424_ovl7
.L801E6C50_ovl9:
/* 1D79C0 801E6C50 8FA40018 */   lw        $a0, 0x18($sp)
/* 1D79C4 801E6C54 3C040001 */  lui        $a0, (0x10352 >> 16)
/* 1D79C8 801E6C58 0C02A7A9 */  jal        func_800A9EA4
/* 1D79CC 801E6C5C 34840352 */   ori       $a0, $a0, (0x10352 & 0xFFFF)
/* 1D79D0 801E6C60 3C040001 */  lui        $a0, (0x10351 >> 16)
/* 1D79D4 801E6C64 0C02A7A9 */  jal        func_800A9EA4
/* 1D79D8 801E6C68 34840351 */   ori       $a0, $a0, (0x10351 & 0xFFFF)
/* 1D79DC 801E6C6C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1D79E0 801E6C70 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1D79E4 801E6C74 3C01800E */  lui        $at, %hi(D_800E6A10)
.L801E6C78_ovl9:
/* 1D79E8 801E6C78 8F020000 */  lw         $v0, 0x0($t8)
/* 1D79EC 801E6C7C 00021080 */  sll        $v0, $v0, 2
/* 1D79F0 801E6C80 00220821 */  addu       $at, $at, $v0
/* 1D79F4 801E6C84 C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
/* 1D79F8 801E6C88 3C01800E */  lui        $at, %hi(D_800E64D0)
.L801E6C8C_ovl9:
/* 1D79FC 801E6C8C 00220821 */  addu       $at, $at, $v0
glabel func_801E6C90_ovl16
/* 1D7A00 801E6C90 46000100 */  add.s      $f4, $f0, $f0
/* 1D7A04 801E6C94 0C02BE85 */  jal        func_800AFA14
glabel func_801E6C98_ovl9
/* 1D7A08 801E6C98 E42464D0 */   swc1      $f4, %lo(D_800E64D0)($at)
/* 1D7A0C 801E6C9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D7A10 801E6CA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D7A14 801E6CA4 03E00008 */  jr         $ra
/* 1D7A18 801E6CA8 00000000 */   nop
