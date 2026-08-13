nonmatching func_8002C80C, 0x180

glabel func_8002C80C
    /* 2D40C 8002C80C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2D410 8002C810 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2D414 8002C814 AFB10020 */  sw         $s1, 0x20($sp)
    /* 2D418 8002C818 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 2D41C 8002C81C 8CA6000C */  lw         $a2, 0xC($a1)
    /* 2D420 8002C820 AC800020 */  sw         $zero, 0x20($a0)
    /* 2D424 8002C824 AC800024 */  sw         $zero, 0x24($a0)
    /* 2D428 8002C828 AC800028 */  sw         $zero, 0x28($a0)
    /* 2D42C 8002C82C AC800018 */  sw         $zero, 0x18($a0)
    /* 2D430 8002C830 3C0E8004 */  lui        $t6, %hi(n_syn)
    /* 2D434 8002C834 8DCEFB14 */  lw         $t6, %lo(n_syn)($t6)
    /* 2D438 8002C838 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 2D43C 8002C83C 241801E8 */  addiu      $t8, $zero, 0x1E8
    /* 2D440 8002C840 24197FFF */  addiu      $t9, $zero, 0x7FFF
    /* 2D444 8002C844 A48F0038 */  sh         $t7, 0x38($a0)
    /* 2D448 8002C848 AC98002C */  sw         $t8, 0x2C($a0)
    /* 2D44C 8002C84C AC800030 */  sw         $zero, 0x30($a0)
    /* 2D450 8002C850 AC800034 */  sw         $zero, 0x34($a0)
    /* 2D454 8002C854 A499003A */  sh         $t9, 0x3A($a0)
    /* 2D458 8002C858 AC8E0014 */  sw         $t6, 0x14($a0)
    /* 2D45C 8002C85C 90A80009 */  lbu        $t0, 0x9($a1)
    /* 2D460 8002C860 24093E80 */  addiu      $t1, $zero, 0x3E80
    /* 2D464 8002C864 AC890064 */  sw         $t1, 0x64($a0)
    /* 2D468 8002C868 AC80001C */  sw         $zero, 0x1C($a0)
    /* 2D46C 8002C86C A088003D */  sb         $t0, 0x3D($a0)
    /* 2D470 8002C870 8CAA0010 */  lw         $t2, 0x10($a1)
    /* 2D474 8002C874 240D0009 */  addiu      $t5, $zero, 0x9
    /* 2D478 8002C878 00A08825 */  or         $s1, $a1, $zero
    /* 2D47C 8002C87C AC8A007C */  sw         $t2, 0x7C($a0)
    /* 2D480 8002C880 8CAB0014 */  lw         $t3, 0x14($a1)
    /* 2D484 8002C884 00808025 */  or         $s0, $a0, $zero
    /* 2D488 8002C888 240F0018 */  addiu      $t7, $zero, 0x18
    /* 2D48C 8002C88C AC8B0080 */  sw         $t3, 0x80($a0)
    /* 2D490 8002C890 8CAC0018 */  lw         $t4, 0x18($a1)
    /* 2D494 8002C894 AC800088 */  sw         $zero, 0x88($a0)
    /* 2D498 8002C898 AC80008C */  sw         $zero, 0x8C($a0)
    /* 2D49C 8002C89C AC800090 */  sw         $zero, 0x90($a0)
    /* 2D4A0 8002C8A0 A48D0040 */  sh         $t5, 0x40($a0)
    /* 2D4A4 8002C8A4 AC8C0084 */  sw         $t4, 0x84($a0)
    /* 2D4A8 8002C8A8 90AE0008 */  lbu        $t6, 0x8($a1)
    /* 2D4AC 8002C8AC 00002825 */  or         $a1, $zero, $zero
    /* 2D4B0 8002C8B0 A08E003C */  sb         $t6, 0x3C($a0)
    /* 2D4B4 8002C8B4 92270008 */  lbu        $a3, 0x8($s1)
    /* 2D4B8 8002C8B8 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2D4BC 8002C8BC 00002025 */  or         $a0, $zero, $zero
    /* 2D4C0 8002C8C0 0C0078F5 */  jal        alHeapDBAlloc
    /* 2D4C4 8002C8C4 AFA6002C */   sw        $a2, 0x2C($sp)
    /* 2D4C8 8002C8C8 AE020068 */  sw         $v0, 0x68($s0)
    /* 2D4CC 8002C8CC 0C00B1E4 */  jal        func_8002C790
    /* 2D4D0 8002C8D0 02002025 */   or        $a0, $s0, $zero
    /* 2D4D4 8002C8D4 8E270000 */  lw         $a3, 0x0($s1)
    /* 2D4D8 8002C8D8 24180038 */  addiu      $t8, $zero, 0x38
    /* 2D4DC 8002C8DC AFB80010 */  sw         $t8, 0x10($sp)
    /* 2D4E0 8002C8E0 00002025 */  or         $a0, $zero, $zero
    /* 2D4E4 8002C8E4 00002825 */  or         $a1, $zero, $zero
    /* 2D4E8 8002C8E8 0C0078F5 */  jal        alHeapDBAlloc
    /* 2D4EC 8002C8EC 8FA6002C */   lw        $a2, 0x2C($sp)
    /* 2D4F0 8002C8F0 AE000074 */  sw         $zero, 0x74($s0)
    /* 2D4F4 8002C8F4 8E390000 */  lw         $t9, 0x0($s1)
    /* 2D4F8 8002C8F8 00002025 */  or         $a0, $zero, $zero
    /* 2D4FC 8002C8FC 00002825 */  or         $a1, $zero, $zero
    /* 2D500 8002C900 1B20000B */  blez       $t9, .L8002C930
    /* 2D504 8002C904 240A001C */   addiu     $t2, $zero, 0x1C
    /* 2D508 8002C908 00401825 */  or         $v1, $v0, $zero
    /* 2D50C 8002C90C 8E080074 */  lw         $t0, 0x74($s0)
  .L8002C910:
    /* 2D510 8002C910 24840001 */  addiu      $a0, $a0, 0x1
    /* 2D514 8002C914 AC680000 */  sw         $t0, 0x0($v1)
    /* 2D518 8002C918 AE030074 */  sw         $v1, 0x74($s0)
    /* 2D51C 8002C91C 8E290000 */  lw         $t1, 0x0($s1)
    /* 2D520 8002C920 24630038 */  addiu      $v1, $v1, 0x38
    /* 2D524 8002C924 0089082A */  slt        $at, $a0, $t1
    /* 2D528 8002C928 5420FFF9 */  bnel       $at, $zero, .L8002C910
    /* 2D52C 8002C92C 8E080074 */   lw        $t0, 0x74($s0)
  .L8002C930:
    /* 2D530 8002C930 AE00006C */  sw         $zero, 0x6C($s0)
    /* 2D534 8002C934 AE000070 */  sw         $zero, 0x70($s0)
    /* 2D538 8002C938 8E270004 */  lw         $a3, 0x4($s1)
    /* 2D53C 8002C93C AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2D540 8002C940 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 2D544 8002C944 0C0078F5 */  jal        alHeapDBAlloc
    /* 2D548 8002C948 00002025 */   or        $a0, $zero, $zero
    /* 2D54C 8002C94C 26040050 */  addiu      $a0, $s0, 0x50
    /* 2D550 8002C950 00402825 */  or         $a1, $v0, $zero
    /* 2D554 8002C954 0C009898 */  jal        func_80026260
    /* 2D558 8002C958 8E260004 */   lw        $a2, 0x4($s1)
    /* 2D55C 8002C95C 3C0B8003 */  lui        $t3, %hi(func_8002C044)
    /* 2D560 8002C960 256BC044 */  addiu      $t3, $t3, %lo(func_8002C044)
    /* 2D564 8002C964 AE000000 */  sw         $zero, 0x0($s0)
    /* 2D568 8002C968 AE0B0008 */  sw         $t3, 0x8($s0)
    /* 2D56C 8002C96C AE100004 */  sw         $s0, 0x4($s0)
    /* 2D570 8002C970 0C00AA44 */  jal        n_alSynAddSeqPlayer
    /* 2D574 8002C974 02002025 */   or        $a0, $s0, $zero
    /* 2D578 8002C978 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2D57C 8002C97C 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 2D580 8002C980 8FB10020 */  lw         $s1, 0x20($sp)
    /* 2D584 8002C984 03E00008 */  jr         $ra
    /* 2D588 8002C988 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8002C80C
.size func_8002C80C, . - func_8002C80C
    /* 2D58C 8002C98C 00000000 */  nop
