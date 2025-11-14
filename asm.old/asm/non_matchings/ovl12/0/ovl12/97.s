glabel func_801DFB34_ovl12 # 97
/* 004934 801DFB34 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 004938 801DFB38 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 00493C 801DFB3C 44802000 */  mtc1        $zero, $f4
/* 004940 801DFB40 3C04800E */  lui         $a0, %hi(D_800E6690)
/* 004944 801DFB44 8C4E0000 */  lw          $t6, 0x0($v0)
/* 004948 801DFB48 24846690 */  addiu       $a0, $a0, %lo(D_800E6690)
/* 00494C 801DFB4C 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 004950 801DFB50 000E7880 */  sll         $t7, $t6, 2
/* 004954 801DFB54 008FC021 */  addu        $t8, $a0, $t7
/* 004958 801DFB58 E7040000 */  swc1        $f4, 0x0($t8)
/* 00495C 801DFB5C 8C430000 */  lw          $v1, 0x0($v0)
/* 004960 801DFB60 240A0001 */  addiu       $t2, $zero, 0x1
/* 004964 801DFB64 00031880 */  sll         $v1, $v1, 2
/* 004968 801DFB68 0083C821 */  addu        $t9, $a0, $v1
/* 00496C 801DFB6C C7260000 */  lwc1        $f6, 0x0($t9)
/* 004970 801DFB70 00230821 */  addu        $at, $at, $v1
/* 004974 801DFB74 E42664D0 */  swc1        $f6, %lo(D_800E64D0)($at)
/* 004978 801DFB78 8C480000 */  lw          $t0, 0x0($v0)
/* 00497C 801DFB7C 3C01801E */  lui         $at, %hi(D_801E2DAC_ovl12)
/* 004980 801DFB80 C4282DAC */  lwc1        $f8, %lo(D_801E2DAC_ovl12)($at)
/* 004984 801DFB84 3C01800E */  lui         $at, %hi(D_800E6850)
/* 004988 801DFB88 00084880 */  sll         $t1, $t0, 2
/* 00498C 801DFB8C 00290821 */  addu        $at, $at, $t1
/* 004990 801DFB90 E4286850 */  swc1        $f8, %lo(D_800E6850)($at)
/* 004994 801DFB94 8C430000 */  lw          $v1, 0x0($v0)
/* 004998 801DFB98 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 00499C 801DFB9C 00031880 */  sll         $v1, $v1, 2
/* 0049A0 801DFBA0 00230821 */  addu        $at, $at, $v1
/* 0049A4 801DFBA4 C42A25D0 */  lwc1        $f10, %lo(gEntitiesNextPosXArray)($at)
/* 0049A8 801DFBA8 3C01800E */  lui         $at, %hi(D_800E2090)
/* 0049AC 801DFBAC 00230821 */  addu        $at, $at, $v1
/* 0049B0 801DFBB0 E42A2090 */  swc1        $f10, %lo(D_800E2090)($at)
/* 0049B4 801DFBB4 8C430000 */  lw          $v1, 0x0($v0)
/* 0049B8 801DFBB8 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 0049BC 801DFBBC 00031880 */  sll         $v1, $v1, 2
/* 0049C0 801DFBC0 00230821 */  addu        $at, $at, $v1
/* 0049C4 801DFBC4 C4302950 */  lwc1        $f16, %lo(gEntitiesNextPosZArray)($at)
/* 0049C8 801DFBC8 3C01800E */  lui         $at, %hi(D_800E2410)
/* 0049CC 801DFBCC 00230821 */  addu        $at, $at, $v1
/* 0049D0 801DFBD0 E4302410 */  swc1        $f16, %lo(D_800E2410)($at)
/* 0049D4 801DFBD4 8C4B0000 */  lw          $t3, 0x0($v0)
/* 0049D8 801DFBD8 3C01800F */  lui         $at, %hi(D_800E9560)
/* 0049DC 801DFBDC 000B6080 */  sll         $t4, $t3, 2
/* 0049E0 801DFBE0 002C0821 */  addu        $at, $at, $t4
/* 0049E4 801DFBE4 03E00008 */  jr          $ra
/* 0049E8 801DFBE8 AC2A9560 */   sw         $t2, %lo(D_800E9560)($at)
.type func_801DFB34_ovl12, @function
.size func_801DFB34_ovl12, . - func_801DFB34_ovl12

.section .late_rodata
glabel D_801E2DAC_ovl12
/* 007BAC 801E2DAC */ .word 0x477FFF00
