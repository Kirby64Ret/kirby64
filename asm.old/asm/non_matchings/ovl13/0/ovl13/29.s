glabel func_801E0928_ovl13 # 29
/* 1F88A8 801E0928 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1F88AC 801E092C 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 1F88B0 801E0930 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F88B4 801E0934 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F88B8 801E0938 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F88BC 801E093C AFA40018 */  sw          $a0, 0x18($sp)
/* 1F88C0 801E0940 8C620000 */  lw          $v0, 0x0($v1)
/* 1F88C4 801E0944 3C07800F */  lui         $a3, %hi(D_800EB320)
/* 1F88C8 801E0948 24E7B320 */  addiu       $a3, $a3, %lo(D_800EB320)
/* 1F88CC 801E094C 00021080 */  sll         $v0, $v0, 2
/* 1F88D0 801E0950 00E27021 */  addu        $t6, $a3, $v0
/* 1F88D4 801E0954 C5C40000 */  lwc1        $f4, 0x0($t6)
/* 1F88D8 801E0958 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F88DC 801E095C 00220821 */  addu        $at, $at, $v0
/* 1F88E0 801E0960 E424A6E0 */  swc1        $f4, %lo(D_800EA6E0)($at)
/* 1F88E4 801E0964 8C620000 */  lw          $v0, 0x0($v1)
/* 1F88E8 801E0968 3C08800F */  lui         $t0, %hi(D_800EB160)
/* 1F88EC 801E096C 2508B160 */  addiu       $t0, $t0, %lo(D_800EB160)
/* 1F88F0 801E0970 00021080 */  sll         $v0, $v0, 2
/* 1F88F4 801E0974 01027821 */  addu        $t7, $t0, $v0
/* 1F88F8 801E0978 C5E60000 */  lwc1        $f6, 0x0($t7)
/* 1F88FC 801E097C 00E2C021 */  addu        $t8, $a3, $v0
/* 1F8900 801E0980 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1F8904 801E0984 E7060000 */  swc1        $f6, 0x0($t8)
/* 1F8908 801E0988 8C620000 */  lw          $v0, 0x0($v1)
/* 1F890C 801E098C 2529FBD0 */  addiu       $t1, $t1, %lo(D_800DFBD0)
/* 1F8910 801E0990 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F8914 801E0994 00021080 */  sll         $v0, $v0, 2
/* 1F8918 801E0998 0122C821 */  addu        $t9, $t1, $v0
/* 1F891C 801E099C 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1F8920 801E09A0 01026021 */  addu        $t4, $t0, $v0
/* 1F8924 801E09A4 8D4B0004 */  lw          $t3, 0x4($t2)
/* 1F8928 801E09A8 C5680020 */  lwc1        $f8, 0x20($t3)
/* 1F892C 801E09AC E5880000 */  swc1        $f8, 0x0($t4)
/* 1F8930 801E09B0 8C620000 */  lw          $v0, 0x0($v1)
/* 1F8934 801E09B4 00021080 */  sll         $v0, $v0, 2
/* 1F8938 801E09B8 01226821 */  addu        $t5, $t1, $v0
/* 1F893C 801E09BC 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F8940 801E09C0 00220821 */  addu        $at, $at, $v0
/* 1F8944 801E09C4 C430ADE0 */  lwc1        $f16, %lo(D_800EADE0)($at)
/* 1F8948 801E09C8 8DC50008 */  lw          $a1, 0x8($t6)
/* 1F894C 801E09CC 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F8950 801E09D0 C4AA0030 */  lwc1        $f10, 0x30($a1)
/* 1F8954 801E09D4 46105480 */  add.s       $f18, $f10, $f16
/* 1F8958 801E09D8 E4B20030 */  swc1        $f18, 0x30($a1)
/* 1F895C 801E09DC 8CCF0000 */  lw          $t7, 0x0($a2)
/* 1F8960 801E09E0 8FA40018 */  lw          $a0, 0x18($sp)
/* 1F8964 801E09E4 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F8968 801E09E8 0018C880 */  sll         $t9, $t8, 2
/* 1F896C 801E09EC 00390821 */  addu        $at, $at, $t9
/* 1F8970 801E09F0 0C06835D */  jal         func_801A0D74_ovl7
/* 1F8974 801E09F4 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F8978 801E09F8 3C0A8005 */  lui         $t2, %hi(D_8004A7C4)
/* 1F897C 801E09FC 8D4AA7C4 */  lw          $t2, %lo(D_8004A7C4)($t2)
/* 1F8980 801E0A00 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F8984 801E0A04 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F8988 801E0A08 000B6080 */  sll         $t4, $t3, 2
/* 1F898C 801E0A0C 004C1021 */  addu        $v0, $v0, $t4
/* 1F8990 801E0A10 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1F8994 801E0A14 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F8998 801E0A18 8C450010 */  lw          $a1, 0x10($v0)
/* 1F899C 801E0A1C 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F89A0 801E0A20 8C460018 */   lw         $a2, 0x18($v0)
/* 1F89A4 801E0A24 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1F89A8 801E0A28 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1F89AC 801E0A2C 3C0D800F */  lui         $t5, %hi(D_800E83E0)
/* 1F89B0 801E0A30 24010001 */  addiu       $at, $zero, 0x1
/* 1F89B4 801E0A34 8C620000 */  lw          $v0, 0x0($v1)
/* 1F89B8 801E0A38 240E0007 */  addiu       $t6, $zero, 0x7
/* 1F89BC 801E0A3C 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F89C0 801E0A40 00021080 */  sll         $v0, $v0, 2
/* 1F89C4 801E0A44 01A26821 */  addu        $t5, $t5, $v0
/* 1F89C8 801E0A48 8DAD83E0 */  lw          $t5, %lo(D_800E83E0)($t5)
/* 1F89CC 801E0A4C 15A1000A */  bne         $t5, $at, L801E0A78_ovl13
/* 1F89D0 801E0A50 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F89D4 801E0A54 00220821 */  addu        $at, $at, $v0
/* 1F89D8 801E0A58 AC2EDC50 */  sw          $t6, %lo(gEntityVtableIndexArray)($at)
/* 1F89DC 801E0A5C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F89E0 801E0A60 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F89E4 801E0A64 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F89E8 801E0A68 000FC080 */  sll         $t8, $t7, 2
/* 1F89EC 801E0A6C 00982021 */  addu        $a0, $a0, $t8
/* 1F89F0 801E0A70 0C02C7B2 */  jal         assign_new_process_entry
/* 1F89F4 801E0A74 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801E0A78_ovl13
/* 1F89F8 801E0A78 0C078E56 */  jal         func_801E3958_ovl13
/* 1F89FC 801E0A7C 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F8A00 801E0A80 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F8A04 801E0A84 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F8A08 801E0A88 03E00008 */  jr          $ra
/* 1F8A0C 801E0A8C 00000000 */   nop
.type func_801E0928_ovl13, @function

.size func_801E0928_ovl13, . - func_801E0928_ovl13
