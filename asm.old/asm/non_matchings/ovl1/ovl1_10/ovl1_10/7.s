glabel func_800BAD0C # 7
/* 062F5C 800BAD0C 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 062F60 800BAD10 AFBE0038 */  sw          $fp, 0x38($sp)
/* 062F64 800BAD14 3C1E800F */  lui         $fp, %hi(D_800ED4C8)
/* 062F68 800BAD18 27DED4C8 */  addiu       $fp, $fp, %lo(D_800ED4C8)
/* 062F6C 800BAD1C AFBF003C */  sw          $ra, 0x3C($sp)
/* 062F70 800BAD20 AFA40080 */  sw          $a0, 0x80($sp)
/* 062F74 800BAD24 AFB70034 */  sw          $s7, 0x34($sp)
/* 062F78 800BAD28 AFB60030 */  sw          $s6, 0x30($sp)
/* 062F7C 800BAD2C AFB5002C */  sw          $s5, 0x2C($sp)
/* 062F80 800BAD30 AFB40028 */  sw          $s4, 0x28($sp)
/* 062F84 800BAD34 AFB30024 */  sw          $s3, 0x24($sp)
/* 062F88 800BAD38 AFB20020 */  sw          $s2, 0x20($sp)
/* 062F8C 800BAD3C AFB1001C */  sw          $s1, 0x1C($sp)
/* 062F90 800BAD40 AFB00018 */  sw          $s0, 0x18($sp)
/* 062F94 800BAD44 27A40078 */  addiu       $a0, $sp, 0x78
/* 062F98 800BAD48 03C02825 */  move        $a1, $fp
/* 062F9C 800BAD4C 27A60058 */  addiu       $a2, $sp, 0x58
/* 062FA0 800BAD50 0C00027A */  jal         func_800009E8
/* 062FA4 800BAD54 24070008 */   addiu      $a3, $zero, 0x8
/* 062FA8 800BAD58 3C17800F */  lui         $s7, %hi(D_800ED4A0)
/* 062FAC 800BAD5C 26F7D4A0 */  addiu       $s7, $s7, %lo(D_800ED4A0)
/* 062FB0 800BAD60 24160001 */  addiu       $s6, $zero, 0x1
/* 062FB4 800BAD64 27B50054 */  addiu       $s5, $sp, 0x54
/* 062FB8 800BAD68 24140004 */  addiu       $s4, $zero, 0x4
/* 062FBC 800BAD6C 03C02025 */  move        $a0, $fp
glabel L800BAD70
/* 062FC0 800BAD70 02A02825 */  move        $a1, $s5
/* 062FC4 800BAD74 0C00B540 */  jal         osRecvMesg
/* 062FC8 800BAD78 02C03025 */   move       $a2, $s6
/* 062FCC 800BAD7C 8FA40054 */  lw          $a0, 0x54($sp)
/* 062FD0 800BAD80 00009825 */  move        $s3, $zero
/* 062FD4 800BAD84 02E09025 */  move        $s2, $s7
/* 062FD8 800BAD88 14960033 */  bne         $a0, $s6, L800BAE58
/* 062FDC 800BAD8C 00000000 */   nop
glabel L800BAD90
/* 062FE0 800BAD90 8E510004 */  lw          $s1, 0x4($s2)
/* 062FE4 800BAD94 8E2E0000 */  lw          $t6, 0x0($s1)
/* 062FE8 800BAD98 8DCF0010 */  lw          $t7, 0x10($t6)
/* 062FEC 800BAD9C 51E0002A */  beql        $t7, $zero, L800BAE48
/* 062FF0 800BADA0 26730001 */   addiu      $s3, $s3, 0x1
/* 062FF4 800BADA4 0C02EAB9 */  jal         func_800BAAE4
/* 062FF8 800BADA8 02402025 */   move       $a0, $s2
/* 062FFC 800BADAC 8E510004 */  lw          $s1, 0x4($s2)
/* 063000 800BADB0 02402025 */  move        $a0, $s2
/* 063004 800BADB4 02603025 */  move        $a2, $s3
/* 063008 800BADB8 8E300000 */  lw          $s0, 0x0($s1)
/* 06300C 800BADBC 0C02EADA */  jal         func_800BAB68
/* 063010 800BADC0 02002825 */   move       $a1, $s0
/* 063014 800BADC4 1440001F */  bnez        $v0, L800BAE44
/* 063018 800BADC8 02402025 */   move       $a0, $s2
/* 06301C 800BADCC 02002825 */  move        $a1, $s0
/* 063020 800BADD0 0C02E9E8 */  jal         func_800BA7A0
/* 063024 800BADD4 02603025 */   move       $a2, $s3
/* 063028 800BADD8 96180002 */  lhu         $t8, 0x2($s0)
/* 06302C 800BADDC 8E020008 */  lw          $v0, 0x8($s0)
/* 063030 800BADE0 2719FFFF */  addiu       $t9, $t8, -0x1
/* 063034 800BADE4 18400003 */  blez        $v0, L800BADF4
/* 063038 800BADE8 A6190002 */   sh         $t9, 0x2($s0)
/* 06303C 800BADEC 2448FFFF */  addiu       $t0, $v0, -0x1
/* 063040 800BADF0 AE080008 */  sw          $t0, 0x8($s0)
glabel L800BADF4
/* 063044 800BADF4 8E310004 */  lw          $s1, 0x4($s1)
/* 063048 800BADF8 52200013 */  beql        $s1, $zero, L800BAE48
/* 06304C 800BADFC 26730001 */   addiu      $s3, $s3, 0x1
/* 063050 800BAE00 8E300000 */  lw          $s0, 0x0($s1)
glabel L800BAE04
/* 063054 800BAE04 02402025 */  move        $a0, $s2
/* 063058 800BAE08 8E090010 */  lw          $t1, 0x10($s0)
/* 06305C 800BAE0C 5120000E */  beql        $t1, $zero, L800BAE48
/* 063060 800BAE10 26730001 */   addiu      $s3, $s3, 0x1
/* 063064 800BAE14 0C02EA43 */  jal         func_800BA90C
/* 063068 800BAE18 02002825 */   move       $a1, $s0
/* 06306C 800BAE1C 960A0002 */  lhu         $t2, 0x2($s0)
/* 063070 800BAE20 8E020008 */  lw          $v0, 0x8($s0)
/* 063074 800BAE24 254BFFFF */  addiu       $t3, $t2, -0x1
/* 063078 800BAE28 18400003 */  blez        $v0, L800BAE38
/* 06307C 800BAE2C A60B0002 */   sh         $t3, 0x2($s0)
/* 063080 800BAE30 244CFFFF */  addiu       $t4, $v0, -0x1
/* 063084 800BAE34 AE0C0008 */  sw          $t4, 0x8($s0)
glabel L800BAE38
/* 063088 800BAE38 8E310004 */  lw          $s1, 0x4($s1)
/* 06308C 800BAE3C 5620FFF1 */  bnel        $s1, $zero, L800BAE04
/* 063090 800BAE40 8E300000 */   lw         $s0, 0x0($s1)
glabel L800BAE44
/* 063094 800BAE44 26730001 */  addiu       $s3, $s3, 0x1
glabel L800BAE48
/* 063098 800BAE48 1674FFD1 */  bne         $s3, $s4, L800BAD90
/* 06309C 800BAE4C 26520008 */   addiu      $s2, $s2, 0x8
/* 0630A0 800BAE50 1000FFC7 */  b           L800BAD70
/* 0630A4 800BAE54 03C02025 */   move       $a0, $fp
glabel L800BAE58
/* 0630A8 800BAE58 0C02EB03 */  jal         func_800BAC0C
/* 0630AC 800BAE5C 00000000 */   nop
/* 0630B0 800BAE60 1000FFC3 */  b           L800BAD70
/* 0630B4 800BAE64 03C02025 */   move       $a0, $fp
/* 0630B8 800BAE68 00000000 */  nop
/* 0630BC 800BAE6C 00000000 */  nop
/* 0630C0 800BAE70 00000000 */  nop
/* 0630C4 800BAE74 00000000 */  nop
/* 0630C8 800BAE78 00000000 */  nop
/* 0630CC 800BAE7C 00000000 */  nop
/* 0630D0 800BAE80 8FBF003C */  lw          $ra, 0x3C($sp)
/* 0630D4 800BAE84 8FB00018 */  lw          $s0, 0x18($sp)
/* 0630D8 800BAE88 8FB1001C */  lw          $s1, 0x1C($sp)
/* 0630DC 800BAE8C 8FB20020 */  lw          $s2, 0x20($sp)
/* 0630E0 800BAE90 8FB30024 */  lw          $s3, 0x24($sp)
/* 0630E4 800BAE94 8FB40028 */  lw          $s4, 0x28($sp)
/* 0630E8 800BAE98 8FB5002C */  lw          $s5, 0x2C($sp)
/* 0630EC 800BAE9C 8FB60030 */  lw          $s6, 0x30($sp)
/* 0630F0 800BAEA0 8FB70034 */  lw          $s7, 0x34($sp)
/* 0630F4 800BAEA4 8FBE0038 */  lw          $fp, 0x38($sp)
/* 0630F8 800BAEA8 03E00008 */  jr          $ra
/* 0630FC 800BAEAC 27BD0080 */   addiu      $sp, $sp, 0x80
.size func_800BAD0C, . - func_800BAD0C
