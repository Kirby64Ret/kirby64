glabel func_801EA900_ovl16
/* 1DB670 801EA900 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1DB674 801EA904 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1DB678 801EA908 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1DB67C 801EA90C AFBF0014 */  sw         $ra, 0x14($sp)
.L801EA910_ovl16:
/* 1DB680 801EA910 8DC30000 */  lw         $v1, 0x0($t6)
/* 1DB684 801EA914 3C0F800F */  lui        $t7, %hi(D_800E9C60)
.L801EA918_ovl9:
/* 1DB688 801EA918 00002825 */  or         $a1, $zero, $zero
/* 1DB68C 801EA91C 00031880 */  sll        $v1, $v1, 2
/* 1DB690 801EA920 01E37821 */  addu       $t7, $t7, $v1
/* 1DB694 801EA924 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
.L801EA928_ovl9:
/* 1DB698 801EA928 11E00008 */  beqz       $t7, .L801EA94C_ovl10
/* 1DB69C 801EA92C 00000000 */   nop
/* 1DB6A0 801EA930 0C06835D */  jal        func_801A0D74_ovl7
/* 1DB6A4 801EA934 00000000 */   nop
/* 1DB6A8 801EA938 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1DB6AC 801EA93C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1DB6B0 801EA940 00402825 */  or         $a1, $v0, $zero
.L801EA944_ovl16:
/* 1DB6B4 801EA944 8F030000 */  lw         $v1, 0x0($t8)
/* 1DB6B8 801EA948 00031880 */  sll        $v1, $v1, 2
.L801EA94C_ovl10:
/* 1DB6BC 801EA94C 14A0000B */  bnez       $a1, .L801EA97C_ovl10
/* 1DB6C0 801EA950 3C04800E */   lui       $a0, %hi(D_800DDFD0)
/* 1DB6C4 801EA954 00832021 */  addu       $a0, $a0, $v1
/* 1DB6C8 801EA958 3C06801F */  lui        $a2, %hi(func_801F4588_ovl10 + 0x44)
/* 1DB6CC 801EA95C 24C645CC */  addiu      $a2, $a2, %lo(func_801F4588_ovl10 + 0x44)
/* 1DB6D0 801EA960 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 1DB6D4 801EA964 0C02911F */  jal        call_virtual_function
/* 1DB6D8 801EA968 24050005 */   addiu     $a1, $zero, 0x5
/* 1DB6DC 801EA96C 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1DB6E0 801EA970 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1DB6E4 801EA974 8F230000 */  lw         $v1, 0x0($t9)
/* 1DB6E8 801EA978 00031880 */  sll        $v1, $v1, 2
.L801EA97C_ovl10:
/* 1DB6EC 801EA97C 3C08800F */  lui        $t0, %hi(D_800E9C60)
/* 1DB6F0 801EA980 01034021 */  addu       $t0, $t0, $v1
/* 1DB6F4 801EA984 8D089C60 */  lw         $t0, %lo(D_800E9C60)($t0)
/* 1DB6F8 801EA988 3C09800F */  lui        $t1, %hi(D_800EA1A0)
/* 1DB6FC 801EA98C 01234821 */  addu       $t1, $t1, $v1
/* 1DB700 801EA990 5100000B */  beql       $t0, $zero, .L801EA9C0_ovl10
.L801EA994_ovl16:
/* 1DB704 801EA994 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1DB708 801EA998 8D29A1A0 */  lw         $t1, %lo(D_800EA1A0)($t1)
/* 1DB70C 801EA99C 11200003 */  beqz       $t1, .L801EA9AC_ovl10
glabel func_801EA9A0_ovl9
/* 1DB710 801EA9A0 00000000 */   nop
/* 1DB714 801EA9A4 0C0797D8 */  jal        func_801E5F60_ovl10
/* 1DB718 801EA9A8 00000000 */   nop
.L801EA9AC_ovl10:
/* 1DB71C 801EA9AC 0C066FA7 */  jal        func_8019BE9C_ovl7
/* 1DB720 801EA9B0 24040001 */   addiu     $a0, $zero, 0x1
/* 1DB724 801EA9B4 0C07980C */  jal        func_801E6030_ovl10
/* 1DB728 801EA9B8 00000000 */   nop
/* 1DB72C 801EA9BC 8FBF0014 */  lw         $ra, 0x14($sp)
.L801EA9C0_ovl10:
/* 1DB730 801EA9C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1DB734 801EA9C4 03E00008 */  jr         $ra
.L801EA9C8_ovl16:
/* 1DB738 801EA9C8 00000000 */   nop
