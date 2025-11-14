glabel func_800BAAE4 # 4
/* 062D34 800BAAE4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 062D38 800BAAE8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 062D3C 800BAAEC AFB10018 */  sw          $s1, 0x18($sp)
/* 062D40 800BAAF0 AFB00014 */  sw          $s0, 0x14($sp)
/* 062D44 800BAAF4 8C900004 */  lw          $s0, 0x4($a0)
/* 062D48 800BAAF8 00808825 */  move        $s1, $a0
/* 062D4C 800BAAFC 52000016 */  beql        $s0, $zero, L800BAB58
/* 062D50 800BAB00 8FBF001C */   lw         $ra, 0x1C($sp)
/* 062D54 800BAB04 8E040000 */  lw          $a0, 0x0($s0)
glabel L800BAB08
/* 062D58 800BAB08 8C8E0010 */  lw          $t6, 0x10($a0)
/* 062D5C 800BAB0C 51C00012 */  beql        $t6, $zero, L800BAB58
/* 062D60 800BAB10 8FBF001C */   lw         $ra, 0x1C($sp)
/* 062D64 800BAB14 8C820008 */  lw          $v0, 0x8($a0)
/* 062D68 800BAB18 50400007 */  beql        $v0, $zero, L800BAB38
/* 062D6C 800BAB1C 02202025 */   move       $a0, $s1
/* 062D70 800BAB20 0443000A */  bgezl       $v0, L800BAB4C
/* 062D74 800BAB24 8E100004 */   lw         $s0, 0x4($s0)
/* 062D78 800BAB28 0C02EA99 */  jal         func_800BAA64
/* 062D7C 800BAB2C 00000000 */   nop
/* 062D80 800BAB30 10400005 */  beqz        $v0, L800BAB48
/* 062D84 800BAB34 02202025 */   move       $a0, $s1
glabel L800BAB38
/* 062D88 800BAB38 0C02EA81 */  jal         func_800BAA04
/* 062D8C 800BAB3C 02002825 */   move       $a1, $s0
/* 062D90 800BAB40 10000002 */  b           L800BAB4C
/* 062D94 800BAB44 8E300004 */   lw         $s0, 0x4($s1)
glabel L800BAB48
/* 062D98 800BAB48 8E100004 */  lw          $s0, 0x4($s0)
glabel L800BAB4C
/* 062D9C 800BAB4C 5600FFEE */  bnel        $s0, $zero, L800BAB08
/* 062DA0 800BAB50 8E040000 */   lw         $a0, 0x0($s0)
/* 062DA4 800BAB54 8FBF001C */  lw          $ra, 0x1C($sp)
glabel L800BAB58
/* 062DA8 800BAB58 8FB00014 */  lw          $s0, 0x14($sp)
/* 062DAC 800BAB5C 8FB10018 */  lw          $s1, 0x18($sp)
/* 062DB0 800BAB60 03E00008 */  jr          $ra
/* 062DB4 800BAB64 27BD0020 */   addiu      $sp, $sp, 0x20
.size func_800BAAE4, . - func_800BAAE4
