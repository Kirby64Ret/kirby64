glabel func_801DB72C_ovl12
/* 1EBA6C 801DB72C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 1EBA70 801DB730 3C0E800D */  lui        $t6, %hi(D_800D7098 + 0x18)
/* 1EBA74 801DB734 8DCE70B0 */  lw         $t6, %lo(D_800D7098 + 0x18)($t6)
/* 1EBA78 801DB738 2401FFFF */  addiu      $at, $zero, -0x1
.L801DB73C_ovl13:
/* 1EBA7C 801DB73C AFBF006C */  sw         $ra, 0x6C($sp)
.L801DB740_ovl17:
/* 1EBA80 801DB740 AFBE0068 */  sw         $fp, 0x68($sp)
.L801DB744_ovl16:
/* 1EBA84 801DB744 AFB70064 */  sw         $s7, 0x64($sp)
/* 1EBA88 801DB748 AFB60060 */  sw         $s6, 0x60($sp)
.L801DB74C_ovl11:
/* 1EBA8C 801DB74C AFB5005C */  sw         $s5, 0x5C($sp)
.L801DB750_ovl11:
/* 1EBA90 801DB750 AFB40058 */  sw         $s4, 0x58($sp)
/* 1EBA94 801DB754 AFB30054 */  sw         $s3, 0x54($sp)
/* 1EBA98 801DB758 AFB20050 */  sw         $s2, 0x50($sp)
/* 1EBA9C 801DB75C AFB1004C */  sw         $s1, 0x4C($sp)
/* 1EBAA0 801DB760 AFB00048 */  sw         $s0, 0x48($sp)
/* 1EBAA4 801DB764 F7BE0040 */  sdc1       $f30, 0x40($sp)
.L801DB768_ovl17:
/* 1EBAA8 801DB768 F7BC0038 */  sdc1       $f28, 0x38($sp)
.L801DB76C_ovl17:
/* 1EBAAC 801DB76C F7BA0030 */  sdc1       $f26, 0x30($sp)
glabel func_801DB770_ovl15
/* 1EBAB0 801DB770 F7B80028 */  sdc1       $f24, 0x28($sp)
.L801DB774_ovl11:
/* 1EBAB4 801DB774 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1EBAB8 801DB778 11C10053 */  beq        $t6, $at, .L801DB8C8_ovl17
/* 1EBABC 801DB77C F7B40018 */   sdc1      $f20, 0x18($sp)
glabel func_801DB780_ovl14
/* 1EBAC0 801DB780 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 1EBAC4 801DB784 4481F000 */  mtc1       $at, $f30
glabel func_801DB788_ovl14
/* 1EBAC8 801DB788 3C01801E */  lui        $at, %hi(.L801E2D20_ovl13)
.L801DB78C_ovl11:
/* 1EBACC 801DB78C C43C2D20 */  lwc1       $f28, %lo(.L801E2D20_ovl13)($at)
/* 1EBAD0 801DB790 3C01801E */  lui        $at, %hi(.L801E2D24_ovl13)
/* 1EBAD4 801DB794 C43A2D24 */  lwc1       $f26, %lo(.L801E2D24_ovl13)($at)
/* 1EBAD8 801DB798 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 1EBADC 801DB79C 4481B000 */  mtc1       $at, $f22
.L801DB7A0_ovl9:
/* 1EBAE0 801DB7A0 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 1EBAE4 801DB7A4 3C1E8005 */  lui        $fp, %hi(D_8004A7C4)
glabel func_801DB7A8_ovl13
/* 1EBAE8 801DB7A8 3C17800F */  lui        $s7, %hi(D_800EC2E0)
/* 1EBAEC 801DB7AC 3C15800E */  lui        $s5, %hi(D_800E6BD0)
/* 1EBAF0 801DB7B0 3C14800E */  lui        $s4, %hi(D_800E5F90)
/* 1EBAF4 801DB7B4 3C13800F */  lui        $s3, %hi(D_800EA6E0)
.L801DB7B8_ovl11:
/* 1EBAF8 801DB7B8 3C12800F */  lui        $s2, %hi(D_800EA520)
.L801DB7BC_ovl11:
/* 1EBAFC 801DB7BC 3C11800E */  lui        $s1, %hi(gEntitiesNextPosYArray)
/* 1EBB00 801DB7C0 4481A000 */  mtc1       $at, $f20
/* 1EBB04 801DB7C4 4480C000 */  mtc1       $zero, $f24
/* 1EBB08 801DB7C8 26312790 */  addiu      $s1, $s1, %lo(gEntitiesNextPosYArray)
/* 1EBB0C 801DB7CC 2652A520 */  addiu      $s2, $s2, %lo(D_800EA520)
glabel func_801DB7D0_ovl11
/* 1EBB10 801DB7D0 2673A6E0 */  addiu      $s3, $s3, %lo(D_800EA6E0)
/* 1EBB14 801DB7D4 26945F90 */  addiu      $s4, $s4, %lo(D_800E5F90)
/* 1EBB18 801DB7D8 26B56BD0 */  addiu      $s5, $s5, %lo(D_800E6BD0)
.L801DB7DC_ovl13:
/* 1EBB1C 801DB7DC 26F7C2E0 */  addiu      $s7, $s7, %lo(D_800EC2E0)
/* 1EBB20 801DB7E0 27DEA7C4 */  addiu      $fp, $fp, %lo(D_8004A7C4)
/* 1EBB24 801DB7E4 00008025 */  or         $s0, $zero, $zero
/* 1EBB28 801DB7E8 24160002 */  addiu      $s6, $zero, 0x2
/* 1EBB2C 801DB7EC 24040029 */  addiu      $a0, $zero, 0x29
.L801DB7F0_ovl12:
/* 1EBB30 801DB7F0 0C06B30D */  jal        func_801ACC34_ovl7
/* 1EBB34 801DB7F4 00002825 */   or        $a1, $zero, $zero
/* 1EBB38 801DB7F8 1040002F */  beqz       $v0, .L801DB8B8_ovl12
glabel func_801DB7FC_ovl14
/* 1EBB3C 801DB7FC 00403025 */   or        $a2, $v0, $zero
/* 1EBB40 801DB800 3C0F800D */  lui        $t7, %hi(D_800D7098)
glabel func_801DB804_ovl16
/* 1EBB44 801DB804 8DEF7098 */  lw         $t7, %lo(D_800D7098)($t7)
/* 1EBB48 801DB808 00021880 */  sll        $v1, $v0, 2
.L801DB80C_ovl13:
/* 1EBB4C 801DB80C 02232021 */  addu       $a0, $s1, $v1
/* 1EBB50 801DB810 000FC080 */  sll        $t8, $t7, 2
/* 1EBB54 801DB814 0238C821 */  addu       $t9, $s1, $t8
/* 1EBB58 801DB818 C7240000 */  lwc1       $f4, 0x0($t9)
/* 1EBB5C 801DB81C 02434821 */  addu       $t1, $s2, $v1
/* 1EBB60 801DB820 26080001 */  addiu      $t0, $s0, 0x1
/* 1EBB64 801DB824 46142181 */  sub.s      $f6, $f4, $f20
/* 1EBB68 801DB828 AD280000 */  sw         $t0, 0x0($t1)
/* 1EBB6C 801DB82C 02635021 */  addu       $t2, $s3, $v1
/* 1EBB70 801DB830 02835821 */  addu       $t3, $s4, $v1
/* 1EBB74 801DB834 E4860000 */  swc1       $f6, 0x0($a0)
/* 1EBB78 801DB838 C4880000 */  lwc1       $f8, 0x0($a0)
/* 1EBB7C 801DB83C 02A36021 */  addu       $t4, $s5, $v1
/* 1EBB80 801DB840 00102840 */  sll        $a1, $s0, 1
/* 1EBB84 801DB844 46164280 */  add.s      $f10, $f8, $f22
/* 1EBB88 801DB848 24A20003 */  addiu      $v0, $a1, 0x3
/* 1EBB8C 801DB84C E54A0000 */  swc1       $f10, 0x0($t2)
.L801DB850_ovl17:
/* 1EBB90 801DB850 AD600000 */  sw         $zero, 0x0($t3)
/* 1EBB94 801DB854 E5980000 */  swc1       $f24, 0x0($t4)
/* 1EBB98 801DB858 8FCD0000 */  lw         $t5, 0x0($fp)
/* 1EBB9C 801DB85C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1EBBA0 801DB860 000E7880 */  sll        $t7, $t6, 2
.L801DB864_ovl16:
/* 1EBBA4 801DB864 02EFC021 */  addu       $t8, $s7, $t7
.L801DB868_ovl11:
/* 1EBBA8 801DB868 8F190000 */  lw         $t9, 0x0($t8)
/* 1EBBAC 801DB86C 16D90003 */  bne        $s6, $t9, .L801DB87C_ovl12
glabel func_801DB870_ovl17
/* 1EBBB0 801DB870 00000000 */   nop
/* 1EBBB4 801DB874 10000001 */  b          .L801DB87C_ovl12
/* 1EBBB8 801DB878 00A01025 */   or        $v0, $a1, $zero
.L801DB87C_ovl12:
/* 1EBBBC 801DB87C 28410006 */  slti       $at, $v0, 0x6
/* 1EBBC0 801DB880 54200003 */  bnel       $at, $zero, .L801DB890_ovl17
/* 1EBBC4 801DB884 44828000 */   mtc1      $v0, $f16
/* 1EBBC8 801DB888 2442FFFA */  addiu      $v0, $v0, -0x6
.L801DB88C_ovl11:
/* 1EBBCC 801DB88C 44828000 */  mtc1       $v0, $f16
.L801DB890_ovl17:
/* 1EBBD0 801DB890 00C02025 */  or         $a0, $a2, $zero
.L801DB894_ovl11:
/* 1EBBD4 801DB894 468084A0 */  cvt.s.w    $f18, $f16
/* 1EBBD8 801DB898 461A9102 */  mul.s      $f4, $f18, $f26
/* 1EBBDC 801DB89C 461C2180 */  add.s      $f6, $f4, $f28
glabel func_801DB8A0_ovl11
/* 1EBBE0 801DB8A0 461E3202 */  mul.s      $f8, $f6, $f30
/* 1EBBE4 801DB8A4 44054000 */  mfc1       $a1, $f8
/* 1EBBE8 801DB8A8 0C03E63B */  jal        func_800F98EC
.L801DB8AC_ovl17:
/* 1EBBEC 801DB8AC 00000000 */   nop
/* 1EBBF0 801DB8B0 0C029D9E */  jal        play_sound
/* 1EBBF4 801DB8B4 24040180 */   addiu     $a0, $zero, 0x180
.L801DB8B8_ovl12:
/* 1EBBF8 801DB8B8 26100001 */  addiu      $s0, $s0, 0x1
/* 1EBBFC 801DB8BC 24010003 */  addiu      $at, $zero, 0x3
/* 1EBC00 801DB8C0 5601FFCB */  bnel       $s0, $at, .L801DB7F0_ovl12
/* 1EBC04 801DB8C4 24040029 */   addiu     $a0, $zero, 0x29
.L801DB8C8_ovl17:
/* 1EBC08 801DB8C8 8FBF006C */  lw         $ra, 0x6C($sp)
/* 1EBC0C 801DB8CC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1EBC10 801DB8D0 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 1EBC14 801DB8D4 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 1EBC18 801DB8D8 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 1EBC1C 801DB8DC D7BC0038 */  ldc1       $f28, 0x38($sp)
.L801DB8E0_ovl16:
/* 1EBC20 801DB8E0 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 1EBC24 801DB8E4 8FB00048 */  lw         $s0, 0x48($sp)
glabel func_801DB8E8_ovl11
/* 1EBC28 801DB8E8 8FB1004C */  lw         $s1, 0x4C($sp)
glabel func_801DB8EC_ovl9
/* 1EBC2C 801DB8EC 8FB20050 */  lw         $s2, 0x50($sp)
.L801DB8F0_ovl14:
/* 1EBC30 801DB8F0 8FB30054 */  lw         $s3, 0x54($sp)
.L801DB8F4_ovl15:
/* 1EBC34 801DB8F4 8FB40058 */  lw         $s4, 0x58($sp)
.L801DB8F8_ovl15:
/* 1EBC38 801DB8F8 8FB5005C */  lw         $s5, 0x5C($sp)
/* 1EBC3C 801DB8FC 8FB60060 */  lw         $s6, 0x60($sp)
.L801DB900_ovl15:
/* 1EBC40 801DB900 8FB70064 */  lw         $s7, 0x64($sp)
/* 1EBC44 801DB904 8FBE0068 */  lw         $fp, 0x68($sp)
/* 1EBC48 801DB908 03E00008 */  jr         $ra
.L801DB90C_ovl17:
/* 1EBC4C 801DB90C 27BD0070 */   addiu     $sp, $sp, 0x70
