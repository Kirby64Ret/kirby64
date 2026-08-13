nonmatching func_8010CABC, 0x388

glabel func_8010CABC
    /* 9552C 8010CABC 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 95530 8010CAC0 AFB00028 */  sw         $s0, 0x28($sp)
    /* 95534 8010CAC4 3C108013 */  lui        $s0, %hi(D_8012BCA0)
    /* 95538 8010CAC8 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 9553C 8010CACC 00808825 */  or         $s1, $a0, $zero
    /* 95540 8010CAD0 2610BCA0 */  addiu      $s0, $s0, %lo(D_8012BCA0)
    /* 95544 8010CAD4 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 95548 8010CAD8 AFB20030 */  sw         $s2, 0x30($sp)
    /* 9554C 8010CADC 0C041486 */  jal        func_80105218
    /* 95550 8010CAE0 02002025 */   or        $a0, $s0, $zero
    /* 95554 8010CAE4 0C043182 */  jal        func_8010C608
    /* 95558 8010CAE8 02202025 */   or        $a0, $s1, $zero
    /* 9555C 8010CAEC C6240004 */  lwc1       $f4, 0x4($s1)
    /* 95560 8010CAF0 26320010 */  addiu      $s2, $s1, 0x10
    /* 95564 8010CAF4 3C028013 */  lui        $v0, %hi(D_8012BD00)
    /* 95568 8010CAF8 E7A4004C */  swc1       $f4, 0x4C($sp)
    /* 9556C 8010CAFC C6480000 */  lwc1       $f8, 0x0($s2)
    /* 95570 8010CB00 C6260008 */  lwc1       $f6, 0x8($s1)
    /* 95574 8010CB04 2442BD00 */  addiu      $v0, $v0, %lo(D_8012BD00)
    /* 95578 8010CB08 C4440004 */  lwc1       $f4, 0x4($v0)
    /* 9557C 8010CB0C 46083280 */  add.s      $f10, $f6, $f8
    /* 95580 8010CB10 C7B2004C */  lwc1       $f18, 0x4C($sp)
    /* 95584 8010CB14 3C0E8013 */  lui        $t6, %hi(D_8012BCC4)
    /* 95588 8010CB18 3C0F8013 */  lui        $t7, %hi(D_8012BCC0)
    /* 9558C 8010CB1C E7AA0050 */  swc1       $f10, 0x50($sp)
    /* 95590 8010CB20 C630000C */  lwc1       $f16, 0xC($s1)
    /* 95594 8010CB24 46049180 */  add.s      $f6, $f18, $f4
    /* 95598 8010CB28 C7A80050 */  lwc1       $f8, 0x50($sp)
    /* 9559C 8010CB2C E7B00054 */  swc1       $f16, 0x54($sp)
    /* 955A0 8010CB30 C7AA0054 */  lwc1       $f10, 0x54($sp)
    /* 955A4 8010CB34 C4500008 */  lwc1       $f16, 0x8($v0)
    /* 955A8 8010CB38 3C188013 */  lui        $t8, %hi(D_8012BCBC)
    /* 955AC 8010CB3C 2718BCBC */  addiu      $t8, $t8, %lo(D_8012BCBC)
    /* 955B0 8010CB40 46105480 */  add.s      $f18, $f10, $f16
    /* 955B4 8010CB44 25EFBCC0 */  addiu      $t7, $t7, %lo(D_8012BCC0)
    /* 955B8 8010CB48 25CEBCC4 */  addiu      $t6, $t6, %lo(D_8012BCC4)
    /* 955BC 8010CB4C E7A60040 */  swc1       $f6, 0x40($sp)
    /* 955C0 8010CB50 E7B20048 */  swc1       $f18, 0x48($sp)
    /* 955C4 8010CB54 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 955C8 8010CB58 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 955CC 8010CB5C AFB80018 */  sw         $t8, 0x18($sp)
    /* 955D0 8010CB60 27A4004C */  addiu      $a0, $sp, 0x4C
    /* 955D4 8010CB64 27A50040 */  addiu      $a1, $sp, 0x40
    /* 955D8 8010CB68 00003025 */  or         $a2, $zero, $zero
    /* 955DC 8010CB6C 00003825 */  or         $a3, $zero, $zero
    /* 955E0 8010CB70 0C041229 */  jal        func_801048A4
    /* 955E4 8010CB74 E7A80044 */   swc1      $f8, 0x44($sp)
    /* 955E8 8010CB78 10400009 */  beqz       $v0, .L8010CBA0
    /* 955EC 8010CB7C 27A4004C */   addiu     $a0, $sp, 0x4C
    /* 955F0 8010CB80 8E190000 */  lw         $t9, 0x0($s0)
    /* 955F4 8010CB84 960C0000 */  lhu        $t4, 0x0($s0)
    /* 955F8 8010CB88 001944C2 */  srl        $t0, $t9, 19
    /* 955FC 8010CB8C 35090001 */  ori        $t1, $t0, 0x1
    /* 95600 8010CB90 000958C0 */  sll        $t3, $t1, 3
    /* 95604 8010CB94 318D0007 */  andi       $t5, $t4, 0x7
    /* 95608 8010CB98 016D7025 */  or         $t6, $t3, $t5
    /* 9560C 8010CB9C A60E0000 */  sh         $t6, 0x0($s0)
  .L8010CBA0:
    /* 95610 8010CBA0 C6240008 */  lwc1       $f4, 0x8($s1)
    /* 95614 8010CBA4 C6460008 */  lwc1       $f6, 0x8($s2)
    /* 95618 8010CBA8 3C0F8013 */  lui        $t7, %hi(D_8012BCC4)
    /* 9561C 8010CBAC 3C188013 */  lui        $t8, %hi(D_8012BCC0)
    /* 95620 8010CBB0 46062200 */  add.s      $f8, $f4, $f6
    /* 95624 8010CBB4 3C198013 */  lui        $t9, %hi(D_8012BCBC)
    /* 95628 8010CBB8 2739BCBC */  addiu      $t9, $t9, %lo(D_8012BCBC)
    /* 9562C 8010CBBC 2718BCC0 */  addiu      $t8, $t8, %lo(D_8012BCC0)
    /* 95630 8010CBC0 E7A80050 */  swc1       $f8, 0x50($sp)
    /* 95634 8010CBC4 C7AA0050 */  lwc1       $f10, 0x50($sp)
    /* 95638 8010CBC8 25EFBCC4 */  addiu      $t7, $t7, %lo(D_8012BCC4)
    /* 9563C 8010CBCC AFAF0010 */  sw         $t7, 0x10($sp)
    /* 95640 8010CBD0 AFB80014 */  sw         $t8, 0x14($sp)
    /* 95644 8010CBD4 AFB90018 */  sw         $t9, 0x18($sp)
    /* 95648 8010CBD8 27A50040 */  addiu      $a1, $sp, 0x40
    /* 9564C 8010CBDC 00003025 */  or         $a2, $zero, $zero
    /* 95650 8010CBE0 00003825 */  or         $a3, $zero, $zero
    /* 95654 8010CBE4 0C041229 */  jal        func_801048A4
    /* 95658 8010CBE8 E7AA0044 */   swc1      $f10, 0x44($sp)
    /* 9565C 8010CBEC 10400009 */  beqz       $v0, .L8010CC14
    /* 95660 8010CBF0 27A4004C */   addiu     $a0, $sp, 0x4C
    /* 95664 8010CBF4 8E080000 */  lw         $t0, 0x0($s0)
    /* 95668 8010CBF8 960D0000 */  lhu        $t5, 0x0($s0)
    /* 9566C 8010CBFC 00084CC2 */  srl        $t1, $t0, 19
    /* 95670 8010CC00 352A0004 */  ori        $t2, $t1, 0x4
    /* 95674 8010CC04 000A58C0 */  sll        $t3, $t2, 3
    /* 95678 8010CC08 31AE0007 */  andi       $t6, $t5, 0x7
    /* 9567C 8010CC0C 016E7825 */  or         $t7, $t3, $t6
    /* 95680 8010CC10 A60F0000 */  sh         $t7, 0x0($s0)
  .L8010CC14:
    /* 95684 8010CC14 C6300008 */  lwc1       $f16, 0x8($s1)
    /* 95688 8010CC18 C6520004 */  lwc1       $f18, 0x4($s2)
    /* 9568C 8010CC1C 3C188013 */  lui        $t8, %hi(D_8012BCC4)
    /* 95690 8010CC20 3C198013 */  lui        $t9, %hi(D_8012BCC0)
    /* 95694 8010CC24 46128100 */  add.s      $f4, $f16, $f18
    /* 95698 8010CC28 3C088013 */  lui        $t0, %hi(D_8012BCBC)
    /* 9569C 8010CC2C 2508BCBC */  addiu      $t0, $t0, %lo(D_8012BCBC)
    /* 956A0 8010CC30 2739BCC0 */  addiu      $t9, $t9, %lo(D_8012BCC0)
    /* 956A4 8010CC34 E7A40050 */  swc1       $f4, 0x50($sp)
    /* 956A8 8010CC38 C7A60050 */  lwc1       $f6, 0x50($sp)
    /* 956AC 8010CC3C 2718BCC4 */  addiu      $t8, $t8, %lo(D_8012BCC4)
    /* 956B0 8010CC40 AFB80010 */  sw         $t8, 0x10($sp)
    /* 956B4 8010CC44 AFB90014 */  sw         $t9, 0x14($sp)
    /* 956B8 8010CC48 AFA80018 */  sw         $t0, 0x18($sp)
    /* 956BC 8010CC4C 27A50040 */  addiu      $a1, $sp, 0x40
    /* 956C0 8010CC50 00003025 */  or         $a2, $zero, $zero
    /* 956C4 8010CC54 00003825 */  or         $a3, $zero, $zero
    /* 956C8 8010CC58 0C041229 */  jal        func_801048A4
    /* 956CC 8010CC5C E7A60044 */   swc1      $f6, 0x44($sp)
    /* 956D0 8010CC60 10400009 */  beqz       $v0, .L8010CC88
    /* 956D4 8010CC64 27A4004C */   addiu     $a0, $sp, 0x4C
    /* 956D8 8010CC68 8E090000 */  lw         $t1, 0x0($s0)
    /* 956DC 8010CC6C 960E0000 */  lhu        $t6, 0x0($s0)
    /* 956E0 8010CC70 000954C2 */  srl        $t2, $t1, 19
    /* 956E4 8010CC74 354C0002 */  ori        $t4, $t2, 0x2
    /* 956E8 8010CC78 000C58C0 */  sll        $t3, $t4, 3
    /* 956EC 8010CC7C 31CF0007 */  andi       $t7, $t6, 0x7
    /* 956F0 8010CC80 016FC025 */  or         $t8, $t3, $t7
    /* 956F4 8010CC84 A6180000 */  sh         $t8, 0x0($s0)
  .L8010CC88:
    /* 956F8 8010CC88 C6280008 */  lwc1       $f8, 0x8($s1)
    /* 956FC 8010CC8C C64A0000 */  lwc1       $f10, 0x0($s2)
    /* 95700 8010CC90 3C028013 */  lui        $v0, %hi(D_8012BD00)
    /* 95704 8010CC94 2442BD00 */  addiu      $v0, $v0, %lo(D_8012BD00)
    /* 95708 8010CC98 460A4400 */  add.s      $f16, $f8, $f10
    /* 9570C 8010CC9C C444000C */  lwc1       $f4, 0xC($v0)
    /* 95710 8010CCA0 3C198013 */  lui        $t9, %hi(D_8012BCD0)
    /* 95714 8010CCA4 3C088013 */  lui        $t0, %hi(D_8012BCCC)
    /* 95718 8010CCA8 E7B00050 */  swc1       $f16, 0x50($sp)
    /* 9571C 8010CCAC C6320004 */  lwc1       $f18, 0x4($s1)
    /* 95720 8010CCB0 C7A80050 */  lwc1       $f8, 0x50($sp)
    /* 95724 8010CCB4 C4500010 */  lwc1       $f16, 0x10($v0)
    /* 95728 8010CCB8 46049180 */  add.s      $f6, $f18, $f4
    /* 9572C 8010CCBC E7A80044 */  swc1       $f8, 0x44($sp)
    /* 95730 8010CCC0 3C098013 */  lui        $t1, %hi(D_8012BCC8)
    /* 95734 8010CCC4 2529BCC8 */  addiu      $t1, $t1, %lo(D_8012BCC8)
    /* 95738 8010CCC8 E7A60040 */  swc1       $f6, 0x40($sp)
    /* 9573C 8010CCCC C62A000C */  lwc1       $f10, 0xC($s1)
    /* 95740 8010CCD0 2508BCCC */  addiu      $t0, $t0, %lo(D_8012BCCC)
    /* 95744 8010CCD4 2739BCD0 */  addiu      $t9, $t9, %lo(D_8012BCD0)
    /* 95748 8010CCD8 46105480 */  add.s      $f18, $f10, $f16
    /* 9574C 8010CCDC AFB90010 */  sw         $t9, 0x10($sp)
    /* 95750 8010CCE0 AFA80014 */  sw         $t0, 0x14($sp)
    /* 95754 8010CCE4 AFA90018 */  sw         $t1, 0x18($sp)
    /* 95758 8010CCE8 E7B20048 */  swc1       $f18, 0x48($sp)
    /* 9575C 8010CCEC 27A50040 */  addiu      $a1, $sp, 0x40
    /* 95760 8010CCF0 00003025 */  or         $a2, $zero, $zero
    /* 95764 8010CCF4 0C041229 */  jal        func_801048A4
    /* 95768 8010CCF8 00003825 */   or        $a3, $zero, $zero
    /* 9576C 8010CCFC 10400009 */  beqz       $v0, .L8010CD24
    /* 95770 8010CD00 27A4004C */   addiu     $a0, $sp, 0x4C
    /* 95774 8010CD04 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 95778 8010CD08 960F0000 */  lhu        $t7, 0x0($s0)
    /* 9577C 8010CD0C 000A64C2 */  srl        $t4, $t2, 19
    /* 95780 8010CD10 358D0008 */  ori        $t5, $t4, 0x8
    /* 95784 8010CD14 000D58C0 */  sll        $t3, $t5, 3
    /* 95788 8010CD18 31F80007 */  andi       $t8, $t7, 0x7
    /* 9578C 8010CD1C 0178C825 */  or         $t9, $t3, $t8
    /* 95790 8010CD20 A6190000 */  sh         $t9, 0x0($s0)
  .L8010CD24:
    /* 95794 8010CD24 C6240008 */  lwc1       $f4, 0x8($s1)
    /* 95798 8010CD28 C6460008 */  lwc1       $f6, 0x8($s2)
    /* 9579C 8010CD2C 3C088013 */  lui        $t0, %hi(D_8012BCD0)
    /* 957A0 8010CD30 3C098013 */  lui        $t1, %hi(D_8012BCCC)
    /* 957A4 8010CD34 46062200 */  add.s      $f8, $f4, $f6
    /* 957A8 8010CD38 3C0A8013 */  lui        $t2, %hi(D_8012BCC8)
    /* 957AC 8010CD3C 254ABCC8 */  addiu      $t2, $t2, %lo(D_8012BCC8)
    /* 957B0 8010CD40 2529BCCC */  addiu      $t1, $t1, %lo(D_8012BCCC)
    /* 957B4 8010CD44 E7A80050 */  swc1       $f8, 0x50($sp)
    /* 957B8 8010CD48 C7AA0050 */  lwc1       $f10, 0x50($sp)
    /* 957BC 8010CD4C 2508BCD0 */  addiu      $t0, $t0, %lo(D_8012BCD0)
    /* 957C0 8010CD50 AFA80010 */  sw         $t0, 0x10($sp)
    /* 957C4 8010CD54 AFA90014 */  sw         $t1, 0x14($sp)
    /* 957C8 8010CD58 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 957CC 8010CD5C 27A50040 */  addiu      $a1, $sp, 0x40
    /* 957D0 8010CD60 00003025 */  or         $a2, $zero, $zero
    /* 957D4 8010CD64 00003825 */  or         $a3, $zero, $zero
    /* 957D8 8010CD68 0C041229 */  jal        func_801048A4
    /* 957DC 8010CD6C E7AA0044 */   swc1      $f10, 0x44($sp)
    /* 957E0 8010CD70 10400009 */  beqz       $v0, .L8010CD98
    /* 957E4 8010CD74 27A4004C */   addiu     $a0, $sp, 0x4C
    /* 957E8 8010CD78 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 957EC 8010CD7C 96180000 */  lhu        $t8, 0x0($s0)
    /* 957F0 8010CD80 000C6CC2 */  srl        $t5, $t4, 19
    /* 957F4 8010CD84 35AE0020 */  ori        $t6, $t5, 0x20
    /* 957F8 8010CD88 000E58C0 */  sll        $t3, $t6, 3
    /* 957FC 8010CD8C 33190007 */  andi       $t9, $t8, 0x7
    /* 95800 8010CD90 01794025 */  or         $t0, $t3, $t9
    /* 95804 8010CD94 A6080000 */  sh         $t0, 0x0($s0)
  .L8010CD98:
    /* 95808 8010CD98 C6300008 */  lwc1       $f16, 0x8($s1)
    /* 9580C 8010CD9C C6520004 */  lwc1       $f18, 0x4($s2)
    /* 95810 8010CDA0 3C098013 */  lui        $t1, %hi(D_8012BCD0)
    /* 95814 8010CDA4 3C0A8013 */  lui        $t2, %hi(D_8012BCCC)
    /* 95818 8010CDA8 46128100 */  add.s      $f4, $f16, $f18
    /* 9581C 8010CDAC 3C0C8013 */  lui        $t4, %hi(D_8012BCC8)
    /* 95820 8010CDB0 258CBCC8 */  addiu      $t4, $t4, %lo(D_8012BCC8)
    /* 95824 8010CDB4 254ABCCC */  addiu      $t2, $t2, %lo(D_8012BCCC)
    /* 95828 8010CDB8 E7A40050 */  swc1       $f4, 0x50($sp)
    /* 9582C 8010CDBC C7A60050 */  lwc1       $f6, 0x50($sp)
    /* 95830 8010CDC0 2529BCD0 */  addiu      $t1, $t1, %lo(D_8012BCD0)
    /* 95834 8010CDC4 AFA90010 */  sw         $t1, 0x10($sp)
    /* 95838 8010CDC8 AFAA0014 */  sw         $t2, 0x14($sp)
    /* 9583C 8010CDCC AFAC0018 */  sw         $t4, 0x18($sp)
    /* 95840 8010CDD0 27A50040 */  addiu      $a1, $sp, 0x40
    /* 95844 8010CDD4 00003025 */  or         $a2, $zero, $zero
    /* 95848 8010CDD8 00003825 */  or         $a3, $zero, $zero
    /* 9584C 8010CDDC 0C041229 */  jal        func_801048A4
    /* 95850 8010CDE0 E7A60044 */   swc1      $f6, 0x44($sp)
    /* 95854 8010CDE4 1040000A */  beqz       $v0, .L8010CE10
    /* 95858 8010CDE8 3C0A8013 */   lui       $t2, %hi(D_8012BCA0)
    /* 9585C 8010CDEC 3C0D8013 */  lui        $t5, %hi(D_8012BCA0)
    /* 95860 8010CDF0 8DADBCA0 */  lw         $t5, %lo(D_8012BCA0)($t5)
    /* 95864 8010CDF4 96190000 */  lhu        $t9, 0x0($s0)
    /* 95868 8010CDF8 000D74C2 */  srl        $t6, $t5, 19
    /* 9586C 8010CDFC 35CF0010 */  ori        $t7, $t6, 0x10
    /* 95870 8010CE00 000F58C0 */  sll        $t3, $t7, 3
    /* 95874 8010CE04 33280007 */  andi       $t0, $t9, 0x7
    /* 95878 8010CE08 01684825 */  or         $t1, $t3, $t0
    /* 9587C 8010CE0C A6090000 */  sh         $t1, 0x0($s0)
  .L8010CE10:
    /* 95880 8010CE10 8D4ABCA0 */  lw         $t2, %lo(D_8012BCA0)($t2)
    /* 95884 8010CE14 8FB00028 */  lw         $s0, 0x28($sp)
    /* 95888 8010CE18 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 9588C 8010CE1C 000A64C2 */  srl        $t4, $t2, 19
    /* 95890 8010CE20 318D003F */  andi       $t5, $t4, 0x3F
    /* 95894 8010CE24 11A00003 */  beqz       $t5, .L8010CE34
    /* 95898 8010CE28 00001025 */   or        $v0, $zero, $zero
    /* 9589C 8010CE2C 10000001 */  b          .L8010CE34
    /* 958A0 8010CE30 24020001 */   addiu     $v0, $zero, 0x1
  .L8010CE34:
    /* 958A4 8010CE34 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 958A8 8010CE38 8FB20030 */  lw         $s2, 0x30($sp)
    /* 958AC 8010CE3C 03E00008 */  jr         $ra
    /* 958B0 8010CE40 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8010CABC
.size func_8010CABC, . - func_8010CABC
