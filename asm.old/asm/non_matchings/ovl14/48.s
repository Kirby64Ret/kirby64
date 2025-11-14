glabel func_801DF01C_ovl14 # 48
/* 201C0C 801DF01C 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 201C10 801DF020 AFBF001C */  sw          $ra, 0x1C($sp)
/* 201C14 801DF024 AFB00018 */  sw          $s0, 0x18($sp)
/* 201C18 801DF028 E7AC0040 */  swc1        $f12, 0x40($sp)
/* 201C1C 801DF02C 2404001A */  addiu       $a0, $zero, 0x1A
/* 201C20 801DF030 2405000E */  addiu       $a1, $zero, 0xE
/* 201C24 801DF034 0C02BB02 */  jal         request_track_general
/* 201C28 801DF038 24060050 */   addiu      $a2, $zero, 0x50
/* 201C2C 801DF03C 2841001E */  slti        $at, $v0, 0x1E
/* 201C30 801DF040 10200004 */  beqz        $at, .L801DF054
/* 201C34 801DF044 00408025 */   move       $s0, $v0
/* 201C38 801DF048 2401FFFF */  addiu       $at, $zero, -0x1
/* 201C3C 801DF04C 14410009 */  bne         $v0, $at, .L801DF074
/* 201C40 801DF050 3C05800E */   lui        $a1, %hi(gEntitiesNextPosXArray)
.L801DF054:
/* 201C44 801DF054 3C04801E */  lui         $a0, %hi(D_801E3030_ovl14)
/* 201C48 801DF058 24843030 */  addiu       $a0, $a0, %lo(D_801E3030_ovl14)
/* 201C4C 801DF05C 0C02909C */  jal         print_error_stub
/* 201C50 801DF060 02002825 */   move       $a1, $s0
/* 201C54 801DF064 0C02C640 */  jal         func_800B1900
/* 201C58 801DF068 3204FFFF */   andi       $a0, $s0, 0xFFFF
/* 201C5C 801DF06C 10000083 */  b           .L801DF27C
/* 201C60 801DF070 2402FFFF */   addiu      $v0, $zero, -0x1
.L801DF074:
/* 201C64 801DF074 3C01800E */  lui         $at, %hi(D_800E76C0)
/* 201C68 801DF078 00300821 */  addu        $at, $at, $s0
/* 201C6C 801DF07C 240E00FF */  addiu       $t6, $zero, 0xFF
/* 201C70 801DF080 A02E76C0 */  sb          $t6, %lo(D_800E76C0)($at)
/* 201C74 801DF084 3C01800E */  lui         $at, %hi(D_800E7730)
/* 201C78 801DF088 00300821 */  addu        $at, $at, $s0
/* 201C7C 801DF08C 240F0004 */  addiu       $t7, $zero, 0x4
/* 201C80 801DF090 A02F7730 */  sb          $t7, %lo(D_800E7730)($at)
/* 201C84 801DF094 3C01800E */  lui         $at, %hi(D_800E77A0)
/* 201C88 801DF098 0010C840 */  sll         $t9, $s0, 1
/* 201C8C 801DF09C 00390821 */  addu        $at, $at, $t9
/* 201C90 801DF0A0 2418002C */  addiu       $t8, $zero, 0x2C
/* 201C94 801DF0A4 A43877A0 */  sh          $t8, %lo(D_800E77A0)($at)
/* 201C98 801DF0A8 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 201C9C 801DF0AC 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 201CA0 801DF0B0 3C01800E */  lui         $at, %hi(D_800E7880)
/* 201CA4 801DF0B4 00300821 */  addu        $at, $at, $s0
/* 201CA8 801DF0B8 A0207880 */  sb          $zero, %lo(D_800E7880)($at)
/* 201CAC 801DF0BC 8C480000 */  lw          $t0, 0x0($v0)
/* 201CB0 801DF0C0 24A525D0 */  addiu       $a1, $a1, %lo(gEntitiesNextPosXArray)
/* 201CB4 801DF0C4 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 201CB8 801DF0C8 00084880 */  sll         $t1, $t0, 2
/* 201CBC 801DF0CC 00A95021 */  addu        $t2, $a1, $t1
/* 201CC0 801DF0D0 C5400000 */  lwc1        $f0, 0x0($t2)
/* 201CC4 801DF0D4 00101880 */  sll         $v1, $s0, 2
/* 201CC8 801DF0D8 00230821 */  addu        $at, $at, $v1
/* 201CCC 801DF0DC 00A35821 */  addu        $t3, $a1, $v1
/* 201CD0 801DF0E0 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 201CD4 801DF0E4 E5600000 */  swc1        $f0, 0x0($t3)
/* 201CD8 801DF0E8 8C4C0000 */  lw          $t4, 0x0($v0)
/* 201CDC 801DF0EC 3C06800E */  lui         $a2, %hi(gEntitiesNextPosYArray)
/* 201CE0 801DF0F0 24C62790 */  addiu       $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 201CE4 801DF0F4 000C6880 */  sll         $t5, $t4, 2
/* 201CE8 801DF0F8 00CD7021 */  addu        $t6, $a2, $t5
/* 201CEC 801DF0FC C5C00000 */  lwc1        $f0, 0x0($t6)
/* 201CF0 801DF100 3C01800E */  lui         $at, %hi(gEntitiesPosYArray)
/* 201CF4 801DF104 00230821 */  addu        $at, $at, $v1
/* 201CF8 801DF108 00C37821 */  addu        $t7, $a2, $v1
/* 201CFC 801DF10C E4202CD0 */  swc1        $f0, %lo(gEntitiesPosYArray)($at)
/* 201D00 801DF110 E5E00000 */  swc1        $f0, 0x0($t7)
/* 201D04 801DF114 8C580000 */  lw          $t8, 0x0($v0)
/* 201D08 801DF118 3C07800E */  lui         $a3, %hi(gEntitiesNextPosZArray)
/* 201D0C 801DF11C 24E72950 */  addiu       $a3, $a3, %lo(gEntitiesNextPosZArray)
/* 201D10 801DF120 0018C880 */  sll         $t9, $t8, 2
/* 201D14 801DF124 00F94021 */  addu        $t0, $a3, $t9
/* 201D18 801DF128 C5000000 */  lwc1        $f0, 0x0($t0)
/* 201D1C 801DF12C 3C01800E */  lui         $at, %hi(gEntitiesPosZArray)
/* 201D20 801DF130 00230821 */  addu        $at, $at, $v1
/* 201D24 801DF134 00E34821 */  addu        $t1, $a3, $v1
/* 201D28 801DF138 E4202E90 */  swc1        $f0, %lo(gEntitiesPosZArray)($at)
/* 201D2C 801DF13C E5200000 */  swc1        $f0, 0x0($t1)
/* 201D30 801DF140 8C4A0000 */  lw          $t2, 0x0($v0)
/* 201D34 801DF144 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 201D38 801DF148 3C0E800E */  lui         $t6, %hi(D_800E5F90)
/* 201D3C 801DF14C 000A5880 */  sll         $t3, $t2, 2
/* 201D40 801DF150 002B0821 */  addu        $at, $at, $t3
/* 201D44 801DF154 AC208E60 */  sw          $zero, %lo(D_800E8E60)($at)
/* 201D48 801DF158 8C4C0000 */  lw          $t4, 0x0($v0)
/* 201D4C 801DF15C 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 201D50 801DF160 24040002 */  addiu       $a0, $zero, 0x2
/* 201D54 801DF164 000C6880 */  sll         $t5, $t4, 2
/* 201D58 801DF168 01CD7021 */  addu        $t6, $t6, $t5
/* 201D5C 801DF16C 8DCE5F90 */  lw          $t6, %lo(D_800E5F90)($t6)
/* 201D60 801DF170 AFAE0030 */  sw          $t6, 0x30($sp)
/* 201D64 801DF174 8C4F0000 */  lw          $t7, 0x0($v0)
/* 201D68 801DF178 AFA30028 */  sw          $v1, 0x28($sp)
/* 201D6C 801DF17C 000FC080 */  sll         $t8, $t7, 2
/* 201D70 801DF180 00380821 */  addu        $at, $at, $t8
/* 201D74 801DF184 C4246BD0 */  lwc1        $f4, %lo(D_800E6BD0)($at)
/* 201D78 801DF188 0C006291 */  jal         random_soft_s32_range
/* 201D7C 801DF18C E7A40034 */   swc1       $f4, 0x34($sp)
/* 201D80 801DF190 44823000 */  mtc1        $v0, $f6
/* 201D84 801DF194 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 201D88 801DF198 44815000 */  mtc1        $at, $f10
/* 201D8C 801DF19C 46803220 */  cvt.s.w     $f8, $f6
/* 201D90 801DF1A0 C7B20040 */  lwc1        $f18, 0x40($sp)
/* 201D94 801DF1A4 27A40030 */  addiu       $a0, $sp, 0x30
/* 201D98 801DF1A8 460A4402 */  mul.s       $f16, $f8, $f10
/* 201D9C 801DF1AC 00000000 */  nop
/* 201DA0 801DF1B0 46128102 */  mul.s       $f4, $f16, $f18
/* 201DA4 801DF1B4 44052000 */  mfc1        $a1, $f4
/* 201DA8 801DF1B8 0C03E622 */  jal         func_800F9888
/* 201DAC 801DF1BC 00000000 */   nop
/* 201DB0 801DF1C0 14400010 */  bnez        $v0, .L801DF204
/* 201DB4 801DF1C4 8FA30028 */   lw         $v1, 0x28($sp)
/* 201DB8 801DF1C8 8FA20030 */  lw          $v0, 0x30($sp)
/* 201DBC 801DF1CC 3C01800E */  lui         $at, %hi(D_800E6150)
/* 201DC0 801DF1D0 00230821 */  addu        $at, $at, $v1
/* 201DC4 801DF1D4 AC226150 */  sw          $v0, %lo(D_800E6150)($at)
/* 201DC8 801DF1D8 3C01800E */  lui         $at, %hi(D_800E5F90)
/* 201DCC 801DF1DC 00230821 */  addu        $at, $at, $v1
/* 201DD0 801DF1E0 C7A00034 */  lwc1        $f0, 0x34($sp)
/* 201DD4 801DF1E4 AC225F90 */  sw          $v0, %lo(D_800E5F90)($at)
/* 201DD8 801DF1E8 3C01800E */  lui         $at, %hi(D_800E6D90)
/* 201DDC 801DF1EC 00230821 */  addu        $at, $at, $v1
/* 201DE0 801DF1F0 E4206D90 */  swc1        $f0, %lo(D_800E6D90)($at)
/* 201DE4 801DF1F4 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 201DE8 801DF1F8 00230821 */  addu        $at, $at, $v1
/* 201DEC 801DF1FC 10000013 */  b           .L801DF24C
/* 201DF0 801DF200 E4206BD0 */   swc1       $f0, %lo(D_800E6BD0)($at)
.L801DF204:
/* 201DF4 801DF204 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 201DF8 801DF208 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 201DFC 801DF20C 3C04800E */  lui         $a0, %hi(D_800E5F90)
/* 201E00 801DF210 24845F90 */  addiu       $a0, $a0, %lo(D_800E5F90)
/* 201E04 801DF214 8C590000 */  lw          $t9, 0x0($v0)
/* 201E08 801DF218 00835821 */  addu        $t3, $a0, $v1
/* 201E0C 801DF21C 3C05800E */  lui         $a1, %hi(D_800E6BD0)
/* 201E10 801DF220 00194080 */  sll         $t0, $t9, 2
/* 201E14 801DF224 00884821 */  addu        $t1, $a0, $t0
/* 201E18 801DF228 8D2A0000 */  lw          $t2, 0x0($t1)
/* 201E1C 801DF22C 24A56BD0 */  addiu       $a1, $a1, %lo(D_800E6BD0)
/* 201E20 801DF230 00A37821 */  addu        $t7, $a1, $v1
/* 201E24 801DF234 AD6A0000 */  sw          $t2, 0x0($t3)
/* 201E28 801DF238 8C4C0000 */  lw          $t4, 0x0($v0)
/* 201E2C 801DF23C 000C6880 */  sll         $t5, $t4, 2
/* 201E30 801DF240 00AD7021 */  addu        $t6, $a1, $t5
/* 201E34 801DF244 C5C60000 */  lwc1        $f6, 0x0($t6)
/* 201E38 801DF248 E5E60000 */  swc1        $f6, 0x0($t7)
.L801DF24C:
/* 201E3C 801DF24C 24040003 */  addiu       $a0, $zero, 0x3
/* 201E40 801DF250 0C006291 */  jal         random_soft_s32_range
/* 201E44 801DF254 AFA30028 */   sw         $v1, 0x28($sp)
/* 201E48 801DF258 8FA30028 */  lw          $v1, 0x28($sp)
/* 201E4C 801DF25C 3C01800F */  lui         $at, %hi(D_800EC2E0)
/* 201E50 801DF260 C7A80040 */  lwc1        $f8, 0x40($sp)
/* 201E54 801DF264 00230821 */  addu        $at, $at, $v1
/* 201E58 801DF268 AC22C2E0 */  sw          $v0, %lo(D_800EC2E0)($at)
/* 201E5C 801DF26C 3C01800F */  lui         $at, %hi(D_800EC660)
/* 201E60 801DF270 00230821 */  addu        $at, $at, $v1
/* 201E64 801DF274 02001025 */  move        $v0, $s0
/* 201E68 801DF278 E428C660 */  swc1        $f8, %lo(D_800EC660)($at)
.L801DF27C:
/* 201E6C 801DF27C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 201E70 801DF280 8FB00018 */  lw          $s0, 0x18($sp)
/* 201E74 801DF284 27BD0040 */  addiu       $sp, $sp, 0x40
/* 201E78 801DF288 03E00008 */  jr          $ra
/* 201E7C 801DF28C 00000000 */   nop
.type func_801DF01C_ovl14, @function
.size func_801DF01C_ovl14, . - func_801DF01C_ovl14
