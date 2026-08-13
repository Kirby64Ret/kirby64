nonmatching func_801C1BB8_ovl7, 0x250

glabel func_801C1BB8_ovl7
    /* 167C28 801C1BB8 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 167C2C 801C1BBC 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 167C30 801C1BC0 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 167C34 801C1BC4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 167C38 801C1BC8 8DC20000 */  lw         $v0, 0x0($t6)
    /* 167C3C 801C1BCC 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 167C40 801C1BD0 00027880 */  sll        $t7, $v0, 2
    /* 167C44 801C1BD4 006F1821 */  addu       $v1, $v1, $t7
    /* 167C48 801C1BD8 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
    /* 167C4C 801C1BDC 00402025 */  or         $a0, $v0, $zero
    /* 167C50 801C1BE0 8C78008C */  lw         $t8, 0x8C($v1)
    /* 167C54 801C1BE4 17000003 */  bnez       $t8, .L801C1BF4_ovl7
    /* 167C58 801C1BE8 00000000 */   nop
    /* 167C5C 801C1BEC 10000082 */  b          .L801C1DF8_ovl7
    /* 167C60 801C1BF0 00001025 */   or        $v0, $zero, $zero
  .L801C1BF4_ovl7:
    /* 167C64 801C1BF4 0C044554 */  jal        func_80111550
    /* 167C68 801C1BF8 AFA30028 */   sw        $v1, 0x28($sp)
    /* 167C6C 801C1BFC 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 167C70 801C1C00 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 167C74 801C1C04 8FB90028 */  lw         $t9, 0x28($sp)
    /* 167C78 801C1C08 8D050000 */  lw         $a1, 0x0($t0)
    /* 167C7C 801C1C0C 0C044722 */  jal        func_80111C88
    /* 167C80 801C1C10 8F24008C */   lw        $a0, 0x8C($t9)
    /* 167C84 801C1C14 0C0447B3 */  jal        func_80111ECC
    /* 167C88 801C1C18 00402025 */   or        $a0, $v0, $zero
    /* 167C8C 801C1C1C 0C0442C0 */  jal        func_80110B00
    /* 167C90 801C1C20 27A40030 */   addiu     $a0, $sp, 0x30
    /* 167C94 801C1C24 1040000D */  beqz       $v0, .L801C1C5C_ovl7
    /* 167C98 801C1C28 3C0A8005 */   lui       $t2, %hi(omCurrentObj)
    /* 167C9C 801C1C2C 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 167CA0 801C1C30 93A90032 */  lbu        $t1, 0x32($sp)
    /* 167CA4 801C1C34 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 167CA8 801C1C38 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 167CAC 801C1C3C 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 167CB0 801C1C40 000B6080 */  sll        $t4, $t3, 2
    /* 167CB4 801C1C44 00AC6821 */  addu       $t5, $a1, $t4
    /* 167CB8 801C1C48 ADA90000 */  sw         $t1, 0x0($t5)
    /* 167CBC 801C1C4C 8FAF0028 */  lw         $t7, 0x28($sp)
    /* 167CC0 801C1C50 93AE0033 */  lbu        $t6, 0x33($sp)
    /* 167CC4 801C1C54 1000002A */  b          .L801C1D00_ovl7
    /* 167CC8 801C1C58 A1EE0043 */   sb        $t6, 0x43($t7)
  .L801C1C5C_ovl7:
    /* 167CCC 801C1C5C 0C0443F5 */  jal        func_80110FD4
    /* 167CD0 801C1C60 27A40030 */   addiu     $a0, $sp, 0x30
    /* 167CD4 801C1C64 1040000D */  beqz       $v0, .L801C1C9C_ovl7
    /* 167CD8 801C1C68 3C198005 */   lui       $t9, %hi(omCurrentObj)
    /* 167CDC 801C1C6C 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 167CE0 801C1C70 93B80032 */  lbu        $t8, 0x32($sp)
    /* 167CE4 801C1C74 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 167CE8 801C1C78 8F280000 */  lw         $t0, 0x0($t9)
    /* 167CEC 801C1C7C 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 167CF0 801C1C80 00085080 */  sll        $t2, $t0, 2
    /* 167CF4 801C1C84 00AA5821 */  addu       $t3, $a1, $t2
    /* 167CF8 801C1C88 AD780000 */  sw         $t8, 0x0($t3)
    /* 167CFC 801C1C8C 8FA90028 */  lw         $t1, 0x28($sp)
    /* 167D00 801C1C90 93AC0033 */  lbu        $t4, 0x33($sp)
    /* 167D04 801C1C94 1000001A */  b          .L801C1D00_ovl7
    /* 167D08 801C1C98 A12C0043 */   sb        $t4, 0x43($t1)
  .L801C1C9C_ovl7:
    /* 167D0C 801C1C9C 0C044054 */  jal        func_80110150
    /* 167D10 801C1CA0 27A40030 */   addiu     $a0, $sp, 0x30
    /* 167D14 801C1CA4 1040000C */  beqz       $v0, .L801C1CD8_ovl7
    /* 167D18 801C1CA8 3C0E8005 */   lui       $t6, %hi(omCurrentObj)
    /* 167D1C 801C1CAC 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 167D20 801C1CB0 93AD0032 */  lbu        $t5, 0x32($sp)
    /* 167D24 801C1CB4 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 167D28 801C1CB8 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 167D2C 801C1CBC 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 167D30 801C1CC0 000FC880 */  sll        $t9, $t7, 2
    /* 167D34 801C1CC4 00B94021 */  addu       $t0, $a1, $t9
    /* 167D38 801C1CC8 AD0D0000 */  sw         $t5, 0x0($t0)
    /* 167D3C 801C1CCC 8FAA0028 */  lw         $t2, 0x28($sp)
    /* 167D40 801C1CD0 1000000B */  b          .L801C1D00_ovl7
    /* 167D44 801C1CD4 A1400043 */   sb        $zero, 0x43($t2)
  .L801C1CD8_ovl7:
    /* 167D48 801C1CD8 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 167D4C 801C1CDC 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 167D50 801C1CE0 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 167D54 801C1CE4 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 167D58 801C1CE8 8F0B0000 */  lw         $t3, 0x0($t8)
    /* 167D5C 801C1CEC 000B6080 */  sll        $t4, $t3, 2
    /* 167D60 801C1CF0 00AC4821 */  addu       $t1, $a1, $t4
    /* 167D64 801C1CF4 AD200000 */  sw         $zero, 0x0($t1)
    /* 167D68 801C1CF8 8FAE0028 */  lw         $t6, 0x28($sp)
    /* 167D6C 801C1CFC A1C00043 */  sb         $zero, 0x43($t6)
  .L801C1D00_ovl7:
    /* 167D70 801C1D00 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 167D74 801C1D04 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 167D78 801C1D08 24060001 */  addiu      $a2, $zero, 0x1
    /* 167D7C 801C1D0C 8C430000 */  lw         $v1, 0x0($v0)
    /* 167D80 801C1D10 00031880 */  sll        $v1, $v1, 2
    /* 167D84 801C1D14 00A37821 */  addu       $t7, $a1, $v1
    /* 167D88 801C1D18 8DE40000 */  lw         $a0, 0x0($t7)
    /* 167D8C 801C1D1C 10860005 */  beq        $a0, $a2, .L801C1D34_ovl7
    /* 167D90 801C1D20 24010003 */   addiu     $at, $zero, 0x3
    /* 167D94 801C1D24 1081001A */  beq        $a0, $at, .L801C1D90_ovl7
    /* 167D98 801C1D28 00000000 */   nop
    /* 167D9C 801C1D2C 10000032 */  b          .L801C1DF8_ovl7
    /* 167DA0 801C1D30 00001025 */   or        $v0, $zero, $zero
  .L801C1D34_ovl7:
    /* 167DA4 801C1D34 8FB9003C */  lw         $t9, 0x3C($sp)
    /* 167DA8 801C1D38 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 167DAC 801C1D3C 00832021 */  addu       $a0, $a0, $v1
    /* 167DB0 801C1D40 1720000E */  bnez       $t9, .L801C1D7C_ovl7
    /* 167DB4 801C1D44 3C05801C */   lui       $a1, %hi(func_801C0610_ovl7)
    /* 167DB8 801C1D48 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 167DBC 801C1D4C 00230821 */  addu       $at, $at, $v1
    /* 167DC0 801C1D50 AC26DC50 */  sw         $a2, %lo(gEntityFuncListIDArray)($at)
    /* 167DC4 801C1D54 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 167DC8 801C1D58 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 167DCC 801C1D5C 3C05801C */  lui        $a1, %hi(func_801C08E8_ovl7)
    /* 167DD0 801C1D60 000D4080 */  sll        $t0, $t5, 2
    /* 167DD4 801C1D64 00882021 */  addu       $a0, $a0, $t0
    /* 167DD8 801C1D68 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 167DDC 801C1D6C 0C02C7B2 */  jal        assign_new_process_entry
    /* 167DE0 801C1D70 24A508E8 */   addiu     $a1, $a1, %lo(func_801C08E8_ovl7)
    /* 167DE4 801C1D74 10000020 */  b          .L801C1DF8_ovl7
    /* 167DE8 801C1D78 24020001 */   addiu     $v0, $zero, 0x1
  .L801C1D7C_ovl7:
    /* 167DEC 801C1D7C 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 167DF0 801C1D80 0C02C7B2 */  jal        assign_new_process_entry
    /* 167DF4 801C1D84 24A50610 */   addiu     $a1, $a1, %lo(func_801C0610_ovl7)
    /* 167DF8 801C1D88 1000001B */  b          .L801C1DF8_ovl7
    /* 167DFC 801C1D8C 24020001 */   addiu     $v0, $zero, 0x1
  .L801C1D90_ovl7:
    /* 167E00 801C1D90 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 167E04 801C1D94 8FAA003C */  lw         $t2, 0x3C($sp)
    /* 167E08 801C1D98 00230821 */  addu       $at, $at, $v1
    /* 167E0C 801C1D9C AC208220 */  sw         $zero, %lo(D_800E8220)($at)
    /* 167E10 801C1DA0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 167E14 801C1DA4 11410006 */  beq        $t2, $at, .L801C1DC0_ovl7
    /* 167E18 801C1DA8 3C038013 */   lui       $v1, %hi(gKirbyState)
    /* 167E1C 801C1DAC 8C580000 */  lw         $t8, 0x0($v0)
    /* 167E20 801C1DB0 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 167E24 801C1DB4 00185880 */  sll        $t3, $t8, 2
    /* 167E28 801C1DB8 002B0821 */  addu       $at, $at, $t3
    /* 167E2C 801C1DBC AC2A0D50 */  sw         $t2, %lo(D_800E0D50)($at)
  .L801C1DC0_ovl7:
    /* 167E30 801C1DC0 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* 167E34 801C1DC4 846C00B2 */  lh         $t4, 0xB2($v1)
    /* 167E38 801C1DC8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 167E3C 801C1DCC 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 167E40 801C1DD0 25890001 */  addiu      $t1, $t4, 0x1
    /* 167E44 801C1DD4 A46900B2 */  sh         $t1, 0xB2($v1)
    /* 167E48 801C1DD8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 167E4C 801C1DDC 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
    /* 167E50 801C1DE0 000E7880 */  sll        $t7, $t6, 2
    /* 167E54 801C1DE4 008F2021 */  addu       $a0, $a0, $t7
    /* 167E58 801C1DE8 0C02C7B2 */  jal        assign_new_process_entry
    /* 167E5C 801C1DEC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 167E60 801C1DF0 10000001 */  b          .L801C1DF8_ovl7
    /* 167E64 801C1DF4 24020001 */   addiu     $v0, $zero, 0x1
  .L801C1DF8_ovl7:
    /* 167E68 801C1DF8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 167E6C 801C1DFC 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 167E70 801C1E00 03E00008 */  jr         $ra
    /* 167E74 801C1E04 00000000 */   nop
endlabel func_801C1BB8_ovl7
.size func_801C1BB8_ovl7, . - func_801C1BB8_ovl7
