glabel func_801DD490_ovl11
/* 1E7D50 801DD490 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801DD494_ovl16:
/* 1E7D54 801DD494 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L801DD498_ovl9:
/* 1E7D58 801DD498 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801DD49C_ovl12:
/* 1E7D5C 801DD49C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E7D60 801DD4A0 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E7D64 801DD4A4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1E7D68 801DD4A8 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801DD4AC_ovl16:
/* 1E7D6C 801DD4AC 240E0001 */  addiu      $t6, $zero, 0x1
/* 1E7D70 801DD4B0 000FC080 */  sll        $t8, $t7, 2
glabel func_801DD4B4_ovl16
/* 1E7D74 801DD4B4 00380821 */  addu       $at, $at, $t8
/* 1E7D78 801DD4B8 AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
.L801DD4BC_ovl12:
/* 1E7D7C 801DD4BC 8C590000 */  lw         $t9, 0x0($v0)
/* 1E7D80 801DD4C0 3C01800F */  lui        $at, %hi(D_800E9E20)
.L801DD4C4_ovl16:
/* 1E7D84 801DD4C4 44802000 */  mtc1       $zero, $f4
glabel func_801DD4C8_ovl14
/* 1E7D88 801DD4C8 00194080 */  sll        $t0, $t9, 2
/* 1E7D8C 801DD4CC 00280821 */  addu       $at, $at, $t0
glabel func_801DD4D0_ovl14
/* 1E7D90 801DD4D0 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1E7D94 801DD4D4 8C490000 */  lw         $t1, 0x0($v0)
/* 1E7D98 801DD4D8 3C01800F */  lui        $at, %hi(D_800E9FE0)
.L801DD4DC_ovl16:
/* 1E7D9C 801DD4DC 240D0005 */  addiu      $t5, $zero, 0x5
/* 1E7DA0 801DD4E0 00095080 */  sll        $t2, $t1, 2
glabel func_801DD4E4_ovl16
/* 1E7DA4 801DD4E4 002A0821 */  addu       $at, $at, $t2
/* 1E7DA8 801DD4E8 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
glabel func_801DD4EC_ovl15
/* 1E7DAC 801DD4EC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E7DB0 801DD4F0 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 1E7DB4 801DD4F4 2404017C */  addiu      $a0, $zero, 0x17C
glabel func_801DD4F8_ovl16
/* 1E7DB8 801DD4F8 000B6080 */  sll        $t4, $t3, 2
.L801DD4FC_ovl12:
/* 1E7DBC 801DD4FC 002C0821 */  addu       $at, $at, $t4
/* 1E7DC0 801DD500 E424AA60 */  swc1       $f4, %lo(D_800EAA60)($at)
.L801DD504_ovl9:
/* 1E7DC4 801DD504 8C4F0000 */  lw         $t7, 0x0($v0)
glabel func_801DD508_ovl12
/* 1E7DC8 801DD508 3C01800E */  lui        $at, %hi(D_800DDFD0)
glabel func_801DD50C_ovl16
/* 1E7DCC 801DD50C 000F7080 */  sll        $t6, $t7, 2
.L801DD510_ovl9:
/* 1E7DD0 801DD510 002E0821 */  addu       $at, $at, $t6
/* 1E7DD4 801DD514 0C029D9E */  jal        play_sound
/* 1E7DD8 801DD518 AC2DDFD0 */   sw        $t5, %lo(D_800DDFD0)($at)
.L801DD51C_ovl10:
/* 1E7DDC 801DD51C 3C040001 */  lui        $a0, (0x103EC >> 16)
/* 1E7DE0 801DD520 0C02A806 */  jal        func_800AA018
/* 1E7DE4 801DD524 348403EC */   ori       $a0, $a0, (0x103EC & 0xFFFF)
/* 1E7DE8 801DD528 3C040001 */  lui        $a0, (0x103EB >> 16)
/* 1E7DEC 801DD52C 348403EB */  ori        $a0, $a0, (0x103EB & 0xFFFF)
/* 1E7DF0 801DD530 0C02AA19 */  jal        func_800AA864
/* 1E7DF4 801DD534 24050001 */   addiu     $a1, $zero, 0x1
/* 1E7DF8 801DD538 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1E7DFC 801DD53C 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1E7E00 801DD540 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1E7E04 801DD544 24180001 */  addiu      $t8, $zero, 0x1
/* 1E7E08 801DD548 8F280000 */  lw         $t0, 0x0($t9)
/* 1E7E0C 801DD54C 3C040001 */  lui        $a0, (0x103F0 >> 16)
glabel func_801DD550_ovl13
/* 1E7E10 801DD550 348403F0 */  ori        $a0, $a0, (0x103F0 & 0xFFFF)
/* 1E7E14 801DD554 00084880 */  sll        $t1, $t0, 2
.L801DD558_ovl9:
/* 1E7E18 801DD558 00290821 */  addu       $at, $at, $t1
/* 1E7E1C 801DD55C 0C02A806 */  jal        func_800AA018
/* 1E7E20 801DD560 AC389E20 */   sw        $t8, %lo(D_800E9E20)($at)
/* 1E7E24 801DD564 3C040001 */  lui        $a0, (0x103EF >> 16)
/* 1E7E28 801DD568 0C02A806 */  jal        func_800AA018
glabel func_801DD56C_ovl12
/* 1E7E2C 801DD56C 348403EF */   ori       $a0, $a0, (0x103EF & 0xFFFF)
/* 1E7E30 801DD570 0C02BE85 */  jal        func_800AFA14
/* 1E7E34 801DD574 00000000 */   nop
/* 1E7E38 801DD578 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DD57C_ovl10:
/* 1E7E3C 801DD57C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E7E40 801DD580 03E00008 */  jr         $ra
/* 1E7E44 801DD584 00000000 */   nop
