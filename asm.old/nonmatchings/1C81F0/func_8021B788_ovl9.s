glabel func_8021B788_ovl9
/* 1C97D8 8021B788 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C97DC 8021B78C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C97E0 8021B790 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C97E4 8021B794 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C97E8 8021B798 AFA40018 */  sw         $a0, 0x18($sp)
/* 1C97EC 8021B79C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1C97F0 8021B7A0 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1C97F4 8021B7A4 2408FFFF */  addiu      $t0, $zero, -0x1
/* 1C97F8 8021B7A8 000E7880 */  sll        $t7, $t6, 2
/* 1C97FC 8021B7AC 002F0821 */  addu       $at, $at, $t7
/* 1C9800 8021B7B0 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1C9804 8021B7B4 8C580000 */  lw         $t8, 0x0($v0)
/* 1C9808 8021B7B8 3C01800F */  lui        $at, %hi(D_800E9720)
/* 1C980C 8021B7BC 240B0001 */  addiu      $t3, $zero, 0x1
/* 1C9810 8021B7C0 0018C880 */  sll        $t9, $t8, 2
/* 1C9814 8021B7C4 00390821 */  addu       $at, $at, $t9
/* 1C9818 8021B7C8 AC209720 */  sw         $zero, %lo(D_800E9720)($at)
/* 1C981C 8021B7CC 8C490000 */  lw         $t1, 0x0($v0)
/* 1C9820 8021B7D0 3C01800F */  lui        $at, %hi(D_800E93A0)
/* 1C9824 8021B7D4 3C040001 */  lui        $a0, (0x105E6 >> 16)
/* 1C9828 8021B7D8 00095080 */  sll        $t2, $t1, 2
/* 1C982C 8021B7DC 002A0821 */  addu       $at, $at, $t2
/* 1C9830 8021B7E0 AC2893A0 */  sw         $t0, %lo(D_800E93A0)($at)
/* 1C9834 8021B7E4 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1C9838 8021B7E8 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C983C 8021B7EC 348405E6 */  ori        $a0, $a0, (0x105E6 & 0xFFFF)
/* 1C9840 8021B7F0 000C6880 */  sll        $t5, $t4, 2
/* 1C9844 8021B7F4 002D0821 */  addu       $at, $at, $t5
/* 1C9848 8021B7F8 AC2BDFD0 */  sw         $t3, %lo(D_800DDFD0)($at)
/* 1C984C 8021B7FC 0C02AA19 */  jal        func_800AA864
/* 1C9850 8021B800 24050001 */   addiu     $a1, $zero, 0x1
/* 1C9854 8021B804 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1C9858 8021B808 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1C985C 8021B80C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1C9860 8021B810 240E0001 */  addiu      $t6, $zero, 0x1
/* 1C9864 8021B814 8DF80000 */  lw         $t8, 0x0($t7)
/* 1C9868 8021B818 3C040001 */  lui        $a0, (0x105E7 >> 16)
/* 1C986C 8021B81C 348405E7 */  ori        $a0, $a0, (0x105E7 & 0xFFFF)
/* 1C9870 8021B820 0018C880 */  sll        $t9, $t8, 2
/* 1C9874 8021B824 00390821 */  addu       $at, $at, $t9
/* 1C9878 8021B828 0C02A7A9 */  jal        func_800A9EA4
/* 1C987C 8021B82C AC2E9E20 */   sw        $t6, %lo(D_800E9E20)($at)
/* 1C9880 8021B830 0C02BE85 */  jal        func_800AFA14
/* 1C9884 8021B834 00000000 */   nop
/* 1C9888 8021B838 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C988C 8021B83C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C9890 8021B840 03E00008 */  jr         $ra
/* 1C9894 8021B844 00000000 */   nop
