glabel func_8021B27C_ovl9
/* 1C92CC 8021B27C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C92D0 8021B280 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C92D4 8021B284 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C92D8 8021B288 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C92DC 8021B28C AFA40018 */  sw         $a0, 0x18($sp)
/* 1C92E0 8021B290 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1C92E4 8021B294 3C19800F */  lui        $t9, %hi(D_800E9E20)
/* 1C92E8 8021B298 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 1C92EC 8021B29C 000FC080 */  sll        $t8, $t7, 2
/* 1C92F0 8021B2A0 0338C821 */  addu       $t9, $t9, $t8
/* 1C92F4 8021B2A4 8F399E20 */  lw         $t9, %lo(D_800E9E20)($t9)
/* 1C92F8 8021B2A8 53200016 */  beql       $t9, $zero, .L8021B304_ovl9
/* 1C92FC 8021B2AC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1C9300 8021B2B0 44816000 */  mtc1       $at, $f12
/* 1C9304 8021B2B4 0C0669FA */  jal        func_8019A7E8_ovl7
/* 1C9308 8021B2B8 00000000 */   nop
/* 1C930C 8021B2BC 14400010 */  bnez       $v0, .L8021B300_ovl9
/* 1C9310 8021B2C0 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* 1C9314 8021B2C4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C9318 8021B2C8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1C931C 8021B2CC 24080003 */  addiu      $t0, $zero, 0x3
/* 1C9320 8021B2D0 8C490000 */  lw         $t1, 0x0($v0)
/* 1C9324 8021B2D4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1C9328 8021B2D8 3C058022 */  lui        $a1, %hi(func_8021ABB4_ovl9)
/* 1C932C 8021B2DC 00095080 */  sll        $t2, $t1, 2
/* 1C9330 8021B2E0 002A0821 */  addu       $at, $at, $t2
/* 1C9334 8021B2E4 AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
/* 1C9338 8021B2E8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1C933C 8021B2EC 24A5ABB4 */  addiu      $a1, $a1, %lo(func_8021ABB4_ovl9)
/* 1C9340 8021B2F0 000B6080 */  sll        $t4, $t3, 2
/* 1C9344 8021B2F4 008C2021 */  addu       $a0, $a0, $t4
/* 1C9348 8021B2F8 0C02C7B2 */  jal        assign_new_process_entry
/* 1C934C 8021B2FC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L8021B300_ovl9:
/* 1C9350 8021B300 8FBF0014 */  lw         $ra, 0x14($sp)
.L8021B304_ovl9:
/* 1C9354 8021B304 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C9358 8021B308 03E00008 */  jr         $ra
/* 1C935C 8021B30C 00000000 */   nop
