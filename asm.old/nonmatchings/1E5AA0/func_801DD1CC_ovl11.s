glabel func_801DD1CC_ovl11
/* 1E7A8C 801DD1CC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L801DD1D0_ovl15:
/* 1E7A90 801DD1D0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E7A94 801DD1D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
.L801DD1D8_ovl10:
/* 1E7A98 801DD1D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E7A9C 801DD1DC AFA40030 */  sw         $a0, 0x30($sp)
.L801DD1E0_ovl15:
/* 1E7AA0 801DD1E0 8DC20000 */  lw         $v0, 0x0($t6)
/* 1E7AA4 801DD1E4 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 1E7AA8 801DD1E8 44804000 */  mtc1       $zero, $f8
/* 1E7AAC 801DD1EC 00021080 */  sll        $v0, $v0, 2
/* 1E7AB0 801DD1F0 00220821 */  addu       $at, $at, $v0
/* 1E7AB4 801DD1F4 C424AA60 */  lwc1       $f4, %lo(D_800EAA60)($at)
.L801DD1F8_ovl9:
/* 1E7AB8 801DD1F8 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 1E7ABC 801DD1FC 00220821 */  addu       $at, $at, $v0
/* 1E7AC0 801DD200 C42641D0 */  lwc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* 1E7AC4 801DD204 3C014348 */  lui        $at, (0x43480000 >> 16)
glabel func_801DD208_ovl15
/* 1E7AC8 801DD208 44815000 */  mtc1       $at, $f10
/* 1E7ACC 801DD20C 46062000 */  add.s      $f0, $f4, $f6
/* 1E7AD0 801DD210 3C014320 */  lui        $at, (0x43200000 >> 16)
.L801DD214_ovl10:
/* 1E7AD4 801DD214 44818000 */  mtc1       $at, $f16
/* 1E7AD8 801DD218 27A40024 */  addiu      $a0, $sp, 0x24
.L801DD21C_ovl12:
/* 1E7ADC 801DD21C 44060000 */  mfc1       $a2, $f0
/* 1E7AE0 801DD220 E7A00020 */  swc1       $f0, 0x20($sp)
/* 1E7AE4 801DD224 24050002 */  addiu      $a1, $zero, 0x2
/* 1E7AE8 801DD228 E7A80024 */  swc1       $f8, 0x24($sp)
.L801DD22C_ovl14:
/* 1E7AEC 801DD22C E7AA0028 */  swc1       $f10, 0x28($sp)
/* 1E7AF0 801DD230 0C006424 */  jal        lbvector_Rotate
/* 1E7AF4 801DD234 E7B0002C */   swc1      $f16, 0x2C($sp)
.L801DD238_ovl9:
/* 1E7AF8 801DD238 24040021 */  addiu      $a0, $zero, 0x21
/* 1E7AFC 801DD23C 00002825 */  or         $a1, $zero, $zero
.L801DD240_ovl10:
/* 1E7B00 801DD240 0C06B364 */  jal        func_801ACD90_ovl7
/* 1E7B04 801DD244 27A60024 */   addiu     $a2, $sp, 0x24
/* 1E7B08 801DD248 10400005 */  beqz       $v0, .L801DD260_ovl12
/* 1E7B0C 801DD24C C7B20020 */   lwc1      $f18, 0x20($sp)
/* 1E7B10 801DD250 00027880 */  sll        $t7, $v0, 2
.L801DD254_ovl9:
/* 1E7B14 801DD254 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 1E7B18 801DD258 002F0821 */  addu       $at, $at, $t7
glabel func_801DD25C_ovl16
/* 1E7B1C 801DD25C E43241D0 */  swc1       $f18, %lo(gEntitiesAngleYArray)($at)
.L801DD260_ovl12:
/* 1E7B20 801DD260 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DD264_ovl10:
/* 1E7B24 801DD264 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1E7B28 801DD268 03E00008 */  jr         $ra
/* 1E7B2C 801DD26C 00000000 */   nop
