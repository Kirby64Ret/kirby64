glabel func_80200908_ovl9
/* 1AE958 80200908 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1AE95C 8020090C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1AE960 80200910 AFA40000 */  sw         $a0, 0x0($sp)
/* 1AE964 80200914 3C01800F */  lui        $at, %hi(D_800EB160)
/* 1AE968 80200918 8DC30000 */  lw         $v1, 0x0($t6)
/* 1AE96C 8020091C 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1AE970 80200920 00002025 */  or         $a0, $zero, $zero
/* 1AE974 80200924 00031880 */  sll        $v1, $v1, 2
/* 1AE978 80200928 00230821 */  addu       $at, $at, $v1
/* 1AE97C 8020092C C420B160 */  lwc1       $f0, %lo(D_800EB160)($at)
/* 1AE980 80200930 3C018022 */  lui        $at, %hi(D_8021D9F0_ovl9)
/* 1AE984 80200934 C424D9F0 */  lwc1       $f4, %lo(D_8021D9F0_ovl9)($at)
/* 1AE988 80200938 00431021 */  addu       $v0, $v0, $v1
/* 1AE98C 8020093C 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1AE990 80200940 4604003C */  c.lt.s     $f0, $f4
/* 1AE994 80200944 3C018022 */  lui        $at, %hi(D_8021D9F4_ovl9)
/* 1AE998 80200948 4500000B */  bc1f       .L80200978_ovl9
/* 1AE99C 8020094C 00000000 */   nop
/* 1AE9A0 80200950 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1AE9A4 80200954 00230821 */  addu       $at, $at, $v1
/* 1AE9A8 80200958 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 1AE9AC 8020095C C4460004 */  lwc1       $f6, 0x4($v0)
/* 1AE9B0 80200960 4606403E */  c.le.s     $f8, $f6
/* 1AE9B4 80200964 00000000 */  nop
/* 1AE9B8 80200968 45000045 */  bc1f       .L80200A80_ovl9
/* 1AE9BC 8020096C 00000000 */   nop
/* 1AE9C0 80200970 03E00008 */  jr         $ra
/* 1AE9C4 80200974 24020001 */   addiu     $v0, $zero, 0x1
.L80200978_ovl9:
/* 1AE9C8 80200978 C42AD9F4 */  lwc1       $f10, %lo(D_8021D9F4_ovl9)($at)
/* 1AE9CC 8020097C 3C18800E */  lui        $t8, %hi(D_800E5F90)
/* 1AE9D0 80200980 0303C021 */  addu       $t8, $t8, $v1
/* 1AE9D4 80200984 460A003C */  c.lt.s     $f0, $f10
/* 1AE9D8 80200988 3C018022 */  lui        $at, %hi(D_8021D9F8_ovl9)
/* 1AE9DC 8020098C 4500000F */  bc1f       .L802009CC_ovl9
/* 1AE9E0 80200990 00000000 */   nop
/* 1AE9E4 80200994 8C4F002C */  lw         $t7, 0x2C($v0)
/* 1AE9E8 80200998 8F185F90 */  lw         $t8, %lo(D_800E5F90)($t8)
/* 1AE9EC 8020099C 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 1AE9F0 802009A0 00230821 */  addu       $at, $at, $v1
/* 1AE9F4 802009A4 15F80036 */  bne        $t7, $t8, .L80200A80_ovl9
/* 1AE9F8 802009A8 00000000 */   nop
/* 1AE9FC 802009AC C4306BD0 */  lwc1       $f16, %lo(D_800E6BD0)($at)
/* 1AEA00 802009B0 C4520028 */  lwc1       $f18, 0x28($v0)
/* 1AEA04 802009B4 4610903E */  c.le.s     $f18, $f16
/* 1AEA08 802009B8 00000000 */  nop
/* 1AEA0C 802009BC 45000030 */  bc1f       .L80200A80_ovl9
/* 1AEA10 802009C0 00000000 */   nop
/* 1AEA14 802009C4 03E00008 */  jr         $ra
/* 1AEA18 802009C8 24020001 */   addiu     $v0, $zero, 0x1
.L802009CC_ovl9:
/* 1AEA1C 802009CC C424D9F8 */  lwc1       $f4, %lo(D_8021D9F8_ovl9)($at)
/* 1AEA20 802009D0 3C018022 */  lui        $at, %hi(D_8021D9FC_ovl9)
/* 1AEA24 802009D4 4604003C */  c.lt.s     $f0, $f4
/* 1AEA28 802009D8 00000000 */  nop
/* 1AEA2C 802009DC 4500000B */  bc1f       .L80200A0C_ovl9
/* 1AEA30 802009E0 00000000 */   nop
/* 1AEA34 802009E4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1AEA38 802009E8 00230821 */  addu       $at, $at, $v1
/* 1AEA3C 802009EC C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1AEA40 802009F0 C4480004 */  lwc1       $f8, 0x4($v0)
/* 1AEA44 802009F4 4606403E */  c.le.s     $f8, $f6
/* 1AEA48 802009F8 00000000 */  nop
/* 1AEA4C 802009FC 45000020 */  bc1f       .L80200A80_ovl9
/* 1AEA50 80200A00 00000000 */   nop
/* 1AEA54 80200A04 03E00008 */  jr         $ra
/* 1AEA58 80200A08 24020001 */   addiu     $v0, $zero, 0x1
.L80200A0C_ovl9:
/* 1AEA5C 80200A0C C42AD9FC */  lwc1       $f10, %lo(D_8021D9FC_ovl9)($at)
/* 1AEA60 80200A10 3C08800E */  lui        $t0, %hi(D_800E5F90)
/* 1AEA64 80200A14 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1AEA68 80200A18 460A003C */  c.lt.s     $f0, $f10
/* 1AEA6C 80200A1C 01034021 */  addu       $t0, $t0, $v1
/* 1AEA70 80200A20 00230821 */  addu       $at, $at, $v1
/* 1AEA74 80200A24 45020010 */  bc1fl      .L80200A68_ovl9
/* 1AEA78 80200A28 C4440004 */   lwc1      $f4, 0x4($v0)
/* 1AEA7C 80200A2C 8C59002C */  lw         $t9, 0x2C($v0)
/* 1AEA80 80200A30 8D085F90 */  lw         $t0, %lo(D_800E5F90)($t0)
/* 1AEA84 80200A34 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 1AEA88 80200A38 00230821 */  addu       $at, $at, $v1
/* 1AEA8C 80200A3C 17280010 */  bne        $t9, $t0, .L80200A80_ovl9
/* 1AEA90 80200A40 00000000 */   nop
/* 1AEA94 80200A44 C4500028 */  lwc1       $f16, 0x28($v0)
/* 1AEA98 80200A48 C4326BD0 */  lwc1       $f18, %lo(D_800E6BD0)($at)
/* 1AEA9C 80200A4C 4610903E */  c.le.s     $f18, $f16
/* 1AEAA0 80200A50 00000000 */  nop
/* 1AEAA4 80200A54 4500000A */  bc1f       .L80200A80_ovl9
/* 1AEAA8 80200A58 00000000 */   nop
/* 1AEAAC 80200A5C 03E00008 */  jr         $ra
/* 1AEAB0 80200A60 24020001 */   addiu     $v0, $zero, 0x1
/* 1AEAB4 80200A64 C4440004 */  lwc1       $f4, 0x4($v0)
.L80200A68_ovl9:
/* 1AEAB8 80200A68 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1AEABC 80200A6C 4604303E */  c.le.s     $f6, $f4
/* 1AEAC0 80200A70 00000000 */  nop
/* 1AEAC4 80200A74 45000002 */  bc1f       .L80200A80_ovl9
/* 1AEAC8 80200A78 00000000 */   nop
/* 1AEACC 80200A7C 24040001 */  addiu      $a0, $zero, 0x1
.L80200A80_ovl9:
/* 1AEAD0 80200A80 03E00008 */  jr         $ra
/* 1AEAD4 80200A84 00801025 */   or        $v0, $a0, $zero
