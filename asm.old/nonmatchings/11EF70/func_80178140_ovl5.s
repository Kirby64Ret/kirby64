glabel func_80178140_ovl5
/* 11F5B0 80178140 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 11F5B4 80178144 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 11F5B8 80178148 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11F5BC 8017814C AFBF001C */  sw         $ra, 0x1C($sp)
/* 11F5C0 80178150 AFA40020 */  sw         $a0, 0x20($sp)
/* 11F5C4 80178154 8C4E0000 */  lw         $t6, 0x0($v0)
/* 11F5C8 80178158 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 11F5CC 8017815C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 11F5D0 80178160 000E7880 */  sll        $t7, $t6, 2
/* 11F5D4 80178164 002F0821 */  addu       $at, $at, $t7
/* 11F5D8 80178168 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
/* 11F5DC 8017816C 8C580000 */  lw         $t8, 0x0($v0)
/* 11F5E0 80178170 3C05800B */  lui        $a1, %hi(func_800B1434)
/* 11F5E4 80178174 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
/* 11F5E8 80178178 0018C880 */  sll        $t9, $t8, 2
/* 11F5EC 8017817C 00992021 */  addu       $a0, $a0, $t9
/* 11F5F0 80178180 0C02C7DA */  jal        func_800B1F68
/* 11F5F4 80178184 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 11F5F8 80178188 3C05800B */  lui        $a1, %hi(func_800AD1A0)
/* 11F5FC 8017818C 24080012 */  addiu      $t0, $zero, 0x12
/* 11F600 80178190 AFA80010 */  sw         $t0, 0x10($sp)
/* 11F604 80178194 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
.L80178198_ovl3:
/* 11F608 80178198 8FA40020 */  lw         $a0, 0x20($sp)
/* 11F60C 8017819C 24060012 */  addiu      $a2, $zero, 0x12
/* 11F610 801781A0 0C00297F */  jal        func_8000A5FC
/* 11F614 801781A4 3C078000 */   lui       $a3, (0x80000000 >> 16)
/* 11F618 801781A8 3C058019 */  lui        $a1, %hi(D_801882F0_ovl5)
.L801781AC_ovl3:
/* 11F61C 801781AC 24A582F0 */  addiu      $a1, $a1, %lo(D_801882F0_ovl5)
/* 11F620 801781B0 0C0571D0 */  jal        func_8015C740_ovl5
/* 11F624 801781B4 8FA40020 */   lw        $a0, 0x20($sp)
/* 11F628 801781B8 3C058019 */  lui        $a1, %hi(D_801882F0_ovl5)
/* 11F62C 801781BC 24A582F0 */  addiu      $a1, $a1, %lo(D_801882F0_ovl5)
/* 11F630 801781C0 0C0571D0 */  jal        func_8015C740_ovl5
/* 11F634 801781C4 8FA40020 */   lw        $a0, 0x20($sp)
/* 11F638 801781C8 3C014320 */  lui        $at, (0x43200000 >> 16)
/* 11F63C 801781CC 44812000 */  mtc1       $at, $f4
/* 11F640 801781D0 9449005A */  lhu        $t1, 0x5A($v0)
/* 11F644 801781D4 944B00BA */  lhu        $t3, 0xBA($v0)
/* 11F648 801781D8 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 11F64C 801781DC 44813000 */  mtc1       $at, $f6
/* 11F650 801781E0 352A0001 */  ori        $t2, $t1, 0x1
/* 11F654 801781E4 356C0001 */  ori        $t4, $t3, 0x1
/* 11F658 801781E8 A44A005A */  sh         $t2, 0x5A($v0)
/* 11F65C 801781EC A44C00BA */  sh         $t4, 0xBA($v0)
/* 11F660 801781F0 3C058019 */  lui        $a1, %hi(D_80188310_ovl5)
/* 11F664 801781F4 E4440020 */  swc1       $f4, 0x20($v0)
/* 11F668 801781F8 E4460024 */  swc1       $f6, 0x24($v0)
/* 11F66C 801781FC 8FA40020 */  lw         $a0, 0x20($sp)
/* 11F670 80178200 0C0571D0 */  jal        func_8015C740_ovl5
/* 11F674 80178204 24A58310 */   addiu     $a1, $a1, %lo(D_80188310_ovl5)
/* 11F678 80178208 0C02BE85 */  jal        func_800AFA14
/* 11F67C 8017820C 00000000 */   nop
/* 11F680 80178210 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11F684 80178214 27BD0020 */  addiu      $sp, $sp, 0x20
/* 11F688 80178218 03E00008 */  jr         $ra
/* 11F68C 8017821C 00000000 */   nop
