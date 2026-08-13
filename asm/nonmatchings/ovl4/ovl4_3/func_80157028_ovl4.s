nonmatching func_80157028_ovl4, 0x228

glabel func_80157028_ovl4
    /* FE558 80157028 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* FE55C 8015702C AFB50034 */  sw         $s5, 0x34($sp)
    /* FE560 80157030 3C158005 */  lui        $s5, %hi(omCurrentObj)
    /* FE564 80157034 26B5A7C4 */  addiu      $s5, $s5, %lo(omCurrentObj)
    /* FE568 80157038 8EAE0000 */  lw         $t6, 0x0($s5)
    /* FE56C 8015703C AFBF0044 */  sw         $ra, 0x44($sp)
    /* FE570 80157040 AFBE0040 */  sw         $fp, 0x40($sp)
    /* FE574 80157044 AFB7003C */  sw         $s7, 0x3C($sp)
    /* FE578 80157048 AFB60038 */  sw         $s6, 0x38($sp)
    /* FE57C 8015704C AFB40030 */  sw         $s4, 0x30($sp)
    /* FE580 80157050 AFB3002C */  sw         $s3, 0x2C($sp)
    /* FE584 80157054 AFB20028 */  sw         $s2, 0x28($sp)
    /* FE588 80157058 AFB10024 */  sw         $s1, 0x24($sp)
    /* FE58C 8015705C AFB00020 */  sw         $s0, 0x20($sp)
    /* FE590 80157060 8DCF0000 */  lw         $t7, 0x0($t6)
    /* FE594 80157064 0005C080 */  sll        $t8, $a1, 2
    /* FE598 80157068 3C018016 */  lui        $at, %hi(D_8015C6F8_ovl4)
    /* FE59C 8015706C 0080B025 */  or         $s6, $a0, $zero
    /* FE5A0 80157070 00380821 */  addu       $at, $at, $t8
    /* FE5A4 80157074 00A08025 */  or         $s0, $a1, $zero
    /* FE5A8 80157078 00A02025 */  or         $a0, $a1, $zero
    /* FE5AC 8015707C 0C055C01 */  jal        func_80157004_ovl4
    /* FE5B0 80157080 AC2FC6F8 */   sw        $t7, %lo(D_8015C6F8_ovl4)($at)
    /* FE5B4 80157084 8EA30000 */  lw         $v1, 0x0($s5)
    /* FE5B8 80157088 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* FE5BC 8015708C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* FE5C0 80157090 8C790000 */  lw         $t9, 0x0($v1)
    /* FE5C4 80157094 3C05800B */  lui        $a1, %hi(procMainStub)
    /* FE5C8 80157098 0040F025 */  or         $fp, $v0, $zero
    /* FE5CC 8015709C 00194080 */  sll        $t0, $t9, 2
    /* FE5D0 801570A0 00280821 */  addu       $at, $at, $t0
    /* FE5D4 801570A4 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* FE5D8 801570A8 8C690000 */  lw         $t1, 0x0($v1)
    /* FE5DC 801570AC 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* FE5E0 801570B0 00095080 */  sll        $t2, $t1, 2
    /* FE5E4 801570B4 008A2021 */  addu       $a0, $a0, $t2
    /* FE5E8 801570B8 0C02C7DA */  jal        setProcessMain
    /* FE5EC 801570BC 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* FE5F0 801570C0 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* FE5F4 801570C4 240B0012 */  addiu      $t3, $zero, 0x12
    /* FE5F8 801570C8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* FE5FC 801570CC 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* FE600 801570D0 02C02025 */  or         $a0, $s6, $zero
    /* FE604 801570D4 24060012 */  addiu      $a2, $zero, 0x12
    /* FE608 801570D8 0C00297F */  jal        omLinkGObjDL
    /* FE60C 801570DC 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* FE610 801570E0 3C0D8016 */  lui        $t5, %hi(D_8015ADC4_ovl4)
    /* FE614 801570E4 25ADADC4 */  addiu      $t5, $t5, %lo(D_8015ADC4_ovl4)
    /* FE618 801570E8 001060C0 */  sll        $t4, $s0, 3
    /* FE61C 801570EC 018DB821 */  addu       $s7, $t4, $t5
    /* FE620 801570F0 8EE60000 */  lw         $a2, 0x0($s7)
    /* FE624 801570F4 8EE70004 */  lw         $a3, 0x4($s7)
    /* FE628 801570F8 02C02025 */  or         $a0, $s6, $zero
    /* FE62C 801570FC 0C055BAC */  jal        func_80156EB0_ovl4
    /* FE630 80157100 03C02825 */   or        $a1, $fp, $zero
    /* FE634 80157104 3C138016 */  lui        $s3, %hi(D_8015ADDC_ovl4)
    /* FE638 80157108 3C12800D */  lui        $s2, %hi(saveCurrentFileNum)
    /* FE63C 8015710C 26526B88 */  addiu      $s2, $s2, %lo(saveCurrentFileNum)
    /* FE640 80157110 2673ADDC */  addiu      $s3, $s3, %lo(D_8015ADDC_ovl4)
    /* FE644 80157114 24140006 */  addiu      $s4, $zero, 0x6
    /* FE648 80157118 8E4E0000 */  lw         $t6, 0x0($s2)
  .L8015711C_ovl4:
    /* FE64C 8015711C 3C0F8016 */  lui        $t7, %hi(D_8015C6DC_ovl4)
    /* FE650 80157120 24040001 */  addiu      $a0, $zero, 0x1
    /* FE654 80157124 160E0004 */  bne        $s0, $t6, .L80157138_ovl4
    /* FE658 80157128 00000000 */   nop
    /* FE65C 8015712C 8DEFC6DC */  lw         $t7, %lo(D_8015C6DC_ovl4)($t7)
    /* FE660 80157130 55E00033 */  bnel       $t7, $zero, .L80157200_ovl4
    /* FE664 80157134 00002025 */   or        $a0, $zero, $zero
  .L80157138_ovl4:
    /* FE668 80157138 0C02BEED */  jal        func_800AFBB4
    /* FE66C 8015713C 8EA50000 */   lw        $a1, 0x0($s5)
    /* FE670 80157140 0C05556B */  jal        func_801555AC_ovl4
    /* FE674 80157144 02002025 */   or        $a0, $s0, $zero
    /* FE678 80157148 10400028 */  beqz       $v0, .L801571EC_ovl4
    /* FE67C 8015714C 00002025 */   or        $a0, $zero, $zero
    /* FE680 80157150 24040001 */  addiu      $a0, $zero, 0x1
    /* FE684 80157154 0C02BEED */  jal        func_800AFBB4
    /* FE688 80157158 8EA50000 */   lw        $a1, 0x0($s5)
    /* FE68C 8015715C 0C055C01 */  jal        func_80157004_ovl4
    /* FE690 80157160 02002025 */   or        $a0, $s0, $zero
    /* FE694 80157164 105E0009 */  beq        $v0, $fp, .L8015718C_ovl4
    /* FE698 80157168 00408825 */   or        $s1, $v0, $zero
    /* FE69C 8015716C 0040F025 */  or         $fp, $v0, $zero
    /* FE6A0 80157170 0C02B2F7 */  jal        func_800ACBDC
    /* FE6A4 80157174 02C02025 */   or        $a0, $s6, $zero
    /* FE6A8 80157178 02C02025 */  or         $a0, $s6, $zero
    /* FE6AC 8015717C 02202825 */  or         $a1, $s1, $zero
    /* FE6B0 80157180 8EE60000 */  lw         $a2, 0x0($s7)
    /* FE6B4 80157184 0C055BAC */  jal        func_80156EB0_ovl4
    /* FE6B8 80157188 8EE70004 */   lw        $a3, 0x4($s7)
  .L8015718C_ovl4:
    /* FE6BC 8015718C 0C05556B */  jal        func_801555AC_ovl4
    /* FE6C0 80157190 02002025 */   or        $a0, $s0, $zero
    /* FE6C4 80157194 1040001C */  beqz       $v0, .L80157208_ovl4
    /* FE6C8 80157198 00000000 */   nop
    /* FE6CC 8015719C 8EC3004C */  lw         $v1, 0x4C($s6)
    /* FE6D0 801571A0 10600019 */  beqz       $v1, .L80157208_ovl4
    /* FE6D4 801571A4 00000000 */   nop
    /* FE6D8 801571A8 8E580000 */  lw         $t8, 0x0($s2)
  .L801571AC_ovl4:
    /* FE6DC 801571AC 02182026 */  xor        $a0, $s0, $t8
    /* FE6E0 801571B0 2C840001 */  sltiu      $a0, $a0, 0x1
    /* FE6E4 801571B4 00940019 */  multu      $a0, $s4
    /* FE6E8 801571B8 0000C812 */  mflo       $t9
    /* FE6EC 801571BC 02791021 */  addu       $v0, $s3, $t9
    /* FE6F0 801571C0 94480000 */  lhu        $t0, 0x0($v0)
    /* FE6F4 801571C4 A0680014 */  sb         $t0, 0x14($v1)
    /* FE6F8 801571C8 94490002 */  lhu        $t1, 0x2($v0)
    /* FE6FC 801571CC A0690015 */  sb         $t1, 0x15($v1)
    /* FE700 801571D0 944A0004 */  lhu        $t2, 0x4($v0)
    /* FE704 801571D4 A06A0016 */  sb         $t2, 0x16($v1)
    /* FE708 801571D8 8C630008 */  lw         $v1, 0x8($v1)
    /* FE70C 801571DC 5460FFF3 */  bnel       $v1, $zero, .L801571AC_ovl4
    /* FE710 801571E0 8E580000 */   lw        $t8, 0x0($s2)
    /* FE714 801571E4 10000008 */  b          .L80157208_ovl4
    /* FE718 801571E8 00000000 */   nop
  .L801571EC_ovl4:
    /* FE71C 801571EC 0C02BEED */  jal        func_800AFBB4
    /* FE720 801571F0 8EA50000 */   lw        $a1, 0x0($s5)
    /* FE724 801571F4 10000004 */  b          .L80157208_ovl4
    /* FE728 801571F8 00000000 */   nop
    /* FE72C 801571FC 00002025 */  or         $a0, $zero, $zero
  .L80157200_ovl4:
    /* FE730 80157200 0C02BEED */  jal        func_800AFBB4
    /* FE734 80157204 8EA50000 */   lw        $a1, 0x0($s5)
  .L80157208_ovl4:
    /* FE738 80157208 0C002DAF */  jal        ohSleep
    /* FE73C 8015720C 24040001 */   addiu     $a0, $zero, 0x1
    /* FE740 80157210 1000FFC2 */  b          .L8015711C_ovl4
    /* FE744 80157214 8E4E0000 */   lw        $t6, 0x0($s2)
    /* FE748 80157218 00000000 */  nop
    /* FE74C 8015721C 00000000 */  nop
    /* FE750 80157220 8FBF0044 */  lw         $ra, 0x44($sp)
    /* FE754 80157224 8FB00020 */  lw         $s0, 0x20($sp)
    /* FE758 80157228 8FB10024 */  lw         $s1, 0x24($sp)
    /* FE75C 8015722C 8FB20028 */  lw         $s2, 0x28($sp)
    /* FE760 80157230 8FB3002C */  lw         $s3, 0x2C($sp)
    /* FE764 80157234 8FB40030 */  lw         $s4, 0x30($sp)
    /* FE768 80157238 8FB50034 */  lw         $s5, 0x34($sp)
    /* FE76C 8015723C 8FB60038 */  lw         $s6, 0x38($sp)
    /* FE770 80157240 8FB7003C */  lw         $s7, 0x3C($sp)
    /* FE774 80157244 8FBE0040 */  lw         $fp, 0x40($sp)
    /* FE778 80157248 03E00008 */  jr         $ra
    /* FE77C 8015724C 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_80157028_ovl4
.size func_80157028_ovl4, . - func_80157028_ovl4
