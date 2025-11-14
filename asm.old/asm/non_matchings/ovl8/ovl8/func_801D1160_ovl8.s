glabel func_801D1160_ovl8
/* 174C40 801D1160 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174C44 801D1164 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174C48 801D1168 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174C4C 801D116C AFBF0014 */  sw    $ra, 0x14($sp)
/* 174C50 801D1170 8CAE0000 */  lw    $t6, ($a1)
/* 174C54 801D1174 44806000 */  mtc1  $zero, $f12
/* 174C58 801D1178 3C02800E */  lui   $v0, %hi(D_800E5890) # $v0, 0x800e
/* 174C5C 801D117C 24425890 */  addiu $v0, %lo(D_800E5890) # addiu $v0, $v0, 0x5890
/* 174C60 801D1180 000E7880 */  sll   $t7, $t6, 2
/* 174C64 801D1184 004FC021 */  addu  $t8, $v0, $t7
/* 174C68 801D1188 E70C0000 */  swc1  $f12, ($t8)
/* 174C6C 801D118C 8CA30000 */  lw    $v1, ($a1)
/* 174C70 801D1190 3C01800E */ lui $at, %hi(D_800E5C10)
/* 174C74 801D1194 00031880 */  sll   $v1, $v1, 2
/* 174C78 801D1198 0043C821 */  addu  $t9, $v0, $v1
/* 174C7C 801D119C C7200000 */  lwc1  $f0, ($t9)
/* 174C80 801D11A0 00230821 */  addu  $at, $at, $v1
/* 174C84 801D11A4 E4205C10 */ swc1 $f0, %lo(D_800E5C10)($at)
/* 174C88 801D11A8 8CA80000 */  lw    $t0, ($a1)
/* 174C8C 801D11AC 3C01800E */ lui $at, %hi(D_800E56D0)
/* 174C90 801D11B0 00084880 */  sll   $t1, $t0, 2
/* 174C94 801D11B4 00290821 */  addu  $at, $at, $t1
/* 174C98 801D11B8 E42056D0 */ swc1 $f0, %lo(D_800E56D0)($at)
/* 174C9C 801D11BC 8CAA0000 */  lw    $t2, ($a1)
/* 174CA0 801D11C0 3C01800E */ lui $at, %hi(D_800E5510)
/* 174CA4 801D11C4 000A5880 */  sll   $t3, $t2, 2
/* 174CA8 801D11C8 002B0821 */  addu  $at, $at, $t3
/* 174CAC 801D11CC 0C02D8AB */  jal   func_800B62AC
/* 174CB0 801D11D0 E4205510 */ swc1 $f0, %lo(D_800E5510)($at)
/* 174CB4 801D11D4 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174CB8 801D11D8 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174CBC 801D11DC 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 174CC0 801D11E0 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 174CC4 801D11E4 8CA30000 */  lw    $v1, ($a1)
/* 174CC8 801D11E8 3C01801E */  lui   $at, %hi(D_801DB06C_ovl8) # $at, 0x801e
/* 174CCC 801D11EC C422B06C */  lwc1  $f2, %lo(D_801DB06C_ovl8)($at)
/* 174CD0 801D11F0 00031880 */  sll   $v1, $v1, 2
/* 174CD4 801D11F4 00831021 */  addu  $v0, $a0, $v1
/* 174CD8 801D11F8 C4400000 */  lwc1  $f0, ($v0)
/* 174CDC 801D11FC 44806000 */  mtc1  $zero, $f12
/* 174CE0 801D1200 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 174CE4 801D1204 4600103E */  c.le.s $f2, $f0
/* 174CE8 801D1208 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 174CEC 801D120C 4502000C */  bc1fl .L801D1240_ovl8
/* 174CF0 801D1210 460C003C */   c.lt.s $f0, $f12
/* 174CF4 801D1214 46020101 */  sub.s $f4, $f0, $f2
.L801D1218_ovl8:
/* 174CF8 801D1218 E4440000 */  swc1  $f4, ($v0)
/* 174CFC 801D121C 8CA30000 */  lw    $v1, ($a1)
/* 174D00 801D1220 00031880 */  sll   $v1, $v1, 2
/* 174D04 801D1224 00831021 */  addu  $v0, $a0, $v1
/* 174D08 801D1228 C4400000 */  lwc1  $f0, ($v0)
/* 174D0C 801D122C 4600103E */  c.le.s $f2, $f0
/* 174D10 801D1230 00000000 */  nop   
/* 174D14 801D1234 4503FFF8 */  bc1tl .L801D1218_ovl8
/* 174D18 801D1238 46020101 */   sub.s $f4, $f0, $f2
/* 174D1C 801D123C 460C003C */  c.lt.s $f0, $f12
.L801D1240_ovl8:
/* 174D20 801D1240 00000000 */  nop   
/* 174D24 801D1244 4502000C */  bc1fl .L801D1278_ovl8
/* 174D28 801D1248 00230821 */   addu  $at, $at, $v1
/* 174D2C 801D124C 46020180 */  add.s $f6, $f0, $f2
.L801D1250_ovl8:
/* 174D30 801D1250 E4460000 */  swc1  $f6, ($v0)
/* 174D34 801D1254 8CA30000 */  lw    $v1, ($a1)
/* 174D38 801D1258 00031880 */  sll   $v1, $v1, 2
/* 174D3C 801D125C 00831021 */  addu  $v0, $a0, $v1
/* 174D40 801D1260 C4400000 */  lwc1  $f0, ($v0)
/* 174D44 801D1264 460C003C */  c.lt.s $f0, $f12
/* 174D48 801D1268 00000000 */  nop   
/* 174D4C 801D126C 4503FFF8 */  bc1tl .L801D1250_ovl8
/* 174D50 801D1270 46020180 */   add.s $f6, $f0, $f2
/* 174D54 801D1274 00230821 */  addu  $at, $at, $v1
.L801D1278_ovl8:
/* 174D58 801D1278 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 174D5C 801D127C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 174D60 801D1280 00230821 */  addu  $at, $at, $v1
/* 174D64 801D1284 00C33021 */  addu  $a2, $a2, $v1
/* 174D68 801D1288 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 174D6C 801D128C 0C02CC8D */  jal   func_800B3234
/* 174D70 801D1290 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 174D74 801D1294 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174D78 801D1298 27BD0018 */  addiu $sp, $sp, 0x18
/* 174D7C 801D129C 03E00008 */  jr    $ra
/* 174D80 801D12A0 00000000 */   nop   
.type func_801D1160_ovl8, @function
.size func_801D1160_ovl8, . - func_801D1160_ovl8
