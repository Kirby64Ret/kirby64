glabel func_800A802C
/* 05027C 800A802C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 050280 800A8030 3C0E800D */  lui   $t6, %hi(D_800D6FB8) # $t6, 0x800d
/* 050284 800A8034 8DCE6FB8 */  lw    $t6, %lo(D_800D6FB8)($t6)
/* 050288 800A8038 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05028C 800A803C AFA40018 */  sw    $a0, 0x18($sp)
/* 050290 800A8040 AFA5001C */  sw    $a1, 0x1c($sp)
/* 050294 800A8044 8DCF0044 */  lw    $t7, 0x44($t6)
/* 050298 800A8048 3C190001 */  lui   $t9, 1
/* 05029C 800A804C 00B94004 */  sllv  $t0, $t9, $a1
/* 0502A0 800A8050 01E84824 */  and   $t1, $t7, $t0
/* 0502A4 800A8054 15200026 */  bnez  $t1, .L800A80F0_ovl1
/* 0502A8 800A8058 00001025 */   move  $v0, $zero
/* 0502AC 800A805C 000550C0 */  sll   $t2, $a1, 3
/* 0502B0 800A8060 01442025 */  or    $a0, $t2, $a0
/* 0502B4 800A8064 00C02825 */  move  $a1, $a2
/* 0502B8 800A8068 0C02867B */  jal   func_800A19EC
/* 0502BC 800A806C AFA70024 */   sw    $a3, 0x24($sp)
/* 0502C0 800A8070 8FA70024 */  lw    $a3, 0x24($sp)
/* 0502C4 800A8074 1040001C */  beqz  $v0, .L800A80E8_ovl1
/* 0502C8 800A8078 00402025 */   move  $a0, $v0
/* 0502CC 800A807C 8C43004C */  lw    $v1, 0x4c($v0)
/* 0502D0 800A8080 50600012 */  beql  $v1, $zero, .L800A80CC_ovl1
/* 0502D4 800A8084 C4E40000 */   lwc1  $f4, ($a3)
/* 0502D8 800A8088 8CED0000 */  lw    $t5, ($a3)
/* 0502DC 800A808C AC6D0004 */  sw    $t5, 4($v1)
/* 0502E0 800A8090 8CEC0004 */  lw    $t4, 4($a3)
/* 0502E4 800A8094 AC6C0008 */  sw    $t4, 8($v1)
/* 0502E8 800A8098 8CED0008 */  lw    $t5, 8($a3)
/* 0502EC 800A809C AC6D000C */  sw    $t5, 0xc($v1)
/* 0502F0 800A80A0 8FB90028 */  lw    $t9, 0x28($sp)
/* 0502F4 800A80A4 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0502F8 800A80A8 00801025 */  move  $v0, $a0
/* 0502FC 800A80AC 8F280000 */  lw    $t0, ($t9)
/* 050300 800A80B0 ADC80010 */  sw    $t0, 0x10($t6)
/* 050304 800A80B4 8F2F0004 */  lw    $t7, 4($t9)
/* 050308 800A80B8 ADCF0014 */  sw    $t7, 0x14($t6)
/* 05030C 800A80BC 8F280008 */  lw    $t0, 8($t9)
/* 050310 800A80C0 1000000B */  b     .L800A80F0_ovl1
/* 050314 800A80C4 ADC80018 */   sw    $t0, 0x18($t6)
/* 050318 800A80C8 C4E40000 */  lwc1  $f4, ($a3)
.L800A80CC_ovl1:
/* 05031C 800A80CC E4440014 */  swc1  $f4, 0x14($v0)
/* 050320 800A80D0 C4E60004 */  lwc1  $f6, 4($a3)
/* 050324 800A80D4 E4460018 */  swc1  $f6, 0x18($v0)
/* 050328 800A80D8 C4E80008 */  lwc1  $f8, 8($a3)
/* 05032C 800A80DC E448001C */  swc1  $f8, 0x1c($v0)
/* 050330 800A80E0 10000003 */  b     .L800A80F0_ovl1
/* 050334 800A80E4 00801025 */   move  $v0, $a0
.L800A80E8_ovl1:
/* 050338 800A80E8 10000001 */  b     .L800A80F0_ovl1
/* 05033C 800A80EC 00001025 */   move  $v0, $zero
.L800A80F0_ovl1:
/* 050340 800A80F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050344 800A80F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 050348 800A80F8 03E00008 */  jr    $ra
/* 05034C 800A80FC 00000000 */   nop   
.type func_800A802C, @function
.size func_800A802C, . - func_800A802C
