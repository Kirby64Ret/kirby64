glabel func_8021A93C_ovl9
/* 1C898C 8021A93C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C8990 8021A940 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C8994 8021A944 0C086A7C */  jal        func_8021A9F0_ovl9
/* 1C8998 8021A948 00000000 */   nop
/* 1C899C 8021A94C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1C89A0 8021A950 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1C89A4 8021A954 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* 1C89A8 8021A958 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1C89AC 8021A95C 8C620000 */  lw         $v0, 0x0($v1)
/* 1C89B0 8021A960 3C08800F */  lui        $t0, %hi(D_800EA520)
/* 1C89B4 8021A964 240F0001 */  addiu      $t7, $zero, 0x1
/* 1C89B8 8021A968 00021080 */  sll        $v0, $v0, 2
/* 1C89BC 8021A96C 01C27021 */  addu       $t6, $t6, $v0
/* 1C89C0 8021A970 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* 1C89C4 8021A974 00220821 */  addu       $at, $at, $v0
/* 1C89C8 8021A978 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1C89CC 8021A97C 11C0000B */  beqz       $t6, .L8021A9AC_ovl9
/* 1C89D0 8021A980 01024021 */   addu      $t0, $t0, $v0
/* 1C89D4 8021A984 AC2FDC50 */  sw         $t7, %lo(gEntityVtableIndexArray)($at)
/* 1C89D8 8021A988 8C780000 */  lw         $t8, 0x0($v1)
/* 1C89DC 8021A98C 3C058022 */  lui        $a1, %hi(func_8021A22C_ovl9)
/* 1C89E0 8021A990 24A5A22C */  addiu      $a1, $a1, %lo(func_8021A22C_ovl9)
/* 1C89E4 8021A994 0018C880 */  sll        $t9, $t8, 2
/* 1C89E8 8021A998 00992021 */  addu       $a0, $a0, $t9
/* 1C89EC 8021A99C 0C02C7B2 */  jal        assign_new_process_entry
/* 1C89F0 8021A9A0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1C89F4 8021A9A4 1000000F */  b          .L8021A9E4_ovl9
/* 1C89F8 8021A9A8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8021A9AC_ovl9:
/* 1C89FC 8021A9AC 8D08A520 */  lw         $t0, %lo(D_800EA520)($t0)
/* 1C8A00 8021A9B0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1C8A04 8021A9B4 00220821 */  addu       $at, $at, $v0
/* 1C8A08 8021A9B8 11000009 */  beqz       $t0, .L8021A9E0_ovl9
/* 1C8A0C 8021A9BC 3C04800E */   lui       $a0, %hi(gEntityGObjProcessArray)
/* 1C8A10 8021A9C0 AC20DC50 */  sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 1C8A14 8021A9C4 8C690000 */  lw         $t1, 0x0($v1)
/* 1C8A18 8021A9C8 3C058022 */  lui        $a1, %hi(func_8021A22C_ovl9)
/* 1C8A1C 8021A9CC 24A5A22C */  addiu      $a1, $a1, %lo(func_8021A22C_ovl9)
/* 1C8A20 8021A9D0 00095080 */  sll        $t2, $t1, 2
/* 1C8A24 8021A9D4 008A2021 */  addu       $a0, $a0, $t2
/* 1C8A28 8021A9D8 0C02C7B2 */  jal        assign_new_process_entry
/* 1C8A2C 8021A9DC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L8021A9E0_ovl9:
/* 1C8A30 8021A9E0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8021A9E4_ovl9:
/* 1C8A34 8021A9E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C8A38 8021A9E8 03E00008 */  jr         $ra
/* 1C8A3C 8021A9EC 00000000 */   nop
