glabel func_80204D5C_ovl9
/* 1B2DAC 80204D5C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1B2DB0 80204D60 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1B2DB4 80204D64 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1B2DB8 80204D68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B2DBC 80204D6C AFA40050 */  sw         $a0, 0x50($sp)
/* 1B2DC0 80204D70 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1B2DC4 80204D74 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 1B2DC8 80204D78 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
/* 1B2DCC 80204D7C 000FC080 */  sll        $t8, $t7, 2
/* 1B2DD0 80204D80 0338C821 */  addu       $t9, $t9, $t8
/* 1B2DD4 80204D84 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 1B2DD8 80204D88 44816000 */  mtc1       $at, $f12
/* 1B2DDC 80204D8C 0C0669FA */  jal        func_8019A7E8_ovl7
/* 1B2DE0 80204D90 AFB9004C */   sw        $t9, 0x4C($sp)
/* 1B2DE4 80204D94 14400013 */  bnez       $v0, .L80204DE4_ovl9
/* 1B2DE8 80204D98 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* 1B2DEC 80204D9C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B2DF0 80204DA0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B2DF4 80204DA4 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B2DF8 80204DA8 24080003 */  addiu      $t0, $zero, 0x3
/* 1B2DFC 80204DAC 8C690000 */  lw         $t1, 0x0($v1)
/* 1B2E00 80204DB0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1B2E04 80204DB4 3C058020 */  lui        $a1, %hi(func_80204750_ovl9)
/* 1B2E08 80204DB8 00095080 */  sll        $t2, $t1, 2
/* 1B2E0C 80204DBC 002A0821 */  addu       $at, $at, $t2
/* 1B2E10 80204DC0 AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
/* 1B2E14 80204DC4 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1B2E18 80204DC8 24A54750 */  addiu      $a1, $a1, %lo(func_80204750_ovl9)
/* 1B2E1C 80204DCC 000B6080 */  sll        $t4, $t3, 2
/* 1B2E20 80204DD0 008C2021 */  addu       $a0, $a0, $t4
/* 1B2E24 80204DD4 0C02C7B2 */  jal        assign_new_process_entry
/* 1B2E28 80204DD8 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1B2E2C 80204DDC 10000065 */  b          .L80204F74_ovl9
/* 1B2E30 80204DE0 8FBF0014 */   lw        $ra, 0x14($sp)
.L80204DE4_ovl9:
/* 1B2E34 80204DE4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B2E38 80204DE8 3C05800E */  lui        $a1, %hi(D_800E6A10)
/* 1B2E3C 80204DEC 24A56A10 */  addiu      $a1, $a1, %lo(D_800E6A10)
/* 1B2E40 80204DF0 8C620000 */  lw         $v0, 0x0($v1)
/* 1B2E44 80204DF4 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 1B2E48 80204DF8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B2E4C 80204DFC 00021080 */  sll        $v0, $v0, 2
/* 1B2E50 80204E00 00A26821 */  addu       $t5, $a1, $v0
/* 1B2E54 80204E04 C5A40000 */  lwc1       $f4, 0x0($t5)
/* 1B2E58 80204E08 00220821 */  addu       $at, $at, $v0
/* 1B2E5C 80204E0C 240E0003 */  addiu      $t6, $zero, 0x3
/* 1B2E60 80204E10 46062032 */  c.eq.s     $f4, $f6
/* 1B2E64 80204E14 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1B2E68 80204E18 4501000B */  bc1t       .L80204E48_ovl9
/* 1B2E6C 80204E1C 00000000 */   nop
/* 1B2E70 80204E20 AC2EDC50 */  sw         $t6, %lo(gEntityVtableIndexArray)($at)
/* 1B2E74 80204E24 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1B2E78 80204E28 3C058020 */  lui        $a1, %hi(func_80204750_ovl9)
/* 1B2E7C 80204E2C 24A54750 */  addiu      $a1, $a1, %lo(func_80204750_ovl9)
/* 1B2E80 80204E30 000FC080 */  sll        $t8, $t7, 2
/* 1B2E84 80204E34 00982021 */  addu       $a0, $a0, $t8
/* 1B2E88 80204E38 0C02C7B2 */  jal        assign_new_process_entry
/* 1B2E8C 80204E3C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1B2E90 80204E40 1000004C */  b          .L80204F74_ovl9
/* 1B2E94 80204E44 8FBF0014 */   lw        $ra, 0x14($sp)
.L80204E48_ovl9:
/* 1B2E98 80204E48 0C066A40 */  jal        func_8019A900_ovl7
/* 1B2E9C 80204E4C 27A40044 */   addiu     $a0, $sp, 0x44
/* 1B2EA0 80204E50 C7A80048 */  lwc1       $f8, 0x48($sp)
/* 1B2EA4 80204E54 0C066C51 */  jal        func_8019B144_ovl7
/* 1B2EA8 80204E58 E7A80038 */   swc1      $f8, 0x38($sp)
/* 1B2EAC 80204E5C 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1B2EB0 80204E60 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1B2EB4 80204E64 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1B2EB8 80204E68 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 1B2EBC 80204E6C 8F290000 */  lw         $t1, 0x0($t9)
/* 1B2EC0 80204E70 00094080 */  sll        $t0, $t1, 2
/* 1B2EC4 80204E74 00280821 */  addu       $at, $at, $t0
/* 1B2EC8 80204E78 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 1B2ECC 80204E7C 0C0061C3 */  jal        atan2f
/* 1B2ED0 80204E80 460A0301 */   sub.s     $f12, $f0, $f10
/* 1B2ED4 80204E84 44801000 */  mtc1       $zero, $f2
/* 1B2ED8 80204E88 3C018022 */  lui        $at, %hi(D_8021DA7C_ovl9)
/* 1B2EDC 80204E8C C430DA7C */  lwc1       $f16, %lo(D_8021DA7C_ovl9)($at)
/* 1B2EE0 80204E90 44060000 */  mfc1       $a2, $f0
/* 1B2EE4 80204E94 27A4002C */  addiu      $a0, $sp, 0x2C
/* 1B2EE8 80204E98 24050004 */  addiu      $a1, $zero, 0x4
/* 1B2EEC 80204E9C E7A20034 */  swc1       $f2, 0x34($sp)
/* 1B2EF0 80204EA0 E7A20030 */  swc1       $f2, 0x30($sp)
/* 1B2EF4 80204EA4 0C006424 */  jal        lbvector_Rotate
/* 1B2EF8 80204EA8 E7B0002C */   swc1      $f16, 0x2C($sp)
/* 1B2EFC 80204EAC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B2F00 80204EB0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B2F04 80204EB4 C7B2002C */  lwc1       $f18, 0x2C($sp)
/* 1B2F08 80204EB8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1B2F0C 80204EBC 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1B2F10 80204EC0 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 1B2F14 80204EC4 8FAE004C */  lw         $t6, 0x4C($sp)
/* 1B2F18 80204EC8 000A5880 */  sll        $t3, $t2, 2
/* 1B2F1C 80204ECC 002B0821 */  addu       $at, $at, $t3
/* 1B2F20 80204ED0 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
/* 1B2F24 80204ED4 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1B2F28 80204ED8 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1B2F2C 80204EDC 8FB80044 */  lw         $t8, 0x44($sp)
/* 1B2F30 80204EE0 000C6880 */  sll        $t5, $t4, 2
/* 1B2F34 80204EE4 002D0821 */  addu       $at, $at, $t5
/* 1B2F38 80204EE8 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
/* 1B2F3C 80204EEC 91CF003C */  lbu        $t7, 0x3C($t6)
/* 1B2F40 80204EF0 55E00020 */  bnel       $t7, $zero, .L80204F74_ovl9
/* 1B2F44 80204EF4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1B2F48 80204EF8 44983000 */  mtc1       $t8, $f6
/* 1B2F4C 80204EFC 8C620000 */  lw         $v0, 0x0($v1)
/* 1B2F50 80204F00 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1B2F54 80204F04 46803220 */  cvt.s.w    $f8, $f6
/* 1B2F58 80204F08 00021080 */  sll        $v0, $v0, 2
/* 1B2F5C 80204F0C 00220821 */  addu       $at, $at, $v0
/* 1B2F60 80204F10 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 1B2F64 80204F14 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1B2F68 80204F18 00220821 */  addu       $at, $at, $v0
/* 1B2F6C 80204F1C 460A4032 */  c.eq.s     $f8, $f10
/* 1B2F70 80204F20 00000000 */  nop
/* 1B2F74 80204F24 45030013 */  bc1tl      .L80204F74_ovl9
/* 1B2F78 80204F28 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1B2F7C 80204F2C C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* 1B2F80 80204F30 44808000 */  mtc1       $zero, $f16
/* 1B2F84 80204F34 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1B2F88 80204F38 44819000 */  mtc1       $at, $f18
/* 1B2F8C 80204F3C 4610003C */  c.lt.s     $f0, $f16
/* 1B2F90 80204F40 00000000 */  nop
/* 1B2F94 80204F44 45020004 */  bc1fl      .L80204F58_ovl9
/* 1B2F98 80204F48 46000086 */   mov.s     $f2, $f0
/* 1B2F9C 80204F4C 10000002 */  b          .L80204F58_ovl9
/* 1B2FA0 80204F50 46000087 */   neg.s     $f2, $f0
/* 1B2FA4 80204F54 46000086 */  mov.s      $f2, $f0
.L80204F58_ovl9:
/* 1B2FA8 80204F58 4612103C */  c.lt.s     $f2, $f18
/* 1B2FAC 80204F5C 00000000 */  nop
/* 1B2FB0 80204F60 45020004 */  bc1fl      .L80204F74_ovl9
/* 1B2FB4 80204F64 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1B2FB8 80204F68 0C0667C7 */  jal        func_80199F1C_ovl7
/* 1B2FBC 80204F6C 8FA40050 */   lw        $a0, 0x50($sp)
/* 1B2FC0 80204F70 8FBF0014 */  lw         $ra, 0x14($sp)
.L80204F74_ovl9:
/* 1B2FC4 80204F74 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1B2FC8 80204F78 03E00008 */  jr         $ra
/* 1B2FCC 80204F7C 00000000 */   nop
