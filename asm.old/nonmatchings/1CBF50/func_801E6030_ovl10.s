glabel func_801E6030_ovl10
/* 1D6DA0 801E6030 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D6DA4 801E6034 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D6DA8 801E6038 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1D6DAC 801E603C AFBF0014 */  sw         $ra, 0x14($sp)
.L801E6040_ovl9:
/* 1D6DB0 801E6040 8C430000 */  lw         $v1, 0x0($v0)
/* 1D6DB4 801E6044 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 1D6DB8 801E6048 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 1D6DBC 801E604C 00031880 */  sll        $v1, $v1, 2
/* 1D6DC0 801E6050 00A32821 */  addu       $a1, $a1, $v1
/* 1D6DC4 801E6054 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
.L801E6058_ovl16:
/* 1D6DC8 801E6058 00230821 */  addu       $at, $at, $v1
/* 1D6DCC 801E605C 8CAE008C */  lw         $t6, 0x8C($a1)
/* 1D6DD0 801E6060 15C00003 */  bnez       $t6, .L801E6070_ovl10
/* 1D6DD4 801E6064 00000000 */   nop
.L801E6068_ovl9:
/* 1D6DD8 801E6068 10000087 */  b          .L801E6288_ovl10
/* 1D6DDC 801E606C 00001025 */   or        $v0, $zero, $zero
.L801E6070_ovl10:
/* 1D6DE0 801E6070 C4247B20 */  lwc1       $f4, %lo(D_800E7B20)($at)
glabel func_801E6074_ovl15
/* 1D6DE4 801E6074 3C01800F */  lui        $at, %hi(D_800EB160)
/* 1D6DE8 801E6078 00230821 */  addu       $at, $at, $v1
.L801E607C_ovl9:
/* 1D6DEC 801E607C E424B160 */  swc1       $f4, %lo(D_800EB160)($at)
/* 1D6DF0 801E6080 8C440000 */  lw         $a0, 0x0($v0)
/* 1D6DF4 801E6084 0C044554 */  jal        func_80111550
glabel func_801E6088_ovl9
/* 1D6DF8 801E6088 AFA50028 */   sw        $a1, 0x28($sp)
/* 1D6DFC 801E608C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1D6E00 801E6090 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
.L801E6094_ovl16:
/* 1D6E04 801E6094 8FAF0028 */  lw         $t7, 0x28($sp)
/* 1D6E08 801E6098 8F050000 */  lw         $a1, 0x0($t8)
/* 1D6E0C 801E609C 0C044722 */  jal        func_80111C88
/* 1D6E10 801E60A0 8DE4008C */   lw        $a0, 0x8C($t7)
/* 1D6E14 801E60A4 0C0447B3 */  jal        func_80111ECC
/* 1D6E18 801E60A8 00402025 */   or        $a0, $v0, $zero
/* 1D6E1C 801E60AC 0C0442C0 */  jal        func_80110B00
/* 1D6E20 801E60B0 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D6E24 801E60B4 1040000D */  beqz       $v0, .L801E60EC_ovl10
/* 1D6E28 801E60B8 3C088005 */   lui       $t0, %hi(D_8004A7C4)
/* 1D6E2C 801E60BC 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 1D6E30 801E60C0 93B90032 */  lbu        $t9, 0x32($sp)
/* 1D6E34 801E60C4 3C06800F */  lui        $a2, %hi(D_800E83E0)
/* 1D6E38 801E60C8 8D090000 */  lw         $t1, 0x0($t0)
.L801E60CC_ovl15:
/* 1D6E3C 801E60CC 24C683E0 */  addiu      $a2, $a2, %lo(D_800E83E0)
/* 1D6E40 801E60D0 00095080 */  sll        $t2, $t1, 2
/* 1D6E44 801E60D4 00CA5821 */  addu       $t3, $a2, $t2
/* 1D6E48 801E60D8 AD790000 */  sw         $t9, 0x0($t3)
/* 1D6E4C 801E60DC 8FAD0028 */  lw         $t5, 0x28($sp)
/* 1D6E50 801E60E0 93AC0033 */  lbu        $t4, 0x33($sp)
/* 1D6E54 801E60E4 1000002B */  b          .L801E6194_ovl10
.L801E60E8_ovl15:
/* 1D6E58 801E60E8 A1AC0043 */   sb        $t4, 0x43($t5)
.L801E60EC_ovl10:
/* 1D6E5C 801E60EC 0C0443F5 */  jal        func_80110FD4
/* 1D6E60 801E60F0 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D6E64 801E60F4 1040000D */  beqz       $v0, .L801E612C_ovl10
/* 1D6E68 801E60F8 3C0F8005 */   lui       $t7, %hi(D_8004A7C4)
/* 1D6E6C 801E60FC 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1D6E70 801E6100 93AE0032 */  lbu        $t6, 0x32($sp)
/* 1D6E74 801E6104 3C06800F */  lui        $a2, %hi(D_800E83E0)
/* 1D6E78 801E6108 8DF80000 */  lw         $t8, 0x0($t7)
.L801E610C_ovl15:
/* 1D6E7C 801E610C 24C683E0 */  addiu      $a2, $a2, %lo(D_800E83E0)
/* 1D6E80 801E6110 00184080 */  sll        $t0, $t8, 2
/* 1D6E84 801E6114 00C84821 */  addu       $t1, $a2, $t0
/* 1D6E88 801E6118 AD2E0000 */  sw         $t6, 0x0($t1)
/* 1D6E8C 801E611C 8FB90028 */  lw         $t9, 0x28($sp)
/* 1D6E90 801E6120 93AA0033 */  lbu        $t2, 0x33($sp)
/* 1D6E94 801E6124 1000001B */  b          .L801E6194_ovl10
/* 1D6E98 801E6128 A32A0043 */   sb        $t2, 0x43($t9)
.L801E612C_ovl10:
/* 1D6E9C 801E612C 0C044054 */  jal        func_80110150
.L801E6130_ovl16:
/* 1D6EA0 801E6130 27A40030 */   addiu     $a0, $sp, 0x30
.L801E6134_ovl16:
/* 1D6EA4 801E6134 1040000D */  beqz       $v0, .L801E616C_ovl10
/* 1D6EA8 801E6138 3C0C8005 */   lui       $t4, %hi(D_8004A7C4)
glabel func_801E613C_ovl15
/* 1D6EAC 801E613C 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 1D6EB0 801E6140 93AB0032 */  lbu        $t3, 0x32($sp)
/* 1D6EB4 801E6144 3C06800F */  lui        $a2, %hi(D_800E83E0)
/* 1D6EB8 801E6148 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1D6EBC 801E614C 24C683E0 */  addiu      $a2, $a2, %lo(D_800E83E0)
/* 1D6EC0 801E6150 000D7880 */  sll        $t7, $t5, 2
/* 1D6EC4 801E6154 00CFC021 */  addu       $t8, $a2, $t7
/* 1D6EC8 801E6158 AF0B0000 */  sw         $t3, 0x0($t8)
/* 1D6ECC 801E615C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 1D6ED0 801E6160 93A80033 */  lbu        $t0, 0x33($sp)
/* 1D6ED4 801E6164 1000000B */  b          .L801E6194_ovl10
glabel func_801E6168_ovl9
/* 1D6ED8 801E6168 A1C80043 */   sb        $t0, 0x43($t6)
.L801E616C_ovl10:
/* 1D6EDC 801E616C 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1D6EE0 801E6170 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1D6EE4 801E6174 3C06800F */  lui        $a2, %hi(D_800E83E0)
/* 1D6EE8 801E6178 24C683E0 */  addiu      $a2, $a2, %lo(D_800E83E0)
/* 1D6EEC 801E617C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1D6EF0 801E6180 000AC880 */  sll        $t9, $t2, 2
/* 1D6EF4 801E6184 00D96021 */  addu       $t4, $a2, $t9
/* 1D6EF8 801E6188 AD800000 */  sw         $zero, 0x0($t4)
/* 1D6EFC 801E618C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 1D6F00 801E6190 A1A00043 */  sb         $zero, 0x43($t5)
.L801E6194_ovl10:
/* 1D6F04 801E6194 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D6F08 801E6198 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D6F0C 801E619C 24010001 */  addiu      $at, $zero, 0x1
/* 1D6F10 801E61A0 8C450000 */  lw         $a1, 0x0($v0)
/* 1D6F14 801E61A4 00051880 */  sll        $v1, $a1, 2
/* 1D6F18 801E61A8 00C37821 */  addu       $t7, $a2, $v1
/* 1D6F1C 801E61AC 8DE40000 */  lw         $a0, 0x0($t7)
.L801E61B0_ovl9:
/* 1D6F20 801E61B0 10810013 */  beq        $a0, $at, .L801E6200_ovl10
/* 1D6F24 801E61B4 24010002 */   addiu     $at, $zero, 0x2
/* 1D6F28 801E61B8 10810005 */  beq        $a0, $at, .L801E61D0_ovl10
/* 1D6F2C 801E61BC 24010003 */   addiu     $at, $zero, 0x3
.L801E61C0_ovl9:
/* 1D6F30 801E61C0 10810017 */  beq        $a0, $at, .L801E6220_ovl10
/* 1D6F34 801E61C4 00000000 */   nop
/* 1D6F38 801E61C8 1000002F */  b          .L801E6288_ovl10
.L801E61CC_ovl16:
/* 1D6F3C 801E61CC 00001025 */   or        $v0, $zero, $zero
.L801E61D0_ovl10:
/* 1D6F40 801E61D0 3C02800E */  lui        $v0, %hi(D_800E7880)
/* 1D6F44 801E61D4 00451021 */  addu       $v0, $v0, $a1
/* 1D6F48 801E61D8 90427880 */  lbu        $v0, %lo(D_800E7880)($v0)
/* 1D6F4C 801E61DC 24010006 */  addiu      $at, $zero, 0x6
/* 1D6F50 801E61E0 10410003 */  beq        $v0, $at, .L801E61F0_ovl10
/* 1D6F54 801E61E4 24010007 */   addiu     $at, $zero, 0x7
.L801E61E8_ovl9:
/* 1D6F58 801E61E8 14410005 */  bne        $v0, $at, .L801E6200_ovl10
/* 1D6F5C 801E61EC 00000000 */   nop
.L801E61F0_ovl10:
/* 1D6F60 801E61F0 0C079772 */  jal        func_801E5DC8_ovl13
/* 1D6F64 801E61F4 00000000 */   nop
/* 1D6F68 801E61F8 10000023 */  b          .L801E6288_ovl10
.L801E61FC_ovl9:
/* 1D6F6C 801E61FC 24020001 */   addiu     $v0, $zero, 0x1
.L801E6200_ovl10:
/* 1D6F70 801E6200 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1D6F74 801E6204 00832021 */  addu       $a0, $a0, $v1
glabel func_801E6208_ovl9
/* 1D6F78 801E6208 3C05801F */  lui        $a1, %hi(func_801EB9DC_ovl10)
/* 1D6F7C 801E620C 24A5B9DC */  addiu      $a1, $a1, %lo(func_801EB9DC_ovl10)
/* 1D6F80 801E6210 0C02C7B2 */  jal        assign_new_process_entry
/* 1D6F84 801E6214 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D6F88 801E6218 1000001B */  b          .L801E6288_ovl10
.L801E621C_ovl16:
/* 1D6F8C 801E621C 24020001 */   addiu     $v0, $zero, 0x1
.L801E6220_ovl10:
/* 1D6F90 801E6220 3C01800F */  lui        $at, %hi(D_800E8220)
/* 1D6F94 801E6224 8FAB003C */  lw         $t3, 0x3C($sp)
/* 1D6F98 801E6228 00230821 */  addu       $at, $at, $v1
/* 1D6F9C 801E622C AC208220 */  sw         $zero, %lo(D_800E8220)($at)
/* 1D6FA0 801E6230 2401FFFF */  addiu      $at, $zero, -0x1
/* 1D6FA4 801E6234 11610006 */  beq        $t3, $at, .L801E6250_ovl10
/* 1D6FA8 801E6238 3C038013 */   lui       $v1, %hi(gKirbyState)
/* 1D6FAC 801E623C 8C580000 */  lw         $t8, 0x0($v0)
/* 1D6FB0 801E6240 3C01800E */  lui        $at, %hi(D_800E0D50)
.L801E6244_ovl16:
/* 1D6FB4 801E6244 00184080 */  sll        $t0, $t8, 2
.L801E6248_ovl16:
/* 1D6FB8 801E6248 00280821 */  addu       $at, $at, $t0
/* 1D6FBC 801E624C AC2B0D50 */  sw         $t3, %lo(D_800E0D50)($at)
.L801E6250_ovl10:
/* 1D6FC0 801E6250 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
/* 1D6FC4 801E6254 846E00B2 */  lh         $t6, 0xB2($v1)
/* 1D6FC8 801E6258 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1D6FCC 801E625C 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
/* 1D6FD0 801E6260 25C90001 */  addiu      $t1, $t6, 0x1
/* 1D6FD4 801E6264 A46900B2 */  sh         $t1, 0xB2($v1)
/* 1D6FD8 801E6268 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1D6FDC 801E626C 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
/* 1D6FE0 801E6270 000AC880 */  sll        $t9, $t2, 2
/* 1D6FE4 801E6274 00992021 */  addu       $a0, $a0, $t9
/* 1D6FE8 801E6278 0C02C7B2 */  jal        assign_new_process_entry
/* 1D6FEC 801E627C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D6FF0 801E6280 10000001 */  b          .L801E6288_ovl10
/* 1D6FF4 801E6284 24020001 */   addiu     $v0, $zero, 0x1
.L801E6288_ovl10:
/* 1D6FF8 801E6288 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D6FFC 801E628C 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1D7000 801E6290 03E00008 */  jr         $ra
/* 1D7004 801E6294 00000000 */   nop
