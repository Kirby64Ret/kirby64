nonmatching func_801D69D8_ovl9, 0x80

glabel func_801D69D8_ovl9
    /* 184A28 801D69D8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 184A2C 801D69DC AFB20020 */  sw         $s2, 0x20($sp)
    /* 184A30 801D69E0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 184A34 801D69E4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 184A38 801D69E8 3C10800E */  lui        $s0, %hi(gEntityFuncListIDArray)
    /* 184A3C 801D69EC 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 184A40 801D69F0 3C128022 */  lui        $s2, %hi(D_8021BBF4_ovl9)
    /* 184A44 801D69F4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 184A48 801D69F8 AFA40028 */  sw         $a0, 0x28($sp)
    /* 184A4C 801D69FC 2652BBF4 */  addiu      $s2, $s2, %lo(D_8021BBF4_ovl9)
    /* 184A50 801D6A00 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 184A54 801D6A04 2610DC50 */  addiu      $s0, $s0, %lo(gEntityFuncListIDArray)
    /* 184A58 801D6A08 8E2E0000 */  lw         $t6, 0x0($s1)
  .L801D6A0C_ovl9:
    /* 184A5C 801D6A0C 24050003 */  addiu      $a1, $zero, 0x3
    /* 184A60 801D6A10 02403025 */  or         $a2, $s2, $zero
    /* 184A64 801D6A14 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 184A68 801D6A18 000FC080 */  sll        $t8, $t7, 2
    /* 184A6C 801D6A1C 0218C821 */  addu       $t9, $s0, $t8
    /* 184A70 801D6A20 0C02911F */  jal        utilFuncTableJump
    /* 184A74 801D6A24 8F240000 */   lw        $a0, 0x0($t9)
    /* 184A78 801D6A28 1000FFF8 */  b          .L801D6A0C_ovl9
    /* 184A7C 801D6A2C 8E2E0000 */   lw        $t6, 0x0($s1)
    /* 184A80 801D6A30 00000000 */  nop
    /* 184A84 801D6A34 00000000 */  nop
    /* 184A88 801D6A38 00000000 */  nop
    /* 184A8C 801D6A3C 00000000 */  nop
    /* 184A90 801D6A40 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 184A94 801D6A44 8FB00018 */  lw         $s0, 0x18($sp)
    /* 184A98 801D6A48 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 184A9C 801D6A4C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 184AA0 801D6A50 03E00008 */  jr         $ra
    /* 184AA4 801D6A54 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_801D69D8_ovl9
.size func_801D69D8_ovl9, . - func_801D69D8_ovl9
