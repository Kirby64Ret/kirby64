glabel func_801AA190_ovl7
/* 150200 801AA190 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 150204 801AA194 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 150208 801AA198 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15020C 801AA19C AFBF0014 */  sw    $ra, 0x14($sp)
/* 150210 801AA1A0 8DCF0000 */  lw    $t7, ($t6)
/* 150214 801AA1A4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 150218 801AA1A8 3C05801B */  lui   $a1, %hi(D_801AB5A4) # $a1, 0x801b
/* 15021C 801AA1AC 000FC080 */  sll   $t8, $t7, 2
/* 150220 801AA1B0 00982021 */  addu  $a0, $a0, $t8
/* 150224 801AA1B4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 150228 801AA1B8 0C02C7B2 */  jal   assign_new_process_entry
/* 15022C 801AA1BC 24A5B5A4 */   addiu $a1, %lo(D_801AB5A4) # addiu $a1, $a1, -0x4a5c
/* 150230 801AA1C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 150234 801AA1C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 150238 801AA1C8 24020001 */  li    $v0, 1
/* 15023C 801AA1CC 03E00008 */  jr    $ra
/* 150240 801AA1D0 00000000 */   nop   
.type func_801AA190_ovl7, @function
.size func_801AA190_ovl7, . - func_801AA190_ovl7
