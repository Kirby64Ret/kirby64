glabel func_80104FB8
/* 08DA28 80104FB8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08DA2C 80104FBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 08DA30 80104FC0 AFA40028 */  sw    $a0, 0x28($sp)
/* 08DA34 80104FC4 0C00D604 */  jal   cosf
/* 08DA38 80104FC8 C48C0024 */   lwc1  $f12, 0x24($a0)
/* 08DA3C 80104FCC 8FAF0028 */  lw    $t7, 0x28($sp)
/* 08DA40 80104FD0 C5EC0024 */  lwc1  $f12, 0x24($t7)
/* 08DA44 80104FD4 0C00B5B8 */  jal   sinf
/* 08DA48 80104FD8 E7A0001C */   swc1  $f0, 0x1c($sp)
/* 08DA4C 80104FDC 8FA20028 */  lw    $v0, 0x28($sp)
/* 08DA50 80104FE0 3C018013 */  lui   $at, %hi(D_8012BD04) # $at, 0x8013
/* 08DA54 80104FE4 C7A2001C */  lwc1  $f2, 0x1c($sp)
/* 08DA58 80104FE8 C444001C */  lwc1  $f4, 0x1c($v0)
/* 08DA5C 80104FEC 24420010 */  addiu $v0, $v0, 0x10
/* 08DA60 80104FF0 46002182 */  mul.s $f6, $f4, $f0
/* 08DA64 80104FF4 E426BD04 */  swc1  $f6, %lo(D_8012BD04)($at)
/* 08DA68 80104FF8 C448000C */  lwc1  $f8, 0xc($v0)
/* 08DA6C 80104FFC 3C018013 */  lui   $at, %hi(D_8012BD0C) # $at, 0x8013
/* 08DA70 80105000 46024282 */  mul.s $f10, $f8, $f2
/* 08DA74 80105004 44804000 */  mtc1  $zero, $f8
/* 08DA78 80105008 E42ABD08 */  swc1  $f10, %lo(D_8012BD08)($at)
/* 08DA7C 8010500C C4500010 */  lwc1  $f16, 0x10($v0)
/* 08DA80 80105010 46008482 */  mul.s $f18, $f16, $f0
/* 08DA84 80105014 E432BD0C */  swc1  $f18, %lo(D_8012BD0C)($at)
/* 08DA88 80105018 C4440010 */  lwc1  $f4, 0x10($v0)
/* 08DA8C 8010501C 3C018013 */  lui   $at, %hi(D_8012BD10) # $at, 0x8013
/* 08DA90 80105020 46022182 */  mul.s $f6, $f4, $f2
/* 08DA94 80105024 E426BD10 */  swc1  $f6, %lo(D_8012BD10)($at)
/* 08DA98 80105028 C44A000C */  lwc1  $f10, 0xc($v0)
/* 08DA9C 8010502C 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 08DAA0 80105030 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 08DAA4 80105034 460A403C */  c.lt.s $f8, $f10
/* 08DAA8 80105038 3C018013 */  lui   $at, 0x8013
/* 08DAAC 8010503C 45020008 */  bc1fl .L80105060_ovl2
/* 08DAB0 80105040 46000407 */   neg.s $f16, $f0
/* 08DAB4 80105044 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 08DAB8 80105048 3C018013 */  lui   $at, %hi(D_8012BD14) # $at, 0x8013
/* 08DABC 8010504C 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 08DAC0 80105050 E420BD14 */  swc1  $f0, %lo(D_8012BD14)($at)
/* 08DAC4 80105054 10000005 */  b     .L8010506C_ovl2
/* 08DAC8 80105058 E4420018 */   swc1  $f2, 0x18($v0)
/* 08DACC 8010505C 46000407 */  neg.s $f16, $f0
.L80105060_ovl2:
/* 08DAD0 80105060 46001487 */  neg.s $f18, $f2
/* 08DAD4 80105064 E430BD14 */  swc1  $f16, %lo(D_8012BD14)($at)
/* 08DAD8 80105068 E4520018 */  swc1  $f18, 0x18($v0)
.L8010506C_ovl2:
/* 08DADC 8010506C 3C018013 */  lui   $at, %hi(D_80128A7C) # $at, 0x8013
/* 08DAE0 80105070 C42C8A7C */  lwc1  $f12, %lo(D_80128A7C)($at)
/* 08DAE4 80105074 C4400014 */  lwc1  $f0, 0x14($v0)
/* 08DAE8 80105078 C4420018 */  lwc1  $f2, 0x18($v0)
/* 08DAEC 8010507C C44A0004 */  lwc1  $f10, 4($v0)
/* 08DAF0 80105080 460C0202 */  mul.s $f8, $f0, $f12
/* 08DAF4 80105084 46000107 */  neg.s $f4, $f0
/* 08DAF8 80105088 46001187 */  neg.s $f6, $f2
/* 08DAFC 8010508C 460C1482 */  mul.s $f18, $f2, $f12
/* 08DB00 80105090 E444001C */  swc1  $f4, 0x1c($v0)
/* 08DB04 80105094 C4440008 */  lwc1  $f4, 8($v0)
/* 08DB08 80105098 E4460020 */  swc1  $f6, 0x20($v0)
/* 08DB0C 8010509C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08DB10 801050A0 460A4400 */  add.s $f16, $f8, $f10
/* 08DB14 801050A4 C448001C */  lwc1  $f8, 0x1c($v0)
/* 08DB18 801050A8 46049180 */  add.s $f6, $f18, $f4
/* 08DB1C 801050AC 460C4282 */  mul.s $f10, $f8, $f12
/* 08DB20 801050B0 C4440020 */  lwc1  $f4, 0x20($v0)
/* 08DB24 801050B4 E4500024 */  swc1  $f16, 0x24($v0)
/* 08DB28 801050B8 E4460028 */  swc1  $f6, 0x28($v0)
/* 08DB2C 801050BC 460C2182 */  mul.s $f6, $f4, $f12
/* 08DB30 801050C0 C450000C */  lwc1  $f16, 0xc($v0)
/* 08DB34 801050C4 C4480010 */  lwc1  $f8, 0x10($v0)
/* 08DB38 801050C8 27BD0028 */  addiu $sp, $sp, 0x28
/* 08DB3C 801050CC 46105480 */  add.s $f18, $f10, $f16
/* 08DB40 801050D0 46083280 */  add.s $f10, $f6, $f8
/* 08DB44 801050D4 E452002C */  swc1  $f18, 0x2c($v0)
/* 08DB48 801050D8 03E00008 */  jr    $ra
/* 08DB4C 801050DC E44A0030 */   swc1  $f10, 0x30($v0)
.type func_80104FB8, @function
.size func_80104FB8, . - func_80104FB8
