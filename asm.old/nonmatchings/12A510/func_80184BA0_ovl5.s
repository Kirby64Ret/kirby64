glabel func_80184BA0_ovl5
/* 12C010 80184BA0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 12C014 80184BA4 AFB70058 */  sw         $s7, 0x58($sp)
/* 12C018 80184BA8 3C178019 */  lui        $s7, %hi(D_8018D3B4_ovl5)
/* 12C01C 80184BAC AFB4004C */  sw         $s4, 0x4C($sp)
/* 12C020 80184BB0 0080A025 */  or         $s4, $a0, $zero
/* 12C024 80184BB4 26F7D3B4 */  addiu      $s7, $s7, %lo(D_8018D3B4_ovl5)
/* 12C028 80184BB8 AFBF005C */  sw         $ra, 0x5C($sp)
/* 12C02C 80184BBC AFB60054 */  sw         $s6, 0x54($sp)
/* 12C030 80184BC0 AFB50050 */  sw         $s5, 0x50($sp)
/* 12C034 80184BC4 AFB30048 */  sw         $s3, 0x48($sp)
/* 12C038 80184BC8 AFB20044 */  sw         $s2, 0x44($sp)
/* 12C03C 80184BCC AFB10040 */  sw         $s1, 0x40($sp)
/* 12C040 80184BD0 AFB0003C */  sw         $s0, 0x3C($sp)
/* 12C044 80184BD4 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 12C048 80184BD8 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 12C04C 80184BDC F7B80020 */  sdc1       $f24, 0x20($sp)
/* 12C050 80184BE0 F7B60018 */  sdc1       $f22, 0x18($sp)
.L80184BE4_ovl3:
/* 12C054 80184BE4 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 12C058 80184BE8 0C02A422 */  jal        func_800A9088
/* 12C05C 80184BEC 8EE40000 */   lw        $a0, 0x0($s7)
/* 12C060 80184BF0 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 12C064 80184BF4 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* 12C068 80184BF8 3C028019 */  lui        $v0, %hi(D_8018C300_ovl5)
/* 12C06C 80184BFC 8EC60000 */  lw         $a2, 0x0($s6)
/* 12C070 80184C00 2442C300 */  addiu      $v0, $v0, %lo(D_8018C300_ovl5)
/* 12C074 80184C04 C4440000 */  lwc1       $f4, 0x0($v0)
/* 12C078 80184C08 C6E60028 */  lwc1       $f6, 0x28($s7)
/* 12C07C 80184C0C 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12C080 80184C10 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 12C084 80184C14 46062200 */  add.s      $f8, $f4, $f6
/* 12C088 80184C18 000E7880 */  sll        $t7, $t6, 2
/* 12C08C 80184C1C 002F0821 */  addu       $at, $at, $t7
/* 12C090 80184C20 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
.L80184C24_ovl3:
/* 12C094 80184C24 C6F0002C */  lwc1       $f16, 0x2C($s7)
.L80184C28_ovl3:
/* 12C098 80184C28 C44A0004 */  lwc1       $f10, 0x4($v0)
/* 12C09C 80184C2C 8CD80000 */  lw         $t8, 0x0($a2)
/* 12C0A0 80184C30 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 12C0A4 80184C34 46105480 */  add.s      $f18, $f10, $f16
/* 12C0A8 80184C38 0018C880 */  sll        $t9, $t8, 2
/* 12C0AC 80184C3C 00390821 */  addu       $at, $at, $t9
/* 12C0B0 80184C40 E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 12C0B4 80184C44 C6E60030 */  lwc1       $f6, 0x30($s7)
/* 12C0B8 80184C48 C4440008 */  lwc1       $f4, 0x8($v0)
/* 12C0BC 80184C4C 8CC80000 */  lw         $t0, 0x0($a2)
/* 12C0C0 80184C50 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 12C0C4 80184C54 46062200 */  add.s      $f8, $f4, $f6
/* 12C0C8 80184C58 00084880 */  sll        $t1, $t0, 2
/* 12C0CC 80184C5C 00290821 */  addu       $at, $at, $t1
/* 12C0D0 80184C60 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
glabel func_80184C64_ovl3
/* 12C0D4 80184C64 8EE40004 */  lw         $a0, 0x4($s7)
/* 12C0D8 80184C68 50800004 */  beql       $a0, $zero, .L80184C7C_ovl5
/* 12C0DC 80184C6C 8EE40008 */   lw        $a0, 0x8($s7)
/* 12C0E0 80184C70 0C02A806 */  jal        func_800AA018
/* 12C0E4 80184C74 00000000 */   nop
/* 12C0E8 80184C78 8EE40008 */  lw         $a0, 0x8($s7)
.L80184C7C_ovl5:
/* 12C0EC 80184C7C 10800003 */  beqz       $a0, .L80184C8C_ovl5
/* 12C0F0 80184C80 00000000 */   nop
/* 12C0F4 80184C84 0C02A806 */  jal        func_800AA018
/* 12C0F8 80184C88 00000000 */   nop
.L80184C8C_ovl5:
/* 12C0FC 80184C8C 3C018019 */  lui        $at, %hi(D_8018E014_ovl5)
/* 12C100 80184C90 C43AE014 */  lwc1       $f26, %lo(D_8018E014_ovl5)($at)
/* 12C104 80184C94 AE800048 */  sw         $zero, 0x48($s4)
.L80184C98_ovl3:
/* 12C108 80184C98 8EC60000 */  lw         $a2, 0x0($s6)
/* 12C10C 80184C9C 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 12C110 80184CA0 4481E000 */  mtc1       $at, $f28
glabel func_80184CA4_ovl3
/* 12C114 80184CA4 8CCA0000 */  lw         $t2, 0x0($a2)
/* 12C118 80184CA8 3C01800E */  lui        $at, %hi(D_800DF310)
/* 12C11C 80184CAC 3C15800E */  lui        $s5, %hi(gEntitiesAngleZArray)
/* 12C120 80184CB0 000A5880 */  sll        $t3, $t2, 2
/* 12C124 80184CB4 002B0821 */  addu       $at, $at, $t3
/* 12C128 80184CB8 AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
/* 12C12C 80184CBC C6EA001C */  lwc1       $f10, 0x1C($s7)
/* 12C130 80184CC0 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12C134 80184CC4 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 12C138 80184CC8 461A5402 */  mul.s      $f16, $f10, $f26
/* 12C13C 80184CCC 000C6880 */  sll        $t5, $t4, 2
/* 12C140 80184CD0 002D0821 */  addu       $at, $at, $t5
/* 12C144 80184CD4 26B54390 */  addiu      $s5, $s5, %lo(gEntitiesAngleZArray)
/* 12C148 80184CD8 4480B000 */  mtc1       $zero, $f22
/* 12C14C 80184CDC 3C11800E */  lui        $s1, %hi(gEntitiesScaleXArray)
/* 12C150 80184CE0 26314550 */  addiu      $s1, $s1, %lo(gEntitiesScaleXArray)
/* 12C154 80184CE4 461C8483 */  div.s      $f18, $f16, $f28
/* 12C158 80184CE8 3C12800E */  lui        $s2, %hi(gEntitiesScaleYArray)
/* 12C15C 80184CEC 26524710 */  addiu      $s2, $s2, %lo(gEntitiesScaleYArray)
/* 12C160 80184CF0 3C13800E */  lui        $s3, %hi(gEntitiesScaleZArray)
/* 12C164 80184CF4 267348D0 */  addiu      $s3, $s3, %lo(gEntitiesScaleZArray)
/* 12C168 80184CF8 24140004 */  addiu      $s4, $zero, 0x4
/* 12C16C 80184CFC 00008025 */  or         $s0, $zero, $zero
/* 12C170 80184D00 E4324010 */  swc1       $f18, %lo(gEntitiesAngleXArray)($at)
/* 12C174 80184D04 C6E40020 */  lwc1       $f4, 0x20($s7)
/* 12C178 80184D08 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12C17C 80184D0C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 12C180 80184D10 461A2182 */  mul.s      $f6, $f4, $f26
/* 12C184 80184D14 000E7880 */  sll        $t7, $t6, 2
/* 12C188 80184D18 002F0821 */  addu       $at, $at, $t7
/* 12C18C 80184D1C 461C3203 */  div.s      $f8, $f6, $f28
/* 12C190 80184D20 E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* 12C194 80184D24 C6EA0024 */  lwc1       $f10, 0x24($s7)
/* 12C198 80184D28 8CD80000 */  lw         $t8, 0x0($a2)
/* 12C19C 80184D2C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 12C1A0 80184D30 461A5402 */  mul.s      $f16, $f10, $f26
/* 12C1A4 80184D34 0018C880 */  sll        $t9, $t8, 2
/* 12C1A8 80184D38 02B94021 */  addu       $t0, $s5, $t9
/* 12C1AC 80184D3C 44813000 */  mtc1       $at, $f6
/* 12C1B0 80184D40 461C8483 */  div.s      $f18, $f16, $f28
/* 12C1B4 80184D44 E5120000 */  swc1       $f18, 0x0($t0)
/* 12C1B8 80184D48 8CC90000 */  lw         $t1, 0x0($a2)
/* 12C1BC 80184D4C 00095080 */  sll        $t2, $t1, 2
/* 12C1C0 80184D50 022A5821 */  addu       $t3, $s1, $t2
/* 12C1C4 80184D54 E5760000 */  swc1       $f22, 0x0($t3)
/* 12C1C8 80184D58 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12C1CC 80184D5C 000C6880 */  sll        $t5, $t4, 2
/* 12C1D0 80184D60 024D7021 */  addu       $t6, $s2, $t5
/* 12C1D4 80184D64 E5D60000 */  swc1       $f22, 0x0($t6)
/* 12C1D8 80184D68 8CCF0000 */  lw         $t7, 0x0($a2)
/* 12C1DC 80184D6C 000FC080 */  sll        $t8, $t7, 2
/* 12C1E0 80184D70 0278C821 */  addu       $t9, $s3, $t8
/* 12C1E4 80184D74 E7360000 */  swc1       $f22, 0x0($t9)
/* 12C1E8 80184D78 C6E4000C */  lwc1       $f4, 0xC($s7)
/* 12C1EC 80184D7C 46062503 */  div.s      $f20, $f4, $f6
/* 12C1F0 80184D80 8EC60000 */  lw         $a2, 0x0($s6)
.L80184D84_ovl5:
/* 12C1F4 80184D84 24040001 */  addiu      $a0, $zero, 0x1
/* 12C1F8 80184D88 8CC80000 */  lw         $t0, 0x0($a2)
/* 12C1FC 80184D8C 00084880 */  sll        $t1, $t0, 2
/* 12C200 80184D90 02291021 */  addu       $v0, $s1, $t1
/* 12C204 80184D94 C4480000 */  lwc1       $f8, 0x0($v0)
/* 12C208 80184D98 46144280 */  add.s      $f10, $f8, $f20
/* 12C20C 80184D9C E44A0000 */  swc1       $f10, 0x0($v0)
/* 12C210 80184DA0 8CCA0000 */  lw         $t2, 0x0($a2)
/* 12C214 80184DA4 000A5880 */  sll        $t3, $t2, 2
/* 12C218 80184DA8 024B1821 */  addu       $v1, $s2, $t3
/* 12C21C 80184DAC C4700000 */  lwc1       $f16, 0x0($v1)
/* 12C220 80184DB0 46148480 */  add.s      $f18, $f16, $f20
/* 12C224 80184DB4 E4720000 */  swc1       $f18, 0x0($v1)
/* 12C228 80184DB8 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12C22C 80184DBC 000C6880 */  sll        $t5, $t4, 2
/* 12C230 80184DC0 026D2821 */  addu       $a1, $s3, $t5
/* 12C234 80184DC4 C4A40000 */  lwc1       $f4, 0x0($a1)
.L80184DC8_ovl3:
/* 12C238 80184DC8 46142180 */  add.s      $f6, $f4, $f20
/* 12C23C 80184DCC 0C002DAF */  jal        finish_current_thread
/* 12C240 80184DD0 E4A60000 */   swc1      $f6, 0x0($a1)
/* 12C244 80184DD4 26100001 */  addiu      $s0, $s0, 0x1
/* 12C248 80184DD8 5614FFEA */  bnel       $s0, $s4, .L80184D84_ovl5
/* 12C24C 80184DDC 8EC60000 */   lw        $a2, 0x0($s6)
/* 12C250 80184DE0 8EC60000 */  lw         $a2, 0x0($s6)
/* 12C254 80184DE4 C6E0000C */  lwc1       $f0, 0xC($s7)
.L80184DE8_ovl3:
/* 12C258 80184DE8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 12C25C 80184DEC 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12C260 80184DF0 4481C000 */  mtc1       $at, $f24
.L80184DF4_ovl3:
/* 12C264 80184DF4 4600B506 */  mov.s      $f20, $f22
/* 12C268 80184DF8 000E7880 */  sll        $t7, $t6, 2
/* 12C26C 80184DFC 022FC021 */  addu       $t8, $s1, $t7
/* 12C270 80184E00 E7000000 */  swc1       $f0, 0x0($t8)
/* 12C274 80184E04 8CD90000 */  lw         $t9, 0x0($a2)
/* 12C278 80184E08 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 12C27C 80184E0C 4481B000 */  mtc1       $at, $f22
/* 12C280 80184E10 00194080 */  sll        $t0, $t9, 2
/* 12C284 80184E14 02484821 */  addu       $t1, $s2, $t0
/* 12C288 80184E18 E5200000 */  swc1       $f0, 0x0($t1)
/* 12C28C 80184E1C 8CCA0000 */  lw         $t2, 0x0($a2)
/* 12C290 80184E20 000A5880 */  sll        $t3, $t2, 2
/* 12C294 80184E24 026B6021 */  addu       $t4, $s3, $t3
/* 12C298 80184E28 E5800000 */  swc1       $f0, 0x0($t4)
.L80184E2C_ovl5:
/* 12C29C 80184E2C 461AA202 */  mul.s      $f8, $f20, $f26
/* 12C2A0 80184E30 4618A500 */  add.s      $f20, $f20, $f24
.L80184E34_ovl3:
/* 12C2A4 80184E34 8CCD0000 */  lw         $t5, 0x0($a2)
/* 12C2A8 80184E38 4614B03C */  c.lt.s     $f22, $f20
/* 12C2AC 80184E3C 000D7080 */  sll        $t6, $t5, 2
/* 12C2B0 80184E40 461C4283 */  div.s      $f10, $f8, $f28
/* 12C2B4 80184E44 02AE7821 */  addu       $t7, $s5, $t6
/* 12C2B8 80184E48 45000002 */  bc1f       .L80184E54_ovl5
/* 12C2BC 80184E4C E5EA0000 */   swc1      $f10, 0x0($t7)
/* 12C2C0 80184E50 4616A501 */  sub.s      $f20, $f20, $f22
.L80184E54_ovl5:
/* 12C2C4 80184E54 0C002DAF */  jal        finish_current_thread
/* 12C2C8 80184E58 24040001 */   addiu     $a0, $zero, 0x1
/* 12C2CC 80184E5C 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 12C2D0 80184E60 1000FFF2 */  b          .L80184E2C_ovl5
/* 12C2D4 80184E64 8CC6A7C4 */   lw        $a2, %lo(D_8004A7C4)($a2)
/* 12C2D8 80184E68 00000000 */  nop
/* 12C2DC 80184E6C 00000000 */  nop
/* 12C2E0 80184E70 00000000 */  nop
/* 12C2E4 80184E74 00000000 */  nop
/* 12C2E8 80184E78 00000000 */  nop
/* 12C2EC 80184E7C 00000000 */  nop
/* 12C2F0 80184E80 8FBF005C */  lw         $ra, 0x5C($sp)
/* 12C2F4 80184E84 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 12C2F8 80184E88 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 12C2FC 80184E8C D7B80020 */  ldc1       $f24, 0x20($sp)
/* 12C300 80184E90 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 12C304 80184E94 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 12C308 80184E98 8FB0003C */  lw         $s0, 0x3C($sp)
/* 12C30C 80184E9C 8FB10040 */  lw         $s1, 0x40($sp)
/* 12C310 80184EA0 8FB20044 */  lw         $s2, 0x44($sp)
/* 12C314 80184EA4 8FB30048 */  lw         $s3, 0x48($sp)
/* 12C318 80184EA8 8FB4004C */  lw         $s4, 0x4C($sp)
/* 12C31C 80184EAC 8FB50050 */  lw         $s5, 0x50($sp)
/* 12C320 80184EB0 8FB60054 */  lw         $s6, 0x54($sp)
/* 12C324 80184EB4 8FB70058 */  lw         $s7, 0x58($sp)
/* 12C328 80184EB8 03E00008 */  jr         $ra
/* 12C32C 80184EBC 27BD0060 */   addiu     $sp, $sp, 0x60
