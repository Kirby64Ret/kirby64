glabel func_80227B20_ovl19
/* 248230 80227B20 3C0E800D */  lui        $t6, %hi(D_800D6B54)
/* 248234 80227B24 8DCE6B54 */  lw         $t6, %lo(D_800D6B54)($t6)
/* 248238 80227B28 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 24823C 80227B2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 248240 80227B30 15C0000E */  bnez       $t6, .L80227B6C_ovl19
/* 248244 80227B34 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* 248248 80227B38 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24824C 80227B3C 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 248250 80227B40 44802000 */  mtc1       $zero, $f4
/* 248254 80227B44 8C430000 */  lw         $v1, 0x0($v0)
/* 248258 80227B48 00031880 */  sll        $v1, $v1, 2
/* 24825C 80227B4C 00230821 */  addu       $at, $at, $v1
/* 248260 80227B50 C4267B20 */  lwc1       $f6, %lo(D_800E7B20)($at)
/* 248264 80227B54 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 248268 80227B58 00230821 */  addu       $at, $at, $v1
/* 24826C 80227B5C 46062032 */  c.eq.s     $f4, $f6
/* 248270 80227B60 00000000 */  nop
/* 248274 80227B64 45000003 */  bc1f       .L80227B74_ovl19
/* 248278 80227B68 00000000 */   nop
.L80227B6C_ovl19:
/* 24827C 80227B6C 10000042 */  b          .L80227C78_ovl19
/* 248280 80227B70 24020001 */   addiu     $v0, $zero, 0x1
.L80227B74_ovl19:
/* 248284 80227B74 C4282B10 */  lwc1       $f8, %lo(gEntitiesPosXArray)($at)
/* 248288 80227B78 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 24828C 80227B7C 27A4002C */  addiu      $a0, $sp, 0x2C
/* 248290 80227B80 E7A8002C */  swc1       $f8, 0x2C($sp)
/* 248294 80227B84 8C4F0000 */  lw         $t7, 0x0($v0)
/* 248298 80227B88 27A50020 */  addiu      $a1, $sp, 0x20
/* 24829C 80227B8C 000FC080 */  sll        $t8, $t7, 2
/* 2482A0 80227B90 00380821 */  addu       $at, $at, $t8
/* 2482A4 80227B94 C42A2CD0 */  lwc1       $f10, %lo(gEntitiesPosYArray)($at)
/* 2482A8 80227B98 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* 2482AC 80227B9C E7AA0030 */  swc1       $f10, 0x30($sp)
/* 2482B0 80227BA0 8C590000 */  lw         $t9, 0x0($v0)
/* 2482B4 80227BA4 00194080 */  sll        $t0, $t9, 2
/* 2482B8 80227BA8 00280821 */  addu       $at, $at, $t0
/* 2482BC 80227BAC C4302E90 */  lwc1       $f16, %lo(gEntitiesPosZArray)($at)
/* 2482C0 80227BB0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 2482C4 80227BB4 E7B00034 */  swc1       $f16, 0x34($sp)
/* 2482C8 80227BB8 8C490000 */  lw         $t1, 0x0($v0)
/* 2482CC 80227BBC 00095080 */  sll        $t2, $t1, 2
/* 2482D0 80227BC0 002A0821 */  addu       $at, $at, $t2
/* 2482D4 80227BC4 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
/* 2482D8 80227BC8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 2482DC 80227BCC E7B20020 */  swc1       $f18, 0x20($sp)
/* 2482E0 80227BD0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 2482E4 80227BD4 000B6080 */  sll        $t4, $t3, 2
/* 2482E8 80227BD8 002C0821 */  addu       $at, $at, $t4
/* 2482EC 80227BDC C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 2482F0 80227BE0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 2482F4 80227BE4 E7A40024 */  swc1       $f4, 0x24($sp)
/* 2482F8 80227BE8 8C4D0000 */  lw         $t5, 0x0($v0)
/* 2482FC 80227BEC 000D7080 */  sll        $t6, $t5, 2
/* 248300 80227BF0 002E0821 */  addu       $at, $at, $t6
/* 248304 80227BF4 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
/* 248308 80227BF8 0C0411D3 */  jal        func_8010474C
/* 24830C 80227BFC E7A60028 */   swc1      $f6, 0x28($sp)
/* 248310 80227C00 10400005 */  beqz       $v0, .L80227C18_ovl19
/* 248314 80227C04 00000000 */   nop
/* 248318 80227C08 0C047503 */  jal        func_8011D40C
/* 24831C 80227C0C 00000000 */   nop
/* 248320 80227C10 10000019 */  b          .L80227C78_ovl19
/* 248324 80227C14 24020001 */   addiu     $v0, $zero, 0x1
.L80227C18_ovl19:
/* 248328 80227C18 3C028013 */  lui        $v0, %hi(gKirbyState)
/* 24832C 80227C1C 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 248330 80227C20 8C4F0140 */  lw         $t7, 0x140($v0)
/* 248334 80227C24 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 248338 80227C28 51E00013 */  beql       $t7, $zero, .L80227C78_ovl19
/* 24833C 80227C2C 00001025 */   or        $v0, $zero, $zero
/* 248340 80227C30 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 248344 80227C34 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 248348 80227C38 44804000 */  mtc1       $zero, $f8
/* 24834C 80227C3C 8F190000 */  lw         $t9, 0x0($t8)
/* 248350 80227C40 00194080 */  sll        $t0, $t9, 2
/* 248354 80227C44 00280821 */  addu       $at, $at, $t0
/* 248358 80227C48 C42A7B20 */  lwc1       $f10, %lo(D_800E7B20)($at)
/* 24835C 80227C4C 460A4032 */  c.eq.s     $f8, $f10
/* 248360 80227C50 00000000 */  nop
/* 248364 80227C54 45030008 */  bc1tl      .L80227C78_ovl19
/* 248368 80227C58 00001025 */   or        $v0, $zero, $zero
/* 24836C 80227C5C 8C490044 */  lw         $t1, 0x44($v0)
/* 248370 80227C60 24010004 */  addiu      $at, $zero, 0x4
/* 248374 80227C64 51210004 */  beql       $t1, $at, .L80227C78_ovl19
/* 248378 80227C68 00001025 */   or        $v0, $zero, $zero
/* 24837C 80227C6C 10000002 */  b          .L80227C78_ovl19
/* 248380 80227C70 24020001 */   addiu     $v0, $zero, 0x1
/* 248384 80227C74 00001025 */  or         $v0, $zero, $zero
.L80227C78_ovl19:
/* 248388 80227C78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24838C 80227C7C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 248390 80227C80 03E00008 */  jr         $ra
/* 248394 80227C84 00000000 */   nop
