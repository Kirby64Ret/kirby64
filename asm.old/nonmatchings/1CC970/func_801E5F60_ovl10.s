glabel func_801E5F60_ovl10
/* 1D6CD0 801E5F60 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1D6CD4 801E5F64 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1D6CD8 801E5F68 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D6CDC 801E5F6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D6CE0 801E5F70 8DC30000 */  lw         $v1, 0x0($t6)
/* 1D6CE4 801E5F74 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1D6CE8 801E5F78 3C04800E */  lui        $a0, %hi(D_800DE350)
/* 1D6CEC 801E5F7C 00031880 */  sll        $v1, $v1, 2
/* 1D6CF0 801E5F80 00431021 */  addu       $v0, $v0, $v1
/* 1D6CF4 801E5F84 00832021 */  addu       $a0, $a0, $v1
/* 1D6CF8 801E5F88 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1D6CFC 801E5F8C 8C84E350 */  lw         $a0, %lo(D_800DE350)($a0)
/* 1D6D00 801E5F90 8C580070 */  lw         $t8, 0x70($v0)
/* 1D6D04 801E5F94 8C8F003C */  lw         $t7, 0x3C($a0)
/* 1D6D08 801E5F98 2719FFFF */  addiu      $t9, $t8, -0x1
/* 1D6D0C 801E5F9C 8DE60010 */  lw         $a2, 0x10($t7)
/* 1D6D10 801E5FA0 1720001F */  bnez       $t9, .L801E6020_ovl10
.L801E5FA4_ovl16:
/* 1D6D14 801E5FA4 AC590070 */   sw        $t9, 0x70($v0)
/* 1D6D18 801E5FA8 8C4A006C */  lw         $t2, 0x6C($v0)
.L801E5FAC_ovl15:
/* 1D6D1C 801E5FAC 24090002 */  addiu      $t1, $zero, 0x2
/* 1D6D20 801E5FB0 AC490070 */  sw         $t1, 0x70($v0)
/* 1D6D24 801E5FB4 394B0001 */  xori       $t3, $t2, 0x1
/* 1D6D28 801E5FB8 11600008 */  beqz       $t3, .L801E5FDC_ovl10
.L801E5FBC_ovl16:
/* 1D6D2C 801E5FBC AC4B006C */   sw        $t3, 0x6C($v0)
/* 1D6D30 801E5FC0 3C05801F */  lui        $a1, %hi(D_801F4508_ovl10)
glabel func_801E5FC4_ovl9
/* 1D6D34 801E5FC4 24A54508 */  addiu      $a1, $a1, %lo(D_801F4508_ovl10)
/* 1D6D38 801E5FC8 00C02025 */  or         $a0, $a2, $zero
/* 1D6D3C 801E5FCC 0C079766 */  jal        func_801E5D98_ovl13
/* 1D6D40 801E5FD0 AFA2001C */   sw        $v0, 0x1C($sp)
/* 1D6D44 801E5FD4 10000007 */  b          .L801E5FF4_ovl10
/* 1D6D48 801E5FD8 8FA2001C */   lw        $v0, 0x1C($sp)
.L801E5FDC_ovl10:
/* 1D6D4C 801E5FDC 3C05801F */  lui        $a1, %hi(D_801F450C_ovl10)
/* 1D6D50 801E5FE0 24A5450C */  addiu      $a1, $a1, %lo(D_801F450C_ovl10)
/* 1D6D54 801E5FE4 00C02025 */  or         $a0, $a2, $zero
/* 1D6D58 801E5FE8 0C079766 */  jal        func_801E5D98_ovl13
/* 1D6D5C 801E5FEC AFA2001C */   sw        $v0, 0x1C($sp)
/* 1D6D60 801E5FF0 8FA2001C */  lw         $v0, 0x1C($sp)
.L801E5FF4_ovl10:
/* 1D6D64 801E5FF4 8C4D0068 */  lw         $t5, 0x68($v0)
/* 1D6D68 801E5FF8 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1D6D6C 801E5FFC 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 1D6D70 801E6000 15C00007 */  bnez       $t6, .L801E6020_ovl10
.L801E6004_ovl15:
/* 1D6D74 801E6004 AC4E0068 */   sw        $t6, 0x68($v0)
/* 1D6D78 801E6008 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
.L801E600C_ovl9:
/* 1D6D7C 801E600C 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 1D6D80 801E6010 8F190000 */  lw         $t9, 0x0($t8)
/* 1D6D84 801E6014 00194080 */  sll        $t0, $t9, 2
/* 1D6D88 801E6018 00280821 */  addu       $at, $at, $t0
/* 1D6D8C 801E601C AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
.L801E6020_ovl10:
/* 1D6D90 801E6020 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D6D94 801E6024 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1D6D98 801E6028 03E00008 */  jr         $ra
/* 1D6D9C 801E602C 00000000 */   nop
