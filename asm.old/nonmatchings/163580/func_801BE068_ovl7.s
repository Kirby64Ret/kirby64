glabel func_801BE068_ovl7
/* 1640D8 801BE068 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1640DC 801BE06C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1640E0 801BE070 0C068CA0 */  jal        func_801A3280_ovl7
/* 1640E4 801BE074 AFA40018 */   sw        $a0, 0x18($sp)
/* 1640E8 801BE078 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1640EC 801BE07C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1640F0 801BE080 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1640F4 801BE084 3C04800F */  lui        $a0, %hi(D_800E9020 + 0x1C0)
/* 1640F8 801BE088 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1640FC 801BE08C 000E7880 */  sll        $t7, $t6, 2
/* 164100 801BE090 002F0821 */  addu       $at, $at, $t7
/* 164104 801BE094 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 164108 801BE098 8C580000 */  lw         $t8, 0x0($v0)
/* 16410C 801BE09C 0018C880 */  sll        $t9, $t8, 2
/* 164110 801BE0A0 00992021 */  addu       $a0, $a0, $t9
/* 164114 801BE0A4 0C02E77E */  jal        func_800B9DF8
/* 164118 801BE0A8 8C8491E0 */   lw        $a0, %lo(D_800E9020 + 0x1C0)($a0)
/* 16411C 801BE0AC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 164120 801BE0B0 10400009 */  beqz       $v0, .L801BE0D8_ovl7
/* 164124 801BE0B4 2463A7C4 */   addiu     $v1, $v1, %lo(D_8004A7C4)
/* 164128 801BE0B8 8C680000 */  lw         $t0, 0x0($v1)
/* 16412C 801BE0BC 3C0A800E */  lui        $t2, %hi(D_800E7880)
/* 164130 801BE0C0 254A7880 */  addiu      $t2, $t2, %lo(D_800E7880)
/* 164134 801BE0C4 8D090000 */  lw         $t1, 0x0($t0)
/* 164138 801BE0C8 012A1021 */  addu       $v0, $t1, $t2
/* 16413C 801BE0CC 904B0000 */  lbu        $t3, 0x0($v0)
/* 164140 801BE0D0 256C0003 */  addiu      $t4, $t3, 0x3
/* 164144 801BE0D4 A04C0000 */  sb         $t4, 0x0($v0)
.L801BE0D8_ovl7:
/* 164148 801BE0D8 8C6D0000 */  lw         $t5, 0x0($v1)
/* 16414C 801BE0DC 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 164150 801BE0E0 3C06801D */  lui        $a2, %hi(D_801CD8C0_ovl7)
/* 164154 801BE0E4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 164158 801BE0E8 24C6D8C0 */  addiu      $a2, $a2, %lo(D_801CD8C0_ovl7)
/* 16415C 801BE0EC 24050007 */  addiu      $a1, $zero, 0x7
/* 164160 801BE0F0 008E2021 */  addu       $a0, $a0, $t6
/* 164164 801BE0F4 0C02911F */  jal        call_virtual_function
/* 164168 801BE0F8 90847880 */   lbu       $a0, %lo(D_800E7880)($a0)
/* 16416C 801BE0FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 164170 801BE100 27BD0018 */  addiu      $sp, $sp, 0x18
/* 164174 801BE104 03E00008 */  jr         $ra
/* 164178 801BE108 00000000 */   nop
