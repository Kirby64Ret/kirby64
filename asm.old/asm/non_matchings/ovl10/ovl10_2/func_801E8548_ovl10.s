glabel func_801E8548_ovl10
/* 1D92B8 801E8548 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D92BC 801E854C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D92C0 801E8550 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D92C4 801E8554 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D92C8 801E8558 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D92CC 801E855C 8C430000 */  lw    $v1, ($v0)
/* 1D92D0 801E8560 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1D92D4 801E8564 24010001 */  li    $at, 1
/* 1D92D8 801E8568 00031880 */  sll   $v1, $v1, 2
/* 1D92DC 801E856C 01C37021 */  addu  $t6, $t6, $v1
/* 1D92E0 801E8570 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1D92E4 801E8574 240F0002 */  li    $t7, 2
/* 1D92E8 801E8578 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D92EC 801E857C 15C1000A */  bne   $t6, $at, .L801E85A8_ovl10
/* 1D92F0 801E8580 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D92F4 801E8584 00230821 */  addu  $at, $at, $v1
/* 1D92F8 801E8588 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1D92FC 801E858C 8C580000 */  lw    $t8, ($v0)
/* 1D9300 801E8590 3C05801F */  lui   $a1, %hi(D_801E8008) # $a1, 0x801f
/* 1D9304 801E8594 24A58008 */  addiu $a1, %lo(D_801E8008) # addiu $a1, $a1, -0x7ff8
/* 1D9308 801E8598 0018C880 */  sll   $t9, $t8, 2
/* 1D930C 801E859C 00992021 */  addu  $a0, $a0, $t9
/* 1D9310 801E85A0 0C02C7B2 */  jal   assign_new_process_entry
/* 1D9314 801E85A4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E85A8_ovl10:
/* 1D9318 801E85A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D931C 801E85AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9320 801E85B0 03E00008 */  jr    $ra
/* 1D9324 801E85B4 00000000 */   nop   
.type func_801E8548_ovl10, @function
.size func_801E8548_ovl10, . - func_801E8548_ovl10
