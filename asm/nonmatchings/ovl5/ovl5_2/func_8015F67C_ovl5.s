nonmatching func_8015F67C_ovl5, 0x188

glabel func_8015F67C_ovl5
    /* 106AEC 8015F67C 3C0E8019 */  lui        $t6, %hi(D_8018E224_ovl5)
    /* 106AF0 8015F680 00047880 */  sll        $t7, $a0, 2
    /* 106AF4 8015F684 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 106AF8 8015F688 01C47021 */  addu       $t6, $t6, $a0
    /* 106AFC 8015F68C 01E47823 */  subu       $t7, $t7, $a0
    /* 106B00 8015F690 3C188019 */  lui        $t8, %hi(D_8018E228_ovl5)
    /* 106B04 8015F694 91CEE224 */  lbu        $t6, %lo(D_8018E224_ovl5)($t6)
    /* 106B08 8015F698 2718E228 */  addiu      $t8, $t8, %lo(D_8018E228_ovl5)
    /* 106B0C 8015F69C 000F7880 */  sll        $t7, $t7, 2
    /* 106B10 8015F6A0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 106B14 8015F6A4 01F81821 */  addu       $v1, $t7, $t8
    /* 106B18 8015F6A8 90650006 */  lbu        $a1, 0x6($v1)
    /* 106B1C 8015F6AC AFA3001C */  sw         $v1, 0x1C($sp)
    /* 106B20 8015F6B0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 106B24 8015F6B4 0C057D31 */  jal        func_8015F4C4_ovl5
    /* 106B28 8015F6B8 AFAE002C */   sw        $t6, 0x2C($sp)
    /* 106B2C 8015F6BC 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 106B30 8015F6C0 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 106B34 8015F6C4 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* 106B38 8015F6C8 24070002 */  addiu      $a3, $zero, 0x2
    /* 106B3C 8015F6CC 8F280000 */  lw         $t0, 0x0($t9)
    /* 106B40 8015F6D0 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 106B44 8015F6D4 8FA60030 */  lw         $a2, 0x30($sp)
    /* 106B48 8015F6D8 00084880 */  sll        $t1, $t0, 2
    /* 106B4C 8015F6DC 00892021 */  addu       $a0, $a0, $t1
    /* 106B50 8015F6E0 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
    /* 106B54 8015F6E4 00402825 */  or         $a1, $v0, $zero
    /* 106B58 8015F6E8 24010003 */  addiu      $at, $zero, 0x3
    /* 106B5C 8015F6EC 10E40003 */  beq        $a3, $a0, .L8015F6FC_ovl5
    /* 106B60 8015F6F0 00000000 */   nop
    /* 106B64 8015F6F4 5481001C */  bnel       $a0, $at, .L8015F768_ovl5
    /* 106B68 8015F6F8 24040010 */   addiu     $a0, $zero, 0x10
  .L8015F6FC_ovl5:
    /* 106B6C 8015F6FC 14470005 */  bne        $v0, $a3, .L8015F714_ovl5
    /* 106B70 8015F700 00000000 */   nop
    /* 106B74 8015F704 0C058022 */  jal        func_80160088_ovl5
    /* 106B78 8015F708 00C02025 */   or        $a0, $a2, $zero
    /* 106B7C 8015F70C 1000003A */  b          .L8015F7F8_ovl5
    /* 106B80 8015F710 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8015F714_ovl5:
    /* 106B84 8015F714 54400005 */  bnel       $v0, $zero, .L8015F72C_ovl5
    /* 106B88 8015F718 24010001 */   addiu     $at, $zero, 0x1
    /* 106B8C 8015F71C 906A0007 */  lbu        $t2, 0x7($v1)
    /* 106B90 8015F720 240100FF */  addiu      $at, $zero, 0xFF
    /* 106B94 8015F724 15410007 */  bne        $t2, $at, .L8015F744_ovl5
    /* 106B98 8015F728 24010001 */   addiu     $at, $zero, 0x1
  .L8015F72C_ovl5:
    /* 106B9C 8015F72C 14410009 */  bne        $v0, $at, .L8015F754_ovl5
    /* 106BA0 8015F730 00000000 */   nop
    /* 106BA4 8015F734 906B0008 */  lbu        $t3, 0x8($v1)
    /* 106BA8 8015F738 240100FF */  addiu      $at, $zero, 0xFF
    /* 106BAC 8015F73C 11610005 */  beq        $t3, $at, .L8015F754_ovl5
    /* 106BB0 8015F740 00000000 */   nop
  .L8015F744_ovl5:
    /* 106BB4 8015F744 0C058048 */  jal        func_80160120_ovl5
    /* 106BB8 8015F748 00C02025 */   or        $a0, $a2, $zero
    /* 106BBC 8015F74C 1000002A */  b          .L8015F7F8_ovl5
    /* 106BC0 8015F750 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8015F754_ovl5:
    /* 106BC4 8015F754 0C058143 */  jal        func_8016050C_ovl5
    /* 106BC8 8015F758 00C02025 */   or        $a0, $a2, $zero
    /* 106BCC 8015F75C 10000026 */  b          .L8015F7F8_ovl5
    /* 106BD0 8015F760 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 106BD4 8015F764 24040010 */  addiu      $a0, $zero, 0x10
  .L8015F768_ovl5:
    /* 106BD8 8015F768 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 106BDC 8015F76C 0C006291 */  jal        random_soft_s32_range
    /* 106BE0 8015F770 AFA50024 */   sw        $a1, 0x24($sp)
    /* 106BE4 8015F774 8FAC002C */  lw         $t4, 0x2C($sp)
    /* 106BE8 8015F778 3C0E8018 */  lui        $t6, %hi(D_8018691A_ovl5)
    /* 106BEC 8015F77C 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 106BF0 8015F780 000C6880 */  sll        $t5, $t4, 2
    /* 106BF4 8015F784 01AC6823 */  subu       $t5, $t5, $t4
    /* 106BF8 8015F788 000D6840 */  sll        $t5, $t5, 1
    /* 106BFC 8015F78C 01CD7021 */  addu       $t6, $t6, $t5
    /* 106C00 8015F790 91CE691A */  lbu        $t6, %lo(D_8018691A_ovl5)($t6)
    /* 106C04 8015F794 8FA50024 */  lw         $a1, 0x24($sp)
    /* 106C08 8015F798 240F0004 */  addiu      $t7, $zero, 0x4
    /* 106C0C 8015F79C 004E082A */  slt        $at, $v0, $t6
    /* 106C10 8015F7A0 10200003 */  beqz       $at, .L8015F7B0_ovl5
    /* 106C14 8015F7A4 00000000 */   nop
    /* 106C18 8015F7A8 10000012 */  b          .L8015F7F4_ovl5
    /* 106C1C 8015F7AC A06F0004 */   sb        $t7, 0x4($v1)
  .L8015F7B0_ovl5:
    /* 106C20 8015F7B0 14A00004 */  bnez       $a1, .L8015F7C4_ovl5
    /* 106C24 8015F7B4 24010001 */   addiu     $at, $zero, 0x1
    /* 106C28 8015F7B8 24180001 */  addiu      $t8, $zero, 0x1
    /* 106C2C 8015F7BC 1000000D */  b          .L8015F7F4_ovl5
    /* 106C30 8015F7C0 A0780004 */   sb        $t8, 0x4($v1)
  .L8015F7C4_ovl5:
    /* 106C34 8015F7C4 14A10004 */  bne        $a1, $at, .L8015F7D8_ovl5
    /* 106C38 8015F7C8 24080003 */   addiu     $t0, $zero, 0x3
    /* 106C3C 8015F7CC 24190002 */  addiu      $t9, $zero, 0x2
    /* 106C40 8015F7D0 10000008 */  b          .L8015F7F4_ovl5
    /* 106C44 8015F7D4 A0790004 */   sb        $t9, 0x4($v1)
  .L8015F7D8_ovl5:
    /* 106C48 8015F7D8 A0680004 */  sb         $t0, 0x4($v1)
    /* 106C4C 8015F7DC 2404000A */  addiu      $a0, $zero, 0xA
    /* 106C50 8015F7E0 0C006291 */  jal        random_soft_s32_range
    /* 106C54 8015F7E4 AFA3001C */   sw        $v1, 0x1C($sp)
    /* 106C58 8015F7E8 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 106C5C 8015F7EC 24490005 */  addiu      $t1, $v0, 0x5
    /* 106C60 8015F7F0 AC690000 */  sw         $t1, 0x0($v1)
  .L8015F7F4_ovl5:
    /* 106C64 8015F7F4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8015F7F8_ovl5:
    /* 106C68 8015F7F8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 106C6C 8015F7FC 03E00008 */  jr         $ra
    /* 106C70 8015F800 00000000 */   nop
endlabel func_8015F67C_ovl5
.size func_8015F67C_ovl5, . - func_8015F67C_ovl5
