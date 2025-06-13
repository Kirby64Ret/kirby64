glabel func_801DD888_ovl13 # 18
/* 1F5808 801DD888 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1F580C 801DD88C 8CC6A7C4 */  lw          $a2, %lo(D_8004A7C4)($a2)
/* 1F5810 801DD890 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F5814 801DD894 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F5818 801DD898 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F581C 801DD89C 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F5820 801DD8A0 3C0E800F */  lui         $t6, %hi(D_800E9E20)
/* 1F5824 801DD8A4 25CE9E20 */  addiu       $t6, $t6, %lo(D_800E9E20)
/* 1F5828 801DD8A8 00031880 */  sll         $v1, $v1, 2
/* 1F582C 801DD8AC 006E2821 */  addu        $a1, $v1, $t6
/* 1F5830 801DD8B0 8CA20000 */  lw          $v0, 0x0($a1)
/* 1F5834 801DD8B4 18400007 */  blez        $v0, L801DD8D4_ovl13
/* 1F5838 801DD8B8 244FFFFF */   addiu      $t7, $v0, -0x1
/* 1F583C 801DD8BC ACAF0000 */  sw          $t7, 0x0($a1)
/* 1F5840 801DD8C0 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F5844 801DD8C4 3C02800F */  lui         $v0, %hi(D_800E9E20)
/* 1F5848 801DD8C8 00031880 */  sll         $v1, $v1, 2
/* 1F584C 801DD8CC 00431021 */  addu        $v0, $v0, $v1
/* 1F5850 801DD8D0 8C429E20 */  lw          $v0, %lo(D_800E9E20)($v0)
glabel L801DD8D4_ovl13
/* 1F5854 801DD8D4 1C40001A */  bgtz        $v0, L801DD940_ovl13
/* 1F5858 801DD8D8 00000000 */   nop
/* 1F585C 801DD8DC 0C006291 */  jal         random_soft_s32_range
/* 1F5860 801DD8E0 24040008 */   addiu      $a0, $zero, 0x8
/* 1F5864 801DD8E4 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 1F5868 801DD8E8 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 1F586C 801DD8EC 0002C080 */  sll         $t8, $v0, 2
/* 1F5870 801DD8F0 3C01801E */  lui         $at, %hi(D_801E5B58_ovl13)
/* 1F5874 801DD8F4 8F280000 */  lw          $t0, 0x0($t9)
/* 1F5878 801DD8F8 00380821 */  addu        $at, $at, $t8
/* 1F587C 801DD8FC C4245B58 */  lwc1        $f4, %lo(D_801E5B58_ovl13)($at)
/* 1F5880 801DD900 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F5884 801DD904 00084880 */  sll         $t1, $t0, 2
/* 1F5888 801DD908 00290821 */  addu        $at, $at, $t1
/* 1F588C 801DD90C 2404001F */  addiu       $a0, $zero, 0x1F
/* 1F5890 801DD910 0C006291 */  jal         random_soft_s32_range
/* 1F5894 801DD914 E4243750 */   swc1       $f4, %lo(D_800E3750)($at)
/* 1F5898 801DD918 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1F589C 801DD91C 8CC6A7C4 */  lw          $a2, %lo(D_8004A7C4)($a2)
/* 1F58A0 801DD920 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 1F58A4 801DD924 244A000F */  addiu       $t2, $v0, 0xF
/* 1F58A8 801DD928 8CCB0000 */  lw          $t3, 0x0($a2)
/* 1F58AC 801DD92C 000B6080 */  sll         $t4, $t3, 2
/* 1F58B0 801DD930 002C0821 */  addu        $at, $at, $t4
/* 1F58B4 801DD934 AC2A9E20 */  sw          $t2, %lo(D_800E9E20)($at)
/* 1F58B8 801DD938 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F58BC 801DD93C 00031880 */  sll         $v1, $v1, 2
glabel L801DD940_ovl13
/* 1F58C0 801DD940 3C0D800F */  lui         $t5, %hi(D_800EBBE0)
/* 1F58C4 801DD944 01A36821 */  addu        $t5, $t5, $v1
/* 1F58C8 801DD948 8DADBBE0 */  lw          $t5, %lo(D_800EBBE0)($t5)
/* 1F58CC 801DD94C 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1F58D0 801DD950 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1F58D4 801DD954 000D7080 */  sll         $t6, $t5, 2
/* 1F58D8 801DD958 004E7821 */  addu        $t7, $v0, $t6
/* 1F58DC 801DD95C 3C014320 */  lui         $at, (0x43200000 >> 16)
/* 1F58E0 801DD960 44813000 */  mtc1        $at, $f6
/* 1F58E4 801DD964 C5E00000 */  lwc1        $f0, 0x0($t7)
/* 1F58E8 801DD968 0043C021 */  addu        $t8, $v0, $v1
/* 1F58EC 801DD96C C7020000 */  lwc1        $f2, 0x0($t8)
/* 1F58F0 801DD970 46060200 */  add.s       $f8, $f0, $f6
/* 1F58F4 801DD974 3C19800E */  lui         $t9, %hi(D_800E3750)
/* 1F58F8 801DD978 27393750 */  addiu       $t9, $t9, %lo(D_800E3750)
/* 1F58FC 801DD97C 00791021 */  addu        $v0, $v1, $t9
/* 1F5900 801DD980 4602403C */  c.lt.s      $f8, $f2
/* 1F5904 801DD984 3C0141A0 */  lui         $at, (0x41A00000 >> 16)
/* 1F5908 801DD988 45020012 */  bc1fl       L801DD9D4_ovl13
/* 1F590C 801DD98C 44813000 */   mtc1       $at, $f6
/* 1F5910 801DD990 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1F5914 801DD994 44805000 */  mtc1        $zero, $f10
/* 1F5918 801DD998 00000000 */  nop
/* 1F591C 801DD99C 460A003C */  c.lt.s      $f0, $f10
/* 1F5920 801DD9A0 00000000 */  nop
/* 1F5924 801DD9A4 45020006 */  bc1fl       L801DD9C0_ovl13
/* 1F5928 801DD9A8 46000107 */   neg.s      $f4, $f0
/* 1F592C 801DD9AC 46000407 */  neg.s       $f16, $f0
/* 1F5930 801DD9B0 46008487 */  neg.s       $f18, $f16
/* 1F5934 801DD9B4 10000003 */  b           L801DD9C4_ovl13
/* 1F5938 801DD9B8 E4520000 */   swc1       $f18, 0x0($v0)
/* 1F593C 801DD9BC 46000107 */  neg.s       $f4, $f0
glabel L801DD9C0_ovl13
/* 1F5940 801DD9C0 E4440000 */  swc1        $f4, 0x0($v0)
glabel L801DD9C4_ovl13
/* 1F5944 801DD9C4 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F5948 801DD9C8 10000019 */  b           L801DDA30_ovl13
/* 1F594C 801DD9CC 00031880 */   sll        $v1, $v1, 2
/* 1F5950 801DD9D0 44813000 */  mtc1        $at, $f6
glabel L801DD9D4_ovl13
/* 1F5954 801DD9D4 3C08800E */  lui         $t0, %hi(D_800E3750)
/* 1F5958 801DD9D8 25083750 */  addiu       $t0, $t0, %lo(D_800E3750)
/* 1F595C 801DD9DC 46060200 */  add.s       $f8, $f0, $f6
/* 1F5960 801DD9E0 00681021 */  addu        $v0, $v1, $t0
/* 1F5964 801DD9E4 4608103C */  c.lt.s      $f2, $f8
/* 1F5968 801DD9E8 00000000 */  nop
/* 1F596C 801DD9EC 45000010 */  bc1f        L801DDA30_ovl13
/* 1F5970 801DD9F0 00000000 */   nop
/* 1F5974 801DD9F4 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1F5978 801DD9F8 44805000 */  mtc1        $zero, $f10
/* 1F597C 801DD9FC 00000000 */  nop
/* 1F5980 801DDA00 460A003C */  c.lt.s      $f0, $f10
/* 1F5984 801DDA04 00000000 */  nop
/* 1F5988 801DDA08 45020007 */  bc1fl       L801DDA28_ovl13
/* 1F598C 801DDA0C E4400000 */   swc1       $f0, 0x0($v0)
/* 1F5990 801DDA10 46000407 */  neg.s       $f16, $f0
/* 1F5994 801DDA14 E4500000 */  swc1        $f16, 0x0($v0)
/* 1F5998 801DDA18 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F599C 801DDA1C 10000004 */  b           L801DDA30_ovl13
/* 1F59A0 801DDA20 00031880 */   sll        $v1, $v1, 2
/* 1F59A4 801DDA24 E4400000 */  swc1        $f0, 0x0($v0)
glabel L801DDA28_ovl13
/* 1F59A8 801DDA28 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F59AC 801DDA2C 00031880 */  sll         $v1, $v1, 2
glabel L801DDA30_ovl13
/* 1F59B0 801DDA30 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F59B4 801DDA34 00230821 */  addu        $at, $at, $v1
/* 1F59B8 801DDA38 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F59BC 801DDA3C 0C06835D */  jal         func_801A0D74_ovl7
/* 1F59C0 801DDA40 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F59C4 801DDA44 3C098005 */  lui         $t1, %hi(D_8004A7C4)
/* 1F59C8 801DDA48 8D29A7C4 */  lw          $t1, %lo(D_8004A7C4)($t1)
/* 1F59CC 801DDA4C 3C03800E */  lui         $v1, %hi(D_800DFBD0)
/* 1F59D0 801DDA50 8D2B0000 */  lw          $t3, 0x0($t1)
/* 1F59D4 801DDA54 000B5080 */  sll         $t2, $t3, 2
/* 1F59D8 801DDA58 006A1821 */  addu        $v1, $v1, $t2
/* 1F59DC 801DDA5C 8C63FBD0 */  lw          $v1, %lo(D_800DFBD0)($v1)
/* 1F59E0 801DDA60 8C64005C */  lw          $a0, 0x5C($v1)
/* 1F59E4 801DDA64 8C650010 */  lw          $a1, 0x10($v1)
/* 1F59E8 801DDA68 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F59EC 801DDA6C 8C660018 */   lw         $a2, 0x18($v1)
/* 1F59F0 801DDA70 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1F59F4 801DDA74 8CC6A7C4 */  lw          $a2, %lo(D_8004A7C4)($a2)
/* 1F59F8 801DDA78 3C0C800F */  lui         $t4, %hi(D_800E83E0)
/* 1F59FC 801DDA7C 24010001 */  addiu       $at, $zero, 0x1
/* 1F5A00 801DDA80 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F5A04 801DDA84 240D0007 */  addiu       $t5, $zero, 0x7
/* 1F5A08 801DDA88 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F5A0C 801DDA8C 00031880 */  sll         $v1, $v1, 2
/* 1F5A10 801DDA90 01836021 */  addu        $t4, $t4, $v1
/* 1F5A14 801DDA94 8D8C83E0 */  lw          $t4, %lo(D_800E83E0)($t4)
/* 1F5A18 801DDA98 1581000A */  bne         $t4, $at, L801DDAC4_ovl13
/* 1F5A1C 801DDA9C 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F5A20 801DDAA0 00230821 */  addu        $at, $at, $v1
/* 1F5A24 801DDAA4 AC2DDC50 */  sw          $t5, %lo(gEntityVtableIndexArray)($at)
/* 1F5A28 801DDAA8 8CCE0000 */  lw          $t6, 0x0($a2)
/* 1F5A2C 801DDAAC 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F5A30 801DDAB0 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F5A34 801DDAB4 000E7880 */  sll         $t7, $t6, 2
/* 1F5A38 801DDAB8 008F2021 */  addu        $a0, $a0, $t7
/* 1F5A3C 801DDABC 0C02C7B2 */  jal         assign_new_process_entry
/* 1F5A40 801DDAC0 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801DDAC4_ovl13
/* 1F5A44 801DDAC4 0C078E56 */  jal         func_801E3958_ovl13
/* 1F5A48 801DDAC8 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F5A4C 801DDACC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F5A50 801DDAD0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F5A54 801DDAD4 03E00008 */  jr          $ra
/* 1F5A58 801DDAD8 00000000 */   nop
.type func_801DD888_ovl13, @function

.size func_801DD888_ovl13, . - func_801DD888_ovl13
