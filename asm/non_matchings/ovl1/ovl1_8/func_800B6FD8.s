glabel func_800B6FD8
/* 05F228 800B6FD8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 05F22C 800B6FDC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 05F230 800B6FE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05F234 800B6FE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05F238 800B6FE8 8C6E0000 */  lw    $t6, ($v1)
/* 05F23C 800B6FEC 44806000 */  mtc1  $zero, $f12
/* 05F240 800B6FF0 3C02800E */  lui   $v0, %hi(D_800E5890) # $v0, 0x800e
/* 05F244 800B6FF4 24425890 */  addiu $v0, %lo(D_800E5890) # addiu $v0, $v0, 0x5890
/* 05F248 800B6FF8 000E7880 */  sll   $t7, $t6, 2
/* 05F24C 800B6FFC 004FC021 */  addu  $t8, $v0, $t7
/* 05F250 800B7000 E70C0000 */  swc1  $f12, ($t8)
/* 05F254 800B7004 8C650000 */  lw    $a1, ($v1)
/* 05F258 800B7008 3C01800E */ lui $at, %hi(D_800E5C10)
/* 05F25C 800B700C 00052880 */  sll   $a1, $a1, 2
/* 05F260 800B7010 0045C821 */  addu  $t9, $v0, $a1
/* 05F264 800B7014 C7200000 */  lwc1  $f0, ($t9)
/* 05F268 800B7018 00250821 */  addu  $at, $at, $a1
/* 05F26C 800B701C E4205C10 */ swc1 $f0, %lo(D_800E5C10)($at)
/* 05F270 800B7020 8C680000 */  lw    $t0, ($v1)
/* 05F274 800B7024 3C01800E */ lui $at, %hi(D_800E56D0)
/* 05F278 800B7028 00084880 */  sll   $t1, $t0, 2
/* 05F27C 800B702C 00290821 */  addu  $at, $at, $t1
/* 05F280 800B7030 E42056D0 */ swc1 $f0, %lo(D_800E56D0)($at)
/* 05F284 800B7034 8C6A0000 */  lw    $t2, ($v1)
/* 05F288 800B7038 3C01800E */ lui $at, %hi(D_800E5510)
/* 05F28C 800B703C 000A5880 */  sll   $t3, $t2, 2
/* 05F290 800B7040 002B0821 */  addu  $at, $at, $t3
/* 05F294 800B7044 0C02D8AB */  jal   func_800B62AC
/* 05F298 800B7048 E4205510 */ swc1 $f0, %lo(D_800E5510)($at)
/* 05F29C 800B704C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 05F2A0 800B7050 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 05F2A4 800B7054 3C01800D */  lui   $at, %hi(D_800D6880) # $at, 0x800d
/* 05F2A8 800B7058 C4226880 */  lwc1  $f2, %lo(D_800D6880)($at)
/* 05F2AC 800B705C 8C650000 */  lw    $a1, ($v1)
/* 05F2B0 800B7060 3C01800E */ lui $at, %hi(D_800E6A10)
/* 05F2B4 800B7064 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 05F2B8 800B7068 00052880 */  sll   $a1, $a1, 2
/* 05F2BC 800B706C 00250821 */  addu  $at, $at, $a1
/* 05F2C0 800B7070 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 05F2C4 800B7074 3C01800D */  lui   $at, %hi(D_800D6884) # $at, 0x800d
/* 05F2C8 800B7078 C4266884 */  lwc1  $f6, %lo(D_800D6884)($at)
/* 05F2CC 800B707C 3C01800E */ lui $at, %hi(D_800E17D0)
/* 05F2D0 800B7080 00250821 */  addu  $at, $at, $a1
/* 05F2D4 800B7084 46062202 */  mul.s $f8, $f4, $f6
/* 05F2D8 800B7088 C42A17D0 */ lwc1 $f10, %lo(D_800E17D0)($at)
/* 05F2DC 800B708C 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 05F2E0 800B7090 00856021 */  addu  $t4, $a0, $a1
/* 05F2E4 800B7094 44806000 */  mtc1  $zero, $f12
/* 05F2E8 800B7098 460A4400 */  add.s $f16, $f8, $f10
/* 05F2EC 800B709C E5900000 */  swc1  $f16, ($t4)
/* 05F2F0 800B70A0 8C6D0000 */  lw    $t5, ($v1)
/* 05F2F4 800B70A4 000D7080 */  sll   $t6, $t5, 2
/* 05F2F8 800B70A8 008E1021 */  addu  $v0, $a0, $t6
/* 05F2FC 800B70AC C4400000 */  lwc1  $f0, ($v0)
/* 05F300 800B70B0 4600103E */  c.le.s $f2, $f0
/* 05F304 800B70B4 00000000 */  nop   
/* 05F308 800B70B8 4502000C */  bc1fl .L800B70EC_ovl1
/* 05F30C 800B70BC 460C003C */   c.lt.s $f0, $f12
/* 05F310 800B70C0 46020481 */  sub.s $f18, $f0, $f2
.L800B70C4_ovl1:
/* 05F314 800B70C4 E4520000 */  swc1  $f18, ($v0)
/* 05F318 800B70C8 8C6F0000 */  lw    $t7, ($v1)
/* 05F31C 800B70CC 000FC080 */  sll   $t8, $t7, 2
/* 05F320 800B70D0 00981021 */  addu  $v0, $a0, $t8
/* 05F324 800B70D4 C4400000 */  lwc1  $f0, ($v0)
/* 05F328 800B70D8 4600103E */  c.le.s $f2, $f0
/* 05F32C 800B70DC 00000000 */  nop   
/* 05F330 800B70E0 4503FFF8 */  bc1tl .L800B70C4_ovl1
/* 05F334 800B70E4 46020481 */   sub.s $f18, $f0, $f2
/* 05F338 800B70E8 460C003C */  c.lt.s $f0, $f12
.L800B70EC_ovl1:
/* 05F33C 800B70EC 00000000 */  nop   
/* 05F340 800B70F0 4500000B */  bc1f  .L800B7120_ovl1
/* 05F344 800B70F4 00000000 */   nop   
/* 05F348 800B70F8 46020100 */  add.s $f4, $f0, $f2
.L800B70FC_ovl1:
/* 05F34C 800B70FC E4440000 */  swc1  $f4, ($v0)
/* 05F350 800B7100 8C790000 */  lw    $t9, ($v1)
/* 05F354 800B7104 00194080 */  sll   $t0, $t9, 2
/* 05F358 800B7108 00881021 */  addu  $v0, $a0, $t0
/* 05F35C 800B710C C4400000 */  lwc1  $f0, ($v0)
/* 05F360 800B7110 460C003C */  c.lt.s $f0, $f12
/* 05F364 800B7114 00000000 */  nop   
/* 05F368 800B7118 4503FFF8 */  bc1tl .L800B70FC_ovl1
/* 05F36C 800B711C 46020100 */   add.s $f4, $f0, $f2
.L800B7120_ovl1:
/* 05F370 800B7120 0C02CC6D */  jal   func_800B31B4
/* 05F374 800B7124 00000000 */   nop   
/* 05F378 800B7128 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05F37C 800B712C 27BD0018 */  addiu $sp, $sp, 0x18
/* 05F380 800B7130 03E00008 */  jr    $ra
/* 05F384 800B7134 00000000 */   nop   
