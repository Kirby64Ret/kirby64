glabel func_801E69A8_ovl16
/* 21CC58 801E69A8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 21CC5C 801E69AC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 21CC60 801E69B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21CC64 801E69B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21CC68 801E69B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 21CC6C 801E69BC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21CC70 801E69C0 3C01800F */  lui        $at, %hi(D_800E8920)
/* 21CC74 801E69C4 000FC080 */  sll        $t8, $t7, 2
.L801E69C8_ovl9:
/* 21CC78 801E69C8 00380821 */  addu       $at, $at, $t8
/* 21CC7C 801E69CC 0C076D00 */  jal        func_801DB400_ovl16
/* 21CC80 801E69D0 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 21CC84 801E69D4 3C02801F */  lui        $v0, %hi(D_801F0120_ovl16)
/* 21CC88 801E69D8 24420120 */  addiu      $v0, $v0, %lo(D_801F0120_ovl16)
/* 21CC8C 801E69DC 8C590014 */  lw         $t9, 0x14($v0)
/* 21CC90 801E69E0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 21CC94 801E69E4 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 21CC98 801E69E8 1F20000B */  bgtz       $t9, .L801E6A18_ovl16
/* 21CC9C 801E69EC 00002025 */   or        $a0, $zero, $zero
/* 21CCA0 801E69F0 8C690000 */  lw         $t1, 0x0($v1)
/* 21CCA4 801E69F4 3C0C800E */  lui        $t4, %hi(D_800E1B50)
/* 21CCA8 801E69F8 3C08801E */  lui        $t0, %hi(D_801D9A20)
/* 21CCAC 801E69FC 8D2A0000 */  lw         $t2, 0x0($t1)
/* 21CCB0 801E6A00 25089A20 */  addiu      $t0, $t0, %lo(D_801D9A20)
/* 21CCB4 801E6A04 000A5880 */  sll        $t3, $t2, 2
/* 21CCB8 801E6A08 018B6021 */  addu       $t4, $t4, $t3
/* 21CCBC 801E6A0C 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 21CCC0 801E6A10 1000000A */  b          .L801E6A3C_ovl16
/* 21CCC4 801E6A14 AD88008C */   sw        $t0, 0x8C($t4)
.L801E6A18_ovl16:
/* 21CCC8 801E6A18 8C6E0000 */  lw         $t6, 0x0($v1)
/* 21CCCC 801E6A1C 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 21CCD0 801E6A20 3C0D801E */  lui        $t5, %hi(func_801D9900_ovl9 + 0xD8)
/* 21CCD4 801E6A24 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21CCD8 801E6A28 25AD99D8 */  addiu      $t5, $t5, %lo(func_801D9900_ovl9 + 0xD8)
/* 21CCDC 801E6A2C 000FC080 */  sll        $t8, $t7, 2
/* 21CCE0 801E6A30 0338C821 */  addu       $t9, $t9, $t8
/* 21CCE4 801E6A34 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 21CCE8 801E6A38 AF2D008C */  sw         $t5, 0x8C($t9)
.L801E6A3C_ovl16:
/* 21CCEC 801E6A3C 3C09800D */  lui        $t1, %hi(D_800D7098 + 0x18)
/* 21CCF0 801E6A40 8D2970B0 */  lw         $t1, %lo(D_800D7098 + 0x18)($t1)
/* 21CCF4 801E6A44 00002825 */  or         $a1, $zero, $zero
/* 21CCF8 801E6A48 15200004 */  bnez       $t1, .L801E6A5C_ovl16
/* 21CCFC 801E6A4C 00000000 */   nop
/* 21CD00 801E6A50 8C4A0014 */  lw         $t2, 0x14($v0)
/* 21CD04 801E6A54 1D400005 */  bgtz       $t2, .L801E6A6C_ovl16
/* 21CD08 801E6A58 00000000 */   nop
.L801E6A5C_ovl16:
/* 21CD0C 801E6A5C 0C0770C5 */  jal        func_801DC314_ovl16
/* 21CD10 801E6A60 00003025 */   or        $a2, $zero, $zero
/* 21CD14 801E6A64 10000004 */  b          .L801E6A78_ovl16
/* 21CD18 801E6A68 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E6A6C_ovl16:
/* 21CD1C 801E6A6C 0C076DA6 */  jal        func_801DB698_ovl16
/* 21CD20 801E6A70 00002025 */   or        $a0, $zero, $zero
/* 21CD24 801E6A74 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E6A78_ovl16:
/* 21CD28 801E6A78 27BD0018 */  addiu      $sp, $sp, 0x18
/* 21CD2C 801E6A7C 03E00008 */  jr         $ra
/* 21CD30 801E6A80 00000000 */   nop
