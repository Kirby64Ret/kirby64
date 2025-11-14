glabel func_800B3094
/* 05B2E4 800B3094 248EFFF6 */  addiu $t6, $a0, -0xa
/* 05B2E8 800B3098 000E7843 */  sra   $t7, $t6, 1
/* 05B2EC 800B309C 000FC080 */  sll   $t8, $t7, 2
/* 05B2F0 800B30A0 3C02800D */ lui $v0, %hi(D_800D79D8)
/* 05B2F4 800B30A4 00581021 */  addu  $v0, $v0, $t8
/* 05B2F8 800B30A8 3C01800D */  lui   $at, %hi(D_800D67E4) # $at, 0x800d
/* 05B2FC 800B30AC 8C4279D8 */ lw $v0, %lo(D_800D79D8)($v0)
/* 05B300 800B30B0 C42467E4 */  lwc1  $f4, %lo(D_800D67E4)($at)
/* 05B304 800B30B4 03E00008 */  jr    $ra
/* 05B308 800B30B8 E4440074 */   swc1  $f4, 0x74($v0)
.type func_800B3094, @function
.size func_800B3094, . - func_800B3094
