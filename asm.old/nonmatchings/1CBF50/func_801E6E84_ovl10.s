glabel func_801E6E84_ovl10
/* 1D7BF4 801E6E84 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1D7BF8 801E6E88 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1D7BFC 801E6E8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D7C00 801E6E90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D7C04 801E6E94 8DC30000 */  lw         $v1, 0x0($t6)
/* 1D7C08 801E6E98 3C0F800F */  lui        $t7, %hi(D_800E9C60)
/* 1D7C0C 801E6E9C 00002825 */  or         $a1, $zero, $zero
/* 1D7C10 801E6EA0 00031880 */  sll        $v1, $v1, 2
/* 1D7C14 801E6EA4 01E37821 */  addu       $t7, $t7, $v1
.L801E6EA8_ovl9:
/* 1D7C18 801E6EA8 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
/* 1D7C1C 801E6EAC 11E00008 */  beqz       $t7, .L801E6ED0_ovl10
/* 1D7C20 801E6EB0 00000000 */   nop
/* 1D7C24 801E6EB4 0C06835D */  jal        func_801A0D74_ovl7
/* 1D7C28 801E6EB8 00000000 */   nop
/* 1D7C2C 801E6EBC 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1D7C30 801E6EC0 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1D7C34 801E6EC4 00402825 */  or         $a1, $v0, $zero
/* 1D7C38 801E6EC8 8F030000 */  lw         $v1, 0x0($t8)
/* 1D7C3C 801E6ECC 00031880 */  sll        $v1, $v1, 2
.L801E6ED0_ovl10:
/* 1D7C40 801E6ED0 14A0000B */  bnez       $a1, .L801E6F00_ovl10
/* 1D7C44 801E6ED4 3C04800E */   lui       $a0, %hi(D_800DDFD0)
.L801E6ED8_ovl9:
/* 1D7C48 801E6ED8 00832021 */  addu       $a0, $a0, $v1
/* 1D7C4C 801E6EDC 3C06801F */  lui        $a2, %hi(D_801F4534_ovl10)
/* 1D7C50 801E6EE0 24C64534 */  addiu      $a2, $a2, %lo(D_801F4534_ovl10)
/* 1D7C54 801E6EE4 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 1D7C58 801E6EE8 0C02911F */  jal        call_virtual_function
.L801E6EEC_ovl9:
/* 1D7C5C 801E6EEC 24050003 */   addiu     $a1, $zero, 0x3
/* 1D7C60 801E6EF0 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1D7C64 801E6EF4 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
.L801E6EF8_ovl9:
/* 1D7C68 801E6EF8 8F230000 */  lw         $v1, 0x0($t9)
/* 1D7C6C 801E6EFC 00031880 */  sll        $v1, $v1, 2
.L801E6F00_ovl10:
/* 1D7C70 801E6F00 3C08800F */  lui        $t0, %hi(D_800E9C60)
/* 1D7C74 801E6F04 01034021 */  addu       $t0, $t0, $v1
/* 1D7C78 801E6F08 8D089C60 */  lw         $t0, %lo(D_800E9C60)($t0)
/* 1D7C7C 801E6F0C 51000006 */  beql       $t0, $zero, .L801E6F28_ovl10
/* 1D7C80 801E6F10 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1D7C84 801E6F14 0C066FA7 */  jal        func_8019BE9C_ovl7
/* 1D7C88 801E6F18 24040001 */   addiu     $a0, $zero, 0x1
/* 1D7C8C 801E6F1C 0C07980C */  jal        func_801E6030_ovl10
/* 1D7C90 801E6F20 00000000 */   nop
.L801E6F24_ovl16:
/* 1D7C94 801E6F24 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E6F28_ovl10:
/* 1D7C98 801E6F28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D7C9C 801E6F2C 03E00008 */  jr         $ra
/* 1D7CA0 801E6F30 00000000 */   nop
