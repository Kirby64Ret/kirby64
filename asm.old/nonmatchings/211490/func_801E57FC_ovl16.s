glabel func_801E57FC_ovl16
/* 21BAAC 801E57FC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 21BAB0 801E5800 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 21BAB4 801E5804 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21BAB8 801E5808 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21BABC 801E580C AFA40018 */  sw         $a0, 0x18($sp)
/* 21BAC0 801E5810 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21BAC4 801E5814 3C01800F */  lui        $at, %hi(D_800E8920)
/* 21BAC8 801E5818 000FC080 */  sll        $t8, $t7, 2
.L801E581C_ovl9:
/* 21BACC 801E581C 00380821 */  addu       $at, $at, $t8
/* 21BAD0 801E5820 0C076D00 */  jal        func_801DB400_ovl16
/* 21BAD4 801E5824 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 21BAD8 801E5828 3C02801F */  lui        $v0, %hi(D_801F0120_ovl16)
/* 21BADC 801E582C 24420120 */  addiu      $v0, $v0, %lo(D_801F0120_ovl16)
/* 21BAE0 801E5830 8C590010 */  lw         $t9, 0x10($v0)
/* 21BAE4 801E5834 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 21BAE8 801E5838 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 21BAEC 801E583C 1F20000B */  bgtz       $t9, .L801E586C_ovl16
/* 21BAF0 801E5840 00002025 */   or        $a0, $zero, $zero
/* 21BAF4 801E5844 8C690000 */  lw         $t1, 0x0($v1)
/* 21BAF8 801E5848 3C0C800E */  lui        $t4, %hi(D_800E1B50)
/* 21BAFC 801E584C 3C08801E */  lui        $t0, %hi(func_801D9900_ovl9 + 0x48)
/* 21BB00 801E5850 8D2A0000 */  lw         $t2, 0x0($t1)
/* 21BB04 801E5854 25089948 */  addiu      $t0, $t0, %lo(func_801D9900_ovl9 + 0x48)
glabel func_801E5858_ovl9
/* 21BB08 801E5858 000A5880 */  sll        $t3, $t2, 2
/* 21BB0C 801E585C 018B6021 */  addu       $t4, $t4, $t3
/* 21BB10 801E5860 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 21BB14 801E5864 1000000A */  b          .L801E5890_ovl16
/* 21BB18 801E5868 AD88008C */   sw        $t0, 0x8C($t4)
.L801E586C_ovl16:
/* 21BB1C 801E586C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 21BB20 801E5870 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 21BB24 801E5874 3C0D801E */  lui        $t5, %hi(func_801D9900_ovl9)
/* 21BB28 801E5878 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21BB2C 801E587C 25AD9900 */  addiu      $t5, $t5, %lo(func_801D9900_ovl9)
/* 21BB30 801E5880 000FC080 */  sll        $t8, $t7, 2
/* 21BB34 801E5884 0338C821 */  addu       $t9, $t9, $t8
/* 21BB38 801E5888 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
.L801E588C_ovl9:
/* 21BB3C 801E588C AF2D008C */  sw         $t5, 0x8C($t9)
.L801E5890_ovl16:
/* 21BB40 801E5890 3C09800D */  lui        $t1, %hi(D_800D7098 + 0x18)
/* 21BB44 801E5894 8D2970B0 */  lw         $t1, %lo(D_800D7098 + 0x18)($t1)
/* 21BB48 801E5898 00002825 */  or         $a1, $zero, $zero
glabel func_801E589C_ovl10
/* 21BB4C 801E589C 15200004 */  bnez       $t1, .L801E58B0_ovl16
/* 21BB50 801E58A0 00000000 */   nop
/* 21BB54 801E58A4 8C4A0010 */  lw         $t2, 0x10($v0)
/* 21BB58 801E58A8 1D400005 */  bgtz       $t2, .L801E58C0_ovl16
/* 21BB5C 801E58AC 00000000 */   nop
.L801E58B0_ovl16:
/* 21BB60 801E58B0 0C0770C5 */  jal        func_801DC314_ovl16
/* 21BB64 801E58B4 00003025 */   or        $a2, $zero, $zero
/* 21BB68 801E58B8 10000004 */  b          .L801E58CC_ovl16
/* 21BB6C 801E58BC 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E58C0_ovl16:
/* 21BB70 801E58C0 0C076DA6 */  jal        func_801DB698_ovl16
glabel func_801E58C4_ovl13
/* 21BB74 801E58C4 00002025 */   or        $a0, $zero, $zero
/* 21BB78 801E58C8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E58CC_ovl16:
/* 21BB7C 801E58CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 21BB80 801E58D0 03E00008 */  jr         $ra
/* 21BB84 801E58D4 00000000 */   nop
