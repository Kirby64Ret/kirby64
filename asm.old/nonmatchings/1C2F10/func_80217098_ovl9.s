glabel func_80217098_ovl9
/* 1C50E8 80217098 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C50EC 8021709C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C50F0 802170A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1C50F4 802170A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C50F8 802170A8 AFA40030 */  sw         $a0, 0x30($sp)
/* 1C50FC 802170AC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1C5100 802170B0 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1C5104 802170B4 27A40028 */  addiu      $a0, $sp, 0x28
/* 1C5108 802170B8 000FC080 */  sll        $t8, $t7, 2
/* 1C510C 802170BC 00781821 */  addu       $v1, $v1, $t8
/* 1C5110 802170C0 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1C5114 802170C4 0C066A40 */  jal        func_8019A900_ovl7
/* 1C5118 802170C8 AFA30024 */   sw        $v1, 0x24($sp)
/* 1C511C 802170CC 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 1C5120 802170D0 2484A7C4 */  addiu      $a0, $a0, %lo(D_8004A7C4)
/* 1C5124 802170D4 10400012 */  beqz       $v0, .L80217120_ovl9
/* 1C5128 802170D8 8FA30024 */   lw        $v1, 0x24($sp)
/* 1C512C 802170DC 8FB90028 */  lw         $t9, 0x28($sp)
/* 1C5130 802170E0 8C880000 */  lw         $t0, 0x0($a0)
/* 1C5134 802170E4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1C5138 802170E8 44992000 */  mtc1       $t9, $f4
/* 1C513C 802170EC 8D090000 */  lw         $t1, 0x0($t0)
/* 1C5140 802170F0 468021A0 */  cvt.s.w    $f6, $f4
/* 1C5144 802170F4 00095080 */  sll        $t2, $t1, 2
/* 1C5148 802170F8 002A0821 */  addu       $at, $at, $t2
/* 1C514C 802170FC C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 1C5150 80217100 46083032 */  c.eq.s     $f6, $f8
/* 1C5154 80217104 00000000 */  nop
/* 1C5158 80217108 45030006 */  bc1tl      .L80217124_ovl9
/* 1C515C 8021710C 8C8C0000 */   lw        $t4, 0x0($a0)
/* 1C5160 80217110 9062003C */  lbu        $v0, 0x3C($v1)
/* 1C5164 80217114 14400002 */  bnez       $v0, .L80217120_ovl9
/* 1C5168 80217118 244B0001 */   addiu     $t3, $v0, 0x1
/* 1C516C 8021711C A06B003C */  sb         $t3, 0x3C($v1)
.L80217120_ovl9:
/* 1C5170 80217120 8C8C0000 */  lw         $t4, 0x0($a0)
.L80217124_ovl9:
/* 1C5174 80217124 3C0F800F */  lui        $t7, %hi(D_800E9E20)
/* 1C5178 80217128 25EF9E20 */  addiu      $t7, $t7, %lo(D_800E9E20)
/* 1C517C 8021712C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1C5180 80217130 000D7080 */  sll        $t6, $t5, 2
/* 1C5184 80217134 01CF1021 */  addu       $v0, $t6, $t7
/* 1C5188 80217138 8C430000 */  lw         $v1, 0x0($v0)
/* 1C518C 8021713C 18600002 */  blez       $v1, .L80217148_ovl9
/* 1C5190 80217140 2478FFFF */   addiu     $t8, $v1, -0x1
/* 1C5194 80217144 AC580000 */  sw         $t8, 0x0($v0)
.L80217148_ovl9:
/* 1C5198 80217148 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C519C 8021714C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1C51A0 80217150 03E00008 */  jr         $ra
/* 1C51A4 80217154 00000000 */   nop
