.set noat
.set noreorder
.set gp=64
.include "macros.inc"
#include <PR/R4300.h>
#include <PR/rcp.h>

.section .text, "ax" 

// contramwrite, contramread, and their helper functions, as 4 separate files?

glabel __osContRamWrite
/* 037CD0 800370D0 27BDFF98 */  addiu $sp, $sp, -0x68
/* 037CD4 800370D4 8FAF0078 */  lw    $t7, 0x78($sp)
/* 037CD8 800370D8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 037CDC 800370DC AFB40028 */  sw    $s4, 0x28($sp)
/* 037CE0 800370E0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 037CE4 800370E4 AFA60070 */  sw    $a2, 0x70($sp)
/* 037CE8 800370E8 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 037CEC 800370EC 24010001 */  li    $at, 1
/* 037CF0 800370F0 01C03025 */  move  $a2, $t6
/* 037CF4 800370F4 00A08825 */  move  $s1, $a1
/* 037CF8 800370F8 0080A825 */  move  $s5, $a0
/* 037CFC 800370FC AFBF003C */  sw    $ra, 0x3c($sp)
/* 037D00 80037100 AFBE0038 */  sw    $fp, 0x38($sp)
/* 037D04 80037104 AFB70034 */  sw    $s7, 0x34($sp)
/* 037D08 80037108 AFB60030 */  sw    $s6, 0x30($sp)
/* 037D0C 8003710C AFB30024 */  sw    $s3, 0x24($sp)
/* 037D10 80037110 AFB20020 */  sw    $s2, 0x20($sp)
/* 037D14 80037114 AFB00018 */  sw    $s0, 0x18($sp)
/* 037D18 80037118 AFA70074 */  sw    $a3, 0x74($sp)
/* 037D1C 8003711C 11E10008 */  beq   $t7, $at, .L80037140_ovl0
/* 037D20 80037120 24140002 */   li    $s4, 2
/* 037D24 80037124 29C10007 */  slti  $at, $t6, 7
/* 037D28 80037128 50200006 */  beql  $at, $zero, .L80037144_ovl0
/* 037D2C 8003712C 00C08025 */   move  $s0, $a2
/* 037D30 80037130 51C00004 */  beql  $t6, $zero, .L80037144_ovl0
/* 037D34 80037134 00C08025 */   move  $s0, $a2
/* 037D38 80037138 1000006C */  b     .L800372EC_ovl0
/* 037D3C 8003713C 00001025 */   move  $v0, $zero
.L80037140_ovl0:
/* 037D40 80037140 00C08025 */  move  $s0, $a2
.L80037144_ovl0:
/* 037D44 80037144 0C00BD18 */  jal   __osSiGetAccess
/* 037D48 80037148 A7A60072 */   sh    $a2, 0x72($sp)
/* 037D4C 8003714C 0010C0C3 */  sra   $t8, $s0, 3
/* 037D50 80037150 0010C940 */  sll   $t9, $s0, 5
/* 037D54 80037154 3C178004 */  lui   $s7, %hi(D_8003FE10) # $s7, 0x8004
/* 037D58 80037158 3C16800A */  lui   $s6, %hi(__osContLastCmd) # $s6, 0x800a
/* 037D5C 8003715C 3C13800A */  lui   $s3, %hi(__osPfsPifRam) # $s3, 0x800a
/* 037D60 80037160 2673A2A0 */  addiu $s3, %lo(__osPfsPifRam) # addiu $s3, $s3, -0x5d60
/* 037D64 80037164 26D68AF0 */  addiu $s6, %lo(__osContLastCmd) # addiu $s6, $s6, -0x7510
/* 037D68 80037168 26F7FE10 */  addiu $s7, %lo(D_8003FE10) # addiu $s7, $s7, -0x1f0
/* 037D6C 8003716C AFB90040 */  sw    $t9, 0x40($sp)
/* 037D70 80037170 AFB80044 */  sw    $t8, 0x44($sp)
/* 037D74 80037174 241E0003 */  li    $fp, 3
.L80037178_ovl0:
/* 037D78 80037178 92C80000 */  lbu   $t0, ($s6)
/* 037D7C 8003717C 24010003 */  li    $at, 3
/* 037D80 80037180 02608025 */  move  $s0, $s3
/* 037D84 80037184 15010004 */  bne   $t0, $at, .L80037198_ovl0
/* 037D88 80037188 00001025 */   move  $v0, $zero
/* 037D8C 8003718C 8EE90000 */  lw    $t1, ($s7)
/* 037D90 80037190 52290022 */  beql  $s1, $t1, .L8003721C_ovl0
/* 037D94 80037194 02718021 */   addu  $s0, $s3, $s1
.L80037198_ovl0:
/* 037D98 80037198 A2DE0000 */  sb    $fp, ($s6)
/* 037D9C 8003719C 1A200010 */  blez  $s1, .L800371E0_ovl0
/* 037DA0 800371A0 AEF10000 */   sw    $s1, ($s7)
/* 037DA4 800371A4 32240003 */  andi  $a0, $s1, 3
/* 037DA8 800371A8 10800006 */  beqz  $a0, .L800371C4_ovl0
/* 037DAC 800371AC 00801825 */   move  $v1, $a0
.L800371B0_ovl0:
/* 037DB0 800371B0 24420001 */  addiu $v0, $v0, 1
/* 037DB4 800371B4 A2000000 */  sb    $zero, ($s0)
/* 037DB8 800371B8 1462FFFD */  bne   $v1, $v0, .L800371B0_ovl0
/* 037DBC 800371BC 26100001 */   addiu $s0, $s0, 1
/* 037DC0 800371C0 10510007 */  beq   $v0, $s1, .L800371E0_ovl0
.L800371C4_ovl0:
/* 037DC4 800371C4 24420004 */   addiu $v0, $v0, 4
/* 037DC8 800371C8 A2000000 */  sb    $zero, ($s0)
/* 037DCC 800371CC A2000001 */  sb    $zero, 1($s0)
/* 037DD0 800371D0 A2000002 */  sb    $zero, 2($s0)
/* 037DD4 800371D4 A2000003 */  sb    $zero, 3($s0)
/* 037DD8 800371D8 1451FFFA */  bne   $v0, $s1, .L800371C4_ovl0
/* 037DDC 800371DC 26100004 */   addiu $s0, $s0, 4
.L800371E0_ovl0:
/* 037DE0 800371E0 240A0001 */  li    $t2, 1
/* 037DE4 800371E4 AE6A003C */  sw    $t2, 0x3c($s3)
/* 037DE8 800371E8 240B00FF */  li    $t3, 255
/* 037DEC 800371EC 240C0023 */  li    $t4, 35
/* 037DF0 800371F0 240D0001 */  li    $t5, 1
/* 037DF4 800371F4 240E00FF */  li    $t6, 255
/* 037DF8 800371F8 240F00FE */  li    $t7, 254
/* 037DFC 800371FC A20B0000 */  sb    $t3, ($s0)
/* 037E00 80037200 A20C0001 */  sb    $t4, 1($s0)
/* 037E04 80037204 A20D0002 */  sb    $t5, 2($s0)
/* 037E08 80037208 A21E0003 */  sb    $fp, 3($s0)
/* 037E0C 8003720C A20E0026 */  sb    $t6, 0x26($s0)
/* 037E10 80037210 10000002 */  b     .L8003721C_ovl0
/* 037E14 80037214 A20F0027 */   sb    $t7, 0x27($s0)
/* 037E18 80037218 02718021 */  addu  $s0, $s3, $s1
.L8003721C_ovl0:
/* 037E1C 8003721C 8FB80044 */  lw    $t8, 0x44($sp)
/* 037E20 80037220 A2180004 */  sb    $t8, 4($s0)
/* 037E24 80037224 0C00DD54 */  jal   func_80037550
/* 037E28 80037228 97A40072 */   lhu   $a0, 0x72($sp)
/* 037E2C 8003722C 8FB90040 */  lw    $t9, 0x40($sp)
/* 037E30 80037230 26050006 */  addiu $a1, $s0, 6
/* 037E34 80037234 24060020 */  li    $a2, 32
/* 037E38 80037238 00594025 */  or    $t0, $v0, $t9
/* 037E3C 8003723C A2080005 */  sb    $t0, 5($s0)
/* 037E40 80037240 0C00D340 */  jal   bcopy
/* 037E44 80037244 8FA40074 */   lw    $a0, 0x74($sp)
/* 037E48 80037248 24040001 */  li    $a0, 1
/* 037E4C 8003724C 0C00C138 */  jal   __osSiRawStartDma
/* 037E50 80037250 02602825 */   move  $a1, $s3
/* 037E54 80037254 0C00DD88 */  jal   func_80037620
/* 037E58 80037258 8FA40074 */   lw    $a0, 0x74($sp)
/* 037E5C 8003725C 305200FF */  andi  $s2, $v0, 0xff
/* 037E60 80037260 02A02025 */  move  $a0, $s5
/* 037E64 80037264 00002825 */  move  $a1, $zero
/* 037E68 80037268 0C00B540 */  jal   osRecvMesg
/* 037E6C 8003726C 24060001 */   li    $a2, 1
/* 037E70 80037270 00002025 */  move  $a0, $zero
/* 037E74 80037274 0C00C138 */  jal   __osSiRawStartDma
/* 037E78 80037278 02602825 */   move  $a1, $s3
/* 037E7C 8003727C 02A02025 */  move  $a0, $s5
/* 037E80 80037280 00002825 */  move  $a1, $zero
/* 037E84 80037284 0C00B540 */  jal   osRecvMesg
/* 037E88 80037288 24060001 */   li    $a2, 1
/* 037E8C 8003728C 92030002 */  lbu   $v1, 2($s0)
/* 037E90 80037290 306900C0 */  andi  $t1, $v1, 0xc0
/* 037E94 80037294 00091903 */  sra   $v1, $t1, 4
/* 037E98 80037298 5460000C */  bnezl $v1, .L800372CC_ovl0
/* 037E9C 8003729C 24030001 */   li    $v1, 1
/* 037EA0 800372A0 920B0026 */  lbu   $t3, 0x26($s0)
/* 037EA4 800372A4 02A02025 */  move  $a0, $s5
/* 037EA8 800372A8 51720009 */  beql  $t3, $s2, .L800372D0_ovl0
/* 037EAC 800372AC 24010004 */   li    $at, 4
/* 037EB0 800372B0 0C00D7C8 */  jal   __osPfsGetStatus
/* 037EB4 800372B4 02202825 */   move  $a1, $s1
/* 037EB8 800372B8 14400009 */  bnez  $v0, .L800372E0_ovl0
/* 037EBC 800372BC 00401825 */   move  $v1, $v0
/* 037EC0 800372C0 10000002 */  b     .L800372CC_ovl0
/* 037EC4 800372C4 24030004 */   li    $v1, 4
/* 037EC8 800372C8 24030001 */  li    $v1, 1
.L800372CC_ovl0:
/* 037ECC 800372CC 24010004 */  li    $at, 4
.L800372D0_ovl0:
/* 037ED0 800372D0 14610003 */  bne   $v1, $at, .L800372E0_ovl0
/* 037ED4 800372D4 2A820000 */   slti  $v0, $s4, 0
/* 037ED8 800372D8 1040FFA7 */  beqz  $v0, .L80037178_ovl0
/* 037EDC 800372DC 2694FFFF */   addiu $s4, $s4, -1
.L800372E0_ovl0:
/* 037EE0 800372E0 0C00BD29 */  jal   __osSiRelAccess
/* 037EE4 800372E4 AFA30064 */   sw    $v1, 0x64($sp)
/* 037EE8 800372E8 8FA20064 */  lw    $v0, 0x64($sp)
.L800372EC_ovl0:
/* 037EEC 800372EC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 037EF0 800372F0 8FB00018 */  lw    $s0, 0x18($sp)
/* 037EF4 800372F4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 037EF8 800372F8 8FB20020 */  lw    $s2, 0x20($sp)
/* 037EFC 800372FC 8FB30024 */  lw    $s3, 0x24($sp)
/* 037F00 80037300 8FB40028 */  lw    $s4, 0x28($sp)
/* 037F04 80037304 8FB5002C */  lw    $s5, 0x2c($sp)
/* 037F08 80037308 8FB60030 */  lw    $s6, 0x30($sp)
/* 037F0C 8003730C 8FB70034 */  lw    $s7, 0x34($sp)
/* 037F10 80037310 8FBE0038 */  lw    $fp, 0x38($sp)
/* 037F14 80037314 03E00008 */  jr    $ra
/* 037F18 80037318 27BD0068 */   addiu $sp, $sp, 0x68

.type __osContRamWrite, @function
.size __osContRamWrite, . - __osContRamWrite

/* 037F1C 8003731C 00000000 */  nop   

glabel __osContRamRead
/* 037F20 80037320 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 037F24 80037324 AFBF003C */  sw    $ra, 0x3c($sp)
/* 037F28 80037328 AFB60030 */  sw    $s6, 0x30($sp)
/* 037F2C 8003732C AFB5002C */  sw    $s5, 0x2c($sp)
/* 037F30 80037330 AFB1001C */  sw    $s1, 0x1c($sp)
/* 037F34 80037334 00A08825 */  move  $s1, $a1
/* 037F38 80037338 0080B025 */  move  $s6, $a0
/* 037F3C 8003733C AFBE0038 */  sw    $fp, 0x38($sp)
/* 037F40 80037340 AFB70034 */  sw    $s7, 0x34($sp)
/* 037F44 80037344 AFB40028 */  sw    $s4, 0x28($sp)
/* 037F48 80037348 AFB30024 */  sw    $s3, 0x24($sp)
/* 037F4C 8003734C AFB20020 */  sw    $s2, 0x20($sp)
/* 037F50 80037350 AFB00018 */  sw    $s0, 0x18($sp)
/* 037F54 80037354 AFA60068 */  sw    $a2, 0x68($sp)
/* 037F58 80037358 AFA7006C */  sw    $a3, 0x6c($sp)
/* 037F5C 8003735C 0C00BD18 */  jal   __osSiGetAccess
/* 037F60 80037360 24150002 */   li    $s5, 2
/* 037F64 80037364 97A5006A */  lhu   $a1, 0x6a($sp)
/* 037F68 80037368 3C1E8004 */  lui   $fp, %hi(D_8003FE10) # $fp, 0x8004
/* 037F6C 8003736C 3C17800A */  lui   $s7, %hi(__osContLastCmd) # $s7, 0x800a
/* 037F70 80037370 3C14800A */  lui   $s4, %hi(__osPfsPifRam) # $s4, 0x800a
/* 037F74 80037374 000570C3 */  sra   $t6, $a1, 3
/* 037F78 80037378 00057940 */  sll   $t7, $a1, 5
/* 037F7C 8003737C AFAF0040 */  sw    $t7, 0x40($sp)
/* 037F80 80037380 AFAE0044 */  sw    $t6, 0x44($sp)
/* 037F84 80037384 2694A2A0 */  addiu $s4, %lo(__osPfsPifRam) # addiu $s4, $s4, -0x5d60
/* 037F88 80037388 26F78AF0 */  addiu $s7, %lo(__osContLastCmd) # addiu $s7, $s7, -0x7510
/* 037F8C 8003738C 27DEFE10 */  addiu $fp, %lo(D_8003FE10) # addiu $fp, $fp, -0x1f0
.L80037390_ovl0:
/* 037F90 80037390 92F80000 */  lbu   $t8, ($s7)
/* 037F94 80037394 24010002 */  li    $at, 2
/* 037F98 80037398 97A5006A */  lhu   $a1, 0x6a($sp)
/* 037F9C 8003739C 17010003 */  bne   $t8, $at, .L800373AC_ovl0
/* 037FA0 800373A0 02808025 */   move  $s0, $s4
/* 037FA4 800373A4 8FD90000 */  lw    $t9, ($fp)
/* 037FA8 800373A8 12390023 */  beq   $s1, $t9, .L80037438_ovl0
.L800373AC_ovl0:
/* 037FAC 800373AC 24080002 */   li    $t0, 2
/* 037FB0 800373B0 A2E80000 */  sb    $t0, ($s7)
/* 037FB4 800373B4 AFD10000 */  sw    $s1, ($fp)
/* 037FB8 800373B8 1A200010 */  blez  $s1, .L800373FC_ovl0
/* 037FBC 800373BC 00001025 */   move  $v0, $zero
/* 037FC0 800373C0 32240003 */  andi  $a0, $s1, 3
/* 037FC4 800373C4 10800006 */  beqz  $a0, .L800373E0_ovl0
/* 037FC8 800373C8 00801825 */   move  $v1, $a0
.L800373CC_ovl0:
/* 037FCC 800373CC 24420001 */  addiu $v0, $v0, 1
/* 037FD0 800373D0 A2000000 */  sb    $zero, ($s0)
/* 037FD4 800373D4 1462FFFD */  bne   $v1, $v0, .L800373CC_ovl0
/* 037FD8 800373D8 26100001 */   addiu $s0, $s0, 1
/* 037FDC 800373DC 10510007 */  beq   $v0, $s1, .L800373FC_ovl0
.L800373E0_ovl0:
/* 037FE0 800373E0 24420004 */   addiu $v0, $v0, 4
/* 037FE4 800373E4 A2000000 */  sb    $zero, ($s0)
/* 037FE8 800373E8 A2000001 */  sb    $zero, 1($s0)
/* 037FEC 800373EC A2000002 */  sb    $zero, 2($s0)
/* 037FF0 800373F0 A2000003 */  sb    $zero, 3($s0)
/* 037FF4 800373F4 1451FFFA */  bne   $v0, $s1, .L800373E0_ovl0
/* 037FF8 800373F8 26100004 */   addiu $s0, $s0, 4
.L800373FC_ovl0:
/* 037FFC 800373FC 24090001 */  li    $t1, 1
/* 038000 80037400 AE89003C */  sw    $t1, 0x3c($s4)
/* 038004 80037404 240A00FF */  li    $t2, 255
/* 038008 80037408 240B0003 */  li    $t3, 3
/* 03800C 8003740C 240C0021 */  li    $t4, 33
/* 038010 80037410 240D0002 */  li    $t5, 2
/* 038014 80037414 240E00FF */  li    $t6, 255
/* 038018 80037418 240F00FE */  li    $t7, 254
/* 03801C 8003741C A20A0000 */  sb    $t2, ($s0)
/* 038020 80037420 A20B0001 */  sb    $t3, 1($s0)
/* 038024 80037424 A20C0002 */  sb    $t4, 2($s0)
/* 038028 80037428 A20D0003 */  sb    $t5, 3($s0)
/* 03802C 8003742C A20E0026 */  sb    $t6, 0x26($s0)
/* 038030 80037430 10000002 */  b     .L8003743C_ovl0
/* 038034 80037434 A20F0027 */   sb    $t7, 0x27($s0)
.L80037438_ovl0:
/* 038038 80037438 02918021 */  addu  $s0, $s4, $s1
.L8003743C_ovl0:
/* 03803C 8003743C 8FB80044 */  lw    $t8, 0x44($sp)
/* 038040 80037440 30A4FFFF */  andi  $a0, $a1, 0xffff
/* 038044 80037444 0C00DD54 */  jal   func_80037550
/* 038048 80037448 A2180004 */   sb    $t8, 4($s0)
/* 03804C 8003744C 8FB90040 */  lw    $t9, 0x40($sp)
/* 038050 80037450 24040001 */  li    $a0, 1
/* 038054 80037454 02802825 */  move  $a1, $s4
/* 038058 80037458 00594025 */  or    $t0, $v0, $t9
/* 03805C 8003745C 0C00C138 */  jal   __osSiRawStartDma
/* 038060 80037460 A2080005 */   sb    $t0, 5($s0)
/* 038064 80037464 02C02025 */  move  $a0, $s6
/* 038068 80037468 00002825 */  move  $a1, $zero
/* 03806C 8003746C 0C00B540 */  jal   osRecvMesg
/* 038070 80037470 24060001 */   li    $a2, 1
/* 038074 80037474 00002025 */  move  $a0, $zero
/* 038078 80037478 0C00C138 */  jal   __osSiRawStartDma
/* 03807C 8003747C 02802825 */   move  $a1, $s4
/* 038080 80037480 02C02025 */  move  $a0, $s6
/* 038084 80037484 00002825 */  move  $a1, $zero
/* 038088 80037488 0C00B540 */  jal   osRecvMesg
/* 03808C 8003748C 24060001 */   li    $a2, 1
/* 038090 80037490 92130002 */  lbu   $s3, 2($s0)
/* 038094 80037494 26120006 */  addiu $s2, $s0, 6
/* 038098 80037498 326900C0 */  andi  $t1, $s3, 0xc0
/* 03809C 8003749C 00099903 */  sra   $s3, $t1, 4
/* 0380A0 800374A0 56600014 */  bnezl $s3, .L800374F4_ovl0
/* 0380A4 800374A4 24130001 */   li    $s3, 1
/* 0380A8 800374A8 0C00DD88 */  jal   func_80037620
/* 0380AC 800374AC 02402025 */   move  $a0, $s2
/* 0380B0 800374B0 920B0026 */  lbu   $t3, 0x26($s0)
/* 0380B4 800374B4 02402025 */  move  $a0, $s2
/* 0380B8 800374B8 8FA5006C */  lw    $a1, 0x6c($sp)
/* 0380BC 800374BC 11620008 */  beq   $t3, $v0, .L800374E0_ovl0
/* 0380C0 800374C0 00000000 */   nop   
/* 0380C4 800374C4 02C02025 */  move  $a0, $s6
/* 0380C8 800374C8 0C00D7C8 */  jal   __osPfsGetStatus
/* 0380CC 800374CC 02202825 */   move  $a1, $s1
/* 0380D0 800374D0 1440000D */  bnez  $v0, .L80037508_ovl0
/* 0380D4 800374D4 00409825 */   move  $s3, $v0
/* 0380D8 800374D8 10000006 */  b     .L800374F4_ovl0
/* 0380DC 800374DC 24130004 */   li    $s3, 4
.L800374E0_ovl0:
/* 0380E0 800374E0 0C00D340 */  jal   bcopy
/* 0380E4 800374E4 24060020 */   li    $a2, 32
/* 0380E8 800374E8 10000003 */  b     .L800374F8_ovl0
/* 0380EC 800374EC 24010004 */   li    $at, 4
/* 0380F0 800374F0 24130001 */  li    $s3, 1
.L800374F4_ovl0:
/* 0380F4 800374F4 24010004 */  li    $at, 4
.L800374F8_ovl0:
/* 0380F8 800374F8 16610003 */  bne   $s3, $at, .L80037508_ovl0
/* 0380FC 800374FC 2AA20000 */   slti  $v0, $s5, 0
/* 038100 80037500 1040FFA3 */  beqz  $v0, .L80037390_ovl0
/* 038104 80037504 26B5FFFF */   addiu $s5, $s5, -1
.L80037508_ovl0:
/* 038108 80037508 0C00BD29 */  jal   __osSiRelAccess
/* 03810C 8003750C 00000000 */   nop   
/* 038110 80037510 8FBF003C */  lw    $ra, 0x3c($sp)
/* 038114 80037514 02601025 */  move  $v0, $s3
/* 038118 80037518 8FB30024 */  lw    $s3, 0x24($sp)
/* 03811C 8003751C 8FB00018 */  lw    $s0, 0x18($sp)
/* 038120 80037520 8FB1001C */  lw    $s1, 0x1c($sp)
/* 038124 80037524 8FB20020 */  lw    $s2, 0x20($sp)
/* 038128 80037528 8FB40028 */  lw    $s4, 0x28($sp)
/* 03812C 8003752C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 038130 80037530 8FB60030 */  lw    $s6, 0x30($sp)
/* 038134 80037534 8FB70034 */  lw    $s7, 0x34($sp)
/* 038138 80037538 8FBE0038 */  lw    $fp, 0x38($sp)
/* 03813C 8003753C 03E00008 */  jr    $ra
/* 038140 80037540 27BD0060 */   addiu $sp, $sp, 0x60

.type __osContRamRead, @function
.size __osContRamRead, . - __osContRamRead

/* 038144 80037544 00000000 */  nop   
/* 038148 80037548 00000000 */  nop   
/* 03814C 8003754C 00000000 */  nop   

glabel func_80037550
/* 038150 80037550 AFA40000 */  sw    $a0, ($sp)
/* 038154 80037554 308EFFFF */  andi  $t6, $a0, 0xffff
/* 038158 80037558 01C02025 */  move  $a0, $t6
/* 03815C 8003755C 00001825 */  move  $v1, $zero
/* 038160 80037560 24020400 */  li    $v0, 1024
.L80037564_ovl0:
/* 038164 80037564 00037840 */  sll   $t7, $v1, 1
/* 038168 80037568 0082C024 */  and   $t8, $a0, $v0
/* 03816C 8003756C 13000008 */  beqz  $t8, .L80037590_ovl0
/* 038170 80037570 01E01825 */   move  $v1, $t7
/* 038174 80037574 31F90020 */  andi  $t9, $t7, 0x20
/* 038178 80037578 13200003 */  beqz  $t9, .L80037588_ovl0
/* 03817C 8003757C 00000000 */   nop   
/* 038180 80037580 10000007 */  b     .L800375A0_ovl0
/* 038184 80037584 39E30014 */   xori  $v1, $t7, 0x14
.L80037588_ovl0:
/* 038188 80037588 10000005 */  b     .L800375A0_ovl0
/* 03818C 8003758C 24630001 */   addiu $v1, $v1, 1
.L80037590_ovl0:
/* 038190 80037590 30690020 */  andi  $t1, $v1, 0x20
/* 038194 80037594 11200002 */  beqz  $t1, .L800375A0_ovl0
/* 038198 80037598 386A0015 */   xori  $t2, $v1, 0x15
/* 03819C 8003759C 01401825 */  move  $v1, $t2
.L800375A0_ovl0:
/* 0381A0 800375A0 00025842 */  srl   $t3, $v0, 1
/* 0381A4 800375A4 1560FFEF */  bnez  $t3, .L80037564_ovl0
/* 0381A8 800375A8 01601025 */   move  $v0, $t3
/* 0381AC 800375AC 00036040 */  sll   $t4, $v1, 1
/* 0381B0 800375B0 318D0020 */  andi  $t5, $t4, 0x20
/* 0381B4 800375B4 11A00002 */  beqz  $t5, .L800375C0_ovl0
/* 0381B8 800375B8 01801825 */   move  $v1, $t4
/* 0381BC 800375BC 39830015 */  xori  $v1, $t4, 0x15
.L800375C0_ovl0:
/* 0381C0 800375C0 00037840 */  sll   $t7, $v1, 1
/* 0381C4 800375C4 31F80020 */  andi  $t8, $t7, 0x20
/* 0381C8 800375C8 13000002 */  beqz  $t8, .L800375D4_ovl0
/* 0381CC 800375CC 01E01825 */   move  $v1, $t7
/* 0381D0 800375D0 39E30015 */  xori  $v1, $t7, 0x15
.L800375D4_ovl0:
/* 0381D4 800375D4 00034040 */  sll   $t0, $v1, 1
/* 0381D8 800375D8 31090020 */  andi  $t1, $t0, 0x20
/* 0381DC 800375DC 11200002 */  beqz  $t1, .L800375E8_ovl0
/* 0381E0 800375E0 01001825 */   move  $v1, $t0
/* 0381E4 800375E4 39030015 */  xori  $v1, $t0, 0x15
.L800375E8_ovl0:
/* 0381E8 800375E8 00035840 */  sll   $t3, $v1, 1
/* 0381EC 800375EC 316C0020 */  andi  $t4, $t3, 0x20
/* 0381F0 800375F0 11800002 */  beqz  $t4, .L800375FC_ovl0
/* 0381F4 800375F4 01601825 */   move  $v1, $t3
/* 0381F8 800375F8 39630015 */  xori  $v1, $t3, 0x15
.L800375FC_ovl0:
/* 0381FC 800375FC 00037040 */  sll   $t6, $v1, 1
/* 038200 80037600 31CF0020 */  andi  $t7, $t6, 0x20
/* 038204 80037604 11E00002 */  beqz  $t7, .L80037610_ovl0
/* 038208 80037608 01C01825 */   move  $v1, $t6
/* 03820C 8003760C 39C30015 */  xori  $v1, $t6, 0x15
.L80037610_ovl0:
/* 038210 80037610 00601025 */  move  $v0, $v1
/* 038214 80037614 3059001F */  andi  $t9, $v0, 0x1f
/* 038218 80037618 03E00008 */  jr    $ra
/* 03821C 8003761C 03201025 */   move  $v0, $t9

.type func_80037550, @function
.size func_80037550, . - func_80037550


glabel func_80037620
/* 038220 80037620 00802825 */  move  $a1, $a0
/* 038224 80037624 00001825 */  move  $v1, $zero
/* 038228 80037628 24020020 */  li    $v0, 32
.L8003762C_ovl0:
/* 03822C 8003762C 24040080 */  li    $a0, 128
/* 038230 80037630 90A60000 */  lbu   $a2, ($a1)
.L80037634_ovl0:
/* 038234 80037634 00037040 */  sll   $t6, $v1, 1
/* 038238 80037638 00C47824 */  and   $t7, $a2, $a0
/* 03823C 8003763C 11E00008 */  beqz  $t7, .L80037660_ovl0
/* 038240 80037640 01C01825 */   move  $v1, $t6
/* 038244 80037644 31D80100 */  andi  $t8, $t6, 0x100
/* 038248 80037648 13000003 */  beqz  $t8, .L80037658_ovl0
/* 03824C 8003764C 00000000 */   nop   
/* 038250 80037650 10000007 */  b     .L80037670_ovl0
/* 038254 80037654 39C30084 */   xori  $v1, $t6, 0x84
.L80037658_ovl0:
/* 038258 80037658 10000005 */  b     .L80037670_ovl0
/* 03825C 8003765C 24630001 */   addiu $v1, $v1, 1
.L80037660_ovl0:
/* 038260 80037660 30680100 */  andi  $t0, $v1, 0x100
/* 038264 80037664 11000002 */  beqz  $t0, .L80037670_ovl0
/* 038268 80037668 38690085 */   xori  $t1, $v1, 0x85
/* 03826C 8003766C 01201825 */  move  $v1, $t1
.L80037670_ovl0:
/* 038270 80037670 00045042 */  srl   $t2, $a0, 1
/* 038274 80037674 1540FFEF */  bnez  $t2, .L80037634_ovl0
/* 038278 80037678 01402025 */   move  $a0, $t2
/* 03827C 8003767C 2442FFFF */  addiu $v0, $v0, -1
/* 038280 80037680 1440FFEA */  bnez  $v0, .L8003762C_ovl0
/* 038284 80037684 24A50001 */   addiu $a1, $a1, 1
/* 038288 80037688 00035840 */  sll   $t3, $v1, 1
.L8003768C_ovl0:
/* 03828C 8003768C 316C0100 */  andi  $t4, $t3, 0x100
/* 038290 80037690 11800002 */  beqz  $t4, .L8003769C_ovl0
/* 038294 80037694 01601825 */   move  $v1, $t3
/* 038298 80037698 39630085 */  xori  $v1, $t3, 0x85
.L8003769C_ovl0:
/* 03829C 8003769C 24420001 */  addiu $v0, $v0, 1
/* 0382A0 800376A0 2C410008 */  sltiu $at, $v0, 8
/* 0382A4 800376A4 5420FFF9 */  bnezl $at, .L8003768C_ovl0
/* 0382A8 800376A8 00035840 */   sll   $t3, $v1, 1
/* 0382AC 800376AC 03E00008 */  jr    $ra
/* 0382B0 800376B0 306200FF */   andi  $v0, $v1, 0xff

.type func_80037620, @function
.size func_80037620, . - func_80037620

/* 0382B4 800376B4 00000000 */  nop   
/* 0382B8 800376B8 00000000 */  nop   
/* 0382BC 800376BC 00000000 */  nop   
