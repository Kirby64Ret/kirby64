glabel func_80208B80_ovl9
/* 1B6BD0 80208B80 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 1B6BD4 80208B84 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 1B6BD8 80208B88 8CCE0000 */  lw         $t6, 0x0($a2)
/* 1B6BDC 80208B8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B6BE0 80208B90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B6BE4 80208B94 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B6BE8 80208B98 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1B6BEC 80208B9C 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1B6BF0 80208BA0 3C19801D */  lui        $t9, %hi(D_801CC670)
/* 1B6BF4 80208BA4 000FC080 */  sll        $t8, $t7, 2
/* 1B6BF8 80208BA8 00781821 */  addu       $v1, $v1, $t8
/* 1B6BFC 80208BAC 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1B6C00 80208BB0 2739C670 */  addiu      $t9, $t9, %lo(D_801CC670)
/* 1B6C04 80208BB4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1B6C08 80208BB8 AC790098 */  sw         $t9, 0x98($v1)
/* 1B6C0C 80208BBC 8CC20000 */  lw         $v0, 0x0($a2)
/* 1B6C10 80208BC0 24080005 */  addiu      $t0, $zero, 0x5
/* 1B6C14 80208BC4 44802000 */  mtc1       $zero, $f4
/* 1B6C18 80208BC8 8C490000 */  lw         $t1, 0x0($v0)
/* 1B6C1C 80208BCC 3C0D800E */  lui        $t5, %hi(D_800DFF50)
/* 1B6C20 80208BD0 3C070001 */  lui        $a3, (0x101FB >> 16)
/* 1B6C24 80208BD4 00095080 */  sll        $t2, $t1, 2
/* 1B6C28 80208BD8 002A0821 */  addu       $at, $at, $t2
/* 1B6C2C 80208BDC AC28DFD0 */  sw         $t0, %lo(D_800DDFD0)($at)
/* 1B6C30 80208BE0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1B6C34 80208BE4 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1B6C38 80208BE8 34E701FB */  ori        $a3, $a3, (0x101FB & 0xFFFF)
/* 1B6C3C 80208BEC 000B6080 */  sll        $t4, $t3, 2
/* 1B6C40 80208BF0 002C0821 */  addu       $at, $at, $t4
/* 1B6C44 80208BF4 E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
/* 1B6C48 80208BF8 8C450000 */  lw         $a1, 0x0($v0)
/* 1B6C4C 80208BFC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1B6C50 80208C00 3C0E800B */  lui        $t6, %hi(func_800B6A2C)
/* 1B6C54 80208C04 00052880 */  sll        $a1, $a1, 2
/* 1B6C58 80208C08 01A56821 */  addu       $t5, $t5, $a1
/* 1B6C5C 80208C0C 8DADFF50 */  lw         $t5, %lo(D_800DFF50)($t5)
/* 1B6C60 80208C10 00250821 */  addu       $at, $at, $a1
/* 1B6C64 80208C14 25CE6A2C */  addiu      $t6, $t6, %lo(func_800B6A2C)
/* 1B6C68 80208C18 10ED000A */  beq        $a3, $t5, .L80208C44_ovl9
/* 1B6C6C 80208C1C 00000000 */   nop
/* 1B6C70 80208C20 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 1B6C74 80208C24 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1B6C78 80208C28 3C19800E */  lui        $t9, %hi(D_800E6A10)
/* 1B6C7C 80208C2C 27396A10 */  addiu      $t9, $t9, %lo(D_800E6A10)
/* 1B6C80 80208C30 000FC080 */  sll        $t8, $t7, 2
/* 1B6C84 80208C34 03191821 */  addu       $v1, $t8, $t9
/* 1B6C88 80208C38 C4660000 */  lwc1       $f6, 0x0($v1)
/* 1B6C8C 80208C3C 46003207 */  neg.s      $f8, $f6
/* 1B6C90 80208C40 E4680000 */  swc1       $f8, 0x0($v1)
.L80208C44_ovl9:
/* 1B6C94 80208C44 0C02A7A9 */  jal        func_800A9EA4
/* 1B6C98 80208C48 00E02025 */   or        $a0, $a3, $zero
/* 1B6C9C 80208C4C 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 1B6CA0 80208C50 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 1B6CA4 80208C54 8CC20000 */  lw         $v0, 0x0($a2)
/* 1B6CA8 80208C58 44805000 */  mtc1       $zero, $f10
/* 1B6CAC 80208C5C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1B6CB0 80208C60 8C490000 */  lw         $t1, 0x0($v0)
/* 1B6CB4 80208C64 8FA40018 */  lw         $a0, 0x18($sp)
/* 1B6CB8 80208C68 00094080 */  sll        $t0, $t1, 2
/* 1B6CBC 80208C6C 00280821 */  addu       $at, $at, $t0
/* 1B6CC0 80208C70 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1B6CC4 80208C74 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1B6CC8 80208C78 3C01BFC0 */  lui        $at, (0xBFC00000 >> 16)
/* 1B6CCC 80208C7C 44818000 */  mtc1       $at, $f16
/* 1B6CD0 80208C80 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1B6CD4 80208C84 000A5880 */  sll        $t3, $t2, 2
/* 1B6CD8 80208C88 002B0821 */  addu       $at, $at, $t3
/* 1B6CDC 80208C8C E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1B6CE0 80208C90 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1B6CE4 80208C94 3C018022 */  lui        $at, %hi(D_8021DAE4_ovl9)
/* 1B6CE8 80208C98 C432DAE4 */  lwc1       $f18, %lo(D_8021DAE4_ovl9)($at)
/* 1B6CEC 80208C9C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1B6CF0 80208CA0 000C6880 */  sll        $t5, $t4, 2
/* 1B6CF4 80208CA4 002D0821 */  addu       $at, $at, $t5
/* 1B6CF8 80208CA8 0C082391 */  jal        func_80208E44_ovl9
/* 1B6CFC 80208CAC E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
/* 1B6D00 80208CB0 0C02BE85 */  jal        func_800AFA14
/* 1B6D04 80208CB4 00000000 */   nop
/* 1B6D08 80208CB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B6D0C 80208CBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B6D10 80208CC0 03E00008 */  jr         $ra
/* 1B6D14 80208CC4 00000000 */   nop
