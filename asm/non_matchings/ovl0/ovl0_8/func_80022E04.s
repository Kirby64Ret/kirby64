glabel func_80022E04
/* 023A04 80022E04 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 023A08 80022E08 AFA40050 */  sw    $a0, 0x50($sp)
/* 023A0C 80022E0C AFBF0034 */  sw    $ra, 0x34($sp)
/* 023A10 80022E10 AFB00018 */  sw    $s0, 0x18($sp)
/* 023A14 80022E14 3C048009 */  lui   $a0, %hi(D_80096F00) # $a0, 0x8009
/* 023A18 80022E18 3C058009 */  lui   $a1, %hi(D_80096F10) # $a1, 0x8009
/* 023A1C 80022E1C 3C068009 */  lui   $a2, %hi(D_80096F08) # $a2, 0x8009
/* 023A20 80022E20 AFB60030 */  sw    $s6, 0x30($sp)
/* 023A24 80022E24 AFB5002C */  sw    $s5, 0x2c($sp)
/* 023A28 80022E28 AFB40028 */  sw    $s4, 0x28($sp)
/* 023A2C 80022E2C AFB30024 */  sw    $s3, 0x24($sp)
/* 023A30 80022E30 AFB20020 */  sw    $s2, 0x20($sp)
/* 023A34 80022E34 AFB1001C */  sw    $s1, 0x1c($sp)
/* 023A38 80022E38 00008025 */  move  $s0, $zero
/* 023A3C 80022E3C 24C66F08 */  addiu $a2, %lo(D_80096F08) # addiu $a2, $a2, 0x6f08
/* 023A40 80022E40 24A56F10 */  addiu $a1, %lo(D_80096F10) # addiu $a1, $a1, 0x6f10
/* 023A44 80022E44 24846F00 */  addiu $a0, %lo(D_80096F00) # addiu $a0, $a0, 0x6f00
/* 023A48 80022E48 0C00027A */  jal   func_800009E8
/* 023A4C 80022E4C 24070001 */   li    $a3, 1
/* 023A50 80022E50 3C158004 */  lui   $s5, %hi(D_8003DCA4) # $s5, 0x8004
/* 023A54 80022E54 3C138009 */  lui   $s3, %hi(gCrashScreenFramebuffer) # $s3, 0x8009
/* 023A58 80022E58 3C118004 */  lui   $s1, %hi(D_8003F688) # $s1, 0x8004
/* 023A5C 80022E5C 2631F688 */  addiu $s1, %lo(D_8003F688) # addiu $s1, $s1, -0x978
/* 023A60 80022E60 26736EF8 */  addiu $s3, %lo(gCrashScreenFramebuffer) # addiu $s3, $s3, 0x6ef8
/* 023A64 80022E64 26B5DCA4 */  addiu $s5, %lo(D_8003DCA4) # addiu $s5, $s5, -0x235c
/* 023A68 80022E68 24160001 */  li    $s6, 1
/* 023A6C 80022E6C 8FB40048 */  lw    $s4, 0x48($sp)
.L80022E70_ovl0:
/* 023A70 80022E70 3C048009 */  lui   $a0, %hi(D_80096F10) # $a0, 0x8009
/* 023A74 80022E74 24846F10 */  addiu $a0, %lo(D_80096F10) # addiu $a0, $a0, 0x6f10
/* 023A78 80022E78 27A5004C */  addiu $a1, $sp, 0x4c
/* 023A7C 80022E7C 0C00B540 */  jal   osRecvMesg
/* 023A80 80022E80 24060001 */   li    $a2, 1
/* 023A84 80022E84 922E0000 */  lbu   $t6, ($s1)
/* 023A88 80022E88 15C0FFF9 */  bnez  $t6, .L80022E70_ovl0
/* 023A8C 80022E8C 00000000 */   nop   
/* 023A90 80022E90 8EA20000 */  lw    $v0, ($s5)
/* 023A94 80022E94 56820004 */  bnel  $s4, $v0, .L80022EA8_ovl0
/* 023A98 80022E98 00008025 */   move  $s0, $zero
/* 023A9C 80022E9C 10000002 */  b     .L80022EA8_ovl0
/* 023AA0 80022EA0 26100001 */   addiu $s0, $s0, 1
/* 023AA4 80022EA4 00008025 */  move  $s0, $zero
.L80022EA8_ovl0:
/* 023AA8 80022EA8 2A01012C */  slti  $at, $s0, 0x12c
/* 023AAC 80022EAC 1420FFF0 */  bnez  $at, .L80022E70_ovl0
/* 023AB0 80022EB0 0040A025 */   move  $s4, $v0
/* 023AB4 80022EB4 A2360000 */  sb    $s6, ($s1)
/* 023AB8 80022EB8 0C00CFF0 */  jal   osGetThreadPri
/* 023ABC 80022EBC 00002025 */   move  $a0, $zero
/* 023AC0 80022EC0 00409025 */  move  $s2, $v0
/* 023AC4 80022EC4 00002025 */  move  $a0, $zero
/* 023AC8 80022EC8 0C00CFB8 */  jal   osSetThreadPri
/* 023ACC 80022ECC 240500FA */   li    $a1, 250
/* 023AD0 80022ED0 00002025 */  move  $a0, $zero
/* 023AD4 80022ED4 0C008892 */  jal   func_80022248
/* 023AD8 80022ED8 00002825 */   move  $a1, $zero
/* 023ADC 80022EDC 24042030 */  li    $a0, 8240
/* 023AE0 80022EE0 0C008892 */  jal   func_80022248
/* 023AE4 80022EE4 00002825 */   move  $a1, $zero
/* 023AE8 80022EE8 00002025 */  move  $a0, $zero
/* 023AEC 80022EEC 0C008892 */  jal   func_80022248
/* 023AF0 80022EF0 00002825 */   move  $a1, $zero
/* 023AF4 80022EF4 24040808 */  li    $a0, 2056
/* 023AF8 80022EF8 0C008892 */  jal   func_80022248
/* 023AFC 80022EFC 00002825 */   move  $a1, $zero
/* 023B00 80022F00 00002025 */  move  $a0, $zero
/* 023B04 80022F04 0C008892 */  jal   func_80022248
/* 023B08 80022F08 00002825 */   move  $a1, $zero
/* 023B0C 80022F0C 34048200 */  li    $a0, 33280
/* 023B10 80022F10 0C008892 */  jal   func_80022248
/* 023B14 80022F14 00002825 */   move  $a1, $zero
/* 023B18 80022F18 00002025 */  move  $a0, $zero
/* 023B1C 80022F1C 0C008892 */  jal   func_80022248
/* 023B20 80022F20 00002825 */   move  $a1, $zero
/* 023B24 80022F24 24044100 */  li    $a0, 16640
/* 023B28 80022F28 0C008892 */  jal   func_80022248
/* 023B2C 80022F2C 00002825 */   move  $a1, $zero
/* 023B30 80022F30 00002025 */  move  $a0, $zero
/* 023B34 80022F34 0C008892 */  jal   func_80022248
/* 023B38 80022F38 00002825 */   move  $a1, $zero
/* 023B3C 80022F3C 24040404 */  li    $a0, 1028
/* 023B40 80022F40 0C008892 */  jal   func_80022248
/* 023B44 80022F44 00002825 */   move  $a1, $zero
/* 023B48 80022F48 3C048004 */  lui   $a0, %hi(gGameThread) # $a0, 0x8004
/* 023B4C 80022F4C 24843DA0 */  addiu $a0, %lo(gGameThread) # addiu $a0, $a0, 0x3da0
/* 023B50 80022F50 0C0088B1 */  jal   func_800222C4
/* 023B54 80022F54 24050002 */   li    $a1, 2
/* 023B58 80022F58 8E6F0000 */  lw    $t7, ($s3)
/* 023B5C 80022F5C 00002025 */  move  $a0, $zero
/* 023B60 80022F60 51E0001D */  beql  $t7, $zero, .L80022FD8_ovl0
/* 023B64 80022F64 00002025 */   move  $a0, $zero
/* 023B68 80022F68 0C008892 */  jal   func_80022248
/* 023B6C 80022F6C 00002825 */   move  $a1, $zero
/* 023B70 80022F70 24042030 */  li    $a0, 8240
/* 023B74 80022F74 0C008892 */  jal   func_80022248
/* 023B78 80022F78 00002825 */   move  $a1, $zero
/* 023B7C 80022F7C 24040019 */  li    $a0, 25
/* 023B80 80022F80 24050014 */  li    $a1, 20
/* 023B84 80022F84 2406010E */  li    $a2, 270
/* 023B88 80022F88 0C00874D */  jal   crash_screen_draw_rect
/* 023B8C 80022F8C 240700D2 */   li    $a3, 210
/* 023B90 80022F90 2404001E */  li    $a0, 30
/* 023B94 80022F94 0C008A91 */  jal   func_80022A44
/* 023B98 80022F98 24050019 */   li    $a1, 25
/* 023B9C 80022F9C 8E790000 */  lw    $t9, ($s3)
/* 023BA0 80022FA0 0320F809 */  jalr  $t9
/* 023BA4 80022FA4 00000000 */  nop   
/* 023BA8 80022FA8 1040000A */  beqz  $v0, .L80022FD4_ovl0
/* 023BAC 80022FAC 00408025 */   move  $s0, $v0
/* 023BB0 80022FB0 00002025 */  move  $a0, $zero
/* 023BB4 80022FB4 0C008892 */  jal   func_80022248
/* 023BB8 80022FB8 00002825 */   move  $a1, $zero
/* 023BBC 80022FBC 24042030 */  li    $a0, 8240
/* 023BC0 80022FC0 0C008892 */  jal   func_80022248
/* 023BC4 80022FC4 00002825 */   move  $a1, $zero
/* 023BC8 80022FC8 02002025 */  move  $a0, $s0
/* 023BCC 80022FCC 0C0088B1 */  jal   func_800222C4
/* 023BD0 80022FD0 00002825 */   move  $a1, $zero
.L80022FD4_ovl0:
/* 023BD4 80022FD4 00002025 */  move  $a0, $zero
.L80022FD8_ovl0:
/* 023BD8 80022FD8 00002825 */  move  $a1, $zero
/* 023BDC 80022FDC 0C008892 */  jal   func_80022248
/* 023BE0 80022FE0 00008025 */   move  $s0, $zero
/* 023BE4 80022FE4 24042030 */  li    $a0, 8240
/* 023BE8 80022FE8 0C008892 */  jal   func_80022248
/* 023BEC 80022FEC 00002825 */   move  $a1, $zero
/* 023BF0 80022FF0 00002025 */  move  $a0, $zero
/* 023BF4 80022FF4 0C00CFB8 */  jal   osSetThreadPri
/* 023BF8 80022FF8 02402825 */   move  $a1, $s2
/* 023BFC 80022FFC 1000FF9C */  b     .L80022E70_ovl0
/* 023C00 80023000 A2200000 */   sb    $zero, ($s1)
/* 023C04 80023004 00000000 */  nop   
/* 023C08 80023008 00000000 */  nop   
/* 023C0C 8002300C 00000000 */  nop   
/* 023C10 80023010 00000000 */  nop   
/* 023C14 80023014 00000000 */  nop   
/* 023C18 80023018 00000000 */  nop   
/* 023C1C 8002301C 00000000 */  nop   
/* 023C20 80023020 8FBF0034 */  lw    $ra, 0x34($sp)
/* 023C24 80023024 8FB00018 */  lw    $s0, 0x18($sp)
/* 023C28 80023028 8FB1001C */  lw    $s1, 0x1c($sp)
/* 023C2C 8002302C 8FB20020 */  lw    $s2, 0x20($sp)
/* 023C30 80023030 8FB30024 */  lw    $s3, 0x24($sp)
/* 023C34 80023034 8FB40028 */  lw    $s4, 0x28($sp)
/* 023C38 80023038 8FB5002C */  lw    $s5, 0x2c($sp)
/* 023C3C 8002303C 8FB60030 */  lw    $s6, 0x30($sp)
/* 023C40 80023040 03E00008 */  jr    $ra
/* 023C44 80023044 27BD0050 */   addiu $sp, $sp, 0x50
