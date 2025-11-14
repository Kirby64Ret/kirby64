glabel func_80122FB0
/* 0ABA20 80122FB0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0ABA24 80122FB4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0ABA28 80122FB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ABA2C 80122FBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0ABA30 80122FC0 8C4E0000 */  lw    $t6, ($v0)
/* 0ABA34 80122FC4 3C01800E */ lui $at, %hi(D_800DDE10)
/* 0ABA38 80122FC8 3C058017 */  lui   $a1, %hi(D_80177098) # $a1, 0x8017
/* 0ABA3C 80122FCC 000E7880 */  sll   $t7, $t6, 2
/* 0ABA40 80122FD0 002F0821 */  addu  $at, $at, $t7
/* 0ABA44 80122FD4 AC24DE10 */ sw $a0, %lo(D_800DDE10)($at)
/* 0ABA48 80122FD8 8C580000 */  lw    $t8, ($v0)
/* 0ABA4C 80122FDC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray3)
/* 0ABA50 80122FE0 24A57098 */  addiu $a1, %lo(D_80177098) # addiu $a1, $a1, 0x7098
/* 0ABA54 80122FE4 0018C880 */  sll   $t9, $t8, 2
/* 0ABA58 80122FE8 00992021 */  addu  $a0, $a0, $t9
/* 0ABA5C 80122FEC 0C02C7B2 */  jal   assign_new_process_entry
/* 0ABA60 80122FF0 8C84E890 */ lw $a0, %lo(gEntityGObjProcessArray3)($a0)
/* 0ABA64 80122FF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0ABA68 80122FF8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0ABA6C 80122FFC 03E00008 */  jr    $ra
/* 0ABA70 80123000 00000000 */   nop   
.type func_80122FB0, @function
.size func_80122FB0, . - func_80122FB0
