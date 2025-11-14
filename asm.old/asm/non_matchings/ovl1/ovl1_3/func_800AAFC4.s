glabel func_800AAFC4
/* 053214 800AAFC4 44866000 */  mtc1  $a2, $f12
/* 053218 800AAFC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 05321C 800AAFCC AFBF0024 */  sw    $ra, 0x24($sp)
/* 053220 800AAFD0 44066000 */  mfc1  $a2, $f12
/* 053224 800AAFD4 AFB00020 */  sw    $s0, 0x20($sp)
/* 053228 800AAFD8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 05322C 800AAFDC 0C02ABCD */  jal   func_800AAF34
/* 053230 800AAFE0 AFA40028 */   sw    $a0, 0x28($sp)
/* 053234 800AAFE4 8FAE0028 */  lw    $t6, 0x28($sp)
/* 053238 800AAFE8 3C10800D */  lui   $s0, 0x800d
/* 05323C 800AAFEC 3C01800D */  lui   $at, %hi(D_800D5DF4) # $at, 0x800d
/* 053240 800AAFF0 25CFFFF6 */  addiu $t7, $t6, -0xa
/* 053244 800AAFF4 000FC043 */  sra   $t8, $t7, 1
/* 053248 800AAFF8 0018C880 */  sll   $t9, $t8, 2
/* 05324C 800AAFFC 02198021 */  addu  $s0, $s0, $t9
/* 053250 800AB000 8E1079D8 */  lw    $s0, 0x79d8($s0)
/* 053254 800AB004 C4345DF4 */  lwc1  $f20, %lo(D_800D5DF4)($at)
/* 053258 800AB008 C6040074 */  lwc1  $f4, 0x74($s0)
.L800AB00C_ovl1:
/* 05325C 800AB00C 4604A032 */  c.eq.s $f20, $f4
/* 053260 800AB010 00000000 */  nop   
/* 053264 800AB014 45030006 */  bc1tl .L800AB030_ovl1
/* 053268 800AB018 8FBF0024 */   lw    $ra, 0x24($sp)
/* 05326C 800AB01C 0C002DAF */  jal   finish_current_thread
/* 053270 800AB020 24040001 */   li    $a0, 1
/* 053274 800AB024 1000FFF9 */  b     .L800AB00C_ovl1
/* 053278 800AB028 C6040074 */   lwc1  $f4, 0x74($s0)
/* 05327C 800AB02C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800AB030_ovl1:
/* 053280 800AB030 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 053284 800AB034 8FB00020 */  lw    $s0, 0x20($sp)
/* 053288 800AB038 03E00008 */  jr    $ra
/* 05328C 800AB03C 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800AAFC4, @function
.size func_800AAFC4, . - func_800AAFC4
