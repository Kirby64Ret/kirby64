glabel func_801E9770_ovl10
/* 1DA4E0 801E9770 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DA4E4 801E9774 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DA4E8 801E9778 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DA4EC 801E977C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DA4F0 801E9780 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DA4F4 801E9784 8C430000 */  lw    $v1, ($v0)
/* 1DA4F8 801E9788 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1DA4FC 801E978C 24010001 */  li    $at, 1
/* 1DA500 801E9790 00031880 */  sll   $v1, $v1, 2
/* 1DA504 801E9794 01C37021 */  addu  $t6, $t6, $v1
/* 1DA508 801E9798 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1DA50C 801E979C 240FFFFF */  li    $t7, -1
/* 1DA510 801E97A0 15C10016 */  bne   $t6, $at, .L801E97FC_ovl10
/* 1DA514 801E97A4 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1DA518 801E97A8 00230821 */  addu  $at, $at, $v1
/* 1DA51C 801E97AC AC2F9FE0 */ sw $t7, %lo(D_800E9FE0)($at)
/* 1DA520 801E97B0 8C580000 */  lw    $t8, ($v0)
/* 1DA524 801E97B4 3C01800F */ lui $at, %hi(D_800E9560)
/* 1DA528 801E97B8 24080002 */  li    $t0, 2
/* 1DA52C 801E97BC 0018C880 */  sll   $t9, $t8, 2
/* 1DA530 801E97C0 00390821 */  addu  $at, $at, $t9
/* 1DA534 801E97C4 AC209560 */ sw $zero, %lo(D_800E9560)($at)
/* 1DA538 801E97C8 8C490000 */  lw    $t1, ($v0)
/* 1DA53C 801E97CC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DA540 801E97D0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DA544 801E97D4 00095080 */  sll   $t2, $t1, 2
/* 1DA548 801E97D8 002A0821 */  addu  $at, $at, $t2
/* 1DA54C 801E97DC AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 1DA550 801E97E0 8C4B0000 */  lw    $t3, ($v0)
/* 1DA554 801E97E4 3C05801F */  lui   $a1, %hi(D_801E91B0) # $a1, 0x801f
/* 1DA558 801E97E8 24A591B0 */  addiu $a1, %lo(D_801E91B0) # addiu $a1, $a1, -0x6e50
/* 1DA55C 801E97EC 000B6080 */  sll   $t4, $t3, 2
/* 1DA560 801E97F0 008C2021 */  addu  $a0, $a0, $t4
/* 1DA564 801E97F4 0C02C7B2 */  jal   assign_new_process_entry
/* 1DA568 801E97F8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E97FC_ovl10:
/* 1DA56C 801E97FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DA570 801E9800 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DA574 801E9804 03E00008 */  jr    $ra
/* 1DA578 801E9808 00000000 */   nop   
.type func_801E9770_ovl10, @function
.size func_801E9770_ovl10, . - func_801E9770_ovl10
