glabel func_8021A2B8_ovl9
/* 1C8308 8021A2B8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1C830C 8021A2BC C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* 1C8310 8021A2C0 44802000 */  mtc1       $zero, $f4
/* 1C8314 8021A2C4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1C8318 8021A2C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C831C 8021A2CC 4604003C */  c.lt.s     $f0, $f4
/* 1C8320 8021A2D0 27A4001C */  addiu      $a0, $sp, 0x1C
/* 1C8324 8021A2D4 45020004 */  bc1fl      .L8021A2E8_ovl9
/* 1C8328 8021A2D8 46000086 */   mov.s     $f2, $f0
/* 1C832C 8021A2DC 10000002 */  b          .L8021A2E8_ovl9
/* 1C8330 8021A2E0 46000087 */   neg.s     $f2, $f0
/* 1C8334 8021A2E4 46000086 */  mov.s      $f2, $f0
.L8021A2E8_ovl9:
/* 1C8338 8021A2E8 0C066A40 */  jal        func_8019A900_ovl7
/* 1C833C 8021A2EC E7A20024 */   swc1      $f2, 0x24($sp)
/* 1C8340 8021A2F0 1040001C */  beqz       $v0, .L8021A364_ovl9
/* 1C8344 8021A2F4 C7A20024 */   lwc1      $f2, 0x24($sp)
/* 1C8348 8021A2F8 8FAE001C */  lw         $t6, 0x1C($sp)
/* 1C834C 8021A2FC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C8350 8021A300 44813000 */  mtc1       $at, $f6
/* 1C8354 8021A304 448E4000 */  mtc1       $t6, $f8
/* 1C8358 8021A308 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C835C 8021A30C 468042A0 */  cvt.s.w    $f10, $f8
/* 1C8360 8021A310 460A3032 */  c.eq.s     $f6, $f10
/* 1C8364 8021A314 00000000 */  nop
/* 1C8368 8021A318 4500000A */  bc1f       .L8021A344_ovl9
/* 1C836C 8021A31C 00000000 */   nop
/* 1C8370 8021A320 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C8374 8021A324 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C8378 8021A328 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1C837C 8021A32C 240F0001 */  addiu      $t7, $zero, 0x1
/* 1C8380 8021A330 8C580000 */  lw         $t8, 0x0($v0)
/* 1C8384 8021A334 0018C880 */  sll        $t9, $t8, 2
/* 1C8388 8021A338 00390821 */  addu       $at, $at, $t9
/* 1C838C 8021A33C 10000011 */  b          .L8021A384_ovl9
/* 1C8390 8021A340 AC2F9AA0 */   sw        $t7, %lo(D_800E9AA0)($at)
.L8021A344_ovl9:
/* 1C8394 8021A344 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C8398 8021A348 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1C839C 8021A34C 2408FFFF */  addiu      $t0, $zero, -0x1
/* 1C83A0 8021A350 8C490000 */  lw         $t1, 0x0($v0)
/* 1C83A4 8021A354 00095080 */  sll        $t2, $t1, 2
/* 1C83A8 8021A358 002A0821 */  addu       $at, $at, $t2
/* 1C83AC 8021A35C 10000009 */  b          .L8021A384_ovl9
/* 1C83B0 8021A360 AC289AA0 */   sw        $t0, %lo(D_800E9AA0)($at)
.L8021A364_ovl9:
/* 1C83B4 8021A364 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C83B8 8021A368 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C83BC 8021A36C 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1C83C0 8021A370 240BFFFF */  addiu      $t3, $zero, -0x1
/* 1C83C4 8021A374 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1C83C8 8021A378 000C6880 */  sll        $t5, $t4, 2
/* 1C83CC 8021A37C 002D0821 */  addu       $at, $at, $t5
/* 1C83D0 8021A380 AC2B9AA0 */  sw         $t3, %lo(D_800E9AA0)($at)
.L8021A384_ovl9:
/* 1C83D4 8021A384 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 1C83D8 8021A388 44818000 */  mtc1       $at, $f16
/* 1C83DC 8021A38C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1C83E0 8021A390 4610103C */  c.lt.s     $f2, $f16
/* 1C83E4 8021A394 00000000 */  nop
/* 1C83E8 8021A398 45020009 */  bc1fl      .L8021A3C0_ovl9
/* 1C83EC 8021A39C 44819000 */   mtc1      $at, $f18
/* 1C83F0 8021A3A0 8C580000 */  lw         $t8, 0x0($v0)
/* 1C83F4 8021A3A4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C83F8 8021A3A8 240E0001 */  addiu      $t6, $zero, 0x1
/* 1C83FC 8021A3AC 00187880 */  sll        $t7, $t8, 2
/* 1C8400 8021A3B0 002F0821 */  addu       $at, $at, $t7
/* 1C8404 8021A3B4 10000014 */  b          .L8021A408_ovl9
/* 1C8408 8021A3B8 AC2E98E0 */   sw        $t6, %lo(D_800E98E0)($at)
/* 1C840C 8021A3BC 44819000 */  mtc1       $at, $f18
.L8021A3C0_ovl9:
/* 1C8410 8021A3C0 00000000 */  nop
/* 1C8414 8021A3C4 4612103E */  c.le.s     $f2, $f18
/* 1C8418 8021A3C8 00000000 */  nop
/* 1C841C 8021A3CC 45020009 */  bc1fl      .L8021A3F4_ovl9
/* 1C8420 8021A3D0 8C4C0000 */   lw        $t4, 0x0($v0)
/* 1C8424 8021A3D4 8C490000 */  lw         $t1, 0x0($v0)
/* 1C8428 8021A3D8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C842C 8021A3DC 24190002 */  addiu      $t9, $zero, 0x2
/* 1C8430 8021A3E0 00094080 */  sll        $t0, $t1, 2
/* 1C8434 8021A3E4 00280821 */  addu       $at, $at, $t0
/* 1C8438 8021A3E8 10000007 */  b          .L8021A408_ovl9
/* 1C843C 8021A3EC AC3998E0 */   sw        $t9, %lo(D_800E98E0)($at)
/* 1C8440 8021A3F0 8C4C0000 */  lw         $t4, 0x0($v0)
.L8021A3F4_ovl9:
/* 1C8444 8021A3F4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C8448 8021A3F8 240A0003 */  addiu      $t2, $zero, 0x3
/* 1C844C 8021A3FC 000C5880 */  sll        $t3, $t4, 2
/* 1C8450 8021A400 002B0821 */  addu       $at, $at, $t3
/* 1C8454 8021A404 AC2A98E0 */  sw         $t2, %lo(D_800E98E0)($at)
.L8021A408_ovl9:
/* 1C8458 8021A408 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C845C 8021A40C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1C8460 8021A410 03E00008 */  jr         $ra
/* 1C8464 8021A414 00000000 */   nop
