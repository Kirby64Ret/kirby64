glabel func_801DC83C_ovl16
/* 212AEC 801DC83C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 212AF0 801DC840 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 212AF4 801DC844 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 212AF8 801DC848 AFBF0014 */  sw         $ra, 0x14($sp)
/* 212AFC 801DC84C AFA40040 */  sw         $a0, 0x40($sp)
.L801DC850_ovl12:
/* 212B00 801DC850 AFA50044 */  sw         $a1, 0x44($sp)
.L801DC854_ovl14:
/* 212B04 801DC854 8DC40000 */  lw         $a0, 0x0($t6)
/* 212B08 801DC858 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 212B0C 801DC85C 00047880 */  sll        $t7, $a0, 2
/* 212B10 801DC860 030FC021 */  addu       $t8, $t8, $t7
/* 212B14 801DC864 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
.L801DC868_ovl17:
/* 212B18 801DC868 0C044554 */  jal        func_80111550
/* 212B1C 801DC86C AFB8001C */   sw        $t8, 0x1C($sp)
.L801DC870_ovl10:
/* 212B20 801DC870 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 212B24 801DC874 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
.L801DC878_ovl14:
/* 212B28 801DC878 8FB9001C */  lw         $t9, 0x1C($sp)
.L801DC87C_ovl17:
/* 212B2C 801DC87C 8D050000 */  lw         $a1, 0x0($t0)
/* 212B30 801DC880 0C044722 */  jal        func_80111C88
.L801DC884_ovl12:
/* 212B34 801DC884 8F24008C */   lw        $a0, 0x8C($t9)
.L801DC888_ovl9:
/* 212B38 801DC888 1040000D */  beqz       $v0, func_801DC8C0_ovl16
/* 212B3C 801DC88C 00402025 */   or        $a0, $v0, $zero
glabel func_801DC890_ovl15
/* 212B40 801DC890 8FA30040 */  lw         $v1, 0x40($sp)
/* 212B44 801DC894 50600004 */  beql       $v1, $zero, .L801DC8A8_ovl16
/* 212B48 801DC898 8FA30044 */   lw        $v1, 0x44($sp)
.L801DC89C_ovl14:
/* 212B4C 801DC89C 8C490024 */  lw         $t1, 0x24($v0)
.L801DC8A0_ovl11:
/* 212B50 801DC8A0 AD230008 */  sw         $v1, 0x8($t1)
/* 212B54 801DC8A4 8FA30044 */  lw         $v1, 0x44($sp)
.L801DC8A8_ovl16:
/* 212B58 801DC8A8 10600003 */  beqz       $v1, .L801DC8B8_ovl16
/* 212B5C 801DC8AC 00000000 */   nop
/* 212B60 801DC8B0 8C4A0024 */  lw         $t2, 0x24($v0)
.L801DC8B4_ovl17:
/* 212B64 801DC8B4 AD430030 */  sw         $v1, 0x30($t2)
.L801DC8B8_ovl16:
/* 212B68 801DC8B8 0C0447B3 */  jal        func_80111ECC
.L801DC8BC_ovl14:
/* 212B6C 801DC8BC 00000000 */   nop
glabel func_801DC8C0_ovl16
/* 212B70 801DC8C0 0C0442C0 */  jal        func_80110B00
.L801DC8C4_ovl17:
/* 212B74 801DC8C4 27A40020 */   addiu     $a0, $sp, 0x20
/* 212B78 801DC8C8 0C044054 */  jal        func_80110150
glabel func_801DC8CC_ovl13
/* 212B7C 801DC8CC 27A40020 */   addiu     $a0, $sp, 0x20
/* 212B80 801DC8D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 212B84 801DC8D4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 212B88 801DC8D8 00001025 */  or         $v0, $zero, $zero
/* 212B8C 801DC8DC 03E00008 */  jr         $ra
/* 212B90 801DC8E0 00000000 */   nop
