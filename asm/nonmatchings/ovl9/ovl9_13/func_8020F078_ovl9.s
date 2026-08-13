nonmatching func_8020F078_ovl9, 0x1CC

glabel func_8020F078_ovl9
    /* 1BD0C8 8020F078 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1BD0CC 8020F07C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1BD0D0 8020F080 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1BD0D4 8020F084 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1BD0D8 8020F088 AFA40020 */  sw         $a0, 0x20($sp)
    /* 1BD0DC 8020F08C 8C620000 */  lw         $v0, 0x0($v1)
    /* 1BD0E0 8020F090 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 1BD0E4 8020F094 44803000 */  mtc1       $zero, $f6
    /* 1BD0E8 8020F098 00021080 */  sll        $v0, $v0, 2
    /* 1BD0EC 8020F09C 00220821 */  addu       $at, $at, $v0
    /* 1BD0F0 8020F0A0 C42464D0 */  lwc1       $f4, %lo(D_800E64D0)($at)
    /* 1BD0F4 8020F0A4 3C06800E */  lui        $a2, %hi(D_800E1B50)
    /* 1BD0F8 8020F0A8 00C23021 */  addu       $a2, $a2, $v0
    /* 1BD0FC 8020F0AC 3C0E800E */  lui        $t6, %hi(D_800E6A10)
    /* 1BD100 8020F0B0 4606203C */  c.lt.s     $f4, $f6
    /* 1BD104 8020F0B4 8CC61B50 */  lw         $a2, %lo(D_800E1B50)($a2)
    /* 1BD108 8020F0B8 25CE6A10 */  addiu      $t6, $t6, %lo(D_800E6A10)
    /* 1BD10C 8020F0BC 004E3821 */  addu       $a3, $v0, $t6
    /* 1BD110 8020F0C0 C4E00000 */  lwc1       $f0, 0x0($a3)
    /* 1BD114 8020F0C4 8CC50084 */  lw         $a1, 0x84($a2)
    /* 1BD118 8020F0C8 45000008 */  bc1f       .L8020F0EC_ovl9
    /* 1BD11C 8020F0CC E7A00018 */   swc1      $f0, 0x18($sp)
    /* 1BD120 8020F0D0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 1BD124 8020F0D4 44814000 */  mtc1       $at, $f8
    /* 1BD128 8020F0D8 00000000 */  nop
    /* 1BD12C 8020F0DC 46080282 */  mul.s      $f10, $f0, $f8
    /* 1BD130 8020F0E0 E4EA0000 */  swc1       $f10, 0x0($a3)
    /* 1BD134 8020F0E4 8C620000 */  lw         $v0, 0x0($v1)
    /* 1BD138 8020F0E8 00021080 */  sll        $v0, $v0, 2
  .L8020F0EC_ovl9:
    /* 1BD13C 8020F0EC 3C0F800F */  lui        $t7, %hi(D_800E9FE0)
    /* 1BD140 8020F0F0 25EF9FE0 */  addiu      $t7, $t7, %lo(D_800E9FE0)
    /* 1BD144 8020F0F4 004F2021 */  addu       $a0, $v0, $t7
    /* 1BD148 8020F0F8 8C860000 */  lw         $a2, 0x0($a0)
    /* 1BD14C 8020F0FC 18C00029 */  blez       $a2, .L8020F1A4_ovl9
    /* 1BD150 8020F100 24D8FFFF */   addiu     $t8, $a2, -0x1
    /* 1BD154 8020F104 10A0002E */  beqz       $a1, .L8020F1C0_ovl9
    /* 1BD158 8020F108 AC980000 */   sw        $t8, 0x0($a0)
    /* 1BD15C 8020F10C 8C790000 */  lw         $t9, 0x0($v1)
    /* 1BD160 8020F110 3C02800E */  lui        $v0, %hi(D_800E0D50)
    /* 1BD164 8020F114 24420D50 */  addiu      $v0, $v0, %lo(D_800E0D50)
    /* 1BD168 8020F118 00194080 */  sll        $t0, $t9, 2
    /* 1BD16C 8020F11C 00484821 */  addu       $t1, $v0, $t0
    /* 1BD170 8020F120 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 1BD174 8020F124 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1BD178 8020F128 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 1BD17C 8020F12C 000A5880 */  sll        $t3, $t2, 2
    /* 1BD180 8020F130 002B0821 */  addu       $at, $at, $t3
    /* 1BD184 8020F134 C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* 1BD188 8020F138 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 1BD18C 8020F13C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 1BD190 8020F140 E4B00004 */  swc1       $f16, 0x4($a1)
    /* 1BD194 8020F144 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 1BD198 8020F148 00A02025 */  or         $a0, $a1, $zero
    /* 1BD19C 8020F14C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1BD1A0 8020F150 000D7080 */  sll        $t6, $t5, 2
    /* 1BD1A4 8020F154 004E7821 */  addu       $t7, $v0, $t6
    /* 1BD1A8 8020F158 8DF80000 */  lw         $t8, 0x0($t7)
    /* 1BD1AC 8020F15C 0018C880 */  sll        $t9, $t8, 2
    /* 1BD1B0 8020F160 00390821 */  addu       $at, $at, $t9
    /* 1BD1B4 8020F164 C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
    /* 1BD1B8 8020F168 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1BD1BC 8020F16C E4B20008 */  swc1       $f18, 0x8($a1)
    /* 1BD1C0 8020F170 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 1BD1C4 8020F174 8D090000 */  lw         $t1, 0x0($t0)
    /* 1BD1C8 8020F178 00095080 */  sll        $t2, $t1, 2
    /* 1BD1CC 8020F17C 004A5821 */  addu       $t3, $v0, $t2
    /* 1BD1D0 8020F180 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 1BD1D4 8020F184 000C6880 */  sll        $t5, $t4, 2
    /* 1BD1D8 8020F188 002D0821 */  addu       $at, $at, $t5
    /* 1BD1DC 8020F18C C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
    /* 1BD1E0 8020F190 0C04146B */  jal        func_801051AC
    /* 1BD1E4 8020F194 E4A4000C */   swc1      $f4, 0xC($a1)
    /* 1BD1E8 8020F198 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1BD1EC 8020F19C 10000008 */  b          .L8020F1C0_ovl9
    /* 1BD1F0 8020F1A0 8C63A7C4 */   lw        $v1, %lo(omCurrentObj)($v1)
  .L8020F1A4_ovl9:
    /* 1BD1F4 8020F1A4 0C06835D */  jal        func_801A0D74_ovl7
    /* 1BD1F8 8020F1A8 8FA40020 */   lw        $a0, 0x20($sp)
    /* 1BD1FC 8020F1AC 44823000 */  mtc1       $v0, $f6
    /* 1BD200 8020F1B0 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1BD204 8020F1B4 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1BD208 8020F1B8 46803220 */  cvt.s.w    $f8, $f6
    /* 1BD20C 8020F1BC E7A8001C */  swc1       $f8, 0x1C($sp)
  .L8020F1C0_ovl9:
    /* 1BD210 8020F1C0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1BD214 8020F1C4 C7AA0018 */  lwc1       $f10, 0x18($sp)
    /* 1BD218 8020F1C8 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 1BD21C 8020F1CC 000E7880 */  sll        $t7, $t6, 2
    /* 1BD220 8020F1D0 002F0821 */  addu       $at, $at, $t7
    /* 1BD224 8020F1D4 8FA40020 */  lw         $a0, 0x20($sp)
    /* 1BD228 8020F1D8 0C083F1A */  jal        func_8020FC68_ovl9
    /* 1BD22C 8020F1DC E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
    /* 1BD230 8020F1E0 C7B0001C */  lwc1       $f16, 0x1C($sp)
    /* 1BD234 8020F1E4 44809000 */  mtc1       $zero, $f18
    /* 1BD238 8020F1E8 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1BD23C 8020F1EC 46128032 */  c.eq.s     $f16, $f18
    /* 1BD240 8020F1F0 00000000 */  nop
    /* 1BD244 8020F1F4 4500000B */  bc1f       .L8020F224_ovl9
    /* 1BD248 8020F1F8 00000000 */   nop
    /* 1BD24C 8020F1FC 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1BD250 8020F200 3C04800E */  lui        $a0, %hi(D_800DDFD0)
    /* 1BD254 8020F204 3C068022 */  lui        $a2, %hi(D_8021CAE4_ovl9)
    /* 1BD258 8020F208 8F190000 */  lw         $t9, 0x0($t8)
    /* 1BD25C 8020F20C 24C6CAE4 */  addiu      $a2, $a2, %lo(D_8021CAE4_ovl9)
    /* 1BD260 8020F210 24050005 */  addiu      $a1, $zero, 0x5
    /* 1BD264 8020F214 00194080 */  sll        $t0, $t9, 2
    /* 1BD268 8020F218 00882021 */  addu       $a0, $a0, $t0
    /* 1BD26C 8020F21C 0C02911F */  jal        utilFuncTableJump
    /* 1BD270 8020F220 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
  .L8020F224_ovl9:
    /* 1BD274 8020F224 0C083E2A */  jal        func_8020F8A8_ovl9
    /* 1BD278 8020F228 8FA40020 */   lw        $a0, 0x20($sp)
    /* 1BD27C 8020F22C 0C067CEC */  jal        func_8019F3B0_ovl7
    /* 1BD280 8020F230 00000000 */   nop
    /* 1BD284 8020F234 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1BD288 8020F238 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1BD28C 8020F23C 03E00008 */  jr         $ra
    /* 1BD290 8020F240 00000000 */   nop
endlabel func_8020F078_ovl9
.size func_8020F078_ovl9, . - func_8020F078_ovl9
