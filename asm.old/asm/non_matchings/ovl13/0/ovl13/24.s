glabel func_801DE084_ovl13 # 24
/* 1F6004 801DE084 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F6008 801DE088 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F600C 801DE08C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F6010 801DE090 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F6014 801DE094 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F6018 801DE098 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F601C 801DE09C 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F6020 801DE0A0 000FC080 */  sll         $t8, $t7, 2
/* 1F6024 801DE0A4 00380821 */  addu        $at, $at, $t8
/* 1F6028 801DE0A8 0C06835D */  jal         func_801A0D74_ovl7
/* 1F602C 801DE0AC AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F6030 801DE0B0 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 1F6034 801DE0B4 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 1F6038 801DE0B8 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F603C 801DE0BC 8F280000 */  lw          $t0, 0x0($t9)
/* 1F6040 801DE0C0 00084880 */  sll         $t1, $t0, 2
/* 1F6044 801DE0C4 00491021 */  addu        $v0, $v0, $t1
/* 1F6048 801DE0C8 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1F604C 801DE0CC 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F6050 801DE0D0 8C450010 */  lw          $a1, 0x10($v0)
/* 1F6054 801DE0D4 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F6058 801DE0D8 8C460018 */   lw         $a2, 0x18($v0)
/* 1F605C 801DE0DC 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F6060 801DE0E0 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1F6064 801DE0E4 3C0A800F */  lui         $t2, %hi(D_800E83E0)
/* 1F6068 801DE0E8 24010001 */  addiu       $at, $zero, 0x1
/* 1F606C 801DE0EC 8C430000 */  lw          $v1, 0x0($v0)
/* 1F6070 801DE0F0 240B0007 */  addiu       $t3, $zero, 0x7
/* 1F6074 801DE0F4 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F6078 801DE0F8 00031880 */  sll         $v1, $v1, 2
/* 1F607C 801DE0FC 01435021 */  addu        $t2, $t2, $v1
/* 1F6080 801DE100 8D4A83E0 */  lw          $t2, %lo(D_800E83E0)($t2)
/* 1F6084 801DE104 1541000A */  bne         $t2, $at, L801DE130_ovl13
/* 1F6088 801DE108 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F608C 801DE10C 00230821 */  addu        $at, $at, $v1
/* 1F6090 801DE110 AC2BDC50 */  sw          $t3, %lo(gEntityVtableIndexArray)($at)
/* 1F6094 801DE114 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1F6098 801DE118 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F609C 801DE11C 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F60A0 801DE120 000C6880 */  sll         $t5, $t4, 2
/* 1F60A4 801DE124 008D2021 */  addu        $a0, $a0, $t5
/* 1F60A8 801DE128 0C02C7B2 */  jal         assign_new_process_entry
/* 1F60AC 801DE12C 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801DE130_ovl13
/* 1F60B0 801DE130 0C078E56 */  jal         func_801E3958_ovl13
/* 1F60B4 801DE134 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F60B8 801DE138 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F60BC 801DE13C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F60C0 801DE140 03E00008 */  jr          $ra
/* 1F60C4 801DE144 00000000 */   nop
.type func_801DE084_ovl13, @function

.size func_801DE084_ovl13, . - func_801DE084_ovl13
