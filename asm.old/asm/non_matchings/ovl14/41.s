glabel func_801DE5A8_ovl14 # 41
/* 201198 801DE5A8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 20119C 801DE5AC AFBF0024 */  sw          $ra, 0x24($sp)
/* 2011A0 801DE5B0 AFB00020 */  sw          $s0, 0x20($sp)
/* 2011A4 801DE5B4 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 2011A8 801DE5B8 8C90003C */  lw          $s0, 0x3C($a0)
/* 2011AC 801DE5BC 4485A000 */  mtc1        $a1, $f20
/* 2011B0 801DE5C0 5200000D */  beql        $s0, $zero, .L801DE5F8
/* 2011B4 801DE5C4 8FBF0024 */   lw         $ra, 0x24($sp)
.L801DE5C8:
/* 2011B8 801DE5C8 8E020080 */  lw          $v0, 0x80($s0)
/* 2011BC 801DE5CC 10400005 */  beqz        $v0, .L801DE5E4
/* 2011C0 801DE5D0 00000000 */   nop
/* 2011C4 801DE5D4 E4540084 */  swc1        $f20, 0x84($v0)
.L801DE5D8:
/* 2011C8 801DE5D8 8C420000 */  lw          $v0, 0x0($v0)
/* 2011CC 801DE5DC 5440FFFE */  bnel        $v0, $zero, .L801DE5D8
/* 2011D0 801DE5E0 E4540084 */   swc1       $f20, 0x84($v0)
.L801DE5E4:
/* 2011D4 801DE5E4 0C002FA4 */  jal         func_8000BE90
/* 2011D8 801DE5E8 02002025 */   move       $a0, $s0
/* 2011DC 801DE5EC 1440FFF6 */  bnez        $v0, .L801DE5C8
/* 2011E0 801DE5F0 00408025 */   move       $s0, $v0
/* 2011E4 801DE5F4 8FBF0024 */  lw          $ra, 0x24($sp)
.L801DE5F8:
/* 2011E8 801DE5F8 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 2011EC 801DE5FC 8FB00020 */  lw          $s0, 0x20($sp)
/* 2011F0 801DE600 03E00008 */  jr          $ra
/* 2011F4 801DE604 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DE5A8_ovl14, @function
.size func_801DE5A8_ovl14, . - func_801DE5A8_ovl14
