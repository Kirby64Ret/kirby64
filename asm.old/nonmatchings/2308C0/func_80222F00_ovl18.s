glabel func_80222F00_ovl18
/* 2358A0 80222F00 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 2358A4 80222F04 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 2358A8 80222F08 8CA20000 */  lw         $v0, 0x0($a1)
/* 2358AC 80222F0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2358B0 80222F10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2358B4 80222F14 AFA40018 */  sw         $a0, 0x18($sp)
/* 2358B8 80222F18 8C430000 */  lw         $v1, 0x0($v0)
/* 2358BC 80222F1C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 2358C0 80222F20 3C04800E */  lui        $a0, %hi(D_800E1B50)
/* 2358C4 80222F24 00031880 */  sll        $v1, $v1, 2
/* 2358C8 80222F28 00230821 */  addu       $at, $at, $v1
/* 2358CC 80222F2C AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 2358D0 80222F30 8C4E0000 */  lw         $t6, 0x0($v0)
/* 2358D4 80222F34 00832021 */  addu       $a0, $a0, $v1
/* 2358D8 80222F38 8C841B50 */  lw         $a0, %lo(D_800E1B50)($a0)
/* 2358DC 80222F3C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 2358E0 80222F40 000E7880 */  sll        $t7, $t6, 2
/* 2358E4 80222F44 002F0821 */  addu       $at, $at, $t7
/* 2358E8 80222F48 3C188023 */  lui        $t8, %hi(D_8022A9F4_ovl18)
/* 2358EC 80222F4C AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 2358F0 80222F50 2718A9F4 */  addiu      $t8, $t8, %lo(D_8022A9F4_ovl18)
/* 2358F4 80222F54 AC980098 */  sw         $t8, 0x98($a0)
/* 2358F8 80222F58 8CA20000 */  lw         $v0, 0x0($a1)
/* 2358FC 80222F5C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 235900 80222F60 24190005 */  addiu      $t9, $zero, 0x5
/* 235904 80222F64 8C480000 */  lw         $t0, 0x0($v0)
/* 235908 80222F68 44802000 */  mtc1       $zero, $f4
/* 23590C 80222F6C 3C06800E */  lui        $a2, %hi(D_800E3750)
/* 235910 80222F70 00084880 */  sll        $t1, $t0, 2
/* 235914 80222F74 00290821 */  addu       $at, $at, $t1
/* 235918 80222F78 AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
/* 23591C 80222F7C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 235920 80222F80 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* 235924 80222F84 3C01800E */  lui        $at, %hi(D_800E3210)
/* 235928 80222F88 000A5880 */  sll        $t3, $t2, 2
/* 23592C 80222F8C 00CB6021 */  addu       $t4, $a2, $t3
/* 235930 80222F90 E5840000 */  swc1       $f4, 0x0($t4)
/* 235934 80222F94 8C430000 */  lw         $v1, 0x0($v0)
/* 235938 80222F98 00031880 */  sll        $v1, $v1, 2
/* 23593C 80222F9C 00C36821 */  addu       $t5, $a2, $v1
/* 235940 80222FA0 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 235944 80222FA4 00230821 */  addu       $at, $at, $v1
/* 235948 80222FA8 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 23594C 80222FAC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 235950 80222FB0 3C018023 */  lui        $at, %hi(.L8022BC18_ovl19)
/* 235954 80222FB4 C428BC18 */  lwc1       $f8, %lo(.L8022BC18_ovl19)($at)
/* 235958 80222FB8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 23595C 80222FBC 000E7880 */  sll        $t7, $t6, 2
.L80222FC0_ovl19:
/* 235960 80222FC0 002F0821 */  addu       $at, $at, $t7
/* 235964 80222FC4 E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
/* 235968 80222FC8 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 23596C 80222FCC 0C02BB30 */  jal        func_800AECC0
/* 235970 80222FD0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 235974 80222FD4 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 235978 80222FD8 0C02BB48 */  jal        func_800AED20
/* 23597C 80222FDC C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 235980 80222FE0 3C040001 */  lui        $a0, (0x100D1 >> 16)
/* 235984 80222FE4 0C02A7A9 */  jal        func_800A9EA4
/* 235988 80222FE8 348400D1 */   ori       $a0, $a0, (0x100D1 & 0xFFFF)
/* 23598C 80222FEC 3C040001 */  lui        $a0, (0x100D0 >> 16)
/* 235990 80222FF0 348400D0 */  ori        $a0, $a0, (0x100D0 & 0xFFFF)
.L80222FF4_ovl19:
/* 235994 80222FF4 0C02AA19 */  jal        func_800AA864
/* 235998 80222FF8 24050001 */   addiu     $a1, $zero, 0x1
/* 23599C 80222FFC 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 2359A0 80223000 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 2359A4 80223004 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 2359A8 80223008 24180001 */  addiu      $t8, $zero, 0x1
/* 2359AC 8022300C 8D190000 */  lw         $t9, 0x0($t0)
/* 2359B0 80223010 00194880 */  sll        $t1, $t9, 2
/* 2359B4 80223014 00290821 */  addu       $at, $at, $t1
/* 2359B8 80223018 0C02BE85 */  jal        func_800AFA14
/* 2359BC 8022301C AC389E20 */   sw        $t8, %lo(D_800E9E20)($at)
glabel func_80223020_ovl19
/* 2359C0 80223020 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2359C4 80223024 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2359C8 80223028 03E00008 */  jr         $ra
/* 2359CC 8022302C 00000000 */   nop
