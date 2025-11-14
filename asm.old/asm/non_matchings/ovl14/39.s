glabel func_801DE484_ovl14 # 39
/* 201074 801DE484 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 201078 801DE488 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 20107C 801DE48C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 201080 801DE490 AFBF0014 */  sw          $ra, 0x14($sp)
/* 201084 801DE494 8DCF0000 */  lw          $t7, 0x0($t6)
/* 201088 801DE498 3C19800F */  lui         $t9, %hi(D_800EA1A0)
/* 20108C 801DE49C AFA40018 */  sw          $a0, 0x18($sp)
/* 201090 801DE4A0 000FC080 */  sll         $t8, $t7, 2
/* 201094 801DE4A4 0338C821 */  addu        $t9, $t9, $t8
/* 201098 801DE4A8 8F39A1A0 */  lw          $t9, %lo(D_800EA1A0)($t9)
/* 20109C 801DE4AC 44992000 */  mtc1        $t9, $f4
/* 2010A0 801DE4B0 00000000 */  nop
/* 2010A4 801DE4B4 46802120 */  cvt.s.w     $f4, $f4
/* 2010A8 801DE4B8 44052000 */  mfc1        $a1, $f4
/* 2010AC 801DE4BC 0C077952 */  jal         func_801DE548_ovl14
/* 2010B0 801DE4C0 00000000 */   nop
/* 2010B4 801DE4C4 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 2010B8 801DE4C8 8D08A7C4 */  lw          $t0, %lo(D_8004A7C4)($t0)
/* 2010BC 801DE4CC 3C02800F */  lui         $v0, %hi(D_800EA1A0)
/* 2010C0 801DE4D0 8FA40018 */  lw          $a0, 0x18($sp)
/* 2010C4 801DE4D4 8D090000 */  lw          $t1, 0x0($t0)
/* 2010C8 801DE4D8 00095080 */  sll         $t2, $t1, 2
/* 2010CC 801DE4DC 004A1021 */  addu        $v0, $v0, $t2
/* 2010D0 801DE4E0 8C42A1A0 */  lw          $v0, %lo(D_800EA1A0)($v0)
/* 2010D4 801DE4E4 14400005 */  bnez        $v0, .L801DE4FC
/* 2010D8 801DE4E8 28410007 */   slti       $at, $v0, 0x7
/* 2010DC 801DE4EC 0C077982 */  jal         func_801DE608_ovl14
/* 2010E0 801DE4F0 3C053F00 */   lui        $a1, (0x3F000000 >> 16)
/* 2010E4 801DE4F4 10000011 */  b           .L801DE53C
/* 2010E8 801DE4F8 8FBF0014 */   lw         $ra, 0x14($sp)
.L801DE4FC:
/* 2010EC 801DE4FC 1020000C */  beqz        $at, .L801DE530
/* 2010F0 801DE500 3C0142F0 */   lui        $at, (0x42F00000 >> 16)
/* 2010F4 801DE504 44814000 */  mtc1        $at, $f8
/* 2010F8 801DE508 C4860040 */  lwc1        $f6, 0x40($a0)
/* 2010FC 801DE50C 3C013F00 */  lui         $at, (0x3F000000 >> 16)
/* 201100 801DE510 44818000 */  mtc1        $at, $f16
/* 201104 801DE514 46083283 */  div.s       $f10, $f6, $f8
/* 201108 801DE518 460A8481 */  sub.s       $f18, $f16, $f10
/* 20110C 801DE51C 44059000 */  mfc1        $a1, $f18
/* 201110 801DE520 0C077982 */  jal         func_801DE608_ovl14
/* 201114 801DE524 00000000 */   nop
/* 201118 801DE528 10000004 */  b           .L801DE53C
/* 20111C 801DE52C 8FBF0014 */   lw         $ra, 0x14($sp)
.L801DE530:
/* 201120 801DE530 0C077982 */  jal         func_801DE608_ovl14
/* 201124 801DE534 24050000 */   addiu      $a1, $zero, 0x0
/* 201128 801DE538 8FBF0014 */  lw          $ra, 0x14($sp)
.L801DE53C:
/* 20112C 801DE53C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 201130 801DE540 03E00008 */  jr          $ra
/* 201134 801DE544 00000000 */   nop
.type func_801DE484_ovl14, @function
.size func_801DE484_ovl14, . - func_801DE484_ovl14
