glabel func_80198880_ovl7
/* 13E8F0 80198880 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 13E8F4 80198884 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 13E8F8 80198888 8C6E0000 */  lw         $t6, 0x0($v1)
/* 13E8FC 8019888C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13E900 80198890 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13E904 80198894 8DCF0000 */  lw         $t7, 0x0($t6)
/* 13E908 80198898 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 13E90C 8019889C 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 13E910 801988A0 000FC080 */  sll        $t8, $t7, 2
/* 13E914 801988A4 00581021 */  addu       $v0, $v0, $t8
/* 13E918 801988A8 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 13E91C 801988AC AC440088 */  sw         $a0, 0x88($v0)
/* 13E920 801988B0 8C990018 */  lw         $t9, 0x18($a0)
/* 13E924 801988B4 AC590094 */  sw         $t9, 0x94($v0)
/* 13E928 801988B8 8C880014 */  lw         $t0, 0x14($a0)
/* 13E92C 801988BC AC400098 */  sw         $zero, 0x98($v0)
/* 13E930 801988C0 AC40009C */  sw         $zero, 0x9C($v0)
/* 13E934 801988C4 AC48008C */  sw         $t0, 0x8C($v0)
/* 13E938 801988C8 8C890020 */  lw         $t1, 0x20($a0)
/* 13E93C 801988CC AC490048 */  sw         $t1, 0x48($v0)
/* 13E940 801988D0 8C6A0000 */  lw         $t2, 0x0($v1)
/* 13E944 801988D4 C4840000 */  lwc1       $f4, 0x0($a0)
/* 13E948 801988D8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 13E94C 801988DC 000B6080 */  sll        $t4, $t3, 2
/* 13E950 801988E0 002C0821 */  addu       $at, $at, $t4
/* 13E954 801988E4 E4247B20 */  swc1       $f4, %lo(D_800E7B20)($at)
/* 13E958 801988E8 8C850010 */  lw         $a1, 0x10($a0)
/* 13E95C 801988EC 10A00003 */  beqz       $a1, .L801988FC_ovl7
/* 13E960 801988F0 00000000 */   nop
/* 13E964 801988F4 0C068956 */  jal        func_801A2558_ovl7
/* 13E968 801988F8 00A02025 */   or        $a0, $a1, $zero
.L801988FC_ovl7:
/* 13E96C 801988FC 0C068E4E */  jal        func_801A3938
/* 13E970 80198900 00002025 */   or        $a0, $zero, $zero
/* 13E974 80198904 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13E978 80198908 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13E97C 8019890C 03E00008 */  jr         $ra
/* 13E980 80198910 00000000 */   nop
