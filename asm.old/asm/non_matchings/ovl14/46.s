glabel func_801DED24_ovl14 # 46
/* 201914 801DED24 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 201918 801DED28 AFB10018 */  sw          $s1, 0x18($sp)
/* 20191C 801DED2C AFB00014 */  sw          $s0, 0x14($sp)
/* 201920 801DED30 3C10800F */  lui         $s0, %hi(D_800E98E0)
/* 201924 801DED34 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 201928 801DED38 AFBF001C */  sw          $ra, 0x1C($sp)
/* 20192C 801DED3C 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 201930 801DED40 261098E0 */  addiu       $s0, $s0, %lo(D_800E98E0)
.L801DED44:
/* 201934 801DED44 0C006291 */  jal         random_soft_s32_range
/* 201938 801DED48 24040003 */   addiu      $a0, $zero, 0x3
/* 20193C 801DED4C 8E230000 */  lw          $v1, 0x0($s1)
/* 201940 801DED50 8C6E0000 */  lw          $t6, 0x0($v1)
/* 201944 801DED54 000E7880 */  sll         $t7, $t6, 2
/* 201948 801DED58 020F2021 */  addu        $a0, $s0, $t7
/* 20194C 801DED5C 8C980000 */  lw          $t8, 0x0($a0)
/* 201950 801DED60 1058FFF8 */  beq         $v0, $t8, .L801DED44
/* 201954 801DED64 00000000 */   nop
/* 201958 801DED68 AC820000 */  sw          $v0, 0x0($a0)
/* 20195C 801DED6C 8C660000 */  lw          $a2, 0x0($v1)
/* 201960 801DED70 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 201964 801DED74 24080002 */  addiu       $t0, $zero, 0x2
/* 201968 801DED78 00063080 */  sll         $a2, $a2, 2
/* 20196C 801DED7C 0206C821 */  addu        $t9, $s0, $a2
/* 201970 801DED80 8F250000 */  lw          $a1, 0x0($t9)
/* 201974 801DED84 00260821 */  addu        $at, $at, $a2
/* 201978 801DED88 10A00009 */  beqz        $a1, .L801DEDB0
/* 20197C 801DED8C 00000000 */   nop
/* 201980 801DED90 24010001 */  addiu       $at, $zero, 0x1
/* 201984 801DED94 10A10008 */  beq         $a1, $at, .L801DEDB8
/* 201988 801DED98 24090003 */   addiu      $t1, $zero, 0x3
/* 20198C 801DED9C 24010002 */  addiu       $at, $zero, 0x2
/* 201990 801DEDA0 10A10009 */  beq         $a1, $at, .L801DEDC8
/* 201994 801DEDA4 240A0004 */   addiu      $t2, $zero, 0x4
/* 201998 801DEDA8 1000000B */  b           .L801DEDD8
/* 20199C 801DEDAC 8FBF001C */   lw         $ra, 0x1C($sp)
.L801DEDB0:
/* 2019A0 801DEDB0 10000008 */  b           .L801DEDD4
/* 2019A4 801DEDB4 AC28DC50 */   sw         $t0, %lo(gEntityVtableIndexArray)($at)
.L801DEDB8:
/* 2019A8 801DEDB8 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 2019AC 801DEDBC 00260821 */  addu        $at, $at, $a2
/* 2019B0 801DEDC0 10000004 */  b           .L801DEDD4
/* 2019B4 801DEDC4 AC29DC50 */   sw         $t1, %lo(gEntityVtableIndexArray)($at)
.L801DEDC8:
/* 2019B8 801DEDC8 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 2019BC 801DEDCC 00260821 */  addu        $at, $at, $a2
/* 2019C0 801DEDD0 AC2ADC50 */  sw          $t2, %lo(gEntityVtableIndexArray)($at)
.L801DEDD4:
/* 2019C4 801DEDD4 8FBF001C */  lw          $ra, 0x1C($sp)
.L801DEDD8:
/* 2019C8 801DEDD8 8FB00014 */  lw          $s0, 0x14($sp)
/* 2019CC 801DEDDC 8FB10018 */  lw          $s1, 0x18($sp)
/* 2019D0 801DEDE0 03E00008 */  jr          $ra
/* 2019D4 801DEDE4 27BD0020 */   addiu      $sp, $sp, 0x20
.type func_801DED24_ovl14, @function
.size func_801DED24_ovl14, . - func_801DED24_ovl14
