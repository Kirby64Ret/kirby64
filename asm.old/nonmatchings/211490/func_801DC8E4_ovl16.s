glabel func_801DC8E4_ovl16
/* 212B94 801DC8E4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 212B98 801DC8E8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801DC8EC_ovl11:
/* 212B9C 801DC8EC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 212BA0 801DC8F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 212BA4 801DC8F4 AFA40040 */  sw         $a0, 0x40($sp)
glabel func_801DC8F8_ovl11
/* 212BA8 801DC8F8 8DC40000 */  lw         $a0, 0x0($t6)
.L801DC8FC_ovl17:
/* 212BAC 801DC8FC 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 212BB0 801DC900 00047880 */  sll        $t7, $a0, 2
/* 212BB4 801DC904 030FC021 */  addu       $t8, $t8, $t7
/* 212BB8 801DC908 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
.L801DC90C_ovl17:
/* 212BBC 801DC90C 0C044554 */  jal        func_80111550
/* 212BC0 801DC910 AFB8001C */   sw        $t8, 0x1C($sp)
/* 212BC4 801DC914 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 212BC8 801DC918 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
glabel func_801DC91C_ovl17
/* 212BCC 801DC91C 8FB9001C */  lw         $t9, 0x1C($sp)
/* 212BD0 801DC920 8D050000 */  lw         $a1, 0x0($t0)
/* 212BD4 801DC924 0C044722 */  jal        func_80111C88
.L801DC928_ovl12:
/* 212BD8 801DC928 8F24008C */   lw        $a0, 0x8C($t9)
/* 212BDC 801DC92C 1040000D */  beqz       $v0, .L801DC964_ovl16
glabel func_801DC930_ovl12
/* 212BE0 801DC930 00402025 */   or        $a0, $v0, $zero
/* 212BE4 801DC934 8FA30040 */  lw         $v1, 0x40($sp)
/* 212BE8 801DC938 10600008 */  beqz       $v1, .L801DC95C_ovl16
/* 212BEC 801DC93C 00000000 */   nop
/* 212BF0 801DC940 8C490024 */  lw         $t1, 0x24($v0)
.L801DC944_ovl14:
/* 212BF4 801DC944 AD230008 */  sw         $v1, 0x8($t1)
/* 212BF8 801DC948 8FAA001C */  lw         $t2, 0x1C($sp)
/* 212BFC 801DC94C 8C4C0024 */  lw         $t4, 0x24($v0)
.L801DC950_ovl13:
/* 212C00 801DC950 8D4B0080 */  lw         $t3, 0x80($t2)
glabel func_801DC954_ovl14
/* 212C04 801DC954 C5640010 */  lwc1       $f4, 0x10($t3)
/* 212C08 801DC958 E5840018 */  swc1       $f4, 0x18($t4)
.L801DC95C_ovl16:
/* 212C0C 801DC95C 0C0447B3 */  jal        func_80111ECC
/* 212C10 801DC960 00000000 */   nop
.L801DC964_ovl16:
/* 212C14 801DC964 0C0442C0 */  jal        func_80110B00
.L801DC968_ovl17:
/* 212C18 801DC968 27A40020 */   addiu     $a0, $sp, 0x20
/* 212C1C 801DC96C 0C0443F5 */  jal        func_80110FD4
/* 212C20 801DC970 27A40020 */   addiu     $a0, $sp, 0x20
/* 212C24 801DC974 0C044054 */  jal        func_80110150
.L801DC978_ovl10:
/* 212C28 801DC978 27A40020 */   addiu     $a0, $sp, 0x20
.L801DC97C_ovl10:
/* 212C2C 801DC97C 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DC980_ovl17:
/* 212C30 801DC980 27BD0040 */  addiu      $sp, $sp, 0x40
.L801DC984_ovl14:
/* 212C34 801DC984 00001025 */  or         $v0, $zero, $zero
/* 212C38 801DC988 03E00008 */  jr         $ra
glabel func_801DC98C_ovl17
/* 212C3C 801DC98C 00000000 */   nop
