glabel func_801E11D0_ovl13 # 31
/* 1F9150 801E11D0 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9154 801E11D4 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9158 801E11D8 8CEE0000 */  lw          $t6, 0x0($a3)
/* 1F915C 801E11DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F9160 801E11E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F9164 801E11E4 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F9168 801E11E8 8DC20000 */  lw          $v0, 0x0($t6)
/* 1F916C 801E11EC 3C08800E */  lui         $t0, %hi(D_800DFBD0)
/* 1F9170 801E11F0 2508FBD0 */  addiu       $t0, $t0, %lo(D_800DFBD0)
/* 1F9174 801E11F4 00021080 */  sll         $v0, $v0, 2
/* 1F9178 801E11F8 01027821 */  addu        $t7, $t0, $v0
/* 1F917C 801E11FC 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F9180 801E1200 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F9184 801E1204 00220821 */  addu        $at, $at, $v0
/* 1F9188 801E1208 8F030008 */  lw          $v1, 0x8($t8)
/* 1F918C 801E120C C426ADE0 */  lwc1        $f6, %lo(D_800EADE0)($at)
/* 1F9190 801E1210 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F9194 801E1214 C4640030 */  lwc1        $f4, 0x30($v1)
/* 1F9198 801E1218 46062200 */  add.s       $f8, $f4, $f6
/* 1F919C 801E121C E4680030 */  swc1        $f8, 0x30($v1)
/* 1F91A0 801E1220 8CF90000 */  lw          $t9, 0x0($a3)
/* 1F91A4 801E1224 8F220000 */  lw          $v0, 0x0($t9)
/* 1F91A8 801E1228 00021080 */  sll         $v0, $v0, 2
/* 1F91AC 801E122C 01024821 */  addu        $t1, $t0, $v0
/* 1F91B0 801E1230 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F91B4 801E1234 00220821 */  addu        $at, $at, $v0
/* 1F91B8 801E1238 C430AC20 */  lwc1        $f16, %lo(D_800EAC20)($at)
/* 1F91BC 801E123C 8D450004 */  lw          $a1, 0x4($t2)
/* 1F91C0 801E1240 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F91C4 801E1244 C4AA0034 */  lwc1        $f10, 0x34($a1)
/* 1F91C8 801E1248 46105480 */  add.s       $f18, $f10, $f16
/* 1F91CC 801E124C E4B20034 */  swc1        $f18, 0x34($a1)
/* 1F91D0 801E1250 8CEB0000 */  lw          $t3, 0x0($a3)
/* 1F91D4 801E1254 8D620000 */  lw          $v0, 0x0($t3)
/* 1F91D8 801E1258 00021080 */  sll         $v0, $v0, 2
/* 1F91DC 801E125C 01026021 */  addu        $t4, $t0, $v0
/* 1F91E0 801E1260 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F91E4 801E1264 00220821 */  addu        $at, $at, $v0
/* 1F91E8 801E1268 C426AFA0 */  lwc1        $f6, %lo(D_800EAFA0)($at)
/* 1F91EC 801E126C 8DA30008 */  lw          $v1, 0x8($t5)
/* 1F91F0 801E1270 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F91F4 801E1274 C4640038 */  lwc1        $f4, 0x38($v1)
/* 1F91F8 801E1278 46062200 */  add.s       $f8, $f4, $f6
/* 1F91FC 801E127C E4680038 */  swc1        $f8, 0x38($v1)
/* 1F9200 801E1280 8CEE0000 */  lw          $t6, 0x0($a3)
/* 1F9204 801E1284 8FA40018 */  lw          $a0, 0x18($sp)
/* 1F9208 801E1288 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F920C 801E128C 000FC080 */  sll         $t8, $t7, 2
/* 1F9210 801E1290 00380821 */  addu        $at, $at, $t8
/* 1F9214 801E1294 0C06835D */  jal         func_801A0D74_ovl7
/* 1F9218 801E1298 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F921C 801E129C 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9220 801E12A0 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9224 801E12A4 8CF90000 */  lw          $t9, 0x0($a3)
/* 1F9228 801E12A8 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F922C 801E12AC 44805000 */  mtc1        $zero, $f10
/* 1F9230 801E12B0 8F220000 */  lw          $v0, 0x0($t9)
/* 1F9234 801E12B4 3C08800E */  lui         $t0, %hi(D_800DFBD0)
/* 1F9238 801E12B8 2508FBD0 */  addiu       $t0, $t0, %lo(D_800DFBD0)
/* 1F923C 801E12BC 00021080 */  sll         $v0, $v0, 2
/* 1F9240 801E12C0 00220821 */  addu        $at, $at, $v0
/* 1F9244 801E12C4 C4303210 */  lwc1        $f16, %lo(D_800E3210)($at)
/* 1F9248 801E12C8 01024821 */  addu        $t1, $t0, $v0
/* 1F924C 801E12CC 46105032 */  c.eq.s      $f10, $f16
/* 1F9250 801E12D0 00000000 */  nop
/* 1F9254 801E12D4 45010006 */  bc1t        L801E12F0_ovl13
/* 1F9258 801E12D8 00000000 */   nop
/* 1F925C 801E12DC 8D230000 */  lw          $v1, 0x0($t1)
/* 1F9260 801E12E0 8C64005C */  lw          $a0, 0x5C($v1)
/* 1F9264 801E12E4 8C650010 */  lw          $a1, 0x10($v1)
/* 1F9268 801E12E8 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F926C 801E12EC 8C660018 */   lw         $a2, 0x18($v1)
glabel L801E12F0_ovl13
/* 1F9270 801E12F0 0C078E56 */  jal         func_801E3958_ovl13
/* 1F9274 801E12F4 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F9278 801E12F8 3C0A800D */  lui         $t2, %hi(D_800D709C)
/* 1F927C 801E12FC 8D4A709C */  lw          $t2, %lo(D_800D709C)($t2)
/* 1F9280 801E1300 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9284 801E1304 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9288 801E1308 51400011 */  beql        $t2, $zero, L801E1350_ovl13
/* 1F928C 801E130C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 1F9290 801E1310 8CE20000 */  lw          $v0, 0x0($a3)
/* 1F9294 801E1314 3C03800D */  lui         $v1, %hi(D_800D70D8)
/* 1F9298 801E1318 246370D8 */  addiu       $v1, $v1, %lo(D_800D70D8)
/* 1F929C 801E131C 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1F92A0 801E1320 C4720004 */  lwc1        $f18, 0x4($v1)
/* 1F92A4 801E1324 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1F92A8 801E1328 000B6080 */  sll         $t4, $t3, 2
/* 1F92AC 801E132C 002C0821 */  addu        $at, $at, $t4
/* 1F92B0 801E1330 E43225D0 */  swc1        $f18, %lo(gEntitiesNextPosXArray)($at)
/* 1F92B4 801E1334 8C4D0000 */  lw          $t5, 0x0($v0)
/* 1F92B8 801E1338 C4640008 */  lwc1        $f4, 0x8($v1)
/* 1F92BC 801E133C 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 1F92C0 801E1340 000D7080 */  sll         $t6, $t5, 2
/* 1F92C4 801E1344 002E0821 */  addu        $at, $at, $t6
/* 1F92C8 801E1348 E4242950 */  swc1        $f4, %lo(gEntitiesNextPosZArray)($at)
/* 1F92CC 801E134C 8FBF0014 */  lw          $ra, 0x14($sp)
glabel L801E1350_ovl13
/* 1F92D0 801E1350 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F92D4 801E1354 03E00008 */  jr          $ra
/* 1F92D8 801E1358 00000000 */   nop
.type func_801E11D0_ovl13, @function

.size func_801E11D0_ovl13, . - func_801E11D0_ovl13
