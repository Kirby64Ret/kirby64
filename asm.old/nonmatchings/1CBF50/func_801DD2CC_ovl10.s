glabel func_801DD2CC_ovl10
/* 1CE03C 801DD2CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CE040 801DD2D0 3C014320 */  lui        $at, (0x43200000 >> 16)
/* 1CE044 801DD2D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CE048 801DD2D8 44816000 */  mtc1       $at, $f12
/* 1CE04C 801DD2DC 0C0669FA */  jal        func_8019A7E8_ovl7
/* 1CE050 801DD2E0 AFA40018 */   sw        $a0, 0x18($sp)
/* 1CE054 801DD2E4 1040000D */  beqz       $v0, .L801DD31C_ovl10
.L801DD2E8_ovl12:
/* 1CE058 801DD2E8 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* 1CE05C 801DD2EC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1CE060 801DD2F0 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801DD2F4_ovl14:
/* 1CE064 801DD2F4 241803E8 */  addiu      $t8, $zero, 0x3E8
/* 1CE068 801DD2F8 8C6E0000 */  lw         $t6, 0x0($v1)
.L801DD2FC_ovl12:
/* 1CE06C 801DD2FC 000E7880 */  sll        $t7, $t6, 2
/* 1CE070 801DD300 002F0821 */  addu       $at, $at, $t7
/* 1CE074 801DD304 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
.L801DD308_ovl15:
/* 1CE078 801DD308 8C790000 */  lw         $t9, 0x0($v1)
.L801DD30C_ovl15:
/* 1CE07C 801DD30C 3C01800F */  lui        $at, %hi(D_800EA520)
.L801DD310_ovl16:
/* 1CE080 801DD310 00194080 */  sll        $t0, $t9, 2
/* 1CE084 801DD314 00280821 */  addu       $at, $at, $t0
glabel func_801DD318_ovl15
/* 1CE088 801DD318 AC38A520 */  sw         $t8, %lo(D_800EA520)($at)
.L801DD31C_ovl10:
/* 1CE08C 801DD31C 0C06835D */  jal        func_801A0D74_ovl7
/* 1CE090 801DD320 8FA40018 */   lw        $a0, 0x18($sp)
/* 1CE094 801DD324 0C078A32 */  jal        func_801E28C8_ovl12
/* 1CE098 801DD328 00002025 */   or        $a0, $zero, $zero
/* 1CE09C 801DD32C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801DD330_ovl11:
/* 1CE0A0 801DD330 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1CE0A4 801DD334 3C09800F */  lui        $t1, %hi(D_800E83E0)
.L801DD338_ovl11:
/* 1CE0A8 801DD338 24010001 */  addiu      $at, $zero, 0x1
glabel func_801DD33C_ovl13
/* 1CE0AC 801DD33C 8C660000 */  lw         $a2, 0x0($v1)
.L801DD340_ovl16:
/* 1CE0B0 801DD340 240A0009 */  addiu      $t2, $zero, 0x9
/* 1CE0B4 801DD344 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
.L801DD348_ovl11:
/* 1CE0B8 801DD348 00063080 */  sll        $a2, $a2, 2
/* 1CE0BC 801DD34C 01264821 */  addu       $t1, $t1, $a2
/* 1CE0C0 801DD350 8D2983E0 */  lw         $t1, %lo(D_800E83E0)($t1)
/* 1CE0C4 801DD354 1521000A */  bne        $t1, $at, .L801DD380_ovl10
/* 1CE0C8 801DD358 3C01800E */   lui       $at, %hi(gEntityVtableIndexArray)
.L801DD35C_ovl16:
/* 1CE0CC 801DD35C 00260821 */  addu       $at, $at, $a2
/* 1CE0D0 801DD360 AC2ADC50 */  sw         $t2, %lo(gEntityVtableIndexArray)($at)
/* 1CE0D4 801DD364 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1CE0D8 801DD368 3C05801E */  lui        $a1, %hi(func_801DBD38_ovl10)
.L801DD36C_ovl13:
/* 1CE0DC 801DD36C 24A5BD38 */  addiu      $a1, $a1, %lo(func_801DBD38_ovl10)
.L801DD370_ovl11:
/* 1CE0E0 801DD370 000B6080 */  sll        $t4, $t3, 2
.L801DD374_ovl14:
/* 1CE0E4 801DD374 008C2021 */  addu       $a0, $a0, $t4
/* 1CE0E8 801DD378 0C02C7B2 */  jal        assign_new_process_entry
/* 1CE0EC 801DD37C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DD380_ovl10:
/* 1CE0F0 801DD380 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CE0F4 801DD384 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1CE0F8 801DD388 03E00008 */  jr         $ra
/* 1CE0FC 801DD38C 00000000 */   nop
