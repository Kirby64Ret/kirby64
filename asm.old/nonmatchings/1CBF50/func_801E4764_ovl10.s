glabel func_801E4764_ovl10
/* 1D54D4 801E4764 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D54D8 801E4768 AFB20020 */  sw         $s2, 0x20($sp)
/* 1D54DC 801E476C 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 1D54E0 801E4770 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 1D54E4 801E4774 8E430000 */  lw         $v1, 0x0($s2)
.L801E4778_ovl9:
/* 1D54E8 801E4778 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1D54EC 801E477C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1D54F0 801E4780 AFB00018 */  sw         $s0, 0x18($sp)
/* 1D54F4 801E4784 AFA40028 */  sw         $a0, 0x28($sp)
/* 1D54F8 801E4788 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1D54FC 801E478C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D5500 801E4790 240E0002 */  addiu      $t6, $zero, 0x2
/* 1D5504 801E4794 000FC080 */  sll        $t8, $t7, 2
/* 1D5508 801E4798 00380821 */  addu       $at, $at, $t8
/* 1D550C 801E479C AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 1D5510 801E47A0 8C790000 */  lw         $t9, 0x0($v1)
/* 1D5514 801E47A4 3C11800F */  lui        $s1, %hi(D_800E9E20)
.L801E47A8_ovl17:
/* 1D5518 801E47A8 26319E20 */  addiu      $s1, $s1, %lo(D_800E9E20)
/* 1D551C 801E47AC 00194080 */  sll        $t0, $t9, 2
glabel func_801E47B0_ovl13
/* 1D5520 801E47B0 02284821 */  addu       $t1, $s1, $t0
.L801E47B4_ovl17:
/* 1D5524 801E47B4 AD200000 */  sw         $zero, 0x0($t1)
/* 1D5528 801E47B8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1D552C 801E47BC 3C01800F */  lui        $at, %hi(D_800EC4A0)
.L801E47C0_ovl17:
/* 1D5530 801E47C0 3C040001 */  lui        $a0, (0x1030F >> 16)
/* 1D5534 801E47C4 000A5880 */  sll        $t3, $t2, 2
/* 1D5538 801E47C8 002B0821 */  addu       $at, $at, $t3
/* 1D553C 801E47CC AC20C4A0 */  sw         $zero, %lo(D_800EC4A0)($at)
/* 1D5540 801E47D0 0C02A806 */  jal        func_800AA018
/* 1D5544 801E47D4 3484030F */   ori       $a0, $a0, (0x1030F & 0xFFFF)
.L801E47D8_ovl9:
/* 1D5548 801E47D8 3C040001 */  lui        $a0, (0x1030E >> 16)
/* 1D554C 801E47DC 3484030E */  ori        $a0, $a0, (0x1030E & 0xFFFF)
/* 1D5550 801E47E0 0C02AA19 */  jal        func_800AA864
/* 1D5554 801E47E4 24050001 */   addiu     $a1, $zero, 0x1
/* 1D5558 801E47E8 3C040001 */  lui        $a0, (0x10317 >> 16)
/* 1D555C 801E47EC 0C02A806 */  jal        func_800AA018
/* 1D5560 801E47F0 34840317 */   ori       $a0, $a0, (0x10317 & 0xFFFF)
.L801E47F4_ovl9:
/* 1D5564 801E47F4 3C040001 */  lui        $a0, (0x10316 >> 16)
glabel func_801E47F8_ovl13
/* 1D5568 801E47F8 34840316 */  ori        $a0, $a0, (0x10316 & 0xFFFF)
/* 1D556C 801E47FC 0C02AA19 */  jal        func_800AA864
/* 1D5570 801E4800 24050001 */   addiu     $a1, $zero, 0x1
/* 1D5574 801E4804 3C040001 */  lui        $a0, (0x10313 >> 16)
/* 1D5578 801E4808 0C02A806 */  jal        func_800AA018
/* 1D557C 801E480C 34840313 */   ori       $a0, $a0, (0x10313 & 0xFFFF)
/* 1D5580 801E4810 3C040001 */  lui        $a0, (0x10312 >> 16)
/* 1D5584 801E4814 0C02A806 */  jal        func_800AA018
/* 1D5588 801E4818 34840312 */   ori       $a0, $a0, (0x10312 & 0xFFFF)
/* 1D558C 801E481C 8E430000 */  lw         $v1, 0x0($s2)
.L801E4820_ovl9:
/* 1D5590 801E4820 24100001 */  addiu      $s0, $zero, 0x1
/* 1D5594 801E4824 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1D5598 801E4828 000C6880 */  sll        $t5, $t4, 2
.L801E482C_ovl16:
/* 1D559C 801E482C 022D7821 */  addu       $t7, $s1, $t5
/* 1D55A0 801E4830 ADF00000 */  sw         $s0, 0x0($t7)
/* 1D55A4 801E4834 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1D55A8 801E4838 000EC080 */  sll        $t8, $t6, 2
/* 1D55AC 801E483C 02381021 */  addu       $v0, $s1, $t8
.L801E4840_ovl9:
/* 1D55B0 801E4840 8C590000 */  lw         $t9, 0x0($v0)
/* 1D55B4 801E4844 5619000B */  bnel       $s0, $t9, .L801E4874_ovl16
/* 1D55B8 801E4848 240C0002 */   addiu     $t4, $zero, 0x2
.L801E484C_ovl10:
/* 1D55BC 801E484C 0C002DAF */  jal        finish_current_thread
/* 1D55C0 801E4850 02002025 */   or        $a0, $s0, $zero
/* 1D55C4 801E4854 8E480000 */  lw         $t0, 0x0($s2)
/* 1D55C8 801E4858 8D090000 */  lw         $t1, 0x0($t0)
/* 1D55CC 801E485C 00095080 */  sll        $t2, $t1, 2
/* 1D55D0 801E4860 022A1021 */  addu       $v0, $s1, $t2
/* 1D55D4 801E4864 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1D55D8 801E4868 120BFFF8 */  beq        $s0, $t3, .L801E484C_ovl10
.L801E486C_ovl16:
/* 1D55DC 801E486C 00000000 */   nop
.L801E4870_ovl17:
/* 1D55E0 801E4870 240C0002 */  addiu      $t4, $zero, 0x2
.L801E4874_ovl16:
/* 1D55E4 801E4874 3C040001 */  lui        $a0, (0x10315 >> 16)
/* 1D55E8 801E4878 AC4C0000 */  sw         $t4, 0x0($v0)
.L801E487C_ovl17:
/* 1D55EC 801E487C 0C02A806 */  jal        func_800AA018
/* 1D55F0 801E4880 34840315 */   ori       $a0, $a0, (0x10315 & 0xFFFF)
/* 1D55F4 801E4884 3C040001 */  lui        $a0, (0x10314 >> 16)
.L801E4888_ovl17:
/* 1D55F8 801E4888 34840314 */  ori        $a0, $a0, (0x10314 & 0xFFFF)
/* 1D55FC 801E488C 0C02AA19 */  jal        func_800AA864
/* 1D5600 801E4890 24050001 */   addiu     $a1, $zero, 0x1
.L801E4894_ovl15:
/* 1D5604 801E4894 8E4F0000 */  lw         $t7, 0x0($s2)
/* 1D5608 801E4898 240D0003 */  addiu      $t5, $zero, 0x3
/* 1D560C 801E489C 8DEE0000 */  lw         $t6, 0x0($t7)
.L801E48A0_ovl15:
/* 1D5610 801E48A0 000EC080 */  sll        $t8, $t6, 2
.L801E48A4_ovl9:
/* 1D5614 801E48A4 0238C821 */  addu       $t9, $s1, $t8
/* 1D5618 801E48A8 0C02BE85 */  jal        func_800AFA14
/* 1D561C 801E48AC AF2D0000 */   sw        $t5, 0x0($t9)
.L801E48B0_ovl9:
/* 1D5620 801E48B0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1D5624 801E48B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1D5628 801E48B8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1D562C 801E48BC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1D5630 801E48C0 03E00008 */  jr         $ra
/* 1D5634 801E48C4 27BD0028 */   addiu     $sp, $sp, 0x28
