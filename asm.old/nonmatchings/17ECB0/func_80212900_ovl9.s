glabel func_80212900_ovl9
/* 1C0950 80212900 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C0954 80212904 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C0958 80212908 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C095C 8021290C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C0960 80212910 AFA40018 */  sw         $a0, 0x18($sp)
/* 1C0964 80212914 8DC20000 */  lw         $v0, 0x0($t6)
/* 1C0968 80212918 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1C096C 8021291C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C0970 80212920 00021080 */  sll        $v0, $v0, 2
/* 1C0974 80212924 00621821 */  addu       $v1, $v1, $v0
/* 1C0978 80212928 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1C097C 8021292C 00220821 */  addu       $at, $at, $v0
/* 1C0980 80212930 240F0003 */  addiu      $t7, $zero, 0x3
/* 1C0984 80212934 3C18801D */  lui        $t8, %hi(D_801CB470_ovl7)
/* 1C0988 80212938 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 1C098C 8021293C 2718B470 */  addiu      $t8, $t8, %lo(D_801CB470_ovl7)
/* 1C0990 80212940 0C02CD48 */  jal        func_800B3520
/* 1C0994 80212944 AC780098 */   sw        $t8, 0x98($v1)
/* 1C0998 80212948 0C02BE85 */  jal        func_800AFA14
/* 1C099C 8021294C 00000000 */   nop
/* 1C09A0 80212950 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C09A4 80212954 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C09A8 80212958 03E00008 */  jr         $ra
/* 1C09AC 8021295C 00000000 */   nop
