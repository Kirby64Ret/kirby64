glabel func_80183270_ovl5
/* 12A6E0 80183270 3C0E8019 */  lui        $t6, %hi(D_8018EE10_ovl5)
/* 12A6E4 80183274 91CEEE10 */  lbu        $t6, %lo(D_8018EE10_ovl5)($t6)
/* 12A6E8 80183278 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A6EC 8018327C AFBF0014 */  sw         $ra, 0x14($sp)
/* 12A6F0 80183280 15C0021A */  bnez       $t6, .L80183AEC_ovl5
/* 12A6F4 80183284 AFA40018 */   sw        $a0, 0x18($sp)
/* 12A6F8 80183288 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 12A6FC 8018328C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 12A700 80183290 3C0F800F */  lui        $t7, %hi(D_800E98E0)
/* 12A704 80183294 25EF98E0 */  addiu      $t7, $t7, %lo(D_800E98E0)
/* 12A708 80183298 8C850000 */  lw         $a1, 0x0($a0)
/* 12A70C 8018329C 00052880 */  sll        $a1, $a1, 2
/* 12A710 801832A0 00AF1021 */  addu       $v0, $a1, $t7
/* 12A714 801832A4 8C430000 */  lw         $v1, 0x0($v0)
/* 12A718 801832A8 10600003 */  beqz       $v1, .L801832B8_ovl5
/* 12A71C 801832AC 2478FFFF */   addiu     $t8, $v1, -0x1
/* 12A720 801832B0 1000020E */  b          .L80183AEC_ovl5
/* 12A724 801832B4 AC580000 */   sw        $t8, 0x0($v0)
.L801832B8_ovl5:
/* 12A728 801832B8 3C068005 */  lui        $a2, %hi(gPlayerControllers)
/* 12A72C 801832BC 24C68F20 */  addiu      $a2, $a2, %lo(gPlayerControllers)
/* 12A730 801832C0 94C20002 */  lhu        $v0, 0x2($a2)
/* 12A734 801832C4 30599000 */  andi       $t9, $v0, 0x9000
/* 12A738 801832C8 5320005B */  beql       $t9, $zero, .L80183438_ovl5
/* 12A73C 801832CC 30494000 */   andi      $t1, $v0, 0x4000
/* 12A740 801832D0 3C028019 */  lui        $v0, %hi(D_8018EE44_ovl5)
/* 12A744 801832D4 9042EE44 */  lbu        $v0, %lo(D_8018EE44_ovl5)($v0)
/* 12A748 801832D8 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12A74C 801832DC 2463EE18 */  addiu      $v1, $v1, %lo(D_8018EE18_ovl5)
/* 12A750 801832E0 2448FFF7 */  addiu      $t0, $v0, -0x9
/* 12A754 801832E4 2D010006 */  sltiu      $at, $t0, 0x6
/* 12A758 801832E8 10200036 */  beqz       $at, .L801833C4_ovl5
/* 12A75C 801832EC 00084080 */   sll       $t0, $t0, 2
/* 12A760 801832F0 3C018019 */  lui        $at, %hi(jtbl_8018DE64_ovl5)
/* 12A764 801832F4 00280821 */  addu       $at, $at, $t0
.L801832F8_ovl3:
/* 12A768 801832F8 8C28DE64 */  lw         $t0, %lo(jtbl_8018DE64_ovl5)($at)
/* 12A76C 801832FC 01000008 */  jr         $t0
/* 12A770 80183300 00000000 */   nop
/* 12A774 80183304 0C029D9E */  jal        play_sound
.L80183308_ovl3:
/* 12A778 80183308 2404026B */   addiu     $a0, $zero, 0x26B
/* 12A77C 8018330C 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12A780 80183310 2463EE18 */  addiu      $v1, $v1, %lo(D_8018EE18_ovl5)
/* 12A784 80183314 90620000 */  lbu        $v0, 0x0($v1)
/* 12A788 80183318 24090008 */  addiu      $t1, $zero, 0x8
/* 12A78C 8018331C 14400003 */  bnez       $v0, .L8018332C_ovl5
/* 12A790 80183320 244AFFFF */   addiu     $t2, $v0, -0x1
/* 12A794 80183324 10000002 */  b          .L80183330_ovl5
/* 12A798 80183328 A0690000 */   sb        $t1, 0x0($v1)
.L8018332C_ovl5:
/* 12A79C 8018332C A06A0000 */  sb         $t2, 0x0($v1)
.L80183330_ovl5:
/* 12A7A0 80183330 0C060FE8 */  jal        func_80183FA0_ovl5
/* 12A7A4 80183334 00000000 */   nop
/* 12A7A8 80183338 0C06103C */  jal        func_801840F0_ovl5
/* 12A7AC 8018333C 00000000 */   nop
/* 12A7B0 80183340 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 12A7B4 80183344 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 12A7B8 80183348 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 12A7BC 8018334C 240B0007 */  addiu      $t3, $zero, 0x7
/* 12A7C0 80183350 8D8D0000 */  lw         $t5, 0x0($t4)
/* 12A7C4 80183354 000D7080 */  sll        $t6, $t5, 2
/* 12A7C8 80183358 002E0821 */  addu       $at, $at, $t6
/* 12A7CC 8018335C 100001E3 */  b          .L80183AEC_ovl5
/* 12A7D0 80183360 AC2B98E0 */   sw        $t3, %lo(D_800E98E0)($at)
/* 12A7D4 80183364 0C029D9E */  jal        play_sound
/* 12A7D8 80183368 2404026B */   addiu     $a0, $zero, 0x26B
/* 12A7DC 8018336C 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12A7E0 80183370 2463EE18 */  addiu      $v1, $v1, %lo(D_8018EE18_ovl5)
.L80183374_ovl3:
/* 12A7E4 80183374 90620000 */  lbu        $v0, 0x0($v1)
/* 12A7E8 80183378 24010008 */  addiu      $at, $zero, 0x8
/* 12A7EC 8018337C 14410003 */  bne        $v0, $at, .L8018338C_ovl5
/* 12A7F0 80183380 244F0001 */   addiu     $t7, $v0, 0x1
/* 12A7F4 80183384 10000002 */  b          .L80183390_ovl5
/* 12A7F8 80183388 A0600000 */   sb        $zero, 0x0($v1)
.L8018338C_ovl5:
/* 12A7FC 8018338C A06F0000 */  sb         $t7, 0x0($v1)
.L80183390_ovl5:
/* 12A800 80183390 0C060FE8 */  jal        func_80183FA0_ovl5
/* 12A804 80183394 00000000 */   nop
/* 12A808 80183398 0C06103C */  jal        func_801840F0_ovl5
/* 12A80C 8018339C 00000000 */   nop
/* 12A810 801833A0 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 12A814 801833A4 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 12A818 801833A8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 12A81C 801833AC 24180007 */  addiu      $t8, $zero, 0x7
/* 12A820 801833B0 8F280000 */  lw         $t0, 0x0($t9)
/* 12A824 801833B4 00084880 */  sll        $t1, $t0, 2
/* 12A828 801833B8 00290821 */  addu       $at, $at, $t1
/* 12A82C 801833BC 100001CB */  b          .L80183AEC_ovl5
/* 12A830 801833C0 AC3898E0 */   sw        $t8, %lo(D_800E98E0)($at)
.L801833C4_ovl5:
/* 12A834 801833C4 906A0000 */  lbu        $t2, 0x0($v1)
/* 12A838 801833C8 000A60C0 */  sll        $t4, $t2, 3
/* 12A83C 801833CC 018A6021 */  addu       $t4, $t4, $t2
/* 12A840 801833D0 0C060F0B */  jal        func_80183C2C_ovl5
/* 12A844 801833D4 01822021 */   addu      $a0, $t4, $v0
/* 12A848 801833D8 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12A84C 801833DC 1040000A */  beqz       $v0, .L80183408_ovl5
/* 12A850 801833E0 2463EE18 */   addiu     $v1, $v1, %lo(D_8018EE18_ovl5)
/* 12A854 801833E4 906D0000 */  lbu        $t5, 0x0($v1)
/* 12A858 801833E8 3C0E8019 */  lui        $t6, %hi(D_8018EE44_ovl5)
/* 12A85C 801833EC 91CEEE44 */  lbu        $t6, %lo(D_8018EE44_ovl5)($t6)
/* 12A860 801833F0 000D58C0 */  sll        $t3, $t5, 3
/* 12A864 801833F4 016D5821 */  addu       $t3, $t3, $t5
/* 12A868 801833F8 0C061070 */  jal        func_801841C0_ovl5
/* 12A86C 801833FC 016E2021 */   addu      $a0, $t3, $t6
/* 12A870 80183400 10000003 */  b          .L80183410_ovl5
.L80183404_ovl3:
/* 12A874 80183404 00000000 */   nop
.L80183408_ovl5:
/* 12A878 80183408 0C029D9E */  jal        play_sound
.L8018340C_ovl3:
/* 12A87C 8018340C 2404026A */   addiu     $a0, $zero, 0x26A
.L80183410_ovl5:
/* 12A880 80183410 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 12A884 80183414 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 12A888 80183418 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 12A88C 8018341C 240F0004 */  addiu      $t7, $zero, 0x4
/* 12A890 80183420 8F280000 */  lw         $t0, 0x0($t9)
/* 12A894 80183424 0008C080 */  sll        $t8, $t0, 2
glabel func_80183428_ovl3
/* 12A898 80183428 00380821 */  addu       $at, $at, $t8
/* 12A89C 8018342C 100001AF */  b          .L80183AEC_ovl5
/* 12A8A0 80183430 AC2F98E0 */   sw        $t7, %lo(D_800E98E0)($at)
/* 12A8A4 80183434 30494000 */  andi       $t1, $v0, 0x4000
.L80183438_ovl5:
/* 12A8A8 80183438 11200011 */  beqz       $t1, .L80183480_ovl5
/* 12A8AC 8018343C 3C0A8019 */   lui       $t2, %hi(D_8018EE48_ovl5)
/* 12A8B0 80183440 8D4AEE48 */  lw         $t2, %lo(D_8018EE48_ovl5)($t2)
/* 12A8B4 80183444 2401029A */  addiu      $at, $zero, 0x29A
/* 12A8B8 80183448 15410007 */  bne        $t2, $at, .L80183468_ovl5
/* 12A8BC 8018344C 00000000 */   nop
/* 12A8C0 80183450 0C029D9E */  jal        play_sound
/* 12A8C4 80183454 2404002B */   addiu     $a0, $zero, 0x2B
/* 12A8C8 80183458 240C0001 */  addiu      $t4, $zero, 0x1
/* 12A8CC 8018345C 3C018019 */  lui        $at, %hi(D_8018EE10_ovl5)
/* 12A8D0 80183460 100001A2 */  b          .L80183AEC_ovl5
/* 12A8D4 80183464 A02CEE10 */   sb        $t4, %lo(D_8018EE10_ovl5)($at)
.L80183468_ovl5:
/* 12A8D8 80183468 0C029D9E */  jal        play_sound
/* 12A8DC 8018346C 2404002C */   addiu     $a0, $zero, 0x2C
/* 12A8E0 80183470 0C06103C */  jal        func_801840F0_ovl5
/* 12A8E4 80183474 00000000 */   nop
/* 12A8E8 80183478 1000019D */  b          .L80183AF0_ovl5
/* 12A8EC 8018347C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80183480_ovl5:
/* 12A8F0 80183480 94C30000 */  lhu        $v1, 0x0($a2)
/* 12A8F4 80183484 3C0E800F */  lui        $t6, %hi(D_800E9C60)
/* 12A8F8 80183488 25CE9C60 */  addiu      $t6, $t6, %lo(D_800E9C60)
/* 12A8FC 8018348C 306D0F00 */  andi       $t5, $v1, 0xF00
/* 12A900 80183490 15A00002 */  bnez       $t5, .L8018349C_ovl5
/* 12A904 80183494 306B0030 */   andi      $t3, $v1, 0x30
/* 12A908 80183498 11600005 */  beqz       $t3, .L801834B0_ovl5
.L8018349C_ovl5:
/* 12A90C 8018349C 00AE1021 */   addu      $v0, $a1, $t6
/* 12A910 801834A0 8C590000 */  lw         $t9, 0x0($v0)
/* 12A914 801834A4 27280001 */  addiu      $t0, $t9, 0x1
/* 12A918 801834A8 10000009 */  b          .L801834D0_ovl5
.L801834AC_ovl3:
/* 12A91C 801834AC AC480000 */   sw        $t0, 0x0($v0)
.L801834B0_ovl5:
/* 12A920 801834B0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12A924 801834B4 00250821 */  addu       $at, $at, $a1
/* 12A928 801834B8 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 12A92C 801834BC 8C8F0000 */  lw         $t7, 0x0($a0)
.L801834C0_ovl3:
/* 12A930 801834C0 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 12A934 801834C4 000FC080 */  sll        $t8, $t7, 2
/* 12A938 801834C8 00380821 */  addu       $at, $at, $t8
/* 12A93C 801834CC AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
.L801834D0_ovl5:
/* 12A940 801834D0 8C890000 */  lw         $t1, 0x0($a0)
/* 12A944 801834D4 3C0C800F */  lui        $t4, %hi(D_800E9AA0)
.L801834D8_ovl3:
/* 12A948 801834D8 258C9AA0 */  addiu      $t4, $t4, %lo(D_800E9AA0)
/* 12A94C 801834DC 00095080 */  sll        $t2, $t1, 2
/* 12A950 801834E0 014C2821 */  addu       $a1, $t2, $t4
/* 12A954 801834E4 8CA20000 */  lw         $v0, 0x0($a1)
/* 12A958 801834E8 306B0020 */  andi       $t3, $v1, 0x20
/* 12A95C 801834EC 10400003 */  beqz       $v0, .L801834FC_ovl5
/* 12A960 801834F0 244DFFFF */   addiu     $t5, $v0, -0x1
/* 12A964 801834F4 1000017D */  b          .L80183AEC_ovl5
/* 12A968 801834F8 ACAD0000 */   sw        $t5, 0x0($a1)
.L801834FC_ovl5:
/* 12A96C 801834FC 11600019 */  beqz       $t3, .L80183564_ovl5
/* 12A970 80183500 306A0010 */   andi      $t2, $v1, 0x10
/* 12A974 80183504 0C029D9E */  jal        play_sound
/* 12A978 80183508 2404026B */   addiu     $a0, $zero, 0x26B
/* 12A97C 8018350C 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12A980 80183510 2463EE18 */  addiu      $v1, $v1, %lo(D_8018EE18_ovl5)
/* 12A984 80183514 90620000 */  lbu        $v0, 0x0($v1)
.L80183518_ovl3:
/* 12A988 80183518 240E0008 */  addiu      $t6, $zero, 0x8
.L8018351C_ovl3:
/* 12A98C 8018351C 14400003 */  bnez       $v0, .L8018352C_ovl5
/* 12A990 80183520 2459FFFF */   addiu     $t9, $v0, -0x1
/* 12A994 80183524 10000002 */  b          .L80183530_ovl5
/* 12A998 80183528 A06E0000 */   sb        $t6, 0x0($v1)
.L8018352C_ovl5:
/* 12A99C 8018352C A0790000 */  sb         $t9, 0x0($v1)
.L80183530_ovl5:
/* 12A9A0 80183530 0C060FE8 */  jal        func_80183FA0_ovl5
/* 12A9A4 80183534 00000000 */   nop
/* 12A9A8 80183538 0C06103C */  jal        func_801840F0_ovl5
/* 12A9AC 8018353C 00000000 */   nop
/* 12A9B0 80183540 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 12A9B4 80183544 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 12A9B8 80183548 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12A9BC 8018354C 24080007 */  addiu      $t0, $zero, 0x7
/* 12A9C0 80183550 8DF80000 */  lw         $t8, 0x0($t7)
/* 12A9C4 80183554 00184880 */  sll        $t1, $t8, 2
/* 12A9C8 80183558 00290821 */  addu       $at, $at, $t1
/* 12A9CC 8018355C 10000163 */  b          .L80183AEC_ovl5
/* 12A9D0 80183560 AC289AA0 */   sw        $t0, %lo(D_800E9AA0)($at)
.L80183564_ovl5:
/* 12A9D4 80183564 11400019 */  beqz       $t2, .L801835CC_ovl5
/* 12A9D8 80183568 306F0200 */   andi      $t7, $v1, 0x200
/* 12A9DC 8018356C 0C029D9E */  jal        play_sound
/* 12A9E0 80183570 2404026B */   addiu     $a0, $zero, 0x26B
/* 12A9E4 80183574 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12A9E8 80183578 2463EE18 */  addiu      $v1, $v1, %lo(D_8018EE18_ovl5)
/* 12A9EC 8018357C 90620000 */  lbu        $v0, 0x0($v1)
/* 12A9F0 80183580 24010008 */  addiu      $at, $zero, 0x8
/* 12A9F4 80183584 14410003 */  bne        $v0, $at, .L80183594_ovl5
/* 12A9F8 80183588 244C0001 */   addiu     $t4, $v0, 0x1
/* 12A9FC 8018358C 10000002 */  b          .L80183598_ovl5
/* 12AA00 80183590 A0600000 */   sb        $zero, 0x0($v1)
.L80183594_ovl5:
/* 12AA04 80183594 A06C0000 */  sb         $t4, 0x0($v1)
.L80183598_ovl5:
/* 12AA08 80183598 0C060FE8 */  jal        func_80183FA0_ovl5
/* 12AA0C 8018359C 00000000 */   nop
.L801835A0_ovl3:
/* 12AA10 801835A0 0C06103C */  jal        func_801840F0_ovl5
/* 12AA14 801835A4 00000000 */   nop
/* 12AA18 801835A8 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
glabel func_801835AC_ovl3
/* 12AA1C 801835AC 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 12AA20 801835B0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AA24 801835B4 240D0007 */  addiu      $t5, $zero, 0x7
/* 12AA28 801835B8 8D6E0000 */  lw         $t6, 0x0($t3)
/* 12AA2C 801835BC 000EC880 */  sll        $t9, $t6, 2
/* 12AA30 801835C0 00390821 */  addu       $at, $at, $t9
/* 12AA34 801835C4 10000149 */  b          .L80183AEC_ovl5
/* 12AA38 801835C8 AC2D9AA0 */   sw        $t5, %lo(D_800E9AA0)($at)
.L801835CC_ovl5:
/* 12AA3C 801835CC 11E00084 */  beqz       $t7, .L801837E0_ovl5
/* 12AA40 801835D0 306B0100 */   andi      $t3, $v1, 0x100
/* 12AA44 801835D4 3C188019 */  lui        $t8, %hi(D_8018EE44_ovl5)
/* 12AA48 801835D8 9318EE44 */  lbu        $t8, %lo(D_8018EE44_ovl5)($t8)
/* 12AA4C 801835DC 2F01000F */  sltiu      $at, $t8, 0xF
/* 12AA50 801835E0 1020006D */  beqz       $at, .L80183798_ovl5
/* 12AA54 801835E4 0018C080 */   sll       $t8, $t8, 2
/* 12AA58 801835E8 3C018019 */  lui        $at, %hi(jtbl_8018DE7C_ovl5)
/* 12AA5C 801835EC 00380821 */  addu       $at, $at, $t8
/* 12AA60 801835F0 8C38DE7C */  lw         $t8, %lo(jtbl_8018DE7C_ovl5)($at)
/* 12AA64 801835F4 03000008 */  jr         $t8
/* 12AA68 801835F8 00000000 */   nop
/* 12AA6C 801835FC 0C029D9E */  jal        play_sound
/* 12AA70 80183600 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AA74 80183604 0C06103C */  jal        func_801840F0_ovl5
/* 12AA78 80183608 00000000 */   nop
/* 12AA7C 8018360C 3C038019 */  lui        $v1, %hi(D_8018EE44_ovl5)
/* 12AA80 80183610 2463EE44 */  addiu      $v1, $v1, %lo(D_8018EE44_ovl5)
/* 12AA84 80183614 90620000 */  lbu        $v0, 0x0($v1)
/* 12AA88 80183618 24010003 */  addiu      $at, $zero, 0x3
/* 12AA8C 8018361C 24080009 */  addiu      $t0, $zero, 0x9
/* 12AA90 80183620 10400008 */  beqz       $v0, .L80183644_ovl5
/* 12AA94 80183624 3C0B8005 */   lui       $t3, %hi(D_8004A7C4)
/* 12AA98 80183628 10410008 */  beq        $v0, $at, .L8018364C_ovl5
/* 12AA9C 8018362C 2409000A */   addiu     $t1, $zero, 0xA
/* 12AAA0 80183630 24010006 */  addiu      $at, $zero, 0x6
/* 12AAA4 80183634 10410007 */  beq        $v0, $at, .L80183654_ovl5
/* 12AAA8 80183638 240A000B */   addiu     $t2, $zero, 0xB
/* 12AAAC 8018363C 10000006 */  b          .L80183658_ovl5
/* 12AAB0 80183640 00000000 */   nop
.L80183644_ovl5:
/* 12AAB4 80183644 10000004 */  b          .L80183658_ovl5
/* 12AAB8 80183648 A0680000 */   sb        $t0, 0x0($v1)
.L8018364C_ovl5:
/* 12AABC 8018364C 10000002 */  b          .L80183658_ovl5
/* 12AAC0 80183650 A0690000 */   sb        $t1, 0x0($v1)
.L80183654_ovl5:
/* 12AAC4 80183654 A06A0000 */  sb         $t2, 0x0($v1)
.L80183658_ovl5:
/* 12AAC8 80183658 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 12AACC 8018365C 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AAD0 80183660 240C0004 */  addiu      $t4, $zero, 0x4
/* 12AAD4 80183664 8D6E0000 */  lw         $t6, 0x0($t3)
/* 12AAD8 80183668 000E6880 */  sll        $t5, $t6, 2
/* 12AADC 8018366C 002D0821 */  addu       $at, $at, $t5
/* 12AAE0 80183670 1000011E */  b          .L80183AEC_ovl5
/* 12AAE4 80183674 AC2C9AA0 */   sw        $t4, %lo(D_800E9AA0)($at)
/* 12AAE8 80183678 0C029D9E */  jal        play_sound
/* 12AAEC 8018367C 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AAF0 80183680 0C06103C */  jal        func_801840F0_ovl5
/* 12AAF4 80183684 00000000 */   nop
/* 12AAF8 80183688 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 12AAFC 8018368C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 12AB00 80183690 24190002 */  addiu      $t9, $zero, 0x2
/* 12AB04 80183694 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AB08 80183698 A039EE44 */  sb         $t9, %lo(D_8018EE44_ovl5)($at)
/* 12AB0C 8018369C 8F080000 */  lw         $t0, 0x0($t8)
/* 12AB10 801836A0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AB14 801836A4 240F0004 */  addiu      $t7, $zero, 0x4
/* 12AB18 801836A8 00084880 */  sll        $t1, $t0, 2
/* 12AB1C 801836AC 00290821 */  addu       $at, $at, $t1
/* 12AB20 801836B0 1000010E */  b          .L80183AEC_ovl5
/* 12AB24 801836B4 AC2F9AA0 */   sw        $t7, %lo(D_800E9AA0)($at)
/* 12AB28 801836B8 0C029D9E */  jal        play_sound
/* 12AB2C 801836BC 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AB30 801836C0 0C06103C */  jal        func_801840F0_ovl5
/* 12AB34 801836C4 00000000 */   nop
/* 12AB38 801836C8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 12AB3C 801836CC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 12AB40 801836D0 240A0005 */  addiu      $t2, $zero, 0x5
/* 12AB44 801836D4 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AB48 801836D8 A02AEE44 */  sb         $t2, %lo(D_8018EE44_ovl5)($at)
/* 12AB4C 801836DC 8DCC0000 */  lw         $t4, 0x0($t6)
/* 12AB50 801836E0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AB54 801836E4 240B0004 */  addiu      $t3, $zero, 0x4
/* 12AB58 801836E8 000C6880 */  sll        $t5, $t4, 2
/* 12AB5C 801836EC 002D0821 */  addu       $at, $at, $t5
/* 12AB60 801836F0 100000FE */  b          .L80183AEC_ovl5
/* 12AB64 801836F4 AC2B9AA0 */   sw        $t3, %lo(D_800E9AA0)($at)
/* 12AB68 801836F8 0C029D9E */  jal        play_sound
/* 12AB6C 801836FC 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AB70 80183700 0C06103C */  jal        func_801840F0_ovl5
/* 12AB74 80183704 00000000 */   nop
/* 12AB78 80183708 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 12AB7C 8018370C 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 12AB80 80183710 24190008 */  addiu      $t9, $zero, 0x8
/* 12AB84 80183714 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AB88 80183718 A039EE44 */  sb         $t9, %lo(D_8018EE44_ovl5)($at)
/* 12AB8C 8018371C 8D0F0000 */  lw         $t7, 0x0($t0)
/* 12AB90 80183720 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AB94 80183724 24180004 */  addiu      $t8, $zero, 0x4
/* 12AB98 80183728 000F4880 */  sll        $t1, $t7, 2
/* 12AB9C 8018372C 00290821 */  addu       $at, $at, $t1
/* 12ABA0 80183730 100000EE */  b          .L80183AEC_ovl5
/* 12ABA4 80183734 AC389AA0 */   sw        $t8, %lo(D_800E9AA0)($at)
/* 12ABA8 80183738 0C029D9E */  jal        play_sound
/* 12ABAC 8018373C 2404026B */   addiu     $a0, $zero, 0x26B
/* 12ABB0 80183740 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12ABB4 80183744 2463EE18 */  addiu      $v1, $v1, %lo(D_8018EE18_ovl5)
/* 12ABB8 80183748 90620000 */  lbu        $v0, 0x0($v1)
/* 12ABBC 8018374C 240A0008 */  addiu      $t2, $zero, 0x8
/* 12ABC0 80183750 14400003 */  bnez       $v0, .L80183760_ovl5
/* 12ABC4 80183754 244EFFFF */   addiu     $t6, $v0, -0x1
/* 12ABC8 80183758 10000002 */  b          .L80183764_ovl5
/* 12ABCC 8018375C A06A0000 */   sb        $t2, 0x0($v1)
.L80183760_ovl5:
/* 12ABD0 80183760 A06E0000 */  sb         $t6, 0x0($v1)
.L80183764_ovl5:
/* 12ABD4 80183764 0C060FE8 */  jal        func_80183FA0_ovl5
/* 12ABD8 80183768 00000000 */   nop
.L8018376C_ovl3:
/* 12ABDC 8018376C 0C06103C */  jal        func_801840F0_ovl5
/* 12ABE0 80183770 00000000 */   nop
/* 12ABE4 80183774 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 12ABE8 80183778 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 12ABEC 8018377C 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12ABF0 80183780 240C0007 */  addiu      $t4, $zero, 0x7
/* 12ABF4 80183784 8D6D0000 */  lw         $t5, 0x0($t3)
/* 12ABF8 80183788 000DC880 */  sll        $t9, $t5, 2
/* 12ABFC 8018378C 00390821 */  addu       $at, $at, $t9
/* 12AC00 80183790 100000D6 */  b          .L80183AEC_ovl5
/* 12AC04 80183794 AC2C9AA0 */   sw        $t4, %lo(D_800E9AA0)($at)
.L80183798_ovl5:
/* 12AC08 80183798 0C029D9E */  jal        play_sound
/* 12AC0C 8018379C 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AC10 801837A0 0C06103C */  jal        func_801840F0_ovl5
/* 12AC14 801837A4 00000000 */   nop
/* 12AC18 801837A8 3C028019 */  lui        $v0, %hi(D_8018EE44_ovl5)
/* 12AC1C 801837AC 2442EE44 */  addiu      $v0, $v0, %lo(D_8018EE44_ovl5)
/* 12AC20 801837B0 90480000 */  lbu        $t0, 0x0($v0)
/* 12AC24 801837B4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
.L801837B8_ovl3:
/* 12AC28 801837B8 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AC2C 801837BC 250FFFFF */  addiu      $t7, $t0, -0x1
/* 12AC30 801837C0 A04F0000 */  sb         $t7, 0x0($v0)
/* 12AC34 801837C4 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 12AC38 801837C8 24180004 */  addiu      $t8, $zero, 0x4
.L801837CC_ovl3:
/* 12AC3C 801837CC 8D2A0000 */  lw         $t2, 0x0($t1)
/* 12AC40 801837D0 000A7080 */  sll        $t6, $t2, 2
/* 12AC44 801837D4 002E0821 */  addu       $at, $at, $t6
/* 12AC48 801837D8 100000C4 */  b          .L80183AEC_ovl5
/* 12AC4C 801837DC AC389AA0 */   sw        $t8, %lo(D_800E9AA0)($at)
.L801837E0_ovl5:
/* 12AC50 801837E0 11600085 */  beqz       $t3, .L801839F8_ovl5
/* 12AC54 801837E4 30780800 */   andi      $t8, $v1, 0x800
/* 12AC58 801837E8 3C0D8019 */  lui        $t5, %hi(D_8018EE44_ovl5)
.L801837EC_ovl3:
/* 12AC5C 801837EC 91ADEE44 */  lbu        $t5, %lo(D_8018EE44_ovl5)($t5)
.L801837F0_ovl3:
/* 12AC60 801837F0 25ACFFFE */  addiu      $t4, $t5, -0x2
/* 12AC64 801837F4 2D81000D */  sltiu      $at, $t4, 0xD
/* 12AC68 801837F8 1020006D */  beqz       $at, .L801839B0_ovl5
/* 12AC6C 801837FC 000C6080 */   sll       $t4, $t4, 2
.L80183800_ovl3:
/* 12AC70 80183800 3C018019 */  lui        $at, %hi(jtbl_8018DEB8_ovl5)
/* 12AC74 80183804 002C0821 */  addu       $at, $at, $t4
/* 12AC78 80183808 8C2CDEB8 */  lw         $t4, %lo(jtbl_8018DEB8_ovl5)($at)
/* 12AC7C 8018380C 01800008 */  jr         $t4
.L80183810_ovl3:
/* 12AC80 80183810 00000000 */   nop
.L80183814_ovl3:
/* 12AC84 80183814 0C029D9E */  jal        play_sound
/* 12AC88 80183818 2404026B */   addiu     $a0, $zero, 0x26B
.L8018381C_ovl3:
/* 12AC8C 8018381C 0C06103C */  jal        func_801840F0_ovl5
/* 12AC90 80183820 00000000 */   nop
/* 12AC94 80183824 3C038019 */  lui        $v1, %hi(D_8018EE44_ovl5)
/* 12AC98 80183828 2463EE44 */  addiu      $v1, $v1, %lo(D_8018EE44_ovl5)
/* 12AC9C 8018382C 90620000 */  lbu        $v0, 0x0($v1)
/* 12ACA0 80183830 24010002 */  addiu      $at, $zero, 0x2
/* 12ACA4 80183834 2419000C */  addiu      $t9, $zero, 0xC
/* 12ACA8 80183838 10410009 */  beq        $v0, $at, .L80183860_ovl5
/* 12ACAC 8018383C 3C0A8005 */   lui       $t2, %hi(D_8004A7C4)
/* 12ACB0 80183840 24010005 */  addiu      $at, $zero, 0x5
/* 12ACB4 80183844 10410008 */  beq        $v0, $at, .L80183868_ovl5
/* 12ACB8 80183848 2408000D */   addiu     $t0, $zero, 0xD
/* 12ACBC 8018384C 24010008 */  addiu      $at, $zero, 0x8
/* 12ACC0 80183850 10410007 */  beq        $v0, $at, .L80183870_ovl5
/* 12ACC4 80183854 240F000E */   addiu     $t7, $zero, 0xE
/* 12ACC8 80183858 10000006 */  b          .L80183874_ovl5
/* 12ACCC 8018385C 00000000 */   nop
.L80183860_ovl5:
/* 12ACD0 80183860 10000004 */  b          .L80183874_ovl5
/* 12ACD4 80183864 A0790000 */   sb        $t9, 0x0($v1)
.L80183868_ovl5:
/* 12ACD8 80183868 10000002 */  b          .L80183874_ovl5
/* 12ACDC 8018386C A0680000 */   sb        $t0, 0x0($v1)
.L80183870_ovl5:
/* 12ACE0 80183870 A06F0000 */  sb         $t7, 0x0($v1)
.L80183874_ovl5:
/* 12ACE4 80183874 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 12ACE8 80183878 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12ACEC 8018387C 24090004 */  addiu      $t1, $zero, 0x4
/* 12ACF0 80183880 8D580000 */  lw         $t8, 0x0($t2)
/* 12ACF4 80183884 00187080 */  sll        $t6, $t8, 2
/* 12ACF8 80183888 002E0821 */  addu       $at, $at, $t6
/* 12ACFC 8018388C 10000097 */  b          .L80183AEC_ovl5
/* 12AD00 80183890 AC299AA0 */   sw        $t1, %lo(D_800E9AA0)($at)
/* 12AD04 80183894 0C029D9E */  jal        play_sound
/* 12AD08 80183898 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AD0C 8018389C 0C06103C */  jal        func_801840F0_ovl5
/* 12AD10 801838A0 00000000 */   nop
/* 12AD14 801838A4 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 12AD18 801838A8 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 12AD1C 801838AC 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AD20 801838B0 A020EE44 */  sb         $zero, %lo(D_8018EE44_ovl5)($at)
/* 12AD24 801838B4 8DAC0000 */  lw         $t4, 0x0($t5)
/* 12AD28 801838B8 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AD2C 801838BC 240B0004 */  addiu      $t3, $zero, 0x4
/* 12AD30 801838C0 000CC880 */  sll        $t9, $t4, 2
/* 12AD34 801838C4 00390821 */  addu       $at, $at, $t9
/* 12AD38 801838C8 10000088 */  b          .L80183AEC_ovl5
/* 12AD3C 801838CC AC2B9AA0 */   sw        $t3, %lo(D_800E9AA0)($at)
.L801838D0_ovl3:
/* 12AD40 801838D0 0C029D9E */  jal        play_sound
.L801838D4_ovl3:
/* 12AD44 801838D4 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AD48 801838D8 0C06103C */  jal        func_801840F0_ovl5
/* 12AD4C 801838DC 00000000 */   nop
/* 12AD50 801838E0 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 12AD54 801838E4 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 12AD58 801838E8 24080003 */  addiu      $t0, $zero, 0x3
/* 12AD5C 801838EC 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AD60 801838F0 A028EE44 */  sb         $t0, %lo(D_8018EE44_ovl5)($at)
/* 12AD64 801838F4 8D580000 */  lw         $t8, 0x0($t2)
/* 12AD68 801838F8 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AD6C 801838FC 240F0004 */  addiu      $t7, $zero, 0x4
/* 12AD70 80183900 00184880 */  sll        $t1, $t8, 2
/* 12AD74 80183904 00290821 */  addu       $at, $at, $t1
/* 12AD78 80183908 10000078 */  b          .L80183AEC_ovl5
/* 12AD7C 8018390C AC2F9AA0 */   sw        $t7, %lo(D_800E9AA0)($at)
/* 12AD80 80183910 0C029D9E */  jal        play_sound
/* 12AD84 80183914 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AD88 80183918 0C06103C */  jal        func_801840F0_ovl5
/* 12AD8C 8018391C 00000000 */   nop
/* 12AD90 80183920 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 12AD94 80183924 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 12AD98 80183928 240E0006 */  addiu      $t6, $zero, 0x6
/* 12AD9C 8018392C 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12ADA0 80183930 A02EEE44 */  sb         $t6, %lo(D_8018EE44_ovl5)($at)
/* 12ADA4 80183934 8D8B0000 */  lw         $t3, 0x0($t4)
/* 12ADA8 80183938 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12ADAC 8018393C 240D0004 */  addiu      $t5, $zero, 0x4
/* 12ADB0 80183940 000BC880 */  sll        $t9, $t3, 2
/* 12ADB4 80183944 00390821 */  addu       $at, $at, $t9
/* 12ADB8 80183948 10000068 */  b          .L80183AEC_ovl5
/* 12ADBC 8018394C AC2D9AA0 */   sw        $t5, %lo(D_800E9AA0)($at)
/* 12ADC0 80183950 0C029D9E */  jal        play_sound
/* 12ADC4 80183954 2404026B */   addiu     $a0, $zero, 0x26B
/* 12ADC8 80183958 3C038019 */  lui        $v1, %hi(D_8018EE18_ovl5)
/* 12ADCC 8018395C 2463EE18 */  addiu      $v1, $v1, %lo(D_8018EE18_ovl5)
/* 12ADD0 80183960 90620000 */  lbu        $v0, 0x0($v1)
/* 12ADD4 80183964 24010008 */  addiu      $at, $zero, 0x8
/* 12ADD8 80183968 14410003 */  bne        $v0, $at, .L80183978_ovl5
/* 12ADDC 8018396C 24480001 */   addiu     $t0, $v0, 0x1
/* 12ADE0 80183970 10000002 */  b          .L8018397C_ovl5
/* 12ADE4 80183974 A0600000 */   sb        $zero, 0x0($v1)
.L80183978_ovl5:
/* 12ADE8 80183978 A0680000 */  sb         $t0, 0x0($v1)
.L8018397C_ovl5:
/* 12ADEC 8018397C 0C060FE8 */  jal        func_80183FA0_ovl5
/* 12ADF0 80183980 00000000 */   nop
/* 12ADF4 80183984 0C06103C */  jal        func_801840F0_ovl5
/* 12ADF8 80183988 00000000 */   nop
/* 12ADFC 8018398C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 12AE00 80183990 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 12AE04 80183994 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AE08 80183998 240A0007 */  addiu      $t2, $zero, 0x7
/* 12AE0C 8018399C 8F0F0000 */  lw         $t7, 0x0($t8)
/* 12AE10 801839A0 000F4880 */  sll        $t1, $t7, 2
/* 12AE14 801839A4 00290821 */  addu       $at, $at, $t1
/* 12AE18 801839A8 10000050 */  b          .L80183AEC_ovl5
/* 12AE1C 801839AC AC2A9AA0 */   sw        $t2, %lo(D_800E9AA0)($at)
.L801839B0_ovl5:
/* 12AE20 801839B0 0C029D9E */  jal        play_sound
/* 12AE24 801839B4 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AE28 801839B8 0C06103C */  jal        func_801840F0_ovl5
/* 12AE2C 801839BC 00000000 */   nop
/* 12AE30 801839C0 3C0E8019 */  lui        $t6, %hi(D_8018EE44_ovl5)
/* 12AE34 801839C4 91CEEE44 */  lbu        $t6, %lo(D_8018EE44_ovl5)($t6)
/* 12AE38 801839C8 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 12AE3C 801839CC 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 12AE40 801839D0 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AE44 801839D4 25CC0001 */  addiu      $t4, $t6, 0x1
/* 12AE48 801839D8 A02CEE44 */  sb         $t4, %lo(D_8018EE44_ovl5)($at)
/* 12AE4C 801839DC 8DB90000 */  lw         $t9, 0x0($t5)
/* 12AE50 801839E0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 12AE54 801839E4 240B0004 */  addiu      $t3, $zero, 0x4
/* 12AE58 801839E8 00194080 */  sll        $t0, $t9, 2
/* 12AE5C 801839EC 00280821 */  addu       $at, $at, $t0
/* 12AE60 801839F0 1000003E */  b          .L80183AEC_ovl5
/* 12AE64 801839F4 AC2B9AA0 */   sw        $t3, %lo(D_800E9AA0)($at)
.L801839F8_ovl5:
/* 12AE68 801839F8 1300001F */  beqz       $t8, .L80183A78_ovl5
/* 12AE6C 801839FC 306B0400 */   andi      $t3, $v1, 0x400
/* 12AE70 80183A00 3C028019 */  lui        $v0, %hi(D_8018EE44_ovl5)
/* 12AE74 80183A04 9042EE44 */  lbu        $v0, %lo(D_8018EE44_ovl5)($v0)
/* 12AE78 80183A08 28410003 */  slti       $at, $v0, 0x3
/* 12AE7C 80183A0C 14200002 */  bnez       $at, .L80183A18_ovl5
/* 12AE80 80183A10 28410006 */   slti      $at, $v0, 0x6
/* 12AE84 80183A14 14200005 */  bnez       $at, .L80183A2C_ovl5
.L80183A18_ovl5:
/* 12AE88 80183A18 28410006 */   slti      $at, $v0, 0x6
glabel func_80183A1C_ovl3
/* 12AE8C 80183A1C 14200013 */  bnez       $at, .L80183A6C_ovl5
/* 12AE90 80183A20 28410009 */   slti      $at, $v0, 0x9
/* 12AE94 80183A24 50200012 */  beql       $at, $zero, .L80183A70_ovl5
/* 12AE98 80183A28 24190004 */   addiu     $t9, $zero, 0x4
.L80183A2C_ovl5:
/* 12AE9C 80183A2C 0C029D9E */  jal        play_sound
/* 12AEA0 80183A30 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AEA4 80183A34 0C06103C */  jal        func_801840F0_ovl5
/* 12AEA8 80183A38 00000000 */   nop
/* 12AEAC 80183A3C 3C0F8019 */  lui        $t7, %hi(D_8018EE44_ovl5)
/* 12AEB0 80183A40 91EFEE44 */  lbu        $t7, %lo(D_8018EE44_ovl5)($t7)
/* 12AEB4 80183A44 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 12AEB8 80183A48 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 12AEBC 80183A4C 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AEC0 80183A50 25EAFFFD */  addiu      $t2, $t7, -0x3
/* 12AEC4 80183A54 A02AEE44 */  sb         $t2, %lo(D_8018EE44_ovl5)($at)
/* 12AEC8 80183A58 8D2E0000 */  lw         $t6, 0x0($t1)
/* 12AECC 80183A5C 3C0D800F */  lui        $t5, %hi(D_800E9AA0)
.L80183A60_ovl3:
/* 12AED0 80183A60 25AD9AA0 */  addiu      $t5, $t5, %lo(D_800E9AA0)
/* 12AED4 80183A64 000E6080 */  sll        $t4, $t6, 2
.L80183A68_ovl3:
/* 12AED8 80183A68 018D2821 */  addu       $a1, $t4, $t5
.L80183A6C_ovl5:
/* 12AEDC 80183A6C 24190004 */  addiu      $t9, $zero, 0x4
.L80183A70_ovl5:
/* 12AEE0 80183A70 1000001E */  b          .L80183AEC_ovl5
/* 12AEE4 80183A74 ACB90000 */   sw        $t9, 0x0($a1)
.L80183A78_ovl5:
/* 12AEE8 80183A78 1160001C */  beqz       $t3, .L80183AEC_ovl5
/* 12AEEC 80183A7C 3C028019 */   lui       $v0, %hi(D_8018EE44_ovl5)
/* 12AEF0 80183A80 9042EE44 */  lbu        $v0, %lo(D_8018EE44_ovl5)($v0)
/* 12AEF4 80183A84 04400002 */  bltz       $v0, .L80183A90_ovl5
/* 12AEF8 80183A88 28410003 */   slti      $at, $v0, 0x3
/* 12AEFC 80183A8C 14200005 */  bnez       $at, .L80183AA4_ovl5
.L80183A90_ovl5:
/* 12AF00 80183A90 28410003 */   slti      $at, $v0, 0x3
/* 12AF04 80183A94 14200013 */  bnez       $at, .L80183AE4_ovl5
.L80183A98_ovl3:
/* 12AF08 80183A98 28410006 */   slti      $at, $v0, 0x6
/* 12AF0C 80183A9C 50200012 */  beql       $at, $zero, .L80183AE8_ovl5
/* 12AF10 80183AA0 240C0004 */   addiu     $t4, $zero, 0x4
.L80183AA4_ovl5:
/* 12AF14 80183AA4 0C029D9E */  jal        play_sound
/* 12AF18 80183AA8 2404026B */   addiu     $a0, $zero, 0x26B
/* 12AF1C 80183AAC 0C06103C */  jal        func_801840F0_ovl5
/* 12AF20 80183AB0 00000000 */   nop
/* 12AF24 80183AB4 3C088019 */  lui        $t0, %hi(D_8018EE44_ovl5)
/* 12AF28 80183AB8 9108EE44 */  lbu        $t0, %lo(D_8018EE44_ovl5)($t0)
/* 12AF2C 80183ABC 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 12AF30 80183AC0 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 12AF34 80183AC4 3C018019 */  lui        $at, %hi(D_8018EE44_ovl5)
/* 12AF38 80183AC8 25180003 */  addiu      $t8, $t0, 0x3
/* 12AF3C 80183ACC A038EE44 */  sb         $t8, %lo(D_8018EE44_ovl5)($at)
/* 12AF40 80183AD0 8DEA0000 */  lw         $t2, 0x0($t7)
/* 12AF44 80183AD4 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 12AF48 80183AD8 25CE9AA0 */  addiu      $t6, $t6, %lo(D_800E9AA0)
/* 12AF4C 80183ADC 000A4880 */  sll        $t1, $t2, 2
/* 12AF50 80183AE0 012E2821 */  addu       $a1, $t1, $t6
.L80183AE4_ovl5:
/* 12AF54 80183AE4 240C0004 */  addiu      $t4, $zero, 0x4
.L80183AE8_ovl5:
/* 12AF58 80183AE8 ACAC0000 */  sw         $t4, 0x0($a1)
.L80183AEC_ovl5:
/* 12AF5C 80183AEC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80183AF0_ovl5:
/* 12AF60 80183AF0 27BD0018 */  addiu      $sp, $sp, 0x18
.L80183AF4_ovl3:
/* 12AF64 80183AF4 03E00008 */  jr         $ra
/* 12AF68 80183AF8 00000000 */   nop
