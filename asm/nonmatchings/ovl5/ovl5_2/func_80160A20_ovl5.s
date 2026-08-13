nonmatching func_80160A20_ovl5, 0x58

glabel func_80160A20_ovl5
    /* 107E90 80160A20 00047080 */  sll        $t6, $a0, 2
    /* 107E94 80160A24 3C0F8019 */  lui        $t7, %hi(D_8018E030_ovl5)
    /* 107E98 80160A28 01EE7821 */  addu       $t7, $t7, $t6
    /* 107E9C 80160A2C 8DEFE030 */  lw         $t7, %lo(D_8018E030_ovl5)($t7)
    /* 107EA0 80160A30 3C02800F */  lui        $v0, %hi(D_800EA520)
    /* 107EA4 80160A34 24010004 */  addiu      $at, $zero, 0x4
    /* 107EA8 80160A38 000FC080 */  sll        $t8, $t7, 2
    /* 107EAC 80160A3C 00581021 */  addu       $v0, $v0, $t8
    /* 107EB0 80160A40 8C42A520 */  lw         $v0, %lo(D_800EA520)($v0)
    /* 107EB4 80160A44 10410005 */  beq        $v0, $at, .L80160A5C_ovl5
    /* 107EB8 80160A48 24010005 */   addiu     $at, $zero, 0x5
    /* 107EBC 80160A4C 10410003 */  beq        $v0, $at, .L80160A5C_ovl5
    /* 107EC0 80160A50 2401000B */   addiu     $at, $zero, 0xB
    /* 107EC4 80160A54 54410004 */  bnel       $v0, $at, .L80160A68_ovl5
    /* 107EC8 80160A58 24020001 */   addiu     $v0, $zero, 0x1
  .L80160A5C_ovl5:
    /* 107ECC 80160A5C 03E00008 */  jr         $ra
    /* 107ED0 80160A60 00001025 */   or        $v0, $zero, $zero
    /* 107ED4 80160A64 24020001 */  addiu      $v0, $zero, 0x1
  .L80160A68_ovl5:
    /* 107ED8 80160A68 03E00008 */  jr         $ra
    /* 107EDC 80160A6C 00000000 */   nop
    /* 107EE0 80160A70 03E00008 */  jr         $ra
    /* 107EE4 80160A74 00000000 */   nop
endlabel func_80160A20_ovl5
.size func_80160A20_ovl5, . - func_80160A20_ovl5
