glabel func_80224B9C_ovl18
/* 23753C 80224B9C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 237540 80224BA0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 237544 80224BA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 237548 80224BA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23754C 80224BAC AFA40020 */  sw         $a0, 0x20($sp)
/* 237550 80224BB0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 237554 80224BB4 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 237558 80224BB8 000FC080 */  sll        $t8, $t7, 2
/* 23755C 80224BBC 0338C821 */  addu       $t9, $t9, $t8
/* 237560 80224BC0 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 237564 80224BC4 0C087D28 */  jal        func_8021F4A0_ovl18
/* 237568 80224BC8 AFB9001C */   sw        $t9, 0x1C($sp)
/* 23756C 80224BCC 8FA9001C */  lw         $t1, 0x1C($sp)
/* 237570 80224BD0 3C088023 */  lui        $t0, %hi(D_8022AAA8_ovl18)
/* 237574 80224BD4 2508AAA8 */  addiu      $t0, $t0, %lo(D_8022AAA8_ovl18)
/* 237578 80224BD8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 23757C 80224BDC AD280098 */  sw         $t0, 0x98($t1)
/* 237580 80224BE0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 237584 80224BE4 3C0A8022 */  lui        $t2, %hi(func_80224CAC_ovl18)
/* 237588 80224BE8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 23758C 80224BEC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 237590 80224BF0 254A4CAC */  addiu      $t2, $t2, %lo(func_80224CAC_ovl18)
/* 237594 80224BF4 3C05800E */  lui        $a1, %hi(gEntitiesScaleZArray)
.L80224BF8_ovl19:
/* 237598 80224BF8 000B6080 */  sll        $t4, $t3, 2
/* 23759C 80224BFC 002C0821 */  addu       $at, $at, $t4
/* 2375A0 80224C00 AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 2375A4 80224C04 8C4D0000 */  lw         $t5, 0x0($v0)
/* 2375A8 80224C08 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 2375AC 80224C0C 44812000 */  mtc1       $at, $f4
/* 2375B0 80224C10 24A548D0 */  addiu      $a1, $a1, %lo(gEntitiesScaleZArray)
/* 2375B4 80224C14 000D7080 */  sll        $t6, $t5, 2
/* 2375B8 80224C18 00AE7821 */  addu       $t7, $a1, $t6
/* 2375BC 80224C1C E5E40000 */  swc1       $f4, 0x0($t7)
/* 2375C0 80224C20 8C430000 */  lw         $v1, 0x0($v0)
/* 2375C4 80224C24 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 2375C8 80224C28 3C048022 */  lui        $a0, %hi(func_80224B54_ovl18)
.L80224C2C_ovl19:
/* 2375CC 80224C2C 00031880 */  sll        $v1, $v1, 2
/* 2375D0 80224C30 00A3C021 */  addu       $t8, $a1, $v1
/* 2375D4 80224C34 C7000000 */  lwc1       $f0, 0x0($t8)
/* 2375D8 80224C38 00230821 */  addu       $at, $at, $v1
/* 2375DC 80224C3C 24844B54 */  addiu      $a0, $a0, %lo(func_80224B54_ovl18)
.L80224C40_ovl19:
/* 2375E0 80224C40 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 2375E4 80224C44 8C590000 */  lw         $t9, 0x0($v0)
/* 2375E8 80224C48 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 2375EC 80224C4C 00194080 */  sll        $t0, $t9, 2
/* 2375F0 80224C50 00280821 */  addu       $at, $at, $t0
/* 2375F4 80224C54 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 2375F8 80224C58 8C490000 */  lw         $t1, 0x0($v0)
/* 2375FC 80224C5C 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 237600 80224C60 00095880 */  sll        $t3, $t1, 2
/* 237604 80224C64 002B0821 */  addu       $at, $at, $t3
/* 237608 80224C68 0C068354 */  jal        func_801A0D50_ovl7
/* 23760C 80224C6C AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
/* 237610 80224C70 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 237614 80224C74 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 237618 80224C78 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 23761C 80224C7C 3C068023 */  lui        $a2, %hi(D_8022AC88_ovl18)
/* 237620 80224C80 8D4C0000 */  lw         $t4, 0x0($t2)
/* 237624 80224C84 24C6AC88 */  addiu      $a2, $a2, %lo(D_8022AC88_ovl18)
/* 237628 80224C88 24050002 */  addiu      $a1, $zero, 0x2
/* 23762C 80224C8C 000C6880 */  sll        $t5, $t4, 2
/* 237630 80224C90 008D2021 */  addu       $a0, $a0, $t5
/* 237634 80224C94 0C02911F */  jal        call_virtual_function
/* 237638 80224C98 8C84DC50 */   lw        $a0, %lo(gEntityVtableIndexArray)($a0)
/* 23763C 80224C9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 237640 80224CA0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 237644 80224CA4 03E00008 */  jr         $ra
/* 237648 80224CA8 00000000 */   nop
