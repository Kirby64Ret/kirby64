glabel func_8019A7E8_ovl7
/* 140858 8019A7E8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 14085C 8019A7EC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 140860 8019A7F0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 140864 8019A7F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 140868 8019A7F8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 14086C 8019A7FC 3C01800E */  lui        $at, %hi(D_800E6F50 + 0xC)
/* 140870 8019A800 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* 140874 8019A804 000E7900 */  sll        $t7, $t6, 4
/* 140878 8019A808 002F0821 */  addu       $at, $at, $t7
/* 14087C 8019A80C C4206F5C */  lwc1       $f0, %lo(D_800E6F50 + 0xC)($at)
/* 140880 8019A810 3C01801D */  lui        $at, %hi(D_801CDBF0_ovl7)
/* 140884 8019A814 C424DBF0 */  lwc1       $f4, %lo(D_801CDBF0_ovl7)($at)
/* 140888 8019A818 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 14088C 8019A81C 3C03800E */  lui        $v1, %hi(gEntitiesNextPosXArray)
/* 140890 8019A820 46002032 */  c.eq.s     $f4, $f0
/* 140894 8019A824 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 140898 8019A828 4502002B */  bc1fl      .L8019A8D8_ovl7
/* 14089C 8019A82C 460C003C */   c.lt.s    $f0, $f12
/* 1408A0 8019A830 C4C80000 */  lwc1       $f8, 0x0($a2)
/* 1408A4 8019A834 44815000 */  mtc1       $at, $f10
/* 1408A8 8019A838 3C07800E */  lui        $a3, %hi(gEntitiesNextPosZArray)
/* 1408AC 8019A83C 24E72950 */  addiu      $a3, $a3, %lo(gEntitiesNextPosZArray)
/* 1408B0 8019A840 460A4400 */  add.s      $f16, $f8, $f10
/* 1408B4 8019A844 246325D0 */  addiu      $v1, $v1, %lo(gEntitiesNextPosXArray)
/* 1408B8 8019A848 C4660000 */  lwc1       $f6, 0x0($v1)
/* 1408BC 8019A84C C4F20000 */  lwc1       $f18, 0x0($a3)
/* 1408C0 8019A850 E7B00038 */  swc1       $f16, 0x38($sp)
/* 1408C4 8019A854 E7A60034 */  swc1       $f6, 0x34($sp)
/* 1408C8 8019A858 E7B2003C */  swc1       $f18, 0x3C($sp)
/* 1408CC 8019A85C 8C580000 */  lw         $t8, 0x0($v0)
/* 1408D0 8019A860 27A40034 */  addiu      $a0, $sp, 0x34
/* 1408D4 8019A864 27A50028 */  addiu      $a1, $sp, 0x28
/* 1408D8 8019A868 0018C880 */  sll        $t9, $t8, 2
/* 1408DC 8019A86C 00794021 */  addu       $t0, $v1, $t9
/* 1408E0 8019A870 C5040000 */  lwc1       $f4, 0x0($t0)
/* 1408E4 8019A874 E7A40028 */  swc1       $f4, 0x28($sp)
/* 1408E8 8019A878 8C490000 */  lw         $t1, 0x0($v0)
/* 1408EC 8019A87C 00095080 */  sll        $t2, $t1, 2
/* 1408F0 8019A880 00CA5821 */  addu       $t3, $a2, $t2
/* 1408F4 8019A884 C5660000 */  lwc1       $f6, 0x0($t3)
/* 1408F8 8019A888 E7A6002C */  swc1       $f6, 0x2C($sp)
/* 1408FC 8019A88C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 140900 8019A890 000C6880 */  sll        $t5, $t4, 2
/* 140904 8019A894 00ED7021 */  addu       $t6, $a3, $t5
/* 140908 8019A898 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 14090C 8019A89C E7AC0040 */  swc1       $f12, 0x40($sp)
/* 140910 8019A8A0 0C029157 */  jal        vec3_dist_square
/* 140914 8019A8A4 E7A80030 */   swc1      $f8, 0x30($sp)
/* 140918 8019A8A8 C7AC0040 */  lwc1       $f12, 0x40($sp)
/* 14091C 8019A8AC 00001825 */  or         $v1, $zero, $zero
/* 140920 8019A8B0 460C6282 */  mul.s      $f10, $f12, $f12
/* 140924 8019A8B4 460A003C */  c.lt.s     $f0, $f10
/* 140928 8019A8B8 00000000 */  nop
/* 14092C 8019A8BC 45000003 */  bc1f       .L8019A8CC_ovl7
/* 140930 8019A8C0 00000000 */   nop
/* 140934 8019A8C4 1000000A */  b          .L8019A8F0_ovl7
/* 140938 8019A8C8 24020001 */   addiu     $v0, $zero, 0x1
.L8019A8CC_ovl7:
/* 14093C 8019A8CC 10000008 */  b          .L8019A8F0_ovl7
/* 140940 8019A8D0 00601025 */   or        $v0, $v1, $zero
/* 140944 8019A8D4 460C003C */  c.lt.s     $f0, $f12
.L8019A8D8_ovl7:
/* 140948 8019A8D8 00001825 */  or         $v1, $zero, $zero
/* 14094C 8019A8DC 45000003 */  bc1f       .L8019A8EC_ovl7
/* 140950 8019A8E0 00000000 */   nop
/* 140954 8019A8E4 10000001 */  b          .L8019A8EC_ovl7
/* 140958 8019A8E8 24030001 */   addiu     $v1, $zero, 0x1
.L8019A8EC_ovl7:
/* 14095C 8019A8EC 00601025 */  or         $v0, $v1, $zero
.L8019A8F0_ovl7:
/* 140960 8019A8F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 140964 8019A8F4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 140968 8019A8F8 03E00008 */  jr         $ra
/* 14096C 8019A8FC 00000000 */   nop
