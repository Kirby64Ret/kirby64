glabel func_801E2F0C_ovl13 # 43
/* 1FAE8C 801E2F0C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FAE90 801E2F10 44866000 */  mtc1        $a2, $f12
/* 1FAE94 801E2F14 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FAE98 801E2F18 14A0003F */  bnez        $a1, L801E3018_ovl13
/* 1FAE9C 801E2F1C AFA40018 */   sw         $a0, 0x18($sp)
/* 1FAEA0 801E2F20 4600610D */  trunc.w.s   $f4, $f12
/* 1FAEA4 801E2F24 24010002 */  addiu       $at, $zero, 0x2
/* 1FAEA8 801E2F28 440F2000 */  mfc1        $t7, $f4
/* 1FAEAC 801E2F2C 00000000 */  nop
/* 1FAEB0 801E2F30 55E1003A */  bnel        $t7, $at, L801E301C_ovl13
/* 1FAEB4 801E2F34 8FBF0014 */   lw         $ra, 0x14($sp)
/* 1FAEB8 801E2F38 0C06E8CB */  jal         func_801BA32C_ovl7
/* 1FAEBC 801E2F3C 00000000 */   nop
/* 1FAEC0 801E2F40 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FAEC4 801E2F44 10410034 */  beq         $v0, $at, L801E3018_ovl13
/* 1FAEC8 801E2F48 24060001 */   addiu      $a2, $zero, 0x1
/* 1FAECC 801E2F4C 3C01800E */  lui         $at, %hi(D_800E76C0)
/* 1FAED0 801E2F50 00220821 */  addu        $at, $at, $v0
/* 1FAED4 801E2F54 241800FF */  addiu       $t8, $zero, 0xFF
/* 1FAED8 801E2F58 A03876C0 */  sb          $t8, %lo(D_800E76C0)($at)
/* 1FAEDC 801E2F5C 3C01800E */  lui         $at, %hi(D_800E7730)
/* 1FAEE0 801E2F60 00220821 */  addu        $at, $at, $v0
/* 1FAEE4 801E2F64 A0207730 */  sb          $zero, %lo(D_800E7730)($at)
/* 1FAEE8 801E2F68 3C01800E */  lui         $at, %hi(D_800E77A0)
/* 1FAEEC 801E2F6C 00024040 */  sll         $t0, $v0, 1
/* 1FAEF0 801E2F70 00280821 */  addu        $at, $at, $t0
/* 1FAEF4 801E2F74 24190025 */  addiu       $t9, $zero, 0x25
/* 1FAEF8 801E2F78 A43977A0 */  sh          $t9, %lo(D_800E77A0)($at)
/* 1FAEFC 801E2F7C 3C01800E */  lui         $at, %hi(D_800E7880)
/* 1FAF00 801E2F80 00220821 */  addu        $at, $at, $v0
/* 1FAF04 801E2F84 24090001 */  addiu       $t1, $zero, 0x1
/* 1FAF08 801E2F88 44803000 */  mtc1        $zero, $f6
/* 1FAF0C 801E2F8C A0297880 */  sb          $t1, %lo(D_800E7880)($at)
/* 1FAF10 801E2F90 3C01800E */  lui         $at, %hi(gEntitiesAngleZArray)
/* 1FAF14 801E2F94 00021080 */  sll         $v0, $v0, 2
/* 1FAF18 801E2F98 00220821 */  addu        $at, $at, $v0
/* 1FAF1C 801E2F9C 3C0A8005 */  lui         $t2, %hi(D_8004A7C4)
/* 1FAF20 801E2FA0 E4264390 */  swc1        $f6, %lo(gEntitiesAngleZArray)($at)
/* 1FAF24 801E2FA4 8D4AA7C4 */  lw          $t2, %lo(D_8004A7C4)($t2)
/* 1FAF28 801E2FA8 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FAF2C 801E2FAC 00220821 */  addu        $at, $at, $v0
/* 1FAF30 801E2FB0 AC26DC50 */  sw          $a2, %lo(gEntityVtableIndexArray)($at)
/* 1FAF34 801E2FB4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FAF38 801E2FB8 3C07800E */  lui         $a3, %hi(gEntitiesNextPosYArray)
/* 1FAF3C 801E2FBC 24E72790 */  addiu       $a3, $a3, %lo(gEntitiesNextPosYArray)
/* 1FAF40 801E2FC0 000B6080 */  sll         $t4, $t3, 2
/* 1FAF44 801E2FC4 00EC6821 */  addu        $t5, $a3, $t4
/* 1FAF48 801E2FC8 3C0141F0 */  lui         $at, (0x41F00000 >> 16)
/* 1FAF4C 801E2FCC 44815000 */  mtc1        $at, $f10
/* 1FAF50 801E2FD0 C5A80000 */  lwc1        $f8, 0x0($t5)
/* 1FAF54 801E2FD4 00E27021 */  addu        $t6, $a3, $v0
/* 1FAF58 801E2FD8 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 1FAF5C 801E2FDC 460A4400 */  add.s       $f16, $f8, $f10
/* 1FAF60 801E2FE0 3C0F800F */  lui         $t7, %hi(D_800E8AE0)
/* 1FAF64 801E2FE4 00220821 */  addu        $at, $at, $v0
/* 1FAF68 801E2FE8 25EF8AE0 */  addiu       $t7, $t7, %lo(D_800E8AE0)
/* 1FAF6C 801E2FEC E5D00000 */  swc1        $f16, 0x0($t6)
/* 1FAF70 801E2FF0 AC208E60 */  sw          $zero, %lo(D_800E8E60)($at)
/* 1FAF74 801E2FF4 004F2821 */  addu        $a1, $v0, $t7
/* 1FAF78 801E2FF8 8CB80000 */  lw          $t8, 0x0($a1)
/* 1FAF7C 801E2FFC 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 1FAF80 801E3000 00220821 */  addu        $at, $at, $v0
/* 1FAF84 801E3004 37190001 */  ori         $t9, $t8, 0x1
/* 1FAF88 801E3008 ACB90000 */  sw          $t9, 0x0($a1)
/* 1FAF8C 801E300C AC269E20 */  sw          $a2, %lo(D_800E9E20)($at)
/* 1FAF90 801E3010 0C029D9E */  jal         play_sound
/* 1FAF94 801E3014 24040188 */   addiu      $a0, $zero, 0x188
glabel L801E3018_ovl13
/* 1FAF98 801E3018 8FBF0014 */  lw          $ra, 0x14($sp)
glabel L801E301C_ovl13
/* 1FAF9C 801E301C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FAFA0 801E3020 03E00008 */  jr          $ra
/* 1FAFA4 801E3024 00000000 */   nop
.type func_801E2F0C_ovl13, @function

.size func_801E2F0C_ovl13, . - func_801E2F0C_ovl13
