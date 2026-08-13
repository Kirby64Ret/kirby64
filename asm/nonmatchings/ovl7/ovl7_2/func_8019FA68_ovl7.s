nonmatching func_8019FA68_ovl7, 0x380

glabel func_8019FA68_ovl7
    /* 145AD8 8019FA68 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 145ADC 8019FA6C 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 145AE0 8019FA70 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 145AE4 8019FA74 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 145AE8 8019FA78 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 145AEC 8019FA7C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 145AF0 8019FA80 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 145AF4 8019FA84 27A40024 */  addiu      $a0, $sp, 0x24
    /* 145AF8 8019FA88 000FC080 */  sll        $t8, $t7, 2
    /* 145AFC 8019FA8C 00781821 */  addu       $v1, $v1, $t8
    /* 145B00 8019FA90 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
    /* 145B04 8019FA94 0C0442C0 */  jal        func_80110B00
    /* 145B08 8019FA98 AFA30040 */   sw        $v1, 0x40($sp)
    /* 145B0C 8019FA9C 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 145B10 8019FAA0 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 145B14 8019FAA4 10400013 */  beqz       $v0, .L8019FAF4_ovl7
    /* 145B18 8019FAA8 8FA30040 */   lw        $v1, 0x40($sp)
    /* 145B1C 8019FAAC 8CCA0000 */  lw         $t2, 0x0($a2)
    /* 145B20 8019FAB0 93B90026 */  lbu        $t9, 0x26($sp)
    /* 145B24 8019FAB4 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145B28 8019FAB8 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 145B2C 8019FABC 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 145B30 8019FAC0 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145B34 8019FAC4 000B6080 */  sll        $t4, $t3, 2
    /* 145B38 8019FAC8 010C6821 */  addu       $t5, $t0, $t4
    /* 145B3C 8019FACC ADB90000 */  sw         $t9, 0x0($t5)
    /* 145B40 8019FAD0 93AE0027 */  lbu        $t6, 0x27($sp)
    /* 145B44 8019FAD4 A06E0043 */  sb         $t6, 0x43($v1)
    /* 145B48 8019FAD8 93AF0024 */  lbu        $t7, 0x24($sp)
    /* 145B4C 8019FADC A06F003E */  sb         $t7, 0x3E($v1)
    /* 145B50 8019FAE0 93B80025 */  lbu        $t8, 0x25($sp)
    /* 145B54 8019FAE4 A078003F */  sb         $t8, 0x3F($v1)
    /* 145B58 8019FAE8 8FAA0030 */  lw         $t2, 0x30($sp)
    /* 145B5C 8019FAEC 1000003D */  b          .L8019FBE4_ovl7
    /* 145B60 8019FAF0 A06A003A */   sb        $t2, 0x3A($v1)
  .L8019FAF4_ovl7:
    /* 145B64 8019FAF4 27A40024 */  addiu      $a0, $sp, 0x24
    /* 145B68 8019FAF8 0C044054 */  jal        func_80110150
    /* 145B6C 8019FAFC AFA30040 */   sw        $v1, 0x40($sp)
    /* 145B70 8019FB00 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 145B74 8019FB04 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 145B78 8019FB08 10400013 */  beqz       $v0, .L8019FB58_ovl7
    /* 145B7C 8019FB0C 8FA30040 */   lw        $v1, 0x40($sp)
    /* 145B80 8019FB10 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 145B84 8019FB14 93AB0026 */  lbu        $t3, 0x26($sp)
    /* 145B88 8019FB18 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145B8C 8019FB1C 8D990000 */  lw         $t9, 0x0($t4)
    /* 145B90 8019FB20 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 145B94 8019FB24 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145B98 8019FB28 00196880 */  sll        $t5, $t9, 2
    /* 145B9C 8019FB2C 010D7021 */  addu       $t6, $t0, $t5
    /* 145BA0 8019FB30 ADCB0000 */  sw         $t3, 0x0($t6)
    /* 145BA4 8019FB34 93AF0027 */  lbu        $t7, 0x27($sp)
    /* 145BA8 8019FB38 A06F0043 */  sb         $t7, 0x43($v1)
    /* 145BAC 8019FB3C 93B80024 */  lbu        $t8, 0x24($sp)
    /* 145BB0 8019FB40 A078003E */  sb         $t8, 0x3E($v1)
    /* 145BB4 8019FB44 93AA0025 */  lbu        $t2, 0x25($sp)
    /* 145BB8 8019FB48 A06A003F */  sb         $t2, 0x3F($v1)
    /* 145BBC 8019FB4C 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 145BC0 8019FB50 10000024 */  b          .L8019FBE4_ovl7
    /* 145BC4 8019FB54 A06C003A */   sb        $t4, 0x3A($v1)
  .L8019FB58_ovl7:
    /* 145BC8 8019FB58 27A40024 */  addiu      $a0, $sp, 0x24
    /* 145BCC 8019FB5C 0C0443F5 */  jal        func_80110FD4
    /* 145BD0 8019FB60 AFA30040 */   sw        $v1, 0x40($sp)
    /* 145BD4 8019FB64 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 145BD8 8019FB68 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 145BDC 8019FB6C 10400013 */  beqz       $v0, .L8019FBBC_ovl7
    /* 145BE0 8019FB70 8FA30040 */   lw        $v1, 0x40($sp)
    /* 145BE4 8019FB74 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 145BE8 8019FB78 93B90026 */  lbu        $t9, 0x26($sp)
    /* 145BEC 8019FB7C 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145BF0 8019FB80 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 145BF4 8019FB84 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 145BF8 8019FB88 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145BFC 8019FB8C 000B7080 */  sll        $t6, $t3, 2
    /* 145C00 8019FB90 010E7821 */  addu       $t7, $t0, $t6
    /* 145C04 8019FB94 ADF90000 */  sw         $t9, 0x0($t7)
    /* 145C08 8019FB98 93B80027 */  lbu        $t8, 0x27($sp)
    /* 145C0C 8019FB9C A0780043 */  sb         $t8, 0x43($v1)
    /* 145C10 8019FBA0 93AA0024 */  lbu        $t2, 0x24($sp)
    /* 145C14 8019FBA4 A06A003E */  sb         $t2, 0x3E($v1)
    /* 145C18 8019FBA8 93AC0025 */  lbu        $t4, 0x25($sp)
    /* 145C1C 8019FBAC A06C003F */  sb         $t4, 0x3F($v1)
    /* 145C20 8019FBB0 8FAD0030 */  lw         $t5, 0x30($sp)
    /* 145C24 8019FBB4 1000000B */  b          .L8019FBE4_ovl7
    /* 145C28 8019FBB8 A06D003A */   sb        $t5, 0x3A($v1)
  .L8019FBBC_ovl7:
    /* 145C2C 8019FBBC 8CCB0000 */  lw         $t3, 0x0($a2)
    /* 145C30 8019FBC0 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145C34 8019FBC4 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 145C38 8019FBC8 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 145C3C 8019FBCC 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145C40 8019FBD0 000EC880 */  sll        $t9, $t6, 2
    /* 145C44 8019FBD4 01197821 */  addu       $t7, $t0, $t9
    /* 145C48 8019FBD8 ADE00000 */  sw         $zero, 0x0($t7)
    /* 145C4C 8019FBDC A0600043 */  sb         $zero, 0x43($v1)
    /* 145C50 8019FBE0 A069003A */  sb         $t1, 0x3A($v1)
  .L8019FBE4_ovl7:
    /* 145C54 8019FBE4 8CC70000 */  lw         $a3, 0x0($a2)
    /* 145C58 8019FBE8 24010001 */  addiu      $at, $zero, 0x1
    /* 145C5C 8019FBEC 8CE50000 */  lw         $a1, 0x0($a3)
    /* 145C60 8019FBF0 00052880 */  sll        $a1, $a1, 2
    /* 145C64 8019FBF4 0105C021 */  addu       $t8, $t0, $a1
    /* 145C68 8019FBF8 8F020000 */  lw         $v0, 0x0($t8)
    /* 145C6C 8019FBFC 1041000A */  beq        $v0, $at, .L8019FC28_ovl7
    /* 145C70 8019FC00 24010002 */   addiu     $at, $zero, 0x2
    /* 145C74 8019FC04 10410037 */  beq        $v0, $at, .L8019FCE4_ovl7
    /* 145C78 8019FC08 3C04800E */   lui       $a0, %hi(D_800DE350)
    /* 145C7C 8019FC0C 24010003 */  addiu      $at, $zero, 0x3
    /* 145C80 8019FC10 1041003B */  beq        $v0, $at, .L8019FD00_ovl7
    /* 145C84 8019FC14 24010004 */   addiu     $at, $zero, 0x4
    /* 145C88 8019FC18 10410052 */  beq        $v0, $at, .L8019FD64_ovl7
    /* 145C8C 8019FC1C 00000000 */   nop
    /* 145C90 8019FC20 1000006D */  b          .L8019FDD8_ovl7
    /* 145C94 8019FC24 00001025 */   or        $v0, $zero, $zero
  .L8019FC28_ovl7:
    /* 145C98 8019FC28 8FA40030 */  lw         $a0, 0x30($sp)
    /* 145C9C 8019FC2C 0C068091 */  jal        func_801A0244_ovl7
    /* 145CA0 8019FC30 AFA30040 */   sw        $v1, 0x40($sp)
    /* 145CA4 8019FC34 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 145CA8 8019FC38 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145CAC 8019FC3C 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145CB0 8019FC40 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 145CB4 8019FC44 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 145CB8 8019FC48 1049001B */  beq        $v0, $t1, .L8019FCB8_ovl7
    /* 145CBC 8019FC4C 8FA30040 */   lw        $v1, 0x40($sp)
    /* 145CC0 8019FC50 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 145CC4 8019FC54 240A0012 */  addiu      $t2, $zero, 0x12
    /* 145CC8 8019FC58 240400F4 */  addiu      $a0, $zero, 0xF4
    /* 145CCC 8019FC5C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 145CD0 8019FC60 000D5880 */  sll        $t3, $t5, 2
    /* 145CD4 8019FC64 010B7021 */  addu       $t6, $t0, $t3
    /* 145CD8 8019FC68 ADCA0000 */  sw         $t2, 0x0($t6)
    /* 145CDC 8019FC6C 0C029D9E */  jal        play_sound
    /* 145CE0 8019FC70 AFA30040 */   sw        $v1, 0x40($sp)
    /* 145CE4 8019FC74 8FA30040 */  lw         $v1, 0x40($sp)
    /* 145CE8 8019FC78 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 145CEC 8019FC7C 24190001 */  addiu      $t9, $zero, 0x1
    /* 145CF0 8019FC80 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 145CF4 8019FC84 AC600094 */  sw         $zero, 0x94($v1)
    /* 145CF8 8019FC88 A0790040 */  sb         $t9, 0x40($v1)
    /* 145CFC 8019FC8C 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 145D00 8019FC90 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 145D04 8019FC94 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
    /* 145D08 8019FC98 8DF80000 */  lw         $t8, 0x0($t7)
    /* 145D0C 8019FC9C 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
    /* 145D10 8019FCA0 00186080 */  sll        $t4, $t8, 2
    /* 145D14 8019FCA4 008C2021 */  addu       $a0, $a0, $t4
    /* 145D18 8019FCA8 0C02C7B2 */  jal        assign_new_process_entry
    /* 145D1C 8019FCAC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 145D20 8019FCB0 10000049 */  b          .L8019FDD8_ovl7
    /* 145D24 8019FCB4 24020001 */   addiu     $v0, $zero, 0x1
  .L8019FCB8_ovl7:
    /* 145D28 8019FCB8 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 145D2C 8019FCBC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 145D30 8019FCC0 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
    /* 145D34 8019FCC4 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 145D38 8019FCC8 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
    /* 145D3C 8019FCCC 000B5080 */  sll        $t2, $t3, 2
    /* 145D40 8019FCD0 008A2021 */  addu       $a0, $a0, $t2
    /* 145D44 8019FCD4 0C02C7B2 */  jal        assign_new_process_entry
    /* 145D48 8019FCD8 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 145D4C 8019FCDC 1000003E */  b          .L8019FDD8_ovl7
    /* 145D50 8019FCE0 24020001 */   addiu     $v0, $zero, 0x1
  .L8019FCE4_ovl7:
    /* 145D54 8019FCE4 00852021 */  addu       $a0, $a0, $a1
    /* 145D58 8019FCE8 0C067AF3 */  jal        func_8019EBCC_ovl7
    /* 145D5C 8019FCEC 8C84E350 */   lw        $a0, %lo(D_800DE350)($a0)
    /* 145D60 8019FCF0 0C068EE9 */  jal        func_801A3BA4_ovl7
    /* 145D64 8019FCF4 00000000 */   nop
    /* 145D68 8019FCF8 10000037 */  b          .L8019FDD8_ovl7
    /* 145D6C 8019FCFC 24020001 */   addiu     $v0, $zero, 0x1
  .L8019FD00_ovl7:
    /* 145D70 8019FD00 8FAE0030 */  lw         $t6, 0x30($sp)
    /* 145D74 8019FD04 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 145D78 8019FD08 00250821 */  addu       $at, $at, $a1
    /* 145D7C 8019FD0C 11C90006 */  beq        $t6, $t1, .L8019FD28_ovl7
    /* 145D80 8019FD10 AC208220 */   sw        $zero, %lo(D_800E8220)($at)
    /* 145D84 8019FD14 8CF90000 */  lw         $t9, 0x0($a3)
    /* 145D88 8019FD18 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 145D8C 8019FD1C 00197880 */  sll        $t7, $t9, 2
    /* 145D90 8019FD20 002F0821 */  addu       $at, $at, $t7
    /* 145D94 8019FD24 AC2E0D50 */  sw         $t6, %lo(D_800E0D50)($at)
  .L8019FD28_ovl7:
    /* 145D98 8019FD28 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 145D9C 8019FD2C 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 145DA0 8019FD30 845800B2 */  lh         $t8, 0xB2($v0)
    /* 145DA4 8019FD34 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 145DA8 8019FD38 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 145DAC 8019FD3C 270C0001 */  addiu      $t4, $t8, 0x1
    /* 145DB0 8019FD40 A44C00B2 */  sh         $t4, 0xB2($v0)
    /* 145DB4 8019FD44 8CED0000 */  lw         $t5, 0x0($a3)
    /* 145DB8 8019FD48 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
    /* 145DBC 8019FD4C 000D5880 */  sll        $t3, $t5, 2
    /* 145DC0 8019FD50 008B2021 */  addu       $a0, $a0, $t3
    /* 145DC4 8019FD54 0C02C7B2 */  jal        assign_new_process_entry
    /* 145DC8 8019FD58 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 145DCC 8019FD5C 1000001E */  b          .L8019FDD8_ovl7
    /* 145DD0 8019FD60 24020001 */   addiu     $v0, $zero, 0x1
  .L8019FD64_ovl7:
    /* 145DD4 8019FD64 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 145DD8 8019FD68 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 145DDC 8019FD6C 904A0004 */  lbu        $t2, 0x4($v0)
    /* 145DE0 8019FD70 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 145DE4 8019FD74 00250821 */  addu       $at, $at, $a1
    /* 145DE8 8019FD78 15400015 */  bnez       $t2, .L8019FDD0_ovl7
    /* 145DEC 8019FD7C 24190001 */   addiu     $t9, $zero, 0x1
    /* 145DF0 8019FD80 8FAF0030 */  lw         $t7, 0x30($sp)
    /* 145DF4 8019FD84 AC398220 */  sw         $t9, %lo(D_800E8220)($at)
    /* 145DF8 8019FD88 240E0002 */  addiu      $t6, $zero, 0x2
    /* 145DFC 8019FD8C 11E90006 */  beq        $t7, $t1, .L8019FDA8_ovl7
    /* 145E00 8019FD90 A04E0004 */   sb        $t6, 0x4($v0)
    /* 145E04 8019FD94 8CF80000 */  lw         $t8, 0x0($a3)
    /* 145E08 8019FD98 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 145E0C 8019FD9C 00186080 */  sll        $t4, $t8, 2
    /* 145E10 8019FDA0 002C0821 */  addu       $at, $at, $t4
    /* 145E14 8019FDA4 AC2F0D50 */  sw         $t7, %lo(D_800E0D50)($at)
  .L8019FDA8_ovl7:
    /* 145E18 8019FDA8 8CED0000 */  lw         $t5, 0x0($a3)
    /* 145E1C 8019FDAC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 145E20 8019FDB0 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 145E24 8019FDB4 000D5880 */  sll        $t3, $t5, 2
    /* 145E28 8019FDB8 008B2021 */  addu       $a0, $a0, $t3
    /* 145E2C 8019FDBC 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 145E30 8019FDC0 0C02C7B2 */  jal        assign_new_process_entry
    /* 145E34 8019FDC4 24A57000 */   addiu     $a1, $a1, %lo(func_801A7000_ovl7)
    /* 145E38 8019FDC8 10000003 */  b          .L8019FDD8_ovl7
    /* 145E3C 8019FDCC 24020001 */   addiu     $v0, $zero, 0x1
  .L8019FDD0_ovl7:
    /* 145E40 8019FDD0 10000001 */  b          .L8019FDD8_ovl7
    /* 145E44 8019FDD4 00001025 */   or        $v0, $zero, $zero
  .L8019FDD8_ovl7:
    /* 145E48 8019FDD8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 145E4C 8019FDDC 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 145E50 8019FDE0 03E00008 */  jr         $ra
    /* 145E54 8019FDE4 00000000 */   nop
endlabel func_8019FA68_ovl7
.size func_8019FA68_ovl7, . - func_8019FA68_ovl7
