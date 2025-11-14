glabel func_802204F8_ovl18
/* 232E98 802204F8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 232E9C 802204FC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 232EA0 80220500 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 232EA4 80220504 AFBF0014 */  sw    $ra, 0x14($sp)
/* 232EA8 80220508 AFA40018 */  sw    $a0, 0x18($sp)
/* 232EAC 8022050C 8C4E0000 */  lw    $t6, ($v0)
/* 232EB0 80220510 3C18800F */  lui   $t8, %hi(D_800E98E0) # $t8, 0x800f
/* 232EB4 80220514 271898E0 */  addiu $t8, %lo(D_800E98E0) # addiu $t8, $t8, -0x6720
/* 232EB8 80220518 000E7880 */  sll   $t7, $t6, 2
/* 232EBC 8022051C 01F82021 */  addu  $a0, $t7, $t8
/* 232EC0 80220520 8C830000 */  lw    $v1, ($a0)
/* 232EC4 80220524 3C018023 */  lui   $at, %hi(D_8022BBC0) # $at, 0x8023
/* 232EC8 80220528 18600007 */  blez  $v1, .L80220548_ovl18
/* 232ECC 8022052C 2479FFFF */   addiu $t9, $v1, -1
/* 232ED0 80220530 AC990000 */  sw    $t9, ($a0)
/* 232ED4 80220534 8C480000 */  lw    $t0, ($v0)
/* 232ED8 80220538 3C03800F */ lui $v1, %hi(D_800E98E0)
/* 232EDC 8022053C 00084880 */  sll   $t1, $t0, 2
/* 232EE0 80220540 00691821 */  addu  $v1, $v1, $t1
/* 232EE4 80220544 8C6398E0 */ lw $v1, %lo(D_800E98E0)($v1)
.L80220548_ovl18:
/* 232EE8 80220548 5C600015 */  bgtzl $v1, .L802205A0_ovl18
/* 232EEC 8022054C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 232EF0 80220550 0C066DCE */  jal   func_8019B738_ovl18
/* 232EF4 80220554 C42CBBC0 */   lwc1  $f12, %lo(D_8022BBC0)($at)
/* 232EF8 80220558 10400010 */  beqz  $v0, .L8022059C_ovl18
/* 232EFC 8022055C 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 232F00 80220560 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 232F04 80220564 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 232F08 80220568 240A0001 */  li    $t2, 1
/* 232F0C 8022056C 8C4B0000 */  lw    $t3, ($v0)
/* 232F10 80220570 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 232F14 80220574 3C058022 */  lui   $a1, %hi(func_802202B8_ovl18) # $a1, 0x8022
/* 232F18 80220578 000B6080 */  sll   $t4, $t3, 2
/* 232F1C 8022057C 002C0821 */  addu  $at, $at, $t4
/* 232F20 80220580 AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
/* 232F24 80220584 8C4D0000 */  lw    $t5, ($v0)
/* 232F28 80220588 24A502B8 */  addiu $a1, %lo(func_802202B8_ovl18) # addiu $a1, $a1, 0x2b8
/* 232F2C 8022058C 000D7080 */  sll   $t6, $t5, 2
/* 232F30 80220590 008E2021 */  addu  $a0, $a0, $t6
/* 232F34 80220594 0C02C7B2 */  jal   assign_new_process_entry
/* 232F38 80220598 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L8022059C_ovl18:
/* 232F3C 8022059C 8FBF0014 */  lw    $ra, 0x14($sp)
.L802205A0_ovl18:
/* 232F40 802205A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 232F44 802205A4 03E00008 */  jr    $ra
/* 232F48 802205A8 00000000 */   nop   
.type func_802204F8_ovl18, @function
.size func_802204F8_ovl18, . - func_802204F8_ovl18
