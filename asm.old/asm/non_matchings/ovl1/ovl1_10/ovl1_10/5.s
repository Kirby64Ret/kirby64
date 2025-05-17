glabel func_800BAB68 # 5
/* 062DB8 800BAB68 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 062DBC 800BAB6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 062DC0 800BAB70 8CAE0010 */  lw          $t6, 0x10($a1)
/* 062DC4 800BAB74 00803825 */  move        $a3, $a0
/* 062DC8 800BAB78 00C02025 */  move        $a0, $a2
/* 062DCC 800BAB7C 55C0000E */  bnel        $t6, $zero, L800BABB8
/* 062DD0 800BAB80 90E20000 */   lbu        $v0, 0x0($a3)
/* 062DD4 800BAB84 AFA60020 */  sw          $a2, 0x20($sp)
/* 062DD8 800BAB88 0C0011FC */  jal         func_800047F0
/* 062DDC 800BAB8C AFA70018 */   sw         $a3, 0x18($sp)
/* 062DE0 800BAB90 0C0011F4 */  jal         func_800047D0
/* 062DE4 800BAB94 8FA40020 */   lw         $a0, 0x20($sp)
/* 062DE8 800BAB98 8FA70018 */  lw          $a3, 0x18($sp)
/* 062DEC 800BAB9C 90EF0000 */  lbu         $t7, 0x0($a3)
/* 062DF0 800BABA0 11E00002 */  beqz        $t7, L800BABAC
/* 062DF4 800BABA4 00000000 */   nop
/* 062DF8 800BABA8 A0E00000 */  sb          $zero, 0x0($a3)
glabel L800BABAC
/* 062DFC 800BABAC 10000013 */  b           L800BABFC
/* 062E00 800BABB0 24020001 */   addiu      $v0, $zero, 0x1
/* 062E04 800BABB4 90E20000 */  lbu         $v0, 0x0($a3)
glabel L800BABB8
/* 062E08 800BABB8 90B80001 */  lbu         $t8, 0x1($a1)
/* 062E0C 800BABBC 5302000F */  beql        $t8, $v0, L800BABFC
/* 062E10 800BABC0 00001025 */   move       $v0, $zero
/* 062E14 800BABC4 10400007 */  beqz        $v0, L800BABE4
/* 062E18 800BABC8 00C02025 */   move       $a0, $a2
/* 062E1C 800BABCC 00C02025 */  move        $a0, $a2
/* 062E20 800BABD0 0C0011F4 */  jal         func_800047D0
/* 062E24 800BABD4 AFA70018 */   sw         $a3, 0x18($sp)
/* 062E28 800BABD8 8FA70018 */  lw          $a3, 0x18($sp)
/* 062E2C 800BABDC 10000006 */  b           L800BABF8
/* 062E30 800BABE0 A0E00000 */   sb         $zero, 0x0($a3)
glabel L800BABE4
/* 062E34 800BABE4 0C0011EC */  jal         func_800047B0
/* 062E38 800BABE8 AFA70018 */   sw         $a3, 0x18($sp)
/* 062E3C 800BABEC 8FA70018 */  lw          $a3, 0x18($sp)
/* 062E40 800BABF0 24190001 */  addiu       $t9, $zero, 0x1
/* 062E44 800BABF4 A0F90000 */  sb          $t9, 0x0($a3)
glabel L800BABF8
/* 062E48 800BABF8 00001025 */  move        $v0, $zero
glabel L800BABFC
/* 062E4C 800BABFC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 062E50 800BAC00 27BD0018 */  addiu       $sp, $sp, 0x18
/* 062E54 800BAC04 03E00008 */  jr          $ra
/* 062E58 800BAC08 00000000 */   nop
.size func_800BAB68, . - func_800BAB68
