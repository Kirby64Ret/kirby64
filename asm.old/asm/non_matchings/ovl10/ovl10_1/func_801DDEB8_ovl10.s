glabel func_801DDEB8_ovl10
/* 1CEC28 801DDEB8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 1CEC2C 801DDEBC AFBF001C */  sw    $ra, 0x1c($sp)
/* 1CEC30 801DDEC0 AFB00018 */  sw    $s0, 0x18($sp)
/* 1CEC34 801DDEC4 0C0775D8 */  jal   func_801DD760_ovl10
/* 1CEC38 801DDEC8 AFA40050 */   sw    $a0, 0x50($sp)
/* 1CEC3C 801DDECC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1CEC40 801DDED0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1CEC44 801DDED4 8E0E0000 */  lw    $t6, ($s0)
/* 1CEC48 801DDED8 3C03800F */ lui $v1, %hi(D_800EA360)
/* 1CEC4C 801DDEDC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CEC50 801DDEE0 8DC60000 */  lw    $a2, ($t6)
/* 1CEC54 801DDEE4 00063080 */  sll   $a2, $a2, 2
/* 1CEC58 801DDEE8 00661821 */  addu  $v1, $v1, $a2
/* 1CEC5C 801DDEEC 8C63A360 */ lw $v1, %lo(D_800EA360)($v1)
/* 1CEC60 801DDEF0 00260821 */  addu  $at, $at, $a2
/* 1CEC64 801DDEF4 1060002C */  beqz  $v1, .L801DDFA8_ovl10
/* 1CEC68 801DDEF8 00000000 */   nop   
/* 1CEC6C 801DDEFC C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1CEC70 801DDF00 8C6F004C */  lw    $t7, 0x4c($v1)
/* 1CEC74 801DDF04 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1CEC78 801DDF08 E5E40004 */  swc1  $f4, 4($t7)
/* 1CEC7C 801DDF0C 8E180000 */  lw    $t8, ($s0)
/* 1CEC80 801DDF10 8C69004C */  lw    $t1, 0x4c($v1)
/* 1CEC84 801DDF14 8F190000 */  lw    $t9, ($t8)
/* 1CEC88 801DDF18 00194080 */  sll   $t0, $t9, 2
/* 1CEC8C 801DDF1C 00280821 */  addu  $at, $at, $t0
/* 1CEC90 801DDF20 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1CEC94 801DDF24 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1CEC98 801DDF28 E5260008 */  swc1  $f6, 8($t1)
/* 1CEC9C 801DDF2C 8E0A0000 */  lw    $t2, ($s0)
/* 1CECA0 801DDF30 8C6D004C */  lw    $t5, 0x4c($v1)
/* 1CECA4 801DDF34 8D4B0000 */  lw    $t3, ($t2)
/* 1CECA8 801DDF38 000B6080 */  sll   $t4, $t3, 2
/* 1CECAC 801DDF3C 002C0821 */  addu  $at, $at, $t4
/* 1CECB0 801DDF40 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1CECB4 801DDF44 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 1CECB8 801DDF48 E5A8000C */  swc1  $f8, 0xc($t5)
/* 1CECBC 801DDF4C 8E0E0000 */  lw    $t6, ($s0)
/* 1CECC0 801DDF50 8C79004C */  lw    $t9, 0x4c($v1)
/* 1CECC4 801DDF54 8DCF0000 */  lw    $t7, ($t6)
/* 1CECC8 801DDF58 000FC080 */  sll   $t8, $t7, 2
/* 1CECCC 801DDF5C 00380821 */  addu  $at, $at, $t8
/* 1CECD0 801DDF60 C42A4010 */ lwc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 1CECD4 801DDF64 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 1CECD8 801DDF68 E72A0010 */  swc1  $f10, 0x10($t9)
/* 1CECDC 801DDF6C 8E080000 */  lw    $t0, ($s0)
/* 1CECE0 801DDF70 8C6B004C */  lw    $t3, 0x4c($v1)
/* 1CECE4 801DDF74 8D090000 */  lw    $t1, ($t0)
/* 1CECE8 801DDF78 00095080 */  sll   $t2, $t1, 2
/* 1CECEC 801DDF7C 002A0821 */  addu  $at, $at, $t2
/* 1CECF0 801DDF80 C43041D0 */ lwc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 1CECF4 801DDF84 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 1CECF8 801DDF88 E5700014 */  swc1  $f16, 0x14($t3)
/* 1CECFC 801DDF8C 8E0C0000 */  lw    $t4, ($s0)
/* 1CED00 801DDF90 8C6F004C */  lw    $t7, 0x4c($v1)
/* 1CED04 801DDF94 8D8D0000 */  lw    $t5, ($t4)
/* 1CED08 801DDF98 000D7080 */  sll   $t6, $t5, 2
/* 1CED0C 801DDF9C 002E0821 */  addu  $at, $at, $t6
/* 1CED10 801DDFA0 C4324390 */ lwc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 1CED14 801DDFA4 E5F20018 */  swc1  $f18, 0x18($t7)
.L801DDFA8_ovl10:
/* 1CED18 801DDFA8 0C06835D */  jal   func_801A0D74_ovl10
/* 1CED1C 801DDFAC 8FA40050 */   lw    $a0, 0x50($sp)
/* 1CED20 801DDFB0 8E190000 */  lw    $t9, ($s0)
/* 1CED24 801DDFB4 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 1CED28 801DDFB8 3C18801F */  lui   $t8, %hi(D_801F3A18_ovl10) # $t8, 0x801f
/* 1CED2C 801DDFBC 8F280000 */  lw    $t0, ($t9)
/* 1CED30 801DDFC0 27183A18 */  addiu $t8, %lo(D_801F3A18_ovl10) # addiu $t8, $t8, 0x3a18
/* 1CED34 801DDFC4 00002025 */  move  $a0, $zero
/* 1CED38 801DDFC8 00084880 */  sll   $t1, $t0, 2
/* 1CED3C 801DDFCC 01495021 */  addu  $t2, $t2, $t1
/* 1CED40 801DDFD0 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 1CED44 801DDFD4 0C078A32 */  jal   func_801E28C8_ovl10
/* 1CED48 801DDFD8 AD58008C */   sw    $t8, 0x8c($t2)
/* 1CED4C 801DDFDC 8E030000 */  lw    $v1, ($s0)
/* 1CED50 801DDFE0 3C04800F */ lui $a0, %hi(D_800E83E0)
/* 1CED54 801DDFE4 3C02800F */ lui $v0, %hi(D_800EA520)
/* 1CED58 801DDFE8 8C660000 */  lw    $a2, ($v1)
/* 1CED5C 801DDFEC 24010001 */  li    $at, 1
/* 1CED60 801DDFF0 00063080 */  sll   $a2, $a2, 2
/* 1CED64 801DDFF4 00862021 */  addu  $a0, $a0, $a2
/* 1CED68 801DDFF8 8C8483E0 */ lw $a0, %lo(D_800E83E0)($a0)
/* 1CED6C 801DDFFC 00461021 */  addu  $v0, $v0, $a2
/* 1CED70 801DE000 14800036 */  bnez  $a0, .L801DE0DC_ovl10
/* 1CED74 801DE004 00000000 */   nop   
/* 1CED78 801DE008 8C42A520 */ lw $v0, %lo(D_800EA520)($v0)
/* 1CED7C 801DE00C 2841000B */  slti  $at, $v0, 0xb
/* 1CED80 801DE010 1420003F */  bnez  $at, .L801DE110_ovl10
/* 1CED84 801DE014 284100C8 */   slti  $at, $v0, 0xc8
/* 1CED88 801DE018 1020003D */  beqz  $at, .L801DE110_ovl10
/* 1CED8C 801DE01C 3C0C800E */ lui $t4, %hi(D_800E1B50)
/* 1CED90 801DE020 01866021 */  addu  $t4, $t4, $a2
/* 1CED94 801DE024 8D8C1B50 */ lw $t4, %lo(D_800E1B50)($t4)
/* 1CED98 801DE028 3C0B801F */  lui   $t3, %hi(D_801F3E2C_ovl10) # $t3, 0x801f
/* 1CED9C 801DE02C 256B3E2C */  addiu $t3, %lo(D_801F3E2C_ovl10) # addiu $t3, $t3, 0x3e2c
/* 1CEDA0 801DE030 AD8B008C */  sw    $t3, 0x8c($t4)
/* 1CEDA4 801DE034 8E0D0000 */  lw    $t5, ($s0)
/* 1CEDA8 801DE038 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 1CEDAC 801DE03C 27A50030 */  addiu $a1, $sp, 0x30
/* 1CEDB0 801DE040 8DAE0000 */  lw    $t6, ($t5)
/* 1CEDB4 801DE044 000E7880 */  sll   $t7, $t6, 2
/* 1CEDB8 801DE048 032FC821 */  addu  $t9, $t9, $t7
/* 1CEDBC 801DE04C 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 1CEDC0 801DE050 0C078B1E */  jal   func_801E2C78_ovl10
/* 1CEDC4 801DE054 8F240014 */   lw    $a0, 0x14($t9)
/* 1CEDC8 801DE058 1040002D */  beqz  $v0, .L801DE110_ovl10
/* 1CEDCC 801DE05C 8FA4003C */   lw    $a0, 0x3c($sp)
/* 1CEDD0 801DE060 93A50030 */  lbu   $a1, 0x30($sp)
/* 1CEDD4 801DE064 93A60031 */  lbu   $a2, 0x31($sp)
/* 1CEDD8 801DE068 0C05A50C */  jal   func_80169430_ovl3
/* 1CEDDC 801DE06C 24070001 */   li    $a3, 1
/* 1CEDE0 801DE070 8E030000 */  lw    $v1, ($s0)
/* 1CEDE4 801DE074 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CEDE8 801DE078 24080006 */  li    $t0, 6
/* 1CEDEC 801DE07C 8C690000 */  lw    $t1, ($v1)
/* 1CEDF0 801DE080 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1CEDF4 801DE084 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1CEDF8 801DE088 0009C080 */  sll   $t8, $t1, 2
/* 1CEDFC 801DE08C 00380821 */  addu  $at, $at, $t8
/* 1CEE00 801DE090 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 1CEE04 801DE094 8C6A0000 */  lw    $t2, ($v1)
/* 1CEE08 801DE098 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1CEE0C 801DE09C 000A5880 */  sll   $t3, $t2, 2
/* 1CEE10 801DE0A0 008B2021 */  addu  $a0, $a0, $t3
/* 1CEE14 801DE0A4 0C02C7B2 */  jal   assign_new_process_entry
/* 1CEE18 801DE0A8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1CEE1C 801DE0AC 8E030000 */  lw    $v1, ($s0)
/* 1CEE20 801DE0B0 3C01800F */ lui $at, %hi(D_800EC120)
/* 1CEE24 801DE0B4 8C6C0000 */  lw    $t4, ($v1)
/* 1CEE28 801DE0B8 000C6880 */  sll   $t5, $t4, 2
/* 1CEE2C 801DE0BC 002D0821 */  addu  $at, $at, $t5
/* 1CEE30 801DE0C0 AC20C120 */ sw $zero, %lo(D_800EC120)($at)
/* 1CEE34 801DE0C4 8C6E0000 */  lw    $t6, ($v1)
/* 1CEE38 801DE0C8 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1CEE3C 801DE0CC 000E7880 */  sll   $t7, $t6, 2
/* 1CEE40 801DE0D0 002F0821 */  addu  $at, $at, $t7
/* 1CEE44 801DE0D4 1000000E */  b     .L801DE110_ovl10
/* 1CEE48 801DE0D8 AC209FE0 */ sw $zero, %lo(D_800E9FE0)($at)
.L801DE0DC_ovl10:
/* 1CEE4C 801DE0DC 1481000C */  bne   $a0, $at, .L801DE110_ovl10
/* 1CEE50 801DE0E0 24190009 */   li    $t9, 9
/* 1CEE54 801DE0E4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CEE58 801DE0E8 00260821 */  addu  $at, $at, $a2
/* 1CEE5C 801DE0EC AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
/* 1CEE60 801DE0F0 8C690000 */  lw    $t1, ($v1)
/* 1CEE64 801DE0F4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1CEE68 801DE0F8 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1CEE6C 801DE0FC 00094080 */  sll   $t0, $t1, 2
/* 1CEE70 801DE100 00882021 */  addu  $a0, $a0, $t0
/* 1CEE74 801DE104 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1CEE78 801DE108 0C02C7B2 */  jal   assign_new_process_entry
/* 1CEE7C 801DE10C 24A5BD38 */   addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
.L801DE110_ovl10:
/* 1CEE80 801DE110 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1CEE84 801DE114 8FB00018 */  lw    $s0, 0x18($sp)
/* 1CEE88 801DE118 27BD0050 */  addiu $sp, $sp, 0x50
/* 1CEE8C 801DE11C 03E00008 */  jr    $ra
/* 1CEE90 801DE120 00000000 */   nop   
.type func_801DDEB8_ovl10, @function
.size func_801DDEB8_ovl10, . - func_801DDEB8_ovl10
