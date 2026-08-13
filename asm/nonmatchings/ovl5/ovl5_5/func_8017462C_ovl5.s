nonmatching func_8017462C_ovl5, 0x230

glabel func_8017462C_ovl5
    /* 11BA9C 8017462C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 11BAA0 80174630 AFB10018 */  sw         $s1, 0x18($sp)
    /* 11BAA4 80174634 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 11BAA8 80174638 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 11BAAC 8017463C 8E220000 */  lw         $v0, 0x0($s1)
    /* 11BAB0 80174640 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 11BAB4 80174644 AFB30020 */  sw         $s3, 0x20($sp)
    /* 11BAB8 80174648 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 11BABC 8017464C AFB00014 */  sw         $s0, 0x14($sp)
    /* 11BAC0 80174650 AFA60030 */  sw         $a2, 0x30($sp)
    /* 11BAC4 80174654 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11BAC8 80174658 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11BACC 8017465C 3C13800F */  lui        $s3, %hi(D_800E9C60)
    /* 11BAD0 80174660 000E7880 */  sll        $t7, $t6, 2
    /* 11BAD4 80174664 002F0821 */  addu       $at, $at, $t7
    /* 11BAD8 80174668 AC2598E0 */  sw         $a1, %lo(D_800E98E0)($at)
    /* 11BADC 8017466C 8C590000 */  lw         $t9, 0x0($v0)
    /* 11BAE0 80174670 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 11BAE4 80174674 26739C60 */  addiu      $s3, $s3, %lo(D_800E9C60)
    /* 11BAE8 80174678 00194080 */  sll        $t0, $t9, 2
    /* 11BAEC 8017467C 00280821 */  addu       $at, $at, $t0
    /* 11BAF0 80174680 AC269AA0 */  sw         $a2, %lo(D_800E9AA0)($at)
    /* 11BAF4 80174684 8C490000 */  lw         $t1, 0x0($v0)
    /* 11BAF8 80174688 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 11BAFC 8017468C 3C0C8017 */  lui        $t4, %hi(func_8017485C_ovl5)
    /* 11BB00 80174690 00095080 */  sll        $t2, $t1, 2
    /* 11BB04 80174694 026A5821 */  addu       $t3, $s3, $t2
    /* 11BB08 80174698 AD600000 */  sw         $zero, 0x0($t3)
    /* 11BB0C 8017469C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11BB10 801746A0 258C485C */  addiu      $t4, $t4, %lo(func_8017485C_ovl5)
    /* 11BB14 801746A4 00809025 */  or         $s2, $a0, $zero
    /* 11BB18 801746A8 000D7080 */  sll        $t6, $t5, 2
    /* 11BB1C 801746AC 002E0821 */  addu       $at, $at, $t6
    /* 11BB20 801746B0 AC2CF150 */  sw         $t4, %lo(D_800DF150)($at)
    /* 11BB24 801746B4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 11BB28 801746B8 00A08025 */  or         $s0, $a1, $zero
    /* 11BB2C 801746BC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11BB30 801746C0 000FC880 */  sll        $t9, $t7, 2
    /* 11BB34 801746C4 00992021 */  addu       $a0, $a0, $t9
    /* 11BB38 801746C8 3C058017 */  lui        $a1, %hi(func_801773C4_ovl5)
    /* 11BB3C 801746CC 24A573C4 */  addiu      $a1, $a1, %lo(func_801773C4_ovl5)
    /* 11BB40 801746D0 0C02C7DA */  jal        setProcessMain
    /* 11BB44 801746D4 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 11BB48 801746D8 3C048018 */  lui        $a0, %hi(D_80187CC8_ovl5)
    /* 11BB4C 801746DC 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* 11BB50 801746E0 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* 11BB54 801746E4 8C847CC8 */  lw         $a0, %lo(D_80187CC8_ovl5)($a0)
    /* 11BB58 801746E8 0C02A619 */  jal        func_800A9864
    /* 11BB5C 801746EC 24060010 */   addiu     $a2, $zero, 0x10
    /* 11BB60 801746F0 3C048018 */  lui        $a0, %hi(D_80187CCC_ovl5)
    /* 11BB64 801746F4 0C02A806 */  jal        func_800AA018
    /* 11BB68 801746F8 8C847CCC */   lw        $a0, %lo(D_80187CCC_ovl5)($a0)
    /* 11BB6C 801746FC 3C048018 */  lui        $a0, %hi(D_80187CD0_ovl5)
    /* 11BB70 80174700 8C847CD0 */  lw         $a0, %lo(D_80187CD0_ovl5)($a0)
    /* 11BB74 80174704 50800004 */  beql       $a0, $zero, .L80174718_ovl5
    /* 11BB78 80174708 02402025 */   or        $a0, $s2, $zero
    /* 11BB7C 8017470C 0C02A806 */  jal        func_800AA018
    /* 11BB80 80174710 00000000 */   nop
    /* 11BB84 80174714 02402025 */  or         $a0, $s2, $zero
  .L80174718_ovl5:
    /* 11BB88 80174718 9245000D */  lbu        $a1, 0xD($s2)
    /* 11BB8C 8017471C 0C002A22 */  jal        omGMoveObjDL
    /* 11BB90 80174720 2406000A */   addiu     $a2, $zero, 0xA
    /* 11BB94 80174724 8E220000 */  lw         $v0, 0x0($s1)
    /* 11BB98 80174728 0010C080 */  sll        $t8, $s0, 2
    /* 11BB9C 8017472C 3C018018 */  lui        $at, %hi(D_80187C94_ovl5)
    /* 11BBA0 80174730 8C480000 */  lw         $t0, 0x0($v0)
    /* 11BBA4 80174734 00380821 */  addu       $at, $at, $t8
    /* 11BBA8 80174738 C4247C94 */  lwc1       $f4, %lo(D_80187C94_ovl5)($at)
    /* 11BBAC 8017473C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 11BBB0 80174740 00084880 */  sll        $t1, $t0, 2
    /* 11BBB4 80174744 00290821 */  addu       $at, $at, $t1
    /* 11BBB8 80174748 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 11BBBC 8017474C 00106880 */  sll        $t5, $s0, 2
    /* 11BBC0 80174750 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 11BBC4 80174754 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11BBC8 80174758 01B06821 */  addu       $t5, $t5, $s0
    /* 11BBCC 8017475C 3C014302 */  lui        $at, (0x43020000 >> 16)
    /* 11BBD0 80174760 44813000 */  mtc1       $at, $f6
    /* 11BBD4 80174764 000D68C0 */  sll        $t5, $t5, 3
    /* 11BBD8 80174768 01B06821 */  addu       $t5, $t5, $s0
    /* 11BBDC 8017476C 000D68C0 */  sll        $t5, $t5, 3
    /* 11BBE0 80174770 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 11BBE4 80174774 3C198019 */  lui        $t9, %hi(D_8018E478_ovl5)
    /* 11BBE8 80174778 000C7080 */  sll        $t6, $t4, 2
    /* 11BBEC 8017477C 000A5880 */  sll        $t3, $t2, 2
    /* 11BBF0 80174780 002B0821 */  addu       $at, $at, $t3
    /* 11BBF4 80174784 01AE7821 */  addu       $t7, $t5, $t6
    /* 11BBF8 80174788 2739E478 */  addiu      $t9, $t9, %lo(D_8018E478_ovl5)
    /* 11BBFC 8017478C 01F99021 */  addu       $s2, $t7, $t9
    /* 11BC00 80174790 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 11BC04 80174794 8E580000 */  lw         $t8, 0x0($s2)
    /* 11BC08 80174798 3C03800E */  lui        $v1, %hi(gEntitiesNextPosZArray)
    /* 11BC0C 8017479C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11BC10 801747A0 24632950 */  addiu      $v1, $v1, %lo(gEntitiesNextPosZArray)
    /* 11BC14 801747A4 00184080 */  sll        $t0, $t8, 2
    /* 11BC18 801747A8 00684821 */  addu       $t1, $v1, $t0
    /* 11BC1C 801747AC C5280000 */  lwc1       $f8, 0x0($t1)
    /* 11BC20 801747B0 000A5880 */  sll        $t3, $t2, 2
    /* 11BC24 801747B4 006B6021 */  addu       $t4, $v1, $t3
    /* 11BC28 801747B8 3C108018 */  lui        $s0, %hi(D_80187CD4_ovl5)
    /* 11BC2C 801747BC 26107CD4 */  addiu      $s0, $s0, %lo(D_80187CD4_ovl5)
    /* 11BC30 801747C0 E5880000 */  swc1       $f8, 0x0($t4)
  .L801747C4_ovl5:
    /* 11BC34 801747C4 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11BC38 801747C8 000D7080 */  sll        $t6, $t5, 2
    /* 11BC3C 801747CC 026E7821 */  addu       $t7, $s3, $t6
    /* 11BC40 801747D0 8DF90000 */  lw         $t9, 0x0($t7)
    /* 11BC44 801747D4 5320000E */  beql       $t9, $zero, .L80174810_ovl5
    /* 11BC48 801747D8 8E480000 */   lw        $t0, 0x0($s2)
    /* 11BC4C 801747DC 0C02A806 */  jal        func_800AA018
    /* 11BC50 801747E0 8E040000 */   lw        $a0, 0x0($s0)
    /* 11BC54 801747E4 8E040004 */  lw         $a0, 0x4($s0)
    /* 11BC58 801747E8 10800003 */  beqz       $a0, .L801747F8_ovl5
    /* 11BC5C 801747EC 00000000 */   nop
    /* 11BC60 801747F0 0C02A806 */  jal        func_800AA018
    /* 11BC64 801747F4 00000000 */   nop
  .L801747F8_ovl5:
    /* 11BC68 801747F8 0C02BC9F */  jal        func_800AF27C
    /* 11BC6C 801747FC 00000000 */   nop
    /* 11BC70 80174800 8E380000 */  lw         $t8, 0x0($s1)
    /* 11BC74 80174804 0C02C640 */  jal        func_800B1900
    /* 11BC78 80174808 97040002 */   lhu       $a0, 0x2($t8)
    /* 11BC7C 8017480C 8E480000 */  lw         $t0, 0x0($s2)
  .L80174810_ovl5:
    /* 11BC80 80174810 15000004 */  bnez       $t0, .L80174824_ovl5
    /* 11BC84 80174814 00000000 */   nop
    /* 11BC88 80174818 8E290000 */  lw         $t1, 0x0($s1)
    /* 11BC8C 8017481C 0C02C640 */  jal        func_800B1900
    /* 11BC90 80174820 95240002 */   lhu       $a0, 0x2($t1)
  .L80174824_ovl5:
    /* 11BC94 80174824 0C002DAF */  jal        ohSleep
    /* 11BC98 80174828 24040001 */   addiu     $a0, $zero, 0x1
    /* 11BC9C 8017482C 1000FFE5 */  b          .L801747C4_ovl5
    /* 11BCA0 80174830 8E220000 */   lw        $v0, 0x0($s1)
    /* 11BCA4 80174834 00000000 */  nop
    /* 11BCA8 80174838 00000000 */  nop
    /* 11BCAC 8017483C 00000000 */  nop
    /* 11BCB0 80174840 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 11BCB4 80174844 8FB00014 */  lw         $s0, 0x14($sp)
    /* 11BCB8 80174848 8FB10018 */  lw         $s1, 0x18($sp)
    /* 11BCBC 8017484C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 11BCC0 80174850 8FB30020 */  lw         $s3, 0x20($sp)
    /* 11BCC4 80174854 03E00008 */  jr         $ra
    /* 11BCC8 80174858 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8017462C_ovl5
.size func_8017462C_ovl5, . - func_8017462C_ovl5
