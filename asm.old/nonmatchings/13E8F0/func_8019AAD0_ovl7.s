glabel func_8019AAD0_ovl7
/* 140B40 8019AAD0 3C0E800E */  lui        $t6, %hi(D_800E5F90)
/* 140B44 8019AAD4 8DCE5F90 */  lw         $t6, %lo(D_800E5F90)($t6)
/* 140B48 8019AAD8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 140B4C 8019AADC 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 140B50 8019AAE0 448E2000 */  mtc1       $t6, $f4
/* 140B54 8019AAE4 C4226BD0 */  lwc1       $f2, %lo(D_800E6BD0)($at)
/* 140B58 8019AAE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 140B5C 8019AAEC 46802420 */  cvt.s.w    $f16, $f4
/* 140B60 8019AAF0 44057000 */  mfc1       $a1, $f14
/* 140B64 8019AAF4 E7AC0038 */  swc1       $f12, 0x38($sp)
/* 140B68 8019AAF8 AFA60040 */  sw         $a2, 0x40($sp)
/* 140B6C 8019AAFC 00002025 */  or         $a0, $zero, $zero
/* 140B70 8019AB00 E7A20030 */  swc1       $f2, 0x30($sp)
/* 140B74 8019AB04 0C03E63B */  jal        func_800F98EC
/* 140B78 8019AB08 E7B0002C */   swc1      $f16, 0x2C($sp)
/* 140B7C 8019AB0C 3C03800E */  lui        $v1, %hi(D_800E6BD0)
/* 140B80 8019AB10 3C06800E */  lui        $a2, %hi(D_800E5F90)
/* 140B84 8019AB14 24C65F90 */  addiu      $a2, $a2, %lo(D_800E5F90)
/* 140B88 8019AB18 24636BD0 */  addiu      $v1, $v1, %lo(D_800E6BD0)
/* 140B8C 8019AB1C C7A20030 */  lwc1       $f2, 0x30($sp)
/* 140B90 8019AB20 10400007 */  beqz       $v0, .L8019AB40_ovl7
/* 140B94 8019AB24 C7B0002C */   lwc1      $f16, 0x2C($sp)
/* 140B98 8019AB28 4600818D */  trunc.w.s  $f6, $f16
/* 140B9C 8019AB2C 44800000 */  mtc1       $zero, $f0
/* 140BA0 8019AB30 E4620000 */  swc1       $f2, 0x0($v1)
/* 140BA4 8019AB34 44183000 */  mfc1       $t8, $f6
/* 140BA8 8019AB38 10000045 */  b          .L8019AC50_ovl7
/* 140BAC 8019AB3C ACD80000 */   sw        $t8, 0x0($a2)
.L8019AB40_ovl7:
/* 140BB0 8019AB40 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 140BB4 8019AB44 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 140BB8 8019AB48 00002825 */  or         $a1, $zero, $zero
/* 140BBC 8019AB4C 8F240000 */  lw         $a0, 0x0($t9)
/* 140BC0 8019AB50 E7B0002C */  swc1       $f16, 0x2C($sp)
/* 140BC4 8019AB54 0C03E60A */  jal        func_800F9828
/* 140BC8 8019AB58 E7A20030 */   swc1      $f2, 0x30($sp)
/* 140BCC 8019AB5C 3C01801D */  lui        $at, %hi(D_801CDBF8_ovl7)
/* 140BD0 8019AB60 C428DBF8 */  lwc1       $f8, %lo(D_801CDBF8_ovl7)($at)
/* 140BD4 8019AB64 3C03800E */  lui        $v1, %hi(D_800E6BD0)
/* 140BD8 8019AB68 3C06800E */  lui        $a2, %hi(D_800E5F90)
/* 140BDC 8019AB6C 46080032 */  c.eq.s     $f0, $f8
/* 140BE0 8019AB70 24C65F90 */  addiu      $a2, $a2, %lo(D_800E5F90)
/* 140BE4 8019AB74 24636BD0 */  addiu      $v1, $v1, %lo(D_800E6BD0)
/* 140BE8 8019AB78 C7A20030 */  lwc1       $f2, 0x30($sp)
/* 140BEC 8019AB7C C7B0002C */  lwc1       $f16, 0x2C($sp)
/* 140BF0 8019AB80 45000007 */  bc1f       .L8019ABA0_ovl7
/* 140BF4 8019AB84 E7A00034 */   swc1      $f0, 0x34($sp)
/* 140BF8 8019AB88 4600828D */  trunc.w.s  $f10, $f16
/* 140BFC 8019AB8C 44800000 */  mtc1       $zero, $f0
/* 140C00 8019AB90 E4620000 */  swc1       $f2, 0x0($v1)
/* 140C04 8019AB94 44095000 */  mfc1       $t1, $f10
/* 140C08 8019AB98 1000002D */  b          .L8019AC50_ovl7
/* 140C0C 8019AB9C ACC90000 */   sw        $t1, 0x0($a2)
.L8019ABA0_ovl7:
/* 140C10 8019ABA0 4600848D */  trunc.w.s  $f18, $f16
/* 140C14 8019ABA4 E4620000 */  swc1       $f2, 0x0($v1)
/* 140C18 8019ABA8 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 140C1C 8019ABAC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 140C20 8019ABB0 440B9000 */  mfc1       $t3, $f18
/* 140C24 8019ABB4 C7AC0038 */  lwc1       $f12, 0x38($sp)
/* 140C28 8019ABB8 ACCB0000 */  sw         $t3, 0x0($a2)
/* 140C2C 8019ABBC 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 140C30 8019ABC0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 140C34 8019ABC4 000D7080 */  sll        $t6, $t5, 2
/* 140C38 8019ABC8 002E0821 */  addu       $at, $at, $t6
/* 140C3C 8019ABCC C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 140C40 8019ABD0 0C00B5B8 */  jal        sinf
/* 140C44 8019ABD4 E7A40018 */   swc1      $f4, 0x18($sp)
/* 140C48 8019ABD8 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 140C4C 8019ABDC 44813000 */  mtc1       $at, $f6
/* 140C50 8019ABE0 44805000 */  mtc1       $zero, $f10
/* 140C54 8019ABE4 C7AC0038 */  lwc1       $f12, 0x38($sp)
/* 140C58 8019ABE8 46060202 */  mul.s      $f8, $f0, $f6
/* 140C5C 8019ABEC 460A4380 */  add.s      $f14, $f8, $f10
/* 140C60 8019ABF0 0C00D604 */  jal        cosf
/* 140C64 8019ABF4 E7AE0020 */   swc1      $f14, 0x20($sp)
/* 140C68 8019ABF8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 140C6C 8019ABFC C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 140C70 8019AC00 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 140C74 8019AC04 44812000 */  mtc1       $at, $f4
/* 140C78 8019AC08 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 140C7C 8019AC0C 44815000 */  mtc1       $at, $f10
/* 140C80 8019AC10 46049180 */  add.s      $f6, $f18, $f4
/* 140C84 8019AC14 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 140C88 8019AC18 460A0482 */  mul.s      $f18, $f0, $f10
/* 140C8C 8019AC1C C7B00018 */  lwc1       $f16, 0x18($sp)
/* 140C90 8019AC20 46083300 */  add.s      $f12, $f6, $f8
/* 140C94 8019AC24 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* 140C98 8019AC28 44803000 */  mtc1       $zero, $f6
/* 140C9C 8019AC2C 46109080 */  add.s      $f2, $f18, $f16
/* 140CA0 8019AC30 C7B20034 */  lwc1       $f18, 0x34($sp)
/* 140CA4 8019AC34 460E3201 */  sub.s      $f8, $f6, $f14
/* 140CA8 8019AC38 46026101 */  sub.s      $f4, $f12, $f2
/* 140CAC 8019AC3C 460E9181 */  sub.s      $f6, $f18, $f14
/* 140CB0 8019AC40 46082282 */  mul.s      $f10, $f4, $f8
/* 140CB4 8019AC44 46028101 */  sub.s      $f4, $f16, $f2
/* 140CB8 8019AC48 46043202 */  mul.s      $f8, $f6, $f4
/* 140CBC 8019AC4C 46085001 */  sub.s      $f0, $f10, $f8
.L8019AC50_ovl7:
/* 140CC0 8019AC50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 140CC4 8019AC54 27BD0038 */  addiu      $sp, $sp, 0x38
/* 140CC8 8019AC58 03E00008 */  jr         $ra
/* 140CCC 8019AC5C 00000000 */   nop
