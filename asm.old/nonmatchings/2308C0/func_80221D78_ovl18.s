glabel func_80221D78_ovl18
/* 234718 80221D78 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 23471C 80221D7C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 234720 80221D80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 234724 80221D84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 234728 80221D88 AFA40018 */  sw         $a0, 0x18($sp)
/* 23472C 80221D8C 8C620000 */  lw         $v0, 0x0($v1)
/* 234730 80221D90 3C07800F */  lui        $a3, %hi(D_800EA6E0)
/* 234734 80221D94 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* 234738 80221D98 00021080 */  sll        $v0, $v0, 2
/* 23473C 80221D9C 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
/* 234740 80221DA0 24E7A6E0 */  addiu      $a3, $a3, %lo(D_800EA6E0)
/* 234744 80221DA4 00E27021 */  addu       $t6, $a3, $v0
/* 234748 80221DA8 01027821 */  addu       $t7, $t0, $v0
/* 23474C 80221DAC C5E60000 */  lwc1       $f6, 0x0($t7)
/* 234750 80221DB0 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 234754 80221DB4 3C06800E */  lui        $a2, %hi(D_800E3750)
/* 234758 80221DB8 4604303E */  c.le.s     $f6, $f4
/* 23475C 80221DBC 00000000 */  nop
/* 234760 80221DC0 4502002D */  bc1fl      .L80221E78_ovl18
/* 234764 80221DC4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 234768 80221DC8 44804000 */  mtc1       $zero, $f8
/* 23476C 80221DCC 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* 234770 80221DD0 00C2C021 */  addu       $t8, $a2, $v0
/* 234774 80221DD4 E7080000 */  swc1       $f8, 0x0($t8)
/* 234778 80221DD8 8C620000 */  lw         $v0, 0x0($v1)
glabel func_80221DDC_ovl19
/* 23477C 80221DDC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 234780 80221DE0 240D000F */  addiu      $t5, $zero, 0xF
/* 234784 80221DE4 00021080 */  sll        $v0, $v0, 2
/* 234788 80221DE8 00C2C821 */  addu       $t9, $a2, $v0
/* 23478C 80221DEC C72A0000 */  lwc1       $f10, 0x0($t9)
/* 234790 80221DF0 00220821 */  addu       $at, $at, $v0
/* 234794 80221DF4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 234798 80221DF8 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 23479C 80221DFC 8C690000 */  lw         $t1, 0x0($v1)
/* 2347A0 80221E00 3C018023 */  lui        $at, %hi(D_8022BC04_ovl18)
/* 2347A4 80221E04 C430BC04 */  lwc1       $f16, %lo(D_8022BC04_ovl18)($at)
/* 2347A8 80221E08 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 2347AC 80221E0C 00095080 */  sll        $t2, $t1, 2
/* 2347B0 80221E10 002A0821 */  addu       $at, $at, $t2
/* 2347B4 80221E14 E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
/* 2347B8 80221E18 8C620000 */  lw         $v0, 0x0($v1)
/* 2347BC 80221E1C 3C01800F */  lui        $at, %hi(D_800E9720)
glabel func_80221E20_ovl19
/* 2347C0 80221E20 3C058022 */  lui        $a1, %hi(func_80221758_ovl18)
/* 2347C4 80221E24 00021080 */  sll        $v0, $v0, 2
/* 2347C8 80221E28 00E25821 */  addu       $t3, $a3, $v0
/* 2347CC 80221E2C C5720000 */  lwc1       $f18, 0x0($t3)
/* 2347D0 80221E30 01026021 */  addu       $t4, $t0, $v0
/* 2347D4 80221E34 24A51758 */  addiu      $a1, $a1, %lo(func_80221758_ovl18)
/* 2347D8 80221E38 E5920000 */  swc1       $f18, 0x0($t4)
/* 2347DC 80221E3C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 2347E0 80221E40 000E7880 */  sll        $t7, $t6, 2
/* 2347E4 80221E44 002F0821 */  addu       $at, $at, $t7
/* 2347E8 80221E48 AC2D9720 */  sw         $t5, %lo(D_800E9720)($at)
/* 2347EC 80221E4C 8C780000 */  lw         $t8, 0x0($v1)
/* 2347F0 80221E50 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 2347F4 80221E54 0018C880 */  sll        $t9, $t8, 2
/* 2347F8 80221E58 00390821 */  addu       $at, $at, $t9
/* 2347FC 80221E5C AC20DC50 */  sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 234800 80221E60 8C690000 */  lw         $t1, 0x0($v1)
/* 234804 80221E64 00095080 */  sll        $t2, $t1, 2
/* 234808 80221E68 008A2021 */  addu       $a0, $a0, $t2
/* 23480C 80221E6C 0C02C7B2 */  jal        assign_new_process_entry
/* 234810 80221E70 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 234814 80221E74 8FBF0014 */  lw         $ra, 0x14($sp)
.L80221E78_ovl18:
/* 234818 80221E78 27BD0018 */  addiu      $sp, $sp, 0x18
/* 23481C 80221E7C 03E00008 */  jr         $ra
/* 234820 80221E80 00000000 */   nop
/* 234824 80221E84 00000000 */  nop
/* 234828 80221E88 00000000 */  nop
/* 23482C 80221E8C 00000000 */  nop
