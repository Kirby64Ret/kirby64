glabel func_8021B71C_ovl9
/* 1C976C 8021B71C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C9770 8021B720 3C014320 */  lui        $at, (0x43200000 >> 16)
/* 1C9774 8021B724 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C9778 8021B728 44816000 */  mtc1       $at, $f12
/* 1C977C 8021B72C 0C0669FA */  jal        func_8019A7E8_ovl7
/* 1C9780 8021B730 AFA40018 */   sw        $a0, 0x18($sp)
/* 1C9784 8021B734 10400010 */  beqz       $v0, .L8021B778_ovl9
/* 1C9788 8021B738 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* 1C978C 8021B73C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C9790 8021B740 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1C9794 8021B744 240E0001 */  addiu      $t6, $zero, 0x1
/* 1C9798 8021B748 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1C979C 8021B74C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1C97A0 8021B750 3C058022 */  lui        $a1, %hi(func_8021B58C_ovl9)
/* 1C97A4 8021B754 000FC080 */  sll        $t8, $t7, 2
/* 1C97A8 8021B758 00380821 */  addu       $at, $at, $t8
/* 1C97AC 8021B75C AC2EDC50 */  sw         $t6, %lo(gEntityVtableIndexArray)($at)
/* 1C97B0 8021B760 8C590000 */  lw         $t9, 0x0($v0)
/* 1C97B4 8021B764 24A5B58C */  addiu      $a1, $a1, %lo(func_8021B58C_ovl9)
/* 1C97B8 8021B768 00194080 */  sll        $t0, $t9, 2
/* 1C97BC 8021B76C 00882021 */  addu       $a0, $a0, $t0
/* 1C97C0 8021B770 0C02C7B2 */  jal        assign_new_process_entry
/* 1C97C4 8021B774 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L8021B778_ovl9:
/* 1C97C8 8021B778 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C97CC 8021B77C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C97D0 8021B780 03E00008 */  jr         $ra
/* 1C97D4 8021B784 00000000 */   nop
