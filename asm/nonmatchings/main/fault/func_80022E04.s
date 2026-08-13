nonmatching func_80022E04, 0x244

glabel func_80022E04
    /* 23A04 80022E04 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 23A08 80022E08 AFA40050 */  sw         $a0, 0x50($sp)
    /* 23A0C 80022E0C AFBF0034 */  sw         $ra, 0x34($sp)
    /* 23A10 80022E10 AFB00018 */  sw         $s0, 0x18($sp)
    /* 23A14 80022E14 3C048009 */  lui        $a0, %hi(D_80096F00)
    /* 23A18 80022E18 3C058009 */  lui        $a1, %hi(D_80096F10)
    /* 23A1C 80022E1C 3C068009 */  lui        $a2, %hi(D_80096F08)
    /* 23A20 80022E20 AFB60030 */  sw         $s6, 0x30($sp)
    /* 23A24 80022E24 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 23A28 80022E28 AFB40028 */  sw         $s4, 0x28($sp)
    /* 23A2C 80022E2C AFB30024 */  sw         $s3, 0x24($sp)
    /* 23A30 80022E30 AFB20020 */  sw         $s2, 0x20($sp)
    /* 23A34 80022E34 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 23A38 80022E38 00008025 */  or         $s0, $zero, $zero
    /* 23A3C 80022E3C 24C66F08 */  addiu      $a2, $a2, %lo(D_80096F08)
    /* 23A40 80022E40 24A56F10 */  addiu      $a1, $a1, %lo(D_80096F10)
    /* 23A44 80022E44 24846F00 */  addiu      $a0, $a0, %lo(D_80096F00)
    /* 23A48 80022E48 0C00027A */  jal        scAddClient
    /* 23A4C 80022E4C 24070001 */   addiu     $a3, $zero, 0x1
    /* 23A50 80022E50 3C158004 */  lui        $s5, %hi(D_8003DCA4)
    /* 23A54 80022E54 3C138009 */  lui        $s3, %hi(gCrashScreenFramebuffer)
    /* 23A58 80022E58 3C118004 */  lui        $s1, %hi(D_8003F688)
    /* 23A5C 80022E5C 2631F688 */  addiu      $s1, $s1, %lo(D_8003F688)
    /* 23A60 80022E60 26736EF8 */  addiu      $s3, $s3, %lo(gCrashScreenFramebuffer)
    /* 23A64 80022E64 26B5DCA4 */  addiu      $s5, $s5, %lo(D_8003DCA4)
    /* 23A68 80022E68 24160001 */  addiu      $s6, $zero, 0x1
    /* 23A6C 80022E6C 8FB40048 */  lw         $s4, 0x48($sp)
  .L80022E70:
    /* 23A70 80022E70 3C048009 */  lui        $a0, %hi(D_80096F10)
    /* 23A74 80022E74 24846F10 */  addiu      $a0, $a0, %lo(D_80096F10)
    /* 23A78 80022E78 27A5004C */  addiu      $a1, $sp, 0x4C
    /* 23A7C 80022E7C 0C00B540 */  jal        osRecvMesg
    /* 23A80 80022E80 24060001 */   addiu     $a2, $zero, 0x1
    /* 23A84 80022E84 922E0000 */  lbu        $t6, 0x0($s1)
    /* 23A88 80022E88 15C0FFF9 */  bnez       $t6, .L80022E70
    /* 23A8C 80022E8C 00000000 */   nop
    /* 23A90 80022E90 8EA20000 */  lw         $v0, 0x0($s5)
    /* 23A94 80022E94 56820004 */  bnel       $s4, $v0, .L80022EA8
    /* 23A98 80022E98 00008025 */   or        $s0, $zero, $zero
    /* 23A9C 80022E9C 10000002 */  b          .L80022EA8
    /* 23AA0 80022EA0 26100001 */   addiu     $s0, $s0, 0x1
    /* 23AA4 80022EA4 00008025 */  or         $s0, $zero, $zero
  .L80022EA8:
    /* 23AA8 80022EA8 2A01012C */  slti       $at, $s0, 0x12C
    /* 23AAC 80022EAC 1420FFF0 */  bnez       $at, .L80022E70
    /* 23AB0 80022EB0 0040A025 */   or        $s4, $v0, $zero
    /* 23AB4 80022EB4 A2360000 */  sb         $s6, 0x0($s1)
    /* 23AB8 80022EB8 0C00CFF0 */  jal        osGetThreadPri
    /* 23ABC 80022EBC 00002025 */   or        $a0, $zero, $zero
    /* 23AC0 80022EC0 00409025 */  or         $s2, $v0, $zero
    /* 23AC4 80022EC4 00002025 */  or         $a0, $zero, $zero
    /* 23AC8 80022EC8 0C00CFB8 */  jal        osSetThreadPri
    /* 23ACC 80022ECC 240500FA */   addiu     $a1, $zero, 0xFA
    /* 23AD0 80022ED0 00002025 */  or         $a0, $zero, $zero
    /* 23AD4 80022ED4 0C008892 */  jal        faultWaitButton
    /* 23AD8 80022ED8 00002825 */   or        $a1, $zero, $zero
    /* 23ADC 80022EDC 24042030 */  addiu      $a0, $zero, 0x2030
    /* 23AE0 80022EE0 0C008892 */  jal        faultWaitButton
    /* 23AE4 80022EE4 00002825 */   or        $a1, $zero, $zero
    /* 23AE8 80022EE8 00002025 */  or         $a0, $zero, $zero
    /* 23AEC 80022EEC 0C008892 */  jal        faultWaitButton
    /* 23AF0 80022EF0 00002825 */   or        $a1, $zero, $zero
    /* 23AF4 80022EF4 24040808 */  addiu      $a0, $zero, 0x808
    /* 23AF8 80022EF8 0C008892 */  jal        faultWaitButton
    /* 23AFC 80022EFC 00002825 */   or        $a1, $zero, $zero
    /* 23B00 80022F00 00002025 */  or         $a0, $zero, $zero
    /* 23B04 80022F04 0C008892 */  jal        faultWaitButton
    /* 23B08 80022F08 00002825 */   or        $a1, $zero, $zero
    /* 23B0C 80022F0C 34048200 */  ori        $a0, $zero, 0x8200
    /* 23B10 80022F10 0C008892 */  jal        faultWaitButton
    /* 23B14 80022F14 00002825 */   or        $a1, $zero, $zero
    /* 23B18 80022F18 00002025 */  or         $a0, $zero, $zero
    /* 23B1C 80022F1C 0C008892 */  jal        faultWaitButton
    /* 23B20 80022F20 00002825 */   or        $a1, $zero, $zero
    /* 23B24 80022F24 24044100 */  addiu      $a0, $zero, 0x4100
    /* 23B28 80022F28 0C008892 */  jal        faultWaitButton
    /* 23B2C 80022F2C 00002825 */   or        $a1, $zero, $zero
    /* 23B30 80022F30 00002025 */  or         $a0, $zero, $zero
    /* 23B34 80022F34 0C008892 */  jal        faultWaitButton
    /* 23B38 80022F38 00002825 */   or        $a1, $zero, $zero
    /* 23B3C 80022F3C 24040404 */  addiu      $a0, $zero, 0x404
    /* 23B40 80022F40 0C008892 */  jal        faultWaitButton
    /* 23B44 80022F44 00002825 */   or        $a1, $zero, $zero
    /* 23B48 80022F48 3C048004 */  lui        $a0, %hi(gGameThread)
    /* 23B4C 80022F4C 24843DA0 */  addiu      $a0, $a0, %lo(gGameThread)
    /* 23B50 80022F50 0C0088B1 */  jal        func_800222C4
    /* 23B54 80022F54 24050002 */   addiu     $a1, $zero, 0x2
    /* 23B58 80022F58 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 23B5C 80022F5C 00002025 */  or         $a0, $zero, $zero
    /* 23B60 80022F60 51E0001D */  beql       $t7, $zero, .L80022FD8
    /* 23B64 80022F64 00002025 */   or        $a0, $zero, $zero
    /* 23B68 80022F68 0C008892 */  jal        faultWaitButton
    /* 23B6C 80022F6C 00002825 */   or        $a1, $zero, $zero
    /* 23B70 80022F70 24042030 */  addiu      $a0, $zero, 0x2030
    /* 23B74 80022F74 0C008892 */  jal        faultWaitButton
    /* 23B78 80022F78 00002825 */   or        $a1, $zero, $zero
    /* 23B7C 80022F7C 24040019 */  addiu      $a0, $zero, 0x19
    /* 23B80 80022F80 24050014 */  addiu      $a1, $zero, 0x14
    /* 23B84 80022F84 2406010E */  addiu      $a2, $zero, 0x10E
    /* 23B88 80022F88 0C00874D */  jal        crash_screen_draw_rect
    /* 23B8C 80022F8C 240700D2 */   addiu     $a3, $zero, 0xD2
    /* 23B90 80022F90 2404001E */  addiu      $a0, $zero, 0x1E
    /* 23B94 80022F94 0C008A91 */  jal        func_80022A44
    /* 23B98 80022F98 24050019 */   addiu     $a1, $zero, 0x19
    /* 23B9C 80022F9C 8E790000 */  lw         $t9, 0x0($s3)
    /* 23BA0 80022FA0 0320F809 */  jalr       $t9
    /* 23BA4 80022FA4 00000000 */   nop
    /* 23BA8 80022FA8 1040000A */  beqz       $v0, .L80022FD4
    /* 23BAC 80022FAC 00408025 */   or        $s0, $v0, $zero
    /* 23BB0 80022FB0 00002025 */  or         $a0, $zero, $zero
    /* 23BB4 80022FB4 0C008892 */  jal        faultWaitButton
    /* 23BB8 80022FB8 00002825 */   or        $a1, $zero, $zero
    /* 23BBC 80022FBC 24042030 */  addiu      $a0, $zero, 0x2030
    /* 23BC0 80022FC0 0C008892 */  jal        faultWaitButton
    /* 23BC4 80022FC4 00002825 */   or        $a1, $zero, $zero
    /* 23BC8 80022FC8 02002025 */  or         $a0, $s0, $zero
    /* 23BCC 80022FCC 0C0088B1 */  jal        func_800222C4
    /* 23BD0 80022FD0 00002825 */   or        $a1, $zero, $zero
  .L80022FD4:
    /* 23BD4 80022FD4 00002025 */  or         $a0, $zero, $zero
  .L80022FD8:
    /* 23BD8 80022FD8 00002825 */  or         $a1, $zero, $zero
    /* 23BDC 80022FDC 0C008892 */  jal        faultWaitButton
    /* 23BE0 80022FE0 00008025 */   or        $s0, $zero, $zero
    /* 23BE4 80022FE4 24042030 */  addiu      $a0, $zero, 0x2030
    /* 23BE8 80022FE8 0C008892 */  jal        faultWaitButton
    /* 23BEC 80022FEC 00002825 */   or        $a1, $zero, $zero
    /* 23BF0 80022FF0 00002025 */  or         $a0, $zero, $zero
    /* 23BF4 80022FF4 0C00CFB8 */  jal        osSetThreadPri
    /* 23BF8 80022FF8 02402825 */   or        $a1, $s2, $zero
    /* 23BFC 80022FFC 1000FF9C */  b          .L80022E70
    /* 23C00 80023000 A2200000 */   sb        $zero, 0x0($s1)
    /* 23C04 80023004 00000000 */  nop
    /* 23C08 80023008 00000000 */  nop
    /* 23C0C 8002300C 00000000 */  nop
    /* 23C10 80023010 00000000 */  nop
    /* 23C14 80023014 00000000 */  nop
    /* 23C18 80023018 00000000 */  nop
    /* 23C1C 8002301C 00000000 */  nop
    /* 23C20 80023020 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 23C24 80023024 8FB00018 */  lw         $s0, 0x18($sp)
    /* 23C28 80023028 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 23C2C 8002302C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 23C30 80023030 8FB30024 */  lw         $s3, 0x24($sp)
    /* 23C34 80023034 8FB40028 */  lw         $s4, 0x28($sp)
    /* 23C38 80023038 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 23C3C 8002303C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 23C40 80023040 03E00008 */  jr         $ra
    /* 23C44 80023044 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_80022E04
.size func_80022E04, . - func_80022E04
