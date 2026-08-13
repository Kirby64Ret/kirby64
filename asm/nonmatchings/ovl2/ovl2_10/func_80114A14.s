nonmatching func_80114A14, 0x2B8

glabel func_80114A14
    /* 9D484 80114A14 3C028013 */  lui        $v0, %hi(D_8012D940)
    /* 9D488 80114A18 2442D940 */  addiu      $v0, $v0, %lo(D_8012D940)
    /* 9D48C 80114A1C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 9D490 80114A20 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 9D494 80114A24 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 9D498 80114A28 000E7880 */  sll        $t7, $t6, 2
    /* 9D49C 80114A2C 01EE7823 */  subu       $t7, $t7, $t6
    /* 9D4A0 80114A30 AFB10018 */  sw         $s1, 0x18($sp)
    /* 9D4A4 80114A34 AFB00014 */  sw         $s0, 0x14($sp)
    /* 9D4A8 80114A38 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 9D4AC 80114A3C 000F78C0 */  sll        $t7, $t7, 3
    /* 9D4B0 80114A40 24190001 */  addiu      $t9, $zero, 0x1
    /* 9D4B4 80114A44 3C188013 */  lui        $t8, %hi(D_8012D948)
    /* 9D4B8 80114A48 AC990000 */  sw         $t9, 0x0($a0)
    /* 9D4BC 80114A4C 01EE7823 */  subu       $t7, $t7, $t6
    /* 9D4C0 80114A50 000F78C0 */  sll        $t7, $t7, 3
    /* 9D4C4 80114A54 2718D948 */  addiu      $t8, $t8, %lo(D_8012D948)
    /* 9D4C8 80114A58 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 9D4CC 80114A5C 01F88821 */  addu       $s1, $t7, $t8
    /* 9D4D0 80114A60 00808025 */  or         $s0, $a0, $zero
    /* 9D4D4 80114A64 A2260003 */  sb         $a2, 0x3($s1)
    /* 9D4D8 80114A68 A2200002 */  sb         $zero, 0x2($s1)
    /* 9D4DC 80114A6C AE200098 */  sw         $zero, 0x98($s1)
    /* 9D4E0 80114A70 2406003C */  addiu      $a2, $zero, 0x3C
    /* 9D4E4 80114A74 2404001D */  addiu      $a0, $zero, 0x1D
    /* 9D4E8 80114A78 2405001E */  addiu      $a1, $zero, 0x1E
    /* 9D4EC 80114A7C 0C02BB02 */  jal        request_track_general
    /* 9D4F0 80114A80 A22A0000 */   sb        $t2, 0x0($s1)
    /* 9D4F4 80114A84 3C0C800E */  lui        $t4, %hi(D_800DE350)
    /* 9D4F8 80114A88 AFA20024 */  sw         $v0, 0x24($sp)
    /* 9D4FC 80114A8C 258CE350 */  addiu      $t4, $t4, %lo(D_800DE350)
    /* 9D500 80114A90 00025880 */  sll        $t3, $v0, 2
    /* 9D504 80114A94 A2220001 */  sb         $v0, 0x1($s1)
    /* 9D508 80114A98 016C1821 */  addu       $v1, $t3, $t4
    /* 9D50C 80114A9C 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 9D510 80114AA0 3C0E8011 */  lui        $t6, %hi(func_80114E80)
    /* 9D514 80114AA4 25CE4E80 */  addiu      $t6, $t6, %lo(func_80114E80)
    /* 9D518 80114AA8 ADB1004C */  sw         $s1, 0x4C($t5)
    /* 9D51C 80114AAC 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 9D520 80114AB0 ADEE0048 */  sw         $t6, 0x48($t7)
    /* 9D524 80114AB4 AE300004 */  sw         $s0, 0x4($s1)
    /* 9D528 80114AB8 8E180014 */  lw         $t8, 0x14($s0)
    /* 9D52C 80114ABC AE380008 */  sw         $t8, 0x8($s1)
    /* 9D530 80114AC0 8E19000C */  lw         $t9, 0xC($s0)
    /* 9D534 80114AC4 AE39000C */  sw         $t9, 0xC($s1)
    /* 9D538 80114AC8 8E040018 */  lw         $a0, 0x18($s0)
    /* 9D53C 80114ACC 00042100 */  sll        $a0, $a0, 4
    /* 9D540 80114AD0 0C02A0D6 */  jal        func_800A8358
    /* 9D544 80114AD4 34840003 */   ori       $a0, $a0, 0x3
    /* 9D548 80114AD8 8E0A0010 */  lw         $t2, 0x10($s0)
    /* 9D54C 80114ADC 2409000C */  addiu      $t1, $zero, 0xC
    /* 9D550 80114AE0 AE020014 */  sw         $v0, 0x14($s0)
    /* 9D554 80114AE4 01490019 */  multu      $t2, $t1
    /* 9D558 80114AE8 00002012 */  mflo       $a0
    /* 9D55C 80114AEC 34840003 */  ori        $a0, $a0, 0x3
    /* 9D560 80114AF0 0C02A0D6 */  jal        func_800A8358
    /* 9D564 80114AF4 00000000 */   nop
    /* 9D568 80114AF8 8E040010 */  lw         $a0, 0x10($s0)
    /* 9D56C 80114AFC AE02000C */  sw         $v0, 0xC($s0)
    /* 9D570 80114B00 0C02A0D6 */  jal        func_800A8358
    /* 9D574 80114B04 34840003 */   ori       $a0, $a0, 0x3
    /* 9D578 80114B08 AE220010 */  sw         $v0, 0x10($s1)
    /* 9D57C 80114B0C 8E070018 */  lw         $a3, 0x18($s0)
    /* 9D580 80114B10 24020010 */  addiu      $v0, $zero, 0x10
    /* 9D584 80114B14 24030001 */  addiu      $v1, $zero, 0x1
    /* 9D588 80114B18 2CE10002 */  sltiu      $at, $a3, 0x2
    /* 9D58C 80114B1C 54200014 */  bnel       $at, $zero, .L80114B70
    /* 9D590 80114B20 00072080 */   sll       $a0, $a3, 2
    /* 9D594 80114B24 8E2D0008 */  lw         $t5, 0x8($s1)
  .L80114B28:
    /* 9D598 80114B28 8E0B0014 */  lw         $t3, 0x14($s0)
    /* 9D59C 80114B2C 24630001 */  addiu      $v1, $v1, 0x1
    /* 9D5A0 80114B30 01A27021 */  addu       $t6, $t5, $v0
    /* 9D5A4 80114B34 8DD80000 */  lw         $t8, 0x0($t6)
    /* 9D5A8 80114B38 01626021 */  addu       $t4, $t3, $v0
    /* 9D5AC 80114B3C 24420010 */  addiu      $v0, $v0, 0x10
    /* 9D5B0 80114B40 AD980000 */  sw         $t8, 0x0($t4)
    /* 9D5B4 80114B44 8DCF0004 */  lw         $t7, 0x4($t6)
    /* 9D5B8 80114B48 AD8F0004 */  sw         $t7, 0x4($t4)
    /* 9D5BC 80114B4C 8DD80008 */  lw         $t8, 0x8($t6)
    /* 9D5C0 80114B50 AD980008 */  sw         $t8, 0x8($t4)
    /* 9D5C4 80114B54 8DCF000C */  lw         $t7, 0xC($t6)
    /* 9D5C8 80114B58 AD8F000C */  sw         $t7, 0xC($t4)
    /* 9D5CC 80114B5C 8E070018 */  lw         $a3, 0x18($s0)
    /* 9D5D0 80114B60 0067082B */  sltu       $at, $v1, $a3
    /* 9D5D4 80114B64 5420FFF0 */  bnel       $at, $zero, .L80114B28
    /* 9D5D8 80114B68 8E2D0008 */   lw        $t5, 0x8($s1)
    /* 9D5DC 80114B6C 00072080 */  sll        $a0, $a3, 2
  .L80114B70:
    /* 9D5E0 80114B70 0C02A0D6 */  jal        func_800A8358
    /* 9D5E4 80114B74 34840003 */   ori       $a0, $a0, 0x3
    /* 9D5E8 80114B78 AE220014 */  sw         $v0, 0x14($s1)
    /* 9D5EC 80114B7C 8E070018 */  lw         $a3, 0x18($s0)
    /* 9D5F0 80114B80 2409000C */  addiu      $t1, $zero, 0xC
    /* 9D5F4 80114B84 24050001 */  addiu      $a1, $zero, 0x1
    /* 9D5F8 80114B88 2CE10002 */  sltiu      $at, $a3, 0x2
    /* 9D5FC 80114B8C 1420002A */  bnez       $at, .L80114C38
    /* 9D600 80114B90 24080014 */   addiu     $t0, $zero, 0x14
    /* 9D604 80114B94 8E040028 */  lw         $a0, 0x28($s0)
  .L80114B98:
    /* 9D608 80114B98 8E060024 */  lw         $a2, 0x24($s0)
    /* 9D60C 80114B9C 24030001 */  addiu      $v1, $zero, 0x1
    /* 9D610 80114BA0 2C810002 */  sltiu      $at, $a0, 0x2
    /* 9D614 80114BA4 14200008 */  bnez       $at, .L80114BC8
    /* 9D618 80114BA8 24C20008 */   addiu     $v0, $a2, 0x8
  .L80114BAC:
    /* 9D61C 80114BAC 94590000 */  lhu        $t9, 0x0($v0)
    /* 9D620 80114BB0 50B90006 */  beql       $a1, $t9, .L80114BCC
    /* 9D624 80114BB4 000350C0 */   sll       $t2, $v1, 3
    /* 9D628 80114BB8 24630001 */  addiu      $v1, $v1, 0x1
    /* 9D62C 80114BBC 0064082B */  sltu       $at, $v1, $a0
    /* 9D630 80114BC0 1420FFFA */  bnez       $at, .L80114BAC
    /* 9D634 80114BC4 24420008 */   addiu     $v0, $v0, 0x8
  .L80114BC8:
    /* 9D638 80114BC8 000350C0 */  sll        $t2, $v1, 3
  .L80114BCC:
    /* 9D63C 80114BCC 00CA5821 */  addu       $t3, $a2, $t2
    /* 9D640 80114BD0 95620006 */  lhu        $v0, 0x6($t3)
    /* 9D644 80114BD4 50400015 */  beql       $v0, $zero, .L80114C2C
    /* 9D648 80114BD8 24A50001 */   addiu     $a1, $a1, 0x1
    /* 9D64C 80114BDC 8E0D001C */  lw         $t5, 0x1C($s0)
    /* 9D650 80114BE0 00026040 */  sll        $t4, $v0, 1
    /* 9D654 80114BE4 8E0A0004 */  lw         $t2, 0x4($s0)
    /* 9D658 80114BE8 01AC7021 */  addu       $t6, $t5, $t4
    /* 9D65C 80114BEC 95CF0000 */  lhu        $t7, 0x0($t6)
    /* 9D660 80114BF0 8E0E000C */  lw         $t6, 0xC($s0)
    /* 9D664 80114BF4 31F87FFF */  andi       $t8, $t7, 0x7FFF
    /* 9D668 80114BF8 03080019 */  multu      $t8, $t0
    /* 9D66C 80114BFC 8E380014 */  lw         $t8, 0x14($s1)
    /* 9D670 80114C00 0000C812 */  mflo       $t9
    /* 9D674 80114C04 01595821 */  addu       $t3, $t2, $t9
    /* 9D678 80114C08 956D0000 */  lhu        $t5, 0x0($t3)
    /* 9D67C 80114C0C 00055080 */  sll        $t2, $a1, 2
    /* 9D680 80114C10 030AC821 */  addu       $t9, $t8, $t2
    /* 9D684 80114C14 01A90019 */  multu      $t5, $t1
    /* 9D688 80114C18 00006012 */  mflo       $t4
    /* 9D68C 80114C1C 018E7821 */  addu       $t7, $t4, $t6
    /* 9D690 80114C20 AF2F0000 */  sw         $t7, 0x0($t9)
    /* 9D694 80114C24 8E070018 */  lw         $a3, 0x18($s0)
    /* 9D698 80114C28 24A50001 */  addiu      $a1, $a1, 0x1
  .L80114C2C:
    /* 9D69C 80114C2C 00A7082B */  sltu       $at, $a1, $a3
    /* 9D6A0 80114C30 5420FFD9 */  bnel       $at, $zero, .L80114B98
    /* 9D6A4 80114C34 8E040028 */   lw        $a0, 0x28($s0)
  .L80114C38:
    /* 9D6A8 80114C38 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 9D6AC 80114C3C 8FA40024 */  lw         $a0, 0x24($sp)
    /* 9D6B0 80114C40 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 9D6B4 80114C44 C4600000 */  lwc1       $f0, 0x0($v1)
    /* 9D6B8 80114C48 00041080 */  sll        $v0, $a0, 2
    /* 9D6BC 80114C4C 00220821 */  addu       $at, $at, $v0
    /* 9D6C0 80114C50 E42025D0 */  swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
    /* 9D6C4 80114C54 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* 9D6C8 80114C58 00220821 */  addu       $at, $at, $v0
    /* 9D6CC 80114C5C E4202B10 */  swc1       $f0, %lo(gEntitiesPosXArray)($at)
    /* 9D6D0 80114C60 C4600004 */  lwc1       $f0, 0x4($v1)
    /* 9D6D4 80114C64 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 9D6D8 80114C68 00220821 */  addu       $at, $at, $v0
    /* 9D6DC 80114C6C E4202790 */  swc1       $f0, %lo(gEntitiesNextPosYArray)($at)
    /* 9D6E0 80114C70 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 9D6E4 80114C74 00220821 */  addu       $at, $at, $v0
    /* 9D6E8 80114C78 E4202CD0 */  swc1       $f0, %lo(gEntitiesPosYArray)($at)
    /* 9D6EC 80114C7C C4600008 */  lwc1       $f0, 0x8($v1)
    /* 9D6F0 80114C80 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 9D6F4 80114C84 00220821 */  addu       $at, $at, $v0
    /* 9D6F8 80114C88 E4202950 */  swc1       $f0, %lo(gEntitiesNextPosZArray)($at)
    /* 9D6FC 80114C8C 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* 9D700 80114C90 00220821 */  addu       $at, $at, $v0
    /* 9D704 80114C94 26250058 */  addiu      $a1, $s1, 0x58
    /* 9D708 80114C98 0C044B35 */  jal        func_80112CD4
    /* 9D70C 80114C9C E4202E90 */   swc1      $f0, %lo(gEntitiesPosZArray)($at)
    /* 9D710 80114CA0 3C038013 */  lui        $v1, %hi(D_8012D940)
    /* 9D714 80114CA4 2463D940 */  addiu      $v1, $v1, %lo(D_8012D940)
    /* 9D718 80114CA8 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 9D71C 80114CAC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 9D720 80114CB0 8FA20024 */  lw         $v0, 0x24($sp)
    /* 9D724 80114CB4 8FB00014 */  lw         $s0, 0x14($sp)
    /* 9D728 80114CB8 8FB10018 */  lw         $s1, 0x18($sp)
    /* 9D72C 80114CBC 256D0001 */  addiu      $t5, $t3, 0x1
    /* 9D730 80114CC0 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 9D734 80114CC4 03E00008 */  jr         $ra
    /* 9D738 80114CC8 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_80114A14
.size func_80114A14, . - func_80114A14
