nonmatching func_801E48E4_ovl15, 0x79C

glabel func_801E48E4_ovl15
    /* 20F444 801E48E4 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 20F448 801E48E8 254AA7C4 */  addiu      $t2, $t2, %lo(omCurrentObj)
    /* 20F44C 801E48EC 8D460000 */  lw         $a2, 0x0($t2)
    /* 20F450 801E48F0 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 20F454 801E48F4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 20F458 801E48F8 AFA40040 */  sw         $a0, 0x40($sp)
    /* 20F45C 801E48FC 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 20F460 801E4900 3C18800F */  lui        $t8, %hi(D_800E9560)
    /* 20F464 801E4904 27189560 */  addiu      $t8, $t8, %lo(D_800E9560)
    /* 20F468 801E4908 000E7880 */  sll        $t7, $t6, 2
    /* 20F46C 801E490C 01F81021 */  addu       $v0, $t7, $t8
    /* 20F470 801E4910 8C590000 */  lw         $t9, 0x0($v0)
    /* 20F474 801E4914 3C0F800D */  lui        $t7, %hi(D_800D7098 + 0x24)
    /* 20F478 801E4918 272E0001 */  addiu      $t6, $t9, 0x1
    /* 20F47C 801E491C AC4E0000 */  sw         $t6, 0x0($v0)
    /* 20F480 801E4920 8DEF70BC */  lw         $t7, %lo(D_800D7098 + 0x24)($t7)
    /* 20F484 801E4924 55E00025 */  bnel       $t7, $zero, .L801E49BC_ovl15
    /* 20F488 801E4928 8CC30000 */   lw        $v1, 0x0($a2)
    /* 20F48C 801E492C 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F490 801E4930 3C02800E */  lui        $v0, %hi(D_800E0D50)
    /* 20F494 801E4934 24420D50 */  addiu      $v0, $v0, %lo(D_800E0D50)
    /* 20F498 801E4938 00031880 */  sll        $v1, $v1, 2
    /* 20F49C 801E493C 0043C021 */  addu       $t8, $v0, $v1
    /* 20F4A0 801E4940 8F190000 */  lw         $t9, 0x0($t8)
    /* 20F4A4 801E4944 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosXArray)
    /* 20F4A8 801E4948 25EF25D0 */  addiu      $t7, $t7, %lo(gEntitiesNextPosXArray)
    /* 20F4AC 801E494C 00197080 */  sll        $t6, $t9, 2
    /* 20F4B0 801E4950 01CFC021 */  addu       $t8, $t6, $t7
    /* 20F4B4 801E4954 C7040000 */  lwc1       $f4, 0x0($t8)
    /* 20F4B8 801E4958 006FC821 */  addu       $t9, $v1, $t7
    /* 20F4BC 801E495C E7240000 */  swc1       $f4, 0x0($t9)
    /* 20F4C0 801E4960 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F4C4 801E4964 3C19800E */  lui        $t9, %hi(gEntitiesNextPosYArray)
    /* 20F4C8 801E4968 27392790 */  addiu      $t9, $t9, %lo(gEntitiesNextPosYArray)
    /* 20F4CC 801E496C 00031880 */  sll        $v1, $v1, 2
    /* 20F4D0 801E4970 00437021 */  addu       $t6, $v0, $v1
    /* 20F4D4 801E4974 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20F4D8 801E4978 00187880 */  sll        $t7, $t8, 2
    /* 20F4DC 801E497C 01F97021 */  addu       $t6, $t7, $t9
    /* 20F4E0 801E4980 C5C60000 */  lwc1       $f6, 0x0($t6)
    /* 20F4E4 801E4984 0079C021 */  addu       $t8, $v1, $t9
    /* 20F4E8 801E4988 E7060000 */  swc1       $f6, 0x0($t8)
    /* 20F4EC 801E498C 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F4F0 801E4990 3C18800E */  lui        $t8, %hi(gEntitiesNextPosZArray)
    /* 20F4F4 801E4994 27182950 */  addiu      $t8, $t8, %lo(gEntitiesNextPosZArray)
    /* 20F4F8 801E4998 00031880 */  sll        $v1, $v1, 2
    /* 20F4FC 801E499C 00437821 */  addu       $t7, $v0, $v1
    /* 20F500 801E49A0 8DEE0000 */  lw         $t6, 0x0($t7)
    /* 20F504 801E49A4 000EC880 */  sll        $t9, $t6, 2
    /* 20F508 801E49A8 03387821 */  addu       $t7, $t9, $t8
    /* 20F50C 801E49AC C5E80000 */  lwc1       $f8, 0x0($t7)
    /* 20F510 801E49B0 00787021 */  addu       $t6, $v1, $t8
    /* 20F514 801E49B4 E5C80000 */  swc1       $f8, 0x0($t6)
    /* 20F518 801E49B8 8CC30000 */  lw         $v1, 0x0($a2)
  .L801E49BC_ovl15:
    /* 20F51C 801E49BC 3C0B800F */  lui        $t3, %hi(D_800EA360)
    /* 20F520 801E49C0 256BA360 */  addiu      $t3, $t3, %lo(D_800EA360)
    /* 20F524 801E49C4 00031880 */  sll        $v1, $v1, 2
    /* 20F528 801E49C8 0163C821 */  addu       $t9, $t3, $v1
    /* 20F52C 801E49CC 8F220000 */  lw         $v0, 0x0($t9)
    /* 20F530 801E49D0 1040009E */  beqz       $v0, .L801E4C4C_ovl15
    /* 20F534 801E49D4 00000000 */   nop
    /* 20F538 801E49D8 1840006C */  blez       $v0, .L801E4B8C_ovl15
    /* 20F53C 801E49DC 3C09800E */   lui       $t1, %hi(D_800DFBD0)
    /* 20F540 801E49E0 3C0C800F */  lui        $t4, %hi(D_800EA6E0)
    /* 20F544 801E49E4 258CA6E0 */  addiu      $t4, $t4, %lo(D_800EA6E0)
    /* 20F548 801E49E8 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 20F54C 801E49EC 00230821 */  addu       $at, $at, $v1
    /* 20F550 801E49F0 01832821 */  addu       $a1, $t4, $v1
    /* 20F554 801E49F4 C4AA0000 */  lwc1       $f10, 0x0($a1)
    /* 20F558 801E49F8 C430AC20 */  lwc1       $f16, %lo(D_800EAC20)($at)
    /* 20F55C 801E49FC 3C0D800F */  lui        $t5, %hi(D_800EA8A0)
    /* 20F560 801E4A00 25ADA8A0 */  addiu      $t5, $t5, %lo(D_800EA8A0)
    /* 20F564 801E4A04 46105480 */  add.s      $f18, $f10, $f16
    /* 20F568 801E4A08 3C01800F */  lui        $at, %hi(D_800EADE0)
    /* 20F56C 801E4A0C 3C1F800F */  lui        $ra, %hi(D_800EAA60)
    /* 20F570 801E4A10 27FFAA60 */  addiu      $ra, $ra, %lo(D_800EAA60)
    /* 20F574 801E4A14 E4B20000 */  swc1       $f18, 0x0($a1)
    /* 20F578 801E4A18 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F57C 801E4A1C 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* 20F580 801E4A20 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
    /* 20F584 801E4A24 00031880 */  sll        $v1, $v1, 2
    /* 20F588 801E4A28 01A33821 */  addu       $a3, $t5, $v1
    /* 20F58C 801E4A2C 00230821 */  addu       $at, $at, $v1
    /* 20F590 801E4A30 C426ADE0 */  lwc1       $f6, %lo(D_800EADE0)($at)
    /* 20F594 801E4A34 C4E40000 */  lwc1       $f4, 0x0($a3)
    /* 20F598 801E4A38 3C01800F */  lui        $at, %hi(D_800EAFA0)
    /* 20F59C 801E4A3C 46062200 */  add.s      $f8, $f4, $f6
    /* 20F5A0 801E4A40 E4E80000 */  swc1       $f8, 0x0($a3)
    /* 20F5A4 801E4A44 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F5A8 801E4A48 00031880 */  sll        $v1, $v1, 2
    /* 20F5AC 801E4A4C 03E34021 */  addu       $t0, $ra, $v1
    /* 20F5B0 801E4A50 00230821 */  addu       $at, $at, $v1
    /* 20F5B4 801E4A54 C430AFA0 */  lwc1       $f16, %lo(D_800EAFA0)($at)
    /* 20F5B8 801E4A58 C50A0000 */  lwc1       $f10, 0x0($t0)
    /* 20F5BC 801E4A5C 3C01800F */  lui        $at, %hi(D_800EB160)
    /* 20F5C0 801E4A60 46105480 */  add.s      $f18, $f10, $f16
    /* 20F5C4 801E4A64 E5120000 */  swc1       $f18, 0x0($t0)
    /* 20F5C8 801E4A68 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F5CC 801E4A6C 00031880 */  sll        $v1, $v1, 2
    /* 20F5D0 801E4A70 01237821 */  addu       $t7, $t1, $v1
    /* 20F5D4 801E4A74 8DF80000 */  lw         $t8, 0x0($t7)
    /* 20F5D8 801E4A78 01837021 */  addu       $t6, $t4, $v1
    /* 20F5DC 801E4A7C C5C60000 */  lwc1       $f6, 0x0($t6)
    /* 20F5E0 801E4A80 8F020004 */  lw         $v0, 0x4($t8)
    /* 20F5E4 801E4A84 C444001C */  lwc1       $f4, 0x1C($v0)
    /* 20F5E8 801E4A88 46062200 */  add.s      $f8, $f4, $f6
    /* 20F5EC 801E4A8C E448001C */  swc1       $f8, 0x1C($v0)
    /* 20F5F0 801E4A90 8D590000 */  lw         $t9, 0x0($t2)
    /* 20F5F4 801E4A94 8F230000 */  lw         $v1, 0x0($t9)
    /* 20F5F8 801E4A98 00031880 */  sll        $v1, $v1, 2
    /* 20F5FC 801E4A9C 01237821 */  addu       $t7, $t1, $v1
    /* 20F600 801E4AA0 8DF80000 */  lw         $t8, 0x0($t7)
    /* 20F604 801E4AA4 01A37021 */  addu       $t6, $t5, $v1
    /* 20F608 801E4AA8 C5D00000 */  lwc1       $f16, 0x0($t6)
    /* 20F60C 801E4AAC 8F020004 */  lw         $v0, 0x4($t8)
    /* 20F610 801E4AB0 C44A0020 */  lwc1       $f10, 0x20($v0)
    /* 20F614 801E4AB4 46105480 */  add.s      $f18, $f10, $f16
    /* 20F618 801E4AB8 E4520020 */  swc1       $f18, 0x20($v0)
    /* 20F61C 801E4ABC 8D590000 */  lw         $t9, 0x0($t2)
    /* 20F620 801E4AC0 8F230000 */  lw         $v1, 0x0($t9)
    /* 20F624 801E4AC4 00031880 */  sll        $v1, $v1, 2
    /* 20F628 801E4AC8 01237821 */  addu       $t7, $t1, $v1
    /* 20F62C 801E4ACC 8DF80000 */  lw         $t8, 0x0($t7)
    /* 20F630 801E4AD0 03E37021 */  addu       $t6, $ra, $v1
    /* 20F634 801E4AD4 C5C60000 */  lwc1       $f6, 0x0($t6)
    /* 20F638 801E4AD8 8F020004 */  lw         $v0, 0x4($t8)
    /* 20F63C 801E4ADC C4440024 */  lwc1       $f4, 0x24($v0)
    /* 20F640 801E4AE0 46062200 */  add.s      $f8, $f4, $f6
    /* 20F644 801E4AE4 E4480024 */  swc1       $f8, 0x24($v0)
    /* 20F648 801E4AE8 8D590000 */  lw         $t9, 0x0($t2)
    /* 20F64C 801E4AEC 8F230000 */  lw         $v1, 0x0($t9)
    /* 20F650 801E4AF0 00031880 */  sll        $v1, $v1, 2
    /* 20F654 801E4AF4 01237821 */  addu       $t7, $t1, $v1
    /* 20F658 801E4AF8 8DF80000 */  lw         $t8, 0x0($t7)
    /* 20F65C 801E4AFC 00230821 */  addu       $at, $at, $v1
    /* 20F660 801E4B00 C430B160 */  lwc1       $f16, %lo(D_800EB160)($at)
    /* 20F664 801E4B04 8F020004 */  lw         $v0, 0x4($t8)
    /* 20F668 801E4B08 3C01800F */  lui        $at, %hi(D_800EB320)
    /* 20F66C 801E4B0C C44A0030 */  lwc1       $f10, 0x30($v0)
    /* 20F670 801E4B10 46105480 */  add.s      $f18, $f10, $f16
    /* 20F674 801E4B14 E4520030 */  swc1       $f18, 0x30($v0)
    /* 20F678 801E4B18 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 20F67C 801E4B1C 8DC30000 */  lw         $v1, 0x0($t6)
    /* 20F680 801E4B20 00031880 */  sll        $v1, $v1, 2
    /* 20F684 801E4B24 0123C821 */  addu       $t9, $t1, $v1
    /* 20F688 801E4B28 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F68C 801E4B2C 00230821 */  addu       $at, $at, $v1
    /* 20F690 801E4B30 C426B320 */  lwc1       $f6, %lo(D_800EB320)($at)
    /* 20F694 801E4B34 8DE20004 */  lw         $v0, 0x4($t7)
    /* 20F698 801E4B38 C4440038 */  lwc1       $f4, 0x38($v0)
    /* 20F69C 801E4B3C 46062200 */  add.s      $f8, $f4, $f6
    /* 20F6A0 801E4B40 E4480038 */  swc1       $f8, 0x38($v0)
    /* 20F6A4 801E4B44 8D460000 */  lw         $a2, 0x0($t2)
    /* 20F6A8 801E4B48 8CD80000 */  lw         $t8, 0x0($a2)
    /* 20F6AC 801E4B4C 00187080 */  sll        $t6, $t8, 2
    /* 20F6B0 801E4B50 016E2021 */  addu       $a0, $t3, $t6
    /* 20F6B4 801E4B54 8C990000 */  lw         $t9, 0x0($a0)
    /* 20F6B8 801E4B58 240EFF9C */  addiu      $t6, $zero, -0x64
    /* 20F6BC 801E4B5C 272FFFFF */  addiu      $t7, $t9, -0x1
    /* 20F6C0 801E4B60 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 20F6C4 801E4B64 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F6C8 801E4B68 00031880 */  sll        $v1, $v1, 2
    /* 20F6CC 801E4B6C 01632021 */  addu       $a0, $t3, $v1
    /* 20F6D0 801E4B70 8C980000 */  lw         $t8, 0x0($a0)
    /* 20F6D4 801E4B74 17000035 */  bnez       $t8, .L801E4C4C_ovl15
    /* 20F6D8 801E4B78 00000000 */   nop
    /* 20F6DC 801E4B7C AC8E0000 */  sw         $t6, 0x0($a0)
    /* 20F6E0 801E4B80 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F6E4 801E4B84 10000031 */  b          .L801E4C4C_ovl15
    /* 20F6E8 801E4B88 00031880 */   sll       $v1, $v1, 2
  .L801E4B8C_ovl15:
    /* 20F6EC 801E4B8C 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
    /* 20F6F0 801E4B90 0123C821 */  addu       $t9, $t1, $v1
    /* 20F6F4 801E4B94 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F6F8 801E4B98 44807000 */  mtc1       $zero, $f14
    /* 20F6FC 801E4B9C 3C01800F */  lui        $at, %hi(D_800EB160)
    /* 20F700 801E4BA0 8DF80004 */  lw         $t8, 0x4($t7)
    /* 20F704 801E4BA4 E70E001C */  swc1       $f14, 0x1C($t8)
    /* 20F708 801E4BA8 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 20F70C 801E4BAC 8DD90000 */  lw         $t9, 0x0($t6)
    /* 20F710 801E4BB0 00197880 */  sll        $t7, $t9, 2
    /* 20F714 801E4BB4 012FC021 */  addu       $t8, $t1, $t7
    /* 20F718 801E4BB8 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 20F71C 801E4BBC 8DD90004 */  lw         $t9, 0x4($t6)
    /* 20F720 801E4BC0 E72E0020 */  swc1       $f14, 0x20($t9)
    /* 20F724 801E4BC4 8D4F0000 */  lw         $t7, 0x0($t2)
    /* 20F728 801E4BC8 8DF80000 */  lw         $t8, 0x0($t7)
    /* 20F72C 801E4BCC 00187080 */  sll        $t6, $t8, 2
    /* 20F730 801E4BD0 012EC821 */  addu       $t9, $t1, $t6
    /* 20F734 801E4BD4 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F738 801E4BD8 8DF80004 */  lw         $t8, 0x4($t7)
    /* 20F73C 801E4BDC E70E0024 */  swc1       $f14, 0x24($t8)
    /* 20F740 801E4BE0 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 20F744 801E4BE4 8DC30000 */  lw         $v1, 0x0($t6)
    /* 20F748 801E4BE8 00031880 */  sll        $v1, $v1, 2
    /* 20F74C 801E4BEC 0123C821 */  addu       $t9, $t1, $v1
    /* 20F750 801E4BF0 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F754 801E4BF4 00230821 */  addu       $at, $at, $v1
    /* 20F758 801E4BF8 C42AB160 */  lwc1       $f10, %lo(D_800EB160)($at)
    /* 20F75C 801E4BFC 8DF80004 */  lw         $t8, 0x4($t7)
    /* 20F760 801E4C00 3C01800F */  lui        $at, %hi(D_800EB320)
    /* 20F764 801E4C04 E70A0030 */  swc1       $f10, 0x30($t8)
    /* 20F768 801E4C08 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 20F76C 801E4C0C 8DC30000 */  lw         $v1, 0x0($t6)
    /* 20F770 801E4C10 240EFF9C */  addiu      $t6, $zero, -0x64
    /* 20F774 801E4C14 00031880 */  sll        $v1, $v1, 2
    /* 20F778 801E4C18 0123C821 */  addu       $t9, $t1, $v1
    /* 20F77C 801E4C1C 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F780 801E4C20 00230821 */  addu       $at, $at, $v1
    /* 20F784 801E4C24 C430B320 */  lwc1       $f16, %lo(D_800EB320)($at)
    /* 20F788 801E4C28 8DF80004 */  lw         $t8, 0x4($t7)
    /* 20F78C 801E4C2C E7100038 */  swc1       $f16, 0x38($t8)
    /* 20F790 801E4C30 8D460000 */  lw         $a2, 0x0($t2)
    /* 20F794 801E4C34 8CD90000 */  lw         $t9, 0x0($a2)
    /* 20F798 801E4C38 00197880 */  sll        $t7, $t9, 2
    /* 20F79C 801E4C3C 016FC021 */  addu       $t8, $t3, $t7
    /* 20F7A0 801E4C40 AF0E0000 */  sw         $t6, 0x0($t8)
    /* 20F7A4 801E4C44 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F7A8 801E4C48 00031880 */  sll        $v1, $v1, 2
  .L801E4C4C_ovl15:
    /* 20F7AC 801E4C4C 3C19800F */  lui        $t9, %hi(D_800E9560)
    /* 20F7B0 801E4C50 0323C821 */  addu       $t9, $t9, $v1
    /* 20F7B4 801E4C54 8F399560 */  lw         $t9, %lo(D_800E9560)($t9)
    /* 20F7B8 801E4C58 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* 20F7BC 801E4C5C 44807000 */  mtc1       $zero, $f14
    /* 20F7C0 801E4C60 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
    /* 20F7C4 801E4C64 07210004 */  bgez       $t9, .L801E4C78_ovl15
    /* 20F7C8 801E4C68 332F0001 */   andi      $t7, $t9, 0x1
    /* 20F7CC 801E4C6C 11E00002 */  beqz       $t7, .L801E4C78_ovl15
    /* 20F7D0 801E4C70 00000000 */   nop
    /* 20F7D4 801E4C74 25EFFFFE */  addiu      $t7, $t7, -0x2
  .L801E4C78_ovl15:
    /* 20F7D8 801E4C78 11E00028 */  beqz       $t7, .L801E4D1C_ovl15
    /* 20F7DC 801E4C7C 3C0E800D */   lui       $t6, %hi(D_800D7098 + 0x24)
    /* 20F7E0 801E4C80 8DCE70BC */  lw         $t6, %lo(D_800D7098 + 0x24)($t6)
    /* 20F7E4 801E4C84 3C02800E */  lui        $v0, %hi(D_800DFF50)
    /* 20F7E8 801E4C88 00431021 */  addu       $v0, $v0, $v1
    /* 20F7EC 801E4C8C 11C00023 */  beqz       $t6, .L801E4D1C_ovl15
    /* 20F7F0 801E4C90 3C18800F */   lui       $t8, %hi(D_800E9AA0)
    /* 20F7F4 801E4C94 0303C021 */  addu       $t8, $t8, $v1
    /* 20F7F8 801E4C98 8F189AA0 */  lw         $t8, %lo(D_800E9AA0)($t8)
    /* 20F7FC 801E4C9C 3C0F801E */  lui        $t7, %hi(D_801E6714_ovl15)
    /* 20F800 801E4CA0 8C42FF50 */  lw         $v0, %lo(D_800DFF50)($v0)
    /* 20F804 801E4CA4 0018C880 */  sll        $t9, $t8, 2
    /* 20F808 801E4CA8 01F97821 */  addu       $t7, $t7, $t9
    /* 20F80C 801E4CAC 8DEF6714 */  lw         $t7, %lo(D_801E6714_ovl15)($t7)
    /* 20F810 801E4CB0 3C010001 */  lui        $at, (0x1052F >> 16)
    /* 20F814 801E4CB4 3421052F */  ori        $at, $at, (0x1052F & 0xFFFF)
    /* 20F818 801E4CB8 104F0003 */  beq        $v0, $t7, .L801E4CC8_ovl15
    /* 20F81C 801E4CBC 01237021 */   addu      $t6, $t1, $v1
    /* 20F820 801E4CC0 14410016 */  bne        $v0, $at, .L801E4D1C_ovl15
    /* 20F824 801E4CC4 00000000 */   nop
  .L801E4CC8_ovl15:
    /* 20F828 801E4CC8 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20F82C 801E4CCC 27A40034 */  addiu      $a0, $sp, 0x34
    /* 20F830 801E4CD0 0C0291E5 */  jal        utilGetTransformSRT
    /* 20F834 801E4CD4 8F05000C */   lw        $a1, 0xC($t8)
    /* 20F838 801E4CD8 C7B20038 */  lwc1       $f18, 0x38($sp)
    /* 20F83C 801E4CDC C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* 20F840 801E4CE0 24040006 */  addiu      $a0, $zero, 0x6
    /* 20F844 801E4CE4 24050002 */  addiu      $a1, $zero, 0x2
    /* 20F848 801E4CE8 2406000B */  addiu      $a2, $zero, 0xB
    /* 20F84C 801E4CEC 8FA70034 */  lw         $a3, 0x34($sp)
    /* 20F850 801E4CF0 E7B20010 */  swc1       $f18, 0x10($sp)
    /* 20F854 801E4CF4 0C029FDD */  jal        func_800A7F74
    /* 20F858 801E4CF8 E7A40014 */   swc1      $f4, 0x14($sp)
    /* 20F85C 801E4CFC 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 20F860 801E4D00 254AA7C4 */  addiu      $t2, $t2, %lo(omCurrentObj)
    /* 20F864 801E4D04 8D590000 */  lw         $t9, 0x0($t2)
    /* 20F868 801E4D08 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* 20F86C 801E4D0C 44807000 */  mtc1       $zero, $f14
    /* 20F870 801E4D10 8F230000 */  lw         $v1, 0x0($t9)
    /* 20F874 801E4D14 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
    /* 20F878 801E4D18 00031880 */  sll        $v1, $v1, 2
  .L801E4D1C_ovl15:
    /* 20F87C 801E4D1C 3C0F800F */  lui        $t7, %hi(D_800EA1A0)
    /* 20F880 801E4D20 01E37821 */  addu       $t7, $t7, $v1
    /* 20F884 801E4D24 8DEFA1A0 */  lw         $t7, %lo(D_800EA1A0)($t7)
    /* 20F888 801E4D28 01237021 */  addu       $t6, $t1, $v1
    /* 20F88C 801E4D2C 11E0001B */  beqz       $t7, .L801E4D9C_ovl15
    /* 20F890 801E4D30 00000000 */   nop
    /* 20F894 801E4D34 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20F898 801E4D38 8F190004 */  lw         $t9, 0x4($t8)
    /* 20F89C 801E4D3C 0C00D604 */  jal        cosf
    /* 20F8A0 801E4D40 C72C0030 */   lwc1      $f12, 0x30($t9)
    /* 20F8A4 801E4D44 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 20F8A8 801E4D48 254AA7C4 */  addiu      $t2, $t2, %lo(omCurrentObj)
    /* 20F8AC 801E4D4C 8D460000 */  lw         $a2, 0x0($t2)
    /* 20F8B0 801E4D50 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* 20F8B4 801E4D54 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
    /* 20F8B8 801E4D58 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F8BC 801E4D5C 3C01C220 */  lui        $at, (0xC2200000 >> 16)
    /* 20F8C0 801E4D60 44814000 */  mtc1       $at, $f8
    /* 20F8C4 801E4D64 00031880 */  sll        $v1, $v1, 2
    /* 20F8C8 801E4D68 01237821 */  addu       $t7, $t1, $v1
    /* 20F8CC 801E4D6C 8DEE0000 */  lw         $t6, 0x0($t7)
    /* 20F8D0 801E4D70 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 20F8D4 801E4D74 00230821 */  addu       $at, $at, $v1
    /* 20F8D8 801E4D78 8DD80008 */  lw         $t8, 0x8($t6)
    /* 20F8DC 801E4D7C 44807000 */  mtc1       $zero, $f14
    /* 20F8E0 801E4D80 C7060044 */  lwc1       $f6, 0x44($t8)
    /* 20F8E4 801E4D84 46083282 */  mul.s      $f10, $f6, $f8
    /* 20F8E8 801E4D88 00000000 */  nop
    /* 20F8EC 801E4D8C 46005402 */  mul.s      $f16, $f10, $f0
    /* 20F8F0 801E4D90 E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 20F8F4 801E4D94 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F8F8 801E4D98 00031880 */  sll        $v1, $v1, 2
  .L801E4D9C_ovl15:
    /* 20F8FC 801E4D9C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 20F900 801E4DA0 00230821 */  addu       $at, $at, $v1
    /* 20F904 801E4DA4 C4202950 */  lwc1       $f0, %lo(gEntitiesNextPosZArray)($at)
    /* 20F908 801E4DA8 44809000 */  mtc1       $zero, $f18
    /* 20F90C 801E4DAC 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
    /* 20F910 801E4DB0 44812000 */  mtc1       $at, $f4
    /* 20F914 801E4DB4 4612003C */  c.lt.s     $f0, $f18
    /* 20F918 801E4DB8 0123C821 */  addu       $t9, $t1, $v1
    /* 20F91C 801E4DBC 45020004 */  bc1fl      .L801E4DD0_ovl15
    /* 20F920 801E4DC0 46000086 */   mov.s     $f2, $f0
    /* 20F924 801E4DC4 10000002 */  b          .L801E4DD0_ovl15
    /* 20F928 801E4DC8 46000087 */   neg.s     $f2, $f0
    /* 20F92C 801E4DCC 46000086 */  mov.s      $f2, $f0
  .L801E4DD0_ovl15:
    /* 20F930 801E4DD0 4604103C */  c.lt.s     $f2, $f4
    /* 20F934 801E4DD4 00000000 */  nop
    /* 20F938 801E4DD8 45000049 */  bc1f       .L801E4F00_ovl15
    /* 20F93C 801E4DDC 00000000 */   nop
    /* 20F940 801E4DE0 8F220000 */  lw         $v0, 0x0($t9)
    /* 20F944 801E4DE4 8C4F0008 */  lw         $t7, 0x8($v0)
    /* 20F948 801E4DE8 8C440004 */  lw         $a0, 0x4($v0)
    /* 20F94C 801E4DEC 0C079755 */  jal        func_801E5D54_ovl15
    /* 20F950 801E4DF0 8DE50044 */   lw        $a1, 0x44($t7)
    /* 20F954 801E4DF4 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 20F958 801E4DF8 254AA7C4 */  addiu      $t2, $t2, %lo(omCurrentObj)
    /* 20F95C 801E4DFC 8D460000 */  lw         $a2, 0x0($t2)
    /* 20F960 801E4E00 3C0E800F */  lui        $t6, %hi(D_800E83E0)
    /* 20F964 801E4E04 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* 20F968 801E4E08 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F96C 801E4E0C 2529FBD0 */  addiu      $t1, $t1, %lo(D_800DFBD0)
    /* 20F970 801E4E10 44807000 */  mtc1       $zero, $f14
    /* 20F974 801E4E14 00031880 */  sll        $v1, $v1, 2
    /* 20F978 801E4E18 01C37021 */  addu       $t6, $t6, $v1
    /* 20F97C 801E4E1C 8DCE83E0 */  lw         $t6, %lo(D_800E83E0)($t6)
    /* 20F980 801E4E20 0123C821 */  addu       $t9, $t1, $v1
    /* 20F984 801E4E24 11C00036 */  beqz       $t6, .L801E4F00_ovl15
    /* 20F988 801E4E28 00000000 */   nop
    /* 20F98C 801E4E2C 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F990 801E4E30 3C18800E */  lui        $t8, %hi(gEntitiesNextPosXArray)
    /* 20F994 801E4E34 271825D0 */  addiu      $t8, $t8, %lo(gEntitiesNextPosXArray)
    /* 20F998 801E4E38 8DEE0004 */  lw         $t6, 0x4($t7)
    /* 20F99C 801E4E3C 00781021 */  addu       $v0, $v1, $t8
    /* 20F9A0 801E4E40 C4460000 */  lwc1       $f6, 0x0($v0)
    /* 20F9A4 801E4E44 C5C8001C */  lwc1       $f8, 0x1C($t6)
    /* 20F9A8 801E4E48 3C18800E */  lui        $t8, %hi(gEntitiesNextPosYArray)
    /* 20F9AC 801E4E4C 27182790 */  addiu      $t8, $t8, %lo(gEntitiesNextPosYArray)
    /* 20F9B0 801E4E50 46083280 */  add.s      $f10, $f6, $f8
    /* 20F9B4 801E4E54 E44A0000 */  swc1       $f10, 0x0($v0)
    /* 20F9B8 801E4E58 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F9BC 801E4E5C 00031880 */  sll        $v1, $v1, 2
    /* 20F9C0 801E4E60 0123C821 */  addu       $t9, $t1, $v1
    /* 20F9C4 801E4E64 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F9C8 801E4E68 00782021 */  addu       $a0, $v1, $t8
    /* 20F9CC 801E4E6C C4900000 */  lwc1       $f16, 0x0($a0)
    /* 20F9D0 801E4E70 8DEE0004 */  lw         $t6, 0x4($t7)
    /* 20F9D4 801E4E74 3C18800E */  lui        $t8, %hi(gEntitiesNextPosZArray)
    /* 20F9D8 801E4E78 27182950 */  addiu      $t8, $t8, %lo(gEntitiesNextPosZArray)
    /* 20F9DC 801E4E7C C5D20020 */  lwc1       $f18, 0x20($t6)
    /* 20F9E0 801E4E80 46128100 */  add.s      $f4, $f16, $f18
    /* 20F9E4 801E4E84 E4840000 */  swc1       $f4, 0x0($a0)
    /* 20F9E8 801E4E88 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20F9EC 801E4E8C 00031880 */  sll        $v1, $v1, 2
    /* 20F9F0 801E4E90 0123C821 */  addu       $t9, $t1, $v1
    /* 20F9F4 801E4E94 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20F9F8 801E4E98 00782821 */  addu       $a1, $v1, $t8
    /* 20F9FC 801E4E9C C4A60000 */  lwc1       $f6, 0x0($a1)
    /* 20FA00 801E4EA0 8DEE0004 */  lw         $t6, 0x4($t7)
    /* 20FA04 801E4EA4 C5C80024 */  lwc1       $f8, 0x24($t6)
    /* 20FA08 801E4EA8 46083280 */  add.s      $f10, $f6, $f8
    /* 20FA0C 801E4EAC E4AA0000 */  swc1       $f10, 0x0($a1)
    /* 20FA10 801E4EB0 8CD80000 */  lw         $t8, 0x0($a2)
    /* 20FA14 801E4EB4 0018C880 */  sll        $t9, $t8, 2
    /* 20FA18 801E4EB8 01397821 */  addu       $t7, $t1, $t9
    /* 20FA1C 801E4EBC 8DEE0000 */  lw         $t6, 0x0($t7)
    /* 20FA20 801E4EC0 8DD80004 */  lw         $t8, 0x4($t6)
    /* 20FA24 801E4EC4 E70E001C */  swc1       $f14, 0x1C($t8)
    /* 20FA28 801E4EC8 8D590000 */  lw         $t9, 0x0($t2)
    /* 20FA2C 801E4ECC 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20FA30 801E4ED0 000F7080 */  sll        $t6, $t7, 2
    /* 20FA34 801E4ED4 012EC021 */  addu       $t8, $t1, $t6
    /* 20FA38 801E4ED8 8F190000 */  lw         $t9, 0x0($t8)
    /* 20FA3C 801E4EDC 8F2F0004 */  lw         $t7, 0x4($t9)
    /* 20FA40 801E4EE0 E5EE0020 */  swc1       $f14, 0x20($t7)
    /* 20FA44 801E4EE4 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 20FA48 801E4EE8 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20FA4C 801E4EEC 0018C880 */  sll        $t9, $t8, 2
    /* 20FA50 801E4EF0 01397821 */  addu       $t7, $t1, $t9
    /* 20FA54 801E4EF4 8DEE0000 */  lw         $t6, 0x0($t7)
    /* 20FA58 801E4EF8 8DD80004 */  lw         $t8, 0x4($t6)
    /* 20FA5C 801E4EFC E70E0024 */  swc1       $f14, 0x24($t8)
  .L801E4F00_ovl15:
    /* 20FA60 801E4F00 3C19800D */  lui        $t9, %hi(D_800D7118 + 0x3C)
    /* 20FA64 801E4F04 8F397154 */  lw         $t9, %lo(D_800D7118 + 0x3C)($t9)
    /* 20FA68 801E4F08 5720005A */  bnel       $t9, $zero, .L801E5074_ovl15
    /* 20FA6C 801E4F0C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 20FA70 801E4F10 8D460000 */  lw         $a2, 0x0($t2)
    /* 20FA74 801E4F14 3C02800E */  lui        $v0, %hi(D_800DFF50)
    /* 20FA78 801E4F18 3C010001 */  lui        $at, (0x1052B >> 16)
    /* 20FA7C 801E4F1C 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20FA80 801E4F20 3421052B */  ori        $at, $at, (0x1052B & 0xFFFF)
    /* 20FA84 801E4F24 00031880 */  sll        $v1, $v1, 2
    /* 20FA88 801E4F28 00431021 */  addu       $v0, $v0, $v1
    /* 20FA8C 801E4F2C 8C42FF50 */  lw         $v0, %lo(D_800DFF50)($v0)
    /* 20FA90 801E4F30 01237021 */  addu       $t6, $t1, $v1
    /* 20FA94 801E4F34 1041000A */  beq        $v0, $at, .L801E4F60_ovl15
    /* 20FA98 801E4F38 3C010001 */   lui       $at, (0x1052C >> 16)
    /* 20FA9C 801E4F3C 3421052C */  ori        $at, $at, (0x1052C & 0xFFFF)
    /* 20FAA0 801E4F40 10410007 */  beq        $v0, $at, .L801E4F60_ovl15
    /* 20FAA4 801E4F44 3C010001 */   lui       $at, (0x1052D >> 16)
    /* 20FAA8 801E4F48 3421052D */  ori        $at, $at, (0x1052D & 0xFFFF)
    /* 20FAAC 801E4F4C 10410004 */  beq        $v0, $at, .L801E4F60_ovl15
    /* 20FAB0 801E4F50 3C010001 */   lui       $at, (0x1052E >> 16)
    /* 20FAB4 801E4F54 3421052E */  ori        $at, $at, (0x1052E & 0xFFFF)
    /* 20FAB8 801E4F58 14410039 */  bne        $v0, $at, .L801E5040_ovl15
    /* 20FABC 801E4F5C 00000000 */   nop
  .L801E4F60_ovl15:
    /* 20FAC0 801E4F60 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20FAC4 801E4F64 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosXArray)
    /* 20FAC8 801E4F68 25EF25D0 */  addiu      $t7, $t7, %lo(gEntitiesNextPosXArray)
    /* 20FACC 801E4F6C 8F190004 */  lw         $t9, 0x4($t8)
    /* 20FAD0 801E4F70 006F1021 */  addu       $v0, $v1, $t7
    /* 20FAD4 801E4F74 C4500000 */  lwc1       $f16, 0x0($v0)
    /* 20FAD8 801E4F78 C732001C */  lwc1       $f18, 0x1C($t9)
    /* 20FADC 801E4F7C 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosYArray)
    /* 20FAE0 801E4F80 25EF2790 */  addiu      $t7, $t7, %lo(gEntitiesNextPosYArray)
    /* 20FAE4 801E4F84 46128100 */  add.s      $f4, $f16, $f18
    /* 20FAE8 801E4F88 E4440000 */  swc1       $f4, 0x0($v0)
    /* 20FAEC 801E4F8C 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20FAF0 801E4F90 00031880 */  sll        $v1, $v1, 2
    /* 20FAF4 801E4F94 01237021 */  addu       $t6, $t1, $v1
    /* 20FAF8 801E4F98 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20FAFC 801E4F9C 006F2021 */  addu       $a0, $v1, $t7
    /* 20FB00 801E4FA0 C4860000 */  lwc1       $f6, 0x0($a0)
    /* 20FB04 801E4FA4 8F190004 */  lw         $t9, 0x4($t8)
    /* 20FB08 801E4FA8 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosZArray)
    /* 20FB0C 801E4FAC 25EF2950 */  addiu      $t7, $t7, %lo(gEntitiesNextPosZArray)
    /* 20FB10 801E4FB0 C7280020 */  lwc1       $f8, 0x20($t9)
    /* 20FB14 801E4FB4 46083280 */  add.s      $f10, $f6, $f8
    /* 20FB18 801E4FB8 E48A0000 */  swc1       $f10, 0x0($a0)
    /* 20FB1C 801E4FBC 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20FB20 801E4FC0 00031880 */  sll        $v1, $v1, 2
    /* 20FB24 801E4FC4 01237021 */  addu       $t6, $t1, $v1
    /* 20FB28 801E4FC8 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20FB2C 801E4FCC 006F2821 */  addu       $a1, $v1, $t7
    /* 20FB30 801E4FD0 C4B00000 */  lwc1       $f16, 0x0($a1)
    /* 20FB34 801E4FD4 8F190004 */  lw         $t9, 0x4($t8)
    /* 20FB38 801E4FD8 C7320024 */  lwc1       $f18, 0x24($t9)
    /* 20FB3C 801E4FDC 46128100 */  add.s      $f4, $f16, $f18
    /* 20FB40 801E4FE0 E4A40000 */  swc1       $f4, 0x0($a1)
    /* 20FB44 801E4FE4 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 20FB48 801E4FE8 000F7080 */  sll        $t6, $t7, 2
    /* 20FB4C 801E4FEC 012EC021 */  addu       $t8, $t1, $t6
    /* 20FB50 801E4FF0 8F190000 */  lw         $t9, 0x0($t8)
    /* 20FB54 801E4FF4 8F2F0004 */  lw         $t7, 0x4($t9)
    /* 20FB58 801E4FF8 E5EE001C */  swc1       $f14, 0x1C($t7)
    /* 20FB5C 801E4FFC 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 20FB60 801E5000 8DD80000 */  lw         $t8, 0x0($t6)
    /* 20FB64 801E5004 0018C880 */  sll        $t9, $t8, 2
    /* 20FB68 801E5008 01397821 */  addu       $t7, $t1, $t9
    /* 20FB6C 801E500C 8DEE0000 */  lw         $t6, 0x0($t7)
    /* 20FB70 801E5010 8DD80004 */  lw         $t8, 0x4($t6)
    /* 20FB74 801E5014 E70E0020 */  swc1       $f14, 0x20($t8)
    /* 20FB78 801E5018 8D590000 */  lw         $t9, 0x0($t2)
    /* 20FB7C 801E501C 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 20FB80 801E5020 000F7080 */  sll        $t6, $t7, 2
    /* 20FB84 801E5024 012EC021 */  addu       $t8, $t1, $t6
    /* 20FB88 801E5028 8F190000 */  lw         $t9, 0x0($t8)
    /* 20FB8C 801E502C 8F2F0004 */  lw         $t7, 0x4($t9)
    /* 20FB90 801E5030 E5EE0024 */  swc1       $f14, 0x24($t7)
    /* 20FB94 801E5034 8D460000 */  lw         $a2, 0x0($t2)
    /* 20FB98 801E5038 8CC30000 */  lw         $v1, 0x0($a2)
    /* 20FB9C 801E503C 00031880 */  sll        $v1, $v1, 2
  .L801E5040_ovl15:
    /* 20FBA0 801E5040 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 20FBA4 801E5044 00230821 */  addu       $at, $at, $v1
    /* 20FBA8 801E5048 240EFFFF */  addiu      $t6, $zero, -0x1
    /* 20FBAC 801E504C AC2EDC50 */  sw         $t6, %lo(gEntityFuncListIDArray)($at)
    /* 20FBB0 801E5050 8CD80000 */  lw         $t8, 0x0($a2)
    /* 20FBB4 801E5054 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 20FBB8 801E5058 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
    /* 20FBBC 801E505C 0018C880 */  sll        $t9, $t8, 2
    /* 20FBC0 801E5060 00992021 */  addu       $a0, $a0, $t9
    /* 20FBC4 801E5064 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 20FBC8 801E5068 0C02C7B2 */  jal        assign_new_process_entry
    /* 20FBCC 801E506C 24A5CF84 */   addiu     $a1, $a1, %lo(func_801ACF84_ovl7)
    /* 20FBD0 801E5070 8FBF001C */  lw         $ra, 0x1C($sp)
  .L801E5074_ovl15:
    /* 20FBD4 801E5074 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 20FBD8 801E5078 03E00008 */  jr         $ra
    /* 20FBDC 801E507C 00000000 */   nop
endlabel func_801E48E4_ovl15
.size func_801E48E4_ovl15, . - func_801E48E4_ovl15
