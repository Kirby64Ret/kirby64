nonmatching func_801A4C0C_ovl7, 0x1F0

glabel func_801A4C0C_ovl7
    /* 14AC7C 801A4C0C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 14AC80 801A4C10 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 14AC84 801A4C14 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 14AC88 801A4C18 3C01800F */  lui        $at, %hi(D_800EC9E4)
    /* 14AC8C 801A4C1C C420C9E4 */  lwc1       $f0, %lo(D_800EC9E4)($at)
    /* 14AC90 801A4C20 44802000 */  mtc1       $zero, $f4
    /* 14AC94 801A4C24 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 14AC98 801A4C28 AFA40050 */  sw         $a0, 0x50($sp)
    /* 14AC9C 801A4C2C 8C620000 */  lw         $v0, 0x0($v1)
    /* 14ACA0 801A4C30 46002032 */  c.eq.s     $f4, $f0
    /* 14ACA4 801A4C34 3C06800E */  lui        $a2, %hi(D_800E1B50)
    /* 14ACA8 801A4C38 00022880 */  sll        $a1, $v0, 2
    /* 14ACAC 801A4C3C 00C53021 */  addu       $a2, $a2, $a1
    /* 14ACB0 801A4C40 45010007 */  bc1t       .L801A4C60_ovl7
    /* 14ACB4 801A4C44 8CC61B50 */   lw        $a2, %lo(D_800E1B50)($a2)
    /* 14ACB8 801A4C48 46000187 */  neg.s      $f6, $f0
    /* 14ACBC 801A4C4C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 14ACC0 801A4C50 00250821 */  addu       $at, $at, $a1
    /* 14ACC4 801A4C54 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
    /* 14ACC8 801A4C58 8C620000 */  lw         $v0, 0x0($v1)
    /* 14ACCC 801A4C5C 00022880 */  sll        $a1, $v0, 2
  .L801A4C60_ovl7:
    /* 14ACD0 801A4C60 3C0E800F */  lui        $t6, %hi(D_800E8E60)
    /* 14ACD4 801A4C64 01C57021 */  addu       $t6, $t6, $a1
    /* 14ACD8 801A4C68 8DCE8E60 */  lw         $t6, %lo(D_800E8E60)($t6)
    /* 14ACDC 801A4C6C 24070001 */  addiu      $a3, $zero, 0x1
    /* 14ACE0 801A4C70 00402025 */  or         $a0, $v0, $zero
    /* 14ACE4 801A4C74 10EE002E */  beq        $a3, $t6, .L801A4D30_ovl7
    /* 14ACE8 801A4C78 00000000 */   nop
    /* 14ACEC 801A4C7C 0C044554 */  jal        func_80111550
    /* 14ACF0 801A4C80 AFA6004C */   sw        $a2, 0x4C($sp)
    /* 14ACF4 801A4C84 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 14ACF8 801A4C88 8FA6004C */  lw         $a2, 0x4C($sp)
    /* 14ACFC 801A4C8C 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 14AD00 801A4C90 8CC4008C */  lw         $a0, 0x8C($a2)
    /* 14AD04 801A4C94 0C044722 */  jal        func_80111C88
    /* 14AD08 801A4C98 8DE50000 */   lw        $a1, 0x0($t7)
    /* 14AD0C 801A4C9C 0C0447B3 */  jal        func_80111ECC
    /* 14AD10 801A4CA0 00402025 */   or        $a0, $v0, $zero
    /* 14AD14 801A4CA4 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 14AD18 801A4CA8 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 14AD1C 801A4CAC 3C09800F */  lui        $t1, %hi(D_800EA520)
    /* 14AD20 801A4CB0 24010001 */  addiu      $at, $zero, 0x1
    /* 14AD24 801A4CB4 8F190000 */  lw         $t9, 0x0($t8)
    /* 14AD28 801A4CB8 00194080 */  sll        $t0, $t9, 2
    /* 14AD2C 801A4CBC 01284821 */  addu       $t1, $t1, $t0
    /* 14AD30 801A4CC0 8D29A520 */  lw         $t1, %lo(D_800EA520)($t1)
    /* 14AD34 801A4CC4 1521000D */  bne        $t1, $at, .L801A4CFC_ovl7
    /* 14AD38 801A4CC8 00000000 */   nop
    /* 14AD3C 801A4CCC 0C0442C0 */  jal        func_80110B00
    /* 14AD40 801A4CD0 27A4002C */   addiu     $a0, $sp, 0x2C
    /* 14AD44 801A4CD4 5440000C */  bnel       $v0, $zero, .L801A4D08_ovl7
    /* 14AD48 801A4CD8 93AA002E */   lbu       $t2, 0x2E($sp)
    /* 14AD4C 801A4CDC 0C0443F5 */  jal        func_80110FD4
    /* 14AD50 801A4CE0 27A4002C */   addiu     $a0, $sp, 0x2C
    /* 14AD54 801A4CE4 54400008 */  bnel       $v0, $zero, .L801A4D08_ovl7
    /* 14AD58 801A4CE8 93AA002E */   lbu       $t2, 0x2E($sp)
    /* 14AD5C 801A4CEC 0C044054 */  jal        func_80110150
    /* 14AD60 801A4CF0 27A4002C */   addiu     $a0, $sp, 0x2C
    /* 14AD64 801A4CF4 10000004 */  b          .L801A4D08_ovl7
    /* 14AD68 801A4CF8 93AA002E */   lbu       $t2, 0x2E($sp)
  .L801A4CFC_ovl7:
    /* 14AD6C 801A4CFC 0C044054 */  jal        func_80110150
    /* 14AD70 801A4D00 27A4002C */   addiu     $a0, $sp, 0x2C
    /* 14AD74 801A4D04 93AA002E */  lbu        $t2, 0x2E($sp)
  .L801A4D08_ovl7:
    /* 14AD78 801A4D08 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 14AD7C 801A4D0C 11400008 */  beqz       $t2, .L801A4D30_ovl7
    /* 14AD80 801A4D10 00000000 */   nop
    /* 14AD84 801A4D14 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 14AD88 801A4D18 3C01800F */  lui        $at, %hi(D_800EC4A0)
    /* 14AD8C 801A4D1C 240B0001 */  addiu      $t3, $zero, 0x1
    /* 14AD90 801A4D20 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 14AD94 801A4D24 000D7080 */  sll        $t6, $t5, 2
    /* 14AD98 801A4D28 002E0821 */  addu       $at, $at, $t6
    /* 14AD9C 801A4D2C AC2BC4A0 */  sw         $t3, %lo(D_800EC4A0)($at)
  .L801A4D30_ovl7:
    /* 14ADA0 801A4D30 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 14ADA4 801A4D34 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 14ADA8 801A4D38 3C19800F */  lui        $t9, %hi(D_800E8E60)
    /* 14ADAC 801A4D3C 24070001 */  addiu      $a3, $zero, 0x1
    /* 14ADB0 801A4D40 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 14ADB4 801A4D44 000FC080 */  sll        $t8, $t7, 2
    /* 14ADB8 801A4D48 0338C821 */  addu       $t9, $t9, $t8
    /* 14ADBC 801A4D4C 8F398E60 */  lw         $t9, %lo(D_800E8E60)($t9)
    /* 14ADC0 801A4D50 10F9000F */  beq        $a3, $t9, .L801A4D90_ovl7
    /* 14ADC4 801A4D54 00000000 */   nop
    /* 14ADC8 801A4D58 0C06835D */  jal        func_801A0D74_ovl7
    /* 14ADCC 801A4D5C 8FA40050 */   lw        $a0, 0x50($sp)
    /* 14ADD0 801A4D60 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 14ADD4 801A4D64 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 14ADD8 801A4D68 3C088013 */  lui        $t0, %hi(D_8012BCA0)
    /* 14ADDC 801A4D6C 8D08BCA0 */  lw         $t0, %lo(D_8012BCA0)($t0)
    /* 14ADE0 801A4D70 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 14ADE4 801A4D74 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 14ADE8 801A4D78 00084CC2 */  srl        $t1, $t0, 19
    /* 14ADEC 801A4D7C 000C6880 */  sll        $t5, $t4, 2
    /* 14ADF0 801A4D80 002D0821 */  addu       $at, $at, $t5
    /* 14ADF4 801A4D84 312A01FF */  andi       $t2, $t1, 0x1FF
    /* 14ADF8 801A4D88 AC2A9E20 */  sw         $t2, %lo(D_800E9E20)($at)
    /* 14ADFC 801A4D8C 24070001 */  addiu      $a3, $zero, 0x1
  .L801A4D90_ovl7:
    /* 14AE00 801A4D90 3C0B8013 */  lui        $t3, %hi(D_8012E860)
    /* 14AE04 801A4D94 8D6BE860 */  lw         $t3, %lo(D_8012E860)($t3)
    /* 14AE08 801A4D98 3C18800D */  lui        $t8, %hi(D_800D7118 + 0x3C)
    /* 14AE0C 801A4D9C 15600006 */  bnez       $t3, .L801A4DB8_ovl7
    /* 14AE10 801A4DA0 00000000 */   nop
    /* 14AE14 801A4DA4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 14AE18 801A4DA8 3C01800F */  lui        $at, %hi(D_800EA520)
    /* 14AE1C 801A4DAC 000E7880 */  sll        $t7, $t6, 2
    /* 14AE20 801A4DB0 002F0821 */  addu       $at, $at, $t7
    /* 14AE24 801A4DB4 AC27A520 */  sw         $a3, %lo(D_800EA520)($at)
  .L801A4DB8_ovl7:
    /* 14AE28 801A4DB8 8F187154 */  lw         $t8, %lo(D_800D7118 + 0x3C)($t8)
    /* 14AE2C 801A4DBC 5700000C */  bnel       $t8, $zero, .L801A4DF0_ovl7
    /* 14AE30 801A4DC0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 14AE34 801A4DC4 8C790000 */  lw         $t9, 0x0($v1)
    /* 14AE38 801A4DC8 3C01800F */  lui        $at, %hi(D_800EC4A0)
    /* 14AE3C 801A4DCC 00194080 */  sll        $t0, $t9, 2
    /* 14AE40 801A4DD0 00280821 */  addu       $at, $at, $t0
    /* 14AE44 801A4DD4 AC27C4A0 */  sw         $a3, %lo(D_800EC4A0)($at)
    /* 14AE48 801A4DD8 8C690000 */  lw         $t1, 0x0($v1)
    /* 14AE4C 801A4DDC 3C01800F */  lui        $at, %hi(D_800E9720)
    /* 14AE50 801A4DE0 00096080 */  sll        $t4, $t1, 2
    /* 14AE54 801A4DE4 002C0821 */  addu       $at, $at, $t4
    /* 14AE58 801A4DE8 AC279720 */  sw         $a3, %lo(D_800E9720)($at)
    /* 14AE5C 801A4DEC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801A4DF0_ovl7:
    /* 14AE60 801A4DF0 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 14AE64 801A4DF4 03E00008 */  jr         $ra
    /* 14AE68 801A4DF8 00000000 */   nop
endlabel func_801A4C0C_ovl7
.size func_801A4C0C_ovl7, . - func_801A4C0C_ovl7
