glabel func_80220F8C_ovl19
/* 24169C 80220F8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2416A0 80220F90 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2416A4 80220F94 AFB00018 */  sw         $s0, 0x18($sp)
/* 2416A8 80220F98 0C087861 */  jal        func_8021E184_ovl19
/* 2416AC 80220F9C AFA40020 */   sw        $a0, 0x20($sp)
/* 2416B0 80220FA0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 2416B4 80220FA4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 2416B8 80220FA8 3C19800D */  lui        $t9, %hi(D_800D6E64)
/* 2416BC 80220FAC 8F396E64 */  lw         $t9, %lo(D_800D6E64)($t9)
/* 2416C0 80220FB0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 2416C4 80220FB4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 2416C8 80220FB8 000FC080 */  sll        $t8, $t7, 2
/* 2416CC 80220FBC 00380821 */  addu       $at, $at, $t8
/* 2416D0 80220FC0 17200018 */  bnez       $t9, .L80221024_ovl19
/* 2416D4 80220FC4 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
/* 2416D8 80220FC8 0C006291 */  jal        random_soft_s32_range
/* 2416DC 80220FCC 24040007 */   addiu     $a0, $zero, 0x7
/* 2416E0 80220FD0 3C10800D */  lui        $s0, %hi(D_800D6ED0 + 0x48)
.L80220FD4_ovl18:
/* 2416E4 80220FD4 26106F18 */  addiu      $s0, $s0, %lo(D_800D6ED0 + 0x48)
/* 2416E8 80220FD8 AE020000 */  sw         $v0, 0x0($s0)
.L80220FDC_ovl19:
/* 2416EC 80220FDC 0C006291 */  jal        random_soft_s32_range
/* 2416F0 80220FE0 24040007 */   addiu     $a0, $zero, 0x7
/* 2416F4 80220FE4 8E080000 */  lw         $t0, 0x0($s0)
.L80220FE8_ovl18:
/* 2416F8 80220FE8 AE020004 */  sw         $v0, 0x4($s0)
/* 2416FC 80220FEC 1102FFFB */  beq        $t0, $v0, .L80220FDC_ovl19
/* 241700 80220FF0 00000000 */   nop
.L80220FF4_ovl19:
/* 241704 80220FF4 0C006291 */  jal        random_soft_s32_range
/* 241708 80220FF8 24040007 */   addiu     $a0, $zero, 0x7
/* 24170C 80220FFC 8E0A0000 */  lw         $t2, 0x0($s0)
/* 241710 80221000 AE020008 */  sw         $v0, 0x8($s0)
/* 241714 80221004 1142FFFB */  beq        $t2, $v0, .L80220FF4_ovl19
/* 241718 80221008 00000000 */   nop
/* 24171C 8022100C 8E0B0004 */  lw         $t3, 0x4($s0)
/* 241720 80221010 1162FFF8 */  beq        $t3, $v0, .L80220FF4_ovl19
/* 241724 80221014 00000000 */   nop
/* 241728 80221018 240C0001 */  addiu      $t4, $zero, 0x1
/* 24172C 8022101C 3C01800D */  lui        $at, %hi(D_800D6E64)
.L80221020_ovl18:
/* 241730 80221020 AC2C6E64 */  sw         $t4, %lo(D_800D6E64)($at)
.L80221024_ovl19:
/* 241734 80221024 24040005 */  addiu      $a0, $zero, 0x5
/* 241738 80221028 0C0878B4 */  jal        func_8021E2D0_ovl19
/* 24173C 8022102C 24050003 */   addiu     $a1, $zero, 0x3
/* 241740 80221030 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L80221034_ovl18:
/* 241744 80221034 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 241748 80221038 3C018023 */  lui        $at, %hi(D_8022F778_ovl19)
/* 24174C 8022103C C420F778 */  lwc1       $f0, %lo(D_8022F778_ovl19)($at)
/* 241750 80221040 8C6D0000 */  lw         $t5, 0x0($v1)
/* 241754 80221044 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 241758 80221048 3C040002 */  lui        $a0, (0x2006F >> 16)
/* 24175C 8022104C 000D7080 */  sll        $t6, $t5, 2
/* 241760 80221050 002E0821 */  addu       $at, $at, $t6
/* 241764 80221054 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 241768 80221058 8C6F0000 */  lw         $t7, 0x0($v1)
/* 24176C 8022105C 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 241770 80221060 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 241774 80221064 000FC080 */  sll        $t8, $t7, 2
/* 241778 80221068 00380821 */  addu       $at, $at, $t8
/* 24177C 8022106C E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 241780 80221070 8C790000 */  lw         $t9, 0x0($v1)
/* 241784 80221074 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 241788 80221078 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 24178C 8022107C 00194080 */  sll        $t0, $t9, 2
/* 241790 80221080 00280821 */  addu       $at, $at, $t0
/* 241794 80221084 3484006F */  ori        $a0, $a0, (0x2006F & 0xFFFF)
.L80221088_ovl18:
/* 241798 80221088 24060010 */  addiu      $a2, $zero, 0x10
/* 24179C 8022108C 0C02A619 */  jal        func_800A9864
/* 2417A0 80221090 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 2417A4 80221094 3C040002 */  lui        $a0, (0x203D1 >> 16)
/* 2417A8 80221098 3C050002 */  lui        $a1, (0x203D2 >> 16)
.L8022109C_ovl18:
/* 2417AC 8022109C 34A503D2 */  ori        $a1, $a1, (0x203D2 & 0xFFFF)
/* 2417B0 802210A0 348403D1 */  ori        $a0, $a0, (0x203D1 & 0xFFFF)
/* 2417B4 802210A4 0C048C3A */  jal        func_801230E8
/* 2417B8 802210A8 00003025 */   or        $a2, $zero, $zero
.L802210AC_ovl18:
/* 2417BC 802210AC 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 2417C0 802210B0 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 2417C4 802210B4 3C098022 */  lui        $t1, %hi(func_80221108_ovl19)
/* 2417C8 802210B8 3C01800E */  lui        $at, %hi(D_800DF310)
/* 2417CC 802210BC 8D4B0000 */  lw         $t3, 0x0($t2)
/* 2417D0 802210C0 25291108 */  addiu      $t1, $t1, %lo(func_80221108_ovl19)
/* 2417D4 802210C4 000B6080 */  sll        $t4, $t3, 2
/* 2417D8 802210C8 002C0821 */  addu       $at, $at, $t4
/* 2417DC 802210CC 0C02BC9F */  jal        func_800AF27C
/* 2417E0 802210D0 AC29F310 */   sw        $t1, %lo(D_800DF310)($at)
/* 2417E4 802210D4 3C040002 */  lui        $a0, (0x203D3 >> 16)
/* 2417E8 802210D8 3C050002 */  lui        $a1, (0x203D4 >> 16)
/* 2417EC 802210DC 34A503D4 */  ori        $a1, $a1, (0x203D4 & 0xFFFF)
/* 2417F0 802210E0 348403D3 */  ori        $a0, $a0, (0x203D3 & 0xFFFF)
/* 2417F4 802210E4 0C048C3A */  jal        func_801230E8
/* 2417F8 802210E8 00003025 */   or        $a2, $zero, $zero
/* 2417FC 802210EC 0C02BE85 */  jal        func_800AFA14
/* 241800 802210F0 00000000 */   nop
/* 241804 802210F4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 241808 802210F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 24180C 802210FC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 241810 80221100 03E00008 */  jr         $ra
/* 241814 80221104 00000000 */   nop
