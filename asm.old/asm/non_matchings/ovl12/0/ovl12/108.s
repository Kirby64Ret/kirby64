glabel func_801E05E8_ovl12 # 108
/* 0053E8 801E05E8 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 0053EC 801E05EC 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 0053F0 801E05F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0053F4 801E05F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0053F8 801E05F8 AFA40020 */  sw          $a0, 0x20($sp)
/* 0053FC 801E05FC 8DF80000 */  lw          $t8, 0x0($t7)
/* 005400 801E0600 3C08800E */  lui         $t0, %hi(gEntityVtableIndexArray)
/* 005404 801E0604 3C0E800D */  lui         $t6, %hi(D_800D70AC)
/* 005408 801E0608 0018C880 */  sll         $t9, $t8, 2
/* 00540C 801E060C 01194021 */  addu        $t0, $t0, $t9
/* 005410 801E0610 8D08DC50 */  lw          $t0, %lo(gEntityVtableIndexArray)($t0)
/* 005414 801E0614 8DCE70AC */  lw          $t6, %lo(D_800D70AC)($t6)
/* 005418 801E0618 24040002 */  addiu       $a0, $zero, 0x2
/* 00541C 801E061C 01C84821 */  addu        $t1, $t6, $t0
/* 005420 801E0620 0C077B67 */  jal         func_801DED9C_ovl12
/* 005424 801E0624 AFA90018 */   sw         $t1, 0x18($sp)
/* 005428 801E0628 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 00542C 801E062C 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 005430 801E0630 3C0A800F */  lui         $t2, %hi(D_800EA360)
/* 005434 801E0634 24010001 */  addiu       $at, $zero, 0x1
/* 005438 801E0638 8C430000 */  lw          $v1, 0x0($v0)
/* 00543C 801E063C 00031880 */  sll         $v1, $v1, 2
/* 005440 801E0640 01435021 */  addu        $t2, $t2, $v1
/* 005444 801E0644 8D4AA360 */  lw          $t2, %lo(D_800EA360)($t2)
/* 005448 801E0648 15410007 */  bne         $t2, $at, .L801E0668
/* 00544C 801E064C 00000000 */   nop
/* 005450 801E0650 0C076F40 */  jal         func_801DBD00_ovl12
/* 005454 801E0654 00000000 */   nop
/* 005458 801E0658 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 00545C 801E065C 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 005460 801E0660 8C430000 */  lw          $v1, 0x0($v0)
/* 005464 801E0664 00031880 */  sll         $v1, $v1, 2
.L801E0668:
/* 005468 801E0668 3C0B800D */  lui         $t3, %hi(D_800D70B0)
/* 00546C 801E066C 8D6B70B0 */  lw          $t3, %lo(D_800D70B0)($t3)
/* 005470 801E0670 2401FFFF */  addiu       $at, $zero, -0x1
/* 005474 801E0674 3C18800F */  lui         $t8, %hi(D_800E9E20)
/* 005478 801E0678 1561000F */  bne         $t3, $at, .L801E06B8
/* 00547C 801E067C 0303C021 */   addu       $t8, $t8, $v1
/* 005480 801E0680 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 005484 801E0684 00230821 */  addu        $at, $at, $v1
/* 005488 801E0688 240C0009 */  addiu       $t4, $zero, 0x9
/* 00548C 801E068C AC2CDC50 */  sw          $t4, %lo(gEntityVtableIndexArray)($at)
/* 005490 801E0690 8C4D0000 */  lw          $t5, 0x0($v0)
/* 005494 801E0694 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 005498 801E0698 3C05801E */  lui         $a1, %hi(func_801DFFA8_ovl12)
/* 00549C 801E069C 000D7880 */  sll         $t7, $t5, 2
/* 0054A0 801E06A0 008F2021 */  addu        $a0, $a0, $t7
/* 0054A4 801E06A4 8C84E510 */  lw          $a0, %lo(gEntityGObjProcessArray)($a0)
/* 0054A8 801E06A8 0C02C7B2 */  jal         assign_new_process_entry
/* 0054AC 801E06AC 24A5FFA8 */   addiu      $a1, $a1, %lo(func_801DFFA8_ovl12)
/* 0054B0 801E06B0 10000015 */  b           .L801E0708
/* 0054B4 801E06B4 8FBF0014 */   lw         $ra, 0x14($sp)
.L801E06B8:
/* 0054B8 801E06B8 8F189E20 */  lw          $t8, %lo(D_800E9E20)($t8)
/* 0054BC 801E06BC 3C01800F */  lui         $at, %hi(D_800E9720)
/* 0054C0 801E06C0 00230821 */  addu        $at, $at, $v1
/* 0054C4 801E06C4 1300000F */  beqz        $t8, .L801E0704
/* 0054C8 801E06C8 3C04800E */   lui        $a0, %hi(gEntityGObjProcessArray)
/* 0054CC 801E06CC AC209720 */  sw          $zero, %lo(D_800E9720)($at)
/* 0054D0 801E06D0 8C4E0000 */  lw          $t6, 0x0($v0)
/* 0054D4 801E06D4 8FB90018 */  lw          $t9, 0x18($sp)
/* 0054D8 801E06D8 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 0054DC 801E06DC 000E4080 */  sll         $t0, $t6, 2
/* 0054E0 801E06E0 00280821 */  addu        $at, $at, $t0
/* 0054E4 801E06E4 AC39DC50 */  sw          $t9, %lo(gEntityVtableIndexArray)($at)
/* 0054E8 801E06E8 8C490000 */  lw          $t1, 0x0($v0)
/* 0054EC 801E06EC 3C05801E */  lui         $a1, %hi(func_801DFFA8_ovl12)
/* 0054F0 801E06F0 24A5FFA8 */  addiu       $a1, $a1, %lo(func_801DFFA8_ovl12)
/* 0054F4 801E06F4 00095080 */  sll         $t2, $t1, 2
/* 0054F8 801E06F8 008A2021 */  addu        $a0, $a0, $t2
/* 0054FC 801E06FC 0C02C7B2 */  jal         assign_new_process_entry
/* 005500 801E0700 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E0704:
/* 005504 801E0704 8FBF0014 */  lw          $ra, 0x14($sp)
.L801E0708:
/* 005508 801E0708 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00550C 801E070C 03E00008 */  jr          $ra
/* 005510 801E0710 00000000 */   nop
.type func_801E05E8_ovl12, @function
.size func_801E05E8_ovl12, . - func_801E05E8_ovl12
