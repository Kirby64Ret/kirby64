nonmatching func_8017E54C_ovl3, 0x4C0

glabel func_8017E54C_ovl3
    /* DEF8C 8017E54C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DEF90 8017E550 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DEF94 8017E554 0C054E61 */  jal        func_80153984_ovl3
    /* DEF98 8017E558 AFA40018 */   sw        $a0, 0x18($sp)
    /* DEF9C 8017E55C 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* DEFA0 8017E560 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
    /* DEFA4 8017E564 8CAE0044 */  lw         $t6, 0x44($a1)
    /* DEFA8 8017E568 24010001 */  addiu      $at, $zero, 0x1
    /* DEFAC 8017E56C 51C10006 */  beql       $t6, $at, .L8017E588_ovl3
    /* DEFB0 8017E570 8CAF0030 */   lw        $t7, 0x30($a1)
    /* DEFB4 8017E574 0C0485EE */  jal        func_801217B8
    /* DEFB8 8017E578 00000000 */   nop
    /* DEFBC 8017E57C 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* DEFC0 8017E580 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
    /* DEFC4 8017E584 8CAF0030 */  lw         $t7, 0x30($a1)
  .L8017E588_ovl3:
    /* DEFC8 8017E588 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* DEFCC 8017E58C 51E0000C */  beql       $t7, $zero, .L8017E5C0_ovl3
    /* DEFD0 8017E590 8CAA00A0 */   lw        $t2, 0xA0($a1)
    /* DEFD4 8017E594 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* DEFD8 8017E598 44802000 */  mtc1       $zero, $f4
    /* DEFDC 8017E59C 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* DEFE0 8017E5A0 8F190000 */  lw         $t9, 0x0($t8)
    /* DEFE4 8017E5A4 00194880 */  sll        $t1, $t9, 2
    /* DEFE8 8017E5A8 00290821 */  addu       $at, $at, $t1
    /* DEFEC 8017E5AC 0C04759F */  jal        func_8011D67C
    /* DEFF0 8017E5B0 E4244010 */   swc1      $f4, %lo(gEntitiesAngleXArray)($at)
    /* DEFF4 8017E5B4 10000112 */  b          .L8017EA00_ovl3
    /* DEFF8 8017E5B8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DEFFC 8017E5BC 8CAA00A0 */  lw         $t2, 0xA0($a1)
  .L8017E5C0_ovl3:
    /* DF000 8017E5C0 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* DF004 8017E5C4 51400012 */  beql       $t2, $zero, .L8017E610_ovl3
    /* DF008 8017E5C8 C4A00040 */   lwc1      $f0, 0x40($a1)
    /* DF00C 8017E5CC 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* DF010 8017E5D0 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* DF014 8017E5D4 24070002 */  addiu      $a3, $zero, 0x2
    /* DF018 8017E5D8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DF01C 8017E5DC 000C6880 */  sll        $t5, $t4, 2
    /* DF020 8017E5E0 01CD7021 */  addu       $t6, $t6, $t5
    /* DF024 8017E5E4 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* DF028 8017E5E8 8DCF000C */  lw         $t7, 0xC($t6)
    /* DF02C 8017E5EC 91F80054 */  lbu        $t8, 0x54($t7)
    /* DF030 8017E5F0 14F80022 */  bne        $a3, $t8, .L8017E67C_ovl3
    /* DF034 8017E5F4 00000000 */   nop
    /* DF038 8017E5F8 0C04783A */  jal        func_8011E0E8
    /* DF03C 8017E5FC 00000000 */   nop
    /* DF040 8017E600 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* DF044 8017E604 1000001D */  b          .L8017E67C_ovl3
    /* DF048 8017E608 24A5E7C0 */   addiu     $a1, $a1, %lo(gKirbyState)
    /* DF04C 8017E60C C4A00040 */  lwc1       $f0, 0x40($a1)
  .L8017E610_ovl3:
    /* DF050 8017E610 44803000 */  mtc1       $zero, $f6
    /* DF054 8017E614 3C018019 */  lui        $at, %hi(D_801976A8_ovl3)
    /* DF058 8017E618 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* DF05C 8017E61C 46003032 */  c.eq.s     $f6, $f0
    /* DF060 8017E620 00000000 */  nop
    /* DF064 8017E624 45010015 */  bc1t       .L8017E67C_ovl3
    /* DF068 8017E628 00000000 */   nop
    /* DF06C 8017E62C C42876A8 */  lwc1       $f8, %lo(D_801976A8_ovl3)($at)
    /* DF070 8017E630 44808000 */  mtc1       $zero, $f16
    /* DF074 8017E634 46080281 */  sub.s      $f10, $f0, $f8
    /* DF078 8017E638 E4AA0040 */  swc1       $f10, 0x40($a1)
    /* DF07C 8017E63C C4A00040 */  lwc1       $f0, 0x40($a1)
    /* DF080 8017E640 4610003E */  c.le.s     $f0, $f16
    /* DF084 8017E644 00000000 */  nop
    /* DF088 8017E648 45000005 */  bc1f       .L8017E660_ovl3
    /* DF08C 8017E64C 00000000 */   nop
    /* DF090 8017E650 44809000 */  mtc1       $zero, $f18
    /* DF094 8017E654 00000000 */  nop
    /* DF098 8017E658 E4B20040 */  swc1       $f18, 0x40($a1)
    /* DF09C 8017E65C C4A00040 */  lwc1       $f0, 0x40($a1)
  .L8017E660_ovl3:
    /* DF0A0 8017E660 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* DF0A4 8017E664 46000107 */  neg.s      $f4, $f0
    /* DF0A8 8017E668 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* DF0AC 8017E66C 8F290000 */  lw         $t1, 0x0($t9)
    /* DF0B0 8017E670 00095080 */  sll        $t2, $t1, 2
    /* DF0B4 8017E674 002A0821 */  addu       $at, $at, $t2
    /* DF0B8 8017E678 E4244010 */  swc1       $f4, %lo(gEntitiesAngleXArray)($at)
  .L8017E67C_ovl3:
    /* DF0BC 8017E67C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* DF0C0 8017E680 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* DF0C4 8017E684 3C08800F */  lui        $t0, %hi(D_800E8920)
    /* DF0C8 8017E688 25088920 */  addiu      $t0, $t0, %lo(D_800E8920)
    /* DF0CC 8017E68C 8C430000 */  lw         $v1, 0x0($v0)
    /* DF0D0 8017E690 24070002 */  addiu      $a3, $zero, 0x2
    /* DF0D4 8017E694 3C06800E */  lui        $a2, %hi(D_800E6690)
    /* DF0D8 8017E698 00031880 */  sll        $v1, $v1, 2
    /* DF0DC 8017E69C 01035821 */  addu       $t3, $t0, $v1
    /* DF0E0 8017E6A0 8D640000 */  lw         $a0, 0x0($t3)
    /* DF0E4 8017E6A4 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* DF0E8 8017E6A8 50800019 */  beql       $a0, $zero, .L8017E710_ovl3
    /* DF0EC 8017E6AC 0323C821 */   addu      $t9, $t9, $v1
    /* DF0F0 8017E6B0 44803000 */  mtc1       $zero, $f6
    /* DF0F4 8017E6B4 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
    /* DF0F8 8017E6B8 00C36021 */  addu       $t4, $a2, $v1
    /* DF0FC 8017E6BC E5860000 */  swc1       $f6, 0x0($t4)
    /* DF100 8017E6C0 8C430000 */  lw         $v1, 0x0($v0)
    /* DF104 8017E6C4 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* DF108 8017E6C8 00031880 */  sll        $v1, $v1, 2
    /* DF10C 8017E6CC 00C36821 */  addu       $t5, $a2, $v1
    /* DF110 8017E6D0 C5A80000 */  lwc1       $f8, 0x0($t5)
    /* DF114 8017E6D4 00230821 */  addu       $at, $at, $v1
    /* DF118 8017E6D8 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
    /* DF11C 8017E6DC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DF120 8017E6E0 3C018019 */  lui        $at, %hi(D_801976AC_ovl3)
    /* DF124 8017E6E4 C42A76AC */  lwc1       $f10, %lo(D_801976AC_ovl3)($at)
    /* DF128 8017E6E8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DF12C 8017E6EC 000E7880 */  sll        $t7, $t6, 2
    /* DF130 8017E6F0 002F0821 */  addu       $at, $at, $t7
    /* DF134 8017E6F4 E42A6850 */  swc1       $f10, %lo(D_800E6850)($at)
    /* DF138 8017E6F8 ACA00044 */  sw         $zero, 0x44($a1)
    /* DF13C 8017E6FC 8C430000 */  lw         $v1, 0x0($v0)
    /* DF140 8017E700 00031880 */  sll        $v1, $v1, 2
    /* DF144 8017E704 0103C021 */  addu       $t8, $t0, $v1
    /* DF148 8017E708 8F040000 */  lw         $a0, 0x0($t8)
    /* DF14C 8017E70C 0323C821 */  addu       $t9, $t9, $v1
  .L8017E710_ovl3:
    /* DF150 8017E710 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
    /* DF154 8017E714 1320009C */  beqz       $t9, .L8017E988_ovl3
    /* DF158 8017E718 00000000 */   nop
    /* DF15C 8017E71C 1080006E */  beqz       $a0, .L8017E8D8_ovl3
    /* DF160 8017E720 3C01800E */   lui       $at, %hi(D_800E3210)
    /* DF164 8017E724 94A900D2 */  lhu        $t1, 0xD2($a1)
    /* DF168 8017E728 3C0A800D */  lui        $t2, %hi(gKirbyController + 0x2)
    /* DF16C 8017E72C 55200063 */  bnel       $t1, $zero, .L8017E8BC_ovl3
    /* DF170 8017E730 A4A000D2 */   sh        $zero, 0xD2($a1)
    /* DF174 8017E734 954A6FEA */  lhu        $t2, %lo(gKirbyController + 0x2)($t2)
    /* DF178 8017E738 240C0001 */  addiu      $t4, $zero, 0x1
    /* DF17C 8017E73C 314B8000 */  andi       $t3, $t2, 0x8000
    /* DF180 8017E740 1160009D */  beqz       $t3, .L8017E9B8_ovl3
    /* DF184 8017E744 00000000 */   nop
    /* DF188 8017E748 ACAC0044 */  sw         $t4, 0x44($a1)
    /* DF18C 8017E74C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* DF190 8017E750 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* DF194 8017E754 24010006 */  addiu      $at, $zero, 0x6
    /* DF198 8017E758 000D7080 */  sll        $t6, $t5, 2
    /* DF19C 8017E75C 010E7821 */  addu       $t7, $t0, $t6
    /* DF1A0 8017E760 ADE00000 */  sw         $zero, 0x0($t7)
    /* DF1A4 8017E764 8C580000 */  lw         $t8, 0x0($v0)
    /* DF1A8 8017E768 00001025 */  or         $v0, $zero, $zero
    /* DF1AC 8017E76C 0018C880 */  sll        $t9, $t8, 2
    /* DF1B0 8017E770 01394821 */  addu       $t1, $t1, $t9
    /* DF1B4 8017E774 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
    /* DF1B8 8017E778 312A0006 */  andi       $t2, $t1, 0x6
    /* DF1BC 8017E77C 15410003 */  bne        $t2, $at, .L8017E78C_ovl3
    /* DF1C0 8017E780 00000000 */   nop
    /* DF1C4 8017E784 10000001 */  b          .L8017E78C_ovl3
    /* DF1C8 8017E788 24020001 */   addiu     $v0, $zero, 0x1
  .L8017E78C_ovl3:
    /* DF1CC 8017E78C 10400023 */  beqz       $v0, .L8017E81C_ovl3
    /* DF1D0 8017E790 00000000 */   nop
    /* DF1D4 8017E794 0C029D9E */  jal        play_sound
    /* DF1D8 8017E798 2404010B */   addiu     $a0, $zero, 0x10B
    /* DF1DC 8017E79C 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* DF1E0 8017E7A0 44810000 */  mtc1       $at, $f0
    /* DF1E4 8017E7A4 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DF1E8 8017E7A8 44818000 */  mtc1       $at, $f16
    /* DF1EC 8017E7AC 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* DF1F0 8017E7B0 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
    /* DF1F4 8017E7B4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* DF1F8 8017E7B8 E4B000CC */  swc1       $f16, 0xCC($a1)
    /* DF1FC 8017E7BC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* DF200 8017E7C0 3C01800E */  lui        $at, %hi(D_800E3210)
    /* DF204 8017E7C4 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* DF208 8017E7C8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* DF20C 8017E7CC 000B6080 */  sll        $t4, $t3, 2
    /* DF210 8017E7D0 002C0821 */  addu       $at, $at, $t4
    /* DF214 8017E7D4 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* DF218 8017E7D8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* DF21C 8017E7DC 3C018019 */  lui        $at, %hi(D_801976B0_ovl3)
    /* DF220 8017E7E0 C43276B0 */  lwc1       $f18, %lo(D_801976B0_ovl3)($at)
    /* DF224 8017E7E4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* DF228 8017E7E8 000D7080 */  sll        $t6, $t5, 2
    /* DF22C 8017E7EC 002E0821 */  addu       $at, $at, $t6
    /* DF230 8017E7F0 E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
    /* DF234 8017E7F4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* DF238 8017E7F8 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* DF23C 8017E7FC 000FC080 */  sll        $t8, $t7, 2
    /* DF240 8017E800 00380821 */  addu       $at, $at, $t8
    /* DF244 8017E804 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
    /* DF248 8017E808 8C430000 */  lw         $v1, 0x0($v0)
    /* DF24C 8017E80C 00031880 */  sll        $v1, $v1, 2
    /* DF250 8017E810 00832021 */  addu       $a0, $a0, $v1
    /* DF254 8017E814 10000068 */  b          .L8017E9B8_ovl3
    /* DF258 8017E818 8C848920 */   lw        $a0, %lo(D_800E8920)($a0)
  .L8017E81C_ovl3:
    /* DF25C 8017E81C 0C029D9E */  jal        play_sound
    /* DF260 8017E820 240400F7 */   addiu     $a0, $zero, 0xF7
    /* DF264 8017E824 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* DF268 8017E828 44812000 */  mtc1       $at, $f4
    /* DF26C 8017E82C 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* DF270 8017E830 3C014188 */  lui        $at, (0x41880000 >> 16)
    /* DF274 8017E834 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
    /* DF278 8017E838 44816000 */  mtc1       $at, $f12
    /* DF27C 8017E83C 0C048C51 */  jal        func_80123144
    /* DF280 8017E840 E4A400CC */   swc1      $f4, 0xCC($a1)
    /* DF284 8017E844 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* DF288 8017E848 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* DF28C 8017E84C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* DF290 8017E850 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* DF294 8017E854 8C590000 */  lw         $t9, 0x0($v0)
    /* DF298 8017E858 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* DF29C 8017E85C 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
    /* DF2A0 8017E860 00194880 */  sll        $t1, $t9, 2
    /* DF2A4 8017E864 00290821 */  addu       $at, $at, $t1
    /* DF2A8 8017E868 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* DF2AC 8017E86C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* DF2B0 8017E870 3C018019 */  lui        $at, %hi(D_801976B4_ovl3)
    /* DF2B4 8017E874 C42676B4 */  lwc1       $f6, %lo(D_801976B4_ovl3)($at)
    /* DF2B8 8017E878 3C01800E */  lui        $at, %hi(D_800E3750)
    /* DF2BC 8017E87C 000A5880 */  sll        $t3, $t2, 2
    /* DF2C0 8017E880 002B0821 */  addu       $at, $at, $t3
    /* DF2C4 8017E884 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
    /* DF2C8 8017E888 8C4C0000 */  lw         $t4, 0x0($v0)
    /* DF2CC 8017E88C 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* DF2D0 8017E890 44814000 */  mtc1       $at, $f8
    /* DF2D4 8017E894 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* DF2D8 8017E898 000C6880 */  sll        $t5, $t4, 2
    /* DF2DC 8017E89C 002D0821 */  addu       $at, $at, $t5
    /* DF2E0 8017E8A0 E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
    /* DF2E4 8017E8A4 8C430000 */  lw         $v1, 0x0($v0)
    /* DF2E8 8017E8A8 00031880 */  sll        $v1, $v1, 2
    /* DF2EC 8017E8AC 00832021 */  addu       $a0, $a0, $v1
    /* DF2F0 8017E8B0 10000041 */  b          .L8017E9B8_ovl3
    /* DF2F4 8017E8B4 8C848920 */   lw        $a0, %lo(D_800E8920)($a0)
    /* DF2F8 8017E8B8 A4A000D2 */  sh         $zero, 0xD2($a1)
  .L8017E8BC_ovl3:
    /* DF2FC 8017E8BC A4A000D0 */  sh         $zero, 0xD0($a1)
    /* DF300 8017E8C0 8C430000 */  lw         $v1, 0x0($v0)
    /* DF304 8017E8C4 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* DF308 8017E8C8 00031880 */  sll        $v1, $v1, 2
    /* DF30C 8017E8CC 00832021 */  addu       $a0, $a0, $v1
    /* DF310 8017E8D0 10000039 */  b          .L8017E9B8_ovl3
    /* DF314 8017E8D4 8C848920 */   lw        $a0, %lo(D_800E8920)($a0)
  .L8017E8D8_ovl3:
    /* DF318 8017E8D8 00230821 */  addu       $at, $at, $v1
    /* DF31C 8017E8DC C4203210 */  lwc1       $f0, %lo(D_800E3210)($at)
    /* DF320 8017E8E0 44805000 */  mtc1       $zero, $f10
    /* DF324 8017E8E4 00000000 */  nop
    /* DF328 8017E8E8 4600503C */  c.lt.s     $f10, $f0
    /* DF32C 8017E8EC 00000000 */  nop
    /* DF330 8017E8F0 4502001C */  bc1fl      .L8017E964_ovl3
    /* DF334 8017E8F4 94B900D2 */   lhu       $t9, 0xD2($a1)
    /* DF338 8017E8F8 C4B000CC */  lwc1       $f16, 0xCC($a1)
    /* DF33C 8017E8FC 4610003C */  c.lt.s     $f0, $f16
    /* DF340 8017E900 00000000 */  nop
    /* DF344 8017E904 45020009 */  bc1fl      .L8017E92C_ovl3
    /* DF348 8017E908 8CB800E4 */   lw        $t8, 0xE4($a1)
    /* DF34C 8017E90C 94A400D2 */  lhu        $a0, 0xD2($a1)
    /* DF350 8017E910 14800005 */  bnez       $a0, .L8017E928_ovl3
    /* DF354 8017E914 248F0001 */   addiu     $t7, $a0, 0x1
    /* DF358 8017E918 A4AF00D2 */  sh         $t7, 0xD2($a1)
    /* DF35C 8017E91C ACA70044 */  sw         $a3, 0x44($a1)
    /* DF360 8017E920 8C430000 */  lw         $v1, 0x0($v0)
    /* DF364 8017E924 00031880 */  sll        $v1, $v1, 2
  .L8017E928_ovl3:
    /* DF368 8017E928 8CB800E4 */  lw         $t8, 0xE4($a1)
  .L8017E92C_ovl3:
    /* DF36C 8017E92C 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* DF370 8017E930 53000009 */  beql       $t8, $zero, .L8017E958_ovl3
    /* DF374 8017E934 00832021 */   addu      $a0, $a0, $v1
    /* DF378 8017E938 44809000 */  mtc1       $zero, $f18
    /* DF37C 8017E93C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* DF380 8017E940 00230821 */  addu       $at, $at, $v1
    /* DF384 8017E944 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
    /* DF388 8017E948 ACA70044 */  sw         $a3, 0x44($a1)
    /* DF38C 8017E94C 8C430000 */  lw         $v1, 0x0($v0)
    /* DF390 8017E950 00031880 */  sll        $v1, $v1, 2
    /* DF394 8017E954 00832021 */  addu       $a0, $a0, $v1
  .L8017E958_ovl3:
    /* DF398 8017E958 10000017 */  b          .L8017E9B8_ovl3
    /* DF39C 8017E95C 8C848920 */   lw        $a0, %lo(D_800E8920)($a0)
    /* DF3A0 8017E960 94B900D2 */  lhu        $t9, 0xD2($a1)
  .L8017E964_ovl3:
    /* DF3A4 8017E964 13200014 */  beqz       $t9, .L8017E9B8_ovl3
    /* DF3A8 8017E968 00000000 */   nop
    /* DF3AC 8017E96C ACA70044 */  sw         $a3, 0x44($a1)
    /* DF3B0 8017E970 8C430000 */  lw         $v1, 0x0($v0)
    /* DF3B4 8017E974 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* DF3B8 8017E978 00031880 */  sll        $v1, $v1, 2
    /* DF3BC 8017E97C 00832021 */  addu       $a0, $a0, $v1
    /* DF3C0 8017E980 1000000D */  b          .L8017E9B8_ovl3
    /* DF3C4 8017E984 8C848920 */   lw        $a0, %lo(D_800E8920)($a0)
  .L8017E988_ovl3:
    /* DF3C8 8017E988 1080000B */  beqz       $a0, .L8017E9B8_ovl3
    /* DF3CC 8017E98C 00000000 */   nop
    /* DF3D0 8017E990 94A900D2 */  lhu        $t1, 0xD2($a1)
    /* DF3D4 8017E994 11200008 */  beqz       $t1, .L8017E9B8_ovl3
    /* DF3D8 8017E998 00000000 */   nop
    /* DF3DC 8017E99C A4A000D2 */  sh         $zero, 0xD2($a1)
    /* DF3E0 8017E9A0 A4A000D0 */  sh         $zero, 0xD0($a1)
    /* DF3E4 8017E9A4 8C430000 */  lw         $v1, 0x0($v0)
    /* DF3E8 8017E9A8 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* DF3EC 8017E9AC 00031880 */  sll        $v1, $v1, 2
    /* DF3F0 8017E9B0 00832021 */  addu       $a0, $a0, $v1
    /* DF3F4 8017E9B4 8C848920 */  lw         $a0, %lo(D_800E8920)($a0)
  .L8017E9B8_ovl3:
    /* DF3F8 8017E9B8 14800010 */  bnez       $a0, .L8017E9FC_ovl3
    /* DF3FC 8017E9BC 3C01800E */   lui       $at, %hi(D_800E3210)
    /* DF400 8017E9C0 00230821 */  addu       $at, $at, $v1
    /* DF404 8017E9C4 C4263210 */  lwc1       $f6, %lo(D_800E3210)($at)
    /* DF408 8017E9C8 44802000 */  mtc1       $zero, $f4
    /* DF40C 8017E9CC 00000000 */  nop
    /* DF410 8017E9D0 4606203C */  c.lt.s     $f4, $f6
    /* DF414 8017E9D4 00000000 */  nop
    /* DF418 8017E9D8 45000006 */  bc1f       .L8017E9F4_ovl3
    /* DF41C 8017E9DC 00000000 */   nop
    /* DF420 8017E9E0 94AB00D2 */  lhu        $t3, 0xD2($a1)
    /* DF424 8017E9E4 15600003 */  bnez       $t3, .L8017E9F4_ovl3
    /* DF428 8017E9E8 00000000 */   nop
    /* DF42C 8017E9EC 0C047AF5 */  jal        func_8011EBD4
    /* DF430 8017E9F0 00000000 */   nop
  .L8017E9F4_ovl3:
    /* DF434 8017E9F4 0C047B5A */  jal        func_8011ED68
    /* DF438 8017E9F8 00000000 */   nop
  .L8017E9FC_ovl3:
    /* DF43C 8017E9FC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8017EA00_ovl3:
    /* DF440 8017EA00 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DF444 8017EA04 03E00008 */  jr         $ra
    /* DF448 8017EA08 00000000 */   nop
endlabel func_8017E54C_ovl3
.size func_8017E54C_ovl3, . - func_8017E54C_ovl3
