glabel func_80110B00_ovl2
/* 099570 80110B00 27BDFF80 */  addiu $sp, $sp, -0x80
/* 099574 80110B04 AFBF0034 */  sw    $ra, 0x34($sp)
/* 099578 80110B08 AFB70030 */  sw    $s7, 0x30($sp)
/* 09957C 80110B0C AFB6002C */  sw    $s6, 0x2c($sp)
/* 099580 80110B10 AFB50028 */  sw    $s5, 0x28($sp)
/* 099584 80110B14 AFB40024 */  sw    $s4, 0x24($sp)
/* 099588 80110B18 AFB30020 */  sw    $s3, 0x20($sp)
/* 09958C 80110B1C AFB2001C */  sw    $s2, 0x1c($sp)
/* 099590 80110B20 AFB10018 */  sw    $s1, 0x18($sp)
/* 099594 80110B24 AFB00014 */  sw    $s0, 0x14($sp)
/* 099598 80110B28 A0800002 */  sb    $zero, 2($a0)
/* 09959C 80110B2C A0800003 */  sb    $zero, 3($a0)
/* 0995A0 80110B30 3C038013 */  lui   $v1, %hi(D_8012D588) # $v1, 0x8013
/* 0995A4 80110B34 8C63D588 */  lw    $v1, %lo(D_8012D588)($v1)
/* 0995A8 80110B38 3C148013 */  lui   $s4, %hi(D_8012D648) # $s4, 0x8013
/* 0995AC 80110B3C 0080B825 */  move  $s7, $a0
/* 0995B0 80110B40 2694D648 */  addiu $s4, %lo(D_8012D648) # addiu $s4, $s4, -0x29b8
/* 0995B4 80110B44 18600055 */  blez  $v1, .L80110C9C_ovl2
/* 0995B8 80110B48 0000A825 */   move  $s5, $zero
/* 0995BC 80110B4C 3C028013 */  lui   $v0, %hi(D_8012D0C4) # $v0, 0x8013
/* 0995C0 80110B50 3C168013 */  lui   $s6, %hi(D_8012D0C8) # $s6, 0x8013
/* 0995C4 80110B54 3C138013 */  lui   $s3, %hi(D_8012D0C4) # $s3, 0x8013
/* 0995C8 80110B58 2673D0C4 */  addiu $s3, %lo(D_8012D0C4) # addiu $s3, $s3, -0x2f3c
/* 0995CC 80110B5C 26D6D0C8 */  addiu $s6, %lo(D_8012D0C8) # addiu $s6, $s6, -0x2f38
/* 0995D0 80110B60 8C42D0C4 */  lw    $v0, %lo(D_8012D0C4)($v0)
/* 0995D4 80110B64 27B2004C */  addiu $s2, $sp, 0x4c
.L80110B68_ovl2:
/* 0995D8 80110B68 00008025 */  move  $s0, $zero
/* 0995DC 80110B6C 18400047 */  blez  $v0, .L80110C8C_ovl2
/* 0995E0 80110B70 02C08825 */   move  $s1, $s6
/* 0995E4 80110B74 02802025 */  move  $a0, $s4
.L80110B78_ovl2:
/* 0995E8 80110B78 02202825 */  move  $a1, $s1
/* 0995EC 80110B7C 0C043F0C */  jal   func_8010FC30_ovl2
/* 0995F0 80110B80 02403025 */   move  $a2, $s2
/* 0995F4 80110B84 5040003A */  beql  $v0, $zero, .L80110C70_ovl2
/* 0995F8 80110B88 8E620000 */   lw    $v0, ($s3)
/* 0995FC 80110B8C 962E0004 */  lhu   $t6, 4($s1)
/* 099600 80110B90 8E900000 */  lw    $s0, ($s4)
/* 099604 80110B94 02202025 */  move  $a0, $s1
/* 099608 80110B98 31CF0001 */  andi  $t7, $t6, 1
/* 09960C 80110B9C 11E00019 */  beqz  $t7, .L80110C04_ovl2
/* 099610 80110BA0 02802825 */   move  $a1, $s4
/* 099614 80110BA4 2401FFFF */  li    $at, -1
/* 099618 80110BA8 12010014 */  beq   $s0, $at, .L80110BFC_ovl2
/* 09961C 80110BAC 00000000 */   nop   
/* 099620 80110BB0 8E980010 */  lw    $t8, 0x10($s4)
/* 099624 80110BB4 3C018000 */  lui   $at, (0x80000004 >> 16) # lui $at, 0x8000
/* 099628 80110BB8 34210004 */  ori   $at, (0x80000004 & 0xFFFF) # ori $at, $at, 4
/* 09962C 80110BBC 0301C824 */  and   $t9, $t8, $at
/* 099630 80110BC0 13200004 */  beqz  $t9, .L80110BD4_ovl2
/* 099634 80110BC4 24090010 */   li    $t1, 16
/* 099638 80110BC8 24080011 */  li    $t0, 17
/* 09963C 80110BCC 10000002 */  b     .L80110BD8_ovl2
/* 099640 80110BD0 A2E80003 */   sb    $t0, 3($s7)
.L80110BD4_ovl2:
/* 099644 80110BD4 A2E90003 */  sb    $t1, 3($s7)
.L80110BD8_ovl2:
/* 099648 80110BD8 AEF0000C */  sw    $s0, 0xc($s7)
/* 09964C 80110BDC 928A0008 */  lbu   $t2, 8($s4)
/* 099650 80110BE0 24020001 */  li    $v0, 1
/* 099654 80110BE4 A2EA0000 */  sb    $t2, ($s7)
/* 099658 80110BE8 928B0009 */  lbu   $t3, 9($s4)
/* 09965C 80110BEC A2EB0001 */  sb    $t3, 1($s7)
/* 099660 80110BF0 8E8C0014 */  lw    $t4, 0x14($s4)
/* 099664 80110BF4 1000002A */  b     .L80110CA0_ovl2
/* 099668 80110BF8 AEEC0008 */   sw    $t4, 8($s7)
.L80110BFC_ovl2:
/* 09966C 80110BFC 10000028 */  b     .L80110CA0_ovl2
/* 099670 80110C00 00001025 */   move  $v0, $zero
.L80110C04_ovl2:
/* 099674 80110C04 A2E00002 */  sb    $zero, 2($s7)
/* 099678 80110C08 0C044333 */  jal   func_80110CCC_ovl2
/* 09967C 80110C0C 02E03025 */   move  $a2, $s7
/* 099680 80110C10 02202025 */  move  $a0, $s1
/* 099684 80110C14 0C0443A5 */  jal   func_80110E94_ovl2
/* 099688 80110C18 02802825 */   move  $a1, $s4
/* 09968C 80110C1C 92ED0002 */  lbu   $t5, 2($s7)
/* 099690 80110C20 11A00010 */  beqz  $t5, .L80110C64_ovl2
/* 099694 80110C24 00000000 */   nop   
/* 099698 80110C28 928E0008 */  lbu   $t6, 8($s4)
/* 09969C 80110C2C 24020001 */  li    $v0, 1
/* 0996A0 80110C30 A2EE0000 */  sb    $t6, ($s7)
/* 0996A4 80110C34 928F0009 */  lbu   $t7, 9($s4)
/* 0996A8 80110C38 A2EF0001 */  sb    $t7, 1($s7)
/* 0996AC 80110C3C 8E980014 */  lw    $t8, 0x14($s4)
/* 0996B0 80110C40 AEF80008 */  sw    $t8, 8($s7)
/* 0996B4 80110C44 C7A4004C */  lwc1  $f4, 0x4c($sp)
/* 0996B8 80110C48 E6E40010 */  swc1  $f4, 0x10($s7)
/* 0996BC 80110C4C C7A60050 */  lwc1  $f6, 0x50($sp)
/* 0996C0 80110C50 E6E60014 */  swc1  $f6, 0x14($s7)
/* 0996C4 80110C54 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 0996C8 80110C58 AEF0000C */  sw    $s0, 0xc($s7)
/* 0996CC 80110C5C 10000010 */  b     .L80110CA0_ovl2
/* 0996D0 80110C60 E6E80018 */   swc1  $f8, 0x18($s7)
.L80110C64_ovl2:
/* 0996D4 80110C64 1000000E */  b     .L80110CA0_ovl2
/* 0996D8 80110C68 00001025 */   move  $v0, $zero
/* 0996DC 80110C6C 8E620000 */  lw    $v0, ($s3)
.L80110C70_ovl2:
/* 0996E0 80110C70 26100001 */  addiu $s0, $s0, 1
/* 0996E4 80110C74 26310028 */  addiu $s1, $s1, 0x28
/* 0996E8 80110C78 0202082A */  slt   $at, $s0, $v0
/* 0996EC 80110C7C 5420FFBE */  bnezl $at, .L80110B78_ovl2
/* 0996F0 80110C80 02802025 */   move  $a0, $s4
/* 0996F4 80110C84 3C038013 */  lui   $v1, %hi(D_8012D588) # $v1, 0x8013
/* 0996F8 80110C88 8C63D588 */  lw    $v1, %lo(D_8012D588)($v1)
.L80110C8C_ovl2:
/* 0996FC 80110C8C 26B50001 */  addiu $s5, $s5, 1
/* 099700 80110C90 02A3082A */  slt   $at, $s5, $v1
/* 099704 80110C94 1420FFB4 */  bnez  $at, .L80110B68_ovl2
/* 099708 80110C98 26940024 */   addiu $s4, $s4, 0x24
.L80110C9C_ovl2:
/* 09970C 80110C9C 00001025 */  move  $v0, $zero
.L80110CA0_ovl2:
/* 099710 80110CA0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 099714 80110CA4 8FB00014 */  lw    $s0, 0x14($sp)
/* 099718 80110CA8 8FB10018 */  lw    $s1, 0x18($sp)
/* 09971C 80110CAC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 099720 80110CB0 8FB30020 */  lw    $s3, 0x20($sp)
/* 099724 80110CB4 8FB40024 */  lw    $s4, 0x24($sp)
/* 099728 80110CB8 8FB50028 */  lw    $s5, 0x28($sp)
/* 09972C 80110CBC 8FB6002C */  lw    $s6, 0x2c($sp)
/* 099730 80110CC0 8FB70030 */  lw    $s7, 0x30($sp)
/* 099734 80110CC4 03E00008 */  jr    $ra
/* 099738 80110CC8 27BD0080 */   addiu $sp, $sp, 0x80
