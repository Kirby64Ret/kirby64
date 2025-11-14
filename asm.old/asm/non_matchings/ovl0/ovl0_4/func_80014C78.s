glabel func_80014C78
/* 015878 80014C78 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01587C 80014C7C AFBF001C */  sw    $ra, 0x1c($sp)
/* 015880 80014C80 AFB00018 */  sw    $s0, 0x18($sp)
/* 015884 80014C84 908E0054 */  lbu   $t6, 0x54($a0)
/* 015888 80014C88 00803025 */  move  $a2, $a0
/* 01588C 80014C8C 8C900050 */  lw    $s0, 0x50($a0)
/* 015890 80014C90 31CF0002 */  andi  $t7, $t6, 2
/* 015894 80014C94 15E00046 */  bnez  $t7, .L80014DB0_ovl0
/* 015898 80014C98 3C018005 */   lui   $at, %hi(D_8004AA94) # $at, 0x8005
/* 01589C 80014C9C C424AA94 */  lwc1  $f4, %lo(D_8004AA94)($at)
/* 0158A0 80014CA0 3C048005 */  lui   $a0, %hi(gDisplayListHeads) # $a0, 0x8005
/* 0158A4 80014CA4 2484A3D0 */  addiu $a0, %lo(gDisplayListHeads) # addiu $a0, $a0, -0x5c30
/* 0158A8 80014CA8 00C02825 */  move  $a1, $a2
/* 0158AC 80014CAC AFA60030 */  sw    $a2, 0x30($sp)
/* 0158B0 80014CB0 0C004460 */  jal   func_80011180
/* 0158B4 80014CB4 E7A40020 */   swc1  $f4, 0x20($sp)
/* 0158B8 80014CB8 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 0158BC 80014CBC 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 0158C0 80014CC0 8FA60030 */  lw    $a2, 0x30($sp)
/* 0158C4 80014CC4 1200001D */  beqz  $s0, .L80014D3C_ovl0
/* 0158C8 80014CC8 AFA2002C */   sw    $v0, 0x2c($sp)
/* 0158CC 80014CCC 3C188005 */  lui   $t8, %hi(D_8004AD98) # $t8, 0x8005
/* 0158D0 80014CD0 8F18AD98 */  lw    $t8, %lo(D_8004AD98)($t8)
/* 0158D4 80014CD4 0018C880 */  sll   $t9, $t8, 2
/* 0158D8 80014CD8 02194021 */  addu  $t0, $s0, $t9
/* 0158DC 80014CDC 8D090000 */  lw    $t1, ($t0)
/* 0158E0 80014CE0 51200017 */  beql  $t1, $zero, .L80014D40_ovl0
/* 0158E4 80014CE4 8CC40010 */   lw    $a0, 0x10($a2)
/* 0158E8 80014CE8 90CA0054 */  lbu   $t2, 0x54($a2)
/* 0158EC 80014CEC 00C02025 */  move  $a0, $a2
/* 0158F0 80014CF0 314B0001 */  andi  $t3, $t2, 1
/* 0158F4 80014CF4 55600012 */  bnezl $t3, .L80014D40_ovl0
/* 0158F8 80014CF8 8CC40010 */   lw    $a0, 0x10($a2)
/* 0158FC 80014CFC 0C004CC0 */  jal   func_80013300
/* 015900 80014D00 AFA60030 */   sw    $a2, 0x30($sp)
/* 015904 80014D04 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 015908 80014D08 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 01590C 80014D0C 8CA30000 */  lw    $v1, ($a1)
/* 015910 80014D10 8FA60030 */  lw    $a2, 0x30($sp)
/* 015914 80014D14 3C0DDE00 */  lui   $t5, 0xde00
/* 015918 80014D18 246C0008 */  addiu $t4, $v1, 8
/* 01591C 80014D1C ACAC0000 */  sw    $t4, ($a1)
/* 015920 80014D20 3C0E8005 */  lui   $t6, %hi(D_8004AD98) # $t6, 0x8005
/* 015924 80014D24 AC6D0000 */  sw    $t5, ($v1)
/* 015928 80014D28 8DCEAD98 */  lw    $t6, %lo(D_8004AD98)($t6)
/* 01592C 80014D2C 000E7880 */  sll   $t7, $t6, 2
/* 015930 80014D30 020FC021 */  addu  $t8, $s0, $t7
/* 015934 80014D34 8F190000 */  lw    $t9, ($t8)
/* 015938 80014D38 AC790004 */  sw    $t9, 4($v1)
.L80014D3C_ovl0:
/* 01593C 80014D3C 8CC40010 */  lw    $a0, 0x10($a2)
.L80014D40_ovl0:
/* 015940 80014D40 50800007 */  beql  $a0, $zero, .L80014D60_ovl0
/* 015944 80014D44 8FA8002C */   lw    $t0, 0x2c($sp)
/* 015948 80014D48 0C00531E */  jal   func_80014C78
/* 01594C 80014D4C AFA60030 */   sw    $a2, 0x30($sp)
/* 015950 80014D50 3C058005 */  lui   $a1, %hi(gDisplayListHeads) # $a1, 0x8005
/* 015954 80014D54 24A5A3D0 */  addiu $a1, %lo(gDisplayListHeads) # addiu $a1, $a1, -0x5c30
/* 015958 80014D58 8FA60030 */  lw    $a2, 0x30($sp)
/* 01595C 80014D5C 8FA8002C */  lw    $t0, 0x2c($sp)
.L80014D60_ovl0:
/* 015960 80014D60 51000011 */  beql  $t0, $zero, .L80014DA8_ovl0
/* 015964 80014D64 C7A60020 */   lwc1  $f6, 0x20($sp)
/* 015968 80014D68 8CC90014 */  lw    $t1, 0x14($a2)
/* 01596C 80014D6C 24010001 */  li    $at, 1
/* 015970 80014D70 3C0CD838 */  lui   $t4, (0xD8380002 >> 16) # lui $t4, 0xd838
/* 015974 80014D74 51210005 */  beql  $t1, $at, .L80014D8C_ovl0
/* 015978 80014D78 8CA30000 */   lw    $v1, ($a1)
/* 01597C 80014D7C 8CCA0008 */  lw    $t2, 8($a2)
/* 015980 80014D80 51400009 */  beql  $t2, $zero, .L80014DA8_ovl0
/* 015984 80014D84 C7A60020 */   lwc1  $f6, 0x20($sp)
/* 015988 80014D88 8CA30000 */  lw    $v1, ($a1)
.L80014D8C_ovl0:
/* 01598C 80014D8C 358C0002 */  ori   $t4, (0xD8380002 & 0xFFFF) # ori $t4, $t4, 2
/* 015990 80014D90 240D0040 */  li    $t5, 64
/* 015994 80014D94 246B0008 */  addiu $t3, $v1, 8
/* 015998 80014D98 ACAB0000 */  sw    $t3, ($a1)
/* 01599C 80014D9C AC6D0004 */  sw    $t5, 4($v1)
/* 0159A0 80014DA0 AC6C0000 */  sw    $t4, ($v1)
/* 0159A4 80014DA4 C7A60020 */  lwc1  $f6, 0x20($sp)
.L80014DA8_ovl0:
/* 0159A8 80014DA8 3C018005 */  lui   $at, %hi(D_8004AA94) # $at, 0x8005
/* 0159AC 80014DAC E426AA94 */  swc1  $f6, %lo(D_8004AA94)($at)
.L80014DB0_ovl0:
/* 0159B0 80014DB0 8CCE000C */  lw    $t6, 0xc($a2)
/* 0159B4 80014DB4 55C0000A */  bnezl $t6, .L80014DE0_ovl0
/* 0159B8 80014DB8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0159BC 80014DBC 8CD00008 */  lw    $s0, 8($a2)
/* 0159C0 80014DC0 52000007 */  beql  $s0, $zero, .L80014DE0_ovl0
/* 0159C4 80014DC4 8FBF001C */   lw    $ra, 0x1c($sp)
.L80014DC8_ovl0:
/* 0159C8 80014DC8 0C00531E */  jal   func_80014C78
/* 0159CC 80014DCC 02002025 */   move  $a0, $s0
/* 0159D0 80014DD0 8E100008 */  lw    $s0, 8($s0)
/* 0159D4 80014DD4 1600FFFC */  bnez  $s0, .L80014DC8_ovl0
/* 0159D8 80014DD8 00000000 */   nop   
/* 0159DC 80014DDC 8FBF001C */  lw    $ra, 0x1c($sp)
.L80014DE0_ovl0:
/* 0159E0 80014DE0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0159E4 80014DE4 27BD0030 */  addiu $sp, $sp, 0x30
/* 0159E8 80014DE8 03E00008 */  jr    $ra
/* 0159EC 80014DEC 00000000 */   nop   
.type func_80014C78, @function
.size func_80014C78, . - func_80014C78
