glabel func_801E12D0_ovl12 # 123
/* 0060D0 801E12D0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0060D4 801E12D4 AFB10028 */  sw          $s1, 0x28($sp)
/* 0060D8 801E12D8 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 0060DC 801E12DC 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 0060E0 801E12E0 8E2E0000 */  lw          $t6, 0x0($s1)
/* 0060E4 801E12E4 AFBF002C */  sw          $ra, 0x2C($sp)
/* 0060E8 801E12E8 AFB00024 */  sw          $s0, 0x24($sp)
/* 0060EC 801E12EC F7B40018 */  sdc1        $f20, 0x18($sp)
/* 0060F0 801E12F0 AFA40038 */  sw          $a0, 0x38($sp)
/* 0060F4 801E12F4 8DC20000 */  lw          $v0, 0x0($t6)
/* 0060F8 801E12F8 3C0F800E */  lui         $t7, %hi(D_800E1B50)
/* 0060FC 801E12FC 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 006100 801E1300 00021080 */  sll         $v0, $v0, 2
/* 006104 801E1304 01E27821 */  addu        $t7, $t7, $v0
/* 006108 801E1308 8DEF1B50 */  lw          $t7, %lo(D_800E1B50)($t7)
/* 00610C 801E130C 00220821 */  addu        $at, $at, $v0
/* 006110 801E1310 24180009 */  addiu       $t8, $zero, 0x9
/* 006114 801E1314 AC38DFD0 */  sw          $t8, %lo(D_800DDFD0)($at)
/* 006118 801E1318 0C066ED6 */  jal         func_8019BB58_ovl7
/* 00611C 801E131C AFAF0034 */   sw         $t7, 0x34($sp)
/* 006120 801E1320 8E390000 */  lw          $t9, 0x0($s1)
/* 006124 801E1324 3C10800F */  lui         $s0, %hi(D_800EB320)
/* 006128 801E1328 2610B320 */  addiu       $s0, $s0, %lo(D_800EB320)
/* 00612C 801E132C 8F220000 */  lw          $v0, 0x0($t9)
/* 006130 801E1330 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 006134 801E1334 4481A000 */  mtc1        $at, $f20
/* 006138 801E1338 00021080 */  sll         $v0, $v0, 2
/* 00613C 801E133C 02024021 */  addu        $t0, $s0, $v0
/* 006140 801E1340 C5040000 */  lwc1        $f4, 0x0($t0)
/* 006144 801E1344 4604A032 */  c.eq.s      $f20, $f4
/* 006148 801E1348 00000000 */  nop
/* 00614C 801E134C 4501000C */  bc1t        .L801E1380
/* 006150 801E1350 00000000 */   nop
.L801E1354:
/* 006154 801E1354 0C002DAF */  jal         finish_current_thread
/* 006158 801E1358 24040001 */   addiu      $a0, $zero, 0x1
/* 00615C 801E135C 8E290000 */  lw          $t1, 0x0($s1)
/* 006160 801E1360 8D220000 */  lw          $v0, 0x0($t1)
/* 006164 801E1364 00021080 */  sll         $v0, $v0, 2
/* 006168 801E1368 02025021 */  addu        $t2, $s0, $v0
/* 00616C 801E136C C5460000 */  lwc1        $f6, 0x0($t2)
/* 006170 801E1370 4606A032 */  c.eq.s      $f20, $f6
/* 006174 801E1374 00000000 */  nop
/* 006178 801E1378 4500FFF6 */  bc1f        .L801E1354
/* 00617C 801E137C 00000000 */   nop
.L801E1380:
/* 006180 801E1380 3C0B800F */  lui         $t3, %hi(D_800EA360)
/* 006184 801E1384 01625821 */  addu        $t3, $t3, $v0
/* 006188 801E1388 8D6BA360 */  lw          $t3, %lo(D_800EA360)($t3)
/* 00618C 801E138C 24010001 */  addiu       $at, $zero, 0x1
/* 006190 801E1390 15610036 */  bne         $t3, $at, .L801E146C
/* 006194 801E1394 00000000 */   nop
/* 006198 801E1398 0C067C7B */  jal         func_8019F1EC_ovl7
/* 00619C 801E139C 00000000 */   nop
/* 0061A0 801E13A0 0C002DAF */  jal         finish_current_thread
/* 0061A4 801E13A4 2404000F */   addiu      $a0, $zero, 0xF
/* 0061A8 801E13A8 8FAC0034 */  lw          $t4, 0x34($sp)
/* 0061AC 801E13AC 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 0061B0 801E13B0 8D820094 */  lw          $v0, 0x94($t4)
/* 0061B4 801E13B4 8C44001C */  lw          $a0, 0x1C($v0)
/* 0061B8 801E13B8 50810006 */  beql        $a0, $at, .L801E13D4
/* 0061BC 801E13BC 4480A000 */   mtc1       $zero, $f20
/* 0061C0 801E13C0 0C029D9E */  jal         play_sound
/* 0061C4 801E13C4 00000000 */   nop
/* 0061C8 801E13C8 8FAD0034 */  lw          $t5, 0x34($sp)
/* 0061CC 801E13CC 8DA20094 */  lw          $v0, 0x94($t5)
/* 0061D0 801E13D0 4480A000 */  mtc1        $zero, $f20
.L801E13D4:
/* 0061D4 801E13D4 8C450018 */  lw          $a1, 0x18($v0)
/* 0061D8 801E13D8 00002025 */  move        $a0, $zero
/* 0061DC 801E13DC 4406A000 */  mfc1        $a2, $f20
/* 0061E0 801E13E0 4407A000 */  mfc1        $a3, $f20
/* 0061E4 801E13E4 0C03F55C */  jal         func_800FD570
/* 0061E8 801E13E8 E7B40010 */   swc1       $f20, 0x10($sp)
/* 0061EC 801E13EC 24040003 */  addiu       $a0, $zero, 0x3
/* 0061F0 801E13F0 0C02ED1A */  jal         func_800BB468
/* 0061F4 801E13F4 00002825 */   move       $a1, $zero
/* 0061F8 801E13F8 0C002DAF */  jal         finish_current_thread
/* 0061FC 801E13FC 24040007 */   addiu      $a0, $zero, 0x7
/* 006200 801E1400 0C06F1E5 */  jal         func_801BC794_ovl7
/* 006204 801E1404 24040001 */   addiu      $a0, $zero, 0x1
/* 006208 801E1408 00002025 */  move        $a0, $zero
/* 00620C 801E140C 0C02BEED */  jal         func_800AFBB4
/* 006210 801E1410 8E250000 */   lw         $a1, 0x0($s1)
/* 006214 801E1414 8E230000 */  lw          $v1, 0x0($s1)
/* 006218 801E1418 3C04800E */  lui         $a0, %hi(D_800E6690)
/* 00621C 801E141C 24846690 */  addiu       $a0, $a0, %lo(D_800E6690)
/* 006220 801E1420 8C6E0000 */  lw          $t6, 0x0($v1)
/* 006224 801E1424 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 006228 801E1428 000E7880 */  sll         $t7, $t6, 2
/* 00622C 801E142C 008FC021 */  addu        $t8, $a0, $t7
/* 006230 801E1430 E7140000 */  swc1        $f20, 0x0($t8)
/* 006234 801E1434 8C620000 */  lw          $v0, 0x0($v1)
/* 006238 801E1438 00021080 */  sll         $v0, $v0, 2
/* 00623C 801E143C 0082C821 */  addu        $t9, $a0, $v0
/* 006240 801E1440 C7280000 */  lwc1        $f8, 0x0($t9)
/* 006244 801E1444 00220821 */  addu        $at, $at, $v0
/* 006248 801E1448 E42864D0 */  swc1        $f8, %lo(D_800E64D0)($at)
/* 00624C 801E144C 8C680000 */  lw          $t0, 0x0($v1)
/* 006250 801E1450 3C01801E */  lui         $at, %hi(D_801E2DC8_ovl12)
/* 006254 801E1454 C42A2DC8 */  lwc1        $f10, %lo(D_801E2DC8_ovl12)($at)
/* 006258 801E1458 3C01800E */  lui         $at, %hi(D_800E6850)
/* 00625C 801E145C 00084880 */  sll         $t1, $t0, 2
/* 006260 801E1460 00290821 */  addu        $at, $at, $t1
/* 006264 801E1464 1000001E */  b           .L801E14E0
/* 006268 801E1468 E42A6850 */   swc1       $f10, %lo(D_800E6850)($at)
.L801E146C:
/* 00626C 801E146C 0C002DAF */  jal         finish_current_thread
/* 006270 801E1470 2404000F */   addiu      $a0, $zero, 0xF
/* 006274 801E1474 0C002DAF */  jal         finish_current_thread
/* 006278 801E1478 24040007 */   addiu      $a0, $zero, 0x7
/* 00627C 801E147C 00002025 */  move        $a0, $zero
/* 006280 801E1480 0C02BEED */  jal         func_800AFBB4
/* 006284 801E1484 8E250000 */   lw         $a1, 0x0($s1)
/* 006288 801E1488 8E230000 */  lw          $v1, 0x0($s1)
/* 00628C 801E148C 4480A000 */  mtc1        $zero, $f20
/* 006290 801E1490 3C04800E */  lui         $a0, %hi(D_800E6690)
/* 006294 801E1494 8C6A0000 */  lw          $t2, 0x0($v1)
/* 006298 801E1498 24846690 */  addiu       $a0, $a0, %lo(D_800E6690)
/* 00629C 801E149C 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 0062A0 801E14A0 000A5880 */  sll         $t3, $t2, 2
/* 0062A4 801E14A4 008B6021 */  addu        $t4, $a0, $t3
/* 0062A8 801E14A8 E5940000 */  swc1        $f20, 0x0($t4)
/* 0062AC 801E14AC 8C620000 */  lw          $v0, 0x0($v1)
/* 0062B0 801E14B0 00021080 */  sll         $v0, $v0, 2
/* 0062B4 801E14B4 00826821 */  addu        $t5, $a0, $v0
/* 0062B8 801E14B8 C5B00000 */  lwc1        $f16, 0x0($t5)
/* 0062BC 801E14BC 00220821 */  addu        $at, $at, $v0
/* 0062C0 801E14C0 E43064D0 */  swc1        $f16, %lo(D_800E64D0)($at)
/* 0062C4 801E14C4 8C6E0000 */  lw          $t6, 0x0($v1)
/* 0062C8 801E14C8 3C01801E */  lui         $at, %hi(D_801E2DCC_ovl12)
/* 0062CC 801E14CC C4322DCC */  lwc1        $f18, %lo(D_801E2DCC_ovl12)($at)
/* 0062D0 801E14D0 3C01800E */  lui         $at, %hi(D_800E6850)
/* 0062D4 801E14D4 000E7880 */  sll         $t7, $t6, 2
/* 0062D8 801E14D8 002F0821 */  addu        $at, $at, $t7
/* 0062DC 801E14DC E4326850 */  swc1        $f18, %lo(D_800E6850)($at)
.L801E14E0:
/* 0062E0 801E14E0 0C02BE85 */  jal         func_800AFA14
/* 0062E4 801E14E4 00000000 */   nop
/* 0062E8 801E14E8 8FBF002C */  lw          $ra, 0x2C($sp)
/* 0062EC 801E14EC D7B40018 */  ldc1        $f20, 0x18($sp)
/* 0062F0 801E14F0 8FB00024 */  lw          $s0, 0x24($sp)
/* 0062F4 801E14F4 8FB10028 */  lw          $s1, 0x28($sp)
/* 0062F8 801E14F8 03E00008 */  jr          $ra
/* 0062FC 801E14FC 27BD0038 */   addiu      $sp, $sp, 0x38
.type func_801E12D0_ovl12, @function

.size func_801E12D0_ovl12, . - func_801E12D0_ovl12
.section .late_rodata
glabel D_801E2DC8_ovl12
/* 007BC8 801E2DC8 */ .word 0x477FFF00
glabel D_801E2DCC_ovl12
/* 007BCC 801E2DCC */ .word 0x477FFF00
