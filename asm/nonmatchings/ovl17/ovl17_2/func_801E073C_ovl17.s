nonmatching func_801E073C_ovl17, 0x338

glabel func_801E073C_ovl17
    /* 22B92C 801E073C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 22B930 801E0740 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 22B934 801E0744 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 22B938 801E0748 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 22B93C 801E074C 8DC30000 */  lw         $v1, 0x0($t6)
    /* 22B940 801E0750 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
    /* 22B944 801E0754 3C05800E */  lui        $a1, %hi(D_800E1B50)
    /* 22B948 801E0758 00031080 */  sll        $v0, $v1, 2
    /* 22B94C 801E075C 01E27821 */  addu       $t7, $t7, $v0
    /* 22B950 801E0760 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
    /* 22B954 801E0764 00A22821 */  addu       $a1, $a1, $v0
    /* 22B958 801E0768 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
    /* 22B95C 801E076C 8DF8007C */  lw         $t8, 0x7C($t7)
    /* 22B960 801E0770 14A00003 */  bnez       $a1, .L801E0780_ovl17
    /* 22B964 801E0774 AFB80048 */   sw        $t8, 0x48($sp)
    /* 22B968 801E0778 100000BA */  b          .L801E0A64_ovl17
    /* 22B96C 801E077C 00001025 */   or        $v0, $zero, $zero
  .L801E0780_ovl17:
    /* 22B970 801E0780 8CB9008C */  lw         $t9, 0x8C($a1)
    /* 22B974 801E0784 00602025 */  or         $a0, $v1, $zero
    /* 22B978 801E0788 17200003 */  bnez       $t9, .L801E0798_ovl17
    /* 22B97C 801E078C 00000000 */   nop
    /* 22B980 801E0790 100000B4 */  b          .L801E0A64_ovl17
    /* 22B984 801E0794 00001025 */   or        $v0, $zero, $zero
  .L801E0798_ovl17:
    /* 22B988 801E0798 0C044554 */  jal        func_80111550
    /* 22B98C 801E079C AFA5004C */   sw        $a1, 0x4C($sp)
    /* 22B990 801E07A0 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 22B994 801E07A4 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 22B998 801E07A8 3C04801E */  lui        $a0, %hi(D_801E510C_ovl17)
    /* 22B99C 801E07AC 2484510C */  addiu      $a0, $a0, %lo(D_801E510C_ovl17)
    /* 22B9A0 801E07B0 0C044722 */  jal        func_80111C88
    /* 22B9A4 801E07B4 8D050000 */   lw        $a1, 0x0($t0)
    /* 22B9A8 801E07B8 0C0447B3 */  jal        func_80111ECC
    /* 22B9AC 801E07BC 00402025 */   or        $a0, $v0, $zero
    /* 22B9B0 801E07C0 0C0442C0 */  jal        func_80110B00
    /* 22B9B4 801E07C4 27A40028 */   addiu     $a0, $sp, 0x28
    /* 22B9B8 801E07C8 10400014 */  beqz       $v0, .L801E081C_ovl17
    /* 22B9BC 801E07CC 3C0E8005 */   lui       $t6, %hi(omCurrentObj)
    /* 22B9C0 801E07D0 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 22B9C4 801E07D4 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 22B9C8 801E07D8 3C01800E */  lui        $at, %hi(D_800E7B20)
    /* 22B9CC 801E07DC 44802000 */  mtc1       $zero, $f4
    /* 22B9D0 801E07E0 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 22B9D4 801E07E4 8FA20034 */  lw         $v0, 0x34($sp)
    /* 22B9D8 801E07E8 000A5880 */  sll        $t3, $t2, 2
    /* 22B9DC 801E07EC 002B0821 */  addu       $at, $at, $t3
    /* 22B9E0 801E07F0 C4267B20 */  lwc1       $f6, %lo(D_800E7B20)($at)
    /* 22B9E4 801E07F4 4604303E */  c.le.s     $f6, $f4
    /* 22B9E8 801E07F8 00000000 */  nop
    /* 22B9EC 801E07FC 45000007 */  bc1f       .L801E081C_ovl17
    /* 22B9F0 801E0800 00000000 */   nop
    /* 22B9F4 801E0804 10400005 */  beqz       $v0, .L801E081C_ovl17
    /* 22B9F8 801E0808 240C0001 */   addiu     $t4, $zero, 0x1
    /* 22B9FC 801E080C 00026880 */  sll        $t5, $v0, 2
    /* 22BA00 801E0810 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 22BA04 801E0814 002D0821 */  addu       $at, $at, $t5
    /* 22BA08 801E0818 AC2C98E0 */  sw         $t4, %lo(D_800E98E0)($at)
  .L801E081C_ovl17:
    /* 22BA0C 801E081C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 22BA10 801E0820 3C18800F */  lui        $t8, %hi(D_800EA1A0)
    /* 22BA14 801E0824 8DC30000 */  lw         $v1, 0x0($t6)
    /* 22BA18 801E0828 00037880 */  sll        $t7, $v1, 2
    /* 22BA1C 801E082C 030FC021 */  addu       $t8, $t8, $t7
    /* 22BA20 801E0830 8F18A1A0 */  lw         $t8, %lo(D_800EA1A0)($t8)
    /* 22BA24 801E0834 2B010005 */  slti       $at, $t8, 0x5
    /* 22BA28 801E0838 5420008A */  bnel       $at, $zero, .L801E0A64_ovl17
    /* 22BA2C 801E083C 00001025 */   or        $v0, $zero, $zero
    /* 22BA30 801E0840 0C044554 */  jal        func_80111550
    /* 22BA34 801E0844 00602025 */   or        $a0, $v1, $zero
    /* 22BA38 801E0848 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 22BA3C 801E084C 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 22BA40 801E0850 8FB9004C */  lw         $t9, 0x4C($sp)
    /* 22BA44 801E0854 8D050000 */  lw         $a1, 0x0($t0)
    /* 22BA48 801E0858 0C044722 */  jal        func_80111C88
    /* 22BA4C 801E085C 8F24008C */   lw        $a0, 0x8C($t9)
    /* 22BA50 801E0860 8FA9004C */  lw         $t1, 0x4C($sp)
    /* 22BA54 801E0864 00402025 */  or         $a0, $v0, $zero
    /* 22BA58 801E0868 8D2A008C */  lw         $t2, 0x8C($t1)
    /* 22BA5C 801E086C 8D430008 */  lw         $v1, 0x8($t2)
    /* 22BA60 801E0870 8C6B0004 */  lw         $t3, 0x4($v1)
    /* 22BA64 801E0874 8FA30048 */  lw         $v1, 0x48($sp)
    /* 22BA68 801E0878 15600017 */  bnez       $t3, .L801E08D8_ovl17
    /* 22BA6C 801E087C 00000000 */   nop
    /* 22BA70 801E0880 10600015 */  beqz       $v1, .L801E08D8_ovl17
    /* 22BA74 801E0884 00000000 */   nop
    /* 22BA78 801E0888 8C4C0024 */  lw         $t4, 0x24($v0)
    /* 22BA7C 801E088C 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 22BA80 801E0890 3C18800F */  lui        $t8, %hi(D_800EA1A0)
    /* 22BA84 801E0894 AD830008 */  sw         $v1, 0x8($t4)
    /* 22BA88 801E0898 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 22BA8C 801E089C 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* 22BA90 801E08A0 44818000 */  mtc1       $at, $f16
    /* 22BA94 801E08A4 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 22BA98 801E08A8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* 22BA9C 801E08AC 44812000 */  mtc1       $at, $f4
    /* 22BAA0 801E08B0 000E7880 */  sll        $t7, $t6, 2
    /* 22BAA4 801E08B4 030FC021 */  addu       $t8, $t8, $t7
    /* 22BAA8 801E08B8 8F18A1A0 */  lw         $t8, %lo(D_800EA1A0)($t8)
    /* 22BAAC 801E08BC 8C590024 */  lw         $t9, 0x24($v0)
    /* 22BAB0 801E08C0 44984000 */  mtc1       $t8, $f8
    /* 22BAB4 801E08C4 00000000 */  nop
    /* 22BAB8 801E08C8 468042A0 */  cvt.s.w    $f10, $f8
    /* 22BABC 801E08CC 46105482 */  mul.s      $f18, $f10, $f16
    /* 22BAC0 801E08D0 46049180 */  add.s      $f6, $f18, $f4
    /* 22BAC4 801E08D4 E7260018 */  swc1       $f6, 0x18($t9)
  .L801E08D8_ovl17:
    /* 22BAC8 801E08D8 0C0447B3 */  jal        func_80111ECC
    /* 22BACC 801E08DC 00000000 */   nop
    /* 22BAD0 801E08E0 0C0442C0 */  jal        func_80110B00
    /* 22BAD4 801E08E4 27A40028 */   addiu     $a0, $sp, 0x28
    /* 22BAD8 801E08E8 1040000D */  beqz       $v0, .L801E0920_ovl17
    /* 22BADC 801E08EC 3C0E8005 */   lui       $t6, %hi(omCurrentObj)
    /* 22BAE0 801E08F0 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 22BAE4 801E08F4 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 22BAE8 801E08F8 93A8002A */  lbu        $t0, 0x2A($sp)
    /* 22BAEC 801E08FC 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* 22BAF0 801E0900 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 22BAF4 801E0904 93AC002B */  lbu        $t4, 0x2B($sp)
    /* 22BAF8 801E0908 8FAD004C */  lw         $t5, 0x4C($sp)
    /* 22BAFC 801E090C 000A5880 */  sll        $t3, $t2, 2
    /* 22BB00 801E0910 002B0821 */  addu       $at, $at, $t3
    /* 22BB04 801E0914 AC2883E0 */  sw         $t0, %lo(D_800E83E0)($at)
    /* 22BB08 801E0918 10000009 */  b          .L801E0940_ovl17
    /* 22BB0C 801E091C A1AC0043 */   sb        $t4, 0x43($t5)
  .L801E0920_ovl17:
    /* 22BB10 801E0920 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 22BB14 801E0924 8FB9004C */  lw         $t9, 0x4C($sp)
    /* 22BB18 801E0928 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* 22BB1C 801E092C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 22BB20 801E0930 000FC080 */  sll        $t8, $t7, 2
    /* 22BB24 801E0934 00380821 */  addu       $at, $at, $t8
    /* 22BB28 801E0938 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
    /* 22BB2C 801E093C A3200043 */  sb         $zero, 0x43($t9)
  .L801E0940_ovl17:
    /* 22BB30 801E0940 3C01800D */  lui        $at, %hi(D_800D6E5C)
    /* 22BB34 801E0944 C42A6E5C */  lwc1       $f10, %lo(D_800D6E5C)($at)
    /* 22BB38 801E0948 44804000 */  mtc1       $zero, $f8
    /* 22BB3C 801E094C 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 22BB40 801E0950 460A4032 */  c.eq.s     $f8, $f10
    /* 22BB44 801E0954 00000000 */  nop
    /* 22BB48 801E0958 45010008 */  bc1t       .L801E097C_ovl17
    /* 22BB4C 801E095C 00000000 */   nop
    /* 22BB50 801E0960 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 22BB54 801E0964 3C01800E */  lui        $at, %hi(D_800E7B20)
    /* 22BB58 801E0968 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 22BB5C 801E096C 000A4080 */  sll        $t0, $t2, 2
    /* 22BB60 801E0970 00280821 */  addu       $at, $at, $t0
    /* 22BB64 801E0974 0C02F047 */  jal        func_800BC11C
    /* 22BB68 801E0978 C42C7B20 */   lwc1      $f12, %lo(D_800E7B20)($at)
  .L801E097C_ovl17:
    /* 22BB6C 801E097C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 22BB70 801E0980 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 22BB74 801E0984 3C04800F */  lui        $a0, %hi(D_800E83E0)
    /* 22BB78 801E0988 24060001 */  addiu      $a2, $zero, 0x1
    /* 22BB7C 801E098C 8C620000 */  lw         $v0, 0x0($v1)
    /* 22BB80 801E0990 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 22BB84 801E0994 240B0004 */  addiu      $t3, $zero, 0x4
    /* 22BB88 801E0998 00021080 */  sll        $v0, $v0, 2
    /* 22BB8C 801E099C 00822021 */  addu       $a0, $a0, $v0
    /* 22BB90 801E09A0 8C8483E0 */  lw         $a0, %lo(D_800E83E0)($a0)
    /* 22BB94 801E09A4 00220821 */  addu       $at, $at, $v0
    /* 22BB98 801E09A8 3C05801E */  lui        $a1, %hi(func_801DDB8C_ovl17)
    /* 22BB9C 801E09AC 10860006 */  beq        $a0, $a2, .L801E09C8_ovl17
    /* 22BBA0 801E09B0 00000000 */   nop
    /* 22BBA4 801E09B4 24010002 */  addiu      $at, $zero, 0x2
    /* 22BBA8 801E09B8 10810014 */  beq        $a0, $at, .L801E0A0C_ovl17
    /* 22BBAC 801E09BC 3C05800E */   lui       $a1, %hi(D_800E7CE0)
    /* 22BBB0 801E09C0 10000028 */  b          .L801E0A64_ovl17
    /* 22BBB4 801E09C4 00001025 */   or        $v0, $zero, $zero
  .L801E09C8_ovl17:
    /* 22BBB8 801E09C8 AC2BDC50 */  sw         $t3, %lo(gEntityFuncListIDArray)($at)
    /* 22BBBC 801E09CC 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 22BBC0 801E09D0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 22BBC4 801E09D4 24A5DB8C */  addiu      $a1, $a1, %lo(func_801DDB8C_ovl17)
    /* 22BBC8 801E09D8 000C6880 */  sll        $t5, $t4, 2
    /* 22BBCC 801E09DC 008D2021 */  addu       $a0, $a0, $t5
    /* 22BBD0 801E09E0 0C02C7B2 */  jal        assign_new_process_entry
    /* 22BBD4 801E09E4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 22BBD8 801E09E8 8FA20034 */  lw         $v0, 0x34($sp)
    /* 22BBDC 801E09EC 240E0001 */  addiu      $t6, $zero, 0x1
    /* 22BBE0 801E09F0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 22BBE4 801E09F4 10400003 */  beqz       $v0, .L801E0A04_ovl17
    /* 22BBE8 801E09F8 00027880 */   sll       $t7, $v0, 2
    /* 22BBEC 801E09FC 002F0821 */  addu       $at, $at, $t7
    /* 22BBF0 801E0A00 AC2E98E0 */  sw         $t6, %lo(D_800E98E0)($at)
  .L801E0A04_ovl17:
    /* 22BBF4 801E0A04 10000017 */  b          .L801E0A64_ovl17
    /* 22BBF8 801E0A08 24020001 */   addiu     $v0, $zero, 0x1
  .L801E0A0C_ovl17:
    /* 22BBFC 801E0A0C 24A57CE0 */  addiu      $a1, $a1, %lo(D_800E7CE0)
    /* 22BC00 801E0A10 00A2C021 */  addu       $t8, $a1, $v0
    /* 22BC04 801E0A14 8F190000 */  lw         $t9, 0x0($t8)
    /* 22BC08 801E0A18 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 22BC0C 801E0A1C 00220821 */  addu       $at, $at, $v0
    /* 22BC10 801E0A20 AC39A360 */  sw         $t9, %lo(D_800EA360)($at)
    /* 22BC14 801E0A24 8C690000 */  lw         $t1, 0x0($v1)
    /* 22BC18 801E0A28 240401BF */  addiu      $a0, $zero, 0x1BF
    /* 22BC1C 801E0A2C 00095080 */  sll        $t2, $t1, 2
    /* 22BC20 801E0A30 00AA4021 */  addu       $t0, $a1, $t2
    /* 22BC24 801E0A34 0C029D9E */  jal        play_sound
    /* 22BC28 801E0A38 AD060000 */   sw        $a2, 0x0($t0)
    /* 22BC2C 801E0A3C 8FA20034 */  lw         $v0, 0x34($sp)
    /* 22BC30 801E0A40 240B0001 */  addiu      $t3, $zero, 0x1
    /* 22BC34 801E0A44 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 22BC38 801E0A48 10400003 */  beqz       $v0, .L801E0A58_ovl17
    /* 22BC3C 801E0A4C 00026080 */   sll       $t4, $v0, 2
    /* 22BC40 801E0A50 002C0821 */  addu       $at, $at, $t4
    /* 22BC44 801E0A54 AC2B98E0 */  sw         $t3, %lo(D_800E98E0)($at)
  .L801E0A58_ovl17:
    /* 22BC48 801E0A58 10000002 */  b          .L801E0A64_ovl17
    /* 22BC4C 801E0A5C 24020001 */   addiu     $v0, $zero, 0x1
    /* 22BC50 801E0A60 00001025 */  or         $v0, $zero, $zero
  .L801E0A64_ovl17:
    /* 22BC54 801E0A64 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 22BC58 801E0A68 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 22BC5C 801E0A6C 03E00008 */  jr         $ra
    /* 22BC60 801E0A70 00000000 */   nop
endlabel func_801E073C_ovl17
.size func_801E073C_ovl17, . - func_801E073C_ovl17
