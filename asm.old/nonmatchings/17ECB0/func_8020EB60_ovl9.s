glabel func_8020EB60_ovl9
/* 1BCBB0 8020EB60 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 1BCBB4 8020EB64 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* 1BCBB8 8020EB68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BCBBC 8020EB6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BCBC0 8020EB70 AFA40018 */  sw         $a0, 0x18($sp)
/* 1BCBC4 8020EB74 8CEE0000 */  lw         $t6, 0x0($a3)
/* 1BCBC8 8020EB78 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1BCBCC 8020EB7C 44806000 */  mtc1       $zero, $f12
/* 1BCBD0 8020EB80 000E7880 */  sll        $t7, $t6, 2
/* 1BCBD4 8020EB84 002F0821 */  addu       $at, $at, $t7
/* 1BCBD8 8020EB88 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1BCBDC 8020EB8C 8CF80000 */  lw         $t8, 0x0($a3)
/* 1BCBE0 8020EB90 3C01800F */  lui        $at, %hi(D_800EB160)
/* 1BCBE4 8020EB94 3C05800F */  lui        $a1, %hi(D_800EB320)
/* 1BCBE8 8020EB98 0018C880 */  sll        $t9, $t8, 2
/* 1BCBEC 8020EB9C 00390821 */  addu       $at, $at, $t9
/* 1BCBF0 8020EBA0 E42CB160 */  swc1       $f12, %lo(D_800EB160)($at)
/* 1BCBF4 8020EBA4 8CEA0000 */  lw         $t2, 0x0($a3)
/* 1BCBF8 8020EBA8 24A5B320 */  addiu      $a1, $a1, %lo(D_800EB320)
/* 1BCBFC 8020EBAC 3C09800E */  lui        $t1, %hi(D_800E7880)
/* 1BCC00 8020EBB0 000A5880 */  sll        $t3, $t2, 2
/* 1BCC04 8020EBB4 00AB6021 */  addu       $t4, $a1, $t3
/* 1BCC08 8020EBB8 E58C0000 */  swc1       $f12, 0x0($t4)
/* 1BCC0C 8020EBBC 8CE80000 */  lw         $t0, 0x0($a3)
/* 1BCC10 8020EBC0 25297880 */  addiu      $t1, $t1, %lo(D_800E7880)
/* 1BCC14 8020EBC4 24010001 */  addiu      $at, $zero, 0x1
/* 1BCC18 8020EBC8 01286821 */  addu       $t5, $t1, $t0
/* 1BCC1C 8020EBCC 91A20000 */  lbu        $v0, 0x0($t5)
/* 1BCC20 8020EBD0 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* 1BCC24 8020EBD4 00081880 */  sll        $v1, $t0, 2
/* 1BCC28 8020EBD8 14410004 */  bne        $v0, $at, .L8020EBEC_ovl9
/* 1BCC2C 8020EBDC 01C37021 */   addu      $t6, $t6, $v1
/* 1BCC30 8020EBE0 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* 1BCC34 8020EBE4 15C00003 */  bnez       $t6, .L8020EBF4_ovl9
/* 1BCC38 8020EBE8 00000000 */   nop
.L8020EBEC_ovl9:
/* 1BCC3C 8020EBEC 14400034 */  bnez       $v0, .L8020ECC0_ovl9
/* 1BCC40 8020EBF0 00081880 */   sll       $v1, $t0, 2
.L8020EBF4_ovl9:
/* 1BCC44 8020EBF4 3C04800E */  lui        $a0, %hi(gEntitiesAngleZArray)
/* 1BCC48 8020EBF8 24844390 */  addiu      $a0, $a0, %lo(gEntitiesAngleZArray)
/* 1BCC4C 8020EBFC 3C018022 */  lui        $at, %hi(D_8021DC08_ovl9)
/* 1BCC50 8020EC00 00831021 */  addu       $v0, $a0, $v1
/* 1BCC54 8020EC04 C422DC08 */  lwc1       $f2, %lo(D_8021DC08_ovl9)($at)
/* 1BCC58 8020EC08 C4400000 */  lwc1       $f0, 0x0($v0)
/* 1BCC5C 8020EC0C 4600103C */  c.lt.s     $f2, $f0
/* 1BCC60 8020EC10 00000000 */  nop
/* 1BCC64 8020EC14 4502000C */  bc1fl      .L8020EC48_ovl9
/* 1BCC68 8020EC18 460C003C */   c.lt.s    $f0, $f12
/* 1BCC6C 8020EC1C 46020101 */  sub.s      $f4, $f0, $f2
.L8020EC20_ovl9:
/* 1BCC70 8020EC20 E4440000 */  swc1       $f4, 0x0($v0)
/* 1BCC74 8020EC24 8CE30000 */  lw         $v1, 0x0($a3)
/* 1BCC78 8020EC28 00031880 */  sll        $v1, $v1, 2
/* 1BCC7C 8020EC2C 00831021 */  addu       $v0, $a0, $v1
/* 1BCC80 8020EC30 C4400000 */  lwc1       $f0, 0x0($v0)
/* 1BCC84 8020EC34 4600103C */  c.lt.s     $f2, $f0
/* 1BCC88 8020EC38 00000000 */  nop
/* 1BCC8C 8020EC3C 4503FFF8 */  bc1tl      .L8020EC20_ovl9
/* 1BCC90 8020EC40 46020101 */   sub.s     $f4, $f0, $f2
/* 1BCC94 8020EC44 460C003C */  c.lt.s     $f0, $f12
.L8020EC48_ovl9:
/* 1BCC98 8020EC48 00000000 */  nop
/* 1BCC9C 8020EC4C 4502000C */  bc1fl      .L8020EC80_ovl9
/* 1BCCA0 8020EC50 46001301 */   sub.s     $f12, $f2, $f0
/* 1BCCA4 8020EC54 46020180 */  add.s      $f6, $f0, $f2
.L8020EC58_ovl9:
/* 1BCCA8 8020EC58 E4460000 */  swc1       $f6, 0x0($v0)
/* 1BCCAC 8020EC5C 8CE30000 */  lw         $v1, 0x0($a3)
/* 1BCCB0 8020EC60 00031880 */  sll        $v1, $v1, 2
/* 1BCCB4 8020EC64 00831021 */  addu       $v0, $a0, $v1
/* 1BCCB8 8020EC68 C4400000 */  lwc1       $f0, 0x0($v0)
/* 1BCCBC 8020EC6C 460C003C */  c.lt.s     $f0, $f12
/* 1BCCC0 8020EC70 00000000 */  nop
/* 1BCCC4 8020EC74 4503FFF8 */  bc1tl      .L8020EC58_ovl9
/* 1BCCC8 8020EC78 46020180 */   add.s     $f6, $f0, $f2
/* 1BCCCC 8020EC7C 46001301 */  sub.s      $f12, $f2, $f0
.L8020EC80_ovl9:
/* 1BCCD0 8020EC80 3C02800F */  lui        $v0, %hi(D_800EA6E0)
/* 1BCCD4 8020EC84 2442A6E0 */  addiu      $v0, $v0, %lo(D_800EA6E0)
/* 1BCCD8 8020EC88 00437821 */  addu       $t7, $v0, $v1
/* 1BCCDC 8020EC8C E5EC0000 */  swc1       $f12, 0x0($t7)
/* 1BCCE0 8020EC90 8CF80000 */  lw         $t8, 0x0($a3)
/* 1BCCE4 8020EC94 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1BCCE8 8020EC98 44814000 */  mtc1       $at, $f8
/* 1BCCEC 8020EC9C 0018C880 */  sll        $t9, $t8, 2
/* 1BCCF0 8020ECA0 00B95021 */  addu       $t2, $a1, $t9
/* 1BCCF4 8020ECA4 E54C0000 */  swc1       $f12, 0x0($t2)
/* 1BCCF8 8020ECA8 8CEB0000 */  lw         $t3, 0x0($a3)
/* 1BCCFC 8020ECAC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1BCD00 8020ECB0 000B6080 */  sll        $t4, $t3, 2
/* 1BCD04 8020ECB4 002C0821 */  addu       $at, $at, $t4
/* 1BCD08 8020ECB8 1000000F */  b          .L8020ECF8_ovl9
/* 1BCD0C 8020ECBC E4286A10 */   swc1      $f8, %lo(D_800E6A10)($at)
.L8020ECC0_ovl9:
/* 1BCD10 8020ECC0 3C018022 */  lui        $at, %hi(D_8021DC0C_ovl9)
/* 1BCD14 8020ECC4 C42ADC0C */  lwc1       $f10, %lo(D_8021DC0C_ovl9)($at)
/* 1BCD18 8020ECC8 3C02800F */  lui        $v0, %hi(D_800EA6E0)
/* 1BCD1C 8020ECCC 2442A6E0 */  addiu      $v0, $v0, %lo(D_800EA6E0)
/* 1BCD20 8020ECD0 00436821 */  addu       $t5, $v0, $v1
/* 1BCD24 8020ECD4 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 1BCD28 8020ECD8 8CE30000 */  lw         $v1, 0x0($a3)
/* 1BCD2C 8020ECDC 3C04800E */  lui        $a0, %hi(gEntitiesAngleZArray)
/* 1BCD30 8020ECE0 24844390 */  addiu      $a0, $a0, %lo(gEntitiesAngleZArray)
/* 1BCD34 8020ECE4 00031880 */  sll        $v1, $v1, 2
/* 1BCD38 8020ECE8 00437021 */  addu       $t6, $v0, $v1
/* 1BCD3C 8020ECEC C5D00000 */  lwc1       $f16, 0x0($t6)
/* 1BCD40 8020ECF0 00A37821 */  addu       $t7, $a1, $v1
/* 1BCD44 8020ECF4 E5F00000 */  swc1       $f16, 0x0($t7)
.L8020ECF8_ovl9:
/* 1BCD48 8020ECF8 8CE80000 */  lw         $t0, 0x0($a3)
/* 1BCD4C 8020ECFC 240E0008 */  addiu      $t6, $zero, 0x8
/* 1BCD50 8020ED00 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1BCD54 8020ED04 0128C021 */  addu       $t8, $t1, $t0
/* 1BCD58 8020ED08 93190000 */  lbu        $t9, 0x0($t8)
/* 1BCD5C 8020ED0C 24050002 */  addiu      $a1, $zero, 0x2
/* 1BCD60 8020ED10 5320000C */  beql       $t9, $zero, .L8020ED44_ovl9
/* 1BCD64 8020ED14 00087880 */   sll       $t7, $t0, 2
/* 1BCD68 8020ED18 44809000 */  mtc1       $zero, $f18
/* 1BCD6C 8020ED1C 00085080 */  sll        $t2, $t0, 2
/* 1BCD70 8020ED20 008A5821 */  addu       $t3, $a0, $t2
/* 1BCD74 8020ED24 E5720000 */  swc1       $f18, 0x0($t3)
/* 1BCD78 8020ED28 8CEC0000 */  lw         $t4, 0x0($a3)
/* 1BCD7C 8020ED2C 000C6880 */  sll        $t5, $t4, 2
/* 1BCD80 8020ED30 008D1021 */  addu       $v0, $a0, $t5
/* 1BCD84 8020ED34 C4440000 */  lwc1       $f4, 0x0($v0)
/* 1BCD88 8020ED38 E4440000 */  swc1       $f4, 0x0($v0)
/* 1BCD8C 8020ED3C 8CE80000 */  lw         $t0, 0x0($a3)
/* 1BCD90 8020ED40 00087880 */  sll        $t7, $t0, 2
.L8020ED44_ovl9:
/* 1BCD94 8020ED44 002F0821 */  addu       $at, $at, $t7
/* 1BCD98 8020ED48 AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
/* 1BCD9C 8020ED4C 8CF80000 */  lw         $t8, 0x0($a3)
/* 1BCDA0 8020ED50 3C068022 */  lui        $a2, %hi(D_8021CAC8_ovl9)
/* 1BCDA4 8020ED54 24C6CAC8 */  addiu      $a2, $a2, %lo(D_8021CAC8_ovl9)
/* 1BCDA8 8020ED58 0138C821 */  addu       $t9, $t1, $t8
/* 1BCDAC 8020ED5C 0C02911F */  jal        call_virtual_function
/* 1BCDB0 8020ED60 93240000 */   lbu       $a0, 0x0($t9)
/* 1BCDB4 8020ED64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BCDB8 8020ED68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1BCDBC 8020ED6C 03E00008 */  jr         $ra
/* 1BCDC0 8020ED70 00000000 */   nop
