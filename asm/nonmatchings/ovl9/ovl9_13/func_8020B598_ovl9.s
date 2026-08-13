nonmatching func_8020B598_ovl9, 0x180

glabel func_8020B598_ovl9
    /* 1B95E8 8020B598 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1B95EC 8020B59C AFB10024 */  sw         $s1, 0x24($sp)
    /* 1B95F0 8020B5A0 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 1B95F4 8020B5A4 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 1B95F8 8020B5A8 8E230000 */  lw         $v1, 0x0($s1)
    /* 1B95FC 8020B5AC AFBF003C */  sw         $ra, 0x3C($sp)
    /* 1B9600 8020B5B0 AFB60038 */  sw         $s6, 0x38($sp)
    /* 1B9604 8020B5B4 AFB50034 */  sw         $s5, 0x34($sp)
    /* 1B9608 8020B5B8 AFB40030 */  sw         $s4, 0x30($sp)
    /* 1B960C 8020B5BC AFB3002C */  sw         $s3, 0x2C($sp)
    /* 1B9610 8020B5C0 AFB20028 */  sw         $s2, 0x28($sp)
    /* 1B9614 8020B5C4 AFB00020 */  sw         $s0, 0x20($sp)
    /* 1B9618 8020B5C8 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 1B961C 8020B5CC AFA40040 */  sw         $a0, 0x40($sp)
    /* 1B9620 8020B5D0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1B9624 8020B5D4 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 1B9628 8020B5D8 24140001 */  addiu      $s4, $zero, 0x1
    /* 1B962C 8020B5DC 000E7880 */  sll        $t7, $t6, 2
    /* 1B9630 8020B5E0 002F0821 */  addu       $at, $at, $t7
    /* 1B9634 8020B5E4 AC34DFD0 */  sw         $s4, %lo(D_800DDFD0)($at)
    /* 1B9638 8020B5E8 8C780000 */  lw         $t8, 0x0($v1)
    /* 1B963C 8020B5EC 3C16800F */  lui        $s6, %hi(D_800E9AA0)
    /* 1B9640 8020B5F0 26D69AA0 */  addiu      $s6, $s6, %lo(D_800E9AA0)
    /* 1B9644 8020B5F4 3C014420 */  lui        $at, (0x44200000 >> 16)
    /* 1B9648 8020B5F8 0018C880 */  sll        $t9, $t8, 2
    /* 1B964C 8020B5FC 02D94021 */  addu       $t0, $s6, $t9
    /* 1B9650 8020B600 3C10800F */  lui        $s0, %hi(D_800E9560)
    /* 1B9654 8020B604 3C12800E */  lui        $s2, %hi(gEntityFuncListIDArray)
    /* 1B9658 8020B608 3C150001 */  lui        $s5, (0x10040 >> 16)
    /* 1B965C 8020B60C 4481A000 */  mtc1       $at, $f20
    /* 1B9660 8020B610 AD000000 */  sw         $zero, 0x0($t0)
    /* 1B9664 8020B614 36B50040 */  ori        $s5, $s5, (0x10040 & 0xFFFF)
    /* 1B9668 8020B618 2652DC50 */  addiu      $s2, $s2, %lo(gEntityFuncListIDArray)
    /* 1B966C 8020B61C 26109560 */  addiu      $s0, $s0, %lo(D_800E9560)
    /* 1B9670 8020B620 24130003 */  addiu      $s3, $zero, 0x3
  .L8020B624_ovl9:
    /* 1B9674 8020B624 0C02A806 */  jal        func_800AA018
    /* 1B9678 8020B628 02A02025 */   or        $a0, $s5, $zero
    /* 1B967C 8020B62C 0C002DAF */  jal        ohSleep
    /* 1B9680 8020B630 24040013 */   addiu     $a0, $zero, 0x13
    /* 1B9684 8020B634 8E290000 */  lw         $t1, 0x0($s1)
    /* 1B9688 8020B638 2404003C */  addiu      $a0, $zero, 0x3C
    /* 1B968C 8020B63C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 1B9690 8020B640 000A5880 */  sll        $t3, $t2, 2
    /* 1B9694 8020B644 02CB6021 */  addu       $t4, $s6, $t3
    /* 1B9698 8020B648 0C006291 */  jal        random_soft_s32_range
    /* 1B969C 8020B64C AD940000 */   sw        $s4, 0x0($t4)
    /* 1B96A0 8020B650 8E230000 */  lw         $v1, 0x0($s1)
    /* 1B96A4 8020B654 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 1B96A8 8020B658 000D7080 */  sll        $t6, $t5, 2
    /* 1B96AC 8020B65C 020E7821 */  addu       $t7, $s0, $t6
    /* 1B96B0 8020B660 ADE20000 */  sw         $v0, 0x0($t7)
    /* 1B96B4 8020B664 8C640000 */  lw         $a0, 0x0($v1)
    /* 1B96B8 8020B668 00042080 */  sll        $a0, $a0, 2
    /* 1B96BC 8020B66C 02042821 */  addu       $a1, $s0, $a0
    /* 1B96C0 8020B670 8CA60000 */  lw         $a2, 0x0($a1)
    /* 1B96C4 8020B674 18C00019 */  blez       $a2, .L8020B6DC_ovl9
    /* 1B96C8 8020B678 24D8FFFF */   addiu     $t8, $a2, -0x1
  .L8020B67C_ovl9:
    /* 1B96CC 8020B67C ACB80000 */  sw         $t8, 0x0($a1)
    /* 1B96D0 8020B680 0C002DAF */  jal        ohSleep
    /* 1B96D4 8020B684 02802025 */   or        $a0, $s4, $zero
    /* 1B96D8 8020B688 4600A306 */  mov.s      $f12, $f20
    /* 1B96DC 8020B68C 0C066A6B */  jal        func_8019A9AC_ovl7
    /* 1B96E0 8020B690 4600A386 */   mov.s     $f14, $f20
    /* 1B96E4 8020B694 5053000B */  beql       $v0, $s3, .L8020B6C4_ovl9
    /* 1B96E8 8020B698 8E2D0000 */   lw        $t5, 0x0($s1)
    /* 1B96EC 8020B69C 8E230000 */  lw         $v1, 0x0($s1)
    /* 1B96F0 8020B6A0 8C790000 */  lw         $t9, 0x0($v1)
    /* 1B96F4 8020B6A4 00194080 */  sll        $t0, $t9, 2
    /* 1B96F8 8020B6A8 02484821 */  addu       $t1, $s2, $t0
    /* 1B96FC 8020B6AC AD200000 */  sw         $zero, 0x0($t1)
    /* 1B9700 8020B6B0 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 1B9704 8020B6B4 000A5880 */  sll        $t3, $t2, 2
    /* 1B9708 8020B6B8 020B6021 */  addu       $t4, $s0, $t3
    /* 1B970C 8020B6BC AD800000 */  sw         $zero, 0x0($t4)
    /* 1B9710 8020B6C0 8E2D0000 */  lw         $t5, 0x0($s1)
  .L8020B6C4_ovl9:
    /* 1B9714 8020B6C4 8DA40000 */  lw         $a0, 0x0($t5)
    /* 1B9718 8020B6C8 00042080 */  sll        $a0, $a0, 2
    /* 1B971C 8020B6CC 02042821 */  addu       $a1, $s0, $a0
    /* 1B9720 8020B6D0 8CA60000 */  lw         $a2, 0x0($a1)
    /* 1B9724 8020B6D4 5CC0FFE9 */  bgtzl      $a2, .L8020B67C_ovl9
    /* 1B9728 8020B6D8 24D8FFFF */   addiu     $t8, $a2, -0x1
  .L8020B6DC_ovl9:
    /* 1B972C 8020B6DC 02447021 */  addu       $t6, $s2, $a0
    /* 1B9730 8020B6E0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 1B9734 8020B6E4 128FFFCF */  beq        $s4, $t7, .L8020B624_ovl9
    /* 1B9738 8020B6E8 00000000 */   nop
    /* 1B973C 8020B6EC 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 1B9740 8020B6F0 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 1B9744 8020B6F4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1B9748 8020B6F8 8FB10024 */  lw         $s1, 0x24($sp)
    /* 1B974C 8020B6FC 8FB20028 */  lw         $s2, 0x28($sp)
    /* 1B9750 8020B700 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 1B9754 8020B704 8FB40030 */  lw         $s4, 0x30($sp)
    /* 1B9758 8020B708 8FB50034 */  lw         $s5, 0x34($sp)
    /* 1B975C 8020B70C 8FB60038 */  lw         $s6, 0x38($sp)
    /* 1B9760 8020B710 03E00008 */  jr         $ra
    /* 1B9764 8020B714 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8020B598_ovl9
.size func_8020B598_ovl9, . - func_8020B598_ovl9
