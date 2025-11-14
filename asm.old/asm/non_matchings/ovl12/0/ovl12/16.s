glabel func_801DBFAC_ovl12 # 16
/* 000DAC 801DBFAC 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 000DB0 801DBFB0 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 000DB4 801DBFB4 44802000 */  mtc1        $zero, $f4
/* 000DB8 801DBFB8 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 000DBC 801DBFBC 8C4E0000 */  lw          $t6, 0x0($v0)
/* 000DC0 801DBFC0 3C18800D */  lui         $t8, %hi(D_800D70B0)
/* 000DC4 801DBFC4 8F1870B0 */  lw          $t8, %lo(D_800D70B0)($t8)
/* 000DC8 801DBFC8 000E7880 */  sll         $t7, $t6, 2
/* 000DCC 801DBFCC 002F0821 */  addu        $at, $at, $t7
/* 000DD0 801DBFD0 E42464D0 */  swc1        $f4, %lo(D_800E64D0)($at)
/* 000DD4 801DBFD4 8C430000 */  lw          $v1, 0x0($v0)
/* 000DD8 801DBFD8 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 000DDC 801DBFDC 0018C880 */  sll         $t9, $t8, 2
/* 000DE0 801DBFE0 00031880 */  sll         $v1, $v1, 2
/* 000DE4 801DBFE4 00230821 */  addu        $at, $at, $v1
/* 000DE8 801DBFE8 C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 000DEC 801DBFEC 3C013F00 */  lui         $at, (0x3F000000 >> 16)
/* 000DF0 801DBFF0 44814000 */  mtc1        $at, $f8
/* 000DF4 801DBFF4 3C01800E */  lui         $at, %hi(D_800E6690)
/* 000DF8 801DBFF8 00230821 */  addu        $at, $at, $v1
/* 000DFC 801DBFFC 46083282 */  mul.s       $f10, $f6, $f8
/* 000E00 801DC000 44808000 */  mtc1        $zero, $f16
/* 000E04 801DC004 3C04800E */  lui         $a0, %hi(D_800E6850)
/* 000E08 801DC008 E42A6690 */  swc1        $f10, %lo(D_800E6690)($at)
/* 000E0C 801DC00C 3C01801E */  lui         $at, %hi(D_801E2AB0_ovl12)
/* 000E10 801DC010 00390821 */  addu        $at, $at, $t9
/* 000E14 801DC014 C4202AB0 */  lwc1        $f0, %lo(D_801E2AB0_ovl12)($at)
/* 000E18 801DC018 4610003C */  c.lt.s      $f0, $f16
/* 000E1C 801DC01C 00000000 */  nop
/* 000E20 801DC020 45020009 */  bc1fl       .L801DC048
/* 000E24 801DC024 8C4B0000 */   lw         $t3, 0x0($v0)
/* 000E28 801DC028 8C480000 */  lw          $t0, 0x0($v0)
/* 000E2C 801DC02C 24846850 */  addiu       $a0, $a0, %lo(D_800E6850)
/* 000E30 801DC030 46000487 */  neg.s       $f18, $f0
/* 000E34 801DC034 00084880 */  sll         $t1, $t0, 2
/* 000E38 801DC038 00895021 */  addu        $t2, $a0, $t1
/* 000E3C 801DC03C 10000007 */  b           .L801DC05C
/* 000E40 801DC040 E5520000 */   swc1       $f18, 0x0($t2)
/* 000E44 801DC044 8C4B0000 */  lw          $t3, 0x0($v0)
.L801DC048:
/* 000E48 801DC048 3C04800E */  lui         $a0, %hi(D_800E6850)
/* 000E4C 801DC04C 24846850 */  addiu       $a0, $a0, %lo(D_800E6850)
/* 000E50 801DC050 000B6080 */  sll         $t4, $t3, 2
/* 000E54 801DC054 008C6821 */  addu        $t5, $a0, $t4
/* 000E58 801DC058 E5A00000 */  swc1        $f0, 0x0($t5)
.L801DC05C:
/* 000E5C 801DC05C 8C4E0000 */  lw          $t6, 0x0($v0)
/* 000E60 801DC060 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 000E64 801DC064 44813000 */  mtc1        $at, $f6
/* 000E68 801DC068 000E7880 */  sll         $t7, $t6, 2
/* 000E6C 801DC06C 008F1821 */  addu        $v1, $a0, $t7
/* 000E70 801DC070 C4640000 */  lwc1        $f4, 0x0($v1)
/* 000E74 801DC074 44815000 */  mtc1        $at, $f10
/* 000E78 801DC078 3C013F40 */  lui         $at, (0x3F400000 >> 16)
/* 000E7C 801DC07C 46062202 */  mul.s       $f8, $f4, $f6
/* 000E80 801DC080 44819000 */  mtc1        $at, $f18
/* 000E84 801DC084 460A4400 */  add.s       $f16, $f8, $f10
/* 000E88 801DC088 46128102 */  mul.s       $f4, $f16, $f18
/* 000E8C 801DC08C 03E00008 */  jr          $ra
/* 000E90 801DC090 E4640000 */   swc1       $f4, 0x0($v1)
.type func_801DBFAC_ovl12, @function
.size func_801DBFAC_ovl12, . - func_801DBFAC_ovl12
