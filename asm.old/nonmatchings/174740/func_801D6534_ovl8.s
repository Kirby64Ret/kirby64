glabel func_801D6534_ovl8
/* 17A014 801D6534 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 17A018 801D6538 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 17A01C 801D653C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 17A020 801D6540 AFBF0014 */  sw         $ra, 0x14($sp)
/* 17A024 801D6544 AFA40048 */  sw         $a0, 0x48($sp)
/* 17A028 801D6548 8DC30000 */  lw         $v1, 0x0($t6)
/* 17A02C 801D654C 3C06800E */  lui        $a2, %hi(D_800E0D50)
/* 17A030 801D6550 3C18800E */  lui        $t8, %hi(gEntityVtableIndexArray)
/* 17A034 801D6554 00031880 */  sll        $v1, $v1, 2
/* 17A038 801D6558 00C33021 */  addu       $a2, $a2, $v1
/* 17A03C 801D655C 8CC60D50 */  lw         $a2, %lo(D_800E0D50)($a2)
/* 17A040 801D6560 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* 17A044 801D6564 2401000E */  addiu      $at, $zero, 0xE
/* 17A048 801D6568 00061080 */  sll        $v0, $a2, 2
/* 17A04C 801D656C 0302C021 */  addu       $t8, $t8, $v0
/* 17A050 801D6570 8F18DC50 */  lw         $t8, %lo(gEntityVtableIndexArray)($t8)
/* 17A054 801D6574 01E27821 */  addu       $t7, $t7, $v0
/* 17A058 801D6578 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* 17A05C 801D657C 3C02800F */  lui        $v0, %hi(D_800E98E0)
/* 17A060 801D6580 1701000E */  bne        $t8, $at, .L801D65BC_ovl8
/* 17A064 801D6584 8DE5003C */   lw        $a1, 0x3C($t7)
/* 17A068 801D6588 3C19800F */  lui        $t9, %hi(D_800E8920)
/* 17A06C 801D658C 0323C821 */  addu       $t9, $t9, $v1
/* 17A070 801D6590 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
/* 17A074 801D6594 17200005 */  bnez       $t9, .L801D65AC_ovl8
/* 17A078 801D6598 00000000 */   nop
/* 17A07C 801D659C 0C05AF49 */  jal        func_8016BD24_ovl3
/* 17A080 801D65A0 24040001 */   addiu     $a0, $zero, 0x1
/* 17A084 801D65A4 100000CB */  b          .L801D68D4_ovl8
/* 17A088 801D65A8 8FBF0014 */   lw        $ra, 0x14($sp)
.L801D65AC_ovl8:
/* 17A08C 801D65AC 0C05AF49 */  jal        func_8016BD24_ovl3
/* 17A090 801D65B0 00002025 */   or        $a0, $zero, $zero
/* 17A094 801D65B4 100000C7 */  b          .L801D68D4_ovl8
/* 17A098 801D65B8 8FBF0014 */   lw        $ra, 0x14($sp)
.L801D65BC_ovl8:
/* 17A09C 801D65BC 00431021 */  addu       $v0, $v0, $v1
/* 17A0A0 801D65C0 8C4298E0 */  lw         $v0, %lo(D_800E98E0)($v0)
/* 17A0A4 801D65C4 24010001 */  addiu      $at, $zero, 0x1
/* 17A0A8 801D65C8 27A40038 */  addiu      $a0, $sp, 0x38
/* 17A0AC 801D65CC 1040000A */  beqz       $v0, .L801D65F8_ovl8
/* 17A0B0 801D65D0 00000000 */   nop
/* 17A0B4 801D65D4 10410008 */  beq        $v0, $at, .L801D65F8_ovl8
/* 17A0B8 801D65D8 24010002 */   addiu     $at, $zero, 0x2
.L801D65DC_ovl9:
/* 17A0BC 801D65DC 10410030 */  beq        $v0, $at, func_801D66A0_ovl9
/* 17A0C0 801D65E0 3C04801D */   lui       $a0, %hi(D_801CA980)
/* 17A0C4 801D65E4 24010003 */  addiu      $at, $zero, 0x3
/* 17A0C8 801D65E8 104100AB */  beq        $v0, $at, .L801D6898_ovl8
/* 17A0CC 801D65EC 3C04801D */   lui       $a0, %hi(D_801CA980)
/* 17A0D0 801D65F0 100000B5 */  b          .L801D68C8_ovl8
/* 17A0D4 801D65F4 00000000 */   nop
.L801D65F8_ovl8:
/* 17A0D8 801D65F8 0C02C8D0 */  jal        func_800B2340
/* 17A0DC 801D65FC AFA50044 */   sw        $a1, 0x44($sp)
/* 17A0E0 801D6600 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 17A0E4 801D6604 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 17A0E8 801D6608 C7A40038 */  lwc1       $f4, 0x38($sp)
.L801D660C_ovl9:
/* 17A0EC 801D660C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 17A0F0 801D6610 8C480000 */  lw         $t0, 0x0($v0)
/* 17A0F4 801D6614 C7A6003C */  lwc1       $f6, 0x3C($sp)
/* 17A0F8 801D6618 C7B00040 */  lwc1       $f16, 0x40($sp)
.L801D661C_ovl9:
/* 17A0FC 801D661C 00084880 */  sll        $t1, $t0, 2
/* 17A100 801D6620 00290821 */  addu       $at, $at, $t1
/* 17A104 801D6624 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 17A108 801D6628 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 17A10C 801D662C 44814000 */  mtc1       $at, $f8
/* 17A110 801D6630 8C4A0000 */  lw         $t2, 0x0($v0)
/* 17A114 801D6634 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 17A118 801D6638 46083281 */  sub.s      $f10, $f6, $f8
/* 17A11C 801D663C 000A5880 */  sll        $t3, $t2, 2
/* 17A120 801D6640 002B0821 */  addu       $at, $at, $t3
.L801D6644_ovl9:
/* 17A124 801D6644 3C06800E */  lui        $a2, %hi(D_800E0D50)
/* 17A128 801D6648 E42A2790 */  swc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 17A12C 801D664C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 17A130 801D6650 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 17A134 801D6654 8FA50044 */  lw         $a1, 0x44($sp)
.L801D6658_ovl9:
/* 17A138 801D6658 000C6880 */  sll        $t5, $t4, 2
/* 17A13C 801D665C 002D0821 */  addu       $at, $at, $t5
/* 17A140 801D6660 E4302950 */  swc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* 17A144 801D6664 8C4E0000 */  lw         $t6, 0x0($v0)
/* 17A148 801D6668 27A4002C */  addiu      $a0, $sp, 0x2C
/* 17A14C 801D666C 000E7880 */  sll        $t7, $t6, 2
/* 17A150 801D6670 00CF3021 */  addu       $a2, $a2, $t7
/* 17A154 801D6674 0C02C9B6 */  jal        func_800B26D8
/* 17A158 801D6678 8CC60D50 */   lw        $a2, %lo(D_800E0D50)($a2)
/* 17A15C 801D667C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 17A160 801D6680 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 17A164 801D6684 C7B20030 */  lwc1       $f18, 0x30($sp)
/* 17A168 801D6688 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L801D668C_ovl9:
/* 17A16C 801D668C 8F190000 */  lw         $t9, 0x0($t8)
/* 17A170 801D6690 00194080 */  sll        $t0, $t9, 2
/* 17A174 801D6694 00280821 */  addu       $at, $at, $t0
/* 17A178 801D6698 1000008B */  b          .L801D68C8_ovl8
/* 17A17C 801D669C E43241D0 */   swc1      $f18, %lo(gEntitiesAngleYArray)($at)
glabel func_801D66A0_ovl9
/* 17A180 801D66A0 0C068CEE */  jal        func_801A33B8
/* 17A184 801D66A4 2484A980 */   addiu     $a0, $a0, %lo(D_801CA980)
/* 17A188 801D66A8 3C098013 */  lui        $t1, %hi(D_8012BCA0)
/* 17A18C 801D66AC 8D29BCA0 */  lw         $t1, %lo(D_8012BCA0)($t1)
/* 17A190 801D66B0 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 17A194 801D66B4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 17A198 801D66B8 000954C2 */  srl        $t2, $t1, 19
/* 17A19C 801D66BC 314B003F */  andi       $t3, $t2, 0x3F
/* 17A1A0 801D66C0 15600009 */  bnez       $t3, .L801D66E8_ovl8
/* 17A1A4 801D66C4 00000000 */   nop
/* 17A1A8 801D66C8 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 17A1AC 801D66CC 3C0F800E */  lui        $t7, %hi(D_800E6310)
/* 17A1B0 801D66D0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 17A1B4 801D66D4 000D7080 */  sll        $t6, $t5, 2
/* 17A1B8 801D66D8 01EE7821 */  addu       $t7, $t7, $t6
/* 17A1BC 801D66DC 8DEF6310 */  lw         $t7, %lo(D_800E6310)($t7)
/* 17A1C0 801D66E0 11E00079 */  beqz       $t7, .L801D68C8_ovl8
/* 17A1C4 801D66E4 00000000 */   nop
.L801D66E8_ovl8:
/* 17A1C8 801D66E8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 17A1CC 801D66EC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 17A1D0 801D66F0 24180003 */  addiu      $t8, $zero, 0x3
/* 17A1D4 801D66F4 8C590000 */  lw         $t9, 0x0($v0)
/* 17A1D8 801D66F8 3C0B800E */  lui        $t3, %hi(D_800E0D50)
/* 17A1DC 801D66FC 00194080 */  sll        $t0, $t9, 2
/* 17A1E0 801D6700 00280821 */  addu       $at, $at, $t0
/* 17A1E4 801D6704 AC3898E0 */  sw         $t8, %lo(D_800E98E0)($at)
/* 17A1E8 801D6708 8C490000 */  lw         $t1, 0x0($v0)
/* 17A1EC 801D670C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 17A1F0 801D6710 00095080 */  sll        $t2, $t1, 2
/* 17A1F4 801D6714 002A0821 */  addu       $at, $at, $t2
/* 17A1F8 801D6718 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 17A1FC 801D671C 8C430000 */  lw         $v1, 0x0($v0)
/* 17A200 801D6720 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 17A204 801D6724 44812000 */  mtc1       $at, $f4
/* 17A208 801D6728 00031880 */  sll        $v1, $v1, 2
/* 17A20C 801D672C 01635821 */  addu       $t3, $t3, $v1
/* 17A210 801D6730 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
/* 17A214 801D6734 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 17A218 801D6738 000B6080 */  sll        $t4, $t3, 2
/* 17A21C 801D673C 002C0821 */  addu       $at, $at, $t4
/* 17A220 801D6740 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 17A224 801D6744 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 17A228 801D6748 46062032 */  c.eq.s     $f4, $f6
/* 17A22C 801D674C 00000000 */  nop
/* 17A230 801D6750 45020015 */  bc1fl      .L801D67A8_ovl8
/* 17A234 801D6754 44819000 */   mtc1      $at, $f18
/* 17A238 801D6758 3C01C040 */  lui        $at, (0xC0400000 >> 16)
/* 17A23C 801D675C 44814000 */  mtc1       $at, $f8
/* 17A240 801D6760 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 17A244 801D6764 00230821 */  addu       $at, $at, $v1
/* 17A248 801D6768 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 17A24C 801D676C 8C4D0000 */  lw         $t5, 0x0($v0)
/* 17A250 801D6770 44805000 */  mtc1       $zero, $f10
/* 17A254 801D6774 3C01800E */  lui        $at, %hi(D_800E6690)
/* 17A258 801D6778 000D7080 */  sll        $t6, $t5, 2
/* 17A25C 801D677C 002E0821 */  addu       $at, $at, $t6
/* 17A260 801D6780 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
/* 17A264 801D6784 8C4F0000 */  lw         $t7, 0x0($v0)
/* 17A268 801D6788 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 17A26C 801D678C 44818000 */  mtc1       $at, $f16
/* 17A270 801D6790 3C01800E */  lui        $at, %hi(D_800E6850)
/* 17A274 801D6794 000FC880 */  sll        $t9, $t7, 2
/* 17A278 801D6798 00390821 */  addu       $at, $at, $t9
/* 17A27C 801D679C 10000012 */  b          .L801D67E8_ovl8
/* 17A280 801D67A0 E4306850 */   swc1      $f16, %lo(D_800E6850)($at)
/* 17A284 801D67A4 44819000 */  mtc1       $at, $f18
.L801D67A8_ovl8:
/* 17A288 801D67A8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 17A28C 801D67AC 00230821 */  addu       $at, $at, $v1
/* 17A290 801D67B0 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
/* 17A294 801D67B4 8C580000 */  lw         $t8, 0x0($v0)
/* 17A298 801D67B8 44802000 */  mtc1       $zero, $f4
/* 17A29C 801D67BC 3C01800E */  lui        $at, %hi(D_800E6690)
/* 17A2A0 801D67C0 00184080 */  sll        $t0, $t8, 2
/* 17A2A4 801D67C4 00280821 */  addu       $at, $at, $t0
/* 17A2A8 801D67C8 E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
/* 17A2AC 801D67CC 8C490000 */  lw         $t1, 0x0($v0)
/* 17A2B0 801D67D0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 17A2B4 801D67D4 44813000 */  mtc1       $at, $f6
/* 17A2B8 801D67D8 3C01800E */  lui        $at, %hi(D_800E6850)
/* 17A2BC 801D67DC 00095080 */  sll        $t2, $t1, 2
/* 17A2C0 801D67E0 002A0821 */  addu       $at, $at, $t2
/* 17A2C4 801D67E4 E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
.L801D67E8_ovl8:
/* 17A2C8 801D67E8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 17A2CC 801D67EC 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 17A2D0 801D67F0 44810000 */  mtc1       $at, $f0
.L801D67F4_ovl9:
/* 17A2D4 801D67F4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 17A2D8 801D67F8 000B6080 */  sll        $t4, $t3, 2
/* 17A2DC 801D67FC 002C0821 */  addu       $at, $at, $t4
/* 17A2E0 801D6800 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 17A2E4 801D6804 8C4D0000 */  lw         $t5, 0x0($v0)
/* 17A2E8 801D6808 3C01801E */  lui        $at, %hi(D_801DB1BC_ovl8)
/* 17A2EC 801D680C C428B1BC */  lwc1       $f8, %lo(D_801DB1BC_ovl8)($at)
/* 17A2F0 801D6810 3C01800E */  lui        $at, %hi(D_800E3750)
/* 17A2F4 801D6814 000D7080 */  sll        $t6, $t5, 2
/* 17A2F8 801D6818 002E0821 */  addu       $at, $at, $t6
.L801D681C_ovl9:
/* 17A2FC 801D681C E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
/* 17A300 801D6820 8C4F0000 */  lw         $t7, 0x0($v0)
/* 17A304 801D6824 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 17A308 801D6828 000FC880 */  sll        $t9, $t7, 2
.L801D682C_ovl9:
/* 17A30C 801D682C 00390821 */  addu       $at, $at, $t9
/* 17A310 801D6830 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
/* 17A314 801D6834 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 17A318 801D6838 44816000 */  mtc1       $at, $f12
/* 17A31C 801D683C 0C02EFF8 */  jal        change_kirby_hp
/* 17A320 801D6840 00000000 */   nop
/* 17A324 801D6844 3C01800D */  lui        $at, %hi(gKirbyHp)
/* 17A328 801D6848 C4306E50 */  lwc1       $f16, %lo(gKirbyHp)($at)
/* 17A32C 801D684C 44805000 */  mtc1       $zero, $f10
.L801D6850_ovl9:
/* 17A330 801D6850 00000000 */  nop
/* 17A334 801D6854 4610503C */  c.lt.s     $f10, $f16
/* 17A338 801D6858 00000000 */  nop
/* 17A33C 801D685C 4500000A */  bc1f       .L801D6888_ovl8
/* 17A340 801D6860 00000000 */   nop
/* 17A344 801D6864 0C029D9E */  jal        play_sound
/* 17A348 801D6868 240401E9 */   addiu     $a0, $zero, 0x1E9
/* 17A34C 801D686C 0C03EE45 */  jal        func_800FB914
/* 17A350 801D6870 24040002 */   addiu     $a0, $zero, 0x2
/* 17A354 801D6874 00002025 */  or         $a0, $zero, $zero
/* 17A358 801D6878 0C02ED1A */  jal        func_800BB468
/* 17A35C 801D687C 00002825 */   or        $a1, $zero, $zero
/* 17A360 801D6880 10000011 */  b          .L801D68C8_ovl8
/* 17A364 801D6884 00000000 */   nop
.L801D6888_ovl8:
/* 17A368 801D6888 0C05AF49 */  jal        func_8016BD24_ovl3
/* 17A36C 801D688C 00002025 */   or        $a0, $zero, $zero
/* 17A370 801D6890 1000000D */  b          .L801D68C8_ovl8
/* 17A374 801D6894 00000000 */   nop
.L801D6898_ovl8:
/* 17A378 801D6898 0C068CEE */  jal        func_801A33B8
/* 17A37C 801D689C 2484A980 */   addiu     $a0, $a0, %lo(D_801CA980)
/* 17A380 801D68A0 3C188013 */  lui        $t8, %hi(D_8012BCA0)
/* 17A384 801D68A4 8F18BCA0 */  lw         $t8, %lo(D_8012BCA0)($t8)
/* 17A388 801D68A8 001844C2 */  srl        $t0, $t8, 19
/* 17A38C 801D68AC 31090E00 */  andi       $t1, $t0, 0xE00
/* 17A390 801D68B0 11200005 */  beqz       $t1, .L801D68C8_ovl8
/* 17A394 801D68B4 00000000 */   nop
/* 17A398 801D68B8 0C029D9E */  jal        play_sound
/* 17A39C 801D68BC 24040110 */   addiu     $a0, $zero, 0x110
/* 17A3A0 801D68C0 0C05AF49 */  jal        func_8016BD24_ovl3
/* 17A3A4 801D68C4 00002025 */   or        $a0, $zero, $zero
.L801D68C8_ovl8:
/* 17A3A8 801D68C8 0C05A5BC */  jal        func_801696F0_ovl3
/* 17A3AC 801D68CC 8FA40048 */   lw        $a0, 0x48($sp)
/* 17A3B0 801D68D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L801D68D4_ovl8:
/* 17A3B4 801D68D4 27BD0048 */  addiu      $sp, $sp, 0x48
/* 17A3B8 801D68D8 03E00008 */  jr         $ra
/* 17A3BC 801D68DC 00000000 */   nop
