glabel func_801EA2F8_ovl9
/* 198348 801EA2F8 27BDFFC0 */  addiu      $sp, $sp, -0x40
.L801EA2FC_ovl16:
/* 19834C 801EA2FC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 198350 801EA300 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 198354 801EA304 AFBF001C */  sw         $ra, 0x1C($sp)
/* 198358 801EA308 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 19835C 801EA30C AFA40040 */  sw         $a0, 0x40($sp)
/* 198360 801EA310 8DC40000 */  lw         $a0, 0x0($t6)
/* 198364 801EA314 3C01800E */  lui        $at, %hi(D_800E6F50 + 0xC)
/* 198368 801EA318 3C03800E */  lui        $v1, %hi(gEntitiesNextPosXArray)
/* 19836C 801EA31C 00047900 */  sll        $t7, $a0, 4
.L801EA320_ovl10:
/* 198370 801EA320 002F0821 */  addu       $at, $at, $t7
/* 198374 801EA324 C4246F5C */  lwc1       $f4, %lo(D_800E6F50 + 0xC)($at)
/* 198378 801EA328 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
/* 19837C 801EA32C 44813000 */  mtc1       $at, $f6
/* 198380 801EA330 246325D0 */  addiu      $v1, $v1, %lo(gEntitiesNextPosXArray)
/* 198384 801EA334 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
.L801EA338_ovl16:
/* 198388 801EA338 4606203C */  c.lt.s     $f4, $f6
/* 19838C 801EA33C 00041080 */  sll        $v0, $a0, 2
/* 198390 801EA340 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
glabel func_801EA344_ovl16
/* 198394 801EA344 0062C021 */  addu       $t8, $v1, $v0
/* 198398 801EA348 4500009C */  bc1f       .L801EA5BC_ovl9
/* 19839C 801EA34C 3C0141A0 */   lui       $at, (0x41A00000 >> 16)
/* 1983A0 801EA350 C4680000 */  lwc1       $f8, 0x0($v1)
.L801EA354_ovl10:
/* 1983A4 801EA354 C70A0000 */  lwc1       $f10, 0x0($t8)
/* 1983A8 801EA358 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 1983AC 801EA35C 44813000 */  mtc1       $at, $f6
/* 1983B0 801EA360 460A4501 */  sub.s      $f20, $f8, $f10
glabel func_801EA364_ovl10
/* 1983B4 801EA364 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 1983B8 801EA368 44815000 */  mtc1       $at, $f10
/* 1983BC 801EA36C 46062200 */  add.s      $f8, $f4, $f6
/* 1983C0 801EA370 00A2C821 */  addu       $t9, $a1, $v0
/* 1983C4 801EA374 C7260000 */  lwc1       $f6, 0x0($t9)
/* 1983C8 801EA378 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
/* 1983CC 801EA37C 460A4100 */  add.s      $f4, $f8, $f10
/* 1983D0 801EA380 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
/* 1983D4 801EA384 00C24021 */  addu       $t0, $a2, $v0
/* 1983D8 801EA388 C4CA0000 */  lwc1       $f10, 0x0($a2)
/* 1983DC 801EA38C 46062201 */  sub.s      $f8, $f4, $f6
/* 1983E0 801EA390 C5040000 */  lwc1       $f4, 0x0($t0)
/* 1983E4 801EA394 4614A182 */  mul.s      $f6, $f20, $f20
/* 1983E8 801EA398 46045381 */  sub.s      $f14, $f10, $f4
/* 1983EC 801EA39C E7A80034 */  swc1       $f8, 0x34($sp)
/* 1983F0 801EA3A0 460E7202 */  mul.s      $f8, $f14, $f14
/* 1983F4 801EA3A4 E7AE002C */  swc1       $f14, 0x2C($sp)
.L801EA3A8_ovl10:
/* 1983F8 801EA3A8 0C00CAC8 */  jal        sqrtf
/* 1983FC 801EA3AC 46083300 */   add.s     $f12, $f6, $f8
/* 198400 801EA3B0 C7AE002C */  lwc1       $f14, 0x2C($sp)
/* 198404 801EA3B4 E7A00020 */  swc1       $f0, 0x20($sp)
/* 198408 801EA3B8 0C0061C3 */  jal        atan2f
/* 19840C 801EA3BC 4600A306 */   mov.s     $f12, $f20
/* 198410 801EA3C0 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 198414 801EA3C4 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 198418 801EA3C8 3C018022 */  lui        $at, %hi(D_8021D158_ovl9)
.L801EA3CC_ovl10:
/* 19841C 801EA3CC C432D158 */  lwc1       $f18, %lo(D_8021D158_ovl9)($at)
/* 198420 801EA3D0 8D2A0000 */  lw         $t2, 0x0($t1)
/* 198424 801EA3D4 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 198428 801EA3D8 44802000 */  mtc1       $zero, $f4
/* 19842C 801EA3DC 000A5880 */  sll        $t3, $t2, 2
/* 198430 801EA3E0 002B0821 */  addu       $at, $at, $t3
/* 198434 801EA3E4 C42A17D0 */  lwc1       $f10, %lo(D_800E17D0)($at)
/* 198438 801EA3E8 C7AC0020 */  lwc1       $f12, 0x20($sp)
/* 19843C 801EA3EC 3C018022 */  lui        $at, %hi(D_8021D15C_ovl9)
/* 198440 801EA3F0 460A0081 */  sub.s      $f2, $f0, $f10
/* 198444 801EA3F4 4602903E */  c.le.s     $f18, $f2
/* 198448 801EA3F8 00000000 */  nop
/* 19844C 801EA3FC 45000007 */  bc1f       .L801EA41C_ovl9
/* 198450 801EA400 00000000 */   nop
/* 198454 801EA404 C430D15C */  lwc1       $f16, %lo(D_8021D15C_ovl9)($at)
/* 198458 801EA408 46101081 */  sub.s      $f2, $f2, $f16
.L801EA40C_ovl9:
/* 19845C 801EA40C 4602903E */  c.le.s     $f18, $f2
/* 198460 801EA410 00000000 */  nop
/* 198464 801EA414 4503FFFD */  bc1tl      .L801EA40C_ovl9
/* 198468 801EA418 46101081 */   sub.s     $f2, $f2, $f16
.L801EA41C_ovl9:
/* 19846C 801EA41C 3C018022 */  lui        $at, %hi(D_8021D160_ovl9)
/* 198470 801EA420 C430D160 */  lwc1       $f16, %lo(D_8021D160_ovl9)($at)
/* 198474 801EA424 3C018022 */  lui        $at, %hi(D_8021D164_ovl9)
/* 198478 801EA428 C434D164 */  lwc1       $f20, %lo(D_8021D164_ovl9)($at)
/* 19847C 801EA42C 3C018022 */  lui        $at, %hi(D_8021D168_ovl9)
/* 198480 801EA430 4614103E */  c.le.s     $f2, $f20
/* 198484 801EA434 00000000 */  nop
/* 198488 801EA438 45020007 */  bc1fl      .L801EA458_ovl9
/* 19848C 801EA43C 4604103C */   c.lt.s    $f2, $f4
/* 198490 801EA440 46101080 */  add.s      $f2, $f2, $f16
.L801EA444_ovl9:
/* 198494 801EA444 4614103E */  c.le.s     $f2, $f20
/* 198498 801EA448 00000000 */  nop
/* 19849C 801EA44C 4503FFFD */  bc1tl      .L801EA444_ovl9
/* 1984A0 801EA450 46101080 */   add.s     $f2, $f2, $f16
/* 1984A4 801EA454 4604103C */  c.lt.s     $f2, $f4
.L801EA458_ovl9:
/* 1984A8 801EA458 00000000 */  nop
/* 1984AC 801EA45C 45020004 */  bc1fl      .L801EA470_ovl9
/* 1984B0 801EA460 46001006 */   mov.s     $f0, $f2
/* 1984B4 801EA464 10000002 */  b          .L801EA470_ovl9
/* 1984B8 801EA468 46001007 */   neg.s     $f0, $f2
/* 1984BC 801EA46C 46001006 */  mov.s      $f0, $f2
.L801EA470_ovl9:
/* 1984C0 801EA470 C426D168 */  lwc1       $f6, %lo(D_8021D168_ovl9)($at)
/* 1984C4 801EA474 4600303C */  c.lt.s     $f6, $f0
/* 1984C8 801EA478 00000000 */  nop
/* 1984CC 801EA47C 45000002 */  bc1f       .L801EA488_ovl9
/* 1984D0 801EA480 00000000 */   nop
/* 1984D4 801EA484 46006307 */  neg.s      $f12, $f12
.L801EA488_ovl9:
/* 1984D8 801EA488 0C0061C3 */  jal        atan2f
/* 1984DC 801EA48C C7AE0034 */   lwc1      $f14, 0x34($sp)
/* 1984E0 801EA490 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1984E4 801EA494 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 1984E8 801EA498 3C018022 */  lui        $at, %hi(D_8021D16C_ovl9)
/* 1984EC 801EA49C C430D16C */  lwc1       $f16, %lo(D_8021D16C_ovl9)($at)
/* 1984F0 801EA4A0 8CA40000 */  lw         $a0, 0x0($a1)
/* 1984F4 801EA4A4 3C018022 */  lui        $at, %hi(D_8021D170_ovl9)
/* 1984F8 801EA4A8 C432D170 */  lwc1       $f18, %lo(D_8021D170_ovl9)($at)
/* 1984FC 801EA4AC 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 198500 801EA4B0 00041080 */  sll        $v0, $a0, 2
/* 198504 801EA4B4 00220821 */  addu       $at, $at, $v0
/* 198508 801EA4B8 C428AA60 */  lwc1       $f8, %lo(D_800EAA60)($at)
/* 19850C 801EA4BC 3C018022 */  lui        $at, %hi(D_8021D174_ovl9)
glabel func_801EA4C0_ovl10
/* 198510 801EA4C0 3C06800F */  lui        $a2, %hi(D_800EA6E0)
/* 198514 801EA4C4 46080081 */  sub.s      $f2, $f0, $f8
/* 198518 801EA4C8 4602903E */  c.le.s     $f18, $f2
/* 19851C 801EA4CC 00000000 */  nop
/* 198520 801EA4D0 45020007 */  bc1fl      .L801EA4F0_ovl9
/* 198524 801EA4D4 4614103E */   c.le.s    $f2, $f20
/* 198528 801EA4D8 46101081 */  sub.s      $f2, $f2, $f16
.L801EA4DC_ovl9:
/* 19852C 801EA4DC 4602903E */  c.le.s     $f18, $f2
/* 198530 801EA4E0 00000000 */  nop
/* 198534 801EA4E4 4503FFFD */  bc1tl      .L801EA4DC_ovl9
/* 198538 801EA4E8 46101081 */   sub.s     $f2, $f2, $f16
/* 19853C 801EA4EC 4614103E */  c.le.s     $f2, $f20
.L801EA4F0_ovl9:
/* 198540 801EA4F0 00000000 */  nop
/* 198544 801EA4F4 45000006 */  bc1f       .L801EA510_ovl9
.L801EA4F8_ovl16:
/* 198548 801EA4F8 00000000 */   nop
/* 19854C 801EA4FC 46101080 */  add.s      $f2, $f2, $f16
.L801EA500_ovl9:
/* 198550 801EA500 4614103E */  c.le.s     $f2, $f20
/* 198554 801EA504 00000000 */  nop
/* 198558 801EA508 4503FFFD */  bc1tl      .L801EA500_ovl9
.L801EA50C_ovl16:
/* 19855C 801EA50C 46101080 */   add.s     $f2, $f2, $f16
.L801EA510_ovl9:
/* 198560 801EA510 C42CD174 */  lwc1       $f12, %lo(D_8021D174_ovl9)($at)
/* 198564 801EA514 24C6A6E0 */  addiu      $a2, $a2, %lo(D_800EA6E0)
/* 198568 801EA518 00C21821 */  addu       $v1, $a2, $v0
/* 19856C 801EA51C 460C1280 */  add.s      $f10, $f2, $f12
/* 198570 801EA520 C4600000 */  lwc1       $f0, 0x0($v1)
/* 198574 801EA524 4600503C */  c.lt.s     $f10, $f0
/* 198578 801EA528 00000000 */  nop
/* 19857C 801EA52C 45020011 */  bc1fl      .L801EA574_ovl9
/* 198580 801EA530 460C1201 */   sub.s     $f8, $f2, $f12
/* 198584 801EA534 460C0101 */  sub.s      $f4, $f0, $f12
/* 198588 801EA538 3C018022 */  lui        $at, %hi(D_8021D178_ovl9)
/* 19858C 801EA53C C422D178 */  lwc1       $f2, %lo(D_8021D178_ovl9)($at)
/* 198590 801EA540 E4640000 */  swc1       $f4, 0x0($v1)
/* 198594 801EA544 8CA40000 */  lw         $a0, 0x0($a1)
/* 198598 801EA548 00046080 */  sll        $t4, $a0, 2
/* 19859C 801EA54C 00CC1821 */  addu       $v1, $a2, $t4
/* 1985A0 801EA550 C4660000 */  lwc1       $f6, 0x0($v1)
/* 1985A4 801EA554 4602303C */  c.lt.s     $f6, $f2
/* 1985A8 801EA558 00000000 */  nop
/* 1985AC 801EA55C 45020018 */  bc1fl      .L801EA5C0_ovl9
/* 1985B0 801EA560 00041080 */   sll       $v0, $a0, 2
/* 1985B4 801EA564 E4620000 */  swc1       $f2, 0x0($v1)
glabel func_801EA568_ovl16
/* 1985B8 801EA568 10000014 */  b          .L801EA5BC_ovl9
/* 1985BC 801EA56C 8CA40000 */   lw        $a0, 0x0($a1)
/* 1985C0 801EA570 460C1201 */  sub.s      $f8, $f2, $f12
.L801EA574_ovl9:
/* 1985C4 801EA574 4608003C */  c.lt.s     $f0, $f8
/* 1985C8 801EA578 00000000 */  nop
/* 1985CC 801EA57C 45020010 */  bc1fl      .L801EA5C0_ovl9
/* 1985D0 801EA580 00041080 */   sll       $v0, $a0, 2
/* 1985D4 801EA584 460C0280 */  add.s      $f10, $f0, $f12
/* 1985D8 801EA588 3C018022 */  lui        $at, %hi(D_8021D17C_ovl9)
/* 1985DC 801EA58C C422D17C */  lwc1       $f2, %lo(D_8021D17C_ovl9)($at)
/* 1985E0 801EA590 E46A0000 */  swc1       $f10, 0x0($v1)
/* 1985E4 801EA594 8CA40000 */  lw         $a0, 0x0($a1)
/* 1985E8 801EA598 00046880 */  sll        $t5, $a0, 2
/* 1985EC 801EA59C 00CD1821 */  addu       $v1, $a2, $t5
/* 1985F0 801EA5A0 C4640000 */  lwc1       $f4, 0x0($v1)
/* 1985F4 801EA5A4 4604103C */  c.lt.s     $f2, $f4
/* 1985F8 801EA5A8 00000000 */  nop
/* 1985FC 801EA5AC 45020004 */  bc1fl      .L801EA5C0_ovl9
/* 198600 801EA5B0 00041080 */   sll       $v0, $a0, 2
/* 198604 801EA5B4 E4620000 */  swc1       $f2, 0x0($v1)
/* 198608 801EA5B8 8CA40000 */  lw         $a0, 0x0($a1)
.L801EA5BC_ovl9:
/* 19860C 801EA5BC 00041080 */  sll        $v0, $a0, 2
.L801EA5C0_ovl9:
/* 198610 801EA5C0 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* 198614 801EA5C4 01E27821 */  addu       $t7, $t7, $v0
/* 198618 801EA5C8 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* 19861C 801EA5CC 3C06800F */  lui        $a2, %hi(D_800EA6E0)
/* 198620 801EA5D0 24C6A6E0 */  addiu      $a2, $a2, %lo(D_800EA6E0)
/* 198624 801EA5D4 00C27021 */  addu       $t6, $a2, $v0
/* 198628 801EA5D8 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 19862C 801EA5DC 8DF80008 */  lw         $t8, 0x8($t7)
/* 198630 801EA5E0 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 198634 801EA5E4 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 198638 801EA5E8 E7060030 */  swc1       $f6, 0x30($t8)
/* 19863C 801EA5EC 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 198640 801EA5F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 198644 801EA5F4 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 198648 801EA5F8 8F220000 */  lw         $v0, 0x0($t9)
.L801EA5FC_ovl16:
/* 19864C 801EA5FC 00021080 */  sll        $v0, $v0, 2
/* 198650 801EA600 00220821 */  addu       $at, $at, $v0
/* 198654 801EA604 00C24021 */  addu       $t0, $a2, $v0
/* 198658 801EA608 C50A0000 */  lwc1       $f10, 0x0($t0)
/* 19865C 801EA60C C428AA60 */  lwc1       $f8, %lo(D_800EAA60)($at)
/* 198660 801EA610 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 198664 801EA614 00220821 */  addu       $at, $at, $v0
/* 198668 801EA618 460A4100 */  add.s      $f4, $f8, $f10
/* 19866C 801EA61C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 198670 801EA620 03E00008 */  jr         $ra
/* 198674 801EA624 E424A8A0 */   swc1      $f4, %lo(D_800EA8A0)($at)
