glabel func_80158294_ovl3
/* 0B8CD4 80158294 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0B8CD8 80158298 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B8CDC 8015829C 0C054E61 */  jal   func_80153984_ovl3
/* 0B8CE0 801582A0 AFA40028 */   sw    $a0, 0x28($sp)
/* 0B8CE4 801582A4 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B8CE8 801582A8 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B8CEC 801582AC 8D0E0030 */  lw    $t6, 0x30($t0)
/* 0B8CF0 801582B0 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0B8CF4 801582B4 3C04800E */ lui $a0, %hi(D_800E5F90)
/* 0B8CF8 801582B8 15C00033 */  bnez  $t6, .L80158388_ovl3
/* 0B8CFC 801582BC 3C05800E */ lui $a1, %hi(D_800E6BD0)
/* 0B8D00 801582C0 8DE30000 */  lw    $v1, ($t7)
/* 0B8D04 801582C4 8D06003C */  lw    $a2, 0x3c($t0)
/* 0B8D08 801582C8 8D070040 */  lw    $a3, 0x40($t0)
/* 0B8D0C 801582CC 00031080 */  sll   $v0, $v1, 2
/* 0B8D10 801582D0 00822021 */  addu  $a0, $a0, $v0
/* 0B8D14 801582D4 00A22821 */  addu  $a1, $a1, $v0
/* 0B8D18 801582D8 8CA56BD0 */ lw $a1, %lo(D_800E6BD0)($a1)
/* 0B8D1C 801582DC 8C845F90 */ lw $a0, %lo(D_800E5F90)($a0)
/* 0B8D20 801582E0 0C03E547 */  jal   func_800F951C
/* 0B8D24 801582E4 AFA2001C */   sw    $v0, 0x1c($sp)
/* 0B8D28 801582E8 44801000 */  mtc1  $zero, $f2
/* 0B8D2C 801582EC 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B8D30 801582F0 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B8D34 801582F4 4602003C */  c.lt.s $f0, $f2
/* 0B8D38 801582F8 8FA2001C */  lw    $v0, 0x1c($sp)
/* 0B8D3C 801582FC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0B8D40 80158300 45020013 */  bc1fl .L80158350_ovl3
/* 0B8D44 80158304 44814000 */   mtc1  $at, $f8
/* 0B8D48 80158308 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0B8D4C 8015830C 44812000 */  mtc1  $at, $f4
/* 0B8D50 80158310 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0B8D54 80158314 00220821 */  addu  $at, $at, $v0
/* 0B8D58 80158318 C4266A10 */ lwc1 $f6, %lo(D_800E6A10)($at)
/* 0B8D5C 8015831C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0B8D60 80158320 24180001 */  li    $t8, 1
/* 0B8D64 80158324 46062032 */  c.eq.s $f4, $f6
/* 0B8D68 80158328 00220821 */  addu  $at, $at, $v0
/* 0B8D6C 8015832C 45020017 */  bc1fl .L8015838C_ovl3
/* 0B8D70 80158330 8D090044 */   lw    $t1, 0x44($t0)
/* 0B8D74 80158334 AD180030 */  sw    $t8, 0x30($t0)
/* 0B8D78 80158338 E42064D0 */ swc1 $f0, %lo(D_800E64D0)($at)
/* 0B8D7C 8015833C 3C01800E */ lui $at, %hi(D_800E6690)
/* 0B8D80 80158340 00220821 */  addu  $at, $at, $v0
/* 0B8D84 80158344 10000010 */  b     .L80158388_ovl3
/* 0B8D88 80158348 E4226690 */ swc1 $f2, %lo(D_800E6690)($at)
/* 0B8D8C 8015834C 44814000 */  mtc1  $at, $f8
.L80158350_ovl3:
/* 0B8D90 80158350 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0B8D94 80158354 00220821 */  addu  $at, $at, $v0
/* 0B8D98 80158358 C42A6A10 */ lwc1 $f10, %lo(D_800E6A10)($at)
/* 0B8D9C 8015835C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0B8DA0 80158360 24190001 */  li    $t9, 1
/* 0B8DA4 80158364 460A4032 */  c.eq.s $f8, $f10
/* 0B8DA8 80158368 00220821 */  addu  $at, $at, $v0
/* 0B8DAC 8015836C 45020007 */  bc1fl .L8015838C_ovl3
/* 0B8DB0 80158370 8D090044 */   lw    $t1, 0x44($t0)
/* 0B8DB4 80158374 AD190030 */  sw    $t9, 0x30($t0)
/* 0B8DB8 80158378 E42064D0 */ swc1 $f0, %lo(D_800E64D0)($at)
/* 0B8DBC 8015837C 3C01800E */ lui $at, %hi(D_800E6690)
/* 0B8DC0 80158380 00220821 */  addu  $at, $at, $v0
/* 0B8DC4 80158384 E4226690 */ swc1 $f2, %lo(D_800E6690)($at)
.L80158388_ovl3:
/* 0B8DC8 80158388 8D090044 */  lw    $t1, 0x44($t0)
.L8015838C_ovl3:
/* 0B8DCC 8015838C 00002025 */  move  $a0, $zero
/* 0B8DD0 80158390 51200007 */  beql  $t1, $zero, .L801583B0_ovl3
/* 0B8DD4 80158394 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B8DD8 80158398 0C048BDB */  jal   set_kirby_action_1
/* 0B8DDC 8015839C 24050001 */   li    $a1, 1
/* 0B8DE0 801583A0 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B8DE4 801583A4 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B8DE8 801583A8 A100000C */  sb    $zero, 0xc($t0)
/* 0B8DEC 801583AC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801583B0_ovl3:
/* 0B8DF0 801583B0 27BD0028 */  addiu $sp, $sp, 0x28
/* 0B8DF4 801583B4 03E00008 */  jr    $ra
/* 0B8DF8 801583B8 00000000 */   nop   
.type func_80158294_ovl3, @function
.size func_80158294_ovl3, . - func_80158294_ovl3
