glabel func_801DC990_ovl16
/* 212C40 801DC990 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 212C44 801DC994 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 212C48 801DC998 27BDFFC0 */  addiu      $sp, $sp, -0x40
.L801DC99C_ovl15:
/* 212C4C 801DC99C AFBF0014 */  sw         $ra, 0x14($sp)
/* 212C50 801DC9A0 AFA50044 */  sw         $a1, 0x44($sp)
/* 212C54 801DC9A4 00803025 */  or         $a2, $a0, $zero
/* 212C58 801DC9A8 8DC40000 */  lw         $a0, 0x0($t6)
.L801DC9AC_ovl14:
/* 212C5C 801DC9AC 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 212C60 801DC9B0 AFA60040 */  sw         $a2, 0x40($sp)
.L801DC9B4_ovl10:
/* 212C64 801DC9B4 00047880 */  sll        $t7, $a0, 2
.L801DC9B8_ovl10:
/* 212C68 801DC9B8 030FC021 */  addu       $t8, $t8, $t7
/* 212C6C 801DC9BC 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 212C70 801DC9C0 0C044554 */  jal        func_80111550
.L801DC9C4_ovl17:
/* 212C74 801DC9C4 AFB8001C */   sw        $t8, 0x1C($sp)
/* 212C78 801DC9C8 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 212C7C 801DC9CC 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
.L801DC9D0_ovl13:
/* 212C80 801DC9D0 8FB9001C */  lw         $t9, 0x1C($sp)
/* 212C84 801DC9D4 8D050000 */  lw         $a1, 0x0($t0)
/* 212C88 801DC9D8 0C044722 */  jal        func_80111C88
/* 212C8C 801DC9DC 8F24008C */   lw        $a0, 0x8C($t9)
.L801DC9E0_ovl12:
/* 212C90 801DC9E0 8FA60040 */  lw         $a2, 0x40($sp)
/* 212C94 801DC9E4 1040001E */  beqz       $v0, .L801DCA60_ovl16
glabel func_801DC9E8_ovl12
/* 212C98 801DC9E8 00402025 */   or        $a0, $v0, $zero
.L801DC9EC_ovl17:
/* 212C9C 801DC9EC 10C0001A */  beqz       $a2, .L801DCA58_ovl16
.L801DC9F0_ovl13:
/* 212CA0 801DC9F0 8FA50044 */   lw        $a1, 0x44($sp)
.L801DC9F4_ovl13:
/* 212CA4 801DC9F4 10A00018 */  beqz       $a1, .L801DCA58_ovl16
/* 212CA8 801DC9F8 00000000 */   nop
/* 212CAC 801DC9FC 8C490024 */  lw         $t1, 0x24($v0)
/* 212CB0 801DCA00 AD260008 */  sw         $a2, 0x8($t1)
.L801DCA04_ovl15:
/* 212CB4 801DCA04 8C4A0024 */  lw         $t2, 0x24($v0)
/* 212CB8 801DCA08 AD460030 */  sw         $a2, 0x30($t2)
/* 212CBC 801DCA0C C4C40020 */  lwc1       $f4, 0x20($a2)
/* 212CC0 801DCA10 8C4B0024 */  lw         $t3, 0x24($v0)
.L801DCA14_ovl17:
/* 212CC4 801DCA14 46002187 */  neg.s      $f6, $f4
/* 212CC8 801DCA18 E566001C */  swc1       $f6, 0x1C($t3)
/* 212CCC 801DCA1C C4C80020 */  lwc1       $f8, 0x20($a2)
glabel func_801DCA20_ovl10
/* 212CD0 801DCA20 8C4C0024 */  lw         $t4, 0x24($v0)
.L801DCA24_ovl15:
/* 212CD4 801DCA24 46004287 */  neg.s      $f10, $f8
/* 212CD8 801DCA28 E58A0044 */  swc1       $f10, 0x44($t4)
/* 212CDC 801DCA2C 8C430024 */  lw         $v1, 0x24($v0)
.L801DCA30_ovl15:
/* 212CE0 801DCA30 C4B20040 */  lwc1       $f18, 0x40($a1)
/* 212CE4 801DCA34 C4700024 */  lwc1       $f16, 0x24($v1)
/* 212CE8 801DCA38 46128102 */  mul.s      $f4, $f16, $f18
glabel func_801DCA3C_ovl15
/* 212CEC 801DCA3C E4640018 */  swc1       $f4, 0x18($v1)
glabel func_801DCA40_ovl13
/* 212CF0 801DCA40 8C430024 */  lw         $v1, 0x24($v0)
glabel func_801DCA44_ovl12
/* 212CF4 801DCA44 C4A80040 */  lwc1       $f8, 0x40($a1)
glabel func_801DCA48_ovl11
/* 212CF8 801DCA48 C466004C */  lwc1       $f6, 0x4C($v1)
glabel func_801DCA4C_ovl12
/* 212CFC 801DCA4C 46004287 */  neg.s      $f10, $f8
/* 212D00 801DCA50 460A3402 */  mul.s      $f16, $f6, $f10
/* 212D04 801DCA54 E4700040 */  swc1       $f16, 0x40($v1)
.L801DCA58_ovl16:
/* 212D08 801DCA58 0C0447B3 */  jal        func_80111ECC
/* 212D0C 801DCA5C 00000000 */   nop
.L801DCA60_ovl16:
/* 212D10 801DCA60 0C0442C0 */  jal        func_80110B00
/* 212D14 801DCA64 27A40020 */   addiu     $a0, $sp, 0x20
/* 212D18 801DCA68 0C044054 */  jal        func_80110150
/* 212D1C 801DCA6C 27A40020 */   addiu     $a0, $sp, 0x20
/* 212D20 801DCA70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 212D24 801DCA74 27BD0040 */  addiu      $sp, $sp, 0x40
glabel func_801DCA78_ovl9
/* 212D28 801DCA78 00001025 */  or         $v0, $zero, $zero
/* 212D2C 801DCA7C 03E00008 */  jr         $ra
.L801DCA80_ovl13:
/* 212D30 801DCA80 00000000 */   nop
