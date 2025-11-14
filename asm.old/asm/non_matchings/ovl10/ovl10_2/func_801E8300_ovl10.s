glabel func_801E8300_ovl10
/* 1D9070 801E8300 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D9074 801E8304 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D9078 801E8308 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D907C 801E830C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9080 801E8310 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D9084 801E8314 8DC20000 */  lw    $v0, ($t6)
/* 1D9088 801E8318 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D908C 801E831C 3C03800F */  lui   $v1, %hi(D_800EA520) # $v1, 0x800f
/* 1D9090 801E8320 00021080 */  sll   $v0, $v0, 2
/* 1D9094 801E8324 01E27821 */  addu  $t7, $t7, $v0
/* 1D9098 801E8328 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D909C 801E832C 2463A520 */  addiu $v1, %lo(D_800EA520) # addiu $v1, $v1, -0x5ae0
/* 1D90A0 801E8330 0062C021 */  addu  $t8, $v1, $v0
/* 1D90A4 801E8334 51E0001E */  beql  $t7, $zero, .L801E83B0_ovl10
/* 1D90A8 801E8338 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D90AC 801E833C 8F190000 */  lw    $t9, ($t8)
/* 1D90B0 801E8340 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D90B4 801E8344 00194080 */  sll   $t0, $t9, 2
/* 1D90B8 801E8348 00684821 */  addu  $t1, $v1, $t0
/* 1D90BC 801E834C 8D2A0000 */  lw    $t2, ($t1)
/* 1D90C0 801E8350 51400017 */  beql  $t2, $zero, .L801E83B0_ovl10
/* 1D90C4 801E8354 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D90C8 801E8358 0C02BB30 */  jal   func_800AECC0
/* 1D90CC 801E835C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D90D0 801E8360 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D90D4 801E8364 0C02BB48 */  jal   func_800AED20
/* 1D90D8 801E8368 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D90DC 801E836C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D90E0 801E8370 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D90E4 801E8374 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D90E8 801E8378 240B0001 */  li    $t3, 1
/* 1D90EC 801E837C 8C4C0000 */  lw    $t4, ($v0)
/* 1D90F0 801E8380 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D90F4 801E8384 3C05801F */  lui   $a1, %hi(D_801E8008) # $a1, 0x801f
/* 1D90F8 801E8388 000C6880 */  sll   $t5, $t4, 2
/* 1D90FC 801E838C 002D0821 */  addu  $at, $at, $t5
/* 1D9100 801E8390 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1D9104 801E8394 8C4E0000 */  lw    $t6, ($v0)
/* 1D9108 801E8398 24A58008 */  addiu $a1, %lo(D_801E8008) # addiu $a1, $a1, -0x7ff8
/* 1D910C 801E839C 000E7880 */  sll   $t7, $t6, 2
/* 1D9110 801E83A0 008F2021 */  addu  $a0, $a0, $t7
/* 1D9114 801E83A4 0C02C7B2 */  jal   assign_new_process_entry
/* 1D9118 801E83A8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D911C 801E83AC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E83B0_ovl10:
/* 1D9120 801E83B0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9124 801E83B4 03E00008 */  jr    $ra
/* 1D9128 801E83B8 00000000 */   nop   
.type func_801E8300_ovl10, @function
.size func_801E8300_ovl10, . - func_801E8300_ovl10
