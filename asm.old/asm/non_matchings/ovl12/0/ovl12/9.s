glabel func_801DB72C_ovl12 # 9
/* 00052C 801DB72C 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 000530 801DB730 3C0E800D */  lui         $t6, %hi(D_800D70B0)
/* 000534 801DB734 8DCE70B0 */  lw          $t6, %lo(D_800D70B0)($t6)
/* 000538 801DB738 2401FFFF */  addiu       $at, $zero, -0x1
/* 00053C 801DB73C AFBF006C */  sw          $ra, 0x6C($sp)
/* 000540 801DB740 AFBE0068 */  sw          $fp, 0x68($sp)
/* 000544 801DB744 AFB70064 */  sw          $s7, 0x64($sp)
/* 000548 801DB748 AFB60060 */  sw          $s6, 0x60($sp)
/* 00054C 801DB74C AFB5005C */  sw          $s5, 0x5C($sp)
/* 000550 801DB750 AFB40058 */  sw          $s4, 0x58($sp)
/* 000554 801DB754 AFB30054 */  sw          $s3, 0x54($sp)
/* 000558 801DB758 AFB20050 */  sw          $s2, 0x50($sp)
/* 00055C 801DB75C AFB1004C */  sw          $s1, 0x4C($sp)
/* 000560 801DB760 AFB00048 */  sw          $s0, 0x48($sp)
/* 000564 801DB764 F7BE0040 */  sdc1        $f30, 0x40($sp)
/* 000568 801DB768 F7BC0038 */  sdc1        $f28, 0x38($sp)
/* 00056C 801DB76C F7BA0030 */  sdc1        $f26, 0x30($sp)
/* 000570 801DB770 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 000574 801DB774 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 000578 801DB778 11C10053 */  beq         $t6, $at, .L801DB8C8
/* 00057C 801DB77C F7B40018 */   sdc1       $f20, 0x18($sp)
/* 000580 801DB780 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 000584 801DB784 4481F000 */  mtc1        $at, $f30
/* 000588 801DB788 3C01801E */  lui         $at, %hi(D_801E2D20_ovl12)
/* 00058C 801DB78C C43C2D20 */  lwc1        $f28, %lo(D_801E2D20_ovl12)($at)
/* 000590 801DB790 3C01801E */  lui         $at, %hi(D_801E2D24_ovl12)
/* 000594 801DB794 C43A2D24 */  lwc1        $f26, %lo(D_801E2D24_ovl12)($at)
/* 000598 801DB798 3C0142A0 */  lui         $at, (0x42A00000 >> 16)
/* 00059C 801DB79C 4481B000 */  mtc1        $at, $f22
/* 0005A0 801DB7A0 3C014120 */  lui         $at, (0x41200000 >> 16)
/* 0005A4 801DB7A4 3C1E8005 */  lui         $fp, %hi(D_8004A7C4)
/* 0005A8 801DB7A8 3C17800F */  lui         $s7, %hi(D_800EC2E0)
/* 0005AC 801DB7AC 3C15800E */  lui         $s5, %hi(D_800E6BD0)
/* 0005B0 801DB7B0 3C14800E */  lui         $s4, %hi(D_800E5F90)
/* 0005B4 801DB7B4 3C13800F */  lui         $s3, %hi(D_800EA6E0)
/* 0005B8 801DB7B8 3C12800F */  lui         $s2, %hi(D_800EA520)
/* 0005BC 801DB7BC 3C11800E */  lui         $s1, %hi(gEntitiesNextPosYArray)
/* 0005C0 801DB7C0 4481A000 */  mtc1        $at, $f20
/* 0005C4 801DB7C4 4480C000 */  mtc1        $zero, $f24
/* 0005C8 801DB7C8 26312790 */  addiu       $s1, $s1, %lo(gEntitiesNextPosYArray)
/* 0005CC 801DB7CC 2652A520 */  addiu       $s2, $s2, %lo(D_800EA520)
/* 0005D0 801DB7D0 2673A6E0 */  addiu       $s3, $s3, %lo(D_800EA6E0)
/* 0005D4 801DB7D4 26945F90 */  addiu       $s4, $s4, %lo(D_800E5F90)
/* 0005D8 801DB7D8 26B56BD0 */  addiu       $s5, $s5, %lo(D_800E6BD0)
/* 0005DC 801DB7DC 26F7C2E0 */  addiu       $s7, $s7, %lo(D_800EC2E0)
/* 0005E0 801DB7E0 27DEA7C4 */  addiu       $fp, $fp, %lo(D_8004A7C4)
/* 0005E4 801DB7E4 00008025 */  move        $s0, $zero
/* 0005E8 801DB7E8 24160002 */  addiu       $s6, $zero, 0x2
/* 0005EC 801DB7EC 24040029 */  addiu       $a0, $zero, 0x29
.L801DB7F0:
/* 0005F0 801DB7F0 0C06B30D */  jal         func_801ACC34_ovl7
/* 0005F4 801DB7F4 00002825 */   move       $a1, $zero
/* 0005F8 801DB7F8 1040002F */  beqz        $v0, .L801DB8B8
/* 0005FC 801DB7FC 00403025 */   move       $a2, $v0
/* 000600 801DB800 3C0F800D */  lui         $t7, %hi(D_800D7098)
/* 000604 801DB804 8DEF7098 */  lw          $t7, %lo(D_800D7098)($t7)
/* 000608 801DB808 00021880 */  sll         $v1, $v0, 2
/* 00060C 801DB80C 02232021 */  addu        $a0, $s1, $v1
/* 000610 801DB810 000FC080 */  sll         $t8, $t7, 2
/* 000614 801DB814 0238C821 */  addu        $t9, $s1, $t8
/* 000618 801DB818 C7240000 */  lwc1        $f4, 0x0($t9)
/* 00061C 801DB81C 02434821 */  addu        $t1, $s2, $v1
/* 000620 801DB820 26080001 */  addiu       $t0, $s0, 0x1
/* 000624 801DB824 46142181 */  sub.s       $f6, $f4, $f20
/* 000628 801DB828 AD280000 */  sw          $t0, 0x0($t1)
/* 00062C 801DB82C 02635021 */  addu        $t2, $s3, $v1
/* 000630 801DB830 02835821 */  addu        $t3, $s4, $v1
/* 000634 801DB834 E4860000 */  swc1        $f6, 0x0($a0)
/* 000638 801DB838 C4880000 */  lwc1        $f8, 0x0($a0)
/* 00063C 801DB83C 02A36021 */  addu        $t4, $s5, $v1
/* 000640 801DB840 00102840 */  sll         $a1, $s0, 1
/* 000644 801DB844 46164280 */  add.s       $f10, $f8, $f22
/* 000648 801DB848 24A20003 */  addiu       $v0, $a1, 0x3
/* 00064C 801DB84C E54A0000 */  swc1        $f10, 0x0($t2)
/* 000650 801DB850 AD600000 */  sw          $zero, 0x0($t3)
/* 000654 801DB854 E5980000 */  swc1        $f24, 0x0($t4)
/* 000658 801DB858 8FCD0000 */  lw          $t5, 0x0($fp)
/* 00065C 801DB85C 8DAE0000 */  lw          $t6, 0x0($t5)
/* 000660 801DB860 000E7880 */  sll         $t7, $t6, 2
/* 000664 801DB864 02EFC021 */  addu        $t8, $s7, $t7
/* 000668 801DB868 8F190000 */  lw          $t9, 0x0($t8)
/* 00066C 801DB86C 16D90003 */  bne         $s6, $t9, .L801DB87C
/* 000670 801DB870 00000000 */   nop
/* 000674 801DB874 10000001 */  b           .L801DB87C
/* 000678 801DB878 00A01025 */   move       $v0, $a1
.L801DB87C:
/* 00067C 801DB87C 28410006 */  slti        $at, $v0, 0x6
/* 000680 801DB880 54200003 */  bnel        $at, $zero, .L801DB890
/* 000684 801DB884 44828000 */   mtc1       $v0, $f16
/* 000688 801DB888 2442FFFA */  addiu       $v0, $v0, -0x6
/* 00068C 801DB88C 44828000 */  mtc1        $v0, $f16
.L801DB890:
/* 000690 801DB890 00C02025 */  move        $a0, $a2
/* 000694 801DB894 468084A0 */  cvt.s.w     $f18, $f16
/* 000698 801DB898 461A9102 */  mul.s       $f4, $f18, $f26
/* 00069C 801DB89C 461C2180 */  add.s       $f6, $f4, $f28
/* 0006A0 801DB8A0 461E3202 */  mul.s       $f8, $f6, $f30
/* 0006A4 801DB8A4 44054000 */  mfc1        $a1, $f8
/* 0006A8 801DB8A8 0C03E63B */  jal         func_800F98EC
/* 0006AC 801DB8AC 00000000 */   nop
/* 0006B0 801DB8B0 0C029D9E */  jal         play_sound
/* 0006B4 801DB8B4 24040180 */   addiu      $a0, $zero, 0x180
.L801DB8B8:
/* 0006B8 801DB8B8 26100001 */  addiu       $s0, $s0, 0x1
/* 0006BC 801DB8BC 24010003 */  addiu       $at, $zero, 0x3
/* 0006C0 801DB8C0 5601FFCB */  bnel        $s0, $at, .L801DB7F0
/* 0006C4 801DB8C4 24040029 */   addiu      $a0, $zero, 0x29
.L801DB8C8:
/* 0006C8 801DB8C8 8FBF006C */  lw          $ra, 0x6C($sp)
/* 0006CC 801DB8CC D7B40018 */  ldc1        $f20, 0x18($sp)
/* 0006D0 801DB8D0 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 0006D4 801DB8D4 D7B80028 */  ldc1        $f24, 0x28($sp)
/* 0006D8 801DB8D8 D7BA0030 */  ldc1        $f26, 0x30($sp)
/* 0006DC 801DB8DC D7BC0038 */  ldc1        $f28, 0x38($sp)
/* 0006E0 801DB8E0 D7BE0040 */  ldc1        $f30, 0x40($sp)
/* 0006E4 801DB8E4 8FB00048 */  lw          $s0, 0x48($sp)
/* 0006E8 801DB8E8 8FB1004C */  lw          $s1, 0x4C($sp)
/* 0006EC 801DB8EC 8FB20050 */  lw          $s2, 0x50($sp)
/* 0006F0 801DB8F0 8FB30054 */  lw          $s3, 0x54($sp)
/* 0006F4 801DB8F4 8FB40058 */  lw          $s4, 0x58($sp)
/* 0006F8 801DB8F8 8FB5005C */  lw          $s5, 0x5C($sp)
/* 0006FC 801DB8FC 8FB60060 */  lw          $s6, 0x60($sp)
/* 000700 801DB900 8FB70064 */  lw          $s7, 0x64($sp)
/* 000704 801DB904 8FBE0068 */  lw          $fp, 0x68($sp)
/* 000708 801DB908 03E00008 */  jr          $ra
/* 00070C 801DB90C 27BD0070 */   addiu      $sp, $sp, 0x70
.type func_801DB72C_ovl12, @function
.size func_801DB72C_ovl12, . - func_801DB72C_ovl12

.section .rodata
glabel D_801E2D20_ovl12
/* 007B20 801E2D20 */ .word 0x407B53F8
glabel D_801E2D24_ovl12
/* 007B24 801E2D24 */ .word 0x40FB53F8

