glabel func_80221330_ovl18
/* 233CD0 80221330 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 233CD4 80221334 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 233CD8 80221338 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 233CDC 8022133C AFBF0014 */  sw         $ra, 0x14($sp)
/* 233CE0 80221340 AFA40020 */  sw         $a0, 0x20($sp)
/* 233CE4 80221344 8DCF0000 */  lw         $t7, 0x0($t6)
/* 233CE8 80221348 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 233CEC 8022134C 000FC080 */  sll        $t8, $t7, 2
/* 233CF0 80221350 0338C821 */  addu       $t9, $t9, $t8
/* 233CF4 80221354 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 233CF8 80221358 0C087D28 */  jal        func_8021F4A0_ovl18
/* 233CFC 8022135C AFB9001C */   sw        $t9, 0x1C($sp)
/* 233D00 80221360 8FA9001C */  lw         $t1, 0x1C($sp)
/* 233D04 80221364 3C088023 */  lui        $t0, %hi(D_8022A988_ovl18)
/* 233D08 80221368 2508A988 */  addiu      $t0, $t0, %lo(D_8022A988_ovl18)
/* 233D0C 8022136C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 233D10 80221370 AD280098 */  sw         $t0, 0x98($t1)
/* 233D14 80221374 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 233D18 80221378 3C0A8022 */  lui        $t2, %hi(func_80221440_ovl18)
/* 233D1C 8022137C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 233D20 80221380 8C4B0000 */  lw         $t3, 0x0($v0)
/* 233D24 80221384 254A1440 */  addiu      $t2, $t2, %lo(func_80221440_ovl18)
/* 233D28 80221388 3C05800E */  lui        $a1, %hi(gEntitiesScaleZArray)
/* 233D2C 8022138C 000B6080 */  sll        $t4, $t3, 2
/* 233D30 80221390 002C0821 */  addu       $at, $at, $t4
/* 233D34 80221394 AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 233D38 80221398 8C4D0000 */  lw         $t5, 0x0($v0)
/* 233D3C 8022139C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 233D40 802213A0 44812000 */  mtc1       $at, $f4
/* 233D44 802213A4 24A548D0 */  addiu      $a1, $a1, %lo(gEntitiesScaleZArray)
/* 233D48 802213A8 000D7080 */  sll        $t6, $t5, 2
/* 233D4C 802213AC 00AE7821 */  addu       $t7, $a1, $t6
/* 233D50 802213B0 E5E40000 */  swc1       $f4, 0x0($t7)
/* 233D54 802213B4 8C430000 */  lw         $v1, 0x0($v0)
/* 233D58 802213B8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 233D5C 802213BC 3C048022 */  lui        $a0, %hi(func_802212E8_ovl18)
/* 233D60 802213C0 00031880 */  sll        $v1, $v1, 2
/* 233D64 802213C4 00A3C021 */  addu       $t8, $a1, $v1
/* 233D68 802213C8 C7000000 */  lwc1       $f0, 0x0($t8)
/* 233D6C 802213CC 00230821 */  addu       $at, $at, $v1
/* 233D70 802213D0 248412E8 */  addiu      $a0, $a0, %lo(func_802212E8_ovl18)
/* 233D74 802213D4 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 233D78 802213D8 8C590000 */  lw         $t9, 0x0($v0)
/* 233D7C 802213DC 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 233D80 802213E0 00194080 */  sll        $t0, $t9, 2
/* 233D84 802213E4 00280821 */  addu       $at, $at, $t0
/* 233D88 802213E8 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 233D8C 802213EC 8C490000 */  lw         $t1, 0x0($v0)
/* 233D90 802213F0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 233D94 802213F4 00095880 */  sll        $t3, $t1, 2
/* 233D98 802213F8 002B0821 */  addu       $at, $at, $t3
/* 233D9C 802213FC 0C068354 */  jal        func_801A0D50_ovl7
/* 233DA0 80221400 AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
/* 233DA4 80221404 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 233DA8 80221408 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 233DAC 8022140C 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 233DB0 80221410 3C068023 */  lui        $a2, %hi(D_8022ABA4_ovl18)
/* 233DB4 80221414 8D4C0000 */  lw         $t4, 0x0($t2)
/* 233DB8 80221418 24C6ABA4 */  addiu      $a2, $a2, %lo(D_8022ABA4_ovl18)
/* 233DBC 8022141C 24050001 */  addiu      $a1, $zero, 0x1
/* 233DC0 80221420 000C6880 */  sll        $t5, $t4, 2
/* 233DC4 80221424 008D2021 */  addu       $a0, $a0, $t5
/* 233DC8 80221428 0C02911F */  jal        call_virtual_function
/* 233DCC 8022142C 8C84DC50 */   lw        $a0, %lo(gEntityVtableIndexArray)($a0)
/* 233DD0 80221430 8FBF0014 */  lw         $ra, 0x14($sp)
/* 233DD4 80221434 27BD0020 */  addiu      $sp, $sp, 0x20
/* 233DD8 80221438 03E00008 */  jr         $ra
/* 233DDC 8022143C 00000000 */   nop
