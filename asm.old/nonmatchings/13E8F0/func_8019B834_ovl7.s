glabel func_8019B834_ovl7
/* 1418A4 8019B834 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1418A8 8019B838 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1418AC 8019B83C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1418B0 8019B840 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1418B4 8019B844 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1418B8 8019B848 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1418BC 8019B84C 27A4001C */  addiu      $a0, $sp, 0x1C
/* 1418C0 8019B850 000E7880 */  sll        $t7, $t6, 2
/* 1418C4 8019B854 002F0821 */  addu       $at, $at, $t7
/* 1418C8 8019B858 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1418CC 8019B85C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1418D0 8019B860 E7A40024 */  swc1       $f4, 0x24($sp)
/* 1418D4 8019B864 8C580000 */  lw         $t8, 0x0($v0)
/* 1418D8 8019B868 0018C880 */  sll        $t9, $t8, 2
/* 1418DC 8019B86C 00390821 */  addu       $at, $at, $t9
/* 1418E0 8019B870 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1418E4 8019B874 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1418E8 8019B878 E7A60028 */  swc1       $f6, 0x28($sp)
/* 1418EC 8019B87C 8C480000 */  lw         $t0, 0x0($v0)
/* 1418F0 8019B880 00084880 */  sll        $t1, $t0, 2
/* 1418F4 8019B884 00290821 */  addu       $at, $at, $t1
/* 1418F8 8019B888 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1418FC 8019B88C 0C066A40 */  jal        func_8019A900_ovl7
/* 141900 8019B890 E7A8002C */   swc1      $f8, 0x2C($sp)
/* 141904 8019B894 1040001B */  beqz       $v0, .L8019B904_ovl7
/* 141908 8019B898 8FAA001C */   lw        $t2, 0x1C($sp)
/* 14190C 8019B89C 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 141910 8019B8A0 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 141914 8019B8A4 448A5000 */  mtc1       $t2, $f10
/* 141918 8019B8A8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 14191C 8019B8AC 8D6C0000 */  lw         $t4, 0x0($t3)
/* 141920 8019B8B0 46805420 */  cvt.s.w    $f16, $f10
/* 141924 8019B8B4 3C0E800D */  lui        $t6, %hi(D_800D799C)
/* 141928 8019B8B8 000C6880 */  sll        $t5, $t4, 2
/* 14192C 8019B8BC 002D0821 */  addu       $at, $at, $t5
/* 141930 8019B8C0 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* 141934 8019B8C4 3C01801D */  lui        $at, %hi(D_801CDC1C_ovl7)
/* 141938 8019B8C8 46128032 */  c.eq.s     $f16, $f18
/* 14193C 8019B8CC 00000000 */  nop
/* 141940 8019B8D0 4503000D */  bc1tl      .L8019B908_ovl7
/* 141944 8019B8D4 00001025 */   or        $v0, $zero, $zero
/* 141948 8019B8D8 C420DC1C */  lwc1       $f0, %lo(D_801CDC1C_ovl7)($at)
/* 14194C 8019B8DC 8DCE799C */  lw         $t6, %lo(D_800D799C)($t6)
/* 141950 8019B8E0 27A50024 */  addiu      $a1, $sp, 0x24
/* 141954 8019B8E4 44060000 */  mfc1       $a2, $f0
/* 141958 8019B8E8 44070000 */  mfc1       $a3, $f0
/* 14195C 8019B8EC 0C0293D2 */  jal        func_800A4F48
/* 141960 8019B8F0 8DC4003C */   lw        $a0, 0x3C($t6)
/* 141964 8019B8F4 54400004 */  bnel       $v0, $zero, .L8019B908_ovl7
/* 141968 8019B8F8 00001025 */   or        $v0, $zero, $zero
/* 14196C 8019B8FC 10000002 */  b          .L8019B908_ovl7
/* 141970 8019B900 24020001 */   addiu     $v0, $zero, 0x1
.L8019B904_ovl7:
/* 141974 8019B904 00001025 */  or         $v0, $zero, $zero
.L8019B908_ovl7:
/* 141978 8019B908 8FBF0014 */  lw         $ra, 0x14($sp)
/* 14197C 8019B90C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 141980 8019B910 03E00008 */  jr         $ra
/* 141984 8019B914 00000000 */   nop
