glabel func_8021E7DC_ovl19
/* 23EEEC 8021E7DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23EEF0 8021E7E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23EEF4 8021E7E4 0C02D009 */  jal        func_800B4024
/* 23EEF8 8021E7E8 AFA40018 */   sw        $a0, 0x18($sp)
/* 23EEFC 8021E7EC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 23EF00 8021E7F0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 23EF04 8021E7F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 23EF08 8021E7F8 8DC30000 */  lw         $v1, 0x0($t6)
/* 23EF0C 8021E7FC 00031880 */  sll        $v1, $v1, 2
/* 23EF10 8021E800 00230821 */  addu       $at, $at, $v1
/* 23EF14 8021E804 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 23EF18 8021E808 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 23EF1C 8021E80C 00230821 */  addu       $at, $at, $v1
/* 23EF20 8021E810 C4262B10 */  lwc1       $f6, %lo(gEntitiesPosXArray)($at)
/* 23EF24 8021E814 46062032 */  c.eq.s     $f4, $f6
/* 23EF28 8021E818 00000000 */  nop
/* 23EF2C 8021E81C 45010005 */  bc1t       .L8021E834_ovl19
/* 23EF30 8021E820 00000000 */   nop
/* 23EF34 8021E824 0C02CD7C */  jal        func_800B35F0
/* 23EF38 8021E828 00000000 */   nop
/* 23EF3C 8021E82C 0C02D249 */  jal        func_800B4924
/* 23EF40 8021E830 8FA40018 */   lw        $a0, 0x18($sp)
.L8021E834_ovl19:
/* 23EF44 8021E834 0C02CC56 */  jal        func_800B3158
/* 23EF48 8021E838 00000000 */   nop
/* 23EF4C 8021E83C 14400011 */  bnez       $v0, .L8021E884_ovl19
/* 23EF50 8021E840 3C048005 */   lui       $a0, %hi(D_8004A7C4)
/* 23EF54 8021E844 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L8021E848_ovl18:
/* 23EF58 8021E848 3C05800E */  lui        $a1, %hi(D_800E76C0)
/* 23EF5C 8021E84C 3C0F800D */  lui        $t7, %hi(D_800D6C68 + 0x28)
/* 23EF60 8021E850 8C830000 */  lw         $v1, 0x0($a0)
/* 23EF64 8021E854 25EF6C90 */  addiu      $t7, $t7, %lo(D_800D6C68 + 0x28)
glabel func_8021E858_ovl18
/* 23EF68 8021E858 00A32821 */  addu       $a1, $a1, $v1
/* 23EF6C 8021E85C 90A576C0 */  lbu        $a1, %lo(D_800E76C0)($a1)
/* 23EF70 8021E860 28A10040 */  slti       $at, $a1, 0x40
/* 23EF74 8021E864 10200005 */  beqz       $at, .L8021E87C_ovl19
/* 23EF78 8021E868 00AF1021 */   addu      $v0, $a1, $t7
/* 23EF7C 8021E86C 90580000 */  lbu        $t8, 0x0($v0)
/* 23EF80 8021E870 33190080 */  andi       $t9, $t8, 0x80
/* 23EF84 8021E874 A0590000 */  sb         $t9, 0x0($v0)
/* 23EF88 8021E878 8C830000 */  lw         $v1, 0x0($a0)
.L8021E87C_ovl19:
/* 23EF8C 8021E87C 0C02C640 */  jal        func_800B1900
/* 23EF90 8021E880 3064FFFF */   andi      $a0, $v1, 0xFFFF
.L8021E884_ovl19:
/* 23EF94 8021E884 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23EF98 8021E888 27BD0018 */  addiu      $sp, $sp, 0x18
/* 23EF9C 8021E88C 03E00008 */  jr         $ra
/* 23EFA0 8021E890 00000000 */   nop
