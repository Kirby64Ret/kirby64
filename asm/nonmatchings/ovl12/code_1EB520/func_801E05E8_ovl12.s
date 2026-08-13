nonmatching func_801E05E8_ovl12, 0x12C

glabel func_801E05E8_ovl12
    /* 1F0928 801E05E8 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 1F092C 801E05EC 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 1F0930 801E05F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1F0934 801E05F4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F0938 801E05F8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 1F093C 801E05FC 8DF80000 */  lw         $t8, 0x0($t7)
    /* 1F0940 801E0600 3C08800E */  lui        $t0, %hi(gEntityFuncListIDArray)
    /* 1F0944 801E0604 3C0E800D */  lui        $t6, %hi(D_800D7098 + 0x14)
    /* 1F0948 801E0608 0018C880 */  sll        $t9, $t8, 2
    /* 1F094C 801E060C 01194021 */  addu       $t0, $t0, $t9
    /* 1F0950 801E0610 8D08DC50 */  lw         $t0, %lo(gEntityFuncListIDArray)($t0)
    /* 1F0954 801E0614 8DCE70AC */  lw         $t6, %lo(D_800D7098 + 0x14)($t6)
    /* 1F0958 801E0618 24040002 */  addiu      $a0, $zero, 0x2
    /* 1F095C 801E061C 01C84821 */  addu       $t1, $t6, $t0
    /* 1F0960 801E0620 0C077B67 */  jal        func_801DED9C_ovl12
    /* 1F0964 801E0624 AFA90018 */   sw        $t1, 0x18($sp)
    /* 1F0968 801E0628 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1F096C 801E062C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1F0970 801E0630 3C0A800F */  lui        $t2, %hi(D_800EA360)
    /* 1F0974 801E0634 24010001 */  addiu      $at, $zero, 0x1
    /* 1F0978 801E0638 8C430000 */  lw         $v1, 0x0($v0)
    /* 1F097C 801E063C 00031880 */  sll        $v1, $v1, 2
    /* 1F0980 801E0640 01435021 */  addu       $t2, $t2, $v1
    /* 1F0984 801E0644 8D4AA360 */  lw         $t2, %lo(D_800EA360)($t2)
    /* 1F0988 801E0648 15410007 */  bne        $t2, $at, .L801E0668_ovl12
    /* 1F098C 801E064C 00000000 */   nop
    /* 1F0990 801E0650 0C076F40 */  jal        func_801DBD00_ovl12
    /* 1F0994 801E0654 00000000 */   nop
    /* 1F0998 801E0658 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1F099C 801E065C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1F09A0 801E0660 8C430000 */  lw         $v1, 0x0($v0)
    /* 1F09A4 801E0664 00031880 */  sll        $v1, $v1, 2
  .L801E0668_ovl12:
    /* 1F09A8 801E0668 3C0B800D */  lui        $t3, %hi(D_800D7098 + 0x18)
    /* 1F09AC 801E066C 8D6B70B0 */  lw         $t3, %lo(D_800D7098 + 0x18)($t3)
    /* 1F09B0 801E0670 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F09B4 801E0674 3C18800F */  lui        $t8, %hi(D_800E9E20)
    /* 1F09B8 801E0678 1561000F */  bne        $t3, $at, .L801E06B8_ovl12
    /* 1F09BC 801E067C 0303C021 */   addu      $t8, $t8, $v1
    /* 1F09C0 801E0680 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1F09C4 801E0684 00230821 */  addu       $at, $at, $v1
    /* 1F09C8 801E0688 240C0009 */  addiu      $t4, $zero, 0x9
    /* 1F09CC 801E068C AC2CDC50 */  sw         $t4, %lo(gEntityFuncListIDArray)($at)
    /* 1F09D0 801E0690 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 1F09D4 801E0694 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1F09D8 801E0698 3C05801E */  lui        $a1, %hi(func_801DFFA8_ovl12)
    /* 1F09DC 801E069C 000D7880 */  sll        $t7, $t5, 2
    /* 1F09E0 801E06A0 008F2021 */  addu       $a0, $a0, $t7
    /* 1F09E4 801E06A4 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1F09E8 801E06A8 0C02C7B2 */  jal        assign_new_process_entry
    /* 1F09EC 801E06AC 24A5FFA8 */   addiu     $a1, $a1, %lo(func_801DFFA8_ovl12)
    /* 1F09F0 801E06B0 10000015 */  b          .L801E0708_ovl12
    /* 1F09F4 801E06B4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801E06B8_ovl12:
    /* 1F09F8 801E06B8 8F189E20 */  lw         $t8, %lo(D_800E9E20)($t8)
    /* 1F09FC 801E06BC 3C01800F */  lui        $at, %hi(D_800E9720)
    /* 1F0A00 801E06C0 00230821 */  addu       $at, $at, $v1
    /* 1F0A04 801E06C4 1300000F */  beqz       $t8, .L801E0704_ovl12
    /* 1F0A08 801E06C8 3C04800E */   lui       $a0, %hi(gEntityGObjProcessArray)
    /* 1F0A0C 801E06CC AC209720 */  sw         $zero, %lo(D_800E9720)($at)
    /* 1F0A10 801E06D0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 1F0A14 801E06D4 8FB90018 */  lw         $t9, 0x18($sp)
    /* 1F0A18 801E06D8 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1F0A1C 801E06DC 000E4080 */  sll        $t0, $t6, 2
    /* 1F0A20 801E06E0 00280821 */  addu       $at, $at, $t0
    /* 1F0A24 801E06E4 AC39DC50 */  sw         $t9, %lo(gEntityFuncListIDArray)($at)
    /* 1F0A28 801E06E8 8C490000 */  lw         $t1, 0x0($v0)
    /* 1F0A2C 801E06EC 3C05801E */  lui        $a1, %hi(func_801DFFA8_ovl12)
    /* 1F0A30 801E06F0 24A5FFA8 */  addiu      $a1, $a1, %lo(func_801DFFA8_ovl12)
    /* 1F0A34 801E06F4 00095080 */  sll        $t2, $t1, 2
    /* 1F0A38 801E06F8 008A2021 */  addu       $a0, $a0, $t2
    /* 1F0A3C 801E06FC 0C02C7B2 */  jal        assign_new_process_entry
    /* 1F0A40 801E0700 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
  .L801E0704_ovl12:
    /* 1F0A44 801E0704 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801E0708_ovl12:
    /* 1F0A48 801E0708 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1F0A4C 801E070C 03E00008 */  jr         $ra
    /* 1F0A50 801E0710 00000000 */   nop
endlabel func_801E05E8_ovl12
.size func_801E05E8_ovl12, . - func_801E05E8_ovl12
