.set noat
.set noreorder
.set gp=64
.include "macros.inc"

.section .text, "ax" 

glabel osEepromRead
/* 039B60 80038F60 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 039B64 80038F64 AFB1001C */  sw    $s1, 0x1c($sp)
/* 039B68 80038F68 AFBF0024 */  sw    $ra, 0x24($sp)
/* 039B6C 80038F6C AFB20020 */  sw    $s2, 0x20($sp)
/* 039B70 80038F70 AFB00018 */  sw    $s0, 0x18($sp)
/* 039B74 80038F74 3C11800A */  lui   $s1, %hi(__osEepPifRam) # $s1, 0x800a
/* 039B78 80038F78 00C08025 */  move  $s0, $a2
/* 039B7C 80038F7C 00809025 */  move  $s2, $a0
/* 039B80 80038F80 AFA50054 */  sw    $a1, 0x54($sp)
/* 039B84 80038F84 0C00BD18 */  jal   __osSiGetAccess
/* 039B88 80038F88 2631B500 */   addiu $s1, %lo(__osEepPifRam) # addiu $s1, $s1, -0x4b00
/* 039B8C 80038F8C 02402025 */  move  $a0, $s2
/* 039B90 80038F90 0C00BE8D */  jal   __osEepStatus
/* 039B94 80038F94 27A5003C */   addiu $a1, $sp, 0x3c
/* 039B98 80038F98 14400015 */  bnez  $v0, .L80038FF0_ovl0
/* 039B9C 80038F9C 00402025 */   move  $a0, $v0
/* 039BA0 80038FA0 97AE003C */  lhu   $t6, 0x3c($sp)
/* 039BA4 80038FA4 34018000 */  li    $at, 32768
/* 039BA8 80038FA8 93B80057 */  lbu   $t8, 0x57($sp)
/* 039BAC 80038FAC 31CFC000 */  andi  $t7, $t6, 0xc000
/* 039BB0 80038FB0 11E10005 */  beq   $t7, $at, .L80038FC8_ovl0
/* 039BB4 80038FB4 3401C000 */   li    $at, 49152
/* 039BB8 80038FB8 11E10008 */  beq   $t7, $at, .L80038FDC_ovl0
/* 039BBC 80038FBC 93B90057 */   lbu   $t9, 0x57($sp)
/* 039BC0 80038FC0 1000000B */  b     .L80038FF0_ovl0
/* 039BC4 80038FC4 24040008 */   li    $a0, 8
.L80038FC8_ovl0:
/* 039BC8 80038FC8 2B010040 */  slti  $at, $t8, 0x40
/* 039BCC 80038FCC 14200008 */  bnez  $at, .L80038FF0_ovl0
/* 039BD0 80038FD0 00000000 */   nop   
/* 039BD4 80038FD4 10000006 */  b     .L80038FF0_ovl0
/* 039BD8 80038FD8 2404FFFF */   li    $a0, -1
.L80038FDC_ovl0:
/* 039BDC 80038FDC 2B210100 */  slti  $at, $t9, 0x100
/* 039BE0 80038FE0 14200003 */  bnez  $at, .L80038FF0_ovl0
/* 039BE4 80038FE4 00000000 */   nop   
/* 039BE8 80038FE8 10000001 */  b     .L80038FF0_ovl0
/* 039BEC 80038FEC 2404FFFF */   li    $a0, -1
.L80038FF0_ovl0:
/* 039BF0 80038FF0 10800005 */  beqz  $a0, .L80039008_ovl0
/* 039BF4 80038FF4 93A8003E */   lbu   $t0, 0x3e($sp)
/* 039BF8 80038FF8 0C00BD29 */  jal   __osSiRelAccess
/* 039BFC 80038FFC AFA4004C */   sw    $a0, 0x4c($sp)
/* 039C00 80039000 10000042 */  b     .L8003910C_ovl0
/* 039C04 80039004 8FA2004C */   lw    $v0, 0x4c($sp)
.L80039008_ovl0:
/* 039C08 80039008 31090080 */  andi  $t1, $t0, 0x80
/* 039C0C 8003900C 11200007 */  beqz  $t1, .L8003902C_ovl0
/* 039C10 80039010 02402025 */   move  $a0, $s2
.L80039014_ovl0:
/* 039C14 80039014 0C00BE8D */  jal   __osEepStatus
/* 039C18 80039018 27A5003C */   addiu $a1, $sp, 0x3c
/* 039C1C 8003901C 93AA003E */  lbu   $t2, 0x3e($sp)
/* 039C20 80039020 314B0080 */  andi  $t3, $t2, 0x80
/* 039C24 80039024 5560FFFB */  bnezl $t3, .L80039014_ovl0
/* 039C28 80039028 02402025 */   move  $a0, $s2
.L8003902C_ovl0:
/* 039C2C 8003902C 0C00E449 */  jal   __osPackEepReadData
/* 039C30 80039030 93A40057 */   lbu   $a0, 0x57($sp)
/* 039C34 80039034 3C05800A */  lui   $a1, %hi(__osEepPifRam) # $a1, 0x800a
/* 039C38 80039038 24A5B500 */  addiu $a1, %lo(__osEepPifRam) # addiu $a1, $a1, -0x4b00
/* 039C3C 8003903C 0C00C138 */  jal   __osSiRawStartDma
/* 039C40 80039040 24040001 */   li    $a0, 1
/* 039C44 80039044 02402025 */  move  $a0, $s2
/* 039C48 80039048 00002825 */  move  $a1, $zero
/* 039C4C 8003904C 0C00B540 */  jal   osRecvMesg
/* 039C50 80039050 24060001 */   li    $a2, 1
/* 039C54 80039054 3C05800A */  lui   $a1, %hi(__osEepPifRam) # $a1, 0x800a
/* 039C58 80039058 24A5B500 */  addiu $a1, %lo(__osEepPifRam) # addiu $a1, $a1, -0x4b00
/* 039C5C 8003905C 0C00C138 */  jal   __osSiRawStartDma
/* 039C60 80039060 00002025 */   move  $a0, $zero
/* 039C64 80039064 240C0004 */  li    $t4, 4
/* 039C68 80039068 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 039C6C 8003906C A02C8AF0 */  sb    $t4, %lo(__osContLastCmd)($at)
/* 039C70 80039070 02402025 */  move  $a0, $s2
/* 039C74 80039074 00002825 */  move  $a1, $zero
/* 039C78 80039078 0C00B540 */  jal   osRecvMesg
/* 039C7C 8003907C 24060001 */   li    $a2, 1
/* 039C80 80039080 00001825 */  move  $v1, $zero
.L80039084_ovl0:
/* 039C84 80039084 24630001 */  addiu $v1, $v1, 1
/* 039C88 80039088 28610004 */  slti  $at, $v1, 4
/* 039C8C 8003908C 1420FFFD */  bnez  $at, .L80039084_ovl0
/* 039C90 80039090 26310001 */   addiu $s1, $s1, 1
/* 039C94 80039094 8A210000 */  lwl   $at, ($s1)
/* 039C98 80039098 9A210003 */  lwr   $at, 3($s1)
/* 039C9C 8003909C 27AD0030 */  addiu $t5, $sp, 0x30
/* 039CA0 800390A0 27A30038 */  addiu $v1, $sp, 0x38
/* 039CA4 800390A4 ADA10000 */  sw    $at, ($t5)
/* 039CA8 800390A8 8A2F0004 */  lwl   $t7, 4($s1)
/* 039CAC 800390AC 9A2F0007 */  lwr   $t7, 7($s1)
/* 039CB0 800390B0 ADAF0004 */  sw    $t7, 4($t5)
/* 039CB4 800390B4 8A210008 */  lwl   $at, 8($s1)
/* 039CB8 800390B8 9A21000B */  lwr   $at, 0xb($s1)
/* 039CBC 800390BC ADA10008 */  sw    $at, 8($t5)
/* 039CC0 800390C0 93A20031 */  lbu   $v0, 0x31($sp)
/* 039CC4 800390C4 305800C0 */  andi  $t8, $v0, 0xc0
/* 039CC8 800390C8 00182103 */  sra   $a0, $t8, 4
/* 039CCC 800390CC 1480000C */  bnez  $a0, .L80039100_ovl0
/* 039CD0 800390D0 27A20030 */   addiu $v0, $sp, 0x30
.L800390D4_ovl0:
/* 039CD4 800390D4 90480004 */  lbu   $t0, 4($v0)
/* 039CD8 800390D8 24420004 */  addiu $v0, $v0, 4
/* 039CDC 800390DC 26100004 */  addiu $s0, $s0, 4
/* 039CE0 800390E0 A208FFFC */  sb    $t0, -4($s0)
/* 039CE4 800390E4 90490001 */  lbu   $t1, 1($v0)
/* 039CE8 800390E8 A209FFFD */  sb    $t1, -3($s0)
/* 039CEC 800390EC 904A0002 */  lbu   $t2, 2($v0)
/* 039CF0 800390F0 A20AFFFE */  sb    $t2, -2($s0)
/* 039CF4 800390F4 904B0003 */  lbu   $t3, 3($v0)
/* 039CF8 800390F8 1443FFF6 */  bne   $v0, $v1, .L800390D4_ovl0
/* 039CFC 800390FC A20BFFFF */   sb    $t3, -1($s0)
.L80039100_ovl0:
/* 039D00 80039100 0C00BD29 */  jal   __osSiRelAccess
/* 039D04 80039104 AFA4004C */   sw    $a0, 0x4c($sp)
/* 039D08 80039108 8FA2004C */  lw    $v0, 0x4c($sp)
.L8003910C_ovl0:
/* 039D0C 8003910C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 039D10 80039110 8FB00018 */  lw    $s0, 0x18($sp)
/* 039D14 80039114 8FB1001C */  lw    $s1, 0x1c($sp)
/* 039D18 80039118 8FB20020 */  lw    $s2, 0x20($sp)
/* 039D1C 8003911C 03E00008 */  jr    $ra
/* 039D20 80039120 27BD0050 */   addiu $sp, $sp, 0x50
.size osEepromRead, . - osEepromRead

glabel __osPackEepReadData
/* 039D24 80039124 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 039D28 80039128 3C03800A */  lui   $v1, %hi(__osEepPifRam) # $v1, 0x800a
/* 039D2C 8003912C 2463B500 */  addiu $v1, %lo(__osEepPifRam) # addiu $v1, $v1, -0x4b00
/* 039D30 80039130 240F0001 */  li    $t7, 1
/* 039D34 80039134 AC6F003C */  sw    $t7, 0x3c($v1)
/* 039D38 80039138 24180002 */  li    $t8, 2
/* 039D3C 8003913C 24190008 */  li    $t9, 8
/* 039D40 80039140 24080004 */  li    $t0, 4
/* 039D44 80039144 3C01800A */  lui   $at, %hi(__osEepPifRam) # $at, 0x800a
/* 039D48 80039148 3C02800A */  lui   $v0, %hi(__osEepPifRam + 1) # $v0, 0x800a
/* 039D4C 8003914C AFA40018 */  sw    $a0, 0x18($sp)
/* 039D50 80039150 A3B80008 */  sb    $t8, 8($sp)
/* 039D54 80039154 A3B90009 */  sb    $t9, 9($sp)
/* 039D58 80039158 A3A8000A */  sb    $t0, 0xa($sp)
/* 039D5C 8003915C A3A4000B */  sb    $a0, 0xb($sp)
/* 039D60 80039160 2442B501 */  addiu $v0, %lo(__osEepPifRam + 1) # addiu $v0, $v0, -0x4aff
/* 039D64 80039164 A020B500 */  sb    $zero, %lo(__osEepPifRam)($at)
/* 039D68 80039168 A0400002 */  sb    $zero, 2($v0)
/* 039D6C 8003916C A0400001 */  sb    $zero, 1($v0)
/* 039D70 80039170 A0400000 */  sb    $zero, ($v0)
/* 039D74 80039174 27A90008 */  addiu $t1, $sp, 8
/* 039D78 80039178 8D210000 */  lw    $at, ($t1)
/* 039D7C 8003917C 240C00FE */  li    $t4, 254
/* 039D80 80039180 2442000F */  addiu $v0, $v0, 0xf
/* 039D84 80039184 A841FFF4 */  swl   $at, -0xc($v0)
/* 039D88 80039188 B841FFF7 */  swr   $at, -9($v0)
/* 039D8C 8003918C 8D2B0004 */  lw    $t3, 4($t1)
/* 039D90 80039190 A84BFFF8 */  swl   $t3, -8($v0)
/* 039D94 80039194 B84BFFFB */  swr   $t3, -5($v0)
/* 039D98 80039198 8D210008 */  lw    $at, 8($t1)
/* 039D9C 8003919C A04C0000 */  sb    $t4, ($v0)
/* 039DA0 800391A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 039DA4 800391A4 A841FFFC */  swl   $at, -4($v0)
/* 039DA8 800391A8 03E00008 */  jr    $ra
/* 039DAC 800391AC B841FFFF */   swr   $at, -1($v0)

# Unknown region 039DF0-043790 [99A0]
.size __osPackEepReadData, . - __osPackEepReadData
