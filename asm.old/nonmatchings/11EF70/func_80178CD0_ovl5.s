glabel func_80178CD0_ovl5
/* 120140 80178CD0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 120144 80178CD4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 120148 80178CD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12014C 80178CDC AFBF001C */  sw         $ra, 0x1C($sp)
/* 120150 80178CE0 AFA40020 */  sw         $a0, 0x20($sp)
/* 120154 80178CE4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 120158 80178CE8 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 12015C 80178CEC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 120160 80178CF0 000E7880 */  sll        $t7, $t6, 2
/* 120164 80178CF4 002F0821 */  addu       $at, $at, $t7
/* 120168 80178CF8 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
/* 12016C 80178CFC 8C580000 */  lw         $t8, 0x0($v0)
/* 120170 80178D00 3C05800B */  lui        $a1, %hi(func_800B1434)
/* 120174 80178D04 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
/* 120178 80178D08 0018C880 */  sll        $t9, $t8, 2
/* 12017C 80178D0C 00992021 */  addu       $a0, $a0, $t9
/* 120180 80178D10 0C02C7DA */  jal        func_800B1F68
/* 120184 80178D14 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 120188 80178D18 3C05800B */  lui        $a1, %hi(func_800AD1A0)
/* 12018C 80178D1C 2408000E */  addiu      $t0, $zero, 0xE
/* 120190 80178D20 AFA80010 */  sw         $t0, 0x10($sp)
/* 120194 80178D24 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
.L80178D28_ovl3:
/* 120198 80178D28 8FA40020 */  lw         $a0, 0x20($sp)
/* 12019C 80178D2C 2406000E */  addiu      $a2, $zero, 0xE
/* 1201A0 80178D30 0C00297F */  jal        func_8000A5FC
/* 1201A4 80178D34 3C078000 */   lui       $a3, (0x80000000 >> 16)
/* 1201A8 80178D38 3C058019 */  lui        $a1, %hi(D_801883B0_ovl5)
/* 1201AC 80178D3C 24A583B0 */  addiu      $a1, $a1, %lo(D_801883B0_ovl5)
/* 1201B0 80178D40 0C0571D0 */  jal        func_8015C740_ovl5
/* 1201B4 80178D44 8FA40020 */   lw        $a0, 0x20($sp)
/* 1201B8 80178D48 3C058019 */  lui        $a1, %hi(D_801883D0_ovl5)
/* 1201BC 80178D4C 24A583D0 */  addiu      $a1, $a1, %lo(D_801883D0_ovl5)
/* 1201C0 80178D50 0C0571D0 */  jal        func_8015C740_ovl5
/* 1201C4 80178D54 8FA40020 */   lw        $a0, 0x20($sp)
/* 1201C8 80178D58 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 1201CC 80178D5C 44812000 */  mtc1       $at, $f4
/* 1201D0 80178D60 3C058019 */  lui        $a1, %hi(D_801883F0_ovl5)
/* 1201D4 80178D64 24A583F0 */  addiu      $a1, $a1, %lo(D_801883F0_ovl5)
/* 1201D8 80178D68 E4440028 */  swc1       $f4, 0x28($v0)
/* 1201DC 80178D6C 0C0571D0 */  jal        func_8015C740_ovl5
/* 1201E0 80178D70 8FA40020 */   lw        $a0, 0x20($sp)
.L80178D74_ovl5:
/* 1201E4 80178D74 0C002DAF */  jal        finish_current_thread
/* 1201E8 80178D78 24040001 */   addiu     $a0, $zero, 0x1
/* 1201EC 80178D7C 1000FFFD */  b          .L80178D74_ovl5
/* 1201F0 80178D80 00000000 */   nop
/* 1201F4 80178D84 00000000 */  nop
/* 1201F8 80178D88 00000000 */  nop
/* 1201FC 80178D8C 00000000 */  nop
/* 120200 80178D90 00000000 */  nop
/* 120204 80178D94 00000000 */  nop
/* 120208 80178D98 00000000 */  nop
/* 12020C 80178D9C 00000000 */  nop
/* 120210 80178DA0 8FBF001C */  lw         $ra, 0x1C($sp)
.L80178DA4_ovl3:
/* 120214 80178DA4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 120218 80178DA8 03E00008 */  jr         $ra
/* 12021C 80178DAC 00000000 */   nop
