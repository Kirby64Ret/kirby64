glabel func_801BDBFC_ovl7
/* 163C6C 801BDBFC 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 163C70 801BDC00 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 163C74 801BDC04 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 163C78 801BDC08 AFBF0024 */  sw         $ra, 0x24($sp)
/* 163C7C 801BDC0C AFB30020 */  sw         $s3, 0x20($sp)
/* 163C80 801BDC10 AFB2001C */  sw         $s2, 0x1C($sp)
/* 163C84 801BDC14 AFB10018 */  sw         $s1, 0x18($sp)
/* 163C88 801BDC18 AFB00014 */  sw         $s0, 0x14($sp)
/* 163C8C 801BDC1C 8CC20000 */  lw         $v0, 0x0($a2)
/* 163C90 801BDC20 3C0E800F */  lui        $t6, %hi(D_800E8E60)
/* 163C94 801BDC24 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 163C98 801BDC28 00021080 */  sll        $v0, $v0, 2
/* 163C9C 801BDC2C 01C27021 */  addu       $t6, $t6, $v0
/* 163CA0 801BDC30 8DCE8E60 */  lw         $t6, %lo(D_800E8E60)($t6)
/* 163CA4 801BDC34 00621821 */  addu       $v1, $v1, $v0
/* 163CA8 801BDC38 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 163CAC 801BDC3C 15C00005 */  bnez       $t6, .L801BDC54_ovl7
/* 163CB0 801BDC40 3C0F800E */   lui       $t7, %hi(D_800E5F90)
/* 163CB4 801BDC44 01E27821 */  addu       $t7, $t7, $v0
/* 163CB8 801BDC48 8DEF5F90 */  lw         $t7, %lo(D_800E5F90)($t7)
/* 163CBC 801BDC4C 2401FFFF */  addiu      $at, $zero, -0x1
/* 163CC0 801BDC50 15E10005 */  bne        $t7, $at, .L801BDC68_ovl7
.L801BDC54_ovl7:
/* 163CC4 801BDC54 24180001 */   addiu     $t8, $zero, 0x1
/* 163CC8 801BDC58 0C068FA0 */  jal        func_801A3E80_ovl7
/* 163CCC 801BDC5C A0780040 */   sb        $t8, 0x40($v1)
/* 163CD0 801BDC60 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 163CD4 801BDC64 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
.L801BDC68_ovl7:
/* 163CD8 801BDC68 00002025 */  or         $a0, $zero, $zero
/* 163CDC 801BDC6C 0C02BEED */  jal        func_800AFBB4
/* 163CE0 801BDC70 00C02825 */   or        $a1, $a2, $zero
/* 163CE4 801BDC74 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 163CE8 801BDC78 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 163CEC 801BDC7C 3C014270 */  lui        $at, (0x42700000 >> 16)
/* 163CF0 801BDC80 44810000 */  mtc1       $at, $f0
/* 163CF4 801BDC84 8CD90000 */  lw         $t9, 0x0($a2)
/* 163CF8 801BDC88 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 163CFC 801BDC8C 27B0005C */  addiu      $s0, $sp, 0x5C
/* 163D00 801BDC90 00194080 */  sll        $t0, $t9, 2
/* 163D04 801BDC94 00280821 */  addu       $at, $at, $t0
/* 163D08 801BDC98 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 163D0C 801BDC9C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 163D10 801BDCA0 27B30044 */  addiu      $s3, $sp, 0x44
/* 163D14 801BDCA4 E7A40038 */  swc1       $f4, 0x38($sp)
/* 163D18 801BDCA8 C7A60038 */  lwc1       $f6, 0x38($sp)
/* 163D1C 801BDCAC 02602825 */  or         $a1, $s3, $zero
/* 163D20 801BDCB0 02002025 */  or         $a0, $s0, $zero
/* 163D24 801BDCB4 E7A60044 */  swc1       $f6, 0x44($sp)
/* 163D28 801BDCB8 E7A60050 */  swc1       $f6, 0x50($sp)
/* 163D2C 801BDCBC E7A6005C */  swc1       $f6, 0x5C($sp)
/* 163D30 801BDCC0 8CC90000 */  lw         $t1, 0x0($a2)
/* 163D34 801BDCC4 46003100 */  add.s      $f4, $f6, $f0
/* 163D38 801BDCC8 00095080 */  sll        $t2, $t1, 2
/* 163D3C 801BDCCC 002A0821 */  addu       $at, $at, $t2
/* 163D40 801BDCD0 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 163D44 801BDCD4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 163D48 801BDCD8 E7A8003C */  swc1       $f8, 0x3C($sp)
/* 163D4C 801BDCDC C7AA003C */  lwc1       $f10, 0x3C($sp)
/* 163D50 801BDCE0 E7AA0048 */  swc1       $f10, 0x48($sp)
/* 163D54 801BDCE4 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 163D58 801BDCE8 E7AA0060 */  swc1       $f10, 0x60($sp)
/* 163D5C 801BDCEC 8CCB0000 */  lw         $t3, 0x0($a2)
/* 163D60 801BDCF0 46005200 */  add.s      $f8, $f10, $f0
/* 163D64 801BDCF4 E7A40050 */  swc1       $f4, 0x50($sp)
/* 163D68 801BDCF8 000B6080 */  sll        $t4, $t3, 2
/* 163D6C 801BDCFC 002C0821 */  addu       $at, $at, $t4
/* 163D70 801BDD00 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* 163D74 801BDD04 E7A80048 */  swc1       $f8, 0x48($sp)
/* 163D78 801BDD08 E7B00040 */  swc1       $f16, 0x40($sp)
/* 163D7C 801BDD0C C7B20040 */  lwc1       $f18, 0x40($sp)
/* 163D80 801BDD10 46009400 */  add.s      $f16, $f18, $f0
/* 163D84 801BDD14 E7B2004C */  swc1       $f18, 0x4C($sp)
/* 163D88 801BDD18 E7B20058 */  swc1       $f18, 0x58($sp)
/* 163D8C 801BDD1C E7B20064 */  swc1       $f18, 0x64($sp)
/* 163D90 801BDD20 0C041309 */  jal        func_80104C24
/* 163D94 801BDD24 E7B00040 */   swc1      $f16, 0x40($sp)
/* 163D98 801BDD28 14400008 */  bnez       $v0, .L801BDD4C_ovl7
/* 163D9C 801BDD2C 27A50050 */   addiu     $a1, $sp, 0x50
/* 163DA0 801BDD30 0C041309 */  jal        func_80104C24
/* 163DA4 801BDD34 02002025 */   or        $a0, $s0, $zero
/* 163DA8 801BDD38 14400004 */  bnez       $v0, .L801BDD4C_ovl7
/* 163DAC 801BDD3C 27A50038 */   addiu     $a1, $sp, 0x38
/* 163DB0 801BDD40 0C041309 */  jal        func_80104C24
/* 163DB4 801BDD44 02002025 */   or        $a0, $s0, $zero
/* 163DB8 801BDD48 10400013 */  beqz       $v0, .L801BDD98_ovl7
.L801BDD4C_ovl7:
/* 163DBC 801BDD4C 27B10050 */   addiu     $s1, $sp, 0x50
.L801BDD50_ovl7:
/* 163DC0 801BDD50 27B20038 */  addiu      $s2, $sp, 0x38
/* 163DC4 801BDD54 0C002DAF */  jal        finish_current_thread
/* 163DC8 801BDD58 24040001 */   addiu     $a0, $zero, 0x1
/* 163DCC 801BDD5C 02002025 */  or         $a0, $s0, $zero
/* 163DD0 801BDD60 0C041309 */  jal        func_80104C24
/* 163DD4 801BDD64 02602825 */   or        $a1, $s3, $zero
/* 163DD8 801BDD68 5440FFF9 */  bnel       $v0, $zero, .L801BDD50_ovl7
/* 163DDC 801BDD6C 27B10050 */   addiu     $s1, $sp, 0x50
/* 163DE0 801BDD70 02002025 */  or         $a0, $s0, $zero
/* 163DE4 801BDD74 0C041309 */  jal        func_80104C24
/* 163DE8 801BDD78 02202825 */   or        $a1, $s1, $zero
/* 163DEC 801BDD7C 5440FFF4 */  bnel       $v0, $zero, .L801BDD50_ovl7
/* 163DF0 801BDD80 27B10050 */   addiu     $s1, $sp, 0x50
/* 163DF4 801BDD84 02002025 */  or         $a0, $s0, $zero
/* 163DF8 801BDD88 0C041309 */  jal        func_80104C24
/* 163DFC 801BDD8C 02402825 */   or        $a1, $s2, $zero
/* 163E00 801BDD90 5440FFEF */  bnel       $v0, $zero, .L801BDD50_ovl7
/* 163E04 801BDD94 27B10050 */   addiu     $s1, $sp, 0x50
.L801BDD98_ovl7:
/* 163E08 801BDD98 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 163E0C 801BDD9C 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 163E10 801BDDA0 0C02BEED */  jal        func_800AFBB4
/* 163E14 801BDDA4 24040001 */   addiu     $a0, $zero, 0x1
/* 163E18 801BDDA8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 163E1C 801BDDAC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 163E20 801BDDB0 3C0D800B */  lui        $t5, %hi(func_800B67A8)
/* 163E24 801BDDB4 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 163E28 801BDDB8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 163E2C 801BDDBC 25AD67A8 */  addiu      $t5, $t5, %lo(func_800B67A8)
/* 163E30 801BDDC0 000FC080 */  sll        $t8, $t7, 2
/* 163E34 801BDDC4 00380821 */  addu       $at, $at, $t8
/* 163E38 801BDDC8 0C068CA0 */  jal        func_801A3280_ovl7
/* 163E3C 801BDDCC AC2DEF90 */   sw        $t5, %lo(D_800DEF90)($at)
/* 163E40 801BDDD0 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 163E44 801BDDD4 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 163E48 801BDDD8 3C01800F */  lui        $at, %hi(D_800E8920)
/* 163E4C 801BDDDC 3C09801C */  lui        $t1, %hi(func_801BDEB0_ovl7)
/* 163E50 801BDDE0 8CD90000 */  lw         $t9, 0x0($a2)
/* 163E54 801BDDE4 2529DEB0 */  addiu      $t1, $t1, %lo(func_801BDEB0_ovl7)
/* 163E58 801BDDE8 3C0C800E */  lui        $t4, %hi(D_800E5F90)
/* 163E5C 801BDDEC 00194080 */  sll        $t0, $t9, 2
/* 163E60 801BDDF0 00280821 */  addu       $at, $at, $t0
/* 163E64 801BDDF4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 163E68 801BDDF8 8CCA0000 */  lw         $t2, 0x0($a2)
/* 163E6C 801BDDFC 3C01800E */  lui        $at, %hi(D_800DF150)
/* 163E70 801BDE00 3C040001 */  lui        $a0, (0x105F6 >> 16)
/* 163E74 801BDE04 000A5880 */  sll        $t3, $t2, 2
/* 163E78 801BDE08 002B0821 */  addu       $at, $at, $t3
/* 163E7C 801BDE0C AC29F150 */  sw         $t1, %lo(D_800DF150)($at)
/* 163E80 801BDE10 8CC20000 */  lw         $v0, 0x0($a2)
/* 163E84 801BDE14 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 163E88 801BDE18 348405F6 */  ori        $a0, $a0, (0x105F6 & 0xFFFF)
/* 163E8C 801BDE1C 00021080 */  sll        $v0, $v0, 2
/* 163E90 801BDE20 01826021 */  addu       $t4, $t4, $v0
/* 163E94 801BDE24 8D8C5F90 */  lw         $t4, %lo(D_800E5F90)($t4)
/* 163E98 801BDE28 00220821 */  addu       $at, $at, $v0
/* 163E9C 801BDE2C 448C3000 */  mtc1       $t4, $f6
/* 163EA0 801BDE30 00000000 */  nop
/* 163EA4 801BDE34 46803120 */  cvt.s.w    $f4, $f6
/* 163EA8 801BDE38 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
/* 163EAC 801BDE3C 8CC20000 */  lw         $v0, 0x0($a2)
/* 163EB0 801BDE40 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 163EB4 801BDE44 00021080 */  sll        $v0, $v0, 2
/* 163EB8 801BDE48 00220821 */  addu       $at, $at, $v0
/* 163EBC 801BDE4C C42A6BD0 */  lwc1       $f10, %lo(D_800E6BD0)($at)
/* 163EC0 801BDE50 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 163EC4 801BDE54 00220821 */  addu       $at, $at, $v0
/* 163EC8 801BDE58 E42AA8A0 */  swc1       $f10, %lo(D_800EA8A0)($at)
/* 163ECC 801BDE5C 8CC20000 */  lw         $v0, 0x0($a2)
/* 163ED0 801BDE60 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 163ED4 801BDE64 00021080 */  sll        $v0, $v0, 2
/* 163ED8 801BDE68 00220821 */  addu       $at, $at, $v0
/* 163EDC 801BDE6C C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 163EE0 801BDE70 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 163EE4 801BDE74 00220821 */  addu       $at, $at, $v0
/* 163EE8 801BDE78 0C02A806 */  jal        func_800AA018
/* 163EEC 801BDE7C E428AA60 */   swc1      $f8, %lo(D_800EAA60)($at)
/* 163EF0 801BDE80 3C040001 */  lui        $a0, (0x105F7 >> 16)
/* 163EF4 801BDE84 0C02A806 */  jal        func_800AA018
/* 163EF8 801BDE88 348405F7 */   ori       $a0, $a0, (0x105F7 & 0xFFFF)
/* 163EFC 801BDE8C 0C02BE85 */  jal        func_800AFA14
/* 163F00 801BDE90 00000000 */   nop
/* 163F04 801BDE94 8FBF0024 */  lw         $ra, 0x24($sp)
/* 163F08 801BDE98 8FB00014 */  lw         $s0, 0x14($sp)
/* 163F0C 801BDE9C 8FB10018 */  lw         $s1, 0x18($sp)
/* 163F10 801BDEA0 8FB2001C */  lw         $s2, 0x1C($sp)
/* 163F14 801BDEA4 8FB30020 */  lw         $s3, 0x20($sp)
/* 163F18 801BDEA8 03E00008 */  jr         $ra
/* 163F1C 801BDEAC 27BD0068 */   addiu     $sp, $sp, 0x68
