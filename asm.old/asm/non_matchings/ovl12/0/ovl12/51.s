glabel func_801DD7CC_ovl12 # 51
/* 0025CC 801DD7CC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0025D0 801DD7D0 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 0025D4 801DD7D4 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 0025D8 801DD7D8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0025DC 801DD7DC AFB10020 */  sw          $s1, 0x20($sp)
/* 0025E0 801DD7E0 AFB0001C */  sw          $s0, 0x1C($sp)
/* 0025E4 801DD7E4 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 0025E8 801DD7E8 AFA40028 */  sw          $a0, 0x28($sp)
/* 0025EC 801DD7EC 8DF80000 */  lw          $t8, 0x0($t7)
/* 0025F0 801DD7F0 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 0025F4 801DD7F4 3C11800D */  lui         $s1, %hi(D_800D7098)
/* 0025F8 801DD7F8 0018C880 */  sll         $t9, $t8, 2
/* 0025FC 801DD7FC 00390821 */  addu        $at, $at, $t9
/* 002600 801DD800 240E0006 */  addiu       $t6, $zero, 0x6
/* 002604 801DD804 26317098 */  addiu       $s1, $s1, %lo(D_800D7098)
/* 002608 801DD808 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 00260C 801DD80C 8E290000 */  lw          $t1, 0x0($s1)
/* 002610 801DD810 3C10800E */  lui         $s0, %hi(D_800E3210)
/* 002614 801DD814 26103210 */  addiu       $s0, $s0, %lo(D_800E3210)
/* 002618 801DD818 00095080 */  sll         $t2, $t1, 2
/* 00261C 801DD81C 020A5821 */  addu        $t3, $s0, $t2
/* 002620 801DD820 4480A000 */  mtc1        $zero, $f20
/* 002624 801DD824 C5640000 */  lwc1        $f4, 0x0($t3)
/* 002628 801DD828 4604A032 */  c.eq.s      $f20, $f4
/* 00262C 801DD82C 00000000 */  nop
/* 002630 801DD830 4501000B */  bc1t        .L801DD860
/* 002634 801DD834 00000000 */   nop
.L801DD838:
/* 002638 801DD838 0C002DAF */  jal         finish_current_thread
/* 00263C 801DD83C 24040001 */   addiu      $a0, $zero, 0x1
/* 002640 801DD840 8E2C0000 */  lw          $t4, 0x0($s1)
/* 002644 801DD844 000C6880 */  sll         $t5, $t4, 2
/* 002648 801DD848 020D7821 */  addu        $t7, $s0, $t5
/* 00264C 801DD84C C5E60000 */  lwc1        $f6, 0x0($t7)
/* 002650 801DD850 4606A032 */  c.eq.s      $f20, $f6
/* 002654 801DD854 00000000 */  nop
/* 002658 801DD858 4500FFF7 */  bc1f        .L801DD838
/* 00265C 801DD85C 00000000 */   nop
.L801DD860:
/* 002660 801DD860 0C002DAF */  jal         finish_current_thread
/* 002664 801DD864 2404003C */   addiu      $a0, $zero, 0x3C
/* 002668 801DD868 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 00266C 801DD86C 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 002670 801DD870 44804000 */  mtc1        $zero, $f8
/* 002674 801DD874 3C07800F */  lui         $a3, %hi(D_800EA8A0)
/* 002678 801DD878 8C580000 */  lw          $t8, 0x0($v0)
/* 00267C 801DD87C 24E7A8A0 */  addiu       $a3, $a3, %lo(D_800EA8A0)
/* 002680 801DD880 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 002684 801DD884 00187080 */  sll         $t6, $t8, 2
/* 002688 801DD888 00EEC821 */  addu        $t9, $a3, $t6
/* 00268C 801DD88C E7280000 */  swc1        $f8, 0x0($t9)
/* 002690 801DD890 8C430000 */  lw          $v1, 0x0($v0)
/* 002694 801DD894 3C08800E */  lui         $t0, %hi(D_800E7880)
/* 002698 801DD898 25087880 */  addiu       $t0, $t0, %lo(D_800E7880)
/* 00269C 801DD89C 00031880 */  sll         $v1, $v1, 2
/* 0026A0 801DD8A0 00E34821 */  addu        $t1, $a3, $v1
/* 0026A4 801DD8A4 C52A0000 */  lwc1        $f10, 0x0($t1)
/* 0026A8 801DD8A8 00230821 */  addu        $at, $at, $v1
/* 0026AC 801DD8AC 240A0004 */  addiu       $t2, $zero, 0x4
/* 0026B0 801DD8B0 E42AA6E0 */  swc1        $f10, %lo(D_800EA6E0)($at)
/* 0026B4 801DD8B4 8C4B0000 */  lw          $t3, 0x0($v0)
/* 0026B8 801DD8B8 3C06801E */  lui         $a2, %hi(D_801E2AC0_ovl12)
/* 0026BC 801DD8BC 24C62AC0 */  addiu       $a2, $a2, %lo(D_801E2AC0_ovl12)
/* 0026C0 801DD8C0 010B6021 */  addu        $t4, $t0, $t3
/* 0026C4 801DD8C4 A18A0000 */  sb          $t2, 0x0($t4)
/* 0026C8 801DD8C8 8C4D0000 */  lw          $t5, 0x0($v0)
/* 0026CC 801DD8CC 24050005 */  addiu       $a1, $zero, 0x5
/* 0026D0 801DD8D0 010D7821 */  addu        $t7, $t0, $t5
/* 0026D4 801DD8D4 0C02911F */  jal         call_virtual_function
/* 0026D8 801DD8D8 91E40000 */   lbu        $a0, 0x0($t7)
/* 0026DC 801DD8DC 0C02BE85 */  jal         func_800AFA14
/* 0026E0 801DD8E0 00000000 */   nop
/* 0026E4 801DD8E4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0026E8 801DD8E8 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 0026EC 801DD8EC 8FB0001C */  lw          $s0, 0x1C($sp)
/* 0026F0 801DD8F0 8FB10020 */  lw          $s1, 0x20($sp)
/* 0026F4 801DD8F4 03E00008 */  jr          $ra
/* 0026F8 801DD8F8 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DD7CC_ovl12, @function
.size func_801DD7CC_ovl12, . - func_801DD7CC_ovl12
