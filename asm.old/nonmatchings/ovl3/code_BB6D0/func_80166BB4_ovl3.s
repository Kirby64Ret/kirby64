glabel func_80166BB4_ovl3
/* C75F4 80166BB4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C75F8 80166BB8 AFB10018 */  sw         $s1, 0x18($sp)
/* C75FC 80166BBC 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* C7600 80166BC0 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* C7604 80166BC4 8E220000 */  lw         $v0, 0x0($s1)
/* C7608 80166BC8 AFBF001C */  sw         $ra, 0x1C($sp)
/* C760C 80166BCC AFB00014 */  sw         $s0, 0x14($sp)
/* C7610 80166BD0 AFA40020 */  sw         $a0, 0x20($sp)
/* C7614 80166BD4 8C4E0000 */  lw         $t6, 0x0($v0)
/* C7618 80166BD8 3C018019 */  lui        $at, %hi(D_801971A0_ovl3)
/* C761C 80166BDC C42071A0 */  lwc1       $f0, %lo(D_801971A0_ovl3)($at)
/* C7620 80166BE0 3C01800F */  lui        $at, %hi(D_800EA520)
/* C7624 80166BE4 000E7880 */  sll        $t7, $t6, 2
/* C7628 80166BE8 002F0821 */  addu       $at, $at, $t7
/* C762C 80166BEC AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* C7630 80166BF0 8C590000 */  lw         $t9, 0x0($v0)
/* C7634 80166BF4 3C01800E */  lui        $at, %hi(D_800DF150)
/* C7638 80166BF8 3C188016 */  lui        $t8, %hi(func_80166E2C_ovl3)
/* C763C 80166BFC 00194080 */  sll        $t0, $t9, 2
/* C7640 80166C00 00280821 */  addu       $at, $at, $t0
/* C7644 80166C04 27186E2C */  addiu      $t8, $t8, %lo(func_80166E2C_ovl3)
/* C7648 80166C08 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* C764C 80166C0C 8C490000 */  lw         $t1, 0x0($v0)
/* C7650 80166C10 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
.L80166C14_ovl5:
/* C7654 80166C14 3C0F800F */  lui        $t7, %hi(D_800EC2E0)
/* C7658 80166C18 00095080 */  sll        $t2, $t1, 2
/* C765C 80166C1C 002A0821 */  addu       $at, $at, $t2
/* C7660 80166C20 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* C7664 80166C24 8C4B0000 */  lw         $t3, 0x0($v0)
/* C7668 80166C28 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* C766C 80166C2C 3C040002 */  lui        $a0, (0x20053 >> 16)
/* C7670 80166C30 000B6080 */  sll        $t4, $t3, 2
/* C7674 80166C34 002C0821 */  addu       $at, $at, $t4
/* C7678 80166C38 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* C767C 80166C3C 8C4D0000 */  lw         $t5, 0x0($v0)
/* C7680 80166C40 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* C7684 80166C44 24080008 */  addiu      $t0, $zero, 0x8
/* C7688 80166C48 000D7080 */  sll        $t6, $t5, 2
/* C768C 80166C4C 002E0821 */  addu       $at, $at, $t6
.L80166C50_ovl5:
/* C7690 80166C50 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* C7694 80166C54 8C430000 */  lw         $v1, 0x0($v0)
/* C7698 80166C58 3C01800E */  lui        $at, %hi(D_800E0F10)
/* C769C 80166C5C 34840053 */  ori        $a0, $a0, (0x20053 & 0xFFFF)
/* C76A0 80166C60 00031880 */  sll        $v1, $v1, 2
/* C76A4 80166C64 01E37821 */  addu       $t7, $t7, $v1
glabel func_80166C68_ovl5
/* C76A8 80166C68 8DEFC2E0 */  lw         $t7, %lo(D_800EC2E0)($t7)
/* C76AC 80166C6C 00230821 */  addu       $at, $at, $v1
/* C76B0 80166C70 24050022 */  addiu      $a1, $zero, 0x22
/* C76B4 80166C74 15E00064 */  bnez       $t7, .L80166E08_ovl3
/* C76B8 80166C78 24060010 */   addiu     $a2, $zero, 0x10
/* C76BC 80166C7C 3C01800E */  lui        $at, %hi(D_800E0650)
/* C76C0 80166C80 00230821 */  addu       $at, $at, $v1
/* C76C4 80166C84 24190001 */  addiu      $t9, $zero, 0x1
/* C76C8 80166C88 AC390650 */  sw         $t9, %lo(D_800E0650)($at)
/* C76CC 80166C8C 8C580000 */  lw         $t8, 0x0($v0)
/* C76D0 80166C90 3C10800E */  lui        $s0, %hi(D_800E0D50)
/* C76D4 80166C94 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
/* C76D8 80166C98 00184080 */  sll        $t0, $t8, 2
/* C76DC 80166C9C 02084821 */  addu       $t1, $s0, $t0
/* C76E0 80166CA0 8D2A0000 */  lw         $t2, 0x0($t1)
/* C76E4 80166CA4 3C01800E */  lui        $at, %hi(D_800E09D0)
/* C76E8 80166CA8 000A5880 */  sll        $t3, $t2, 2
glabel func_80166CAC_ovl5
/* C76EC 80166CAC 002B0821 */  addu       $at, $at, $t3
/* C76F0 80166CB0 0C02BB30 */  jal        func_800AECC0
/* C76F4 80166CB4 C42C09D0 */   lwc1      $f12, %lo(D_800E09D0)($at)
/* C76F8 80166CB8 8E2C0000 */  lw         $t4, 0x0($s1)
/* C76FC 80166CBC 3C01800E */  lui        $at, %hi(D_800E09D0)
/* C7700 80166CC0 8D8D0000 */  lw         $t5, 0x0($t4)
/* C7704 80166CC4 000D7080 */  sll        $t6, $t5, 2
/* C7708 80166CC8 020E7821 */  addu       $t7, $s0, $t6
/* C770C 80166CCC 8DF90000 */  lw         $t9, 0x0($t7)
/* C7710 80166CD0 0019C080 */  sll        $t8, $t9, 2
.L80166CD4_ovl5:
/* C7714 80166CD4 00380821 */  addu       $at, $at, $t8
/* C7718 80166CD8 0C02BB48 */  jal        func_800AED20
/* C771C 80166CDC C42C09D0 */   lwc1      $f12, %lo(D_800E09D0)($at)
/* C7720 80166CE0 8E290000 */  lw         $t1, 0x0($s1)
/* C7724 80166CE4 3C01800E */  lui        $at, %hi(D_800E0F10)
/* C7728 80166CE8 24080002 */  addiu      $t0, $zero, 0x2
/* C772C 80166CEC 8D2A0000 */  lw         $t2, 0x0($t1)
/* C7730 80166CF0 3C040002 */  lui        $a0, (0x20052 >> 16)
/* C7734 80166CF4 34840052 */  ori        $a0, $a0, (0x20052 & 0xFFFF)
.L80166CF8_ovl5:
/* C7738 80166CF8 000A5880 */  sll        $t3, $t2, 2
/* C773C 80166CFC 002B0821 */  addu       $at, $at, $t3
/* C7740 80166D00 AC280F10 */  sw         $t0, %lo(D_800E0F10)($at)
/* C7744 80166D04 24050022 */  addiu      $a1, $zero, 0x22
/* C7748 80166D08 0C02A619 */  jal        func_800A9864
/* C774C 80166D0C 24060010 */   addiu     $a2, $zero, 0x10
/* C7750 80166D10 3C040002 */  lui        $a0, (0x202B9 >> 16)
/* C7754 80166D14 0C02A855 */  jal        func_800AA154
/* C7758 80166D18 348402B9 */   ori       $a0, $a0, (0x202B9 & 0xFFFF)
.L80166D1C_ovl5:
/* C775C 80166D1C 8E2C0000 */  lw         $t4, 0x0($s1)
/* C7760 80166D20 3C09800E */  lui        $t1, %hi(D_800DFBD0)
/* C7764 80166D24 24040001 */  addiu      $a0, $zero, 0x1
/* C7768 80166D28 8D8D0000 */  lw         $t5, 0x0($t4)
/* C776C 80166D2C 24050001 */  addiu      $a1, $zero, 0x1
/* C7770 80166D30 24060024 */  addiu      $a2, $zero, 0x24
/* C7774 80166D34 000D7080 */  sll        $t6, $t5, 2
/* C7778 80166D38 020E7821 */  addu       $t7, $s0, $t6
/* C777C 80166D3C 8DF90000 */  lw         $t9, 0x0($t7)
.L80166D40_ovl5:
/* C7780 80166D40 0019C080 */  sll        $t8, $t9, 2
/* C7784 80166D44 01384821 */  addu       $t1, $t1, $t8
glabel func_80166D48_ovl5
/* C7788 80166D48 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
/* C778C 80166D4C 0C02A040 */  jal        func_800A8100
/* C7790 80166D50 8D270008 */   lw        $a3, 0x8($t1)
/* C7794 80166D54 8E2A0000 */  lw         $t2, 0x0($s1)
/* C7798 80166D58 3C01800F */  lui        $at, %hi(D_800EA520)
/* C779C 80166D5C 3C040002 */  lui        $a0, (0x202BA >> 16)
/* C77A0 80166D60 8D480000 */  lw         $t0, 0x0($t2)
/* C77A4 80166D64 348402BA */  ori        $a0, $a0, (0x202BA & 0xFFFF)
/* C77A8 80166D68 00085880 */  sll        $t3, $t0, 2
.L80166D6C_ovl5:
/* C77AC 80166D6C 002B0821 */  addu       $at, $at, $t3
/* C77B0 80166D70 0C02A806 */  jal        func_800AA018
/* C77B4 80166D74 AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* C77B8 80166D78 3C108013 */  lui        $s0, %hi(gKirbyState)
/* C77BC 80166D7C 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
.L80166D80_ovl5:
/* C77C0 80166D80 8E0C0044 */  lw         $t4, 0x44($s0)
/* C77C4 80166D84 55800007 */  bnel       $t4, $zero, .L80166DA4_ovl3
/* C77C8 80166D88 8E2E0000 */   lw        $t6, 0x0($s1)
.L80166D8C_ovl3:
/* C77CC 80166D8C 0C002DAF */  jal        finish_current_thread
/* C77D0 80166D90 24040001 */   addiu     $a0, $zero, 0x1
.L80166D94_ovl5:
/* C77D4 80166D94 8E0D0044 */  lw         $t5, 0x44($s0)
/* C77D8 80166D98 11A0FFFC */  beqz       $t5, .L80166D8C_ovl3
/* C77DC 80166D9C 00000000 */   nop
/* C77E0 80166DA0 8E2E0000 */  lw         $t6, 0x0($s1)
.L80166DA4_ovl3:
/* C77E4 80166DA4 3C04800F */  lui        $a0, %hi(D_800EA520)
/* C77E8 80166DA8 8DCF0000 */  lw         $t7, 0x0($t6)
/* C77EC 80166DAC 000FC880 */  sll        $t9, $t7, 2
/* C77F0 80166DB0 00992021 */  addu       $a0, $a0, $t9
.L80166DB4_ovl5:
/* C77F4 80166DB4 0C0288B5 */  jal        func_800A22D4
/* C77F8 80166DB8 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
.L80166DBC_ovl5:
/* C77FC 80166DBC 8E220000 */  lw         $v0, 0x0($s1)
/* C7800 80166DC0 3C01800F */  lui        $at, %hi(D_800EA520)
.L80166DC4_ovl5:
/* C7804 80166DC4 3C040002 */  lui        $a0, (0x202BB >> 16)
/* C7808 80166DC8 8C580000 */  lw         $t8, 0x0($v0)
/* C780C 80166DCC 00184880 */  sll        $t1, $t8, 2
/* C7810 80166DD0 00290821 */  addu       $at, $at, $t1
/* C7814 80166DD4 AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* C7818 80166DD8 8E0A0044 */  lw         $t2, 0x44($s0)
.L80166DDC_ovl5:
/* C781C 80166DDC 24010005 */  addiu      $at, $zero, 0x5
/* C7820 80166DE0 15410005 */  bne        $t2, $at, .L80166DF8_ovl3
/* C7824 80166DE4 00000000 */   nop
/* C7828 80166DE8 0C02A855 */  jal        func_800AA154
/* C782C 80166DEC 348402BB */   ori       $a0, $a0, (0x202BB & 0xFFFF)
.L80166DF0_ovl5:
/* C7830 80166DF0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C7834 80166DF4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L80166DF8_ovl3:
/* C7838 80166DF8 0C02C640 */  jal        func_800B1900
/* C783C 80166DFC 94440002 */   lhu       $a0, 0x2($v0)
/* C7840 80166E00 10000006 */  b          .L80166E1C_ovl5
.L80166E04_ovl5:
/* C7844 80166E04 8FBF001C */   lw        $ra, 0x1C($sp)
.L80166E08_ovl3:
/* C7848 80166E08 0C02A619 */  jal        func_800A9864
/* C784C 80166E0C AC280F10 */   sw        $t0, %lo(D_800E0F10)($at)
/* C7850 80166E10 0C02BE85 */  jal        func_800AFA14
.L80166E14_ovl5:
/* C7854 80166E14 00000000 */   nop
/* C7858 80166E18 8FBF001C */  lw         $ra, 0x1C($sp)
.L80166E1C_ovl5:
/* C785C 80166E1C 8FB00014 */  lw         $s0, 0x14($sp)
/* C7860 80166E20 8FB10018 */  lw         $s1, 0x18($sp)
/* C7864 80166E24 03E00008 */  jr         $ra
.L80166E28_ovl5:
/* C7868 80166E28 27BD0020 */   addiu     $sp, $sp, 0x20
