glabel func_802233C8_ovl18
/* 235D68 802233C8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 235D6C 802233CC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 235D70 802233D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 235D74 802233D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 235D78 802233D8 AFA40018 */  sw         $a0, 0x18($sp)
/* 235D7C 802233DC 8C430000 */  lw         $v1, 0x0($v0)
/* 235D80 802233E0 3C0E800F */  lui        $t6, %hi(D_800E9E20)
/* 235D84 802233E4 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 235D88 802233E8 00031880 */  sll        $v1, $v1, 2
/* 235D8C 802233EC 01C37021 */  addu       $t6, $t6, $v1
.L802233F0_ovl19:
/* 235D90 802233F0 8DCE9E20 */  lw         $t6, %lo(D_800E9E20)($t6)
/* 235D94 802233F4 00230821 */  addu       $at, $at, $v1
/* 235D98 802233F8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 235D9C 802233FC 51C0000A */  beql       $t6, $zero, .L80223428_ovl18
/* 235DA0 80223400 8FBF0014 */   lw        $ra, 0x14($sp)
/* 235DA4 80223404 AC20DC50 */  sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 235DA8 80223408 8C4F0000 */  lw         $t7, 0x0($v0)
/* 235DAC 8022340C 3C058022 */  lui        $a1, %hi(func_802228F8_ovl19)
/* 235DB0 80223410 24A528F8 */  addiu      $a1, $a1, %lo(func_802228F8_ovl19)
/* 235DB4 80223414 000FC080 */  sll        $t8, $t7, 2
/* 235DB8 80223418 00982021 */  addu       $a0, $a0, $t8
/* 235DBC 8022341C 0C02C7B2 */  jal        assign_new_process_entry
/* 235DC0 80223420 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 235DC4 80223424 8FBF0014 */  lw         $ra, 0x14($sp)
.L80223428_ovl18:
/* 235DC8 80223428 27BD0018 */  addiu      $sp, $sp, 0x18
/* 235DCC 8022342C 03E00008 */  jr         $ra
/* 235DD0 80223430 00000000 */   nop
