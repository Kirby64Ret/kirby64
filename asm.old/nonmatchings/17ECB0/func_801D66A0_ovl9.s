glabel func_801D66A0_ovl9
/* 1846F0 801D66A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1846F4 801D66A4 AFB20020 */  sw         $s2, 0x20($sp)
/* 1846F8 801D66A8 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 1846FC 801D66AC 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 184700 801D66B0 AFB00018 */  sw         $s0, 0x18($sp)
/* 184704 801D66B4 8E500000 */  lw         $s0, 0x0($s2)
/* 184708 801D66B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 18470C 801D66BC AFB1001C */  sw         $s1, 0x1C($sp)
/* 184710 801D66C0 8E030000 */  lw         $v1, 0x0($s0)
/* 184714 801D66C4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 184718 801D66C8 3C0E800E */  lui        $t6, %hi(D_800E5F90)
/* 18471C 801D66CC 00031880 */  sll        $v1, $v1, 2
/* 184720 801D66D0 00230821 */  addu       $at, $at, $v1
/* 184724 801D66D4 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 184728 801D66D8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 18472C 801D66DC 00230821 */  addu       $at, $at, $v1
/* 184730 801D66E0 E424A8A0 */  swc1       $f4, %lo(D_800EA8A0)($at)
/* 184734 801D66E4 8E030000 */  lw         $v1, 0x0($s0)
.L801D66E8_ovl8:
/* 184738 801D66E8 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 18473C 801D66EC 00808825 */  or         $s1, $a0, $zero
/* 184740 801D66F0 00031880 */  sll        $v1, $v1, 2
/* 184744 801D66F4 01C37021 */  addu       $t6, $t6, $v1
/* 184748 801D66F8 8DCE5F90 */  lw         $t6, %lo(D_800E5F90)($t6)
/* 18474C 801D66FC 00230821 */  addu       $at, $at, $v1
/* 184750 801D6700 AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
/* 184754 801D6704 8E030000 */  lw         $v1, 0x0($s0)
/* 184758 801D6708 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 18475C 801D670C 00031880 */  sll        $v1, $v1, 2
/* 184760 801D6710 00230821 */  addu       $at, $at, $v1
/* 184764 801D6714 C4266BD0 */  lwc1       $f6, %lo(D_800E6BD0)($at)
/* 184768 801D6718 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 18476C 801D671C 00230821 */  addu       $at, $at, $v1
/* 184770 801D6720 E426AA60 */  swc1       $f6, %lo(D_800EAA60)($at)
/* 184774 801D6724 8E030000 */  lw         $v1, 0x0($s0)
/* 184778 801D6728 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 18477C 801D672C 00031880 */  sll        $v1, $v1, 2
/* 184780 801D6730 00230821 */  addu       $at, $at, $v1
/* 184784 801D6734 C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 184788 801D6738 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 18478C 801D673C 00230821 */  addu       $at, $at, $v1
/* 184790 801D6740 E428AC20 */  swc1       $f8, %lo(D_800EAC20)($at)
/* 184794 801D6744 8E030000 */  lw         $v1, 0x0($s0)
/* 184798 801D6748 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 18479C 801D674C 00031880 */  sll        $v1, $v1, 2
/* 1847A0 801D6750 00230821 */  addu       $at, $at, $v1
/* 1847A4 801D6754 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* 1847A8 801D6758 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 1847AC 801D675C 00230821 */  addu       $at, $at, $v1
/* 1847B0 801D6760 0C066ED6 */  jal        func_8019BB58_ovl7
/* 1847B4 801D6764 E42AADE0 */   swc1      $f10, %lo(D_800EADE0)($at)
/* 1847B8 801D6768 8E500000 */  lw         $s0, 0x0($s2)
/* 1847BC 801D676C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1847C0 801D6770 44818000 */  mtc1       $at, $f16
/* 1847C4 801D6774 8E0F0000 */  lw         $t7, 0x0($s0)
/* 1847C8 801D6778 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1847CC 801D677C 02202025 */  or         $a0, $s1, $zero
/* 1847D0 801D6780 000FC080 */  sll        $t8, $t7, 2
/* 1847D4 801D6784 00380821 */  addu       $at, $at, $t8
/* 1847D8 801D6788 E4306A10 */  swc1       $f16, %lo(D_800E6A10)($at)
/* 1847DC 801D678C 8E190000 */  lw         $t9, 0x0($s0)
/* 1847E0 801D6790 3C018022 */  lui        $at, %hi(D_8021CED0_ovl9)
/* 1847E4 801D6794 C432CED0 */  lwc1       $f18, %lo(D_8021CED0_ovl9)($at)
/* 1847E8 801D6798 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1847EC 801D679C 00194080 */  sll        $t0, $t9, 2
/* 1847F0 801D67A0 00280821 */  addu       $at, $at, $t0
/* 1847F4 801D67A4 0C03E39B */  jal        func_800F8E6C
.L801D67A8_ovl8:
/* 1847F8 801D67A8 E43264D0 */   swc1      $f18, %lo(D_800E64D0)($at)
/* 1847FC 801D67AC 0C02CCFD */  jal        func_800B33F4
/* 184800 801D67B0 00000000 */   nop
/* 184804 801D67B4 8E500000 */  lw         $s0, 0x0($s2)
/* 184808 801D67B8 3C04800E */  lui        $a0, %hi(D_800E17D0)
/* 18480C 801D67BC 248417D0 */  addiu      $a0, $a0, %lo(D_800E17D0)
/* 184810 801D67C0 8E030000 */  lw         $v1, 0x0($s0)
/* 184814 801D67C4 3C018022 */  lui        $at, %hi(D_8021CED4_ovl9)
/* 184818 801D67C8 C422CED4 */  lwc1       $f2, %lo(D_8021CED4_ovl9)($at)
/* 18481C 801D67CC 00031880 */  sll        $v1, $v1, 2
/* 184820 801D67D0 00831021 */  addu       $v0, $a0, $v1
/* 184824 801D67D4 C4400000 */  lwc1       $f0, 0x0($v0)
/* 184828 801D67D8 44806000 */  mtc1       $zero, $f12
/* 18482C 801D67DC 3C018022 */  lui        $at, %hi(D_8021CED8_ovl9)
/* 184830 801D67E0 4600103E */  c.le.s     $f2, $f0
/* 184834 801D67E4 00000000 */  nop
.L801D67E8_ovl8:
/* 184838 801D67E8 4502000C */  bc1fl      .L801D681C_ovl9
/* 18483C 801D67EC 460C003C */   c.lt.s    $f0, $f12
/* 184840 801D67F0 46020101 */  sub.s      $f4, $f0, $f2
.L801D67F4_ovl9:
/* 184844 801D67F4 E4440000 */  swc1       $f4, 0x0($v0)
/* 184848 801D67F8 8E030000 */  lw         $v1, 0x0($s0)
/* 18484C 801D67FC 00031880 */  sll        $v1, $v1, 2
/* 184850 801D6800 00831021 */  addu       $v0, $a0, $v1
/* 184854 801D6804 C4400000 */  lwc1       $f0, 0x0($v0)
/* 184858 801D6808 4600103E */  c.le.s     $f2, $f0
/* 18485C 801D680C 00000000 */  nop
/* 184860 801D6810 4503FFF8 */  bc1tl      .L801D67F4_ovl9
/* 184864 801D6814 46020101 */   sub.s     $f4, $f0, $f2
/* 184868 801D6818 460C003C */  c.lt.s     $f0, $f12
.L801D681C_ovl9:
/* 18486C 801D681C 00000000 */  nop
/* 184870 801D6820 4500000B */  bc1f       .L801D6850_ovl9
/* 184874 801D6824 00000000 */   nop
/* 184878 801D6828 46020180 */  add.s      $f6, $f0, $f2
.L801D682C_ovl9:
/* 18487C 801D682C E4460000 */  swc1       $f6, 0x0($v0)
/* 184880 801D6830 8E030000 */  lw         $v1, 0x0($s0)
/* 184884 801D6834 00031880 */  sll        $v1, $v1, 2
/* 184888 801D6838 00831021 */  addu       $v0, $a0, $v1
/* 18488C 801D683C C4400000 */  lwc1       $f0, 0x0($v0)
/* 184890 801D6840 460C003C */  c.lt.s     $f0, $f12
/* 184894 801D6844 00000000 */  nop
/* 184898 801D6848 4503FFF8 */  bc1tl      .L801D682C_ovl9
/* 18489C 801D684C 46020180 */   add.s     $f6, $f0, $f2
.L801D6850_ovl9:
/* 1848A0 801D6850 C428CED8 */  lwc1       $f8, %lo(D_8021CED8_ovl9)($at)
/* 1848A4 801D6854 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 1848A8 801D6858 00230821 */  addu       $at, $at, $v1
/* 1848AC 801D685C 46080080 */  add.s      $f2, $f0, $f8
/* 1848B0 801D6860 3C11800F */  lui        $s1, %hi(D_800EA6E0)
/* 1848B4 801D6864 2631A6E0 */  addiu      $s1, $s1, %lo(D_800EA6E0)
/* 1848B8 801D6868 E42241D0 */  swc1       $f2, %lo(gEntitiesAngleYArray)($at)
/* 1848BC 801D686C 8E090000 */  lw         $t1, 0x0($s0)
/* 1848C0 801D6870 00095080 */  sll        $t2, $t1, 2
/* 1848C4 801D6874 022A5821 */  addu       $t3, $s1, $t2
/* 1848C8 801D6878 E5620000 */  swc1       $f2, 0x0($t3)
/* 1848CC 801D687C 8E0C0000 */  lw         $t4, 0x0($s0)
/* 1848D0 801D6880 000C6880 */  sll        $t5, $t4, 2
/* 1848D4 801D6884 022D7021 */  addu       $t6, $s1, $t5
.L801D6888_ovl8:
/* 1848D8 801D6888 0C00B5B8 */  jal        sinf
/* 1848DC 801D688C C5CC0000 */   lwc1      $f12, 0x0($t6)
/* 1848E0 801D6890 8E500000 */  lw         $s0, 0x0($s2)
/* 1848E4 801D6894 3C014348 */  lui        $at, (0x43480000 >> 16)
.L801D6898_ovl8:
/* 1848E8 801D6898 44818000 */  mtc1       $at, $f16
/* 1848EC 801D689C 8E0F0000 */  lw         $t7, 0x0($s0)
/* 1848F0 801D68A0 3C19800E */  lui        $t9, %hi(gEntitiesNextPosXArray)
/* 1848F4 801D68A4 46100482 */  mul.s      $f18, $f0, $f16
/* 1848F8 801D68A8 273925D0 */  addiu      $t9, $t9, %lo(gEntitiesNextPosXArray)
/* 1848FC 801D68AC 000FC080 */  sll        $t8, $t7, 2
/* 184900 801D68B0 03191021 */  addu       $v0, $t8, $t9
/* 184904 801D68B4 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 184908 801D68B8 46125100 */  add.s      $f4, $f10, $f18
/* 18490C 801D68BC E4440000 */  swc1       $f4, 0x0($v0)
/* 184910 801D68C0 8E080000 */  lw         $t0, 0x0($s0)
/* 184914 801D68C4 00084880 */  sll        $t1, $t0, 2
.L801D68C8_ovl8:
/* 184918 801D68C8 02295021 */  addu       $t2, $s1, $t1
/* 18491C 801D68CC 0C00D604 */  jal        cosf
/* 184920 801D68D0 C54C0000 */   lwc1      $f12, 0x0($t2)
.L801D68D4_ovl8:
/* 184924 801D68D4 8E500000 */  lw         $s0, 0x0($s2)
/* 184928 801D68D8 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 18492C 801D68DC 44814000 */  mtc1       $at, $f8
glabel func_801D68E0_ovl8
/* 184930 801D68E0 8E0B0000 */  lw         $t3, 0x0($s0)
/* 184934 801D68E4 3C0D800E */  lui        $t5, %hi(gEntitiesNextPosZArray)
/* 184938 801D68E8 46080402 */  mul.s      $f16, $f0, $f8
/* 18493C 801D68EC 25AD2950 */  addiu      $t5, $t5, %lo(gEntitiesNextPosZArray)
/* 184940 801D68F0 000B6080 */  sll        $t4, $t3, 2
/* 184944 801D68F4 018D1021 */  addu       $v0, $t4, $t5
/* 184948 801D68F8 C4460000 */  lwc1       $f6, 0x0($v0)
/* 18494C 801D68FC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 184950 801D6900 3C0E800B */  lui        $t6, %hi(func_800B7674)
/* 184954 801D6904 46103280 */  add.s      $f10, $f6, $f16
/* 184958 801D6908 25CE7674 */  addiu      $t6, $t6, %lo(func_800B7674)
/* 18495C 801D690C 24190001 */  addiu      $t9, $zero, 0x1
/* 184960 801D6910 3C0A801D */  lui        $t2, %hi(func_801D6A94_ovl9)
/* 184964 801D6914 E44A0000 */  swc1       $f10, 0x0($v0)
/* 184968 801D6918 8E0F0000 */  lw         $t7, 0x0($s0)
/* 18496C 801D691C 254A6A94 */  addiu      $t2, $t2, %lo(func_801D6A94_ovl9)
/* 184970 801D6920 3C04801D */  lui        $a0, %hi(func_801D69D8_ovl9)
/* 184974 801D6924 000FC080 */  sll        $t8, $t7, 2
/* 184978 801D6928 00380821 */  addu       $at, $at, $t8
/* 18497C 801D692C AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
.L801D6930_ovl8:
/* 184980 801D6930 8E080000 */  lw         $t0, 0x0($s0)
/* 184984 801D6934 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 184988 801D6938 248469D8 */  addiu      $a0, $a0, %lo(func_801D69D8_ovl9)
/* 18498C 801D693C 00084880 */  sll        $t1, $t0, 2
/* 184990 801D6940 00290821 */  addu       $at, $at, $t1
/* 184994 801D6944 AC398E60 */  sw         $t9, %lo(D_800E8E60)($at)
/* 184998 801D6948 8E0B0000 */  lw         $t3, 0x0($s0)
/* 18499C 801D694C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1849A0 801D6950 000B6080 */  sll        $t4, $t3, 2
/* 1849A4 801D6954 002C0821 */  addu       $at, $at, $t4
/* 1849A8 801D6958 0C068354 */  jal        func_801A0D50_ovl7
/* 1849AC 801D695C AC2AF150 */   sw        $t2, %lo(D_800DF150)($at)
/* 1849B0 801D6960 8E4D0000 */  lw         $t5, 0x0($s2)
/* 1849B4 801D6964 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 1849B8 801D6968 3C068022 */  lui        $a2, %hi(D_8021BBF0_ovl9)
/* 1849BC 801D696C 8DAF0000 */  lw         $t7, 0x0($t5)
/* 1849C0 801D6970 24C6BBF0 */  addiu      $a2, $a2, %lo(D_8021BBF0_ovl9)
/* 1849C4 801D6974 24050001 */  addiu      $a1, $zero, 0x1
/* 1849C8 801D6978 008F2021 */  addu       $a0, $a0, $t7
/* 1849CC 801D697C 0C02911F */  jal        call_virtual_function
/* 1849D0 801D6980 90847880 */   lbu       $a0, %lo(D_800E7880)($a0)
/* 1849D4 801D6984 3C118022 */  lui        $s1, %hi(D_8021BBF4_ovl9)
/* 1849D8 801D6988 3C10800E */  lui        $s0, %hi(gEntityVtableIndexArray)
/* 1849DC 801D698C 2610DC50 */  addiu      $s0, $s0, %lo(gEntityVtableIndexArray)
/* 1849E0 801D6990 2631BBF4 */  addiu      $s1, $s1, %lo(D_8021BBF4_ovl9)
/* 1849E4 801D6994 8E4E0000 */  lw         $t6, 0x0($s2)
.L801D6998_ovl9:
/* 1849E8 801D6998 24050003 */  addiu      $a1, $zero, 0x3
/* 1849EC 801D699C 02203025 */  or         $a2, $s1, $zero
/* 1849F0 801D69A0 8DD80000 */  lw         $t8, 0x0($t6)
/* 1849F4 801D69A4 00184080 */  sll        $t0, $t8, 2
/* 1849F8 801D69A8 0208C821 */  addu       $t9, $s0, $t0
/* 1849FC 801D69AC 0C02911F */  jal        call_virtual_function
/* 184A00 801D69B0 8F240000 */   lw        $a0, 0x0($t9)
/* 184A04 801D69B4 1000FFF8 */  b          .L801D6998_ovl9
/* 184A08 801D69B8 8E4E0000 */   lw        $t6, 0x0($s2)
/* 184A0C 801D69BC 00000000 */  nop
/* 184A10 801D69C0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 184A14 801D69C4 8FB00018 */  lw         $s0, 0x18($sp)
/* 184A18 801D69C8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 184A1C 801D69CC 8FB20020 */  lw         $s2, 0x20($sp)
/* 184A20 801D69D0 03E00008 */  jr         $ra
/* 184A24 801D69D4 27BD0028 */   addiu     $sp, $sp, 0x28
