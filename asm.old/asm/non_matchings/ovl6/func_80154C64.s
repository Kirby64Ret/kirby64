glabel func_80154C64
/* 138FF4 80154C64 3C048015 */  lui   $a0, %hi(D_80154E80) # $a0, 0x8015
/* 138FF8 80154C68 3C05803B */  lui   $a1, %hi(gFrameBuffer) # $a1, 0x803b
/* 138FFC 80154C6C 3C01FFFD */  lui   $at, (0xFFFDA800 >> 16) # lui $at, 0xfffd
/* 139000 80154C70 24A56900 */  addiu $a1, %lo(gFrameBuffer) # addiu $a1, $a1, 0x6900
/* 139004 80154C74 24844E80 */  addiu $a0, %lo(D_80154E80) # addiu $a0, $a0, 0x4e80
/* 139008 80154C78 3C028016 */  lui   $v0, %hi(gFrameBuffers) # $v0, 0x8016
/* 13900C 80154C7C 3421A800 */  ori   $at, (0xFFFDA800 & 0xFFFF) # ori $at, $at, 0xa800
/* 139010 80154C80 3C088013 */  lui   $t0, %hi(D_8012EB00) # $t0, 0x8013
/* 139014 80154C84 2442A678 */  addiu $v0, %lo(gFrameBuffers) # addiu $v0, $v0, -0x5988
/* 139018 80154C88 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 13901C 80154C8C 00A17021 */  addu  $t6, $a1, $at
/* 139020 80154C90 3C0F803E */  lui   $t7, %hi(D_803DA800) # $t7, 0x803e
/* 139024 80154C94 2508EB00 */  addiu $t0, %lo(D_8012EB00) # addiu $t0, $t0, -0x1500
/* 139028 80154C98 AFBF0014 */  sw    $ra, 0x14($sp)
/* 13902C 80154C9C 25EFA800 */  addiu $t7, %lo(D_803DA800) # addiu $t7, $t7, -0x5800
/* 139030 80154CA0 2509E700 */  addiu $t1, $t0, -0x1900
/* 139034 80154CA4 AC4E0000 */  sw    $t6, ($v0)
/* 139038 80154CA8 AC450004 */  sw    $a1, 4($v0)
/* 13903C 80154CAC AC4F0008 */  sw    $t7, 8($v0)
/* 139040 80154CB0 AC8E0000 */  sw    $t6, ($a0)
/* 139044 80154CB4 AC850004 */  sw    $a1, 4($a0)
/* 139048 80154CB8 AC8F0008 */  sw    $t7, 8($a0)
/* 13904C 80154CBC AC89000C */  sw    $t1, 0xc($a0)
/* 139050 80154CC0 0C001EE9 */  jal   func_80007BA4_ovl6
/* 139054 80154CC4 AFAE001C */   sw    $t6, 0x1c($sp)
/* 139058 80154CC8 3C0C8016 */  lui   $t4, %hi(D_8015A68C) # $t4, 0x8016
/* 13905C 80154CCC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 139060 80154CD0 8D8CA68C */  lw    $t4, %lo(D_8015A68C)($t4)
/* 139064 80154CD4 3C0A8016 */  lui   $t2, %hi(D_8015A7D0) # $t2, 0x8016
/* 139068 80154CD8 254AA7D0 */  addiu $t2, %lo(D_8015A7D0) # addiu $t2, $t2, -0x5830
/* 13906C 80154CDC 3C018015 */  lui   $at, %hi(D_80154EAC) # $at, 0x8015
/* 139070 80154CE0 006A5823 */  subu  $t3, $v1, $t2
/* 139074 80154CE4 318D0008 */  andi  $t5, $t4, 8
/* 139078 80154CE8 15A0000E */  bnez  $t5, .L80154D24_ovl6
/* 13907C 80154CEC AC2B4EAC */   sw    $t3, %lo(D_80154EAC)($at)
/* 139080 80154CF0 3C010006 */  lui   $at, (0x0006EF00 >> 16) # lui $at, 6
/* 139084 80154CF4 3421EF00 */  ori   $at, (0x0006EF00 & 0xFFFF) # ori $at, $at, 0xef00
/* 139088 80154CF8 00612021 */  addu  $a0, $v1, $at
/* 13908C 80154CFC 0064082B */  sltu  $at, $v1, $a0
/* 139090 80154D00 10200013 */  beqz  $at, .L80154D50_ovl6
/* 139094 80154D04 00601025 */   move  $v0, $v1
/* 139098 80154D08 24030001 */  li    $v1, 1
.L80154D0C_ovl6:
/* 13909C 80154D0C 24420002 */  addiu $v0, $v0, 2
/* 1390A0 80154D10 0044082B */  sltu  $at, $v0, $a0
/* 1390A4 80154D14 1420FFFD */  bnez  $at, .L80154D0C_ovl6
/* 1390A8 80154D18 A443FFFE */   sh    $v1, -2($v0)
/* 1390AC 80154D1C 1000000D */  b     .L80154D54_ovl6
/* 1390B0 80154D20 8FBF0014 */   lw    $ra, 0x14($sp)
.L80154D24_ovl6:
/* 1390B4 80154D24 3C010002 */  lui   $at, (0x00025800 >> 16) # lui $at, 2
/* 1390B8 80154D28 34215800 */  ori   $at, (0x00025800 & 0xFFFF) # ori $at, $at, 0x5800
/* 1390BC 80154D2C 00612021 */  addu  $a0, $v1, $at
/* 1390C0 80154D30 0064082B */  sltu  $at, $v1, $a0
/* 1390C4 80154D34 10200006 */  beqz  $at, .L80154D50_ovl6
/* 1390C8 80154D38 00601025 */   move  $v0, $v1
/* 1390CC 80154D3C 24030001 */  li    $v1, 1
.L80154D40_ovl6:
/* 1390D0 80154D40 24420002 */  addiu $v0, $v0, 2
/* 1390D4 80154D44 0044082B */  sltu  $at, $v0, $a0
/* 1390D8 80154D48 1420FFFD */  bnez  $at, .L80154D40_ovl6
/* 1390DC 80154D4C A443FFFE */   sh    $v1, -2($v0)
.L80154D50_ovl6:
/* 1390E0 80154D50 8FBF0014 */  lw    $ra, 0x14($sp)
.L80154D54_ovl6:
/* 1390E4 80154D54 27BD0020 */  addiu $sp, $sp, 0x20
/* 1390E8 80154D58 03E00008 */  jr    $ra
/* 1390EC 80154D5C 00000000 */   nop   
.type func_80154C64, @function
.size func_80154C64, . - func_80154C64
