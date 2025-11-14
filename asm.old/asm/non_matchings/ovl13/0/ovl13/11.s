glabel func_801DCE9C_ovl13 # 11
/* 1F4E1C 801DCE9C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 1F4E20 801DCEA0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 1F4E24 801DCEA4 AFB30020 */  sw          $s3, 0x20($sp)
/* 1F4E28 801DCEA8 AFB2001C */  sw          $s2, 0x1C($sp)
/* 1F4E2C 801DCEAC AFB10018 */  sw          $s1, 0x18($sp)
/* 1F4E30 801DCEB0 AFB00014 */  sw          $s0, 0x14($sp)
/* 1F4E34 801DCEB4 0C066ED6 */  jal         func_8019BB58_ovl7
/* 1F4E38 801DCEB8 AFA40028 */   sw         $a0, 0x28($sp)
/* 1F4E3C 801DCEBC 3C128005 */  lui         $s2, %hi(D_8004A7C4)
/* 1F4E40 801DCEC0 2652A7C4 */  addiu       $s2, $s2, %lo(D_8004A7C4)
/* 1F4E44 801DCEC4 8E4E0000 */  lw          $t6, 0x0($s2)
/* 1F4E48 801DCEC8 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray5)
/* 1F4E4C 801DCECC 3C05800B */  lui         $a1, %hi(D_800B1434)
/* 1F4E50 801DCED0 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F4E54 801DCED4 24A51434 */  addiu       $a1, $a1, %lo(D_800B1434)
/* 1F4E58 801DCED8 000FC080 */  sll         $t8, $t7, 2
/* 1F4E5C 801DCEDC 00982021 */  addu        $a0, $a0, $t8
/* 1F4E60 801DCEE0 0C02C7DA */  jal         func_800B1F68
/* 1F4E64 801DCEE4 8C84EC10 */   lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1F4E68 801DCEE8 8E590000 */  lw          $t9, 0x0($s2)
/* 1F4E6C 801DCEEC 24040071 */  addiu       $a0, $zero, 0x71
/* 1F4E70 801DCEF0 0C02C67D */  jal         func_800B19F4
/* 1F4E74 801DCEF4 8F250000 */   lw         $a1, 0x0($t9)
/* 1F4E78 801DCEF8 00002025 */  move        $a0, $zero
/* 1F4E7C 801DCEFC 0C02BEED */  jal         func_800AFBB4
/* 1F4E80 801DCF00 8E450000 */   lw         $a1, 0x0($s2)
/* 1F4E84 801DCF04 8E420000 */  lw          $v0, 0x0($s2)
/* 1F4E88 801DCF08 3C13800F */  lui         $s3, %hi(D_800E98E0)
/* 1F4E8C 801DCF0C 267398E0 */  addiu       $s3, $s3, %lo(D_800E98E0)
/* 1F4E90 801DCF10 8C490000 */  lw          $t1, 0x0($v0)
/* 1F4E94 801DCF14 24080001 */  addiu       $t0, $zero, 0x1
/* 1F4E98 801DCF18 3C0C800B */  lui         $t4, %hi(D_800B6CF8)
/* 1F4E9C 801DCF1C 00095080 */  sll         $t2, $t1, 2
/* 1F4EA0 801DCF20 026A5821 */  addu        $t3, $s3, $t2
/* 1F4EA4 801DCF24 AD680000 */  sw          $t0, 0x0($t3)
/* 1F4EA8 801DCF28 8C4D0000 */  lw          $t5, 0x0($v0)
/* 1F4EAC 801DCF2C 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1F4EB0 801DCF30 258C6CF8 */  addiu       $t4, $t4, %lo(D_800B6CF8)
/* 1F4EB4 801DCF34 000D7080 */  sll         $t6, $t5, 2
/* 1F4EB8 801DCF38 002E0821 */  addu        $at, $at, $t6
/* 1F4EBC 801DCF3C AC2CEF90 */  sw          $t4, %lo(D_800DEF90)($at)
/* 1F4EC0 801DCF40 8C580000 */  lw          $t8, 0x0($v0)
/* 1F4EC4 801DCF44 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F4EC8 801DCF48 240F000D */  addiu       $t7, $zero, 0xD
/* 1F4ECC 801DCF4C 0018C880 */  sll         $t9, $t8, 2
/* 1F4ED0 801DCF50 00390821 */  addu        $at, $at, $t9
/* 1F4ED4 801DCF54 AC2FDFD0 */  sw          $t7, %lo(D_800DDFD0)($at)
/* 1F4ED8 801DCF58 8C4A0000 */  lw          $t2, 0x0($v0)
/* 1F4EDC 801DCF5C 3C10800E */  lui         $s0, %hi(D_800E1B50)
/* 1F4EE0 801DCF60 26101B50 */  addiu       $s0, $s0, %lo(D_800E1B50)
/* 1F4EE4 801DCF64 000A4080 */  sll         $t0, $t2, 2
/* 1F4EE8 801DCF68 02085821 */  addu        $t3, $s0, $t0
/* 1F4EEC 801DCF6C 8D6D0000 */  lw          $t5, 0x0($t3)
/* 1F4EF0 801DCF70 3C09801E */  lui         $t1, %hi(D_801D9384)
/* 1F4EF4 801DCF74 25299384 */  addiu       $t1, $t1, %lo(D_801D9384)
/* 1F4EF8 801DCF78 ADA9008C */  sw          $t1, 0x8C($t5)
/* 1F4EFC 801DCF7C 8E4C0000 */  lw          $t4, 0x0($s2)
/* 1F4F00 801DCF80 3C04801E */  lui         $a0, %hi(D_801DAB18)
/* 1F4F04 801DCF84 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F4F08 801DCF88 8D8E0000 */  lw          $t6, 0x0($t4)
/* 1F4F0C 801DCF8C 2484AB18 */  addiu       $a0, $a0, %lo(D_801DAB18)
/* 1F4F10 801DCF90 000EC080 */  sll         $t8, $t6, 2
/* 1F4F14 801DCF94 00380821 */  addu        $at, $at, $t8
/* 1F4F18 801DCF98 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F4F1C 801DCF9C AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F4F20 801DCFA0 8E590000 */  lw          $t9, 0x0($s2)
/* 1F4F24 801DCFA4 3C0F801E */  lui         $t7, %hi(D_801DAE1C)
/* 1F4F28 801DCFA8 25EFAE1C */  addiu       $t7, $t7, %lo(D_801DAE1C)
/* 1F4F2C 801DCFAC 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1F4F30 801DCFB0 44802000 */  mtc1        $zero, $f4
/* 1F4F34 801DCFB4 3C04800E */  lui         $a0, %hi(gEntitiesPosZArray)
/* 1F4F38 801DCFB8 000A4080 */  sll         $t0, $t2, 2
/* 1F4F3C 801DCFBC 02085821 */  addu        $t3, $s0, $t0
/* 1F4F40 801DCFC0 8D690000 */  lw          $t1, 0x0($t3)
/* 1F4F44 801DCFC4 24842E90 */  addiu       $a0, $a0, %lo(gEntitiesPosZArray)
/* 1F4F48 801DCFC8 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 1F4F4C 801DCFCC AD2F0098 */  sw          $t7, 0x98($t1)
/* 1F4F50 801DCFD0 8E420000 */  lw          $v0, 0x0($s2)
/* 1F4F54 801DCFD4 8C4D0000 */  lw          $t5, 0x0($v0)
/* 1F4F58 801DCFD8 000D6080 */  sll         $t4, $t5, 2
/* 1F4F5C 801DCFDC 008C7021 */  addu        $t6, $a0, $t4
/* 1F4F60 801DCFE0 E5C40000 */  swc1        $f4, 0x0($t6)
/* 1F4F64 801DCFE4 8C430000 */  lw          $v1, 0x0($v0)
/* 1F4F68 801DCFE8 00031880 */  sll         $v1, $v1, 2
/* 1F4F6C 801DCFEC 0083C021 */  addu        $t8, $a0, $v1
/* 1F4F70 801DCFF0 C7060000 */  lwc1        $f6, 0x0($t8)
/* 1F4F74 801DCFF4 00230821 */  addu        $at, $at, $v1
/* 1F4F78 801DCFF8 0C02CCFD */  jal         func_800B33F4
/* 1F4F7C 801DCFFC E4262950 */   swc1       $f6, %lo(gEntitiesNextPosZArray)($at)
/* 1F4F80 801DD000 8E590000 */  lw          $t9, 0x0($s2)
/* 1F4F84 801DD004 3C10800E */  lui         $s0, %hi(D_800E0D50)
/* 1F4F88 801DD008 26100D50 */  addiu       $s0, $s0, %lo(D_800E0D50)
/* 1F4F8C 801DD00C 8F230000 */  lw          $v1, 0x0($t9)
/* 1F4F90 801DD010 24110002 */  addiu       $s1, $zero, 0x2
/* 1F4F94 801DD014 00031880 */  sll         $v1, $v1, 2
/* 1F4F98 801DD018 02035021 */  addu        $t2, $s0, $v1
/* 1F4F9C 801DD01C 8D420000 */  lw          $v0, 0x0($t2)
/* 1F4FA0 801DD020 00021080 */  sll         $v0, $v0, 2
/* 1F4FA4 801DD024 02024021 */  addu        $t0, $s0, $v0
/* 1F4FA8 801DD028 8D0B0000 */  lw          $t3, 0x0($t0)
/* 1F4FAC 801DD02C 000B7880 */  sll         $t7, $t3, 2
/* 1F4FB0 801DD030 026F4821 */  addu        $t1, $s3, $t7
/* 1F4FB4 801DD034 8D2D0000 */  lw          $t5, 0x0($t1)
/* 1F4FB8 801DD038 122D0010 */  beq         $s1, $t5, L801DD07C_ovl13
/* 1F4FBC 801DD03C 00000000 */   nop
glabel L801DD040_ovl13
/* 1F4FC0 801DD040 0C002DAF */  jal         finish_current_thread
/* 1F4FC4 801DD044 24040001 */   addiu      $a0, $zero, 0x1
/* 1F4FC8 801DD048 8E4C0000 */  lw          $t4, 0x0($s2)
/* 1F4FCC 801DD04C 8D830000 */  lw          $v1, 0x0($t4)
/* 1F4FD0 801DD050 00031880 */  sll         $v1, $v1, 2
/* 1F4FD4 801DD054 02037021 */  addu        $t6, $s0, $v1
/* 1F4FD8 801DD058 8DC20000 */  lw          $v0, 0x0($t6)
/* 1F4FDC 801DD05C 00021080 */  sll         $v0, $v0, 2
/* 1F4FE0 801DD060 0202C021 */  addu        $t8, $s0, $v0
/* 1F4FE4 801DD064 8F190000 */  lw          $t9, 0x0($t8)
/* 1F4FE8 801DD068 00195080 */  sll         $t2, $t9, 2
/* 1F4FEC 801DD06C 026A4021 */  addu        $t0, $s3, $t2
/* 1F4FF0 801DD070 8D0B0000 */  lw          $t3, 0x0($t0)
/* 1F4FF4 801DD074 162BFFF2 */  bne         $s1, $t3, L801DD040_ovl13
/* 1F4FF8 801DD078 00000000 */   nop
glabel L801DD07C_ovl13
/* 1F4FFC 801DD07C 3C07800E */  lui         $a3, %hi(gEntitiesNextPosXArray)
/* 1F5000 801DD080 24E725D0 */  addiu       $a3, $a3, %lo(gEntitiesNextPosXArray)
/* 1F5004 801DD084 00E27821 */  addu        $t7, $a3, $v0
/* 1F5008 801DD088 00E34821 */  addu        $t1, $a3, $v1
/* 1F500C 801DD08C C52A0000 */  lwc1        $f10, 0x0($t1)
/* 1F5010 801DD090 C5E80000 */  lwc1        $f8, 0x0($t7)
/* 1F5014 801DD094 3C0D800E */  lui         $t5, %hi(D_800E5F90)
/* 1F5018 801DD098 3C0C800E */  lui         $t4, %hi(D_800E6BD0)
/* 1F501C 801DD09C 460A4001 */  sub.s       $f0, $f8, $f10
/* 1F5020 801DD0A0 258C6BD0 */  addiu       $t4, $t4, %lo(D_800E6BD0)
/* 1F5024 801DD0A4 25AD5F90 */  addiu       $t5, $t5, %lo(D_800E5F90)
/* 1F5028 801DD0A8 006D2021 */  addu        $a0, $v1, $t5
/* 1F502C 801DD0AC 44060000 */  mfc1        $a2, $f0
/* 1F5030 801DD0B0 0C03E65D */  jal         func_800F9974
/* 1F5034 801DD0B4 006C2821 */   addu       $a1, $v1, $t4
/* 1F5038 801DD0B8 8E420000 */  lw          $v0, 0x0($s2)
/* 1F503C 801DD0BC 3C05800E */  lui         $a1, %hi(gEntitiesNextPosYArray)
/* 1F5040 801DD0C0 24A52790 */  addiu       $a1, $a1, %lo(gEntitiesNextPosYArray)
/* 1F5044 801DD0C4 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5048 801DD0C8 3C01800E */  lui         $at, %hi(gEntitiesPosYArray)
/* 1F504C 801DD0CC 24040258 */  addiu       $a0, $zero, 0x258
/* 1F5050 801DD0D0 00031880 */  sll         $v1, $v1, 2
/* 1F5054 801DD0D4 02037021 */  addu        $t6, $s0, $v1
/* 1F5058 801DD0D8 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F505C 801DD0DC 00230821 */  addu        $at, $at, $v1
/* 1F5060 801DD0E0 0018C880 */  sll         $t9, $t8, 2
/* 1F5064 801DD0E4 00B95021 */  addu        $t2, $a1, $t9
/* 1F5068 801DD0E8 C5400000 */  lwc1        $f0, 0x0($t2)
/* 1F506C 801DD0EC E4202CD0 */  swc1        $f0, %lo(gEntitiesPosYArray)($at)
/* 1F5070 801DD0F0 8C480000 */  lw          $t0, 0x0($v0)
/* 1F5074 801DD0F4 00085880 */  sll         $t3, $t0, 2
/* 1F5078 801DD0F8 00AB7821 */  addu        $t7, $a1, $t3
/* 1F507C 801DD0FC 0C002DAF */  jal         finish_current_thread
/* 1F5080 801DD100 E5E00000 */   swc1       $f0, 0x0($t7)
/* 1F5084 801DD104 8E490000 */  lw          $t1, 0x0($s2)
/* 1F5088 801DD108 2404001E */  addiu       $a0, $zero, 0x1E
/* 1F508C 801DD10C 8D2D0000 */  lw          $t5, 0x0($t1)
/* 1F5090 801DD110 000D6080 */  sll         $t4, $t5, 2
/* 1F5094 801DD114 026C7021 */  addu        $t6, $s3, $t4
/* 1F5098 801DD118 0C002DAF */  jal         finish_current_thread
/* 1F509C 801DD11C ADC00000 */   sw         $zero, 0x0($t6)
/* 1F50A0 801DD120 8E580000 */  lw          $t8, 0x0($s2)
/* 1F50A4 801DD124 0C067656 */  jal         func_8019D958_ovl7
/* 1F50A8 801DD128 97040002 */   lhu        $a0, 0x2($t8)
/* 1F50AC 801DD12C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 1F50B0 801DD130 8FB00014 */  lw          $s0, 0x14($sp)
/* 1F50B4 801DD134 8FB10018 */  lw          $s1, 0x18($sp)
/* 1F50B8 801DD138 8FB2001C */  lw          $s2, 0x1C($sp)
/* 1F50BC 801DD13C 8FB30020 */  lw          $s3, 0x20($sp)
/* 1F50C0 801DD140 03E00008 */  jr          $ra
/* 1F50C4 801DD144 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DCE9C_ovl13, @function

.size func_801DCE9C_ovl13, . - func_801DCE9C_ovl13
