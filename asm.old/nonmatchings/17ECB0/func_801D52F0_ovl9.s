glabel func_801D52F0_ovl9
/* 183340 801D52F0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 183344 801D52F4 3C0146C8 */  lui        $at, (0x46C80000 >> 16)
/* 183348 801D52F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 18334C 801D52FC 44816000 */  mtc1       $at, $f12
/* 183350 801D5300 0C066DCE */  jal        func_8019B738_ovl7
/* 183354 801D5304 AFA40038 */   sw        $a0, 0x38($sp)
/* 183358 801D5308 10400015 */  beqz       $v0, .L801D5360_ovl9
/* 18335C 801D530C 3C058005 */   lui       $a1, %hi(D_8004A7C4)
/* 183360 801D5310 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 183364 801D5314 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* 183368 801D5318 25CE98E0 */  addiu      $t6, $t6, %lo(D_800E98E0)
/* 18336C 801D531C 8CA30000 */  lw         $v1, 0x0($a1)
/* 183370 801D5320 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 183374 801D5324 240F0004 */  addiu      $t7, $zero, 0x4
/* 183378 801D5328 00031880 */  sll        $v1, $v1, 2
/* 18337C 801D532C 006E1021 */  addu       $v0, $v1, $t6
/* 183380 801D5330 8C440000 */  lw         $a0, 0x0($v0)
/* 183384 801D5334 00230821 */  addu       $at, $at, $v1
/* 183388 801D5338 1C8000DC */  bgtz       $a0, .L801D56AC_ovl9
/* 18338C 801D533C 00000000 */   nop
/* 183390 801D5340 AC2FDC50 */  sw         $t7, %lo(gEntityVtableIndexArray)($at)
/* 183394 801D5344 8CB80000 */  lw         $t8, 0x0($a1)
/* 183398 801D5348 3C08800F */  lui        $t0, %hi(D_800E98E0)
/* 18339C 801D534C 250898E0 */  addiu      $t0, $t0, %lo(D_800E98E0)
/* 1833A0 801D5350 0018C880 */  sll        $t9, $t8, 2
/* 1833A4 801D5354 03281021 */  addu       $v0, $t9, $t0
/* 1833A8 801D5358 100000D4 */  b          .L801D56AC_ovl9
/* 1833AC 801D535C 8C440000 */   lw        $a0, 0x0($v0)
.L801D5360_ovl9:
/* 1833B0 801D5360 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1833B4 801D5364 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 1833B8 801D5368 3C02800F */  lui        $v0, %hi(D_800E9AA0)
/* 1833BC 801D536C 8CA60000 */  lw         $a2, 0x0($a1)
/* 1833C0 801D5370 00061880 */  sll        $v1, $a2, 2
/* 1833C4 801D5374 00431021 */  addu       $v0, $v0, $v1
/* 1833C8 801D5378 8C429AA0 */  lw         $v0, %lo(D_800E9AA0)($v0)
/* 1833CC 801D537C 1040000B */  beqz       $v0, .L801D53AC_ovl9
.L801D5380_ovl8:
/* 1833D0 801D5380 24070001 */   addiu     $a3, $zero, 0x1
/* 1833D4 801D5384 10470020 */  beq        $v0, $a3, .L801D5408_ovl9
/* 1833D8 801D5388 3C04800E */   lui       $a0, %hi(gEntitiesNextPosYArray)
/* 1833DC 801D538C 24010002 */  addiu      $at, $zero, 0x2
/* 1833E0 801D5390 10410032 */  beq        $v0, $at, .L801D545C_ovl9
/* 1833E4 801D5394 00C02025 */   or        $a0, $a2, $zero
/* 1833E8 801D5398 24010003 */  addiu      $at, $zero, 0x3
/* 1833EC 801D539C 1041002F */  beq        $v0, $at, .L801D545C_ovl9
/* 1833F0 801D53A0 00000000 */   nop
/* 1833F4 801D53A4 1000007A */  b          .L801D5590_ovl9
/* 1833F8 801D53A8 00000000 */   nop
.L801D53AC_ovl9:
/* 1833FC 801D53AC 3C04800E */  lui        $a0, %hi(gEntitiesNextPosYArray)
/* 183400 801D53B0 24842790 */  addiu      $a0, $a0, %lo(gEntitiesNextPosYArray)
/* 183404 801D53B4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 183408 801D53B8 44813000 */  mtc1       $at, $f6
/* 18340C 801D53BC C4840000 */  lwc1       $f4, 0x0($a0)
/* 183410 801D53C0 00834821 */  addu       $t1, $a0, $v1
/* 183414 801D53C4 C52A0000 */  lwc1       $f10, 0x0($t1)
/* 183418 801D53C8 46062200 */  add.s      $f8, $f4, $f6
/* 18341C 801D53CC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 183420 801D53D0 00230821 */  addu       $at, $at, $v1
/* 183424 801D53D4 240A0002 */  addiu      $t2, $zero, 0x2
/* 183428 801D53D8 460A403C */  c.lt.s     $f8, $f10
/* 18342C 801D53DC 00000000 */  nop
/* 183430 801D53E0 45000007 */  bc1f       .L801D5400_ovl9
/* 183434 801D53E4 00000000 */   nop
/* 183438 801D53E8 AC2ADC50 */  sw         $t2, %lo(gEntityVtableIndexArray)($at)
/* 18343C 801D53EC 8CA30000 */  lw         $v1, 0x0($a1)
/* 183440 801D53F0 3C02800F */  lui        $v0, %hi(D_800E9AA0)
/* 183444 801D53F4 00031880 */  sll        $v1, $v1, 2
/* 183448 801D53F8 00431021 */  addu       $v0, $v0, $v1
/* 18344C 801D53FC 8C429AA0 */  lw         $v0, %lo(D_800E9AA0)($v0)
.L801D5400_ovl9:
/* 183450 801D5400 10000063 */  b          .L801D5590_ovl9
/* 183454 801D5404 24070001 */   addiu     $a3, $zero, 0x1
.L801D5408_ovl9:
/* 183458 801D5408 24842790 */  addiu      $a0, $a0, %lo(gEntitiesNextPosYArray)
/* 18345C 801D540C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 183460 801D5410 44812000 */  mtc1       $at, $f4
.L801D5414_ovl8:
/* 183464 801D5414 C4920000 */  lwc1       $f18, 0x0($a0)
/* 183468 801D5418 00835821 */  addu       $t3, $a0, $v1
/* 18346C 801D541C C5700000 */  lwc1       $f16, 0x0($t3)
/* 183470 801D5420 46049180 */  add.s      $f6, $f18, $f4
/* 183474 801D5424 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 183478 801D5428 00230821 */  addu       $at, $at, $v1
/* 18347C 801D542C 240C0002 */  addiu      $t4, $zero, 0x2
/* 183480 801D5430 4606803C */  c.lt.s     $f16, $f6
/* 183484 801D5434 00000000 */  nop
/* 183488 801D5438 45000055 */  bc1f       .L801D5590_ovl9
/* 18348C 801D543C 00000000 */   nop
/* 183490 801D5440 AC2CDC50 */  sw         $t4, %lo(gEntityVtableIndexArray)($at)
/* 183494 801D5444 8CA30000 */  lw         $v1, 0x0($a1)
/* 183498 801D5448 3C02800F */  lui        $v0, %hi(D_800E9AA0)
/* 18349C 801D544C 00031880 */  sll        $v1, $v1, 2
/* 1834A0 801D5450 00431021 */  addu       $v0, $v0, $v1
/* 1834A4 801D5454 1000004E */  b          .L801D5590_ovl9
/* 1834A8 801D5458 8C429AA0 */   lw        $v0, %lo(D_800E9AA0)($v0)
.L801D545C_ovl9:
/* 1834AC 801D545C 0C03E60A */  jal        func_800F9828
/* 1834B0 801D5460 00002825 */   or        $a1, $zero, $zero
/* 1834B4 801D5464 3C018022 */  lui        $at, %hi(D_8021CEA8_ovl9)
/* 1834B8 801D5468 C428CEA8 */  lwc1       $f8, %lo(D_8021CEA8_ovl9)($at)
/* 1834BC 801D546C 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
/* 1834C0 801D5470 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
.L801D5474_ovl8:
/* 1834C4 801D5474 46080032 */  c.eq.s     $f0, $f8
/* 1834C8 801D5478 24070001 */  addiu      $a3, $zero, 0x1
/* 1834CC 801D547C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1834D0 801D5480 4502001D */  bc1fl      .L801D54F8_ovl9
/* 1834D4 801D5484 44800000 */   mtc1      $zero, $f0
/* 1834D8 801D5488 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1834DC 801D548C C44A0000 */  lwc1       $f10, 0x0($v0)
/* 1834E0 801D5490 3C04800E */  lui        $a0, %hi(gEntitiesNextPosZArray)
/* 1834E4 801D5494 8DA30000 */  lw         $v1, 0x0($t5)
/* 1834E8 801D5498 24842950 */  addiu      $a0, $a0, %lo(gEntitiesNextPosZArray)
/* 1834EC 801D549C C4840000 */  lwc1       $f4, 0x0($a0)
/* 1834F0 801D54A0 00031880 */  sll        $v1, $v1, 2
/* 1834F4 801D54A4 00437021 */  addu       $t6, $v0, $v1
/* 1834F8 801D54A8 C5D20000 */  lwc1       $f18, 0x0($t6)
/* 1834FC 801D54AC 00837821 */  addu       $t7, $a0, $v1
/* 183500 801D54B0 C5F00000 */  lwc1       $f16, 0x0($t7)
/* 183504 801D54B4 46125001 */  sub.s      $f0, $f10, $f18
/* 183508 801D54B8 46102081 */  sub.s      $f2, $f4, $f16
/* 18350C 801D54BC 46000182 */  mul.s      $f6, $f0, $f0
/* 183510 801D54C0 00000000 */  nop
/* 183514 801D54C4 46021202 */  mul.s      $f8, $f2, $f2
/* 183518 801D54C8 0C00CAC8 */  jal        sqrtf
/* 18351C 801D54CC 46083300 */   add.s     $f12, $f6, $f8
/* 183520 801D54D0 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 183524 801D54D4 0C066D82 */  jal        func_8019B608_ovl7
/* 183528 801D54D8 00002025 */   or        $a0, $zero, $zero
/* 18352C 801D54DC C7AA001C */  lwc1       $f10, 0x1C($sp)
/* 183530 801D54E0 24070001 */  addiu      $a3, $zero, 0x1
/* 183534 801D54E4 460A0082 */  mul.s      $f2, $f0, $f10
/* 183538 801D54E8 44800000 */  mtc1       $zero, $f0
/* 18353C 801D54EC 10000004 */  b          .L801D5500_ovl9
/* 183540 801D54F0 00000000 */   nop
/* 183544 801D54F4 44800000 */  mtc1       $zero, $f0
.L801D54F8_ovl9:
/* 183548 801D54F8 00000000 */  nop
/* 18354C 801D54FC 46000086 */  mov.s      $f2, $f0
.L801D5500_ovl9:
/* 183550 801D5500 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 183554 801D5504 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 183558 801D5508 3C04800F */  lui        $a0, %hi(D_800E9AA0)
/* 18355C 801D550C 24010002 */  addiu      $at, $zero, 0x2
/* 183560 801D5510 8CA30000 */  lw         $v1, 0x0($a1)
/* 183564 801D5514 00031880 */  sll        $v1, $v1, 2
/* 183568 801D5518 00832021 */  addu       $a0, $a0, $v1
/* 18356C 801D551C 8C849AA0 */  lw         $a0, %lo(D_800E9AA0)($a0)
/* 183570 801D5520 5481000F */  bnel       $a0, $at, .L801D5560_ovl9
/* 183574 801D5524 4600103C */   c.lt.s    $f2, $f0
/* 183578 801D5528 4602003C */  c.lt.s     $f0, $f2
/* 18357C 801D552C 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 183580 801D5530 00230821 */  addu       $at, $at, $v1
/* 183584 801D5534 24180002 */  addiu      $t8, $zero, 0x2
/* 183588 801D5538 45020015 */  bc1fl      .L801D5590_ovl9
/* 18358C 801D553C 00801025 */   or        $v0, $a0, $zero
/* 183590 801D5540 AC38DC50 */  sw         $t8, %lo(gEntityVtableIndexArray)($at)
/* 183594 801D5544 8CA30000 */  lw         $v1, 0x0($a1)
/* 183598 801D5548 3C04800F */  lui        $a0, %hi(D_800E9AA0)
/* 18359C 801D554C 00031880 */  sll        $v1, $v1, 2
/* 1835A0 801D5550 00832021 */  addu       $a0, $a0, $v1
/* 1835A4 801D5554 1000000D */  b          .L801D558C_ovl9
/* 1835A8 801D5558 8C849AA0 */   lw        $a0, %lo(D_800E9AA0)($a0)
/* 1835AC 801D555C 4600103C */  c.lt.s     $f2, $f0
.L801D5560_ovl9:
/* 1835B0 801D5560 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1835B4 801D5564 00230821 */  addu       $at, $at, $v1
/* 1835B8 801D5568 24190002 */  addiu      $t9, $zero, 0x2
/* 1835BC 801D556C 45020008 */  bc1fl      .L801D5590_ovl9
/* 1835C0 801D5570 00801025 */   or        $v0, $a0, $zero
/* 1835C4 801D5574 AC39DC50 */  sw         $t9, %lo(gEntityVtableIndexArray)($at)
/* 1835C8 801D5578 8CA30000 */  lw         $v1, 0x0($a1)
/* 1835CC 801D557C 3C04800F */  lui        $a0, %hi(D_800E9AA0)
/* 1835D0 801D5580 00031880 */  sll        $v1, $v1, 2
/* 1835D4 801D5584 00832021 */  addu       $a0, $a0, $v1
/* 1835D8 801D5588 8C849AA0 */  lw         $a0, %lo(D_800E9AA0)($a0)
.L801D558C_ovl9:
/* 1835DC 801D558C 00801025 */  or         $v0, $a0, $zero
.L801D5590_ovl9:
/* 1835E0 801D5590 1040000B */  beqz       $v0, .L801D55C0_ovl9
/* 1835E4 801D5594 00000000 */   nop
/* 1835E8 801D5598 10470018 */  beq        $v0, $a3, .L801D55FC_ovl9
/* 1835EC 801D559C 24010002 */   addiu     $at, $zero, 0x2
/* 1835F0 801D55A0 10410025 */  beq        $v0, $at, .L801D5638_ovl9
/* 1835F4 801D55A4 24010003 */   addiu     $at, $zero, 0x3
/* 1835F8 801D55A8 10410032 */  beq        $v0, $at, .L801D5674_ovl9
/* 1835FC 801D55AC 3C08800F */   lui       $t0, %hi(D_800E98E0)
/* 183600 801D55B0 250898E0 */  addiu      $t0, $t0, %lo(D_800E98E0)
/* 183604 801D55B4 00681021 */  addu       $v0, $v1, $t0
/* 183608 801D55B8 1000003C */  b          .L801D56AC_ovl9
/* 18360C 801D55BC 8C440000 */   lw        $a0, 0x0($v0)
.L801D55C0_ovl9:
/* 183610 801D55C0 3C098013 */  lui        $t1, %hi(D_8012BCA0)
/* 183614 801D55C4 8D29BCA0 */  lw         $t1, %lo(D_8012BCA0)($t1)
/* 183618 801D55C8 3C0C800F */  lui        $t4, %hi(D_800E98E0)
/* 18361C 801D55CC 258C98E0 */  addiu      $t4, $t4, %lo(D_800E98E0)
/* 183620 801D55D0 000954C2 */  srl        $t2, $t1, 19
/* 183624 801D55D4 314B01C0 */  andi       $t3, $t2, 0x1C0
/* 183628 801D55D8 11600005 */  beqz       $t3, .L801D55F0_ovl9
/* 18362C 801D55DC 3C01800E */   lui       $at, %hi(gEntityVtableIndexArray)
/* 183630 801D55E0 00230821 */  addu       $at, $at, $v1
/* 183634 801D55E4 AC27DC50 */  sw         $a3, %lo(gEntityVtableIndexArray)($at)
/* 183638 801D55E8 8CA30000 */  lw         $v1, 0x0($a1)
/* 18363C 801D55EC 00031880 */  sll        $v1, $v1, 2
.L801D55F0_ovl9:
/* 183640 801D55F0 006C1021 */  addu       $v0, $v1, $t4
/* 183644 801D55F4 1000002D */  b          .L801D56AC_ovl9
/* 183648 801D55F8 8C440000 */   lw        $a0, 0x0($v0)
.L801D55FC_ovl9:
/* 18364C 801D55FC 3C0D8013 */  lui        $t5, %hi(D_8012BCA0)
/* 183650 801D5600 8DADBCA0 */  lw         $t5, %lo(D_8012BCA0)($t5)
/* 183654 801D5604 3C18800F */  lui        $t8, %hi(D_800E98E0)
/* 183658 801D5608 271898E0 */  addiu      $t8, $t8, %lo(D_800E98E0)
glabel func_801D560C_ovl8
/* 18365C 801D560C 000D74C2 */  srl        $t6, $t5, 19
/* 183660 801D5610 31CF0E00 */  andi       $t7, $t6, 0xE00
/* 183664 801D5614 11E00005 */  beqz       $t7, .L801D562C_ovl9
/* 183668 801D5618 3C01800E */   lui       $at, %hi(gEntityVtableIndexArray)
/* 18366C 801D561C 00230821 */  addu       $at, $at, $v1
/* 183670 801D5620 AC27DC50 */  sw         $a3, %lo(gEntityVtableIndexArray)($at)
/* 183674 801D5624 8CA30000 */  lw         $v1, 0x0($a1)
/* 183678 801D5628 00031880 */  sll        $v1, $v1, 2
.L801D562C_ovl9:
/* 18367C 801D562C 00781021 */  addu       $v0, $v1, $t8
/* 183680 801D5630 1000001E */  b          .L801D56AC_ovl9
/* 183684 801D5634 8C440000 */   lw        $a0, 0x0($v0)
.L801D5638_ovl9:
/* 183688 801D5638 3C198013 */  lui        $t9, %hi(D_8012BCA0)
/* 18368C 801D563C 8F39BCA0 */  lw         $t9, %lo(D_8012BCA0)($t9)
/* 183690 801D5640 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* 183694 801D5644 254A98E0 */  addiu      $t2, $t2, %lo(D_800E98E0)
/* 183698 801D5648 001944C2 */  srl        $t0, $t9, 19
/* 18369C 801D564C 31090038 */  andi       $t1, $t0, 0x38
/* 1836A0 801D5650 11200005 */  beqz       $t1, .L801D5668_ovl9
/* 1836A4 801D5654 3C01800E */   lui       $at, %hi(gEntityVtableIndexArray)
/* 1836A8 801D5658 00230821 */  addu       $at, $at, $v1
/* 1836AC 801D565C AC27DC50 */  sw         $a3, %lo(gEntityVtableIndexArray)($at)
/* 1836B0 801D5660 8CA30000 */  lw         $v1, 0x0($a1)
/* 1836B4 801D5664 00031880 */  sll        $v1, $v1, 2
.L801D5668_ovl9:
/* 1836B8 801D5668 006A1021 */  addu       $v0, $v1, $t2
/* 1836BC 801D566C 1000000F */  b          .L801D56AC_ovl9
/* 1836C0 801D5670 8C440000 */   lw        $a0, 0x0($v0)
.L801D5674_ovl9:
/* 1836C4 801D5674 3C0B8013 */  lui        $t3, %hi(D_8012BCA0)
/* 1836C8 801D5678 8D6BBCA0 */  lw         $t3, %lo(D_8012BCA0)($t3)
/* 1836CC 801D567C 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* 1836D0 801D5680 25CE98E0 */  addiu      $t6, $t6, %lo(D_800E98E0)
/* 1836D4 801D5684 000B64C2 */  srl        $t4, $t3, 19
/* 1836D8 801D5688 318D0007 */  andi       $t5, $t4, 0x7
/* 1836DC 801D568C 11A00005 */  beqz       $t5, .L801D56A4_ovl9
/* 1836E0 801D5690 3C01800E */   lui       $at, %hi(gEntityVtableIndexArray)
/* 1836E4 801D5694 00230821 */  addu       $at, $at, $v1
/* 1836E8 801D5698 AC27DC50 */  sw         $a3, %lo(gEntityVtableIndexArray)($at)
/* 1836EC 801D569C 8CA30000 */  lw         $v1, 0x0($a1)
/* 1836F0 801D56A0 00031880 */  sll        $v1, $v1, 2
.L801D56A4_ovl9:
/* 1836F4 801D56A4 006E1021 */  addu       $v0, $v1, $t6
/* 1836F8 801D56A8 8C440000 */  lw         $a0, 0x0($v0)
.L801D56AC_ovl9:
/* 1836FC 801D56AC 18800002 */  blez       $a0, .L801D56B8_ovl9
/* 183700 801D56B0 248FFFFF */   addiu     $t7, $a0, -0x1
/* 183704 801D56B4 AC4F0000 */  sw         $t7, 0x0($v0)
.L801D56B8_ovl9:
/* 183708 801D56B8 0C067CEC */  jal        func_8019F3B0_ovl7
/* 18370C 801D56BC 00000000 */   nop
.L801D56C0_ovl8:
/* 183710 801D56C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 183714 801D56C4 27BD0038 */  addiu      $sp, $sp, 0x38
.L801D56C8_ovl8:
/* 183718 801D56C8 03E00008 */  jr         $ra
/* 18371C 801D56CC 00000000 */   nop
