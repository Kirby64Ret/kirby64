glabel func_801DCA48_ovl11
/* 1E7308 801DCA48 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
glabel func_801DCA4C_ovl12
/* 1E730C 801DCA4C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E7310 801DCA50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E7314 801DCA54 AFBF0014 */  sw         $ra, 0x14($sp)
.L801DCA58_ovl16:
/* 1E7318 801DCA58 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E731C 801DCA5C 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DCA60_ovl16:
/* 1E7320 801DCA60 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 1E7324 801DCA64 3C06801E */  lui        $a2, %hi(D_801E0B70_ovl11)
/* 1E7328 801DCA68 000FC080 */  sll        $t8, $t7, 2
/* 1E732C 801DCA6C 00982021 */  addu       $a0, $a0, $t8
/* 1E7330 801DCA70 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 1E7334 801DCA74 24C60B70 */  addiu      $a2, $a2, %lo(D_801E0B70_ovl11)
glabel func_801DCA78_ovl9
/* 1E7338 801DCA78 0C02911F */  jal        call_virtual_function
/* 1E733C 801DCA7C 24050009 */   addiu     $a1, $zero, 0x9
.L801DCA80_ovl13:
/* 1E7340 801DCA80 3C198005 */  lui        $t9, %hi(D_8004A7C4)
glabel func_801DCA84_ovl16
/* 1E7344 801DCA84 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1E7348 801DCA88 3C08800F */  lui        $t0, %hi(D_800E9FE0)
/* 1E734C 801DCA8C 8F220000 */  lw         $v0, 0x0($t9)
/* 1E7350 801DCA90 00021080 */  sll        $v0, $v0, 2
/* 1E7354 801DCA94 01024021 */  addu       $t0, $t0, $v0
/* 1E7358 801DCA98 8D089FE0 */  lw         $t0, %lo(D_800E9FE0)($t0)
/* 1E735C 801DCA9C 11000009 */  beqz       $t0, .L801DCAC4_ovl11
/* 1E7360 801DCAA0 00000000 */   nop
/* 1E7364 801DCAA4 0C0770E2 */  jal        func_801DC388_ovl11
.L801DCAA8_ovl12:
/* 1E7368 801DCAA8 00000000 */   nop
.L801DCAAC_ovl9:
/* 1E736C 801DCAAC 0C077117 */  jal        func_801DC45C_ovl12
glabel func_801DCAB0_ovl13
/* 1E7370 801DCAB0 00000000 */   nop
/* 1E7374 801DCAB4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1E7378 801DCAB8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1E737C 801DCABC 8D220000 */  lw         $v0, 0x0($t1)
/* 1E7380 801DCAC0 00021080 */  sll        $v0, $v0, 2
.L801DCAC4_ovl11:
/* 1E7384 801DCAC4 3C0A800F */  lui        $t2, %hi(D_800EA1A0)
/* 1E7388 801DCAC8 01425021 */  addu       $t2, $t2, $v0
/* 1E738C 801DCACC 8D4AA1A0 */  lw         $t2, %lo(D_800EA1A0)($t2)
/* 1E7390 801DCAD0 11400003 */  beqz       $t2, .L801DCAE0_ovl11
/* 1E7394 801DCAD4 00000000 */   nop
/* 1E7398 801DCAD8 0C07719D */  jal        func_801DC674_ovl14
/* 1E739C 801DCADC 00000000 */   nop
.L801DCAE0_ovl11:
/* 1E73A0 801DCAE0 0C07720F */  jal        func_801DC83C_ovl16
.L801DCAE4_ovl13:
/* 1E73A4 801DCAE4 00000000 */   nop
/* 1E73A8 801DCAE8 3C01800D */  lui        $at, %hi(D_800D70D8)
/* 1E73AC 801DCAEC 0C02F047 */  jal        func_800BC11C
.L801DCAF0_ovl14:
/* 1E73B0 801DCAF0 C42C70D8 */   lwc1      $f12, %lo(D_800D70D8)($at)
/* 1E73B4 801DCAF4 8FBF0014 */  lw         $ra, 0x14($sp)
glabel func_801DCAF8_ovl9
/* 1E73B8 801DCAF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E73BC 801DCAFC 03E00008 */  jr         $ra
glabel func_801DCB00_ovl14
/* 1E73C0 801DCB00 00000000 */   nop
