glabel func_801DE280_ovl10
/* 18C2D0 801DE280 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 18C2D4 801DE284 AFB60040 */  sw         $s6, 0x40($sp)
.L801DE288_ovl14:
/* 18C2D8 801DE288 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 18C2DC 801DE28C 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* 18C2E0 801DE290 8EC30000 */  lw         $v1, 0x0($s6)
/* 18C2E4 801DE294 AFBF0044 */  sw         $ra, 0x44($sp)
/* 18C2E8 801DE298 AFB5003C */  sw         $s5, 0x3C($sp)
/* 18C2EC 801DE29C AFB40038 */  sw         $s4, 0x38($sp)
/* 18C2F0 801DE2A0 AFB30034 */  sw         $s3, 0x34($sp)
/* 18C2F4 801DE2A4 AFB20030 */  sw         $s2, 0x30($sp)
.L801DE2A8_ovl11:
/* 18C2F8 801DE2A8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 18C2FC 801DE2AC AFB00028 */  sw         $s0, 0x28($sp)
.L801DE2B0_ovl16:
/* 18C300 801DE2B0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 18C304 801DE2B4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 18C308 801DE2B8 AFA40048 */  sw         $a0, 0x48($sp)
/* 18C30C 801DE2BC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 18C310 801DE2C0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 18C314 801DE2C4 240E0006 */  addiu      $t6, $zero, 0x6
/* 18C318 801DE2C8 000FC080 */  sll        $t8, $t7, 2
/* 18C31C 801DE2CC 00380821 */  addu       $at, $at, $t8
/* 18C320 801DE2D0 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 18C324 801DE2D4 8C680000 */  lw         $t0, 0x0($v1)
/* 18C328 801DE2D8 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 18C32C 801DE2DC 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
.L801DE2E0_ovl15:
/* 18C330 801DE2E0 00084880 */  sll        $t1, $t0, 2
/* 18C334 801DE2E4 00495021 */  addu       $t2, $v0, $t1
.L801DE2E8_ovl12:
/* 18C338 801DE2E8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 18C33C 801DE2EC 3C19801D */  lui        $t9, %hi(D_801C8080)
/* 18C340 801DE2F0 27398080 */  addiu      $t9, $t9, %lo(D_801C8080)
/* 18C344 801DE2F4 AD79008C */  sw         $t9, 0x8C($t3)
.L801DE2F8_ovl11:
/* 18C348 801DE2F8 8ECD0000 */  lw         $t5, 0x0($s6)
.L801DE2FC_ovl15:
/* 18C34C 801DE2FC 3C0C801D */  lui        $t4, %hi(D_801CB788)
/* 18C350 801DE300 258CB788 */  addiu      $t4, $t4, %lo(D_801CB788)
.L801DE304_ovl13:
/* 18C354 801DE304 8DAF0000 */  lw         $t7, 0x0($t5)
.L801DE308_ovl10:
/* 18C358 801DE308 3C01800F */  lui        $at, %hi(D_800E8920)
.L801DE30C_ovl13:
/* 18C35C 801DE30C 24090001 */  addiu      $t1, $zero, 0x1
.L801DE310_ovl17:
/* 18C360 801DE310 000F7080 */  sll        $t6, $t7, 2
/* 18C364 801DE314 004EC021 */  addu       $t8, $v0, $t6
/* 18C368 801DE318 8F080000 */  lw         $t0, 0x0($t8)
/* 18C36C 801DE31C 4480B000 */  mtc1       $zero, $f22
/* 18C370 801DE320 AD0C0098 */  sw         $t4, 0x98($t0)
/* 18C374 801DE324 8EC30000 */  lw         $v1, 0x0($s6)
/* 18C378 801DE328 4600B306 */  mov.s      $f12, $f22
.L801DE32C_ovl11:
/* 18C37C 801DE32C 8C6A0000 */  lw         $t2, 0x0($v1)
.L801DE330_ovl10:
/* 18C380 801DE330 000AC880 */  sll        $t9, $t2, 2
.L801DE334_ovl16:
/* 18C384 801DE334 00390821 */  addu       $at, $at, $t9
/* 18C388 801DE338 AC298920 */  sw         $t1, %lo(D_800E8920)($at)
glabel func_801DE33C_ovl11
/* 18C38C 801DE33C 8C6B0000 */  lw         $t3, 0x0($v1)
/* 18C390 801DE340 3C01800F */  lui        $at, %hi(D_800EB160)
/* 18C394 801DE344 000B6880 */  sll        $t5, $t3, 2
/* 18C398 801DE348 002D0821 */  addu       $at, $at, $t5
.L801DE34C_ovl15:
/* 18C39C 801DE34C 0C02BB30 */  jal        func_800AECC0
/* 18C3A0 801DE350 E436B160 */   swc1      $f22, %lo(D_800EB160)($at)
/* 18C3A4 801DE354 0C02BB48 */  jal        func_800AED20
/* 18C3A8 801DE358 4600B306 */   mov.s     $f12, $f22
/* 18C3AC 801DE35C 8EC30000 */  lw         $v1, 0x0($s6)
/* 18C3B0 801DE360 3C01800F */  lui        $at, %hi(D_800E9AA0)
.L801DE364_ovl17:
/* 18C3B4 801DE364 3C15800F */  lui        $s5, %hi(D_800EAC20)
/* 18C3B8 801DE368 8C6F0000 */  lw         $t7, 0x0($v1)
/* 18C3BC 801DE36C 26B5AC20 */  addiu      $s5, $s5, %lo(D_800EAC20)
.L801DE370_ovl15:
/* 18C3C0 801DE370 3C04800E */  lui        $a0, %hi(D_800E3910)
/* 18C3C4 801DE374 000F7080 */  sll        $t6, $t7, 2
/* 18C3C8 801DE378 002E0821 */  addu       $at, $at, $t6
/* 18C3CC 801DE37C AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 18C3D0 801DE380 8C620000 */  lw         $v0, 0x0($v1)
.L801DE384_ovl15:
/* 18C3D4 801DE384 24843910 */  addiu      $a0, $a0, %lo(D_800E3910)
/* 18C3D8 801DE388 00021080 */  sll        $v0, $v0, 2
/* 18C3DC 801DE38C 02A2C021 */  addu       $t8, $s5, $v0
/* 18C3E0 801DE390 C7040000 */  lwc1       $f4, 0x0($t8)
/* 18C3E4 801DE394 00826021 */  addu       $t4, $a0, $v0
/* 18C3E8 801DE398 4604B032 */  c.eq.s     $f22, $f4
/* 18C3EC 801DE39C 00000000 */  nop
/* 18C3F0 801DE3A0 4501008A */  bc1t       func_801DE5CC_ovl10
/* 18C3F4 801DE3A4 00000000 */   nop
/* 18C3F8 801DE3A8 E5960000 */  swc1       $f22, 0x0($t4)
glabel func_801DE3AC_ovl12
/* 18C3FC 801DE3AC 8C620000 */  lw         $v0, 0x0($v1)
/* 18C400 801DE3B0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 18C404 801DE3B4 3C05800E */  lui        $a1, %hi(D_800E3E50)
.L801DE3B8_ovl10:
/* 18C408 801DE3B8 00021080 */  sll        $v0, $v0, 2
/* 18C40C 801DE3BC 00824021 */  addu       $t0, $a0, $v0
/* 18C410 801DE3C0 C5000000 */  lwc1       $f0, 0x0($t0)
/* 18C414 801DE3C4 00220821 */  addu       $at, $at, $v0
/* 18C418 801DE3C8 24A53E50 */  addiu      $a1, $a1, %lo(D_800E3E50)
/* 18C41C 801DE3CC E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 18C420 801DE3D0 8C6A0000 */  lw         $t2, 0x0($v1)
glabel func_801DE3D4_ovl17
/* 18C424 801DE3D4 3C01800E */  lui        $at, %hi(D_800E3590)
/* 18C428 801DE3D8 3C14800E */  lui        $s4, %hi(D_800E6A10)
.L801DE3DC_ovl11:
/* 18C42C 801DE3DC 000A4880 */  sll        $t1, $t2, 2
/* 18C430 801DE3E0 00290821 */  addu       $at, $at, $t1
/* 18C434 801DE3E4 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
.L801DE3E8_ovl10:
/* 18C438 801DE3E8 8C790000 */  lw         $t9, 0x0($v1)
/* 18C43C 801DE3EC 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 18C440 801DE3F0 3C13800E */  lui        $s3, %hi(D_800E64D0)
.L801DE3F4_ovl11:
/* 18C444 801DE3F4 00195880 */  sll        $t3, $t9, 2
/* 18C448 801DE3F8 002B0821 */  addu       $at, $at, $t3
.L801DE3FC_ovl16:
/* 18C44C 801DE3FC E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
.L801DE400_ovl15:
/* 18C450 801DE400 8C6D0000 */  lw         $t5, 0x0($v1)
.L801DE404_ovl17:
/* 18C454 801DE404 3C01800E */  lui        $at, %hi(D_800E3210)
/* 18C458 801DE408 3C12800E */  lui        $s2, %hi(D_800E7880)
glabel func_801DE40C_ovl17
/* 18C45C 801DE40C 000D7880 */  sll        $t7, $t5, 2
/* 18C460 801DE410 002F0821 */  addu       $at, $at, $t7
/* 18C464 801DE414 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 18C468 801DE418 8C6E0000 */  lw         $t6, 0x0($v1)
glabel func_801DE41C_ovl12
/* 18C46C 801DE41C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 18C470 801DE420 26527880 */  addiu      $s2, $s2, %lo(D_800E7880)
/* 18C474 801DE424 000EC080 */  sll        $t8, $t6, 2
/* 18C478 801DE428 00380821 */  addu       $at, $at, $t8
/* 18C47C 801DE42C E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 18C480 801DE430 8C6C0000 */  lw         $t4, 0x0($v1)
.L801DE434_ovl16:
/* 18C484 801DE434 3C018022 */  lui        $at, %hi(D_8021CF78_ovl9)
/* 18C488 801DE438 C426CF78 */  lwc1       $f6, %lo(D_8021CF78_ovl9)($at)
/* 18C48C 801DE43C 000C4080 */  sll        $t0, $t4, 2
/* 18C490 801DE440 00A85021 */  addu       $t2, $a1, $t0
.L801DE444_ovl10:
/* 18C494 801DE444 E5460000 */  swc1       $f6, 0x0($t2)
/* 18C498 801DE448 8C620000 */  lw         $v0, 0x0($v1)
/* 18C49C 801DE44C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 18C4A0 801DE450 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
glabel func_801DE454_ovl11
/* 18C4A4 801DE454 00021080 */  sll        $v0, $v0, 2
/* 18C4A8 801DE458 00A24821 */  addu       $t1, $a1, $v0
/* 18C4AC 801DE45C C5220000 */  lwc1       $f2, 0x0($t1)
/* 18C4B0 801DE460 00220821 */  addu       $at, $at, $v0
/* 18C4B4 801DE464 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
/* 18C4B8 801DE468 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 18C4BC 801DE46C 8C790000 */  lw         $t9, 0x0($v1)
/* 18C4C0 801DE470 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801DE474_ovl10:
/* 18C4C4 801DE474 26946A10 */  addiu      $s4, $s4, %lo(D_800E6A10)
/* 18C4C8 801DE478 00195880 */  sll        $t3, $t9, 2
.L801DE47C_ovl16:
/* 18C4CC 801DE47C 002B0821 */  addu       $at, $at, $t3
/* 18C4D0 801DE480 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
glabel func_801DE484_ovl14
/* 18C4D4 801DE484 8C6D0000 */  lw         $t5, 0x0($v1)
/* 18C4D8 801DE488 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 18C4DC 801DE48C 24100010 */  addiu      $s0, $zero, 0x10
/* 18C4E0 801DE490 000D7880 */  sll        $t7, $t5, 2
/* 18C4E4 801DE494 01CF7021 */  addu       $t6, $t6, $t7
/* 18C4E8 801DE498 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* 18C4EC 801DE49C 3C118022 */  lui        $s1, %hi(D_8021BDB8_ovl9)
/* 18C4F0 801DE4A0 31D80001 */  andi       $t8, $t6, 0x1
.L801DE4A4_ovl16:
/* 18C4F4 801DE4A4 53000029 */  beql       $t8, $zero, .L801DE54C_ovl9
/* 18C4F8 801DE4A8 4481A000 */   mtc1      $at, $f20
.L801DE4AC_ovl15:
/* 18C4FC 801DE4AC 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 18C500 801DE4B0 3C14800E */  lui        $s4, %hi(D_800E6A10)
/* 18C504 801DE4B4 3C13800E */  lui        $s3, %hi(D_800E64D0)
/* 18C508 801DE4B8 3C12800E */  lui        $s2, %hi(D_800E7880)
/* 18C50C 801DE4BC 3C118022 */  lui        $s1, %hi(D_8021BDB8_ovl9)
/* 18C510 801DE4C0 4481A000 */  mtc1       $at, $f20
/* 18C514 801DE4C4 2631BDB8 */  addiu      $s1, $s1, %lo(D_8021BDB8_ovl9)
.L801DE4C8_ovl10:
/* 18C518 801DE4C8 26527880 */  addiu      $s2, $s2, %lo(D_800E7880)
/* 18C51C 801DE4CC 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
/* 18C520 801DE4D0 26946A10 */  addiu      $s4, $s4, %lo(D_800E6A10)
.L801DE4D4_ovl16:
/* 18C524 801DE4D4 24100020 */  addiu      $s0, $zero, 0x20
/* 18C528 801DE4D8 8ECC0000 */  lw         $t4, 0x0($s6)
.L801DE4DC_ovl9:
/* 18C52C 801DE4DC 44902000 */  mtc1       $s0, $f4
glabel func_801DE4E0_ovl12
/* 18C530 801DE4E0 24040001 */  addiu      $a0, $zero, 0x1
/* 18C534 801DE4E4 8D830000 */  lw         $v1, 0x0($t4)
.L801DE4E8_ovl16:
/* 18C538 801DE4E8 468021A0 */  cvt.s.w    $f6, $f4
/* 18C53C 801DE4EC 02435021 */  addu       $t2, $s2, $v1
/* 18C540 801DE4F0 91490000 */  lbu        $t1, 0x0($t2)
/* 18C544 801DE4F4 00031080 */  sll        $v0, $v1, 2
/* 18C548 801DE4F8 02A24021 */  addu       $t0, $s5, $v0
.L801DE4FC_ovl14:
/* 18C54C 801DE4FC 0009C880 */  sll        $t9, $t1, 2
/* 18C550 801DE500 02395821 */  addu       $t3, $s1, $t9
/* 18C554 801DE504 C56A0000 */  lwc1       $f10, 0x0($t3)
/* 18C558 801DE508 C5080000 */  lwc1       $f8, 0x0($t0)
.L801DE50C_ovl11:
/* 18C55C 801DE50C 02826821 */  addu       $t5, $s4, $v0
.L801DE510_ovl11:
/* 18C560 801DE510 C5B20000 */  lwc1       $f18, 0x0($t5)
/* 18C564 801DE514 460A4402 */  mul.s      $f16, $f8, $f10
/* 18C568 801DE518 02627821 */  addu       $t7, $s3, $v0
/* 18C56C 801DE51C 46148003 */  div.s      $f0, $f16, $f20
/* 18C570 801DE520 46003202 */  mul.s      $f8, $f6, $f0
glabel func_801DE524_ovl16
/* 18C574 801DE524 00000000 */  nop
glabel func_801DE528_ovl12
/* 18C578 801DE528 46089282 */  mul.s      $f10, $f18, $f8
/* 18C57C 801DE52C 0C002DAF */  jal        finish_current_thread
.L801DE530_ovl14:
/* 18C580 801DE530 E5EA0000 */   swc1      $f10, 0x0($t7)
.L801DE534_ovl11:
/* 18C584 801DE534 2610FFFF */  addiu      $s0, $s0, -0x1
/* 18C588 801DE538 5600FFE8 */  bnel       $s0, $zero, .L801DE4DC_ovl9
.L801DE53C_ovl14:
/* 18C58C 801DE53C 8ECC0000 */   lw        $t4, 0x0($s6)
/* 18C590 801DE540 1000001E */  b          .L801DE5BC_ovl9
/* 18C594 801DE544 8ECD0000 */   lw        $t5, 0x0($s6)
glabel func_801DE548_ovl17
/* 18C598 801DE548 4481A000 */  mtc1       $at, $f20
.L801DE54C_ovl9:
/* 18C59C 801DE54C 2631BDB8 */  addiu      $s1, $s1, %lo(D_8021BDB8_ovl9)
/* 18C5A0 801DE550 8ECE0000 */  lw         $t6, 0x0($s6)
.L801DE554_ovl9:
/* 18C5A4 801DE554 44904000 */  mtc1       $s0, $f8
/* 18C5A8 801DE558 24040001 */  addiu      $a0, $zero, 0x1
glabel func_801DE55C_ovl16
/* 18C5AC 801DE55C 8DC30000 */  lw         $v1, 0x0($t6)
/* 18C5B0 801DE560 468042A0 */  cvt.s.w    $f10, $f8
/* 18C5B4 801DE564 02436021 */  addu       $t4, $s2, $v1
.L801DE568_ovl14:
/* 18C5B8 801DE568 91880000 */  lbu        $t0, 0x0($t4)
/* 18C5BC 801DE56C 00031080 */  sll        $v0, $v1, 2
/* 18C5C0 801DE570 02A2C021 */  addu       $t8, $s5, $v0
/* 18C5C4 801DE574 00085080 */  sll        $t2, $t0, 2
.L801DE578_ovl14:
/* 18C5C8 801DE578 022A4821 */  addu       $t1, $s1, $t2
/* 18C5CC 801DE57C C5240000 */  lwc1       $f4, 0x0($t1)
/* 18C5D0 801DE580 C7100000 */  lwc1       $f16, 0x0($t8)
.L801DE584_ovl14:
/* 18C5D4 801DE584 0282C821 */  addu       $t9, $s4, $v0
/* 18C5D8 801DE588 C7320000 */  lwc1       $f18, 0x0($t9)
/* 18C5DC 801DE58C 46048182 */  mul.s      $f6, $f16, $f4
.L801DE590_ovl15:
/* 18C5E0 801DE590 02625821 */  addu       $t3, $s3, $v0
/* 18C5E4 801DE594 46143003 */  div.s      $f0, $f6, $f20
glabel func_801DE598_ovl14
/* 18C5E8 801DE598 46005402 */  mul.s      $f16, $f10, $f0
/* 18C5EC 801DE59C 00000000 */  nop
/* 18C5F0 801DE5A0 46109102 */  mul.s      $f4, $f18, $f16
/* 18C5F4 801DE5A4 0C002DAF */  jal        finish_current_thread
glabel func_801DE5A8_ovl14
/* 18C5F8 801DE5A8 E5640000 */   swc1      $f4, 0x0($t3)
/* 18C5FC 801DE5AC 2610FFFF */  addiu      $s0, $s0, -0x1
/* 18C600 801DE5B0 5600FFE8 */  bnel       $s0, $zero, .L801DE554_ovl9
/* 18C604 801DE5B4 8ECE0000 */   lw        $t6, 0x0($s6)
/* 18C608 801DE5B8 8ECD0000 */  lw         $t5, 0x0($s6)
.L801DE5BC_ovl9:
/* 18C60C 801DE5BC 8DAF0000 */  lw         $t7, 0x0($t5)
.L801DE5C0_ovl17:
/* 18C610 801DE5C0 000F7080 */  sll        $t6, $t7, 2
/* 18C614 801DE5C4 02AEC021 */  addu       $t8, $s5, $t6
.L801DE5C8_ovl14:
/* 18C618 801DE5C8 E7160000 */  swc1       $f22, 0x0($t8)
glabel func_801DE5CC_ovl10
/* 18C61C 801DE5CC 0C02CCFD */  jal        func_800B33F4
/* 18C620 801DE5D0 00000000 */   nop
/* 18C624 801DE5D4 0C02BE85 */  jal        func_800AFA14
.L801DE5D8_ovl14:
/* 18C628 801DE5D8 00000000 */   nop
glabel func_801DE5DC_ovl15
/* 18C62C 801DE5DC 8FBF0044 */  lw         $ra, 0x44($sp)
/* 18C630 801DE5E0 D7B40018 */  ldc1       $f20, 0x18($sp)
.L801DE5E4_ovl14:
/* 18C634 801DE5E4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 18C638 801DE5E8 8FB00028 */  lw         $s0, 0x28($sp)
/* 18C63C 801DE5EC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 18C640 801DE5F0 8FB20030 */  lw         $s2, 0x30($sp)
.L801DE5F4_ovl17:
/* 18C644 801DE5F4 8FB30034 */  lw         $s3, 0x34($sp)
.L801DE5F8_ovl14:
/* 18C648 801DE5F8 8FB40038 */  lw         $s4, 0x38($sp)
/* 18C64C 801DE5FC 8FB5003C */  lw         $s5, 0x3C($sp)
/* 18C650 801DE600 8FB60040 */  lw         $s6, 0x40($sp)
/* 18C654 801DE604 03E00008 */  jr         $ra
glabel func_801DE608_ovl14
/* 18C658 801DE608 27BD0048 */   addiu     $sp, $sp, 0x48
