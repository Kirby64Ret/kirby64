glabel func_801BEF18_ovl7
/* 164F88 801BEF18 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 164F8C 801BEF1C 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 164F90 801BEF20 8CAE0000 */  lw         $t6, 0x0($a1)
/* 164F94 801BEF24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 164F98 801BEF28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 164F9C 801BEF2C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 164FA0 801BEF30 3C04800E */  lui        $a0, %hi(D_800DE350)
/* 164FA4 801BEF34 000FC080 */  sll        $t8, $t7, 2
/* 164FA8 801BEF38 00982021 */  addu       $a0, $a0, $t8
/* 164FAC 801BEF3C 0C066D09 */  jal        func_8019B424_ovl7
/* 164FB0 801BEF40 8C84E350 */   lw        $a0, %lo(D_800DE350)($a0)
/* 164FB4 801BEF44 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 164FB8 801BEF48 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 164FBC 801BEF4C 8CA30000 */  lw         $v1, 0x0($a1)
/* 164FC0 801BEF50 3C014020 */  lui        $at, (0x40200000 >> 16)
/* 164FC4 801BEF54 44810000 */  mtc1       $at, $f0
/* 164FC8 801BEF58 8C620000 */  lw         $v0, 0x0($v1)
/* 164FCC 801BEF5C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 164FD0 801BEF60 3C04800E */  lui        $a0, %hi(gEntitiesNextPosYArray)
/* 164FD4 801BEF64 00021080 */  sll        $v0, $v0, 2
/* 164FD8 801BEF68 00220821 */  addu       $at, $at, $v0
/* 164FDC 801BEF6C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 164FE0 801BEF70 3C01800E */  lui        $at, %hi(D_800E6690)
/* 164FE4 801BEF74 00220821 */  addu       $at, $at, $v0
/* 164FE8 801BEF78 46002182 */  mul.s      $f6, $f4, $f0
/* 164FEC 801BEF7C 24842790 */  addiu      $a0, $a0, %lo(gEntitiesNextPosYArray)
/* 164FF0 801BEF80 E4266690 */  swc1       $f6, %lo(D_800E6690)($at)
/* 164FF4 801BEF84 8C620000 */  lw         $v0, 0x0($v1)
/* 164FF8 801BEF88 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 164FFC 801BEF8C 44815000 */  mtc1       $at, $f10
/* 165000 801BEF90 C4880000 */  lwc1       $f8, 0x0($a0)
/* 165004 801BEF94 00021080 */  sll        $v0, $v0, 2
/* 165008 801BEF98 0082C821 */  addu       $t9, $a0, $v0
/* 16500C 801BEF9C 460A4480 */  add.s      $f18, $f8, $f10
/* 165010 801BEFA0 C7240000 */  lwc1       $f4, 0x0($t9)
/* 165014 801BEFA4 44803000 */  mtc1       $zero, $f6
/* 165018 801BEFA8 3C01C020 */  lui        $at, (0xC0200000 >> 16)
/* 16501C 801BEFAC 46049301 */  sub.s      $f12, $f18, $f4
/* 165020 801BEFB0 460C303C */  c.lt.s     $f6, $f12
/* 165024 801BEFB4 00000000 */  nop
/* 165028 801BEFB8 45020006 */  bc1fl      .L801BEFD4_ovl7
/* 16502C 801BEFBC 44814000 */   mtc1      $at, $f8
/* 165030 801BEFC0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 165034 801BEFC4 00220821 */  addu       $at, $at, $v0
/* 165038 801BEFC8 10000005 */  b          .L801BEFE0_ovl7
/* 16503C 801BEFCC E4203750 */   swc1      $f0, %lo(D_800E3750)($at)
/* 165040 801BEFD0 44814000 */  mtc1       $at, $f8
.L801BEFD4_ovl7:
/* 165044 801BEFD4 3C01800E */  lui        $at, %hi(D_800E3750)
/* 165048 801BEFD8 00220821 */  addu       $at, $at, $v0
/* 16504C 801BEFDC E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
.L801BEFE0_ovl7:
/* 165050 801BEFE0 0C067694 */  jal        func_8019DA50_ovl7
/* 165054 801BEFE4 E7AC0018 */   swc1      $f12, 0x18($sp)
/* 165058 801BEFE8 3C014216 */  lui        $at, (0x42160000 >> 16)
/* 16505C 801BEFEC 44818000 */  mtc1       $at, $f16
/* 165060 801BEFF0 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 165064 801BEFF4 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 165068 801BEFF8 4610003C */  c.lt.s     $f0, $f16
/* 16506C 801BEFFC C7AC0018 */  lwc1       $f12, 0x18($sp)
/* 165070 801BF000 3C01801D */  lui        $at, %hi(D_801CE5D4_ovl7)
/* 165074 801BF004 45020018 */  bc1fl      .L801BF068_ovl7
/* 165078 801BF008 8CA30000 */   lw        $v1, 0x0($a1)
/* 16507C 801BF00C C42AE5D4 */  lwc1       $f10, %lo(D_801CE5D4_ovl7)($at)
/* 165080 801BF010 44807000 */  mtc1       $zero, $f14
/* 165084 801BF014 460A0082 */  mul.s      $f2, $f0, $f10
/* 165088 801BF018 460E103C */  c.lt.s     $f2, $f14
/* 16508C 801BF01C 00000000 */  nop
/* 165090 801BF020 4502000A */  bc1fl      .L801BF04C_ovl7
/* 165094 801BF024 8CA30000 */   lw        $v1, 0x0($a1)
/* 165098 801BF028 8CA30000 */  lw         $v1, 0x0($a1)
/* 16509C 801BF02C 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1650A0 801BF030 46001487 */  neg.s      $f18, $f2
/* 1650A4 801BF034 8C680000 */  lw         $t0, 0x0($v1)
/* 1650A8 801BF038 00084880 */  sll        $t1, $t0, 2
/* 1650AC 801BF03C 00290821 */  addu       $at, $at, $t1
/* 1650B0 801BF040 10000011 */  b          .L801BF088_ovl7
/* 1650B4 801BF044 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
/* 1650B8 801BF048 8CA30000 */  lw         $v1, 0x0($a1)
.L801BF04C_ovl7:
/* 1650BC 801BF04C 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1650C0 801BF050 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1650C4 801BF054 000A5880 */  sll        $t3, $t2, 2
/* 1650C8 801BF058 002B0821 */  addu       $at, $at, $t3
/* 1650CC 801BF05C 1000000A */  b          .L801BF088_ovl7
/* 1650D0 801BF060 E4226850 */   swc1      $f2, %lo(D_800E6850)($at)
/* 1650D4 801BF064 8CA30000 */  lw         $v1, 0x0($a1)
.L801BF068_ovl7:
/* 1650D8 801BF068 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* 1650DC 801BF06C 44812000 */  mtc1       $at, $f4
/* 1650E0 801BF070 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1650E4 801BF074 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1650E8 801BF078 44807000 */  mtc1       $zero, $f14
/* 1650EC 801BF07C 000C6880 */  sll        $t5, $t4, 2
/* 1650F0 801BF080 002D0821 */  addu       $at, $at, $t5
/* 1650F4 801BF084 E4246850 */  swc1       $f4, %lo(D_800E6850)($at)
.L801BF088_ovl7:
/* 1650F8 801BF088 460E603C */  c.lt.s     $f12, $f14
/* 1650FC 801BF08C 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* 165100 801BF090 45020004 */  bc1fl      .L801BF0A4_ovl7
/* 165104 801BF094 46006006 */   mov.s     $f0, $f12
/* 165108 801BF098 10000002 */  b          .L801BF0A4_ovl7
/* 16510C 801BF09C 46006007 */   neg.s     $f0, $f12
/* 165110 801BF0A0 46006006 */  mov.s      $f0, $f12
.L801BF0A4_ovl7:
/* 165114 801BF0A4 4610003C */  c.lt.s     $f0, $f16
/* 165118 801BF0A8 00000000 */  nop
/* 16511C 801BF0AC 45020016 */  bc1fl      .L801BF108_ovl7
/* 165120 801BF0B0 8C680000 */   lw        $t0, 0x0($v1)
/* 165124 801BF0B4 3C01801D */  lui        $at, %hi(D_801CE5D8_ovl7)
/* 165128 801BF0B8 C426E5D8 */  lwc1       $f6, %lo(D_801CE5D8_ovl7)($at)
/* 16512C 801BF0BC 46066002 */  mul.s      $f0, $f12, $f6
/* 165130 801BF0C0 460E003C */  c.lt.s     $f0, $f14
/* 165134 801BF0C4 00000000 */  nop
/* 165138 801BF0C8 45020009 */  bc1fl      .L801BF0F0_ovl7
/* 16513C 801BF0CC 8C780000 */   lw        $t8, 0x0($v1)
/* 165140 801BF0D0 8C6E0000 */  lw         $t6, 0x0($v1)
/* 165144 801BF0D4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 165148 801BF0D8 46000207 */  neg.s      $f8, $f0
/* 16514C 801BF0DC 000E7880 */  sll        $t7, $t6, 2
/* 165150 801BF0E0 002F0821 */  addu       $at, $at, $t7
/* 165154 801BF0E4 1000000D */  b          .L801BF11C_ovl7
/* 165158 801BF0E8 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
/* 16515C 801BF0EC 8C780000 */  lw         $t8, 0x0($v1)
.L801BF0F0_ovl7:
/* 165160 801BF0F0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 165164 801BF0F4 0018C880 */  sll        $t9, $t8, 2
/* 165168 801BF0F8 00390821 */  addu       $at, $at, $t9
/* 16516C 801BF0FC 10000007 */  b          .L801BF11C_ovl7
/* 165170 801BF100 E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
/* 165174 801BF104 8C680000 */  lw         $t0, 0x0($v1)
.L801BF108_ovl7:
/* 165178 801BF108 44815000 */  mtc1       $at, $f10
/* 16517C 801BF10C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 165180 801BF110 00084880 */  sll        $t1, $t0, 2
/* 165184 801BF114 00290821 */  addu       $at, $at, $t1
/* 165188 801BF118 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
.L801BF11C_ovl7:
/* 16518C 801BF11C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 165190 801BF120 27BD0020 */  addiu      $sp, $sp, 0x20
/* 165194 801BF124 03E00008 */  jr         $ra
/* 165198 801BF128 00000000 */   nop
