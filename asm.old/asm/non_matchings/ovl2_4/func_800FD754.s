glabel func_800FD754
/* 0861C4 800FD754 00047080 */  sll   $t6, $a0, 2
/* 0861C8 800FD758 01C47023 */  subu  $t6, $t6, $a0
/* 0861CC 800FD75C 3C0F8012 */  lui   $t7, %hi(D_801245C4) # $t7, 0x8012
/* 0861D0 800FD760 25EF45C4 */  addiu $t7, %lo(D_801245C4) # addiu $t7, $t7, 0x45c4
/* 0861D4 800FD764 000E7080 */  sll   $t6, $t6, 2
/* 0861D8 800FD768 01CF1021 */  addu  $v0, $t6, $t7
/* 0861DC 800FD76C 8C580000 */  lw    $t8, ($v0)
/* 0861E0 800FD770 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0861E4 800FD774 44856000 */  mtc1  $a1, $f12
/* 0861E8 800FD778 44867000 */  mtc1  $a2, $f14
/* 0861EC 800FD77C 00802825 */  move  $a1, $a0
/* 0861F0 800FD780 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0861F4 800FD784 AFA40020 */  sw    $a0, 0x20($sp)
/* 0861F8 800FD788 13000021 */  beqz  $t8, .L800FD810_ovl2
/* 0861FC 800FD78C AFA7002C */   sw    $a3, 0x2c($sp)
/* 086200 800FD790 00002025 */  move  $a0, $zero
/* 086204 800FD794 AFA50020 */  sw    $a1, 0x20($sp)
/* 086208 800FD798 E7AC0024 */  swc1  $f12, 0x24($sp)
/* 08620C 800FD79C 0C03F675 */  jal   func_800FD9D4
/* 086210 800FD7A0 E7AE0028 */   swc1  $f14, 0x28($sp)
/* 086214 800FD7A4 2401FFFF */  li    $at, -1
/* 086218 800FD7A8 8FA50020 */  lw    $a1, 0x20($sp)
/* 08621C 800FD7AC C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 086220 800FD7B0 C7AE0028 */  lwc1  $f14, 0x28($sp)
/* 086224 800FD7B4 14410006 */  bne   $v0, $at, .L800FD7D0_ovl2
/* 086228 800FD7B8 00402025 */   move  $a0, $v0
/* 08622C 800FD7BC 3C048013 */  lui   $a0, %hi(D_8012890C) # $a0, 0x8013
/* 086230 800FD7C0 0C02909C */  jal   print_error_stub
/* 086234 800FD7C4 2484890C */   addiu $a0, %lo(D_8012890C) # addiu $a0, $a0, -0x76f4
/* 086238 800FD7C8 10000026 */  b     .L800FD864_ovl2
/* 08623C 800FD7CC 00001025 */   move  $v0, $zero
.L800FD7D0_ovl2:
/* 086240 800FD7D0 00041880 */  sll   $v1, $a0, 2
/* 086244 800FD7D4 3C01800F */ lui $at, %hi(D_800EC2E0)
/* 086248 800FD7D8 00230821 */  addu  $at, $at, $v1
/* 08624C 800FD7DC AC25C2E0 */ sw $a1, %lo(D_800EC2E0)($at)
/* 086250 800FD7E0 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 086254 800FD7E4 00230821 */  addu  $at, $at, $v1
/* 086258 800FD7E8 E42C25D0 */ swc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 08625C 800FD7EC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 086260 800FD7F0 00230821 */  addu  $at, $at, $v1
/* 086264 800FD7F4 E42E2790 */ swc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 086268 800FD7F8 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 08626C 800FD7FC 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 086270 800FD800 00230821 */  addu  $at, $at, $v1
/* 086274 800FD804 24020001 */  li    $v0, 1
/* 086278 800FD808 10000016 */  b     .L800FD864_ovl2
/* 08627C 800FD80C E4242950 */ swc1 $f4, %lo(gEntitiesNextPosZArray)($at)
.L800FD810_ovl2:
/* 086280 800FD810 3C198012 */  lui   $t9, %hi(D_80124630) # $t9, 0x8012
/* 086284 800FD814 27394630 */  addiu $t9, %lo(D_80124630) # addiu $t9, $t9, 0x4630
/* 086288 800FD818 1059000B */  beq   $v0, $t9, .L800FD848_ovl2
/* 08628C 800FD81C 00002025 */   move  $a0, $zero
/* 086290 800FD820 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 086294 800FD824 44076000 */  mfc1  $a3, $f12
/* 086298 800FD828 24040003 */  li    $a0, 3
/* 08629C 800FD82C 24050002 */  li    $a1, 2
/* 0862A0 800FD830 8C460004 */  lw    $a2, 4($v0)
/* 0862A4 800FD834 E7AE0010 */  swc1  $f14, 0x10($sp)
/* 0862A8 800FD838 0C029FDD */  jal   func_800A7F74
/* 0862AC 800FD83C E7A60014 */   swc1  $f6, 0x14($sp)
/* 0862B0 800FD840 10000009 */  b     .L800FD868_ovl2
/* 0862B4 800FD844 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FD848_ovl2:
/* 0862B8 800FD848 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 0862BC 800FD84C 44076000 */  mfc1  $a3, $f12
/* 0862C0 800FD850 24050002 */  li    $a1, 2
/* 0862C4 800FD854 8C460004 */  lw    $a2, 4($v0)
/* 0862C8 800FD858 E7AE0010 */  swc1  $f14, 0x10($sp)
/* 0862CC 800FD85C 0C029FDD */  jal   func_800A7F74
/* 0862D0 800FD860 E7A80014 */   swc1  $f8, 0x14($sp)
.L800FD864_ovl2:
/* 0862D4 800FD864 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FD868_ovl2:
/* 0862D8 800FD868 27BD0020 */  addiu $sp, $sp, 0x20
/* 0862DC 800FD86C 03E00008 */  jr    $ra
/* 0862E0 800FD870 00000000 */   nop   
.type func_800FD754, @function
.size func_800FD754, . - func_800FD754
