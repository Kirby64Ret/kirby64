glabel func_801B3C54_ovl7
/* 159CC4 801B3C54 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 159CC8 801B3C58 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 159CCC 801B3C5C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 159CD0 801B3C60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 159CD4 801B3C64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 159CD8 801B3C68 8DCF0000 */  lw         $t7, 0x0($t6)
/* 159CDC 801B3C6C 3C03800E */  lui        $v1, %hi(D_800DE350)
/* 159CE0 801B3C70 2463E350 */  addiu      $v1, $v1, %lo(D_800DE350)
/* 159CE4 801B3C74 000FC080 */  sll        $t8, $t7, 2
/* 159CE8 801B3C78 0078C821 */  addu       $t9, $v1, $t8
/* 159CEC 801B3C7C 8F280000 */  lw         $t0, 0x0($t9)
/* 159CF0 801B3C80 3C01801D */  lui        $at, %hi(D_801CE31C_ovl7)
/* 159CF4 801B3C84 C422E31C */  lwc1       $f2, %lo(D_801CE31C_ovl7)($at)
/* 159CF8 801B3C88 8D09003C */  lw         $t1, 0x3C($t0)
/* 159CFC 801B3C8C 3C01801D */  lui        $at, %hi(D_801CE320_ovl7)
/* 159D00 801B3C90 C426E320 */  lwc1       $f6, %lo(D_801CE320_ovl7)($at)
/* 159D04 801B3C94 8D220010 */  lw         $v0, 0x10($t1)
/* 159D08 801B3C98 C4440030 */  lwc1       $f4, 0x30($v0)
/* 159D0C 801B3C9C 46062200 */  add.s      $f8, $f4, $f6
/* 159D10 801B3CA0 E4480030 */  swc1       $f8, 0x30($v0)
/* 159D14 801B3CA4 8CAA0000 */  lw         $t2, 0x0($a1)
/* 159D18 801B3CA8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 159D1C 801B3CAC 000B6080 */  sll        $t4, $t3, 2
/* 159D20 801B3CB0 006C6821 */  addu       $t5, $v1, $t4
/* 159D24 801B3CB4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 159D28 801B3CB8 8DCF003C */  lw         $t7, 0x3C($t6)
/* 159D2C 801B3CBC 8DE20010 */  lw         $v0, 0x10($t7)
/* 159D30 801B3CC0 C4400030 */  lwc1       $f0, 0x30($v0)
/* 159D34 801B3CC4 4600103E */  c.le.s     $f2, $f0
/* 159D38 801B3CC8 00000000 */  nop
/* 159D3C 801B3CCC 45000003 */  bc1f       .L801B3CDC_ovl7
/* 159D40 801B3CD0 00000000 */   nop
/* 159D44 801B3CD4 46020281 */  sub.s      $f10, $f0, $f2
/* 159D48 801B3CD8 E44A0030 */  swc1       $f10, 0x30($v0)
.L801B3CDC_ovl7:
/* 159D4C 801B3CDC 0C06B210 */  jal        func_801AC840_ovl7
/* 159D50 801B3CE0 00000000 */   nop
/* 159D54 801B3CE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 159D58 801B3CE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 159D5C 801B3CEC 03E00008 */  jr         $ra
/* 159D60 801B3CF0 00000000 */   nop
