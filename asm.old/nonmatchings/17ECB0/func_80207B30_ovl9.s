glabel func_80207B30_ovl9
/* 1B5B80 80207B30 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B5B84 80207B34 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B5B88 80207B38 AFA40000 */  sw         $a0, 0x0($sp)
/* 1B5B8C 80207B3C 44802000 */  mtc1       $zero, $f4
/* 1B5B90 80207B40 8C640000 */  lw         $a0, 0x0($v1)
/* 1B5B94 80207B44 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1B5B98 80207B48 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1B5B9C 80207B4C 00042080 */  sll        $a0, $a0, 2
/* 1B5BA0 80207B50 00240821 */  addu       $at, $at, $a0
/* 1B5BA4 80207B54 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 1B5BA8 80207B58 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1B5BAC 80207B5C 3C01BFC0 */  lui        $at, (0xBFC00000 >> 16)
/* 1B5BB0 80207B60 44813000 */  mtc1       $at, $f6
/* 1B5BB4 80207B64 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1B5BB8 80207B68 000E7880 */  sll        $t7, $t6, 2
/* 1B5BBC 80207B6C 002F0821 */  addu       $at, $at, $t7
/* 1B5BC0 80207B70 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 1B5BC4 80207B74 8C780000 */  lw         $t8, 0x0($v1)
/* 1B5BC8 80207B78 3C018022 */  lui        $at, %hi(D_8021DACC_ovl9)
/* 1B5BCC 80207B7C C428DACC */  lwc1       $f8, %lo(D_8021DACC_ovl9)($at)
/* 1B5BD0 80207B80 00441021 */  addu       $v0, $v0, $a0
/* 1B5BD4 80207B84 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1B5BD8 80207B88 0018C880 */  sll        $t9, $t8, 2
/* 1B5BDC 80207B8C 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1B5BE0 80207B90 00390821 */  addu       $at, $at, $t9
/* 1B5BE4 80207B94 3C08801D */  lui        $t0, %hi(D_801CC598)
/* 1B5BE8 80207B98 2508C598 */  addiu      $t0, $t0, %lo(D_801CC598)
/* 1B5BEC 80207B9C E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
/* 1B5BF0 80207BA0 03E00008 */  jr         $ra
/* 1B5BF4 80207BA4 AC480098 */   sw        $t0, 0x98($v0)
