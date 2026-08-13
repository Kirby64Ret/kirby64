nonmatching func_801853E0_ovl5, 0x228

glabel func_801853E0_ovl5
    /* 12C850 801853E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 12C854 801853E4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 12C858 801853E8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 12C85C 801853EC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 12C860 801853F0 AFB00020 */  sw         $s0, 0x20($sp)
    /* 12C864 801853F4 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 12C868 801853F8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 12C86C 801853FC 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 12C870 80185400 00808025 */  or         $s0, $a0, $zero
    /* 12C874 80185404 000E7880 */  sll        $t7, $t6, 2
    /* 12C878 80185408 002F0821 */  addu       $at, $at, $t7
    /* 12C87C 8018540C AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 12C880 80185410 8C580000 */  lw         $t8, 0x0($v0)
    /* 12C884 80185414 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 12C888 80185418 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 12C88C 8018541C 0018C880 */  sll        $t9, $t8, 2
    /* 12C890 80185420 00992021 */  addu       $a0, $a0, $t9
    /* 12C894 80185424 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 12C898 80185428 0C02C7DA */  jal        setProcessMain
    /* 12C89C 8018542C 24A51434 */   addiu     $a1, $a1, %lo(procMainStub)
    /* 12C8A0 80185430 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 12C8A4 80185434 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 12C8A8 80185438 3C018019 */  lui        $at, %hi(D_8018EE48_ovl5)
    /* 12C8AC 8018543C 8FA9003C */  lw         $t1, 0x3C($sp)
    /* 12C8B0 80185440 8C480000 */  lw         $t0, 0x0($v0)
    /* 12C8B4 80185444 8FAC003C */  lw         $t4, 0x3C($sp)
    /* 12C8B8 80185448 3C0D800D */  lui        $t5, %hi(D_800D6C10)
    /* 12C8BC 8018544C AC28EE48 */  sw         $t0, %lo(D_8018EE48_ovl5)($at)
    /* 12C8C0 80185450 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 12C8C4 80185454 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 12C8C8 80185458 25AD6C10 */  addiu      $t5, $t5, %lo(D_800D6C10)
    /* 12C8CC 8018545C 000A5880 */  sll        $t3, $t2, 2
    /* 12C8D0 80185460 002B0821 */  addu       $at, $at, $t3
    /* 12C8D4 80185464 AC2998E0 */  sw         $t1, %lo(D_800E98E0)($at)
    /* 12C8D8 80185468 018D1821 */  addu       $v1, $t4, $t5
    /* 12C8DC 8018546C 906E0000 */  lbu        $t6, 0x0($v1)
    /* 12C8E0 80185470 24010001 */  addiu      $at, $zero, 0x1
    /* 12C8E4 80185474 240F0002 */  addiu      $t7, $zero, 0x2
    /* 12C8E8 80185478 15C10007 */  bne        $t6, $at, .L80185498_ovl5
    /* 12C8EC 8018547C 3C04800D */   lui       $a0, %hi(saveCurrentFileNum)
    /* 12C8F0 80185480 A06F0000 */  sb         $t7, 0x0($v1)
    /* 12C8F4 80185484 0C02E903 */  jal        func_800BA40C
    /* 12C8F8 80185488 8C846B88 */   lw        $a0, %lo(saveCurrentFileNum)($a0)
    /* 12C8FC 8018548C 3C04800D */  lui        $a0, %hi(saveCurrentFileNum)
    /* 12C900 80185490 0C02E714 */  jal        func_800B9C50
    /* 12C904 80185494 8C846B88 */   lw        $a0, %lo(saveCurrentFileNum)($a0)
  .L80185498_ovl5:
    /* 12C908 80185498 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 12C90C 8018549C 24180012 */  addiu      $t8, $zero, 0x12
    /* 12C910 801854A0 AFB80010 */  sw         $t8, 0x10($sp)
    /* 12C914 801854A4 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 12C918 801854A8 02002025 */  or         $a0, $s0, $zero
    /* 12C91C 801854AC 24060012 */  addiu      $a2, $zero, 0x12
    /* 12C920 801854B0 0C00297F */  jal        omLinkGObjDL
    /* 12C924 801854B4 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 12C928 801854B8 3C058019 */  lui        $a1, %hi(D_8018A96C_ovl5)
    /* 12C92C 801854BC 24A5A96C */  addiu      $a1, $a1, %lo(D_8018A96C_ovl5)
    /* 12C930 801854C0 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12C934 801854C4 02002025 */   or        $a0, $s0, $zero
    /* 12C938 801854C8 8FA4003C */  lw         $a0, 0x3C($sp)
    /* 12C93C 801854CC 0C060EFD */  jal        func_80183BF4_ovl5
    /* 12C940 801854D0 AFA20034 */   sw        $v0, 0x34($sp)
    /* 12C944 801854D4 1040000B */  beqz       $v0, .L80185504_ovl5
    /* 12C948 801854D8 8FA30034 */   lw        $v1, 0x34($sp)
    /* 12C94C 801854DC 3C028019 */  lui        $v0, %hi(D_8018EE58_ovl5)
    /* 12C950 801854E0 2442EE58 */  addiu      $v0, $v0, %lo(D_8018EE58_ovl5)
    /* 12C954 801854E4 8C590000 */  lw         $t9, 0x0($v0)
    /* 12C958 801854E8 AC79006C */  sw         $t9, 0x6C($v1)
    /* 12C95C 801854EC 8C480000 */  lw         $t0, 0x0($v0)
    /* 12C960 801854F0 AC680078 */  sw         $t0, 0x78($v1)
    /* 12C964 801854F4 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 12C968 801854F8 AC6A00CC */  sw         $t2, 0xCC($v1)
    /* 12C96C 801854FC 8C490000 */  lw         $t1, 0x0($v0)
    /* 12C970 80185500 AC6900D8 */  sw         $t1, 0xD8($v1)
  .L80185504_ovl5:
    /* 12C974 80185504 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 12C978 80185508 2401000A */  addiu      $at, $zero, 0xA
    /* 12C97C 8018550C 3C058019 */  lui        $a1, %hi(D_8018C2D8_ovl5)
    /* 12C980 80185510 24630001 */  addiu      $v1, $v1, 0x1
    /* 12C984 80185514 0061001A */  div        $zero, $v1, $at
    /* 12C988 80185518 00005810 */  mfhi       $t3
    /* 12C98C 8018551C 000B6080 */  sll        $t4, $t3, 2
    /* 12C990 80185520 00AC2821 */  addu       $a1, $a1, $t4
    /* 12C994 80185524 8CA5C2D8 */  lw         $a1, %lo(D_8018C2D8_ovl5)($a1)
    /* 12C998 80185528 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 12C99C 8018552C 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12C9A0 80185530 02002025 */   or        $a0, $s0, $zero
    /* 12C9A4 80185534 3C048019 */  lui        $a0, %hi(D_8018C2C8_ovl5)
    /* 12C9A8 80185538 2484C2C8 */  addiu      $a0, $a0, %lo(D_8018C2C8_ovl5)
    /* 12C9AC 8018553C C4840000 */  lwc1       $f4, 0x0($a0)
    /* 12C9B0 80185540 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 12C9B4 80185544 3C058019 */  lui        $a1, %hi(D_8018C2D8_ovl5)
    /* 12C9B8 80185548 E4440020 */  swc1       $f4, 0x20($v0)
    /* 12C9BC 8018554C C4860004 */  lwc1       $f6, 0x4($a0)
    /* 12C9C0 80185550 2861000A */  slti       $at, $v1, 0xA
    /* 12C9C4 80185554 1420000F */  bnez       $at, .L80185594_ovl5
    /* 12C9C8 80185558 E4460024 */   swc1      $f6, 0x24($v0)
    /* 12C9CC 8018555C 2401000A */  addiu      $at, $zero, 0xA
    /* 12C9D0 80185560 0061001A */  div        $zero, $v1, $at
    /* 12C9D4 80185564 00006812 */  mflo       $t5
    /* 12C9D8 80185568 000D7080 */  sll        $t6, $t5, 2
    /* 12C9DC 8018556C 00AE2821 */  addu       $a1, $a1, $t6
    /* 12C9E0 80185570 8CA5C2D8 */  lw         $a1, %lo(D_8018C2D8_ovl5)($a1)
    /* 12C9E4 80185574 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12C9E8 80185578 02002025 */   or        $a0, $s0, $zero
    /* 12C9EC 8018557C 3C038019 */  lui        $v1, %hi(D_8018C2D0_ovl5)
    /* 12C9F0 80185580 2463C2D0 */  addiu      $v1, $v1, %lo(D_8018C2D0_ovl5)
    /* 12C9F4 80185584 C4680000 */  lwc1       $f8, 0x0($v1)
    /* 12C9F8 80185588 E4480020 */  swc1       $f8, 0x20($v0)
    /* 12C9FC 8018558C C46A0004 */  lwc1       $f10, 0x4($v1)
    /* 12CA00 80185590 E44A0024 */  swc1       $f10, 0x24($v0)
  .L80185594_ovl5:
    /* 12CA04 80185594 8FAF003C */  lw         $t7, 0x3C($sp)
    /* 12CA08 80185598 3C198019 */  lui        $t9, %hi(D_8018C30C_ovl5)
    /* 12CA0C 8018559C 2739C30C */  addiu      $t9, $t9, %lo(D_8018C30C_ovl5)
    /* 12CA10 801855A0 000FC080 */  sll        $t8, $t7, 2
    /* 12CA14 801855A4 030FC023 */  subu       $t8, $t8, $t7
    /* 12CA18 801855A8 0018C080 */  sll        $t8, $t8, 2
    /* 12CA1C 801855AC 030FC021 */  addu       $t8, $t8, $t7
    /* 12CA20 801855B0 0018C080 */  sll        $t8, $t8, 2
    /* 12CA24 801855B4 03191821 */  addu       $v1, $t8, $t9
    /* 12CA28 801855B8 90620010 */  lbu        $v0, 0x10($v1)
    /* 12CA2C 801855BC 02002025 */  or         $a0, $s0, $zero
    /* 12CA30 801855C0 3C058019 */  lui        $a1, %hi(D_8018A94C_ovl5)
    /* 12CA34 801855C4 10400006 */  beqz       $v0, .L801855E0_ovl5
    /* 12CA38 801855C8 00024080 */   sll       $t0, $v0, 2
    /* 12CA3C 801855CC 00A82821 */  addu       $a1, $a1, $t0
    /* 12CA40 801855D0 8CA5A94C */  lw         $a1, %lo(D_8018A94C_ovl5)($a1)
    /* 12CA44 801855D4 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12CA48 801855D8 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 12CA4C 801855DC 8FA3002C */  lw         $v1, 0x2C($sp)
  .L801855E0_ovl5:
    /* 12CA50 801855E0 02002025 */  or         $a0, $s0, $zero
    /* 12CA54 801855E4 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12CA58 801855E8 8C650018 */   lw        $a1, 0x18($v1)
    /* 12CA5C 801855EC 0C02BE85 */  jal        curObjSleepForever
    /* 12CA60 801855F0 00000000 */   nop
    /* 12CA64 801855F4 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 12CA68 801855F8 8FB00020 */  lw         $s0, 0x20($sp)
    /* 12CA6C 801855FC 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 12CA70 80185600 03E00008 */  jr         $ra
    /* 12CA74 80185604 00000000 */   nop
endlabel func_801853E0_ovl5
.size func_801853E0_ovl5, . - func_801853E0_ovl5
