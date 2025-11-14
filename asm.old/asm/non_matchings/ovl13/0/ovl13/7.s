glabel func_801DCA40_ovl13 # 7
/* 1F49C0 801DCA40 00047040 */  sll         $t6, $a0, 1
/* 1F49C4 801DCA44 3C02800E */  lui         $v0, %hi(D_800E77A0)
/* 1F49C8 801DCA48 004E1021 */  addu        $v0, $v0, $t6
/* 1F49CC 801DCA4C 944277A0 */  lhu         $v0, %lo(D_800E77A0)($v0)
/* 1F49D0 801DCA50 24010019 */  addiu       $at, $zero, 0x19
/* 1F49D4 801DCA54 00045080 */  sll         $t2, $a0, 2
/* 1F49D8 801DCA58 10410015 */  beq         $v0, $at, L801DCAB0_ovl13
/* 1F49DC 801DCA5C 3C0B800F */   lui        $t3, %hi(D_800EA8A0)
/* 1F49E0 801DCA60 2401001B */  addiu       $at, $zero, 0x1B
/* 1F49E4 801DCA64 10410006 */  beq         $v0, $at, L801DCA80_ovl13
/* 1F49E8 801DCA68 3C03800F */   lui        $v1, %hi(D_800EA6E0)
/* 1F49EC 801DCA6C 24010021 */  addiu       $at, $zero, 0x21
/* 1F49F0 801DCA70 1041001C */  beq         $v0, $at, L801DCAE4_ovl13
/* 1F49F4 801DCA74 00000000 */   nop
/* 1F49F8 801DCA78 03E00008 */  jr          $ra
/* 1F49FC 801DCA7C 00001025 */   move       $v0, $zero
glabel L801DCA80_ovl13
/* 1F4A00 801DCA80 3C188005 */  lui         $t8, %hi(D_8004A7C4)
/* 1F4A04 801DCA84 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 1F4A08 801DCA88 2463A6E0 */  addiu       $v1, $v1, %lo(D_800EA6E0)
/* 1F4A0C 801DCA8C 00047880 */  sll         $t7, $a0, 2
/* 1F4A10 801DCA90 8F190000 */  lw          $t9, 0x0($t8)
/* 1F4A14 801DCA94 006F1021 */  addu        $v0, $v1, $t7
/* 1F4A18 801DCA98 C4440000 */  lwc1        $f4, 0x0($v0)
/* 1F4A1C 801DCA9C 00194080 */  sll         $t0, $t9, 2
/* 1F4A20 801DCAA0 00684821 */  addu        $t1, $v1, $t0
/* 1F4A24 801DCAA4 C5260000 */  lwc1        $f6, 0x0($t1)
/* 1F4A28 801DCAA8 46062201 */  sub.s       $f8, $f4, $f6
/* 1F4A2C 801DCAAC E4480000 */  swc1        $f8, 0x0($v0)
glabel L801DCAB0_ovl13
/* 1F4A30 801DCAB0 3C0C8005 */  lui         $t4, %hi(D_8004A7C4)
/* 1F4A34 801DCAB4 8D8CA7C4 */  lw          $t4, %lo(D_8004A7C4)($t4)
/* 1F4A38 801DCAB8 3C03800F */  lui         $v1, %hi(D_800EA6E0)
/* 1F4A3C 801DCABC 2463A6E0 */  addiu       $v1, $v1, %lo(D_800EA6E0)
/* 1F4A40 801DCAC0 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F4A44 801DCAC4 256BA8A0 */  addiu       $t3, $t3, %lo(D_800EA8A0)
/* 1F4A48 801DCAC8 014B1021 */  addu        $v0, $t2, $t3
/* 1F4A4C 801DCACC 000D7080 */  sll         $t6, $t5, 2
/* 1F4A50 801DCAD0 006E7821 */  addu        $t7, $v1, $t6
/* 1F4A54 801DCAD4 C5F00000 */  lwc1        $f16, 0x0($t7)
/* 1F4A58 801DCAD8 C44A0000 */  lwc1        $f10, 0x0($v0)
/* 1F4A5C 801DCADC 46105481 */  sub.s       $f18, $f10, $f16
/* 1F4A60 801DCAE0 E4520000 */  swc1        $f18, 0x0($v0)
glabel L801DCAE4_ovl13
/* 1F4A64 801DCAE4 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 1F4A68 801DCAE8 8D08A7C4 */  lw          $t0, %lo(D_8004A7C4)($t0)
/* 1F4A6C 801DCAEC 3C03800F */  lui         $v1, %hi(D_800EA6E0)
/* 1F4A70 801DCAF0 3C19800E */  lui         $t9, %hi(gEntitiesNextPosYArray)
/* 1F4A74 801DCAF4 8D090000 */  lw          $t1, 0x0($t0)
/* 1F4A78 801DCAF8 2463A6E0 */  addiu       $v1, $v1, %lo(D_800EA6E0)
/* 1F4A7C 801DCAFC 27392790 */  addiu       $t9, $t9, %lo(gEntitiesNextPosYArray)
/* 1F4A80 801DCB00 0004C080 */  sll         $t8, $a0, 2
/* 1F4A84 801DCB04 00095080 */  sll         $t2, $t1, 2
/* 1F4A88 801DCB08 006A5821 */  addu        $t3, $v1, $t2
/* 1F4A8C 801DCB0C 03191021 */  addu        $v0, $t8, $t9
/* 1F4A90 801DCB10 C4440000 */  lwc1        $f4, 0x0($v0)
/* 1F4A94 801DCB14 C5660000 */  lwc1        $f6, 0x0($t3)
/* 1F4A98 801DCB18 46062201 */  sub.s       $f8, $f4, $f6
/* 1F4A9C 801DCB1C E4480000 */  swc1        $f8, 0x0($v0)
/* 1F4AA0 801DCB20 03E00008 */  jr          $ra
/* 1F4AA4 801DCB24 00001025 */   move       $v0, $zero
.type func_801DCA40_ovl13, @function

.size func_801DCA40_ovl13, . - func_801DCA40_ovl13
