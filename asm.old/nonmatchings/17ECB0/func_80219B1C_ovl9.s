glabel func_80219B1C_ovl9
/* 1C7B6C 80219B1C 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 1C7B70 80219B20 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 1C7B74 80219B24 8CEE0000 */  lw         $t6, 0x0($a3)
/* 1C7B78 80219B28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C7B7C 80219B2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C7B80 80219B30 AFA40018 */  sw         $a0, 0x18($sp)
/* 1C7B84 80219B34 8DC20000 */  lw         $v0, 0x0($t6)
/* 1C7B88 80219B38 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1C7B8C 80219B3C 3C0F801B */  lui        $t7, %hi(func_801ACF5C_ovl7)
/* 1C7B90 80219B40 00021080 */  sll        $v0, $v0, 2
/* 1C7B94 80219B44 00621821 */  addu       $v1, $v1, $v0
/* 1C7B98 80219B48 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1C7B9C 80219B4C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1C7BA0 80219B50 00220821 */  addu       $at, $at, $v0
/* 1C7BA4 80219B54 25EFCF5C */  addiu      $t7, $t7, %lo(func_801ACF5C_ovl7)
/* 1C7BA8 80219B58 3C18801D */  lui        $t8, %hi(D_801CB4DC_ovl7)
/* 1C7BAC 80219B5C AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 1C7BB0 80219B60 2718B4DC */  addiu      $t8, $t8, %lo(D_801CB4DC_ovl7)
/* 1C7BB4 80219B64 AC780098 */  sw         $t8, 0x98($v1)
/* 1C7BB8 80219B68 8CF90000 */  lw         $t9, 0x0($a3)
/* 1C7BBC 80219B6C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1C7BC0 80219B70 3C040001 */  lui        $a0, (0x10087 >> 16)
/* 1C7BC4 80219B74 8F280000 */  lw         $t0, 0x0($t9)
/* 1C7BC8 80219B78 34840087 */  ori        $a0, $a0, (0x10087 & 0xFFFF)
/* 1C7BCC 80219B7C 24050023 */  addiu      $a1, $zero, 0x23
/* 1C7BD0 80219B80 00084880 */  sll        $t1, $t0, 2
/* 1C7BD4 80219B84 00290821 */  addu       $at, $at, $t1
/* 1C7BD8 80219B88 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1C7BDC 80219B8C 0C02A619 */  jal        func_800A9864
/* 1C7BE0 80219B90 24060010 */   addiu     $a2, $zero, 0x10
/* 1C7BE4 80219B94 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 1C7BE8 80219B98 00000000 */   nop
/* 1C7BEC 80219B9C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1C7BF0 80219BA0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1C7BF4 80219BA4 3C04800F */  lui        $a0, %hi(D_800E98E0)
/* 1C7BF8 80219BA8 24010002 */  addiu      $at, $zero, 0x2
/* 1C7BFC 80219BAC 8C620000 */  lw         $v0, 0x0($v1)
/* 1C7C00 80219BB0 00021080 */  sll        $v0, $v0, 2
/* 1C7C04 80219BB4 00822021 */  addu       $a0, $a0, $v0
/* 1C7C08 80219BB8 8C8498E0 */  lw         $a0, %lo(D_800E98E0)($a0)
/* 1C7C0C 80219BBC 10810005 */  beq        $a0, $at, .L80219BD4_ovl9
/* 1C7C10 80219BC0 24010003 */   addiu     $at, $zero, 0x3
/* 1C7C14 80219BC4 10810022 */  beq        $a0, $at, .L80219C50_ovl9
/* 1C7C18 80219BC8 00000000 */   nop
/* 1C7C1C 80219BCC 1000003E */  b          .L80219CC8_ovl9
/* 1C7C20 80219BD0 00000000 */   nop
.L80219BD4_ovl9:
/* 1C7C24 80219BD4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1C7C28 80219BD8 00220821 */  addu       $at, $at, $v0
/* 1C7C2C 80219BDC C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1C7C30 80219BE0 3C014090 */  lui        $at, (0x40900000 >> 16)
/* 1C7C34 80219BE4 44813000 */  mtc1       $at, $f6
/* 1C7C38 80219BE8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1C7C3C 80219BEC 00220821 */  addu       $at, $at, $v0
/* 1C7C40 80219BF0 46062202 */  mul.s      $f8, $f4, $f6
/* 1C7C44 80219BF4 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1C7C48 80219BF8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1C7C4C 80219BFC 3C018022 */  lui        $at, %hi(D_8021DEB4_ovl9)
/* 1C7C50 80219C00 C42ADEB4 */  lwc1       $f10, %lo(D_8021DEB4_ovl9)($at)
/* 1C7C54 80219C04 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1C7C58 80219C08 000A5880 */  sll        $t3, $t2, 2
/* 1C7C5C 80219C0C 002B0821 */  addu       $at, $at, $t3
/* 1C7C60 80219C10 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1C7C64 80219C14 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1C7C68 80219C18 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1C7C6C 80219C1C 44818000 */  mtc1       $at, $f16
/* 1C7C70 80219C20 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1C7C74 80219C24 000C6880 */  sll        $t5, $t4, 2
/* 1C7C78 80219C28 002D0821 */  addu       $at, $at, $t5
/* 1C7C7C 80219C2C E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1C7C80 80219C30 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1C7C84 80219C34 3C018022 */  lui        $at, %hi(D_8021DEB8_ovl9)
/* 1C7C88 80219C38 C432DEB8 */  lwc1       $f18, %lo(D_8021DEB8_ovl9)($at)
/* 1C7C8C 80219C3C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1C7C90 80219C40 000E7880 */  sll        $t7, $t6, 2
/* 1C7C94 80219C44 002F0821 */  addu       $at, $at, $t7
/* 1C7C98 80219C48 1000001F */  b          .L80219CC8_ovl9
/* 1C7C9C 80219C4C E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
.L80219C50_ovl9:
/* 1C7CA0 80219C50 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1C7CA4 80219C54 00220821 */  addu       $at, $at, $v0
/* 1C7CA8 80219C58 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1C7CAC 80219C5C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 1C7CB0 80219C60 44813000 */  mtc1       $at, $f6
/* 1C7CB4 80219C64 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1C7CB8 80219C68 00220821 */  addu       $at, $at, $v0
/* 1C7CBC 80219C6C 46062202 */  mul.s      $f8, $f4, $f6
/* 1C7CC0 80219C70 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1C7CC4 80219C74 8C780000 */  lw         $t8, 0x0($v1)
/* 1C7CC8 80219C78 3C018022 */  lui        $at, %hi(D_8021DEBC_ovl9)
/* 1C7CCC 80219C7C C42ADEBC */  lwc1       $f10, %lo(D_8021DEBC_ovl9)($at)
/* 1C7CD0 80219C80 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1C7CD4 80219C84 0018C880 */  sll        $t9, $t8, 2
/* 1C7CD8 80219C88 00390821 */  addu       $at, $at, $t9
/* 1C7CDC 80219C8C E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1C7CE0 80219C90 8C680000 */  lw         $t0, 0x0($v1)
/* 1C7CE4 80219C94 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1C7CE8 80219C98 44818000 */  mtc1       $at, $f16
/* 1C7CEC 80219C9C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1C7CF0 80219CA0 00084880 */  sll        $t1, $t0, 2
/* 1C7CF4 80219CA4 00290821 */  addu       $at, $at, $t1
/* 1C7CF8 80219CA8 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1C7CFC 80219CAC 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1C7D00 80219CB0 3C018022 */  lui        $at, %hi(D_8021DEC0_ovl9)
/* 1C7D04 80219CB4 C432DEC0 */  lwc1       $f18, %lo(D_8021DEC0_ovl9)($at)
/* 1C7D08 80219CB8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1C7D0C 80219CBC 000A5880 */  sll        $t3, $t2, 2
/* 1C7D10 80219CC0 002B0821 */  addu       $at, $at, $t3
/* 1C7D14 80219CC4 E4323C90 */  swc1       $f18, %lo(D_800E3C90)($at)
.L80219CC8_ovl9:
/* 1C7D18 80219CC8 0C002DAF */  jal        finish_current_thread
/* 1C7D1C 80219CCC 2404003C */   addiu     $a0, $zero, 0x3C
/* 1C7D20 80219CD0 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 1C7D24 80219CD4 8FA40018 */   lw        $a0, 0x18($sp)
/* 1C7D28 80219CD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C7D2C 80219CDC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C7D30 80219CE0 03E00008 */  jr         $ra
/* 1C7D34 80219CE4 00000000 */   nop
