nonmatching func_801FB528_ovl9, 0xAC

glabel func_801FB528_ovl9
    /* 1A9578 801FB528 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1A957C 801FB52C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1A9580 801FB530 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1A9584 801FB534 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1A9588 801FB538 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 1A958C 801FB53C 3C19800F */  lui        $t9, %hi(D_800E9AA0)
    /* 1A9590 801FB540 24040002 */  addiu      $a0, $zero, 0x2
    /* 1A9594 801FB544 000FC080 */  sll        $t8, $t7, 2
    /* 1A9598 801FB548 0338C821 */  addu       $t9, $t9, $t8
    /* 1A959C 801FB54C 8F399AA0 */  lw         $t9, %lo(D_800E9AA0)($t9)
    /* 1A95A0 801FB550 0C006291 */  jal        random_soft_s32_range
    /* 1A95A4 801FB554 AFB9001C */   sw        $t9, 0x1C($sp)
    /* 1A95A8 801FB558 3C04800F */  lui        $a0, %hi(D_800E9AA0)
    /* 1A95AC 801FB55C 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1A95B0 801FB560 24A5A7C4 */  addiu      $a1, $a1, %lo(omCurrentObj)
    /* 1A95B4 801FB564 24849AA0 */  addiu      $a0, $a0, %lo(D_800E9AA0)
    /* 1A95B8 801FB568 14400002 */  bnez       $v0, .L801FB574_ovl9
    /* 1A95BC 801FB56C 00401825 */   or        $v1, $v0, $zero
    /* 1A95C0 801FB570 2403FFFF */  addiu      $v1, $zero, -0x1
  .L801FB574_ovl9:
    /* 1A95C4 801FB574 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 1A95C8 801FB578 00681021 */  addu       $v0, $v1, $t0
    /* 1A95CC 801FB57C 28410008 */  slti       $at, $v0, 0x8
    /* 1A95D0 801FB580 14200007 */  bnez       $at, .L801FB5A0_ovl9
    /* 1A95D4 801FB584 00000000 */   nop
    /* 1A95D8 801FB588 8CA90000 */  lw         $t1, 0x0($a1)
    /* 1A95DC 801FB58C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 1A95E0 801FB590 000A5880 */  sll        $t3, $t2, 2
    /* 1A95E4 801FB594 008B6021 */  addu       $t4, $a0, $t3
    /* 1A95E8 801FB598 1000000A */  b          .L801FB5C4_ovl9
    /* 1A95EC 801FB59C AD800000 */   sw        $zero, 0x0($t4)
  .L801FB5A0_ovl9:
    /* 1A95F0 801FB5A0 04410003 */  bgez       $v0, .L801FB5B0_ovl9
    /* 1A95F4 801FB5A4 00401825 */   or        $v1, $v0, $zero
    /* 1A95F8 801FB5A8 10000001 */  b          .L801FB5B0_ovl9
    /* 1A95FC 801FB5AC 24030007 */   addiu     $v1, $zero, 0x7
  .L801FB5B0_ovl9:
    /* 1A9600 801FB5B0 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 1A9604 801FB5B4 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 1A9608 801FB5B8 000E7880 */  sll        $t7, $t6, 2
    /* 1A960C 801FB5BC 008FC021 */  addu       $t8, $a0, $t7
    /* 1A9610 801FB5C0 AF030000 */  sw         $v1, 0x0($t8)
  .L801FB5C4_ovl9:
    /* 1A9614 801FB5C4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1A9618 801FB5C8 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1A961C 801FB5CC 03E00008 */  jr         $ra
    /* 1A9620 801FB5D0 00000000 */   nop
endlabel func_801FB528_ovl9
.size func_801FB528_ovl9, . - func_801FB528_ovl9
