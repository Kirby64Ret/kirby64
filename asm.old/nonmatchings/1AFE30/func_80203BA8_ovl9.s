glabel func_80203BA8_ovl9
/* 1B1BF8 80203BA8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1B1BFC 80203BAC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1B1C00 80203BB0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1B1C04 80203BB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B1C08 80203BB8 AFA40050 */  sw         $a0, 0x50($sp)
/* 1B1C0C 80203BBC 8DC20000 */  lw         $v0, 0x0($t6)
/* 1B1C10 80203BC0 3C18800F */  lui        $t8, %hi(D_800E9720)
/* 1B1C14 80203BC4 27189720 */  addiu      $t8, $t8, %lo(D_800E9720)
/* 1B1C18 80203BC8 00021080 */  sll        $v0, $v0, 2
/* 1B1C1C 80203BCC 00581821 */  addu       $v1, $v0, $t8
/* 1B1C20 80203BD0 8C790000 */  lw         $t9, 0x0($v1)
/* 1B1C24 80203BD4 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 1B1C28 80203BD8 01E27821 */  addu       $t7, $t7, $v0
/* 1B1C2C 80203BDC 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 1B1C30 80203BE0 2728FFFF */  addiu      $t0, $t9, -0x1
/* 1B1C34 80203BE4 AC680000 */  sw         $t0, 0x0($v1)
/* 1B1C38 80203BE8 27A40044 */  addiu      $a0, $sp, 0x44
/* 1B1C3C 80203BEC 0C066A40 */  jal        func_8019A900_ovl7
/* 1B1C40 80203BF0 AFAF004C */   sw        $t7, 0x4C($sp)
/* 1B1C44 80203BF4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1B1C48 80203BF8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1B1C4C 80203BFC 3C0A800F */  lui        $t2, %hi(D_800E9720)
/* 1B1C50 80203C00 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1B1C54 80203C04 8D220000 */  lw         $v0, 0x0($t1)
/* 1B1C58 80203C08 3C05801A */  lui        $a1, %hi(func_801A6DF0_ovl7)
/* 1B1C5C 80203C0C 24A56DF0 */  addiu      $a1, $a1, %lo(func_801A6DF0_ovl7)
/* 1B1C60 80203C10 00021080 */  sll        $v0, $v0, 2
/* 1B1C64 80203C14 01425021 */  addu       $t2, $t2, $v0
/* 1B1C68 80203C18 8D4A9720 */  lw         $t2, %lo(D_800E9720)($t2)
/* 1B1C6C 80203C1C 00822021 */  addu       $a0, $a0, $v0
/* 1B1C70 80203C20 C7A40048 */  lwc1       $f4, 0x48($sp)
/* 1B1C74 80203C24 1D40000C */  bgtz       $t2, .L80203C58_ovl9
/* 1B1C78 80203C28 00000000 */   nop
/* 1B1C7C 80203C2C 0C02C7B2 */  jal        assign_new_process_entry
/* 1B1C80 80203C30 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1B1C84 80203C34 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 1B1C88 80203C38 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 1B1C8C 80203C3C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1B1C90 80203C40 240B0001 */  addiu      $t3, $zero, 0x1
/* 1B1C94 80203C44 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1B1C98 80203C48 000D7080 */  sll        $t6, $t5, 2
/* 1B1C9C 80203C4C 002E0821 */  addu       $at, $at, $t6
/* 1B1CA0 80203C50 10000066 */  b          .L80203DEC_ovl9
/* 1B1CA4 80203C54 AC2B9C60 */   sw        $t3, %lo(D_800E9C60)($at)
.L80203C58_ovl9:
/* 1B1CA8 80203C58 0C066C51 */  jal        func_8019B144_ovl7
/* 1B1CAC 80203C5C E7A40038 */   swc1      $f4, 0x38($sp)
/* 1B1CB0 80203C60 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1B1CB4 80203C64 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1B1CB8 80203C68 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1B1CBC 80203C6C C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 1B1CC0 80203C70 8DF80000 */  lw         $t8, 0x0($t7)
/* 1B1CC4 80203C74 0018C880 */  sll        $t9, $t8, 2
/* 1B1CC8 80203C78 00390821 */  addu       $at, $at, $t9
/* 1B1CCC 80203C7C C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1B1CD0 80203C80 0C0061C3 */  jal        atan2f
/* 1B1CD4 80203C84 46060301 */   sub.s     $f12, $f0, $f6
/* 1B1CD8 80203C88 44801000 */  mtc1       $zero, $f2
/* 1B1CDC 80203C8C 3C018022 */  lui        $at, %hi(D_8021DA60_ovl9)
/* 1B1CE0 80203C90 C428DA60 */  lwc1       $f8, %lo(D_8021DA60_ovl9)($at)
/* 1B1CE4 80203C94 44060000 */  mfc1       $a2, $f0
/* 1B1CE8 80203C98 27A4002C */  addiu      $a0, $sp, 0x2C
/* 1B1CEC 80203C9C 24050004 */  addiu      $a1, $zero, 0x4
/* 1B1CF0 80203CA0 E7A20034 */  swc1       $f2, 0x34($sp)
/* 1B1CF4 80203CA4 E7A20030 */  swc1       $f2, 0x30($sp)
/* 1B1CF8 80203CA8 0C006424 */  jal        lbvector_Rotate
/* 1B1CFC 80203CAC E7A8002C */   swc1      $f8, 0x2C($sp)
/* 1B1D00 80203CB0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B1D04 80203CB4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B1D08 80203CB8 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* 1B1D0C 80203CBC 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1B1D10 80203CC0 8C680000 */  lw         $t0, 0x0($v1)
/* 1B1D14 80203CC4 C7B00030 */  lwc1       $f16, 0x30($sp)
/* 1B1D18 80203CC8 8FAD004C */  lw         $t5, 0x4C($sp)
/* 1B1D1C 80203CCC 00084880 */  sll        $t1, $t0, 2
/* 1B1D20 80203CD0 00290821 */  addu       $at, $at, $t1
/* 1B1D24 80203CD4 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
/* 1B1D28 80203CD8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1B1D2C 80203CDC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1B1D30 80203CE0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 1B1D34 80203CE4 000A6080 */  sll        $t4, $t2, 2
/* 1B1D38 80203CE8 002C0821 */  addu       $at, $at, $t4
/* 1B1D3C 80203CEC E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1B1D40 80203CF0 91AB003C */  lbu        $t3, 0x3C($t5)
/* 1B1D44 80203CF4 55600023 */  bnel       $t3, $zero, .L80203D84_ovl9
/* 1B1D48 80203CF8 8C620000 */   lw        $v0, 0x0($v1)
/* 1B1D4C 80203CFC 448E9000 */  mtc1       $t6, $f18
/* 1B1D50 80203D00 8C620000 */  lw         $v0, 0x0($v1)
/* 1B1D54 80203D04 3C05800E */  lui        $a1, %hi(D_800E6A10)
/* 1B1D58 80203D08 46809120 */  cvt.s.w    $f4, $f18
/* 1B1D5C 80203D0C 24A56A10 */  addiu      $a1, $a1, %lo(D_800E6A10)
/* 1B1D60 80203D10 00021080 */  sll        $v0, $v0, 2
/* 1B1D64 80203D14 00A27821 */  addu       $t7, $a1, $v0
/* 1B1D68 80203D18 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 1B1D6C 80203D1C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1B1D70 80203D20 00220821 */  addu       $at, $at, $v0
/* 1B1D74 80203D24 46062032 */  c.eq.s     $f4, $f6
/* 1B1D78 80203D28 00000000 */  nop
/* 1B1D7C 80203D2C 45030015 */  bc1tl      .L80203D84_ovl9
/* 1B1D80 80203D30 8C620000 */   lw        $v0, 0x0($v1)
/* 1B1D84 80203D34 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* 1B1D88 80203D38 44804000 */  mtc1       $zero, $f8
/* 1B1D8C 80203D3C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1B1D90 80203D40 44815000 */  mtc1       $at, $f10
/* 1B1D94 80203D44 4608003C */  c.lt.s     $f0, $f8
/* 1B1D98 80203D48 00000000 */  nop
/* 1B1D9C 80203D4C 45020004 */  bc1fl      .L80203D60_ovl9
/* 1B1DA0 80203D50 46000086 */   mov.s     $f2, $f0
/* 1B1DA4 80203D54 10000002 */  b          .L80203D60_ovl9
/* 1B1DA8 80203D58 46000087 */   neg.s     $f2, $f0
/* 1B1DAC 80203D5C 46000086 */  mov.s      $f2, $f0
.L80203D60_ovl9:
/* 1B1DB0 80203D60 460A103C */  c.lt.s     $f2, $f10
/* 1B1DB4 80203D64 00000000 */  nop
/* 1B1DB8 80203D68 45020006 */  bc1fl      .L80203D84_ovl9
/* 1B1DBC 80203D6C 8C620000 */   lw        $v0, 0x0($v1)
/* 1B1DC0 80203D70 0C0667C7 */  jal        func_80199F1C_ovl7
/* 1B1DC4 80203D74 8FA40050 */   lw        $a0, 0x50($sp)
/* 1B1DC8 80203D78 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B1DCC 80203D7C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B1DD0 80203D80 8C620000 */  lw         $v0, 0x0($v1)
.L80203D84_ovl9:
/* 1B1DD4 80203D84 3C18800F */  lui        $t8, %hi(D_800E9AA0)
/* 1B1DD8 80203D88 3C05800E */  lui        $a1, %hi(D_800E6A10)
/* 1B1DDC 80203D8C 00021080 */  sll        $v0, $v0, 2
/* 1B1DE0 80203D90 0302C021 */  addu       $t8, $t8, $v0
/* 1B1DE4 80203D94 8F189AA0 */  lw         $t8, %lo(D_800E9AA0)($t8)
/* 1B1DE8 80203D98 24A56A10 */  addiu      $a1, $a1, %lo(D_800E6A10)
/* 1B1DEC 80203D9C 24010002 */  addiu      $at, $zero, 0x2
/* 1B1DF0 80203DA0 17010012 */  bne        $t8, $at, .L80203DEC_ovl9
/* 1B1DF4 80203DA4 00A2C821 */   addu      $t9, $a1, $v0
/* 1B1DF8 80203DA8 C7300000 */  lwc1       $f16, 0x0($t9)
/* 1B1DFC 80203DAC C4B20000 */  lwc1       $f18, 0x0($a1)
/* 1B1E00 80203DB0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B1E04 80203DB4 00220821 */  addu       $at, $at, $v0
/* 1B1E08 80203DB8 46128032 */  c.eq.s     $f16, $f18
/* 1B1E0C 80203DBC 24080003 */  addiu      $t0, $zero, 0x3
/* 1B1E10 80203DC0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1B1E14 80203DC4 4503000A */  bc1tl      .L80203DF0_ovl9
/* 1B1E18 80203DC8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1B1E1C 80203DCC AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
/* 1B1E20 80203DD0 8C690000 */  lw         $t1, 0x0($v1)
/* 1B1E24 80203DD4 3C058020 */  lui        $a1, %hi(func_802033B0_ovl9)
/* 1B1E28 80203DD8 24A533B0 */  addiu      $a1, $a1, %lo(func_802033B0_ovl9)
/* 1B1E2C 80203DDC 00095080 */  sll        $t2, $t1, 2
/* 1B1E30 80203DE0 008A2021 */  addu       $a0, $a0, $t2
/* 1B1E34 80203DE4 0C02C7B2 */  jal        assign_new_process_entry
/* 1B1E38 80203DE8 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L80203DEC_ovl9:
/* 1B1E3C 80203DEC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80203DF0_ovl9:
/* 1B1E40 80203DF0 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1B1E44 80203DF4 03E00008 */  jr         $ra
/* 1B1E48 80203DF8 00000000 */   nop
