glabel func_801E0DF8_ovl12
/* 1F1138 801E0DF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
.L801E0DFC_ovl9:
/* 1F113C 801E0DFC AFB00014 */  sw         $s0, 0x14($sp)
.L801E0E00_ovl16:
/* 1F1140 801E0E00 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1F1144 801E0E04 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
.L801E0E08_ovl16:
/* 1F1148 801E0E08 8E030000 */  lw         $v1, 0x0($s0)
/* 1F114C 801E0E0C AFBF001C */  sw         $ra, 0x1C($sp)
/* 1F1150 801E0E10 AFB10018 */  sw         $s1, 0x18($sp)
/* 1F1154 801E0E14 AFA40020 */  sw         $a0, 0x20($sp)
/* 1F1158 801E0E18 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1F115C 801E0E1C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1F1160 801E0E20 240E0007 */  addiu      $t6, $zero, 0x7
glabel func_801E0E24_ovl9
/* 1F1164 801E0E24 000FC080 */  sll        $t8, $t7, 2
/* 1F1168 801E0E28 00380821 */  addu       $at, $at, $t8
/* 1F116C 801E0E2C AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801E0E30_ovl15:
/* 1F1170 801E0E30 8C790000 */  lw         $t9, 0x0($v1)
/* 1F1174 801E0E34 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1F1178 801E0E38 44802000 */  mtc1       $zero, $f4
.L801E0E3C_ovl17:
/* 1F117C 801E0E3C 00194080 */  sll        $t0, $t9, 2
.L801E0E40_ovl15:
/* 1F1180 801E0E40 00280821 */  addu       $at, $at, $t0
.L801E0E44_ovl15:
/* 1F1184 801E0E44 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1F1188 801E0E48 8C690000 */  lw         $t1, 0x0($v1)
/* 1F118C 801E0E4C 3C05800E */  lui        $a1, %hi(D_800E6690)
/* 1F1190 801E0E50 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
/* 1F1194 801E0E54 00095080 */  sll        $t2, $t1, 2
/* 1F1198 801E0E58 00AA5821 */  addu       $t3, $a1, $t2
/* 1F119C 801E0E5C E5640000 */  swc1       $f4, 0x0($t3)
/* 1F11A0 801E0E60 8C620000 */  lw         $v0, 0x0($v1)
/* 1F11A4 801E0E64 3C01800E */  lui        $at, %hi(D_800E64D0)
.L801E0E68_ovl10:
/* 1F11A8 801E0E68 3C06800E */  lui        $a2, %hi(D_800E6850)
/* 1F11AC 801E0E6C 00021080 */  sll        $v0, $v0, 2
/* 1F11B0 801E0E70 00A26021 */  addu       $t4, $a1, $v0
.L801E0E74_ovl16:
/* 1F11B4 801E0E74 C5860000 */  lwc1       $f6, 0x0($t4)
glabel func_801E0E78_ovl10
/* 1F11B8 801E0E78 00220821 */  addu       $at, $at, $v0
/* 1F11BC 801E0E7C 24C66850 */  addiu      $a2, $a2, %lo(D_800E6850)
.L801E0E80_ovl13:
/* 1F11C0 801E0E80 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 1F11C4 801E0E84 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1F11C8 801E0E88 3C01801E */  lui        $at, %hi(D_801E2DC4_ovl12)
/* 1F11CC 801E0E8C C4282DC4 */  lwc1       $f8, %lo(D_801E2DC4_ovl12)($at)
/* 1F11D0 801E0E90 000D7880 */  sll        $t7, $t5, 2
/* 1F11D4 801E0E94 00CF7021 */  addu       $t6, $a2, $t7
/* 1F11D8 801E0E98 E5C80000 */  swc1       $f8, 0x0($t6)
/* 1F11DC 801E0E9C 8C620000 */  lw         $v0, 0x0($v1)
/* 1F11E0 801E0EA0 3C11800F */  lui        $s1, %hi(D_800E9AA0)
/* 1F11E4 801E0EA4 26319AA0 */  addiu      $s1, $s1, %lo(D_800E9AA0)
/* 1F11E8 801E0EA8 00021080 */  sll        $v0, $v0, 2
/* 1F11EC 801E0EAC 0222C021 */  addu       $t8, $s1, $v0
/* 1F11F0 801E0EB0 8F190000 */  lw         $t9, 0x0($t8)
/* 1F11F4 801E0EB4 1320000E */  beqz       $t9, .L801E0EF0_ovl12
/* 1F11F8 801E0EB8 00000000 */   nop
.L801E0EBC_ovl12:
/* 1F11FC 801E0EBC 0C002DAF */  jal        finish_current_thread
/* 1F1200 801E0EC0 24040001 */   addiu     $a0, $zero, 0x1
/* 1F1204 801E0EC4 8E030000 */  lw         $v1, 0x0($s0)
/* 1F1208 801E0EC8 8C620000 */  lw         $v0, 0x0($v1)
/* 1F120C 801E0ECC 00021080 */  sll        $v0, $v0, 2
/* 1F1210 801E0ED0 02224021 */  addu       $t0, $s1, $v0
/* 1F1214 801E0ED4 8D090000 */  lw         $t1, 0x0($t0)
/* 1F1218 801E0ED8 1520FFF8 */  bnez       $t1, .L801E0EBC_ovl12
.L801E0EDC_ovl10:
/* 1F121C 801E0EDC 00000000 */   nop
/* 1F1220 801E0EE0 3C06800E */  lui        $a2, %hi(D_800E6850)
/* 1F1224 801E0EE4 3C05800E */  lui        $a1, %hi(D_800E6690)
/* 1F1228 801E0EE8 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
/* 1F122C 801E0EEC 24C66850 */  addiu      $a2, $a2, %lo(D_800E6850)
.L801E0EF0_ovl12:
/* 1F1230 801E0EF0 3C01800F */  lui        $at, %hi(D_800E9E20)
.L801E0EF4_ovl10:
/* 1F1234 801E0EF4 24040001 */  addiu      $a0, $zero, 0x1
.L801E0EF8_ovl16:
/* 1F1238 801E0EF8 00220821 */  addu       $at, $at, $v0
/* 1F123C 801E0EFC AC249E20 */  sw         $a0, %lo(D_800E9E20)($at)
/* 1F1240 801E0F00 8C6A0000 */  lw         $t2, 0x0($v1)
glabel func_801E0F04_ovl16
/* 1F1244 801E0F04 3C01800D */  lui        $at, %hi(D_800D7098 + 0x8)
/* 1F1248 801E0F08 44805000 */  mtc1       $zero, $f10
/* 1F124C 801E0F0C 000A5880 */  sll        $t3, $t2, 2
/* 1F1250 801E0F10 022B6021 */  addu       $t4, $s1, $t3
/* 1F1254 801E0F14 AD840000 */  sw         $a0, 0x0($t4)
/* 1F1258 801E0F18 AC2470A0 */  sw         $a0, %lo(D_800D7098 + 0x8)($at)
/* 1F125C 801E0F1C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1F1260 801E0F20 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1F1264 801E0F24 44803000 */  mtc1       $zero, $f6
.L801E0F28_ovl10:
/* 1F1268 801E0F28 000D7880 */  sll        $t7, $t5, 2
/* 1F126C 801E0F2C 002F0821 */  addu       $at, $at, $t7
/* 1F1270 801E0F30 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* 1F1274 801E0F34 8C620000 */  lw         $v0, 0x0($v1)
/* 1F1278 801E0F38 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1F127C 801E0F3C 00021080 */  sll        $v0, $v0, 2
.L801E0F40_ovl10:
/* 1F1280 801E0F40 00220821 */  addu       $at, $at, $v0
glabel func_801E0F44_ovl15
/* 1F1284 801E0F44 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
/* 1F1288 801E0F48 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 1F128C 801E0F4C 44819000 */  mtc1       $at, $f18
/* 1F1290 801E0F50 00A27021 */  addu       $t6, $a1, $v0
/* 1F1294 801E0F54 3C01800F */  lui        $at, %hi(D_800EAA60)
.L801E0F58_ovl10:
/* 1F1298 801E0F58 46128102 */  mul.s      $f4, $f16, $f18
/* 1F129C 801E0F5C E5C40000 */  swc1       $f4, 0x0($t6)
.L801E0F60_ovl16:
/* 1F12A0 801E0F60 8C620000 */  lw         $v0, 0x0($v1)
/* 1F12A4 801E0F64 00021080 */  sll        $v0, $v0, 2
.L801E0F68_ovl17:
/* 1F12A8 801E0F68 00220821 */  addu       $at, $at, $v0
/* 1F12AC 801E0F6C C420AA60 */  lwc1       $f0, %lo(D_800EAA60)($at)
/* 1F12B0 801E0F70 00C2C821 */  addu       $t9, $a2, $v0
/* 1F12B4 801E0F74 00C2C021 */  addu       $t8, $a2, $v0
/* 1F12B8 801E0F78 4606003C */  c.lt.s     $f0, $f6
.L801E0F7C_ovl17:
/* 1F12BC 801E0F7C 00000000 */  nop
/* 1F12C0 801E0F80 45020005 */  bc1fl      .L801E0F98_ovl12
/* 1F12C4 801E0F84 E7200000 */   swc1      $f0, 0x0($t9)
/* 1F12C8 801E0F88 46000207 */  neg.s      $f8, $f0
.L801E0F8C_ovl10:
/* 1F12CC 801E0F8C 10000002 */  b          .L801E0F98_ovl12
/* 1F12D0 801E0F90 E7080000 */   swc1      $f8, 0x0($t8)
/* 1F12D4 801E0F94 E7200000 */  swc1       $f0, 0x0($t9)
.L801E0F98_ovl12:
/* 1F12D8 801E0F98 8C690000 */  lw         $t1, 0x0($v1)
/* 1F12DC 801E0F9C 3C01800F */  lui        $at, %hi(D_800E9720)
/* 1F12E0 801E0FA0 2408003C */  addiu      $t0, $zero, 0x3C
.L801E0FA4_ovl10:
/* 1F12E4 801E0FA4 00095080 */  sll        $t2, $t1, 2
glabel func_801E0FA8_ovl14
/* 1F12E8 801E0FA8 002A0821 */  addu       $at, $at, $t2
/* 1F12EC 801E0FAC 0C02BE85 */  jal        func_800AFA14
glabel func_801E0FB0_ovl14
/* 1F12F0 801E0FB0 AC289720 */   sw        $t0, %lo(D_800E9720)($at)
/* 1F12F4 801E0FB4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1F12F8 801E0FB8 8FB00014 */  lw         $s0, 0x14($sp)
/* 1F12FC 801E0FBC 8FB10018 */  lw         $s1, 0x18($sp)
.L801E0FC0_ovl10:
/* 1F1300 801E0FC0 03E00008 */  jr         $ra
/* 1F1304 801E0FC4 27BD0020 */   addiu     $sp, $sp, 0x20
