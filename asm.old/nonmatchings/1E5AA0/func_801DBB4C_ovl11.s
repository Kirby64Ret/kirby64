glabel func_801DBB4C_ovl11
/* 1E640C 801DBB4C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E6410 801DBB50 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E6414 801DBB54 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801DBB58_ovl17:
/* 1E6418 801DBB58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E641C 801DBB5C AFA40018 */  sw         $a0, 0x18($sp)
/* 1E6420 801DBB60 8C430000 */  lw         $v1, 0x0($v0)
/* 1E6424 801DBB64 3C0E800F */  lui        $t6, %hi(D_800EC2E0)
/* 1E6428 801DBB68 25CEC2E0 */  addiu      $t6, $t6, %lo(D_800EC2E0)
.L801DBB6C_ovl17:
/* 1E642C 801DBB6C 00031880 */  sll        $v1, $v1, 2
/* 1E6430 801DBB70 006E2821 */  addu       $a1, $v1, $t6
/* 1E6434 801DBB74 8CA40000 */  lw         $a0, 0x0($a1)
/* 1E6438 801DBB78 3C01800D */  lui        $at, %hi(D_800D70D8)
.L801DBB7C_ovl16:
/* 1E643C 801DBB7C 18800007 */  blez       $a0, .L801DBB9C_ovl11
/* 1E6440 801DBB80 248FFFFF */   addiu     $t7, $a0, -0x1
/* 1E6444 801DBB84 ACAF0000 */  sw         $t7, 0x0($a1)
/* 1E6448 801DBB88 8C430000 */  lw         $v1, 0x0($v0)
.L801DBB8C_ovl10:
/* 1E644C 801DBB8C 3C04800F */  lui        $a0, %hi(D_800EC2E0)
/* 1E6450 801DBB90 00031880 */  sll        $v1, $v1, 2
.L801DBB94_ovl9:
/* 1E6454 801DBB94 00832021 */  addu       $a0, $a0, $v1
/* 1E6458 801DBB98 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
.L801DBB9C_ovl11:
/* 1E645C 801DBB9C 14800010 */  bnez       $a0, .L801DBBE0_ovl13
.L801DBBA0_ovl16:
/* 1E6460 801DBBA0 00000000 */   nop
/* 1E6464 801DBBA4 C42470D8 */  lwc1       $f4, %lo(D_800D70D8)($at)
/* 1E6468 801DBBA8 4600218D */  trunc.w.s  $f6, $f4
.L801DBBAC_ovl17:
/* 1E646C 801DBBAC 44043000 */  mfc1       $a0, $f6
/* 1E6470 801DBBB0 0C02F07F */  jal        func_800BC1FC
.L801DBBB4_ovl9:
/* 1E6474 801DBBB4 00000000 */   nop
/* 1E6478 801DBBB8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E647C 801DBBBC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E6480 801DBBC0 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 1E6484 801DBBC4 2419FFFF */  addiu      $t9, $zero, -0x1
.L801DBBC8_ovl13:
/* 1E6488 801DBBC8 8C480000 */  lw         $t0, 0x0($v0)
glabel func_801DBBCC_ovl16
/* 1E648C 801DBBCC 00084880 */  sll        $t1, $t0, 2
.L801DBBD0_ovl15:
/* 1E6490 801DBBD0 00290821 */  addu       $at, $at, $t1
.L801DBBD4_ovl10:
/* 1E6494 801DBBD4 AC39C2E0 */  sw         $t9, %lo(D_800EC2E0)($at)
.L801DBBD8_ovl9:
/* 1E6498 801DBBD8 8C430000 */  lw         $v1, 0x0($v0)
/* 1E649C 801DBBDC 00031880 */  sll        $v1, $v1, 2
.L801DBBE0_ovl13:
/* 1E64A0 801DBBE0 3C04800E */  lui        $a0, %hi(D_800DDFD0)
.L801DBBE4_ovl14:
/* 1E64A4 801DBBE4 00832021 */  addu       $a0, $a0, $v1
/* 1E64A8 801DBBE8 3C06801E */  lui        $a2, %hi(func_801E0B38_ovl17)
.L801DBBEC_ovl12:
/* 1E64AC 801DBBEC 24C60B38 */  addiu      $a2, $a2, %lo(func_801E0B38_ovl17)
.L801DBBF0_ovl15:
/* 1E64B0 801DBBF0 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 1E64B4 801DBBF4 0C02911F */  jal        call_virtual_function
/* 1E64B8 801DBBF8 24050005 */   addiu     $a1, $zero, 0x5
/* 1E64BC 801DBBFC 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
glabel func_801DBC00_ovl10
/* 1E64C0 801DBC00 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
.L801DBC04_ovl15:
/* 1E64C4 801DBC04 3C0B800F */  lui        $t3, %hi(D_800E9FE0)
.L801DBC08_ovl13:
/* 1E64C8 801DBC08 8D430000 */  lw         $v1, 0x0($t2)
/* 1E64CC 801DBC0C 00031880 */  sll        $v1, $v1, 2
.L801DBC10_ovl9:
/* 1E64D0 801DBC10 01635821 */  addu       $t3, $t3, $v1
/* 1E64D4 801DBC14 8D6B9FE0 */  lw         $t3, %lo(D_800E9FE0)($t3)
/* 1E64D8 801DBC18 11600009 */  beqz       $t3, .L801DBC40_ovl11
.L801DBC1C_ovl9:
/* 1E64DC 801DBC1C 00000000 */   nop
.L801DBC20_ovl9:
/* 1E64E0 801DBC20 0C076DF4 */  jal        func_801DB7D0_ovl11
/* 1E64E4 801DBC24 00000000 */   nop
/* 1E64E8 801DBC28 0C076E3A */  jal        func_801DB8E8_ovl11
glabel func_801DBC2C_ovl17
/* 1E64EC 801DBC2C 00000000 */   nop
/* 1E64F0 801DBC30 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
glabel func_801DBC34_ovl17
/* 1E64F4 801DBC34 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
glabel func_801DBC38_ovl9
/* 1E64F8 801DBC38 8D830000 */  lw         $v1, 0x0($t4)
.L801DBC3C_ovl16:
/* 1E64FC 801DBC3C 00031880 */  sll        $v1, $v1, 2
.L801DBC40_ovl11:
/* 1E6500 801DBC40 3C0D800F */  lui        $t5, %hi(D_800EC2E0)
/* 1E6504 801DBC44 01A36821 */  addu       $t5, $t5, $v1
/* 1E6508 801DBC48 8DADC2E0 */  lw         $t5, %lo(D_800EC2E0)($t5)
/* 1E650C 801DBC4C 3C01800D */  lui        $at, %hi(D_800D70D8)
.L801DBC50_ovl16:
/* 1E6510 801DBC50 05A10003 */  bgez       $t5, .L801DBC60_ovl16
.L801DBC54_ovl15:
/* 1E6514 801DBC54 00000000 */   nop
/* 1E6518 801DBC58 0C02F047 */  jal        func_800BC11C
/* 1E651C 801DBC5C C42C70D8 */   lwc1      $f12, %lo(D_800D70D8)($at)
.L801DBC60_ovl16:
/* 1E6520 801DBC60 3C01800D */  lui        $at, %hi(D_800D70D8)
/* 1E6524 801DBC64 C42A70D8 */  lwc1       $f10, %lo(D_800D70D8)($at)
.L801DBC68_ovl16:
/* 1E6528 801DBC68 44804000 */  mtc1       $zero, $f8
/* 1E652C 801DBC6C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E6530 801DBC70 4608503E */  c.le.s     $f10, $f8
/* 1E6534 801DBC74 00000000 */  nop
.L801DBC78_ovl10:
/* 1E6538 801DBC78 45020011 */  bc1fl      .L801DBCC0_ovl11
/* 1E653C 801DBC7C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1E6540 801DBC80 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E6544 801DBC84 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801DBC88_ovl17:
/* 1E6548 801DBC88 240E0004 */  addiu      $t6, $zero, 0x4
/* 1E654C 801DBC8C 8C4F0000 */  lw         $t7, 0x0($v0)
.L801DBC90_ovl17:
/* 1E6550 801DBC90 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1E6554 801DBC94 3C05801E */  lui        $a1, %hi(func_801DB8A0_ovl11)
/* 1E6558 801DBC98 000FC080 */  sll        $t8, $t7, 2
/* 1E655C 801DBC9C 00380821 */  addu       $at, $at, $t8
/* 1E6560 801DBCA0 AC2EDC50 */  sw         $t6, %lo(gEntityVtableIndexArray)($at)
/* 1E6564 801DBCA4 8C480000 */  lw         $t0, 0x0($v0)
.L801DBCA8_ovl15:
/* 1E6568 801DBCA8 24A5B8A0 */  addiu      $a1, $a1, %lo(func_801DB8A0_ovl11)
/* 1E656C 801DBCAC 0008C880 */  sll        $t9, $t0, 2
/* 1E6570 801DBCB0 00992021 */  addu       $a0, $a0, $t9
.L801DBCB4_ovl9:
/* 1E6574 801DBCB4 0C02C7B2 */  jal        assign_new_process_entry
.L801DBCB8_ovl12:
/* 1E6578 801DBCB8 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E657C 801DBCBC 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DBCC0_ovl11:
/* 1E6580 801DBCC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E6584 801DBCC4 03E00008 */  jr         $ra
/* 1E6588 801DBCC8 00000000 */   nop
