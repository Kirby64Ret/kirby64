glabel func_801DB2D8_ovl13 # 1
/* 1F3258 801DB2D8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 1F325C 801DB2DC AFB20020 */  sw          $s2, 0x20($sp)
/* 1F3260 801DB2E0 AFB1001C */  sw          $s1, 0x1C($sp)
/* 1F3264 801DB2E4 AFB00018 */  sw          $s0, 0x18($sp)
/* 1F3268 801DB2E8 3C10800E */  lui         $s0, %hi(gEntityVtableIndexArray)
/* 1F326C 801DB2EC 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1F3270 801DB2F0 3C12801E */  lui         $s2, %hi(D_801E5A98_ovl13)
/* 1F3274 801DB2F4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 1F3278 801DB2F8 AFA40028 */  sw          $a0, 0x28($sp)
/* 1F327C 801DB2FC 26525A98 */  addiu       $s2, $s2, %lo(D_801E5A98_ovl13)
/* 1F3280 801DB300 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1F3284 801DB304 2610DC50 */  addiu       $s0, $s0, %lo(gEntityVtableIndexArray)
/* 1F3288 801DB308 8E2E0000 */  lw          $t6, 0x0($s1)
glabel L801DB30C_ovl13
/* 1F328C 801DB30C 24050010 */  addiu       $a1, $zero, 0x10
/* 1F3290 801DB310 02403025 */  move        $a2, $s2
/* 1F3294 801DB314 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F3298 801DB318 000FC080 */  sll         $t8, $t7, 2
/* 1F329C 801DB31C 0218C821 */  addu        $t9, $s0, $t8
/* 1F32A0 801DB320 0C02911F */  jal         call_virtual_function
/* 1F32A4 801DB324 8F240000 */   lw         $a0, 0x0($t9)
/* 1F32A8 801DB328 1000FFF8 */  b           L801DB30C_ovl13
/* 1F32AC 801DB32C 8E2E0000 */   lw         $t6, 0x0($s1)
/* 1F32B0 801DB330 00000000 */  nop
/* 1F32B4 801DB334 00000000 */  nop
/* 1F32B8 801DB338 00000000 */  nop
/* 1F32BC 801DB33C 00000000 */  nop
/* 1F32C0 801DB340 8FBF0024 */  lw          $ra, 0x24($sp)
/* 1F32C4 801DB344 8FB00018 */  lw          $s0, 0x18($sp)
/* 1F32C8 801DB348 8FB1001C */  lw          $s1, 0x1C($sp)
/* 1F32CC 801DB34C 8FB20020 */  lw          $s2, 0x20($sp)
/* 1F32D0 801DB350 03E00008 */  jr          $ra
/* 1F32D4 801DB354 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DB2D8_ovl13, @function

.size func_801DB2D8_ovl13, . - func_801DB2D8_ovl13
