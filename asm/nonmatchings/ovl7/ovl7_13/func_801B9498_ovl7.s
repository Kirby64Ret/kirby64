nonmatching func_801B9498_ovl7, 0x210

glabel func_801B9498_ovl7
    /* 15F508 801B9498 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 15F50C 801B949C 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 15F510 801B94A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 15F514 801B94A4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 15F518 801B94A8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 15F51C 801B94AC 8CC20000 */  lw         $v0, 0x0($a2)
    /* 15F520 801B94B0 3C0E800F */  lui        $t6, %hi(D_800E9E20)
    /* 15F524 801B94B4 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 15F528 801B94B8 00021080 */  sll        $v0, $v0, 2
    /* 15F52C 801B94BC 01C27021 */  addu       $t6, $t6, $v0
    /* 15F530 801B94C0 8DCE9E20 */  lw         $t6, %lo(D_800E9E20)($t6)
    /* 15F534 801B94C4 00621821 */  addu       $v1, $v1, $v0
    /* 15F538 801B94C8 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
    /* 15F53C 801B94CC 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 15F540 801B94D0 15C0004E */  bnez       $t6, .L801B960C_ovl7
    /* 15F544 801B94D4 8C650084 */   lw        $a1, 0x84($v1)
    /* 15F548 801B94D8 00220821 */  addu       $at, $at, $v0
    /* 15F54C 801B94DC C42464D0 */  lwc1       $f4, %lo(D_800E64D0)($at)
    /* 15F550 801B94E0 44803000 */  mtc1       $zero, $f6
    /* 15F554 801B94E4 3C0F800E */  lui        $t7, %hi(D_800E6A10)
    /* 15F558 801B94E8 25EF6A10 */  addiu      $t7, $t7, %lo(D_800E6A10)
    /* 15F55C 801B94EC 4606203C */  c.lt.s     $f4, $f6
    /* 15F560 801B94F0 004F1821 */  addu       $v1, $v0, $t7
    /* 15F564 801B94F4 C4600000 */  lwc1       $f0, 0x0($v1)
    /* 15F568 801B94F8 3C18800F */  lui        $t8, %hi(D_800E9FE0)
    /* 15F56C 801B94FC 45000008 */  bc1f       .L801B9520_ovl7
    /* 15F570 801B9500 E7A00018 */   swc1      $f0, 0x18($sp)
    /* 15F574 801B9504 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 15F578 801B9508 44814000 */  mtc1       $at, $f8
    /* 15F57C 801B950C 00000000 */  nop
    /* 15F580 801B9510 46080282 */  mul.s      $f10, $f0, $f8
    /* 15F584 801B9514 E46A0000 */  swc1       $f10, 0x0($v1)
    /* 15F588 801B9518 8CC20000 */  lw         $v0, 0x0($a2)
    /* 15F58C 801B951C 00021080 */  sll        $v0, $v0, 2
  .L801B9520_ovl7:
    /* 15F590 801B9520 27189FE0 */  addiu      $t8, $t8, %lo(D_800E9FE0)
    /* 15F594 801B9524 00581821 */  addu       $v1, $v0, $t8
    /* 15F598 801B9528 8C640000 */  lw         $a0, 0x0($v1)
    /* 15F59C 801B952C 18800029 */  blez       $a0, .L801B95D4_ovl7
    /* 15F5A0 801B9530 2499FFFF */   addiu     $t9, $a0, -0x1
    /* 15F5A4 801B9534 10A0002E */  beqz       $a1, .L801B95F0_ovl7
    /* 15F5A8 801B9538 AC790000 */   sw        $t9, 0x0($v1)
    /* 15F5AC 801B953C 8CC80000 */  lw         $t0, 0x0($a2)
    /* 15F5B0 801B9540 3C02800E */  lui        $v0, %hi(D_800E0D50)
    /* 15F5B4 801B9544 24420D50 */  addiu      $v0, $v0, %lo(D_800E0D50)
    /* 15F5B8 801B9548 00084880 */  sll        $t1, $t0, 2
    /* 15F5BC 801B954C 00495021 */  addu       $t2, $v0, $t1
    /* 15F5C0 801B9550 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 15F5C4 801B9554 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 15F5C8 801B9558 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 15F5CC 801B955C 000B6080 */  sll        $t4, $t3, 2
    /* 15F5D0 801B9560 002C0821 */  addu       $at, $at, $t4
    /* 15F5D4 801B9564 C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* 15F5D8 801B9568 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 15F5DC 801B956C 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 15F5E0 801B9570 E4B00004 */  swc1       $f16, 0x4($a1)
    /* 15F5E4 801B9574 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 15F5E8 801B9578 00A02025 */  or         $a0, $a1, $zero
    /* 15F5EC 801B957C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 15F5F0 801B9580 000E7880 */  sll        $t7, $t6, 2
    /* 15F5F4 801B9584 004FC021 */  addu       $t8, $v0, $t7
    /* 15F5F8 801B9588 8F190000 */  lw         $t9, 0x0($t8)
    /* 15F5FC 801B958C 00194080 */  sll        $t0, $t9, 2
    /* 15F600 801B9590 00280821 */  addu       $at, $at, $t0
    /* 15F604 801B9594 C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
    /* 15F608 801B9598 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 15F60C 801B959C E4B20008 */  swc1       $f18, 0x8($a1)
    /* 15F610 801B95A0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 15F614 801B95A4 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 15F618 801B95A8 000A5880 */  sll        $t3, $t2, 2
    /* 15F61C 801B95AC 004B6021 */  addu       $t4, $v0, $t3
    /* 15F620 801B95B0 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 15F624 801B95B4 000D7080 */  sll        $t6, $t5, 2
    /* 15F628 801B95B8 002E0821 */  addu       $at, $at, $t6
    /* 15F62C 801B95BC C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
    /* 15F630 801B95C0 0C04146B */  jal        func_801051AC
    /* 15F634 801B95C4 E4A4000C */   swc1      $f4, 0xC($a1)
    /* 15F638 801B95C8 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 15F63C 801B95CC 10000008 */  b          .L801B95F0_ovl7
    /* 15F640 801B95D0 8CC6A7C4 */   lw        $a2, %lo(omCurrentObj)($a2)
  .L801B95D4_ovl7:
    /* 15F644 801B95D4 0C06835D */  jal        func_801A0D74_ovl7
    /* 15F648 801B95D8 8FA40020 */   lw        $a0, 0x20($sp)
    /* 15F64C 801B95DC 44823000 */  mtc1       $v0, $f6
    /* 15F650 801B95E0 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 15F654 801B95E4 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 15F658 801B95E8 46803220 */  cvt.s.w    $f8, $f6
    /* 15F65C 801B95EC E7A8001C */  swc1       $f8, 0x1C($sp)
  .L801B95F0_ovl7:
    /* 15F660 801B95F0 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 15F664 801B95F4 C7AA0018 */  lwc1       $f10, 0x18($sp)
    /* 15F668 801B95F8 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 15F66C 801B95FC 000FC080 */  sll        $t8, $t7, 2
    /* 15F670 801B9600 00380821 */  addu       $at, $at, $t8
    /* 15F674 801B9604 10000004 */  b          .L801B9618_ovl7
    /* 15F678 801B9608 E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
  .L801B960C_ovl7:
    /* 15F67C 801B960C 44808000 */  mtc1       $zero, $f16
    /* 15F680 801B9610 00000000 */  nop
    /* 15F684 801B9614 E7B0001C */  swc1       $f16, 0x1C($sp)
  .L801B9618_ovl7:
    /* 15F688 801B9618 0C06E890 */  jal        func_801BA240_ovl7
    /* 15F68C 801B961C 8FA40020 */   lw        $a0, 0x20($sp)
    /* 15F690 801B9620 C7B2001C */  lwc1       $f18, 0x1C($sp)
    /* 15F694 801B9624 44802000 */  mtc1       $zero, $f4
    /* 15F698 801B9628 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 15F69C 801B962C 46049032 */  c.eq.s     $f18, $f4
    /* 15F6A0 801B9630 00000000 */  nop
    /* 15F6A4 801B9634 4500000B */  bc1f       .L801B9664_ovl7
    /* 15F6A8 801B9638 00000000 */   nop
    /* 15F6AC 801B963C 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 15F6B0 801B9640 3C04800E */  lui        $a0, %hi(D_800DDFD0)
    /* 15F6B4 801B9644 3C06801D */  lui        $a2, %hi(D_801CD754_ovl7)
    /* 15F6B8 801B9648 8F280000 */  lw         $t0, 0x0($t9)
    /* 15F6BC 801B964C 24C6D754 */  addiu      $a2, $a2, %lo(D_801CD754_ovl7)
    /* 15F6C0 801B9650 24050006 */  addiu      $a1, $zero, 0x6
    /* 15F6C4 801B9654 00084880 */  sll        $t1, $t0, 2
    /* 15F6C8 801B9658 00892021 */  addu       $a0, $a0, $t1
    /* 15F6CC 801B965C 0C02911F */  jal        utilFuncTableJump
    /* 15F6D0 801B9660 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
  .L801B9664_ovl7:
    /* 15F6D4 801B9664 0C06E7A0 */  jal        func_801B9E80_ovl7
    /* 15F6D8 801B9668 8FA40020 */   lw        $a0, 0x20($sp)
    /* 15F6DC 801B966C 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 15F6E0 801B9670 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 15F6E4 801B9674 3C0D800C */  lui        $t5, %hi(D_800BE4EC)
    /* 15F6E8 801B9678 8DADE4EC */  lw         $t5, %lo(D_800BE4EC)($t5)
    /* 15F6EC 801B967C 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 15F6F0 801B9680 31AE0001 */  andi       $t6, $t5, 0x1
    /* 15F6F4 801B9684 316C0001 */  andi       $t4, $t3, 0x1
    /* 15F6F8 801B9688 558E0004 */  bnel       $t4, $t6, .L801B969C_ovl7
    /* 15F6FC 801B968C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 15F700 801B9690 0C067CEC */  jal        func_8019F3B0_ovl7
    /* 15F704 801B9694 00000000 */   nop
    /* 15F708 801B9698 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801B969C_ovl7:
    /* 15F70C 801B969C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 15F710 801B96A0 03E00008 */  jr         $ra
    /* 15F714 801B96A4 00000000 */   nop
endlabel func_801B9498_ovl7
.size func_801B9498_ovl7, . - func_801B9498_ovl7
