glabel func_801DB528_ovl16
/* 2117D8 801DB528 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 2117DC 801DB52C F7B60020 */  sdc1  $f22, 0x20($sp)
/* 2117E0 801DB530 3C01801F */  lui   $at, %hi(D_801EFDF4_ovl16) # $at, 0x801f
/* 2117E4 801DB534 AFB70044 */  sw    $s7, 0x44($sp)
/* 2117E8 801DB538 AFB40038 */  sw    $s4, 0x38($sp)
/* 2117EC 801DB53C AFB20030 */  sw    $s2, 0x30($sp)
/* 2117F0 801DB540 C436FDF4 */  lwc1  $f22, %lo(D_801EFDF4_ovl16)($at)
/* 2117F4 801DB544 AFBE0048 */  sw    $fp, 0x48($sp)
/* 2117F8 801DB548 AFB60040 */  sw    $s6, 0x40($sp)
/* 2117FC 801DB54C AFB5003C */  sw    $s5, 0x3c($sp)
/* 211800 801DB550 AFB30034 */  sw    $s3, 0x34($sp)
/* 211804 801DB554 AFB1002C */  sw    $s1, 0x2c($sp)
/* 211808 801DB558 AFB00028 */  sw    $s0, 0x28($sp)
/* 21180C 801DB55C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 211810 801DB560 3C01801F */  lui   $at, %hi(D_801EFDF8_ovl16) # $at, 0x801f
/* 211814 801DB564 3C12800E */  lui   $s2, %hi(D_800DD748) # $s2, 0x800e
/* 211818 801DB568 3C14800E */  lui   $s4, %hi(D_800E7730) # $s4, 0x800e
/* 21181C 801DB56C 3C17800E */  lui   $s7, %hi(D_800E77A0) # $s7, 0x800e
/* 211820 801DB570 AFBF004C */  sw    $ra, 0x4c($sp)
/* 211824 801DB574 AFA40050 */  sw    $a0, 0x50($sp)
/* 211828 801DB578 26F777A0 */  addiu $s7, %lo(D_800E77A0) # addiu $s7, $s7, 0x77a0
/* 21182C 801DB57C 26947730 */  addiu $s4, %lo(D_800E7730) # addiu $s4, $s4, 0x7730
/* 211830 801DB580 2652D748 */  addiu $s2, %lo(D_800DD748) # addiu $s2, $s2, -0x28b8
/* 211834 801DB584 C434FDF8 */  lwc1  $f20, %lo(D_801EFDF8_ovl16)($at)
/* 211838 801DB588 24100038 */  li    $s0, 56
/* 21183C 801DB58C 2411000E */  li    $s1, 14
/* 211840 801DB590 2413FFFF */  li    $s3, -1
/* 211844 801DB594 24150004 */  li    $s5, 4
/* 211848 801DB598 24160039 */  li    $s6, 57
/* 21184C 801DB59C 241E003A */  li    $fp, 58
.L801DB5A0_ovl16:
/* 211850 801DB5A0 8E4E0000 */  lw    $t6, ($s2)
/* 211854 801DB5A4 02917821 */  addu  $t7, $s4, $s1
/* 211858 801DB5A8 526E0029 */  beql  $s3, $t6, .L801DB650_ovl16
/* 21185C 801DB5AC 26310001 */   addiu $s1, $s1, 1
/* 211860 801DB5B0 91E20000 */  lbu   $v0, ($t7)
/* 211864 801DB5B4 0011C040 */  sll   $t8, $s1, 1
/* 211868 801DB5B8 02F8C821 */  addu  $t9, $s7, $t8
/* 21186C 801DB5BC 50400004 */  beql  $v0, $zero, .L801DB5D0_ovl16
/* 211870 801DB5C0 97220000 */   lhu   $v0, ($t9)
/* 211874 801DB5C4 56A20022 */  bnel  $s5, $v0, .L801DB650_ovl16
/* 211878 801DB5C8 26310001 */   addiu $s1, $s1, 1
/* 21187C 801DB5CC 97220000 */  lhu   $v0, ($t9)
.L801DB5D0_ovl16:
/* 211880 801DB5D0 52C2001F */  beql  $s6, $v0, .L801DB650_ovl16
/* 211884 801DB5D4 26310001 */   addiu $s1, $s1, 1
/* 211888 801DB5D8 13C2001C */  beq   $fp, $v0, .L801DB64C_ovl16
/* 21188C 801DB5DC 3C01800E */ lui $at, %hi(D_800E7B20)
/* 211890 801DB5E0 00300821 */  addu  $at, $at, $s0
/* 211894 801DB5E4 C4207B20 */ lwc1 $f0, %lo(D_800E7B20)($at)
/* 211898 801DB5E8 4600A03C */  c.lt.s $f20, $f0
/* 21189C 801DB5EC 00000000 */  nop   
/* 2118A0 801DB5F0 45020017 */  bc1fl .L801DB650_ovl16
/* 2118A4 801DB5F4 26310001 */   addiu $s1, $s1, 1
/* 2118A8 801DB5F8 4616003C */  c.lt.s $f0, $f22
/* 2118AC 801DB5FC 3C08800F */ lui $t0, %hi(D_800E83E0)
/* 2118B0 801DB600 01104021 */  addu  $t0, $t0, $s0
/* 2118B4 801DB604 45020012 */  bc1fl .L801DB650_ovl16
/* 2118B8 801DB608 26310001 */   addiu $s1, $s1, 1
/* 2118BC 801DB60C 8D0883E0 */ lw $t0, %lo(D_800E83E0)($t0)
/* 2118C0 801DB610 24010001 */  li    $at, 1
/* 2118C4 801DB614 3C09800E */ lui $t1, %hi(D_800E0D50)
/* 2118C8 801DB618 1101000C */  beq   $t0, $at, .L801DB64C_ovl16
/* 2118CC 801DB61C 01304821 */   addu  $t1, $t1, $s0
/* 2118D0 801DB620 8D290D50 */ lw $t1, %lo(D_800E0D50)($t1)
/* 2118D4 801DB624 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 2118D8 801DB628 00300821 */  addu  $at, $at, $s0
/* 2118DC 801DB62C 11200007 */  beqz  $t1, .L801DB64C_ovl16
/* 2118E0 801DB630 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 2118E4 801DB634 00902021 */  addu  $a0, $a0, $s0
/* 2118E8 801DB638 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 2118EC 801DB63C AC33DC50 */ sw $s3, %lo(gEntityVtableIndexArray)($at)
/* 2118F0 801DB640 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 2118F4 801DB644 0C02C7B2 */  jal   assign_new_process_entry
/* 2118F8 801DB648 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DB64C_ovl16:
/* 2118FC 801DB64C 26310001 */  addiu $s1, $s1, 1
.L801DB650_ovl16:
/* 211900 801DB650 2401003C */  li    $at, 60
/* 211904 801DB654 26100004 */  addiu $s0, $s0, 4
/* 211908 801DB658 1621FFD1 */  bne   $s1, $at, .L801DB5A0_ovl16
/* 21190C 801DB65C 26520004 */   addiu $s2, $s2, 4
/* 211910 801DB660 8FBF004C */  lw    $ra, 0x4c($sp)
/* 211914 801DB664 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 211918 801DB668 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 21191C 801DB66C 8FB00028 */  lw    $s0, 0x28($sp)
/* 211920 801DB670 8FB1002C */  lw    $s1, 0x2c($sp)
/* 211924 801DB674 8FB20030 */  lw    $s2, 0x30($sp)
/* 211928 801DB678 8FB30034 */  lw    $s3, 0x34($sp)
/* 21192C 801DB67C 8FB40038 */  lw    $s4, 0x38($sp)
/* 211930 801DB680 8FB5003C */  lw    $s5, 0x3c($sp)
/* 211934 801DB684 8FB60040 */  lw    $s6, 0x40($sp)
/* 211938 801DB688 8FB70044 */  lw    $s7, 0x44($sp)
/* 21193C 801DB68C 8FBE0048 */  lw    $fp, 0x48($sp)
/* 211940 801DB690 03E00008 */  jr    $ra
/* 211944 801DB694 27BD0050 */   addiu $sp, $sp, 0x50
.type func_801DB528_ovl16, @function
.size func_801DB528_ovl16, . - func_801DB528_ovl16
