glabel func_80224AF4_ovl18
/* 237494 80224AF4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 237498 80224AF8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 23749C 80224AFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2374A0 80224B00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2374A4 80224B04 AFA40018 */  sw         $a0, 0x18($sp)
/* 2374A8 80224B08 8C4F0000 */  lw         $t7, 0x0($v0)
/* 2374AC 80224B0C 3C0E800B */  lui        $t6, %hi(func_800B7138)
/* 2374B0 80224B10 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 2374B4 80224B14 000FC080 */  sll        $t8, $t7, 2
/* 2374B8 80224B18 00380821 */  addu       $at, $at, $t8
/* 2374BC 80224B1C 25CE7138 */  addiu      $t6, $t6, %lo(func_800B7138)
/* 2374C0 80224B20 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 2374C4 80224B24 8C590000 */  lw         $t9, 0x0($v0)
/* 2374C8 80224B28 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 2374CC 80224B2C 3C068023 */  lui        $a2, %hi(D_8022AC84_ovl18)
/* 2374D0 80224B30 00992021 */  addu       $a0, $a0, $t9
/* 2374D4 80224B34 90847880 */  lbu        $a0, %lo(D_800E7880)($a0)
/* 2374D8 80224B38 24C6AC84 */  addiu      $a2, $a2, %lo(D_8022AC84_ovl18)
/* 2374DC 80224B3C 0C02911F */  jal        call_virtual_function
/* 2374E0 80224B40 24050001 */   addiu     $a1, $zero, 0x1
/* 2374E4 80224B44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2374E8 80224B48 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2374EC 80224B4C 03E00008 */  jr         $ra
/* 2374F0 80224B50 00000000 */   nop
