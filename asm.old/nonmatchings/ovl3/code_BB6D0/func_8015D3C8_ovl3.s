glabel func_8015D3C8_ovl3
/* BDE08 8015D3C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BDE0C 8015D3CC AFB00018 */  sw         $s0, 0x18($sp)
/* BDE10 8015D3D0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* BDE14 8015D3D4 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* BDE18 8015D3D8 8E0E0000 */  lw         $t6, 0x0($s0)
/* BDE1C 8015D3DC AFBF001C */  sw         $ra, 0x1C($sp)
/* BDE20 8015D3E0 AFA40030 */  sw         $a0, 0x30($sp)
/* BDE24 8015D3E4 8DC30000 */  lw         $v1, 0x0($t6)
/* BDE28 8015D3E8 3C0F800F */  lui        $t7, %hi(D_800E98E0)
/* BDE2C 8015D3EC 00031880 */  sll        $v1, $v1, 2
/* BDE30 8015D3F0 01E37821 */  addu       $t7, $t7, $v1
.L8015D3F4_ovl5:
/* BDE34 8015D3F4 8DEF98E0 */  lw         $t7, %lo(D_800E98E0)($t7)
/* BDE38 8015D3F8 15E000C5 */  bnez       $t7, .L8015D710_ovl3
/* BDE3C 8015D3FC 00000000 */   nop
/* BDE40 8015D400 0C02CC56 */  jal        func_800B3158
/* BDE44 8015D404 00000000 */   nop
/* BDE48 8015D408 5440000E */  bnel       $v0, $zero, .L8015D444_ovl3
/* BDE4C 8015D40C 8E020000 */   lw        $v0, 0x0($s0)
/* BDE50 8015D410 8E180000 */  lw         $t8, 0x0($s0)
/* BDE54 8015D414 3C04800F */  lui        $a0, %hi(D_800EA520)
/* BDE58 8015D418 8F190000 */  lw         $t9, 0x0($t8)
/* BDE5C 8015D41C 00194880 */  sll        $t1, $t9, 2
.L8015D420_ovl5:
/* BDE60 8015D420 00892021 */  addu       $a0, $a0, $t1
.L8015D424_ovl5:
/* BDE64 8015D424 0C0288B5 */  jal        func_800A22D4
/* BDE68 8015D428 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
/* BDE6C 8015D42C 8E0A0000 */  lw         $t2, 0x0($s0)
/* BDE70 8015D430 0C02C640 */  jal        func_800B1900
/* BDE74 8015D434 95440002 */   lhu       $a0, 0x2($t2)
/* BDE78 8015D438 100000D5 */  b          .L8015D790_ovl3
/* BDE7C 8015D43C 8FBF001C */   lw        $ra, 0x1C($sp)
/* BDE80 8015D440 8E020000 */  lw         $v0, 0x0($s0)
.L8015D444_ovl3:
/* BDE84 8015D444 3C01800E */  lui        $at, %hi(D_800E17D0)
/* BDE88 8015D448 44803000 */  mtc1       $zero, $f6
/* BDE8C 8015D44C 8C430000 */  lw         $v1, 0x0($v0)
/* BDE90 8015D450 00031880 */  sll        $v1, $v1, 2
/* BDE94 8015D454 00230821 */  addu       $at, $at, $v1
glabel func_8015D458_ovl5
/* BDE98 8015D458 C42417D0 */  lwc1       $f4, %lo(D_800E17D0)($at)
/* BDE9C 8015D45C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* BDEA0 8015D460 00230821 */  addu       $at, $at, $v1
/* BDEA4 8015D464 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* BDEA8 8015D468 8C430000 */  lw         $v1, 0x0($v0)
/* BDEAC 8015D46C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BDEB0 8015D470 00031880 */  sll        $v1, $v1, 2
/* BDEB4 8015D474 00230821 */  addu       $at, $at, $v1
/* BDEB8 8015D478 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* BDEBC 8015D47C 3C01800E */  lui        $at, %hi(D_800E3210)
/* BDEC0 8015D480 00230821 */  addu       $at, $at, $v1
/* BDEC4 8015D484 4606003C */  c.lt.s     $f0, $f6
/* BDEC8 8015D488 00000000 */  nop
/* BDECC 8015D48C 45020004 */  bc1fl      .L8015D4A0_ovl3
/* BDED0 8015D490 46000386 */   mov.s     $f14, $f0
/* BDED4 8015D494 10000002 */  b          .L8015D4A0_ovl3
/* BDED8 8015D498 46000387 */   neg.s     $f14, $f0
/* BDEDC 8015D49C 46000386 */  mov.s      $f14, $f0
.L8015D4A0_ovl3:
/* BDEE0 8015D4A0 0C0061C3 */  jal        atan2f
/* BDEE4 8015D4A4 C42C3210 */   lwc1      $f12, %lo(D_800E3210)($at)
/* BDEE8 8015D4A8 8E020000 */  lw         $v0, 0x0($s0)
/* BDEEC 8015D4AC 46000207 */  neg.s      $f8, $f0
/* BDEF0 8015D4B0 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* BDEF4 8015D4B4 8C4B0000 */  lw         $t3, 0x0($v0)
/* BDEF8 8015D4B8 3C0D800E */  lui        $t5, %hi(D_800E6310)
/* BDEFC 8015D4BC 3C0E800F */  lui        $t6, %hi(D_800E83E0)
/* BDF00 8015D4C0 000B6080 */  sll        $t4, $t3, 2
/* BDF04 8015D4C4 002C0821 */  addu       $at, $at, $t4
/* BDF08 8015D4C8 E4284010 */  swc1       $f8, %lo(gEntitiesAngleXArray)($at)
/* BDF0C 8015D4CC 8C480000 */  lw         $t0, 0x0($v0)
/* BDF10 8015D4D0 00081880 */  sll        $v1, $t0, 2
/* BDF14 8015D4D4 01A36821 */  addu       $t5, $t5, $v1
/* BDF18 8015D4D8 8DAD6310 */  lw         $t5, %lo(D_800E6310)($t5)
/* BDF1C 8015D4DC 01C37021 */  addu       $t6, $t6, $v1
/* BDF20 8015D4E0 55A00056 */  bnel       $t5, $zero, .L8015D63C_ovl3
/* BDF24 8015D4E4 8E020000 */   lw        $v0, 0x0($s0)
/* BDF28 8015D4E8 8DCE83E0 */  lw         $t6, %lo(D_800E83E0)($t6)
/* BDF2C 8015D4EC 2502FFFC */  addiu      $v0, $t0, -0x4
/* BDF30 8015D4F0 00027880 */  sll        $t7, $v0, 2
/* BDF34 8015D4F4 15C00050 */  bnez       $t6, .L8015D638_ovl3
/* BDF38 8015D4F8 01E27823 */   subu      $t7, $t7, $v0
/* BDF3C 8015D4FC 000F78C0 */  sll        $t7, $t7, 3
/* BDF40 8015D500 01E27823 */  subu       $t7, $t7, $v0
/* BDF44 8015D504 3C188019 */  lui        $t8, %hi(D_80197F60_ovl3)
/* BDF48 8015D508 3C09801A */  lui        $t1, %hi(D_801982F8_ovl3)
/* BDF4C 8015D50C 252982F8 */  addiu      $t1, $t1, %lo(D_801982F8_ovl3)
/* BDF50 8015D510 27187F60 */  addiu      $t8, $t8, %lo(D_80197F60_ovl3)
/* BDF54 8015D514 000F7880 */  sll        $t7, $t7, 2
/* BDF58 8015D518 0002C940 */  sll        $t9, $v0, 5
/* BDF5C 8015D51C 03292821 */  addu       $a1, $t9, $t1
/* BDF60 8015D520 0C055543 */  jal        func_8015550C_ovl3
/* BDF64 8015D524 01F82021 */   addu      $a0, $t7, $t8
/* BDF68 8015D528 54400044 */  bnel       $v0, $zero, .L8015D63C_ovl3
.L8015D52C_ovl5:
/* BDF6C 8015D52C 8E020000 */   lw        $v0, 0x0($s0)
/* BDF70 8015D530 8E0A0000 */  lw         $t2, 0x0($s0)
/* BDF74 8015D534 3C0B800F */  lui        $t3, %hi(D_800E8920)
/* BDF78 8015D538 3C02800F */  lui        $v0, (0x800F0000 >> 16)
/* BDF7C 8015D53C 8D430000 */  lw         $v1, 0x0($t2)
/* BDF80 8015D540 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* BDF84 8015D544 00031880 */  sll        $v1, $v1, 2
/* BDF88 8015D548 01635821 */  addu       $t3, $t3, $v1
/* BDF8C 8015D54C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
/* BDF90 8015D550 00431021 */  addu       $v0, $v0, $v1
/* BDF94 8015D554 55600039 */  bnel       $t3, $zero, .L8015D63C_ovl3
/* BDF98 8015D558 8E020000 */   lw        $v0, 0x0($s0)
/* BDF9C 8015D55C 8C42A520 */  lw         $v0, -0x5AE0($v0)
/* BDFA0 8015D560 00230821 */  addu       $at, $at, $v1
/* BDFA4 8015D564 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* BDFA8 8015D568 8C4C004C */  lw         $t4, 0x4C($v0)
/* BDFAC 8015D56C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* BDFB0 8015D570 E58A0004 */  swc1       $f10, 0x4($t4)
/* BDFB4 8015D574 8E0D0000 */  lw         $t5, 0x0($s0)
/* BDFB8 8015D578 8C58004C */  lw         $t8, 0x4C($v0)
/* BDFBC 8015D57C 8DAE0000 */  lw         $t6, 0x0($t5)
/* BDFC0 8015D580 000E7880 */  sll        $t7, $t6, 2
/* BDFC4 8015D584 002F0821 */  addu       $at, $at, $t7
/* BDFC8 8015D588 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* BDFCC 8015D58C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* BDFD0 8015D590 E7100008 */  swc1       $f16, 0x8($t8)
/* BDFD4 8015D594 8E190000 */  lw         $t9, 0x0($s0)
/* BDFD8 8015D598 8C4B004C */  lw         $t3, 0x4C($v0)
/* BDFDC 8015D59C 8F290000 */  lw         $t1, 0x0($t9)
/* BDFE0 8015D5A0 00095080 */  sll        $t2, $t1, 2
/* BDFE4 8015D5A4 002A0821 */  addu       $at, $at, $t2
/* BDFE8 8015D5A8 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* BDFEC 8015D5AC 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
.L8015D5B0_ovl5:
/* BDFF0 8015D5B0 E572000C */  swc1       $f18, 0xC($t3)
/* BDFF4 8015D5B4 8E0C0000 */  lw         $t4, 0x0($s0)
/* BDFF8 8015D5B8 8C4F004C */  lw         $t7, 0x4C($v0)
/* BDFFC 8015D5BC 8D8D0000 */  lw         $t5, 0x0($t4)
/* BE000 8015D5C0 000D7080 */  sll        $t6, $t5, 2
/* BE004 8015D5C4 002E0821 */  addu       $at, $at, $t6
/* BE008 8015D5C8 C4244010 */  lwc1       $f4, %lo(gEntitiesAngleXArray)($at)
/* BE00C 8015D5CC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* BE010 8015D5D0 E5E40010 */  swc1       $f4, 0x10($t7)
.L8015D5D4_ovl5:
/* BE014 8015D5D4 8E180000 */  lw         $t8, 0x0($s0)
/* BE018 8015D5D8 8C4A004C */  lw         $t2, 0x4C($v0)
/* BE01C 8015D5DC 8F190000 */  lw         $t9, 0x0($t8)
/* BE020 8015D5E0 00194880 */  sll        $t1, $t9, 2
/* BE024 8015D5E4 00290821 */  addu       $at, $at, $t1
/* BE028 8015D5E8 C42641D0 */  lwc1       $f6, %lo(gEntitiesAngleYArray)($at)
.L8015D5EC_ovl5:
/* BE02C 8015D5EC 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
.L8015D5F0_ovl5:
/* BE030 8015D5F0 E5460014 */  swc1       $f6, 0x14($t2)
/* BE034 8015D5F4 8E0B0000 */  lw         $t3, 0x0($s0)
/* BE038 8015D5F8 8C4E004C */  lw         $t6, 0x4C($v0)
/* BE03C 8015D5FC 8D6C0000 */  lw         $t4, 0x0($t3)
/* BE040 8015D600 000C6880 */  sll        $t5, $t4, 2
/* BE044 8015D604 002D0821 */  addu       $at, $at, $t5
/* BE048 8015D608 C4284390 */  lwc1       $f8, %lo(gEntitiesAngleZArray)($at)
/* BE04C 8015D60C 0C058854 */  jal        func_80162150_ovl3
/* BE050 8015D610 E5C80018 */   swc1      $f8, 0x18($t6)
/* BE054 8015D614 8E0F0000 */  lw         $t7, 0x0($s0)
/* BE058 8015D618 3C048019 */  lui        $a0, %hi(D_80190C38_ovl3)
/* BE05C 8015D61C 24840C38 */  addiu      $a0, $a0, %lo(D_80190C38_ovl3)
/* BE060 8015D620 0C0445EF */  jal        func_801117BC
/* BE064 8015D624 8DE50000 */   lw        $a1, 0x0($t7)
/* BE068 8015D628 0C044713 */  jal        func_80111C4C
glabel func_8015D62C_ovl5
/* BE06C 8015D62C 00402025 */   or        $a0, $v0, $zero
/* BE070 8015D630 10000057 */  b          .L8015D790_ovl3
/* BE074 8015D634 8FBF001C */   lw        $ra, 0x1C($sp)
.L8015D638_ovl3:
/* BE078 8015D638 8E020000 */  lw         $v0, 0x0($s0)
.L8015D63C_ovl3:
/* BE07C 8015D63C 44800000 */  mtc1       $zero, $f0
/* BE080 8015D640 3C05800E */  lui        $a1, %hi(D_800E6690)
/* BE084 8015D644 8C580000 */  lw         $t8, 0x0($v0)
/* BE088 8015D648 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
/* BE08C 8015D64C 3C018019 */  lui        $at, %hi(D_80197080_ovl3)
/* BE090 8015D650 0018C880 */  sll        $t9, $t8, 2
/* BE094 8015D654 C4227080 */  lwc1       $f2, %lo(D_80197080_ovl3)($at)
/* BE098 8015D658 00B94821 */  addu       $t1, $a1, $t9
/* BE09C 8015D65C E5200000 */  swc1       $f0, 0x0($t1)
/* BE0A0 8015D660 8C430000 */  lw         $v1, 0x0($v0)
/* BE0A4 8015D664 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BE0A8 8015D668 3C06800E */  lui        $a2, %hi(D_800E3750)
/* BE0AC 8015D66C 00031880 */  sll        $v1, $v1, 2
/* BE0B0 8015D670 00A35021 */  addu       $t2, $a1, $v1
/* BE0B4 8015D674 C54A0000 */  lwc1       $f10, 0x0($t2)
/* BE0B8 8015D678 00230821 */  addu       $at, $at, $v1
/* BE0BC 8015D67C 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* BE0C0 8015D680 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* BE0C4 8015D684 8C4B0000 */  lw         $t3, 0x0($v0)
/* BE0C8 8015D688 3C01800E */  lui        $at, %hi(D_800E6850)
/* BE0CC 8015D68C 240A0001 */  addiu      $t2, $zero, 0x1
/* BE0D0 8015D690 000B6080 */  sll        $t4, $t3, 2
/* BE0D4 8015D694 002C0821 */  addu       $at, $at, $t4
/* BE0D8 8015D698 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
/* BE0DC 8015D69C 8C4D0000 */  lw         $t5, 0x0($v0)
/* BE0E0 8015D6A0 3C01800E */  lui        $at, %hi(D_800E3210)
/* BE0E4 8015D6A4 3C04800F */  lui        $a0, %hi(D_800EA520)
/* BE0E8 8015D6A8 000D7080 */  sll        $t6, $t5, 2
/* BE0EC 8015D6AC 00CE7821 */  addu       $t7, $a2, $t6
/* BE0F0 8015D6B0 E5E00000 */  swc1       $f0, 0x0($t7)
/* BE0F4 8015D6B4 8C430000 */  lw         $v1, 0x0($v0)
/* BE0F8 8015D6B8 00031880 */  sll        $v1, $v1, 2
/* BE0FC 8015D6BC 00C3C021 */  addu       $t8, $a2, $v1
/* BE100 8015D6C0 C7100000 */  lwc1       $f16, 0x0($t8)
/* BE104 8015D6C4 00230821 */  addu       $at, $at, $v1
/* BE108 8015D6C8 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* BE10C 8015D6CC 8C590000 */  lw         $t9, 0x0($v0)
/* BE110 8015D6D0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BE114 8015D6D4 00194880 */  sll        $t1, $t9, 2
/* BE118 8015D6D8 00290821 */  addu       $at, $at, $t1
/* BE11C 8015D6DC E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* BE120 8015D6E0 8C4B0000 */  lw         $t3, 0x0($v0)
/* BE124 8015D6E4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* BE128 8015D6E8 000B6080 */  sll        $t4, $t3, 2
/* BE12C 8015D6EC 002C0821 */  addu       $at, $at, $t4
/* BE130 8015D6F0 AC2A98E0 */  sw         $t2, %lo(D_800E98E0)($at)
/* BE134 8015D6F4 8C4D0000 */  lw         $t5, 0x0($v0)
/* BE138 8015D6F8 000D7080 */  sll        $t6, $t5, 2
.L8015D6FC_ovl5:
/* BE13C 8015D6FC 008E2021 */  addu       $a0, $a0, $t6
/* BE140 8015D700 0C0288B5 */  jal        func_800A22D4
/* BE144 8015D704 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
/* BE148 8015D708 10000021 */  b          .L8015D790_ovl3
/* BE14C 8015D70C 8FBF001C */   lw        $ra, 0x1C($sp)
.L8015D710_ovl3:
/* BE150 8015D710 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* BE154 8015D714 01E37821 */  addu       $t7, $t7, $v1
/* BE158 8015D718 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* BE15C 8015D71C 3C048019 */  lui        $a0, %hi(D_801915B4_ovl3)
/* BE160 8015D720 248415B4 */  addiu      $a0, $a0, %lo(D_801915B4_ovl3)
.L8015D724_ovl5:
/* BE164 8015D724 8DF80004 */  lw         $t8, 0x4($t7)
/* BE168 8015D728 00002825 */  or         $a1, $zero, $zero
/* BE16C 8015D72C C7000040 */  lwc1       $f0, 0x40($t8)
/* BE170 8015D730 44060000 */  mfc1       $a2, $f0
/* BE174 8015D734 0C05A153 */  jal        func_8016854C_ovl3
/* BE178 8015D738 E7A00024 */   swc1      $f0, 0x24($sp)
/* BE17C 8015D73C C7A00024 */  lwc1       $f0, 0x24($sp)
/* BE180 8015D740 3C048019 */  lui        $a0, %hi(D_801943A8_ovl3)
/* BE184 8015D744 3C05801A */  lui        $a1, %hi(D_80198438_ovl3)
/* BE188 8015D748 44070000 */  mfc1       $a3, $f0
/* BE18C 8015D74C 24A58438 */  addiu      $a1, $a1, %lo(D_80198438_ovl3)
/* BE190 8015D750 248443A8 */  addiu      $a0, $a0, %lo(D_801943A8_ovl3)
/* BE194 8015D754 0C05481C */  jal        func_80152070_ovl3
/* BE198 8015D758 2406000B */   addiu     $a2, $zero, 0xB
/* BE19C 8015D75C 8E190000 */  lw         $t9, 0x0($s0)
/* BE1A0 8015D760 3C0A801A */  lui        $t2, %hi(D_801982F8_ovl3)
/* BE1A4 8015D764 254A82F8 */  addiu      $t2, $t2, %lo(D_801982F8_ovl3)
/* BE1A8 8015D768 8F280000 */  lw         $t0, 0x0($t9)
/* BE1AC 8015D76C 3C058019 */  lui        $a1, %hi(D_80194458_ovl3)
.L8015D770_ovl5:
/* BE1B0 8015D770 24A54458 */  addiu      $a1, $a1, %lo(D_80194458_ovl3)
/* BE1B4 8015D774 00084940 */  sll        $t1, $t0, 5
/* BE1B8 8015D778 252BFF80 */  addiu      $t3, $t1, -0x80
/* BE1BC 8015D77C 016A2021 */  addu       $a0, $t3, $t2
/* BE1C0 8015D780 00003025 */  or         $a2, $zero, $zero
/* BE1C4 8015D784 0C055754 */  jal        func_80155D50_ovl3
/* BE1C8 8015D788 01003825 */   or        $a3, $t0, $zero
/* BE1CC 8015D78C 8FBF001C */  lw         $ra, 0x1C($sp)
.L8015D790_ovl3:
/* BE1D0 8015D790 8FB00018 */  lw         $s0, 0x18($sp)
/* BE1D4 8015D794 27BD0030 */  addiu      $sp, $sp, 0x30
/* BE1D8 8015D798 03E00008 */  jr         $ra
/* BE1DC 8015D79C 00000000 */   nop
