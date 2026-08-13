nonmatching func_801A04B8_ovl7, 0x30C

glabel func_801A04B8_ovl7
    /* 146528 801A04B8 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 14652C 801A04BC 24A5A7C4 */  addiu      $a1, $a1, %lo(omCurrentObj)
    /* 146530 801A04C0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 146534 801A04C4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 146538 801A04C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 14653C 801A04CC 8DC60000 */  lw         $a2, 0x0($t6)
    /* 146540 801A04D0 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 146544 801A04D4 3C07800E */  lui        $a3, %hi(D_800E0D50)
    /* 146548 801A04D8 00063080 */  sll        $a2, $a2, 2
    /* 14654C 801A04DC 00661821 */  addu       $v1, $v1, $a2
    /* 146550 801A04E0 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
    /* 146554 801A04E4 24E70D50 */  addiu      $a3, $a3, %lo(D_800E0D50)
    /* 146558 801A04E8 00E6C021 */  addu       $t8, $a3, $a2
    /* 14655C 801A04EC 8C6F008C */  lw         $t7, 0x8C($v1)
    /* 146560 801A04F0 55E00004 */  bnel       $t7, $zero, .L801A0504_ovl7
    /* 146564 801A04F4 8F020000 */   lw        $v0, 0x0($t8)
    /* 146568 801A04F8 100000AE */  b          .L801A07B4_ovl7
    /* 14656C 801A04FC 00001025 */   or        $v0, $zero, $zero
    /* 146570 801A0500 8F020000 */  lw         $v0, 0x0($t8)
  .L801A0504_ovl7:
    /* 146574 801A0504 1040000F */  beqz       $v0, .L801A0544_ovl7
    /* 146578 801A0508 00022080 */   sll       $a0, $v0, 2
    /* 14657C 801A050C 00E4C821 */  addu       $t9, $a3, $a0
    /* 146580 801A0510 8F280000 */  lw         $t0, 0x0($t9)
    /* 146584 801A0514 3C09800F */  lui        $t1, %hi(D_800E8220)
    /* 146588 801A0518 01244821 */  addu       $t1, $t1, $a0
    /* 14658C 801A051C 15000009 */  bnez       $t0, .L801A0544_ovl7
    /* 146590 801A0520 00000000 */   nop
    /* 146594 801A0524 8D298220 */  lw         $t1, %lo(D_800E8220)($t1)
    /* 146598 801A0528 24010001 */  addiu      $at, $zero, 0x1
    /* 14659C 801A052C 15210005 */  bne        $t1, $at, .L801A0544_ovl7
    /* 1465A0 801A0530 00000000 */   nop
    /* 1465A4 801A0534 0C0681F1 */  jal        func_801A07C4_ovl7
    /* 1465A8 801A0538 00000000 */   nop
    /* 1465AC 801A053C 1000009E */  b          .L801A07B8_ovl7
    /* 1465B0 801A0540 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801A0544_ovl7:
    /* 1465B4 801A0544 14400005 */  bnez       $v0, .L801A055C_ovl7
    /* 1465B8 801A0548 27A40024 */   addiu     $a0, $sp, 0x24
    /* 1465BC 801A054C 0C0681F1 */  jal        func_801A07C4_ovl7
    /* 1465C0 801A0550 00000000 */   nop
    /* 1465C4 801A0554 10000098 */  b          .L801A07B8_ovl7
    /* 1465C8 801A0558 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801A055C_ovl7:
    /* 1465CC 801A055C 0C0442C0 */  jal        func_80110B00
    /* 1465D0 801A0560 AFA30040 */   sw        $v1, 0x40($sp)
    /* 1465D4 801A0564 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1465D8 801A0568 24A5A7C4 */  addiu      $a1, $a1, %lo(omCurrentObj)
    /* 1465DC 801A056C 1040000F */  beqz       $v0, .L801A05AC_ovl7
    /* 1465E0 801A0570 8FA30040 */   lw        $v1, 0x40($sp)
    /* 1465E4 801A0574 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 1465E8 801A0578 93AA0026 */  lbu        $t2, 0x26($sp)
    /* 1465EC 801A057C 3C04800F */  lui        $a0, %hi(D_800E83E0)
    /* 1465F0 801A0580 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 1465F4 801A0584 248483E0 */  addiu      $a0, $a0, %lo(D_800E83E0)
    /* 1465F8 801A0588 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1465FC 801A058C 000C6880 */  sll        $t5, $t4, 2
    /* 146600 801A0590 008D7021 */  addu       $t6, $a0, $t5
    /* 146604 801A0594 ADCA0000 */  sw         $t2, 0x0($t6)
    /* 146608 801A0598 93AF0027 */  lbu        $t7, 0x27($sp)
    /* 14660C 801A059C A06F0043 */  sb         $t7, 0x43($v1)
    /* 146610 801A05A0 8FB80030 */  lw         $t8, 0x30($sp)
    /* 146614 801A05A4 10000035 */  b          .L801A067C_ovl7
    /* 146618 801A05A8 A078003A */   sb        $t8, 0x3A($v1)
  .L801A05AC_ovl7:
    /* 14661C 801A05AC 27A40024 */  addiu      $a0, $sp, 0x24
    /* 146620 801A05B0 0C0443F5 */  jal        func_80110FD4
    /* 146624 801A05B4 AFA30040 */   sw        $v1, 0x40($sp)
    /* 146628 801A05B8 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 14662C 801A05BC 24A5A7C4 */  addiu      $a1, $a1, %lo(omCurrentObj)
    /* 146630 801A05C0 1040000F */  beqz       $v0, .L801A0600_ovl7
    /* 146634 801A05C4 8FA30040 */   lw        $v1, 0x40($sp)
    /* 146638 801A05C8 8CA80000 */  lw         $t0, 0x0($a1)
    /* 14663C 801A05CC 93B90026 */  lbu        $t9, 0x26($sp)
    /* 146640 801A05D0 3C04800F */  lui        $a0, %hi(D_800E83E0)
    /* 146644 801A05D4 8D090000 */  lw         $t1, 0x0($t0)
    /* 146648 801A05D8 248483E0 */  addiu      $a0, $a0, %lo(D_800E83E0)
    /* 14664C 801A05DC 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 146650 801A05E0 00095880 */  sll        $t3, $t1, 2
    /* 146654 801A05E4 008B6021 */  addu       $t4, $a0, $t3
    /* 146658 801A05E8 AD990000 */  sw         $t9, 0x0($t4)
    /* 14665C 801A05EC 93AD0027 */  lbu        $t5, 0x27($sp)
    /* 146660 801A05F0 A06D0043 */  sb         $t5, 0x43($v1)
    /* 146664 801A05F4 8FAA0030 */  lw         $t2, 0x30($sp)
    /* 146668 801A05F8 10000020 */  b          .L801A067C_ovl7
    /* 14666C 801A05FC A06A003A */   sb        $t2, 0x3A($v1)
  .L801A0600_ovl7:
    /* 146670 801A0600 27A40024 */  addiu      $a0, $sp, 0x24
    /* 146674 801A0604 0C044054 */  jal        func_80110150
    /* 146678 801A0608 AFA30040 */   sw        $v1, 0x40($sp)
    /* 14667C 801A060C 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 146680 801A0610 24A5A7C4 */  addiu      $a1, $a1, %lo(omCurrentObj)
    /* 146684 801A0614 1040000F */  beqz       $v0, .L801A0654_ovl7
    /* 146688 801A0618 8FA30040 */   lw        $v1, 0x40($sp)
    /* 14668C 801A061C 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 146690 801A0620 93AE0026 */  lbu        $t6, 0x26($sp)
    /* 146694 801A0624 3C04800F */  lui        $a0, %hi(D_800E83E0)
    /* 146698 801A0628 8DF80000 */  lw         $t8, 0x0($t7)
    /* 14669C 801A062C 248483E0 */  addiu      $a0, $a0, %lo(D_800E83E0)
    /* 1466A0 801A0630 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1466A4 801A0634 00184080 */  sll        $t0, $t8, 2
    /* 1466A8 801A0638 00884821 */  addu       $t1, $a0, $t0
    /* 1466AC 801A063C AD2E0000 */  sw         $t6, 0x0($t1)
    /* 1466B0 801A0640 93AB0027 */  lbu        $t3, 0x27($sp)
    /* 1466B4 801A0644 A06B0043 */  sb         $t3, 0x43($v1)
    /* 1466B8 801A0648 8FB90030 */  lw         $t9, 0x30($sp)
    /* 1466BC 801A064C 1000000B */  b          .L801A067C_ovl7
    /* 1466C0 801A0650 A079003A */   sb        $t9, 0x3A($v1)
  .L801A0654_ovl7:
    /* 1466C4 801A0654 8CAC0000 */  lw         $t4, 0x0($a1)
    /* 1466C8 801A0658 3C04800F */  lui        $a0, %hi(D_800E83E0)
    /* 1466CC 801A065C 248483E0 */  addiu      $a0, $a0, %lo(D_800E83E0)
    /* 1466D0 801A0660 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1466D4 801A0664 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1466D8 801A0668 000D5080 */  sll        $t2, $t5, 2
    /* 1466DC 801A066C 008A7821 */  addu       $t7, $a0, $t2
    /* 1466E0 801A0670 ADE00000 */  sw         $zero, 0x0($t7)
    /* 1466E4 801A0674 A0600043 */  sb         $zero, 0x43($v1)
    /* 1466E8 801A0678 A067003A */  sb         $a3, 0x3A($v1)
  .L801A067C_ovl7:
    /* 1466EC 801A067C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 1466F0 801A0680 24010001 */  addiu      $at, $zero, 0x1
    /* 1466F4 801A0684 8C660000 */  lw         $a2, 0x0($v1)
    /* 1466F8 801A0688 00063080 */  sll        $a2, $a2, 2
    /* 1466FC 801A068C 0086C021 */  addu       $t8, $a0, $a2
    /* 146700 801A0690 8F020000 */  lw         $v0, 0x0($t8)
    /* 146704 801A0694 10410009 */  beq        $v0, $at, .L801A06BC_ovl7
    /* 146708 801A0698 24010002 */   addiu     $at, $zero, 0x2
    /* 14670C 801A069C 10410007 */  beq        $v0, $at, .L801A06BC_ovl7
    /* 146710 801A06A0 24010003 */   addiu     $at, $zero, 0x3
    /* 146714 801A06A4 1041000D */  beq        $v0, $at, .L801A06DC_ovl7
    /* 146718 801A06A8 24010004 */   addiu     $at, $zero, 0x4
    /* 14671C 801A06AC 10410024 */  beq        $v0, $at, .L801A0740_ovl7
    /* 146720 801A06B0 00000000 */   nop
    /* 146724 801A06B4 1000003F */  b          .L801A07B4_ovl7
    /* 146728 801A06B8 00001025 */   or        $v0, $zero, $zero
  .L801A06BC_ovl7:
    /* 14672C 801A06BC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 146730 801A06C0 00862021 */  addu       $a0, $a0, $a2
    /* 146734 801A06C4 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
    /* 146738 801A06C8 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
    /* 14673C 801A06CC 0C02C7B2 */  jal        assign_new_process_entry
    /* 146740 801A06D0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 146744 801A06D4 10000037 */  b          .L801A07B4_ovl7
    /* 146748 801A06D8 24020001 */   addiu     $v0, $zero, 0x1
  .L801A06DC_ovl7:
    /* 14674C 801A06DC 8FA80030 */  lw         $t0, 0x30($sp)
    /* 146750 801A06E0 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 146754 801A06E4 00260821 */  addu       $at, $at, $a2
    /* 146758 801A06E8 11070006 */  beq        $t0, $a3, .L801A0704_ovl7
    /* 14675C 801A06EC AC208220 */   sw        $zero, %lo(D_800E8220)($at)
    /* 146760 801A06F0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 146764 801A06F4 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 146768 801A06F8 000E4880 */  sll        $t1, $t6, 2
    /* 14676C 801A06FC 00290821 */  addu       $at, $at, $t1
    /* 146770 801A0700 AC280D50 */  sw         $t0, %lo(D_800E0D50)($at)
  .L801A0704_ovl7:
    /* 146774 801A0704 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 146778 801A0708 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 14677C 801A070C 844B00B2 */  lh         $t3, 0xB2($v0)
    /* 146780 801A0710 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 146784 801A0714 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 146788 801A0718 25790001 */  addiu      $t9, $t3, 0x1
    /* 14678C 801A071C A45900B2 */  sh         $t9, 0xB2($v0)
    /* 146790 801A0720 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 146794 801A0724 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
    /* 146798 801A0728 000C6880 */  sll        $t5, $t4, 2
    /* 14679C 801A072C 008D2021 */  addu       $a0, $a0, $t5
    /* 1467A0 801A0730 0C02C7B2 */  jal        assign_new_process_entry
    /* 1467A4 801A0734 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1467A8 801A0738 1000001E */  b          .L801A07B4_ovl7
    /* 1467AC 801A073C 24020001 */   addiu     $v0, $zero, 0x1
  .L801A0740_ovl7:
    /* 1467B0 801A0740 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 1467B4 801A0744 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 1467B8 801A0748 904A0004 */  lbu        $t2, 0x4($v0)
    /* 1467BC 801A074C 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 1467C0 801A0750 00260821 */  addu       $at, $at, $a2
    /* 1467C4 801A0754 15400015 */  bnez       $t2, .L801A07AC_ovl7
    /* 1467C8 801A0758 240F0001 */   addiu     $t7, $zero, 0x1
    /* 1467CC 801A075C 8FAE0030 */  lw         $t6, 0x30($sp)
    /* 1467D0 801A0760 AC2F8220 */  sw         $t7, %lo(D_800E8220)($at)
    /* 1467D4 801A0764 24180002 */  addiu      $t8, $zero, 0x2
    /* 1467D8 801A0768 11C70006 */  beq        $t6, $a3, .L801A0784_ovl7
    /* 1467DC 801A076C A0580004 */   sb        $t8, 0x4($v0)
    /* 1467E0 801A0770 8C680000 */  lw         $t0, 0x0($v1)
    /* 1467E4 801A0774 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 1467E8 801A0778 00084880 */  sll        $t1, $t0, 2
    /* 1467EC 801A077C 00290821 */  addu       $at, $at, $t1
    /* 1467F0 801A0780 AC2E0D50 */  sw         $t6, %lo(D_800E0D50)($at)
  .L801A0784_ovl7:
    /* 1467F4 801A0784 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 1467F8 801A0788 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1467FC 801A078C 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 146800 801A0790 000BC880 */  sll        $t9, $t3, 2
    /* 146804 801A0794 00992021 */  addu       $a0, $a0, $t9
    /* 146808 801A0798 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 14680C 801A079C 0C02C7B2 */  jal        assign_new_process_entry
    /* 146810 801A07A0 24A57000 */   addiu     $a1, $a1, %lo(func_801A7000_ovl7)
    /* 146814 801A07A4 10000003 */  b          .L801A07B4_ovl7
    /* 146818 801A07A8 24020001 */   addiu     $v0, $zero, 0x1
  .L801A07AC_ovl7:
    /* 14681C 801A07AC 10000001 */  b          .L801A07B4_ovl7
    /* 146820 801A07B0 00001025 */   or        $v0, $zero, $zero
  .L801A07B4_ovl7:
    /* 146824 801A07B4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801A07B8_ovl7:
    /* 146828 801A07B8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 14682C 801A07BC 03E00008 */  jr         $ra
    /* 146830 801A07C0 00000000 */   nop
endlabel func_801A04B8_ovl7
.size func_801A04B8_ovl7, . - func_801A04B8_ovl7
