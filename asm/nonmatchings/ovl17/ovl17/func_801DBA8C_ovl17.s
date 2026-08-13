nonmatching func_801DBA8C_ovl17, 0x31C

glabel func_801DBA8C_ovl17
    /* 226C7C 801DBA8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 226C80 801DBA90 AFA40018 */  sw         $a0, 0x18($sp)
    /* 226C84 801DBA94 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* 226C88 801DBA98 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* 226C8C 801DBA9C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 226C90 801DBAA0 3C0E800F */  lui        $t6, %hi(D_800E83E0)
    /* 226C94 801DBAA4 8C830000 */  lw         $v1, 0x0($a0)
    /* 226C98 801DBAA8 25CE83E0 */  addiu      $t6, $t6, %lo(D_800E83E0)
    /* 226C9C 801DBAAC 24010001 */  addiu      $at, $zero, 0x1
    /* 226CA0 801DBAB0 00031880 */  sll        $v1, $v1, 2
    /* 226CA4 801DBAB4 006E2821 */  addu       $a1, $v1, $t6
    /* 226CA8 801DBAB8 8CA20000 */  lw         $v0, 0x0($a1)
    /* 226CAC 801DBABC 3042FFFF */  andi       $v0, $v0, 0xFFFF
    /* 226CB0 801DBAC0 1041000C */  beq        $v0, $at, .L801DBAF4_ovl17
    /* 226CB4 801DBAC4 24010002 */   addiu     $at, $zero, 0x2
    /* 226CB8 801DBAC8 14410015 */  bne        $v0, $at, .L801DBB20_ovl17
    /* 226CBC 801DBACC 00000000 */   nop
    /* 226CC0 801DBAD0 ACA00000 */  sw         $zero, 0x0($a1)
    /* 226CC4 801DBAD4 0C029D9E */  jal        play_sound
    /* 226CC8 801DBAD8 240400D8 */   addiu     $a0, $zero, 0xD8
    /* 226CCC 801DBADC 00002025 */  or         $a0, $zero, $zero
    /* 226CD0 801DBAE0 0C02ED1A */  jal        func_800BB468
    /* 226CD4 801DBAE4 00002825 */   or        $a1, $zero, $zero
    /* 226CD8 801DBAE8 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* 226CDC 801DBAEC 1000000C */  b          .L801DBB20_ovl17
    /* 226CE0 801DBAF0 8C84A7C4 */   lw        $a0, %lo(omCurrentObj)($a0)
  .L801DBAF4_ovl17:
    /* 226CE4 801DBAF4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 226CE8 801DBAF8 00832021 */  addu       $a0, $a0, $v1
    /* 226CEC 801DBAFC 3C05801E */  lui        $a1, %hi(func_801DC460_ovl17)
    /* 226CF0 801DBB00 24A5C460 */  addiu      $a1, $a1, %lo(func_801DC460_ovl17)
    /* 226CF4 801DBB04 0C02C7B2 */  jal        assign_new_process_entry
    /* 226CF8 801DBB08 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 226CFC 801DBB0C 24040003 */  addiu      $a0, $zero, 0x3
    /* 226D00 801DBB10 0C02ED1A */  jal        func_800BB468
    /* 226D04 801DBB14 00002825 */   or        $a1, $zero, $zero
    /* 226D08 801DBB18 100000A0 */  b          .L801DBD9C_ovl17
    /* 226D0C 801DBB1C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801DBB20_ovl17:
    /* 226D10 801DBB20 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 226D14 801DBB24 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 226D18 801DBB28 8C4F0024 */  lw         $t7, 0x24($v0)
    /* 226D1C 801DBB2C 3C0B800D */  lui        $t3, %hi(D_800D7098)
    /* 226D20 801DBB30 11E00009 */  beqz       $t7, .L801DBB58_ovl17
    /* 226D24 801DBB34 00000000 */   nop
    /* 226D28 801DBB38 AC400024 */  sw         $zero, 0x24($v0)
    /* 226D2C 801DBB3C A4400068 */  sh         $zero, 0x68($v0)
    /* 226D30 801DBB40 8C990000 */  lw         $t9, 0x0($a0)
    /* 226D34 801DBB44 3C01800E */  lui        $at, %hi(D_800E7CE0)
    /* 226D38 801DBB48 2418002D */  addiu      $t8, $zero, 0x2D
    /* 226D3C 801DBB4C 00195080 */  sll        $t2, $t9, 2
    /* 226D40 801DBB50 002A0821 */  addu       $at, $at, $t2
    /* 226D44 801DBB54 AC387CE0 */  sw         $t8, %lo(D_800E7CE0)($at)
  .L801DBB58_ovl17:
    /* 226D48 801DBB58 8D6B7098 */  lw         $t3, %lo(D_800D7098)($t3)
    /* 226D4C 801DBB5C 15600003 */  bnez       $t3, .L801DBB6C_ovl17
    /* 226D50 801DBB60 00000000 */   nop
    /* 226D54 801DBB64 0C076F6A */  jal        func_801DBDA8_ovl17
    /* 226D58 801DBB68 00000000 */   nop
  .L801DBB6C_ovl17:
    /* 226D5C 801DBB6C 0C0770B4 */  jal        func_801DC2D0_ovl17
    /* 226D60 801DBB70 00000000 */   nop
    /* 226D64 801DBB74 0C0770FD */  jal        func_801DC3F4_ovl17
    /* 226D68 801DBB78 00000000 */   nop
    /* 226D6C 801DBB7C 3C0C800D */  lui        $t4, %hi(D_800D7098)
    /* 226D70 801DBB80 8D8C7098 */  lw         $t4, %lo(D_800D7098)($t4)
    /* 226D74 801DBB84 3C04801E */  lui        $a0, %hi(D_801E53D4_ovl17)
    /* 226D78 801DBB88 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 226D7C 801DBB8C 15800007 */  bnez       $t4, .L801DBBAC_ovl17
    /* 226D80 801DBB90 00000000 */   nop
    /* 226D84 801DBB94 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 226D88 801DBB98 248453D4 */  addiu      $a0, $a0, %lo(D_801E53D4_ovl17)
    /* 226D8C 801DBB9C 0C04455D */  jal        func_80111574
    /* 226D90 801DBBA0 8DA50000 */   lw        $a1, 0x0($t5)
    /* 226D94 801DBBA4 0C044713 */  jal        func_80111C4C
    /* 226D98 801DBBA8 00402025 */   or        $a0, $v0, $zero
  .L801DBBAC_ovl17:
    /* 226D9C 801DBBAC 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* 226DA0 801DBBB0 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* 226DA4 801DBBB4 3C07800F */  lui        $a3, %hi(D_800E9AA0)
    /* 226DA8 801DBBB8 24E79AA0 */  addiu      $a3, $a3, %lo(D_800E9AA0)
    /* 226DAC 801DBBBC 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 226DB0 801DBBC0 3C18800F */  lui        $t8, %hi(D_800EBBE0)
    /* 226DB4 801DBBC4 2718BBE0 */  addiu      $t8, $t8, %lo(D_800EBBE0)
    /* 226DB8 801DBBC8 000E7880 */  sll        $t7, $t6, 2
    /* 226DBC 801DBBCC 00EFC821 */  addu       $t9, $a3, $t7
    /* 226DC0 801DBBD0 AF200000 */  sw         $zero, 0x0($t9)
    /* 226DC4 801DBBD4 8C830000 */  lw         $v1, 0x0($a0)
    /* 226DC8 801DBBD8 2406FFFF */  addiu      $a2, $zero, -0x1
    /* 226DCC 801DBBDC 3C09800E */  lui        $t1, %hi(D_800E77A0)
    /* 226DD0 801DBBE0 00031880 */  sll        $v1, $v1, 2
    /* 226DD4 801DBBE4 00781021 */  addu       $v0, $v1, $t8
    /* 226DD8 801DBBE8 8C450000 */  lw         $a1, 0x0($v0)
    /* 226DDC 801DBBEC 252977A0 */  addiu      $t1, $t1, %lo(D_800E77A0)
    /* 226DE0 801DBBF0 10C50010 */  beq        $a2, $a1, .L801DBC34_ovl17
    /* 226DE4 801DBBF4 00055040 */   sll       $t2, $a1, 1
    /* 226DE8 801DBBF8 012A5821 */  addu       $t3, $t1, $t2
    /* 226DEC 801DBBFC 956C0000 */  lhu        $t4, 0x0($t3)
    /* 226DF0 801DBC00 2408003B */  addiu      $t0, $zero, 0x3B
    /* 226DF4 801DBC04 550C0009 */  bnel       $t0, $t4, .L801DBC2C_ovl17
    /* 226DF8 801DBC08 AC460000 */   sw        $a2, 0x0($v0)
    /* 226DFC 801DBC0C 00E31021 */  addu       $v0, $a3, $v1
    /* 226E00 801DBC10 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 226E04 801DBC14 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 226E08 801DBC18 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 226E0C 801DBC1C 8C830000 */  lw         $v1, 0x0($a0)
    /* 226E10 801DBC20 10000004 */  b          .L801DBC34_ovl17
    /* 226E14 801DBC24 00031880 */   sll       $v1, $v1, 2
    /* 226E18 801DBC28 AC460000 */  sw         $a2, 0x0($v0)
  .L801DBC2C_ovl17:
    /* 226E1C 801DBC2C 8C830000 */  lw         $v1, 0x0($a0)
    /* 226E20 801DBC30 00031880 */  sll        $v1, $v1, 2
  .L801DBC34_ovl17:
    /* 226E24 801DBC34 3C0F800F */  lui        $t7, %hi(D_800EBDA0)
    /* 226E28 801DBC38 25EFBDA0 */  addiu      $t7, $t7, %lo(D_800EBDA0)
    /* 226E2C 801DBC3C 006F1021 */  addu       $v0, $v1, $t7
    /* 226E30 801DBC40 8C450000 */  lw         $a1, 0x0($v0)
    /* 226E34 801DBC44 3C09800E */  lui        $t1, %hi(D_800E77A0)
    /* 226E38 801DBC48 252977A0 */  addiu      $t1, $t1, %lo(D_800E77A0)
    /* 226E3C 801DBC4C 10C50010 */  beq        $a2, $a1, .L801DBC90_ovl17
    /* 226E40 801DBC50 2408003B */   addiu     $t0, $zero, 0x3B
    /* 226E44 801DBC54 0005C840 */  sll        $t9, $a1, 1
    /* 226E48 801DBC58 0139C021 */  addu       $t8, $t1, $t9
    /* 226E4C 801DBC5C 970A0000 */  lhu        $t2, 0x0($t8)
    /* 226E50 801DBC60 550A0009 */  bnel       $t0, $t2, .L801DBC88_ovl17
    /* 226E54 801DBC64 AC460000 */   sw        $a2, 0x0($v0)
    /* 226E58 801DBC68 00E31021 */  addu       $v0, $a3, $v1
    /* 226E5C 801DBC6C 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 226E60 801DBC70 256C0001 */  addiu      $t4, $t3, 0x1
    /* 226E64 801DBC74 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 226E68 801DBC78 8C830000 */  lw         $v1, 0x0($a0)
    /* 226E6C 801DBC7C 10000004 */  b          .L801DBC90_ovl17
    /* 226E70 801DBC80 00031880 */   sll       $v1, $v1, 2
    /* 226E74 801DBC84 AC460000 */  sw         $a2, 0x0($v0)
  .L801DBC88_ovl17:
    /* 226E78 801DBC88 8C830000 */  lw         $v1, 0x0($a0)
    /* 226E7C 801DBC8C 00031880 */  sll        $v1, $v1, 2
  .L801DBC90_ovl17:
    /* 226E80 801DBC90 3C0D800F */  lui        $t5, %hi(D_800EBF60)
    /* 226E84 801DBC94 25ADBF60 */  addiu      $t5, $t5, %lo(D_800EBF60)
    /* 226E88 801DBC98 006D1021 */  addu       $v0, $v1, $t5
    /* 226E8C 801DBC9C 8C450000 */  lw         $a1, 0x0($v0)
    /* 226E90 801DBCA0 10C5000F */  beq        $a2, $a1, .L801DBCE0_ovl17
    /* 226E94 801DBCA4 00057040 */   sll       $t6, $a1, 1
    /* 226E98 801DBCA8 012E7821 */  addu       $t7, $t1, $t6
    /* 226E9C 801DBCAC 95F90000 */  lhu        $t9, 0x0($t7)
    /* 226EA0 801DBCB0 55190009 */  bnel       $t0, $t9, .L801DBCD8_ovl17
    /* 226EA4 801DBCB4 AC460000 */   sw        $a2, 0x0($v0)
    /* 226EA8 801DBCB8 00E31021 */  addu       $v0, $a3, $v1
    /* 226EAC 801DBCBC 8C580000 */  lw         $t8, 0x0($v0)
    /* 226EB0 801DBCC0 270A0001 */  addiu      $t2, $t8, 0x1
    /* 226EB4 801DBCC4 AC4A0000 */  sw         $t2, 0x0($v0)
    /* 226EB8 801DBCC8 8C830000 */  lw         $v1, 0x0($a0)
    /* 226EBC 801DBCCC 10000004 */  b          .L801DBCE0_ovl17
    /* 226EC0 801DBCD0 00031880 */   sll       $v1, $v1, 2
    /* 226EC4 801DBCD4 AC460000 */  sw         $a2, 0x0($v0)
  .L801DBCD8_ovl17:
    /* 226EC8 801DBCD8 8C830000 */  lw         $v1, 0x0($a0)
    /* 226ECC 801DBCDC 00031880 */  sll        $v1, $v1, 2
  .L801DBCE0_ovl17:
    /* 226ED0 801DBCE0 3C0B800F */  lui        $t3, %hi(D_800EC120)
    /* 226ED4 801DBCE4 256BC120 */  addiu      $t3, $t3, %lo(D_800EC120)
    /* 226ED8 801DBCE8 006B1021 */  addu       $v0, $v1, $t3
    /* 226EDC 801DBCEC 8C450000 */  lw         $a1, 0x0($v0)
    /* 226EE0 801DBCF0 10C5000F */  beq        $a2, $a1, .L801DBD30_ovl17
    /* 226EE4 801DBCF4 00056040 */   sll       $t4, $a1, 1
    /* 226EE8 801DBCF8 012C6821 */  addu       $t5, $t1, $t4
    /* 226EEC 801DBCFC 95AE0000 */  lhu        $t6, 0x0($t5)
    /* 226EF0 801DBD00 550E0009 */  bnel       $t0, $t6, .L801DBD28_ovl17
    /* 226EF4 801DBD04 AC460000 */   sw        $a2, 0x0($v0)
    /* 226EF8 801DBD08 00E31021 */  addu       $v0, $a3, $v1
    /* 226EFC 801DBD0C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 226F00 801DBD10 25F90001 */  addiu      $t9, $t7, 0x1
    /* 226F04 801DBD14 AC590000 */  sw         $t9, 0x0($v0)
    /* 226F08 801DBD18 8C830000 */  lw         $v1, 0x0($a0)
    /* 226F0C 801DBD1C 10000004 */  b          .L801DBD30_ovl17
    /* 226F10 801DBD20 00031880 */   sll       $v1, $v1, 2
    /* 226F14 801DBD24 AC460000 */  sw         $a2, 0x0($v0)
  .L801DBD28_ovl17:
    /* 226F18 801DBD28 8C830000 */  lw         $v1, 0x0($a0)
    /* 226F1C 801DBD2C 00031880 */  sll        $v1, $v1, 2
  .L801DBD30_ovl17:
    /* 226F20 801DBD30 3C18800F */  lui        $t8, %hi(D_800E98E0)
    /* 226F24 801DBD34 271898E0 */  addiu      $t8, $t8, %lo(D_800E98E0)
    /* 226F28 801DBD38 00781021 */  addu       $v0, $v1, $t8
    /* 226F2C 801DBD3C 8C440000 */  lw         $a0, 0x0($v0)
    /* 226F30 801DBD40 18800003 */  blez       $a0, .L801DBD50_ovl17
    /* 226F34 801DBD44 248AFFFF */   addiu     $t2, $a0, -0x1
    /* 226F38 801DBD48 10000013 */  b          .L801DBD98_ovl17
    /* 226F3C 801DBD4C AC4A0000 */   sw        $t2, 0x0($v0)
  .L801DBD50_ovl17:
    /* 226F40 801DBD50 00E35821 */  addu       $t3, $a3, $v1
    /* 226F44 801DBD54 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 226F48 801DBD58 3C0D8005 */  lui        $t5, %hi(gPlayerControllers + 0x2)
    /* 226F4C 801DBD5C 29810004 */  slti       $at, $t4, 0x4
    /* 226F50 801DBD60 5020000E */  beql       $at, $zero, .L801DBD9C_ovl17
    /* 226F54 801DBD64 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 226F58 801DBD68 95AD8F22 */  lhu        $t5, %lo(gPlayerControllers + 0x2)($t5)
    /* 226F5C 801DBD6C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 226F60 801DBD70 3C19800D */  lui        $t9, %hi(D_800D7098)
    /* 226F64 801DBD74 31AE4000 */  andi       $t6, $t5, 0x4000
    /* 226F68 801DBD78 51C00008 */  beql       $t6, $zero, .L801DBD9C_ovl17
    /* 226F6C 801DBD7C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 226F70 801DBD80 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 226F74 801DBD84 8F397098 */  lw         $t9, %lo(D_800D7098)($t9)
    /* 226F78 801DBD88 57200004 */  bnel       $t9, $zero, .L801DBD9C_ovl17
    /* 226F7C 801DBD8C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 226F80 801DBD90 0C029D9E */  jal        play_sound
    /* 226F84 801DBD94 240401C1 */   addiu     $a0, $zero, 0x1C1
  .L801DBD98_ovl17:
    /* 226F88 801DBD98 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DBD9C_ovl17:
    /* 226F8C 801DBD9C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 226F90 801DBDA0 03E00008 */  jr         $ra
    /* 226F94 801DBDA4 00000000 */   nop
endlabel func_801DBA8C_ovl17
.size func_801DBA8C_ovl17, . - func_801DBA8C_ovl17
