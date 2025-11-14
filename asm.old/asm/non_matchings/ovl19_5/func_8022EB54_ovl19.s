glabel func_8022EB54_ovl19
/* 24F264 8022EB54 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 24F268 8022EB58 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 24F26C 8022EB5C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 24F270 8022EB60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 24F274 8022EB64 AFA40028 */  sw    $a0, 0x28($sp)
/* 24F278 8022EB68 8DCF0000 */  lw    $t7, ($t6)
/* 24F27C 8022EB6C 3C02800E */ lui $v0, %hi(D_800E0D50)
/* 24F280 8022EB70 3C09800F */ lui $t1, %hi(D_800E9AA0)
/* 24F284 8022EB74 000FC080 */  sll   $t8, $t7, 2
/* 24F288 8022EB78 00581021 */  addu  $v0, $v0, $t8
/* 24F28C 8022EB7C 8C420D50 */ lw $v0, %lo(D_800E0D50)($v0)
/* 24F290 8022EB80 0002C880 */  sll   $t9, $v0, 2
/* 24F294 8022EB84 01394821 */  addu  $t1, $t1, $t9
/* 24F298 8022EB88 8D299AA0 */ lw $t1, %lo(D_800E9AA0)($t1)
/* 24F29C 8022EB8C AFA2001C */  sw    $v0, 0x1c($sp)
/* 24F2A0 8022EB90 0C068220 */  jal   func_801A0880_ovl19
/* 24F2A4 8022EB94 AFA90020 */   sw    $t1, 0x20($sp)
/* 24F2A8 8022EB98 14400051 */  bnez  $v0, .L8022ECE0_ovl19
/* 24F2AC 8022EB9C 240E0001 */   li    $t6, 1
/* 24F2B0 8022EBA0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 24F2B4 8022EBA4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 24F2B8 8022EBA8 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 24F2BC 8022EBAC 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 24F2C0 8022EBB0 8C430000 */  lw    $v1, ($v0)
/* 24F2C4 8022EBB4 44802000 */  mtc1  $zero, $f4
/* 24F2C8 8022EBB8 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosYArray) # $t4, 0x800e
/* 24F2CC 8022EBBC 00031880 */  sll   $v1, $v1, 2
/* 24F2D0 8022EBC0 01035021 */  addu  $t2, $t0, $v1
/* 24F2D4 8022EBC4 C5460000 */  lwc1  $f6, ($t2)
/* 24F2D8 8022EBC8 258C2790 */  addiu $t4, %lo(gEntitiesNextPosYArray) # addiu $t4, $t4, 0x2790
/* 24F2DC 8022EBCC 006C2821 */  addu  $a1, $v1, $t4
/* 24F2E0 8022EBD0 46062032 */  c.eq.s $f4, $f6
/* 24F2E4 8022EBD4 8FAB0020 */  lw    $t3, 0x20($sp)
/* 24F2E8 8022EBD8 4503004A */  bc1tl .L8022ED04_ovl19
/* 24F2EC 8022EBDC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 24F2F0 8022EBE0 C56C000C */  lwc1  $f12, 0xc($t3)
/* 24F2F4 8022EBE4 C4A80000 */  lwc1  $f8, ($a1)
/* 24F2F8 8022EBE8 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 24F2FC 8022EBEC 460C403E */  c.le.s $f8, $f12
/* 24F300 8022EBF0 00000000 */  nop   
/* 24F304 8022EBF4 45020043 */  bc1fl .L8022ED04_ovl19
/* 24F308 8022EBF8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 24F30C 8022EBFC E4AC0000 */  swc1  $f12, ($a1)
/* 24F310 8022EC00 8C4D0000 */  lw    $t5, ($v0)
/* 24F314 8022EC04 44805000 */  mtc1  $zero, $f10
/* 24F318 8022EC08 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 24F31C 8022EC0C 000D7080 */  sll   $t6, $t5, 2
/* 24F320 8022EC10 00CE7821 */  addu  $t7, $a2, $t6
/* 24F324 8022EC14 E5EA0000 */  swc1  $f10, ($t7)
/* 24F328 8022EC18 8C430000 */  lw    $v1, ($v0)
/* 24F32C 8022EC1C 3C01800E */ lui $at, %hi(D_800E3750)
/* 24F330 8022EC20 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 24F334 8022EC24 00031880 */  sll   $v1, $v1, 2
/* 24F338 8022EC28 00C3C021 */  addu  $t8, $a2, $v1
/* 24F33C 8022EC2C C7000000 */  lwc1  $f0, ($t8)
/* 24F340 8022EC30 00230821 */  addu  $at, $at, $v1
/* 24F344 8022EC34 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 24F348 8022EC38 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 24F34C 8022EC3C 8C590000 */  lw    $t9, ($v0)
/* 24F350 8022EC40 3C01800E */ lui $at, %hi(D_800E3590)
/* 24F354 8022EC44 24040260 */  li    $a0, 608
/* 24F358 8022EC48 00194880 */  sll   $t1, $t9, 2
/* 24F35C 8022EC4C 00290821 */  addu  $at, $at, $t1
/* 24F360 8022EC50 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 24F364 8022EC54 8C4A0000 */  lw    $t2, ($v0)
/* 24F368 8022EC58 3C01800E */ lui $at, %hi(D_800E33D0)
/* 24F36C 8022EC5C 000A5880 */  sll   $t3, $t2, 2
/* 24F370 8022EC60 002B0821 */  addu  $at, $at, $t3
/* 24F374 8022EC64 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 24F378 8022EC68 8C4C0000 */  lw    $t4, ($v0)
/* 24F37C 8022EC6C 3C01800E */ lui $at, %hi(D_800E3050)
/* 24F380 8022EC70 000C6880 */  sll   $t5, $t4, 2
/* 24F384 8022EC74 010D7021 */  addu  $t6, $t0, $t5
/* 24F388 8022EC78 E5C00000 */  swc1  $f0, ($t6)
/* 24F38C 8022EC7C 8C4F0000 */  lw    $t7, ($v0)
/* 24F390 8022EC80 000FC080 */  sll   $t8, $t7, 2
/* 24F394 8022EC84 00380821 */  addu  $at, $at, $t8
/* 24F398 8022EC88 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 24F39C 8022EC8C 8C590000 */  lw    $t9, ($v0)
/* 24F3A0 8022EC90 3C018023 */  lui   $at, %hi(D_8022FA9C) # $at, 0x8023
/* 24F3A4 8022EC94 C430FA9C */  lwc1  $f16, %lo(D_8022FA9C)($at)
/* 24F3A8 8022EC98 00194880 */  sll   $t1, $t9, 2
/* 24F3AC 8022EC9C 00E95021 */  addu  $t2, $a3, $t1
/* 24F3B0 8022ECA0 E5500000 */  swc1  $f16, ($t2)
/* 24F3B4 8022ECA4 8C430000 */  lw    $v1, ($v0)
/* 24F3B8 8022ECA8 3C01800E */ lui $at, %hi(D_800E3C90)
/* 24F3BC 8022ECAC 00031880 */  sll   $v1, $v1, 2
/* 24F3C0 8022ECB0 00E35821 */  addu  $t3, $a3, $v1
/* 24F3C4 8022ECB4 C5620000 */  lwc1  $f2, ($t3)
/* 24F3C8 8022ECB8 00230821 */  addu  $at, $at, $v1
/* 24F3CC 8022ECBC E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 24F3D0 8022ECC0 8C4C0000 */  lw    $t4, ($v0)
/* 24F3D4 8022ECC4 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 24F3D8 8022ECC8 000C6880 */  sll   $t5, $t4, 2
/* 24F3DC 8022ECCC 002D0821 */  addu  $at, $at, $t5
/* 24F3E0 8022ECD0 0C029D9E */  jal   play_sound
/* 24F3E4 8022ECD4 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 24F3E8 8022ECD8 1000000A */  b     .L8022ED04_ovl19
/* 24F3EC 8022ECDC 8FBF0014 */   lw    $ra, 0x14($sp)
.L8022ECE0_ovl19:
/* 24F3F0 8022ECE0 8FB8001C */  lw    $t8, 0x1c($sp)
/* 24F3F4 8022ECE4 3C01800D */  lui   $at, %hi(D_800D6E64) # $at, 0x800d
/* 24F3F8 8022ECE8 AC2E6E64 */  sw    $t6, %lo(D_800D6E64)($at)
/* 24F3FC 8022ECEC 3C01800F */ lui $at, %hi(D_800EC120)
/* 24F400 8022ECF0 0018C880 */  sll   $t9, $t8, 2
/* 24F404 8022ECF4 00390821 */  addu  $at, $at, $t9
/* 24F408 8022ECF8 240FFFFF */  li    $t7, -1
/* 24F40C 8022ECFC AC2FC120 */ sw $t7, %lo(D_800EC120)($at)
/* 24F410 8022ED00 8FBF0014 */  lw    $ra, 0x14($sp)
.L8022ED04_ovl19:
/* 24F414 8022ED04 27BD0028 */  addiu $sp, $sp, 0x28
/* 24F418 8022ED08 03E00008 */  jr    $ra
/* 24F41C 8022ED0C 00000000 */   nop   
.type func_8022EB54_ovl19, @function
.size func_8022EB54_ovl19, . - func_8022EB54_ovl19
