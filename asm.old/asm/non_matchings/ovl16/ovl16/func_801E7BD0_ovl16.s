glabel func_801E7BD0_ovl16
/* 21DE80 801E7BD0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 21DE84 801E7BD4 AFB00018 */  sw    $s0, 0x18($sp)
/* 21DE88 801E7BD8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 21DE8C 801E7BDC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 21DE90 801E7BE0 8E030000 */  lw    $v1, ($s0)
/* 21DE94 801E7BE4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 21DE98 801E7BE8 AFA40050 */  sw    $a0, 0x50($sp)
/* 21DE9C 801E7BEC 8C6F0000 */  lw    $t7, ($v1)
/* 21DEA0 801E7BF0 3C0E800B */  lui   $t6, %hi(D_800B4924) # $t6, 0x800b
/* 21DEA4 801E7BF4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 21DEA8 801E7BF8 000FC080 */  sll   $t8, $t7, 2
/* 21DEAC 801E7BFC 00380821 */  addu  $at, $at, $t8
/* 21DEB0 801E7C00 25CE4924 */  addiu $t6, %lo(D_800B4924) # addiu $t6, $t6, 0x4924
/* 21DEB4 801E7C04 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 21DEB8 801E7C08 8C790000 */  lw    $t9, ($v1)
/* 21DEBC 801E7C0C 3C01800E */ lui $at, %hi(D_800DF150)
/* 21DEC0 801E7C10 00194880 */  sll   $t1, $t9, 2
/* 21DEC4 801E7C14 00290821 */  addu  $at, $at, $t1
/* 21DEC8 801E7C18 0C02CCFD */  jal   func_800B33F4
/* 21DECC 801E7C1C AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 21DED0 801E7C20 8E030000 */  lw    $v1, ($s0)
/* 21DED4 801E7C24 44801000 */  mtc1  $zero, $f2
/* 21DED8 801E7C28 3C06800E */  lui   $a2, %hi(gEntitiesAngleZArray) # $a2, 0x800e
/* 21DEDC 801E7C2C 8C6A0000 */  lw    $t2, ($v1)
/* 21DEE0 801E7C30 24C64390 */  addiu $a2, %lo(gEntitiesAngleZArray) # addiu $a2, $a2, 0x4390
/* 21DEE4 801E7C34 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 21DEE8 801E7C38 000A5880 */  sll   $t3, $t2, 2
/* 21DEEC 801E7C3C 00CB6021 */  addu  $t4, $a2, $t3
/* 21DEF0 801E7C40 E5820000 */  swc1  $f2, ($t4)
/* 21DEF4 801E7C44 8C620000 */  lw    $v0, ($v1)
/* 21DEF8 801E7C48 3C05800D */  lui   $a1, %hi(D_800D70CC) # $a1, 0x800d
/* 21DEFC 801E7C4C 8CA570CC */  lw    $a1, %lo(D_800D70CC)($a1)
/* 21DF00 801E7C50 00021080 */  sll   $v0, $v0, 2
/* 21DF04 801E7C54 00C26821 */  addu  $t5, $a2, $v0
/* 21DF08 801E7C58 C5A00000 */  lwc1  $f0, ($t5)
/* 21DF0C 801E7C5C 00220821 */  addu  $at, $at, $v0
/* 21DF10 801E7C60 3C07800E */  lui   $a3, %hi(gEntitiesNextPosXArray) # $a3, 0x800e
/* 21DF14 801E7C64 E42041D0 */ swc1 $f0, %lo(gEntitiesAngleYArray)($at)
/* 21DF18 801E7C68 8C6F0000 */  lw    $t7, ($v1)
/* 21DF1C 801E7C6C 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 21DF20 801E7C70 24E725D0 */  addiu $a3, %lo(gEntitiesNextPosXArray) # addiu $a3, $a3, 0x25d0
/* 21DF24 801E7C74 000F7080 */  sll   $t6, $t7, 2
/* 21DF28 801E7C78 002E0821 */  addu  $at, $at, $t6
/* 21DF2C 801E7C7C E4204010 */ swc1 $f0, %lo(gEntitiesAngleXArray)($at)
/* 21DF30 801E7C80 8C780000 */  lw    $t8, ($v1)
/* 21DF34 801E7C84 00052880 */  sll   $a1, $a1, 2
/* 21DF38 801E7C88 00E55021 */  addu  $t2, $a3, $a1
/* 21DF3C 801E7C8C 0018C880 */  sll   $t9, $t8, 2
/* 21DF40 801E7C90 00F94821 */  addu  $t1, $a3, $t9
/* 21DF44 801E7C94 C5240000 */  lwc1  $f4, ($t1)
/* 21DF48 801E7C98 C5460000 */  lwc1  $f6, ($t2)
/* 21DF4C 801E7C9C 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 21DF50 801E7CA0 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 21DF54 801E7CA4 46062201 */  sub.s $f8, $f4, $f6
/* 21DF58 801E7CA8 01057821 */  addu  $t7, $t0, $a1
/* 21DF5C 801E7CAC C5F00000 */  lwc1  $f16, ($t7)
/* 21DF60 801E7CB0 27A40044 */  addiu $a0, $sp, 0x44
/* 21DF64 801E7CB4 E7A80044 */  swc1  $f8, 0x44($sp)
/* 21DF68 801E7CB8 8C6B0000 */  lw    $t3, ($v1)
/* 21DF6C 801E7CBC 000B6080 */  sll   $t4, $t3, 2
/* 21DF70 801E7CC0 010C6821 */  addu  $t5, $t0, $t4
/* 21DF74 801E7CC4 C5AA0000 */  lwc1  $f10, ($t5)
/* 21DF78 801E7CC8 E7A2004C */  swc1  $f2, 0x4c($sp)
/* 21DF7C 801E7CCC 46105481 */  sub.s $f18, $f10, $f16
/* 21DF80 801E7CD0 0C006328 */  jal   lbvector_Normalize
/* 21DF84 801E7CD4 E7B20048 */   swc1  $f18, 0x48($sp)
/* 21DF88 801E7CD8 8E030000 */  lw    $v1, ($s0)
/* 21DF8C 801E7CDC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 21DF90 801E7CE0 44808000 */  mtc1  $zero, $f16
/* 21DF94 801E7CE4 8C620000 */  lw    $v0, ($v1)
/* 21DF98 801E7CE8 27A40038 */  addiu $a0, $sp, 0x38
/* 21DF9C 801E7CEC 00021080 */  sll   $v0, $v0, 2
/* 21DFA0 801E7CF0 00220821 */  addu  $at, $at, $v0
/* 21DFA4 801E7CF4 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 21DFA8 801E7CF8 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 21DFAC 801E7CFC 00220821 */  addu  $at, $at, $v0
/* 21DFB0 801E7D00 C4262B10 */ lwc1 $f6, %lo(gEntitiesPosXArray)($at)
/* 21DFB4 801E7D04 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 21DFB8 801E7D08 46062081 */  sub.s $f2, $f4, $f6
/* 21DFBC 801E7D0C E7A20038 */  swc1  $f2, 0x38($sp)
/* 21DFC0 801E7D10 8C620000 */  lw    $v0, ($v1)
/* 21DFC4 801E7D14 E7A20034 */  swc1  $f2, 0x34($sp)
/* 21DFC8 801E7D18 E7B00040 */  swc1  $f16, 0x40($sp)
/* 21DFCC 801E7D1C 00021080 */  sll   $v0, $v0, 2
/* 21DFD0 801E7D20 00220821 */  addu  $at, $at, $v0
/* 21DFD4 801E7D24 C4282790 */ lwc1 $f8, %lo(gEntitiesNextPosYArray)($at)
/* 21DFD8 801E7D28 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 21DFDC 801E7D2C 00220821 */  addu  $at, $at, $v0
/* 21DFE0 801E7D30 C42A2CD0 */ lwc1 $f10, %lo(gEntitiesPosYArray)($at)
/* 21DFE4 801E7D34 460A4301 */  sub.s $f12, $f8, $f10
/* 21DFE8 801E7D38 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 21DFEC 801E7D3C 0C006328 */  jal   lbvector_Normalize
/* 21DFF0 801E7D40 E7AC0030 */   swc1  $f12, 0x30($sp)
/* 21DFF4 801E7D44 27A40038 */  addiu $a0, $sp, 0x38
/* 21DFF8 801E7D48 0C006576 */  jal   func_800195D8_ovl16
/* 21DFFC 801E7D4C 27A50044 */   addiu $a1, $sp, 0x44
/* 21E000 801E7D50 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* 21E004 801E7D54 C7AE003C */  lwc1  $f14, 0x3c($sp)
/* 21E008 801E7D58 0C0061C3 */  jal   atan2f
/* 21E00C 801E7D5C 46006307 */   neg.s $f12, $f12
/* 21E010 801E7D60 C7A20034 */  lwc1  $f2, 0x34($sp)
/* 21E014 801E7D64 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 21E018 801E7D68 8E0E0000 */  lw    $t6, ($s0)
/* 21E01C 801E7D6C 46021482 */  mul.s $f18, $f2, $f2
/* 21E020 801E7D70 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 21E024 801E7D74 8DD80000 */  lw    $t8, ($t6)
/* 21E028 801E7D78 460E7102 */  mul.s $f4, $f14, $f14
/* 21E02C 801E7D7C 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 21E030 801E7D80 0018C880 */  sll   $t9, $t8, 2
/* 21E034 801E7D84 00994821 */  addu  $t1, $a0, $t9
/* 21E038 801E7D88 E5200000 */  swc1  $f0, ($t1)
/* 21E03C 801E7D8C 0C00CAC8 */  jal   sqrtf
/* 21E040 801E7D90 46049300 */   add.s $f12, $f18, $f4
/* 21E044 801E7D94 8E030000 */  lw    $v1, ($s0)
/* 21E048 801E7D98 3C01801F */  lui   $at, %hi(D_801F008C) # $at, 0x801f
/* 21E04C 801E7D9C C422008C */  lwc1  $f2, %lo(D_801F008C)($at)
/* 21E050 801E7DA0 8C6A0000 */  lw    $t2, ($v1)
/* 21E054 801E7DA4 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 21E058 801E7DA8 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 21E05C 801E7DAC 000A5880 */  sll   $t3, $t2, 2
/* 21E060 801E7DB0 002B0821 */  addu  $at, $at, $t3
/* 21E064 801E7DB4 E420A8A0 */ swc1 $f0, %lo(D_800EA8A0)($at)
/* 21E068 801E7DB8 8C6C0000 */  lw    $t4, ($v1)
/* 21E06C 801E7DBC 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 21E070 801E7DC0 3C01801F */  lui   $at, %hi(D_801F0090) # $at, 0x801f
/* 21E074 801E7DC4 000C6880 */  sll   $t5, $t4, 2
/* 21E078 801E7DC8 008D1021 */  addu  $v0, $a0, $t5
/* 21E07C 801E7DCC C44C0000 */  lwc1  $f12, ($v0)
/* 21E080 801E7DD0 460C103C */  c.lt.s $f2, $f12
/* 21E084 801E7DD4 00000000 */  nop   
/* 21E088 801E7DD8 4500000B */  bc1f  .L801E7E08_ovl16
/* 21E08C 801E7DDC 00000000 */   nop   
/* 21E090 801E7DE0 46026181 */  sub.s $f6, $f12, $f2
.L801E7DE4_ovl16:
/* 21E094 801E7DE4 E4460000 */  swc1  $f6, ($v0)
/* 21E098 801E7DE8 8C6F0000 */  lw    $t7, ($v1)
/* 21E09C 801E7DEC 000F7080 */  sll   $t6, $t7, 2
/* 21E0A0 801E7DF0 008E1021 */  addu  $v0, $a0, $t6
/* 21E0A4 801E7DF4 C44C0000 */  lwc1  $f12, ($v0)
/* 21E0A8 801E7DF8 460C103C */  c.lt.s $f2, $f12
/* 21E0AC 801E7DFC 00000000 */  nop   
/* 21E0B0 801E7E00 4503FFF8 */  bc1tl .L801E7DE4_ovl16
/* 21E0B4 801E7E04 46026181 */   sub.s $f6, $f12, $f2
.L801E7E08_ovl16:
/* 21E0B8 801E7E08 C4200090 */  lwc1  $f0, %lo(D_801F0090)($at)
/* 21E0BC 801E7E0C 4600603C */  c.lt.s $f12, $f0
/* 21E0C0 801E7E10 00000000 */  nop   
/* 21E0C4 801E7E14 4500000B */  bc1f  .L801E7E44_ovl16
/* 21E0C8 801E7E18 00000000 */   nop   
/* 21E0CC 801E7E1C 46026200 */  add.s $f8, $f12, $f2
.L801E7E20_ovl16:
/* 21E0D0 801E7E20 E4480000 */  swc1  $f8, ($v0)
/* 21E0D4 801E7E24 8C780000 */  lw    $t8, ($v1)
/* 21E0D8 801E7E28 0018C880 */  sll   $t9, $t8, 2
/* 21E0DC 801E7E2C 00991021 */  addu  $v0, $a0, $t9
/* 21E0E0 801E7E30 C44C0000 */  lwc1  $f12, ($v0)
/* 21E0E4 801E7E34 4600603C */  c.lt.s $f12, $f0
/* 21E0E8 801E7E38 00000000 */  nop   
/* 21E0EC 801E7E3C 4503FFF8 */  bc1tl .L801E7E20_ovl16
/* 21E0F0 801E7E40 46026200 */   add.s $f8, $f12, $f2
.L801E7E44_ovl16:
/* 21E0F4 801E7E44 0C00B5B8 */  jal   sinf
/* 21E0F8 801E7E48 00000000 */   nop   
/* 21E0FC 801E7E4C 8E030000 */  lw    $v1, ($s0)
/* 21E100 801E7E50 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 21E104 801E7E54 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 21E108 801E7E58 8C620000 */  lw    $v0, ($v1)
/* 21E10C 801E7E5C 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 21E110 801E7E60 00021080 */  sll   $v0, $v0, 2
/* 21E114 801E7E64 00220821 */  addu  $at, $at, $v0
/* 21E118 801E7E68 C42AA8A0 */ lwc1 $f10, %lo(D_800EA8A0)($at)
/* 21E11C 801E7E6C 3C01800E */ lui $at, %hi(D_800E3050)
/* 21E120 801E7E70 00220821 */  addu  $at, $at, $v0
/* 21E124 801E7E74 46005407 */  neg.s $f16, $f10
/* 21E128 801E7E78 46008482 */  mul.s $f18, $f16, $f0
/* 21E12C 801E7E7C E4323050 */ swc1 $f18, %lo(D_800E3050)($at)
/* 21E130 801E7E80 8C690000 */  lw    $t1, ($v1)
/* 21E134 801E7E84 00095080 */  sll   $t2, $t1, 2
/* 21E138 801E7E88 008A5821 */  addu  $t3, $a0, $t2
/* 21E13C 801E7E8C 0C00D604 */  jal   cosf
/* 21E140 801E7E90 C56C0000 */   lwc1  $f12, ($t3)
/* 21E144 801E7E94 8E0C0000 */  lw    $t4, ($s0)
/* 21E148 801E7E98 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 21E14C 801E7E9C 24040005 */  li    $a0, 5
/* 21E150 801E7EA0 8D820000 */  lw    $v0, ($t4)
/* 21E154 801E7EA4 00021080 */  sll   $v0, $v0, 2
/* 21E158 801E7EA8 00220821 */  addu  $at, $at, $v0
/* 21E15C 801E7EAC C424A8A0 */ lwc1 $f4, %lo(D_800EA8A0)($at)
/* 21E160 801E7EB0 3C01800E */ lui $at, %hi(D_800E3210)
/* 21E164 801E7EB4 00220821 */  addu  $at, $at, $v0
/* 21E168 801E7EB8 46002182 */  mul.s $f6, $f4, $f0
/* 21E16C 801E7EBC 0C002DAF */  jal   finish_current_thread
/* 21E170 801E7EC0 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 21E174 801E7EC4 0C06B047 */  jal   func_801AC11C_ovl16
/* 21E178 801E7EC8 8FA40050 */   lw    $a0, 0x50($sp)
/* 21E17C 801E7ECC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 21E180 801E7ED0 8FB00018 */  lw    $s0, 0x18($sp)
/* 21E184 801E7ED4 27BD0050 */  addiu $sp, $sp, 0x50
/* 21E188 801E7ED8 03E00008 */  jr    $ra
/* 21E18C 801E7EDC 00000000 */   nop   
.type func_801E7BD0_ovl16, @function
.size func_801E7BD0_ovl16, . - func_801E7BD0_ovl16
