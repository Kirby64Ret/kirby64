glabel func_801E2BD8_ovl10
/* 1D3948 801E2BD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D394C 801E2BDC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1D3950 801E2BE0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1D3954 801E2BE4 AFBF0014 */  sw         $ra, 0x14($sp)
.L801E2BE8_ovl15:
/* 1D3958 801E2BE8 AFA40020 */  sw         $a0, 0x20($sp)
/* 1D395C 801E2BEC AFA50024 */  sw         $a1, 0x24($sp)
/* 1D3960 801E2BF0 8DC60000 */  lw         $a2, 0x0($t6)
.L801E2BF4_ovl13:
/* 1D3964 801E2BF4 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1D3968 801E2BF8 00067880 */  sll        $t7, $a2, 2
.L801E2BFC_ovl17:
/* 1D396C 801E2BFC 006F1821 */  addu       $v1, $v1, $t7
.L801E2C00_ovl13:
/* 1D3970 801E2C00 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
.L801E2C04_ovl13:
/* 1D3974 801E2C04 00C02025 */  or         $a0, $a2, $zero
/* 1D3978 801E2C08 8C620088 */  lw         $v0, 0x88($v1)
/* 1D397C 801E2C0C 14400003 */  bnez       $v0, .L801E2C1C_ovl17
/* 1D3980 801E2C10 00000000 */   nop
/* 1D3984 801E2C14 10000014 */  b          func_801E2C68_ovl10
/* 1D3988 801E2C18 00001025 */   or        $v0, $zero, $zero
.L801E2C1C_ovl17:
/* 1D398C 801E2C1C 0C044554 */  jal        func_80111550
/* 1D3990 801E2C20 AFA30018 */   sw        $v1, 0x18($sp)
.L801E2C24_ovl9:
/* 1D3994 801E2C24 3C188005 */  lui        $t8, %hi(D_8004A7C4)
glabel func_801E2C28_ovl17
/* 1D3998 801E2C28 8FA30018 */  lw         $v1, 0x18($sp)
/* 1D399C 801E2C2C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1D39A0 801E2C30 8C64008C */  lw         $a0, 0x8C($v1)
.L801E2C34_ovl15:
/* 1D39A4 801E2C34 0C044722 */  jal        func_80111C88
/* 1D39A8 801E2C38 8F050000 */   lw        $a1, 0x0($t8)
/* 1D39AC 801E2C3C 10400008 */  beqz       $v0, .L801E2C60_ovl10
/* 1D39B0 801E2C40 00402025 */   or        $a0, $v0, $zero
/* 1D39B4 801E2C44 8FA30020 */  lw         $v1, 0x20($sp)
/* 1D39B8 801E2C48 10600003 */  beqz       $v1, .L801E2C58_ovl10
.L801E2C4C_ovl9:
/* 1D39BC 801E2C4C 00000000 */   nop
/* 1D39C0 801E2C50 8C590024 */  lw         $t9, 0x24($v0)
glabel D_801E2C54_ovl12
/* 1D39C4 801E2C54 AF230008 */  sw         $v1, 0x8($t9)
.L801E2C58_ovl10:
/* 1D39C8 801E2C58 0C0447B3 */  jal        func_80111ECC
/* 1D39CC 801E2C5C 00000000 */   nop
.L801E2C60_ovl10:
/* 1D39D0 801E2C60 0C044054 */  jal        func_80110150
/* 1D39D4 801E2C64 8FA40024 */   lw        $a0, 0x24($sp)
glabel func_801E2C68_ovl10
/* 1D39D8 801E2C68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D39DC 801E2C6C 27BD0020 */  addiu      $sp, $sp, 0x20
.L801E2C70_ovl17:
/* 1D39E0 801E2C70 03E00008 */  jr         $ra
/* 1D39E4 801E2C74 00000000 */   nop
