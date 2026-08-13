nonmatching func_801DD208_ovl15, 0x110

glabel func_801DD208_ovl15
    /* 207D68 801DD208 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 207D6C 801DD20C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 207D70 801DD210 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 207D74 801DD214 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 207D78 801DD218 AFA40048 */  sw         $a0, 0x48($sp)
    /* 207D7C 801DD21C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 207D80 801DD220 3C18800F */  lui        $t8, %hi(D_800E98E0)
    /* 207D84 801DD224 271898E0 */  addiu      $t8, $t8, %lo(D_800E98E0)
    /* 207D88 801DD228 000E7880 */  sll        $t7, $t6, 2
    /* 207D8C 801DD22C 01F81821 */  addu       $v1, $t7, $t8
    /* 207D90 801DD230 8C640000 */  lw         $a0, 0x0($v1)
    /* 207D94 801DD234 3C08800E */  lui        $t0, %hi(D_800E0D50)
    /* 207D98 801DD238 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* 207D9C 801DD23C 2885001A */  slti       $a1, $a0, 0x1A
    /* 207DA0 801DD240 38A50001 */  xori       $a1, $a1, 0x1
    /* 207DA4 801DD244 24990001 */  addiu      $t9, $a0, 0x1
    /* 207DA8 801DD248 10A0002F */  beqz       $a1, .L801DD308_ovl15
    /* 207DAC 801DD24C AC790000 */   sw        $t9, 0x0($v1)
    /* 207DB0 801DD250 8C430000 */  lw         $v1, 0x0($v0)
    /* 207DB4 801DD254 3C0B800F */  lui        $t3, %hi(D_800E9C60)
    /* 207DB8 801DD258 3C0D801E */  lui        $t5, %hi(D_801E6500_ovl15)
    /* 207DBC 801DD25C 00031880 */  sll        $v1, $v1, 2
    /* 207DC0 801DD260 01635821 */  addu       $t3, $t3, $v1
    /* 207DC4 801DD264 8D6B9C60 */  lw         $t3, %lo(D_800E9C60)($t3)
    /* 207DC8 801DD268 01034021 */  addu       $t0, $t0, $v1
    /* 207DCC 801DD26C 8D080D50 */  lw         $t0, %lo(D_800E0D50)($t0)
    /* 207DD0 801DD270 000B6080 */  sll        $t4, $t3, 2
    /* 207DD4 801DD274 01AC6821 */  addu       $t5, $t5, $t4
    /* 207DD8 801DD278 00084880 */  sll        $t1, $t0, 2
    /* 207DDC 801DD27C 8DAD6500 */  lw         $t5, %lo(D_801E6500_ovl15)($t5)
    /* 207DE0 801DD280 01495021 */  addu       $t2, $t2, $t1
    /* 207DE4 801DD284 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
    /* 207DE8 801DD288 000D7080 */  sll        $t6, $t5, 2
    /* 207DEC 801DD28C 27A4003C */  addiu      $a0, $sp, 0x3C
    /* 207DF0 801DD290 014E7821 */  addu       $t7, $t2, $t6
    /* 207DF4 801DD294 0C0291E5 */  jal        utilGetTransformSRT
    /* 207DF8 801DD298 8DE50000 */   lw        $a1, 0x0($t7)
    /* 207DFC 801DD29C 3C01C270 */  lui        $at, (0xC2700000 >> 16)
    /* 207E00 801DD2A0 44812000 */  mtc1       $at, $f4
    /* 207E04 801DD2A4 C7A60044 */  lwc1       $f6, 0x44($sp)
    /* 207E08 801DD2A8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 207E0C 801DD2AC 4606203C */  c.lt.s     $f4, $f6
    /* 207E10 801DD2B0 00000000 */  nop
    /* 207E14 801DD2B4 45020015 */  bc1fl      .L801DD30C_ovl15
    /* 207E18 801DD2B8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 207E1C 801DD2BC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 207E20 801DD2C0 C7A8003C */  lwc1       $f8, 0x3C($sp)
    /* 207E24 801DD2C4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 207E28 801DD2C8 8C580000 */  lw         $t8, 0x0($v0)
    /* 207E2C 801DD2CC 44800000 */  mtc1       $zero, $f0
    /* 207E30 801DD2D0 0018C880 */  sll        $t9, $t8, 2
    /* 207E34 801DD2D4 00390821 */  addu       $at, $at, $t9
    /* 207E38 801DD2D8 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
    /* 207E3C 801DD2DC 8C480000 */  lw         $t0, 0x0($v0)
    /* 207E40 801DD2E0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 207E44 801DD2E4 00084880 */  sll        $t1, $t0, 2
    /* 207E48 801DD2E8 00290821 */  addu       $at, $at, $t1
    /* 207E4C 801DD2EC E4202790 */  swc1       $f0, %lo(gEntitiesNextPosYArray)($at)
    /* 207E50 801DD2F0 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 207E54 801DD2F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 207E58 801DD2F8 000B6080 */  sll        $t4, $t3, 2
    /* 207E5C 801DD2FC 002C0821 */  addu       $at, $at, $t4
    /* 207E60 801DD300 0C067CEC */  jal        func_8019F3B0_ovl7
    /* 207E64 801DD304 E4202950 */   swc1      $f0, %lo(gEntitiesNextPosZArray)($at)
  .L801DD308_ovl15:
    /* 207E68 801DD308 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DD30C_ovl15:
    /* 207E6C 801DD30C 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 207E70 801DD310 03E00008 */  jr         $ra
    /* 207E74 801DD314 00000000 */   nop
endlabel func_801DD208_ovl15
.size func_801DD208_ovl15, . - func_801DD208_ovl15
