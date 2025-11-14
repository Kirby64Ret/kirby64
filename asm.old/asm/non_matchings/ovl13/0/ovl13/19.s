glabel func_801DDADC_ovl13 # 19
/* 1F5A5C 801DDADC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F5A60 801DDAE0 44866000 */  mtc1        $a2, $f12
/* 1F5A64 801DDAE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F5A68 801DDAE8 14A00047 */  bnez        $a1, L801DDC08_ovl13
/* 1F5A6C 801DDAEC AFA40018 */   sw         $a0, 0x18($sp)
/* 1F5A70 801DDAF0 4600610D */  trunc.w.s   $f4, $f12
/* 1F5A74 801DDAF4 24010001 */  addiu       $at, $zero, 0x1
/* 1F5A78 801DDAF8 440F2000 */  mfc1        $t7, $f4
/* 1F5A7C 801DDAFC 00000000 */  nop
/* 1F5A80 801DDB00 55E10042 */  bnel        $t7, $at, L801DDC0C_ovl13
/* 1F5A84 801DDB04 8FBF0014 */   lw         $ra, 0x14($sp)
/* 1F5A88 801DDB08 0C006291 */  jal         random_soft_s32_range
/* 1F5A8C 801DDB0C 24040003 */   addiu      $a0, $zero, 0x3
/* 1F5A90 801DDB10 3C188005 */  lui         $t8, %hi(D_8004A7C4)
/* 1F5A94 801DDB14 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 1F5A98 801DDB18 3C06800F */  lui         $a2, %hi(D_800EA1A0)
/* 1F5A9C 801DDB1C 24C6A1A0 */  addiu       $a2, $a2, %lo(D_800EA1A0)
/* 1F5AA0 801DDB20 8F190000 */  lw          $t9, 0x0($t8)
/* 1F5AA4 801DDB24 3C0B801E */  lui         $t3, %hi(D_801E5B78_ovl13)
/* 1F5AA8 801DDB28 256B5B78 */  addiu       $t3, $t3, %lo(D_801E5B78_ovl13)
/* 1F5AAC 801DDB2C 00194080 */  sll         $t0, $t9, 2
/* 1F5AB0 801DDB30 00C81821 */  addu        $v1, $a2, $t0
/* 1F5AB4 801DDB34 8C640000 */  lw          $a0, 0x0($v1)
/* 1F5AB8 801DDB38 00027080 */  sll         $t6, $v0, 2
/* 1F5ABC 801DDB3C 01CB7821 */  addu        $t7, $t6, $t3
/* 1F5AC0 801DDB40 14440004 */  bne         $v0, $a0, L801DDB54_ovl13
/* 1F5AC4 801DDB44 00045080 */   sll        $t2, $a0, 2
/* 1F5AC8 801DDB48 24890003 */  addiu       $t1, $a0, 0x3
/* 1F5ACC 801DDB4C 1000001E */  b           L801DDBC8_ovl13
/* 1F5AD0 801DDB50 AC690000 */   sw         $t1, 0x0($v1)
glabel L801DDB54_ovl13
/* 1F5AD4 801DDB54 014B6021 */  addu        $t4, $t2, $t3
/* 1F5AD8 801DDB58 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F5ADC 801DDB5C 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F5AE0 801DDB60 55B80019 */  bnel        $t5, $t8, L801DDBC8_ovl13
/* 1F5AE4 801DDB64 AC620000 */   sw         $v0, 0x0($v1)
/* 1F5AE8 801DDB68 0C006291 */  jal         random_soft_s32_range
/* 1F5AEC 801DDB6C 24040002 */   addiu      $a0, $zero, 0x2
/* 1F5AF0 801DDB70 3C048005 */  lui         $a0, %hi(D_8004A7C4)
/* 1F5AF4 801DDB74 8C84A7C4 */  lw          $a0, %lo(D_8004A7C4)($a0)
/* 1F5AF8 801DDB78 3C06800F */  lui         $a2, %hi(D_800EA1A0)
/* 1F5AFC 801DDB7C 24C6A1A0 */  addiu       $a2, $a2, %lo(D_800EA1A0)
/* 1F5B00 801DDB80 8C990000 */  lw          $t9, 0x0($a0)
/* 1F5B04 801DDB84 24010003 */  addiu       $at, $zero, 0x3
/* 1F5B08 801DDB88 00194080 */  sll         $t0, $t9, 2
/* 1F5B0C 801DDB8C 00C81821 */  addu        $v1, $a2, $t0
/* 1F5B10 801DDB90 8C690000 */  lw          $t1, 0x0($v1)
/* 1F5B14 801DDB94 01225021 */  addu        $t2, $t1, $v0
/* 1F5B18 801DDB98 254C0001 */  addiu       $t4, $t2, 0x1
/* 1F5B1C 801DDB9C AC6C0000 */  sw          $t4, 0x0($v1)
/* 1F5B20 801DDBA0 8C8E0000 */  lw          $t6, 0x0($a0)
/* 1F5B24 801DDBA4 000E5880 */  sll         $t3, $t6, 2
/* 1F5B28 801DDBA8 00CB1821 */  addu        $v1, $a2, $t3
/* 1F5B2C 801DDBAC 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F5B30 801DDBB0 01E1001A */  div         $zero, $t7, $at
/* 1F5B34 801DDBB4 00006810 */  mfhi        $t5
/* 1F5B38 801DDBB8 AC6D0000 */  sw          $t5, 0x0($v1)
/* 1F5B3C 801DDBBC 10000002 */  b           L801DDBC8_ovl13
/* 1F5B40 801DDBC0 00000000 */   nop
/* 1F5B44 801DDBC4 AC620000 */  sw          $v0, 0x0($v1)
glabel L801DDBC8_ovl13
/* 1F5B48 801DDBC8 0C029D9E */  jal         play_sound
/* 1F5B4C 801DDBCC 24040188 */   addiu      $a0, $zero, 0x188
/* 1F5B50 801DDBD0 3C188005 */  lui         $t8, %hi(D_8004A7C4)
/* 1F5B54 801DDBD4 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 1F5B58 801DDBD8 3C06800F */  lui         $a2, %hi(D_800EA1A0)
/* 1F5B5C 801DDBDC 24C6A1A0 */  addiu       $a2, $a2, %lo(D_800EA1A0)
/* 1F5B60 801DDBE0 8F190000 */  lw          $t9, 0x0($t8)
/* 1F5B64 801DDBE4 3C04801E */  lui         $a0, %hi(D_801E5B78_ovl13)
/* 1F5B68 801DDBE8 00002825 */  move        $a1, $zero
/* 1F5B6C 801DDBEC 00194080 */  sll         $t0, $t9, 2
/* 1F5B70 801DDBF0 00C84821 */  addu        $t1, $a2, $t0
/* 1F5B74 801DDBF4 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F5B78 801DDBF8 000A6080 */  sll         $t4, $t2, 2
/* 1F5B7C 801DDBFC 008C2021 */  addu        $a0, $a0, $t4
/* 1F5B80 801DDC00 0C077706 */  jal         func_801DDC18_ovl13
/* 1F5B84 801DDC04 8C845B78 */   lw         $a0, %lo(D_801E5B78_ovl13)($a0)
glabel L801DDC08_ovl13
/* 1F5B88 801DDC08 8FBF0014 */  lw          $ra, 0x14($sp)
glabel L801DDC0C_ovl13
/* 1F5B8C 801DDC0C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F5B90 801DDC10 03E00008 */  jr          $ra
/* 1F5B94 801DDC14 00000000 */   nop
.type func_801DDADC_ovl13, @function

.size func_801DDADC_ovl13, . - func_801DDADC_ovl13
