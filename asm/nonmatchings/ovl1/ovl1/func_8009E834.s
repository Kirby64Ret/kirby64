nonmatching func_8009E834, 0xC0

glabel func_8009E834
    /* 46A84 8009E834 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 46A88 8009E838 AFB60030 */  sw         $s6, 0x30($sp)
    /* 46A8C 8009E83C AFB5002C */  sw         $s5, 0x2C($sp)
    /* 46A90 8009E840 AFB40028 */  sw         $s4, 0x28($sp)
    /* 46A94 8009E844 AFB20020 */  sw         $s2, 0x20($sp)
    /* 46A98 8009E848 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 46A9C 8009E84C AFB30024 */  sw         $s3, 0x24($sp)
    /* 46AA0 8009E850 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 46AA4 8009E854 AFB00018 */  sw         $s0, 0x18($sp)
    /* 46AA8 8009E858 3C16800D */  lui        $s6, %hi(D_800D69C8)
    /* 46AAC 8009E85C 8C930044 */  lw         $s3, 0x44($a0)
    /* 46AB0 8009E860 26D669C8 */  addiu      $s6, $s6, %lo(D_800D69C8)
    /* 46AB4 8009E864 00009025 */  or         $s2, $zero, $zero
    /* 46AB8 8009E868 3C140001 */  lui        $s4, (0x10000 >> 16)
    /* 46ABC 8009E86C 24150010 */  addiu      $s5, $zero, 0x10
  .L8009E870:
    /* 46AC0 8009E870 02747024 */  and        $t6, $s3, $s4
    /* 46AC4 8009E874 15C00012 */  bnez       $t6, .L8009E8C0
    /* 46AC8 8009E878 00127880 */   sll       $t7, $s2, 2
    /* 46ACC 8009E87C 02CFC021 */  addu       $t8, $s6, $t7
    /* 46AD0 8009E880 8F100000 */  lw         $s0, 0x0($t8)
    /* 46AD4 8009E884 00008825 */  or         $s1, $zero, $zero
    /* 46AD8 8009E888 1200000D */  beqz       $s0, .L8009E8C0
    /* 46ADC 8009E88C 02002025 */   or        $a0, $s0, $zero
  .L8009E890:
    /* 46AE0 8009E890 02202825 */  or         $a1, $s1, $zero
    /* 46AE4 8009E894 0C027138 */  jal        func_8009C4E0
    /* 46AE8 8009E898 02403025 */   or        $a2, $s2, $zero
    /* 46AEC 8009E89C 8E190000 */  lw         $t9, 0x0($s0)
    /* 46AF0 8009E8A0 54590005 */  bnel       $v0, $t9, .L8009E8B8
    /* 46AF4 8009E8A4 00408025 */   or        $s0, $v0, $zero
    /* 46AF8 8009E8A8 02008825 */  or         $s1, $s0, $zero
    /* 46AFC 8009E8AC 10000002 */  b          .L8009E8B8
    /* 46B00 8009E8B0 00408025 */   or        $s0, $v0, $zero
    /* 46B04 8009E8B4 00408025 */  or         $s0, $v0, $zero
  .L8009E8B8:
    /* 46B08 8009E8B8 5600FFF5 */  bnel       $s0, $zero, .L8009E890
    /* 46B0C 8009E8BC 02002025 */   or        $a0, $s0, $zero
  .L8009E8C0:
    /* 46B10 8009E8C0 26520001 */  addiu      $s2, $s2, 0x1
    /* 46B14 8009E8C4 1655FFEA */  bne        $s2, $s5, .L8009E870
    /* 46B18 8009E8C8 00139842 */   srl       $s3, $s3, 1
    /* 46B1C 8009E8CC 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 46B20 8009E8D0 8FB00018 */  lw         $s0, 0x18($sp)
    /* 46B24 8009E8D4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 46B28 8009E8D8 8FB20020 */  lw         $s2, 0x20($sp)
    /* 46B2C 8009E8DC 8FB30024 */  lw         $s3, 0x24($sp)
    /* 46B30 8009E8E0 8FB40028 */  lw         $s4, 0x28($sp)
    /* 46B34 8009E8E4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 46B38 8009E8E8 8FB60030 */  lw         $s6, 0x30($sp)
    /* 46B3C 8009E8EC 03E00008 */  jr         $ra
    /* 46B40 8009E8F0 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_8009E834
.size func_8009E834, . - func_8009E834
