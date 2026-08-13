nonmatching func_801A6434_ovl7, 0x1DC

glabel func_801A6434_ovl7
    /* 14C4A4 801A6434 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 14C4A8 801A6438 3C02800D */  lui        $v0, %hi(D_800D7118)
    /* 14C4AC 801A643C 24427118 */  addiu      $v0, $v0, %lo(D_800D7118)
    /* 14C4B0 801A6440 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 14C4B4 801A6444 8C530038 */  lw         $s3, 0x38($v0)
    /* 14C4B8 801A6448 AFB00020 */  sw         $s0, 0x20($sp)
    /* 14C4BC 801A644C AFB20028 */  sw         $s2, 0x28($sp)
    /* 14C4C0 801A6450 00137080 */  sll        $t6, $s3, 2
    /* 14C4C4 801A6454 004E8021 */  addu       $s0, $v0, $t6
    /* 14C4C8 801A6458 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 14C4CC 801A645C 2412FFFF */  addiu      $s2, $zero, -0x1
    /* 14C4D0 801A6460 AFB10024 */  sw         $s1, 0x24($sp)
    /* 14C4D4 801A6464 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 14C4D8 801A6468 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 14C4DC 801A646C AFB7003C */  sw         $s7, 0x3C($sp)
    /* 14C4E0 801A6470 AFB60038 */  sw         $s6, 0x38($sp)
    /* 14C4E4 801A6474 AFB50034 */  sw         $s5, 0x34($sp)
    /* 14C4E8 801A6478 AFB40030 */  sw         $s4, 0x30($sp)
    /* 14C4EC 801A647C F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 14C4F0 801A6480 124F004C */  beq        $s2, $t7, .L801A65B4_ovl7
    /* 14C4F4 801A6484 00008825 */   or        $s1, $zero, $zero
    /* 14C4F8 801A6488 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 14C4FC 801A648C 3C1E800E */  lui        $fp, %hi(D_800E6BD0)
    /* 14C500 801A6490 3C17800E */  lui        $s7, %hi(D_800E5F90)
    /* 14C504 801A6494 3C16800E */  lui        $s6, %hi(gEntitiesNextPosZArray)
    /* 14C508 801A6498 3C15800E */  lui        $s5, %hi(gEntitiesNextPosYArray)
    /* 14C50C 801A649C 3C14800E */  lui        $s4, %hi(gEntitiesNextPosXArray)
    /* 14C510 801A64A0 4481A000 */  mtc1       $at, $f20
    /* 14C514 801A64A4 269425D0 */  addiu      $s4, $s4, %lo(gEntitiesNextPosXArray)
    /* 14C518 801A64A8 26B52790 */  addiu      $s5, $s5, %lo(gEntitiesNextPosYArray)
    /* 14C51C 801A64AC 26D62950 */  addiu      $s6, $s6, %lo(gEntitiesNextPosZArray)
    /* 14C520 801A64B0 26F75F90 */  addiu      $s7, $s7, %lo(D_800E5F90)
    /* 14C524 801A64B4 27DE6BD0 */  addiu      $fp, $fp, %lo(D_800E6BD0)
  .L801A64B8_ovl7:
    /* 14C528 801A64B8 0C06B9F8 */  jal        func_801AE7E0_ovl7
    /* 14C52C 801A64BC 24040014 */   addiu     $a0, $zero, 0x14
    /* 14C530 801A64C0 5040002D */  beql       $v0, $zero, .L801A6578_ovl7
    /* 14C534 801A64C4 26620001 */   addiu     $v0, $s3, 0x1
    /* 14C538 801A64C8 C6840000 */  lwc1       $f4, 0x0($s4)
    /* 14C53C 801A64CC 00021880 */  sll        $v1, $v0, 2
    /* 14C540 801A64D0 0283C021 */  addu       $t8, $s4, $v1
    /* 14C544 801A64D4 E7040000 */  swc1       $f4, 0x0($t8)
    /* 14C548 801A64D8 C6A60000 */  lwc1       $f6, 0x0($s5)
    /* 14C54C 801A64DC 02A3C821 */  addu       $t9, $s5, $v1
    /* 14C550 801A64E0 02C34021 */  addu       $t0, $s6, $v1
    /* 14C554 801A64E4 46143200 */  add.s      $f8, $f6, $f20
    /* 14C558 801A64E8 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 14C55C 801A64EC 3C0A801C */  lui        $t2, %hi(D_801C2E84_ovl7)
    /* 14C560 801A64F0 00230821 */  addu       $at, $at, $v1
    /* 14C564 801A64F4 E7280000 */  swc1       $f8, 0x0($t9)
    /* 14C568 801A64F8 C6CA0000 */  lwc1       $f10, 0x0($s6)
    /* 14C56C 801A64FC 02E36821 */  addu       $t5, $s7, $v1
    /* 14C570 801A6500 03C37021 */  addu       $t6, $fp, $v1
    /* 14C574 801A6504 E50A0000 */  swc1       $f10, 0x0($t0)
    /* 14C578 801A6508 8E040000 */  lw         $a0, 0x0($s0)
    /* 14C57C 801A650C 00044880 */  sll        $t1, $a0, 2
    /* 14C580 801A6510 01495021 */  addu       $t2, $t2, $t1
    /* 14C584 801A6514 8D4A2E84 */  lw         $t2, %lo(D_801C2E84_ovl7)($t2)
    /* 14C588 801A6518 AC2498E0 */  sw         $a0, %lo(D_800E98E0)($at)
    /* 14C58C 801A651C 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 14C590 801A6520 00230821 */  addu       $at, $at, $v1
    /* 14C594 801A6524 AC2A9AA0 */  sw         $t2, %lo(D_800E9AA0)($at)
    /* 14C598 801A6528 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 14C59C 801A652C 00230821 */  addu       $at, $at, $v1
    /* 14C5A0 801A6530 AC319C60 */  sw         $s1, %lo(D_800E9C60)($at)
    /* 14C5A4 801A6534 8E0B0014 */  lw         $t3, 0x14($s0)
    /* 14C5A8 801A6538 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 14C5AC 801A653C 00230821 */  addu       $at, $at, $v1
    /* 14C5B0 801A6540 AC2B9E20 */  sw         $t3, %lo(D_800E9E20)($at)
    /* 14C5B4 801A6544 3C01800F */  lui        $at, %hi(D_800E8E60)
    /* 14C5B8 801A6548 00230821 */  addu       $at, $at, $v1
    /* 14C5BC 801A654C AC208E60 */  sw         $zero, %lo(D_800E8E60)($at)
    /* 14C5C0 801A6550 8EEC0000 */  lw         $t4, 0x0($s7)
    /* 14C5C4 801A6554 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 14C5C8 801A6558 ADAC0000 */  sw         $t4, 0x0($t5)
    /* 14C5CC 801A655C C7D00000 */  lwc1       $f16, 0x0($fp)
    /* 14C5D0 801A6560 E5D00000 */  swc1       $f16, 0x0($t6)
    /* 14C5D4 801A6564 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* 14C5D8 801A6568 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 14C5DC 801A656C 00230821 */  addu       $at, $at, $v1
    /* 14C5E0 801A6570 E4326A10 */  swc1       $f18, %lo(D_800E6A10)($at)
    /* 14C5E4 801A6574 26620001 */  addiu      $v0, $s3, 0x1
  .L801A6578_ovl7:
    /* 14C5E8 801A6578 28410006 */  slti       $at, $v0, 0x6
    /* 14C5EC 801A657C 14200005 */  bnez       $at, .L801A6594_ovl7
    /* 14C5F0 801A6580 26310001 */   addiu     $s1, $s1, 0x1
    /* 14C5F4 801A6584 3C10800D */  lui        $s0, %hi(D_800D7118 + 0x4)
    /* 14C5F8 801A6588 2610711C */  addiu      $s0, $s0, %lo(D_800D7118 + 0x4)
    /* 14C5FC 801A658C 10000003 */  b          .L801A659C_ovl7
    /* 14C600 801A6590 24130001 */   addiu     $s3, $zero, 0x1
  .L801A6594_ovl7:
    /* 14C604 801A6594 00409825 */  or         $s3, $v0, $zero
    /* 14C608 801A6598 26100004 */  addiu      $s0, $s0, 0x4
  .L801A659C_ovl7:
    /* 14C60C 801A659C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 14C610 801A65A0 24010005 */  addiu      $at, $zero, 0x5
    /* 14C614 801A65A4 124F0003 */  beq        $s2, $t7, .L801A65B4_ovl7
    /* 14C618 801A65A8 00000000 */   nop
    /* 14C61C 801A65AC 1621FFC2 */  bne        $s1, $at, .L801A64B8_ovl7
    /* 14C620 801A65B0 00000000 */   nop
  .L801A65B4_ovl7:
    /* 14C624 801A65B4 3C02800D */  lui        $v0, %hi(D_800D7118)
    /* 14C628 801A65B8 3C03800D */  lui        $v1, %hi(D_800D7158)
    /* 14C62C 801A65BC 24637158 */  addiu      $v1, $v1, %lo(D_800D7158)
    /* 14C630 801A65C0 24427118 */  addiu      $v0, $v0, %lo(D_800D7118)
  .L801A65C4_ovl7:
    /* 14C634 801A65C4 24420010 */  addiu      $v0, $v0, 0x10
    /* 14C638 801A65C8 AC52FFF0 */  sw         $s2, -0x10($v0)
    /* 14C63C 801A65CC AC52FFF4 */  sw         $s2, -0xC($v0)
    /* 14C640 801A65D0 AC52FFF8 */  sw         $s2, -0x8($v0)
    /* 14C644 801A65D4 1443FFFB */  bne        $v0, $v1, .L801A65C4_ovl7
    /* 14C648 801A65D8 AC52FFFC */   sw        $s2, -0x4($v0)
    /* 14C64C 801A65DC 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 14C650 801A65E0 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 14C654 801A65E4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 14C658 801A65E8 8FB10024 */  lw         $s1, 0x24($sp)
    /* 14C65C 801A65EC 8FB20028 */  lw         $s2, 0x28($sp)
    /* 14C660 801A65F0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 14C664 801A65F4 8FB40030 */  lw         $s4, 0x30($sp)
    /* 14C668 801A65F8 8FB50034 */  lw         $s5, 0x34($sp)
    /* 14C66C 801A65FC 8FB60038 */  lw         $s6, 0x38($sp)
    /* 14C670 801A6600 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 14C674 801A6604 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 14C678 801A6608 03E00008 */  jr         $ra
    /* 14C67C 801A660C 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_801A6434_ovl7
.size func_801A6434_ovl7, . - func_801A6434_ovl7
