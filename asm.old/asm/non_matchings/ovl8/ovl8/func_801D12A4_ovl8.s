glabel func_801D12A4_ovl8
/* 174D84 801D12A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 174D88 801D12A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 174D8C 801D12AC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 174D90 801D12B0 44806000 */  mtc1  $zero, $f12
/* 174D94 801D12B4 8C430000 */  lw    $v1, ($v0)
/* 174D98 801D12B8 3C04800F */  lui   $a0, %hi(D_800EB320) # $a0, 0x800f
/* 174D9C 801D12BC 2484B320 */  addiu $a0, %lo(D_800EB320) # addiu $a0, $a0, -0x4ce0
/* 174DA0 801D12C0 00031880 */  sll   $v1, $v1, 2
/* 174DA4 801D12C4 00230821 */  addu  $at, $at, $v1
/* 174DA8 801D12C8 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 174DAC 801D12CC 00837021 */  addu  $t6, $a0, $v1
/* 174DB0 801D12D0 C5C80000 */  lwc1  $f8, ($t6)
/* 174DB4 801D12D4 46046001 */  sub.s $f0, $f12, $f4
/* 174DB8 801D12D8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 174DBC 801D12DC 00230821 */  addu  $at, $at, $v1
/* 174DC0 801D12E0 C4262950 */ lwc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 174DC4 801D12E4 46004282 */  mul.s $f10, $f8, $f0
/* 174DC8 801D12E8 3C01800E */ lui $at, %hi(D_800E2090)
/* 174DCC 801D12EC 00230821 */  addu  $at, $at, $v1
/* 174DD0 801D12F0 44802000 */  mtc1  $zero, $f4
/* 174DD4 801D12F4 46066081 */  sub.s $f2, $f12, $f6
/* 174DD8 801D12F8 E42A2090 */ swc1 $f10, %lo(D_800E2090)($at)
/* 174DDC 801D12FC 8C430000 */  lw    $v1, ($v0)
/* 174DE0 801D1300 3C01800E */ lui $at, %hi(D_800E2410)
/* 174DE4 801D1304 00031880 */  sll   $v1, $v1, 2
/* 174DE8 801D1308 00837821 */  addu  $t7, $a0, $v1
/* 174DEC 801D130C C5F00000 */  lwc1  $f16, ($t7)
/* 174DF0 801D1310 00230821 */  addu  $at, $at, $v1
/* 174DF4 801D1314 46028482 */  mul.s $f18, $f16, $f2
/* 174DF8 801D1318 E4322410 */ swc1 $f18, %lo(D_800E2410)($at)
/* 174DFC 801D131C 8C580000 */  lw    $t8, ($v0)
/* 174E00 801D1320 3C01800E */ lui $at, %hi(D_800E2250)
/* 174E04 801D1324 0018C880 */  sll   $t9, $t8, 2
/* 174E08 801D1328 00390821 */  addu  $at, $at, $t9
/* 174E0C 801D132C 03E00008 */  jr    $ra
/* 174E10 801D1330 E4242250 */ swc1 $f4, %lo(D_800E2250)($at)
.type func_801D12A4_ovl8, @function
.size func_801D12A4_ovl8, . - func_801D12A4_ovl8
