glabel func_80004E98
/* 005A98 80004E98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 005A9C 80004E9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 005AA0 80004EA0 8C8E0000 */  lw    $t6, ($a0)
/* 005AA4 80004EA4 00803825 */  move  $a3, $a0
/* 005AA8 80004EA8 25CFFFFF */  addiu $t7, $t6, -1
/* 005AAC 80004EAC 2DE1000B */  sltiu $at, $t7, 0xb
/* 005AB0 80004EB0 102000C7 */  beqz  $at, .L800051D0_ovl0
/* 005AB4 80004EB4 000F7880 */   sll   $t7, $t7, 2
/* 005AB8 80004EB8 3C018004 */ lui $at, %hi(jtbl_8003FF58)
/* 005ABC 80004EBC 002F0821 */  addu  $at, $at, $t7
/* 005AC0 80004EC0 8C2FFF58 */ lw $t7, %lo(jtbl_8003FF58)($at)
/* 005AC4 80004EC4 01E00008 */  jr    $t7
/* 005AC8 80004EC8 00000000 */   nop   
glabel L80004ECC_ovl0
/* 005ACC 80004ECC 0C000FF7 */  jal   read_controller_input
/* 005AD0 80004ED0 AFA70028 */   sw    $a3, 0x28($sp)
/* 005AD4 80004ED4 0C001068 */  jal   func_800041A0
/* 005AD8 80004ED8 00000000 */   nop   
/* 005ADC 80004EDC 8FA70028 */  lw    $a3, 0x28($sp)
/* 005AE0 80004EE0 00003025 */  move  $a2, $zero
/* 005AE4 80004EE4 8CE40008 */  lw    $a0, 8($a3)
/* 005AE8 80004EE8 508000BA */  beql  $a0, $zero, .L800051D4_ovl0
/* 005AEC 80004EEC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005AF0 80004EF0 0C00B4BC */  jal   osSendMesg
/* 005AF4 80004EF4 8CE50004 */   lw    $a1, 4($a3)
/* 005AF8 80004EF8 100000B6 */  b     .L800051D4_ovl0
/* 005AFC 80004EFC 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80004F00_ovl0
/* 005B00 80004F00 3C188005 */  lui   $t8, %hi(D_80048F48) # $t8, 0x8005
/* 005B04 80004F04 8F188F48 */  lw    $t8, %lo(D_80048F48)($t8)
/* 005B08 80004F08 3C018005 */  lui   $at, %hi(D_80048F4C) # $at, 0x8005
/* 005B0C 80004F0C 1300000C */  beqz  $t8, .L80004F40_ovl0
/* 005B10 80004F10 00000000 */   nop   
/* 005B14 80004F14 0C001068 */  jal   func_800041A0
/* 005B18 80004F18 AFA70028 */   sw    $a3, 0x28($sp)
/* 005B1C 80004F1C 8FA70028 */  lw    $a3, 0x28($sp)
/* 005B20 80004F20 00003025 */  move  $a2, $zero
/* 005B24 80004F24 8CE40008 */  lw    $a0, 8($a3)
/* 005B28 80004F28 508000AA */  beql  $a0, $zero, .L800051D4_ovl0
/* 005B2C 80004F2C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005B30 80004F30 0C00B4BC */  jal   osSendMesg
/* 005B34 80004F34 8CE50004 */   lw    $a1, 4($a3)
/* 005B38 80004F38 100000A6 */  b     .L800051D4_ovl0
/* 005B3C 80004F3C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80004F40_ovl0:
/* 005B40 80004F40 100000A3 */  b     .L800051D0_ovl0
/* 005B44 80004F44 AC278F4C */   sw    $a3, %lo(D_80048F4C)($at)
glabel L80004F48_ovl0
/* 005B48 80004F48 8CF9000C */  lw    $t9, 0xc($a3)
/* 005B4C 80004F4C 3C018005 */  lui   $at, %hi(D_80048EB4) # $at, 0x8005
/* 005B50 80004F50 00003025 */  move  $a2, $zero
/* 005B54 80004F54 AC398EB0 */  sw    $t9, %lo(D_80048EB0)($at)
/* 005B58 80004F58 8CE80010 */  lw    $t0, 0x10($a3)
/* 005B5C 80004F5C AC288EB4 */  sw    $t0, %lo(D_80048EB4)($at)
/* 005B60 80004F60 8CE9000C */  lw    $t1, 0xc($a3)
/* 005B64 80004F64 3C018005 */  lui   $at, %hi(D_80048ED4) # $at, 0x8005
/* 005B68 80004F68 AC298ED0 */  sw    $t1, %lo(D_80048ED0)($at)
/* 005B6C 80004F6C 8CEA0010 */  lw    $t2, 0x10($a3)
/* 005B70 80004F70 AC2A8ED4 */  sw    $t2, %lo(D_80048ED4)($at)
/* 005B74 80004F74 8CEB000C */  lw    $t3, 0xc($a3)
/* 005B78 80004F78 3C018005 */  lui   $at, %hi(D_80048EF4) # $at, 0x8005
/* 005B7C 80004F7C AC2B8EF0 */  sw    $t3, %lo(D_80048EF0)($at)
/* 005B80 80004F80 8CEC0010 */  lw    $t4, 0x10($a3)
/* 005B84 80004F84 AC2C8EF4 */  sw    $t4, %lo(D_80048EF4)($at)
/* 005B88 80004F88 8CED000C */  lw    $t5, 0xc($a3)
/* 005B8C 80004F8C 3C018005 */  lui   $at, %hi(D_80048F14) # $at, 0x8005
/* 005B90 80004F90 AC2D8F10 */  sw    $t5, %lo(D_80048F10)($at)
/* 005B94 80004F94 8CEE0010 */  lw    $t6, 0x10($a3)
/* 005B98 80004F98 AC2E8F14 */  sw    $t6, %lo(D_80048F14)($at)
/* 005B9C 80004F9C 8CE40008 */  lw    $a0, 8($a3)
/* 005BA0 80004FA0 5080008C */  beql  $a0, $zero, .L800051D4_ovl0
/* 005BA4 80004FA4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005BA8 80004FA8 0C00B4BC */  jal   osSendMesg
/* 005BAC 80004FAC 8CE50004 */   lw    $a1, 4($a3)
/* 005BB0 80004FB0 10000088 */  b     .L800051D4_ovl0
/* 005BB4 80004FB4 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80004FB8_ovl0
/* 005BB8 80004FB8 8CEF000C */  lw    $t7, 0xc($a3)
/* 005BBC 80004FBC 3C018005 */  lui   $at, %hi(D_80048F50) # $at, 0x8005
/* 005BC0 80004FC0 00003025 */  move  $a2, $zero
/* 005BC4 80004FC4 AC2F8F50 */  sw    $t7, %lo(D_80048F50)($at)
/* 005BC8 80004FC8 8CE40008 */  lw    $a0, 8($a3)
/* 005BCC 80004FCC 50800081 */  beql  $a0, $zero, .L800051D4_ovl0
/* 005BD0 80004FD0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005BD4 80004FD4 0C00B4BC */  jal   osSendMesg
/* 005BD8 80004FD8 8CE50004 */   lw    $a1, 4($a3)
/* 005BDC 80004FDC 1000007D */  b     .L800051D4_ovl0
/* 005BE0 80004FE0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80004FE4_ovl0
/* 005BE4 80004FE4 8CF8000C */  lw    $t8, 0xc($a3)
/* 005BE8 80004FE8 3C018005 */  lui   $at, %hi(D_80048F54) # $at, 0x8005
/* 005BEC 80004FEC 00003025 */  move  $a2, $zero
/* 005BF0 80004FF0 AC388F54 */  sw    $t8, %lo(D_80048F54)($at)
/* 005BF4 80004FF4 8CE40008 */  lw    $a0, 8($a3)
/* 005BF8 80004FF8 50800076 */  beql  $a0, $zero, .L800051D4_ovl0
/* 005BFC 80004FFC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005C00 80005000 0C00B4BC */  jal   osSendMesg
/* 005C04 80005004 8CE50004 */   lw    $a1, 4($a3)
/* 005C08 80005008 10000072 */  b     .L800051D4_ovl0
/* 005C0C 8000500C 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80005010_ovl0
/* 005C10 80005010 8CE3000C */  lw    $v1, 0xc($a3)
/* 005C14 80005014 3C088005 */  lui   $t0, %hi(gControllers) # $t0, 0x8005
/* 005C18 80005018 25088EA0 */  addiu $t0, %lo(gControllers) # addiu $t0, $t0, -0x7160
/* 005C1C 8000501C 0003C940 */  sll   $t9, $v1, 5
/* 005C20 80005020 03281021 */  addu  $v0, $t9, $t0
/* 005C24 80005024 9049001C */  lbu   $t1, 0x1c($v0)
/* 005C28 80005028 55200040 */  bnezl $t1, .L8000512C_ovl0
/* 005C2C 8000502C 8CE40008 */   lw    $a0, 8($a3)
/* 005C30 80005030 904A001D */  lbu   $t2, 0x1d($v0)
/* 005C34 80005034 314B0001 */  andi  $t3, $t2, 1
/* 005C38 80005038 5160003C */  beql  $t3, $zero, .L8000512C_ovl0
/* 005C3C 8000503C 8CE40008 */   lw    $a0, 8($a3)
/* 005C40 80005040 8CE20010 */  lw    $v0, 0x10($a3)
/* 005C44 80005044 3C048005 */  lui   $a0, %hi(sSIMesgQueue) # $a0, 0x8005
/* 005C48 80005048 00603025 */  move  $a2, $v1
/* 005C4C 8000504C 10400009 */  beqz  $v0, .L80005074_ovl0
/* 005C50 80005050 24848DA0 */   addiu $a0, %lo(sSIMesgQueue) # addiu $a0, $a0, -0x7260
/* 005C54 80005054 24010001 */  li    $at, 1
/* 005C58 80005058 10410012 */  beq   $v0, $at, .L800050A4_ovl0
/* 005C5C 8000505C 3C0E8005 */   lui   $t6, %hi(D_80048CDC) # $t6, 0x8005
/* 005C60 80005060 24010002 */  li    $at, 2
/* 005C64 80005064 1041001E */  beq   $v0, $at, .L800050E0_ovl0
/* 005C68 80005068 0006C880 */   sll   $t9, $a2, 2
/* 005C6C 8000506C 1000002F */  b     .L8000512C_ovl0
/* 005C70 80005070 8CE40008 */   lw    $a0, 8($a3)
.L80005074_ovl0:
/* 005C74 80005074 00066080 */  sll   $t4, $a2, 2
/* 005C78 80005078 01866023 */  subu  $t4, $t4, $a2
/* 005C7C 8000507C 000C6080 */  sll   $t4, $t4, 2
/* 005C80 80005080 01866021 */  addu  $t4, $t4, $a2
/* 005C84 80005084 3C0D8005 */  lui   $t5, %hi(sPakDevices) # $t5, 0x8005
/* 005C88 80005088 25AD90F0 */  addiu $t5, %lo(sPakDevices) # addiu $t5, $t5, -0x6f10
/* 005C8C 8000508C 000C60C0 */  sll   $t4, $t4, 3
/* 005C90 80005090 018D2821 */  addu  $a1, $t4, $t5
/* 005C94 80005094 0C00BCAD */  jal   func_8002F2B4
/* 005C98 80005098 AFA70028 */   sw    $a3, 0x28($sp)
/* 005C9C 8000509C 10000022 */  b     .L80005128_ovl0
/* 005CA0 800050A0 8FA70028 */   lw    $a3, 0x28($sp)
.L800050A4_ovl0:
/* 005CA4 800050A4 8DCE8CDC */  lw    $t6, %lo(D_80048CDC)($t6)
/* 005CA8 800050A8 00067880 */  sll   $t7, $a2, 2
/* 005CAC 800050AC 01E67823 */  subu  $t7, $t7, $a2
/* 005CB0 800050B0 15C0001D */  bnez  $t6, .L80005128_ovl0
/* 005CB4 800050B4 000F7880 */   sll   $t7, $t7, 2
/* 005CB8 800050B8 01E67821 */  addu  $t7, $t7, $a2
/* 005CBC 800050BC 3C188005 */  lui   $t8, %hi(sPakDevices) # $t8, 0x8005
/* 005CC0 800050C0 271890F0 */  addiu $t8, %lo(sPakDevices) # addiu $t8, $t8, -0x6f10
/* 005CC4 800050C4 000F78C0 */  sll   $t7, $t7, 3
/* 005CC8 800050C8 01F82021 */  addu  $a0, $t7, $t8
/* 005CCC 800050CC 24050001 */  li    $a1, 1
/* 005CD0 800050D0 0C00BC10 */  jal   func_8002F040
/* 005CD4 800050D4 AFA70028 */   sw    $a3, 0x28($sp)
/* 005CD8 800050D8 10000013 */  b     .L80005128_ovl0
/* 005CDC 800050DC 8FA70028 */   lw    $a3, 0x28($sp)
.L800050E0_ovl0:
/* 005CE0 800050E0 0326C823 */  subu  $t9, $t9, $a2
/* 005CE4 800050E4 0019C880 */  sll   $t9, $t9, 2
/* 005CE8 800050E8 0326C821 */  addu  $t9, $t9, $a2
/* 005CEC 800050EC 3C088005 */  lui   $t0, %hi(sPakDevices) # $t0, 0x8005
/* 005CF0 800050F0 250890F0 */  addiu $t0, %lo(sPakDevices) # addiu $t0, $t0, -0x6f10
/* 005CF4 800050F4 0019C8C0 */  sll   $t9, $t9, 3
/* 005CF8 800050F8 03282021 */  addu  $a0, $t9, $t0
/* 005CFC 800050FC AFA40018 */  sw    $a0, 0x18($sp)
/* 005D00 80005100 00002825 */  move  $a1, $zero
/* 005D04 80005104 0C00BC10 */  jal   func_8002F040
/* 005D08 80005108 AFA70028 */   sw    $a3, 0x28($sp)
/* 005D0C 8000510C 8FA40018 */  lw    $a0, 0x18($sp)
/* 005D10 80005110 0C00BC10 */  jal   func_8002F040
/* 005D14 80005114 00002825 */   move  $a1, $zero
/* 005D18 80005118 8FA40018 */  lw    $a0, 0x18($sp)
/* 005D1C 8000511C 0C00BC10 */  jal   func_8002F040
/* 005D20 80005120 00002825 */   move  $a1, $zero
/* 005D24 80005124 8FA70028 */  lw    $a3, 0x28($sp)
.L80005128_ovl0:
/* 005D28 80005128 8CE40008 */  lw    $a0, 8($a3)
.L8000512C_ovl0:
/* 005D2C 8000512C 00003025 */  move  $a2, $zero
/* 005D30 80005130 50800028 */  beql  $a0, $zero, .L800051D4_ovl0
/* 005D34 80005134 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005D38 80005138 0C00B4BC */  jal   osSendMesg
/* 005D3C 8000513C 8CE50004 */   lw    $a1, 4($a3)
/* 005D40 80005140 10000024 */  b     .L800051D4_ovl0
/* 005D44 80005144 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80005148_ovl0
/* 005D48 80005148 8CE9000C */  lw    $t1, 0xc($a3)
/* 005D4C 8000514C 3C0B8005 */  lui   $t3, %hi(gControllers) # $t3, 0x8005
/* 005D50 80005150 256B8EA0 */  addiu $t3, %lo(gControllers) # addiu $t3, $t3, -0x7160
/* 005D54 80005154 00095140 */  sll   $t2, $t1, 5
/* 005D58 80005158 014B1021 */  addu  $v0, $t2, $t3
/* 005D5C 8000515C 904C001C */  lbu   $t4, 0x1c($v0)
/* 005D60 80005160 5580000A */  bnezl $t4, .L8000518C_ovl0
/* 005D64 80005164 8CE40008 */   lw    $a0, 8($a3)
/* 005D68 80005168 904D001D */  lbu   $t5, 0x1d($v0)
/* 005D6C 8000516C 00E02025 */  move  $a0, $a3
/* 005D70 80005170 31AE0001 */  andi  $t6, $t5, 1
/* 005D74 80005174 51C00005 */  beql  $t6, $zero, .L8000518C_ovl0
/* 005D78 80005178 8CE40008 */   lw    $a0, 8($a3)
/* 005D7C 8000517C 0C001204 */  jal   func_80004810
/* 005D80 80005180 AFA70028 */   sw    $a3, 0x28($sp)
/* 005D84 80005184 8FA70028 */  lw    $a3, 0x28($sp)
/* 005D88 80005188 8CE40008 */  lw    $a0, 8($a3)
.L8000518C_ovl0:
/* 005D8C 8000518C 00003025 */  move  $a2, $zero
/* 005D90 80005190 50800010 */  beql  $a0, $zero, .L800051D4_ovl0
/* 005D94 80005194 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005D98 80005198 0C00B4BC */  jal   osSendMesg
/* 005D9C 8000519C 8CE50004 */   lw    $a1, 4($a3)
/* 005DA0 800051A0 1000000C */  b     .L800051D4_ovl0
/* 005DA4 800051A4 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800051A8_ovl0
/* 005DA8 800051A8 00E02025 */  move  $a0, $a3
/* 005DAC 800051AC 0C001372 */  jal   func_80004DC8
/* 005DB0 800051B0 AFA70028 */   sw    $a3, 0x28($sp)
/* 005DB4 800051B4 8FA70028 */  lw    $a3, 0x28($sp)
/* 005DB8 800051B8 00003025 */  move  $a2, $zero
/* 005DBC 800051BC 8CE40008 */  lw    $a0, 8($a3)
/* 005DC0 800051C0 50800004 */  beql  $a0, $zero, .L800051D4_ovl0
/* 005DC4 800051C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 005DC8 800051C8 0C00B4BC */  jal   osSendMesg
/* 005DCC 800051CC 8CE50004 */   lw    $a1, 4($a3)
glabel L800051D0_ovl0
.L800051D0_ovl0:
/* 005DD0 800051D0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800051D4_ovl0:
/* 005DD4 800051D4 27BD0028 */  addiu $sp, $sp, 0x28
/* 005DD8 800051D8 03E00008 */  jr    $ra
/* 005DDC 800051DC 00000000 */   nop   
.type func_80004E98, @function
.size func_80004E98, . - func_80004E98
