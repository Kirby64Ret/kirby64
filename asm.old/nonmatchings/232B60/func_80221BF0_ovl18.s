glabel func_80221BF0_ovl18
/* 234590 80221BF0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 234594 80221BF4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 234598 80221BF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23459C 80221BFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2345A0 80221C00 AFA40018 */  sw         $a0, 0x18($sp)
/* 2345A4 80221C04 8C620000 */  lw         $v0, 0x0($v1)
/* 2345A8 80221C08 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
/* 2345AC 80221C0C 3C08800F */  lui        $t0, %hi(D_800EA8A0)
/* 2345B0 80221C10 00021080 */  sll        $v0, $v0, 2
/* 2345B4 80221C14 2508A8A0 */  addiu      $t0, $t0, %lo(D_800EA8A0)
/* 2345B8 80221C18 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
/* 2345BC 80221C1C 00E27021 */  addu       $t6, $a3, $v0
.L80221C20_ovl19:
/* 2345C0 80221C20 01027821 */  addu       $t7, $t0, $v0
/* 2345C4 80221C24 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 2345C8 80221C28 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 2345CC 80221C2C 3C06800E */  lui        $a2, %hi(D_800E3750)
/* 2345D0 80221C30 4604303E */  c.le.s     $f6, $f4
/* 2345D4 80221C34 00000000 */  nop
/* 2345D8 80221C38 45020028 */  bc1fl      .L80221CDC_ovl18
/* 2345DC 80221C3C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2345E0 80221C40 44804000 */  mtc1       $zero, $f8
/* 2345E4 80221C44 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* 2345E8 80221C48 00C2C021 */  addu       $t8, $a2, $v0
/* 2345EC 80221C4C E7080000 */  swc1       $f8, 0x0($t8)
/* 2345F0 80221C50 8C620000 */  lw         $v0, 0x0($v1)
/* 2345F4 80221C54 3C01800E */  lui        $at, %hi(D_800E3210)
/* 2345F8 80221C58 240D0001 */  addiu      $t5, $zero, 0x1
/* 2345FC 80221C5C 00021080 */  sll        $v0, $v0, 2
.L80221C60_ovl19:
/* 234600 80221C60 00C2C821 */  addu       $t9, $a2, $v0
/* 234604 80221C64 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 234608 80221C68 00220821 */  addu       $at, $at, $v0
/* 23460C 80221C6C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 234610 80221C70 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 234614 80221C74 8C690000 */  lw         $t1, 0x0($v1)
/* 234618 80221C78 3C018023 */  lui        $at, %hi(D_8022BC00_ovl18)
/* 23461C 80221C7C C430BC00 */  lwc1       $f16, %lo(D_8022BC00_ovl18)($at)
/* 234620 80221C80 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 234624 80221C84 00095080 */  sll        $t2, $t1, 2
.L80221C88_ovl19:
/* 234628 80221C88 002A0821 */  addu       $at, $at, $t2
/* 23462C 80221C8C E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
/* 234630 80221C90 8C620000 */  lw         $v0, 0x0($v1)
/* 234634 80221C94 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 234638 80221C98 3C058022 */  lui        $a1, %hi(func_80221758_ovl18)
/* 23463C 80221C9C 00021080 */  sll        $v0, $v0, 2
/* 234640 80221CA0 01025821 */  addu       $t3, $t0, $v0
/* 234644 80221CA4 C5720000 */  lwc1       $f18, 0x0($t3)
glabel func_80221CA8_ovl19
/* 234648 80221CA8 00E26021 */  addu       $t4, $a3, $v0
/* 23464C 80221CAC 24A51758 */  addiu      $a1, $a1, %lo(func_80221758_ovl18)
/* 234650 80221CB0 E5920000 */  swc1       $f18, 0x0($t4)
/* 234654 80221CB4 8C6E0000 */  lw         $t6, 0x0($v1)
/* 234658 80221CB8 000E7880 */  sll        $t7, $t6, 2
/* 23465C 80221CBC 002F0821 */  addu       $at, $at, $t7
/* 234660 80221CC0 AC2DDC50 */  sw         $t5, %lo(gEntityVtableIndexArray)($at)
/* 234664 80221CC4 8C780000 */  lw         $t8, 0x0($v1)
/* 234668 80221CC8 0018C880 */  sll        $t9, $t8, 2
/* 23466C 80221CCC 00992021 */  addu       $a0, $a0, $t9
/* 234670 80221CD0 0C02C7B2 */  jal        assign_new_process_entry
/* 234674 80221CD4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 234678 80221CD8 8FBF0014 */  lw         $ra, 0x14($sp)
.L80221CDC_ovl18:
/* 23467C 80221CDC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 234680 80221CE0 03E00008 */  jr         $ra
/* 234684 80221CE4 00000000 */   nop
