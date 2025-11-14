glabel func_801AB008_ovl7
/* 151078 801AB008 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15107C 801AB00C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 151080 801AB010 3C05800E */  lui   $a1, %hi(D_800E4C50) # $a1, 0x800e
/* 151084 801AB014 3C01801D */  lui   $at, %hi(D_801CE12C) # $at, 0x801d
/* 151088 801AB018 8C4E0000 */  lw    $t6, ($v0)
/* 15108C 801AB01C C422E12C */  lwc1  $f2, %lo(D_801CE12C)($at)
/* 151090 801AB020 24A54C50 */  addiu $a1, %lo(D_800E4C50) # addiu $a1, $a1, 0x4c50
/* 151094 801AB024 000E7880 */  sll   $t7, $t6, 2
/* 151098 801AB028 00AF2021 */  addu  $a0, $a1, $t7
/* 15109C 801AB02C 3C01801D */  lui   $at, %hi(D_801CE130) # $at, 0x801d
/* 1510A0 801AB030 C426E130 */  lwc1  $f6, %lo(D_801CE130)($at)
/* 1510A4 801AB034 C4840000 */  lwc1  $f4, ($a0)
/* 1510A8 801AB038 3C18800E */  lui   $t8, %hi(gEntitiesAngleZArray) # $t8, 0x800e
/* 1510AC 801AB03C 27184390 */  addiu $t8, %lo(gEntitiesAngleZArray) # addiu $t8, $t8, 0x4390
/* 1510B0 801AB040 46062200 */  add.s $f8, $f4, $f6
/* 1510B4 801AB044 E4880000 */  swc1  $f8, ($a0)
/* 1510B8 801AB048 8C430000 */  lw    $v1, ($v0)
/* 1510BC 801AB04C 00031880 */  sll   $v1, $v1, 2
/* 1510C0 801AB050 00A32021 */  addu  $a0, $a1, $v1
/* 1510C4 801AB054 C4800000 */  lwc1  $f0, ($a0)
/* 1510C8 801AB058 4600103E */  c.le.s $f2, $f0
/* 1510CC 801AB05C 00000000 */  nop   
/* 1510D0 801AB060 45000008 */  bc1f  .L801AB084_ovl7
/* 1510D4 801AB064 00000000 */   nop   
/* 1510D8 801AB068 46020281 */  sub.s $f10, $f0, $f2
/* 1510DC 801AB06C 3C01800E */ lui $at, %hi(D_800E4C50)
/* 1510E0 801AB070 E48A0000 */  swc1  $f10, ($a0)
/* 1510E4 801AB074 8C430000 */  lw    $v1, ($v0)
/* 1510E8 801AB078 00031880 */  sll   $v1, $v1, 2
/* 1510EC 801AB07C 00230821 */  addu  $at, $at, $v1
/* 1510F0 801AB080 C4204C50 */ lwc1 $f0, %lo(D_800E4C50)($at)
.L801AB084_ovl7:
/* 1510F4 801AB084 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 1510F8 801AB088 00230821 */  addu  $at, $at, $v1
/* 1510FC 801AB08C E42041D0 */ swc1 $f0, %lo(gEntitiesAngleYArray)($at)
/* 151100 801AB090 8C430000 */  lw    $v1, ($v0)
/* 151104 801AB094 3C01801D */  lui   $at, %hi(D_801CE134) # $at, 0x801d
/* 151108 801AB098 C430E134 */  lwc1  $f16, %lo(D_801CE134)($at)
/* 15110C 801AB09C 00031880 */  sll   $v1, $v1, 2
/* 151110 801AB0A0 00782021 */  addu  $a0, $v1, $t8
/* 151114 801AB0A4 C4820000 */  lwc1  $f2, ($a0)
/* 151118 801AB0A8 3C01801D */  lui   $at, %hi(D_801CE138) # $at, 0x801d
/* 15111C 801AB0AC 4602803C */  c.lt.s $f16, $f2
/* 151120 801AB0B0 00000000 */  nop   
/* 151124 801AB0B4 45000012 */  bc1f  .L801AB100_ovl7
/* 151128 801AB0B8 00000000 */   nop   
/* 15112C 801AB0BC C432E138 */  lwc1  $f18, %lo(D_801CE138)($at)
/* 151130 801AB0C0 3C01801D */  lui   $at, %hi(D_801CE13C) # $at, 0x801d
/* 151134 801AB0C4 4612103C */  c.lt.s $f2, $f18
/* 151138 801AB0C8 00000000 */  nop   
/* 15113C 801AB0CC 4500000C */  bc1f  .L801AB100_ovl7
/* 151140 801AB0D0 00000000 */   nop   
/* 151144 801AB0D4 C424E13C */  lwc1  $f4, %lo(D_801CE13C)($at)
/* 151148 801AB0D8 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 15114C 801AB0DC 00230821 */  addu  $at, $at, $v1
/* 151150 801AB0E0 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 151154 801AB0E4 8C430000 */  lw    $v1, ($v0)
/* 151158 801AB0E8 3C19800E */  lui   $t9, %hi(gEntitiesAngleZArray) # $t9, 0x800e
/* 15115C 801AB0EC 27394390 */  addiu $t9, %lo(gEntitiesAngleZArray) # addiu $t9, $t9, 0x4390
/* 151160 801AB0F0 00031880 */  sll   $v1, $v1, 2
/* 151164 801AB0F4 00792021 */  addu  $a0, $v1, $t9
/* 151168 801AB0F8 10000018 */  b     .L801AB15C_ovl7
/* 15116C 801AB0FC C4820000 */   lwc1  $f2, ($a0)
.L801AB100_ovl7:
/* 151170 801AB100 3C01801D */  lui   $at, %hi(D_801CE140) # $at, 0x801d
/* 151174 801AB104 C426E140 */  lwc1  $f6, %lo(D_801CE140)($at)
/* 151178 801AB108 3C01801D */  lui   $at, %hi(D_801CE144) # $at, 0x801d
/* 15117C 801AB10C 4606103C */  c.lt.s $f2, $f6
/* 151180 801AB110 00000000 */  nop   
/* 151184 801AB114 45000011 */  bc1f  .L801AB15C_ovl7
/* 151188 801AB118 00000000 */   nop   
/* 15118C 801AB11C C428E144 */  lwc1  $f8, %lo(D_801CE144)($at)
/* 151190 801AB120 3C01801D */  lui   $at, %hi(D_801CE148) # $at, 0x801d
/* 151194 801AB124 4602403C */  c.lt.s $f8, $f2
/* 151198 801AB128 00000000 */  nop   
/* 15119C 801AB12C 4500000B */  bc1f  .L801AB15C_ovl7
/* 1511A0 801AB130 00000000 */   nop   
/* 1511A4 801AB134 C42AE148 */  lwc1  $f10, %lo(D_801CE148)($at)
/* 1511A8 801AB138 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1511AC 801AB13C 00230821 */  addu  $at, $at, $v1
/* 1511B0 801AB140 E42AA6E0 */ swc1 $f10, %lo(D_800EA6E0)($at)
/* 1511B4 801AB144 8C430000 */  lw    $v1, ($v0)
/* 1511B8 801AB148 3C08800E */  lui   $t0, %hi(gEntitiesAngleZArray) # $t0, 0x800e
/* 1511BC 801AB14C 25084390 */  addiu $t0, %lo(gEntitiesAngleZArray) # addiu $t0, $t0, 0x4390
/* 1511C0 801AB150 00031880 */  sll   $v1, $v1, 2
/* 1511C4 801AB154 00682021 */  addu  $a0, $v1, $t0
/* 1511C8 801AB158 C4820000 */  lwc1  $f2, ($a0)
.L801AB15C_ovl7:
/* 1511CC 801AB15C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1511D0 801AB160 00230821 */  addu  $at, $at, $v1
/* 1511D4 801AB164 C430A6E0 */ lwc1 $f16, %lo(D_800EA6E0)($at)
/* 1511D8 801AB168 46101480 */  add.s $f18, $f2, $f16
/* 1511DC 801AB16C 03E00008 */  jr    $ra
/* 1511E0 801AB170 E4920000 */   swc1  $f18, ($a0)
.type func_801AB008_ovl7, @function
.size func_801AB008_ovl7, . - func_801AB008_ovl7
