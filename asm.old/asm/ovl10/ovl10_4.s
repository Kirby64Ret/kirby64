.set noat
.set noreorder
.set gp=64

.include "macros.inc"
.section .text, "ax"
glabel func_801EF790_ovl10
/* 1E0500 801EF790 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E0504 801EF794 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1E0508 801EF798 8CC20000 */  lw    $v0, ($a2)
/* 1E050C 801EF79C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E0510 801EF7A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E0514 801EF7A4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E0518 801EF7A8 8C430000 */  lw    $v1, ($v0)
/* 1E051C 801EF7AC 3C0E800B */  lui   $t6, %hi(D_800B7790) # $t6, 0x800b
/* 1E0520 801EF7B0 3C01800E */  lui   $at, 0x800e
/* 1E0524 801EF7B4 00031880 */  sll   $v1, $v1, 2
/* 1E0528 801EF7B8 00230821 */  addu  $at, $at, $v1
/* 1E052C 801EF7BC 25CE7790 */  addiu $t6, %lo(D_800B7790) # addiu $t6, $t6, 0x7790
/* 1E0530 801EF7C0 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 1E0534 801EF7C4 8C580000 */  lw    $t8, ($v0)
/* 1E0538 801EF7C8 3C01800F */  lui   $at, 0x800f
/* 1E053C 801EF7CC 3C05800E */  lui   $a1, 0x800e
/* 1E0540 801EF7D0 0018C880 */  sll   $t9, $t8, 2
/* 1E0544 801EF7D4 00390821 */  addu  $at, $at, $t9
/* 1E0548 801EF7D8 240F0001 */  li    $t7, 1
/* 1E054C 801EF7DC 00A32821 */  addu  $a1, $a1, $v1
/* 1E0550 801EF7E0 AC2F8E60 */  sw    $t7, -0x71a0($at)
/* 1E0554 801EF7E4 8C430000 */  lw    $v1, ($v0)
/* 1E0558 801EF7E8 3C08800E */  lui   $t0, 0x800e
/* 1E055C 801EF7EC 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 1E0560 801EF7F0 00031880 */  sll   $v1, $v1, 2
/* 1E0564 801EF7F4 01034021 */  addu  $t0, $t0, $v1
/* 1E0568 801EF7F8 8D080D50 */  lw    $t0, 0xd50($t0)
/* 1E056C 801EF7FC 3C01800E */  lui   $at, 0x800e
/* 1E0570 801EF800 00230821 */  addu  $at, $at, $v1
/* 1E0574 801EF804 44882000 */  mtc1  $t0, $f4
/* 1E0578 801EF808 3C09801D */  lui   $t1, %hi(D_801CA04C) # $t1, 0x801d
/* 1E057C 801EF80C 2529A04C */  addiu $t1, %lo(D_801CA04C) # addiu $t1, $t1, -0x5fb4
/* 1E0580 801EF810 468021A0 */  cvt.s.w $f6, $f4
/* 1E0584 801EF814 3C0A801F */  lui   $t2, %hi(D_801EF9B0) # $t2, 0x801f
/* 1E0588 801EF818 254AF9B0 */  addiu $t2, %lo(D_801EF9B0) # addiu $t2, $t2, -0x650
/* 1E058C 801EF81C 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
/* 1E0590 801EF820 348405F9 */  ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 1E0594 801EF824 E4266A10 */  swc1  $f6, 0x6a10($at)
/* 1E0598 801EF828 ACA9008C */  sw    $t1, 0x8c($a1)
/* 1E059C 801EF82C 8CCB0000 */  lw    $t3, ($a2)
/* 1E05A0 801EF830 3C01800E */  lui   $at, 0x800e
/* 1E05A4 801EF834 8D6C0000 */  lw    $t4, ($t3)
/* 1E05A8 801EF838 000C6880 */  sll   $t5, $t4, 2
/* 1E05AC 801EF83C 002D0821 */  addu  $at, $at, $t5
/* 1E05B0 801EF840 0C02A806 */  jal   func_800AA018
/* 1E05B4 801EF844 AC2AF150 */   sw    $t2, -0xeb0($at)
/* 1E05B8 801EF848 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 1E05BC 801EF84C 0C02A806 */  jal   func_800AA018
/* 1E05C0 801EF850 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 1E05C4 801EF854 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E05C8 801EF858 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E05CC 801EF85C 3C01800F */  lui   $at, 0x800f
/* 1E05D0 801EF860 2404003C */  li    $a0, 60
/* 1E05D4 801EF864 8C4E0000 */  lw    $t6, ($v0)
/* 1E05D8 801EF868 000EC080 */  sll   $t8, $t6, 2
/* 1E05DC 801EF86C 00380821 */  addu  $at, $at, $t8
/* 1E05E0 801EF870 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1E05E4 801EF874 8C4F0000 */  lw    $t7, ($v0)
/* 1E05E8 801EF878 3C01801F */  lui   $at, %hi(D_801F4C40) # $at, 0x801f
/* 1E05EC 801EF87C C4284C40 */  lwc1  $f8, %lo(D_801F4C40)($at)
/* 1E05F0 801EF880 3C01800E */  lui   $at, 0x800e
/* 1E05F4 801EF884 000FC880 */  sll   $t9, $t7, 2
/* 1E05F8 801EF888 00390821 */  addu  $at, $at, $t9
/* 1E05FC 801EF88C E4283210 */  swc1  $f8, 0x3210($at)
/* 1E0600 801EF890 8C480000 */  lw    $t0, ($v0)
/* 1E0604 801EF894 3C01801F */  lui   $at, %hi(D_801F4C44) # $at, 0x801f
/* 1E0608 801EF898 C42A4C44 */  lwc1  $f10, %lo(D_801F4C44)($at)
/* 1E060C 801EF89C 3C01800E */  lui   $at, 0x800e
/* 1E0610 801EF8A0 00084880 */  sll   $t1, $t0, 2
/* 1E0614 801EF8A4 00290821 */  addu  $at, $at, $t1
/* 1E0618 801EF8A8 E42A3750 */  swc1  $f10, 0x3750($at)
/* 1E061C 801EF8AC 8C430000 */  lw    $v1, ($v0)
/* 1E0620 801EF8B0 3C01800E */  lui   $at, 0x800e
/* 1E0624 801EF8B4 00031880 */  sll   $v1, $v1, 2
/* 1E0628 801EF8B8 00230821 */  addu  $at, $at, $v1
/* 1E062C 801EF8BC C43025D0 */  lwc1  $f16, 0x25d0($at)
/* 1E0630 801EF8C0 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1E0634 801EF8C4 44819000 */  mtc1  $at, $f18
/* 1E0638 801EF8C8 3C01800E */  lui   $at, 0x800e
/* 1E063C 801EF8CC 00230821 */  addu  $at, $at, $v1
/* 1E0640 801EF8D0 46128103 */  div.s $f4, $f16, $f18
/* 1E0644 801EF8D4 46002187 */  neg.s $f6, $f4
/* 1E0648 801EF8D8 0C002DAF */  jal   finish_current_thread
/* 1E064C 801EF8DC E4263050 */   swc1  $f6, 0x3050($at)
/* 1E0650 801EF8E0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E0654 801EF8E4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E0658 801EF8E8 3C01800F */  lui   $at, 0x800f
/* 1E065C 801EF8EC 240B0001 */  li    $t3, 1
/* 1E0660 801EF8F0 8C4C0000 */  lw    $t4, ($v0)
/* 1E0664 801EF8F4 44804000 */  mtc1  $zero, $f8
/* 1E0668 801EF8F8 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 1E066C 801EF8FC 000C5080 */  sll   $t2, $t4, 2
/* 1E0670 801EF900 002A0821 */  addu  $at, $at, $t2
/* 1E0674 801EF904 AC2B98E0 */  sw    $t3, -0x6720($at)
/* 1E0678 801EF908 8C4D0000 */  lw    $t5, ($v0)
/* 1E067C 801EF90C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 1E0680 801EF910 3C01800E */  lui   $at, 0x800e
/* 1E0684 801EF914 000D7080 */  sll   $t6, $t5, 2
/* 1E0688 801EF918 00AEC021 */  addu  $t8, $a1, $t6
/* 1E068C 801EF91C E7080000 */  swc1  $f8, ($t8)
/* 1E0690 801EF920 8C430000 */  lw    $v1, ($v0)
/* 1E0694 801EF924 3C04800E */  lui   $a0, %hi(D_800E3C90) # $a0, 0x800e
/* 1E0698 801EF928 24843C90 */  addiu $a0, %lo(D_800E3C90) # addiu $a0, $a0, 0x3c90
/* 1E069C 801EF92C 00031880 */  sll   $v1, $v1, 2
/* 1E06A0 801EF930 00A37821 */  addu  $t7, $a1, $v1
/* 1E06A4 801EF934 C5E00000 */  lwc1  $f0, ($t7)
/* 1E06A8 801EF938 00230821 */  addu  $at, $at, $v1
/* 1E06AC 801EF93C E4203590 */  swc1  $f0, 0x3590($at)
/* 1E06B0 801EF940 8C590000 */  lw    $t9, ($v0)
/* 1E06B4 801EF944 3C01800E */  lui   $at, 0x800e
/* 1E06B8 801EF948 00194080 */  sll   $t0, $t9, 2
/* 1E06BC 801EF94C 00280821 */  addu  $at, $at, $t0
/* 1E06C0 801EF950 E4203210 */  swc1  $f0, 0x3210($at)
/* 1E06C4 801EF954 8C490000 */  lw    $t1, ($v0)
/* 1E06C8 801EF958 3C01800E */  lui   $at, 0x800e
/* 1E06CC 801EF95C 00096080 */  sll   $t4, $t1, 2
/* 1E06D0 801EF960 002C0821 */  addu  $at, $at, $t4
/* 1E06D4 801EF964 E4203050 */  swc1  $f0, 0x3050($at)
/* 1E06D8 801EF968 8C4B0000 */  lw    $t3, ($v0)
/* 1E06DC 801EF96C 3C01801F */  lui   $at, %hi(D_801F4C48) # $at, 0x801f
/* 1E06E0 801EF970 C42A4C48 */  lwc1  $f10, %lo(D_801F4C48)($at)
/* 1E06E4 801EF974 000B5080 */  sll   $t2, $t3, 2
/* 1E06E8 801EF978 008A6821 */  addu  $t5, $a0, $t2
/* 1E06EC 801EF97C E5AA0000 */  swc1  $f10, ($t5)
/* 1E06F0 801EF980 8C430000 */  lw    $v1, ($v0)
/* 1E06F4 801EF984 3C01800E */  lui   $at, 0x800e
/* 1E06F8 801EF988 00031880 */  sll   $v1, $v1, 2
/* 1E06FC 801EF98C 00837021 */  addu  $t6, $a0, $v1
/* 1E0700 801EF990 C5D00000 */  lwc1  $f16, ($t6)
/* 1E0704 801EF994 00230821 */  addu  $at, $at, $v1
/* 1E0708 801EF998 0C02BE85 */  jal   func_800AFA14
/* 1E070C 801EF99C E4303AD0 */   swc1  $f16, 0x3ad0($at)
/* 1E0710 801EF9A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E0714 801EF9A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E0718 801EF9A8 03E00008 */  jr    $ra
/* 1E071C 801EF9AC 00000000 */   nop   
.size func_801EF790_ovl10, . - func_801EF790_ovl10

glabel func_801EF9B0_ovl10
/* 1E0720 801EF9B0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E0724 801EF9B4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E0728 801EF9B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E072C 801EF9BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E0730 801EF9C0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E0734 801EF9C4 8DCF0000 */  lw    $t7, ($t6)
/* 1E0738 801EF9C8 3C19800F */  lui   $t9, 0x800f
/* 1E073C 801EF9CC 000FC080 */  sll   $t8, $t7, 2
/* 1E0740 801EF9D0 0338C821 */  addu  $t9, $t9, $t8
/* 1E0744 801EF9D4 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 1E0748 801EF9D8 53200014 */  beql  $t9, $zero, .L801EFA2C_ovl10
/* 1E074C 801EF9DC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E0750 801EF9E0 0C068220 */  jal   func_801A0880_ovl10
/* 1E0754 801EF9E4 00000000 */   nop   
/* 1E0758 801EF9E8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1E075C 801EF9EC 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1E0760 801EF9F0 3C09800F */  lui   $t1, 0x800f
/* 1E0764 801EF9F4 24010001 */  li    $at, 1
/* 1E0768 801EF9F8 8D020000 */  lw    $v0, ($t0)
/* 1E076C 801EF9FC 3C04800E */  lui   $a0, 0x800e
/* 1E0770 801EFA00 3C05801F */  lui   $a1, %hi(D_801EFF98) # $a1, 0x801f
/* 1E0774 801EFA04 00021080 */  sll   $v0, $v0, 2
/* 1E0778 801EFA08 01224821 */  addu  $t1, $t1, $v0
/* 1E077C 801EFA0C 8D2983E0 */  lw    $t1, -0x7c20($t1)
/* 1E0780 801EFA10 00822021 */  addu  $a0, $a0, $v0
/* 1E0784 801EFA14 24A5FF98 */  addiu $a1, %lo(D_801EFF98) # addiu $a1, $a1, -0x68
/* 1E0788 801EFA18 55210004 */  bnel  $t1, $at, .L801EFA2C_ovl10
/* 1E078C 801EFA1C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E0790 801EFA20 0C02C7B2 */  jal   assign_new_process_entry
/* 1E0794 801EFA24 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1E0798 801EFA28 8FBF0014 */  lw    $ra, 0x14($sp)
.L801EFA2C_ovl10:
/* 1E079C 801EFA2C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E07A0 801EFA30 03E00008 */  jr    $ra
/* 1E07A4 801EFA34 00000000 */   nop   
.size func_801EF9B0_ovl10, . - func_801EF9B0_ovl10

glabel func_801EFA38_ovl10
/* 1E07A8 801EFA38 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E07AC 801EFA3C 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1E07B0 801EFA40 8CC20000 */  lw    $v0, ($a2)
/* 1E07B4 801EFA44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E07B8 801EFA48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E07BC 801EFA4C AFA40018 */  sw    $a0, 0x18($sp)
/* 1E07C0 801EFA50 8C430000 */  lw    $v1, ($v0)
/* 1E07C4 801EFA54 3C0E800B */  lui   $t6, %hi(D_800B7790) # $t6, 0x800b
/* 1E07C8 801EFA58 3C01800E */  lui   $at, 0x800e
/* 1E07CC 801EFA5C 00031880 */  sll   $v1, $v1, 2
/* 1E07D0 801EFA60 00230821 */  addu  $at, $at, $v1
/* 1E07D4 801EFA64 25CE7790 */  addiu $t6, %lo(D_800B7790) # addiu $t6, $t6, 0x7790
/* 1E07D8 801EFA68 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 1E07DC 801EFA6C 8C580000 */  lw    $t8, ($v0)
/* 1E07E0 801EFA70 3C01800F */  lui   $at, 0x800f
/* 1E07E4 801EFA74 3C05800E */  lui   $a1, 0x800e
/* 1E07E8 801EFA78 0018C880 */  sll   $t9, $t8, 2
/* 1E07EC 801EFA7C 00390821 */  addu  $at, $at, $t9
/* 1E07F0 801EFA80 240F0001 */  li    $t7, 1
/* 1E07F4 801EFA84 00A32821 */  addu  $a1, $a1, $v1
/* 1E07F8 801EFA88 AC2F8E60 */  sw    $t7, -0x71a0($at)
/* 1E07FC 801EFA8C 8C430000 */  lw    $v1, ($v0)
/* 1E0800 801EFA90 3C08800E */  lui   $t0, 0x800e
/* 1E0804 801EFA94 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 1E0808 801EFA98 00031880 */  sll   $v1, $v1, 2
/* 1E080C 801EFA9C 01034021 */  addu  $t0, $t0, $v1
/* 1E0810 801EFAA0 8D080D50 */  lw    $t0, 0xd50($t0)
/* 1E0814 801EFAA4 3C01800E */  lui   $at, 0x800e
/* 1E0818 801EFAA8 00230821 */  addu  $at, $at, $v1
/* 1E081C 801EFAAC 44882000 */  mtc1  $t0, $f4
/* 1E0820 801EFAB0 3C09801D */  lui   $t1, %hi(D_801CA04C) # $t1, 0x801d
/* 1E0824 801EFAB4 2529A04C */  addiu $t1, %lo(D_801CA04C) # addiu $t1, $t1, -0x5fb4
/* 1E0828 801EFAB8 468021A0 */  cvt.s.w $f6, $f4
/* 1E082C 801EFABC 3C0A801F */  lui   $t2, %hi(D_801EFC58) # $t2, 0x801f
/* 1E0830 801EFAC0 254AFC58 */  addiu $t2, %lo(D_801EFC58) # addiu $t2, $t2, -0x3a8
/* 1E0834 801EFAC4 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
/* 1E0838 801EFAC8 348405F9 */  ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 1E083C 801EFACC E4266A10 */  swc1  $f6, 0x6a10($at)
/* 1E0840 801EFAD0 ACA9008C */  sw    $t1, 0x8c($a1)
/* 1E0844 801EFAD4 8CCB0000 */  lw    $t3, ($a2)
/* 1E0848 801EFAD8 3C01800E */  lui   $at, 0x800e
/* 1E084C 801EFADC 8D6C0000 */  lw    $t4, ($t3)
/* 1E0850 801EFAE0 000C6880 */  sll   $t5, $t4, 2
/* 1E0854 801EFAE4 002D0821 */  addu  $at, $at, $t5
/* 1E0858 801EFAE8 0C02A806 */  jal   func_800AA018
/* 1E085C 801EFAEC AC2AF150 */   sw    $t2, -0xeb0($at)
/* 1E0860 801EFAF0 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 1E0864 801EFAF4 0C02A806 */  jal   func_800AA018
/* 1E0868 801EFAF8 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 1E086C 801EFAFC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E0870 801EFB00 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E0874 801EFB04 3C01800F */  lui   $at, 0x800f
/* 1E0878 801EFB08 2404003C */  li    $a0, 60
/* 1E087C 801EFB0C 8C4E0000 */  lw    $t6, ($v0)
/* 1E0880 801EFB10 000EC080 */  sll   $t8, $t6, 2
/* 1E0884 801EFB14 00380821 */  addu  $at, $at, $t8
/* 1E0888 801EFB18 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1E088C 801EFB1C 8C4F0000 */  lw    $t7, ($v0)
/* 1E0890 801EFB20 3C01801F */  lui   $at, %hi(D_801F4C4C) # $at, 0x801f
/* 1E0894 801EFB24 C4284C4C */  lwc1  $f8, %lo(D_801F4C4C)($at)
/* 1E0898 801EFB28 3C01800E */  lui   $at, 0x800e
/* 1E089C 801EFB2C 000FC880 */  sll   $t9, $t7, 2
/* 1E08A0 801EFB30 00390821 */  addu  $at, $at, $t9
/* 1E08A4 801EFB34 E4283210 */  swc1  $f8, 0x3210($at)
/* 1E08A8 801EFB38 8C480000 */  lw    $t0, ($v0)
/* 1E08AC 801EFB3C 3C01801F */  lui   $at, %hi(D_801F4C50) # $at, 0x801f
/* 1E08B0 801EFB40 C42A4C50 */  lwc1  $f10, %lo(D_801F4C50)($at)
/* 1E08B4 801EFB44 3C01800E */  lui   $at, 0x800e
/* 1E08B8 801EFB48 00084880 */  sll   $t1, $t0, 2
/* 1E08BC 801EFB4C 00290821 */  addu  $at, $at, $t1
/* 1E08C0 801EFB50 E42A3750 */  swc1  $f10, 0x3750($at)
/* 1E08C4 801EFB54 8C430000 */  lw    $v1, ($v0)
/* 1E08C8 801EFB58 3C01800E */  lui   $at, 0x800e
/* 1E08CC 801EFB5C 00031880 */  sll   $v1, $v1, 2
/* 1E08D0 801EFB60 00230821 */  addu  $at, $at, $v1
/* 1E08D4 801EFB64 C43025D0 */  lwc1  $f16, 0x25d0($at)
/* 1E08D8 801EFB68 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1E08DC 801EFB6C 44819000 */  mtc1  $at, $f18
/* 1E08E0 801EFB70 3C01800E */  lui   $at, 0x800e
/* 1E08E4 801EFB74 00230821 */  addu  $at, $at, $v1
/* 1E08E8 801EFB78 46128103 */  div.s $f4, $f16, $f18
/* 1E08EC 801EFB7C 46002187 */  neg.s $f6, $f4
/* 1E08F0 801EFB80 0C002DAF */  jal   finish_current_thread
/* 1E08F4 801EFB84 E4263050 */   swc1  $f6, 0x3050($at)
/* 1E08F8 801EFB88 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E08FC 801EFB8C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E0900 801EFB90 3C01800F */  lui   $at, 0x800f
/* 1E0904 801EFB94 240B0001 */  li    $t3, 1
/* 1E0908 801EFB98 8C4C0000 */  lw    $t4, ($v0)
/* 1E090C 801EFB9C 44804000 */  mtc1  $zero, $f8
/* 1E0910 801EFBA0 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 1E0914 801EFBA4 000C5080 */  sll   $t2, $t4, 2
/* 1E0918 801EFBA8 002A0821 */  addu  $at, $at, $t2
/* 1E091C 801EFBAC AC2B98E0 */  sw    $t3, -0x6720($at)
/* 1E0920 801EFBB0 8C4D0000 */  lw    $t5, ($v0)
/* 1E0924 801EFBB4 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 1E0928 801EFBB8 3C01800E */  lui   $at, 0x800e
/* 1E092C 801EFBBC 000D7080 */  sll   $t6, $t5, 2
/* 1E0930 801EFBC0 00AEC021 */  addu  $t8, $a1, $t6
/* 1E0934 801EFBC4 E7080000 */  swc1  $f8, ($t8)
/* 1E0938 801EFBC8 8C430000 */  lw    $v1, ($v0)
/* 1E093C 801EFBCC 3C04800E */  lui   $a0, %hi(D_800E3C90) # $a0, 0x800e
/* 1E0940 801EFBD0 24843C90 */  addiu $a0, %lo(D_800E3C90) # addiu $a0, $a0, 0x3c90
/* 1E0944 801EFBD4 00031880 */  sll   $v1, $v1, 2
/* 1E0948 801EFBD8 00A37821 */  addu  $t7, $a1, $v1
/* 1E094C 801EFBDC C5E00000 */  lwc1  $f0, ($t7)
/* 1E0950 801EFBE0 00230821 */  addu  $at, $at, $v1
/* 1E0954 801EFBE4 E4203590 */  swc1  $f0, 0x3590($at)
/* 1E0958 801EFBE8 8C590000 */  lw    $t9, ($v0)
/* 1E095C 801EFBEC 3C01800E */  lui   $at, 0x800e
/* 1E0960 801EFBF0 00194080 */  sll   $t0, $t9, 2
/* 1E0964 801EFBF4 00280821 */  addu  $at, $at, $t0
/* 1E0968 801EFBF8 E4203210 */  swc1  $f0, 0x3210($at)
/* 1E096C 801EFBFC 8C490000 */  lw    $t1, ($v0)
/* 1E0970 801EFC00 3C01800E */  lui   $at, 0x800e
/* 1E0974 801EFC04 00096080 */  sll   $t4, $t1, 2
/* 1E0978 801EFC08 002C0821 */  addu  $at, $at, $t4
/* 1E097C 801EFC0C E4203050 */  swc1  $f0, 0x3050($at)
/* 1E0980 801EFC10 8C4B0000 */  lw    $t3, ($v0)
/* 1E0984 801EFC14 3C01801F */  lui   $at, %hi(D_801F4C54) # $at, 0x801f
/* 1E0988 801EFC18 C42A4C54 */  lwc1  $f10, %lo(D_801F4C54)($at)
/* 1E098C 801EFC1C 000B5080 */  sll   $t2, $t3, 2
/* 1E0990 801EFC20 008A6821 */  addu  $t5, $a0, $t2
/* 1E0994 801EFC24 E5AA0000 */  swc1  $f10, ($t5)
/* 1E0998 801EFC28 8C430000 */  lw    $v1, ($v0)
/* 1E099C 801EFC2C 3C01800E */  lui   $at, 0x800e
/* 1E09A0 801EFC30 00031880 */  sll   $v1, $v1, 2
/* 1E09A4 801EFC34 00837021 */  addu  $t6, $a0, $v1
/* 1E09A8 801EFC38 C5D00000 */  lwc1  $f16, ($t6)
/* 1E09AC 801EFC3C 00230821 */  addu  $at, $at, $v1
/* 1E09B0 801EFC40 0C02BE85 */  jal   func_800AFA14
/* 1E09B4 801EFC44 E4303AD0 */   swc1  $f16, 0x3ad0($at)
/* 1E09B8 801EFC48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E09BC 801EFC4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E09C0 801EFC50 03E00008 */  jr    $ra
/* 1E09C4 801EFC54 00000000 */   nop   
.size func_801EFA38_ovl10, . - func_801EFA38_ovl10

glabel func_801EFC58_ovl10
/* 1E09C8 801EFC58 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E09CC 801EFC5C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E09D0 801EFC60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E09D4 801EFC64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E09D8 801EFC68 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E09DC 801EFC6C 8DCF0000 */  lw    $t7, ($t6)
/* 1E09E0 801EFC70 3C19800F */  lui   $t9, 0x800f
/* 1E09E4 801EFC74 000FC080 */  sll   $t8, $t7, 2
/* 1E09E8 801EFC78 0338C821 */  addu  $t9, $t9, $t8
/* 1E09EC 801EFC7C 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 1E09F0 801EFC80 53200014 */  beql  $t9, $zero, .L801EFCD4_ovl10
/* 1E09F4 801EFC84 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E09F8 801EFC88 0C068220 */  jal   func_801A0880_ovl10
/* 1E09FC 801EFC8C 00000000 */   nop   
/* 1E0A00 801EFC90 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1E0A04 801EFC94 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1E0A08 801EFC98 3C09800F */  lui   $t1, 0x800f
/* 1E0A0C 801EFC9C 24010001 */  li    $at, 1
/* 1E0A10 801EFCA0 8D020000 */  lw    $v0, ($t0)
/* 1E0A14 801EFCA4 3C04800E */  lui   $a0, 0x800e
/* 1E0A18 801EFCA8 3C05801F */  lui   $a1, %hi(D_801EFF98) # $a1, 0x801f
/* 1E0A1C 801EFCAC 00021080 */  sll   $v0, $v0, 2
/* 1E0A20 801EFCB0 01224821 */  addu  $t1, $t1, $v0
/* 1E0A24 801EFCB4 8D2983E0 */  lw    $t1, -0x7c20($t1)
/* 1E0A28 801EFCB8 00822021 */  addu  $a0, $a0, $v0
/* 1E0A2C 801EFCBC 24A5FF98 */  addiu $a1, %lo(D_801EFF98) # addiu $a1, $a1, -0x68
/* 1E0A30 801EFCC0 55210004 */  bnel  $t1, $at, .L801EFCD4_ovl10
/* 1E0A34 801EFCC4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E0A38 801EFCC8 0C02C7B2 */  jal   assign_new_process_entry
/* 1E0A3C 801EFCCC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1E0A40 801EFCD0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801EFCD4_ovl10:
/* 1E0A44 801EFCD4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E0A48 801EFCD8 03E00008 */  jr    $ra
/* 1E0A4C 801EFCDC 00000000 */   nop   
.size func_801EFC58_ovl10, . - func_801EFC58_ovl10

glabel func_801EFCE0_ovl10
/* 1E0A50 801EFCE0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E0A54 801EFCE4 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1E0A58 801EFCE8 8CC20000 */  lw    $v0, ($a2)
/* 1E0A5C 801EFCEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E0A60 801EFCF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E0A64 801EFCF4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E0A68 801EFCF8 8C430000 */  lw    $v1, ($v0)
/* 1E0A6C 801EFCFC 3C0E800B */  lui   $t6, %hi(D_800B7790) # $t6, 0x800b
/* 1E0A70 801EFD00 3C01800E */  lui   $at, 0x800e
/* 1E0A74 801EFD04 00031880 */  sll   $v1, $v1, 2
/* 1E0A78 801EFD08 00230821 */  addu  $at, $at, $v1
/* 1E0A7C 801EFD0C 25CE7790 */  addiu $t6, %lo(D_800B7790) # addiu $t6, $t6, 0x7790
/* 1E0A80 801EFD10 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 1E0A84 801EFD14 8C580000 */  lw    $t8, ($v0)
/* 1E0A88 801EFD18 3C01800F */  lui   $at, 0x800f
/* 1E0A8C 801EFD1C 3C05800E */  lui   $a1, 0x800e
/* 1E0A90 801EFD20 0018C880 */  sll   $t9, $t8, 2
/* 1E0A94 801EFD24 00390821 */  addu  $at, $at, $t9
/* 1E0A98 801EFD28 240F0001 */  li    $t7, 1
/* 1E0A9C 801EFD2C 00A32821 */  addu  $a1, $a1, $v1
/* 1E0AA0 801EFD30 AC2F8E60 */  sw    $t7, -0x71a0($at)
/* 1E0AA4 801EFD34 8C430000 */  lw    $v1, ($v0)
/* 1E0AA8 801EFD38 3C08800E */  lui   $t0, 0x800e
/* 1E0AAC 801EFD3C 3C07800E */  lui   $a3, %hi(D_800E6A10) # $a3, 0x800e
/* 1E0AB0 801EFD40 00031880 */  sll   $v1, $v1, 2
/* 1E0AB4 801EFD44 01034021 */  addu  $t0, $t0, $v1
/* 1E0AB8 801EFD48 8D080D50 */  lw    $t0, 0xd50($t0)
/* 1E0ABC 801EFD4C 24E76A10 */  addiu $a3, %lo(D_800E6A10) # addiu $a3, $a3, 0x6a10
/* 1E0AC0 801EFD50 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 1E0AC4 801EFD54 00084880 */  sll   $t1, $t0, 2
/* 1E0AC8 801EFD58 00E95021 */  addu  $t2, $a3, $t1
/* 1E0ACC 801EFD5C C5440000 */  lwc1  $f4, ($t2)
/* 1E0AD0 801EFD60 00E35821 */  addu  $t3, $a3, $v1
/* 1E0AD4 801EFD64 3C0C801D */  lui   $t4, %hi(D_801CA04C) # $t4, 0x801d
/* 1E0AD8 801EFD68 258CA04C */  addiu $t4, %lo(D_801CA04C) # addiu $t4, $t4, -0x5fb4
/* 1E0ADC 801EFD6C E5640000 */  swc1  $f4, ($t3)
/* 1E0AE0 801EFD70 ACAC008C */  sw    $t4, 0x8c($a1)
/* 1E0AE4 801EFD74 8CCE0000 */  lw    $t6, ($a2)
/* 1E0AE8 801EFD78 3C01800E */  lui   $at, 0x800e
/* 1E0AEC 801EFD7C 3C0D801F */  lui   $t5, %hi(D_801EF9B0) # $t5, 0x801f
/* 1E0AF0 801EFD80 8DD80000 */  lw    $t8, ($t6)
/* 1E0AF4 801EFD84 25ADF9B0 */  addiu $t5, %lo(D_801EF9B0) # addiu $t5, $t5, -0x650
/* 1E0AF8 801EFD88 3C040001 */  lui   $a0, (0x000105F9 >> 16) # lui $a0, 1
/* 1E0AFC 801EFD8C 00187880 */  sll   $t7, $t8, 2
/* 1E0B00 801EFD90 002F0821 */  addu  $at, $at, $t7
/* 1E0B04 801EFD94 AC2DF150 */  sw    $t5, -0xeb0($at)
/* 1E0B08 801EFD98 0C02A806 */  jal   func_800AA018
/* 1E0B0C 801EFD9C 348405F9 */   ori   $a0, (0x000105F9 & 0xFFFF) # ori $a0, $a0, 0x5f9
/* 1E0B10 801EFDA0 3C040001 */  lui   $a0, (0x000105FA >> 16) # lui $a0, 1
/* 1E0B14 801EFDA4 0C02A806 */  jal   func_800AA018
/* 1E0B18 801EFDA8 348405FA */   ori   $a0, (0x000105FA & 0xFFFF) # ori $a0, $a0, 0x5fa
/* 1E0B1C 801EFDAC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E0B20 801EFDB0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E0B24 801EFDB4 3C01800F */  lui   $at, 0x800f
/* 1E0B28 801EFDB8 2404001E */  li    $a0, 30
/* 1E0B2C 801EFDBC 8C590000 */  lw    $t9, ($v0)
/* 1E0B30 801EFDC0 00194080 */  sll   $t0, $t9, 2
/* 1E0B34 801EFDC4 00280821 */  addu  $at, $at, $t0
/* 1E0B38 801EFDC8 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1E0B3C 801EFDCC 8C490000 */  lw    $t1, ($v0)
/* 1E0B40 801EFDD0 3C01801F */  lui   $at, %hi(D_801F4C58) # $at, 0x801f
/* 1E0B44 801EFDD4 C4264C58 */  lwc1  $f6, %lo(D_801F4C58)($at)
/* 1E0B48 801EFDD8 3C01800E */  lui   $at, 0x800e
/* 1E0B4C 801EFDDC 00095080 */  sll   $t2, $t1, 2
/* 1E0B50 801EFDE0 002A0821 */  addu  $at, $at, $t2
/* 1E0B54 801EFDE4 E4263210 */  swc1  $f6, 0x3210($at)
/* 1E0B58 801EFDE8 8C4B0000 */  lw    $t3, ($v0)
/* 1E0B5C 801EFDEC 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 1E0B60 801EFDF0 44814000 */  mtc1  $at, $f8
/* 1E0B64 801EFDF4 3C01800E */  lui   $at, 0x800e
/* 1E0B68 801EFDF8 000B6080 */  sll   $t4, $t3, 2
/* 1E0B6C 801EFDFC 002C0821 */  addu  $at, $at, $t4
/* 1E0B70 801EFE00 E4283750 */  swc1  $f8, 0x3750($at)
/* 1E0B74 801EFE04 8C430000 */  lw    $v1, ($v0)
/* 1E0B78 801EFE08 3C01800E */  lui   $at, 0x800e
/* 1E0B7C 801EFE0C 00031880 */  sll   $v1, $v1, 2
/* 1E0B80 801EFE10 00230821 */  addu  $at, $at, $v1
/* 1E0B84 801EFE14 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 1E0B88 801EFE18 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 1E0B8C 801EFE1C 44818000 */  mtc1  $at, $f16
/* 1E0B90 801EFE20 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 1E0B94 801EFE24 44812000 */  mtc1  $at, $f4
/* 1E0B98 801EFE28 46105482 */  mul.s $f18, $f10, $f16
/* 1E0B9C 801EFE2C 3C01800E */  lui   $at, 0x800e
/* 1E0BA0 801EFE30 00230821 */  addu  $at, $at, $v1
/* 1E0BA4 801EFE34 46049183 */  div.s $f6, $f18, $f4
/* 1E0BA8 801EFE38 0C002DAF */  jal   finish_current_thread
/* 1E0BAC 801EFE3C E4263050 */   swc1  $f6, 0x3050($at)
/* 1E0BB0 801EFE40 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E0BB4 801EFE44 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E0BB8 801EFE48 3C01800F */  lui   $at, 0x800f
/* 1E0BBC 801EFE4C 240E0001 */  li    $t6, 1
/* 1E0BC0 801EFE50 8C580000 */  lw    $t8, ($v0)
/* 1E0BC4 801EFE54 44804000 */  mtc1  $zero, $f8
/* 1E0BC8 801EFE58 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 1E0BCC 801EFE5C 00186880 */  sll   $t5, $t8, 2
/* 1E0BD0 801EFE60 002D0821 */  addu  $at, $at, $t5
/* 1E0BD4 801EFE64 AC2E98E0 */  sw    $t6, -0x6720($at)
/* 1E0BD8 801EFE68 8C4F0000 */  lw    $t7, ($v0)
/* 1E0BDC 801EFE6C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 1E0BE0 801EFE70 3C01800E */  lui   $at, 0x800e
/* 1E0BE4 801EFE74 000FC880 */  sll   $t9, $t7, 2
/* 1E0BE8 801EFE78 00B94021 */  addu  $t0, $a1, $t9
/* 1E0BEC 801EFE7C E5080000 */  swc1  $f8, ($t0)
/* 1E0BF0 801EFE80 8C430000 */  lw    $v1, ($v0)
/* 1E0BF4 801EFE84 3C04800E */  lui   $a0, %hi(D_800E3C90) # $a0, 0x800e
/* 1E0BF8 801EFE88 24843C90 */  addiu $a0, %lo(D_800E3C90) # addiu $a0, $a0, 0x3c90
/* 1E0BFC 801EFE8C 00031880 */  sll   $v1, $v1, 2
/* 1E0C00 801EFE90 00A34821 */  addu  $t1, $a1, $v1
/* 1E0C04 801EFE94 C5200000 */  lwc1  $f0, ($t1)
/* 1E0C08 801EFE98 00230821 */  addu  $at, $at, $v1
/* 1E0C0C 801EFE9C E4203590 */  swc1  $f0, 0x3590($at)
/* 1E0C10 801EFEA0 8C4A0000 */  lw    $t2, ($v0)
/* 1E0C14 801EFEA4 3C01800E */  lui   $at, 0x800e
/* 1E0C18 801EFEA8 000A5880 */  sll   $t3, $t2, 2
/* 1E0C1C 801EFEAC 002B0821 */  addu  $at, $at, $t3
/* 1E0C20 801EFEB0 E4203210 */  swc1  $f0, 0x3210($at)
/* 1E0C24 801EFEB4 8C4C0000 */  lw    $t4, ($v0)
/* 1E0C28 801EFEB8 3C01800E */  lui   $at, 0x800e
/* 1E0C2C 801EFEBC 000CC080 */  sll   $t8, $t4, 2
/* 1E0C30 801EFEC0 00380821 */  addu  $at, $at, $t8
/* 1E0C34 801EFEC4 E4203050 */  swc1  $f0, 0x3050($at)
/* 1E0C38 801EFEC8 8C4E0000 */  lw    $t6, ($v0)
/* 1E0C3C 801EFECC 3C01801F */  lui   $at, %hi(D_801F4C5C) # $at, 0x801f
/* 1E0C40 801EFED0 C42A4C5C */  lwc1  $f10, %lo(D_801F4C5C)($at)
/* 1E0C44 801EFED4 000E6880 */  sll   $t5, $t6, 2
/* 1E0C48 801EFED8 008D7821 */  addu  $t7, $a0, $t5
/* 1E0C4C 801EFEDC E5EA0000 */  swc1  $f10, ($t7)
/* 1E0C50 801EFEE0 8C430000 */  lw    $v1, ($v0)
/* 1E0C54 801EFEE4 3C01800E */  lui   $at, 0x800e
/* 1E0C58 801EFEE8 00031880 */  sll   $v1, $v1, 2
/* 1E0C5C 801EFEEC 0083C821 */  addu  $t9, $a0, $v1
/* 1E0C60 801EFEF0 C7300000 */  lwc1  $f16, ($t9)
/* 1E0C64 801EFEF4 00230821 */  addu  $at, $at, $v1
/* 1E0C68 801EFEF8 0C02BE85 */  jal   func_800AFA14
/* 1E0C6C 801EFEFC E4303AD0 */   swc1  $f16, 0x3ad0($at)
/* 1E0C70 801EFF00 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E0C74 801EFF04 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E0C78 801EFF08 03E00008 */  jr    $ra
/* 1E0C7C 801EFF0C 00000000 */   nop   
.size func_801EFCE0_ovl10, . - func_801EFCE0_ovl10

glabel func_801EFF10_ovl10
/* 1E0C80 801EFF10 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E0C84 801EFF14 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E0C88 801EFF18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E0C8C 801EFF1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E0C90 801EFF20 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E0C94 801EFF24 8DCF0000 */  lw    $t7, ($t6)
/* 1E0C98 801EFF28 3C19800F */  lui   $t9, 0x800f
/* 1E0C9C 801EFF2C 000FC080 */  sll   $t8, $t7, 2
/* 1E0CA0 801EFF30 0338C821 */  addu  $t9, $t9, $t8
/* 1E0CA4 801EFF34 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 1E0CA8 801EFF38 53200014 */  beql  $t9, $zero, .L801EFF8C_ovl10
/* 1E0CAC 801EFF3C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E0CB0 801EFF40 0C068220 */  jal   func_801A0880_ovl10
/* 1E0CB4 801EFF44 00000000 */   nop   
/* 1E0CB8 801EFF48 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1E0CBC 801EFF4C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1E0CC0 801EFF50 3C09800F */  lui   $t1, 0x800f
/* 1E0CC4 801EFF54 24010001 */  li    $at, 1
/* 1E0CC8 801EFF58 8D020000 */  lw    $v0, ($t0)
/* 1E0CCC 801EFF5C 3C04800E */  lui   $a0, 0x800e
/* 1E0CD0 801EFF60 3C05801F */  lui   $a1, %hi(D_801EFF98) # $a1, 0x801f
/* 1E0CD4 801EFF64 00021080 */  sll   $v0, $v0, 2
/* 1E0CD8 801EFF68 01224821 */  addu  $t1, $t1, $v0
/* 1E0CDC 801EFF6C 8D2983E0 */  lw    $t1, -0x7c20($t1)
/* 1E0CE0 801EFF70 00822021 */  addu  $a0, $a0, $v0
/* 1E0CE4 801EFF74 24A5FF98 */  addiu $a1, %lo(D_801EFF98) # addiu $a1, $a1, -0x68
/* 1E0CE8 801EFF78 55210004 */  bnel  $t1, $at, .L801EFF8C_ovl10
/* 1E0CEC 801EFF7C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E0CF0 801EFF80 0C02C7B2 */  jal   assign_new_process_entry
/* 1E0CF4 801EFF84 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1E0CF8 801EFF88 8FBF0014 */  lw    $ra, 0x14($sp)
.L801EFF8C_ovl10:
/* 1E0CFC 801EFF8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E0D00 801EFF90 03E00008 */  jr    $ra
/* 1E0D04 801EFF94 00000000 */   nop   
.size func_801EFF10_ovl10, . - func_801EFF10_ovl10

glabel func_801EFF98_ovl10
/* 1E0D08 801EFF98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E0D0C 801EFF9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E0D10 801EFFA0 0C06F9E7 */  jal   D_801BE79C_ovl10
/* 1E0D14 801EFFA4 00000000 */   nop   
/* 1E0D18 801EFFA8 0C02BE85 */  jal   func_800AFA14
/* 1E0D1C 801EFFAC 00000000 */   nop   
/* 1E0D20 801EFFB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E0D24 801EFFB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E0D28 801EFFB8 03E00008 */  jr    $ra
/* 1E0D2C 801EFFBC 00000000 */   nop   
.size func_801EFF98_ovl10, . - func_801EFF98_ovl10

glabel func_801EFFC0_ovl10
/* 1E0D30 801EFFC0 3C0E800C */  lui   $t6, %hi(D_800BE500) # $t6, 0x800c
/* 1E0D34 801EFFC4 8DCEE500 */  lw    $t6, %lo(D_800BE500)($t6)
/* 1E0D38 801EFFC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E0D3C 801EFFCC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E0D40 801EFFD0 29C10006 */  slti  $at, $t6, 6
/* 1E0D44 801EFFD4 14200003 */  bnez  $at, .L801EFFE4_ovl10
/* 1E0D48 801EFFD8 00000000 */   nop   
/* 1E0D4C 801EFFDC 10000009 */  b     .L801F0004_ovl10
/* 1E0D50 801EFFE0 00001025 */   move  $v0, $zero
.L801EFFE4_ovl10:
/* 1E0D54 801EFFE4 0C03E158 */  jal   func_800F8560
/* 1E0D58 801EFFE8 00000000 */   nop   
/* 1E0D5C 801EFFEC 24010003 */  li    $at, 3
/* 1E0D60 801EFFF0 54410004 */  bnel  $v0, $at, .L801F0004_ovl10
/* 1E0D64 801EFFF4 00001025 */   move  $v0, $zero
/* 1E0D68 801EFFF8 10000002 */  b     .L801F0004_ovl10
/* 1E0D6C 801EFFFC 24020001 */   li    $v0, 1
/* 1E0D70 801F0000 00001025 */  move  $v0, $zero
.L801F0004_ovl10:
/* 1E0D74 801F0004 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E0D78 801F0008 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E0D7C 801F000C 03E00008 */  jr    $ra
/* 1E0D80 801F0010 00000000 */   nop   
.size func_801EFFC0_ovl10, . - func_801EFFC0_ovl10

glabel func_801F0014_ovl10
/* 1E0D84 801F0014 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E0D88 801F0018 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1E0D8C 801F001C 44810000 */  mtc1  $at, $f0
/* 1E0D90 801F0020 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E0D94 801F0024 3C01C370 */  li    $at, 0xC3700000 # -240.000000
/* 1E0D98 801F0028 44812000 */  mtc1  $at, $f4
/* 1E0D9C 801F002C A0800021 */  sb    $zero, 0x21($a0)
/* 1E0DA0 801F0030 E4800010 */  swc1  $f0, 0x10($a0)
/* 1E0DA4 801F0034 E4800014 */  swc1  $f0, 0x14($a0)
/* 1E0DA8 801F0038 0C03FC80 */  jal   func_800FF200
/* 1E0DAC 801F003C E4840018 */   swc1  $f4, 0x18($a0)
/* 1E0DB0 801F0040 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E0DB4 801F0044 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E0DB8 801F0048 03E00008 */  jr    $ra
/* 1E0DBC 801F004C 00000000 */   nop   
.size func_801F0014_ovl10, . - func_801F0014_ovl10

glabel func_801F0050_ovl10
/* 1E0DC0 801F0050 3C01801F */  lui   $at, %hi(D_801F4D6C) # $at, 0x801f
/* 1E0DC4 801F0054 AC204D68 */  sw    $zero, %lo(D_801F4D68)($at)
/* 1E0DC8 801F0058 AC204D6C */  sw    $zero, %lo(D_801F4D6C)($at)
/* 1E0DCC 801F005C 24030003 */  li    $v1, 3
/* 1E0DD0 801F0060 3C0F801F */  lui   $t7, %hi(D_801F4D68) # $t7, 0x801f
/* 1E0DD4 801F0064 3C01801F */  lui   $at, %hi(D_801F4D70) # $at, 0x801f
/* 1E0DD8 801F0068 25EF4D68 */  addiu $t7, %lo(D_801F4D68) # addiu $t7, $t7, 0x4d68
/* 1E0DDC 801F006C 00037080 */  sll   $t6, $v1, 2
/* 1E0DE0 801F0070 AC204D70 */  sw    $zero, %lo(D_801F4D70)($at)
/* 1E0DE4 801F0074 01CF1021 */  addu  $v0, $t6, $t7
/* 1E0DE8 801F0078 27BDFF78 */  addiu $sp, $sp, -0x88
/* 1E0DEC 801F007C AFB00020 */  sw    $s0, 0x20($sp)
/* 1E0DF0 801F0080 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E0DF4 801F0084 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1E0DF8 801F0088 AC400004 */  sw    $zero, 4($v0)
/* 1E0DFC 801F008C AC400008 */  sw    $zero, 8($v0)
/* 1E0E00 801F0090 AC40000C */  sw    $zero, 0xc($v0)
/* 1E0E04 801F0094 AC400000 */  sw    $zero, ($v0)
/* 1E0E08 801F0098 8E020000 */  lw    $v0, ($s0)
/* 1E0E0C 801F009C 3C01800F */  lui   $at, 0x800f
/* 1E0E10 801F00A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1E0E14 801F00A4 8C580000 */  lw    $t8, ($v0)
/* 1E0E18 801F00A8 AFA40088 */  sw    $a0, 0x88($sp)
/* 1E0E1C 801F00AC 0018C880 */  sll   $t9, $t8, 2
/* 1E0E20 801F00B0 00390821 */  addu  $at, $at, $t9
/* 1E0E24 801F00B4 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1E0E28 801F00B8 8C490000 */  lw    $t1, ($v0)
/* 1E0E2C 801F00BC 3C01800F */  lui   $at, 0x800f
/* 1E0E30 801F00C0 00095080 */  sll   $t2, $t1, 2
/* 1E0E34 801F00C4 002A0821 */  addu  $at, $at, $t2
/* 1E0E38 801F00C8 AC209AA0 */  sw    $zero, -0x6560($at)
/* 1E0E3C 801F00CC 8C4B0000 */  lw    $t3, ($v0)
/* 1E0E40 801F00D0 3C01800F */  lui   $at, 0x800f
/* 1E0E44 801F00D4 000B6080 */  sll   $t4, $t3, 2
/* 1E0E48 801F00D8 002C0821 */  addu  $at, $at, $t4
/* 1E0E4C 801F00DC AC209C60 */  sw    $zero, -0x63a0($at)
/* 1E0E50 801F00E0 8C4D0000 */  lw    $t5, ($v0)
/* 1E0E54 801F00E4 3C01800F */  lui   $at, 0x800f
/* 1E0E58 801F00E8 000D7080 */  sll   $t6, $t5, 2
/* 1E0E5C 801F00EC 002E0821 */  addu  $at, $at, $t6
/* 1E0E60 801F00F0 0C04723E */  jal   func_8011C8F8
/* 1E0E64 801F00F4 AC209E20 */   sw    $zero, -0x61e0($at)
/* 1E0E68 801F00F8 0C03E39B */  jal   func_800F8E6C
/* 1E0E6C 801F00FC 8FA40088 */   lw    $a0, 0x88($sp)
/* 1E0E70 801F0100 8E020000 */  lw    $v0, ($s0)
/* 1E0E74 801F0104 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 1E0E78 801F0108 3C01800E */  lui   $at, 0x800e
/* 1E0E7C 801F010C 8C580000 */  lw    $t8, ($v0)
/* 1E0E80 801F0110 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 1E0E84 801F0114 3C09801F */  lui   $t1, %hi(D_801F0DD0) # $t1, 0x801f
/* 1E0E88 801F0118 0018C880 */  sll   $t9, $t8, 2
/* 1E0E8C 801F011C 00390821 */  addu  $at, $at, $t9
/* 1E0E90 801F0120 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 1E0E94 801F0124 8C4A0000 */  lw    $t2, ($v0)
/* 1E0E98 801F0128 3C01800E */  lui   $at, 0x800e
/* 1E0E9C 801F012C 25290DD0 */  addiu $t1, %lo(D_801F0DD0) # addiu $t1, $t1, 0xdd0
/* 1E0EA0 801F0130 000A5880 */  sll   $t3, $t2, 2
/* 1E0EA4 801F0134 002B0821 */  addu  $at, $at, $t3
/* 1E0EA8 801F0138 AC29F150 */  sw    $t1, -0xeb0($at)
/* 1E0EAC 801F013C 3C05801F */  lui   $a1, %hi(D_801F4D98) # $a1, 0x801f
/* 1E0EB0 801F0140 24A54D98 */  addiu $a1, %lo(D_801F4D98) # addiu $a1, $a1, 0x4d98
/* 1E0EB4 801F0144 0C03E430 */  jal   func_800F90C0
/* 1E0EB8 801F0148 8C440000 */   lw    $a0, ($v0)
/* 1E0EBC 801F014C 3C040003 */  lui   $a0, (0x000300B8 >> 16) # lui $a0, 3
/* 1E0EC0 801F0150 348400B8 */  ori   $a0, (0x000300B8 & 0xFFFF) # ori $a0, $a0, 0xb8
/* 1E0EC4 801F0154 2405002C */  li    $a1, 44
/* 1E0EC8 801F0158 0C02A619 */  jal   func_800A9864
/* 1E0ECC 801F015C 24060010 */   li    $a2, 16
/* 1E0ED0 801F0160 8E0D0000 */  lw    $t5, ($s0)
/* 1E0ED4 801F0164 3C0C801F */  lui   $t4, %hi(D_801F4858) # $t4, 0x801f
/* 1E0ED8 801F0168 8D8C4858 */  lw    $t4, %lo(D_801F4858)($t4)
/* 1E0EDC 801F016C 8DAE0000 */  lw    $t6, ($t5)
/* 1E0EE0 801F0170 3C01800E */  lui   $at, 0x800e
/* 1E0EE4 801F0174 000EC080 */  sll   $t8, $t6, 2
/* 1E0EE8 801F0178 00380821 */  addu  $at, $at, $t8
/* 1E0EEC 801F017C 0C03FC51 */  jal   func_800FF144
/* 1E0EF0 801F0180 AC2C0490 */   sw    $t4, 0x0490($at)
/* 1E0EF4 801F0184 8E0F0000 */  lw    $t7, ($s0)
/* 1E0EF8 801F0188 3C01800F */  lui   $at, 0x800f
/* 1E0EFC 801F018C 00402025 */  move  $a0, $v0
/* 1E0F00 801F0190 8DF90000 */  lw    $t9, ($t7)
/* 1E0F04 801F0194 00195080 */  sll   $t2, $t9, 2
/* 1E0F08 801F0198 002A0821 */  addu  $at, $at, $t2
/* 1E0F0C 801F019C 0C07C005 */  jal   func_801F0014_ovl10
/* 1E0F10 801F01A0 AC22A520 */   sw    $v0, -0x5ae0($at)
/* 1E0F14 801F01A4 3C04801F */  lui   $a0, %hi(D_801F47C0) # $a0, 0x801f
/* 1E0F18 801F01A8 0C02A806 */  jal   func_800AA018
/* 1E0F1C 801F01AC 8C8447C0 */   lw    $a0, %lo(D_801F47C0)($a0)
/* 1E0F20 801F01B0 3C04801F */  lui   $a0, %hi(D_801F47C4) # $a0, 0x801f
/* 1E0F24 801F01B4 8C8447C4 */  lw    $a0, %lo(D_801F47C4)($a0)
/* 1E0F28 801F01B8 50800004 */  beql  $a0, $zero, .L801F01CC_ovl10
/* 1E0F2C 801F01BC 8E020000 */   lw    $v0, ($s0)
/* 1E0F30 801F01C0 0C02A806 */  jal   func_800AA018
/* 1E0F34 801F01C4 00000000 */   nop   
/* 1E0F38 801F01C8 8E020000 */  lw    $v0, ($s0)
.L801F01CC_ovl10:
/* 1E0F3C 801F01CC 3C01801F */  lui   $at, %hi(D_801F4C60) # $at, 0x801f
/* 1E0F40 801F01D0 C4244C60 */  lwc1  $f4, %lo(D_801F4C60)($at)
/* 1E0F44 801F01D4 8C490000 */  lw    $t1, ($v0)
/* 1E0F48 801F01D8 3C01800E */  lui   $at, 0x800e
/* 1E0F4C 801F01DC 24040002 */  li    $a0, 2
/* 1E0F50 801F01E0 00095880 */  sll   $t3, $t1, 2
/* 1E0F54 801F01E4 002B0821 */  addu  $at, $at, $t3
/* 1E0F58 801F01E8 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 1E0F5C 801F01EC 8C4D0000 */  lw    $t5, ($v0)
/* 1E0F60 801F01F0 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1E0F64 801F01F4 44813000 */  mtc1  $at, $f6
/* 1E0F68 801F01F8 3C01800E */  lui   $at, 0x800e
/* 1E0F6C 801F01FC 000D7080 */  sll   $t6, $t5, 2
/* 1E0F70 801F0200 002E0821 */  addu  $at, $at, $t6
/* 1E0F74 801F0204 0C002DAF */  jal   finish_current_thread
/* 1E0F78 801F0208 E4263050 */   swc1  $f6, 0x3050($at)
.L801F020C_ovl10:
/* 1E0F7C 801F020C 3C06801F */  lui   $a2, %hi(D_801F4D60) # $a2, 0x801f
/* 1E0F80 801F0210 8CC64D60 */  lw    $a2, %lo(D_801F4D60)($a2)
/* 1E0F84 801F0214 3C18800E */  lui   $t8, 0x800e
/* 1E0F88 801F0218 27A40078 */  addiu $a0, $sp, 0x78
/* 1E0F8C 801F021C 00066080 */  sll   $t4, $a2, 2
/* 1E0F90 801F0220 030CC021 */  addu  $t8, $t8, $t4
/* 1E0F94 801F0224 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 1E0F98 801F0228 0C02C8D0 */  jal   func_800B2340
/* 1E0F9C 801F022C 8F050014 */   lw    $a1, 0x14($t8)
/* 1E0FA0 801F0230 8FAF0088 */  lw    $t7, 0x88($sp)
/* 1E0FA4 801F0234 27A4006C */  addiu $a0, $sp, 0x6c
/* 1E0FA8 801F0238 3406FFFF */  li    $a2, 65535
/* 1E0FAC 801F023C 0C02C8D0 */  jal   func_800B2340
/* 1E0FB0 801F0240 8DE5003C */   lw    $a1, 0x3c($t7)
/* 1E0FB4 801F0244 C7A80078 */  lwc1  $f8, 0x78($sp)
/* 1E0FB8 801F0248 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 1E0FBC 801F024C 3C03800E */  lui   $v1, %hi(D_800E3590) # $v1, 0x800e
/* 1E0FC0 801F0250 44800000 */  mtc1  $zero, $f0
/* 1E0FC4 801F0254 460A403C */  c.lt.s $f8, $f10
/* 1E0FC8 801F0258 24633590 */  addiu $v1, %lo(D_800E3590) # addiu $v1, $v1, 0x3590
/* 1E0FCC 801F025C 45000033 */  bc1f  .L801F032C_ovl10
/* 1E0FD0 801F0260 00000000 */   nop   
/* 1E0FD4 801F0264 8E020000 */  lw    $v0, ($s0)
/* 1E0FD8 801F0268 3C01800E */  lui   $at, 0x800e
/* 1E0FDC 801F026C 3C05801F */  lui   $a1, %hi(D_801F47C8) # $a1, 0x801f
/* 1E0FE0 801F0270 8C590000 */  lw    $t9, ($v0)
/* 1E0FE4 801F0274 44060000 */  mfc1  $a2, $f0
/* 1E0FE8 801F0278 3C070003 */  lui   $a3, (0x000300B8 >> 16) # lui $a3, 3
/* 1E0FEC 801F027C 00195080 */  sll   $t2, $t9, 2
/* 1E0FF0 801F0280 006A4821 */  addu  $t1, $v1, $t2
/* 1E0FF4 801F0284 E5200000 */  swc1  $f0, ($t1)
/* 1E0FF8 801F0288 8C480000 */  lw    $t0, ($v0)
/* 1E0FFC 801F028C 8FAC0088 */  lw    $t4, 0x88($sp)
/* 1E1000 801F0290 8CA547C8 */  lw    $a1, %lo(D_801F47C8)($a1)
/* 1E1004 801F0294 00084080 */  sll   $t0, $t0, 2
/* 1E1008 801F0298 00685821 */  addu  $t3, $v1, $t0
/* 1E100C 801F029C C5700000 */  lwc1  $f16, ($t3)
/* 1E1010 801F02A0 00280821 */  addu  $at, $at, $t0
/* 1E1014 801F02A4 34E700B8 */  ori   $a3, (0x000300B8 & 0xFFFF) # ori $a3, $a3, 0xb8
/* 1E1018 801F02A8 E4303050 */  swc1  $f16, 0x3050($at)
/* 1E101C 801F02AC 8C4D0000 */  lw    $t5, ($v0)
/* 1E1020 801F02B0 3C01801F */  lui   $at, %hi(D_801F4C64) # $at, 0x801f
/* 1E1024 801F02B4 C4324C64 */  lwc1  $f18, %lo(D_801F4C64)($at)
/* 1E1028 801F02B8 3C01800E */  lui   $at, 0x800e
/* 1E102C 801F02BC 000D7080 */  sll   $t6, $t5, 2
/* 1E1030 801F02C0 002E0821 */  addu  $at, $at, $t6
/* 1E1034 801F02C4 E4323AD0 */  swc1  $f18, 0x3ad0($at)
/* 1E1038 801F02C8 8D98003C */  lw    $t8, 0x3c($t4)
/* 1E103C 801F02CC 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 1E1040 801F02D0 44812000 */  mtc1  $at, $f4
/* 1E1044 801F02D4 8F040010 */  lw    $a0, 0x10($t8)
/* 1E1048 801F02D8 0C02A982 */  jal   func_800AA608
/* 1E104C 801F02DC E7A40010 */   swc1  $f4, 0x10($sp)
/* 1E1050 801F02E0 3C04801F */  lui   $a0, %hi(D_801F47C8) # $a0, 0x801f
/* 1E1054 801F02E4 0C02A806 */  jal   func_800AA018
/* 1E1058 801F02E8 8C8447C8 */   lw    $a0, %lo(D_801F47C8)($a0)
/* 1E105C 801F02EC 3C04801F */  lui   $a0, %hi(D_801F47CC) # $a0, 0x801f
/* 1E1060 801F02F0 8C8447CC */  lw    $a0, %lo(D_801F47CC)($a0)
/* 1E1064 801F02F4 50800004 */  beql  $a0, $zero, .L801F0308_ovl10
/* 1E1068 801F02F8 8E020000 */   lw    $v0, ($s0)
/* 1E106C 801F02FC 0C02A806 */  jal   func_800AA018
/* 1E1070 801F0300 00000000 */   nop   
/* 1E1074 801F0304 8E020000 */  lw    $v0, ($s0)
.L801F0308_ovl10:
/* 1E1078 801F0308 3C03800F */  lui   $v1, %hi(D_800E9C60) # $v1, 0x800f
/* 1E107C 801F030C 24639C60 */  addiu $v1, %lo(D_800E9C60) # addiu $v1, $v1, -0x63a0
/* 1E1080 801F0310 8C590000 */  lw    $t9, ($v0)
/* 1E1084 801F0314 44807000 */  mtc1  $zero, $f14
/* 1E1088 801F0318 240F0001 */  li    $t7, 1
/* 1E108C 801F031C 00195080 */  sll   $t2, $t9, 2
/* 1E1090 801F0320 006A4821 */  addu  $t1, $v1, $t2
/* 1E1094 801F0324 10000005 */  b     .L801F033C_ovl10
/* 1E1098 801F0328 AD2F0000 */   sw    $t7, ($t1)
.L801F032C_ovl10:
/* 1E109C 801F032C 0C002DAF */  jal   finish_current_thread
/* 1E10A0 801F0330 24040001 */   li    $a0, 1
/* 1E10A4 801F0334 1000FFB5 */  b     .L801F020C_ovl10
/* 1E10A8 801F0338 00000000 */   nop   
.L801F033C_ovl10:
/* 1E10AC 801F033C 46007086 */  mov.s $f2, $f14
.L801F0340_ovl10:
/* 1E10B0 801F0340 8C480000 */  lw    $t0, ($v0)
/* 1E10B4 801F0344 3C0B800F */  lui   $t3, 0x800f
/* 1E10B8 801F0348 3C0143B4 */  li    $at, 0x43B40000 # 360.000000
/* 1E10BC 801F034C 00084080 */  sll   $t0, $t0, 2
/* 1E10C0 801F0350 01685821 */  addu  $t3, $t3, $t0
/* 1E10C4 801F0354 8D6B98E0 */  lw    $t3, -0x6720($t3)
/* 1E10C8 801F0358 5560002D */  bnezl $t3, .L801F0410_ovl10
/* 1E10CC 801F035C 24180002 */   li    $t8, 2
/* 1E10D0 801F0360 44810000 */  mtc1  $at, $f0
/* 1E10D4 801F0364 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 1E10D8 801F0368 44813000 */  mtc1  $at, $f6
/* 1E10DC 801F036C 3C01801F */  lui   $at, %hi(D_801F4C68) # $at, 0x801f
/* 1E10E0 801F0370 46061080 */  add.s $f2, $f2, $f6
/* 1E10E4 801F0374 4602003C */  c.lt.s $f0, $f2
/* 1E10E8 801F0378 00000000 */  nop   
/* 1E10EC 801F037C 45000002 */  bc1f  .L801F0388_ovl10
/* 1E10F0 801F0380 00000000 */   nop   
/* 1E10F4 801F0384 46001081 */  sub.s $f2, $f2, $f0
.L801F0388_ovl10:
/* 1E10F8 801F0388 C4284C68 */  lwc1  $f8, %lo(D_801F4C68)($at)
/* 1E10FC 801F038C 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1E1100 801F0390 44818000 */  mtc1  $at, $f16
/* 1E1104 801F0394 46081282 */  mul.s $f10, $f2, $f8
/* 1E1108 801F0398 E7A20068 */  swc1  $f2, 0x68($sp)
/* 1E110C 801F039C 0C00B5B8 */  jal   sinf
/* 1E1110 801F03A0 46105303 */   div.s $f12, $f10, $f16
/* 1E1114 801F03A4 3C014234 */  li    $at, 0x42340000 # 45.000000
/* 1E1118 801F03A8 44819000 */  mtc1  $at, $f18
/* 1E111C 801F03AC 3C0142B4 */  li    $at, 0x42B40000 # 90.000000
/* 1E1120 801F03B0 44813000 */  mtc1  $at, $f6
/* 1E1124 801F03B4 46120102 */  mul.s $f4, $f0, $f18
/* 1E1128 801F03B8 3C01801F */  lui   $at, %hi(D_801F4C6C) # $at, 0x801f
/* 1E112C 801F03BC C42A4C6C */  lwc1  $f10, %lo(D_801F4C6C)($at)
/* 1E1130 801F03C0 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1E1134 801F03C4 44819000 */  mtc1  $at, $f18
/* 1E1138 801F03C8 8E0D0000 */  lw    $t5, ($s0)
/* 1E113C 801F03CC 3C01800E */  lui   $at, 0x800e
/* 1E1140 801F03D0 46062200 */  add.s $f8, $f4, $f6
/* 1E1144 801F03D4 8DAE0000 */  lw    $t6, ($t5)
/* 1E1148 801F03D8 24040001 */  li    $a0, 1
/* 1E114C 801F03DC 460A4402 */  mul.s $f16, $f8, $f10
/* 1E1150 801F03E0 000E6080 */  sll   $t4, $t6, 2
/* 1E1154 801F03E4 002C0821 */  addu  $at, $at, $t4
/* 1E1158 801F03E8 46128103 */  div.s $f4, $f16, $f18
/* 1E115C 801F03EC 0C002DAF */  jal   finish_current_thread
/* 1E1160 801F03F0 E42441D0 */   swc1  $f4, 0x41d0($at)
/* 1E1164 801F03F4 44807000 */  mtc1  $zero, $f14
/* 1E1168 801F03F8 3C03800F */  lui   $v1, %hi(D_800E9C60) # $v1, 0x800f
/* 1E116C 801F03FC 24639C60 */  addiu $v1, %lo(D_800E9C60) # addiu $v1, $v1, -0x63a0
/* 1E1170 801F0400 8E020000 */  lw    $v0, ($s0)
/* 1E1174 801F0404 1000FFCE */  b     .L801F0340_ovl10
/* 1E1178 801F0408 C7A20068 */   lwc1  $f2, 0x68($sp)
/* 1E117C 801F040C 24180002 */  li    $t8, 2
.L801F0410_ovl10:
/* 1E1180 801F0410 0068C821 */  addu  $t9, $v1, $t0
/* 1E1184 801F0414 AF380000 */  sw    $t8, ($t9)
/* 1E1188 801F0418 8FAA0088 */  lw    $t2, 0x88($sp)
/* 1E118C 801F041C E7AE0058 */  swc1  $f14, 0x58($sp)
/* 1E1190 801F0420 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 1E1194 801F0424 8D4F003C */  lw    $t7, 0x3c($t2)
/* 1E1198 801F0428 44813000 */  mtc1  $at, $f6
/* 1E119C 801F042C 3C05801F */  lui   $a1, %hi(D_801F47D0) # $a1, 0x801f
/* 1E11A0 801F0430 44067000 */  mfc1  $a2, $f14
/* 1E11A4 801F0434 3C070003 */  lui   $a3, (0x000300B8 >> 16) # lui $a3, 3
/* 1E11A8 801F0438 8DE40010 */  lw    $a0, 0x10($t7)
/* 1E11AC 801F043C E7AE0054 */  swc1  $f14, 0x54($sp)
/* 1E11B0 801F0440 34E700B8 */  ori   $a3, (0x000300B8 & 0xFFFF) # ori $a3, $a3, 0xb8
/* 1E11B4 801F0444 8CA547D0 */  lw    $a1, %lo(D_801F47D0)($a1)
/* 1E11B8 801F0448 0C02A982 */  jal   func_800AA608
/* 1E11BC 801F044C E7A60010 */   swc1  $f6, 0x10($sp)
/* 1E11C0 801F0450 3C04801F */  lui   $a0, %hi(D_801F47D0) # $a0, 0x801f
/* 1E11C4 801F0454 0C02A806 */  jal   func_800AA018
/* 1E11C8 801F0458 8C8447D0 */   lw    $a0, %lo(D_801F47D0)($a0)
/* 1E11CC 801F045C 3C04801F */  lui   $a0, %hi(D_801F47D4) # $a0, 0x801f
/* 1E11D0 801F0460 8C8447D4 */  lw    $a0, %lo(D_801F47D4)($a0)
/* 1E11D4 801F0464 C7A20054 */  lwc1  $f2, 0x54($sp)
/* 1E11D8 801F0468 50800005 */  beql  $a0, $zero, .L801F0480_ovl10
/* 1E11DC 801F046C 8E090000 */   lw    $t1, ($s0)
/* 1E11E0 801F0470 0C02A806 */  jal   func_800AA018
/* 1E11E4 801F0474 E7A20054 */   swc1  $f2, 0x54($sp)
/* 1E11E8 801F0478 C7A20054 */  lwc1  $f2, 0x54($sp)
.L801F047C_ovl10:
/* 1E11EC 801F047C 8E090000 */  lw    $t1, ($s0)
.L801F0480_ovl10:
/* 1E11F0 801F0480 3C0B800F */  lui   $t3, 0x800f
/* 1E11F4 801F0484 3C0143B4 */  li    $at, 0x43B40000 # 360.000000
/* 1E11F8 801F0488 8D280000 */  lw    $t0, ($t1)
/* 1E11FC 801F048C 00084080 */  sll   $t0, $t0, 2
/* 1E1200 801F0490 01685821 */  addu  $t3, $t3, $t0
/* 1E1204 801F0494 8D6B9AA0 */  lw    $t3, -0x6560($t3)
/* 1E1208 801F0498 15600023 */  bnez  $t3, .L801F0528_ovl10
/* 1E120C 801F049C 00000000 */   nop   
/* 1E1210 801F04A0 44810000 */  mtc1  $at, $f0
/* 1E1214 801F04A4 3C014110 */  li    $at, 0x41100000 # 9.000000
/* 1E1218 801F04A8 44814000 */  mtc1  $at, $f8
/* 1E121C 801F04AC 3C0142B4 */  li    $at, 0x42B40000 # 90.000000
/* 1E1220 801F04B0 44815000 */  mtc1  $at, $f10
/* 1E1224 801F04B4 46081080 */  add.s $f2, $f2, $f8
/* 1E1228 801F04B8 3C01801F */  lui   $at, %hi(D_801F4C70) # $at, 0x801f
/* 1E122C 801F04BC 4602003C */  c.lt.s $f0, $f2
/* 1E1230 801F04C0 00000000 */  nop   
/* 1E1234 801F04C4 45020003 */  bc1fl .L801F04D4_ovl10
/* 1E1238 801F04C8 460A1401 */   sub.s $f16, $f2, $f10
/* 1E123C 801F04CC 46001081 */  sub.s $f2, $f2, $f0
/* 1E1240 801F04D0 460A1401 */  sub.s $f16, $f2, $f10
.L801F04D4_ovl10:
/* 1E1244 801F04D4 C4324C70 */  lwc1  $f18, %lo(D_801F4C70)($at)
/* 1E1248 801F04D8 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1E124C 801F04DC 44813000 */  mtc1  $at, $f6
/* 1E1250 801F04E0 46128102 */  mul.s $f4, $f16, $f18
/* 1E1254 801F04E4 E7A20054 */  swc1  $f2, 0x54($sp)
/* 1E1258 801F04E8 0C00B5B8 */  jal   sinf
/* 1E125C 801F04EC 46062303 */   div.s $f12, $f4, $f6
/* 1E1260 801F04F0 3C01801F */  lui   $at, %hi(D_801F4C74) # $at, 0x801f
/* 1E1264 801F04F4 C4284C74 */  lwc1  $f8, %lo(D_801F4C74)($at)
/* 1E1268 801F04F8 3C01801F */  lui   $at, %hi(D_801F4C78) # $at, 0x801f
/* 1E126C 801F04FC C4304C78 */  lwc1  $f16, %lo(D_801F4C78)($at)
/* 1E1270 801F0500 46080280 */  add.s $f10, $f0, $f8
/* 1E1274 801F0504 3C01801F */  lui   $at, %hi(D_801F4C7C) # $at, 0x801f
/* 1E1278 801F0508 C4244C7C */  lwc1  $f4, %lo(D_801F4C7C)($at)
/* 1E127C 801F050C 24040001 */  li    $a0, 1
/* 1E1280 801F0510 46105483 */  div.s $f18, $f10, $f16
/* 1E1284 801F0514 46049182 */  mul.s $f6, $f18, $f4
/* 1E1288 801F0518 0C002DAF */  jal   finish_current_thread
/* 1E128C 801F051C E7A60058 */   swc1  $f6, 0x58($sp)
/* 1E1290 801F0520 1000FFD6 */  b     .L801F047C_ovl10
/* 1E1294 801F0524 C7A20054 */   lwc1  $f2, 0x54($sp)
.L801F0528_ovl10:
/* 1E1298 801F0528 3C01800F */  lui   $at, 0x800f
/* 1E129C 801F052C 00280821 */  addu  $at, $at, $t0
/* 1E12A0 801F0530 240D0003 */  li    $t5, 3
/* 1E12A4 801F0534 AC2D9C60 */  sw    $t5, -0x63a0($at)
/* 1E12A8 801F0538 0C029D9E */  jal   play_sound
/* 1E12AC 801F053C 240400F7 */   li    $a0, 247
/* 1E12B0 801F0540 8E0E0000 */  lw    $t6, ($s0)
/* 1E12B4 801F0544 3C01800E */  lui   $at, 0x800e
/* 1E12B8 801F0548 8DCC0000 */  lw    $t4, ($t6)
/* 1E12BC 801F054C 000CC080 */  sll   $t8, $t4, 2
/* 1E12C0 801F0550 00380821 */  addu  $at, $at, $t8
/* 1E12C4 801F0554 C42841D0 */  lwc1  $f8, 0x41d0($at)
/* 1E12C8 801F0558 3C01801F */  lui   $at, %hi(D_801F4C80) # $at, 0x801f
/* 1E12CC 801F055C C42A4C80 */  lwc1  $f10, %lo(D_801F4C80)($at)
/* 1E12D0 801F0560 0C00D604 */  jal   cosf
/* 1E12D4 801F0564 460A4301 */   sub.s $f12, $f8, $f10
/* 1E12D8 801F0568 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 1E12DC 801F056C 8E020000 */  lw    $v0, ($s0)
/* 1E12E0 801F0570 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 1E12E4 801F0574 46100482 */  mul.s $f18, $f0, $f16
/* 1E12E8 801F0578 8C590000 */  lw    $t9, ($v0)
/* 1E12EC 801F057C 44811000 */  mtc1  $at, $f2
/* 1E12F0 801F0580 3C01800E */  lui   $at, 0x800e
/* 1E12F4 801F0584 00195080 */  sll   $t2, $t9, 2
/* 1E12F8 801F0588 002A0821 */  addu  $at, $at, $t2
/* 1E12FC 801F058C E4323050 */  swc1  $f18, 0x3050($at)
/* 1E1300 801F0590 8C4F0000 */  lw    $t7, ($v0)
/* 1E1304 801F0594 3C01800E */  lui   $at, 0x800e
/* 1E1308 801F0598 000F4880 */  sll   $t1, $t7, 2
/* 1E130C 801F059C 00290821 */  addu  $at, $at, $t1
/* 1E1310 801F05A0 E4223210 */  swc1  $f2, 0x3210($at)
/* 1E1314 801F05A4 8C4B0000 */  lw    $t3, ($v0)
/* 1E1318 801F05A8 3C01801F */  lui   $at, %hi(D_801F4C84) # $at, 0x801f
/* 1E131C 801F05AC C4244C84 */  lwc1  $f4, %lo(D_801F4C84)($at)
/* 1E1320 801F05B0 3C01800E */  lui   $at, 0x800e
/* 1E1324 801F05B4 000B6880 */  sll   $t5, $t3, 2
/* 1E1328 801F05B8 002D0821 */  addu  $at, $at, $t5
/* 1E132C 801F05BC E4243750 */  swc1  $f4, 0x3750($at)
/* 1E1330 801F05C0 8C4E0000 */  lw    $t6, ($v0)
/* 1E1334 801F05C4 3C01800E */  lui   $at, 0x800e
/* 1E1338 801F05C8 000E6080 */  sll   $t4, $t6, 2
/* 1E133C 801F05CC 002C0821 */  addu  $at, $at, $t4
/* 1E1340 801F05D0 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 1E1344 801F05D4 8C580000 */  lw    $t8, ($v0)
/* 1E1348 801F05D8 3C01800E */  lui   $at, 0x800e
/* 1E134C 801F05DC 0018C880 */  sll   $t9, $t8, 2
/* 1E1350 801F05E0 00390821 */  addu  $at, $at, $t9
/* 1E1354 801F05E4 C42641D0 */  lwc1  $f6, 0x41d0($at)
/* 1E1358 801F05E8 3C01801F */  lui   $at, %hi(D_801F4C88) # $at, 0x801f
/* 1E135C 801F05EC C4284C88 */  lwc1  $f8, %lo(D_801F4C88)($at)
/* 1E1360 801F05F0 0C00B5B8 */  jal   sinf
/* 1E1364 801F05F4 46083301 */   sub.s $f12, $f6, $f8
/* 1E1368 801F05F8 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* 1E136C 801F05FC 8E0A0000 */  lw    $t2, ($s0)
/* 1E1370 801F0600 3C01800E */  lui   $at, 0x800e
/* 1E1374 801F0604 460A0402 */  mul.s $f16, $f0, $f10
/* 1E1378 801F0608 8D4F0000 */  lw    $t7, ($t2)
/* 1E137C 801F060C 3C04801F */  lui   $a0, %hi(D_801F47D8) # $a0, 0x801f
/* 1E1380 801F0610 8C8447D8 */  lw    $a0, %lo(D_801F47D8)($a0)
/* 1E1384 801F0614 000F4880 */  sll   $t1, $t7, 2
/* 1E1388 801F0618 00290821 */  addu  $at, $at, $t1
/* 1E138C 801F061C 46008487 */  neg.s $f18, $f16
/* 1E1390 801F0620 0C02A806 */  jal   func_800AA018
/* 1E1394 801F0624 E43233D0 */   swc1  $f18, 0x33d0($at)
/* 1E1398 801F0628 3C04801F */  lui   $a0, %hi(D_801F47DC) # $a0, 0x801f
/* 1E139C 801F062C 8C8447DC */  lw    $a0, %lo(D_801F47DC)($a0)
/* 1E13A0 801F0630 50800004 */  beql  $a0, $zero, .L801F0644_ovl10
/* 1E13A4 801F0634 8E0B0000 */   lw    $t3, ($s0)
/* 1E13A8 801F0638 0C02A806 */  jal   func_800AA018
/* 1E13AC 801F063C 00000000 */   nop   
/* 1E13B0 801F0640 8E0B0000 */  lw    $t3, ($s0)
.L801F0644_ovl10:
/* 1E13B4 801F0644 3C01800E */  lui   $at, 0x800e
/* 1E13B8 801F0648 44800000 */  mtc1  $zero, $f0
/* 1E13BC 801F064C 8D6D0000 */  lw    $t5, ($t3)
/* 1E13C0 801F0650 000D7080 */  sll   $t6, $t5, 2
/* 1E13C4 801F0654 002E0821 */  addu  $at, $at, $t6
/* 1E13C8 801F0658 C4243750 */  lwc1  $f4, 0x3750($at)
/* 1E13CC 801F065C 4600203C */  c.lt.s $f4, $f0
/* 1E13D0 801F0660 00000000 */  nop   
/* 1E13D4 801F0664 4500001A */  bc1f  .L801F06D0_ovl10
/* 1E13D8 801F0668 00000000 */   nop   
/* 1E13DC 801F066C 8FAC0088 */  lw    $t4, 0x88($sp)
/* 1E13E0 801F0670 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 1E13E4 801F0674 44813000 */  mtc1  $at, $f6
/* 1E13E8 801F0678 8D98003C */  lw    $t8, 0x3c($t4)
/* 1E13EC 801F067C 3C05801F */  lui   $a1, %hi(D_801F47D8) # $a1, 0x801f
/* 1E13F0 801F0680 44060000 */  mfc1  $a2, $f0
/* 1E13F4 801F0684 3C070003 */  lui   $a3, (0x000300B8 >> 16) # lui $a3, 3
/* 1E13F8 801F0688 8F040010 */  lw    $a0, 0x10($t8)
/* 1E13FC 801F068C 34E700B8 */  ori   $a3, (0x000300B8 & 0xFFFF) # ori $a3, $a3, 0xb8
/* 1E1400 801F0690 8CA547D8 */  lw    $a1, %lo(D_801F47D8)($a1)
/* 1E1404 801F0694 0C02A982 */  jal   func_800AA608
/* 1E1408 801F0698 E7A60010 */   swc1  $f6, 0x10($sp)
/* 1E140C 801F069C 3C04801F */  lui   $a0, %hi(D_801F47D8) # $a0, 0x801f
/* 1E1410 801F06A0 0C02A806 */  jal   func_800AA018
/* 1E1414 801F06A4 8C8447D8 */   lw    $a0, %lo(D_801F47D8)($a0)
/* 1E1418 801F06A8 3C04801F */  lui   $a0, %hi(D_801F47DC) # $a0, 0x801f
/* 1E141C 801F06AC 8C8447DC */  lw    $a0, %lo(D_801F47DC)($a0)
/* 1E1420 801F06B0 10800003 */  beqz  $a0, .L801F06C0_ovl10
/* 1E1424 801F06B4 00000000 */   nop   
/* 1E1428 801F06B8 0C02A806 */  jal   func_800AA018
/* 1E142C 801F06BC 00000000 */   nop   
.L801F06C0_ovl10:
/* 1E1430 801F06C0 0C02BC9F */  jal   func_800AF27C
/* 1E1434 801F06C4 00000000 */   nop   
/* 1E1438 801F06C8 10000006 */  b     .L801F06E4_ovl10
/* 1E143C 801F06CC 8E0A0000 */   lw    $t2, ($s0)
.L801F06D0_ovl10:
/* 1E1440 801F06D0 0C002DAF */  jal   finish_current_thread
/* 1E1444 801F06D4 24040001 */   li    $a0, 1
/* 1E1448 801F06D8 1000FFDA */  b     .L801F0644_ovl10
/* 1E144C 801F06DC 8E0B0000 */   lw    $t3, ($s0)
/* 1E1450 801F06E0 8E0A0000 */  lw    $t2, ($s0)
.L801F06E4_ovl10:
/* 1E1454 801F06E4 3C01800F */  lui   $at, 0x800f
/* 1E1458 801F06E8 24190004 */  li    $t9, 4
/* 1E145C 801F06EC 8D4F0000 */  lw    $t7, ($t2)
/* 1E1460 801F06F0 3C04801F */  lui   $a0, %hi(D_801F47E8) # $a0, 0x801f
/* 1E1464 801F06F4 8C8447E8 */  lw    $a0, %lo(D_801F47E8)($a0)
/* 1E1468 801F06F8 000F4880 */  sll   $t1, $t7, 2
/* 1E146C 801F06FC 00290821 */  addu  $at, $at, $t1
/* 1E1470 801F0700 0C02A806 */  jal   func_800AA018
/* 1E1474 801F0704 AC399C60 */   sw    $t9, -0x63a0($at)
/* 1E1478 801F0708 3C04801F */  lui   $a0, %hi(D_801F47EC) # $a0, 0x801f
/* 1E147C 801F070C 8C8447EC */  lw    $a0, %lo(D_801F47EC)($a0)
/* 1E1480 801F0710 50800004 */  beql  $a0, $zero, .L801F0724_ovl10
/* 1E1484 801F0714 8E0B0000 */   lw    $t3, ($s0)
/* 1E1488 801F0718 0C02A806 */  jal   func_800AA018
/* 1E148C 801F071C 00000000 */   nop   
/* 1E1490 801F0720 8E0B0000 */  lw    $t3, ($s0)
.L801F0724_ovl10:
/* 1E1494 801F0724 3C0C800F */  lui   $t4, 0x800f
/* 1E1498 801F0728 8D6D0000 */  lw    $t5, ($t3)
/* 1E149C 801F072C 000D7080 */  sll   $t6, $t5, 2
/* 1E14A0 801F0730 018E6021 */  addu  $t4, $t4, $t6
/* 1E14A4 801F0734 8D8C9E20 */  lw    $t4, -0x61e0($t4)
/* 1E14A8 801F0738 55800023 */  bnezl $t4, .L801F07C8_ovl10
/* 1E14AC 801F073C 8E020000 */   lw    $v0, ($s0)
/* 1E14B0 801F0740 0C07C3B2 */  jal   func_801F0EC8_ovl10
/* 1E14B4 801F0744 8FA40088 */   lw    $a0, 0x88($sp)
/* 1E14B8 801F0748 24010008 */  li    $at, 8
/* 1E14BC 801F074C 1041001D */  beq   $v0, $at, .L801F07C4_ovl10
/* 1E14C0 801F0750 AFA2004C */   sw    $v0, 0x4c($sp)
/* 1E14C4 801F0754 3C0F801F */  lui   $t7, %hi(D_801F4D68) # $t7, 0x801f
/* 1E14C8 801F0758 25EF4D68 */  addiu $t7, %lo(D_801F4D68) # addiu $t7, $t7, 0x4d68
/* 1E14CC 801F075C 00025080 */  sll   $t2, $v0, 2
/* 1E14D0 801F0760 014F3821 */  addu  $a3, $t2, $t7
/* 1E14D4 801F0764 8CF90000 */  lw    $t9, ($a3)
/* 1E14D8 801F0768 3C04800F */  lui   $a0, 0x800f
/* 1E14DC 801F076C AFA70030 */  sw    $a3, 0x30($sp)
/* 1E14E0 801F0770 00194880 */  sll   $t1, $t9, 2
/* 1E14E4 801F0774 00892021 */  addu  $a0, $a0, $t1
/* 1E14E8 801F0778 0C03FC73 */  jal   func_800FF1CC
/* 1E14EC 801F077C 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 1E14F0 801F0780 8FA70030 */  lw    $a3, 0x30($sp)
/* 1E14F4 801F0784 3C05800E */  lui   $a1, 0x800e
/* 1E14F8 801F0788 00002025 */  move  $a0, $zero
/* 1E14FC 801F078C 8CEB0000 */  lw    $t3, ($a3)
/* 1E1500 801F0790 000B6880 */  sll   $t5, $t3, 2
/* 1E1504 801F0794 00AD2821 */  addu  $a1, $a1, $t5
/* 1E1508 801F0798 0C02BEED */  jal   func_800AFBB4
/* 1E150C 801F079C 8CA5E350 */   lw    $a1, -0x1cb0($a1)
/* 1E1510 801F07A0 0C029D9E */  jal   play_sound
/* 1E1514 801F07A4 240400CA */   li    $a0, 202
/* 1E1518 801F07A8 8E0C0000 */  lw    $t4, ($s0)
/* 1E151C 801F07AC 3C01800F */  lui   $at, 0x800f
/* 1E1520 801F07B0 240E0001 */  li    $t6, 1
/* 1E1524 801F07B4 8D980000 */  lw    $t8, ($t4)
/* 1E1528 801F07B8 00185080 */  sll   $t2, $t8, 2
/* 1E152C 801F07BC 002A0821 */  addu  $at, $at, $t2
/* 1E1530 801F07C0 AC2E9E20 */  sw    $t6, -0x61e0($at)
.L801F07C4_ovl10:
/* 1E1534 801F07C4 8E020000 */  lw    $v0, ($s0)
.L801F07C8_ovl10:
/* 1E1538 801F07C8 3C09800E */  lui   $t1, %hi(gEntitiesNextPosYArray) # $t1, 0x800e
/* 1E153C 801F07CC 25292790 */  addiu $t1, %lo(gEntitiesNextPosYArray) # addiu $t1, $t1, 0x2790
/* 1E1540 801F07D0 8C4F0000 */  lw    $t7, ($v0)
/* 1E1544 801F07D4 44805000 */  mtc1  $zero, $f10
/* 1E1548 801F07D8 000FC880 */  sll   $t9, $t7, 2
/* 1E154C 801F07DC 03291821 */  addu  $v1, $t9, $t1
/* 1E1550 801F07E0 C4680000 */  lwc1  $f8, ($v1)
/* 1E1554 801F07E4 460A403C */  c.lt.s $f8, $f10
/* 1E1558 801F07E8 00000000 */  nop   
/* 1E155C 801F07EC 4500004F */  bc1f  .L801F092C_ovl10
/* 1E1560 801F07F0 00000000 */   nop   
/* 1E1564 801F07F4 44808000 */  mtc1  $zero, $f16
/* 1E1568 801F07F8 3C01801F */  lui   $at, %hi(D_801F4C8C) # $at, 0x801f
/* 1E156C 801F07FC C4204C8C */  lwc1  $f0, %lo(D_801F4C8C)($at)
/* 1E1570 801F0800 E4700000 */  swc1  $f16, ($v1)
/* 1E1574 801F0804 8C4B0000 */  lw    $t3, ($v0)
/* 1E1578 801F0808 44809000 */  mtc1  $zero, $f18
/* 1E157C 801F080C 3C05800E */  lui   $a1, %hi(D_800E3590) # $a1, 0x800e
/* 1E1580 801F0810 24A53590 */  addiu $a1, %lo(D_800E3590) # addiu $a1, $a1, 0x3590
/* 1E1584 801F0814 000B6880 */  sll   $t5, $t3, 2
/* 1E1588 801F0818 00AD6021 */  addu  $t4, $a1, $t5
/* 1E158C 801F081C E5920000 */  swc1  $f18, ($t4)
/* 1E1590 801F0820 8C480000 */  lw    $t0, ($v0)
/* 1E1594 801F0824 3C01800E */  lui   $at, 0x800e
/* 1E1598 801F0828 44803000 */  mtc1  $zero, $f6
/* 1E159C 801F082C 00084080 */  sll   $t0, $t0, 2
/* 1E15A0 801F0830 00A8C021 */  addu  $t8, $a1, $t0
/* 1E15A4 801F0834 C7040000 */  lwc1  $f4, ($t8)
/* 1E15A8 801F0838 00280821 */  addu  $at, $at, $t0
/* 1E15AC 801F083C 44805000 */  mtc1  $zero, $f10
/* 1E15B0 801F0840 E4243050 */  swc1  $f4, 0x3050($at)
/* 1E15B4 801F0844 8C4E0000 */  lw    $t6, ($v0)
/* 1E15B8 801F0848 3C01800E */  lui   $at, 0x800e
/* 1E15BC 801F084C 44808000 */  mtc1  $zero, $f16
/* 1E15C0 801F0850 000E5080 */  sll   $t2, $t6, 2
/* 1E15C4 801F0854 002A0821 */  addu  $at, $at, $t2
/* 1E15C8 801F0858 E4203AD0 */  swc1  $f0, 0x3ad0($at)
/* 1E15CC 801F085C 8C4F0000 */  lw    $t7, ($v0)
/* 1E15D0 801F0860 3C01800E */  lui   $at, 0x800e
/* 1E15D4 801F0864 3C04801F */  lui   $a0, %hi(D_801F47F0) # $a0, 0x801f
/* 1E15D8 801F0868 000FC880 */  sll   $t9, $t7, 2
/* 1E15DC 801F086C 00390821 */  addu  $at, $at, $t9
/* 1E15E0 801F0870 E4263750 */  swc1  $f6, 0x3750($at)
/* 1E15E4 801F0874 8C480000 */  lw    $t0, ($v0)
/* 1E15E8 801F0878 3C01800E */  lui   $at, 0x800e
/* 1E15EC 801F087C 24190005 */  li    $t9, 5
/* 1E15F0 801F0880 00084080 */  sll   $t0, $t0, 2
/* 1E15F4 801F0884 00280821 */  addu  $at, $at, $t0
/* 1E15F8 801F0888 C4283750 */  lwc1  $f8, 0x3750($at)
/* 1E15FC 801F088C 3C01800E */  lui   $at, 0x800e
/* 1E1600 801F0890 00280821 */  addu  $at, $at, $t0
/* 1E1604 801F0894 E4283210 */  swc1  $f8, 0x3210($at)
/* 1E1608 801F0898 8C490000 */  lw    $t1, ($v0)
/* 1E160C 801F089C 3C01800E */  lui   $at, 0x800e
/* 1E1610 801F08A0 8C8447F0 */  lw    $a0, %lo(D_801F47F0)($a0)
/* 1E1614 801F08A4 00095880 */  sll   $t3, $t1, 2
/* 1E1618 801F08A8 002B0821 */  addu  $at, $at, $t3
/* 1E161C 801F08AC E4203C90 */  swc1  $f0, 0x3c90($at)
/* 1E1620 801F08B0 8C4D0000 */  lw    $t5, ($v0)
/* 1E1624 801F08B4 3C01800E */  lui   $at, 0x800e
/* 1E1628 801F08B8 000D6080 */  sll   $t4, $t5, 2
/* 1E162C 801F08BC 002C0821 */  addu  $at, $at, $t4
/* 1E1630 801F08C0 E42A33D0 */  swc1  $f10, 0x33d0($at)
/* 1E1634 801F08C4 8C580000 */  lw    $t8, ($v0)
/* 1E1638 801F08C8 3C01800E */  lui   $at, 0x800e
/* 1E163C 801F08CC 00187080 */  sll   $t6, $t8, 2
/* 1E1640 801F08D0 002E0821 */  addu  $at, $at, $t6
/* 1E1644 801F08D4 E4303910 */  swc1  $f16, 0x3910($at)
/* 1E1648 801F08D8 8C4A0000 */  lw    $t2, ($v0)
/* 1E164C 801F08DC 3C01800E */  lui   $at, 0x800e
/* 1E1650 801F08E0 000A7880 */  sll   $t7, $t2, 2
/* 1E1654 801F08E4 002F0821 */  addu  $at, $at, $t7
/* 1E1658 801F08E8 E4203E50 */  swc1  $f0, 0x3e50($at)
/* 1E165C 801F08EC 8C490000 */  lw    $t1, ($v0)
/* 1E1660 801F08F0 3C01800F */  lui   $at, 0x800f
/* 1E1664 801F08F4 00095880 */  sll   $t3, $t1, 2
/* 1E1668 801F08F8 002B0821 */  addu  $at, $at, $t3
/* 1E166C 801F08FC 0C02A806 */  jal   func_800AA018
/* 1E1670 801F0900 AC399C60 */   sw    $t9, -0x63a0($at)
/* 1E1674 801F0904 3C04801F */  lui   $a0, %hi(D_801F47F4) # $a0, 0x801f
/* 1E1678 801F0908 8C8447F4 */  lw    $a0, %lo(D_801F47F4)($a0)
/* 1E167C 801F090C 10800003 */  beqz  $a0, .L801F091C_ovl10
/* 1E1680 801F0910 00000000 */   nop   
/* 1E1684 801F0914 0C02A806 */  jal   func_800AA018
/* 1E1688 801F0918 00000000 */   nop   
.L801F091C_ovl10:
/* 1E168C 801F091C 0C02BC9F */  jal   func_800AF27C
/* 1E1690 801F0920 00000000 */   nop   
/* 1E1694 801F0924 10000006 */  b     .L801F0940_ovl10
/* 1E1698 801F0928 8E020000 */   lw    $v0, ($s0)
.L801F092C_ovl10:
/* 1E169C 801F092C 0C002DAF */  jal   finish_current_thread
/* 1E16A0 801F0930 24040001 */   li    $a0, 1
/* 1E16A4 801F0934 1000FF7B */  b     .L801F0724_ovl10
/* 1E16A8 801F0938 8E0B0000 */   lw    $t3, ($s0)
/* 1E16AC 801F093C 8E020000 */  lw    $v0, ($s0)
.L801F0940_ovl10:
/* 1E16B0 801F0940 3C01800F */  lui   $at, 0x800f
/* 1E16B4 801F0944 240D0006 */  li    $t5, 6
/* 1E16B8 801F0948 8C4C0000 */  lw    $t4, ($v0)
/* 1E16BC 801F094C 3C03801F */  lui   $v1, %hi(D_801F4D88) # $v1, 0x801f
/* 1E16C0 801F0950 24634D88 */  addiu $v1, %lo(D_801F4D88) # addiu $v1, $v1, 0x4d88
/* 1E16C4 801F0954 000CC080 */  sll   $t8, $t4, 2
/* 1E16C8 801F0958 00380821 */  addu  $at, $at, $t8
/* 1E16CC 801F095C AC2D9C60 */  sw    $t5, -0x63a0($at)
/* 1E16D0 801F0960 8C480000 */  lw    $t0, ($v0)
/* 1E16D4 801F0964 3C01800E */  lui   $at, 0x800e
/* 1E16D8 801F0968 C4660008 */  lwc1  $f6, 8($v1)
/* 1E16DC 801F096C 00084080 */  sll   $t0, $t0, 2
/* 1E16E0 801F0970 00280821 */  addu  $at, $at, $t0
/* 1E16E4 801F0974 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 1E16E8 801F0978 3C01800E */  lui   $at, 0x800e
/* 1E16EC 801F097C 00280821 */  addu  $at, $at, $t0
/* 1E16F0 801F0980 C4282950 */  lwc1  $f8, 0x2950($at)
/* 1E16F4 801F0984 C4720000 */  lwc1  $f18, ($v1)
/* 1E16F8 801F0988 46083381 */  sub.s $f14, $f6, $f8
/* 1E16FC 801F098C 0C0061C3 */  jal   atan2f
/* 1E1700 801F0990 46049301 */   sub.s $f12, $f18, $f4
/* 1E1704 801F0994 8E0E0000 */  lw    $t6, ($s0)
/* 1E1708 801F0998 3C0A800F */  lui   $t2, 0x800f
/* 1E170C 801F099C 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 1E1710 801F09A0 8DC80000 */  lw    $t0, ($t6)
/* 1E1714 801F09A4 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 1E1718 801F09A8 46000086 */  mov.s $f2, $f0
/* 1E171C 801F09AC 00084080 */  sll   $t0, $t0, 2
/* 1E1720 801F09B0 01485021 */  addu  $t2, $t2, $t0
/* 1E1724 801F09B4 8D4A9E20 */  lw    $t2, -0x61e0($t2)
/* 1E1728 801F09B8 00A87821 */  addu  $t7, $a1, $t0
/* 1E172C 801F09BC 15400003 */  bnez  $t2, .L801F09CC_ovl10
/* 1E1730 801F09C0 3C01801F */   lui   $at, %hi(D_801F4C90) # $at, 0x801f
/* 1E1734 801F09C4 C42A4C90 */  lwc1  $f10, %lo(D_801F4C90)($at)
/* 1E1738 801F09C8 460A0080 */  add.s $f2, $f0, $f10
.L801F09CC_ovl10:
/* 1E173C 801F09CC C5F00000 */  lwc1  $f16, ($t7)
/* 1E1740 801F09D0 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1E1744 801F09D4 44812000 */  mtc1  $at, $f4
/* 1E1748 801F09D8 46101481 */  sub.s $f18, $f2, $f16
/* 1E174C 801F09DC 00001825 */  move  $v1, $zero
/* 1E1750 801F09E0 46049003 */  div.s $f0, $f18, $f4
/* 1E1754 801F09E4 E7A00064 */  swc1  $f0, 0x64($sp)
/* 1E1758 801F09E8 8E090000 */  lw    $t1, ($s0)
.L801F09EC_ovl10:
/* 1E175C 801F09EC 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 1E1760 801F09F0 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 1E1764 801F09F4 8D390000 */  lw    $t9, ($t1)
/* 1E1768 801F09F8 C7A00064 */  lwc1  $f0, 0x64($sp)
/* 1E176C 801F09FC AFA30050 */  sw    $v1, 0x50($sp)
/* 1E1770 801F0A00 00195880 */  sll   $t3, $t9, 2
/* 1E1774 801F0A04 00AB1021 */  addu  $v0, $a1, $t3
/* 1E1778 801F0A08 C4460000 */  lwc1  $f6, ($v0)
/* 1E177C 801F0A0C 24040001 */  li    $a0, 1
/* 1E1780 801F0A10 46003200 */  add.s $f8, $f6, $f0
/* 1E1784 801F0A14 0C002DAF */  jal   finish_current_thread
/* 1E1788 801F0A18 E4480000 */   swc1  $f8, ($v0)
/* 1E178C 801F0A1C 8FA30050 */  lw    $v1, 0x50($sp)
/* 1E1790 801F0A20 24010005 */  li    $at, 5
/* 1E1794 801F0A24 24630001 */  addiu $v1, $v1, 1
/* 1E1798 801F0A28 5461FFF0 */  bnel  $v1, $at, .L801F09EC_ovl10
/* 1E179C 801F0A2C 8E090000 */   lw    $t1, ($s0)
/* 1E17A0 801F0A30 8E0C0000 */  lw    $t4, ($s0)
/* 1E17A4 801F0A34 3C0E800F */  lui   $t6, 0x800f
/* 1E17A8 801F0A38 8D8D0000 */  lw    $t5, ($t4)
/* 1E17AC 801F0A3C 000DC080 */  sll   $t8, $t5, 2
/* 1E17B0 801F0A40 01D87021 */  addu  $t6, $t6, $t8
/* 1E17B4 801F0A44 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 1E17B8 801F0A48 11C000AC */  beqz  $t6, .L801F0CFC_ovl10
/* 1E17BC 801F0A4C 00000000 */   nop   
/* 1E17C0 801F0A50 8FA4004C */  lw    $a0, 0x4c($sp)
/* 1E17C4 801F0A54 3C09801F */  lui   $t1, %hi(D_801F4D68) # $t1, 0x801f
/* 1E17C8 801F0A58 25294D68 */  addiu $t1, %lo(D_801F4D68) # addiu $t1, $t1, 0x4d68
/* 1E17CC 801F0A5C 00047880 */  sll   $t7, $a0, 2
/* 1E17D0 801F0A60 01E93821 */  addu  $a3, $t7, $t1
/* 1E17D4 801F0A64 0C07C81D */  jal   func_801F2074_ovl10
/* 1E17D8 801F0A68 AFA70030 */   sw    $a3, 0x30($sp)
/* 1E17DC 801F0A6C 24010001 */  li    $at, 1
/* 1E17E0 801F0A70 14410003 */  bne   $v0, $at, .L801F0A80_ovl10
/* 1E17E4 801F0A74 8FA70030 */   lw    $a3, 0x30($sp)
/* 1E17E8 801F0A78 1000001A */  b     .L801F0AE4_ovl10
/* 1E17EC 801F0A7C 00008025 */   move  $s0, $zero
.L801F0A80_ovl10:
/* 1E17F0 801F0A80 8FB9004C */  lw    $t9, 0x4c($sp)
/* 1E17F4 801F0A84 24010006 */  li    $at, 6
/* 1E17F8 801F0A88 3C04800D */  lui   $a0, %hi(D_800D6B88) # $a0, 0x800d
/* 1E17FC 801F0A8C 17210015 */  bne   $t9, $at, .L801F0AE4_ovl10
/* 1E1800 801F0A90 24100001 */   li    $s0, 1
/* 1E1804 801F0A94 8C846B88 */  lw    $a0, %lo(D_800D6B88)($a0)
/* 1E1808 801F0A98 0C02E7F8 */  jal   func_800B9FE0
/* 1E180C 801F0A9C AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1810 801F0AA0 10400003 */  beqz  $v0, .L801F0AB0_ovl10
/* 1E1814 801F0AA4 8FA70030 */   lw    $a3, 0x30($sp)
/* 1E1818 801F0AA8 1000000E */  b     .L801F0AE4_ovl10
/* 1E181C 801F0AAC 24100001 */   li    $s0, 1
.L801F0AB0_ovl10:
/* 1E1820 801F0AB0 24100003 */  li    $s0, 3
/* 1E1824 801F0AB4 24040029 */  li    $a0, 41
/* 1E1828 801F0AB8 2405001E */  li    $a1, 30
/* 1E182C 801F0ABC 24060050 */  li    $a2, 80
/* 1E1830 801F0AC0 0C02BB02 */  jal   request_track_general
/* 1E1834 801F0AC4 AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1838 801F0AC8 00026080 */  sll   $t4, $v0, 2
/* 1E183C 801F0ACC 3C01800F */  lui   $at, 0x800f
/* 1E1840 801F0AD0 002C0821 */  addu  $at, $at, $t4
/* 1E1844 801F0AD4 240B000E */  li    $t3, 14
/* 1E1848 801F0AD8 8FA70030 */  lw    $a3, 0x30($sp)
/* 1E184C 801F0ADC 10000001 */  b     .L801F0AE4_ovl10
/* 1E1850 801F0AE0 AC2B98E0 */   sw    $t3, -0x6720($at)
.L801F0AE4_ovl10:
/* 1E1854 801F0AE4 3C18801F */  lui   $t8, %hi(D_801F47F8) # $t8, 0x801f
/* 1E1858 801F0AE8 271847F8 */  addiu $t8, %lo(D_801F47F8) # addiu $t8, $t8, 0x47f8
/* 1E185C 801F0AEC 001068C0 */  sll   $t5, $s0, 3
/* 1E1860 801F0AF0 01B81021 */  addu  $v0, $t5, $t8
/* 1E1864 801F0AF4 8C440000 */  lw    $a0, ($v0)
/* 1E1868 801F0AF8 AFA20028 */  sw    $v0, 0x28($sp)
/* 1E186C 801F0AFC 0C02A806 */  jal   func_800AA018
/* 1E1870 801F0B00 AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1874 801F0B04 8FAE0028 */  lw    $t6, 0x28($sp)
/* 1E1878 801F0B08 8FA70030 */  lw    $a3, 0x30($sp)
/* 1E187C 801F0B0C 8DC40004 */  lw    $a0, 4($t6)
/* 1E1880 801F0B10 50800005 */  beql  $a0, $zero, .L801F0B28_ovl10
/* 1E1884 801F0B14 24040029 */   li    $a0, 41
/* 1E1888 801F0B18 0C02A806 */  jal   func_800AA018
/* 1E188C 801F0B1C AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1890 801F0B20 8FA70030 */  lw    $a3, 0x30($sp)
/* 1E1894 801F0B24 24040029 */  li    $a0, 41
.L801F0B28_ovl10:
/* 1E1898 801F0B28 2405001E */  li    $a1, 30
/* 1E189C 801F0B2C 24060050 */  li    $a2, 80
/* 1E18A0 801F0B30 0C02BB02 */  jal   request_track_general
/* 1E18A4 801F0B34 AFA70030 */   sw    $a3, 0x30($sp)
/* 1E18A8 801F0B38 3C06800F */  lui   $a2, %hi(D_800E9AA0) # $a2, 0x800f
/* 1E18AC 801F0B3C 00022880 */  sll   $a1, $v0, 2
/* 1E18B0 801F0B40 3C01800F */  lui   $at, 0x800f
/* 1E18B4 801F0B44 8FA70030 */  lw    $a3, 0x30($sp)
/* 1E18B8 801F0B48 24C69AA0 */  addiu $a2, %lo(D_800E9AA0) # addiu $a2, $a2, -0x6560
/* 1E18BC 801F0B4C 00250821 */  addu  $at, $at, $a1
/* 1E18C0 801F0B50 240A000D */  li    $t2, 13
/* 1E18C4 801F0B54 AC2A98E0 */  sw    $t2, -0x6720($at)
/* 1E18C8 801F0B58 00C57821 */  addu  $t7, $a2, $a1
/* 1E18CC 801F0B5C ADF00000 */  sw    $s0, ($t7)
/* 1E18D0 801F0B60 8CE30000 */  lw    $v1, ($a3)
/* 1E18D4 801F0B64 3C01800F */  lui   $at, 0x800f
/* 1E18D8 801F0B68 8FB9004C */  lw    $t9, 0x4c($sp)
/* 1E18DC 801F0B6C 00031880 */  sll   $v1, $v1, 2
/* 1E18E0 801F0B70 00230821 */  addu  $at, $at, $v1
/* 1E18E4 801F0B74 24090001 */  li    $t1, 1
/* 1E18E8 801F0B78 AC2998E0 */  sw    $t1, -0x6720($at)
/* 1E18EC 801F0B7C 24010006 */  li    $at, 6
/* 1E18F0 801F0B80 1721000D */  bne   $t9, $at, .L801F0BB8_ovl10
/* 1E18F4 801F0B84 00002025 */   move  $a0, $zero
/* 1E18F8 801F0B88 8FAB0028 */  lw    $t3, 0x28($sp)
/* 1E18FC 801F0B8C 3C0C801F */  lui   $t4, %hi(D_801F4810) # $t4, 0x801f
/* 1E1900 801F0B90 258C4810 */  addiu $t4, %lo(D_801F4810) # addiu $t4, $t4, 0x4810
/* 1E1904 801F0B94 156C0006 */  bne   $t3, $t4, .L801F0BB0_ovl10
/* 1E1908 801F0B98 3C01800F */   lui   $at, 0x800f
/* 1E190C 801F0B9C 3C01800F */  lui   $at, 0x800f
/* 1E1910 801F0BA0 00230821 */  addu  $at, $at, $v1
/* 1E1914 801F0BA4 240D0001 */  li    $t5, 1
/* 1E1918 801F0BA8 10000003 */  b     .L801F0BB8_ovl10
/* 1E191C 801F0BAC AC2D9C60 */   sw    $t5, -0x63a0($at)
.L801F0BB0_ovl10:
/* 1E1920 801F0BB0 00230821 */  addu  $at, $at, $v1
/* 1E1924 801F0BB4 AC209C60 */  sw    $zero, -0x63a0($at)
.L801F0BB8_ovl10:
/* 1E1928 801F0BB8 24030007 */  li    $v1, 7
/* 1E192C 801F0BBC 8FB8004C */  lw    $t8, 0x4c($sp)
.L801F0BC0_ovl10:
/* 1E1930 801F0BC0 00047080 */  sll   $t6, $a0, 2
/* 1E1934 801F0BC4 3C02801F */  lui   $v0, 0x801f
/* 1E1938 801F0BC8 10980007 */  beq   $a0, $t8, .L801F0BE8_ovl10
/* 1E193C 801F0BCC 004E1021 */   addu  $v0, $v0, $t6
/* 1E1940 801F0BD0 8C424D68 */  lw    $v0, 0x4d68($v0)
/* 1E1944 801F0BD4 240A0001 */  li    $t2, 1
/* 1E1948 801F0BD8 10400003 */  beqz  $v0, .L801F0BE8_ovl10
/* 1E194C 801F0BDC 00027880 */   sll   $t7, $v0, 2
/* 1E1950 801F0BE0 00CF4821 */  addu  $t1, $a2, $t7
/* 1E1954 801F0BE4 AD2A0000 */  sw    $t2, ($t1)
.L801F0BE8_ovl10:
/* 1E1958 801F0BE8 24840001 */  addiu $a0, $a0, 1
/* 1E195C 801F0BEC 5483FFF4 */  bnel  $a0, $v1, .L801F0BC0_ovl10
/* 1E1960 801F0BF0 8FB8004C */   lw    $t8, 0x4c($sp)
/* 1E1964 801F0BF4 24040014 */  li    $a0, 20
/* 1E1968 801F0BF8 0C002DAF */  jal   finish_current_thread
/* 1E196C 801F0BFC AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1970 801F0C00 8FA70030 */  lw    $a3, 0x30($sp)
/* 1E1974 801F0C04 3C19801F */  lui   $t9, %hi(D_801F4D78) # $t9, 0x801f
/* 1E1978 801F0C08 27394D78 */  addiu $t9, %lo(D_801F4D78) # addiu $t9, $t9, 0x4d78
/* 1E197C 801F0C0C 14F90005 */  bne   $a3, $t9, .L801F0C24_ovl10
/* 1E1980 801F0C10 3C0140C0 */   li    $at, 0x40C00000 # 6.000000
/* 1E1984 801F0C14 44816000 */  mtc1  $at, $f12
/* 1E1988 801F0C18 0C02EFF8 */  jal   change_kirby_hp
/* 1E198C 801F0C1C AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1990 801F0C20 8FA70030 */  lw    $a3, 0x30($sp)
.L801F0C24_ovl10:
/* 1E1994 801F0C24 3C0B801F */  lui   $t3, %hi(D_801F4D7C) # $t3, 0x801f
/* 1E1998 801F0C28 256B4D7C */  addiu $t3, %lo(D_801F4D7C) # addiu $t3, $t3, 0x4d7c
/* 1E199C 801F0C2C 14EB0005 */  bne   $a3, $t3, .L801F0C44_ovl10
/* 1E19A0 801F0C30 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 1E19A4 801F0C34 44816000 */  mtc1  $at, $f12
/* 1E19A8 801F0C38 0C02EFF8 */  jal   change_kirby_hp
/* 1E19AC 801F0C3C AFA70030 */   sw    $a3, 0x30($sp)
/* 1E19B0 801F0C40 8FA70030 */  lw    $a3, 0x30($sp)
.L801F0C44_ovl10:
/* 1E19B4 801F0C44 3C0C801F */  lui   $t4, %hi(D_801F4D68) # $t4, 0x801f
/* 1E19B8 801F0C48 258C4D68 */  addiu $t4, %lo(D_801F4D68) # addiu $t4, $t4, 0x4d68
/* 1E19BC 801F0C4C 14EC0004 */  bne   $a3, $t4, .L801F0C60_ovl10
/* 1E19C0 801F0C50 24040001 */   li    $a0, 1
/* 1E19C4 801F0C54 0C02F090 */  jal   change_kirby_stars
/* 1E19C8 801F0C58 AFA70030 */   sw    $a3, 0x30($sp)
/* 1E19CC 801F0C5C 8FA70030 */  lw    $a3, 0x30($sp)
.L801F0C60_ovl10:
/* 1E19D0 801F0C60 3C0D801F */  lui   $t5, %hi(D_801F4D6C) # $t5, 0x801f
/* 1E19D4 801F0C64 25AD4D6C */  addiu $t5, %lo(D_801F4D6C) # addiu $t5, $t5, 0x4d6c
/* 1E19D8 801F0C68 14ED0004 */  bne   $a3, $t5, .L801F0C7C_ovl10
/* 1E19DC 801F0C6C 24040003 */   li    $a0, 3
/* 1E19E0 801F0C70 0C02F090 */  jal   change_kirby_stars
/* 1E19E4 801F0C74 AFA70030 */   sw    $a3, 0x30($sp)
/* 1E19E8 801F0C78 8FA70030 */  lw    $a3, 0x30($sp)
.L801F0C7C_ovl10:
/* 1E19EC 801F0C7C 3C18801F */  lui   $t8, %hi(D_801F4D70) # $t8, 0x801f
/* 1E19F0 801F0C80 27184D70 */  addiu $t8, %lo(D_801F4D70) # addiu $t8, $t8, 0x4d70
/* 1E19F4 801F0C84 14F80004 */  bne   $a3, $t8, .L801F0C98_ovl10
/* 1E19F8 801F0C88 24040005 */   li    $a0, 5
/* 1E19FC 801F0C8C 0C02F090 */  jal   change_kirby_stars
/* 1E1A00 801F0C90 AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1A04 801F0C94 8FA70030 */  lw    $a3, 0x30($sp)
.L801F0C98_ovl10:
/* 1E1A08 801F0C98 3C0E801F */  lui   $t6, %hi(D_801F4D74) # $t6, 0x801f
/* 1E1A0C 801F0C9C 25CE4D74 */  addiu $t6, %lo(D_801F4D74) # addiu $t6, $t6, 0x4d74
/* 1E1A10 801F0CA0 14EE0006 */  bne   $a3, $t6, .L801F0CBC_ovl10
/* 1E1A14 801F0CA4 24040001 */   li    $a0, 1
/* 1E1A18 801F0CA8 0C02F096 */  jal   change_kirby_lives
/* 1E1A1C 801F0CAC AFA70030 */   sw    $a3, 0x30($sp)
/* 1E1A20 801F0CB0 0C029D9E */  jal   play_sound
/* 1E1A24 801F0CB4 24040001 */   li    $a0, 1
/* 1E1A28 801F0CB8 8FA70030 */  lw    $a3, 0x30($sp)
.L801F0CBC_ovl10:
/* 1E1A2C 801F0CBC 3C0F801F */  lui   $t7, %hi(D_801F4D80) # $t7, 0x801f
/* 1E1A30 801F0CC0 25EF4D80 */  addiu $t7, %lo(D_801F4D80) # addiu $t7, $t7, 0x4d80
/* 1E1A34 801F0CC4 14EF0033 */  bne   $a3, $t7, .L801F0D94_ovl10
/* 1E1A38 801F0CC8 8FAA0028 */   lw    $t2, 0x28($sp)
/* 1E1A3C 801F0CCC 3C09801F */  lui   $t1, %hi(D_801F4800) # $t1, 0x801f
/* 1E1A40 801F0CD0 25294800 */  addiu $t1, %lo(D_801F4800) # addiu $t1, $t1, 0x4800
/* 1E1A44 801F0CD4 15490005 */  bne   $t2, $t1, .L801F0CEC_ovl10
/* 1E1A48 801F0CD8 00000000 */   nop   
/* 1E1A4C 801F0CDC 0C029D9E */  jal   play_sound
/* 1E1A50 801F0CE0 24040271 */   li    $a0, 625
/* 1E1A54 801F0CE4 1000002C */  b     .L801F0D98_ovl10
/* 1E1A58 801F0CE8 24040028 */   li    $a0, 40
.L801F0CEC_ovl10:
/* 1E1A5C 801F0CEC 0C029D9E */  jal   play_sound
/* 1E1A60 801F0CF0 24040273 */   li    $a0, 627
/* 1E1A64 801F0CF4 10000028 */  b     .L801F0D98_ovl10
/* 1E1A68 801F0CF8 24040028 */   li    $a0, 40
.L801F0CFC_ovl10:
/* 1E1A6C 801F0CFC 3C04801F */  lui   $a0, %hi(D_801F4808) # $a0, 0x801f
/* 1E1A70 801F0D00 0C02A806 */  jal   func_800AA018
/* 1E1A74 801F0D04 8C844808 */   lw    $a0, %lo(D_801F4808)($a0)
/* 1E1A78 801F0D08 3C04801F */  lui   $a0, %hi(D_801F480C) # $a0, 0x801f
/* 1E1A7C 801F0D0C 8C84480C */  lw    $a0, %lo(D_801F480C)($a0)
/* 1E1A80 801F0D10 50800004 */  beql  $a0, $zero, .L801F0D24_ovl10
/* 1E1A84 801F0D14 24040029 */   li    $a0, 41
/* 1E1A88 801F0D18 0C02A806 */  jal   func_800AA018
/* 1E1A8C 801F0D1C 00000000 */   nop   
/* 1E1A90 801F0D20 24040029 */  li    $a0, 41
.L801F0D24_ovl10:
/* 1E1A94 801F0D24 2405001E */  li    $a1, 30
/* 1E1A98 801F0D28 0C02BB02 */  jal   request_track_general
/* 1E1A9C 801F0D2C 24060050 */   li    $a2, 80
/* 1E1AA0 801F0D30 00022880 */  sll   $a1, $v0, 2
/* 1E1AA4 801F0D34 3C01800F */  lui   $at, 0x800f
/* 1E1AA8 801F0D38 00250821 */  addu  $at, $at, $a1
/* 1E1AAC 801F0D3C 2419000D */  li    $t9, 13
/* 1E1AB0 801F0D40 AC3998E0 */  sw    $t9, -0x6720($at)
/* 1E1AB4 801F0D44 3C01800F */  lui   $at, 0x800f
/* 1E1AB8 801F0D48 00250821 */  addu  $at, $at, $a1
/* 1E1ABC 801F0D4C 240B0002 */  li    $t3, 2
/* 1E1AC0 801F0D50 3C03801F */  lui   $v1, %hi(D_801F4D68) # $v1, 0x801f
/* 1E1AC4 801F0D54 3C04801F */  lui   $a0, %hi(D_801F4D84) # $a0, 0x801f
/* 1E1AC8 801F0D58 AC2B9AA0 */  sw    $t3, -0x6560($at)
/* 1E1ACC 801F0D5C 24844D84 */  addiu $a0, %lo(D_801F4D84) # addiu $a0, $a0, 0x4d84
/* 1E1AD0 801F0D60 24634D68 */  addiu $v1, %lo(D_801F4D68) # addiu $v1, $v1, 0x4d68
/* 1E1AD4 801F0D64 8C620000 */  lw    $v0, ($v1)
.L801F0D68_ovl10:
/* 1E1AD8 801F0D68 24630004 */  addiu $v1, $v1, 4
/* 1E1ADC 801F0D6C 240C0001 */  li    $t4, 1
/* 1E1AE0 801F0D70 10400004 */  beqz  $v0, .L801F0D84_ovl10
/* 1E1AE4 801F0D74 00026880 */   sll   $t5, $v0, 2
/* 1E1AE8 801F0D78 3C01800F */  lui   $at, 0x800f
/* 1E1AEC 801F0D7C 002D0821 */  addu  $at, $at, $t5
/* 1E1AF0 801F0D80 AC2C9AA0 */  sw    $t4, -0x6560($at)
.L801F0D84_ovl10:
/* 1E1AF4 801F0D84 5464FFF8 */  bnel  $v1, $a0, .L801F0D68_ovl10
/* 1E1AF8 801F0D88 8C620000 */   lw    $v0, ($v1)
/* 1E1AFC 801F0D8C 0C002DAF */  jal   finish_current_thread
/* 1E1B00 801F0D90 24040014 */   li    $a0, 20
.L801F0D94_ovl10:
/* 1E1B04 801F0D94 24040028 */  li    $a0, 40
.L801F0D98_ovl10:
/* 1E1B08 801F0D98 2405001E */  li    $a1, 30
/* 1E1B0C 801F0D9C 0C02BB02 */  jal   request_track_general
/* 1E1B10 801F0DA0 2406004F */   li    $a2, 79
/* 1E1B14 801F0DA4 00027080 */  sll   $t6, $v0, 2
/* 1E1B18 801F0DA8 3C01800F */  lui   $at, 0x800f
/* 1E1B1C 801F0DAC 002E0821 */  addu  $at, $at, $t6
/* 1E1B20 801F0DB0 24180003 */  li    $t8, 3
/* 1E1B24 801F0DB4 0C02BE85 */  jal   func_800AFA14
/* 1E1B28 801F0DB8 AC3898E0 */   sw    $t8, -0x6720($at)
/* 1E1B2C 801F0DBC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1E1B30 801F0DC0 8FB00020 */  lw    $s0, 0x20($sp)
/* 1E1B34 801F0DC4 27BD0088 */  addiu $sp, $sp, 0x88
/* 1E1B38 801F0DC8 03E00008 */  jr    $ra
/* 1E1B3C 801F0DCC 00000000 */   nop   
.size func_801F0050_ovl10, . - func_801F0050_ovl10

glabel func_801F0DD0_ovl10
/* 1E1B40 801F0DD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E1B44 801F0DD4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E1B48 801F0DD8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1E1B4C 801F0DDC 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1E1B50 801F0DE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E1B54 801F0DE4 3C03800F */  lui   $v1, 0x800f
/* 1E1B58 801F0DE8 8C820000 */  lw    $v0, ($a0)
/* 1E1B5C 801F0DEC 24050001 */  li    $a1, 1
/* 1E1B60 801F0DF0 3C0E800D */  lui   $t6, %hi(D_800D6FEA) # $t6, 0x800d
/* 1E1B64 801F0DF4 00021080 */  sll   $v0, $v0, 2
/* 1E1B68 801F0DF8 00621821 */  addu  $v1, $v1, $v0
/* 1E1B6C 801F0DFC 8C639C60 */  lw    $v1, -0x63a0($v1)
/* 1E1B70 801F0E00 3C18800D */  lui   $t8, %hi(D_800D6FEA) # $t8, 0x800d
/* 1E1B74 801F0E04 54A30017 */  bnel  $a1, $v1, .L801F0E64_ovl10
/* 1E1B78 801F0E08 24010002 */   li    $at, 2
/* 1E1B7C 801F0E0C 95CE6FEA */  lhu   $t6, %lo(D_800D6FEA)($t6)
/* 1E1B80 801F0E10 3C01800F */  lui   $at, 0x800f
/* 1E1B84 801F0E14 00220821 */  addu  $at, $at, $v0
/* 1E1B88 801F0E18 31CF8000 */  andi  $t7, $t6, 0x8000
/* 1E1B8C 801F0E1C 11E0000A */  beqz  $t7, .L801F0E48_ovl10
/* 1E1B90 801F0E20 00000000 */   nop   
/* 1E1B94 801F0E24 3C01800F */  lui   $at, 0x800f
/* 1E1B98 801F0E28 00220821 */  addu  $at, $at, $v0
/* 1E1B9C 801F0E2C AC2598E0 */  sw    $a1, -0x6720($at)
/* 1E1BA0 801F0E30 8C820000 */  lw    $v0, ($a0)
/* 1E1BA4 801F0E34 3C03800F */  lui   $v1, 0x800f
/* 1E1BA8 801F0E38 00021080 */  sll   $v0, $v0, 2
/* 1E1BAC 801F0E3C 00621821 */  addu  $v1, $v1, $v0
/* 1E1BB0 801F0E40 10000007 */  b     .L801F0E60_ovl10
/* 1E1BB4 801F0E44 8C639C60 */   lw    $v1, -0x63a0($v1)
.L801F0E48_ovl10:
/* 1E1BB8 801F0E48 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1E1BBC 801F0E4C 8C820000 */  lw    $v0, ($a0)
/* 1E1BC0 801F0E50 3C03800F */  lui   $v1, 0x800f
/* 1E1BC4 801F0E54 00021080 */  sll   $v0, $v0, 2
/* 1E1BC8 801F0E58 00621821 */  addu  $v1, $v1, $v0
/* 1E1BCC 801F0E5C 8C639C60 */  lw    $v1, -0x63a0($v1)
.L801F0E60_ovl10:
/* 1E1BD0 801F0E60 24010002 */  li    $at, 2
.L801F0E64_ovl10:
/* 1E1BD4 801F0E64 14610010 */  bne   $v1, $at, .L801F0EA8_ovl10
/* 1E1BD8 801F0E68 00000000 */   nop   
/* 1E1BDC 801F0E6C 97186FEA */  lhu   $t8, %lo(D_800D6FEA)($t8)
/* 1E1BE0 801F0E70 3C01800F */  lui   $at, 0x800f
/* 1E1BE4 801F0E74 00220821 */  addu  $at, $at, $v0
/* 1E1BE8 801F0E78 33198000 */  andi  $t9, $t8, 0x8000
/* 1E1BEC 801F0E7C 13200007 */  beqz  $t9, .L801F0E9C_ovl10
/* 1E1BF0 801F0E80 00000000 */   nop   
/* 1E1BF4 801F0E84 3C01800F */  lui   $at, 0x800f
/* 1E1BF8 801F0E88 00220821 */  addu  $at, $at, $v0
/* 1E1BFC 801F0E8C AC259AA0 */  sw    $a1, -0x6560($at)
/* 1E1C00 801F0E90 8C820000 */  lw    $v0, ($a0)
/* 1E1C04 801F0E94 10000004 */  b     .L801F0EA8_ovl10
/* 1E1C08 801F0E98 00021080 */   sll   $v0, $v0, 2
.L801F0E9C_ovl10:
/* 1E1C0C 801F0E9C AC209AA0 */  sw    $zero, -0x6560($at)
/* 1E1C10 801F0EA0 8C820000 */  lw    $v0, ($a0)
/* 1E1C14 801F0EA4 00021080 */  sll   $v0, $v0, 2
.L801F0EA8_ovl10:
/* 1E1C18 801F0EA8 3C04800F */  lui   $a0, 0x800f
/* 1E1C1C 801F0EAC 00822021 */  addu  $a0, $a0, $v0
/* 1E1C20 801F0EB0 0C03FC80 */  jal   func_800FF200
/* 1E1C24 801F0EB4 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 1E1C28 801F0EB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E1C2C 801F0EBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E1C30 801F0EC0 03E00008 */  jr    $ra
/* 1E1C34 801F0EC4 00000000 */   nop   
.size func_801F0DD0_ovl10, . - func_801F0DD0_ovl10

glabel func_801F0EC8_ovl10
/* 1E1C38 801F0EC8 27BDFF70 */  addiu $sp, $sp, -0x90
/* 1E1C3C 801F0ECC AFB40028 */  sw    $s4, 0x28($sp)
/* 1E1C40 801F0ED0 AFB30024 */  sw    $s3, 0x24($sp)
/* 1E1C44 801F0ED4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1E1C48 801F0ED8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1E1C4C 801F0EDC 3C10801F */  lui   $s0, %hi(D_801F4D68) # $s0, 0x801f
/* 1E1C50 801F0EE0 3C13800E */  lui   $s3, %hi(D_800DE350) # $s3, 0x800e
/* 1E1C54 801F0EE4 3C14801F */  lui   $s4, %hi(D_801F4D84) # $s4, 0x801f
/* 1E1C58 801F0EE8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 1E1C5C 801F0EEC AFB20020 */  sw    $s2, 0x20($sp)
/* 1E1C60 801F0EF0 AFA40090 */  sw    $a0, 0x90($sp)
/* 1E1C64 801F0EF4 26944D84 */  addiu $s4, %lo(D_801F4D84) # addiu $s4, $s4, 0x4d84
/* 1E1C68 801F0EF8 2673E350 */  addiu $s3, %lo(D_800DE350) # addiu $s3, $s3, -0x1cb0
/* 1E1C6C 801F0EFC 26104D68 */  addiu $s0, %lo(D_801F4D68) # addiu $s0, $s0, 0x4d68
/* 1E1C70 801F0F00 00008825 */  move  $s1, $zero
.L801F0F04_ovl10:
/* 1E1C74 801F0F04 8E0E0000 */  lw    $t6, ($s0)
/* 1E1C78 801F0F08 27A40060 */  addiu $a0, $sp, 0x60
/* 1E1C7C 801F0F0C 00003025 */  move  $a2, $zero
/* 1E1C80 801F0F10 11C0001C */  beqz  $t6, .L801F0F84_ovl10
/* 1E1C84 801F0F14 27B80074 */   addiu $t8, $sp, 0x74
/* 1E1C88 801F0F18 8E6F0000 */  lw    $t7, ($s3)
/* 1E1C8C 801F0F1C 02389021 */  addu  $s2, $s1, $t8
/* 1E1C90 801F0F20 0C02C8D0 */  jal   func_800B2340
/* 1E1C94 801F0F24 8DE5003C */   lw    $a1, 0x3c($t7)
/* 1E1C98 801F0F28 8E060000 */  lw    $a2, ($s0)
/* 1E1C9C 801F0F2C 27A40054 */  addiu $a0, $sp, 0x54
/* 1E1CA0 801F0F30 0006C880 */  sll   $t9, $a2, 2
/* 1E1CA4 801F0F34 02794021 */  addu  $t0, $s3, $t9
/* 1E1CA8 801F0F38 8D090000 */  lw    $t1, ($t0)
/* 1E1CAC 801F0F3C 0C02C8D0 */  jal   func_800B2340
/* 1E1CB0 801F0F40 8D25003C */   lw    $a1, 0x3c($t1)
/* 1E1CB4 801F0F44 C7A40054 */  lwc1  $f4, 0x54($sp)
/* 1E1CB8 801F0F48 C7A60060 */  lwc1  $f6, 0x60($sp)
/* 1E1CBC 801F0F4C C7A80058 */  lwc1  $f8, 0x58($sp)
/* 1E1CC0 801F0F50 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 1E1CC4 801F0F54 46062001 */  sub.s $f0, $f4, $f6
/* 1E1CC8 801F0F58 C7B0005C */  lwc1  $f16, 0x5c($sp)
/* 1E1CCC 801F0F5C C7B20068 */  lwc1  $f18, 0x68($sp)
/* 1E1CD0 801F0F60 460A4081 */  sub.s $f2, $f8, $f10
/* 1E1CD4 801F0F64 46000102 */  mul.s $f4, $f0, $f0
/* 1E1CD8 801F0F68 46128381 */  sub.s $f14, $f16, $f18
/* 1E1CDC 801F0F6C 46021182 */  mul.s $f6, $f2, $f2
/* 1E1CE0 801F0F70 46062200 */  add.s $f8, $f4, $f6
/* 1E1CE4 801F0F74 460E7282 */  mul.s $f10, $f14, $f14
/* 1E1CE8 801F0F78 0C00CAC8 */  jal   sqrtf
/* 1E1CEC 801F0F7C 460A4300 */   add.s $f12, $f8, $f10
/* 1E1CF0 801F0F80 E6400000 */  swc1  $f0, ($s2)
.L801F0F84_ovl10:
/* 1E1CF4 801F0F84 26100004 */  addiu $s0, $s0, 4
/* 1E1CF8 801F0F88 0214082B */  sltu  $at, $s0, $s4
/* 1E1CFC 801F0F8C 1420FFDD */  bnez  $at, .L801F0F04_ovl10
/* 1E1D00 801F0F90 26310004 */   addiu $s1, $s1, 4
/* 1E1D04 801F0F94 3C0A801F */  lui   $t2, %hi(D_801F4D6C) # $t2, 0x801f
/* 1E1D08 801F0F98 8D4A4D6C */  lw    $t2, %lo(D_801F4D6C)($t2)
/* 1E1D0C 801F0F9C 00001825 */  move  $v1, $zero
/* 1E1D10 801F0FA0 3C0B801F */  lui   $t3, %hi(D_801F4D70) # $t3, 0x801f
/* 1E1D14 801F0FA4 11400008 */  beqz  $t2, .L801F0FC8_ovl10
/* 1E1D18 801F0FA8 24020003 */   li    $v0, 3
/* 1E1D1C 801F0FAC C7B00078 */  lwc1  $f16, 0x78($sp)
/* 1E1D20 801F0FB0 C7B20074 */  lwc1  $f18, 0x74($sp)
/* 1E1D24 801F0FB4 4612803C */  c.lt.s $f16, $f18
/* 1E1D28 801F0FB8 00000000 */  nop   
/* 1E1D2C 801F0FBC 45000002 */  bc1f  .L801F0FC8_ovl10
/* 1E1D30 801F0FC0 00000000 */   nop   
/* 1E1D34 801F0FC4 24030001 */  li    $v1, 1
.L801F0FC8_ovl10:
/* 1E1D38 801F0FC8 8D6B4D70 */  lw    $t3, %lo(D_801F4D70)($t3)
/* 1E1D3C 801F0FCC 3C18801F */  lui   $t8, %hi(D_801F4D68) # $t8, 0x801f
/* 1E1D40 801F0FD0 27184D68 */  addiu $t8, %lo(D_801F4D68) # addiu $t8, $t8, 0x4d68
/* 1E1D44 801F0FD4 1160000B */  beqz  $t3, .L801F1004_ovl10
/* 1E1D48 801F0FD8 00028880 */   sll   $s1, $v0, 2
/* 1E1D4C 801F0FDC 27A40074 */  addiu $a0, $sp, 0x74
/* 1E1D50 801F0FE0 00036080 */  sll   $t4, $v1, 2
/* 1E1D54 801F0FE4 008C6821 */  addu  $t5, $a0, $t4
/* 1E1D58 801F0FE8 C5A60000 */  lwc1  $f6, ($t5)
/* 1E1D5C 801F0FEC C7A4007C */  lwc1  $f4, 0x7c($sp)
/* 1E1D60 801F0FF0 4606203C */  c.lt.s $f4, $f6
/* 1E1D64 801F0FF4 00000000 */  nop   
/* 1E1D68 801F0FF8 45020003 */  bc1fl .L801F1008_ovl10
/* 1E1D6C 801F0FFC 02388021 */   addu  $s0, $s1, $t8
/* 1E1D70 801F1000 24030002 */  li    $v1, 2
.L801F1004_ovl10:
/* 1E1D74 801F1004 02388021 */  addu  $s0, $s1, $t8
.L801F1008_ovl10:
/* 1E1D78 801F1008 8E190000 */  lw    $t9, ($s0)
/* 1E1D7C 801F100C 27A40074 */  addiu $a0, $sp, 0x74
/* 1E1D80 801F1010 00037080 */  sll   $t6, $v1, 2
/* 1E1D84 801F1014 008E7821 */  addu  $t7, $a0, $t6
/* 1E1D88 801F1018 1320000B */  beqz  $t9, .L801F1048_ovl10
/* 1E1D8C 801F101C C5E00000 */   lwc1  $f0, ($t7)
/* 1E1D90 801F1020 00914021 */  addu  $t0, $a0, $s1
/* 1E1D94 801F1024 C5080000 */  lwc1  $f8, ($t0)
/* 1E1D98 801F1028 00024880 */  sll   $t1, $v0, 2
/* 1E1D9C 801F102C 00895021 */  addu  $t2, $a0, $t1
/* 1E1DA0 801F1030 4600403C */  c.lt.s $f8, $f0
/* 1E1DA4 801F1034 00000000 */  nop   
/* 1E1DA8 801F1038 45020004 */  bc1fl .L801F104C_ovl10
/* 1E1DAC 801F103C 8E0B0004 */   lw    $t3, 4($s0)
/* 1E1DB0 801F1040 00401825 */  move  $v1, $v0
/* 1E1DB4 801F1044 C5400000 */  lwc1  $f0, ($t2)
.L801F1048_ovl10:
/* 1E1DB8 801F1048 8E0B0004 */  lw    $t3, 4($s0)
.L801F104C_ovl10:
/* 1E1DBC 801F104C 3C014208 */  li    $at, 0x42080000 # 34.000000
/* 1E1DC0 801F1050 44812000 */  mtc1  $at, $f4
/* 1E1DC4 801F1054 1160000B */  beqz  $t3, .L801F1084_ovl10
/* 1E1DC8 801F1058 8FB20020 */   lw    $s2, 0x20($sp)
/* 1E1DCC 801F105C 00916021 */  addu  $t4, $a0, $s1
/* 1E1DD0 801F1060 C58A0004 */  lwc1  $f10, 4($t4)
/* 1E1DD4 801F1064 4600503C */  c.lt.s $f10, $f0
/* 1E1DD8 801F1068 00000000 */  nop   
/* 1E1DDC 801F106C 45020006 */  bc1fl .L801F1088_ovl10
/* 1E1DE0 801F1070 8E0F0008 */   lw    $t7, 8($s0)
/* 1E1DE4 801F1074 24430001 */  addiu $v1, $v0, 1
/* 1E1DE8 801F1078 00036880 */  sll   $t5, $v1, 2
/* 1E1DEC 801F107C 008D7021 */  addu  $t6, $a0, $t5
/* 1E1DF0 801F1080 C5C00000 */  lwc1  $f0, ($t6)
.L801F1084_ovl10:
/* 1E1DF4 801F1084 8E0F0008 */  lw    $t7, 8($s0)
.L801F1088_ovl10:
/* 1E1DF8 801F1088 8FB30024 */  lw    $s3, 0x24($sp)
/* 1E1DFC 801F108C 8FB40028 */  lw    $s4, 0x28($sp)
/* 1E1E00 801F1090 11E0000B */  beqz  $t7, .L801F10C0_ovl10
/* 1E1E04 801F1094 8FBF002C */   lw    $ra, 0x2c($sp)
/* 1E1E08 801F1098 0091C021 */  addu  $t8, $a0, $s1
/* 1E1E0C 801F109C C7100008 */  lwc1  $f16, 8($t8)
/* 1E1E10 801F10A0 4600803C */  c.lt.s $f16, $f0
/* 1E1E14 801F10A4 00000000 */  nop   
/* 1E1E18 801F10A8 45020006 */  bc1fl .L801F10C4_ovl10
/* 1E1E1C 801F10AC 8E09000C */   lw    $t1, 0xc($s0)
/* 1E1E20 801F10B0 24430002 */  addiu $v1, $v0, 2
/* 1E1E24 801F10B4 0003C880 */  sll   $t9, $v1, 2
/* 1E1E28 801F10B8 00994021 */  addu  $t0, $a0, $t9
/* 1E1E2C 801F10BC C5000000 */  lwc1  $f0, ($t0)
.L801F10C0_ovl10:
/* 1E1E30 801F10C0 8E09000C */  lw    $t1, 0xc($s0)
.L801F10C4_ovl10:
/* 1E1E34 801F10C4 00915021 */  addu  $t2, $a0, $s1
/* 1E1E38 801F10C8 8FB00018 */  lw    $s0, 0x18($sp)
/* 1E1E3C 801F10CC 5120000B */  beql  $t1, $zero, .L801F10FC_ovl10
/* 1E1E40 801F10D0 4604003C */   c.lt.s $f0, $f4
/* 1E1E44 801F10D4 C552000C */  lwc1  $f18, 0xc($t2)
/* 1E1E48 801F10D8 4600903C */  c.lt.s $f18, $f0
/* 1E1E4C 801F10DC 00000000 */  nop   
/* 1E1E50 801F10E0 45020006 */  bc1fl .L801F10FC_ovl10
/* 1E1E54 801F10E4 4604003C */   c.lt.s $f0, $f4
/* 1E1E58 801F10E8 24430003 */  addiu $v1, $v0, 3
/* 1E1E5C 801F10EC 00035880 */  sll   $t3, $v1, 2
/* 1E1E60 801F10F0 03AB6021 */  addu  $t4, $sp, $t3
/* 1E1E64 801F10F4 C5800074 */  lwc1  $f0, 0x74($t4)
/* 1E1E68 801F10F8 4604003C */  c.lt.s $f0, $f4
.L801F10FC_ovl10:
/* 1E1E6C 801F10FC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1E1E70 801F1100 24020008 */  li    $v0, 8
/* 1E1E74 801F1104 45000003 */  bc1f  .L801F1114_ovl10
/* 1E1E78 801F1108 00000000 */   nop   
/* 1E1E7C 801F110C 10000001 */  b     .L801F1114_ovl10
/* 1E1E80 801F1110 00601025 */   move  $v0, $v1
.L801F1114_ovl10:
/* 1E1E84 801F1114 03E00008 */  jr    $ra
/* 1E1E88 801F1118 27BD0090 */   addiu $sp, $sp, 0x90
.size func_801F0EC8_ovl10, . - func_801F0EC8_ovl10

glabel func_801F111C_ovl10
/* 1E1E8C 801F111C 3C0E800D */  lui   $t6, %hi(D_800D6C10) # $t6, 0x800d
/* 1E1E90 801F1120 91CE6C10 */  lbu   $t6, %lo(D_800D6C10)($t6)
/* 1E1E94 801F1124 3C03800D */  lui   $v1, %hi(D_800D6C11) # $v1, 0x800d
/* 1E1E98 801F1128 24636C11 */  addiu $v1, %lo(D_800D6C11) # addiu $v1, $v1, 0x6c11
/* 1E1E9C 801F112C 15C00003 */  bnez  $t6, .L801F113C_ovl10
/* 1E1EA0 801F1130 3C02800D */   lui   $v0, 0x800d
/* 1E1EA4 801F1134 03E00008 */  jr    $ra
/* 1E1EA8 801F1138 00001025 */   move  $v0, $zero

.L801F113C_ovl10:
/* 1E1EAC 801F113C 24426C61 */  addiu $v0, $v0, 0x6c61
/* 1E1EB0 801F1140 906F0000 */  lbu   $t7, ($v1)
.L801F1144_ovl10:
/* 1E1EB4 801F1144 55E00004 */  bnezl $t7, .L801F1158_ovl10
/* 1E1EB8 801F1148 90780001 */   lbu   $t8, 1($v1)
/* 1E1EBC 801F114C 03E00008 */  jr    $ra
/* 1E1EC0 801F1150 00001025 */   move  $v0, $zero
.size func_801F111C_ovl10, . - func_801F111C_ovl10

glabel func_801F1154_ovl10
/* 1E1EC4 801F1154 90780001 */  lbu   $t8, 1($v1)
.L801F1158_ovl10:
/* 1E1EC8 801F1158 57000004 */  bnezl $t8, .L801F116C_ovl10
/* 1E1ECC 801F115C 90790002 */   lbu   $t9, 2($v1)
/* 1E1ED0 801F1160 03E00008 */  jr    $ra
/* 1E1ED4 801F1164 00001025 */   move  $v0, $zero
.size func_801F1154_ovl10, . - func_801F1154_ovl10

glabel func_801F1168_ovl10
/* 1E1ED8 801F1168 90790002 */  lbu   $t9, 2($v1)
.L801F116C_ovl10:
/* 1E1EDC 801F116C 57200004 */  bnezl $t9, .L801F1180_ovl10
/* 1E1EE0 801F1170 90680003 */   lbu   $t0, 3($v1)
/* 1E1EE4 801F1174 03E00008 */  jr    $ra
/* 1E1EE8 801F1178 00001025 */   move  $v0, $zero
.size func_801F1168_ovl10, . - func_801F1168_ovl10

glabel func_801F117C_ovl10
/* 1E1EEC 801F117C 90680003 */  lbu   $t0, 3($v1)
.L801F1180_ovl10:
/* 1E1EF0 801F1180 24630004 */  addiu $v1, $v1, 4
/* 1E1EF4 801F1184 15000003 */  bnez  $t0, .L801F1194_ovl10
/* 1E1EF8 801F1188 00000000 */   nop   
/* 1E1EFC 801F118C 03E00008 */  jr    $ra
/* 1E1F00 801F1190 00001025 */   move  $v0, $zero

.L801F1194_ovl10:
/* 1E1F04 801F1194 5462FFEB */  bnel  $v1, $v0, .L801F1144_ovl10
/* 1E1F08 801F1198 906F0000 */   lbu   $t7, ($v1)
/* 1E1F0C 801F119C 24020001 */  li    $v0, 1
/* 1E1F10 801F11A0 03E00008 */  jr    $ra
/* 1E1F14 801F11A4 00000000 */   nop   
.size func_801F117C_ovl10, . - func_801F117C_ovl10

glabel func_801F11A8_ovl10
/* 1E1F18 801F11A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1E1F1C 801F11AC AFB00014 */  sw    $s0, 0x14($sp)
/* 1E1F20 801F11B0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E1F24 801F11B4 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E1F28 801F11B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1E1F2C 801F11BC AFB10018 */  sw    $s1, 0x18($sp)
/* 1E1F30 801F11C0 AFA40020 */  sw    $a0, 0x20($sp)
/* 1E1F34 801F11C4 8E020000 */  lw    $v0, ($s0)
/* 1E1F38 801F11C8 3C01801F */  lui   $at, %hi(D_801F4D60) # $at, 0x801f
/* 1E1F3C 801F11CC 3C0F801F */  lui   $t7, %hi(D_801F1454) # $t7, 0x801f
/* 1E1F40 801F11D0 AC224D60 */  sw    $v0, %lo(D_801F4D60)($at)
/* 1E1F44 801F11D4 8E180000 */  lw    $t8, ($s0)
/* 1E1F48 801F11D8 3C01800E */  lui   $at, 0x800e
/* 1E1F4C 801F11DC 25EF1454 */  addiu $t7, %lo(D_801F1454) # addiu $t7, $t7, 0x1454
/* 1E1F50 801F11E0 0018C880 */  sll   $t9, $t8, 2
/* 1E1F54 801F11E4 00390821 */  addu  $at, $at, $t9
/* 1E1F58 801F11E8 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 1E1F5C 801F11EC 8E090000 */  lw    $t1, ($s0)
/* 1E1F60 801F11F0 3C11800E */  lui   $s1, 0x800e
/* 1E1F64 801F11F4 00027080 */  sll   $t6, $v0, 2
/* 1E1F68 801F11F8 022E8821 */  addu  $s1, $s1, $t6
/* 1E1F6C 801F11FC 3C01800E */  lui   $at, 0x800e
/* 1E1F70 801F1200 3C08800B */  lui   $t0, %hi(func_800B4954) # $t0, 0x800b
/* 1E1F74 801F1204 00095080 */  sll   $t2, $t1, 2
/* 1E1F78 801F1208 8E311B50 */  lw    $s1, 0x1b50($s1)
/* 1E1F7C 801F120C 002A0821 */  addu  $at, $at, $t2
/* 1E1F80 801F1210 25084954 */  addiu $t0, %lo(func_800B4954) # addiu $t0, $t0, 0x4954
/* 1E1F84 801F1214 AC28EF90 */  sw    $t0, -0x1070($at)
/* 1E1F88 801F1218 0C03FC73 */  jal   func_800FF1CC
/* 1E1F8C 801F121C 8E240080 */   lw    $a0, 0x80($s1)
/* 1E1F90 801F1220 3C01801F */  lui   $at, %hi(D_801F4C94) # $at, 0x801f
/* 1E1F94 801F1224 C4204C94 */  lwc1  $f0, %lo(D_801F4C94)($at)
/* 1E1F98 801F1228 AE200080 */  sw    $zero, 0x80($s1)
/* 1E1F9C 801F122C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E1FA0 801F1230 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E1FA4 801F1234 3C01800E */  lui   $at, 0x800e
/* 1E1FA8 801F1238 44803000 */  mtc1  $zero, $f6
/* 1E1FAC 801F123C 8E0B0000 */  lw    $t3, ($s0)
/* 1E1FB0 801F1240 2404002C */  li    $a0, 44
/* 1E1FB4 801F1244 000B6080 */  sll   $t4, $t3, 2
/* 1E1FB8 801F1248 002C0821 */  addu  $at, $at, $t4
/* 1E1FBC 801F124C E4204550 */  swc1  $f0, 0x4550($at)
/* 1E1FC0 801F1250 8E0D0000 */  lw    $t5, ($s0)
/* 1E1FC4 801F1254 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1E1FC8 801F1258 44812000 */  mtc1  $at, $f4
/* 1E1FCC 801F125C 3C01800E */  lui   $at, 0x800e
/* 1E1FD0 801F1260 000D7080 */  sll   $t6, $t5, 2
/* 1E1FD4 801F1264 002E0821 */  addu  $at, $at, $t6
/* 1E1FD8 801F1268 E4244710 */  swc1  $f4, 0x4710($at)
/* 1E1FDC 801F126C 8E180000 */  lw    $t8, ($s0)
/* 1E1FE0 801F1270 3C01800E */  lui   $at, 0x800e
/* 1E1FE4 801F1274 00187880 */  sll   $t7, $t8, 2
/* 1E1FE8 801F1278 002F0821 */  addu  $at, $at, $t7
/* 1E1FEC 801F127C E42048D0 */  swc1  $f0, 0x48d0($at)
/* 1E1FF0 801F1280 8E190000 */  lw    $t9, ($s0)
/* 1E1FF4 801F1284 3C01800E */  lui   $at, 0x800e
/* 1E1FF8 801F1288 00194880 */  sll   $t1, $t9, 2
/* 1E1FFC 801F128C 00290821 */  addu  $at, $at, $t1
/* 1E2000 801F1290 0C02BDE8 */  jal   func_800AF7A0
/* 1E2004 801F1294 E4262790 */   swc1  $f6, 0x2790($at)
/* 1E2008 801F1298 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 1E200C 801F129C 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 1E2010 801F12A0 00008025 */  move  $s0, $zero
.L801F12A4_ovl10:
/* 1E2014 801F12A4 24040029 */  li    $a0, 41
/* 1E2018 801F12A8 2405001E */  li    $a1, 30
/* 1E201C 801F12AC 0C02BB02 */  jal   request_track_general
/* 1E2020 801F12B0 24060050 */   li    $a2, 80
/* 1E2024 801F12B4 00021880 */  sll   $v1, $v0, 2
/* 1E2028 801F12B8 02234021 */  addu  $t0, $s1, $v1
/* 1E202C 801F12BC 3C01800F */  lui   $at, 0x800f
/* 1E2030 801F12C0 AD100000 */  sw    $s0, ($t0)
/* 1E2034 801F12C4 00230821 */  addu  $at, $at, $v1
/* 1E2038 801F12C8 26040001 */  addiu $a0, $s0, 1
/* 1E203C 801F12CC AC249AA0 */  sw    $a0, -0x6560($at)
/* 1E2040 801F12D0 28810003 */  slti  $at, $a0, 3
/* 1E2044 801F12D4 1420FFF3 */  bnez  $at, .L801F12A4_ovl10
/* 1E2048 801F12D8 00808025 */   move  $s0, $a0
/* 1E204C 801F12DC 8FA40020 */  lw    $a0, 0x20($sp)
/* 1E2050 801F12E0 24060014 */  li    $a2, 20
/* 1E2054 801F12E4 0C002A22 */  jal   func_8000A888_ovl10
/* 1E2058 801F12E8 9085000D */   lbu   $a1, 0xd($a0)
/* 1E205C 801F12EC 0C03E905 */  jal   func_800FA414
/* 1E2060 801F12F0 24040001 */   li    $a0, 1
/* 1E2064 801F12F4 3C05801F */  lui   $a1, %hi(D_801F4670) # $a1, 0x801f
/* 1E2068 801F12F8 24A54670 */  addiu $a1, %lo(D_801F4670) # addiu $a1, $a1, 0x4670
/* 1E206C 801F12FC 24040010 */  li    $a0, 16
/* 1E2070 801F1300 0C02CBD5 */  jal   func_800B2F54
/* 1E2074 801F1304 3C0642C8 */   lui   $a2, 0x42c8
/* 1E2078 801F1308 0C029C68 */  jal   func_800A71A0
/* 1E207C 801F130C 24040010 */   li    $a0, 16
/* 1E2080 801F1310 0C029BD0 */  jal   func_800A6F40
/* 1E2084 801F1314 24040010 */   li    $a0, 16
/* 1E2088 801F1318 C448003C */  lwc1  $f8, 0x3c($v0)
/* 1E208C 801F131C 3C10801F */  lui   $s0, %hi(D_801F4D88) # $s0, 0x801f
/* 1E2090 801F1320 26104D88 */  addiu $s0, %lo(D_801F4D88) # addiu $s0, $s0, 0x4d88
/* 1E2094 801F1324 24040010 */  li    $a0, 16
/* 1E2098 801F1328 0C029BD0 */  jal   func_800A6F40
/* 1E209C 801F132C E6080000 */   swc1  $f8, ($s0)
/* 1E20A0 801F1330 C44A0040 */  lwc1  $f10, 0x40($v0)
/* 1E20A4 801F1334 24040010 */  li    $a0, 16
/* 1E20A8 801F1338 0C029BD0 */  jal   func_800A6F40
/* 1E20AC 801F133C E60A0004 */   swc1  $f10, 4($s0)
/* 1E20B0 801F1340 C4500044 */  lwc1  $f16, 0x44($v0)
/* 1E20B4 801F1344 3C05801F */  lui   $a1, %hi(D_801F4670) # $a1, 0x801f
/* 1E20B8 801F1348 24A54670 */  addiu $a1, %lo(D_801F4670) # addiu $a1, $a1, 0x4670
/* 1E20BC 801F134C 24040010 */  li    $a0, 16
/* 1E20C0 801F1350 24060000 */  li    $a2, 0
/* 1E20C4 801F1354 0C02CBD5 */  jal   func_800B2F54
/* 1E20C8 801F1358 E6100008 */   swc1  $f16, 8($s0)
/* 1E20CC 801F135C 24040010 */  li    $a0, 16
/* 1E20D0 801F1360 0C02CC1C */  jal   func_800B3070
/* 1E20D4 801F1364 3C054000 */   lui   $a1, 0x4000
/* 1E20D8 801F1368 0C029C68 */  jal   func_800A71A0
/* 1E20DC 801F136C 24040010 */   li    $a0, 16
/* 1E20E0 801F1370 0C002DAF */  jal   finish_current_thread
/* 1E20E4 801F1374 24040001 */   li    $a0, 1
/* 1E20E8 801F1378 24100006 */  li    $s0, 6
/* 1E20EC 801F137C 2401000C */  li    $at, 12
.L801F1380_ovl10:
/* 1E20F0 801F1380 56010005 */  bnel  $s0, $at, .L801F1398_ovl10
/* 1E20F4 801F1384 24040029 */   li    $a0, 41
/* 1E20F8 801F1388 0C07C447 */  jal   func_801F111C_ovl10
/* 1E20FC 801F138C 00000000 */   nop   
/* 1E2100 801F1390 14400007 */  bnez  $v0, .L801F13B0_ovl10
/* 1E2104 801F1394 24040029 */   li    $a0, 41
.L801F1398_ovl10:
/* 1E2108 801F1398 2405001E */  li    $a1, 30
/* 1E210C 801F139C 0C02BB02 */  jal   request_track_general
/* 1E2110 801F13A0 24060050 */   li    $a2, 80
/* 1E2114 801F13A4 00025080 */  sll   $t2, $v0, 2
/* 1E2118 801F13A8 022A5821 */  addu  $t3, $s1, $t2
/* 1E211C 801F13AC AD700000 */  sw    $s0, ($t3)
.L801F13B0_ovl10:
/* 1E2120 801F13B0 26100001 */  addiu $s0, $s0, 1
/* 1E2124 801F13B4 2A01000D */  slti  $at, $s0, 0xd
/* 1E2128 801F13B8 5420FFF1 */  bnezl $at, .L801F1380_ovl10
/* 1E212C 801F13BC 2401000C */   li    $at, 12
/* 1E2130 801F13C0 00008025 */  move  $s0, $zero
.L801F13C4_ovl10:
/* 1E2134 801F13C4 0C029C68 */  jal   func_800A71A0
/* 1E2138 801F13C8 24040010 */   li    $a0, 16
/* 1E213C 801F13CC 0C002DAF */  jal   finish_current_thread
/* 1E2140 801F13D0 24040001 */   li    $a0, 1
/* 1E2144 801F13D4 26100001 */  addiu $s0, $s0, 1
/* 1E2148 801F13D8 24010023 */  li    $at, 35
/* 1E214C 801F13DC 1601FFF9 */  bne   $s0, $at, .L801F13C4_ovl10
/* 1E2150 801F13E0 00000000 */   nop   
/* 1E2154 801F13E4 3C0C800F */  lui   $t4, %hi(D_800E9C60) # $t4, 0x800f
/* 1E2158 801F13E8 8D8C9C60 */  lw    $t4, %lo(D_800E9C60)($t4)
/* 1E215C 801F13EC 24100005 */  li    $s0, 5
/* 1E2160 801F13F0 120C0007 */  beq   $s0, $t4, .L801F1410_ovl10
/* 1E2164 801F13F4 00000000 */   nop   
.L801F13F8_ovl10:
/* 1E2168 801F13F8 0C002DAF */  jal   finish_current_thread
/* 1E216C 801F13FC 24040001 */   li    $a0, 1
/* 1E2170 801F1400 3C0D800F */  lui   $t5, %hi(D_800E9C60) # $t5, 0x800f
/* 1E2174 801F1404 8DAD9C60 */  lw    $t5, %lo(D_800E9C60)($t5)
/* 1E2178 801F1408 160DFFFB */  bne   $s0, $t5, .L801F13F8_ovl10
/* 1E217C 801F140C 00000000 */   nop   
.L801F1410_ovl10:
/* 1E2180 801F1410 0C029C68 */  jal   func_800A71A0
/* 1E2184 801F1414 24040010 */   li    $a0, 16
/* 1E2188 801F1418 0C002DAF */  jal   finish_current_thread
/* 1E218C 801F141C 24040001 */   li    $a0, 1
/* 1E2190 801F1420 1000FFFB */  b     .L801F1410_ovl10
/* 1E2194 801F1424 00000000 */   nop   
/* 1E2198 801F1428 00000000 */  nop   
/* 1E219C 801F142C 00000000 */  nop   
/* 1E21A0 801F1430 00000000 */  nop   
/* 1E21A4 801F1434 00000000 */  nop   
/* 1E21A8 801F1438 00000000 */  nop   
/* 1E21AC 801F143C 00000000 */  nop   
/* 1E21B0 801F1440 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1E21B4 801F1444 8FB00014 */  lw    $s0, 0x14($sp)
/* 1E21B8 801F1448 8FB10018 */  lw    $s1, 0x18($sp)
/* 1E21BC 801F144C 03E00008 */  jr    $ra
/* 1E21C0 801F1450 27BD0020 */   addiu $sp, $sp, 0x20
.size func_801F11A8_ovl10, . - func_801F11A8_ovl10

glabel func_801F1454_ovl10
/* 1E21C4 801F1454 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E21C8 801F1458 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E21CC 801F145C AFA40000 */  sw    $a0, ($sp)
/* 1E21D0 801F1460 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1E21D4 801F1464 8C430000 */  lw    $v1, ($v0)
/* 1E21D8 801F1468 44812000 */  mtc1  $at, $f4
/* 1E21DC 801F146C 3C01800E */  lui   $at, 0x800e
/* 1E21E0 801F1470 00031880 */  sll   $v1, $v1, 2
/* 1E21E4 801F1474 00230821 */  addu  $at, $at, $v1
/* 1E21E8 801F1478 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 1E21EC 801F147C 3C01801F */  lui   $at, 0x801f
/* 1E21F0 801F1480 46062032 */  c.eq.s $f4, $f6
/* 1E21F4 801F1484 00000000 */  nop   
/* 1E21F8 801F1488 45000004 */  bc1f  .L801F149C_ovl10
/* 1E21FC 801F148C 00000000 */   nop   
/* 1E2200 801F1490 3C01801F */  lui   $at, %hi(D_801F4C9C) # $at, 0x801f
/* 1E2204 801F1494 10000002 */  b     .L801F14A0_ovl10
/* 1E2208 801F1498 C4204C98 */   lwc1  $f0, %lo(D_801F4C98)($at)
.L801F149C_ovl10:
/* 1E220C 801F149C C4204C9C */  lwc1  $f0, %lo(D_801F4C9C)($at)
.L801F14A0_ovl10:
/* 1E2210 801F14A0 3C01801F */  lui   $at, %hi(D_801F4CA0) # $at, 0x801f
/* 1E2214 801F14A4 C42C4CA0 */  lwc1  $f12, %lo(D_801F4CA0)($at)
/* 1E2218 801F14A8 3C01800E */  lui   $at, 0x800e
/* 1E221C 801F14AC 00230821 */  addu  $at, $at, $v1
/* 1E2220 801F14B0 C42817D0 */  lwc1  $f8, 0x17d0($at)
/* 1E2224 801F14B4 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 1E2228 801F14B8 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 1E222C 801F14BC 46080280 */  add.s $f10, $f0, $f8
/* 1E2230 801F14C0 00A37021 */  addu  $t6, $a1, $v1
/* 1E2234 801F14C4 44800000 */  mtc1  $zero, $f0
/* 1E2238 801F14C8 E5CA0000 */  swc1  $f10, ($t6)
/* 1E223C 801F14CC 8C4F0000 */  lw    $t7, ($v0)
/* 1E2240 801F14D0 000FC080 */  sll   $t8, $t7, 2
/* 1E2244 801F14D4 00B82021 */  addu  $a0, $a1, $t8
/* 1E2248 801F14D8 C4820000 */  lwc1  $f2, ($a0)
/* 1E224C 801F14DC 4602603E */  c.le.s $f12, $f2
/* 1E2250 801F14E0 00000000 */  nop   
/* 1E2254 801F14E4 4502000C */  bc1fl .L801F1518_ovl10
/* 1E2258 801F14E8 4600103C */   c.lt.s $f2, $f0
/* 1E225C 801F14EC 460C1401 */  sub.s $f16, $f2, $f12
.L801F14F0_ovl10:
/* 1E2260 801F14F0 E4900000 */  swc1  $f16, ($a0)
/* 1E2264 801F14F4 8C590000 */  lw    $t9, ($v0)
/* 1E2268 801F14F8 00194080 */  sll   $t0, $t9, 2
/* 1E226C 801F14FC 00A82021 */  addu  $a0, $a1, $t0
/* 1E2270 801F1500 C4820000 */  lwc1  $f2, ($a0)
/* 1E2274 801F1504 4602603E */  c.le.s $f12, $f2
/* 1E2278 801F1508 00000000 */  nop   
/* 1E227C 801F150C 4503FFF8 */  bc1tl .L801F14F0_ovl10
/* 1E2280 801F1510 460C1401 */   sub.s $f16, $f2, $f12
/* 1E2284 801F1514 4600103C */  c.lt.s $f2, $f0
.L801F1518_ovl10:
/* 1E2288 801F1518 00000000 */  nop   
/* 1E228C 801F151C 4500000B */  bc1f  .L801F154C_ovl10
/* 1E2290 801F1520 00000000 */   nop   
/* 1E2294 801F1524 460C1480 */  add.s $f18, $f2, $f12
.L801F1528_ovl10:
/* 1E2298 801F1528 E4920000 */  swc1  $f18, ($a0)
/* 1E229C 801F152C 8C490000 */  lw    $t1, ($v0)
/* 1E22A0 801F1530 00095080 */  sll   $t2, $t1, 2
/* 1E22A4 801F1534 00AA2021 */  addu  $a0, $a1, $t2
/* 1E22A8 801F1538 C4820000 */  lwc1  $f2, ($a0)
/* 1E22AC 801F153C 4600103C */  c.lt.s $f2, $f0
/* 1E22B0 801F1540 00000000 */  nop   
/* 1E22B4 801F1544 4503FFF8 */  bc1tl .L801F1528_ovl10
/* 1E22B8 801F1548 460C1480 */   add.s $f18, $f2, $f12
.L801F154C_ovl10:
/* 1E22BC 801F154C 03E00008 */  jr    $ra
/* 1E22C0 801F1550 00000000 */   nop   
.size func_801F1454_ovl10, . - func_801F1454_ovl10

glabel func_801F1554_ovl10
/* 1E22C4 801F1554 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1E22C8 801F1558 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1E22CC 801F155C AFB10018 */  sw    $s1, 0x18($sp)
/* 1E22D0 801F1560 AFB00014 */  sw    $s0, 0x14($sp)
/* 1E22D4 801F1564 10A00009 */  beqz  $a1, .L801F158C_ovl10
/* 1E22D8 801F1568 AFA40040 */   sw    $a0, 0x40($sp)
/* 1E22DC 801F156C 24010001 */  li    $at, 1
/* 1E22E0 801F1570 10A10043 */  beq   $a1, $at, .L801F1680_ovl10
/* 1E22E4 801F1574 3C11801F */   lui   $s1, 0x801f
/* 1E22E8 801F1578 24010002 */  li    $at, 2
/* 1E22EC 801F157C 10A1007C */  beq   $a1, $at, .L801F1770_ovl10
/* 1E22F0 801F1580 3C11801F */   lui   $s1, 0x801f
/* 1E22F4 801F1584 100000B6 */  b     .L801F1860_ovl10
/* 1E22F8 801F1588 8FBF001C */   lw    $ra, 0x1c($sp)
.L801F158C_ovl10:
/* 1E22FC 801F158C 3C11801F */  lui   $s1, %hi(D_801F4D60) # $s1, 0x801f
/* 1E2300 801F1590 8E314D60 */  lw    $s1, %lo(D_801F4D60)($s1)
/* 1E2304 801F1594 3C0F800E */  lui   $t7, 0x800e
/* 1E2308 801F1598 27A40034 */  addiu $a0, $sp, 0x34
/* 1E230C 801F159C 00117080 */  sll   $t6, $s1, 2
/* 1E2310 801F15A0 01EE7821 */  addu  $t7, $t7, $t6
/* 1E2314 801F15A4 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1E2318 801F15A8 02203025 */  move  $a2, $s1
/* 1E231C 801F15AC 0C02C8D0 */  jal   func_800B2340
/* 1E2320 801F15B0 8DE50004 */   lw    $a1, 4($t7)
/* 1E2324 801F15B4 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E2328 801F15B8 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E232C 801F15BC C7A40034 */  lwc1  $f4, 0x34($sp)
/* 1E2330 801F15C0 3C01800E */  lui   $at, 0x800e
/* 1E2334 801F15C4 8E180000 */  lw    $t8, ($s0)
/* 1E2338 801F15C8 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 1E233C 801F15CC 3C11801F */  lui   $s1, %hi(D_801F4D60) # $s1, 0x801f
/* 1E2340 801F15D0 0018C880 */  sll   $t9, $t8, 2
/* 1E2344 801F15D4 00390821 */  addu  $at, $at, $t9
/* 1E2348 801F15D8 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 1E234C 801F15DC 8E080000 */  lw    $t0, ($s0)
/* 1E2350 801F15E0 3C01800E */  lui   $at, 0x800e
/* 1E2354 801F15E4 8E314D60 */  lw    $s1, %lo(D_801F4D60)($s1)
/* 1E2358 801F15E8 00084880 */  sll   $t1, $t0, 2
/* 1E235C 801F15EC 00290821 */  addu  $at, $at, $t1
/* 1E2360 801F15F0 E4262790 */  swc1  $f6, 0x2790($at)
/* 1E2364 801F15F4 8E0A0000 */  lw    $t2, ($s0)
/* 1E2368 801F15F8 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 1E236C 801F15FC 3C0D800E */  lui   $t5, 0x800e
/* 1E2370 801F1600 00116080 */  sll   $t4, $s1, 2
/* 1E2374 801F1604 3C01800E */  lui   $at, 0x800e
/* 1E2378 801F1608 01AC6821 */  addu  $t5, $t5, $t4
/* 1E237C 801F160C 000A5880 */  sll   $t3, $t2, 2
/* 1E2380 801F1610 8DADFBD0 */  lw    $t5, -0x430($t5)
/* 1E2384 801F1614 002B0821 */  addu  $at, $at, $t3
/* 1E2388 801F1618 E4282950 */  swc1  $f8, 0x2950($at)
/* 1E238C 801F161C 27A40028 */  addiu $a0, $sp, 0x28
/* 1E2390 801F1620 02203025 */  move  $a2, $s1
/* 1E2394 801F1624 0C02C9B6 */  jal   func_800B26D8
/* 1E2398 801F1628 8DA50004 */   lw    $a1, 4($t5)
/* 1E239C 801F162C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E23A0 801F1630 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E23A4 801F1634 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 1E23A8 801F1638 3C01800E */  lui   $at, 0x800e
/* 1E23AC 801F163C 8E0E0000 */  lw    $t6, ($s0)
/* 1E23B0 801F1640 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 1E23B4 801F1644 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 1E23B8 801F1648 000E7880 */  sll   $t7, $t6, 2
/* 1E23BC 801F164C 002F0821 */  addu  $at, $at, $t7
/* 1E23C0 801F1650 E42A4010 */  swc1  $f10, 0x4010($at)
/* 1E23C4 801F1654 8E180000 */  lw    $t8, ($s0)
/* 1E23C8 801F1658 3C01800E */  lui   $at, 0x800e
/* 1E23CC 801F165C 0018C880 */  sll   $t9, $t8, 2
/* 1E23D0 801F1660 00390821 */  addu  $at, $at, $t9
/* 1E23D4 801F1664 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 1E23D8 801F1668 8E080000 */  lw    $t0, ($s0)
/* 1E23DC 801F166C 3C01800E */  lui   $at, 0x800e
/* 1E23E0 801F1670 00084880 */  sll   $t1, $t0, 2
/* 1E23E4 801F1674 00290821 */  addu  $at, $at, $t1
/* 1E23E8 801F1678 10000078 */  b     .L801F185C_ovl10
/* 1E23EC 801F167C E4324390 */   swc1  $f18, 0x4390($at)
.L801F1680_ovl10:
/* 1E23F0 801F1680 8E314D60 */  lw    $s1, 0x4d60($s1)
/* 1E23F4 801F1684 3C0B800E */  lui   $t3, 0x800e
/* 1E23F8 801F1688 27A40034 */  addiu $a0, $sp, 0x34
/* 1E23FC 801F168C 00115080 */  sll   $t2, $s1, 2
/* 1E2400 801F1690 016A5821 */  addu  $t3, $t3, $t2
/* 1E2404 801F1694 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 1E2408 801F1698 02203025 */  move  $a2, $s1
/* 1E240C 801F169C 0C02C8D0 */  jal   func_800B2340
/* 1E2410 801F16A0 8D650008 */   lw    $a1, 8($t3)
/* 1E2414 801F16A4 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E2418 801F16A8 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E241C 801F16AC C7A40034 */  lwc1  $f4, 0x34($sp)
/* 1E2420 801F16B0 3C01800E */  lui   $at, 0x800e
/* 1E2424 801F16B4 8E0C0000 */  lw    $t4, ($s0)
/* 1E2428 801F16B8 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 1E242C 801F16BC 3C11801F */  lui   $s1, %hi(D_801F4D60) # $s1, 0x801f
/* 1E2430 801F16C0 000C6880 */  sll   $t5, $t4, 2
/* 1E2434 801F16C4 002D0821 */  addu  $at, $at, $t5
/* 1E2438 801F16C8 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 1E243C 801F16CC 8E0E0000 */  lw    $t6, ($s0)
/* 1E2440 801F16D0 3C01800E */  lui   $at, 0x800e
/* 1E2444 801F16D4 8E314D60 */  lw    $s1, %lo(D_801F4D60)($s1)
/* 1E2448 801F16D8 000E7880 */  sll   $t7, $t6, 2
/* 1E244C 801F16DC 002F0821 */  addu  $at, $at, $t7
/* 1E2450 801F16E0 E4262790 */  swc1  $f6, 0x2790($at)
/* 1E2454 801F16E4 8E180000 */  lw    $t8, ($s0)
/* 1E2458 801F16E8 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 1E245C 801F16EC 3C09800E */  lui   $t1, 0x800e
/* 1E2460 801F16F0 00114080 */  sll   $t0, $s1, 2
/* 1E2464 801F16F4 3C01800E */  lui   $at, 0x800e
/* 1E2468 801F16F8 01284821 */  addu  $t1, $t1, $t0
/* 1E246C 801F16FC 0018C880 */  sll   $t9, $t8, 2
/* 1E2470 801F1700 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 1E2474 801F1704 00390821 */  addu  $at, $at, $t9
/* 1E2478 801F1708 E4282950 */  swc1  $f8, 0x2950($at)
/* 1E247C 801F170C 27A40028 */  addiu $a0, $sp, 0x28
/* 1E2480 801F1710 02203025 */  move  $a2, $s1
/* 1E2484 801F1714 0C02C9B6 */  jal   func_800B26D8
/* 1E2488 801F1718 8D250008 */   lw    $a1, 8($t1)
/* 1E248C 801F171C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E2490 801F1720 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E2494 801F1724 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 1E2498 801F1728 3C01800E */  lui   $at, 0x800e
/* 1E249C 801F172C 8E0A0000 */  lw    $t2, ($s0)
/* 1E24A0 801F1730 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 1E24A4 801F1734 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 1E24A8 801F1738 000A5880 */  sll   $t3, $t2, 2
/* 1E24AC 801F173C 002B0821 */  addu  $at, $at, $t3
/* 1E24B0 801F1740 E42A4010 */  swc1  $f10, 0x4010($at)
/* 1E24B4 801F1744 8E0C0000 */  lw    $t4, ($s0)
/* 1E24B8 801F1748 3C01800E */  lui   $at, 0x800e
/* 1E24BC 801F174C 000C6880 */  sll   $t5, $t4, 2
/* 1E24C0 801F1750 002D0821 */  addu  $at, $at, $t5
/* 1E24C4 801F1754 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 1E24C8 801F1758 8E0E0000 */  lw    $t6, ($s0)
/* 1E24CC 801F175C 3C01800E */  lui   $at, 0x800e
/* 1E24D0 801F1760 000E7880 */  sll   $t7, $t6, 2
/* 1E24D4 801F1764 002F0821 */  addu  $at, $at, $t7
/* 1E24D8 801F1768 1000003C */  b     .L801F185C_ovl10
/* 1E24DC 801F176C E4324390 */   swc1  $f18, 0x4390($at)
.L801F1770_ovl10:
/* 1E24E0 801F1770 8E314D60 */  lw    $s1, 0x4d60($s1)
/* 1E24E4 801F1774 3C19800E */  lui   $t9, 0x800e
/* 1E24E8 801F1778 27A40034 */  addiu $a0, $sp, 0x34
/* 1E24EC 801F177C 0011C080 */  sll   $t8, $s1, 2
/* 1E24F0 801F1780 0338C821 */  addu  $t9, $t9, $t8
/* 1E24F4 801F1784 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 1E24F8 801F1788 02203025 */  move  $a2, $s1
/* 1E24FC 801F178C 0C02C8D0 */  jal   func_800B2340
/* 1E2500 801F1790 8F25000C */   lw    $a1, 0xc($t9)
/* 1E2504 801F1794 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E2508 801F1798 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E250C 801F179C C7A40034 */  lwc1  $f4, 0x34($sp)
/* 1E2510 801F17A0 3C01800E */  lui   $at, 0x800e
/* 1E2514 801F17A4 8E080000 */  lw    $t0, ($s0)
/* 1E2518 801F17A8 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 1E251C 801F17AC 3C11801F */  lui   $s1, %hi(D_801F4D60) # $s1, 0x801f
/* 1E2520 801F17B0 00084880 */  sll   $t1, $t0, 2
/* 1E2524 801F17B4 00290821 */  addu  $at, $at, $t1
/* 1E2528 801F17B8 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 1E252C 801F17BC 8E0A0000 */  lw    $t2, ($s0)
/* 1E2530 801F17C0 3C01800E */  lui   $at, 0x800e
/* 1E2534 801F17C4 8E314D60 */  lw    $s1, %lo(D_801F4D60)($s1)
/* 1E2538 801F17C8 000A5880 */  sll   $t3, $t2, 2
/* 1E253C 801F17CC 002B0821 */  addu  $at, $at, $t3
/* 1E2540 801F17D0 E4262790 */  swc1  $f6, 0x2790($at)
/* 1E2544 801F17D4 8E0C0000 */  lw    $t4, ($s0)
/* 1E2548 801F17D8 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 1E254C 801F17DC 3C0F800E */  lui   $t7, 0x800e
/* 1E2550 801F17E0 00117080 */  sll   $t6, $s1, 2
/* 1E2554 801F17E4 3C01800E */  lui   $at, 0x800e
/* 1E2558 801F17E8 01EE7821 */  addu  $t7, $t7, $t6
/* 1E255C 801F17EC 000C6880 */  sll   $t5, $t4, 2
/* 1E2560 801F17F0 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1E2564 801F17F4 002D0821 */  addu  $at, $at, $t5
/* 1E2568 801F17F8 E4282950 */  swc1  $f8, 0x2950($at)
/* 1E256C 801F17FC 27A40028 */  addiu $a0, $sp, 0x28
/* 1E2570 801F1800 02203025 */  move  $a2, $s1
/* 1E2574 801F1804 0C02C9B6 */  jal   func_800B26D8
/* 1E2578 801F1808 8DE5000C */   lw    $a1, 0xc($t7)
/* 1E257C 801F180C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1E2580 801F1810 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 1E2584 801F1814 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 1E2588 801F1818 3C01800E */  lui   $at, 0x800e
/* 1E258C 801F181C 8E180000 */  lw    $t8, ($s0)
/* 1E2590 801F1820 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 1E2594 801F1824 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 1E2598 801F1828 0018C880 */  sll   $t9, $t8, 2
/* 1E259C 801F182C 00390821 */  addu  $at, $at, $t9
/* 1E25A0 801F1830 E42A4010 */  swc1  $f10, 0x4010($at)
/* 1E25A4 801F1834 8E080000 */  lw    $t0, ($s0)
/* 1E25A8 801F1838 3C01800E */  lui   $at, 0x800e
/* 1E25AC 801F183C 00084880 */  sll   $t1, $t0, 2
/* 1E25B0 801F1840 00290821 */  addu  $at, $at, $t1
/* 1E25B4 801F1844 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 1E25B8 801F1848 8E0A0000 */  lw    $t2, ($s0)
/* 1E25BC 801F184C 3C01800E */  lui   $at, 0x800e
/* 1E25C0 801F1850 000A5880 */  sll   $t3, $t2, 2
/* 1E25C4 801F1854 002B0821 */  addu  $at, $at, $t3
/* 1E25C8 801F1858 E4324390 */  swc1  $f18, 0x4390($at)
.L801F185C_ovl10:
/* 1E25CC 801F185C 8FBF001C */  lw    $ra, 0x1c($sp)
.L801F1860_ovl10:
/* 1E25D0 801F1860 8FB00014 */  lw    $s0, 0x14($sp)
/* 1E25D4 801F1864 8FB10018 */  lw    $s1, 0x18($sp)
/* 1E25D8 801F1868 03E00008 */  jr    $ra
/* 1E25DC 801F186C 27BD0040 */   addiu $sp, $sp, 0x40
.size func_801F1554_ovl10, . - func_801F1554_ovl10

glabel func_801F1870_ovl10
/* 1E25E0 801F1870 3C0E800D */  lui   $t6, %hi(D_800D6B98) # $t6, 0x800d
/* 1E25E4 801F1874 8DCE6B98 */  lw    $t6, %lo(D_800D6B98)($t6)
/* 1E25E8 801F1878 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E25EC 801F187C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E25F0 801F1880 11C00003 */  beqz  $t6, .L801F1890_ovl10
/* 1E25F4 801F1884 00002025 */   move  $a0, $zero
/* 1E25F8 801F1888 10000026 */  b     .L801F1924_ovl10
/* 1E25FC 801F188C 24020004 */   li    $v0, 4
.L801F1890_ovl10:
/* 1E2600 801F1890 0C07C677 */  jal   func_801F19DC_ovl10
/* 1E2604 801F1894 24050002 */   li    $a1, 2
/* 1E2608 801F1898 24010002 */  li    $at, 2
/* 1E260C 801F189C 14410003 */  bne   $v0, $at, .L801F18AC_ovl10
/* 1E2610 801F18A0 00002025 */   move  $a0, $zero
/* 1E2614 801F18A4 1000001F */  b     .L801F1924_ovl10
/* 1E2618 801F18A8 24020004 */   li    $v0, 4
.L801F18AC_ovl10:
/* 1E261C 801F18AC 0C07C677 */  jal   func_801F19DC_ovl10
/* 1E2620 801F18B0 24050001 */   li    $a1, 1
/* 1E2624 801F18B4 24010002 */  li    $at, 2
/* 1E2628 801F18B8 14410007 */  bne   $v0, $at, .L801F18D8_ovl10
/* 1E262C 801F18BC 3C0F800D */   lui   $t7, %hi(D_800D6B9C) # $t7, 0x800d
/* 1E2630 801F18C0 8DEF6B9C */  lw    $t7, %lo(D_800D6B9C)($t7)
/* 1E2634 801F18C4 29E10002 */  slti  $at, $t7, 2
/* 1E2638 801F18C8 54200004 */  bnezl $at, .L801F18DC_ovl10
/* 1E263C 801F18CC 00002025 */   move  $a0, $zero
/* 1E2640 801F18D0 10000014 */  b     .L801F1924_ovl10
/* 1E2644 801F18D4 24020004 */   li    $v0, 4
.L801F18D8_ovl10:
/* 1E2648 801F18D8 00002025 */  move  $a0, $zero
.L801F18DC_ovl10:
/* 1E264C 801F18DC 0C07C677 */  jal   func_801F19DC_ovl10
/* 1E2650 801F18E0 24050001 */   li    $a1, 1
/* 1E2654 801F18E4 24010002 */  li    $at, 2
/* 1E2658 801F18E8 14410003 */  bne   $v0, $at, .L801F18F8_ovl10
/* 1E265C 801F18EC 00002025 */   move  $a0, $zero
/* 1E2660 801F18F0 1000000C */  b     .L801F1924_ovl10
/* 1E2664 801F18F4 24020003 */   li    $v0, 3
.L801F18F8_ovl10:
/* 1E2668 801F18F8 0C07C677 */  jal   func_801F19DC_ovl10
/* 1E266C 801F18FC 00002825 */   move  $a1, $zero
/* 1E2670 801F1900 24010002 */  li    $at, 2
/* 1E2674 801F1904 14410006 */  bne   $v0, $at, .L801F1920_ovl10
/* 1E2678 801F1908 3C18800D */   lui   $t8, %hi(D_800D6B9C) # $t8, 0x800d
/* 1E267C 801F190C 8F186B9C */  lw    $t8, %lo(D_800D6B9C)($t8)
/* 1E2680 801F1910 5B000004 */  blezl $t8, .L801F1924_ovl10
/* 1E2684 801F1914 24020002 */   li    $v0, 2
/* 1E2688 801F1918 10000002 */  b     .L801F1924_ovl10
/* 1E268C 801F191C 24020003 */   li    $v0, 3
.L801F1920_ovl10:
/* 1E2690 801F1920 24020002 */  li    $v0, 2
.L801F1924_ovl10:
/* 1E2694 801F1924 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E2698 801F1928 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E269C 801F192C 03E00008 */  jr    $ra
/* 1E26A0 801F1930 00000000 */   nop   
.size func_801F1870_ovl10, . - func_801F1870_ovl10

glabel func_801F1934_ovl10
/* 1E26A4 801F1934 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E26A8 801F1938 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E26AC 801F193C 0C07C61C */  jal   func_801F1870_ovl10
/* 1E26B0 801F1940 AFA40018 */   sw    $a0, 0x18($sp)
/* 1E26B4 801F1944 24030001 */  li    $v1, 1
/* 1E26B8 801F1948 1043000A */  beq   $v0, $v1, .L801F1974_ovl10
/* 1E26BC 801F194C 8FA40018 */   lw    $a0, 0x18($sp)
/* 1E26C0 801F1950 24050002 */  li    $a1, 2
/* 1E26C4 801F1954 1045000D */  beq   $v0, $a1, .L801F198C_ovl10
/* 1E26C8 801F1958 24010003 */   li    $at, 3
/* 1E26CC 801F195C 10410013 */  beq   $v0, $at, .L801F19AC_ovl10
/* 1E26D0 801F1960 24010004 */   li    $at, 4
/* 1E26D4 801F1964 10410017 */  beq   $v0, $at, .L801F19C4_ovl10
/* 1E26D8 801F1968 00000000 */   nop   
/* 1E26DC 801F196C 10000017 */  b     .L801F19CC_ovl10
/* 1E26E0 801F1970 00001025 */   move  $v0, $zero
.L801F1974_ovl10:
/* 1E26E4 801F1974 14800003 */  bnez  $a0, .L801F1984_ovl10
/* 1E26E8 801F1978 00000000 */   nop   
/* 1E26EC 801F197C 10000013 */  b     .L801F19CC_ovl10
/* 1E26F0 801F1980 24020001 */   li    $v0, 1
.L801F1984_ovl10:
/* 1E26F4 801F1984 10000011 */  b     .L801F19CC_ovl10
/* 1E26F8 801F1988 00001025 */   move  $v0, $zero
.L801F198C_ovl10:
/* 1E26FC 801F198C 10800003 */  beqz  $a0, .L801F199C_ovl10
/* 1E2700 801F1990 00000000 */   nop   
/* 1E2704 801F1994 14850003 */  bne   $a0, $a1, .L801F19A4_ovl10
/* 1E2708 801F1998 00000000 */   nop   
.L801F199C_ovl10:
/* 1E270C 801F199C 1000000B */  b     .L801F19CC_ovl10
/* 1E2710 801F19A0 24020001 */   li    $v0, 1
.L801F19A4_ovl10:
/* 1E2714 801F19A4 10000009 */  b     .L801F19CC_ovl10
/* 1E2718 801F19A8 00001025 */   move  $v0, $zero
.L801F19AC_ovl10:
/* 1E271C 801F19AC 10830003 */  beq   $a0, $v1, .L801F19BC_ovl10
/* 1E2720 801F19B0 00000000 */   nop   
/* 1E2724 801F19B4 10000005 */  b     .L801F19CC_ovl10
/* 1E2728 801F19B8 24020001 */   li    $v0, 1
.L801F19BC_ovl10:
/* 1E272C 801F19BC 10000003 */  b     .L801F19CC_ovl10
/* 1E2730 801F19C0 00001025 */   move  $v0, $zero
.L801F19C4_ovl10:
/* 1E2734 801F19C4 10000001 */  b     .L801F19CC_ovl10
/* 1E2738 801F19C8 24020001 */   li    $v0, 1
.L801F19CC_ovl10:
/* 1E273C 801F19CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E2740 801F19D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E2744 801F19D4 03E00008 */  jr    $ra
/* 1E2748 801F19D8 00000000 */   nop   
.size func_801F1934_ovl10, . - func_801F1934_ovl10

glabel func_801F19DC_ovl10
/* 1E274C 801F19DC 00047080 */  sll   $t6, $a0, 2
/* 1E2750 801F19E0 3C0F800C */  lui   $t7, 0x800c
/* 1E2754 801F19E4 01EE7821 */  addu  $t7, $t7, $t6
/* 1E2758 801F19E8 8DEFE560 */  lw    $t7, -0x1aa0($t7)
/* 1E275C 801F19EC 0004C080 */  sll   $t8, $a0, 2
/* 1E2760 801F19F0 0304C023 */  subu  $t8, $t8, $a0
/* 1E2764 801F19F4 00AF082B */  sltu  $at, $a1, $t7
/* 1E2768 801F19F8 14200003 */  bnez  $at, .L801F1A08_ovl10
/* 1E276C 801F19FC 0018C040 */   sll   $t8, $t8, 1
/* 1E2770 801F1A00 03E00008 */  jr    $ra
/* 1E2774 801F1A04 00001025 */   move  $v0, $zero

.L801F1A08_ovl10:
/* 1E2778 801F1A08 0305C821 */  addu  $t9, $t8, $a1
/* 1E277C 801F1A0C 3C02800D */  lui   $v0, 0x800d
/* 1E2780 801F1A10 00591021 */  addu  $v0, $v0, $t9
/* 1E2784 801F1A14 90426BE0 */  lbu   $v0, 0x6be0($v0)
/* 1E2788 801F1A18 30420003 */  andi  $v0, $v0, 3
/* 1E278C 801F1A1C 03E00008 */  jr    $ra
/* 1E2790 801F1A20 00000000 */   nop   
.size func_801F19DC_ovl10, . - func_801F19DC_ovl10

glabel func_801F1A24_ovl10
/* 1E2794 801F1A24 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1E2798 801F1A28 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1E279C 801F1A2C AFB00018 */  sw    $s0, 0x18($sp)
/* 1E27A0 801F1A30 AFA40038 */  sw    $a0, 0x38($sp)
/* 1E27A4 801F1A34 00C08025 */  move  $s0, $a2
/* 1E27A8 801F1A38 AFA5003C */  sw    $a1, 0x3c($sp)
/* 1E27AC 801F1A3C 0C07C64D */  jal   func_801F1934_ovl10
/* 1E27B0 801F1A40 00C02025 */   move  $a0, $a2
/* 1E27B4 801F1A44 14400004 */  bnez  $v0, .L801F1A58_ovl10
/* 1E27B8 801F1A48 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E27BC 801F1A4C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E27C0 801F1A50 0C02C640 */  jal   func_800B1900
/* 1E27C4 801F1A54 95C40002 */   lhu   $a0, 2($t6)
.L801F1A58_ovl10:
/* 1E27C8 801F1A58 24010001 */  li    $at, 1
/* 1E27CC 801F1A5C 12010009 */  beq   $s0, $at, .L801F1A84_ovl10
/* 1E27D0 801F1A60 00107880 */   sll   $t7, $s0, 2
/* 1E27D4 801F1A64 24010002 */  li    $at, 2
/* 1E27D8 801F1A68 1201001F */  beq   $s0, $at, .L801F1AE8_ovl10
/* 1E27DC 801F1A6C 00106080 */   sll   $t4, $s0, 2
/* 1E27E0 801F1A70 24010003 */  li    $at, 3
/* 1E27E4 801F1A74 12010035 */  beq   $s0, $at, .L801F1B4C_ovl10
/* 1E27E8 801F1A78 00104880 */   sll   $t1, $s0, 2
/* 1E27EC 801F1A7C 1000004B */  b     .L801F1BAC_ovl10
/* 1E27F0 801F1A80 00000000 */   nop   
.L801F1A84_ovl10:
/* 1E27F4 801F1A84 3C04801F */  lui   $a0, 0x801f
/* 1E27F8 801F1A88 008F2021 */  addu  $a0, $a0, $t7
/* 1E27FC 801F1A8C 8C8448F4 */  lw    $a0, 0x48f4($a0)
/* 1E2800 801F1A90 2405002C */  li    $a1, 44
/* 1E2804 801F1A94 0C02A619 */  jal   func_800A9864
/* 1E2808 801F1A98 24060010 */   li    $a2, 16
/* 1E280C 801F1A9C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1E2810 801F1AA0 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1E2814 801F1AA4 3C18801F */  lui   $t8, %hi(D_801F4884) # $t8, 0x801f
/* 1E2818 801F1AA8 3C01800E */  lui   $at, 0x800e
/* 1E281C 801F1AAC 8F280000 */  lw    $t0, ($t9)
/* 1E2820 801F1AB0 27184884 */  addiu $t8, %lo(D_801F4884) # addiu $t8, $t8, 0x4884
/* 1E2824 801F1AB4 24040029 */  li    $a0, 41
/* 1E2828 801F1AB8 00084880 */  sll   $t1, $t0, 2
/* 1E282C 801F1ABC 00290821 */  addu  $at, $at, $t1
/* 1E2830 801F1AC0 AC380490 */  sw    $t8, 0x0490($at)
/* 1E2834 801F1AC4 2405001E */  li    $a1, 30
/* 1E2838 801F1AC8 0C02BB02 */  jal   request_track_general
/* 1E283C 801F1ACC 24060050 */   li    $a2, 80
/* 1E2840 801F1AD0 00025880 */  sll   $t3, $v0, 2
/* 1E2844 801F1AD4 3C01800F */  lui   $at, 0x800f
/* 1E2848 801F1AD8 002B0821 */  addu  $at, $at, $t3
/* 1E284C 801F1ADC 240A0003 */  li    $t2, 3
/* 1E2850 801F1AE0 10000032 */  b     .L801F1BAC_ovl10
/* 1E2854 801F1AE4 AC2A98E0 */   sw    $t2, -0x6720($at)
.L801F1AE8_ovl10:
/* 1E2858 801F1AE8 3C04801F */  lui   $a0, 0x801f
/* 1E285C 801F1AEC 008C2021 */  addu  $a0, $a0, $t4
/* 1E2860 801F1AF0 8C8448F4 */  lw    $a0, 0x48f4($a0)
/* 1E2864 801F1AF4 2405002C */  li    $a1, 44
/* 1E2868 801F1AF8 0C02A619 */  jal   func_800A9864
/* 1E286C 801F1AFC 24060010 */   li    $a2, 16
/* 1E2870 801F1B00 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E2874 801F1B04 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E2878 801F1B08 3C0D801F */  lui   $t5, %hi(D_801F48D8) # $t5, 0x801f
/* 1E287C 801F1B0C 3C01800E */  lui   $at, 0x800e
/* 1E2880 801F1B10 8DCF0000 */  lw    $t7, ($t6)
/* 1E2884 801F1B14 25AD48D8 */  addiu $t5, %lo(D_801F48D8) # addiu $t5, $t5, 0x48d8
/* 1E2888 801F1B18 24040029 */  li    $a0, 41
/* 1E288C 801F1B1C 000FC880 */  sll   $t9, $t7, 2
/* 1E2890 801F1B20 00390821 */  addu  $at, $at, $t9
/* 1E2894 801F1B24 AC2D0490 */  sw    $t5, 0x0490($at)
/* 1E2898 801F1B28 2405001E */  li    $a1, 30
/* 1E289C 801F1B2C 0C02BB02 */  jal   request_track_general
/* 1E28A0 801F1B30 24060050 */   li    $a2, 80
/* 1E28A4 801F1B34 0002C080 */  sll   $t8, $v0, 2
/* 1E28A8 801F1B38 3C01800F */  lui   $at, 0x800f
/* 1E28AC 801F1B3C 00380821 */  addu  $at, $at, $t8
/* 1E28B0 801F1B40 24080004 */  li    $t0, 4
/* 1E28B4 801F1B44 10000019 */  b     .L801F1BAC_ovl10
/* 1E28B8 801F1B48 AC2898E0 */   sw    $t0, -0x6720($at)
.L801F1B4C_ovl10:
/* 1E28BC 801F1B4C 3C04801F */  lui   $a0, 0x801f
/* 1E28C0 801F1B50 00892021 */  addu  $a0, $a0, $t1
/* 1E28C4 801F1B54 8C8448F4 */  lw    $a0, 0x48f4($a0)
/* 1E28C8 801F1B58 2405002C */  li    $a1, 44
/* 1E28CC 801F1B5C 0C02A619 */  jal   func_800A9864
/* 1E28D0 801F1B60 24060010 */   li    $a2, 16
/* 1E28D4 801F1B64 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 1E28D8 801F1B68 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 1E28DC 801F1B6C 3C0A801F */  lui   $t2, %hi(D_801F48BC) # $t2, 0x801f
/* 1E28E0 801F1B70 3C01800E */  lui   $at, 0x800e
/* 1E28E4 801F1B74 8D6C0000 */  lw    $t4, ($t3)
/* 1E28E8 801F1B78 254A48BC */  addiu $t2, %lo(D_801F48BC) # addiu $t2, $t2, 0x48bc
/* 1E28EC 801F1B7C 24040029 */  li    $a0, 41
/* 1E28F0 801F1B80 000C7080 */  sll   $t6, $t4, 2
/* 1E28F4 801F1B84 002E0821 */  addu  $at, $at, $t6
/* 1E28F8 801F1B88 AC2A0490 */  sw    $t2, 0x0490($at)
/* 1E28FC 801F1B8C 2405001E */  li    $a1, 30
/* 1E2900 801F1B90 0C02BB02 */  jal   request_track_general
/* 1E2904 801F1B94 24060050 */   li    $a2, 80
/* 1E2908 801F1B98 00026880 */  sll   $t5, $v0, 2
/* 1E290C 801F1B9C 3C01800F */  lui   $at, 0x800f
/* 1E2910 801F1BA0 002D0821 */  addu  $at, $at, $t5
/* 1E2914 801F1BA4 240F0005 */  li    $t7, 5
/* 1E2918 801F1BA8 AC2F98E0 */  sw    $t7, -0x6720($at)
.L801F1BAC_ovl10:
/* 1E291C 801F1BAC 0C006291 */  jal   random_soft_s32_range
/* 1E2920 801F1BB0 24040002 */   li    $a0, 2
/* 1E2924 801F1BB4 3C08801F */  lui   $t0, %hi(D_801F4818) # $t0, 0x801f
/* 1E2928 801F1BB8 25084818 */  addiu $t0, %lo(D_801F4818) # addiu $t0, $t0, 0x4818
/* 1E292C 801F1BBC 0010C900 */  sll   $t9, $s0, 4
/* 1E2930 801F1BC0 03281821 */  addu  $v1, $t9, $t0
/* 1E2934 801F1BC4 0002C0C0 */  sll   $t8, $v0, 3
/* 1E2938 801F1BC8 00784821 */  addu  $t1, $v1, $t8
/* 1E293C 801F1BCC 8D240000 */  lw    $a0, ($t1)
/* 1E2940 801F1BD0 AFA20030 */  sw    $v0, 0x30($sp)
/* 1E2944 801F1BD4 0C02A806 */  jal   func_800AA018
/* 1E2948 801F1BD8 AFA30024 */   sw    $v1, 0x24($sp)
/* 1E294C 801F1BDC 8FAB0030 */  lw    $t3, 0x30($sp)
/* 1E2950 801F1BE0 8FA30024 */  lw    $v1, 0x24($sp)
/* 1E2954 801F1BE4 000B60C0 */  sll   $t4, $t3, 3
/* 1E2958 801F1BE8 006C5021 */  addu  $t2, $v1, $t4
/* 1E295C 801F1BEC 8D440004 */  lw    $a0, 4($t2)
/* 1E2960 801F1BF0 10800003 */  beqz  $a0, .L801F1C00_ovl10
/* 1E2964 801F1BF4 00000000 */   nop   
/* 1E2968 801F1BF8 0C02A806 */  jal   func_800AA018
/* 1E296C 801F1BFC 00000000 */   nop   
.L801F1C00_ovl10:
/* 1E2970 801F1C00 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E2974 801F1C04 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E2978 801F1C08 3C01801F */  lui   $at, %hi(D_801F4CA4) # $at, 0x801f
/* 1E297C 801F1C0C C4204CA4 */  lwc1  $f0, %lo(D_801F4CA4)($at)
/* 1E2980 801F1C10 8C4E0000 */  lw    $t6, ($v0)
/* 1E2984 801F1C14 3C01800E */  lui   $at, 0x800e
/* 1E2988 801F1C18 8FA40038 */  lw    $a0, 0x38($sp)
/* 1E298C 801F1C1C 000E7880 */  sll   $t7, $t6, 2
/* 1E2990 801F1C20 002F0821 */  addu  $at, $at, $t7
/* 1E2994 801F1C24 E4204550 */  swc1  $f0, 0x4550($at)
/* 1E2998 801F1C28 8C4D0000 */  lw    $t5, ($v0)
/* 1E299C 801F1C2C 3C01800E */  lui   $at, 0x800e
/* 1E29A0 801F1C30 8FA5003C */  lw    $a1, 0x3c($sp)
/* 1E29A4 801F1C34 000DC880 */  sll   $t9, $t5, 2
/* 1E29A8 801F1C38 00390821 */  addu  $at, $at, $t9
/* 1E29AC 801F1C3C E4204710 */  swc1  $f0, 0x4710($at)
/* 1E29B0 801F1C40 8C480000 */  lw    $t0, ($v0)
/* 1E29B4 801F1C44 3C01800E */  lui   $at, 0x800e
/* 1E29B8 801F1C48 0008C080 */  sll   $t8, $t0, 2
/* 1E29BC 801F1C4C 00380821 */  addu  $at, $at, $t8
/* 1E29C0 801F1C50 0C07C555 */  jal   func_801F1554_ovl10
/* 1E29C4 801F1C54 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 1E29C8 801F1C58 0C03FC51 */  jal   func_800FF144
/* 1E29CC 801F1C5C 00000000 */   nop   
/* 1E29D0 801F1C60 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1E29D4 801F1C64 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1E29D8 801F1C68 3C01800F */  lui   $at, 0x800f
/* 1E29DC 801F1C6C 00402025 */  move  $a0, $v0
/* 1E29E0 801F1C70 8D2B0000 */  lw    $t3, ($t1)
/* 1E29E4 801F1C74 000B6080 */  sll   $t4, $t3, 2
/* 1E29E8 801F1C78 002C0821 */  addu  $at, $at, $t4
/* 1E29EC 801F1C7C 0C07C005 */  jal   func_801F0014_ovl10
/* 1E29F0 801F1C80 AC22A520 */   sw    $v0, -0x5ae0($at)
/* 1E29F4 801F1C84 0C02BE85 */  jal   func_800AFA14
/* 1E29F8 801F1C88 00000000 */   nop   
/* 1E29FC 801F1C8C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1E2A00 801F1C90 8FB00018 */  lw    $s0, 0x18($sp)
/* 1E2A04 801F1C94 27BD0038 */  addiu $sp, $sp, 0x38
/* 1E2A08 801F1C98 03E00008 */  jr    $ra
/* 1E2A0C 801F1C9C 00000000 */   nop   
.size func_801F1A24_ovl10, . - func_801F1A24_ovl10

glabel func_801F1CA0_ovl10
/* 1E2A10 801F1CA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1E2A14 801F1CA4 AFA40020 */  sw    $a0, 0x20($sp)
/* 1E2A18 801F1CA8 3C04801F */  lui   $a0, 0x801f
/* 1E2A1C 801F1CAC 00057880 */  sll   $t7, $a1, 2
/* 1E2A20 801F1CB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E2A24 801F1CB4 00A03825 */  move  $a3, $a1
/* 1E2A28 801F1CB8 24AE0001 */  addiu $t6, $a1, 1
/* 1E2A2C 801F1CBC 008F2021 */  addu  $a0, $a0, $t7
/* 1E2A30 801F1CC0 AFAE001C */  sw    $t6, 0x1c($sp)
/* 1E2A34 801F1CC4 8C844908 */  lw    $a0, 0x4908($a0)
/* 1E2A38 801F1CC8 2405002C */  li    $a1, 44
/* 1E2A3C 801F1CCC AFA70024 */  sw    $a3, 0x24($sp)
/* 1E2A40 801F1CD0 0C02A619 */  jal   func_800A9864
/* 1E2A44 801F1CD4 24060010 */   li    $a2, 16
/* 1E2A48 801F1CD8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E2A4C 801F1CDC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E2A50 801F1CE0 3C01801F */  lui   $at, %hi(D_801F4CA8) # $at, 0x801f
/* 1E2A54 801F1CE4 C4204CA8 */  lwc1  $f0, %lo(D_801F4CA8)($at)
/* 1E2A58 801F1CE8 8C580000 */  lw    $t8, ($v0)
/* 1E2A5C 801F1CEC 3C01800E */  lui   $at, 0x800e
/* 1E2A60 801F1CF0 8FAC001C */  lw    $t4, 0x1c($sp)
/* 1E2A64 801F1CF4 0018C880 */  sll   $t9, $t8, 2
/* 1E2A68 801F1CF8 00390821 */  addu  $at, $at, $t9
/* 1E2A6C 801F1CFC E4204550 */  swc1  $f0, 0x4550($at)
/* 1E2A70 801F1D00 8C480000 */  lw    $t0, ($v0)
/* 1E2A74 801F1D04 3C01800E */  lui   $at, 0x800e
/* 1E2A78 801F1D08 3C04801F */  lui   $a0, 0x801f
/* 1E2A7C 801F1D0C 00084880 */  sll   $t1, $t0, 2
/* 1E2A80 801F1D10 00290821 */  addu  $at, $at, $t1
/* 1E2A84 801F1D14 E4204710 */  swc1  $f0, 0x4710($at)
/* 1E2A88 801F1D18 8C4A0000 */  lw    $t2, ($v0)
/* 1E2A8C 801F1D1C 3C01800E */  lui   $at, 0x800e
/* 1E2A90 801F1D20 000C6880 */  sll   $t5, $t4, 2
/* 1E2A94 801F1D24 000A5880 */  sll   $t3, $t2, 2
/* 1E2A98 801F1D28 002B0821 */  addu  $at, $at, $t3
/* 1E2A9C 801F1D2C 008D2021 */  addu  $a0, $a0, $t5
/* 1E2AA0 801F1D30 8C844914 */  lw    $a0, 0x4914($a0)
/* 1E2AA4 801F1D34 0C02A806 */  jal   func_800AA018
/* 1E2AA8 801F1D38 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 1E2AAC 801F1D3C 8FA40020 */  lw    $a0, 0x20($sp)
/* 1E2AB0 801F1D40 0C07C555 */  jal   func_801F1554_ovl10
/* 1E2AB4 801F1D44 8FA50024 */   lw    $a1, 0x24($sp)
/* 1E2AB8 801F1D48 0C02BE85 */  jal   func_800AFA14
/* 1E2ABC 801F1D4C 00000000 */   nop   
/* 1E2AC0 801F1D50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E2AC4 801F1D54 27BD0020 */  addiu $sp, $sp, 0x20
/* 1E2AC8 801F1D58 03E00008 */  jr    $ra
/* 1E2ACC 801F1D5C 00000000 */   nop   
.size func_801F1CA0_ovl10, . - func_801F1CA0_ovl10

glabel func_801F1D60_ovl10
/* 1E2AD0 801F1D60 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1E2AD4 801F1D64 AFB20038 */  sw    $s2, 0x38($sp)
/* 1E2AD8 801F1D68 AFB00030 */  sw    $s0, 0x30($sp)
/* 1E2ADC 801F1D6C 00E09025 */  move  $s2, $a3
/* 1E2AE0 801F1D70 AFBF0044 */  sw    $ra, 0x44($sp)
/* 1E2AE4 801F1D74 AFB40040 */  sw    $s4, 0x40($sp)
/* 1E2AE8 801F1D78 AFB3003C */  sw    $s3, 0x3c($sp)
/* 1E2AEC 801F1D7C AFB10034 */  sw    $s1, 0x34($sp)
/* 1E2AF0 801F1D80 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 1E2AF4 801F1D84 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1E2AF8 801F1D88 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1E2AFC 801F1D8C AFA40048 */  sw    $a0, 0x48($sp)
/* 1E2B00 801F1D90 AFA5004C */  sw    $a1, 0x4c($sp)
/* 1E2B04 801F1D94 AFA60050 */  sw    $a2, 0x50($sp)
/* 1E2B08 801F1D98 18E0001F */  blez  $a3, .L801F1E18_ovl10
/* 1E2B0C 801F1D9C 00008025 */   move  $s0, $zero
/* 1E2B10 801F1DA0 3C11801F */  lui   $s1, %hi(D_801F4D68) # $s1, 0x801f
/* 1E2B14 801F1DA4 3C14800E */  lui   $s4, %hi(gEntitiesNextPosXArray) # $s4, 0x800e
/* 1E2B18 801F1DA8 3C13800E */  lui   $s3, %hi(gEntitiesNextPosZArray) # $s3, 0x800e
/* 1E2B1C 801F1DAC 26732950 */  addiu $s3, %lo(gEntitiesNextPosZArray) # addiu $s3, $s3, 0x2950
/* 1E2B20 801F1DB0 269425D0 */  addiu $s4, %lo(gEntitiesNextPosXArray) # addiu $s4, $s4, 0x25d0
/* 1E2B24 801F1DB4 26314D68 */  addiu $s1, %lo(D_801F4D68) # addiu $s1, $s1, 0x4d68
/* 1E2B28 801F1DB8 C7B80058 */  lwc1  $f24, 0x58($sp)
/* 1E2B2C 801F1DBC C7B60048 */  lwc1  $f22, 0x48($sp)
/* 1E2B30 801F1DC0 C7B40050 */  lwc1  $f20, 0x50($sp)
.L801F1DC4_ovl10:
/* 1E2B34 801F1DC4 8E220000 */  lw    $v0, ($s1)
/* 1E2B38 801F1DC8 00021080 */  sll   $v0, $v0, 2
/* 1E2B3C 801F1DCC 02627021 */  addu  $t6, $s3, $v0
/* 1E2B40 801F1DD0 C5C40000 */  lwc1  $f4, ($t6)
/* 1E2B44 801F1DD4 02827821 */  addu  $t7, $s4, $v0
/* 1E2B48 801F1DD8 C5E60000 */  lwc1  $f6, ($t7)
/* 1E2B4C 801F1DDC 4604A001 */  sub.s $f0, $f20, $f4
/* 1E2B50 801F1DE0 4606B081 */  sub.s $f2, $f22, $f6
/* 1E2B54 801F1DE4 46000202 */  mul.s $f8, $f0, $f0
/* 1E2B58 801F1DE8 00000000 */  nop   
/* 1E2B5C 801F1DEC 46021282 */  mul.s $f10, $f2, $f2
/* 1E2B60 801F1DF0 0C00CAC8 */  jal   sqrtf
/* 1E2B64 801F1DF4 460A4300 */   add.s $f12, $f8, $f10
/* 1E2B68 801F1DF8 4618003C */  c.lt.s $f0, $f24
/* 1E2B6C 801F1DFC 26100001 */  addiu $s0, $s0, 1
/* 1E2B70 801F1E00 45000003 */  bc1f  .L801F1E10_ovl10
/* 1E2B74 801F1E04 00000000 */   nop   
/* 1E2B78 801F1E08 10000004 */  b     .L801F1E1C_ovl10
/* 1E2B7C 801F1E0C 24020001 */   li    $v0, 1
.L801F1E10_ovl10:
/* 1E2B80 801F1E10 1612FFEC */  bne   $s0, $s2, .L801F1DC4_ovl10
/* 1E2B84 801F1E14 26310004 */   addiu $s1, $s1, 4
.L801F1E18_ovl10:
/* 1E2B88 801F1E18 00001025 */  move  $v0, $zero
.L801F1E1C_ovl10:
/* 1E2B8C 801F1E1C 8FBF0044 */  lw    $ra, 0x44($sp)
/* 1E2B90 801F1E20 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1E2B94 801F1E24 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1E2B98 801F1E28 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 1E2B9C 801F1E2C 8FB00030 */  lw    $s0, 0x30($sp)
/* 1E2BA0 801F1E30 8FB10034 */  lw    $s1, 0x34($sp)
/* 1E2BA4 801F1E34 8FB20038 */  lw    $s2, 0x38($sp)
/* 1E2BA8 801F1E38 8FB3003C */  lw    $s3, 0x3c($sp)
/* 1E2BAC 801F1E3C 8FB40040 */  lw    $s4, 0x40($sp)
/* 1E2BB0 801F1E40 03E00008 */  jr    $ra
/* 1E2BB4 801F1E44 27BD0048 */   addiu $sp, $sp, 0x48
.size func_801F1D60_ovl10, . - func_801F1D60_ovl10

glabel func_801F1E48_ovl10
/* 1E2BB8 801F1E48 3C06801F */  lui   $a2, %hi(D_801F4D60) # $a2, 0x801f
/* 1E2BBC 801F1E4C 8CC64D60 */  lw    $a2, %lo(D_801F4D60)($a2)
/* 1E2BC0 801F1E50 3C0F800E */  lui   $t7, 0x800e
/* 1E2BC4 801F1E54 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1E2BC8 801F1E58 00067080 */  sll   $t6, $a2, 2
/* 1E2BCC 801F1E5C 01EE7821 */  addu  $t7, $t7, $t6
/* 1E2BD0 801F1E60 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1E2BD4 801F1E64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E2BD8 801F1E68 AFA40040 */  sw    $a0, 0x40($sp)
/* 1E2BDC 801F1E6C 27A40034 */  addiu $a0, $sp, 0x34
/* 1E2BE0 801F1E70 0C02C8D0 */  jal   func_800B2340
/* 1E2BE4 801F1E74 8DE50014 */   lw    $a1, 0x14($t7)
/* 1E2BE8 801F1E78 0C006291 */  jal   random_soft_s32_range
/* 1E2BEC 801F1E7C 24040007 */   li    $a0, 7
/* 1E2BF0 801F1E80 44822000 */  mtc1  $v0, $f4
/* 1E2BF4 801F1E84 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1E2BF8 801F1E88 44814000 */  mtc1  $at, $f8
/* 1E2BFC 801F1E8C 468021A0 */  cvt.s.w $f6, $f4
/* 1E2C00 801F1E90 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 1E2C04 801F1E94 44818000 */  mtc1  $at, $f16
/* 1E2C08 801F1E98 24040013 */  li    $a0, 19
/* 1E2C0C 801F1E9C 46083282 */  mul.s $f10, $f6, $f8
/* 1E2C10 801F1EA0 46105480 */  add.s $f18, $f10, $f16
/* 1E2C14 801F1EA4 0C006291 */  jal   random_soft_s32_range
/* 1E2C18 801F1EA8 E7B20024 */   swc1  $f18, 0x24($sp)
/* 1E2C1C 801F1EAC 44822000 */  mtc1  $v0, $f4
/* 1E2C20 801F1EB0 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1E2C24 801F1EB4 44814000 */  mtc1  $at, $f8
/* 1E2C28 801F1EB8 468021A0 */  cvt.s.w $f6, $f4
/* 1E2C2C 801F1EBC 3C014234 */  li    $at, 0x42340000 # 45.000000
/* 1E2C30 801F1EC0 44818000 */  mtc1  $at, $f16
/* 1E2C34 801F1EC4 3C01801F */  lui   $at, %hi(D_801F4CAC) # $at, 0x801f
/* 1E2C38 801F1EC8 C4324CAC */  lwc1  $f18, %lo(D_801F4CAC)($at)
/* 1E2C3C 801F1ECC 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1E2C40 801F1ED0 46083282 */  mul.s $f10, $f6, $f8
/* 1E2C44 801F1ED4 44813000 */  mtc1  $at, $f6
/* 1E2C48 801F1ED8 46105001 */  sub.s $f0, $f10, $f16
/* 1E2C4C 801F1EDC 46120102 */  mul.s $f4, $f0, $f18
/* 1E2C50 801F1EE0 E7A00020 */  swc1  $f0, 0x20($sp)
/* 1E2C54 801F1EE4 0C00D604 */  jal   cosf
/* 1E2C58 801F1EE8 46062303 */   div.s $f12, $f4, $f6
/* 1E2C5C 801F1EEC C7A80024 */  lwc1  $f8, 0x24($sp)
/* 1E2C60 801F1EF0 C7B00034 */  lwc1  $f16, 0x34($sp)
/* 1E2C64 801F1EF4 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1E2C68 801F1EF8 46080282 */  mul.s $f10, $f0, $f8
/* 1E2C6C 801F1EFC 44813000 */  mtc1  $at, $f6
/* 1E2C70 801F1F00 3C01801F */  lui   $at, %hi(D_801F4CB0) # $at, 0x801f
/* 1E2C74 801F1F04 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 1E2C78 801F1F08 46062200 */  add.s $f8, $f4, $f6
/* 1E2C7C 801F1F0C 46105480 */  add.s $f18, $f10, $f16
/* 1E2C80 801F1F10 C4304CB0 */  lwc1  $f16, %lo(D_801F4CB0)($at)
/* 1E2C84 801F1F14 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 1E2C88 801F1F18 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1E2C8C 801F1F1C E7B20028 */  swc1  $f18, 0x28($sp)
/* 1E2C90 801F1F20 46105482 */  mul.s $f18, $f10, $f16
/* 1E2C94 801F1F24 44812000 */  mtc1  $at, $f4
/* 1E2C98 801F1F28 E7A8002C */  swc1  $f8, 0x2c($sp)
/* 1E2C9C 801F1F2C 0C00B5B8 */  jal   sinf
/* 1E2CA0 801F1F30 46049303 */   div.s $f12, $f18, $f4
/* 1E2CA4 801F1F34 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 1E2CA8 801F1F38 46000187 */  neg.s $f6, $f0
/* 1E2CAC 801F1F3C C7B0003C */  lwc1  $f16, 0x3c($sp)
/* 1E2CB0 801F1F40 46083282 */  mul.s $f10, $f6, $f8
/* 1E2CB4 801F1F44 27B80028 */  addiu $t8, $sp, 0x28
/* 1E2CB8 801F1F48 8FA20040 */  lw    $v0, 0x40($sp)
/* 1E2CBC 801F1F4C 46105480 */  add.s $f18, $f10, $f16
/* 1E2CC0 801F1F50 E7B20030 */  swc1  $f18, 0x30($sp)
/* 1E2CC4 801F1F54 8F080000 */  lw    $t0, ($t8)
/* 1E2CC8 801F1F58 AC480000 */  sw    $t0, ($v0)
/* 1E2CCC 801F1F5C 8F190004 */  lw    $t9, 4($t8)
/* 1E2CD0 801F1F60 AC590004 */  sw    $t9, 4($v0)
/* 1E2CD4 801F1F64 8F080008 */  lw    $t0, 8($t8)
/* 1E2CD8 801F1F68 AC480008 */  sw    $t0, 8($v0)
/* 1E2CDC 801F1F6C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E2CE0 801F1F70 27BD0040 */  addiu $sp, $sp, 0x40
/* 1E2CE4 801F1F74 03E00008 */  jr    $ra
/* 1E2CE8 801F1F78 00000000 */   nop   
.size func_801F1E48_ovl10, . - func_801F1E48_ovl10

glabel func_801F1F7C_ovl10
/* 1E2CEC 801F1F7C 27BDFF90 */  addiu $sp, $sp, -0x70
/* 1E2CF0 801F1F80 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1E2CF4 801F1F84 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1E2CF8 801F1F88 4481A000 */  mtc1  $at, $f20
/* 1E2CFC 801F1F8C F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1E2D00 801F1F90 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1E2D04 801F1F94 AFB50040 */  sw    $s5, 0x40($sp)
/* 1E2D08 801F1F98 AFB4003C */  sw    $s4, 0x3c($sp)
/* 1E2D0C 801F1F9C AFB30038 */  sw    $s3, 0x38($sp)
/* 1E2D10 801F1FA0 AFB20034 */  sw    $s2, 0x34($sp)
/* 1E2D14 801F1FA4 AFB10030 */  sw    $s1, 0x30($sp)
/* 1E2D18 801F1FA8 AFB0002C */  sw    $s0, 0x2c($sp)
/* 1E2D1C 801F1FAC 4481B000 */  mtc1  $at, $f22
/* 1E2D20 801F1FB0 00A09025 */  move  $s2, $a1
/* 1E2D24 801F1FB4 AFBF0044 */  sw    $ra, 0x44($sp)
/* 1E2D28 801F1FB8 AFA40070 */  sw    $a0, 0x70($sp)
/* 1E2D2C 801F1FBC 00008025 */  move  $s0, $zero
/* 1E2D30 801F1FC0 27B10058 */  addiu $s1, $sp, 0x58
/* 1E2D34 801F1FC4 24130032 */  li    $s3, 50
/* 1E2D38 801F1FC8 24140064 */  li    $s4, 100
/* 1E2D3C 801F1FCC 24150096 */  li    $s5, 150
/* 1E2D40 801F1FD0 26100001 */  addiu $s0, $s0, 1
.L801F1FD4_ovl10:
/* 1E2D44 801F1FD4 52130006 */  beql  $s0, $s3, .L801F1FF0_ovl10
/* 1E2D48 801F1FD8 4616A501 */   sub.s $f20, $f20, $f22
/* 1E2D4C 801F1FDC 52140004 */  beql  $s0, $s4, .L801F1FF0_ovl10
/* 1E2D50 801F1FE0 4616A501 */   sub.s $f20, $f20, $f22
/* 1E2D54 801F1FE4 16150002 */  bne   $s0, $s5, .L801F1FF0_ovl10
/* 1E2D58 801F1FE8 00000000 */   nop   
/* 1E2D5C 801F1FEC 4616A501 */  sub.s $f20, $f20, $f22
.L801F1FF0_ovl10:
/* 1E2D60 801F1FF0 0C07C792 */  jal   func_801F1E48_ovl10
/* 1E2D64 801F1FF4 02202025 */   move  $a0, $s1
/* 1E2D68 801F1FF8 8E2F0000 */  lw    $t7, ($s1)
/* 1E2D6C 801F1FFC 02403825 */  move  $a3, $s2
/* 1E2D70 801F2000 AFAF0000 */  sw    $t7, ($sp)
/* 1E2D74 801F2004 8E250004 */  lw    $a1, 4($s1)
/* 1E2D78 801F2008 8FA40000 */  lw    $a0, ($sp)
/* 1E2D7C 801F200C AFA50004 */  sw    $a1, 4($sp)
/* 1E2D80 801F2010 8E260008 */  lw    $a2, 8($s1)
/* 1E2D84 801F2014 E7B40010 */  swc1  $f20, 0x10($sp)
/* 1E2D88 801F2018 0C07C758 */  jal   func_801F1D60_ovl10
/* 1E2D8C 801F201C AFA60008 */   sw    $a2, 8($sp)
/* 1E2D90 801F2020 5440FFEC */  bnezl $v0, .L801F1FD4_ovl10
/* 1E2D94 801F2024 26100001 */   addiu $s0, $s0, 1
/* 1E2D98 801F2028 8FB80070 */  lw    $t8, 0x70($sp)
/* 1E2D9C 801F202C 8E280000 */  lw    $t0, ($s1)
/* 1E2DA0 801F2030 AF080000 */  sw    $t0, ($t8)
/* 1E2DA4 801F2034 8E390004 */  lw    $t9, 4($s1)
/* 1E2DA8 801F2038 AF190004 */  sw    $t9, 4($t8)
/* 1E2DAC 801F203C 8E280008 */  lw    $t0, 8($s1)
/* 1E2DB0 801F2040 AF080008 */  sw    $t0, 8($t8)
/* 1E2DB4 801F2044 8FBF0044 */  lw    $ra, 0x44($sp)
/* 1E2DB8 801F2048 8FB50040 */  lw    $s5, 0x40($sp)
/* 1E2DBC 801F204C 8FB4003C */  lw    $s4, 0x3c($sp)
/* 1E2DC0 801F2050 8FB30038 */  lw    $s3, 0x38($sp)
/* 1E2DC4 801F2054 8FB20034 */  lw    $s2, 0x34($sp)
/* 1E2DC8 801F2058 8FB10030 */  lw    $s1, 0x30($sp)
/* 1E2DCC 801F205C 8FB0002C */  lw    $s0, 0x2c($sp)
/* 1E2DD0 801F2060 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1E2DD4 801F2064 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1E2DD8 801F2068 8FA20070 */  lw    $v0, 0x70($sp)
/* 1E2DDC 801F206C 03E00008 */  jr    $ra
/* 1E2DE0 801F2070 27BD0070 */   addiu $sp, $sp, 0x70
.size func_801F1F7C_ovl10, . - func_801F1F7C_ovl10

glabel func_801F2074_ovl10
/* 1E2DE4 801F2074 24010004 */  li    $at, 4
/* 1E2DE8 801F2078 10810003 */  beq   $a0, $at, .L801F2088_ovl10
/* 1E2DEC 801F207C 24010005 */   li    $at, 5
/* 1E2DF0 801F2080 14810003 */  bne   $a0, $at, .L801F2090_ovl10
/* 1E2DF4 801F2084 00001025 */   move  $v0, $zero
.L801F2088_ovl10:
/* 1E2DF8 801F2088 03E00008 */  jr    $ra
/* 1E2DFC 801F208C 24020001 */   li    $v0, 1

.L801F2090_ovl10:
/* 1E2E00 801F2090 03E00008 */  jr    $ra
/* 1E2E04 801F2094 00000000 */   nop   
.size func_801F2074_ovl10, . - func_801F2074_ovl10

glabel func_801F2098_ovl10
/* 1E2E08 801F2098 27BDFF10 */  addiu $sp, $sp, -0xf0
/* 1E2E0C 801F209C 3C0E801F */  lui   $t6, %hi(D_801F4768) # $t6, 0x801f
/* 1E2E10 801F20A0 AFBF005C */  sw    $ra, 0x5c($sp)
/* 1E2E14 801F20A4 AFBE0058 */  sw    $fp, 0x58($sp)
/* 1E2E18 801F20A8 AFB70054 */  sw    $s7, 0x54($sp)
/* 1E2E1C 801F20AC AFB60050 */  sw    $s6, 0x50($sp)
/* 1E2E20 801F20B0 AFB5004C */  sw    $s5, 0x4c($sp)
/* 1E2E24 801F20B4 AFB40048 */  sw    $s4, 0x48($sp)
/* 1E2E28 801F20B8 AFB30044 */  sw    $s3, 0x44($sp)
/* 1E2E2C 801F20BC AFB20040 */  sw    $s2, 0x40($sp)
/* 1E2E30 801F20C0 AFB1003C */  sw    $s1, 0x3c($sp)
/* 1E2E34 801F20C4 AFB00038 */  sw    $s0, 0x38($sp)
/* 1E2E38 801F20C8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 1E2E3C 801F20CC F7B60028 */  sdc1  $f22, 0x28($sp)
/* 1E2E40 801F20D0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 1E2E44 801F20D4 AFA400F0 */  sw    $a0, 0xf0($sp)
/* 1E2E48 801F20D8 AFA500F4 */  sw    $a1, 0xf4($sp)
/* 1E2E4C 801F20DC 25CE4768 */  addiu $t6, %lo(D_801F4768) # addiu $t6, $t6, 0x4768
/* 1E2E50 801F20E0 8DD80000 */  lw    $t8, ($t6)
/* 1E2E54 801F20E4 27A200D4 */  addiu $v0, $sp, 0xd4
/* 1E2E58 801F20E8 3C19801F */  lui   $t9, %hi(D_801F4784) # $t9, 0x801f
/* 1E2E5C 801F20EC AC580000 */  sw    $t8, ($v0)
/* 1E2E60 801F20F0 8DCF0004 */  lw    $t7, 4($t6)
/* 1E2E64 801F20F4 27394784 */  addiu $t9, %lo(D_801F4784) # addiu $t9, $t9, 0x4784
/* 1E2E68 801F20F8 27B300B8 */  addiu $s3, $sp, 0xb8
/* 1E2E6C 801F20FC AC4F0004 */  sw    $t7, 4($v0)
/* 1E2E70 801F2100 8DD80008 */  lw    $t8, 8($t6)
/* 1E2E74 801F2104 3C0A801F */  lui   $t2, %hi(D_801F47A0) # $t2, 0x801f
/* 1E2E78 801F2108 254A47A0 */  addiu $t2, %lo(D_801F47A0) # addiu $t2, $t2, 0x47a0
/* 1E2E7C 801F210C AC580008 */  sw    $t8, 8($v0)
/* 1E2E80 801F2110 8DCF000C */  lw    $t7, 0xc($t6)
/* 1E2E84 801F2114 27B400A8 */  addiu $s4, $sp, 0xa8
/* 1E2E88 801F2118 3C0D801F */  lui   $t5, %hi(D_801F47B0) # $t5, 0x801f
/* 1E2E8C 801F211C AC4F000C */  sw    $t7, 0xc($v0)
/* 1E2E90 801F2120 8DD80010 */  lw    $t8, 0x10($t6)
/* 1E2E94 801F2124 25AD47B0 */  addiu $t5, %lo(D_801F47B0) # addiu $t5, $t5, 0x47b0
/* 1E2E98 801F2128 27B50098 */  addiu $s5, $sp, 0x98
/* 1E2E9C 801F212C AC580010 */  sw    $t8, 0x10($v0)
/* 1E2EA0 801F2130 8DCF0014 */  lw    $t7, 0x14($t6)
/* 1E2EA4 801F2134 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1E2EA8 801F2138 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1E2EAC 801F213C AC4F0014 */  sw    $t7, 0x14($v0)
/* 1E2EB0 801F2140 8DD80018 */  lw    $t8, 0x18($t6)
/* 1E2EB4 801F2144 8E300000 */  lw    $s0, ($s1)
/* 1E2EB8 801F2148 3C01801F */  lui   $at, 0x801f
/* 1E2EBC 801F214C AC580018 */  sw    $t8, 0x18($v0)
/* 1E2EC0 801F2150 8F290000 */  lw    $t1, ($t9)
/* 1E2EC4 801F2154 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 1E2EC8 801F2158 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 1E2ECC 801F215C AE690000 */  sw    $t1, ($s3)
/* 1E2ED0 801F2160 8F280004 */  lw    $t0, 4($t9)
/* 1E2ED4 801F2164 24060010 */  li    $a2, 16
/* 1E2ED8 801F2168 AE680004 */  sw    $t0, 4($s3)
/* 1E2EDC 801F216C 8F290008 */  lw    $t1, 8($t9)
/* 1E2EE0 801F2170 AE690008 */  sw    $t1, 8($s3)
/* 1E2EE4 801F2174 8F28000C */  lw    $t0, 0xc($t9)
/* 1E2EE8 801F2178 AE68000C */  sw    $t0, 0xc($s3)
/* 1E2EEC 801F217C 8F290010 */  lw    $t1, 0x10($t9)
/* 1E2EF0 801F2180 AE690010 */  sw    $t1, 0x10($s3)
/* 1E2EF4 801F2184 8F280014 */  lw    $t0, 0x14($t9)
/* 1E2EF8 801F2188 AE680014 */  sw    $t0, 0x14($s3)
/* 1E2EFC 801F218C 8F290018 */  lw    $t1, 0x18($t9)
/* 1E2F00 801F2190 AE690018 */  sw    $t1, 0x18($s3)
/* 1E2F04 801F2194 8D4C0000 */  lw    $t4, ($t2)
/* 1E2F08 801F2198 AE8C0000 */  sw    $t4, ($s4)
/* 1E2F0C 801F219C 8D4B0004 */  lw    $t3, 4($t2)
/* 1E2F10 801F21A0 AE8B0004 */  sw    $t3, 4($s4)
/* 1E2F14 801F21A4 8D4C0008 */  lw    $t4, 8($t2)
/* 1E2F18 801F21A8 AE8C0008 */  sw    $t4, 8($s4)
/* 1E2F1C 801F21AC 8D4B000C */  lw    $t3, 0xc($t2)
/* 1E2F20 801F21B0 AE8B000C */  sw    $t3, 0xc($s4)
/* 1E2F24 801F21B4 8DAF0000 */  lw    $t7, ($t5)
/* 1E2F28 801F21B8 AEAF0000 */  sw    $t7, ($s5)
/* 1E2F2C 801F21BC 8DAE0004 */  lw    $t6, 4($t5)
/* 1E2F30 801F21C0 AEAE0004 */  sw    $t6, 4($s5)
/* 1E2F34 801F21C4 8DAF0008 */  lw    $t7, 8($t5)
/* 1E2F38 801F21C8 AEAF0008 */  sw    $t7, 8($s5)
/* 1E2F3C 801F21CC 8DAE000C */  lw    $t6, 0xc($t5)
/* 1E2F40 801F21D0 AEAE000C */  sw    $t6, 0xc($s5)
/* 1E2F44 801F21D4 8FB200F4 */  lw    $s2, 0xf4($sp)
/* 1E2F48 801F21D8 8E180000 */  lw    $t8, ($s0)
/* 1E2F4C 801F21DC 8FAB00F4 */  lw    $t3, 0xf4($sp)
/* 1E2F50 801F21E0 00129080 */  sll   $s2, $s2, 2
/* 1E2F54 801F21E4 00320821 */  addu  $at, $at, $s2
/* 1E2F58 801F21E8 AC384D68 */  sw    $t8, 0x4d68($at)
/* 1E2F5C 801F21EC 8E190000 */  lw    $t9, ($s0)
/* 1E2F60 801F21F0 3C01800F */  lui   $at, 0x800f
/* 1E2F64 801F21F4 0052C021 */  addu  $t8, $v0, $s2
/* 1E2F68 801F21F8 00194080 */  sll   $t0, $t9, 2
/* 1E2F6C 801F21FC 00280821 */  addu  $at, $at, $t0
/* 1E2F70 801F2200 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1E2F74 801F2204 8E090000 */  lw    $t1, ($s0)
/* 1E2F78 801F2208 3C01800F */  lui   $at, 0x800f
/* 1E2F7C 801F220C 00095080 */  sll   $t2, $t1, 2
/* 1E2F80 801F2210 002A0821 */  addu  $at, $at, $t2
/* 1E2F84 801F2214 AC209AA0 */  sw    $zero, -0x6560($at)
/* 1E2F88 801F2218 24010005 */  li    $at, 5
/* 1E2F8C 801F221C 15610014 */  bne   $t3, $at, .L801F2270_ovl10
/* 1E2F90 801F2220 00000000 */   nop   
/* 1E2F94 801F2224 0C006291 */  jal   random_soft_s32_range
/* 1E2F98 801F2228 24040004 */   li    $a0, 4
/* 1E2F9C 801F222C 00026080 */  sll   $t4, $v0, 2
/* 1E2FA0 801F2230 028C6821 */  addu  $t5, $s4, $t4
/* 1E2FA4 801F2234 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 1E2FA8 801F2238 00408025 */  move  $s0, $v0
/* 1E2FAC 801F223C 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 1E2FB0 801F2240 8DA40000 */  lw    $a0, ($t5)
/* 1E2FB4 801F2244 0C02A619 */  jal   func_800A9864
/* 1E2FB8 801F2248 24060010 */   li    $a2, 16
/* 1E2FBC 801F224C 00107080 */  sll   $t6, $s0, 2
/* 1E2FC0 801F2250 02AE7821 */  addu  $t7, $s5, $t6
/* 1E2FC4 801F2254 8DE40000 */  lw    $a0, ($t7)
/* 1E2FC8 801F2258 5080000E */  beql  $a0, $zero, .L801F2294_ovl10
/* 1E2FCC 801F225C 3C040001 */   lui   $a0, 1
/* 1E2FD0 801F2260 0C02A806 */  jal   func_800AA018
/* 1E2FD4 801F2264 00000000 */   nop   
/* 1E2FD8 801F2268 1000000A */  b     .L801F2294_ovl10
/* 1E2FDC 801F226C 3C040001 */   lui   $a0, 1
.L801F2270_ovl10:
/* 1E2FE0 801F2270 0C02A619 */  jal   func_800A9864
/* 1E2FE4 801F2274 8F040000 */   lw    $a0, ($t8)
/* 1E2FE8 801F2278 0272C821 */  addu  $t9, $s3, $s2
/* 1E2FEC 801F227C 8F240000 */  lw    $a0, ($t9)
/* 1E2FF0 801F2280 50800004 */  beql  $a0, $zero, .L801F2294_ovl10
/* 1E2FF4 801F2284 3C040001 */   lui   $a0, 1
/* 1E2FF8 801F2288 0C02A806 */  jal   func_800AA018
/* 1E2FFC 801F228C 00000000 */   nop   
/* 1E3000 801F2290 3C040001 */  lui   $a0, (0x000105F6 >> 16) # lui $a0, 1
.L801F2294_ovl10:
/* 1E3004 801F2294 0C02A806 */  jal   func_800AA018
/* 1E3008 801F2298 348405F6 */   ori   $a0, (0x000105F6 & 0xFFFF) # ori $a0, $a0, 0x5f6
/* 1E300C 801F229C 27A40084 */  addiu $a0, $sp, 0x84
/* 1E3010 801F22A0 0C07C7DF */  jal   func_801F1F7C_ovl10
/* 1E3014 801F22A4 8FA500F4 */   lw    $a1, 0xf4($sp)
/* 1E3018 801F22A8 8E300000 */  lw    $s0, ($s1)
/* 1E301C 801F22AC C7A40084 */  lwc1  $f4, 0x84($sp)
/* 1E3020 801F22B0 3C17800E */  lui   $s7, %hi(gEntitiesNextPosXArray) # $s7, 0x800e
/* 1E3024 801F22B4 8E080000 */  lw    $t0, ($s0)
/* 1E3028 801F22B8 26F725D0 */  addiu $s7, %lo(gEntitiesNextPosXArray) # addiu $s7, $s7, 0x25d0
/* 1E302C 801F22BC 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosYArray) # $fp, 0x800e
/* 1E3030 801F22C0 00084880 */  sll   $t1, $t0, 2
/* 1E3034 801F22C4 02E95021 */  addu  $t2, $s7, $t1
/* 1E3038 801F22C8 E5440000 */  swc1  $f4, ($t2)
/* 1E303C 801F22CC 8E0B0000 */  lw    $t3, ($s0)
/* 1E3040 801F22D0 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1E3044 801F22D4 27DE2790 */  addiu $fp, %lo(gEntitiesNextPosYArray) # addiu $fp, $fp, 0x2790
/* 1E3048 801F22D8 000B6080 */  sll   $t4, $t3, 2
/* 1E304C 801F22DC 03CC6821 */  addu  $t5, $fp, $t4
/* 1E3050 801F22E0 E5A60000 */  swc1  $f6, ($t5)
/* 1E3054 801F22E4 8E0E0000 */  lw    $t6, ($s0)
/* 1E3058 801F22E8 C7A8008C */  lwc1  $f8, 0x8c($sp)
/* 1E305C 801F22EC 3C01800E */  lui   $at, 0x800e
/* 1E3060 801F22F0 000E7880 */  sll   $t7, $t6, 2
/* 1E3064 801F22F4 002F0821 */  addu  $at, $at, $t7
/* 1E3068 801F22F8 0C03FC51 */  jal   func_800FF144
/* 1E306C 801F22FC E4282950 */   swc1  $f8, 0x2950($at)
/* 1E3070 801F2300 8E380000 */  lw    $t8, ($s1)
/* 1E3074 801F2304 3C01800F */  lui   $at, 0x800f
/* 1E3078 801F2308 00402025 */  move  $a0, $v0
/* 1E307C 801F230C 8F190000 */  lw    $t9, ($t8)
/* 1E3080 801F2310 00194080 */  sll   $t0, $t9, 2
/* 1E3084 801F2314 00280821 */  addu  $at, $at, $t0
/* 1E3088 801F2318 0C07C005 */  jal   func_801F0014_ovl10
/* 1E308C 801F231C AC22A520 */   sw    $v0, -0x5ae0($at)
/* 1E3090 801F2320 3C01801F */  lui   $at, %hi(D_801F4CB4) # $at, 0x801f
/* 1E3094 801F2324 3C15800E */  lui   $s5, %hi(D_800DE350) # $s5, 0x800e
/* 1E3098 801F2328 3C14800E */  lui   $s4, %hi(gEntitiesScaleZArray) # $s4, 0x800e
/* 1E309C 801F232C 3C13800E */  lui   $s3, %hi(gEntitiesScaleYArray) # $s3, 0x800e
/* 1E30A0 801F2330 3C12800E */  lui   $s2, %hi(gEntitiesScaleXArray) # $s2, 0x800e
/* 1E30A4 801F2334 4480B000 */  mtc1  $zero, $f22
/* 1E30A8 801F2338 26524550 */  addiu $s2, %lo(gEntitiesScaleXArray) # addiu $s2, $s2, 0x4550
/* 1E30AC 801F233C 26734710 */  addiu $s3, %lo(gEntitiesScaleYArray) # addiu $s3, $s3, 0x4710
/* 1E30B0 801F2340 269448D0 */  addiu $s4, %lo(gEntitiesScaleZArray) # addiu $s4, $s4, 0x48d0
/* 1E30B4 801F2344 26B5E350 */  addiu $s5, %lo(D_800DE350) # addiu $s5, $s5, -0x1cb0
/* 1E30B8 801F2348 C4384CB4 */  lwc1  $f24, %lo(D_801F4CB4)($at)
/* 1E30BC 801F234C 24160001 */  li    $s6, 1
/* 1E30C0 801F2350 8E290000 */  lw    $t1, ($s1)
.L801F2354_ovl10:
/* 1E30C4 801F2354 3C0A800F */  lui   $t2, 0x800f
/* 1E30C8 801F2358 02C02025 */  move  $a0, $s6
/* 1E30CC 801F235C 8D220000 */  lw    $v0, ($t1)
/* 1E30D0 801F2360 00021080 */  sll   $v0, $v0, 2
/* 1E30D4 801F2364 01425021 */  addu  $t2, $t2, $v0
/* 1E30D8 801F2368 8D4A98E0 */  lw    $t2, -0x6720($t2)
/* 1E30DC 801F236C 11400054 */  beqz  $t2, .L801F24C0_ovl10
/* 1E30E0 801F2370 00000000 */   nop   
/* 1E30E4 801F2374 0C02BEED */  jal   func_800AFBB4
/* 1E30E8 801F2378 8FA500F0 */   lw    $a1, 0xf0($sp)
/* 1E30EC 801F237C 8EAB0000 */  lw    $t3, ($s5)
/* 1E30F0 801F2380 27A40084 */  addiu $a0, $sp, 0x84
/* 1E30F4 801F2384 00003025 */  move  $a2, $zero
/* 1E30F8 801F2388 0C02C8D0 */  jal   func_800B2340
/* 1E30FC 801F238C 8D65003C */   lw    $a1, 0x3c($t3)
/* 1E3100 801F2390 8E300000 */  lw    $s0, ($s1)
/* 1E3104 801F2394 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 1E3108 801F2398 3C01800E */  lui   $at, 0x800e
/* 1E310C 801F239C 8E0C0000 */  lw    $t4, ($s0)
/* 1E3110 801F23A0 27A40078 */  addiu $a0, $sp, 0x78
/* 1E3114 801F23A4 00003025 */  move  $a2, $zero
/* 1E3118 801F23A8 000C6880 */  sll   $t5, $t4, 2
/* 1E311C 801F23AC 02ED7021 */  addu  $t6, $s7, $t5
/* 1E3120 801F23B0 E5CA0000 */  swc1  $f10, ($t6)
/* 1E3124 801F23B4 8E0F0000 */  lw    $t7, ($s0)
/* 1E3128 801F23B8 C7B00088 */  lwc1  $f16, 0x88($sp)
/* 1E312C 801F23BC 000FC080 */  sll   $t8, $t7, 2
/* 1E3130 801F23C0 03D8C821 */  addu  $t9, $fp, $t8
/* 1E3134 801F23C4 E7300000 */  swc1  $f16, ($t9)
/* 1E3138 801F23C8 8E080000 */  lw    $t0, ($s0)
/* 1E313C 801F23CC C7B2008C */  lwc1  $f18, 0x8c($sp)
/* 1E3140 801F23D0 00084880 */  sll   $t1, $t0, 2
/* 1E3144 801F23D4 00290821 */  addu  $at, $at, $t1
/* 1E3148 801F23D8 E4322950 */  swc1  $f18, 0x2950($at)
/* 1E314C 801F23DC 8EAA0000 */  lw    $t2, ($s5)
/* 1E3150 801F23E0 0C02C9B6 */  jal   func_800B26D8
/* 1E3154 801F23E4 8D45003C */   lw    $a1, 0x3c($t2)
/* 1E3158 801F23E8 8E300000 */  lw    $s0, ($s1)
/* 1E315C 801F23EC C7A40078 */  lwc1  $f4, 0x78($sp)
/* 1E3160 801F23F0 3C01800E */  lui   $at, 0x800e
/* 1E3164 801F23F4 8E0B0000 */  lw    $t3, ($s0)
/* 1E3168 801F23F8 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 1E316C 801F23FC C7A80080 */  lwc1  $f8, 0x80($sp)
/* 1E3170 801F2400 000B6080 */  sll   $t4, $t3, 2
/* 1E3174 801F2404 002C0821 */  addu  $at, $at, $t4
/* 1E3178 801F2408 E4244010 */  swc1  $f4, 0x4010($at)
/* 1E317C 801F240C 8E0D0000 */  lw    $t5, ($s0)
/* 1E3180 801F2410 3C01800E */  lui   $at, 0x800e
/* 1E3184 801F2414 8FA400F4 */  lw    $a0, 0xf4($sp)
/* 1E3188 801F2418 000D7080 */  sll   $t6, $t5, 2
/* 1E318C 801F241C 002E0821 */  addu  $at, $at, $t6
/* 1E3190 801F2420 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 1E3194 801F2424 8E0F0000 */  lw    $t7, ($s0)
/* 1E3198 801F2428 3C01800E */  lui   $at, 0x800e
/* 1E319C 801F242C 000FC080 */  sll   $t8, $t7, 2
/* 1E31A0 801F2430 00380821 */  addu  $at, $at, $t8
/* 1E31A4 801F2434 0C07C81D */  jal   func_801F2074_ovl10
/* 1E31A8 801F2438 E4284390 */   swc1  $f8, 0x4390($at)
/* 1E31AC 801F243C 14560006 */  bne   $v0, $s6, .L801F2458_ovl10
/* 1E31B0 801F2440 8FB900F4 */   lw    $t9, 0xf4($sp)
/* 1E31B4 801F2444 3C040003 */  lui   $a0, (0x00030065 >> 16) # lui $a0, 3
/* 1E31B8 801F2448 0C02A806 */  jal   func_800AA018
/* 1E31BC 801F244C 34840065 */   ori   $a0, (0x00030065 & 0xFFFF) # ori $a0, $a0, 0x65
/* 1E31C0 801F2450 10000014 */  b     .L801F24A4_ovl10
/* 1E31C4 801F2454 8E300000 */   lw    $s0, ($s1)
.L801F2458_ovl10:
/* 1E31C8 801F2458 24010006 */  li    $at, 6
/* 1E31CC 801F245C 1721000E */  bne   $t9, $at, .L801F2498_ovl10
/* 1E31D0 801F2460 3C040003 */   lui   $a0, 3
/* 1E31D4 801F2464 8E280000 */  lw    $t0, ($s1)
/* 1E31D8 801F2468 3C0B800F */  lui   $t3, 0x800f
/* 1E31DC 801F246C 8D090000 */  lw    $t1, ($t0)
/* 1E31E0 801F2470 00095080 */  sll   $t2, $t1, 2
/* 1E31E4 801F2474 016A5821 */  addu  $t3, $t3, $t2
/* 1E31E8 801F2478 8D6B9C60 */  lw    $t3, -0x63a0($t3)
/* 1E31EC 801F247C 16CB0006 */  bne   $s6, $t3, .L801F2498_ovl10
/* 1E31F0 801F2480 00000000 */   nop   
/* 1E31F4 801F2484 3C040003 */  lui   $a0, (0x00030067 >> 16) # lui $a0, 3
/* 1E31F8 801F2488 0C02A806 */  jal   func_800AA018
/* 1E31FC 801F248C 34840066 */   ori   $a0, (0x00030066 & 0xFFFF) # ori $a0, $a0, 0x66
/* 1E3200 801F2490 10000004 */  b     .L801F24A4_ovl10
/* 1E3204 801F2494 8E300000 */   lw    $s0, ($s1)
.L801F2498_ovl10:
/* 1E3208 801F2498 0C02A806 */  jal   func_800AA018
/* 1E320C 801F249C 34840067 */   ori   $a0, (0x00030067 & 0xFFFF) # ori $a0, $a0, 0x67
/* 1E3210 801F24A0 8E300000 */  lw    $s0, ($s1)
.L801F24A4_ovl10:
/* 1E3214 801F24A4 3C01800F */  lui   $at, 0x800f
/* 1E3218 801F24A8 8E0C0000 */  lw    $t4, ($s0)
/* 1E321C 801F24AC 000C6880 */  sll   $t5, $t4, 2
/* 1E3220 801F24B0 002D0821 */  addu  $at, $at, $t5
/* 1E3224 801F24B4 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1E3228 801F24B8 8E020000 */  lw    $v0, ($s0)
/* 1E322C 801F24BC 00021080 */  sll   $v0, $v0, 2
.L801F24C0_ovl10:
/* 1E3230 801F24C0 3C0E800F */  lui   $t6, 0x800f
/* 1E3234 801F24C4 01C27021 */  addu  $t6, $t6, $v0
/* 1E3238 801F24C8 8DCE9AA0 */  lw    $t6, -0x6560($t6)
/* 1E323C 801F24CC 3C04800F */  lui   $a0, 0x800f
/* 1E3240 801F24D0 00822021 */  addu  $a0, $a0, $v0
/* 1E3244 801F24D4 11C00034 */  beqz  $t6, .L801F25A8_ovl10
/* 1E3248 801F24D8 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 1E324C 801F24DC 4481A000 */  mtc1  $at, $f20
/* 1E3250 801F24E0 0C03FC73 */  jal   func_800FF1CC
/* 1E3254 801F24E4 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 1E3258 801F24E8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1E325C 801F24EC 44815000 */  mtc1  $at, $f10
/* 1E3260 801F24F0 00000000 */  nop   
/* 1E3264 801F24F4 460AB03E */  c.le.s $f22, $f10
/* 1E3268 801F24F8 00000000 */  nop   
/* 1E326C 801F24FC 45020016 */  bc1fl .L801F2558_ovl10
/* 1E3270 801F2500 00002025 */   move  $a0, $zero
/* 1E3274 801F2504 8E300000 */  lw    $s0, ($s1)
.L801F2508_ovl10:
/* 1E3278 801F2508 02C02025 */  move  $a0, $s6
/* 1E327C 801F250C 8E0F0000 */  lw    $t7, ($s0)
/* 1E3280 801F2510 000FC080 */  sll   $t8, $t7, 2
/* 1E3284 801F2514 0258C821 */  addu  $t9, $s2, $t8
/* 1E3288 801F2518 E7340000 */  swc1  $f20, ($t9)
/* 1E328C 801F251C 8E080000 */  lw    $t0, ($s0)
/* 1E3290 801F2520 00084880 */  sll   $t1, $t0, 2
/* 1E3294 801F2524 02695021 */  addu  $t2, $s3, $t1
/* 1E3298 801F2528 E5540000 */  swc1  $f20, ($t2)
/* 1E329C 801F252C 8E0B0000 */  lw    $t3, ($s0)
/* 1E32A0 801F2530 000B6080 */  sll   $t4, $t3, 2
/* 1E32A4 801F2534 028C6821 */  addu  $t5, $s4, $t4
/* 1E32A8 801F2538 0C002DAF */  jal   finish_current_thread
/* 1E32AC 801F253C E5B40000 */   swc1  $f20, ($t5)
/* 1E32B0 801F2540 4618A501 */  sub.s $f20, $f20, $f24
/* 1E32B4 801F2544 4614B03E */  c.le.s $f22, $f20
/* 1E32B8 801F2548 00000000 */  nop   
/* 1E32BC 801F254C 4503FFEE */  bc1tl .L801F2508_ovl10
/* 1E32C0 801F2550 8E300000 */   lw    $s0, ($s1)
/* 1E32C4 801F2554 00002025 */  move  $a0, $zero
.L801F2558_ovl10:
/* 1E32C8 801F2558 0C02BEED */  jal   func_800AFBB4
/* 1E32CC 801F255C 8E250000 */   lw    $a1, ($s1)
/* 1E32D0 801F2560 8E2E0000 */  lw    $t6, ($s1)
/* 1E32D4 801F2564 3C01800E */  lui   $at, 0x800e
/* 1E32D8 801F2568 24040003 */  li    $a0, 3
/* 1E32DC 801F256C 8DC20000 */  lw    $v0, ($t6)
/* 1E32E0 801F2570 00002825 */  move  $a1, $zero
/* 1E32E4 801F2574 24060007 */  li    $a2, 7
/* 1E32E8 801F2578 00021080 */  sll   $v0, $v0, 2
/* 1E32EC 801F257C 03C2C021 */  addu  $t8, $fp, $v0
/* 1E32F0 801F2580 00220821 */  addu  $at, $at, $v0
/* 1E32F4 801F2584 C4322950 */  lwc1  $f18, 0x2950($at)
/* 1E32F8 801F2588 C7100000 */  lwc1  $f16, ($t8)
/* 1E32FC 801F258C 02E27821 */  addu  $t7, $s7, $v0
/* 1E3300 801F2590 8DE70000 */  lw    $a3, ($t7)
/* 1E3304 801F2594 E7B20014 */  swc1  $f18, 0x14($sp)
/* 1E3308 801F2598 0C029FDD */  jal   func_800A7F74
/* 1E330C 801F259C E7B00010 */   swc1  $f16, 0x10($sp)
/* 1E3310 801F25A0 0C02BE85 */  jal   func_800AFA14
/* 1E3314 801F25A4 00000000 */   nop   
.L801F25A8_ovl10:
/* 1E3318 801F25A8 0C002DAF */  jal   finish_current_thread
/* 1E331C 801F25AC 02C02025 */   move  $a0, $s6
/* 1E3320 801F25B0 1000FF68 */  b     .L801F2354_ovl10
/* 1E3324 801F25B4 8E290000 */   lw    $t1, ($s1)
/* 1E3328 801F25B8 00000000 */  nop   
/* 1E332C 801F25BC 00000000 */  nop   
/* 1E3330 801F25C0 8FBF005C */  lw    $ra, 0x5c($sp)
/* 1E3334 801F25C4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 1E3338 801F25C8 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 1E333C 801F25CC D7B80030 */  ldc1  $f24, 0x30($sp)
/* 1E3340 801F25D0 8FB00038 */  lw    $s0, 0x38($sp)
/* 1E3344 801F25D4 8FB1003C */  lw    $s1, 0x3c($sp)
/* 1E3348 801F25D8 8FB20040 */  lw    $s2, 0x40($sp)
/* 1E334C 801F25DC 8FB30044 */  lw    $s3, 0x44($sp)
/* 1E3350 801F25E0 8FB40048 */  lw    $s4, 0x48($sp)
/* 1E3354 801F25E4 8FB5004C */  lw    $s5, 0x4c($sp)
/* 1E3358 801F25E8 8FB60050 */  lw    $s6, 0x50($sp)
/* 1E335C 801F25EC 8FB70054 */  lw    $s7, 0x54($sp)
/* 1E3360 801F25F0 8FBE0058 */  lw    $fp, 0x58($sp)
/* 1E3364 801F25F4 03E00008 */  jr    $ra
/* 1E3368 801F25F8 27BD00F0 */   addiu $sp, $sp, 0xf0
.size func_801F2098_ovl10, . - func_801F2098_ovl10

glabel func_801F25FC_ovl10
/* 1E336C 801F25FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1E3370 801F2600 AFA5003C */  sw    $a1, 0x3c($sp)
/* 1E3374 801F2604 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E3378 801F2608 AFA40038 */  sw    $a0, 0x38($sp)
/* 1E337C 801F260C 3C050003 */  lui   $a1, (0x00030014 >> 16) # lui $a1, 3
/* 1E3380 801F2610 3C060003 */  lui   $a2, (0x00030015 >> 16) # lui $a2, 3
/* 1E3384 801F2614 34C60015 */  ori   $a2, (0x00030015 & 0xFFFF) # ori $a2, $a2, 0x15
/* 1E3388 801F2618 34A50014 */  ori   $a1, (0x00030014 & 0xFFFF) # ori $a1, $a1, 0x14
/* 1E338C 801F261C 0C029E9C */  jal   func_800A7A70
/* 1E3390 801F2620 24040003 */   li    $a0, 3
/* 1E3394 801F2624 3C0E800E */  lui   $t6, %hi(D_800DE350) # $t6, 0x800e
/* 1E3398 801F2628 8DCEE350 */  lw    $t6, %lo(D_800DE350)($t6)
/* 1E339C 801F262C 27A4002C */  addiu $a0, $sp, 0x2c
/* 1E33A0 801F2630 00003025 */  move  $a2, $zero
/* 1E33A4 801F2634 0C02C8D0 */  jal   func_800B2340
/* 1E33A8 801F2638 8DC5003C */   lw    $a1, 0x3c($t6)
/* 1E33AC 801F263C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E33B0 801F2640 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E33B4 801F2644 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 1E33B8 801F2648 3C01800E */  lui   $at, 0x800e
/* 1E33BC 801F264C 8C4F0000 */  lw    $t7, ($v0)
/* 1E33C0 801F2650 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 1E33C4 801F2654 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 1E33C8 801F2658 000FC080 */  sll   $t8, $t7, 2
/* 1E33CC 801F265C 00380821 */  addu  $at, $at, $t8
/* 1E33D0 801F2660 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 1E33D4 801F2664 8C590000 */  lw    $t9, ($v0)
/* 1E33D8 801F2668 3C01800E */  lui   $at, 0x800e
/* 1E33DC 801F266C 3C0B800E */  lui   $t3, %hi(D_800DE350) # $t3, 0x800e
/* 1E33E0 801F2670 00194080 */  sll   $t0, $t9, 2
/* 1E33E4 801F2674 00280821 */  addu  $at, $at, $t0
/* 1E33E8 801F2678 E4262790 */  swc1  $f6, 0x2790($at)
/* 1E33EC 801F267C 8C490000 */  lw    $t1, ($v0)
/* 1E33F0 801F2680 3C01800E */  lui   $at, 0x800e
/* 1E33F4 801F2684 8D6BE350 */  lw    $t3, %lo(D_800DE350)($t3)
/* 1E33F8 801F2688 00095080 */  sll   $t2, $t1, 2
/* 1E33FC 801F268C 002A0821 */  addu  $at, $at, $t2
/* 1E3400 801F2690 E4282950 */  swc1  $f8, 0x2950($at)
/* 1E3404 801F2694 27A40020 */  addiu $a0, $sp, 0x20
/* 1E3408 801F2698 00003025 */  move  $a2, $zero
/* 1E340C 801F269C 0C02C9B6 */  jal   func_800B26D8
/* 1E3410 801F26A0 8D65003C */   lw    $a1, 0x3c($t3)
/* 1E3414 801F26A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E3418 801F26A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E341C 801F26AC C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 1E3420 801F26B0 3C01800E */  lui   $at, 0x800e
/* 1E3424 801F26B4 8C4C0000 */  lw    $t4, ($v0)
/* 1E3428 801F26B8 C7B00024 */  lwc1  $f16, 0x24($sp)
/* 1E342C 801F26BC 8FA8003C */  lw    $t0, 0x3c($sp)
/* 1E3430 801F26C0 000C6880 */  sll   $t5, $t4, 2
/* 1E3434 801F26C4 002D0821 */  addu  $at, $at, $t5
/* 1E3438 801F26C8 E42A4010 */  swc1  $f10, 0x4010($at)
/* 1E343C 801F26CC 8C4E0000 */  lw    $t6, ($v0)
/* 1E3440 801F26D0 3C01800E */  lui   $at, 0x800e
/* 1E3444 801F26D4 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 1E3448 801F26D8 000E7880 */  sll   $t7, $t6, 2
/* 1E344C 801F26DC 002F0821 */  addu  $at, $at, $t7
/* 1E3450 801F26E0 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 1E3454 801F26E4 8C580000 */  lw    $t8, ($v0)
/* 1E3458 801F26E8 3C01800E */  lui   $at, 0x800e
/* 1E345C 801F26EC 3C04801F */  lui   $a0, 0x801f
/* 1E3460 801F26F0 00084880 */  sll   $t1, $t0, 2
/* 1E3464 801F26F4 0018C880 */  sll   $t9, $t8, 2
/* 1E3468 801F26F8 00390821 */  addu  $at, $at, $t9
/* 1E346C 801F26FC 00892021 */  addu  $a0, $a0, $t1
/* 1E3470 801F2700 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 1E3474 801F2704 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 1E3478 801F2708 8C844938 */  lw    $a0, 0x4938($a0)
/* 1E347C 801F270C 24060010 */  li    $a2, 16
/* 1E3480 801F2710 0C02A8B2 */  jal   func_800AA2C8
/* 1E3484 801F2714 E4324390 */   swc1  $f18, 0x4390($at)
/* 1E3488 801F2718 8FAA003C */  lw    $t2, 0x3c($sp)
/* 1E348C 801F271C 3C0C801F */  lui   $t4, %hi(D_801F4948) # $t4, 0x801f
/* 1E3490 801F2720 258C4948 */  addiu $t4, %lo(D_801F4948) # addiu $t4, $t4, 0x4948
/* 1E3494 801F2724 000A58C0 */  sll   $t3, $t2, 3
/* 1E3498 801F2728 016C1021 */  addu  $v0, $t3, $t4
/* 1E349C 801F272C 8C440000 */  lw    $a0, ($v0)
/* 1E34A0 801F2730 50800005 */  beql  $a0, $zero, .L801F2748_ovl10
/* 1E34A4 801F2734 8C440004 */   lw    $a0, 4($v0)
/* 1E34A8 801F2738 0C02A806 */  jal   func_800AA018
/* 1E34AC 801F273C AFA2001C */   sw    $v0, 0x1c($sp)
/* 1E34B0 801F2740 8FA2001C */  lw    $v0, 0x1c($sp)
/* 1E34B4 801F2744 8C440004 */  lw    $a0, 4($v0)
.L801F2748_ovl10:
/* 1E34B8 801F2748 10800003 */  beqz  $a0, .L801F2758_ovl10
/* 1E34BC 801F274C 00000000 */   nop   
/* 1E34C0 801F2750 0C02A806 */  jal   func_800AA018
/* 1E34C4 801F2754 00000000 */   nop   
.L801F2758_ovl10:
/* 1E34C8 801F2758 0C02BE85 */  jal   func_800AFA14
/* 1E34CC 801F275C 00000000 */   nop   
/* 1E34D0 801F2760 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E34D4 801F2764 27BD0038 */  addiu $sp, $sp, 0x38
/* 1E34D8 801F2768 03E00008 */  jr    $ra
/* 1E34DC 801F276C 00000000 */   nop   
.size func_801F25FC_ovl10, . - func_801F25FC_ovl10

glabel func_801F2770_ovl10
/* 1E34E0 801F2770 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1E34E4 801F2774 3C0E800E */  lui   $t6, %hi(D_800DE350) # $t6, 0x800e
/* 1E34E8 801F2778 8DCEE350 */  lw    $t6, %lo(D_800DE350)($t6)
/* 1E34EC 801F277C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E34F0 801F2780 AFA40038 */  sw    $a0, 0x38($sp)
/* 1E34F4 801F2784 27A4002C */  addiu $a0, $sp, 0x2c
/* 1E34F8 801F2788 00003025 */  move  $a2, $zero
/* 1E34FC 801F278C 0C02C8D0 */  jal   func_800B2340
/* 1E3500 801F2790 8DC5003C */   lw    $a1, 0x3c($t6)
/* 1E3504 801F2794 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E3508 801F2798 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E350C 801F279C C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 1E3510 801F27A0 3C01800E */  lui   $at, 0x800e
/* 1E3514 801F27A4 8C4F0000 */  lw    $t7, ($v0)
/* 1E3518 801F27A8 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 1E351C 801F27AC C7A80034 */  lwc1  $f8, 0x34($sp)
/* 1E3520 801F27B0 000FC080 */  sll   $t8, $t7, 2
/* 1E3524 801F27B4 00380821 */  addu  $at, $at, $t8
/* 1E3528 801F27B8 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 1E352C 801F27BC 8C590000 */  lw    $t9, ($v0)
/* 1E3530 801F27C0 3C01800E */  lui   $at, 0x800e
/* 1E3534 801F27C4 3C0B800E */  lui   $t3, %hi(D_800DE350) # $t3, 0x800e
/* 1E3538 801F27C8 00194080 */  sll   $t0, $t9, 2
/* 1E353C 801F27CC 00280821 */  addu  $at, $at, $t0
/* 1E3540 801F27D0 E4262790 */  swc1  $f6, 0x2790($at)
/* 1E3544 801F27D4 8C490000 */  lw    $t1, ($v0)
/* 1E3548 801F27D8 3C01800E */  lui   $at, 0x800e
/* 1E354C 801F27DC 8D6BE350 */  lw    $t3, %lo(D_800DE350)($t3)
/* 1E3550 801F27E0 00095080 */  sll   $t2, $t1, 2
/* 1E3554 801F27E4 002A0821 */  addu  $at, $at, $t2
/* 1E3558 801F27E8 E4282950 */  swc1  $f8, 0x2950($at)
/* 1E355C 801F27EC 27A40020 */  addiu $a0, $sp, 0x20
/* 1E3560 801F27F0 00003025 */  move  $a2, $zero
/* 1E3564 801F27F4 0C02C9B6 */  jal   func_800B26D8
/* 1E3568 801F27F8 8D65003C */   lw    $a1, 0x3c($t3)
/* 1E356C 801F27FC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E3570 801F2800 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E3574 801F2804 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 1E3578 801F2808 3C01800E */  lui   $at, 0x800e
/* 1E357C 801F280C 8C4C0000 */  lw    $t4, ($v0)
/* 1E3580 801F2810 C7B00024 */  lwc1  $f16, 0x24($sp)
/* 1E3584 801F2814 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 1E3588 801F2818 000C6880 */  sll   $t5, $t4, 2
/* 1E358C 801F281C 002D0821 */  addu  $at, $at, $t5
/* 1E3590 801F2820 E42A4010 */  swc1  $f10, 0x4010($at)
/* 1E3594 801F2824 8C4E0000 */  lw    $t6, ($v0)
/* 1E3598 801F2828 3C01800E */  lui   $at, 0x800e
/* 1E359C 801F282C 3C04801F */  lui   $a0, %hi(D_801F4968) # $a0, 0x801f
/* 1E35A0 801F2830 000E7880 */  sll   $t7, $t6, 2
/* 1E35A4 801F2834 002F0821 */  addu  $at, $at, $t7
/* 1E35A8 801F2838 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 1E35AC 801F283C 8C580000 */  lw    $t8, ($v0)
/* 1E35B0 801F2840 3C01800E */  lui   $at, 0x800e
/* 1E35B4 801F2844 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 1E35B8 801F2848 0018C880 */  sll   $t9, $t8, 2
/* 1E35BC 801F284C 00390821 */  addu  $at, $at, $t9
/* 1E35C0 801F2850 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 1E35C4 801F2854 8C844968 */  lw    $a0, %lo(D_801F4968)($a0)
/* 1E35C8 801F2858 24060010 */  li    $a2, 16
/* 1E35CC 801F285C 0C02A619 */  jal   func_800A9864
/* 1E35D0 801F2860 E4324390 */   swc1  $f18, 0x4390($at)
/* 1E35D4 801F2864 3C04801F */  lui   $a0, %hi(D_801F496C) # $a0, 0x801f
/* 1E35D8 801F2868 8C84496C */  lw    $a0, %lo(D_801F496C)($a0)
/* 1E35DC 801F286C 10800003 */  beqz  $a0, .L801F287C_ovl10
/* 1E35E0 801F2870 00000000 */   nop   
/* 1E35E4 801F2874 0C02A806 */  jal   func_800AA018
/* 1E35E8 801F2878 00000000 */   nop   
.L801F287C_ovl10:
/* 1E35EC 801F287C 3C04801F */  lui   $a0, %hi(D_801F4970) # $a0, 0x801f
/* 1E35F0 801F2880 8C844970 */  lw    $a0, %lo(D_801F4970)($a0)
/* 1E35F4 801F2884 10800003 */  beqz  $a0, .L801F2894_ovl10
/* 1E35F8 801F2888 00000000 */   nop   
/* 1E35FC 801F288C 0C02A806 */  jal   func_800AA018
/* 1E3600 801F2890 00000000 */   nop   
.L801F2894_ovl10:
/* 1E3604 801F2894 0C02BE85 */  jal   func_800AFA14
/* 1E3608 801F2898 00000000 */   nop   
/* 1E360C 801F289C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E3610 801F28A0 27BD0038 */  addiu $sp, $sp, 0x38
/* 1E3614 801F28A4 03E00008 */  jr    $ra
/* 1E3618 801F28A8 00000000 */   nop   
.size func_801F2770_ovl10, . - func_801F2770_ovl10

glabel func_801F28AC_ovl10
/* 1E361C 801F28AC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E3620 801F28B0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E3624 801F28B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E3628 801F28B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E362C 801F28BC 8DC20000 */  lw    $v0, ($t6)
/* 1E3630 801F28C0 3C07800F */  lui   $a3, 0x800f
/* 1E3634 801F28C4 00021080 */  sll   $v0, $v0, 2
/* 1E3638 801F28C8 00E23821 */  addu  $a3, $a3, $v0
/* 1E363C 801F28CC 8CE798E0 */  lw    $a3, -0x6720($a3)
/* 1E3640 801F28D0 2CE1000F */  sltiu $at, $a3, 0xf
/* 1E3644 801F28D4 1020001D */  beqz  $at, .L801F294C_ovl10
/* 1E3648 801F28D8 00077880 */   sll   $t7, $a3, 2
/* 1E364C 801F28DC 3C01801F */  lui   $at, 0x801f
/* 1E3650 801F28E0 002F0821 */  addu  $at, $at, $t7
/* 1E3654 801F28E4 8C2F4CB8 */  lw    $t7, 0x4cb8($at)
/* 1E3658 801F28E8 01E00008 */  jr    $t7
/* 1E365C 801F28EC 00000000 */   nop   
/* 1E3660 801F28F0 3C06800F */  lui   $a2, 0x800f
/* 1E3664 801F28F4 00C23021 */  addu  $a2, $a2, $v0
/* 1E3668 801F28F8 8CC69AA0 */  lw    $a2, -0x6560($a2)
/* 1E366C 801F28FC 0C07C689 */  jal   func_801F1A24_ovl10
/* 1E3670 801F2900 00E02825 */   move  $a1, $a3
/* 1E3674 801F2904 10000011 */  b     .L801F294C_ovl10
/* 1E3678 801F2908 00000000 */   nop   
/* 1E367C 801F290C 0C07C728 */  jal   func_801F1CA0_ovl10
/* 1E3680 801F2910 24E5FFFD */   addiu $a1, $a3, -3
/* 1E3684 801F2914 1000000D */  b     .L801F294C_ovl10
/* 1E3688 801F2918 00000000 */   nop   
/* 1E368C 801F291C 0C07C826 */  jal   func_801F2098_ovl10
/* 1E3690 801F2920 24E5FFFA */   addiu $a1, $a3, -6
/* 1E3694 801F2924 10000009 */  b     .L801F294C_ovl10
/* 1E3698 801F2928 00000000 */   nop   
/* 1E369C 801F292C 3C05800F */  lui   $a1, 0x800f
/* 1E36A0 801F2930 00A22821 */  addu  $a1, $a1, $v0
/* 1E36A4 801F2934 0C07C97F */  jal   func_801F25FC_ovl10
/* 1E36A8 801F2938 8CA59AA0 */   lw    $a1, -0x6560($a1)
/* 1E36AC 801F293C 10000003 */  b     .L801F294C_ovl10
/* 1E36B0 801F2940 00000000 */   nop   
/* 1E36B4 801F2944 0C07C9DC */  jal   func_801F2770_ovl10
/* 1E36B8 801F2948 00000000 */   nop   
.L801F294C_ovl10:
/* 1E36BC 801F294C 0C02BE85 */  jal   func_800AFA14
/* 1E36C0 801F2950 00000000 */   nop   
/* 1E36C4 801F2954 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E36C8 801F2958 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E36CC 801F295C 03E00008 */  jr    $ra
/* 1E36D0 801F2960 00000000 */   nop   
.size func_801F28AC_ovl10, . - func_801F28AC_ovl10

glabel func_801F2964_ovl10
/* 1E36D4 801F2964 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1E36D8 801F2968 AFBF0034 */  sw    $ra, 0x34($sp)
/* 1E36DC 801F296C AFB60030 */  sw    $s6, 0x30($sp)
/* 1E36E0 801F2970 AFB5002C */  sw    $s5, 0x2c($sp)
/* 1E36E4 801F2974 AFB40028 */  sw    $s4, 0x28($sp)
/* 1E36E8 801F2978 AFB30024 */  sw    $s3, 0x24($sp)
/* 1E36EC 801F297C AFB20020 */  sw    $s2, 0x20($sp)
/* 1E36F0 801F2980 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1E36F4 801F2984 AFB00018 */  sw    $s0, 0x18($sp)
/* 1E36F8 801F2988 0C02AC3D */  jal   func_800AB0F4
/* 1E36FC 801F298C AFA40038 */   sw    $a0, 0x38($sp)
/* 1E3700 801F2990 244EFFED */  addiu $t6, $v0, -0x13
/* 1E3704 801F2994 2DC1000C */  sltiu $at, $t6, 0xc
/* 1E3708 801F2998 1020028A */  beqz  $at, .L801F33C4_ovl10
/* 1E370C 801F299C 8FA40038 */   lw    $a0, 0x38($sp)
/* 1E3710 801F29A0 000E7080 */  sll   $t6, $t6, 2
/* 1E3714 801F29A4 3C01801F */  lui   $at, 0x801f
/* 1E3718 801F29A8 002E0821 */  addu  $at, $at, $t6
/* 1E371C 801F29AC 8C2E4CF4 */  lw    $t6, 0x4cf4($at)
/* 1E3720 801F29B0 01C00008 */  jr    $t6
/* 1E3724 801F29B4 00000000 */   nop   
/* 1E3728 801F29B8 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E372C 801F29BC 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3730 801F29C0 8E300000 */  lw    $s0, ($s1)
/* 1E3734 801F29C4 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E3738 801F29C8 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E373C 801F29CC 260F0008 */  addiu $t7, $s0, 8
/* 1E3740 801F29D0 AE2F0000 */  sw    $t7, ($s1)
/* 1E3744 801F29D4 AE0D0000 */  sw    $t5, ($s0)
/* 1E3748 801F29D8 8C980000 */  lw    $t8, ($a0)
/* 1E374C 801F29DC 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3750 801F29E0 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E3754 801F29E4 0018C880 */  sll   $t9, $t8, 2
/* 1E3758 801F29E8 03F97021 */  addu  $t6, $ra, $t9
/* 1E375C 801F29EC 8DCF0000 */  lw    $t7, ($t6)
/* 1E3760 801F29F0 3C13DB02 */  lui   $s3, 0xdb02
/* 1E3764 801F29F4 24140018 */  li    $s4, 24
/* 1E3768 801F29F8 AE0F0004 */  sw    $t7, 4($s0)
/* 1E376C 801F29FC 8E300000 */  lw    $s0, ($s1)
/* 1E3770 801F2A00 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E3774 801F2A04 3C0E801F */  lui   $t6, %hi(D_801F4DA0) # $t6, 0x801f
/* 1E3778 801F2A08 26180008 */  addiu $t8, $s0, 8
/* 1E377C 801F2A0C AE380000 */  sw    $t8, ($s1)
/* 1E3780 801F2A10 AE140004 */  sw    $s4, 4($s0)
/* 1E3784 801F2A14 AE130000 */  sw    $s3, ($s0)
/* 1E3788 801F2A18 8E300000 */  lw    $s0, ($s1)
/* 1E378C 801F2A1C 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E3790 801F2A20 25CE4DA0 */  addiu $t6, %lo(D_801F4DA0) # addiu $t6, $t6, 0x4da0
/* 1E3794 801F2A24 26190008 */  addiu $t9, $s0, 8
/* 1E3798 801F2A28 AE390000 */  sw    $t9, ($s1)
/* 1E379C 801F2A2C AE0E0004 */  sw    $t6, 4($s0)
/* 1E37A0 801F2A30 AE150000 */  sw    $s5, ($s0)
/* 1E37A4 801F2A34 8E300000 */  lw    $s0, ($s1)
/* 1E37A8 801F2A38 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E37AC 801F2A3C 3C18801F */  lui   $t8, %hi(D_801F4D98) # $t8, 0x801f
/* 1E37B0 801F2A40 260F0008 */  addiu $t7, $s0, 8
/* 1E37B4 801F2A44 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E37B8 801F2A48 AE2F0000 */  sw    $t7, ($s1)
/* 1E37BC 801F2A4C 27184D98 */  addiu $t8, %lo(D_801F4D98) # addiu $t8, $t8, 0x4d98
/* 1E37C0 801F2A50 AE180004 */  sw    $t8, 4($s0)
/* 1E37C4 801F2A54 0C02AC48 */  jal   func_800AB120
/* 1E37C8 801F2A58 AE160000 */   sw    $s6, ($s0)
/* 1E37CC 801F2A5C 8E300000 */  lw    $s0, ($s1)
/* 1E37D0 801F2A60 3C0F801F */  lui   $t7, %hi(D_801F4758) # $t7, 0x801f
/* 1E37D4 801F2A64 25EF4758 */  addiu $t7, %lo(D_801F4758) # addiu $t7, $t7, 0x4758
/* 1E37D8 801F2A68 26190008 */  addiu $t9, $s0, 8
/* 1E37DC 801F2A6C AE390000 */  sw    $t9, ($s1)
/* 1E37E0 801F2A70 AE140004 */  sw    $s4, 4($s0)
/* 1E37E4 801F2A74 AE130000 */  sw    $s3, ($s0)
/* 1E37E8 801F2A78 8E300000 */  lw    $s0, ($s1)
/* 1E37EC 801F2A7C 3C19801F */  lui   $t9, %hi(D_801F4750) # $t9, 0x801f
/* 1E37F0 801F2A80 27394750 */  addiu $t9, %lo(D_801F4750) # addiu $t9, $t9, 0x4750
/* 1E37F4 801F2A84 260E0008 */  addiu $t6, $s0, 8
/* 1E37F8 801F2A88 AE2E0000 */  sw    $t6, ($s1)
/* 1E37FC 801F2A8C AE0F0004 */  sw    $t7, 4($s0)
/* 1E3800 801F2A90 AE150000 */  sw    $s5, ($s0)
/* 1E3804 801F2A94 8E300000 */  lw    $s0, ($s1)
/* 1E3808 801F2A98 26180008 */  addiu $t8, $s0, 8
/* 1E380C 801F2A9C AE380000 */  sw    $t8, ($s1)
/* 1E3810 801F2AA0 AE190004 */  sw    $t9, 4($s0)
/* 1E3814 801F2AA4 10000247 */  b     .L801F33C4_ovl10
/* 1E3818 801F2AA8 AE160000 */   sw    $s6, ($s0)
/* 1E381C 801F2AAC 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E3820 801F2AB0 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3824 801F2AB4 8E300000 */  lw    $s0, ($s1)
/* 1E3828 801F2AB8 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E382C 801F2ABC 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E3830 801F2AC0 260E0008 */  addiu $t6, $s0, 8
/* 1E3834 801F2AC4 AE2E0000 */  sw    $t6, ($s1)
/* 1E3838 801F2AC8 AE0D0000 */  sw    $t5, ($s0)
/* 1E383C 801F2ACC 8C8F0000 */  lw    $t7, ($a0)
/* 1E3840 801F2AD0 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3844 801F2AD4 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E3848 801F2AD8 000FC080 */  sll   $t8, $t7, 2
/* 1E384C 801F2ADC 03F8C821 */  addu  $t9, $ra, $t8
/* 1E3850 801F2AE0 8F2E0000 */  lw    $t6, ($t9)
/* 1E3854 801F2AE4 3C13DB02 */  lui   $s3, 0xdb02
/* 1E3858 801F2AE8 24140018 */  li    $s4, 24
/* 1E385C 801F2AEC AE0E0004 */  sw    $t6, 4($s0)
/* 1E3860 801F2AF0 8E300000 */  lw    $s0, ($s1)
/* 1E3864 801F2AF4 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E3868 801F2AF8 3C19801F */  lui   $t9, %hi(D_801F4DA0) # $t9, 0x801f
/* 1E386C 801F2AFC 260F0008 */  addiu $t7, $s0, 8
/* 1E3870 801F2B00 AE2F0000 */  sw    $t7, ($s1)
/* 1E3874 801F2B04 AE140004 */  sw    $s4, 4($s0)
/* 1E3878 801F2B08 AE130000 */  sw    $s3, ($s0)
/* 1E387C 801F2B0C 8E300000 */  lw    $s0, ($s1)
/* 1E3880 801F2B10 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E3884 801F2B14 27394DA0 */  addiu $t9, %lo(D_801F4DA0) # addiu $t9, $t9, 0x4da0
/* 1E3888 801F2B18 26180008 */  addiu $t8, $s0, 8
/* 1E388C 801F2B1C AE380000 */  sw    $t8, ($s1)
/* 1E3890 801F2B20 AE190004 */  sw    $t9, 4($s0)
/* 1E3894 801F2B24 AE150000 */  sw    $s5, ($s0)
/* 1E3898 801F2B28 8E300000 */  lw    $s0, ($s1)
/* 1E389C 801F2B2C 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E38A0 801F2B30 3C0F801F */  lui   $t7, %hi(D_801F4D98) # $t7, 0x801f
/* 1E38A4 801F2B34 260E0008 */  addiu $t6, $s0, 8
/* 1E38A8 801F2B38 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E38AC 801F2B3C AE2E0000 */  sw    $t6, ($s1)
/* 1E38B0 801F2B40 25EF4D98 */  addiu $t7, %lo(D_801F4D98) # addiu $t7, $t7, 0x4d98
/* 1E38B4 801F2B44 AE0F0004 */  sw    $t7, 4($s0)
/* 1E38B8 801F2B48 0C02AC7C */  jal   func_800AB1F0
/* 1E38BC 801F2B4C AE160000 */   sw    $s6, ($s0)
/* 1E38C0 801F2B50 8E300000 */  lw    $s0, ($s1)
/* 1E38C4 801F2B54 3C0E801F */  lui   $t6, %hi(D_801F4758) # $t6, 0x801f
/* 1E38C8 801F2B58 25CE4758 */  addiu $t6, %lo(D_801F4758) # addiu $t6, $t6, 0x4758
/* 1E38CC 801F2B5C 26180008 */  addiu $t8, $s0, 8
/* 1E38D0 801F2B60 AE380000 */  sw    $t8, ($s1)
/* 1E38D4 801F2B64 AE140004 */  sw    $s4, 4($s0)
/* 1E38D8 801F2B68 AE130000 */  sw    $s3, ($s0)
/* 1E38DC 801F2B6C 8E300000 */  lw    $s0, ($s1)
/* 1E38E0 801F2B70 3C18801F */  lui   $t8, %hi(D_801F4750) # $t8, 0x801f
/* 1E38E4 801F2B74 27184750 */  addiu $t8, %lo(D_801F4750) # addiu $t8, $t8, 0x4750
/* 1E38E8 801F2B78 26190008 */  addiu $t9, $s0, 8
/* 1E38EC 801F2B7C AE390000 */  sw    $t9, ($s1)
/* 1E38F0 801F2B80 AE0E0004 */  sw    $t6, 4($s0)
/* 1E38F4 801F2B84 AE150000 */  sw    $s5, ($s0)
/* 1E38F8 801F2B88 8E300000 */  lw    $s0, ($s1)
/* 1E38FC 801F2B8C 260F0008 */  addiu $t7, $s0, 8
/* 1E3900 801F2B90 AE2F0000 */  sw    $t7, ($s1)
/* 1E3904 801F2B94 AE180004 */  sw    $t8, 4($s0)
/* 1E3908 801F2B98 1000020A */  b     .L801F33C4_ovl10
/* 1E390C 801F2B9C AE160000 */   sw    $s6, ($s0)
/* 1E3910 801F2BA0 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E3914 801F2BA4 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3918 801F2BA8 8E300000 */  lw    $s0, ($s1)
/* 1E391C 801F2BAC 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E3920 801F2BB0 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E3924 801F2BB4 26190008 */  addiu $t9, $s0, 8
/* 1E3928 801F2BB8 AE390000 */  sw    $t9, ($s1)
/* 1E392C 801F2BBC AE0D0000 */  sw    $t5, ($s0)
/* 1E3930 801F2BC0 8C8E0000 */  lw    $t6, ($a0)
/* 1E3934 801F2BC4 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3938 801F2BC8 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E393C 801F2BCC 000E7880 */  sll   $t7, $t6, 2
/* 1E3940 801F2BD0 03EFC021 */  addu  $t8, $ra, $t7
/* 1E3944 801F2BD4 8F190000 */  lw    $t9, ($t8)
/* 1E3948 801F2BD8 3C13DB02 */  lui   $s3, 0xdb02
/* 1E394C 801F2BDC 24140018 */  li    $s4, 24
/* 1E3950 801F2BE0 AE190004 */  sw    $t9, 4($s0)
/* 1E3954 801F2BE4 8E300000 */  lw    $s0, ($s1)
/* 1E3958 801F2BE8 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E395C 801F2BEC 3C18801F */  lui   $t8, %hi(D_801F4DA0) # $t8, 0x801f
/* 1E3960 801F2BF0 260E0008 */  addiu $t6, $s0, 8
/* 1E3964 801F2BF4 AE2E0000 */  sw    $t6, ($s1)
/* 1E3968 801F2BF8 AE140004 */  sw    $s4, 4($s0)
/* 1E396C 801F2BFC AE130000 */  sw    $s3, ($s0)
/* 1E3970 801F2C00 8E300000 */  lw    $s0, ($s1)
/* 1E3974 801F2C04 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E3978 801F2C08 27184DA0 */  addiu $t8, %lo(D_801F4DA0) # addiu $t8, $t8, 0x4da0
/* 1E397C 801F2C0C 260F0008 */  addiu $t7, $s0, 8
/* 1E3980 801F2C10 AE2F0000 */  sw    $t7, ($s1)
/* 1E3984 801F2C14 AE180004 */  sw    $t8, 4($s0)
/* 1E3988 801F2C18 AE150000 */  sw    $s5, ($s0)
/* 1E398C 801F2C1C 8E300000 */  lw    $s0, ($s1)
/* 1E3990 801F2C20 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E3994 801F2C24 3C0E801F */  lui   $t6, %hi(D_801F4D98) # $t6, 0x801f
/* 1E3998 801F2C28 26190008 */  addiu $t9, $s0, 8
/* 1E399C 801F2C2C 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E39A0 801F2C30 AE390000 */  sw    $t9, ($s1)
/* 1E39A4 801F2C34 25CE4D98 */  addiu $t6, %lo(D_801F4D98) # addiu $t6, $t6, 0x4d98
/* 1E39A8 801F2C38 AE0E0004 */  sw    $t6, 4($s0)
/* 1E39AC 801F2C3C 0C0050E9 */  jal   func_800143A4_ovl10
/* 1E39B0 801F2C40 AE160000 */   sw    $s6, ($s0)
/* 1E39B4 801F2C44 8E300000 */  lw    $s0, ($s1)
/* 1E39B8 801F2C48 3C19801F */  lui   $t9, %hi(D_801F4758) # $t9, 0x801f
/* 1E39BC 801F2C4C 27394758 */  addiu $t9, %lo(D_801F4758) # addiu $t9, $t9, 0x4758
/* 1E39C0 801F2C50 260F0008 */  addiu $t7, $s0, 8
/* 1E39C4 801F2C54 AE2F0000 */  sw    $t7, ($s1)
/* 1E39C8 801F2C58 AE140004 */  sw    $s4, 4($s0)
/* 1E39CC 801F2C5C AE130000 */  sw    $s3, ($s0)
/* 1E39D0 801F2C60 8E300000 */  lw    $s0, ($s1)
/* 1E39D4 801F2C64 3C0F801F */  lui   $t7, %hi(D_801F4750) # $t7, 0x801f
/* 1E39D8 801F2C68 25EF4750 */  addiu $t7, %lo(D_801F4750) # addiu $t7, $t7, 0x4750
/* 1E39DC 801F2C6C 26180008 */  addiu $t8, $s0, 8
/* 1E39E0 801F2C70 AE380000 */  sw    $t8, ($s1)
/* 1E39E4 801F2C74 AE190004 */  sw    $t9, 4($s0)
/* 1E39E8 801F2C78 AE150000 */  sw    $s5, ($s0)
/* 1E39EC 801F2C7C 8E300000 */  lw    $s0, ($s1)
/* 1E39F0 801F2C80 260E0008 */  addiu $t6, $s0, 8
/* 1E39F4 801F2C84 AE2E0000 */  sw    $t6, ($s1)
/* 1E39F8 801F2C88 AE0F0004 */  sw    $t7, 4($s0)
/* 1E39FC 801F2C8C 100001CD */  b     .L801F33C4_ovl10
/* 1E3A00 801F2C90 AE160000 */   sw    $s6, ($s0)
/* 1E3A04 801F2C94 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E3A08 801F2C98 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3A0C 801F2C9C 8E300000 */  lw    $s0, ($s1)
/* 1E3A10 801F2CA0 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E3A14 801F2CA4 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E3A18 801F2CA8 26180008 */  addiu $t8, $s0, 8
/* 1E3A1C 801F2CAC AE380000 */  sw    $t8, ($s1)
/* 1E3A20 801F2CB0 AE0D0000 */  sw    $t5, ($s0)
/* 1E3A24 801F2CB4 8C990000 */  lw    $t9, ($a0)
/* 1E3A28 801F2CB8 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3A2C 801F2CBC 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E3A30 801F2CC0 00197080 */  sll   $t6, $t9, 2
/* 1E3A34 801F2CC4 03EE7821 */  addu  $t7, $ra, $t6
/* 1E3A38 801F2CC8 8DF80000 */  lw    $t8, ($t7)
/* 1E3A3C 801F2CCC 3C13DB02 */  lui   $s3, 0xdb02
/* 1E3A40 801F2CD0 24140018 */  li    $s4, 24
/* 1E3A44 801F2CD4 AE180004 */  sw    $t8, 4($s0)
/* 1E3A48 801F2CD8 8E300000 */  lw    $s0, ($s1)
/* 1E3A4C 801F2CDC 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E3A50 801F2CE0 3C0F801F */  lui   $t7, %hi(D_801F4DA0) # $t7, 0x801f
/* 1E3A54 801F2CE4 26190008 */  addiu $t9, $s0, 8
/* 1E3A58 801F2CE8 AE390000 */  sw    $t9, ($s1)
/* 1E3A5C 801F2CEC AE140004 */  sw    $s4, 4($s0)
/* 1E3A60 801F2CF0 AE130000 */  sw    $s3, ($s0)
/* 1E3A64 801F2CF4 8E300000 */  lw    $s0, ($s1)
/* 1E3A68 801F2CF8 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E3A6C 801F2CFC 25EF4DA0 */  addiu $t7, %lo(D_801F4DA0) # addiu $t7, $t7, 0x4da0
/* 1E3A70 801F2D00 260E0008 */  addiu $t6, $s0, 8
/* 1E3A74 801F2D04 AE2E0000 */  sw    $t6, ($s1)
/* 1E3A78 801F2D08 AE0F0004 */  sw    $t7, 4($s0)
/* 1E3A7C 801F2D0C AE150000 */  sw    $s5, ($s0)
/* 1E3A80 801F2D10 8E300000 */  lw    $s0, ($s1)
/* 1E3A84 801F2D14 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E3A88 801F2D18 3C19801F */  lui   $t9, %hi(D_801F4D98) # $t9, 0x801f
/* 1E3A8C 801F2D1C 26180008 */  addiu $t8, $s0, 8
/* 1E3A90 801F2D20 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E3A94 801F2D24 AE380000 */  sw    $t8, ($s1)
/* 1E3A98 801F2D28 27394D98 */  addiu $t9, %lo(D_801F4D98) # addiu $t9, $t9, 0x4d98
/* 1E3A9C 801F2D2C AE190004 */  sw    $t9, 4($s0)
/* 1E3AA0 801F2D30 0C005617 */  jal   func_8001585C_ovl10
/* 1E3AA4 801F2D34 AE160000 */   sw    $s6, ($s0)
/* 1E3AA8 801F2D38 8E300000 */  lw    $s0, ($s1)
/* 1E3AAC 801F2D3C 3C18801F */  lui   $t8, %hi(D_801F4758) # $t8, 0x801f
/* 1E3AB0 801F2D40 27184758 */  addiu $t8, %lo(D_801F4758) # addiu $t8, $t8, 0x4758
/* 1E3AB4 801F2D44 260E0008 */  addiu $t6, $s0, 8
/* 1E3AB8 801F2D48 AE2E0000 */  sw    $t6, ($s1)
/* 1E3ABC 801F2D4C AE140004 */  sw    $s4, 4($s0)
/* 1E3AC0 801F2D50 AE130000 */  sw    $s3, ($s0)
/* 1E3AC4 801F2D54 8E300000 */  lw    $s0, ($s1)
/* 1E3AC8 801F2D58 3C0E801F */  lui   $t6, %hi(D_801F4750) # $t6, 0x801f
/* 1E3ACC 801F2D5C 25CE4750 */  addiu $t6, %lo(D_801F4750) # addiu $t6, $t6, 0x4750
/* 1E3AD0 801F2D60 260F0008 */  addiu $t7, $s0, 8
/* 1E3AD4 801F2D64 AE2F0000 */  sw    $t7, ($s1)
/* 1E3AD8 801F2D68 AE180004 */  sw    $t8, 4($s0)
/* 1E3ADC 801F2D6C AE150000 */  sw    $s5, ($s0)
/* 1E3AE0 801F2D70 8E300000 */  lw    $s0, ($s1)
/* 1E3AE4 801F2D74 26190008 */  addiu $t9, $s0, 8
/* 1E3AE8 801F2D78 AE390000 */  sw    $t9, ($s1)
/* 1E3AEC 801F2D7C AE0E0004 */  sw    $t6, 4($s0)
/* 1E3AF0 801F2D80 10000190 */  b     .L801F33C4_ovl10
/* 1E3AF4 801F2D84 AE160000 */   sw    $s6, ($s0)
/* 1E3AF8 801F2D88 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E3AFC 801F2D8C 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3B00 801F2D90 8E300000 */  lw    $s0, ($s1)
/* 1E3B04 801F2D94 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E3B08 801F2D98 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E3B0C 801F2D9C 260F0008 */  addiu $t7, $s0, 8
/* 1E3B10 801F2DA0 AE2F0000 */  sw    $t7, ($s1)
/* 1E3B14 801F2DA4 AE0D0000 */  sw    $t5, ($s0)
/* 1E3B18 801F2DA8 8C980000 */  lw    $t8, ($a0)
/* 1E3B1C 801F2DAC 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3B20 801F2DB0 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E3B24 801F2DB4 0018C880 */  sll   $t9, $t8, 2
/* 1E3B28 801F2DB8 03F97021 */  addu  $t6, $ra, $t9
/* 1E3B2C 801F2DBC 8DCF0000 */  lw    $t7, ($t6)
/* 1E3B30 801F2DC0 3C13DB02 */  lui   $s3, 0xdb02
/* 1E3B34 801F2DC4 24140018 */  li    $s4, 24
/* 1E3B38 801F2DC8 AE0F0004 */  sw    $t7, 4($s0)
/* 1E3B3C 801F2DCC 8E320004 */  lw    $s2, 4($s1)
/* 1E3B40 801F2DD0 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E3B44 801F2DD4 3C02801F */  lui   $v0, %hi(D_801F4DA0) # $v0, 0x801f
/* 1E3B48 801F2DD8 26580008 */  addiu $t8, $s2, 8
/* 1E3B4C 801F2DDC AE380004 */  sw    $t8, 4($s1)
/* 1E3B50 801F2DE0 AE4D0000 */  sw    $t5, ($s2)
/* 1E3B54 801F2DE4 8C990000 */  lw    $t9, ($a0)
/* 1E3B58 801F2DE8 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E3B5C 801F2DEC 24424DA0 */  addiu $v0, %lo(D_801F4DA0) # addiu $v0, $v0, 0x4da0
/* 1E3B60 801F2DF0 00197080 */  sll   $t6, $t9, 2
/* 1E3B64 801F2DF4 03EE7821 */  addu  $t7, $ra, $t6
/* 1E3B68 801F2DF8 8DF80000 */  lw    $t8, ($t7)
/* 1E3B6C 801F2DFC 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E3B70 801F2E00 3C03801F */  lui   $v1, %hi(D_801F4D98) # $v1, 0x801f
/* 1E3B74 801F2E04 AE580004 */  sw    $t8, 4($s2)
/* 1E3B78 801F2E08 8E300000 */  lw    $s0, ($s1)
/* 1E3B7C 801F2E0C 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E3B80 801F2E10 24634D98 */  addiu $v1, %lo(D_801F4D98) # addiu $v1, $v1, 0x4d98
/* 1E3B84 801F2E14 26190008 */  addiu $t9, $s0, 8
/* 1E3B88 801F2E18 AE390000 */  sw    $t9, ($s1)
/* 1E3B8C 801F2E1C AE140004 */  sw    $s4, 4($s0)
/* 1E3B90 801F2E20 AE130000 */  sw    $s3, ($s0)
/* 1E3B94 801F2E24 8E300000 */  lw    $s0, ($s1)
/* 1E3B98 801F2E28 260E0008 */  addiu $t6, $s0, 8
/* 1E3B9C 801F2E2C AE2E0000 */  sw    $t6, ($s1)
/* 1E3BA0 801F2E30 AE020004 */  sw    $v0, 4($s0)
/* 1E3BA4 801F2E34 AE150000 */  sw    $s5, ($s0)
/* 1E3BA8 801F2E38 8E300000 */  lw    $s0, ($s1)
/* 1E3BAC 801F2E3C 260F0008 */  addiu $t7, $s0, 8
/* 1E3BB0 801F2E40 AE2F0000 */  sw    $t7, ($s1)
/* 1E3BB4 801F2E44 AE030004 */  sw    $v1, 4($s0)
/* 1E3BB8 801F2E48 AE160000 */  sw    $s6, ($s0)
/* 1E3BBC 801F2E4C 8E320004 */  lw    $s2, 4($s1)
/* 1E3BC0 801F2E50 26580008 */  addiu $t8, $s2, 8
/* 1E3BC4 801F2E54 AE380004 */  sw    $t8, 4($s1)
/* 1E3BC8 801F2E58 AE540004 */  sw    $s4, 4($s2)
/* 1E3BCC 801F2E5C AE530000 */  sw    $s3, ($s2)
/* 1E3BD0 801F2E60 8E320004 */  lw    $s2, 4($s1)
/* 1E3BD4 801F2E64 26590008 */  addiu $t9, $s2, 8
/* 1E3BD8 801F2E68 AE390004 */  sw    $t9, 4($s1)
/* 1E3BDC 801F2E6C AE420004 */  sw    $v0, 4($s2)
/* 1E3BE0 801F2E70 AE550000 */  sw    $s5, ($s2)
/* 1E3BE4 801F2E74 8E320004 */  lw    $s2, 4($s1)
/* 1E3BE8 801F2E78 264E0008 */  addiu $t6, $s2, 8
/* 1E3BEC 801F2E7C AE2E0004 */  sw    $t6, 4($s1)
/* 1E3BF0 801F2E80 AE430004 */  sw    $v1, 4($s2)
/* 1E3BF4 801F2E84 0C02AC5D */  jal   func_800AB174
/* 1E3BF8 801F2E88 AE560000 */   sw    $s6, ($s2)
/* 1E3BFC 801F2E8C 8E300000 */  lw    $s0, ($s1)
/* 1E3C00 801F2E90 3C02801F */  lui   $v0, %hi(D_801F4758) # $v0, 0x801f
/* 1E3C04 801F2E94 24424758 */  addiu $v0, %lo(D_801F4758) # addiu $v0, $v0, 0x4758
/* 1E3C08 801F2E98 260F0008 */  addiu $t7, $s0, 8
/* 1E3C0C 801F2E9C AE2F0000 */  sw    $t7, ($s1)
/* 1E3C10 801F2EA0 AE140004 */  sw    $s4, 4($s0)
/* 1E3C14 801F2EA4 AE130000 */  sw    $s3, ($s0)
/* 1E3C18 801F2EA8 8E300000 */  lw    $s0, ($s1)
/* 1E3C1C 801F2EAC 3C03801F */  lui   $v1, %hi(D_801F4750) # $v1, 0x801f
/* 1E3C20 801F2EB0 24634750 */  addiu $v1, %lo(D_801F4750) # addiu $v1, $v1, 0x4750
/* 1E3C24 801F2EB4 26180008 */  addiu $t8, $s0, 8
/* 1E3C28 801F2EB8 AE380000 */  sw    $t8, ($s1)
/* 1E3C2C 801F2EBC AE020004 */  sw    $v0, 4($s0)
/* 1E3C30 801F2EC0 AE150000 */  sw    $s5, ($s0)
/* 1E3C34 801F2EC4 8E300000 */  lw    $s0, ($s1)
/* 1E3C38 801F2EC8 26190008 */  addiu $t9, $s0, 8
/* 1E3C3C 801F2ECC AE390000 */  sw    $t9, ($s1)
/* 1E3C40 801F2ED0 AE030004 */  sw    $v1, 4($s0)
/* 1E3C44 801F2ED4 AE160000 */  sw    $s6, ($s0)
/* 1E3C48 801F2ED8 8E320004 */  lw    $s2, 4($s1)
/* 1E3C4C 801F2EDC 264E0008 */  addiu $t6, $s2, 8
/* 1E3C50 801F2EE0 AE2E0004 */  sw    $t6, 4($s1)
/* 1E3C54 801F2EE4 AE540004 */  sw    $s4, 4($s2)
/* 1E3C58 801F2EE8 AE530000 */  sw    $s3, ($s2)
/* 1E3C5C 801F2EEC 8E320004 */  lw    $s2, 4($s1)
/* 1E3C60 801F2EF0 264F0008 */  addiu $t7, $s2, 8
/* 1E3C64 801F2EF4 AE2F0004 */  sw    $t7, 4($s1)
/* 1E3C68 801F2EF8 AE420004 */  sw    $v0, 4($s2)
/* 1E3C6C 801F2EFC AE550000 */  sw    $s5, ($s2)
/* 1E3C70 801F2F00 8E320004 */  lw    $s2, 4($s1)
/* 1E3C74 801F2F04 26580008 */  addiu $t8, $s2, 8
/* 1E3C78 801F2F08 AE380004 */  sw    $t8, 4($s1)
/* 1E3C7C 801F2F0C AE430004 */  sw    $v1, 4($s2)
/* 1E3C80 801F2F10 1000012C */  b     .L801F33C4_ovl10
/* 1E3C84 801F2F14 AE560000 */   sw    $s6, ($s2)
/* 1E3C88 801F2F18 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E3C8C 801F2F1C 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3C90 801F2F20 8E300000 */  lw    $s0, ($s1)
/* 1E3C94 801F2F24 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E3C98 801F2F28 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E3C9C 801F2F2C 26190008 */  addiu $t9, $s0, 8
/* 1E3CA0 801F2F30 AE390000 */  sw    $t9, ($s1)
/* 1E3CA4 801F2F34 AE0D0000 */  sw    $t5, ($s0)
/* 1E3CA8 801F2F38 8C8E0000 */  lw    $t6, ($a0)
/* 1E3CAC 801F2F3C 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3CB0 801F2F40 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E3CB4 801F2F44 000E7880 */  sll   $t7, $t6, 2
/* 1E3CB8 801F2F48 03EFC021 */  addu  $t8, $ra, $t7
/* 1E3CBC 801F2F4C 8F190000 */  lw    $t9, ($t8)
/* 1E3CC0 801F2F50 3C13DB02 */  lui   $s3, 0xdb02
/* 1E3CC4 801F2F54 24140018 */  li    $s4, 24
/* 1E3CC8 801F2F58 AE190004 */  sw    $t9, 4($s0)
/* 1E3CCC 801F2F5C 8E320004 */  lw    $s2, 4($s1)
/* 1E3CD0 801F2F60 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E3CD4 801F2F64 3C02801F */  lui   $v0, %hi(D_801F4DA0) # $v0, 0x801f
/* 1E3CD8 801F2F68 264E0008 */  addiu $t6, $s2, 8
/* 1E3CDC 801F2F6C AE2E0004 */  sw    $t6, 4($s1)
/* 1E3CE0 801F2F70 AE4D0000 */  sw    $t5, ($s2)
/* 1E3CE4 801F2F74 8C8F0000 */  lw    $t7, ($a0)
/* 1E3CE8 801F2F78 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E3CEC 801F2F7C 24424DA0 */  addiu $v0, %lo(D_801F4DA0) # addiu $v0, $v0, 0x4da0
/* 1E3CF0 801F2F80 000FC080 */  sll   $t8, $t7, 2
/* 1E3CF4 801F2F84 03F8C821 */  addu  $t9, $ra, $t8
/* 1E3CF8 801F2F88 8F2E0000 */  lw    $t6, ($t9)
/* 1E3CFC 801F2F8C 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E3D00 801F2F90 3C03801F */  lui   $v1, %hi(D_801F4D98) # $v1, 0x801f
/* 1E3D04 801F2F94 AE4E0004 */  sw    $t6, 4($s2)
/* 1E3D08 801F2F98 8E300000 */  lw    $s0, ($s1)
/* 1E3D0C 801F2F9C 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E3D10 801F2FA0 24634D98 */  addiu $v1, %lo(D_801F4D98) # addiu $v1, $v1, 0x4d98
/* 1E3D14 801F2FA4 260F0008 */  addiu $t7, $s0, 8
/* 1E3D18 801F2FA8 AE2F0000 */  sw    $t7, ($s1)
/* 1E3D1C 801F2FAC AE140004 */  sw    $s4, 4($s0)
/* 1E3D20 801F2FB0 AE130000 */  sw    $s3, ($s0)
/* 1E3D24 801F2FB4 8E300000 */  lw    $s0, ($s1)
/* 1E3D28 801F2FB8 26180008 */  addiu $t8, $s0, 8
/* 1E3D2C 801F2FBC AE380000 */  sw    $t8, ($s1)
/* 1E3D30 801F2FC0 AE020004 */  sw    $v0, 4($s0)
/* 1E3D34 801F2FC4 AE150000 */  sw    $s5, ($s0)
/* 1E3D38 801F2FC8 8E300000 */  lw    $s0, ($s1)
/* 1E3D3C 801F2FCC 26190008 */  addiu $t9, $s0, 8
/* 1E3D40 801F2FD0 AE390000 */  sw    $t9, ($s1)
/* 1E3D44 801F2FD4 AE030004 */  sw    $v1, 4($s0)
/* 1E3D48 801F2FD8 AE160000 */  sw    $s6, ($s0)
/* 1E3D4C 801F2FDC 8E320004 */  lw    $s2, 4($s1)
/* 1E3D50 801F2FE0 264E0008 */  addiu $t6, $s2, 8
/* 1E3D54 801F2FE4 AE2E0004 */  sw    $t6, 4($s1)
/* 1E3D58 801F2FE8 AE540004 */  sw    $s4, 4($s2)
/* 1E3D5C 801F2FEC AE530000 */  sw    $s3, ($s2)
/* 1E3D60 801F2FF0 8E320004 */  lw    $s2, 4($s1)
/* 1E3D64 801F2FF4 264F0008 */  addiu $t7, $s2, 8
/* 1E3D68 801F2FF8 AE2F0004 */  sw    $t7, 4($s1)
/* 1E3D6C 801F2FFC AE420004 */  sw    $v0, 4($s2)
/* 1E3D70 801F3000 AE550000 */  sw    $s5, ($s2)
/* 1E3D74 801F3004 8E320004 */  lw    $s2, 4($s1)
/* 1E3D78 801F3008 26580008 */  addiu $t8, $s2, 8
/* 1E3D7C 801F300C AE380004 */  sw    $t8, 4($s1)
/* 1E3D80 801F3010 AE430004 */  sw    $v1, 4($s2)
/* 1E3D84 801F3014 0C02AC91 */  jal   func_800AB244
/* 1E3D88 801F3018 AE560000 */   sw    $s6, ($s2)
/* 1E3D8C 801F301C 8E300000 */  lw    $s0, ($s1)
/* 1E3D90 801F3020 3C02801F */  lui   $v0, %hi(D_801F4758) # $v0, 0x801f
/* 1E3D94 801F3024 24424758 */  addiu $v0, %lo(D_801F4758) # addiu $v0, $v0, 0x4758
/* 1E3D98 801F3028 26190008 */  addiu $t9, $s0, 8
/* 1E3D9C 801F302C AE390000 */  sw    $t9, ($s1)
/* 1E3DA0 801F3030 AE140004 */  sw    $s4, 4($s0)
/* 1E3DA4 801F3034 AE130000 */  sw    $s3, ($s0)
/* 1E3DA8 801F3038 8E300000 */  lw    $s0, ($s1)
/* 1E3DAC 801F303C 3C03801F */  lui   $v1, %hi(D_801F4750) # $v1, 0x801f
/* 1E3DB0 801F3040 24634750 */  addiu $v1, %lo(D_801F4750) # addiu $v1, $v1, 0x4750
/* 1E3DB4 801F3044 260E0008 */  addiu $t6, $s0, 8
/* 1E3DB8 801F3048 AE2E0000 */  sw    $t6, ($s1)
/* 1E3DBC 801F304C AE020004 */  sw    $v0, 4($s0)
/* 1E3DC0 801F3050 AE150000 */  sw    $s5, ($s0)
/* 1E3DC4 801F3054 8E300000 */  lw    $s0, ($s1)
/* 1E3DC8 801F3058 260F0008 */  addiu $t7, $s0, 8
/* 1E3DCC 801F305C AE2F0000 */  sw    $t7, ($s1)
/* 1E3DD0 801F3060 AE030004 */  sw    $v1, 4($s0)
/* 1E3DD4 801F3064 AE160000 */  sw    $s6, ($s0)
/* 1E3DD8 801F3068 8E320004 */  lw    $s2, 4($s1)
/* 1E3DDC 801F306C 26580008 */  addiu $t8, $s2, 8
/* 1E3DE0 801F3070 AE380004 */  sw    $t8, 4($s1)
/* 1E3DE4 801F3074 AE540004 */  sw    $s4, 4($s2)
/* 1E3DE8 801F3078 AE530000 */  sw    $s3, ($s2)
/* 1E3DEC 801F307C 8E320004 */  lw    $s2, 4($s1)
/* 1E3DF0 801F3080 26590008 */  addiu $t9, $s2, 8
/* 1E3DF4 801F3084 AE390004 */  sw    $t9, 4($s1)
/* 1E3DF8 801F3088 AE420004 */  sw    $v0, 4($s2)
/* 1E3DFC 801F308C AE550000 */  sw    $s5, ($s2)
/* 1E3E00 801F3090 8E320004 */  lw    $s2, 4($s1)
/* 1E3E04 801F3094 264E0008 */  addiu $t6, $s2, 8
/* 1E3E08 801F3098 AE2E0004 */  sw    $t6, 4($s1)
/* 1E3E0C 801F309C AE430004 */  sw    $v1, 4($s2)
/* 1E3E10 801F30A0 100000C8 */  b     .L801F33C4_ovl10
/* 1E3E14 801F30A4 AE560000 */   sw    $s6, ($s2)
/* 1E3E18 801F30A8 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E3E1C 801F30AC 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3E20 801F30B0 8E300000 */  lw    $s0, ($s1)
/* 1E3E24 801F30B4 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E3E28 801F30B8 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E3E2C 801F30BC 260F0008 */  addiu $t7, $s0, 8
/* 1E3E30 801F30C0 AE2F0000 */  sw    $t7, ($s1)
/* 1E3E34 801F30C4 AE0D0000 */  sw    $t5, ($s0)
/* 1E3E38 801F30C8 8C980000 */  lw    $t8, ($a0)
/* 1E3E3C 801F30CC 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3E40 801F30D0 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E3E44 801F30D4 0018C880 */  sll   $t9, $t8, 2
/* 1E3E48 801F30D8 03F97021 */  addu  $t6, $ra, $t9
/* 1E3E4C 801F30DC 8DCF0000 */  lw    $t7, ($t6)
/* 1E3E50 801F30E0 3C13DB02 */  lui   $s3, 0xdb02
/* 1E3E54 801F30E4 24140018 */  li    $s4, 24
/* 1E3E58 801F30E8 AE0F0004 */  sw    $t7, 4($s0)
/* 1E3E5C 801F30EC 8E320004 */  lw    $s2, 4($s1)
/* 1E3E60 801F30F0 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E3E64 801F30F4 3C02801F */  lui   $v0, %hi(D_801F4DA0) # $v0, 0x801f
/* 1E3E68 801F30F8 26580008 */  addiu $t8, $s2, 8
/* 1E3E6C 801F30FC AE380004 */  sw    $t8, 4($s1)
/* 1E3E70 801F3100 AE4D0000 */  sw    $t5, ($s2)
/* 1E3E74 801F3104 8C990000 */  lw    $t9, ($a0)
/* 1E3E78 801F3108 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E3E7C 801F310C 24424DA0 */  addiu $v0, %lo(D_801F4DA0) # addiu $v0, $v0, 0x4da0
/* 1E3E80 801F3110 00197080 */  sll   $t6, $t9, 2
/* 1E3E84 801F3114 03EE7821 */  addu  $t7, $ra, $t6
/* 1E3E88 801F3118 8DF80000 */  lw    $t8, ($t7)
/* 1E3E8C 801F311C 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E3E90 801F3120 3C03801F */  lui   $v1, %hi(D_801F4D98) # $v1, 0x801f
/* 1E3E94 801F3124 AE580004 */  sw    $t8, 4($s2)
/* 1E3E98 801F3128 8E300000 */  lw    $s0, ($s1)
/* 1E3E9C 801F312C 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E3EA0 801F3130 24634D98 */  addiu $v1, %lo(D_801F4D98) # addiu $v1, $v1, 0x4d98
/* 1E3EA4 801F3134 26190008 */  addiu $t9, $s0, 8
/* 1E3EA8 801F3138 AE390000 */  sw    $t9, ($s1)
/* 1E3EAC 801F313C AE140004 */  sw    $s4, 4($s0)
/* 1E3EB0 801F3140 AE130000 */  sw    $s3, ($s0)
/* 1E3EB4 801F3144 8E300000 */  lw    $s0, ($s1)
/* 1E3EB8 801F3148 260E0008 */  addiu $t6, $s0, 8
/* 1E3EBC 801F314C AE2E0000 */  sw    $t6, ($s1)
/* 1E3EC0 801F3150 AE020004 */  sw    $v0, 4($s0)
/* 1E3EC4 801F3154 AE150000 */  sw    $s5, ($s0)
/* 1E3EC8 801F3158 8E300000 */  lw    $s0, ($s1)
/* 1E3ECC 801F315C 260F0008 */  addiu $t7, $s0, 8
/* 1E3ED0 801F3160 AE2F0000 */  sw    $t7, ($s1)
/* 1E3ED4 801F3164 AE030004 */  sw    $v1, 4($s0)
/* 1E3ED8 801F3168 AE160000 */  sw    $s6, ($s0)
/* 1E3EDC 801F316C 8E320004 */  lw    $s2, 4($s1)
/* 1E3EE0 801F3170 26580008 */  addiu $t8, $s2, 8
/* 1E3EE4 801F3174 AE380004 */  sw    $t8, 4($s1)
/* 1E3EE8 801F3178 AE540004 */  sw    $s4, 4($s2)
/* 1E3EEC 801F317C AE530000 */  sw    $s3, ($s2)
/* 1E3EF0 801F3180 8E320004 */  lw    $s2, 4($s1)
/* 1E3EF4 801F3184 26590008 */  addiu $t9, $s2, 8
/* 1E3EF8 801F3188 AE390004 */  sw    $t9, 4($s1)
/* 1E3EFC 801F318C AE420004 */  sw    $v0, 4($s2)
/* 1E3F00 801F3190 AE550000 */  sw    $s5, ($s2)
/* 1E3F04 801F3194 8E320004 */  lw    $s2, 4($s1)
/* 1E3F08 801F3198 264E0008 */  addiu $t6, $s2, 8
/* 1E3F0C 801F319C AE2E0004 */  sw    $t6, 4($s1)
/* 1E3F10 801F31A0 AE430004 */  sw    $v1, 4($s2)
/* 1E3F14 801F31A4 0C0052B5 */  jal   func_80014AD4_ovl10
/* 1E3F18 801F31A8 AE560000 */   sw    $s6, ($s2)
/* 1E3F1C 801F31AC 8E300000 */  lw    $s0, ($s1)
/* 1E3F20 801F31B0 3C02801F */  lui   $v0, %hi(D_801F4758) # $v0, 0x801f
/* 1E3F24 801F31B4 24424758 */  addiu $v0, %lo(D_801F4758) # addiu $v0, $v0, 0x4758
/* 1E3F28 801F31B8 260F0008 */  addiu $t7, $s0, 8
/* 1E3F2C 801F31BC AE2F0000 */  sw    $t7, ($s1)
/* 1E3F30 801F31C0 AE140004 */  sw    $s4, 4($s0)
/* 1E3F34 801F31C4 AE130000 */  sw    $s3, ($s0)
/* 1E3F38 801F31C8 8E300000 */  lw    $s0, ($s1)
/* 1E3F3C 801F31CC 3C03801F */  lui   $v1, %hi(D_801F4750) # $v1, 0x801f
/* 1E3F40 801F31D0 24634750 */  addiu $v1, %lo(D_801F4750) # addiu $v1, $v1, 0x4750
/* 1E3F44 801F31D4 26180008 */  addiu $t8, $s0, 8
/* 1E3F48 801F31D8 AE380000 */  sw    $t8, ($s1)
/* 1E3F4C 801F31DC AE020004 */  sw    $v0, 4($s0)
/* 1E3F50 801F31E0 AE150000 */  sw    $s5, ($s0)
/* 1E3F54 801F31E4 8E300000 */  lw    $s0, ($s1)
/* 1E3F58 801F31E8 26190008 */  addiu $t9, $s0, 8
/* 1E3F5C 801F31EC AE390000 */  sw    $t9, ($s1)
/* 1E3F60 801F31F0 AE030004 */  sw    $v1, 4($s0)
/* 1E3F64 801F31F4 AE160000 */  sw    $s6, ($s0)
/* 1E3F68 801F31F8 8E320004 */  lw    $s2, 4($s1)
/* 1E3F6C 801F31FC 264E0008 */  addiu $t6, $s2, 8
/* 1E3F70 801F3200 AE2E0004 */  sw    $t6, 4($s1)
/* 1E3F74 801F3204 AE540004 */  sw    $s4, 4($s2)
/* 1E3F78 801F3208 AE530000 */  sw    $s3, ($s2)
/* 1E3F7C 801F320C 8E320004 */  lw    $s2, 4($s1)
/* 1E3F80 801F3210 264F0008 */  addiu $t7, $s2, 8
/* 1E3F84 801F3214 AE2F0004 */  sw    $t7, 4($s1)
/* 1E3F88 801F3218 AE420004 */  sw    $v0, 4($s2)
/* 1E3F8C 801F321C AE550000 */  sw    $s5, ($s2)
/* 1E3F90 801F3220 8E320004 */  lw    $s2, 4($s1)
/* 1E3F94 801F3224 26580008 */  addiu $t8, $s2, 8
/* 1E3F98 801F3228 AE380004 */  sw    $t8, 4($s1)
/* 1E3F9C 801F322C AE430004 */  sw    $v1, 4($s2)
/* 1E3FA0 801F3230 10000064 */  b     .L801F33C4_ovl10
/* 1E3FA4 801F3234 AE560000 */   sw    $s6, ($s2)
/* 1E3FA8 801F3238 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 1E3FAC 801F323C 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 1E3FB0 801F3240 8E300000 */  lw    $s0, ($s1)
/* 1E3FB4 801F3244 3C0DDB06 */  lui   $t5, (0xDB060010 >> 16) # lui $t5, 0xdb06
/* 1E3FB8 801F3248 35AD0010 */  ori   $t5, (0xDB060010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 1E3FBC 801F324C 26190008 */  addiu $t9, $s0, 8
/* 1E3FC0 801F3250 AE390000 */  sw    $t9, ($s1)
/* 1E3FC4 801F3254 AE0D0000 */  sw    $t5, ($s0)
/* 1E3FC8 801F3258 8C8E0000 */  lw    $t6, ($a0)
/* 1E3FCC 801F325C 3C1F800E */  lui   $ra, %hi(gSegment4StartArray) # $ra, 0x800e
/* 1E3FD0 801F3260 27FFF4D0 */  addiu $ra, %lo(gSegment4StartArray) # addiu $ra, $ra, -0xb30
/* 1E3FD4 801F3264 000E7880 */  sll   $t7, $t6, 2
/* 1E3FD8 801F3268 03EFC021 */  addu  $t8, $ra, $t7
/* 1E3FDC 801F326C 8F190000 */  lw    $t9, ($t8)
/* 1E3FE0 801F3270 3C13DB02 */  lui   $s3, 0xdb02
/* 1E3FE4 801F3274 24140018 */  li    $s4, 24
/* 1E3FE8 801F3278 AE190004 */  sw    $t9, 4($s0)
/* 1E3FEC 801F327C 8E320004 */  lw    $s2, 4($s1)
/* 1E3FF0 801F3280 3C15DC08 */  lui   $s5, (0xDC08060A >> 16) # lui $s5, 0xdc08
/* 1E3FF4 801F3284 3C02801F */  lui   $v0, %hi(D_801F4DA0) # $v0, 0x801f
/* 1E3FF8 801F3288 264E0008 */  addiu $t6, $s2, 8
/* 1E3FFC 801F328C AE2E0004 */  sw    $t6, 4($s1)
/* 1E4000 801F3290 AE4D0000 */  sw    $t5, ($s2)
/* 1E4004 801F3294 8C8F0000 */  lw    $t7, ($a0)
/* 1E4008 801F3298 36B5060A */  ori   $s5, (0xDC08060A & 0xFFFF) # ori $s5, $s5, 0x60a
/* 1E400C 801F329C 24424DA0 */  addiu $v0, %lo(D_801F4DA0) # addiu $v0, $v0, 0x4da0
/* 1E4010 801F32A0 000FC080 */  sll   $t8, $t7, 2
/* 1E4014 801F32A4 03F8C821 */  addu  $t9, $ra, $t8
/* 1E4018 801F32A8 8F2E0000 */  lw    $t6, ($t9)
/* 1E401C 801F32AC 3C16DC08 */  lui   $s6, (0xDC08090A >> 16) # lui $s6, 0xdc08
/* 1E4020 801F32B0 3C03801F */  lui   $v1, %hi(D_801F4D98) # $v1, 0x801f
/* 1E4024 801F32B4 AE4E0004 */  sw    $t6, 4($s2)
/* 1E4028 801F32B8 8E300000 */  lw    $s0, ($s1)
/* 1E402C 801F32BC 36D6090A */  ori   $s6, (0xDC08090A & 0xFFFF) # ori $s6, $s6, 0x90a
/* 1E4030 801F32C0 24634D98 */  addiu $v1, %lo(D_801F4D98) # addiu $v1, $v1, 0x4d98
/* 1E4034 801F32C4 260F0008 */  addiu $t7, $s0, 8
/* 1E4038 801F32C8 AE2F0000 */  sw    $t7, ($s1)
/* 1E403C 801F32CC AE140004 */  sw    $s4, 4($s0)
/* 1E4040 801F32D0 AE130000 */  sw    $s3, ($s0)
/* 1E4044 801F32D4 8E300000 */  lw    $s0, ($s1)
/* 1E4048 801F32D8 26180008 */  addiu $t8, $s0, 8
/* 1E404C 801F32DC AE380000 */  sw    $t8, ($s1)
/* 1E4050 801F32E0 AE020004 */  sw    $v0, 4($s0)
/* 1E4054 801F32E4 AE150000 */  sw    $s5, ($s0)
/* 1E4058 801F32E8 8E300000 */  lw    $s0, ($s1)
/* 1E405C 801F32EC 26190008 */  addiu $t9, $s0, 8
/* 1E4060 801F32F0 AE390000 */  sw    $t9, ($s1)
/* 1E4064 801F32F4 AE030004 */  sw    $v1, 4($s0)
/* 1E4068 801F32F8 AE160000 */  sw    $s6, ($s0)
/* 1E406C 801F32FC 8E320004 */  lw    $s2, 4($s1)
/* 1E4070 801F3300 264E0008 */  addiu $t6, $s2, 8
/* 1E4074 801F3304 AE2E0004 */  sw    $t6, 4($s1)
/* 1E4078 801F3308 AE540004 */  sw    $s4, 4($s2)
/* 1E407C 801F330C AE530000 */  sw    $s3, ($s2)
/* 1E4080 801F3310 8E320004 */  lw    $s2, 4($s1)
/* 1E4084 801F3314 264F0008 */  addiu $t7, $s2, 8
/* 1E4088 801F3318 AE2F0004 */  sw    $t7, 4($s1)
/* 1E408C 801F331C AE420004 */  sw    $v0, 4($s2)
/* 1E4090 801F3320 AE550000 */  sw    $s5, ($s2)
/* 1E4094 801F3324 8E320004 */  lw    $s2, 4($s1)
/* 1E4098 801F3328 26580008 */  addiu $t8, $s2, 8
/* 1E409C 801F332C AE380004 */  sw    $t8, 4($s1)
/* 1E40A0 801F3330 AE430004 */  sw    $v1, 4($s2)
/* 1E40A4 801F3334 0C0056F3 */  jal   func_80015BCC_ovl10
/* 1E40A8 801F3338 AE560000 */   sw    $s6, ($s2)
/* 1E40AC 801F333C 8E300000 */  lw    $s0, ($s1)
/* 1E40B0 801F3340 3C02801F */  lui   $v0, %hi(D_801F4758) # $v0, 0x801f
/* 1E40B4 801F3344 24424758 */  addiu $v0, %lo(D_801F4758) # addiu $v0, $v0, 0x4758
/* 1E40B8 801F3348 26190008 */  addiu $t9, $s0, 8
/* 1E40BC 801F334C AE390000 */  sw    $t9, ($s1)
/* 1E40C0 801F3350 AE140004 */  sw    $s4, 4($s0)
/* 1E40C4 801F3354 AE130000 */  sw    $s3, ($s0)
/* 1E40C8 801F3358 8E300000 */  lw    $s0, ($s1)
/* 1E40CC 801F335C 3C03801F */  lui   $v1, %hi(D_801F4750) # $v1, 0x801f
/* 1E40D0 801F3360 24634750 */  addiu $v1, %lo(D_801F4750) # addiu $v1, $v1, 0x4750
/* 1E40D4 801F3364 260E0008 */  addiu $t6, $s0, 8
/* 1E40D8 801F3368 AE2E0000 */  sw    $t6, ($s1)
/* 1E40DC 801F336C AE020004 */  sw    $v0, 4($s0)
/* 1E40E0 801F3370 AE150000 */  sw    $s5, ($s0)
/* 1E40E4 801F3374 8E300000 */  lw    $s0, ($s1)
/* 1E40E8 801F3378 260F0008 */  addiu $t7, $s0, 8
/* 1E40EC 801F337C AE2F0000 */  sw    $t7, ($s1)
/* 1E40F0 801F3380 AE030004 */  sw    $v1, 4($s0)
/* 1E40F4 801F3384 AE160000 */  sw    $s6, ($s0)
/* 1E40F8 801F3388 8E320004 */  lw    $s2, 4($s1)
/* 1E40FC 801F338C 26580008 */  addiu $t8, $s2, 8
/* 1E4100 801F3390 AE380004 */  sw    $t8, 4($s1)
/* 1E4104 801F3394 AE540004 */  sw    $s4, 4($s2)
/* 1E4108 801F3398 AE530000 */  sw    $s3, ($s2)
/* 1E410C 801F339C 8E320004 */  lw    $s2, 4($s1)
/* 1E4110 801F33A0 26590008 */  addiu $t9, $s2, 8
/* 1E4114 801F33A4 AE390004 */  sw    $t9, 4($s1)
/* 1E4118 801F33A8 AE420004 */  sw    $v0, 4($s2)
/* 1E411C 801F33AC AE550000 */  sw    $s5, ($s2)
/* 1E4120 801F33B0 8E320004 */  lw    $s2, 4($s1)
/* 1E4124 801F33B4 264E0008 */  addiu $t6, $s2, 8
/* 1E4128 801F33B8 AE2E0004 */  sw    $t6, 4($s1)
/* 1E412C 801F33BC AE430004 */  sw    $v1, 4($s2)
/* 1E4130 801F33C0 AE560000 */  sw    $s6, ($s2)
.L801F33C4_ovl10:
/* 1E4134 801F33C4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 1E4138 801F33C8 8FB00018 */  lw    $s0, 0x18($sp)
/* 1E413C 801F33CC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1E4140 801F33D0 8FB20020 */  lw    $s2, 0x20($sp)
/* 1E4144 801F33D4 8FB30024 */  lw    $s3, 0x24($sp)
/* 1E4148 801F33D8 8FB40028 */  lw    $s4, 0x28($sp)
/* 1E414C 801F33DC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 1E4150 801F33E0 8FB60030 */  lw    $s6, 0x30($sp)
/* 1E4154 801F33E4 03E00008 */  jr    $ra
/* 1E4158 801F33E8 27BD0038 */   addiu $sp, $sp, 0x38

/* 1E415C 801F33EC 00000000 */  nop   
# Unknown region 1E4160-1E5AA0 [1940]
# .incbin "bin/kirby.u.1E4160.bin"
.size func_801F2964_ovl10, . - func_801F2964_ovl10
