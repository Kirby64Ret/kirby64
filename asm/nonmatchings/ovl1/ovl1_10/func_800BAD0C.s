nonmatching func_800BAD0C, 0x1A4

glabel func_800BAD0C
    /* 62F5C 800BAD0C 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 62F60 800BAD10 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 62F64 800BAD14 3C1E800F */  lui        $fp, %hi(D_800ED4C8)
    /* 62F68 800BAD18 27DED4C8 */  addiu      $fp, $fp, %lo(D_800ED4C8)
    /* 62F6C 800BAD1C AFBF003C */  sw         $ra, 0x3C($sp)
    /* 62F70 800BAD20 AFA40080 */  sw         $a0, 0x80($sp)
    /* 62F74 800BAD24 AFB70034 */  sw         $s7, 0x34($sp)
    /* 62F78 800BAD28 AFB60030 */  sw         $s6, 0x30($sp)
    /* 62F7C 800BAD2C AFB5002C */  sw         $s5, 0x2C($sp)
    /* 62F80 800BAD30 AFB40028 */  sw         $s4, 0x28($sp)
    /* 62F84 800BAD34 AFB30024 */  sw         $s3, 0x24($sp)
    /* 62F88 800BAD38 AFB20020 */  sw         $s2, 0x20($sp)
    /* 62F8C 800BAD3C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 62F90 800BAD40 AFB00018 */  sw         $s0, 0x18($sp)
    /* 62F94 800BAD44 27A40078 */  addiu      $a0, $sp, 0x78
    /* 62F98 800BAD48 03C02825 */  or         $a1, $fp, $zero
    /* 62F9C 800BAD4C 27A60058 */  addiu      $a2, $sp, 0x58
    /* 62FA0 800BAD50 0C00027A */  jal        scAddClient
    /* 62FA4 800BAD54 24070008 */   addiu     $a3, $zero, 0x8
    /* 62FA8 800BAD58 3C17800F */  lui        $s7, %hi(D_800ED4A0)
    /* 62FAC 800BAD5C 26F7D4A0 */  addiu      $s7, $s7, %lo(D_800ED4A0)
    /* 62FB0 800BAD60 24160001 */  addiu      $s6, $zero, 0x1
    /* 62FB4 800BAD64 27B50054 */  addiu      $s5, $sp, 0x54
    /* 62FB8 800BAD68 24140004 */  addiu      $s4, $zero, 0x4
    /* 62FBC 800BAD6C 03C02025 */  or         $a0, $fp, $zero
  .L800BAD70:
    /* 62FC0 800BAD70 02A02825 */  or         $a1, $s5, $zero
    /* 62FC4 800BAD74 0C00B540 */  jal        osRecvMesg
    /* 62FC8 800BAD78 02C03025 */   or        $a2, $s6, $zero
    /* 62FCC 800BAD7C 8FA40054 */  lw         $a0, 0x54($sp)
    /* 62FD0 800BAD80 00009825 */  or         $s3, $zero, $zero
    /* 62FD4 800BAD84 02E09025 */  or         $s2, $s7, $zero
    /* 62FD8 800BAD88 14960033 */  bne        $a0, $s6, .L800BAE58
    /* 62FDC 800BAD8C 00000000 */   nop
  .L800BAD90:
    /* 62FE0 800BAD90 8E510004 */  lw         $s1, 0x4($s2)
    /* 62FE4 800BAD94 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 62FE8 800BAD98 8DCF0010 */  lw         $t7, 0x10($t6)
    /* 62FEC 800BAD9C 51E0002A */  beql       $t7, $zero, .L800BAE48
    /* 62FF0 800BADA0 26730001 */   addiu     $s3, $s3, 0x1
    /* 62FF4 800BADA4 0C02EAB9 */  jal        func_800BAAE4
    /* 62FF8 800BADA8 02402025 */   or        $a0, $s2, $zero
    /* 62FFC 800BADAC 8E510004 */  lw         $s1, 0x4($s2)
    /* 63000 800BADB0 02402025 */  or         $a0, $s2, $zero
    /* 63004 800BADB4 02603025 */  or         $a2, $s3, $zero
    /* 63008 800BADB8 8E300000 */  lw         $s0, 0x0($s1)
    /* 6300C 800BADBC 0C02EADA */  jal        func_800BAB68
    /* 63010 800BADC0 02002825 */   or        $a1, $s0, $zero
    /* 63014 800BADC4 1440001F */  bnez       $v0, .L800BAE44
    /* 63018 800BADC8 02402025 */   or        $a0, $s2, $zero
    /* 6301C 800BADCC 02002825 */  or         $a1, $s0, $zero
    /* 63020 800BADD0 0C02E9E8 */  jal        func_800BA7A0
    /* 63024 800BADD4 02603025 */   or        $a2, $s3, $zero
    /* 63028 800BADD8 96180002 */  lhu        $t8, 0x2($s0)
    /* 6302C 800BADDC 8E020008 */  lw         $v0, 0x8($s0)
    /* 63030 800BADE0 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 63034 800BADE4 18400003 */  blez       $v0, .L800BADF4
    /* 63038 800BADE8 A6190002 */   sh        $t9, 0x2($s0)
    /* 6303C 800BADEC 2448FFFF */  addiu      $t0, $v0, -0x1
    /* 63040 800BADF0 AE080008 */  sw         $t0, 0x8($s0)
  .L800BADF4:
    /* 63044 800BADF4 8E310004 */  lw         $s1, 0x4($s1)
    /* 63048 800BADF8 52200013 */  beql       $s1, $zero, .L800BAE48
    /* 6304C 800BADFC 26730001 */   addiu     $s3, $s3, 0x1
    /* 63050 800BAE00 8E300000 */  lw         $s0, 0x0($s1)
  .L800BAE04:
    /* 63054 800BAE04 02402025 */  or         $a0, $s2, $zero
    /* 63058 800BAE08 8E090010 */  lw         $t1, 0x10($s0)
    /* 6305C 800BAE0C 5120000E */  beql       $t1, $zero, .L800BAE48
    /* 63060 800BAE10 26730001 */   addiu     $s3, $s3, 0x1
    /* 63064 800BAE14 0C02EA43 */  jal        func_800BA90C
    /* 63068 800BAE18 02002825 */   or        $a1, $s0, $zero
    /* 6306C 800BAE1C 960A0002 */  lhu        $t2, 0x2($s0)
    /* 63070 800BAE20 8E020008 */  lw         $v0, 0x8($s0)
    /* 63074 800BAE24 254BFFFF */  addiu      $t3, $t2, -0x1
    /* 63078 800BAE28 18400003 */  blez       $v0, .L800BAE38
    /* 6307C 800BAE2C A60B0002 */   sh        $t3, 0x2($s0)
    /* 63080 800BAE30 244CFFFF */  addiu      $t4, $v0, -0x1
    /* 63084 800BAE34 AE0C0008 */  sw         $t4, 0x8($s0)
  .L800BAE38:
    /* 63088 800BAE38 8E310004 */  lw         $s1, 0x4($s1)
    /* 6308C 800BAE3C 5620FFF1 */  bnel       $s1, $zero, .L800BAE04
    /* 63090 800BAE40 8E300000 */   lw        $s0, 0x0($s1)
  .L800BAE44:
    /* 63094 800BAE44 26730001 */  addiu      $s3, $s3, 0x1
  .L800BAE48:
    /* 63098 800BAE48 1674FFD1 */  bne        $s3, $s4, .L800BAD90
    /* 6309C 800BAE4C 26520008 */   addiu     $s2, $s2, 0x8
    /* 630A0 800BAE50 1000FFC7 */  b          .L800BAD70
    /* 630A4 800BAE54 03C02025 */   or        $a0, $fp, $zero
  .L800BAE58:
    /* 630A8 800BAE58 0C02EB03 */  jal        func_800BAC0C
    /* 630AC 800BAE5C 00000000 */   nop
    /* 630B0 800BAE60 1000FFC3 */  b          .L800BAD70
    /* 630B4 800BAE64 03C02025 */   or        $a0, $fp, $zero
    /* 630B8 800BAE68 00000000 */  nop
    /* 630BC 800BAE6C 00000000 */  nop
    /* 630C0 800BAE70 00000000 */  nop
    /* 630C4 800BAE74 00000000 */  nop
    /* 630C8 800BAE78 00000000 */  nop
    /* 630CC 800BAE7C 00000000 */  nop
    /* 630D0 800BAE80 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 630D4 800BAE84 8FB00018 */  lw         $s0, 0x18($sp)
    /* 630D8 800BAE88 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 630DC 800BAE8C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 630E0 800BAE90 8FB30024 */  lw         $s3, 0x24($sp)
    /* 630E4 800BAE94 8FB40028 */  lw         $s4, 0x28($sp)
    /* 630E8 800BAE98 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 630EC 800BAE9C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 630F0 800BAEA0 8FB70034 */  lw         $s7, 0x34($sp)
    /* 630F4 800BAEA4 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 630F8 800BAEA8 03E00008 */  jr         $ra
    /* 630FC 800BAEAC 27BD0080 */   addiu     $sp, $sp, 0x80
endlabel func_800BAD0C
.size func_800BAD0C, . - func_800BAD0C
