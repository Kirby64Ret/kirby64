glabel func_800BDF2C
/* 06617C 800BDF2C 3C0E800D */  lui   $t6, %hi(D_800D6F50) # $t6, 0x800d
/* 066180 800BDF30 8DCE6F50 */  lw    $t6, %lo(D_800D6F50)($t6)
/* 066184 800BDF34 3C18800F */  lui   $t8, %hi(D_800F5770) # $t8, 0x800f
/* 066188 800BDF38 3C19800F */  lui   $t9, %hi(D_800F4D70) # $t9, 0x800f
/* 06618C 800BDF3C 000E7A00 */  sll   $t7, $t6, 8
/* 066190 800BDF40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 066194 800BDF44 27394D70 */  addiu $t9, %lo(D_800F4D70) # addiu $t9, $t9, 0x4d70
/* 066198 800BDF48 27185770 */  addiu $t8, %lo(D_800F5770) # addiu $t8, $t8, 0x5770
/* 06619C 800BDF4C 3C02FFFE */  lui   $v0, (0xFFFE7961 >> 16) # lui $v0, 0xfffe
/* 0661A0 800BDF50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0661A4 800BDF54 34427961 */  ori   $v0, (0xFFFE7961 & 0xFFFF) # ori $v0, $v0, 0x7961
/* 0661A8 800BDF58 01F81821 */  addu  $v1, $t7, $t8
/* 0661AC 800BDF5C 01F92021 */  addu  $a0, $t7, $t9
/* 0661B0 800BDF60 00002825 */  move  $a1, $zero
/* 0661B4 800BDF64 24060040 */  li    $a2, 64
.L800BDF68_ovl1:
/* 0661B8 800BDF68 24A50004 */  addiu $a1, $a1, 4
/* 0661BC 800BDF6C AC620000 */  sw    $v0, ($v1)
/* 0661C0 800BDF70 AC800000 */  sw    $zero, ($a0)
/* 0661C4 800BDF74 AC620004 */  sw    $v0, 4($v1)
/* 0661C8 800BDF78 AC800004 */  sw    $zero, 4($a0)
/* 0661CC 800BDF7C AC620008 */  sw    $v0, 8($v1)
/* 0661D0 800BDF80 AC800008 */  sw    $zero, 8($a0)
/* 0661D4 800BDF84 AC62000C */  sw    $v0, 0xc($v1)
/* 0661D8 800BDF88 AC80000C */  sw    $zero, 0xc($a0)
/* 0661DC 800BDF8C 24630010 */  addiu $v1, $v1, 0x10
/* 0661E0 800BDF90 14A6FFF5 */  bne   $a1, $a2, .L800BDF68_ovl1
/* 0661E4 800BDF94 24840010 */   addiu $a0, $a0, 0x10
/* 0661E8 800BDF98 0C02F766 */  jal   func_800BDD98
/* 0661EC 800BDF9C 00000000 */   nop   
/* 0661F0 800BDFA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0661F4 800BDFA4 24080001 */  li    $t0, 1
/* 0661F8 800BDFA8 3C01800F */  lui   $at, %hi(D_800F4D14) # $at, 0x800f
/* 0661FC 800BDFAC AC284D14 */  sw    $t0, %lo(D_800F4D14)($at)
/* 066200 800BDFB0 03E00008 */  jr    $ra
/* 066204 800BDFB4 27BD0018 */   addiu $sp, $sp, 0x18
.type func_800BDF2C, @function
.size func_800BDF2C, . - func_800BDF2C
