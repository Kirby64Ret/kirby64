glabel func_801ED648_ovl9
/* 19B698 801ED648 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 19B69C 801ED64C AFBF0034 */  sw         $ra, 0x34($sp)
/* 19B6A0 801ED650 AFA40058 */  sw         $a0, 0x58($sp)
/* 19B6A4 801ED654 AFB70030 */  sw         $s7, 0x30($sp)
/* 19B6A8 801ED658 AFB6002C */  sw         $s6, 0x2C($sp)
/* 19B6AC 801ED65C AFB50028 */  sw         $s5, 0x28($sp)
/* 19B6B0 801ED660 AFB40024 */  sw         $s4, 0x24($sp)
/* 19B6B4 801ED664 AFB30020 */  sw         $s3, 0x20($sp)
/* 19B6B8 801ED668 AFB2001C */  sw         $s2, 0x1C($sp)
/* 19B6BC 801ED66C AFB10018 */  sw         $s1, 0x18($sp)
/* 19B6C0 801ED670 AFB00014 */  sw         $s0, 0x14($sp)
/* 19B6C4 801ED674 0C07B406 */  jal        func_801ED018_ovl9
/* 19B6C8 801ED678 24040003 */   addiu     $a0, $zero, 0x3
/* 19B6CC 801ED67C 10400005 */  beqz       $v0, .L801ED694_ovl9
/* 19B6D0 801ED680 3C178005 */   lui       $s7, %hi(D_8004A7C4)
/* 19B6D4 801ED684 26F7A7C4 */  addiu      $s7, $s7, %lo(D_8004A7C4)
/* 19B6D8 801ED688 8EEE0000 */  lw         $t6, 0x0($s7)
/* 19B6DC 801ED68C 0C067656 */  jal        func_8019D958_ovl7
/* 19B6E0 801ED690 95C40002 */   lhu       $a0, 0x2($t6)
.L801ED694_ovl9:
/* 19B6E4 801ED694 3C178005 */  lui        $s7, %hi(D_8004A7C4)
/* 19B6E8 801ED698 0C068CA0 */  jal        func_801A3280_ovl7
.L801ED69C_ovl10:
/* 19B6EC 801ED69C 26F7A7C4 */   addiu     $s7, $s7, %lo(D_8004A7C4)
.L801ED6A0_ovl10:
/* 19B6F0 801ED6A0 0C066ED6 */  jal        func_8019BB58_ovl7
/* 19B6F4 801ED6A4 00000000 */   nop
/* 19B6F8 801ED6A8 8EE20000 */  lw         $v0, 0x0($s7)
/* 19B6FC 801ED6AC 3C0F800B */  lui        $t7, %hi(func_800B72AC)
/* 19B700 801ED6B0 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19B704 801ED6B4 8C580000 */  lw         $t8, 0x0($v0)
glabel func_801ED6B8_ovl10
/* 19B708 801ED6B8 25EF72AC */  addiu      $t7, $t7, %lo(func_800B72AC)
/* 19B70C 801ED6BC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 19B710 801ED6C0 0018C880 */  sll        $t9, $t8, 2
/* 19B714 801ED6C4 00390821 */  addu       $at, $at, $t9
/* 19B718 801ED6C8 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 19B71C 801ED6CC 8C480000 */  lw         $t0, 0x0($v0)
/* 19B720 801ED6D0 3C01800E */  lui        $at, %hi(D_800DF150)
/* 19B724 801ED6D4 3C05800B */  lui        $a1, %hi(func_800B1434)
/* 19B728 801ED6D8 00084880 */  sll        $t1, $t0, 2
/* 19B72C 801ED6DC 00290821 */  addu       $at, $at, $t1
/* 19B730 801ED6E0 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
glabel func_801ED6E4_ovl10
/* 19B734 801ED6E4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 19B738 801ED6E8 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
/* 19B73C 801ED6EC 000A5880 */  sll        $t3, $t2, 2
/* 19B740 801ED6F0 008B2021 */  addu       $a0, $a0, $t3
/* 19B744 801ED6F4 0C02C7DA */  jal        func_800B1F68
/* 19B748 801ED6F8 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 19B74C 801ED6FC 00002025 */  or         $a0, $zero, $zero
/* 19B750 801ED700 0C02BEED */  jal        func_800AFBB4
/* 19B754 801ED704 8EE50000 */   lw        $a1, 0x0($s7)
/* 19B758 801ED708 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 19B75C 801ED70C 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 19B760 801ED710 0C02BB30 */  jal        func_800AECC0
/* 19B764 801ED714 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 19B768 801ED718 0C02BB48 */  jal        func_800AED20
/* 19B76C 801ED71C C60C0000 */   lwc1      $f12, 0x0($s0)
/* 19B770 801ED720 0C02CCFD */  jal        func_800B33F4
/* 19B774 801ED724 00000000 */   nop
/* 19B778 801ED728 27B00050 */  addiu      $s0, $sp, 0x50
/* 19B77C 801ED72C 0C066A40 */  jal        func_8019A900_ovl7
/* 19B780 801ED730 02002025 */   or        $a0, $s0, $zero
/* 19B784 801ED734 10400004 */  beqz       $v0, .L801ED748_ovl9
/* 19B788 801ED738 8FAC0050 */   lw        $t4, 0x50($sp)
/* 19B78C 801ED73C 448C2000 */  mtc1       $t4, $f4
/* 19B790 801ED740 10000004 */  b          .L801ED754_ovl9
/* 19B794 801ED744 468020A0 */   cvt.s.w   $f2, $f4
.L801ED748_ovl9:
/* 19B798 801ED748 0C066D82 */  jal        func_8019B608_ovl7
/* 19B79C 801ED74C 00002025 */   or        $a0, $zero, $zero
/* 19B7A0 801ED750 46000086 */  mov.s      $f2, $f0
.L801ED754_ovl9:
/* 19B7A4 801ED754 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 19B7A8 801ED758 44813000 */  mtc1       $at, $f6
/* 19B7AC 801ED75C 00000000 */  nop
/* 19B7B0 801ED760 46061032 */  c.eq.s     $f2, $f6
/* 19B7B4 801ED764 00000000 */  nop
/* 19B7B8 801ED768 45010014 */  bc1t       .L801ED7BC_ovl9
/* 19B7BC 801ED76C 00000000 */   nop
.L801ED770_ovl9:
/* 19B7C0 801ED770 0C002DAF */  jal        finish_current_thread
/* 19B7C4 801ED774 24040001 */   addiu     $a0, $zero, 0x1
/* 19B7C8 801ED778 0C066A40 */  jal        func_8019A900_ovl7
/* 19B7CC 801ED77C 02002025 */   or        $a0, $s0, $zero
/* 19B7D0 801ED780 10400004 */  beqz       $v0, .L801ED794_ovl9
/* 19B7D4 801ED784 8FAD0050 */   lw        $t5, 0x50($sp)
/* 19B7D8 801ED788 448D4000 */  mtc1       $t5, $f8
/* 19B7DC 801ED78C 10000004 */  b          .L801ED7A0_ovl9
/* 19B7E0 801ED790 468040A0 */   cvt.s.w   $f2, $f8
.L801ED794_ovl9:
/* 19B7E4 801ED794 0C066D82 */  jal        func_8019B608_ovl7
/* 19B7E8 801ED798 00002025 */   or        $a0, $zero, $zero
/* 19B7EC 801ED79C 46000086 */  mov.s      $f2, $f0
.L801ED7A0_ovl9:
/* 19B7F0 801ED7A0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 19B7F4 801ED7A4 44815000 */  mtc1       $at, $f10
/* 19B7F8 801ED7A8 00000000 */  nop
/* 19B7FC 801ED7AC 460A1032 */  c.eq.s     $f2, $f10
/* 19B800 801ED7B0 00000000 */  nop
/* 19B804 801ED7B4 4500FFEE */  bc1f       .L801ED770_ovl9
/* 19B808 801ED7B8 00000000 */   nop
.L801ED7BC_ovl9:
/* 19B80C 801ED7BC 3C16800E */  lui        $s6, %hi(gEntitiesNextPosZArray)
/* 19B810 801ED7C0 3C15800E */  lui        $s5, %hi(gEntitiesNextPosXArray)
/* 19B814 801ED7C4 3C14800E */  lui        $s4, %hi(D_800E6BD0)
glabel func_801ED7C8_ovl10
/* 19B818 801ED7C8 3C13800E */  lui        $s3, %hi(D_800E5F90)
/* 19B81C 801ED7CC 3C12800F */  lui        $s2, %hi(D_800E8E60)
glabel func_801ED7D0_ovl10
/* 19B820 801ED7D0 3C118022 */  lui        $s1, %hi(D_8021C1D4_ovl9)
/* 19B824 801ED7D4 2631C1D4 */  addiu      $s1, $s1, %lo(D_8021C1D4_ovl9)
/* 19B828 801ED7D8 26528E60 */  addiu      $s2, $s2, %lo(D_800E8E60)
/* 19B82C 801ED7DC 26735F90 */  addiu      $s3, $s3, %lo(D_800E5F90)
/* 19B830 801ED7E0 26946BD0 */  addiu      $s4, $s4, %lo(D_800E6BD0)
/* 19B834 801ED7E4 26B525D0 */  addiu      $s5, $s5, %lo(gEntitiesNextPosXArray)
/* 19B838 801ED7E8 26D62950 */  addiu      $s6, $s6, %lo(gEntitiesNextPosZArray)
.L801ED7EC_ovl16:
/* 19B83C 801ED7EC 8FB0004C */  lw         $s0, 0x4C($sp)
/* 19B840 801ED7F0 8EE20000 */  lw         $v0, 0x0($s7)
.L801ED7F4_ovl9:
/* 19B844 801ED7F4 8E6E0000 */  lw         $t6, 0x0($s3)
/* 19B848 801ED7F8 24040004 */  addiu      $a0, $zero, 0x4
/* 19B84C 801ED7FC 8C580000 */  lw         $t8, 0x0($v0)
/* 19B850 801ED800 00187880 */  sll        $t7, $t8, 2
/* 19B854 801ED804 026FC821 */  addu       $t9, $s3, $t7
/* 19B858 801ED808 AF2E0000 */  sw         $t6, 0x0($t9)
/* 19B85C 801ED80C 8C480000 */  lw         $t0, 0x0($v0)
.L801ED810_ovl16:
/* 19B860 801ED810 C6900000 */  lwc1       $f16, 0x0($s4)
/* 19B864 801ED814 00084880 */  sll        $t1, $t0, 2
/* 19B868 801ED818 02895021 */  addu       $t2, $s4, $t1
/* 19B86C 801ED81C E5500000 */  swc1       $f16, 0x0($t2)
/* 19B870 801ED820 8C4B0000 */  lw         $t3, 0x0($v0)
/* 19B874 801ED824 C6B20000 */  lwc1       $f18, 0x0($s5)
/* 19B878 801ED828 000B6080 */  sll        $t4, $t3, 2
/* 19B87C 801ED82C 02AC6821 */  addu       $t5, $s5, $t4
.L801ED830_ovl16:
/* 19B880 801ED830 E5B20000 */  swc1       $f18, 0x0($t5)
/* 19B884 801ED834 8C580000 */  lw         $t8, 0x0($v0)
/* 19B888 801ED838 C6C40000 */  lwc1       $f4, 0x0($s6)
/* 19B88C 801ED83C 00187880 */  sll        $t7, $t8, 2
/* 19B890 801ED840 02CF7021 */  addu       $t6, $s6, $t7
/* 19B894 801ED844 0C006291 */  jal        random_soft_s32_range
/* 19B898 801ED848 E5C40000 */   swc1      $f4, 0x0($t6)
/* 19B89C 801ED84C 8EF90000 */  lw         $t9, 0x0($s7)
/* 19B8A0 801ED850 3C0A800E */  lui        $t2, %hi(D_800E77A0)
/* 19B8A4 801ED854 00401825 */  or         $v1, $v0, $zero
/* 19B8A8 801ED858 8F280000 */  lw         $t0, 0x0($t9)
/* 19B8AC 801ED85C 00084840 */  sll        $t1, $t0, 1
/* 19B8B0 801ED860 01495021 */  addu       $t2, $t2, $t1
/* 19B8B4 801ED864 954A77A0 */  lhu        $t2, %lo(D_800E77A0)($t2)
/* 19B8B8 801ED868 254BFFBE */  addiu      $t3, $t2, -0x42
/* 19B8BC 801ED86C 2D610029 */  sltiu      $at, $t3, 0x29
/* 19B8C0 801ED870 10200031 */  beqz       $at, .L801ED938_ovl9
/* 19B8C4 801ED874 000B5880 */   sll       $t3, $t3, 2
/* 19B8C8 801ED878 3C018022 */  lui        $at, %hi(jtbl_8021D328_ovl9)
/* 19B8CC 801ED87C 002B0821 */  addu       $at, $at, $t3
/* 19B8D0 801ED880 8C2BD328 */  lw         $t3, %lo(jtbl_8021D328_ovl9)($at)
.L801ED884_ovl10:
/* 19B8D4 801ED884 01600008 */  jr         $t3
/* 19B8D8 801ED888 00000000 */   nop
/* 19B8DC 801ED88C 00031080 */  sll        $v0, $v1, 2
/* 19B8E0 801ED890 3C048022 */  lui        $a0, %hi(D_8021C1A4_ovl9)
/* 19B8E4 801ED894 00822021 */  addu       $a0, $a0, $v0
/* 19B8E8 801ED898 02226021 */  addu       $t4, $s1, $v0
/* 19B8EC 801ED89C 8D850000 */  lw         $a1, 0x0($t4)
/* 19B8F0 801ED8A0 0C06775E */  jal        func_8019DD78_ovl7
/* 19B8F4 801ED8A4 8C84C1A4 */   lw        $a0, %lo(D_8021C1A4_ovl9)($a0)
/* 19B8F8 801ED8A8 00026880 */  sll        $t5, $v0, 2
/* 19B8FC 801ED8AC 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* 19B900 801ED8B0 024DC021 */  addu       $t8, $s2, $t5
/* 19B904 801ED8B4 25CE8AE0 */  addiu      $t6, $t6, %lo(D_800E8AE0)
/* 19B908 801ED8B8 00027880 */  sll        $t7, $v0, 2
/* 19B90C 801ED8BC 00408025 */  or         $s0, $v0, $zero
/* 19B910 801ED8C0 AF000000 */  sw         $zero, 0x0($t8)
/* 19B914 801ED8C4 10000020 */  b          .L801ED948_ovl9
.L801ED8C8_ovl16:
/* 19B918 801ED8C8 01EE1821 */   addu      $v1, $t7, $t6
/* 19B91C 801ED8CC 00031080 */  sll        $v0, $v1, 2
/* 19B920 801ED8D0 3C048022 */  lui        $a0, %hi(D_8021C1B4_ovl9)
/* 19B924 801ED8D4 00822021 */  addu       $a0, $a0, $v0
/* 19B928 801ED8D8 0222C821 */  addu       $t9, $s1, $v0
/* 19B92C 801ED8DC 8F250000 */  lw         $a1, 0x0($t9)
/* 19B930 801ED8E0 0C06775E */  jal        func_8019DD78_ovl7
/* 19B934 801ED8E4 8C84C1B4 */   lw        $a0, %lo(D_8021C1B4_ovl9)($a0)
.L801ED8E8_ovl10:
/* 19B938 801ED8E8 00024080 */  sll        $t0, $v0, 2
.L801ED8EC_ovl16:
/* 19B93C 801ED8EC 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
/* 19B940 801ED8F0 02484821 */  addu       $t1, $s2, $t0
/* 19B944 801ED8F4 256B8AE0 */  addiu      $t3, $t3, %lo(D_800E8AE0)
/* 19B948 801ED8F8 00025080 */  sll        $t2, $v0, 2
/* 19B94C 801ED8FC 00408025 */  or         $s0, $v0, $zero
/* 19B950 801ED900 AD200000 */  sw         $zero, 0x0($t1)
.L801ED904_ovl16:
/* 19B954 801ED904 10000010 */  b          .L801ED948_ovl9
/* 19B958 801ED908 014B1821 */   addu      $v1, $t2, $t3
/* 19B95C 801ED90C 00031080 */  sll        $v0, $v1, 2
/* 19B960 801ED910 3C048022 */  lui        $a0, %hi(D_8021C1C4_ovl9)
/* 19B964 801ED914 00822021 */  addu       $a0, $a0, $v0
/* 19B968 801ED918 02226021 */  addu       $t4, $s1, $v0
/* 19B96C 801ED91C 8D850000 */  lw         $a1, 0x0($t4)
/* 19B970 801ED920 0C06775E */  jal        func_8019DD78_ovl7
/* 19B974 801ED924 8C84C1C4 */   lw        $a0, %lo(D_8021C1C4_ovl9)($a0)
.L801ED928_ovl16:
/* 19B978 801ED928 00026880 */  sll        $t5, $v0, 2
/* 19B97C 801ED92C 024DC021 */  addu       $t8, $s2, $t5
glabel func_801ED930_ovl10
/* 19B980 801ED930 00408025 */  or         $s0, $v0, $zero
/* 19B984 801ED934 AF000000 */  sw         $zero, 0x0($t8)
.L801ED938_ovl9:
/* 19B988 801ED938 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* 19B98C 801ED93C 25CE8AE0 */  addiu      $t6, $t6, %lo(D_800E8AE0)
/* 19B990 801ED940 00107880 */  sll        $t7, $s0, 2
/* 19B994 801ED944 01EE1821 */  addu       $v1, $t7, $t6
.L801ED948_ovl9:
/* 19B998 801ED948 8C790000 */  lw         $t9, 0x0($v1)
/* 19B99C 801ED94C 24040010 */  addiu      $a0, $zero, 0x10
/* 19B9A0 801ED950 37280001 */  ori        $t0, $t9, 0x1
/* 19B9A4 801ED954 0C006291 */  jal        random_soft_s32_range
/* 19B9A8 801ED958 AC680000 */   sw        $t0, 0x0($v1)
/* 19B9AC 801ED95C 0C002DAF */  jal        finish_current_thread
/* 19B9B0 801ED960 2444002D */   addiu     $a0, $v0, 0x2D
/* 19B9B4 801ED964 1000FFA3 */  b          .L801ED7F4_ovl9
/* 19B9B8 801ED968 8EE20000 */   lw        $v0, 0x0($s7)
/* 19B9BC 801ED96C 00000000 */  nop
/* 19B9C0 801ED970 00000000 */  nop
/* 19B9C4 801ED974 00000000 */  nop
/* 19B9C8 801ED978 00000000 */  nop
/* 19B9CC 801ED97C 00000000 */  nop
/* 19B9D0 801ED980 8FBF0034 */  lw         $ra, 0x34($sp)
/* 19B9D4 801ED984 8FB00014 */  lw         $s0, 0x14($sp)
/* 19B9D8 801ED988 8FB10018 */  lw         $s1, 0x18($sp)
/* 19B9DC 801ED98C 8FB2001C */  lw         $s2, 0x1C($sp)
/* 19B9E0 801ED990 8FB30020 */  lw         $s3, 0x20($sp)
/* 19B9E4 801ED994 8FB40024 */  lw         $s4, 0x24($sp)
/* 19B9E8 801ED998 8FB50028 */  lw         $s5, 0x28($sp)
/* 19B9EC 801ED99C 8FB6002C */  lw         $s6, 0x2C($sp)
/* 19B9F0 801ED9A0 8FB70030 */  lw         $s7, 0x30($sp)
/* 19B9F4 801ED9A4 03E00008 */  jr         $ra
/* 19B9F8 801ED9A8 27BD0058 */   addiu     $sp, $sp, 0x58
