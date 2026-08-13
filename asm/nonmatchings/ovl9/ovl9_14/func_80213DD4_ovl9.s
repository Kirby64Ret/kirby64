nonmatching func_80213DD4_ovl9, 0x1C8

glabel func_80213DD4_ovl9
    /* 1C1E24 80213DD4 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1C1E28 80213DD8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 1C1E2C 80213DDC 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 1C1E30 80213DE0 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 1C1E34 80213DE4 8E230000 */  lw         $v1, 0x0($s1)
    /* 1C1E38 80213DE8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 1C1E3C 80213DEC AFBE0038 */  sw         $fp, 0x38($sp)
    /* 1C1E40 80213DF0 AFB70034 */  sw         $s7, 0x34($sp)
    /* 1C1E44 80213DF4 AFB60030 */  sw         $s6, 0x30($sp)
    /* 1C1E48 80213DF8 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 1C1E4C 80213DFC AFB40028 */  sw         $s4, 0x28($sp)
    /* 1C1E50 80213E00 AFB30024 */  sw         $s3, 0x24($sp)
    /* 1C1E54 80213E04 AFB20020 */  sw         $s2, 0x20($sp)
    /* 1C1E58 80213E08 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1C1E5C 80213E0C AFA40040 */  sw         $a0, 0x40($sp)
    /* 1C1E60 80213E10 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 1C1E64 80213E14 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 1C1E68 80213E18 240E0003 */  addiu      $t6, $zero, 0x3
    /* 1C1E6C 80213E1C 000FC080 */  sll        $t8, $t7, 2
    /* 1C1E70 80213E20 00380821 */  addu       $at, $at, $t8
    /* 1C1E74 80213E24 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
    /* 1C1E78 80213E28 8C790000 */  lw         $t9, 0x0($v1)
    /* 1C1E7C 80213E2C 3C12800F */  lui        $s2, %hi(D_800E9AA0)
    /* 1C1E80 80213E30 26529AA0 */  addiu      $s2, $s2, %lo(D_800E9AA0)
    /* 1C1E84 80213E34 00194080 */  sll        $t0, $t9, 2
    /* 1C1E88 80213E38 02484821 */  addu       $t1, $s2, $t0
    /* 1C1E8C 80213E3C AD200000 */  sw         $zero, 0x0($t1)
    /* 1C1E90 80213E40 3C10800F */  lui        $s0, %hi(D_800E9560)
    /* 1C1E94 80213E44 3C14800E */  lui        $s4, %hi(D_800E7880)
    /* 1C1E98 80213E48 3C150001 */  lui        $s5, (0x1024F >> 16)
    /* 1C1E9C 80213E4C 3C16800E */  lui        $s6, %hi(D_800DF310)
    /* 1C1EA0 80213E50 3C170001 */  lui        $s7, (0x1024E >> 16)
    /* 1C1EA4 80213E54 3C1E8021 */  lui        $fp, %hi(func_80214304_ovl9)
    /* 1C1EA8 80213E58 27DE4304 */  addiu      $fp, $fp, %lo(func_80214304_ovl9)
    /* 1C1EAC 80213E5C 36F7024E */  ori        $s7, $s7, (0x1024E & 0xFFFF)
    /* 1C1EB0 80213E60 26D6F310 */  addiu      $s6, $s6, %lo(D_800DF310)
    /* 1C1EB4 80213E64 36B5024F */  ori        $s5, $s5, (0x1024F & 0xFFFF)
    /* 1C1EB8 80213E68 26947880 */  addiu      $s4, $s4, %lo(D_800E7880)
    /* 1C1EBC 80213E6C 26109560 */  addiu      $s0, $s0, %lo(D_800E9560)
    /* 1C1EC0 80213E70 24130001 */  addiu      $s3, $zero, 0x1
    /* 1C1EC4 80213E74 8C650000 */  lw         $a1, 0x0($v1)
    /* 1C1EC8 80213E78 02855021 */  addu       $t2, $s4, $a1
  .L80213E7C_ovl9:
    /* 1C1ECC 80213E7C 914B0000 */  lbu        $t3, 0x0($t2)
    /* 1C1ED0 80213E80 166B0005 */  bne        $s3, $t3, .L80213E98_ovl9
    /* 1C1ED4 80213E84 00000000 */   nop
    /* 1C1ED8 80213E88 0C02A806 */  jal        func_800AA018
    /* 1C1EDC 80213E8C 02A02025 */   or        $a0, $s5, $zero
    /* 1C1EE0 80213E90 10000004 */  b          .L80213EA4_ovl9
    /* 1C1EE4 80213E94 8E230000 */   lw        $v1, 0x0($s1)
  .L80213E98_ovl9:
    /* 1C1EE8 80213E98 0C02A806 */  jal        func_800AA018
    /* 1C1EEC 80213E9C 02E02025 */   or        $a0, $s7, $zero
    /* 1C1EF0 80213EA0 8E230000 */  lw         $v1, 0x0($s1)
  .L80213EA4_ovl9:
    /* 1C1EF4 80213EA4 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 1C1EF8 80213EA8 000C6880 */  sll        $t5, $t4, 2
    /* 1C1EFC 80213EAC 02CD7821 */  addu       $t7, $s6, $t5
    /* 1C1F00 80213EB0 ADFE0000 */  sw         $fp, 0x0($t7)
    /* 1C1F04 80213EB4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1C1F08 80213EB8 000EC080 */  sll        $t8, $t6, 2
    /* 1C1F0C 80213EBC 0218C821 */  addu       $t9, $s0, $t8
    /* 1C1F10 80213EC0 AF200000 */  sw         $zero, 0x0($t9)
    /* 1C1F14 80213EC4 8C650000 */  lw         $a1, 0x0($v1)
    /* 1C1F18 80213EC8 00052080 */  sll        $a0, $a1, 2
    /* 1C1F1C 80213ECC 02044021 */  addu       $t0, $s0, $a0
    /* 1C1F20 80213ED0 8D090000 */  lw         $t1, 0x0($t0)
    /* 1C1F24 80213ED4 29210004 */  slti       $at, $t1, 0x4
    /* 1C1F28 80213ED8 1020001D */  beqz       $at, .L80213F50_ovl9
    /* 1C1F2C 80213EDC 02445021 */   addu      $t2, $s2, $a0
  .L80213EE0_ovl9:
    /* 1C1F30 80213EE0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 1C1F34 80213EE4 5560001B */  bnel       $t3, $zero, .L80213F54_ovl9
    /* 1C1F38 80213EE8 02445821 */   addu      $t3, $s2, $a0
    /* 1C1F3C 80213EEC 0C002DAF */  jal        ohSleep
    /* 1C1F40 80213EF0 24040008 */   addiu     $a0, $zero, 0x8
    /* 1C1F44 80213EF4 8E2C0000 */  lw         $t4, 0x0($s1)
    /* 1C1F48 80213EF8 8D850000 */  lw         $a1, 0x0($t4)
    /* 1C1F4C 80213EFC 00052080 */  sll        $a0, $a1, 2
    /* 1C1F50 80213F00 02446821 */  addu       $t5, $s2, $a0
    /* 1C1F54 80213F04 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 1C1F58 80213F08 55E00012 */  bnel       $t7, $zero, .L80213F54_ovl9
    /* 1C1F5C 80213F0C 02445821 */   addu      $t3, $s2, $a0
    /* 1C1F60 80213F10 0C002DAF */  jal        ohSleep
    /* 1C1F64 80213F14 24040007 */   addiu     $a0, $zero, 0x7
    /* 1C1F68 80213F18 8E230000 */  lw         $v1, 0x0($s1)
    /* 1C1F6C 80213F1C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1C1F70 80213F20 000EC080 */  sll        $t8, $t6, 2
    /* 1C1F74 80213F24 02181021 */  addu       $v0, $s0, $t8
    /* 1C1F78 80213F28 8C590000 */  lw         $t9, 0x0($v0)
    /* 1C1F7C 80213F2C 27280001 */  addiu      $t0, $t9, 0x1
    /* 1C1F80 80213F30 AC480000 */  sw         $t0, 0x0($v0)
    /* 1C1F84 80213F34 8C650000 */  lw         $a1, 0x0($v1)
    /* 1C1F88 80213F38 00052080 */  sll        $a0, $a1, 2
    /* 1C1F8C 80213F3C 02044821 */  addu       $t1, $s0, $a0
    /* 1C1F90 80213F40 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 1C1F94 80213F44 29410004 */  slti       $at, $t2, 0x4
    /* 1C1F98 80213F48 5420FFE5 */  bnel       $at, $zero, .L80213EE0_ovl9
    /* 1C1F9C 80213F4C 02445021 */   addu      $t2, $s2, $a0
  .L80213F50_ovl9:
    /* 1C1FA0 80213F50 02445821 */  addu       $t3, $s2, $a0
  .L80213F54_ovl9:
    /* 1C1FA4 80213F54 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 1C1FA8 80213F58 5180FFC8 */  beql       $t4, $zero, .L80213E7C_ovl9
    /* 1C1FAC 80213F5C 02855021 */   addu      $t2, $s4, $a1
    /* 1C1FB0 80213F60 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 1C1FB4 80213F64 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1C1FB8 80213F68 00240821 */  addu       $at, $at, $a0
    /* 1C1FBC 80213F6C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1C1FC0 80213F70 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 1C1FC4 80213F74 8FB20020 */  lw         $s2, 0x20($sp)
    /* 1C1FC8 80213F78 8FB30024 */  lw         $s3, 0x24($sp)
    /* 1C1FCC 80213F7C 8FB40028 */  lw         $s4, 0x28($sp)
    /* 1C1FD0 80213F80 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 1C1FD4 80213F84 8FB60030 */  lw         $s6, 0x30($sp)
    /* 1C1FD8 80213F88 8FB70034 */  lw         $s7, 0x34($sp)
    /* 1C1FDC 80213F8C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 1C1FE0 80213F90 AC20DC50 */  sw         $zero, %lo(gEntityFuncListIDArray)($at)
    /* 1C1FE4 80213F94 03E00008 */  jr         $ra
    /* 1C1FE8 80213F98 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_80213DD4_ovl9
.size func_80213DD4_ovl9, . - func_80213DD4_ovl9
