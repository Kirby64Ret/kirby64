glabel func_8020FD34_ovl9
/* 1BDD84 8020FD34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1BDD88 8020FD38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BDD8C 8020FD3C 24040017 */  addiu      $a0, $zero, 0x17
/* 1BDD90 8020FD40 2405001E */  addiu      $a1, $zero, 0x1E
/* 1BDD94 8020FD44 0C02BB02 */  jal        request_track_general
/* 1BDD98 8020FD48 24060050 */   addiu     $a2, $zero, 0x50
/* 1BDD9C 8020FD4C 2841003C */  slti       $at, $v0, 0x3C
/* 1BDDA0 8020FD50 10200004 */  beqz       $at, .L8020FD64_ovl9
/* 1BDDA4 8020FD54 00402825 */   or        $a1, $v0, $zero
/* 1BDDA8 8020FD58 2401FFFF */  addiu      $at, $zero, -0x1
/* 1BDDAC 8020FD5C 1441000A */  bne        $v0, $at, .L8020FD88_ovl9
/* 1BDDB0 8020FD60 3C06800E */   lui       $a2, %hi(gEntityVtableIndexArray)
.L8020FD64_ovl9:
/* 1BDDB4 8020FD64 3C048022 */  lui        $a0, %hi(D_8021DAF0_ovl9)
/* 1BDDB8 8020FD68 2484DAF0 */  addiu      $a0, $a0, %lo(D_8021DAF0_ovl9)
/* 1BDDBC 8020FD6C 0C02909C */  jal        print_error_stub
/* 1BDDC0 8020FD70 AFA5001C */   sw        $a1, 0x1C($sp)
/* 1BDDC4 8020FD74 8FA5001C */  lw         $a1, 0x1C($sp)
/* 1BDDC8 8020FD78 0C02C640 */  jal        func_800B1900
/* 1BDDCC 8020FD7C 30A4FFFF */   andi      $a0, $a1, 0xFFFF
/* 1BDDD0 8020FD80 10000076 */  b          .L8020FF5C_ovl9
/* 1BDDD4 8020FD84 8FBF0014 */   lw        $ra, 0x14($sp)
.L8020FD88_ovl9:
/* 1BDDD8 8020FD88 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 1BDDDC 8020FD8C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 1BDDE0 8020FD90 24C6DC50 */  addiu      $a2, $a2, %lo(gEntityVtableIndexArray)
/* 1BDDE4 8020FD94 00021880 */  sll        $v1, $v0, 2
/* 1BDDE8 8020FD98 8C8E0000 */  lw         $t6, 0x0($a0)
/* 1BDDEC 8020FD9C 3C01800E */  lui        $at, %hi(D_800E76C0)
/* 1BDDF0 8020FDA0 00220821 */  addu       $at, $at, $v0
/* 1BDDF4 8020FDA4 000E7880 */  sll        $t7, $t6, 2
/* 1BDDF8 8020FDA8 00CFC021 */  addu       $t8, $a2, $t7
/* 1BDDFC 8020FDAC 8F190000 */  lw         $t9, 0x0($t8)
/* 1BDE00 8020FDB0 00C37021 */  addu       $t6, $a2, $v1
/* 1BDE04 8020FDB4 240F00FF */  addiu      $t7, $zero, 0xFF
/* 1BDE08 8020FDB8 ADD90000 */  sw         $t9, 0x0($t6)
/* 1BDE0C 8020FDBC A02F76C0 */  sb         $t7, %lo(D_800E76C0)($at)
/* 1BDE10 8020FDC0 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDE14 8020FDC4 3C07800E */  lui        $a3, %hi(D_800E7730)
/* 1BDE18 8020FDC8 24E77730 */  addiu      $a3, $a3, %lo(D_800E7730)
/* 1BDE1C 8020FDCC 00F8C821 */  addu       $t9, $a3, $t8
/* 1BDE20 8020FDD0 932E0000 */  lbu        $t6, 0x0($t9)
/* 1BDE24 8020FDD4 00E27821 */  addu       $t7, $a3, $v0
/* 1BDE28 8020FDD8 3C08800E */  lui        $t0, %hi(D_800E77A0)
/* 1BDE2C 8020FDDC A1EE0000 */  sb         $t6, 0x0($t7)
/* 1BDE30 8020FDE0 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDE34 8020FDE4 250877A0 */  addiu      $t0, $t0, %lo(D_800E77A0)
/* 1BDE38 8020FDE8 3C01800E */  lui        $at, %hi(D_800E7880)
/* 1BDE3C 8020FDEC 0018C840 */  sll        $t9, $t8, 1
/* 1BDE40 8020FDF0 01197021 */  addu       $t6, $t0, $t9
/* 1BDE44 8020FDF4 95CF0000 */  lhu        $t7, 0x0($t6)
/* 1BDE48 8020FDF8 0002C040 */  sll        $t8, $v0, 1
/* 1BDE4C 8020FDFC 0118C821 */  addu       $t9, $t0, $t8
/* 1BDE50 8020FE00 240E0001 */  addiu      $t6, $zero, 0x1
/* 1BDE54 8020FE04 00220821 */  addu       $at, $at, $v0
/* 1BDE58 8020FE08 A72F0000 */  sh         $t7, 0x0($t9)
/* 1BDE5C 8020FE0C A02E7880 */  sb         $t6, %lo(D_800E7880)($at)
/* 1BDE60 8020FE10 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDE64 8020FE14 3C09800E */  lui        $t1, %hi(D_800E5F90)
/* 1BDE68 8020FE18 25295F90 */  addiu      $t1, $t1, %lo(D_800E5F90)
/* 1BDE6C 8020FE1C 00187880 */  sll        $t7, $t8, 2
/* 1BDE70 8020FE20 012FC821 */  addu       $t9, $t1, $t7
/* 1BDE74 8020FE24 8F250000 */  lw         $a1, 0x0($t9)
/* 1BDE78 8020FE28 3C01800E */  lui        $at, %hi(D_800E6150)
/* 1BDE7C 8020FE2C 00230821 */  addu       $at, $at, $v1
/* 1BDE80 8020FE30 01237021 */  addu       $t6, $t1, $v1
/* 1BDE84 8020FE34 AC256150 */  sw         $a1, %lo(D_800E6150)($at)
/* 1BDE88 8020FE38 ADC50000 */  sw         $a1, 0x0($t6)
/* 1BDE8C 8020FE3C 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDE90 8020FE40 3C0A800E */  lui        $t2, %hi(D_800E6BD0)
/* 1BDE94 8020FE44 254A6BD0 */  addiu      $t2, $t2, %lo(D_800E6BD0)
/* 1BDE98 8020FE48 00187880 */  sll        $t7, $t8, 2
/* 1BDE9C 8020FE4C 014FC821 */  addu       $t9, $t2, $t7
/* 1BDEA0 8020FE50 C7200000 */  lwc1       $f0, 0x0($t9)
/* 1BDEA4 8020FE54 3C01800E */  lui        $at, %hi(D_800E6D90)
/* 1BDEA8 8020FE58 00230821 */  addu       $at, $at, $v1
/* 1BDEAC 8020FE5C 01437021 */  addu       $t6, $t2, $v1
/* 1BDEB0 8020FE60 E4206D90 */  swc1       $f0, %lo(D_800E6D90)($at)
/* 1BDEB4 8020FE64 E5C00000 */  swc1       $f0, 0x0($t6)
/* 1BDEB8 8020FE68 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDEBC 8020FE6C 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosXArray)
/* 1BDEC0 8020FE70 256B25D0 */  addiu      $t3, $t3, %lo(gEntitiesNextPosXArray)
/* 1BDEC4 8020FE74 00187880 */  sll        $t7, $t8, 2
/* 1BDEC8 8020FE78 016FC821 */  addu       $t9, $t3, $t7
/* 1BDECC 8020FE7C C7240000 */  lwc1       $f4, 0x0($t9)
/* 1BDED0 8020FE80 01637021 */  addu       $t6, $t3, $v1
/* 1BDED4 8020FE84 3C0C800E */  lui        $t4, %hi(gEntitiesPosXArray)
/* 1BDED8 8020FE88 E5C40000 */  swc1       $f4, 0x0($t6)
/* 1BDEDC 8020FE8C 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDEE0 8020FE90 258C2B10 */  addiu      $t4, $t4, %lo(gEntitiesPosXArray)
/* 1BDEE4 8020FE94 01837021 */  addu       $t6, $t4, $v1
/* 1BDEE8 8020FE98 00187880 */  sll        $t7, $t8, 2
/* 1BDEEC 8020FE9C 018FC821 */  addu       $t9, $t4, $t7
/* 1BDEF0 8020FEA0 C7260000 */  lwc1       $f6, 0x0($t9)
/* 1BDEF4 8020FEA4 3C0D800E */  lui        $t5, %hi(gEntitiesNextPosYArray)
/* 1BDEF8 8020FEA8 25AD2790 */  addiu      $t5, $t5, %lo(gEntitiesNextPosYArray)
/* 1BDEFC 8020FEAC E5C60000 */  swc1       $f6, 0x0($t6)
/* 1BDF00 8020FEB0 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDF04 8020FEB4 01A37021 */  addu       $t6, $t5, $v1
/* 1BDF08 8020FEB8 3C1F800E */  lui        $ra, %hi(gEntitiesPosYArray)
/* 1BDF0C 8020FEBC 00187880 */  sll        $t7, $t8, 2
/* 1BDF10 8020FEC0 01AFC821 */  addu       $t9, $t5, $t7
/* 1BDF14 8020FEC4 C7280000 */  lwc1       $f8, 0x0($t9)
/* 1BDF18 8020FEC8 27FF2CD0 */  addiu      $ra, $ra, %lo(gEntitiesPosYArray)
/* 1BDF1C 8020FECC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1BDF20 8020FED0 E5C80000 */  swc1       $f8, 0x0($t6)
/* 1BDF24 8020FED4 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDF28 8020FED8 03E37021 */  addu       $t6, $ra, $v1
/* 1BDF2C 8020FEDC 00230821 */  addu       $at, $at, $v1
/* 1BDF30 8020FEE0 00187880 */  sll        $t7, $t8, 2
/* 1BDF34 8020FEE4 03EFC821 */  addu       $t9, $ra, $t7
/* 1BDF38 8020FEE8 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 1BDF3C 8020FEEC 3C19800E */  lui        $t9, %hi(gEntitiesNextPosZArray)
/* 1BDF40 8020FEF0 27392950 */  addiu      $t9, $t9, %lo(gEntitiesNextPosZArray)
/* 1BDF44 8020FEF4 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 1BDF48 8020FEF8 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDF4C 8020FEFC 3C05800E */  lui        $a1, %hi(gEntitiesAngleZArray)
/* 1BDF50 8020FF00 24A54390 */  addiu      $a1, $a1, %lo(gEntitiesAngleZArray)
/* 1BDF54 8020FF04 00187880 */  sll        $t7, $t8, 2
/* 1BDF58 8020FF08 01F97021 */  addu       $t6, $t7, $t9
/* 1BDF5C 8020FF0C C5D00000 */  lwc1       $f16, 0x0($t6)
/* 1BDF60 8020FF10 0079C021 */  addu       $t8, $v1, $t9
/* 1BDF64 8020FF14 3C19800E */  lui        $t9, %hi(gEntitiesPosZArray)
/* 1BDF68 8020FF18 E7100000 */  swc1       $f16, 0x0($t8)
/* 1BDF6C 8020FF1C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1BDF70 8020FF20 27392E90 */  addiu      $t9, $t9, %lo(gEntitiesPosZArray)
/* 1BDF74 8020FF24 000F7080 */  sll        $t6, $t7, 2
/* 1BDF78 8020FF28 01D9C021 */  addu       $t8, $t6, $t9
/* 1BDF7C 8020FF2C C7120000 */  lwc1       $f18, 0x0($t8)
/* 1BDF80 8020FF30 00797821 */  addu       $t7, $v1, $t9
/* 1BDF84 8020FF34 240E0001 */  addiu      $t6, $zero, 0x1
/* 1BDF88 8020FF38 E5F20000 */  swc1       $f18, 0x0($t7)
/* 1BDF8C 8020FF3C AC2E98E0 */  sw         $t6, %lo(D_800E98E0)($at)
/* 1BDF90 8020FF40 8C980000 */  lw         $t8, 0x0($a0)
/* 1BDF94 8020FF44 00A37021 */  addu       $t6, $a1, $v1
/* 1BDF98 8020FF48 0018C880 */  sll        $t9, $t8, 2
/* 1BDF9C 8020FF4C 00B97821 */  addu       $t7, $a1, $t9
/* 1BDFA0 8020FF50 C5E40000 */  lwc1       $f4, 0x0($t7)
/* 1BDFA4 8020FF54 E5C40000 */  swc1       $f4, 0x0($t6)
/* 1BDFA8 8020FF58 8FBF0014 */  lw         $ra, 0x14($sp)
.L8020FF5C_ovl9:
/* 1BDFAC 8020FF5C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1BDFB0 8020FF60 03E00008 */  jr         $ra
/* 1BDFB4 8020FF64 00000000 */   nop
/* 1BDFB8 8020FF68 00000000 */  nop
/* 1BDFBC 8020FF6C 00000000 */  nop
/* 1BDFC0 8020FF70 00000000 */  nop
/* 1BDFC4 8020FF74 00000000 */  nop
/* 1BDFC8 8020FF78 00000000 */  nop
/* 1BDFCC 8020FF7C 00000000 */  nop
