nonmatching func_800B96A0, 0x5B0

glabel func_800B96A0
    /* 618F0 800B96A0 14A0002E */  bnez       $a1, .L800B975C
    /* 618F4 800B96A4 3C07800D */   lui       $a3, %hi(D_800D6BC8)
    /* 618F8 800B96A8 00047080 */  sll        $t6, $a0, 2
    /* 618FC 800B96AC 01C47023 */  subu       $t6, $t6, $a0
    /* 61900 800B96B0 000E7080 */  sll        $t6, $t6, 2
    /* 61904 800B96B4 01C47023 */  subu       $t6, $t6, $a0
    /* 61908 800B96B8 3C0F800F */  lui        $t7, %hi(gSaveBuffer1)
    /* 6190C 800B96BC 25EFC9F8 */  addiu      $t7, $t7, %lo(gSaveBuffer1)
    /* 61910 800B96C0 000E70C0 */  sll        $t6, $t6, 3
    /* 61914 800B96C4 01CF1021 */  addu       $v0, $t6, $t7
    /* 61918 800B96C8 8C580010 */  lw         $t8, 0x10($v0)
    /* 6191C 800B96CC 3C01800D */  lui        $at, %hi(saveCurrentWorld)
    /* 61920 800B96D0 AC386B90 */  sw         $t8, %lo(saveCurrentWorld)($at)
    /* 61924 800B96D4 8C590014 */  lw         $t9, 0x14($v0)
    /* 61928 800B96D8 3C01800D */  lui        $at, %hi(saveCurrentLevel)
    /* 6192C 800B96DC AC396B94 */  sw         $t9, %lo(saveCurrentLevel)($at)
    /* 61930 800B96E0 8C490018 */  lw         $t1, 0x18($v0)
    /* 61934 800B96E4 3C01800D */  lui        $at, %hi(D_800D6B98)
    /* 61938 800B96E8 AC296B98 */  sw         $t1, %lo(D_800D6B98)($at)
    /* 6193C 800B96EC 8C4A001C */  lw         $t2, 0x1C($v0)
    /* 61940 800B96F0 3C01800D */  lui        $at, %hi(saveCutscenesWatched)
    /* 61944 800B96F4 AC2A6BA0 */  sw         $t2, %lo(saveCutscenesWatched)($at)
    /* 61948 800B96F8 904B0020 */  lbu        $t3, 0x20($v0)
    /* 6194C 800B96FC 3C01800D */  lui        $at, %hi(savePercentComplete)
    /* 61950 800B9700 AC2B6BA8 */  sw         $t3, %lo(savePercentComplete)($at)
    /* 61954 800B9704 904C0021 */  lbu        $t4, 0x21($v0)
    /* 61958 800B9708 3C01800D */  lui        $at, %hi(saveSoundMode)
    /* 6195C 800B970C AC2C6BAC */  sw         $t4, %lo(saveSoundMode)($at)
    /* 61960 800B9710 904D0022 */  lbu        $t5, 0x22($v0)
    /* 61964 800B9714 3C01800D */  lui        $at, %hi(saveHUDTheme)
    /* 61968 800B9718 AC2D6BB0 */  sw         $t5, %lo(saveHUDTheme)($at)
    /* 6196C 800B971C 904E0023 */  lbu        $t6, 0x23($v0)
    /* 61970 800B9720 3C01800D */  lui        $at, %hi(D_800D6BB5)
    /* 61974 800B9724 A02E6BB5 */  sb         $t6, %lo(D_800D6BB5)($at)
    /* 61978 800B9728 904F0024 */  lbu        $t7, 0x24($v0)
    /* 6197C 800B972C 3C01800D */  lui        $at, %hi(D_800D6BB6)
    /* 61980 800B9730 A02F6BB6 */  sb         $t7, %lo(D_800D6BB6)($at)
    /* 61984 800B9734 90580025 */  lbu        $t8, 0x25($v0)
    /* 61988 800B9738 3C01800D */  lui        $at, %hi(D_800D6BB9)
    /* 6198C 800B973C A0386BB9 */  sb         $t8, %lo(D_800D6BB9)($at)
    /* 61990 800B9740 90590026 */  lbu        $t9, 0x26($v0)
    /* 61994 800B9744 3C01800D */  lui        $at, %hi(D_800D6BBA)
    /* 61998 800B9748 A0396BBA */  sb         $t9, %lo(D_800D6BBA)($at)
    /* 6199C 800B974C 90490027 */  lbu        $t1, 0x27($v0)
    /* 619A0 800B9750 3C01800D */  lui        $at, %hi(D_800D6BBB)
    /* 619A4 800B9754 1000002D */  b          .L800B980C
    /* 619A8 800B9758 A0296BBB */   sb        $t1, %lo(D_800D6BBB)($at)
  .L800B975C:
    /* 619AC 800B975C 00045080 */  sll        $t2, $a0, 2
    /* 619B0 800B9760 01445023 */  subu       $t2, $t2, $a0
    /* 619B4 800B9764 000A5080 */  sll        $t2, $t2, 2
    /* 619B8 800B9768 3C0C800D */  lui        $t4, %hi(saveCurrentWorld)
    /* 619BC 800B976C 8D8C6B90 */  lw         $t4, %lo(saveCurrentWorld)($t4)
    /* 619C0 800B9770 01445023 */  subu       $t2, $t2, $a0
    /* 619C4 800B9774 3C0B800F */  lui        $t3, %hi(gSaveBuffer1)
    /* 619C8 800B9778 256BC9F8 */  addiu      $t3, $t3, %lo(gSaveBuffer1)
    /* 619CC 800B977C 000A50C0 */  sll        $t2, $t2, 3
    /* 619D0 800B9780 014B1021 */  addu       $v0, $t2, $t3
    /* 619D4 800B9784 3C0D800D */  lui        $t5, %hi(saveCurrentLevel)
    /* 619D8 800B9788 AC4C0010 */  sw         $t4, 0x10($v0)
    /* 619DC 800B978C 8DAD6B94 */  lw         $t5, %lo(saveCurrentLevel)($t5)
    /* 619E0 800B9790 3C0E800D */  lui        $t6, %hi(D_800D6B98)
    /* 619E4 800B9794 3C0F800D */  lui        $t7, %hi(saveCutscenesWatched)
    /* 619E8 800B9798 AC4D0014 */  sw         $t5, 0x14($v0)
    /* 619EC 800B979C 8DCE6B98 */  lw         $t6, %lo(D_800D6B98)($t6)
    /* 619F0 800B97A0 3C18800D */  lui        $t8, %hi(savePercentComplete)
    /* 619F4 800B97A4 3C19800D */  lui        $t9, %hi(saveSoundMode)
    /* 619F8 800B97A8 AC4E0018 */  sw         $t6, 0x18($v0)
    /* 619FC 800B97AC 8DEF6BA0 */  lw         $t7, %lo(saveCutscenesWatched)($t7)
    /* 61A00 800B97B0 3C09800D */  lui        $t1, %hi(saveHUDTheme)
    /* 61A04 800B97B4 3C0A800D */  lui        $t2, %hi(D_800D6BB5)
    /* 61A08 800B97B8 AC4F001C */  sw         $t7, 0x1C($v0)
    /* 61A0C 800B97BC 8F186BA8 */  lw         $t8, %lo(savePercentComplete)($t8)
    /* 61A10 800B97C0 3C0B800D */  lui        $t3, %hi(D_800D6BB6)
    /* 61A14 800B97C4 3C0C800D */  lui        $t4, %hi(D_800D6BB9)
    /* 61A18 800B97C8 A0580020 */  sb         $t8, 0x20($v0)
    /* 61A1C 800B97CC 8F396BAC */  lw         $t9, %lo(saveSoundMode)($t9)
    /* 61A20 800B97D0 3C0D800D */  lui        $t5, %hi(D_800D6BBA)
    /* 61A24 800B97D4 3C0E800D */  lui        $t6, %hi(D_800D6BBB)
    /* 61A28 800B97D8 A0590021 */  sb         $t9, 0x21($v0)
    /* 61A2C 800B97DC 8D296BB0 */  lw         $t1, %lo(saveHUDTheme)($t1)
    /* 61A30 800B97E0 A0490022 */  sb         $t1, 0x22($v0)
    /* 61A34 800B97E4 914A6BB5 */  lbu        $t2, %lo(D_800D6BB5)($t2)
    /* 61A38 800B97E8 A04A0023 */  sb         $t2, 0x23($v0)
    /* 61A3C 800B97EC 916B6BB6 */  lbu        $t3, %lo(D_800D6BB6)($t3)
    /* 61A40 800B97F0 A04B0024 */  sb         $t3, 0x24($v0)
    /* 61A44 800B97F4 918C6BB9 */  lbu        $t4, %lo(D_800D6BB9)($t4)
    /* 61A48 800B97F8 A04C0025 */  sb         $t4, 0x25($v0)
    /* 61A4C 800B97FC 91AD6BBA */  lbu        $t5, %lo(D_800D6BBA)($t5)
    /* 61A50 800B9800 A04D0026 */  sb         $t5, 0x26($v0)
    /* 61A54 800B9804 91CE6BBB */  lbu        $t6, %lo(D_800D6BBB)($t6)
    /* 61A58 800B9808 A04E0027 */  sb         $t6, 0x27($v0)
  .L800B980C:
    /* 61A5C 800B980C 00047880 */  sll        $t7, $a0, 2
    /* 61A60 800B9810 01E47823 */  subu       $t7, $t7, $a0
    /* 61A64 800B9814 000F7880 */  sll        $t7, $t7, 2
    /* 61A68 800B9818 01E47823 */  subu       $t7, $t7, $a0
    /* 61A6C 800B981C 3C18800F */  lui        $t8, %hi(gSaveBuffer1)
    /* 61A70 800B9820 2718C9F8 */  addiu      $t8, $t8, %lo(gSaveBuffer1)
    /* 61A74 800B9824 000F78C0 */  sll        $t7, $t7, 3
    /* 61A78 800B9828 01F81021 */  addu       $v0, $t7, $t8
    /* 61A7C 800B982C 3C03800D */  lui        $v1, %hi(D_800D6BE0)
    /* 61A80 800B9830 24636BE0 */  addiu      $v1, $v1, %lo(D_800D6BE0)
    /* 61A84 800B9834 00403025 */  or         $a2, $v0, $zero
    /* 61A88 800B9838 24E76BC8 */  addiu      $a3, $a3, %lo(D_800D6BC8)
  .L800B983C:
    /* 61A8C 800B983C 54A00005 */  bnel       $a1, $zero, .L800B9854
    /* 61A90 800B9840 90E90000 */   lbu       $t1, 0x0($a3)
    /* 61A94 800B9844 90D9004C */  lbu        $t9, 0x4C($a2)
    /* 61A98 800B9848 10000003 */  b          .L800B9858
    /* 61A9C 800B984C A0F90000 */   sb        $t9, 0x0($a3)
    /* 61AA0 800B9850 90E90000 */  lbu        $t1, 0x0($a3)
  .L800B9854:
    /* 61AA4 800B9854 A0C9004C */  sb         $t1, 0x4C($a2)
  .L800B9858:
    /* 61AA8 800B9858 54A00005 */  bnel       $a1, $zero, .L800B9870
    /* 61AAC 800B985C 90EB0001 */   lbu       $t3, 0x1($a3)
    /* 61AB0 800B9860 90CA004D */  lbu        $t2, 0x4D($a2)
    /* 61AB4 800B9864 10000003 */  b          .L800B9874
    /* 61AB8 800B9868 A0EA0001 */   sb        $t2, 0x1($a3)
    /* 61ABC 800B986C 90EB0001 */  lbu        $t3, 0x1($a3)
  .L800B9870:
    /* 61AC0 800B9870 A0CB004D */  sb         $t3, 0x4D($a2)
  .L800B9874:
    /* 61AC4 800B9874 54A00005 */  bnel       $a1, $zero, .L800B988C
    /* 61AC8 800B9878 90ED0002 */   lbu       $t5, 0x2($a3)
    /* 61ACC 800B987C 90CC004E */  lbu        $t4, 0x4E($a2)
    /* 61AD0 800B9880 10000003 */  b          .L800B9890
    /* 61AD4 800B9884 A0EC0002 */   sb        $t4, 0x2($a3)
    /* 61AD8 800B9888 90ED0002 */  lbu        $t5, 0x2($a3)
  .L800B988C:
    /* 61ADC 800B988C A0CD004E */  sb         $t5, 0x4E($a2)
  .L800B9890:
    /* 61AE0 800B9890 54A00005 */  bnel       $a1, $zero, .L800B98A8
    /* 61AE4 800B9894 90EF0003 */   lbu       $t7, 0x3($a3)
    /* 61AE8 800B9898 90CE004F */  lbu        $t6, 0x4F($a2)
    /* 61AEC 800B989C 10000003 */  b          .L800B98AC
    /* 61AF0 800B98A0 A0EE0003 */   sb        $t6, 0x3($a3)
    /* 61AF4 800B98A4 90EF0003 */  lbu        $t7, 0x3($a3)
  .L800B98A8:
    /* 61AF8 800B98A8 A0CF004F */  sb         $t7, 0x4F($a2)
  .L800B98AC:
    /* 61AFC 800B98AC 24E70004 */  addiu      $a3, $a3, 0x4
    /* 61B00 800B98B0 00E3082B */  sltu       $at, $a3, $v1
    /* 61B04 800B98B4 1420FFE1 */  bnez       $at, .L800B983C
    /* 61B08 800B98B8 24C60004 */   addiu     $a2, $a2, 0x4
    /* 61B0C 800B98BC 3C04800D */  lui        $a0, %hi(D_800D6BC0)
    /* 61B10 800B98C0 3C03800D */  lui        $v1, %hi(D_800D6BC8)
    /* 61B14 800B98C4 24636BC8 */  addiu      $v1, $v1, %lo(D_800D6BC8)
    /* 61B18 800B98C8 24846BC0 */  addiu      $a0, $a0, %lo(D_800D6BC0)
    /* 61B1C 800B98CC 00403025 */  or         $a2, $v0, $zero
  .L800B98D0:
    /* 61B20 800B98D0 54A00005 */  bnel       $a1, $zero, .L800B98E8
    /* 61B24 800B98D4 90990000 */   lbu       $t9, 0x0($a0)
    /* 61B28 800B98D8 90D80044 */  lbu        $t8, 0x44($a2)
    /* 61B2C 800B98DC 10000003 */  b          .L800B98EC
    /* 61B30 800B98E0 A0980000 */   sb        $t8, 0x0($a0)
    /* 61B34 800B98E4 90990000 */  lbu        $t9, 0x0($a0)
  .L800B98E8:
    /* 61B38 800B98E8 A0D90044 */  sb         $t9, 0x44($a2)
  .L800B98EC:
    /* 61B3C 800B98EC 54A00005 */  bnel       $a1, $zero, .L800B9904
    /* 61B40 800B98F0 908A0001 */   lbu       $t2, 0x1($a0)
    /* 61B44 800B98F4 90C90045 */  lbu        $t1, 0x45($a2)
    /* 61B48 800B98F8 10000003 */  b          .L800B9908
    /* 61B4C 800B98FC A0890001 */   sb        $t1, 0x1($a0)
    /* 61B50 800B9900 908A0001 */  lbu        $t2, 0x1($a0)
  .L800B9904:
    /* 61B54 800B9904 A0CA0045 */  sb         $t2, 0x45($a2)
  .L800B9908:
    /* 61B58 800B9908 54A00005 */  bnel       $a1, $zero, .L800B9920
    /* 61B5C 800B990C 908C0002 */   lbu       $t4, 0x2($a0)
    /* 61B60 800B9910 90CB0046 */  lbu        $t3, 0x46($a2)
    /* 61B64 800B9914 10000003 */  b          .L800B9924
    /* 61B68 800B9918 A08B0002 */   sb        $t3, 0x2($a0)
    /* 61B6C 800B991C 908C0002 */  lbu        $t4, 0x2($a0)
  .L800B9920:
    /* 61B70 800B9920 A0CC0046 */  sb         $t4, 0x46($a2)
  .L800B9924:
    /* 61B74 800B9924 54A00005 */  bnel       $a1, $zero, .L800B993C
    /* 61B78 800B9928 908E0003 */   lbu       $t6, 0x3($a0)
    /* 61B7C 800B992C 90CD0047 */  lbu        $t5, 0x47($a2)
    /* 61B80 800B9930 10000003 */  b          .L800B9940
    /* 61B84 800B9934 A08D0003 */   sb        $t5, 0x3($a0)
    /* 61B88 800B9938 908E0003 */  lbu        $t6, 0x3($a0)
  .L800B993C:
    /* 61B8C 800B993C A0CE0047 */  sb         $t6, 0x47($a2)
  .L800B9940:
    /* 61B90 800B9940 24840004 */  addiu      $a0, $a0, 0x4
    /* 61B94 800B9944 1483FFE2 */  bne        $a0, $v1, .L800B98D0
    /* 61B98 800B9948 24C60004 */   addiu     $a2, $a2, 0x4
    /* 61B9C 800B994C 14A0005B */  bnez       $a1, .L800B9ABC
    /* 61BA0 800B9950 3C0C800D */   lui       $t4, %hi(D_800D6C13)
    /* 61BA4 800B9954 9047002E */  lbu        $a3, 0x2E($v0)
    /* 61BA8 800B9958 3C01800D */  lui        $at, %hi(D_800D6C10)
    /* 61BAC 800B995C 3C04800D */  lui        $a0, %hi(D_800D6C18)
    /* 61BB0 800B9960 30EF0003 */  andi       $t7, $a3, 0x3
    /* 61BB4 800B9964 A02F6C10 */  sb         $t7, %lo(D_800D6C10)($at)
    /* 61BB8 800B9968 0007C083 */  sra        $t8, $a3, 2
    /* 61BBC 800B996C 33190003 */  andi       $t9, $t8, 0x3
    /* 61BC0 800B9970 3C01800D */  lui        $at, %hi(D_800D6C11)
    /* 61BC4 800B9974 A0396C11 */  sb         $t9, %lo(D_800D6C11)($at)
    /* 61BC8 800B9978 00074903 */  sra        $t1, $a3, 4
    /* 61BCC 800B997C 312A0003 */  andi       $t2, $t1, 0x3
    /* 61BD0 800B9980 3C01800D */  lui        $at, %hi(D_800D6C12)
    /* 61BD4 800B9984 A02A6C12 */  sb         $t2, %lo(D_800D6C12)($at)
    /* 61BD8 800B9988 00075983 */  sra        $t3, $a3, 6
    /* 61BDC 800B998C 316C0003 */  andi       $t4, $t3, 0x3
    /* 61BE0 800B9990 3C01800D */  lui        $at, %hi(D_800D6C13)
    /* 61BE4 800B9994 A02C6C13 */  sb         $t4, %lo(D_800D6C13)($at)
    /* 61BE8 800B9998 9048002F */  lbu        $t0, 0x2F($v0)
    /* 61BEC 800B999C 3C01800D */  lui        $at, %hi(D_800D6C14)
    /* 61BF0 800B99A0 24846C18 */  addiu      $a0, $a0, %lo(D_800D6C18)
    /* 61BF4 800B99A4 310D0003 */  andi       $t5, $t0, 0x3
    /* 61BF8 800B99A8 A02D6C14 */  sb         $t5, %lo(D_800D6C14)($at)
    /* 61BFC 800B99AC 00087083 */  sra        $t6, $t0, 2
    /* 61C00 800B99B0 31CF0003 */  andi       $t7, $t6, 0x3
    /* 61C04 800B99B4 3C01800D */  lui        $at, %hi(D_800D6C15)
    /* 61C08 800B99B8 A02F6C15 */  sb         $t7, %lo(D_800D6C15)($at)
    /* 61C0C 800B99BC 0008C103 */  sra        $t8, $t0, 4
    /* 61C10 800B99C0 33190003 */  andi       $t9, $t8, 0x3
    /* 61C14 800B99C4 3C01800D */  lui        $at, %hi(D_800D6C16)
    /* 61C18 800B99C8 00084983 */  sra        $t1, $t0, 6
    /* 61C1C 800B99CC A0396C16 */  sb         $t9, %lo(D_800D6C16)($at)
    /* 61C20 800B99D0 3C01800D */  lui        $at, %hi(D_800D6C17)
    /* 61C24 800B99D4 312A0003 */  andi       $t2, $t1, 0x3
    /* 61C28 800B99D8 3C08800D */  lui        $t0, %hi(D_800D6C68)
    /* 61C2C 800B99DC 25086C68 */  addiu      $t0, $t0, %lo(D_800D6C68)
    /* 61C30 800B99E0 A02A6C17 */  sb         $t2, %lo(D_800D6C17)($at)
    /* 61C34 800B99E4 24450002 */  addiu      $a1, $v0, 0x2
  .L800B99E8:
    /* 61C38 800B99E8 90A2002E */  lbu        $v0, 0x2E($a1)
    /* 61C3C 800B99EC 90A3002F */  lbu        $v1, 0x2F($a1)
    /* 61C40 800B99F0 90A60030 */  lbu        $a2, 0x30($a1)
    /* 61C44 800B99F4 304B0003 */  andi       $t3, $v0, 0x3
    /* 61C48 800B99F8 A08B0000 */  sb         $t3, 0x0($a0)
    /* 61C4C 800B99FC 00026083 */  sra        $t4, $v0, 2
    /* 61C50 800B9A00 00027103 */  sra        $t6, $v0, 4
    /* 61C54 800B9A04 0002C183 */  sra        $t8, $v0, 6
    /* 61C58 800B9A08 00035083 */  sra        $t2, $v1, 2
    /* 61C5C 800B9A0C 90A70031 */  lbu        $a3, 0x31($a1)
    /* 61C60 800B9A10 314B0003 */  andi       $t3, $t2, 0x3
    /* 61C64 800B9A14 318D0003 */  andi       $t5, $t4, 0x3
    /* 61C68 800B9A18 31CF0003 */  andi       $t7, $t6, 0x3
    /* 61C6C 800B9A1C 33190003 */  andi       $t9, $t8, 0x3
    /* 61C70 800B9A20 A0990003 */  sb         $t9, 0x3($a0)
    /* 61C74 800B9A24 30690003 */  andi       $t1, $v1, 0x3
    /* 61C78 800B9A28 A0890004 */  sb         $t1, 0x4($a0)
    /* 61C7C 800B9A2C A08B0005 */  sb         $t3, 0x5($a0)
    /* 61C80 800B9A30 A08D0001 */  sb         $t5, 0x1($a0)
    /* 61C84 800B9A34 A08F0002 */  sb         $t7, 0x2($a0)
    /* 61C88 800B9A38 00037183 */  sra        $t6, $v1, 6
    /* 61C8C 800B9A3C 00036103 */  sra        $t4, $v1, 4
    /* 61C90 800B9A40 0006C883 */  sra        $t9, $a2, 2
    /* 61C94 800B9A44 00065103 */  sra        $t2, $a2, 4
    /* 61C98 800B9A48 314B0003 */  andi       $t3, $t2, 0x3
    /* 61C9C 800B9A4C 33290003 */  andi       $t1, $t9, 0x3
    /* 61CA0 800B9A50 318D0003 */  andi       $t5, $t4, 0x3
    /* 61CA4 800B9A54 31CF0003 */  andi       $t7, $t6, 0x3
    /* 61CA8 800B9A58 A08F0007 */  sb         $t7, 0x7($a0)
    /* 61CAC 800B9A5C 30D80003 */  andi       $t8, $a2, 0x3
    /* 61CB0 800B9A60 A0980008 */  sb         $t8, 0x8($a0)
    /* 61CB4 800B9A64 A08D0006 */  sb         $t5, 0x6($a0)
    /* 61CB8 800B9A68 A0890009 */  sb         $t1, 0x9($a0)
    /* 61CBC 800B9A6C A08B000A */  sb         $t3, 0xA($a0)
    /* 61CC0 800B9A70 00066183 */  sra        $t4, $a2, 6
    /* 61CC4 800B9A74 00077883 */  sra        $t7, $a3, 2
    /* 61CC8 800B9A78 0007C903 */  sra        $t9, $a3, 4
    /* 61CCC 800B9A7C 00075183 */  sra        $t2, $a3, 6
    /* 61CD0 800B9A80 314B0003 */  andi       $t3, $t2, 0x3
    /* 61CD4 800B9A84 33290003 */  andi       $t1, $t9, 0x3
    /* 61CD8 800B9A88 31F80003 */  andi       $t8, $t7, 0x3
    /* 61CDC 800B9A8C 318D0003 */  andi       $t5, $t4, 0x3
    /* 61CE0 800B9A90 24840010 */  addiu      $a0, $a0, 0x10
    /* 61CE4 800B9A94 30EE0003 */  andi       $t6, $a3, 0x3
    /* 61CE8 800B9A98 A08EFFFC */  sb         $t6, -0x4($a0)
    /* 61CEC 800B9A9C A08DFFFB */  sb         $t5, -0x5($a0)
    /* 61CF0 800B9AA0 A098FFFD */  sb         $t8, -0x3($a0)
    /* 61CF4 800B9AA4 A089FFFE */  sb         $t1, -0x2($a0)
    /* 61CF8 800B9AA8 A08BFFFF */  sb         $t3, -0x1($a0)
    /* 61CFC 800B9AAC 1488FFCE */  bne        $a0, $t0, .L800B99E8
    /* 61D00 800B9AB0 24A50004 */   addiu     $a1, $a1, 0x4
    /* 61D04 800B9AB4 03E00008 */  jr         $ra
    /* 61D08 800B9AB8 00000000 */   nop
  .L800B9ABC:
    /* 61D0C 800B9ABC 918D6C13 */  lbu        $t5, %lo(D_800D6C13)($t4)
    /* 61D10 800B9AC0 3C0F800D */  lui        $t7, %hi(D_800D6C10)
    /* 61D14 800B9AC4 91EF6C10 */  lbu        $t7, %lo(D_800D6C10)($t7)
    /* 61D18 800B9AC8 3C09800D */  lui        $t1, %hi(D_800D6C11)
    /* 61D1C 800B9ACC 000D7180 */  sll        $t6, $t5, 6
    /* 61D20 800B9AD0 91296C11 */  lbu        $t1, %lo(D_800D6C11)($t1)
    /* 61D24 800B9AD4 3C0D800D */  lui        $t5, %hi(D_800D6C12)
    /* 61D28 800B9AD8 91AD6C12 */  lbu        $t5, %lo(D_800D6C12)($t5)
    /* 61D2C 800B9ADC 31F80003 */  andi       $t8, $t7, 0x3
    /* 61D30 800B9AE0 01D8C825 */  or         $t9, $t6, $t8
    /* 61D34 800B9AE4 312A0003 */  andi       $t2, $t1, 0x3
    /* 61D38 800B9AE8 000A5880 */  sll        $t3, $t2, 2
    /* 61D3C 800B9AEC 31AF0003 */  andi       $t7, $t5, 0x3
    /* 61D40 800B9AF0 000F7100 */  sll        $t6, $t7, 4
    /* 61D44 800B9AF4 032B6025 */  or         $t4, $t9, $t3
    /* 61D48 800B9AF8 018EC025 */  or         $t8, $t4, $t6
    /* 61D4C 800B9AFC A058002E */  sb         $t8, 0x2E($v0)
    /* 61D50 800B9B00 3C09800D */  lui        $t1, %hi(D_800D6C17)
    /* 61D54 800B9B04 912A6C17 */  lbu        $t2, %lo(D_800D6C17)($t1)
    /* 61D58 800B9B08 3C0B800D */  lui        $t3, %hi(D_800D6C14)
    /* 61D5C 800B9B0C 916B6C14 */  lbu        $t3, %lo(D_800D6C14)($t3)
    /* 61D60 800B9B10 3C0C800D */  lui        $t4, %hi(D_800D6C15)
    /* 61D64 800B9B14 000AC980 */  sll        $t9, $t2, 6
    /* 61D68 800B9B18 918C6C15 */  lbu        $t4, %lo(D_800D6C15)($t4)
    /* 61D6C 800B9B1C 3C0A800D */  lui        $t2, %hi(D_800D6C16)
    /* 61D70 800B9B20 914A6C16 */  lbu        $t2, %lo(D_800D6C16)($t2)
    /* 61D74 800B9B24 316D0003 */  andi       $t5, $t3, 0x3
    /* 61D78 800B9B28 032D7825 */  or         $t7, $t9, $t5
    /* 61D7C 800B9B2C 318E0003 */  andi       $t6, $t4, 0x3
    /* 61D80 800B9B30 000EC080 */  sll        $t8, $t6, 2
    /* 61D84 800B9B34 314B0003 */  andi       $t3, $t2, 0x3
    /* 61D88 800B9B38 000BC900 */  sll        $t9, $t3, 4
    /* 61D8C 800B9B3C 01F84825 */  or         $t1, $t7, $t8
    /* 61D90 800B9B40 01396825 */  or         $t5, $t1, $t9
    /* 61D94 800B9B44 A04D002F */  sb         $t5, 0x2F($v0)
    /* 61D98 800B9B48 24450002 */  addiu      $a1, $v0, 0x2
    /* 61D9C 800B9B4C 3C02800D */  lui        $v0, %hi(D_800D6C68)
    /* 61DA0 800B9B50 3C04800D */  lui        $a0, %hi(D_800D6C18)
    /* 61DA4 800B9B54 24846C18 */  addiu      $a0, $a0, %lo(D_800D6C18)
    /* 61DA8 800B9B58 24426C68 */  addiu      $v0, $v0, %lo(D_800D6C68)
  .L800B9B5C:
    /* 61DAC 800B9B5C 908E0003 */  lbu        $t6, 0x3($a0)
    /* 61DB0 800B9B60 90980000 */  lbu        $t8, 0x0($a0)
    /* 61DB4 800B9B64 90890001 */  lbu        $t1, 0x1($a0)
    /* 61DB8 800B9B68 000E7980 */  sll        $t7, $t6, 6
    /* 61DBC 800B9B6C 908E0002 */  lbu        $t6, 0x2($a0)
    /* 61DC0 800B9B70 330A0003 */  andi       $t2, $t8, 0x3
    /* 61DC4 800B9B74 31390003 */  andi       $t9, $t1, 0x3
    /* 61DC8 800B9B78 00196880 */  sll        $t5, $t9, 2
    /* 61DCC 800B9B7C 01EA5825 */  or         $t3, $t7, $t2
    /* 61DD0 800B9B80 016D6025 */  or         $t4, $t3, $t5
    /* 61DD4 800B9B84 31D80003 */  andi       $t8, $t6, 0x3
    /* 61DD8 800B9B88 90990007 */  lbu        $t9, 0x7($a0)
    /* 61DDC 800B9B8C 00187900 */  sll        $t7, $t8, 4
    /* 61DE0 800B9B90 018F5025 */  or         $t2, $t4, $t7
    /* 61DE4 800B9B94 908C0005 */  lbu        $t4, 0x5($a0)
    /* 61DE8 800B9B98 908D0004 */  lbu        $t5, 0x4($a0)
    /* 61DEC 800B9B9C 00195980 */  sll        $t3, $t9, 6
    /* 61DF0 800B9BA0 90990006 */  lbu        $t9, 0x6($a0)
    /* 61DF4 800B9BA4 A0AA002E */  sb         $t2, 0x2E($a1)
    /* 61DF8 800B9BA8 318F0003 */  andi       $t7, $t4, 0x3
    /* 61DFC 800B9BAC 31AE0003 */  andi       $t6, $t5, 0x3
    /* 61E00 800B9BB0 016EC025 */  or         $t8, $t3, $t6
    /* 61E04 800B9BB4 000F5080 */  sll        $t2, $t7, 2
    /* 61E08 800B9BB8 030A4825 */  or         $t1, $t8, $t2
    /* 61E0C 800B9BBC 332D0003 */  andi       $t5, $t9, 0x3
    /* 61E10 800B9BC0 000D5900 */  sll        $t3, $t5, 4
    /* 61E14 800B9BC4 908F000B */  lbu        $t7, 0xB($a0)
    /* 61E18 800B9BC8 012B7025 */  or         $t6, $t1, $t3
    /* 61E1C 800B9BCC 90890009 */  lbu        $t1, 0x9($a0)
    /* 61E20 800B9BD0 908A0008 */  lbu        $t2, 0x8($a0)
    /* 61E24 800B9BD4 000FC180 */  sll        $t8, $t7, 6
    /* 61E28 800B9BD8 908F000A */  lbu        $t7, 0xA($a0)
    /* 61E2C 800B9BDC A0AE002F */  sb         $t6, 0x2F($a1)
    /* 61E30 800B9BE0 312B0003 */  andi       $t3, $t1, 0x3
    /* 61E34 800B9BE4 31590003 */  andi       $t9, $t2, 0x3
    /* 61E38 800B9BE8 03196825 */  or         $t5, $t8, $t9
    /* 61E3C 800B9BEC 000B7080 */  sll        $t6, $t3, 2
    /* 61E40 800B9BF0 01AE6025 */  or         $t4, $t5, $t6
    /* 61E44 800B9BF4 908B000F */  lbu        $t3, 0xF($a0)
    /* 61E48 800B9BF8 31EA0003 */  andi       $t2, $t7, 0x3
    /* 61E4C 800B9BFC 000AC100 */  sll        $t8, $t2, 4
    /* 61E50 800B9C00 908E000C */  lbu        $t6, 0xC($a0)
    /* 61E54 800B9C04 0198C825 */  or         $t9, $t4, $t8
    /* 61E58 800B9C08 908C000D */  lbu        $t4, 0xD($a0)
    /* 61E5C 800B9C0C 000B6980 */  sll        $t5, $t3, 6
    /* 61E60 800B9C10 908B000E */  lbu        $t3, 0xE($a0)
    /* 61E64 800B9C14 31CF0003 */  andi       $t7, $t6, 0x3
    /* 61E68 800B9C18 01AF5025 */  or         $t2, $t5, $t7
    /* 61E6C 800B9C1C A0B90030 */  sb         $t9, 0x30($a1)
    /* 61E70 800B9C20 31980003 */  andi       $t8, $t4, 0x3
    /* 61E74 800B9C24 0018C880 */  sll        $t9, $t8, 2
    /* 61E78 800B9C28 316E0003 */  andi       $t6, $t3, 0x3
    /* 61E7C 800B9C2C 000E6900 */  sll        $t5, $t6, 4
    /* 61E80 800B9C30 01594825 */  or         $t1, $t2, $t9
    /* 61E84 800B9C34 012D7825 */  or         $t7, $t1, $t5
    /* 61E88 800B9C38 24840010 */  addiu      $a0, $a0, 0x10
    /* 61E8C 800B9C3C A0AF0031 */  sb         $t7, 0x31($a1)
    /* 61E90 800B9C40 1482FFC6 */  bne        $a0, $v0, .L800B9B5C
    /* 61E94 800B9C44 24A50004 */   addiu     $a1, $a1, 0x4
    /* 61E98 800B9C48 03E00008 */  jr         $ra
    /* 61E9C 800B9C4C 00000000 */   nop
endlabel func_800B96A0
.size func_800B96A0, . - func_800B96A0
