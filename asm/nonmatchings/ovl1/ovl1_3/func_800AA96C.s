nonmatching func_800AA96C, 0x1D0

glabel func_800AA96C
    /* 52BBC 800AA96C 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 52BC0 800AA970 AFB70060 */  sw         $s7, 0x60($sp)
    /* 52BC4 800AA974 3C178005 */  lui        $s7, %hi(omCurrentObj)
    /* 52BC8 800AA978 26F7A7C4 */  addiu      $s7, $s7, %lo(omCurrentObj)
    /* 52BCC 800AA97C 8EE20000 */  lw         $v0, 0x0($s7)
    /* 52BD0 800AA980 AFBF0064 */  sw         $ra, 0x64($sp)
    /* 52BD4 800AA984 AFB6005C */  sw         $s6, 0x5C($sp)
    /* 52BD8 800AA988 AFB50058 */  sw         $s5, 0x58($sp)
    /* 52BDC 800AA98C AFB40054 */  sw         $s4, 0x54($sp)
    /* 52BE0 800AA990 AFB30050 */  sw         $s3, 0x50($sp)
    /* 52BE4 800AA994 AFB2004C */  sw         $s2, 0x4C($sp)
    /* 52BE8 800AA998 AFB10048 */  sw         $s1, 0x48($sp)
    /* 52BEC 800AA99C AFB00044 */  sw         $s0, 0x44($sp)
    /* 52BF0 800AA9A0 F7B80038 */  sdc1       $f24, 0x38($sp)
    /* 52BF4 800AA9A4 F7B60030 */  sdc1       $f22, 0x30($sp)
    /* 52BF8 800AA9A8 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* 52BFC 800AA9AC AFA5006C */  sw         $a1, 0x6C($sp)
    /* 52C00 800AA9B0 0005C402 */  srl        $t8, $a1, 16
    /* 52C04 800AA9B4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 52C08 800AA9B8 0018C880 */  sll        $t9, $t8, 2
    /* 52C0C 800AA9BC 3C08800D */  lui        $t0, %hi(D_800D00C4)
    /* 52C10 800AA9C0 01194021 */  addu       $t0, $t0, $t9
    /* 52C14 800AA9C4 8D0800C4 */  lw         $t0, %lo(D_800D00C4)($t0)
    /* 52C18 800AA9C8 3C01800E */  lui        $at, %hi(D_800E02D0)
    /* 52C1C 800AA9CC 30A9FFFF */  andi       $t1, $a1, 0xFFFF
    /* 52C20 800AA9D0 000E7880 */  sll        $t7, $t6, 2
    /* 52C24 800AA9D4 002F0821 */  addu       $at, $at, $t7
    /* 52C28 800AA9D8 00095080 */  sll        $t2, $t1, 2
    /* 52C2C 800AA9DC AC2502D0 */  sw         $a1, %lo(D_800E02D0)($at)
    /* 52C30 800AA9E0 010A8021 */  addu       $s0, $t0, $t2
    /* 52C34 800AA9E4 8E030000 */  lw         $v1, 0x0($s0)
    /* 52C38 800AA9E8 4487C000 */  mtc1       $a3, $f24
    /* 52C3C 800AA9EC 00A03825 */  or         $a3, $a1, $zero
    /* 52C40 800AA9F0 00C09025 */  or         $s2, $a2, $zero
    /* 52C44 800AA9F4 1060000C */  beqz       $v1, .L800AAA28
    /* 52C48 800AA9F8 0080A825 */   or        $s5, $a0, $zero
    /* 52C4C 800AA9FC 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 52C50 800AAA00 3C11800E */  lui        $s1, %hi(D_800DFA10)
    /* 52C54 800AAA04 2631FA10 */  addiu      $s1, $s1, %lo(D_800DFA10)
    /* 52C58 800AAA08 000B6080 */  sll        $t4, $t3, 2
    /* 52C5C 800AAA0C 022C6821 */  addu       $t5, $s1, $t4
    /* 52C60 800AAA10 ADA30000 */  sw         $v1, 0x0($t5)
    /* 52C64 800AAA14 8E040000 */  lw         $a0, 0x0($s0)
    /* 52C68 800AAA18 0C02A159 */  jal        func_800A8564
    /* 52C6C 800AAA1C 24050001 */   addiu     $a1, $zero, 0x1
    /* 52C70 800AAA20 1000000C */  b          .L800AAA54
    /* 52C74 800AAA24 00000000 */   nop
  .L800AAA28:
    /* 52C78 800AAA28 00E02025 */  or         $a0, $a3, $zero
    /* 52C7C 800AAA2C 0C02A494 */  jal        func_800A9250
    /* 52C80 800AAA30 24050003 */   addiu     $a1, $zero, 0x3
    /* 52C84 800AAA34 AE020000 */  sw         $v0, 0x0($s0)
    /* 52C88 800AAA38 8EEE0000 */  lw         $t6, 0x0($s7)
    /* 52C8C 800AAA3C 3C11800E */  lui        $s1, %hi(D_800DFA10)
    /* 52C90 800AAA40 2631FA10 */  addiu      $s1, $s1, %lo(D_800DFA10)
    /* 52C94 800AAA44 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 52C98 800AAA48 000FC080 */  sll        $t8, $t7, 2
    /* 52C9C 800AAA4C 0238C821 */  addu       $t9, $s1, $t8
    /* 52CA0 800AAA50 AF220000 */  sw         $v0, 0x0($t9)
  .L800AAA54:
    /* 52CA4 800AAA54 0C02A6D2 */  jal        func_800A9B48
    /* 52CA8 800AAA58 02402025 */   or        $a0, $s2, $zero
    /* 52CAC 800AAA5C 8EE90000 */  lw         $t1, 0x0($s7)
    /* 52CB0 800AAA60 3C08800E */  lui        $t0, %hi(D_800DF690)
    /* 52CB4 800AAA64 8EB00000 */  lw         $s0, 0x0($s5)
    /* 52CB8 800AAA68 8D230000 */  lw         $v1, 0x0($t1)
    /* 52CBC 800AAA6C 2414FFFF */  addiu      $s4, $zero, -0x1
    /* 52CC0 800AAA70 C7B60078 */  lwc1       $f22, 0x78($sp)
    /* 52CC4 800AAA74 00031880 */  sll        $v1, $v1, 2
    /* 52CC8 800AAA78 01034021 */  addu       $t0, $t0, $v1
    /* 52CCC 800AAA7C 02235021 */  addu       $t2, $s1, $v1
    /* 52CD0 800AAA80 8D08F690 */  lw         $t0, %lo(D_800DF690)($t0)
    /* 52CD4 800AAA84 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 52CD8 800AAA88 02A08825 */  or         $s1, $s5, $zero
    /* 52CDC 800AAA8C 8D120000 */  lw         $s2, 0x0($t0)
    /* 52CE0 800AAA90 1214001C */  beq        $s0, $s4, .L800AAB04
    /* 52CE4 800AAA94 8D730000 */   lw        $s3, 0x0($t3)
    /* 52CE8 800AAA98 3C15800E */  lui        $s5, %hi(D_800DFBD0)
    /* 52CEC 800AAA9C 4480A000 */  mtc1       $zero, $f20
    /* 52CF0 800AAAA0 26B5FBD0 */  addiu      $s5, $s5, %lo(D_800DFBD0)
    /* 52CF4 800AAAA4 2416002C */  addiu      $s6, $zero, 0x2C
    /* 52CF8 800AAAA8 8EEC0000 */  lw         $t4, 0x0($s7)
  .L800AAAAC:
    /* 52CFC 800AAAAC 02160019 */  multu      $s0, $s6
    /* 52D00 800AAAB0 00101080 */  sll        $v0, $s0, 2
    /* 52D04 800AAAB4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 52D08 800AAAB8 4406C000 */  mfc1       $a2, $f24
    /* 52D0C 800AAABC 00522821 */  addu       $a1, $v0, $s2
    /* 52D10 800AAAC0 000D7080 */  sll        $t6, $t5, 2
    /* 52D14 800AAAC4 02AE7821 */  addu       $t7, $s5, $t6
    /* 52D18 800AAAC8 8DF80000 */  lw         $t8, 0x0($t7)
    /* 52D1C 800AAACC 0302C821 */  addu       $t9, $t8, $v0
    /* 52D20 800AAAD0 8F240000 */  lw         $a0, 0x0($t9)
    /* 52D24 800AAAD4 00004812 */  mflo       $t1
    /* 52D28 800AAAD8 01333821 */  addu       $a3, $t1, $s3
    /* 52D2C 800AAADC E7B40020 */  swc1       $f20, 0x20($sp)
    /* 52D30 800AAAE0 E7B4001C */  swc1       $f20, 0x1C($sp)
    /* 52D34 800AAAE4 E7B40018 */  swc1       $f20, 0x18($sp)
    /* 52D38 800AAAE8 E7B60014 */  swc1       $f22, 0x14($sp)
    /* 52D3C 800AAAEC 0C003B26 */  jal        func_8000EC98
    /* 52D40 800AAAF0 AFA00010 */   sw        $zero, 0x10($sp)
    /* 52D44 800AAAF4 8E300004 */  lw         $s0, 0x4($s1)
    /* 52D48 800AAAF8 26310004 */  addiu      $s1, $s1, 0x4
    /* 52D4C 800AAAFC 5614FFEB */  bnel       $s0, $s4, .L800AAAAC
    /* 52D50 800AAB00 8EEC0000 */   lw        $t4, 0x0($s7)
  .L800AAB04:
    /* 52D54 800AAB04 8FBF0064 */  lw         $ra, 0x64($sp)
    /* 52D58 800AAB08 D7B40028 */  ldc1       $f20, 0x28($sp)
    /* 52D5C 800AAB0C D7B60030 */  ldc1       $f22, 0x30($sp)
    /* 52D60 800AAB10 D7B80038 */  ldc1       $f24, 0x38($sp)
    /* 52D64 800AAB14 8FB00044 */  lw         $s0, 0x44($sp)
    /* 52D68 800AAB18 8FB10048 */  lw         $s1, 0x48($sp)
    /* 52D6C 800AAB1C 8FB2004C */  lw         $s2, 0x4C($sp)
    /* 52D70 800AAB20 8FB30050 */  lw         $s3, 0x50($sp)
    /* 52D74 800AAB24 8FB40054 */  lw         $s4, 0x54($sp)
    /* 52D78 800AAB28 8FB50058 */  lw         $s5, 0x58($sp)
    /* 52D7C 800AAB2C 8FB6005C */  lw         $s6, 0x5C($sp)
    /* 52D80 800AAB30 8FB70060 */  lw         $s7, 0x60($sp)
    /* 52D84 800AAB34 03E00008 */  jr         $ra
    /* 52D88 800AAB38 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_800AA96C
.size func_800AA96C, . - func_800AA96C
