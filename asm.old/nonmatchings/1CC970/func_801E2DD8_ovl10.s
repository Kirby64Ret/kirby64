glabel func_801E2DD8_ovl10
/* 1D3B48 801E2DD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D3B4C 801E2DDC AFBF0024 */  sw         $ra, 0x24($sp)
/* 1D3B50 801E2DE0 AFB20020 */  sw         $s2, 0x20($sp)
.L801E2DE4_ovl15:
/* 1D3B54 801E2DE4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1D3B58 801E2DE8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1D3B5C 801E2DEC 0C066E6C */  jal        func_8019B9B0_ovl7
/* 1D3B60 801E2DF0 AFA40028 */   sw        $a0, 0x28($sp)
/* 1D3B64 801E2DF4 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1D3B68 801E2DF8 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 1D3B6C 801E2DFC 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1D3B70 801E2E00 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 1D3B74 801E2E04 3C06801F */  lui        $a2, %hi(func_801F43B8_ovl9 + 0x38)
/* 1D3B78 801E2E08 8DCF0000 */  lw         $t7, 0x0($t6)
.L801E2E0C_ovl17:
/* 1D3B7C 801E2E0C 24C643F0 */  addiu      $a2, $a2, %lo(func_801F43B8_ovl9 + 0x38)
/* 1D3B80 801E2E10 24050003 */  addiu      $a1, $zero, 0x3
/* 1D3B84 801E2E14 008F2021 */  addu       $a0, $a0, $t7
/* 1D3B88 801E2E18 0C02911F */  jal        call_virtual_function
.L801E2E1C_ovl9:
/* 1D3B8C 801E2E1C 90847880 */   lbu       $a0, %lo(D_800E7880)($a0)
glabel D_801E2E20_ovl12
/* 1D3B90 801E2E20 3C12801F */  lui        $s2, %hi(func_801F43B8_ovl9 + 0x44)
glabel func_801E2E24_ovl17
/* 1D3B94 801E2E24 3C11800E */  lui        $s1, %hi(gEntityVtableIndexArray)
.L801E2E28_ovl13:
/* 1D3B98 801E2E28 2631DC50 */  addiu      $s1, $s1, %lo(gEntityVtableIndexArray)
/* 1D3B9C 801E2E2C 265243FC */  addiu      $s2, $s2, %lo(func_801F43B8_ovl9 + 0x44)
/* 1D3BA0 801E2E30 8E180000 */  lw         $t8, 0x0($s0)
.L801E2E34_ovl13:
/* 1D3BA4 801E2E34 24050001 */  addiu      $a1, $zero, 0x1
/* 1D3BA8 801E2E38 02403025 */  or         $a2, $s2, $zero
/* 1D3BAC 801E2E3C 8F190000 */  lw         $t9, 0x0($t8)
/* 1D3BB0 801E2E40 00194080 */  sll        $t0, $t9, 2
glabel func_801E2E44_ovl16
/* 1D3BB4 801E2E44 02284821 */  addu       $t1, $s1, $t0
/* 1D3BB8 801E2E48 0C02911F */  jal        call_virtual_function
glabel func_801E2E4C_ovl14
/* 1D3BBC 801E2E4C 8D240000 */   lw        $a0, 0x0($t1)
/* 1D3BC0 801E2E50 1000FFF8 */  b          .L801E2E34_ovl13
/* 1D3BC4 801E2E54 8E180000 */   lw        $t8, 0x0($s0)
/* 1D3BC8 801E2E58 00000000 */  nop
/* 1D3BCC 801E2E5C 00000000 */  nop
/* 1D3BD0 801E2E60 8FBF0024 */  lw         $ra, 0x24($sp)
.L801E2E64_ovl9:
/* 1D3BD4 801E2E64 8FB00018 */  lw         $s0, 0x18($sp)
/* 1D3BD8 801E2E68 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1D3BDC 801E2E6C 8FB20020 */  lw         $s2, 0x20($sp)
.L801E2E70_ovl13:
/* 1D3BE0 801E2E70 03E00008 */  jr         $ra
.L801E2E74_ovl13:
/* 1D3BE4 801E2E74 27BD0028 */   addiu     $sp, $sp, 0x28
