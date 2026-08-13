nonmatching func_801D75A8_ovl8, 0x2CC

glabel func_801D75A8_ovl8
    /* 17B088 801D75A8 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 17B08C 801D75AC 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 17B090 801D75B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 17B094 801D75B4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 17B098 801D75B8 AFA40030 */  sw         $a0, 0x30($sp)
    /* 17B09C 801D75BC 8DC30000 */  lw         $v1, 0x0($t6)
    /* 17B0A0 801D75C0 3C0F800E */  lui        $t7, %hi(D_800E0D50)
    /* 17B0A4 801D75C4 3C19800E */  lui        $t9, %hi(gEntityFuncListIDArray)
    /* 17B0A8 801D75C8 00031880 */  sll        $v1, $v1, 2
    /* 17B0AC 801D75CC 01E37821 */  addu       $t7, $t7, $v1
    /* 17B0B0 801D75D0 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
    /* 17B0B4 801D75D4 24010005 */  addiu      $at, $zero, 0x5
    /* 17B0B8 801D75D8 3C09800F */  lui        $t1, %hi(D_800E8920)
    /* 17B0BC 801D75DC 000FC080 */  sll        $t8, $t7, 2
    /* 17B0C0 801D75E0 0338C821 */  addu       $t9, $t9, $t8
    /* 17B0C4 801D75E4 8F39DC50 */  lw         $t9, %lo(gEntityFuncListIDArray)($t9)
    /* 17B0C8 801D75E8 3C02800F */  lui        $v0, %hi(D_800E98E0)
    /* 17B0CC 801D75EC 01234821 */  addu       $t1, $t1, $v1
    /* 17B0D0 801D75F0 1721000C */  bne        $t9, $at, .L801D7624_ovl8
    /* 17B0D4 801D75F4 00431021 */   addu      $v0, $v0, $v1
    /* 17B0D8 801D75F8 8D298920 */  lw         $t1, %lo(D_800E8920)($t1)
    /* 17B0DC 801D75FC 15200005 */  bnez       $t1, .L801D7614_ovl8
    /* 17B0E0 801D7600 00000000 */   nop
    /* 17B0E4 801D7604 0C05AF49 */  jal        func_8016BD24_ovl3
    /* 17B0E8 801D7608 24040001 */   addiu     $a0, $zero, 0x1
    /* 17B0EC 801D760C 10000096 */  b          .L801D7868_ovl8
    /* 17B0F0 801D7610 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801D7614_ovl8:
    /* 17B0F4 801D7614 0C05AF49 */  jal        func_8016BD24_ovl3
    /* 17B0F8 801D7618 00002025 */   or        $a0, $zero, $zero
    /* 17B0FC 801D761C 10000092 */  b          .L801D7868_ovl8
    /* 17B100 801D7620 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801D7624_ovl8:
    /* 17B104 801D7624 8C4298E0 */  lw         $v0, %lo(D_800E98E0)($v0)
    /* 17B108 801D7628 24010001 */  addiu      $at, $zero, 0x1
    /* 17B10C 801D762C 1040008B */  beqz       $v0, .L801D785C_ovl8
    /* 17B110 801D7630 00000000 */   nop
    /* 17B114 801D7634 14410089 */  bne        $v0, $at, .L801D785C_ovl8
    /* 17B118 801D7638 3C04801D */   lui       $a0, %hi(D_801CA980)
    /* 17B11C 801D763C 0C068CEE */  jal        func_801A33B8
    /* 17B120 801D7640 2484A980 */   addiu     $a0, $a0, %lo(D_801CA980)
    /* 17B124 801D7644 3C07801D */  lui        $a3, %hi(D_801CE6D0_ovl7)
    /* 17B128 801D7648 0C044A29 */  jal        func_801128A4
    /* 17B12C 801D764C 24E4E6D0 */   addiu     $a0, $a3, %lo(D_801CE6D0_ovl7)
    /* 17B130 801D7650 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* 17B134 801D7654 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* 17B138 801D7658 3C07801D */  lui        $a3, %hi(D_801CE6D0_ovl7)
    /* 17B13C 801D765C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 17B140 801D7660 8C8A0000 */  lw         $t2, 0x0($a0)
    /* 17B144 801D7664 24E7E6D0 */  addiu      $a3, $a3, %lo(D_801CE6D0_ovl7)
    /* 17B148 801D7668 C4E40004 */  lwc1       $f4, 0x4($a3)
    /* 17B14C 801D766C 000A1880 */  sll        $v1, $t2, 2
    /* 17B150 801D7670 00230821 */  addu       $at, $at, $v1
    /* 17B154 801D7674 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* 17B158 801D7678 44806000 */  mtc1       $zero, $f12
    /* 17B15C 801D767C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 17B160 801D7680 46062001 */  sub.s      $f0, $f4, $f6
    /* 17B164 801D7684 00230821 */  addu       $at, $at, $v1
    /* 17B168 801D7688 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 17B16C 801D768C C4E8000C */  lwc1       $f8, 0xC($a3)
    /* 17B170 801D7690 460C0032 */  c.eq.s     $f0, $f12
    /* 17B174 801D7694 00404025 */  or         $t0, $v0, $zero
    /* 17B178 801D7698 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 17B17C 801D769C 460A4081 */  sub.s      $f2, $f8, $f10
    /* 17B180 801D76A0 45020006 */  bc1fl      .L801D76BC_ovl8
    /* 17B184 801D76A4 44050000 */   mfc1      $a1, $f0
    /* 17B188 801D76A8 460C1032 */  c.eq.s     $f2, $f12
    /* 17B18C 801D76AC 00000000 */  nop
    /* 17B190 801D76B0 4503001A */  bc1tl      .L801D771C_ovl8
    /* 17B194 801D76B4 C4E40008 */   lwc1      $f4, 0x8($a3)
    /* 17B198 801D76B8 44050000 */  mfc1       $a1, $f0
  .L801D76BC_ovl8:
    /* 17B19C 801D76BC 44061000 */  mfc1       $a2, $f2
    /* 17B1A0 801D76C0 8FA40018 */  lw         $a0, 0x18($sp)
    /* 17B1A4 801D76C4 0C03E1CA */  jal        func_800F8728
    /* 17B1A8 801D76C8 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 17B1AC 801D76CC 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* 17B1B0 801D76D0 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* 17B1B4 801D76D4 3C07801D */  lui        $a3, %hi(D_801CE6D0_ovl7)
    /* 17B1B8 801D76D8 24E7E6D0 */  addiu      $a3, $a3, %lo(D_801CE6D0_ovl7)
    /* 17B1BC 801D76DC 8C8B0000 */  lw         $t3, 0x0($a0)
    /* 17B1C0 801D76E0 C4F00004 */  lwc1       $f16, 0x4($a3)
    /* 17B1C4 801D76E4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 17B1C8 801D76E8 000B6080 */  sll        $t4, $t3, 2
    /* 17B1CC 801D76EC 002C0821 */  addu       $at, $at, $t4
    /* 17B1D0 801D76F0 E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* 17B1D4 801D76F4 8C8D0000 */  lw         $t5, 0x0($a0)
    /* 17B1D8 801D76F8 C4F2000C */  lwc1       $f18, 0xC($a3)
    /* 17B1DC 801D76FC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 17B1E0 801D7700 000D7080 */  sll        $t6, $t5, 2
    /* 17B1E4 801D7704 002E0821 */  addu       $at, $at, $t6
    /* 17B1E8 801D7708 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* 17B1EC 801D770C 8C830000 */  lw         $v1, 0x0($a0)
    /* 17B1F0 801D7710 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 17B1F4 801D7714 00031880 */  sll        $v1, $v1, 2
    /* 17B1F8 801D7718 C4E40008 */  lwc1       $f4, 0x8($a3)
  .L801D771C_ovl8:
    /* 17B1FC 801D771C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 17B200 801D7720 00230821 */  addu       $at, $at, $v1
    /* 17B204 801D7724 11000024 */  beqz       $t0, .L801D77B8_ovl8
    /* 17B208 801D7728 E4242790 */   swc1      $f4, %lo(gEntitiesNextPosYArray)($at)
    /* 17B20C 801D772C 310F0001 */  andi       $t7, $t0, 0x1
    /* 17B210 801D7730 11E0000A */  beqz       $t7, .L801D775C_ovl8
    /* 17B214 801D7734 3C028013 */   lui       $v0, %hi(D_8012BCA0)
    /* 17B218 801D7738 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 17B21C 801D773C 8C580000 */  lw         $t8, 0x0($v0)
    /* 17B220 801D7740 944C0000 */  lhu        $t4, 0x0($v0)
    /* 17B224 801D7744 0018CCC2 */  srl        $t9, $t8, 19
    /* 17B228 801D7748 37290007 */  ori        $t1, $t9, 0x7
    /* 17B22C 801D774C 000958C0 */  sll        $t3, $t1, 3
    /* 17B230 801D7750 318D0007 */  andi       $t5, $t4, 0x7
    /* 17B234 801D7754 016D7025 */  or         $t6, $t3, $t5
    /* 17B238 801D7758 A44E0000 */  sh         $t6, 0x0($v0)
  .L801D775C_ovl8:
    /* 17B23C 801D775C 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 17B240 801D7760 310F0002 */  andi       $t7, $t0, 0x2
    /* 17B244 801D7764 11E00009 */  beqz       $t7, .L801D778C_ovl8
    /* 17B248 801D7768 2442BCA0 */   addiu     $v0, $v0, %lo(D_8012BCA0)
    /* 17B24C 801D776C 8C580000 */  lw         $t8, 0x0($v0)
    /* 17B250 801D7770 944B0000 */  lhu        $t3, 0x0($v0)
    /* 17B254 801D7774 0018CCC2 */  srl        $t9, $t8, 19
    /* 17B258 801D7778 37290038 */  ori        $t1, $t9, 0x38
    /* 17B25C 801D777C 000960C0 */  sll        $t4, $t1, 3
    /* 17B260 801D7780 316D0007 */  andi       $t5, $t3, 0x7
    /* 17B264 801D7784 018D7025 */  or         $t6, $t4, $t5
    /* 17B268 801D7788 A44E0000 */  sh         $t6, 0x0($v0)
  .L801D778C_ovl8:
    /* 17B26C 801D778C 310F0004 */  andi       $t7, $t0, 0x4
    /* 17B270 801D7790 11E00009 */  beqz       $t7, .L801D77B8_ovl8
    /* 17B274 801D7794 00000000 */   nop
    /* 17B278 801D7798 8C580000 */  lw         $t8, 0x0($v0)
    /* 17B27C 801D779C 944C0000 */  lhu        $t4, 0x0($v0)
    /* 17B280 801D77A0 0018CCC2 */  srl        $t9, $t8, 19
    /* 17B284 801D77A4 372901C0 */  ori        $t1, $t9, 0x1C0
    /* 17B288 801D77A8 000958C0 */  sll        $t3, $t1, 3
    /* 17B28C 801D77AC 318D0007 */  andi       $t5, $t4, 0x7
    /* 17B290 801D77B0 016D7025 */  or         $t6, $t3, $t5
    /* 17B294 801D77B4 A44E0000 */  sh         $t6, 0x0($v0)
  .L801D77B8_ovl8:
    /* 17B298 801D77B8 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 17B29C 801D77BC 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 17B2A0 801D77C0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 17B2A4 801D77C4 3C0C800E */  lui        $t4, %hi(D_800E64D0)
    /* 17B2A8 801D77C8 258C64D0 */  addiu      $t4, $t4, %lo(D_800E64D0)
    /* 17B2AC 801D77CC 000FC4C2 */  srl        $t8, $t7, 19
    /* 17B2B0 801D77D0 33190FFF */  andi       $t9, $t8, 0xFFF
    /* 17B2B4 801D77D4 13200021 */  beqz       $t9, .L801D785C_ovl8
    /* 17B2B8 801D77D8 00000000 */   nop
    /* 17B2BC 801D77DC 8C890000 */  lw         $t1, 0x0($a0)
    /* 17B2C0 801D77E0 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
    /* 17B2C4 801D77E4 44814000 */  mtc1       $at, $f8
    /* 17B2C8 801D77E8 00095080 */  sll        $t2, $t1, 2
    /* 17B2CC 801D77EC 014C1021 */  addu       $v0, $t2, $t4
    /* 17B2D0 801D77F0 C4460000 */  lwc1       $f6, 0x0($v0)
    /* 17B2D4 801D77F4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 17B2D8 801D77F8 44816000 */  mtc1       $at, $f12
    /* 17B2DC 801D77FC 46083282 */  mul.s      $f10, $f6, $f8
    /* 17B2E0 801D7800 0C02EFF8 */  jal        change_kirby_hp
    /* 17B2E4 801D7804 E44A0000 */   swc1      $f10, 0x0($v0)
    /* 17B2E8 801D7808 3C01800D */  lui        $at, %hi(gKirbyHp)
    /* 17B2EC 801D780C C4326E50 */  lwc1       $f18, %lo(gKirbyHp)($at)
    /* 17B2F0 801D7810 44808000 */  mtc1       $zero, $f16
    /* 17B2F4 801D7814 00000000 */  nop
    /* 17B2F8 801D7818 4612803C */  c.lt.s     $f16, $f18
    /* 17B2FC 801D781C 00000000 */  nop
    /* 17B300 801D7820 45000008 */  bc1f       .L801D7844_ovl8
    /* 17B304 801D7824 00000000 */   nop
    /* 17B308 801D7828 0C029D9E */  jal        play_sound
    /* 17B30C 801D782C 240400D9 */   addiu     $a0, $zero, 0xD9
    /* 17B310 801D7830 0C03EE45 */  jal        func_800FB914
    /* 17B314 801D7834 24040002 */   addiu     $a0, $zero, 0x2
    /* 17B318 801D7838 00002025 */  or         $a0, $zero, $zero
    /* 17B31C 801D783C 0C02ED1A */  jal        func_800BB468
    /* 17B320 801D7840 00002825 */   or        $a1, $zero, $zero
  .L801D7844_ovl8:
    /* 17B324 801D7844 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 17B328 801D7848 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 17B32C 801D784C AC400024 */  sw         $zero, 0x24($v0)
    /* 17B330 801D7850 A4400068 */  sh         $zero, 0x68($v0)
    /* 17B334 801D7854 0C05AF49 */  jal        func_8016BD24_ovl3
    /* 17B338 801D7858 24040001 */   addiu     $a0, $zero, 0x1
  .L801D785C_ovl8:
    /* 17B33C 801D785C 0C05A5BC */  jal        func_801696F0_ovl3
    /* 17B340 801D7860 8FA40030 */   lw        $a0, 0x30($sp)
    /* 17B344 801D7864 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801D7868_ovl8:
    /* 17B348 801D7868 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 17B34C 801D786C 03E00008 */  jr         $ra
    /* 17B350 801D7870 00000000 */   nop
endlabel func_801D75A8_ovl8
.size func_801D75A8_ovl8, . - func_801D75A8_ovl8
    /* 17B354 801D7874 00000000 */  nop
    /* 17B358 801D7878 00000000 */  nop
    /* 17B35C 801D787C 00000000 */  nop
