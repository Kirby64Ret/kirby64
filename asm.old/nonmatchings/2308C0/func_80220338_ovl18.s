glabel func_80220338_ovl18
/* 232CD8 80220338 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L8022033C_ovl19:
/* 232CDC 8022033C AFBF0014 */  sw         $ra, 0x14($sp)
/* 232CE0 80220340 0C087D28 */  jal        func_8021F4A0_ovl18
/* 232CE4 80220344 AFA40018 */   sw        $a0, 0x18($sp)
/* 232CE8 80220348 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 232CEC 8022034C 2484A7C4 */  addiu      $a0, $a0, %lo(D_8004A7C4)
/* 232CF0 80220350 8C820000 */  lw         $v0, 0x0($a0)
/* 232CF4 80220354 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 232CF8 80220358 44812000 */  mtc1       $at, $f4
/* 232CFC 8022035C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 232D00 80220360 3C05800E */  lui        $a1, %hi(gEntitiesScaleZArray)
/* 232D04 80220364 24A548D0 */  addiu      $a1, $a1, %lo(gEntitiesScaleZArray)
/* 232D08 80220368 000E7880 */  sll        $t7, $t6, 2
/* 232D0C 8022036C 00AFC021 */  addu       $t8, $a1, $t7
/* 232D10 80220370 E7040000 */  swc1       $f4, 0x0($t8)
/* 232D14 80220374 8C430000 */  lw         $v1, 0x0($v0)
/* 232D18 80220378 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 232D1C 8022037C 3C06800E */  lui        $a2, %hi(D_800E1B50)
/* 232D20 80220380 00031880 */  sll        $v1, $v1, 2
/* 232D24 80220384 00A3C821 */  addu       $t9, $a1, $v1
/* 232D28 80220388 C7200000 */  lwc1       $f0, 0x0($t9)
/* 232D2C 8022038C 00230821 */  addu       $at, $at, $v1
/* 232D30 80220390 24C61B50 */  addiu      $a2, $a2, %lo(D_800E1B50)
/* 232D34 80220394 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 232D38 80220398 8C480000 */  lw         $t0, 0x0($v0)
/* 232D3C 8022039C 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 232D40 802203A0 3C0A8023 */  lui        $t2, %hi(D_8022A184_ovl18)
/* 232D44 802203A4 00084880 */  sll        $t1, $t0, 2
/* 232D48 802203A8 00290821 */  addu       $at, $at, $t1
/* 232D4C 802203AC E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 232D50 802203B0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 232D54 802203B4 254AA184 */  addiu      $t2, $t2, %lo(D_8022A184_ovl18)
/* 232D58 802203B8 3C0F8023 */  lui        $t7, %hi(D_8022A940_ovl18)
/* 232D5C 802203BC 000B6080 */  sll        $t4, $t3, 2
/* 232D60 802203C0 00CC6821 */  addu       $t5, $a2, $t4
/* 232D64 802203C4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 232D68 802203C8 25EFA940 */  addiu      $t7, $t7, %lo(D_8022A940_ovl18)
/* 232D6C 802203CC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 232D70 802203D0 ADCA008C */  sw         $t2, 0x8C($t6)
/* 232D74 802203D4 8C980000 */  lw         $t8, 0x0($a0)
/* 232D78 802203D8 240C001E */  addiu      $t4, $zero, 0x1E
/* 232D7C 802203DC 8F190000 */  lw         $t9, 0x0($t8)
/* 232D80 802203E0 00194080 */  sll        $t0, $t9, 2
/* 232D84 802203E4 00C84821 */  addu       $t1, $a2, $t0
/* 232D88 802203E8 8D2B0000 */  lw         $t3, 0x0($t1)
/* 232D8C 802203EC AD6F0098 */  sw         $t7, 0x98($t3)
/* 232D90 802203F0 8C820000 */  lw         $v0, 0x0($a0)
/* 232D94 802203F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 232D98 802203F8 8C4D0000 */  lw         $t5, 0x0($v0)
/* 232D9C 802203FC 000D5080 */  sll        $t2, $t5, 2
/* 232DA0 80220400 002A0821 */  addu       $at, $at, $t2
/* 232DA4 80220404 AC2C98E0 */  sw         $t4, %lo(D_800E98E0)($at)
/* 232DA8 80220408 8C4E0000 */  lw         $t6, 0x0($v0)
/* 232DAC 8022040C 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 232DB0 80220410 27BD0018 */  addiu      $sp, $sp, 0x18
/* 232DB4 80220414 000EC080 */  sll        $t8, $t6, 2
/* 232DB8 80220418 00380821 */  addu       $at, $at, $t8
/* 232DBC 8022041C 03E00008 */  jr         $ra
/* 232DC0 80220420 AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
