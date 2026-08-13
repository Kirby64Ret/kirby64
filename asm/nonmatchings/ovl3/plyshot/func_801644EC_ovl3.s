nonmatching func_801644EC_ovl3, 0x1B8

glabel func_801644EC_ovl3
    /* C4F2C 801644EC 3C0E8013 */  lui        $t6, %hi(D_8012E860)
    /* C4F30 801644F0 8DCEE860 */  lw         $t6, %lo(D_8012E860)($t6)
    /* C4F34 801644F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* C4F38 801644F8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* C4F3C 801644FC 11C00061 */  beqz       $t6, .L80164684_ovl3
    /* C4F40 80164500 AFA40020 */   sw        $a0, 0x20($sp)
    /* C4F44 80164504 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* C4F48 80164508 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* C4F4C 8016450C 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* C4F50 80164510 3C048019 */  lui        $a0, %hi(D_801912EC_ovl3)
    /* C4F54 80164514 8DE20000 */  lw         $v0, 0x0($t7)
    /* C4F58 80164518 248412EC */  addiu      $a0, $a0, %lo(D_801912EC_ovl3)
    /* C4F5C 8016451C 0002C080 */  sll        $t8, $v0, 2
    /* C4F60 80164520 0338C821 */  addu       $t9, $t9, $t8
    /* C4F64 80164524 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
    /* C4F68 80164528 00402825 */  or         $a1, $v0, $zero
    /* C4F6C 8016452C 17200020 */  bnez       $t9, .L801645B0_ovl3
    /* C4F70 80164530 00000000 */   nop
    /* C4F74 80164534 3C048019 */  lui        $a0, %hi(D_801912EC_ovl3)
    /* C4F78 80164538 0C044681 */  jal        func_80111A04
    /* C4F7C 8016453C 248412EC */   addiu     $a0, $a0, %lo(D_801912EC_ovl3)
    /* C4F80 80164540 AFA2001C */  sw         $v0, 0x1C($sp)
    /* C4F84 80164544 3C0142AA */  lui        $at, (0x42AA0000 >> 16)
    /* C4F88 80164548 44812000 */  mtc1       $at, $f4
    /* C4F8C 8016454C 8C480020 */  lw         $t0, 0x20($v0)
    /* C4F90 80164550 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* C4F94 80164554 3C0A800E */  lui        $t2, %hi(D_800E0D50)
    /* C4F98 80164558 E5040018 */  swc1       $f4, 0x18($t0)
    /* C4F9C 8016455C 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* C4FA0 80164560 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* C4FA4 80164564 3C048019 */  lui        $a0, %hi(D_80193C64_ovl3)
    /* C4FA8 80164568 8D230000 */  lw         $v1, 0x0($t1)
    /* C4FAC 8016456C 3C05801A */  lui        $a1, %hi(D_80198700_ovl3)
    /* C4FB0 80164570 24A58700 */  addiu      $a1, $a1, %lo(D_80198700_ovl3)
    /* C4FB4 80164574 00031880 */  sll        $v1, $v1, 2
    /* C4FB8 80164578 01435021 */  addu       $t2, $t2, $v1
    /* C4FBC 8016457C 8D4A0D50 */  lw         $t2, %lo(D_800E0D50)($t2)
    /* C4FC0 80164580 24843C64 */  addiu      $a0, $a0, %lo(D_80193C64_ovl3)
    /* C4FC4 80164584 24060010 */  addiu      $a2, $zero, 0x10
    /* C4FC8 80164588 000A5880 */  sll        $t3, $t2, 2
    /* C4FCC 8016458C 002B0821 */  addu       $at, $at, $t3
    /* C4FD0 80164590 C42617D0 */  lwc1       $f6, %lo(D_800E17D0)($at)
    /* C4FD4 80164594 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C4FD8 80164598 00230821 */  addu       $at, $at, $v1
    /* C4FDC 8016459C 3C073FA0 */  lui        $a3, (0x3FA00000 >> 16)
    /* C4FE0 801645A0 0C05481C */  jal        func_80152070_ovl3
    /* C4FE4 801645A4 E42641D0 */   swc1      $f6, %lo(gEntitiesAngleYArray)($at)
    /* C4FE8 801645A8 1000001E */  b          .L80164624_ovl3
    /* C4FEC 801645AC 00000000 */   nop
  .L801645B0_ovl3:
    /* C4FF0 801645B0 0C044681 */  jal        func_80111A04
    /* C4FF4 801645B4 00402825 */   or        $a1, $v0, $zero
    /* C4FF8 801645B8 AFA2001C */  sw         $v0, 0x1C($sp)
    /* C4FFC 801645BC 3C014234 */  lui        $at, (0x42340000 >> 16)
    /* C5000 801645C0 44814000 */  mtc1       $at, $f8
    /* C5004 801645C4 8C4C0020 */  lw         $t4, 0x20($v0)
    /* C5008 801645C8 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* C500C 801645CC 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* C5010 801645D0 E5880018 */  swc1       $f8, 0x18($t4)
    /* C5014 801645D4 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* C5018 801645D8 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* C501C 801645DC 3C048019 */  lui        $a0, %hi(D_80193C64_ovl3)
    /* C5020 801645E0 8DA30000 */  lw         $v1, 0x0($t5)
    /* C5024 801645E4 3C05801A */  lui        $a1, %hi(D_80198700_ovl3)
    /* C5028 801645E8 3C073F33 */  lui        $a3, (0x3F333333 >> 16)
    /* C502C 801645EC 00031880 */  sll        $v1, $v1, 2
    /* C5030 801645F0 01C37021 */  addu       $t6, $t6, $v1
    /* C5034 801645F4 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* C5038 801645F8 34E73333 */  ori        $a3, $a3, (0x3F333333 & 0xFFFF)
    /* C503C 801645FC 24A58700 */  addiu      $a1, $a1, %lo(D_80198700_ovl3)
    /* C5040 80164600 000E7880 */  sll        $t7, $t6, 2
    /* C5044 80164604 002F0821 */  addu       $at, $at, $t7
    /* C5048 80164608 C42A17D0 */  lwc1       $f10, %lo(D_800E17D0)($at)
    /* C504C 8016460C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C5050 80164610 00230821 */  addu       $at, $at, $v1
    /* C5054 80164614 24843C64 */  addiu      $a0, $a0, %lo(D_80193C64_ovl3)
    /* C5058 80164618 24060010 */  addiu      $a2, $zero, 0x10
    /* C505C 8016461C 0C05481C */  jal        func_80152070_ovl3
    /* C5060 80164620 E42A41D0 */   swc1      $f10, %lo(gEntitiesAngleYArray)($at)
  .L80164624_ovl3:
    /* C5064 80164624 0C044713 */  jal        func_80111C4C
    /* C5068 80164628 8FA4001C */   lw        $a0, 0x1C($sp)
    /* C506C 8016462C 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* C5070 80164630 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* C5074 80164634 3C09801A */  lui        $t1, %hi(D_80198540_ovl3)
    /* C5078 80164638 25298540 */  addiu      $t1, $t1, %lo(D_80198540_ovl3)
    /* C507C 8016463C 8F020000 */  lw         $v0, 0x0($t8)
    /* C5080 80164640 3C058019 */  lui        $a1, %hi(D_80193D64_ovl3)
    /* C5084 80164644 24A53D64 */  addiu      $a1, $a1, %lo(D_80193D64_ovl3)
    /* C5088 80164648 0002C940 */  sll        $t9, $v0, 5
    /* C508C 8016464C 2728F880 */  addiu      $t0, $t9, -0x780
    /* C5090 80164650 01092021 */  addu       $a0, $t0, $t1
    /* C5094 80164654 00003025 */  or         $a2, $zero, $zero
    /* C5098 80164658 0C055754 */  jal        func_80155D50_ovl3
    /* C509C 8016465C 00403825 */   or        $a3, $v0, $zero
    /* C50A0 80164660 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* C50A4 80164664 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* C50A8 80164668 44808000 */  mtc1       $zero, $f16
    /* C50AC 8016466C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C50B0 80164670 8D4B0000 */  lw         $t3, 0x0($t2)
    /* C50B4 80164674 000B6080 */  sll        $t4, $t3, 2
    /* C50B8 80164678 002C0821 */  addu       $at, $at, $t4
    /* C50BC 8016467C 10000005 */  b          .L80164694_ovl3
    /* C50C0 80164680 E43041D0 */   swc1      $f16, %lo(gEntitiesAngleYArray)($at)
  .L80164684_ovl3:
    /* C50C4 80164684 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* C50C8 80164688 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* C50CC 8016468C 0C02C640 */  jal        func_800B1900
    /* C50D0 80164690 95A40002 */   lhu       $a0, 0x2($t5)
  .L80164694_ovl3:
    /* C50D4 80164694 8FBF0014 */  lw         $ra, 0x14($sp)
    /* C50D8 80164698 27BD0020 */  addiu      $sp, $sp, 0x20
    /* C50DC 8016469C 03E00008 */  jr         $ra
    /* C50E0 801646A0 00000000 */   nop
endlabel func_801644EC_ovl3
.size func_801644EC_ovl3, . - func_801644EC_ovl3
