glabel func_8000BAEC
/* 00C6EC 8000BAEC 27BDFF78 */  addiu $sp, $sp, -0x88
/* 00C6F0 8000BAF0 AFB40028 */  sw    $s4, 0x28($sp)
/* 00C6F4 8000BAF4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00C6F8 8000BAF8 AFB00018 */  sw    $s0, 0x18($sp)
/* 00C6FC 8000BAFC 00A08025 */  move  $s0, $a1
/* 00C700 8000BB00 00C08825 */  move  $s1, $a2
/* 00C704 8000BB04 0080A025 */  move  $s4, $a0
/* 00C708 8000BB08 AFBF002C */  sw    $ra, 0x2c($sp)
/* 00C70C 8000BB0C AFB30024 */  sw    $s3, 0x24($sp)
/* 00C710 8000BB10 AFB20020 */  sw    $s2, 0x20($sp)
/* 00C714 8000BB14 AFA00038 */  sw    $zero, 0x38($sp)
/* 00C718 8000BB18 AFA0003C */  sw    $zero, 0x3c($sp)
/* 00C71C 8000BB1C 27A20040 */  addiu $v0, $sp, 0x40
/* 00C720 8000BB20 27A30080 */  addiu $v1, $sp, 0x80
.L8000BB24_ovl0:
/* 00C724 8000BB24 24420010 */  addiu $v0, $v0, 0x10
/* 00C728 8000BB28 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 00C72C 8000BB2C AC40FFF8 */  sw    $zero, -8($v0)
/* 00C730 8000BB30 AC40FFFC */  sw    $zero, -4($v0)
/* 00C734 8000BB34 1443FFFB */  bne   $v0, $v1, .L8000BB24_ovl0
/* 00C738 8000BB38 AC40FFF0 */   sw    $zero, -0x10($v0)
/* 00C73C 8000BB3C 8E020000 */  lw    $v0, ($s0)
/* 00C740 8000BB40 24130012 */  li    $s3, 18
/* 00C744 8000BB44 27B20038 */  addiu $s2, $sp, 0x38
/* 00C748 8000BB48 5262001E */  beql  $s3, $v0, .L8000BBC4_ovl0
/* 00C74C 8000BB4C 8FBF002C */   lw    $ra, 0x2c($sp)
.L8000BB50_ovl0:
/* 00C750 8000BB50 1040000B */  beqz  $v0, .L8000BB80_ovl0
/* 00C754 8000BB54 02802025 */   move  $a0, $s4
/* 00C758 8000BB58 00027080 */  sll   $t6, $v0, 2
/* 00C75C 8000BB5C 024E7821 */  addu  $t7, $s2, $t6
/* 00C760 8000BB60 8DE4FFFC */  lw    $a0, -4($t7)
/* 00C764 8000BB64 0C002E8B */  jal   func_8000BA2C
/* 00C768 8000BB68 8E050004 */   lw    $a1, 4($s0)
/* 00C76C 8000BB6C 8E180000 */  lw    $t8, ($s0)
/* 00C770 8000BB70 0018C880 */  sll   $t9, $t8, 2
/* 00C774 8000BB74 02594021 */  addu  $t0, $s2, $t9
/* 00C778 8000BB78 10000004 */  b     .L8000BB8C_ovl0
/* 00C77C 8000BB7C AD020000 */   sw    $v0, ($t0)
.L8000BB80_ovl0:
/* 00C780 8000BB80 0C002E73 */  jal   func_8000B9CC
/* 00C784 8000BB84 8E050004 */   lw    $a1, 4($s0)
/* 00C788 8000BB88 AFA20038 */  sw    $v0, 0x38($sp)
.L8000BB8C_ovl0:
/* 00C78C 8000BB8C 8E0A0008 */  lw    $t2, 8($s0)
/* 00C790 8000BB90 AC4A001C */  sw    $t2, 0x1c($v0)
/* 00C794 8000BB94 8E09000C */  lw    $t1, 0xc($s0)
/* 00C798 8000BB98 AC490020 */  sw    $t1, 0x20($v0)
/* 00C79C 8000BB9C 8E0A0010 */  lw    $t2, 0x10($s0)
/* 00C7A0 8000BBA0 12200003 */  beqz  $s1, .L8000BBB0_ovl0
/* 00C7A4 8000BBA4 AC4A0024 */   sw    $t2, 0x24($v0)
/* 00C7A8 8000BBA8 AE220000 */  sw    $v0, ($s1)
/* 00C7AC 8000BBAC 26310004 */  addiu $s1, $s1, 4
.L8000BBB0_ovl0:
/* 00C7B0 8000BBB0 8E020014 */  lw    $v0, 0x14($s0)
/* 00C7B4 8000BBB4 26100014 */  addiu $s0, $s0, 0x14
/* 00C7B8 8000BBB8 1662FFE5 */  bne   $s3, $v0, .L8000BB50_ovl0
/* 00C7BC 8000BBBC 00000000 */   nop   
/* 00C7C0 8000BBC0 8FBF002C */  lw    $ra, 0x2c($sp)
.L8000BBC4_ovl0:
/* 00C7C4 8000BBC4 8FB00018 */  lw    $s0, 0x18($sp)
/* 00C7C8 8000BBC8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00C7CC 8000BBCC 8FB20020 */  lw    $s2, 0x20($sp)
/* 00C7D0 8000BBD0 8FB30024 */  lw    $s3, 0x24($sp)
/* 00C7D4 8000BBD4 8FB40028 */  lw    $s4, 0x28($sp)
/* 00C7D8 8000BBD8 03E00008 */  jr    $ra
/* 00C7DC 8000BBDC 27BD0088 */   addiu $sp, $sp, 0x88
.type func_8000BAEC, @function
.size func_8000BAEC, . - func_8000BAEC
